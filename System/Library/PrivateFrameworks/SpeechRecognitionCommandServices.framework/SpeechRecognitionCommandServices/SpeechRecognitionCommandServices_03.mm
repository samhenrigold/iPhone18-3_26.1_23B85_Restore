uint64_t Sequence<>.forIdiom(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_26B542CA4();
  v36 = *(v11 - 8);
  v15 = MEMORY[0x28223BE20](v11, v12, v13, v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v15, v18, v19, v20);
  v23 = &v36 - v22;
  MEMORY[0x28223BE20](v21, v24, v25, v26);
  LOBYTE(a1) = *a1;
  (*(v28 + 16))(&v36 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a2);
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v41 = a1;
  v42 = sub_26B542BB4();
  sub_26B542C44();
  swift_getWitnessTable();
  v29 = sub_26B542BC4();

  v42 = v29;
  swift_getWitnessTable();
  sub_26B5429C4();
  v30 = v36;

  (*(v30 + 32))(v17, v23, v11);
  v31 = *(AssociatedTypeWitness - 8);
  if ((*(v31 + 48))(v17, 1, AssociatedTypeWitness) == 1)
  {
    (*(v30 + 8))(v17, v11);
    v32 = 1;
    v33 = v37;
  }

  else
  {
    v34 = v37;
    (*(v31 + 32))(v37, v17, AssociatedTypeWitness);
    v32 = 0;
    v33 = v34;
  }

  return (*(v31 + 56))(v33, v32, 1, AssociatedTypeWitness);
}

uint64_t Action.all.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Action.mac.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

SpeechRecognitionCommandServices::Action __swiftcall Action.init(_:mac:)(Swift::String_optional _, Swift::String_optional mac)
{
  *v2 = _;
  v2[1] = mac;
  result.mac = mac;
  result.all = _;
  return result;
}

uint64_t sub_26B4D3D1C(uint64_t a1)
{
  v2 = *v1;
  sub_26B543034();
  MEMORY[0x26D678100](v2);
  return sub_26B543054();
}

uint64_t sub_26B4D3D60()
{
  if (*v0)
  {
    return 6513005;
  }

  else
  {
    return 7105633;
  }
}

uint64_t sub_26B4D3D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7105633 && a2 == 0xE300000000000000;
  if (v5 || (sub_26B542FB4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6513005 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26B542FB4();

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

uint64_t sub_26B4D3E6C(uint64_t a1)
{
  v2 = sub_26B4D9E7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B4D3EA8(uint64_t a1)
{
  v2 = sub_26B4D9E7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Action.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE48, &qword_26B5455F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7);
  v9 = v13 - v8;
  v10 = *(v1 + 16);
  v13[1] = *(v1 + 24);
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B4D9E7C();
  sub_26B543074();
  v15 = 0;
  v11 = v13[3];
  sub_26B542F24();
  if (!v11)
  {
    v14 = 1;
    sub_26B542F24();
  }

  return (*(v4 + 8))(v9, v3);
}

uint64_t Action.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE50, &qword_26B5455F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9);
  v11 = &v19 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B4D9E7C();
  sub_26B543064();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v12 = sub_26B542EA4();
  v14 = v13;
  v20 = v12;
  v21 = 1;
  v15 = sub_26B542EA4();
  v17 = v16;
  (*(v6 + 8))(v11, v5);
  *a2 = v20;
  a2[1] = v14;
  a2[2] = v15;
  a2[3] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t VCCommand.commandID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t VCCommand.localizationComment.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t VCCommand.action.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  *a1 = *(v1 + 152);
  *(a1 + 8) = *(v1 + 160);
  *(a1 + 24) = v2;
}

__n128 VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, char a10, char a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15, char *a16, char *a17, __int128 a18, uint64_t a19, uint64_t a20)
{
  v20 = *a8;
  v21 = *a16;
  v22 = *a17;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = v20;
  *(a9 + 57) = a10;
  *(a9 + 58) = a11;
  *(a9 + 64) = a12;
  *(a9 + 80) = a13;
  *(a9 + 96) = a14;
  *(a9 + 112) = a15;
  *(a9 + 120) = v21;
  *(a9 + 121) = v22;
  *(a9 + 128) = a18;
  *(a9 + 144) = a19;
  result = *a20;
  v24 = *(a20 + 16);
  *(a9 + 152) = *a20;
  *(a9 + 168) = v24;
  return result;
}

unint64_t sub_26B4D4498(char a1)
{
  result = 0x49646E616D6D6F63;
  switch(a1)
  {
    case 1:
      result = 0x53646E616D6D6F63;
      break;
    case 2:
      result = 0x7463617274736261;
      break;
    case 3:
      result = 0x6973737563736964;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x61706D4972657375;
      break;
    case 6:
      result = 0x64656C62616E65;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x6574726F70707573;
      break;
    case 9:
      result = 0x4964656E6E616C70;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x6375646F72746E69;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
    case 16:
      result = 0xD00000000000001FLL;
      break;
    case 17:
      result = 0xD000000000000022;
      break;
    case 18:
      result = 0xD00000000000002ALL;
      break;
    case 19:
      result = 0xD000000000000013;
      break;
    case 20:
      result = 0x6E6F69746361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B4D4780@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26B4DADA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26B4D47B4(uint64_t a1)
{
  v2 = sub_26B4DA228();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B4D47F0(uint64_t a1)
{
  v2 = sub_26B4DA228();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VCCommand.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE58, &qword_26B545600);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7);
  v9 = &v25 - v8;
  v10 = *(v1 + 16);
  v47 = *(v1 + 24);
  v48 = v10;
  v11 = *(v1 + 32);
  v45 = *(v1 + 40);
  v46 = v11;
  v44 = *(v1 + 48);
  v54 = *(v1 + 56);
  LODWORD(v11) = *(v1 + 57);
  v42 = *(v1 + 58);
  v43 = v11;
  v12 = *(v1 + 64);
  v40 = *(v1 + 72);
  v41 = v12;
  v13 = *(v1 + 80);
  v38 = *(v1 + 88);
  v39 = v13;
  v14 = *(v1 + 96);
  v36 = *(v1 + 104);
  v37 = v14;
  v35 = *(v1 + 112);
  LODWORD(v14) = *(v1 + 120);
  v33 = *(v1 + 121);
  v34 = v14;
  v15 = *(v1 + 136);
  v26 = *(v1 + 128);
  v27 = v15;
  v16 = *(v1 + 152);
  v28 = *(v1 + 144);
  v29 = v16;
  v17 = *(v1 + 168);
  v30 = *(v1 + 160);
  v18 = *(v1 + 176);
  v31 = v17;
  v32 = v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B4DA228();
  sub_26B543074();
  LOBYTE(v50) = 0;
  v19 = v49;
  sub_26B542F44();
  if (v19)
  {
    return (*(v4 + 8))(v9, v3);
  }

  v22 = v46;
  v21 = v47;
  v49 = v4;
  v50 = v48;
  v55 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE60, &qword_26B545608);
  sub_26B4DA27C();
  sub_26B542F64();
  v50 = v21;
  v55 = 2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE80, &unk_26B545618);
  v24 = sub_26B4DA32C();
  sub_26B542F64();
  v50 = v22;
  v55 = 3;
  sub_26B542F64();
  v47 = v24;
  v48 = v23;
  LOBYTE(v50) = 4;
  sub_26B542F24();
  LOBYTE(v50) = v54;
  v55 = 5;
  sub_26B4DA3DC();
  sub_26B542F34();
  LOBYTE(v50) = 6;
  sub_26B542F54();
  LOBYTE(v50) = 7;
  sub_26B542F54();
  v50 = v41;
  v55 = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFEA0, &qword_26B545628);
  sub_26B4DA430();
  sub_26B542F64();
  v50 = v40;
  v55 = 9;
  sub_26B542F64();
  v50 = v39;
  v55 = 10;
  sub_26B542F64();
  v50 = v38;
  v55 = 11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFEB8, &qword_26B545630);
  sub_26B4DA508();
  sub_26B542F64();
  v50 = v37;
  v55 = 12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFED8, &qword_26B545640);
  sub_26B4DA5B8();
  sub_26B542F64();
  v50 = v36;
  v55 = 13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFEF0, &unk_26B545648);
  sub_26B4DA690();
  sub_26B542F64();
  v50 = v35;
  v55 = 14;
  sub_26B542F64();
  LOBYTE(v50) = v34;
  v55 = 15;
  sub_26B4DA768();
  sub_26B542F34();
  LOBYTE(v50) = v33;
  v55 = 16;
  sub_26B542F34();
  v50 = v26;
  v55 = 17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCE8, &unk_26B5454F0);
  sub_26B4DC3D8(&qword_2803FFF10, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_26B542F34();
  v50 = v27;
  v55 = 18;
  sub_26B542F34();
  v50 = v28;
  v55 = 19;
  sub_26B542F34();
  v50 = v29;
  v51 = v30;
  v52 = v31;
  v53 = v32;
  v55 = 20;
  sub_26B4DA7BC();

  sub_26B542F64();

  return (*(v49 + 8))(v9, 0);
}

uint64_t VCCommand.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFF20, &qword_26B545658);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9);
  v11 = &v34 - v10;
  v12 = a1[3];
  v101 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_26B4DA228();
  sub_26B543064();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v101);
  }

  v56 = v6;
  LOBYTE(v69[0]) = 0;
  *&v55 = sub_26B542EC4();
  *(&v55 + 1) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE60, &qword_26B545608);
  LOBYTE(v57) = 1;
  sub_26B4DA810();
  sub_26B542EE4();
  v52 = v69[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE80, &unk_26B545618);
  LOBYTE(v57) = 2;
  v14 = sub_26B4DA8C0();
  v51 = 0;
  sub_26B542EE4();
  v50 = v69[0];
  LOBYTE(v57) = 3;
  sub_26B542EE4();
  v54 = v14;
  v49 = v69[0];
  LOBYTE(v69[0]) = 4;
  v53 = sub_26B542EA4();
  v48 = v15;
  LOBYTE(v57) = 5;
  sub_26B4DA970();
  sub_26B542EB4();
  LODWORD(v14) = LOBYTE(v69[0]);
  LOBYTE(v69[0]) = 6;
  v39 = sub_26B542ED4();
  v40 = v14;
  LOBYTE(v69[0]) = 7;
  LODWORD(v38) = sub_26B542ED4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFEA0, &qword_26B545628);
  LOBYTE(v57) = 8;
  v45 = sub_26B4DA9C4();
  sub_26B542EE4();
  v47 = v69[0];
  LOBYTE(v57) = 9;
  sub_26B542EE4();
  v46 = v69[0];
  LOBYTE(v57) = 10;
  sub_26B542EE4();
  v45 = v69[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFEB8, &qword_26B545630);
  LOBYTE(v57) = 11;
  sub_26B4DAA9C();
  sub_26B542EE4();
  v44 = v69[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFED8, &qword_26B545640);
  LOBYTE(v57) = 12;
  sub_26B4DAB4C();
  sub_26B542EE4();
  v43 = v69[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFEF0, &unk_26B545648);
  LOBYTE(v57) = 13;
  sub_26B4DAC24();
  sub_26B542EE4();
  v42 = v69[0];
  LOBYTE(v57) = 14;
  sub_26B542EE4();
  v41 = v69[0];
  LOBYTE(v57) = 15;
  sub_26B4DACFC();
  sub_26B542EB4();
  v37 = LOBYTE(v69[0]);
  LOBYTE(v57) = 16;
  sub_26B542EB4();
  v36 = LOBYTE(v69[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCE8, &unk_26B5454F0);
  LOBYTE(v57) = 17;
  sub_26B4DC3D8(&qword_2803FFF98, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_26B542EB4();
  v51 = 0;
  v35 = v69[0];
  LOBYTE(v57) = 18;
  sub_26B542EB4();
  v34 = v69[0];
  LOBYTE(v57) = 19;
  sub_26B542EB4();
  v16 = v69[0];
  v93 = 20;
  sub_26B4DAD50();
  sub_26B542EE4();
  v39 &= 1u;
  v17 = v39;
  v18 = v38 & 1;
  (*(v56 + 8))(v11, v5);
  v51 = *(&v95 + 1);
  v54 = v95;
  v19 = *(&v55 + 1);
  v56 = v94;
  v57 = v55;
  v21 = v52;
  v20 = v53;
  *&v58 = v52;
  *(&v58 + 1) = v50;
  *&v59 = v49;
  *(&v59 + 1) = v53;
  *&v60 = v48;
  BYTE8(v60) = v40;
  BYTE9(v60) = v17;
  v22 = v18;
  BYTE10(v60) = v18;
  *(&v60 + 11) = v99;
  HIBYTE(v60) = v100;
  v23 = v47;
  *&v61 = v47;
  *(&v61 + 1) = v46;
  *&v62 = v45;
  *(&v62 + 1) = v44;
  *&v63 = v43;
  *(&v63 + 1) = v42;
  *&v64 = v41;
  BYTE8(v64) = v37;
  BYTE9(v64) = v36;
  *(&v64 + 10) = v97;
  HIWORD(v64) = v98;
  *&v65 = v35;
  *(&v65 + 1) = v34;
  *&v66 = v16;
  *(&v66 + 1) = v94;
  v67 = v95;
  v68 = v96;
  v38 = v96;
  v25 = v65;
  v24 = v66;
  v26 = v95;
  *(a2 + 176) = v96;
  *(a2 + 144) = v24;
  *(a2 + 160) = v26;
  v27 = v57;
  v28 = v58;
  v29 = v60;
  *(a2 + 32) = v59;
  *(a2 + 48) = v29;
  *a2 = v27;
  *(a2 + 16) = v28;
  v30 = v61;
  v31 = v62;
  v32 = v63;
  *(a2 + 112) = v64;
  *(a2 + 128) = v25;
  *(a2 + 80) = v31;
  *(a2 + 96) = v32;
  *(a2 + 64) = v30;
  sub_26B4A5160(&v57, v69);
  __swift_destroy_boxed_opaque_existential_1(v101);
  v69[0] = v55;
  v69[1] = v19;
  v69[2] = v21;
  v69[3] = v50;
  v69[4] = v49;
  v69[5] = v20;
  v69[6] = v48;
  v70 = v40;
  v71 = v39;
  v72 = v22;
  v73 = v99;
  v74 = v100;
  v75 = v23;
  v76 = v46;
  v77 = v45;
  v78 = v44;
  v79 = v43;
  v80 = v42;
  v81 = v41;
  v82 = v37;
  v83 = v36;
  v85 = v98;
  v84 = v97;
  v86 = v35;
  v87 = v34;
  v88 = v16;
  v89 = v56;
  v90 = v54;
  v91 = v51;
  v92 = v38;
  return sub_26B4A51BC(v69);
}

uint64_t VCCommandCollection.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t VCCommandCollection.displayName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t VCCommandCollection.isCustom.getter()
{
  if (*v0 == 0x6D6F74737543 && v0[1] == 0xE600000000000000)
  {
    return 1;
  }

  else
  {
    return sub_26B542FB4();
  }
}

void __swiftcall VCCommandCollection.init(identifier:displayName:showInSettings:showCodingGuideInSettings:commands:)(SpeechRecognitionCommandServices::VCCommandCollection *__return_ptr retstr, Swift::String identifier, Swift::String displayName, Swift::Bool showInSettings, Swift::Bool showCodingGuideInSettings, Swift::OpaquePointer commands)
{
  retstr->identifier = identifier;
  retstr->displayName = displayName;
  retstr->commands = commands;
  retstr->showInSettings = showInSettings;
  retstr->showCodingGuideInSettings = showCodingGuideInSettings;
}

uint64_t sub_26B4D5FB0()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x73646E616D6D6F63;
  v4 = 0x65536E49776F6873;
  if (v1 != 3)
  {
    v4 = 0xD000000000000019;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4E79616C70736964;
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

uint64_t sub_26B4D6068@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26B4DBC10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26B4D609C(uint64_t a1)
{
  v2 = sub_26B4DB978();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B4D60D8(uint64_t a1)
{
  v2 = sub_26B4DB978();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VCCommandCollection.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFFA8, &qword_26B545660);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7);
  v9 = v14 - v8;
  v10 = *(v1 + 16);
  v16 = *(v1 + 24);
  v17 = v10;
  v15 = *(v1 + 32);
  LODWORD(v10) = *(v1 + 40);
  v14[0] = *(v1 + 41);
  v14[1] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B4DB978();
  sub_26B543074();
  v24 = 0;
  v11 = v18;
  sub_26B542F44();
  if (!v11)
  {
    v13 = v15;
    v23 = 1;
    sub_26B542F44();
    v19 = v13;
    v22 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFFB0, &qword_26B545668);
    sub_26B4DB9CC();
    sub_26B542F64();
    v21 = 3;
    sub_26B542F54();
    v20 = 4;
    sub_26B542F54();
  }

  return (*(v4 + 8))(v9, v3);
}

uint64_t VCCommandCollection.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFFC8, &qword_26B545670);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9);
  v11 = &v23 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B4DB978();
  sub_26B543064();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = 0;
  v12 = sub_26B542EC4();
  v27 = v13;
  v32 = 1;
  v14 = sub_26B542EC4();
  v26 = v15;
  v25 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFFB0, &qword_26B545668);
  v31 = 2;
  sub_26B4DBAA4();
  sub_26B542EE4();
  v24 = v28;
  v30 = 3;
  HIDWORD(v23) = sub_26B542ED4();
  v29 = 4;
  v17 = sub_26B542ED4();
  v18 = BYTE4(v23) & 1;
  (*(v6 + 8))(v11, v5);
  v19 = v17 & 1;
  v21 = v26;
  v20 = v27;
  *a2 = v12;
  *(a2 + 8) = v20;
  v22 = v24;
  *(a2 + 16) = v25;
  *(a2 + 24) = v21;
  *(a2 + 32) = v22;
  *(a2 + 40) = v18;
  *(a2 + 41) = v19;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t VCCommand.collection.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  result = _s32SpeechRecognitionCommandServices19VCCommandCollectionV03allC11CollectionsSayACGvgZ_0();
  v58 = *(result + 16);
  if (v58)
  {
    v5 = 0;
    v57 = result + 32;
    v51 = MEMORY[0x277D84F90];
    v56 = result;
    while (v5 < *(result + 16))
    {
      v6 = (v57 + 48 * v5);
      v7 = v6[3];
      v54 = v6[2];
      v55 = *v6;
      v8 = v6[4];
      v52 = *(v6 + 41);
      v53 = *(v6 + 40);
      v9 = *(v8 + 16);
      v60 = v6[1];

      v59 = v7;

      result = swift_bridgeObjectRetain_n();
      if (v9)
      {
        v10 = 0;
        v11 = v8 + 32;
        v12 = MEMORY[0x277D84F90];
        do
        {
          v13 = (v11 + 184 * v10);
          v14 = v10;
          while (1)
          {
            if (v14 >= *(v8 + 16))
            {
              __break(1u);
              goto LABEL_35;
            }

            v15 = *v13;
            v16 = v13[1];
            v17 = v13[3];
            v64 = v13[2];
            v65 = v17;
            v62 = v15;
            v63 = v16;
            v18 = v13[4];
            v19 = v13[5];
            v20 = v13[7];
            v68 = v13[6];
            v69 = v20;
            v66 = v18;
            v67 = v19;
            v21 = v13[8];
            v22 = v13[9];
            v23 = v13[10];
            v73 = *(v13 + 22);
            v71 = v22;
            v72 = v23;
            v70 = v21;
            if (v62 == v2 && *(&v62 + 1) == v3)
            {
              break;
            }

            result = sub_26B542FB4();
            if (result)
            {
              break;
            }

            ++v14;
            v13 = (v13 + 184);
            if (v9 == v14)
            {
              goto LABEL_20;
            }
          }

          sub_26B4A5160(&v62, v61);
          result = swift_isUniquelyReferenced_nonNull_native();
          v74 = v12;
          if ((result & 1) == 0)
          {
            result = sub_26B4A2120(0, *(v12 + 16) + 1, 1);
            v12 = v74;
          }

          v25 = *(v12 + 16);
          v24 = *(v12 + 24);
          if (v25 >= v24 >> 1)
          {
            result = sub_26B4A2120((v24 > 1), v25 + 1, 1);
            v12 = v74;
          }

          v10 = v14 + 1;
          *(v12 + 16) = v25 + 1;
          v26 = v12 + 184 * v25;
          v27 = v62;
          v28 = v63;
          v29 = v65;
          *(v26 + 64) = v64;
          *(v26 + 80) = v29;
          *(v26 + 32) = v27;
          *(v26 + 48) = v28;
          v30 = v66;
          v31 = v67;
          v32 = v69;
          *(v26 + 128) = v68;
          *(v26 + 144) = v32;
          *(v26 + 96) = v30;
          *(v26 + 112) = v31;
          v33 = v70;
          v34 = v71;
          v35 = v72;
          *(v26 + 208) = v73;
          *(v26 + 176) = v34;
          *(v26 + 192) = v35;
          *(v26 + 160) = v33;
          v11 = v8 + 32;
        }

        while (v9 - 1 != v14);
      }

      else
      {
        v12 = MEMORY[0x277D84F90];
      }

LABEL_20:
      ++v5;

      v36 = *(v12 + 16);

      if (v36)
      {
        v37 = v51;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v75 = v51;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26B4A2100(0, *(v51 + 16) + 1, 1);
          v37 = v75;
        }

        v40 = *(v37 + 16);
        v39 = *(v37 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_26B4A2100((v39 > 1), v40 + 1, 1);
          v37 = v75;
        }

        *(v37 + 16) = v40 + 1;
        v51 = v37;
        v41 = v37 + 48 * v40;
        *(v41 + 32) = v55;
        *(v41 + 40) = v60;
        *(v41 + 48) = v54;
        *(v41 + 56) = v59;
        *(v41 + 64) = v8;
        *(v41 + 72) = v53;
        *(v41 + 73) = v52;
      }

      else
      {
      }

      result = v56;
      if (v5 == v58)
      {
        goto LABEL_30;
      }
    }

LABEL_35:
    __break(1u);
  }

  else
  {
    v51 = MEMORY[0x277D84F90];
LABEL_30:

    if (*(v51 + 16))
    {
      v43 = *(v51 + 32);
      v42 = *(v51 + 40);
      v44 = *(v51 + 48);
      v45 = *(v51 + 56);
      v46 = *(v51 + 64);
      v47 = *(v51 + 72);
      v48 = *(v51 + 73);

      v49 = a1;
      *a1 = v43;
      *(a1 + 8) = v42;
      *(a1 + 40) = v47;
      *(a1 + 41) = v48;
    }

    else
    {

      v44 = 0;
      v45 = 0;
      v46 = 0;
      v49 = a1;
      *(a1 + 40) = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    v49[2] = v44;
    v49[3] = v45;
    v49[4] = v46;
  }

  return result;
}

uint64_t static VCCommand.allCommands.getter()
{
  v2 = MEMORY[0x277D84F90];
  v0 = _s32SpeechRecognitionCommandServices19VCCommandCollectionV03allC11CollectionsSayACGvgZ_0();
  sub_26B4D6B40(v0, &v2);

  return v2;
}

uint64_t sub_26B4D6B40(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  for (i = (result + 64); ; i += 6)
  {
    v5 = *i;
    v6 = *(*i + 16);
    v7 = *a2;
    v8 = *(*a2 + 16);
    v9 = v8 + v6;
    if (__OFADD__(v8, v6))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v10 = *(v7 + 24) >> 1, v10 >= v9))
    {
      if (*(v5 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v11 = v8 + v6;
      }

      else
      {
        v11 = v8;
      }

      result = sub_26B4D8504(result, v11, 1, v7);
      v7 = result;
      v10 = *(result + 24) >> 1;
      if (*(v5 + 16))
      {
LABEL_14:
        if (v10 - *(v7 + 16) < v6)
        {
          goto LABEL_21;
        }

        swift_arrayInitWithCopy();

        if (v6)
        {
          v12 = *(v7 + 16);
          v13 = __OFADD__(v12, v6);
          v14 = v12 + v6;
          if (v13)
          {
            goto LABEL_22;
          }

          *(v7 + 16) = v14;
        }

        goto LABEL_4;
      }
    }

    if (v6)
    {
      goto LABEL_20;
    }

LABEL_4:
    *a2 = v7;
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t static VCCommand.allCommands(idiom:)(char *a1)
{
  v1 = *a1;
  v2 = MEMORY[0x277D84F90];
  *&v33 = MEMORY[0x277D84F90];
  v3 = _s32SpeechRecognitionCommandServices19VCCommandCollectionV03allC11CollectionsSayACGvgZ_0();
  sub_26B4D6B40(v3, &v33);

  v5 = v33;
  v6 = *(v33 + 16);
  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = v5 + 32 + 184 * v7;
      v9 = v7;
      while (1)
      {
        if (v9 >= *(v5 + 16))
        {
          __break(1u);
          return result;
        }

        v10 = *v8;
        v11 = *(v8 + 16);
        v12 = *(v8 + 48);
        v35 = *(v8 + 32);
        v36 = v12;
        v33 = v10;
        v34 = v11;
        v13 = *(v8 + 64);
        v14 = *(v8 + 80);
        v15 = *(v8 + 112);
        v39 = *(v8 + 96);
        v40 = v15;
        v37 = v13;
        v38 = v14;
        v16 = *(v8 + 128);
        v17 = *(v8 + 144);
        v18 = *(v8 + 160);
        v44 = *(v8 + 176);
        v42 = v17;
        v43 = v18;
        v41 = v16;
        v7 = v9 + 1;
        v19 = v37;
        sub_26B4A5160(&v33, v32);
        if (sub_26B4BE6E0(v1, v19))
        {
          break;
        }

        result = sub_26B4A51BC(&v33);
        v8 += 184;
        ++v9;
        if (v6 == v7)
        {
          goto LABEL_13;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v45 = v2;
      if ((result & 1) == 0)
      {
        result = sub_26B4A2120(0, *(v2 + 16) + 1, 1);
        v2 = v45;
      }

      v21 = *(v2 + 16);
      v20 = *(v2 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_26B4A2120((v20 > 1), v21 + 1, 1);
        v2 = v45;
      }

      *(v2 + 16) = v21 + 1;
      v22 = v2 + 184 * v21;
      v23 = v33;
      v24 = v34;
      v25 = v36;
      *(v22 + 64) = v35;
      *(v22 + 80) = v25;
      *(v22 + 32) = v23;
      *(v22 + 48) = v24;
      v26 = v37;
      v27 = v38;
      v28 = v40;
      *(v22 + 128) = v39;
      *(v22 + 144) = v28;
      *(v22 + 96) = v26;
      *(v22 + 112) = v27;
      v29 = v41;
      v30 = v42;
      v31 = v43;
      *(v22 + 208) = v44;
      *(v22 + 176) = v30;
      *(v22 + 192) = v31;
      *(v22 + 160) = v29;
    }

    while (v6 - 1 != v9);
  }

LABEL_13:

  return v2;
}

Swift::Bool __swiftcall VCCommand.isNew(for:)(SpeechRecognitionCommandServices::VCCommand::Idiom a1)
{
  v2 = *a1;
  v3 = *(v1 + 64);
  v4 = *(v1 + 88);
  if ((sub_26B4BE6E0(*a1, v3) & 1) == 0)
  {
    return 0;
  }

  sub_26B4D3284(v2, v4, &v13);
  if (v14 == 255)
  {
    return 0;
  }

  v5 = v13;
  v6 = sub_26B542984();
  if (!*(v6 + 16) || (v7 = sub_26B4A19F4(0x56746375646F7250, 0xEE006E6F69737265), (v8 & 1) == 0))
  {

    return 0;
  }

  sub_26B4C69C4(*(v6 + 56) + 32 * v7, &v13);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v13 = 0.0;
  v9 = sub_26B4D9A88(v11, v12, &v13);

  if (!v9)
  {
    return 0;
  }

  if (v5 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_18;
  }

  if (v13 > -9.22337204e18)
  {
    if (v13 < 9.22337204e18)
    {
      return *&v5 == *&v13;
    }

    goto LABEL_20;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

id sub_26B4D701C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  result = sub_26B4D7AA8(0x2A5D7D5E5B7B5C28, 0xEB00000000297D5CLL, 1);
  if (result)
  {
    qword_2804005F8 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t String.voiceControlCommandParameters.getter(uint64_t a1, uint64_t a2)
{
  v14 = MEMORY[0x277D84F90];
  if (qword_2804005F0 != -1)
  {
    swift_once();
  }

  v4 = qword_2804005F8;
  v5 = sub_26B542A74();
  v6 = sub_26B542AF4();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = &v14;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_26B4DBBB4;
  *(v8 + 24) = v7;
  aBlock[4] = sub_26B4DBBD0;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26B4D73C4;
  aBlock[3] = &block_descriptor;
  v9 = _Block_copy(aBlock);

  [v4 enumerateMatchesInString:v5 options:0 range:0 usingBlock:{v6, v9}];

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v12 = v14;

    return v12;
  }

  return result;
}

void sub_26B4D7288(void *a1, uint64_t a2, uint64_t a3, char **a4)
{
  if (a1)
  {
    v17 = a1;
    [v17 range];
    sub_26B542C94();
    if (v5)
    {
    }

    else
    {
      v6 = sub_26B542BA4();
      v7 = MEMORY[0x26D677B80](v6);
      v9 = v8;

      v10 = *a4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_26B4A2660(0, *(v10 + 2) + 1, 1, v10);
        *a4 = v10;
      }

      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      v14 = v17;
      if (v13 >= v12 >> 1)
      {
        *a4 = sub_26B4A2660((v12 > 1), v13 + 1, 1, v10);
        v14 = v17;
      }

      v15 = *a4;
      *(v15 + 2) = v13 + 1;
      v16 = &v15[16 * v13];
      *(v16 + 4) = v7;
      *(v16 + 5) = v9;
    }
  }
}

void sub_26B4D73C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v7(a2, a3, a4);
}

uint64_t VCCommand.parametersType.getter@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_26B4DBE4C(&unk_287C04C90);
  swift_arrayDestroy();
  v5 = MEMORY[0x277D84FA0];
  v29 = MEMORY[0x277D84FA0];
  v24 = *(v3 + 16);
  if (v24)
  {
    v22 = a1;
    v6 = 0;
    v23 = v3 + 32;
    while (1)
    {
      v7 = *(*(v23 + 16 * v6) + 16);
      v25 = v6;
      v26 = *(v23 + 16 * v6);
      swift_bridgeObjectRetain_n();
      if (v7)
      {
        break;
      }

LABEL_3:
      v6 = v25 + 1;
      swift_bridgeObjectRelease_n();
      if (v25 + 1 == v24)
      {
        v5 = v29;
        a1 = v22;
        goto LABEL_12;
      }
    }

    v8 = (v26 + 40);
    while (1)
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v28 = MEMORY[0x277D84F90];
      v11 = qword_2804005F0;

      if (v11 != -1)
      {
        swift_once();
      }

      v12 = qword_2804005F8;
      v13 = sub_26B542A74();
      v14 = sub_26B542AF4();
      v15 = swift_allocObject();
      v15[2] = v9;
      v15[3] = v10;
      v15[4] = &v28;
      v16 = swift_allocObject();
      *(v16 + 16) = sub_26B4DE7F8;
      *(v16 + 24) = v15;
      aBlock[4] = sub_26B4DE84C;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26B4D73C4;
      aBlock[3] = &block_descriptor_36;
      v17 = _Block_copy(aBlock);

      [v12 enumerateMatchesInString:v13 options:0 range:0 usingBlock:{v14, v17}];

      _Block_release(v17);
      LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

      if (v14)
      {
        break;
      }

      v19 = v28;

      sub_26B4DBDDC(v19);

      v8 += 2;
      if (!--v7)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    if (*(v5 + 16))
    {
      v20 = sub_26B4D98AC(v4, v5);

      if (v20)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }
    }

    else
    {

      v21 = 0;
    }

    *a1 = v21;
  }

  return result;
}

uint64_t VCCommand.corpusTier.getter()
{
  v1 = *(v0 + 56);
  if (v1 == 3)
  {
    goto LABEL_14;
  }

  v2 = v1 != 0;
  if (!*(v0 + 56))
  {
    return v2 & 1;
  }

  if (v1 != 1)
  {
LABEL_14:
    v2 = 1;
    return v2 & 1;
  }

  v3 = *(v0 + 16);
  v4 = sub_26B4DBE4C(&unk_287C04C90);
  swift_arrayDestroy();
  v5 = MEMORY[0x277D84FA0];
  v27 = MEMORY[0x277D84FA0];
  v22 = *(v3 + 16);
  if (!v22)
  {
LABEL_17:
    if (*(v5 + 16))
    {
      v20 = sub_26B4D98AC(v4, v5);

      v2 = v20 ^ 1;
    }

    else
    {

      v2 = 0;
    }

    return v2 & 1;
  }

  v6 = 0;
  v21 = v3 + 32;
  while (1)
  {
    v7 = *(*(v21 + 16 * v6) + 16);
    v23 = v6;
    v24 = *(v21 + 16 * v6);
    swift_bridgeObjectRetain_n();
    if (v7)
    {
      break;
    }

LABEL_6:
    v6 = v23 + 1;
    swift_bridgeObjectRelease_n();
    if (v23 + 1 == v22)
    {
      v5 = v27;
      goto LABEL_17;
    }
  }

  v8 = (v24 + 40);
  while (1)
  {
    v9 = *(v8 - 1);
    v10 = *v8;
    v26 = MEMORY[0x277D84F90];
    v11 = qword_2804005F0;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = qword_2804005F8;
    v13 = sub_26B542A74();
    v14 = sub_26B542AF4();
    v15 = swift_allocObject();
    v15[2] = v9;
    v15[3] = v10;
    v15[4] = &v26;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_26B4DE7F8;
    *(v16 + 24) = v15;
    aBlock[4] = sub_26B4DE84C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26B4D73C4;
    aBlock[3] = &block_descriptor_47;
    v17 = _Block_copy(aBlock);

    [v12 enumerateMatchesInString:v13 options:0 range:0 usingBlock:{v14, v17}];

    _Block_release(v17);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if (v14)
    {
      break;
    }

    v19 = v26;

    sub_26B4DBDDC(v19);

    v8 += 2;
    if (!--v7)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

id sub_26B4D7AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_26B542A74();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_26B542844();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_26B4D7B84(char **a1)
{
  v1 = a1;
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26B4D9B80(v2);
  }

  v3 = *(v2 + 2);
  v19[0] = (v2 + 32);
  v19[1] = v3;
  result = sub_26B542F84();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v17 = v1;
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 - 8;
          result = sub_26B4CB7AC(*(v12 - 1), *v12, *(v12 - 3), *(v12 - 16));
          if ((result & 1) == 0)
          {
            break;
          }

          v14 = *(v12 - 24);
          *(v12 - 16) = *v12;
          v12 -= 16;
          v15 = *(v12 + 1);
          *v13 = v14;
          *(v12 - 1) = v15;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 16;
        --v9;
      }

      v1 = v17;
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFED0, &qword_26B545638);
      v7 = sub_26B542C34();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_26B4D7D08(v18, v20, v19, v5);
    *(v7 + 16) = 0;
  }

  *v1 = v2;
  return result;
}

uint64_t sub_26B4D7D08(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_94:
    v5 = *v7;
    if (!*v7)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_26B4A3E78(v10);
      v10 = result;
    }

    v86 = *(v10 + 2);
    if (v86 >= 2)
    {
      while (*v6)
      {
        v87 = *&v10[16 * v86];
        v88 = *&v10[16 * v86 + 24];
        sub_26B4D82F0((*v6 + 16 * v87), (*v6 + 16 * *&v10[16 * v86 + 16]), (*v6 + 16 * v88), v5);
        if (v4)
        {
        }

        if (v88 < v87)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_26B4A3E78(v10);
        }

        if (v86 - 2 >= *(v10 + 2))
        {
          goto LABEL_120;
        }

        v89 = &v10[16 * v86];
        *v89 = v87;
        *(v89 + 1) = v88;
        result = sub_26B4A3DEC(v86 - 1);
        v86 = *(v10 + 2);
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v12 >= v8)
    {
      v8 = v12;
    }

    else
    {
      v13 = v7;
      v14 = *v6 + 16 * v12;
      v15 = 16 * v11;
      v16 = *v6 + 16 * v11;
      result = sub_26B4CB7AC(*v14, *(v14 + 8), *v16, *(v16 + 8));
      v17 = result;
      v5 = v11 + 2;
      v18 = v16 + 24;
      while (v8 != v5)
      {
        v19 = *(v18 + 8);
        v20 = *(v18 - 8);
        v21 = *v18;
        v22 = *(v18 + 16);
        v18 += 16;
        result = sub_26B4CB7AC(v19, v22, v20, v21);
        ++v5;
        if ((v17 & 1) != (result & 1))
        {
          v8 = v5 - 1;
          break;
        }
      }

      v6 = a3;
      if (v17)
      {
        if (v8 < v11)
        {
          goto LABEL_123;
        }

        if (v11 < v8)
        {
          v23 = 16 * v8 - 16;
          v24 = v8;
          v25 = v11;
          do
          {
            if (v25 != --v24)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v28 = (v27 + v15);
              v29 = (v27 + v23);
              v30 = *(v27 + v15);
              v31 = *(v27 + v15 + 8);
              if (v15 != v23 || v28 >= v29 + 1)
              {
                *v28 = *v29;
              }

              v26 = v27 + v23;
              *v26 = v30;
              *(v26 + 8) = v31;
            }

            ++v25;
            v23 -= 16;
            v15 += 16;
          }

          while (v25 < v24);
        }
      }

      v7 = v13;
    }

    v32 = v6[1];
    if (v8 < v32)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_122;
      }

      if (v8 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_124;
        }

        if (v11 + a4 < v32)
        {
          v32 = v11 + a4;
        }

        if (v32 < v11)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v8 != v32)
        {
          break;
        }
      }
    }

    v5 = v8;
    if (v8 < v11)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26B4A276C(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v34 = *(v10 + 2);
    v33 = *(v10 + 3);
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      result = sub_26B4A276C((v33 > 1), v34 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v35;
    v36 = &v10[16 * v34];
    *(v36 + 4) = v11;
    *(v36 + 5) = v5;
    v37 = *v7;
    if (!*v7)
    {
      goto LABEL_131;
    }

    v94 = v5;
    if (v34)
    {
      v6 = a3;
      while (1)
      {
        v38 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v39 = *(v10 + 4);
          v40 = *(v10 + 5);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_53:
          if (v42)
          {
            goto LABEL_110;
          }

          v55 = &v10[16 * v35];
          v57 = *v55;
          v56 = *(v55 + 1);
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_113;
          }

          v61 = &v10[16 * v38 + 32];
          v63 = *v61;
          v62 = *(v61 + 1);
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_117;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v38 = v35 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v65 = &v10[16 * v35];
        v67 = *v65;
        v66 = *(v65 + 1);
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_67:
        if (v60)
        {
          goto LABEL_112;
        }

        v68 = &v10[16 * v38];
        v70 = *(v68 + 4);
        v69 = *(v68 + 5);
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_115;
        }

        if (v71 < v59)
        {
          goto LABEL_4;
        }

LABEL_74:
        v5 = v38 - 1;
        if (v38 - 1 >= v35)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v76 = *&v10[16 * v5 + 32];
        v77 = *&v10[16 * v38 + 40];
        sub_26B4D82F0((*a3 + 16 * v76), (*a3 + 16 * *&v10[16 * v38 + 32]), (*a3 + 16 * v77), v37);
        if (v4)
        {
        }

        if (v77 < v76)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_26B4A3E78(v10);
        }

        if (v5 >= *(v10 + 2))
        {
          goto LABEL_107;
        }

        v78 = &v10[16 * v5];
        *(v78 + 4) = v76;
        *(v78 + 5) = v77;
        result = sub_26B4A3DEC(v38);
        v35 = *(v10 + 2);
        if (v35 <= 1)
        {
          goto LABEL_4;
        }
      }

      v43 = &v10[16 * v35 + 32];
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_108;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_109;
      }

      v50 = &v10[16 * v35];
      v52 = *v50;
      v51 = *(v50 + 1);
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_111;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_114;
      }

      if (v54 >= v46)
      {
        v72 = &v10[16 * v38 + 32];
        v74 = *v72;
        v73 = *(v72 + 1);
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_118;
        }

        if (v41 < v75)
        {
          v38 = v35 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

    v6 = a3;
LABEL_4:
    v8 = v6[1];
    v9 = v94;
    if (v94 >= v8)
    {
      goto LABEL_94;
    }
  }

  v95 = v32;
  v90 = v11;
  v91 = v7;
  v79 = *v6;
  v80 = *v6 + 16 * v8;
  v81 = v11 - v8;
LABEL_85:
  v82 = v81;
  v6 = v80;
  while (1)
  {
    result = sub_26B4CB7AC(*v6, *(v6 + 8), *(v6 - 2), *(v6 - 8));
    if ((result & 1) == 0)
    {
LABEL_84:
      ++v8;
      v80 += 16;
      --v81;
      if (v8 != v95)
      {
        goto LABEL_85;
      }

      v11 = v90;
      v7 = v91;
      v5 = v95;
      if (v95 < v90)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v79)
    {
      break;
    }

    v83 = *v6;
    v84 = *(v6 + 8);
    *v6 = *(v6 - 1);
    *(v6 - 8) = v84;
    *(v6 - 2) = v83;
    v6 -= 2;
    if (__CFADD__(v82++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_26B4D82F0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v13)
  {
    v14 = 16 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14);
    }

    v15 = &v4[v14];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (sub_26B4CB7AC(*v6, v6[8], *v4, v4[8]))
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 16;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 16;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  v18 = 16 * v13;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v15 = &v4[v18];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v19 = v6 - 16;
    v5 -= 16;
    v20 = v15;
    do
    {
      v21 = v5 + 16;
      v22 = *(v20 - 16);
      v20 -= 16;
      if (sub_26B4CB7AC(v22, *(v20 + 8), *(v6 - 2), *(v6 - 8)))
      {
        if (v21 != v6)
        {
          *v5 = *v19;
        }

        if (v15 <= v4 || (v6 -= 16, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v21 != v15)
      {
        *v5 = *v20;
      }

      v5 -= 16;
      v15 = v20;
    }

    while (v20 > v4);
    v15 = v20;
  }

LABEL_35:
  v23 = (v15 - v4 + (v15 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v6 != v4 || v6 >= &v4[v23])
  {
    memmove(v6, v4, v23);
  }

  return 1;
}

char *sub_26B4D8504(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC40, &unk_26B5453C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 184);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[184 * v8])
    {
      memmove(v12, v13, 184 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26B4D8630(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26B4D8650(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26B4D8650(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC48, &unk_26B5482F0);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

uint64_t sub_26B4D8750(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_26B543034();
  sub_26B542AE4();
  v8 = sub_26B543054();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_26B542FB4() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_26B4D8FF4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_26B4D88A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC50, &unk_26B545500);
  result = sub_26B542D34();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_26B543034();
      sub_26B542AE4();

      result = sub_26B543054();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26B4D8B34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804000A8, &qword_26B5482E8);
  result = sub_26B542D34();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_26B543034();
      sub_26B542AE4();
      result = sub_26B543054();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26B4D8D94(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v22 = result;
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_26B4D88A0(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_26B4D9174();
        goto LABEL_28;
      }

      sub_26B4D9410(v6 + 1);
    }

    v8 = *v3;
    v9 = *v5;
    sub_26B543034();
    sub_26B542AE4();

    result = sub_26B543054();
    v10 = -1 << *(v8 + 32);
    a2 = result & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      do
      {
        if (*(*(v8 + 48) + a2))
        {
          if (*(*(v8 + 48) + a2) == 1)
          {
            v12 = 0xE600000000000000;
            v13 = 0x726173617571;
            if (!v9)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v12 = 0xE500000000000000;
            v13 = 0x727361676ELL;
            if (!v9)
            {
LABEL_24:
              v15 = 0xE200000000000000;
              if (v13 == 12915)
              {
                goto LABEL_25;
              }

              goto LABEL_26;
            }
          }
        }

        else
        {
          v12 = 0xE200000000000000;
          v13 = 12915;
          if (!v9)
          {
            goto LABEL_24;
          }
        }

        if (v9 == 1)
        {
          v14 = 0x726173617571;
        }

        else
        {
          v14 = 0x727361676ELL;
        }

        if (v9 == 1)
        {
          v15 = 0xE600000000000000;
        }

        else
        {
          v15 = 0xE500000000000000;
        }

        if (v13 == v14)
        {
LABEL_25:
          if (v12 == v15)
          {
            goto LABEL_31;
          }
        }

LABEL_26:
        v16 = sub_26B542FB4();

        if (v16)
        {
          goto LABEL_32;
        }

        a2 = (a2 + 1) & v11;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_28:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = *v22;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_31:

LABEL_32:
    result = sub_26B542FD4();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v20;
  }

  return result;
}

uint64_t sub_26B4D8FF4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_26B4D8B34(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_26B4D92B4();
      goto LABEL_16;
    }

    sub_26B4D9674(v8 + 1);
  }

  v10 = *v4;
  sub_26B543034();
  sub_26B542AE4();
  result = sub_26B543054();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_26B542FB4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_26B542FD4();
  __break(1u);
  return result;
}

void *sub_26B4D9174()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC50, &unk_26B545500);
  v2 = *v0;
  v3 = sub_26B542D24();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_26B4D92B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804000A8, &qword_26B5482E8);
  v2 = *v0;
  v3 = sub_26B542D24();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_26B4D9410(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC50, &unk_26B545500);
  result = sub_26B542D34();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_26B543034();
      sub_26B542AE4();

      result = sub_26B543054();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_26B4D9674(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804000A8, &qword_26B5482E8);
  result = sub_26B542D34();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_26B543034();

      sub_26B542AE4();
      result = sub_26B543054();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_26B4D98AC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v21 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v21 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v21);
          ++v11;
        }

        while (!v7);
        v11 = v21;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      sub_26B543034();

      sub_26B542AE4();
      v15 = sub_26B543054();
      v16 = -1 << *(a1 + 32);
      v17 = v15 & ~v16;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v18 = ~v16;
      while (1)
      {
        v19 = (*(a1 + 48) + 16 * v17);
        v20 = *v19 == v14 && v19[1] == v13;
        if (v20 || (sub_26B542FB4() & 1) != 0)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}

BOOL sub_26B4D9A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_26B542D54();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t sub_26B4D9B94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616D726F4ELL && a2 == 0xE600000000000000;
  if (v4 || (sub_26B542FB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000026B56B8E0 == a2 || (sub_26B542FB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7065656C53 && a2 == 0xE500000000000000 || (sub_26B542FB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F68706F7263694DLL && a2 == 0xED000066664F656ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_26B542FB4();

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

uint64_t _sSa32SpeechRecognitionCommandServicesSSRszlE1loiySbSaySSG_ACtFZ_0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = v2 - 1;
  if (v2 != 1)
  {
    v4 = (result + 56);
    v5 = (a2 + 56);
    do
    {
      result = *(v4 - 1);
      if (result != *(v5 - 1) || *v4 != *v5)
      {
        result = sub_26B542FB4();
        if ((result & 1) == 0)
        {
          return 0;
        }
      }

      v4 += 2;
      v5 += 2;
    }

    while (--v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B4D9D8C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3((&v6 + 1), AssociatedTypeWitness, v1);
  if (BYTE1(v6) == 5)
  {
    return 1;
  }

  if ((sub_26B4C6E60(BYTE1(v6), byte_26B548312[v2]) & 1) == 0)
  {
    return 0;
  }

  (*(v1 + 24))(&v6, AssociatedTypeWitness, v1);
  if (v6 == 10)
  {
    return 1;
  }

  return sub_26B4C6B80(v6, v2) & 1;
}

unint64_t sub_26B4D9E7C()
{
  result = qword_280400658;
  if (!qword_280400658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400658);
  }

  return result;
}

uint64_t sub_26B4D9ED0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736270 && a2 == 0xE400000000000000;
  if (v3 || (sub_26B542FB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465646E756F42 && a2 == 0xE700000000000000 || (sub_26B542FB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65646E756F626E55 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_26B542FB4();

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

uint64_t sub_26B4D9FF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_26B471200();
  v4 = MEMORY[0x26D677D20](v2, &type metadata for VCCommand.Engine, v3);
  v5 = v4;
  v20 = v2;
  if (!v2)
  {
    return v5;
  }

  v6 = 0;
  v19 = a1 + 32;
  v7 = v4 + 56;
LABEL_5:
  while (2)
  {
    v8 = *(v19 + v6);
    sub_26B543034();
    ++v6;
    sub_26B542AE4();

    v9 = sub_26B543054();
    v10 = ~(-1 << *(v5 + 32));
    for (i = v9 & v10; ((*(v7 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) != 0; i = (i + 1) & v10)
    {
      if (*(*(v5 + 48) + i))
      {
        if (*(*(v5 + 48) + i) == 1)
        {
          v12 = 0xE600000000000000;
          v13 = 0x726173617571;
          if (v8)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v12 = 0xE500000000000000;
          v13 = 0x727361676ELL;
          if (v8)
          {
LABEL_12:
            if (v8 == 1)
            {
              v14 = 0x726173617571;
            }

            else
            {
              v14 = 0x727361676ELL;
            }

            if (v8 == 1)
            {
              v15 = 0xE600000000000000;
            }

            else
            {
              v15 = 0xE500000000000000;
            }

            if (v13 != v14)
            {
              goto LABEL_23;
            }

            goto LABEL_22;
          }
        }
      }

      else
      {
        v12 = 0xE200000000000000;
        v13 = 12915;
        if (v8)
        {
          goto LABEL_12;
        }
      }

      v15 = 0xE200000000000000;
      if (v13 != 12915)
      {
        goto LABEL_23;
      }

LABEL_22:
      if (v12 == v15)
      {

LABEL_4:
        if (v6 == v20)
        {
          return v5;
        }

        goto LABEL_5;
      }

LABEL_23:
      v16 = sub_26B542FB4();

      if (v16)
      {
        goto LABEL_4;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v8;
    v22 = v5;
    sub_26B4D8D94(&v21, i, isUniquelyReferenced_nonNull_native);
    v5 = v22;
    if (v6 != v20)
    {
      v7 = v22 + 56;
      continue;
    }

    return v5;
  }
}

unint64_t sub_26B4DA228()
{
  result = qword_280400660;
  if (!qword_280400660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400660);
  }

  return result;
}

unint64_t sub_26B4DA27C()
{
  result = qword_2803FFE68;
  if (!qword_2803FFE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFE60, &qword_26B545608);
    sub_26B4DC2FC(&qword_2803FFE70, &qword_2803FFE78, &qword_26B545610, &protocol conformance descriptor for VCCommand.TargetedValue<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFE68);
  }

  return result;
}

unint64_t sub_26B4DA32C()
{
  result = qword_2803FFE88;
  if (!qword_2803FFE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFE80, &unk_26B545618);
    sub_26B4DC2FC(&qword_2803FFE90, &qword_2803FFD90, &unk_26B5454D0, &protocol conformance descriptor for VCCommand.TargetedValue<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFE88);
  }

  return result;
}

unint64_t sub_26B4DA3DC()
{
  result = qword_2803FFE98;
  if (!qword_2803FFE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFE98);
  }

  return result;
}

unint64_t sub_26B4DA430()
{
  result = qword_2803FFEA8;
  if (!qword_2803FFEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFEA0, &qword_26B545628);
    sub_26B4DA4B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFEA8);
  }

  return result;
}

unint64_t sub_26B4DA4B4()
{
  result = qword_2803FFEB0;
  if (!qword_2803FFEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFEB0);
  }

  return result;
}

unint64_t sub_26B4DA508()
{
  result = qword_2803FFEC0;
  if (!qword_2803FFEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFEB8, &qword_26B545630);
    sub_26B4DC2FC(&qword_2803FFEC8, &qword_2803FFED0, &qword_26B545638, &protocol conformance descriptor for VCCommand.TargetedValue<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFEC0);
  }

  return result;
}

unint64_t sub_26B4DA5B8()
{
  result = qword_2803FFEE0;
  if (!qword_2803FFEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFED8, &qword_26B545640);
    sub_26B4DA63C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFEE0);
  }

  return result;
}

unint64_t sub_26B4DA63C()
{
  result = qword_2803FFEE8;
  if (!qword_2803FFEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFEE8);
  }

  return result;
}

unint64_t sub_26B4DA690()
{
  result = qword_2803FFEF8;
  if (!qword_2803FFEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFEF0, &unk_26B545648);
    sub_26B4DA714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFEF8);
  }

  return result;
}

unint64_t sub_26B4DA714()
{
  result = qword_2803FFF00;
  if (!qword_2803FFF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFF00);
  }

  return result;
}

unint64_t sub_26B4DA768()
{
  result = qword_2803FFF08;
  if (!qword_2803FFF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFF08);
  }

  return result;
}

unint64_t sub_26B4DA7BC()
{
  result = qword_2803FFF18;
  if (!qword_2803FFF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFF18);
  }

  return result;
}

unint64_t sub_26B4DA810()
{
  result = qword_2803FFF28;
  if (!qword_2803FFF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFE60, &qword_26B545608);
    sub_26B4DC2FC(&qword_2803FFF30, &qword_2803FFE78, &qword_26B545610, &protocol conformance descriptor for VCCommand.TargetedValue<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFF28);
  }

  return result;
}

unint64_t sub_26B4DA8C0()
{
  result = qword_2803FFF38;
  if (!qword_2803FFF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFE80, &unk_26B545618);
    sub_26B4DC2FC(&qword_2803FFF40, &qword_2803FFD90, &unk_26B5454D0, &protocol conformance descriptor for VCCommand.TargetedValue<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFF38);
  }

  return result;
}

unint64_t sub_26B4DA970()
{
  result = qword_2803FFF48;
  if (!qword_2803FFF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFF48);
  }

  return result;
}

unint64_t sub_26B4DA9C4()
{
  result = qword_2803FFF50;
  if (!qword_2803FFF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFEA0, &qword_26B545628);
    sub_26B4DAA48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFF50);
  }

  return result;
}

unint64_t sub_26B4DAA48()
{
  result = qword_2803FFF58;
  if (!qword_2803FFF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFF58);
  }

  return result;
}

unint64_t sub_26B4DAA9C()
{
  result = qword_2803FFF60;
  if (!qword_2803FFF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFEB8, &qword_26B545630);
    sub_26B4DC2FC(&qword_2803FFF68, &qword_2803FFED0, &qword_26B545638, &protocol conformance descriptor for VCCommand.TargetedValue<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFF60);
  }

  return result;
}

unint64_t sub_26B4DAB4C()
{
  result = qword_2803FFF70;
  if (!qword_2803FFF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFED8, &qword_26B545640);
    sub_26B4DABD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFF70);
  }

  return result;
}

unint64_t sub_26B4DABD0()
{
  result = qword_2803FFF78;
  if (!qword_2803FFF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFF78);
  }

  return result;
}

unint64_t sub_26B4DAC24()
{
  result = qword_2803FFF80;
  if (!qword_2803FFF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFEF0, &unk_26B545648);
    sub_26B4DACA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFF80);
  }

  return result;
}

unint64_t sub_26B4DACA8()
{
  result = qword_2803FFF88;
  if (!qword_2803FFF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFF88);
  }

  return result;
}

unint64_t sub_26B4DACFC()
{
  result = qword_2803FFF90;
  if (!qword_2803FFF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFF90);
  }

  return result;
}

unint64_t sub_26B4DAD50()
{
  result = qword_2803FFFA0;
  if (!qword_2803FFFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFFA0);
  }

  return result;
}

uint64_t sub_26B4DADA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49646E616D6D6F63 && a2 == 0xE900000000000044;
  if (v4 || (sub_26B542FB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x53646E616D6D6F63 && a2 == 0xEE0073676E697274 || (sub_26B542FB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7463617274736261 && a2 == 0xE800000000000000 || (sub_26B542FB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6973737563736964 && a2 == 0xEA00000000006E6FLL || (sub_26B542FB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x800000026B56B900 == a2 || (sub_26B542FB4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61706D4972657375 && a2 == 0xEA00000000007463 || (sub_26B542FB4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000 || (sub_26B542FB4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x800000026B56B920 == a2 || (sub_26B542FB4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6574726F70707573 && a2 == 0xEF736D6F69644964 || (sub_26B542FB4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4964656E6E616C70 && a2 == 0xED0000736D6F6964 || (sub_26B542FB4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026B56B940 == a2 || (sub_26B542FB4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6375646F72746E69 && a2 == 0xEA00000000006465 || (sub_26B542FB4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026B56B960 == a2 || (sub_26B542FB4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x800000026B56B980 == a2 || (sub_26B542FB4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026B56B9A0 == a2 || (sub_26B542FB4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000026B56B9C0 == a2 || (sub_26B542FB4() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000026B56B9E0 == a2 || (sub_26B542FB4() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000022 && 0x800000026B56BA00 == a2 || (sub_26B542FB4() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD00000000000002ALL && 0x800000026B56BA30 == a2 || (sub_26B542FB4() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000013 && 0x800000026B56BA60 == a2 || (sub_26B542FB4() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 20;
  }

  else
  {
    v6 = sub_26B542FB4();

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

uint64_t _s32SpeechRecognitionCommandServices19VCCommandCollectionV03allC11CollectionsSayACGvgZ_0()
{
  v0 = sub_26B542934();
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3);
  v4 = sub_26B542A64();
  MEMORY[0x28223BE20](v4 - 8, v5, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD18, &unk_26B548300);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26B545520;
  sub_26B542A54();
  sub_26B5428F4();
  v9 = sub_26B542AB4();
  *(v8 + 32) = 0x6D6F74737543;
  *(v8 + 40) = 0xE600000000000000;
  *(v8 + 48) = v9;
  *(v8 + 56) = v10;
  *(v8 + 64) = MEMORY[0x277D84F90];
  *(v8 + 72) = 1;
  v11 = sub_26B4866E0();
  v12 = v11[1];
  v13 = v11[2];
  v14 = v11[3];
  v15 = v11[4];
  v16 = *(v11 + 40);
  v17 = *(v11 + 41);
  *(v8 + 80) = *v11;
  *(v8 + 88) = v12;
  *(v8 + 96) = v13;
  *(v8 + 104) = v14;
  *(v8 + 112) = v15;
  *(v8 + 120) = v16;
  *(v8 + 121) = v17;

  v18 = sub_26B4A886C();
  object = v18->identifier._object;
  countAndFlagsBits = v18->displayName._countAndFlagsBits;
  v21 = v18->displayName._object;
  rawValue = v18->commands._rawValue;
  showInSettings = v18->showInSettings;
  showCodingGuideInSettings = v18->showCodingGuideInSettings;
  *(v8 + 128) = v18->identifier._countAndFlagsBits;
  *(v8 + 136) = object;
  *(v8 + 144) = countAndFlagsBits;
  *(v8 + 152) = v21;
  *(v8 + 160) = rawValue;
  *(v8 + 168) = showInSettings;
  *(v8 + 169) = showCodingGuideInSettings;

  v25 = sub_26B4BA66C();
  v26 = v25[1];
  v27 = v25[2];
  v28 = v25[3];
  v29 = v25[4];
  v30 = *(v25 + 40);
  v31 = *(v25 + 41);
  *(v8 + 176) = *v25;
  *(v8 + 184) = v26;
  *(v8 + 192) = v27;
  *(v8 + 200) = v28;
  *(v8 + 208) = v29;
  *(v8 + 216) = v30;
  *(v8 + 217) = v31;

  v32 = sub_26B488994();
  v33 = v32->identifier._object;
  v34 = v32->displayName._countAndFlagsBits;
  v35 = v32->displayName._object;
  v36 = v32->commands._rawValue;
  v37 = v32->showInSettings;
  v38 = v32->showCodingGuideInSettings;
  *(v8 + 224) = v32->identifier._countAndFlagsBits;
  *(v8 + 232) = v33;
  *(v8 + 240) = v34;
  *(v8 + 248) = v35;
  *(v8 + 256) = v36;
  *(v8 + 264) = v37;
  *(v8 + 265) = v38;

  v39 = sub_26B487B84();
  v40 = v39->identifier._object;
  v41 = v39->displayName._countAndFlagsBits;
  v42 = v39->displayName._object;
  v43 = v39->commands._rawValue;
  v44 = v39->showInSettings;
  v45 = v39->showCodingGuideInSettings;
  *(v8 + 272) = v39->identifier._countAndFlagsBits;
  *(v8 + 280) = v40;
  *(v8 + 288) = v41;
  *(v8 + 296) = v42;
  *(v8 + 304) = v43;
  *(v8 + 312) = v44;
  *(v8 + 313) = v45;

  v46 = sub_26B475644();
  v47 = v46->identifier._object;
  v48 = v46->displayName._countAndFlagsBits;
  v49 = v46->displayName._object;
  v50 = v46->commands._rawValue;
  v51 = v46->showInSettings;
  v52 = v46->showCodingGuideInSettings;
  *(v8 + 320) = v46->identifier._countAndFlagsBits;
  *(v8 + 328) = v47;
  *(v8 + 336) = v48;
  *(v8 + 344) = v49;
  *(v8 + 352) = v50;
  *(v8 + 360) = v51;
  *(v8 + 361) = v52;

  v53 = sub_26B48E25C();
  v54 = v53->identifier._object;
  v55 = v53->displayName._countAndFlagsBits;
  v56 = v53->displayName._object;
  v57 = v53->commands._rawValue;
  v58 = v53->showInSettings;
  v59 = v53->showCodingGuideInSettings;
  *(v8 + 368) = v53->identifier._countAndFlagsBits;
  *(v8 + 376) = v54;
  *(v8 + 384) = v55;
  *(v8 + 392) = v56;
  *(v8 + 400) = v57;
  *(v8 + 408) = v58;
  *(v8 + 409) = v59;

  v60 = sub_26B470D00();
  v61 = v60->identifier._object;
  v62 = v60->displayName._countAndFlagsBits;
  v63 = v60->displayName._object;
  v64 = v60->commands._rawValue;
  v65 = v60->showInSettings;
  v66 = v60->showCodingGuideInSettings;
  *(v8 + 416) = v60->identifier._countAndFlagsBits;
  *(v8 + 424) = v61;
  *(v8 + 432) = v62;
  *(v8 + 440) = v63;
  *(v8 + 448) = v64;
  *(v8 + 456) = v65;
  *(v8 + 457) = v66;

  v67 = sub_26B4BD61C();
  v68 = v67[1];
  v69 = v67[2];
  v70 = v67[3];
  v71 = v67[4];
  v72 = *(v67 + 40);
  v73 = *(v67 + 41);
  *(v8 + 464) = *v67;
  *(v8 + 472) = v68;
  *(v8 + 480) = v69;
  *(v8 + 488) = v70;
  *(v8 + 496) = v71;
  *(v8 + 504) = v72;
  *(v8 + 505) = v73;

  v74 = sub_26B489B08();
  v75 = v74->identifier._object;
  v76 = v74->displayName._countAndFlagsBits;
  v77 = v74->displayName._object;
  v78 = v74->commands._rawValue;
  v79 = v74->showInSettings;
  v80 = v74->showCodingGuideInSettings;
  *(v8 + 512) = v74->identifier._countAndFlagsBits;
  *(v8 + 520) = v75;
  *(v8 + 528) = v76;
  *(v8 + 536) = v77;
  *(v8 + 544) = v78;
  *(v8 + 552) = v79;
  *(v8 + 553) = v80;

  v81 = sub_26B490014();
  v82 = v81->identifier._object;
  v83 = v81->displayName._countAndFlagsBits;
  v84 = v81->displayName._object;
  v85 = v81->commands._rawValue;
  v86 = v81->showInSettings;
  v87 = v81->showCodingGuideInSettings;
  *(v8 + 560) = v81->identifier._countAndFlagsBits;
  *(v8 + 568) = v82;
  *(v8 + 576) = v83;
  *(v8 + 584) = v84;
  *(v8 + 592) = v85;
  *(v8 + 600) = v86;
  *(v8 + 601) = v87;

  v88 = sub_26B49E2DC();
  v89 = v88->identifier._object;
  v90 = v88->displayName._countAndFlagsBits;
  v91 = v88->displayName._object;
  v92 = v88->commands._rawValue;
  v93 = v88->showInSettings;
  v94 = v88->showCodingGuideInSettings;
  *(v8 + 608) = v88->identifier._countAndFlagsBits;
  *(v8 + 616) = v89;
  *(v8 + 624) = v90;
  *(v8 + 632) = v91;
  *(v8 + 640) = v92;
  *(v8 + 648) = v93;
  *(v8 + 649) = v94;

  v95 = sub_26B4E74E4();
  v96 = v95[1];
  v97 = v95[2];
  v98 = v95[3];
  v99 = v95[4];
  v100 = *(v95 + 40);
  v101 = *(v95 + 41);
  *(v8 + 656) = *v95;
  *(v8 + 664) = v96;
  *(v8 + 672) = v97;
  *(v8 + 680) = v98;
  *(v8 + 688) = v99;
  *(v8 + 696) = v100;
  *(v8 + 697) = v101;

  return v8;
}

unint64_t sub_26B4DB978()
{
  result = qword_280400668[0];
  if (!qword_280400668[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280400668);
  }

  return result;
}

unint64_t sub_26B4DB9CC()
{
  result = qword_2803FFFB8;
  if (!qword_2803FFFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFFB0, &qword_26B545668);
    sub_26B4DBA50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFFB8);
  }

  return result;
}

unint64_t sub_26B4DBA50()
{
  result = qword_2803FFFC0;
  if (!qword_2803FFFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFFC0);
  }

  return result;
}

unint64_t sub_26B4DBAA4()
{
  result = qword_2803FFFD0;
  if (!qword_2803FFFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFFB0, &qword_26B545668);
    sub_26B4DBB28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFFD0);
  }

  return result;
}

unint64_t sub_26B4DBB28()
{
  result = qword_2803FFFD8;
  if (!qword_2803FFFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFFD8);
  }

  return result;
}

uint64_t sub_26B4DBB7C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26B4DBC10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_26B542FB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_26B542FB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73646E616D6D6F63 && a2 == 0xE800000000000000 || (sub_26B542FB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65536E49776F6873 && a2 == 0xEE0073676E697474 || (sub_26B542FB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x800000026B56AEC0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_26B542FB4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_26B4DBDDC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_26B4D8750(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_26B4DBE4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804000A8, &qword_26B5482E8);
    v3 = sub_26B542D44();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_26B543034();

      sub_26B542AE4();
      result = sub_26B543054();
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
          result = sub_26B542FB4();
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

unint64_t sub_26B4DBFB8()
{
  result = qword_2803FFFE0;
  if (!qword_2803FFFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFFE0);
  }

  return result;
}

unint64_t sub_26B4DC09C()
{
  result = qword_280400008;
  if (!qword_280400008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400008);
  }

  return result;
}

unint64_t sub_26B4DC138()
{
  result = qword_280400020;
  if (!qword_280400020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400020);
  }

  return result;
}

unint64_t sub_26B4DC1D4()
{
  result = qword_280400038;
  if (!qword_280400038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400038);
  }

  return result;
}

uint64_t sub_26B4DC2FC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_26B4DC360(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B4DC3D8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFCE8, &unk_26B5454F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VCCommand.Idiom(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VCCommand.Idiom(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VCCommand.Evaluation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDB)
  {
    goto LABEL_17;
  }

  if (a2 + 37 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 37) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 37;
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

      return (*a1 | (v4 << 8)) - 37;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 37;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x26;
  v8 = v6 - 38;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VCCommand.Evaluation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 37 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 37) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDB)
  {
    v4 = 0;
  }

  if (a2 > 0xDA)
  {
    v5 = ((a2 - 219) >> 8) + 1;
    *result = a2 + 37;
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
    *result = a2 + 37;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26B4DC778(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26B4DC7F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 240) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 0x10)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 241;
}

void sub_26B4DC904(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xF1)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 240) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xF0)
  {
    v8 = a2 - 241;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B4DCABC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_26B4DCB18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_26B4DCBB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_26B4DCC00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26B4DCC90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_26B4DCCD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for MatchingFlags()
{
  if (!qword_280400078)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280400078);
    }
  }
}

uint64_t sub_26B4DCD88(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_26B4DCE1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VCCommand.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for VCCommand.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Action.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Action.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26B4DD1A0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_26B4DD230(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s32SpeechRecognitionCommandServices9VCCommandV10UserImpactOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s32SpeechRecognitionCommandServices9VCCommandV10UserImpactOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26B4DD46C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_26B4DD500(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26B4DD604()
{
  result = qword_280402E70[0];
  if (!qword_280402E70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280402E70);
  }

  return result;
}

unint64_t sub_26B4DD65C()
{
  result = qword_280403380[0];
  if (!qword_280403380[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280403380);
  }

  return result;
}

unint64_t sub_26B4DD890()
{
  result = qword_280405790[0];
  if (!qword_280405790[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280405790);
  }

  return result;
}

unint64_t sub_26B4DD8E8()
{
  result = qword_2804059A0[0];
  if (!qword_2804059A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2804059A0);
  }

  return result;
}

unint64_t sub_26B4DD940()
{
  result = qword_280405BB0[0];
  if (!qword_280405BB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280405BB0);
  }

  return result;
}

unint64_t sub_26B4DD998()
{
  result = qword_280405CC0;
  if (!qword_280405CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280405CC0);
  }

  return result;
}

unint64_t sub_26B4DD9F0()
{
  result = qword_280405CC8[0];
  if (!qword_280405CC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280405CC8);
  }

  return result;
}

unint64_t sub_26B4DDA48()
{
  result = qword_280405D50;
  if (!qword_280405D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280405D50);
  }

  return result;
}

unint64_t sub_26B4DDAA0()
{
  result = qword_280405D58[0];
  if (!qword_280405D58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280405D58);
  }

  return result;
}

unint64_t sub_26B4DDAF8()
{
  result = qword_280405DE0;
  if (!qword_280405DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280405DE0);
  }

  return result;
}

unint64_t sub_26B4DDB50()
{
  result = qword_280405DE8[0];
  if (!qword_280405DE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280405DE8);
  }

  return result;
}

unint64_t sub_26B4DDF60()
{
  result = qword_2804066F0;
  if (!qword_2804066F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804066F0);
  }

  return result;
}

unint64_t sub_26B4DDFB8()
{
  result = qword_2804066F8[0];
  if (!qword_2804066F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2804066F8);
  }

  return result;
}

unint64_t sub_26B4DE010()
{
  result = qword_280406780;
  if (!qword_280406780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280406780);
  }

  return result;
}

unint64_t sub_26B4DE068()
{
  result = qword_280406788[0];
  if (!qword_280406788[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280406788);
  }

  return result;
}

unint64_t sub_26B4DE0C0()
{
  result = qword_280406810;
  if (!qword_280406810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280406810);
  }

  return result;
}

unint64_t sub_26B4DE118()
{
  result = qword_280406818[0];
  if (!qword_280406818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280406818);
  }

  return result;
}

unint64_t sub_26B4DE170()
{
  result = qword_2804068A0;
  if (!qword_2804068A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804068A0);
  }

  return result;
}

unint64_t sub_26B4DE1C8()
{
  result = qword_2804068A8[0];
  if (!qword_2804068A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2804068A8);
  }

  return result;
}

unint64_t sub_26B4DE220()
{
  result = qword_280406930;
  if (!qword_280406930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280406930);
  }

  return result;
}

unint64_t sub_26B4DE278()
{
  result = qword_280406938[0];
  if (!qword_280406938[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280406938);
  }

  return result;
}

unint64_t sub_26B4DE2D0()
{
  result = qword_2804069C0;
  if (!qword_2804069C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804069C0);
  }

  return result;
}

unint64_t sub_26B4DE328()
{
  result = qword_2804069C8[0];
  if (!qword_2804069C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2804069C8);
  }

  return result;
}

unint64_t sub_26B4DE380()
{
  result = qword_280406A50;
  if (!qword_280406A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280406A50);
  }

  return result;
}

unint64_t sub_26B4DE3D8()
{
  result = qword_280406A58[0];
  if (!qword_280406A58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280406A58);
  }

  return result;
}

unint64_t sub_26B4DE430()
{
  result = qword_280406AE0;
  if (!qword_280406AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280406AE0);
  }

  return result;
}

unint64_t sub_26B4DE488()
{
  result = qword_280406AE8[0];
  if (!qword_280406AE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280406AE8);
  }

  return result;
}

unint64_t sub_26B4DE4E0()
{
  result = qword_280406B70;
  if (!qword_280406B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280406B70);
  }

  return result;
}

unint64_t sub_26B4DE538()
{
  result = qword_280406B78;
  if (!qword_280406B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280406B78);
  }

  return result;
}

unint64_t sub_26B4DE58C()
{
  result = qword_280400080;
  if (!qword_280400080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400080);
  }

  return result;
}

unint64_t sub_26B4DE5E0()
{
  result = qword_280400088;
  if (!qword_280400088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400088);
  }

  return result;
}

unint64_t sub_26B4DE634()
{
  result = qword_280400090;
  if (!qword_280400090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400090);
  }

  return result;
}

unint64_t sub_26B4DE688()
{
  result = qword_280400098;
  if (!qword_280400098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400098);
  }

  return result;
}

unint64_t sub_26B4DE6DC()
{
  result = qword_2804000A0;
  if (!qword_2804000A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804000A0);
  }

  return result;
}

_BYTE *sub_26B4DE730@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_26B4DE854()
{
  v0 = sub_26B542934();
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3);
  v4 = sub_26B542A64();
  MEMORY[0x28223BE20](v4 - 8, v5, v6, v7);
  sub_26B542A54();
  sub_26B5428F4();
  v830 = sub_26B542AB4();
  v829 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC40, &unk_26B5453C0);
  v927 = swift_allocObject();
  *(v927 + 16) = xmmword_26B548320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC98, &qword_26B545230);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26B545180;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCA0, &qword_26B5453A0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26B545250;
  *(v10 + 32) = 0xD00000000000001DLL;
  *(v10 + 40) = 0x800000026B5547D0;
  *(v10 + 48) = 0xD00000000000001BLL;
  *(v10 + 56) = 0x800000026B554810;
  *(v10 + 64) = 0xD00000000000002BLL;
  *(v10 + 72) = 0x800000026B554850;
  *(v10 + 80) = 0xD000000000000024;
  *(v10 + 88) = 0x800000026B5548B0;
  *(v10 + 96) = 0xD000000000000012;
  *(v10 + 104) = 0x800000026B5547F0;
  *(v10 + 112) = 0xD000000000000010;
  *(v10 + 120) = 0x800000026B554830;
  *(v10 + 128) = 0xD000000000000020;
  *(v10 + 136) = 0x800000026B554880;
  *(v10 + 144) = 0xD000000000000019;
  *(v10 + 152) = 0x800000026B5548E0;
  *(v9 + 32) = v10;
  *(v9 + 40) = 1;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26B545250;
  *(v11 + 32) = 0xD00000000000001ALL;
  *(v11 + 40) = 0x800000026B5547B0;
  *(v11 + 48) = 0xD00000000000001BLL;
  *(v11 + 56) = 0x800000026B554810;
  *(v11 + 64) = 0xD00000000000002BLL;
  *(v11 + 72) = 0x800000026B554850;
  *(v11 + 80) = 0xD000000000000024;
  *(v11 + 88) = 0x800000026B5548B0;
  *(v11 + 96) = 0x6C73206F74206F47;
  *(v11 + 104) = 0xEF63614D20706565;
  *(v11 + 112) = 0xD000000000000010;
  *(v11 + 120) = 0x800000026B554830;
  *(v11 + 128) = 0xD000000000000020;
  *(v11 + 136) = 0x800000026B554880;
  *(v11 + 144) = 0xD000000000000019;
  *(v11 + 152) = 0x800000026B5548E0;
  *(v9 + 48) = v11;
  *(v9 + 56) = 4;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26B545250;
  *(v12 + 32) = 0xD00000000000001ALL;
  *(v12 + 40) = 0x800000026B5547B0;
  *(v12 + 48) = 0xD00000000000001DLL;
  *(v12 + 56) = 0x800000026B5547D0;
  *(v12 + 64) = 0xD00000000000002BLL;
  *(v12 + 72) = 0x800000026B554850;
  *(v12 + 80) = 0xD000000000000024;
  *(v12 + 88) = 0x800000026B5548B0;
  *(v12 + 96) = 0x6C73206F74206F47;
  *(v12 + 104) = 0xEF63614D20706565;
  *(v12 + 112) = 0xD000000000000012;
  *(v12 + 120) = 0x800000026B5547F0;
  *(v12 + 128) = 0xD000000000000020;
  *(v12 + 136) = 0x800000026B554880;
  *(v12 + 144) = 0xD000000000000019;
  *(v12 + 152) = 0x800000026B5548E0;
  *(v9 + 64) = v12;
  *(v9 + 72) = 5;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26B545250;
  *(v13 + 32) = 0xD00000000000001ALL;
  *(v13 + 40) = 0x800000026B5547B0;
  *(v13 + 48) = 0xD00000000000001DLL;
  *(v13 + 56) = 0x800000026B5547D0;
  *(v13 + 64) = 0xD00000000000001BLL;
  *(v13 + 72) = 0x800000026B554810;
  *(v13 + 80) = 0xD000000000000024;
  *(v13 + 88) = 0x800000026B5548B0;
  *(v13 + 96) = 0x6C73206F74206F47;
  *(v13 + 104) = 0xEF63614D20706565;
  *(v13 + 112) = 0xD000000000000012;
  *(v13 + 120) = 0x800000026B5547F0;
  *(v13 + 128) = 0xD000000000000010;
  *(v13 + 136) = 0x800000026B554830;
  *(v13 + 144) = 0xD000000000000019;
  *(v13 + 152) = 0x800000026B5548E0;
  v14 = v9;
  *(v9 + 80) = v13;
  *(v9 + 88) = 8;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_26B548330;
  *(v15 + 32) = 0xD00000000000001ALL;
  *(v15 + 40) = 0x800000026B5547B0;
  *(v15 + 48) = 0xD00000000000001DLL;
  *(v15 + 56) = 0x800000026B5547D0;
  *(v15 + 64) = 0xD00000000000001BLL;
  *(v15 + 72) = 0x800000026B554810;
  *(v15 + 80) = 0xD00000000000002BLL;
  *(v15 + 88) = 0x800000026B554850;
  *(v15 + 96) = 0xD000000000000024;
  *(v15 + 104) = 0x800000026B5548B0;
  *(v15 + 112) = 0x6C73206F74206F47;
  *(v15 + 120) = 0xEF63614D20706565;
  *(v15 + 128) = 0xD000000000000012;
  *(v15 + 136) = 0x800000026B5547F0;
  *(v15 + 144) = 0xD000000000000010;
  *(v15 + 152) = 0x800000026B554830;
  *(v15 + 160) = 0xD000000000000020;
  *(v15 + 168) = 0x800000026B554880;
  *(v15 + 176) = 0xD000000000000019;
  *(v15 + 184) = 0x800000026B5548E0;
  *(v9 + 96) = v15;
  *(v9 + 104) = 10;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_26B545250;
  *(v16 + 32) = 0xD00000000000001ALL;
  *(v16 + 40) = 0x800000026B5547B0;
  *(v16 + 48) = 0xD00000000000001DLL;
  *(v16 + 56) = 0x800000026B5547D0;
  *(v16 + 64) = 0xD00000000000001BLL;
  *(v16 + 72) = 0x800000026B554810;
  *(v16 + 80) = 0xD00000000000002BLL;
  *(v16 + 88) = 0x800000026B554850;
  *(v16 + 96) = 0x6C73206F74206F47;
  *(v16 + 104) = 0xEF63614D20706565;
  *(v16 + 112) = 0xD000000000000012;
  *(v16 + 120) = 0x800000026B5547F0;
  *(v16 + 128) = 0xD000000000000010;
  *(v16 + 136) = 0x800000026B554830;
  *(v16 + 144) = 0xD000000000000020;
  *(v16 + 152) = 0x800000026B554880;
  *(v9 + 112) = v16;
  *(v9 + 120) = 14;
  v935[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCA8, &unk_26B5453B0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_26B545140;
  *(v17 + 32) = 84017408;
  *(v17 + 36) = 8;
  v858 = sub_26B470D98(v17);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v18 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v18 = MEMORY[0x277D84FA0];
  }

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_26B545100;
  *(v19 + 32) = 3;
  v20 = sub_26B470D98(v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC48, &unk_26B5482F0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_26B5450C0;
  v22 = sub_26B4C6A78();
  *(v21 + 32) = *v22;
  *(v21 + 40) = 1;
  *(v21 + 48) = *v22;
  *(v21 + 56) = 3;
  v926 = v22;
  *(v21 + 64) = *v22;
  *(v21 + 72) = 8;
  *(v21 + 80) = 0x403A000000000000;
  *(v21 + 88) = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCB0, &qword_26B545238);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_26B545100;
  *(v23 + 32) = 5;
  v24 = sub_26B470F10(v23);

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_26B545120;
  *(v25 + 32) = 256;
  v26 = sub_26B470F10(v25);

  v934 = 4;
  v933 = 4;
  v27.value._countAndFlagsBits = 0xD000000000000014;
  v27.value._object = 0x800000026B56BAC0;
  Action.init(_:mac:)(v27, 0);
  v929 = v931;
  v930 = v932;
  v28 = sub_26B4D43F4();
  v29 = sub_26B4CE5C8();
  v30 = sub_26B4D4400();
  *&v780 = sub_26B4D4408();
  *(&v780 + 1) = v24;
  *&v731 = v20;
  *(&v731 + 1) = v21;
  *(&v682 + 1) = v18;
  *&v682 = v858;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B56BAA0, v14, MEMORY[0x277D84F90], v28, 0, 0, v935, v927 + 32, v29 & 1, v30 & 1, v682, v731, v780, v26, &v934, &v933, 0, 0, &v929);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_26B545180;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_26B545250;
  *(v32 + 32) = 0xD00000000000001ELL;
  *(v32 + 40) = 0x800000026B554A60;
  *(v32 + 48) = 0xD00000000000001CLL;
  *(v32 + 56) = 0x800000026B554AA0;
  *(v32 + 64) = 0xD00000000000002CLL;
  *(v32 + 72) = 0x800000026B554AE0;
  *(v32 + 80) = 0xD000000000000025;
  *(v32 + 88) = 0x800000026B554B40;
  *(v32 + 96) = 0xD000000000000013;
  *(v32 + 104) = 0x800000026B554A80;
  *(v32 + 112) = 0xD000000000000011;
  *(v32 + 120) = 0x800000026B554AC0;
  *(v32 + 128) = 0xD000000000000021;
  *(v32 + 136) = 0x800000026B554B10;
  *(v32 + 144) = 0xD00000000000001ALL;
  *(v32 + 152) = 0x800000026B554B70;
  *(v31 + 32) = v32;
  *(v31 + 40) = 1;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_26B545250;
  *(v33 + 32) = 0xD00000000000001BLL;
  *(v33 + 40) = 0x800000026B554A20;
  *(v33 + 48) = 0xD00000000000001CLL;
  *(v33 + 56) = 0x800000026B554AA0;
  *(v33 + 64) = 0xD00000000000002CLL;
  *(v33 + 72) = 0x800000026B554AE0;
  *(v33 + 80) = 0xD000000000000025;
  *(v33 + 88) = 0x800000026B554B40;
  *(v33 + 96) = 0xD000000000000010;
  *(v33 + 104) = 0x800000026B554A40;
  *(v33 + 112) = 0xD000000000000011;
  *(v33 + 120) = 0x800000026B554AC0;
  *(v33 + 128) = 0xD000000000000021;
  *(v33 + 136) = 0x800000026B554B10;
  *(v33 + 144) = 0xD00000000000001ALL;
  *(v33 + 152) = 0x800000026B554B70;
  *(v31 + 48) = v33;
  *(v31 + 56) = 4;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_26B545250;
  *(v34 + 32) = 0xD00000000000001BLL;
  *(v34 + 40) = 0x800000026B554A20;
  *(v34 + 48) = 0xD00000000000001ELL;
  *(v34 + 56) = 0x800000026B554A60;
  *(v34 + 64) = 0xD00000000000002CLL;
  *(v34 + 72) = 0x800000026B554AE0;
  *(v34 + 80) = 0xD000000000000025;
  *(v34 + 88) = 0x800000026B554B40;
  *(v34 + 96) = 0xD000000000000010;
  *(v34 + 104) = 0x800000026B554A40;
  *(v34 + 112) = 0xD000000000000013;
  *(v34 + 120) = 0x800000026B554A80;
  *(v34 + 128) = 0xD000000000000021;
  *(v34 + 136) = 0x800000026B554B10;
  *(v34 + 144) = 0xD00000000000001ALL;
  *(v34 + 152) = 0x800000026B554B70;
  *(v31 + 64) = v34;
  *(v31 + 72) = 5;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_26B545250;
  *(v35 + 32) = 0xD00000000000001BLL;
  *(v35 + 40) = 0x800000026B554A20;
  *(v35 + 48) = 0xD00000000000001ELL;
  *(v35 + 56) = 0x800000026B554A60;
  *(v35 + 64) = 0xD00000000000001CLL;
  *(v35 + 72) = 0x800000026B554AA0;
  *(v35 + 80) = 0xD000000000000025;
  *(v35 + 88) = 0x800000026B554B40;
  *(v35 + 96) = 0xD000000000000010;
  *(v35 + 104) = 0x800000026B554A40;
  *(v35 + 112) = 0xD000000000000013;
  *(v35 + 120) = 0x800000026B554A80;
  *(v35 + 128) = 0xD000000000000011;
  *(v35 + 136) = 0x800000026B554AC0;
  *(v35 + 144) = 0xD00000000000001ALL;
  *(v35 + 152) = 0x800000026B554B70;
  *(v31 + 80) = v35;
  *(v31 + 88) = 8;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_26B548330;
  *(v36 + 32) = 0xD00000000000001BLL;
  *(v36 + 40) = 0x800000026B554A20;
  *(v36 + 48) = 0xD00000000000001ELL;
  *(v36 + 56) = 0x800000026B554A60;
  *(v36 + 64) = 0xD00000000000001CLL;
  *(v36 + 72) = 0x800000026B554AA0;
  *(v36 + 80) = 0xD00000000000002CLL;
  *(v36 + 88) = 0x800000026B554AE0;
  *(v36 + 96) = 0xD000000000000025;
  *(v36 + 104) = 0x800000026B554B40;
  *(v36 + 112) = 0xD000000000000010;
  *(v36 + 120) = 0x800000026B554A40;
  *(v36 + 128) = 0xD000000000000013;
  *(v36 + 136) = 0x800000026B554A80;
  *(v36 + 144) = 0xD000000000000011;
  *(v36 + 152) = 0x800000026B554AC0;
  *(v36 + 160) = 0xD000000000000021;
  *(v36 + 168) = 0x800000026B554B10;
  *(v36 + 176) = 0xD00000000000001ALL;
  *(v36 + 184) = 0x800000026B554B70;
  *(v31 + 96) = v36;
  *(v31 + 104) = 10;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_26B545250;
  *(v37 + 32) = 0xD00000000000001BLL;
  *(v37 + 40) = 0x800000026B554A20;
  *(v37 + 48) = 0xD00000000000001ELL;
  *(v37 + 56) = 0x800000026B554A60;
  *(v37 + 64) = 0xD00000000000001CLL;
  *(v37 + 72) = 0x800000026B554AA0;
  *(v37 + 80) = 0xD00000000000002CLL;
  *(v37 + 88) = 0x800000026B554AE0;
  *(v37 + 96) = 0xD000000000000010;
  *(v37 + 104) = 0x800000026B554A40;
  *(v37 + 112) = 0xD000000000000013;
  *(v37 + 120) = 0x800000026B554A80;
  *(v37 + 128) = 0xD000000000000011;
  *(v37 + 136) = 0x800000026B554AC0;
  *(v37 + 144) = 0xD000000000000021;
  *(v37 + 152) = 0x800000026B554B10;
  *(v31 + 112) = v37;
  *(v31 + 120) = 14;
  v935[0] = 0;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_26B545140;
  *(v38 + 32) = 84017408;
  *(v38 + 36) = 8;
  v891 = sub_26B470D98(v38);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v839 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v839 = MEMORY[0x277D84FA0];
  }

  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_26B545100;
  *(v39 + 32) = 3;
  v40 = sub_26B470D98(v39);

  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_26B5450C0;
  *(v41 + 32) = *v926;
  *(v41 + 40) = 1;
  *(v41 + 48) = *v926;
  *(v41 + 56) = 3;
  *(v41 + 64) = *v926;
  *(v41 + 72) = 8;
  *(v41 + 80) = 0x403A000000000000;
  *(v41 + 88) = 10;
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_26B545100;
  *(v42 + 32) = 5;
  v43 = sub_26B470F10(v42);

  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_26B545120;
  *(v44 + 32) = 256;
  v45 = sub_26B470F10(v44);

  v934 = 4;
  v933 = 2;
  v46.value._object = 0x800000026B56BB00;
  v46.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v46, 0);
  v929 = v931;
  v930 = v932;
  v47 = sub_26B4D43F4();
  v48 = sub_26B4CE5C8();
  v49 = sub_26B4D4400();
  *&v781 = sub_26B4D4408();
  *(&v781 + 1) = v43;
  *&v732 = v40;
  *(&v732 + 1) = v41;
  *(&v683 + 1) = v839;
  *&v683 = v891;
  v50 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ALL, 0x800000026B56BAE0, v31, MEMORY[0x277D84F90], v47, 0, 0, v935, v927 + 216, v48 & 1, v49 & 1, v683, v732, v781, v45, &v934, &v933, 0, 0, &v929);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_26B545100;
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_26B545100;
  *(v52 + 32) = 0xD000000000000025;
  *(v52 + 40) = 0x800000026B56BB20;
  *(v51 + 32) = v52;
  *(v51 + 40) = 0;
  v935[0] = 0;
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_26B545140;
  *(v53 + 32) = 84017408;
  *(v53 + 36) = 8;
  v892 = sub_26B470D98(v53);

  if (*(v50 + 16))
  {
    v859 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v859 = MEMORY[0x277D84FA0];
  }

  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_26B545100;
  *(v54 + 32) = 3;
  v840 = sub_26B470D98(v54);

  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_26B5450C0;
  *(v55 + 32) = *v926;
  *(v55 + 40) = 1;
  *(v55 + 48) = *v926;
  *(v55 + 56) = 3;
  *(v55 + 64) = *v926;
  *(v55 + 72) = 8;
  *(v55 + 80) = 0x403A000000000000;
  *(v55 + 88) = 10;
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_26B545100;
  *(v56 + 32) = 5;
  v831 = sub_26B470F10(v56);

  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_26B545120;
  *(v57 + 32) = 3585;
  v58 = sub_26B470F10(v57);

  v934 = 4;
  v933 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCB8, &qword_26B5454E0);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_26B545120;
  *(v59 + 32) = 0xD00000000000001DLL;
  *(v59 + 40) = 0x800000026B557850;
  *(v59 + 48) = 0;
  *(v59 + 56) = 0xD00000000000001ELL;
  *(v59 + 64) = 0x800000026B557870;
  *(v59 + 72) = 1;
  v60.value._object = 0x800000026B558780;
  v60.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v60, 0);
  v929 = v931;
  v930 = v932;
  v61 = sub_26B4D43F4();
  v62 = sub_26B4CE5C8();
  v63 = sub_26B4D4400();
  *&v782 = sub_26B4D4408();
  *(&v782 + 1) = v831;
  *(&v733 + 1) = v55;
  *&v733 = v840;
  *(&v684 + 1) = v859;
  *&v684 = v892;
  v64 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000029, 0x800000026B56BB50, v51, MEMORY[0x277D84F90], v61, 0, 0, v935, v927 + 400, v62 & 1, v63 & 1, v684, v733, v782, v58, &v934, &v933, 0, v59, &v929);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_26B545100;
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_26B545100;
  *(v66 + 32) = 0xD000000000000020;
  *(v66 + 40) = 0x800000026B56BB80;
  *(v65 + 32) = v66;
  *(v65 + 40) = 0;
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_26B545100;
  *(v67 + 32) = 0xD000000000000024;
  *(v67 + 40) = 0x800000026B56BBB0;
  *(v67 + 48) = 0;
  v935[0] = 1;
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_26B545140;
  *(v68 + 32) = 84083201;
  *(v68 + 36) = 8;
  v860 = sub_26B470D98(v68);

  if (*(v64 + 16))
  {
    v841 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v841 = MEMORY[0x277D84FA0];
  }

  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_26B545100;
  *(v69 + 32) = 0;
  v70 = sub_26B470D98(v69);

  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_26B5450D0;
  *(v71 + 32) = *v926;
  *(v71 + 40) = 3;
  *(v71 + 48) = *v926;
  *(v71 + 56) = 8;
  *(v71 + 64) = 0x403A000000000000;
  *(v71 + 72) = 10;
  v934 = 4;
  v933 = 4;
  v72.value._object = 0x800000026B56BC00;
  v72.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v72, 0);
  v929 = v931;
  v930 = v932;
  v73 = sub_26B4D43F4();
  v74 = sub_26B4CE5C8();
  v75 = sub_26B4D4400();
  v76 = sub_26B4D4408();
  v77 = sub_26B4D4414();
  v78 = sub_26B4D4414();
  *&v783 = v76;
  *(&v783 + 1) = v77;
  *&v734 = v70;
  *(&v734 + 1) = v71;
  *(&v685 + 1) = v841;
  *&v685 = v860;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B56BBE0, v65, v67, v73, 0, 0, v935, v927 + 584, v74 & 1, v75 & 1, v685, v734, v783, v78, &v934, &v933, 0, 0, &v929);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_26B545100;
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_26B545120;
  *(v80 + 32) = 0xD00000000000001FLL;
  *(v80 + 40) = 0x800000026B56BC20;
  *(v80 + 48) = 0x20707520656B6157;
  *(v80 + 56) = 0xEF79616C50726143;
  *(v79 + 32) = v80;
  *(v79 + 40) = 0;
  v935[0] = 0;
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_26B545100;
  *(v81 + 32) = 1;
  v842 = sub_26B470D98(v81);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v832 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v832 = MEMORY[0x277D84FA0];
  }

  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_26B545140;
  *(v82 + 32) = 84083200;
  *(v82 + 36) = 8;
  v83 = sub_26B470D98(v82);

  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_26B545100;
  *(v84 + 32) = *v926;
  *(v84 + 40) = 3;
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_26B545120;
  *(v85 + 32) = 7938;
  v86 = sub_26B470F10(v85);

  v934 = 4;
  v933 = 4;
  v87.value._countAndFlagsBits = 0x50726143656B6177;
  v87.value._object = 0xEB0000000079616CLL;
  Action.init(_:mac:)(v87, 0);
  v929 = v931;
  v930 = v932;
  v88 = sub_26B4D43F4();
  v89 = sub_26B4CE5C8();
  v90 = sub_26B4D4400();
  *&v784 = sub_26B4D4408();
  *(&v784 + 1) = sub_26B4D4414();
  *&v735 = v83;
  *(&v735 + 1) = v84;
  *(&v686 + 1) = v832;
  *&v686 = v842;
  v91 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B56BC40, v79, MEMORY[0x277D84F90], v88, 0, 0, v935, v927 + 768, v89 & 1, v90 & 1, v686, v735, v784, v86, &v934, &v933, 0, 0, &v929);
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_26B545100;
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_26B545120;
  *(v93 + 32) = 0xD00000000000001ELL;
  *(v93 + 40) = 0x800000026B554A60;
  *(v93 + 48) = 0xD000000000000013;
  *(v93 + 56) = 0x800000026B554A80;
  *(v92 + 32) = v93;
  *(v92 + 40) = 0;
  v935[0] = 0;
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_26B545100;
  *(v94 + 32) = 3;
  v856 = sub_26B470D98(v94);

  if (*(v91 + 16))
  {
    v854 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v854 = MEMORY[0x277D84FA0];
  }

  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_26B545140;
  *(v95 + 32) = 84017408;
  *(v95 + 36) = 8;
  v96 = sub_26B470D98(v95);

  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_26B545100;
  *(v97 + 32) = *v926;
  *(v97 + 40) = 3;
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_26B5450D0;
  *(v98 + 32) = 7938;
  *(v98 + 34) = 27;
  v99 = sub_26B470F10(v98);

  v934 = 4;
  v933 = 0;
  v100.value._countAndFlagsBits = 0x7261437065656C73;
  v100.value._object = 0xEC00000079616C50;
  Action.init(_:mac:)(v100, 0);
  v929 = v931;
  v930 = v932;
  v101 = sub_26B4D43F4();
  v102 = sub_26B4CE5C8();
  v103 = sub_26B4D4400();
  *&v785 = sub_26B4D4408();
  *(&v785 + 1) = sub_26B4D4414();
  *&v736 = v96;
  *(&v736 + 1) = v97;
  *(&v687 + 1) = v854;
  *&v687 = v856;
  v104 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000025, 0x800000026B56BC60, v92, MEMORY[0x277D84F90], v101, 0, 0, v935, v927 + 952, v102 & 1, v103 & 1, v687, v736, v785, v99, &v934, &v933, 0, 0, &v929);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_26B545100;
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_26B545100;
  *(v106 + 32) = 0xD00000000000001DLL;
  *(v106 + 40) = 0x800000026B56BC90;
  *(v105 + 32) = v106;
  *(v105 + 40) = 0;
  v935[0] = 1;
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_26B5450C0;
  *(v107 + 32) = 84017408;
  v857 = sub_26B470D98(v107);

  if (*(v104 + 16))
  {
    v108 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v108 = MEMORY[0x277D84FA0];
  }

  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_26B545120;
  *(v109 + 32) = 2051;
  v110 = sub_26B470D98(v109);

  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_26B5450D0;
  *(v111 + 32) = *v926;
  *(v111 + 40) = 1;
  *(v111 + 48) = *v926;
  *(v111 + 56) = 3;
  *(v111 + 64) = *v926;
  *(v111 + 72) = 8;
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_26B545100;
  *(v112 + 32) = 14;
  v113 = sub_26B470F10(v112);

  v934 = 4;
  v933 = 4;
  v114.value._object = 0x800000026B56BCD0;
  v114.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v114, 0);
  v929 = v931;
  v930 = v932;
  v115 = sub_26B4D43F4();
  v116 = sub_26B4CE5C8();
  v117 = sub_26B4D4400();
  *&v786 = sub_26B4D4408();
  *(&v786 + 1) = sub_26B4D4414();
  *&v737 = v110;
  *(&v737 + 1) = v111;
  *(&v688 + 1) = v108;
  *&v688 = v857;
  v118 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B56BCB0, v105, MEMORY[0x277D84F90], v115, 0, 0, v935, v927 + 1136, v116 & 1, v117 & 1, v688, v737, v786, v113, &v934, &v933, 0, 0, &v929);
  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_26B545100;
  v120 = swift_allocObject();
  *(v120 + 16) = xmmword_26B545120;
  *(v120 + 32) = 0xD000000000000047;
  *(v120 + 40) = 0x800000026B56BCF0;
  *(v120 + 48) = 0xD000000000000042;
  *(v120 + 56) = 0x800000026B56BD40;
  *(v119 + 32) = v120;
  *(v119 + 40) = 0;
  v935[0] = 1;
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_26B5450C0;
  *(v121 + 32) = 84017408;
  v855 = sub_26B470D98(v121);

  if (*(v118 + 16))
  {
    v843 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v843 = MEMORY[0x277D84FA0];
  }

  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_26B545120;
  *(v122 + 32) = 2051;
  v123 = sub_26B470D98(v122);

  v124 = swift_allocObject();
  *(v124 + 16) = xmmword_26B5450D0;
  *(v124 + 32) = *v926;
  *(v124 + 40) = 1;
  *(v124 + 48) = *v926;
  *(v124 + 56) = 3;
  *(v124 + 64) = *v926;
  *(v124 + 72) = 8;
  v125 = swift_allocObject();
  *(v125 + 16) = xmmword_26B545100;
  *(v125 + 32) = 14;
  v126 = sub_26B470F10(v125);

  v934 = 4;
  v933 = 4;
  v127.value._countAndFlagsBits = 0xD000000000000015;
  v127.value._object = 0x800000026B56BDB0;
  Action.init(_:mac:)(v127, 0);
  v929 = v931;
  v930 = v932;
  v128 = sub_26B4D43F4();
  v129 = sub_26B4CE5C8();
  v130 = sub_26B4D4400();
  *&v787 = sub_26B4D4408();
  *(&v787 + 1) = sub_26B4D4414();
  *&v738 = v123;
  *(&v738 + 1) = v124;
  *(&v689 + 1) = v843;
  *&v689 = v855;
  v131 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B56BD90, v119, MEMORY[0x277D84F90], v128, 0, 0, v935, v927 + 1320, v129 & 1, v130 & 1, v689, v738, v787, v126, &v934, &v933, 0, 0, &v929);
  v132 = swift_allocObject();
  *(v132 + 16) = xmmword_26B545100;
  v133 = swift_allocObject();
  *(v133 + 16) = xmmword_26B545100;
  *(v133 + 32) = 0xD000000000000023;
  *(v133 + 40) = 0x800000026B56BDD0;
  *(v132 + 32) = v133;
  *(v132 + 40) = 0;
  v935[0] = 1;
  v134 = swift_allocObject();
  *(v134 + 16) = xmmword_26B545140;
  *(v134 + 32) = 84017408;
  *(v134 + 36) = 8;
  v844 = sub_26B470D98(v134);

  if (*(v131 + 16))
  {
    v833 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v833 = MEMORY[0x277D84FA0];
  }

  v135 = swift_allocObject();
  *(v135 + 16) = xmmword_26B545100;
  *(v135 + 32) = 3;
  v136 = sub_26B470D98(v135);

  v137 = swift_allocObject();
  *(v137 + 16) = xmmword_26B5450C0;
  *(v137 + 32) = *v926;
  *(v137 + 40) = 1;
  *(v137 + 48) = *v926;
  *(v137 + 56) = 3;
  *(v137 + 64) = *v926;
  *(v137 + 72) = 8;
  *(v137 + 80) = 0x403A000000000000;
  *(v137 + 88) = 10;
  v138 = swift_allocObject();
  *(v138 + 16) = xmmword_26B545100;
  *(v138 + 32) = 14;
  v139 = sub_26B470F10(v138);

  v934 = 4;
  v933 = 4;
  v140.value._countAndFlagsBits = 0xD000000000000016;
  v140.value._object = 0x800000026B56BE20;
  Action.init(_:mac:)(v140, 0);
  v929 = v931;
  v930 = v932;
  v141 = sub_26B4D43F4();
  v142 = sub_26B4CE5C8();
  v143 = sub_26B4D4400();
  *&v788 = sub_26B4D4408();
  *(&v788 + 1) = sub_26B4D4414();
  *&v739 = v136;
  *(&v739 + 1) = v137;
  *(&v690 + 1) = v833;
  *&v690 = v844;
  v144 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ALL, 0x800000026B56BE00, v132, MEMORY[0x277D84F90], v141, 0, 0, v935, v927 + 1504, v142 & 1, v143 & 1, v690, v739, v788, v139, &v934, &v933, 0, 0, &v929);
  v145 = swift_allocObject();
  *(v145 + 16) = xmmword_26B545100;
  v146 = swift_allocObject();
  *(v146 + 16) = xmmword_26B545120;
  *(v146 + 32) = 0xD00000000000004DLL;
  *(v146 + 40) = 0x800000026B56BE40;
  *(v146 + 48) = 0xD000000000000048;
  *(v146 + 56) = 0x800000026B56BE90;
  *(v145 + 32) = v146;
  *(v145 + 40) = 0;
  v935[0] = 1;
  v147 = swift_allocObject();
  *(v147 + 16) = xmmword_26B545140;
  *(v147 + 32) = 84017408;
  *(v147 + 36) = 8;
  v845 = sub_26B470D98(v147);

  if (*(v144 + 16))
  {
    v834 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v834 = MEMORY[0x277D84FA0];
  }

  v148 = swift_allocObject();
  *(v148 + 16) = xmmword_26B545100;
  *(v148 + 32) = 3;
  v149 = sub_26B470D98(v148);

  v150 = swift_allocObject();
  *(v150 + 16) = xmmword_26B5450C0;
  *(v150 + 32) = *v926;
  *(v150 + 40) = 1;
  *(v150 + 48) = *v926;
  *(v150 + 56) = 3;
  *(v150 + 64) = *v926;
  *(v150 + 72) = 8;
  *(v150 + 80) = 0x403A000000000000;
  *(v150 + 88) = 10;
  v151 = swift_allocObject();
  *(v151 + 16) = xmmword_26B545100;
  *(v151 + 32) = 14;
  v152 = sub_26B470F10(v151);

  v934 = 4;
  v933 = 4;
  v153.value._object = 0x800000026B56BF00;
  v153.value._countAndFlagsBits = 0xD00000000000001BLL;
  Action.init(_:mac:)(v153, 0);
  v929 = v931;
  v930 = v932;
  v154 = sub_26B4D43F4();
  v155 = sub_26B4CE5C8();
  v156 = sub_26B4D4400();
  *&v789 = sub_26B4D4408();
  *(&v789 + 1) = sub_26B4D4414();
  *&v740 = v149;
  *(&v740 + 1) = v150;
  *(&v691 + 1) = v834;
  *&v691 = v845;
  v157 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001FLL, 0x800000026B56BEE0, v145, MEMORY[0x277D84F90], v154, 0, 0, v935, v927 + 1688, v155 & 1, v156 & 1, v691, v740, v789, v152, &v934, &v933, 0, 0, &v929);
  v158 = swift_allocObject();
  *(v158 + 16) = xmmword_26B545100;
  v159 = swift_allocObject();
  *(v159 + 16) = xmmword_26B545100;
  *(v159 + 32) = 0xD00000000000003BLL;
  *(v159 + 40) = 0x800000026B56BF20;
  *(v158 + 32) = v159;
  *(v158 + 40) = 0;
  v935[0] = 0;
  v160 = swift_allocObject();
  *(v160 + 16) = xmmword_26B545140;
  *(v160 + 32) = 84017408;
  *(v160 + 36) = 8;
  v846 = sub_26B470D98(v160);

  if (*(v157 + 16))
  {
    v835 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v835 = MEMORY[0x277D84FA0];
  }

  v161 = swift_allocObject();
  *(v161 + 16) = xmmword_26B545100;
  *(v161 + 32) = 3;
  v162 = sub_26B470D98(v161);

  v163 = swift_allocObject();
  *(v163 + 16) = xmmword_26B5450C0;
  *(v163 + 32) = *v926;
  *(v163 + 40) = 1;
  *(v163 + 48) = *v926;
  *(v163 + 56) = 3;
  *(v163 + 64) = *v926;
  *(v163 + 72) = 8;
  *(v163 + 80) = 0x403A000000000000;
  *(v163 + 88) = 10;
  v164 = swift_allocObject();
  *(v164 + 16) = xmmword_26B545100;
  *(v164 + 32) = 14;
  v165 = sub_26B470F10(v164);

  v934 = 4;
  v933 = 4;
  v166.value._object = 0x800000026B56BF80;
  v166.value._countAndFlagsBits = 0xD000000000000012;
  Action.init(_:mac:)(v166, 0);
  v929 = v931;
  v930 = v932;
  v167 = sub_26B4D43F4();
  v168 = sub_26B4CE5C8();
  v169 = sub_26B4D4400();
  *&v790 = sub_26B4D4408();
  *(&v790 + 1) = sub_26B4D4414();
  *&v741 = v162;
  *(&v741 + 1) = v163;
  *(&v692 + 1) = v835;
  *&v692 = v846;
  v170 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000016, 0x800000026B56BF60, v158, MEMORY[0x277D84F90], v167, 0, 0, v935, v927 + 1872, v168 & 1, v169 & 1, v692, v741, v790, v165, &v934, &v933, 0, 0, &v929);
  v171 = swift_allocObject();
  *(v171 + 16) = xmmword_26B545100;
  v172 = swift_allocObject();
  *(v172 + 16) = xmmword_26B545120;
  *(v172 + 32) = 0xD000000000000065;
  *(v172 + 40) = 0x800000026B56BFA0;
  *(v172 + 48) = 0xD000000000000060;
  *(v172 + 56) = 0x800000026B56C010;
  *(v171 + 32) = v172;
  *(v171 + 40) = 0;
  v935[0] = 1;
  v173 = swift_allocObject();
  *(v173 + 16) = xmmword_26B545140;
  *(v173 + 32) = 84017408;
  *(v173 + 36) = 8;
  v847 = sub_26B470D98(v173);

  if (*(v170 + 16))
  {
    v836 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v836 = MEMORY[0x277D84FA0];
  }

  v174 = swift_allocObject();
  *(v174 + 16) = xmmword_26B545100;
  *(v174 + 32) = 3;
  v175 = sub_26B470D98(v174);

  v176 = swift_allocObject();
  *(v176 + 16) = xmmword_26B5450C0;
  *(v176 + 32) = *v926;
  *(v176 + 40) = 1;
  *(v176 + 48) = *v926;
  *(v176 + 56) = 3;
  *(v176 + 64) = *v926;
  *(v176 + 72) = 8;
  *(v176 + 80) = 0x403A000000000000;
  *(v176 + 88) = 10;
  v177 = swift_allocObject();
  *(v177 + 16) = xmmword_26B545100;
  *(v177 + 32) = 14;
  v178 = sub_26B470F10(v177);

  v934 = 4;
  v933 = 4;
  v179.value._object = 0x800000026B56C0A0;
  v179.value._countAndFlagsBits = 0xD000000000000017;
  Action.init(_:mac:)(v179, 0);
  v929 = v931;
  v930 = v932;
  v180 = sub_26B4D43F4();
  v181 = sub_26B4CE5C8();
  v182 = sub_26B4D4400();
  *&v791 = sub_26B4D4408();
  *(&v791 + 1) = sub_26B4D4414();
  *&v742 = v175;
  *(&v742 + 1) = v176;
  *(&v693 + 1) = v836;
  *&v693 = v847;
  v183 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B56C080, v171, MEMORY[0x277D84F90], v180, 0, 0, v935, v927 + 2056, v181 & 1, v182 & 1, v693, v742, v791, v178, &v934, &v933, 0, 0, &v929);
  v184 = swift_allocObject();
  *(v184 + 16) = xmmword_26B545100;
  v185 = swift_allocObject();
  *(v185 + 16) = xmmword_26B545100;
  *(v185 + 32) = 0xD00000000000001DLL;
  *(v185 + 40) = 0x800000026B56C0C0;
  *(v184 + 32) = v185;
  *(v184 + 40) = 0;
  v935[0] = 0;
  v186 = swift_allocObject();
  *(v186 + 16) = xmmword_26B545140;
  *(v186 + 32) = 84017408;
  *(v186 + 36) = 8;
  v848 = sub_26B470D98(v186);

  if (*(v183 + 16))
  {
    v837 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v837 = MEMORY[0x277D84FA0];
  }

  v187 = swift_allocObject();
  *(v187 + 16) = xmmword_26B545100;
  *(v187 + 32) = 3;
  v188 = sub_26B470D98(v187);

  v189 = swift_allocObject();
  *(v189 + 16) = xmmword_26B5450C0;
  *(v189 + 32) = *v926;
  *(v189 + 40) = 1;
  *(v189 + 48) = *v926;
  *(v189 + 56) = 3;
  *(v189 + 64) = *v926;
  *(v189 + 72) = 8;
  *(v189 + 80) = 0x403A000000000000;
  *(v189 + 88) = 10;
  v190 = swift_allocObject();
  *(v190 + 16) = xmmword_26B545100;
  *(v190 + 32) = 14;
  v191 = sub_26B470F10(v190);

  v934 = 4;
  v933 = 4;
  v192.value._object = 0x800000026B56C100;
  v192.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v192, 0);
  v929 = v931;
  v930 = v932;
  v193 = sub_26B4D43F4();
  v194 = sub_26B4CE5C8();
  v195 = sub_26B4D4400();
  *&v792 = sub_26B4D4408();
  *(&v792 + 1) = sub_26B4D4414();
  *&v743 = v188;
  *(&v743 + 1) = v189;
  *(&v694 + 1) = v837;
  *&v694 = v848;
  v196 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B56C0E0, v184, MEMORY[0x277D84F90], v193, 0, 0, v935, v927 + 2240, v194 & 1, v195 & 1, v694, v743, v792, v191, &v934, &v933, 0, 0, &v929);
  v197 = swift_allocObject();
  *(v197 + 16) = xmmword_26B545100;
  v198 = swift_allocObject();
  *(v198 + 16) = xmmword_26B545120;
  *(v198 + 32) = 0xD000000000000042;
  *(v198 + 40) = 0x800000026B56C120;
  *(v198 + 48) = 0xD000000000000047;
  *(v198 + 56) = 0x800000026B56C170;
  *(v197 + 32) = v198;
  *(v197 + 40) = 0;
  v935[0] = 1;
  v199 = swift_allocObject();
  *(v199 + 16) = xmmword_26B545140;
  *(v199 + 32) = 84017408;
  *(v199 + 36) = 8;
  v894 = sub_26B470D98(v199);

  if (*(v196 + 16))
  {
    v849 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v849 = MEMORY[0x277D84FA0];
  }

  v200 = swift_allocObject();
  *(v200 + 16) = xmmword_26B545100;
  *(v200 + 32) = 3;
  v201 = sub_26B470D98(v200);

  v202 = swift_allocObject();
  *(v202 + 16) = xmmword_26B5450C0;
  *(v202 + 32) = *v926;
  *(v202 + 40) = 1;
  *(v202 + 48) = *v926;
  *(v202 + 56) = 3;
  *(v202 + 64) = *v926;
  *(v202 + 72) = 8;
  *(v202 + 80) = 0x403A000000000000;
  *(v202 + 88) = 10;
  v203 = swift_allocObject();
  *(v203 + 16) = xmmword_26B545100;
  *(v203 + 32) = 14;
  v204 = sub_26B470F10(v203);

  v934 = 4;
  v933 = 4;
  v205.value._object = 0x800000026B56C1E0;
  v205.value._countAndFlagsBits = 0xD000000000000015;
  Action.init(_:mac:)(v205, 0);
  v929 = v931;
  v930 = v932;
  v206 = sub_26B4D43F4();
  v207 = sub_26B4CE5C8();
  v208 = sub_26B4D4400();
  *&v793 = sub_26B4D4408();
  *(&v793 + 1) = sub_26B4D4414();
  *&v744 = v201;
  *(&v744 + 1) = v202;
  *(&v695 + 1) = v849;
  *&v695 = v894;
  v209 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B56C1C0, v197, MEMORY[0x277D84F90], v206, 0, 0, v935, v927 + 2424, v207 & 1, v208 & 1, v695, v744, v793, v204, &v934, &v933, 0, 0, &v929);
  v210 = swift_allocObject();
  *(v210 + 16) = xmmword_26B545100;
  v211 = swift_allocObject();
  *(v211 + 16) = xmmword_26B545100;
  *(v211 + 32) = 0xD000000000000020;
  *(v211 + 40) = 0x800000026B56C200;
  *(v210 + 32) = v211;
  *(v210 + 40) = 0;
  v935[0] = 0;
  v212 = swift_allocObject();
  *(v212 + 16) = xmmword_26B545140;
  *(v212 + 32) = 84017408;
  *(v212 + 36) = 8;
  v895 = sub_26B470D98(v212);

  if (*(v209 + 16))
  {
    v850 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v850 = MEMORY[0x277D84FA0];
  }

  v213 = swift_allocObject();
  *(v213 + 16) = xmmword_26B545100;
  *(v213 + 32) = 3;
  v214 = sub_26B470D98(v213);

  v215 = swift_allocObject();
  *(v215 + 16) = xmmword_26B5450C0;
  *(v215 + 32) = *v926;
  *(v215 + 40) = 1;
  *(v215 + 48) = *v926;
  *(v215 + 56) = 3;
  *(v215 + 64) = *v926;
  *(v215 + 72) = 8;
  *(v215 + 80) = 0x403A000000000000;
  *(v215 + 88) = 10;
  v216 = swift_allocObject();
  *(v216 + 16) = xmmword_26B545100;
  *(v216 + 32) = 14;
  v217 = sub_26B470F10(v216);

  v934 = 4;
  v933 = 4;
  v218.value._object = 0x800000026B56C250;
  v218.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v218, 0);
  v929 = v931;
  v930 = v932;
  v219 = sub_26B4D43F4();
  v220 = sub_26B4CE5C8();
  v221 = sub_26B4D4400();
  *&v794 = sub_26B4D4408();
  *(&v794 + 1) = sub_26B4D4414();
  *&v745 = v214;
  *(&v745 + 1) = v215;
  *(&v696 + 1) = v850;
  *&v696 = v895;
  v222 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B56C230, v210, MEMORY[0x277D84F90], v219, 0, 0, v935, v927 + 2608, v220 & 1, v221 & 1, v696, v745, v794, v217, &v934, &v933, 0, 0, &v929);
  v223 = swift_allocObject();
  *(v223 + 16) = xmmword_26B545100;
  v224 = swift_allocObject();
  *(v224 + 16) = xmmword_26B545120;
  *(v224 + 32) = 0xD00000000000004ALL;
  *(v224 + 40) = 0x800000026B56C270;
  *(v224 + 48) = 0xD000000000000045;
  *(v224 + 56) = 0x800000026B56C2C0;
  *(v223 + 32) = v224;
  *(v223 + 40) = 0;
  v935[0] = 1;
  v225 = swift_allocObject();
  *(v225 + 16) = xmmword_26B545140;
  *(v225 + 32) = 84017408;
  *(v225 + 36) = 8;
  v851 = sub_26B470D98(v225);

  if (*(v222 + 16))
  {
    v838 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v838 = MEMORY[0x277D84FA0];
  }

  v226 = swift_allocObject();
  *(v226 + 16) = xmmword_26B545100;
  *(v226 + 32) = 3;
  v227 = sub_26B470D98(v226);

  v228 = swift_allocObject();
  *(v228 + 16) = xmmword_26B5450C0;
  *(v228 + 32) = *v926;
  *(v228 + 40) = 1;
  *(v228 + 48) = *v926;
  *(v228 + 56) = 3;
  *(v228 + 64) = *v926;
  *(v228 + 72) = 8;
  *(v228 + 80) = 0x403A000000000000;
  *(v228 + 88) = 10;
  v229 = swift_allocObject();
  *(v229 + 16) = xmmword_26B545100;
  *(v229 + 32) = 14;
  v230 = sub_26B470F10(v229);

  v934 = 4;
  v933 = 4;
  v231.value._countAndFlagsBits = 0xD000000000000018;
  v231.value._object = 0x800000026B56C330;
  Action.init(_:mac:)(v231, 0);
  v929 = v931;
  v930 = v932;
  v232 = sub_26B4D43F4();
  v233 = sub_26B4CE5C8();
  v234 = sub_26B4D4400();
  *&v795 = sub_26B4D4408();
  *(&v795 + 1) = sub_26B4D4414();
  *&v746 = v227;
  *(&v746 + 1) = v228;
  *(&v697 + 1) = v838;
  *&v697 = v851;
  v235 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001CLL, 0x800000026B56C310, v223, MEMORY[0x277D84F90], v232, 0, 0, v935, v927 + 2792, v233 & 1, v234 & 1, v697, v746, v795, v230, &v934, &v933, 0, 0, &v929);
  v236 = swift_allocObject();
  *(v236 + 16) = xmmword_26B545100;
  v237 = swift_allocObject();
  *(v237 + 16) = xmmword_26B545100;
  *(v237 + 32) = 0xD00000000000001CLL;
  *(v237 + 40) = 0x800000026B56C350;
  *(v236 + 32) = v237;
  *(v236 + 40) = 0;
  v935[0] = 0;
  v238 = swift_allocObject();
  *(v238 + 16) = xmmword_26B545140;
  *(v238 + 32) = 84017408;
  *(v238 + 36) = 8;
  v852 = sub_26B470D98(v238);

  if (*(v235 + 16))
  {
    v239 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v239 = MEMORY[0x277D84FA0];
  }

  v240 = swift_allocObject();
  *(v240 + 16) = xmmword_26B545100;
  *(v240 + 32) = 3;
  v241 = sub_26B470D98(v240);

  v242 = swift_allocObject();
  *(v242 + 16) = xmmword_26B5450C0;
  *(v242 + 32) = *v926;
  *(v242 + 40) = 1;
  *(v242 + 48) = *v926;
  *(v242 + 56) = 3;
  *(v242 + 64) = *v926;
  *(v242 + 72) = 8;
  *(v242 + 80) = 0x403A000000000000;
  *(v242 + 88) = 10;
  v243 = swift_allocObject();
  *(v243 + 16) = xmmword_26B545100;
  *(v243 + 32) = 14;
  v244 = sub_26B470F10(v243);

  v934 = 4;
  v933 = 4;
  v245.value._countAndFlagsBits = 0x5374786554747563;
  v245.value._object = 0xEF3A746E656D6765;
  Action.init(_:mac:)(v245, 0);
  v929 = v931;
  v930 = v932;
  v246 = sub_26B4D43F4();
  v247 = sub_26B4CE5C8();
  v248 = sub_26B4D4400();
  *&v796 = sub_26B4D4408();
  *(&v796 + 1) = sub_26B4D4414();
  *&v747 = v241;
  *(&v747 + 1) = v242;
  *(&v698 + 1) = v239;
  *&v698 = v852;
  v249 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000013, 0x800000026B56C370, v236, MEMORY[0x277D84F90], v246, 0, 0, v935, v927 + 2976, v247 & 1, v248 & 1, v698, v747, v796, v244, &v934, &v933, 0, 0, &v929);
  v250 = swift_allocObject();
  *(v250 + 16) = xmmword_26B545100;
  v251 = swift_allocObject();
  *(v251 + 16) = xmmword_26B545120;
  *(v251 + 32) = 0xD000000000000041;
  *(v251 + 40) = 0x800000026B56C390;
  *(v251 + 48) = 0xD000000000000046;
  *(v251 + 56) = 0x800000026B56C3E0;
  *(v250 + 32) = v251;
  *(v250 + 40) = 0;
  v935[0] = 1;
  v252 = swift_allocObject();
  *(v252 + 16) = xmmword_26B545140;
  *(v252 + 32) = 84017408;
  *(v252 + 36) = 8;
  v861 = sub_26B470D98(v252);

  if (*(v249 + 16))
  {
    v853 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v853 = MEMORY[0x277D84FA0];
  }

  v253 = swift_allocObject();
  *(v253 + 16) = xmmword_26B545100;
  *(v253 + 32) = 3;
  v254 = sub_26B470D98(v253);

  v255 = swift_allocObject();
  *(v255 + 16) = xmmword_26B5450C0;
  *(v255 + 32) = *v926;
  *(v255 + 40) = 1;
  *(v255 + 48) = *v926;
  *(v255 + 56) = 3;
  *(v255 + 64) = *v926;
  *(v255 + 72) = 8;
  *(v255 + 80) = 0x403A000000000000;
  *(v255 + 88) = 10;
  v256 = swift_allocObject();
  *(v256 + 16) = xmmword_26B545100;
  *(v256 + 32) = 14;
  v257 = sub_26B470F10(v256);

  v934 = 4;
  v933 = 4;
  v258.value._object = 0x800000026B56C450;
  v258.value._countAndFlagsBits = 0xD000000000000014;
  Action.init(_:mac:)(v258, 0);
  v929 = v931;
  v930 = v932;
  v259 = sub_26B4D43F4();
  v260 = sub_26B4CE5C8();
  v261 = sub_26B4D4400();
  *&v797 = sub_26B4D4408();
  *(&v797 + 1) = sub_26B4D4414();
  *&v748 = v254;
  *(&v748 + 1) = v255;
  *(&v699 + 1) = v853;
  *&v699 = v861;
  v262 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B56C430, v250, MEMORY[0x277D84F90], v259, 0, 0, v935, v927 + 3160, v260 & 1, v261 & 1, v699, v748, v797, v257, &v934, &v933, 0, 0, &v929);
  v263 = swift_allocObject();
  *(v263 + 16) = xmmword_26B545100;
  v264 = swift_allocObject();
  *(v264 + 16) = xmmword_26B545100;
  *(v264 + 32) = 0xD00000000000001FLL;
  *(v264 + 40) = 0x800000026B56C470;
  *(v263 + 32) = v264;
  *(v263 + 40) = 0;
  v935[0] = 0;
  v265 = swift_allocObject();
  *(v265 + 16) = xmmword_26B545140;
  *(v265 + 32) = 84017408;
  *(v265 + 36) = 8;
  v896 = sub_26B470D98(v265);

  if (*(v262 + 16))
  {
    v862 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v862 = MEMORY[0x277D84FA0];
  }

  v266 = swift_allocObject();
  *(v266 + 16) = xmmword_26B545100;
  *(v266 + 32) = 3;
  v267 = sub_26B470D98(v266);

  v268 = swift_allocObject();
  *(v268 + 16) = xmmword_26B5450C0;
  *(v268 + 32) = *v926;
  *(v268 + 40) = 1;
  *(v268 + 48) = *v926;
  *(v268 + 56) = 3;
  *(v268 + 64) = *v926;
  *(v268 + 72) = 8;
  *(v268 + 80) = 0x403A000000000000;
  *(v268 + 88) = 10;
  v269 = swift_allocObject();
  *(v269 + 16) = xmmword_26B545100;
  *(v269 + 32) = 14;
  v270 = sub_26B470F10(v269);

  v934 = 4;
  v933 = 4;
  v271.value._object = 0x800000026B56C4B0;
  v271.value._countAndFlagsBits = 0xD000000000000012;
  Action.init(_:mac:)(v271, 0);
  v929 = v931;
  v930 = v932;
  v272 = sub_26B4D43F4();
  v273 = sub_26B4CE5C8();
  v274 = sub_26B4D4400();
  *&v798 = sub_26B4D4408();
  *(&v798 + 1) = sub_26B4D4414();
  *&v749 = v267;
  *(&v749 + 1) = v268;
  *(&v700 + 1) = v862;
  *&v700 = v896;
  v275 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000016, 0x800000026B56C490, v263, MEMORY[0x277D84F90], v272, 0, 0, v935, v927 + 3344, v273 & 1, v274 & 1, v700, v749, v798, v270, &v934, &v933, 0, 0, &v929);
  v276 = swift_allocObject();
  *(v276 + 16) = xmmword_26B545100;
  v277 = swift_allocObject();
  *(v277 + 16) = xmmword_26B545100;
  *(v277 + 32) = 0xD000000000000042;
  *(v277 + 40) = 0x800000026B56C4D0;
  *(v276 + 32) = v277;
  *(v276 + 40) = 0;
  v935[0] = 1;
  v278 = swift_allocObject();
  *(v278 + 16) = xmmword_26B545140;
  *(v278 + 32) = 84017408;
  *(v278 + 36) = 8;
  v897 = sub_26B470D98(v278);

  if (*(v275 + 16))
  {
    v863 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v863 = MEMORY[0x277D84FA0];
  }

  v279 = swift_allocObject();
  *(v279 + 16) = xmmword_26B545100;
  *(v279 + 32) = 3;
  v280 = sub_26B470D98(v279);

  v281 = swift_allocObject();
  *(v281 + 16) = xmmword_26B5450C0;
  *(v281 + 32) = *v926;
  *(v281 + 40) = 1;
  *(v281 + 48) = *v926;
  *(v281 + 56) = 3;
  *(v281 + 64) = *v926;
  *(v281 + 72) = 8;
  *(v281 + 80) = 0x403A000000000000;
  *(v281 + 88) = 10;
  v282 = swift_allocObject();
  *(v282 + 16) = xmmword_26B545100;
  *(v282 + 32) = 14;
  v283 = sub_26B470F10(v282);

  v934 = 4;
  v933 = 4;
  v284.value._object = 0x800000026B56C540;
  v284.value._countAndFlagsBits = 0xD000000000000017;
  Action.init(_:mac:)(v284, 0);
  v929 = v931;
  v930 = v932;
  v285 = sub_26B4D43F4();
  v286 = sub_26B4CE5C8();
  v287 = sub_26B4D4400();
  *&v799 = sub_26B4D4408();
  *(&v799 + 1) = sub_26B4D4414();
  *&v750 = v280;
  *(&v750 + 1) = v281;
  *(&v701 + 1) = v863;
  *&v701 = v897;
  v288 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B56C520, v276, MEMORY[0x277D84F90], v285, 0, 0, v935, v927 + 3528, v286 & 1, v287 & 1, v701, v750, v799, v283, &v934, &v933, 0, 0, &v929);
  v289 = swift_allocObject();
  *(v289 + 16) = xmmword_26B545100;
  v290 = swift_allocObject();
  *(v290 + 16) = xmmword_26B545100;
  *(v290 + 32) = 0xD000000000000032;
  *(v290 + 40) = 0x800000026B56C560;
  *(v289 + 32) = v290;
  *(v289 + 40) = 0;
  v935[0] = 1;
  v291 = swift_allocObject();
  *(v291 + 16) = xmmword_26B545140;
  *(v291 + 32) = 84017408;
  *(v291 + 36) = 8;
  v898 = sub_26B470D98(v291);

  if (*(v288 + 16))
  {
    v864 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v864 = MEMORY[0x277D84FA0];
  }

  v292 = swift_allocObject();
  *(v292 + 16) = xmmword_26B545100;
  *(v292 + 32) = 3;
  v293 = sub_26B470D98(v292);

  v294 = swift_allocObject();
  *(v294 + 16) = xmmword_26B5450C0;
  *(v294 + 32) = *v926;
  *(v294 + 40) = 1;
  *(v294 + 48) = *v926;
  *(v294 + 56) = 3;
  *(v294 + 64) = *v926;
  *(v294 + 72) = 8;
  *(v294 + 80) = 0x403A000000000000;
  *(v294 + 88) = 10;
  v295 = swift_allocObject();
  *(v295 + 16) = xmmword_26B545100;
  *(v295 + 32) = 14;
  v296 = sub_26B470F10(v295);

  v934 = 4;
  v933 = 4;
  v297.value._countAndFlagsBits = 0xD00000000000001DLL;
  v297.value._object = 0x800000026B56C5D0;
  Action.init(_:mac:)(v297, 0);
  v929 = v931;
  v930 = v932;
  v298 = sub_26B4D43F4();
  v299 = sub_26B4CE5C8();
  v300 = sub_26B4D4400();
  *&v800 = sub_26B4D4408();
  *(&v800 + 1) = sub_26B4D4414();
  *&v751 = v293;
  *(&v751 + 1) = v294;
  *(&v702 + 1) = v864;
  *&v702 = v898;
  v301 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000021, 0x800000026B56C5A0, v289, MEMORY[0x277D84F90], v298, 0, 0, v935, v927 + 3712, v299 & 1, v300 & 1, v702, v751, v800, v296, &v934, &v933, 0, 0, &v929);
  v302 = swift_allocObject();
  *(v302 + 16) = xmmword_26B545100;
  v303 = swift_allocObject();
  *(v303 + 16) = xmmword_26B545100;
  *(v303 + 32) = 0xD00000000000003BLL;
  *(v303 + 40) = 0x800000026B56C5F0;
  *(v302 + 32) = v303;
  *(v302 + 40) = 0;
  v935[0] = 0;
  v304 = swift_allocObject();
  *(v304 + 16) = xmmword_26B545140;
  *(v304 + 32) = 84017408;
  *(v304 + 36) = 8;
  v899 = sub_26B470D98(v304);

  if (*(v301 + 16))
  {
    v865 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v865 = MEMORY[0x277D84FA0];
  }

  v305 = swift_allocObject();
  *(v305 + 16) = xmmword_26B545100;
  *(v305 + 32) = 3;
  v306 = sub_26B470D98(v305);

  v307 = swift_allocObject();
  *(v307 + 16) = xmmword_26B5450C0;
  *(v307 + 32) = *v926;
  *(v307 + 40) = 1;
  *(v307 + 48) = *v926;
  *(v307 + 56) = 3;
  *(v307 + 64) = *v926;
  *(v307 + 72) = 8;
  *(v307 + 80) = 0x403A000000000000;
  *(v307 + 88) = 10;
  v308 = swift_allocObject();
  *(v308 + 16) = xmmword_26B545100;
  *(v308 + 32) = 14;
  v309 = sub_26B470F10(v308);

  v934 = 4;
  v933 = 4;
  v310.value._countAndFlagsBits = 0xD00000000000001DLL;
  v310.value._object = 0x800000026B56C660;
  Action.init(_:mac:)(v310, 0);
  v929 = v931;
  v930 = v932;
  v311 = sub_26B4D43F4();
  v312 = sub_26B4CE5C8();
  v313 = sub_26B4D4400();
  *&v801 = sub_26B4D4408();
  *(&v801 + 1) = sub_26B4D4414();
  *&v752 = v306;
  *(&v752 + 1) = v307;
  *(&v703 + 1) = v865;
  *&v703 = v899;
  v314 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000021, 0x800000026B56C630, v302, MEMORY[0x277D84F90], v311, 0, 0, v935, v927 + 3896, v312 & 1, v313 & 1, v703, v752, v801, v309, &v934, &v933, 0, 0, &v929);
  v315 = swift_allocObject();
  *(v315 + 16) = xmmword_26B545100;
  v316 = swift_allocObject();
  *(v316 + 16) = xmmword_26B545100;
  *(v316 + 32) = 0xD00000000000003CLL;
  *(v316 + 40) = 0x800000026B56C680;
  *(v315 + 32) = v316;
  *(v315 + 40) = 0;
  v935[0] = 0;
  v317 = swift_allocObject();
  *(v317 + 16) = xmmword_26B545140;
  *(v317 + 32) = 84017408;
  *(v317 + 36) = 8;
  v900 = sub_26B470D98(v317);

  if (*(v314 + 16))
  {
    v866 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v866 = MEMORY[0x277D84FA0];
  }

  v318 = swift_allocObject();
  *(v318 + 16) = xmmword_26B545100;
  *(v318 + 32) = 3;
  v319 = sub_26B470D98(v318);

  v320 = swift_allocObject();
  *(v320 + 16) = xmmword_26B5450C0;
  *(v320 + 32) = *v926;
  *(v320 + 40) = 1;
  *(v320 + 48) = *v926;
  *(v320 + 56) = 3;
  *(v320 + 64) = *v926;
  *(v320 + 72) = 8;
  *(v320 + 80) = 0x403A000000000000;
  *(v320 + 88) = 10;
  v321 = swift_allocObject();
  *(v321 + 16) = xmmword_26B545100;
  *(v321 + 32) = 14;
  v322 = sub_26B470F10(v321);

  v934 = 4;
  v933 = 4;
  v323.value._countAndFlagsBits = 0xD00000000000001ELL;
  v323.value._object = 0x800000026B56C6F0;
  Action.init(_:mac:)(v323, 0);
  v929 = v931;
  v930 = v932;
  v324 = sub_26B4D43F4();
  v325 = sub_26B4CE5C8();
  v326 = sub_26B4D4400();
  *&v802 = sub_26B4D4408();
  *(&v802 + 1) = sub_26B4D4414();
  *&v753 = v319;
  *(&v753 + 1) = v320;
  *(&v704 + 1) = v866;
  *&v704 = v900;
  v327 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000022, 0x800000026B56C6C0, v315, MEMORY[0x277D84F90], v324, 0, 0, v935, v927 + 4080, v325 & 1, v326 & 1, v704, v753, v802, v322, &v934, &v933, 0, 0, &v929);
  v328 = swift_allocObject();
  *(v328 + 16) = xmmword_26B545100;
  v329 = swift_allocObject();
  *(v329 + 16) = xmmword_26B545100;
  *(v329 + 32) = 0xD000000000000022;
  *(v329 + 40) = 0x800000026B56C710;
  *(v328 + 32) = v329;
  *(v328 + 40) = 0;
  v935[0] = 0;
  v330 = swift_allocObject();
  *(v330 + 16) = xmmword_26B5450C0;
  *(v330 + 32) = 84017408;
  v901 = sub_26B470D98(v330);

  if (*(v327 + 16))
  {
    v867 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v867 = MEMORY[0x277D84FA0];
  }

  v331 = swift_allocObject();
  *(v331 + 16) = xmmword_26B545120;
  *(v331 + 32) = 2051;
  v332 = sub_26B470D98(v331);

  v333 = swift_allocObject();
  *(v333 + 16) = xmmword_26B5450D0;
  *(v333 + 32) = *v926;
  *(v333 + 40) = 1;
  *(v333 + 48) = *v926;
  *(v333 + 56) = 3;
  *(v333 + 64) = *v926;
  *(v333 + 72) = 8;
  v334 = swift_allocObject();
  *(v334 + 16) = xmmword_26B545100;
  *(v334 + 32) = 14;
  v335 = sub_26B470F10(v334);

  v934 = 4;
  v933 = 4;
  v336.value._object = 0x800000026B56C760;
  v336.value._countAndFlagsBits = 0xD000000000000015;
  Action.init(_:mac:)(v336, 0);
  v929 = v931;
  v930 = v932;
  v337 = sub_26B4D43F4();
  v338 = sub_26B4CE5C8();
  v339 = sub_26B4D4400();
  *&v803 = sub_26B4D4408();
  *(&v803 + 1) = sub_26B4D4414();
  *&v754 = v332;
  *(&v754 + 1) = v333;
  *(&v705 + 1) = v867;
  *&v705 = v901;
  v340 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B56C740, v328, MEMORY[0x277D84F90], v337, 0, 0, v935, v927 + 4264, v338 & 1, v339 & 1, v705, v754, v803, v335, &v934, &v933, 0, 0, &v929);
  v341 = swift_allocObject();
  *(v341 + 16) = xmmword_26B545100;
  v342 = swift_allocObject();
  *(v342 + 16) = xmmword_26B545120;
  *(v342 + 32) = 0xD00000000000004CLL;
  *(v342 + 40) = 0x800000026B56C780;
  *(v342 + 48) = 0xD000000000000047;
  *(v342 + 56) = 0x800000026B56C7D0;
  *(v341 + 32) = v342;
  *(v341 + 40) = 0;
  v935[0] = 1;
  v343 = swift_allocObject();
  *(v343 + 16) = xmmword_26B5450C0;
  *(v343 + 32) = 84017408;
  v902 = sub_26B470D98(v343);

  if (*(v340 + 16))
  {
    v868 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v868 = MEMORY[0x277D84FA0];
  }

  v344 = swift_allocObject();
  *(v344 + 16) = xmmword_26B545120;
  *(v344 + 32) = 2051;
  v345 = sub_26B470D98(v344);

  v346 = swift_allocObject();
  *(v346 + 16) = xmmword_26B5450D0;
  *(v346 + 32) = *v926;
  *(v346 + 40) = 1;
  *(v346 + 48) = *v926;
  *(v346 + 56) = 3;
  *(v346 + 64) = *v926;
  *(v346 + 72) = 8;
  v347 = swift_allocObject();
  *(v347 + 16) = xmmword_26B545100;
  *(v347 + 32) = 14;
  v348 = sub_26B470F10(v347);

  v934 = 4;
  v933 = 4;
  v349.value._object = 0x800000026B56C840;
  v349.value._countAndFlagsBits = 0xD00000000000001ALL;
  Action.init(_:mac:)(v349, 0);
  v929 = v931;
  v930 = v932;
  v350 = sub_26B4D43F4();
  v351 = sub_26B4CE5C8();
  v352 = sub_26B4D4400();
  *&v804 = sub_26B4D4408();
  *(&v804 + 1) = sub_26B4D4414();
  *&v755 = v345;
  *(&v755 + 1) = v346;
  *(&v706 + 1) = v868;
  *&v706 = v902;
  v353 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ELL, 0x800000026B56C820, v341, MEMORY[0x277D84F90], v350, 0, 0, v935, v927 + 4448, v351 & 1, v352 & 1, v706, v755, v804, v348, &v934, &v933, 0, 0, &v929);
  v354 = swift_allocObject();
  *(v354 + 16) = xmmword_26B545100;
  v355 = swift_allocObject();
  *(v355 + 16) = xmmword_26B545100;
  *(v355 + 32) = 0xD000000000000022;
  *(v355 + 40) = 0x800000026B56C860;
  *(v354 + 32) = v355;
  *(v354 + 40) = 0;
  v935[0] = 0;
  v356 = swift_allocObject();
  *(v356 + 16) = xmmword_26B545140;
  *(v356 + 32) = 84017408;
  *(v356 + 36) = 8;
  v903 = sub_26B470D98(v356);

  if (*(v353 + 16))
  {
    v869 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v869 = MEMORY[0x277D84FA0];
  }

  v357 = swift_allocObject();
  *(v357 + 16) = xmmword_26B545100;
  *(v357 + 32) = 3;
  v358 = sub_26B470D98(v357);

  v359 = swift_allocObject();
  *(v359 + 16) = xmmword_26B5450C0;
  *(v359 + 32) = *v926;
  *(v359 + 40) = 1;
  *(v359 + 48) = *v926;
  *(v359 + 56) = 3;
  *(v359 + 64) = *v926;
  *(v359 + 72) = 8;
  *(v359 + 80) = 0x403A000000000000;
  *(v359 + 88) = 10;
  v360 = swift_allocObject();
  *(v360 + 16) = xmmword_26B545100;
  *(v360 + 32) = 14;
  v361 = sub_26B470F10(v360);

  v934 = 4;
  v933 = 4;
  v362.value._object = 0x800000026B56C8B0;
  v362.value._countAndFlagsBits = 0xD000000000000015;
  Action.init(_:mac:)(v362, 0);
  v929 = v931;
  v930 = v932;
  v363 = sub_26B4D43F4();
  v364 = sub_26B4CE5C8();
  v365 = sub_26B4D4400();
  *&v805 = sub_26B4D4408();
  *(&v805 + 1) = sub_26B4D4414();
  *&v756 = v358;
  *(&v756 + 1) = v359;
  *(&v707 + 1) = v869;
  *&v707 = v903;
  v366 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B56C890, v354, MEMORY[0x277D84F90], v363, 0, 0, v935, v927 + 4632, v364 & 1, v365 & 1, v707, v756, v805, v361, &v934, &v933, 0, 0, &v929);
  v367 = swift_allocObject();
  *(v367 + 16) = xmmword_26B545100;
  v368 = swift_allocObject();
  *(v368 + 16) = xmmword_26B545120;
  *(v368 + 32) = 0xD00000000000004CLL;
  *(v368 + 40) = 0x800000026B56C8D0;
  *(v368 + 48) = 0xD000000000000047;
  *(v368 + 56) = 0x800000026B56C920;
  *(v367 + 32) = v368;
  *(v367 + 40) = 0;
  v935[0] = 1;
  v369 = swift_allocObject();
  *(v369 + 16) = xmmword_26B545140;
  *(v369 + 32) = 84017408;
  *(v369 + 36) = 8;
  v904 = sub_26B470D98(v369);

  if (*(v366 + 16))
  {
    v870 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v870 = MEMORY[0x277D84FA0];
  }

  v370 = swift_allocObject();
  *(v370 + 16) = xmmword_26B545100;
  *(v370 + 32) = 3;
  v371 = sub_26B470D98(v370);

  v372 = swift_allocObject();
  *(v372 + 16) = xmmword_26B5450C0;
  *(v372 + 32) = *v926;
  *(v372 + 40) = 1;
  *(v372 + 48) = *v926;
  *(v372 + 56) = 3;
  *(v372 + 64) = *v926;
  *(v372 + 72) = 8;
  *(v372 + 80) = 0x403A000000000000;
  *(v372 + 88) = 10;
  v373 = swift_allocObject();
  *(v373 + 16) = xmmword_26B545100;
  *(v373 + 32) = 14;
  v374 = sub_26B470F10(v373);

  v934 = 4;
  v933 = 4;
  v375.value._object = 0x800000026B56C990;
  v375.value._countAndFlagsBits = 0xD00000000000001ALL;
  Action.init(_:mac:)(v375, 0);
  v929 = v931;
  v930 = v932;
  v376 = sub_26B4D43F4();
  v377 = sub_26B4CE5C8();
  v378 = sub_26B4D4400();
  *&v806 = sub_26B4D4408();
  *(&v806 + 1) = sub_26B4D4414();
  *&v757 = v371;
  *(&v757 + 1) = v372;
  *(&v708 + 1) = v870;
  *&v708 = v904;
  v379 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ELL, 0x800000026B56C970, v367, MEMORY[0x277D84F90], v376, 0, 0, v935, v927 + 4816, v377 & 1, v378 & 1, v708, v757, v806, v374, &v934, &v933, 0, 0, &v929);
  v380 = swift_allocObject();
  *(v380 + 16) = xmmword_26B545100;
  v381 = swift_allocObject();
  *(v381 + 16) = xmmword_26B545100;
  *(v381 + 32) = 0xD00000000000002DLL;
  *(v381 + 40) = 0x800000026B56C9B0;
  *(v380 + 32) = v381;
  *(v380 + 40) = 0;
  v935[0] = 1;
  v382 = swift_allocObject();
  *(v382 + 16) = xmmword_26B545140;
  *(v382 + 32) = 84017408;
  *(v382 + 36) = 8;
  v905 = sub_26B470D98(v382);

  if (*(v379 + 16))
  {
    v871 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v871 = MEMORY[0x277D84FA0];
  }

  v383 = swift_allocObject();
  *(v383 + 16) = xmmword_26B545100;
  *(v383 + 32) = 3;
  v384 = sub_26B470D98(v383);

  v385 = swift_allocObject();
  *(v385 + 16) = xmmword_26B5450C0;
  *(v385 + 32) = *v926;
  *(v385 + 40) = 1;
  *(v385 + 48) = *v926;
  *(v385 + 56) = 3;
  *(v385 + 64) = *v926;
  *(v385 + 72) = 8;
  *(v385 + 80) = 0x403A000000000000;
  *(v385 + 88) = 10;
  v386 = swift_allocObject();
  *(v386 + 16) = xmmword_26B545100;
  *(v386 + 32) = 14;
  v387 = sub_26B470F10(v386);

  v934 = 4;
  v933 = 4;
  v388.value._object = 0x800000026B56CA00;
  v388.value._countAndFlagsBits = 0xD000000000000017;
  Action.init(_:mac:)(v388, 0);
  v929 = v931;
  v930 = v932;
  v389 = sub_26B4D43F4();
  v390 = sub_26B4CE5C8();
  v391 = sub_26B4D4400();
  *&v807 = sub_26B4D4408();
  *(&v807 + 1) = sub_26B4D4414();
  *&v758 = v384;
  *(&v758 + 1) = v385;
  *(&v709 + 1) = v871;
  *&v709 = v905;
  v392 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B56C9E0, v380, MEMORY[0x277D84F90], v389, 0, 0, v935, v927 + 5000, v390 & 1, v391 & 1, v709, v758, v807, v387, &v934, &v933, 0, 0, &v929);
  v393 = swift_allocObject();
  *(v393 + 16) = xmmword_26B545100;
  v394 = swift_allocObject();
  *(v394 + 16) = xmmword_26B545100;
  *(v394 + 32) = 0xD000000000000033;
  *(v394 + 40) = 0x800000026B56CA20;
  *(v393 + 32) = v394;
  *(v393 + 40) = 0;
  v935[0] = 1;
  v395 = swift_allocObject();
  *(v395 + 16) = xmmword_26B545140;
  *(v395 + 32) = 84017408;
  *(v395 + 36) = 8;
  v906 = sub_26B470D98(v395);

  if (*(v392 + 16))
  {
    v872 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v872 = MEMORY[0x277D84FA0];
  }

  v396 = swift_allocObject();
  *(v396 + 16) = xmmword_26B545100;
  *(v396 + 32) = 3;
  v397 = sub_26B470D98(v396);

  v398 = swift_allocObject();
  *(v398 + 16) = xmmword_26B5450C0;
  *(v398 + 32) = *v926;
  *(v398 + 40) = 1;
  *(v398 + 48) = *v926;
  *(v398 + 56) = 3;
  *(v398 + 64) = *v926;
  *(v398 + 72) = 8;
  *(v398 + 80) = 0x403A000000000000;
  *(v398 + 88) = 10;
  v399 = swift_allocObject();
  *(v399 + 16) = xmmword_26B545100;
  *(v399 + 32) = 14;
  v400 = sub_26B470F10(v399);

  v934 = 4;
  v933 = 4;
  v401.value._object = 0x800000026B56CA80;
  v401.value._countAndFlagsBits = 0xD000000000000019;
  Action.init(_:mac:)(v401, 0);
  v929 = v931;
  v930 = v932;
  v402 = sub_26B4D43F4();
  v403 = sub_26B4CE5C8();
  v404 = sub_26B4D4400();
  *&v808 = sub_26B4D4408();
  *(&v808 + 1) = sub_26B4D4414();
  *&v759 = v397;
  *(&v759 + 1) = v398;
  *(&v710 + 1) = v872;
  *&v710 = v906;
  v405 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001DLL, 0x800000026B56CA60, v393, MEMORY[0x277D84F90], v402, 0, 0, v935, v927 + 5184, v403 & 1, v404 & 1, v710, v759, v808, v400, &v934, &v933, 0, 0, &v929);
  v406 = swift_allocObject();
  *(v406 + 16) = xmmword_26B545100;
  v407 = swift_allocObject();
  *(v407 + 16) = xmmword_26B545100;
  *(v407 + 32) = 0xD000000000000032;
  *(v407 + 40) = 0x800000026B56CAA0;
  *(v406 + 32) = v407;
  *(v406 + 40) = 0;
  v935[0] = 1;
  v408 = swift_allocObject();
  *(v408 + 16) = xmmword_26B545140;
  *(v408 + 32) = 84017408;
  *(v408 + 36) = 8;
  v907 = sub_26B470D98(v408);

  if (*(v405 + 16))
  {
    v873 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v873 = MEMORY[0x277D84FA0];
  }

  v409 = swift_allocObject();
  *(v409 + 16) = xmmword_26B545100;
  *(v409 + 32) = 3;
  v410 = sub_26B470D98(v409);

  v411 = swift_allocObject();
  *(v411 + 16) = xmmword_26B5450C0;
  *(v411 + 32) = *v926;
  *(v411 + 40) = 1;
  *(v411 + 48) = *v926;
  *(v411 + 56) = 3;
  *(v411 + 64) = *v926;
  *(v411 + 72) = 8;
  *(v411 + 80) = 0x403A000000000000;
  *(v411 + 88) = 10;
  v412 = swift_allocObject();
  *(v412 + 16) = xmmword_26B545100;
  *(v412 + 32) = 14;
  v413 = sub_26B470F10(v412);

  v934 = 4;
  v933 = 4;
  v414.value._countAndFlagsBits = 0xD000000000000020;
  v414.value._object = 0x800000026B56CB10;
  Action.init(_:mac:)(v414, 0);
  v929 = v931;
  v930 = v932;
  v415 = sub_26B4D43F4();
  v416 = sub_26B4CE5C8();
  v417 = sub_26B4D4400();
  *&v809 = sub_26B4D4408();
  *(&v809 + 1) = sub_26B4D4414();
  *&v760 = v410;
  *(&v760 + 1) = v411;
  *(&v711 + 1) = v873;
  *&v711 = v907;
  v418 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000024, 0x800000026B56CAE0, v406, MEMORY[0x277D84F90], v415, 0, 0, v935, v927 + 5368, v416 & 1, v417 & 1, v711, v760, v809, v413, &v934, &v933, 0, 0, &v929);
  v419 = swift_allocObject();
  *(v419 + 16) = xmmword_26B545100;
  v420 = swift_allocObject();
  *(v420 + 16) = xmmword_26B545120;
  *(v420 + 32) = 0xD000000000000050;
  *(v420 + 40) = 0x800000026B56CB40;
  *(v420 + 48) = 0xD000000000000055;
  *(v420 + 56) = 0x800000026B56CBA0;
  *(v419 + 32) = v420;
  *(v419 + 40) = 0;
  v935[0] = 1;
  v421 = swift_allocObject();
  *(v421 + 16) = xmmword_26B545140;
  *(v421 + 32) = 84017408;
  *(v421 + 36) = 8;
  v908 = sub_26B470D98(v421);

  if (*(v418 + 16))
  {
    v874 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v874 = MEMORY[0x277D84FA0];
  }

  v422 = swift_allocObject();
  *(v422 + 16) = xmmword_26B545100;
  *(v422 + 32) = 3;
  v423 = sub_26B470D98(v422);

  v424 = swift_allocObject();
  *(v424 + 16) = xmmword_26B5450C0;
  *(v424 + 32) = *v926;
  *(v424 + 40) = 1;
  *(v424 + 48) = *v926;
  *(v424 + 56) = 3;
  *(v424 + 64) = *v926;
  *(v424 + 72) = 8;
  *(v424 + 80) = 0x403A000000000000;
  *(v424 + 88) = 10;
  v425 = swift_allocObject();
  *(v425 + 16) = xmmword_26B545100;
  *(v425 + 32) = 14;
  v426 = sub_26B470F10(v425);

  v934 = 4;
  v933 = 4;
  v427.value._countAndFlagsBits = 0xD000000000000025;
  v427.value._object = 0x800000026B56CC30;
  Action.init(_:mac:)(v427, 0);
  v929 = v931;
  v930 = v932;
  v428 = sub_26B4D43F4();
  v429 = sub_26B4CE5C8();
  v430 = sub_26B4D4400();
  *&v810 = sub_26B4D4408();
  *(&v810 + 1) = sub_26B4D4414();
  *&v761 = v423;
  *(&v761 + 1) = v424;
  *(&v712 + 1) = v874;
  *&v712 = v908;
  v431 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000029, 0x800000026B56CC00, v419, MEMORY[0x277D84F90], v428, 0, 0, v935, v927 + 5552, v429 & 1, v430 & 1, v712, v761, v810, v426, &v934, &v933, 0, 0, &v929);
  v432 = swift_allocObject();
  *(v432 + 16) = xmmword_26B545100;
  v433 = swift_allocObject();
  *(v433 + 16) = xmmword_26B545100;
  *(v433 + 32) = 0xD000000000000039;
  *(v433 + 40) = 0x800000026B56CC60;
  *(v432 + 32) = v433;
  *(v432 + 40) = 0;
  v935[0] = 1;
  v434 = swift_allocObject();
  *(v434 + 16) = xmmword_26B545140;
  *(v434 + 32) = 84017408;
  *(v434 + 36) = 8;
  v909 = sub_26B470D98(v434);

  if (*(v431 + 16))
  {
    v875 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v875 = MEMORY[0x277D84FA0];
  }

  v435 = swift_allocObject();
  *(v435 + 16) = xmmword_26B545100;
  *(v435 + 32) = 3;
  v436 = sub_26B470D98(v435);

  v437 = swift_allocObject();
  *(v437 + 16) = xmmword_26B5450C0;
  *(v437 + 32) = *v926;
  *(v437 + 40) = 1;
  *(v437 + 48) = *v926;
  *(v437 + 56) = 3;
  *(v437 + 64) = *v926;
  *(v437 + 72) = 8;
  *(v437 + 80) = 0x403A000000000000;
  *(v437 + 88) = 10;
  v438 = swift_allocObject();
  *(v438 + 16) = xmmword_26B545100;
  *(v438 + 32) = 14;
  v439 = sub_26B470F10(v438);

  v934 = 4;
  v933 = 4;
  v440.value._countAndFlagsBits = 0xD000000000000026;
  v440.value._object = 0x800000026B56CCD0;
  Action.init(_:mac:)(v440, 0);
  v929 = v931;
  v930 = v932;
  v441 = sub_26B4D43F4();
  v442 = sub_26B4CE5C8();
  v443 = sub_26B4D4400();
  *&v811 = sub_26B4D4408();
  *(&v811 + 1) = sub_26B4D4414();
  *&v762 = v436;
  *(&v762 + 1) = v437;
  *(&v713 + 1) = v875;
  *&v713 = v909;
  v444 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002ALL, 0x800000026B56CCA0, v432, MEMORY[0x277D84F90], v441, 0, 0, v935, v927 + 5736, v442 & 1, v443 & 1, v713, v762, v811, v439, &v934, &v933, 0, 0, &v929);
  v445 = swift_allocObject();
  *(v445 + 16) = xmmword_26B545100;
  v446 = swift_allocObject();
  *(v446 + 16) = xmmword_26B5450C0;
  *(v446 + 32) = 0xD000000000000057;
  *(v446 + 40) = 0x800000026B56CD00;
  *(v446 + 48) = 0xD00000000000005CLL;
  *(v446 + 56) = 0x800000026B56CD60;
  *(v446 + 64) = 0xD000000000000057;
  *(v446 + 72) = 0x800000026B56CDC0;
  *(v446 + 80) = 0xD00000000000005CLL;
  *(v446 + 88) = 0x800000026B56CE20;
  *(v445 + 32) = v446;
  *(v445 + 40) = 0;
  v935[0] = 1;
  v447 = swift_allocObject();
  *(v447 + 16) = xmmword_26B545140;
  *(v447 + 32) = 84017408;
  *(v447 + 36) = 8;
  v910 = sub_26B470D98(v447);

  if (*(v444 + 16))
  {
    v876 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v876 = MEMORY[0x277D84FA0];
  }

  v448 = swift_allocObject();
  *(v448 + 16) = xmmword_26B545100;
  *(v448 + 32) = 3;
  v449 = sub_26B470D98(v448);

  v450 = swift_allocObject();
  *(v450 + 16) = xmmword_26B5450C0;
  *(v450 + 32) = *v926;
  *(v450 + 40) = 1;
  *(v450 + 48) = *v926;
  *(v450 + 56) = 3;
  *(v450 + 64) = *v926;
  *(v450 + 72) = 8;
  *(v450 + 80) = 0x403A000000000000;
  *(v450 + 88) = 10;
  v451 = swift_allocObject();
  *(v451 + 16) = xmmword_26B545100;
  *(v451 + 32) = 14;
  v452 = sub_26B470F10(v451);

  v934 = 4;
  v933 = 4;
  v453.value._countAndFlagsBits = 0xD00000000000002BLL;
  v453.value._object = 0x800000026B56CEB0;
  Action.init(_:mac:)(v453, 0);
  v929 = v931;
  v930 = v932;
  v454 = sub_26B4D43F4();
  v455 = sub_26B4CE5C8();
  v456 = sub_26B4D4400();
  *&v812 = sub_26B4D4408();
  *(&v812 + 1) = sub_26B4D4414();
  *&v763 = v449;
  *(&v763 + 1) = v450;
  *(&v714 + 1) = v876;
  *&v714 = v910;
  v457 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002FLL, 0x800000026B56CE80, v445, MEMORY[0x277D84F90], v454, 0, 0, v935, v927 + 5920, v455 & 1, v456 & 1, v714, v763, v812, v452, &v934, &v933, 0, 0, &v929);
  v458 = swift_allocObject();
  *(v458 + 16) = xmmword_26B545100;
  v459 = swift_allocObject();
  *(v459 + 16) = xmmword_26B545100;
  *(v459 + 32) = 0xD000000000000033;
  *(v459 + 40) = 0x800000026B56CEE0;
  *(v458 + 32) = v459;
  *(v458 + 40) = 0;
  v935[0] = 1;
  v460 = swift_allocObject();
  *(v460 + 16) = xmmword_26B545140;
  *(v460 + 32) = 84017408;
  *(v460 + 36) = 8;
  v911 = sub_26B470D98(v460);

  if (*(v457 + 16))
  {
    v877 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v877 = MEMORY[0x277D84FA0];
  }

  v461 = swift_allocObject();
  *(v461 + 16) = xmmword_26B545100;
  *(v461 + 32) = 3;
  v462 = sub_26B470D98(v461);

  v463 = swift_allocObject();
  *(v463 + 16) = xmmword_26B5450C0;
  *(v463 + 32) = *v926;
  *(v463 + 40) = 1;
  *(v463 + 48) = *v926;
  *(v463 + 56) = 3;
  *(v463 + 64) = *v926;
  *(v463 + 72) = 8;
  *(v463 + 80) = 0x403A000000000000;
  *(v463 + 88) = 10;
  v464 = swift_allocObject();
  *(v464 + 16) = xmmword_26B545100;
  *(v464 + 32) = 14;
  v465 = sub_26B470F10(v464);

  v934 = 4;
  v933 = 4;
  v466.value._countAndFlagsBits = 0xD000000000000021;
  v466.value._object = 0x800000026B56CF50;
  Action.init(_:mac:)(v466, 0);
  v929 = v931;
  v930 = v932;
  v467 = sub_26B4D43F4();
  v468 = sub_26B4CE5C8();
  v469 = sub_26B4D4400();
  *&v813 = sub_26B4D4408();
  *(&v813 + 1) = sub_26B4D4414();
  *&v764 = v462;
  *(&v764 + 1) = v463;
  *(&v715 + 1) = v877;
  *&v715 = v911;
  v470 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000025, 0x800000026B56CF20, v458, MEMORY[0x277D84F90], v467, 0, 0, v935, v927 + 6104, v468 & 1, v469 & 1, v715, v764, v813, v465, &v934, &v933, 0, 0, &v929);
  v471 = swift_allocObject();
  *(v471 + 16) = xmmword_26B545100;
  v472 = swift_allocObject();
  *(v472 + 16) = xmmword_26B545120;
  *(v472 + 32) = 0xD000000000000051;
  *(v472 + 40) = 0x800000026B56CF80;
  *(v472 + 48) = 0xD000000000000056;
  *(v472 + 56) = 0x800000026B56CFE0;
  *(v471 + 32) = v472;
  *(v471 + 40) = 0;
  v935[0] = 1;
  v473 = swift_allocObject();
  *(v473 + 16) = xmmword_26B545140;
  *(v473 + 32) = 84017408;
  *(v473 + 36) = 8;
  v912 = sub_26B470D98(v473);

  if (*(v470 + 16))
  {
    v878 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v878 = MEMORY[0x277D84FA0];
  }

  v474 = swift_allocObject();
  *(v474 + 16) = xmmword_26B545100;
  *(v474 + 32) = 3;
  v475 = sub_26B470D98(v474);

  v476 = swift_allocObject();
  *(v476 + 16) = xmmword_26B5450C0;
  *(v476 + 32) = *v926;
  *(v476 + 40) = 1;
  *(v476 + 48) = *v926;
  *(v476 + 56) = 3;
  *(v476 + 64) = *v926;
  *(v476 + 72) = 8;
  *(v476 + 80) = 0x403A000000000000;
  *(v476 + 88) = 10;
  v477 = swift_allocObject();
  *(v477 + 16) = xmmword_26B545100;
  *(v477 + 32) = 14;
  v478 = sub_26B470F10(v477);

  v934 = 4;
  v933 = 4;
  v479.value._countAndFlagsBits = 0xD000000000000026;
  v479.value._object = 0x800000026B56D070;
  Action.init(_:mac:)(v479, 0);
  v929 = v931;
  v930 = v932;
  v480 = sub_26B4D43F4();
  v481 = sub_26B4CE5C8();
  v482 = sub_26B4D4400();
  *&v814 = sub_26B4D4408();
  *(&v814 + 1) = sub_26B4D4414();
  *&v765 = v475;
  *(&v765 + 1) = v476;
  *(&v716 + 1) = v878;
  *&v716 = v912;
  v483 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002ALL, 0x800000026B56D040, v471, MEMORY[0x277D84F90], v480, 0, 0, v935, v927 + 6288, v481 & 1, v482 & 1, v716, v765, v814, v478, &v934, &v933, 0, 0, &v929);
  v484 = swift_allocObject();
  *(v484 + 16) = xmmword_26B545100;
  v485 = swift_allocObject();
  *(v485 + 16) = xmmword_26B545100;
  *(v485 + 32) = 0xD00000000000002FLL;
  *(v485 + 40) = 0x800000026B56D0A0;
  *(v484 + 32) = v485;
  *(v484 + 40) = 0;
  v935[0] = 1;
  v486 = swift_allocObject();
  *(v486 + 16) = xmmword_26B545140;
  *(v486 + 32) = 84017408;
  *(v486 + 36) = 8;
  v913 = sub_26B470D98(v486);

  if (*(v483 + 16))
  {
    v879 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v879 = MEMORY[0x277D84FA0];
  }

  v487 = swift_allocObject();
  *(v487 + 16) = xmmword_26B545100;
  *(v487 + 32) = 3;
  v488 = sub_26B470D98(v487);

  v489 = swift_allocObject();
  *(v489 + 16) = xmmword_26B5450C0;
  *(v489 + 32) = *v926;
  *(v489 + 40) = 1;
  *(v489 + 48) = *v926;
  *(v489 + 56) = 3;
  *(v489 + 64) = *v926;
  *(v489 + 72) = 8;
  *(v489 + 80) = 0x403A000000000000;
  *(v489 + 88) = 10;
  v490 = swift_allocObject();
  *(v490 + 16) = xmmword_26B545100;
  *(v490 + 32) = 14;
  v491 = sub_26B470F10(v490);

  v934 = 4;
  v933 = 4;
  v492.value._countAndFlagsBits = 0xD000000000000020;
  v492.value._object = 0x800000026B56D100;
  Action.init(_:mac:)(v492, 0);
  v929 = v931;
  v930 = v932;
  v493 = sub_26B4D43F4();
  v494 = sub_26B4CE5C8();
  v495 = sub_26B4D4400();
  *&v815 = sub_26B4D4408();
  *(&v815 + 1) = sub_26B4D4414();
  *&v766 = v488;
  *(&v766 + 1) = v489;
  *(&v717 + 1) = v879;
  *&v717 = v913;
  v496 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000024, 0x800000026B56D0D0, v484, MEMORY[0x277D84F90], v493, 0, 0, v935, v927 + 6472, v494 & 1, v495 & 1, v717, v766, v815, v491, &v934, &v933, 0, 0, &v929);
  v497 = swift_allocObject();
  *(v497 + 16) = xmmword_26B545100;
  v498 = swift_allocObject();
  *(v498 + 16) = xmmword_26B545120;
  *(v498 + 32) = 0xD00000000000004DLL;
  *(v498 + 40) = 0x800000026B56D130;
  *(v498 + 48) = 0xD000000000000052;
  *(v498 + 56) = 0x800000026B56D180;
  *(v497 + 32) = v498;
  *(v497 + 40) = 0;
  v935[0] = 1;
  v499 = swift_allocObject();
  *(v499 + 16) = xmmword_26B545140;
  *(v499 + 32) = 84017408;
  *(v499 + 36) = 8;
  v914 = sub_26B470D98(v499);

  if (*(v496 + 16))
  {
    v880 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v880 = MEMORY[0x277D84FA0];
  }

  v500 = swift_allocObject();
  *(v500 + 16) = xmmword_26B545100;
  *(v500 + 32) = 3;
  v501 = sub_26B470D98(v500);

  v502 = swift_allocObject();
  *(v502 + 16) = xmmword_26B5450C0;
  *(v502 + 32) = *v926;
  *(v502 + 40) = 1;
  *(v502 + 48) = *v926;
  *(v502 + 56) = 3;
  *(v502 + 64) = *v926;
  *(v502 + 72) = 8;
  *(v502 + 80) = 0x403A000000000000;
  *(v502 + 88) = 10;
  v503 = swift_allocObject();
  *(v503 + 16) = xmmword_26B545100;
  *(v503 + 32) = 14;
  v504 = sub_26B470F10(v503);

  v934 = 4;
  v933 = 4;
  v505.value._countAndFlagsBits = 0xD000000000000025;
  v505.value._object = 0x800000026B56D210;
  Action.init(_:mac:)(v505, 0);
  v929 = v931;
  v930 = v932;
  v506 = sub_26B4D43F4();
  v507 = sub_26B4CE5C8();
  v508 = sub_26B4D4400();
  *&v816 = sub_26B4D4408();
  *(&v816 + 1) = sub_26B4D4414();
  *&v767 = v501;
  *(&v767 + 1) = v502;
  *(&v718 + 1) = v880;
  *&v718 = v914;
  v509 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000029, 0x800000026B56D1E0, v497, MEMORY[0x277D84F90], v506, 0, 0, v935, v927 + 6656, v507 & 1, v508 & 1, v718, v767, v816, v504, &v934, &v933, 0, 0, &v929);
  v510 = swift_allocObject();
  *(v510 + 16) = xmmword_26B545100;
  v511 = swift_allocObject();
  *(v511 + 16) = xmmword_26B545100;
  *(v511 + 32) = 0xD000000000000037;
  *(v511 + 40) = 0x800000026B56D240;
  *(v510 + 32) = v511;
  *(v510 + 40) = 0;
  v935[0] = 1;
  v512 = swift_allocObject();
  *(v512 + 16) = xmmword_26B545140;
  *(v512 + 32) = 84017408;
  *(v512 + 36) = 8;
  v915 = sub_26B470D98(v512);

  if (*(v509 + 16))
  {
    v881 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v881 = MEMORY[0x277D84FA0];
  }

  v513 = swift_allocObject();
  *(v513 + 16) = xmmword_26B545100;
  *(v513 + 32) = 3;
  v514 = sub_26B470D98(v513);

  v515 = swift_allocObject();
  *(v515 + 16) = xmmword_26B5450C0;
  v516 = *v926;
  *(v515 + 32) = *v926;
  *(v515 + 40) = 1;
  *(v515 + 48) = v516;
  *(v515 + 56) = 3;
  *(v515 + 64) = v516;
  *(v515 + 72) = 8;
  *(v515 + 80) = 0x403A000000000000;
  *(v515 + 88) = 10;
  v517 = swift_allocObject();
  *(v517 + 16) = xmmword_26B545100;
  *(v517 + 32) = 14;
  v518 = sub_26B470F10(v517);

  v934 = 4;
  v933 = 4;
  v519.value._countAndFlagsBits = 0xD000000000000026;
  v519.value._object = 0x800000026B56D2B0;
  Action.init(_:mac:)(v519, 0);
  v929 = v931;
  v930 = v932;
  v520 = sub_26B4D43F4();
  v521 = sub_26B4CE5C8();
  v522 = sub_26B4D4400();
  *&v817 = sub_26B4D4408();
  *(&v817 + 1) = sub_26B4D4414();
  *&v768 = v514;
  *(&v768 + 1) = v515;
  *(&v719 + 1) = v881;
  *&v719 = v915;
  v523 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002ALL, 0x800000026B56D280, v510, MEMORY[0x277D84F90], v520, 0, 0, v935, v927 + 6840, v521 & 1, v522 & 1, v719, v768, v817, v518, &v934, &v933, 0, 0, &v929);
  v524 = swift_allocObject();
  *(v524 + 16) = xmmword_26B545100;
  v525 = swift_allocObject();
  *(v525 + 16) = xmmword_26B545120;
  *(v525 + 32) = 0xD000000000000055;
  *(v525 + 40) = 0x800000026B56D2E0;
  *(v525 + 48) = 0xD00000000000005ALL;
  *(v525 + 56) = 0x800000026B56D340;
  *(v524 + 32) = v525;
  *(v524 + 40) = 0;
  v935[0] = 1;
  v526 = swift_allocObject();
  *(v526 + 16) = xmmword_26B545140;
  *(v526 + 32) = 84017408;
  *(v526 + 36) = 8;
  v916 = sub_26B470D98(v526);

  if (*(v523 + 16))
  {
    v882 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v882 = MEMORY[0x277D84FA0];
  }

  v527 = swift_allocObject();
  *(v527 + 16) = xmmword_26B545100;
  *(v527 + 32) = 3;
  v528 = sub_26B470D98(v527);

  v529 = swift_allocObject();
  *(v529 + 16) = xmmword_26B5450C0;
  v530 = *v926;
  *(v529 + 32) = *v926;
  *(v529 + 40) = 1;
  *(v529 + 48) = v530;
  *(v529 + 56) = 3;
  *(v529 + 64) = v530;
  *(v529 + 72) = 8;
  *(v529 + 80) = 0x403A000000000000;
  *(v529 + 88) = 10;
  v531 = swift_allocObject();
  *(v531 + 16) = xmmword_26B545100;
  *(v531 + 32) = 14;
  v532 = sub_26B470F10(v531);

  v934 = 4;
  v933 = 4;
  v533.value._countAndFlagsBits = 0xD00000000000002BLL;
  v533.value._object = 0x800000026B56D3D0;
  Action.init(_:mac:)(v533, 0);
  v929 = v931;
  v930 = v932;
  v534 = sub_26B4D43F4();
  v535 = sub_26B4CE5C8();
  v536 = sub_26B4D4400();
  *&v818 = sub_26B4D4408();
  *(&v818 + 1) = sub_26B4D4414();
  *&v769 = v528;
  *(&v769 + 1) = v529;
  *(&v720 + 1) = v882;
  *&v720 = v916;
  v537 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002FLL, 0x800000026B56D3A0, v524, MEMORY[0x277D84F90], v534, 0, 0, v935, v927 + 7024, v535 & 1, v536 & 1, v720, v769, v818, v532, &v934, &v933, 0, 0, &v929);
  v538 = swift_allocObject();
  *(v538 + 16) = xmmword_26B545100;
  v539 = swift_allocObject();
  *(v539 + 16) = xmmword_26B545100;
  *(v539 + 32) = 0xD000000000000031;
  *(v539 + 40) = 0x800000026B56D400;
  *(v538 + 32) = v539;
  *(v538 + 40) = 0;
  v935[0] = 1;
  v540 = swift_allocObject();
  *(v540 + 16) = xmmword_26B545140;
  *(v540 + 32) = 84017408;
  *(v540 + 36) = 8;
  v917 = sub_26B470D98(v540);

  if (*(v537 + 16))
  {
    v883 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v883 = MEMORY[0x277D84FA0];
  }

  v541 = swift_allocObject();
  *(v541 + 16) = xmmword_26B545100;
  *(v541 + 32) = 3;
  v542 = sub_26B470D98(v541);

  v543 = swift_allocObject();
  *(v543 + 16) = xmmword_26B5450C0;
  v544 = *v926;
  *(v543 + 32) = *v926;
  *(v543 + 40) = 1;
  *(v543 + 48) = v544;
  *(v543 + 56) = 3;
  *(v543 + 64) = v544;
  *(v543 + 72) = 8;
  *(v543 + 80) = 0x403A000000000000;
  *(v543 + 88) = 10;
  v545 = swift_allocObject();
  *(v545 + 16) = xmmword_26B545100;
  *(v545 + 32) = 14;
  v546 = sub_26B470F10(v545);

  v934 = 4;
  v933 = 4;
  v547.value._countAndFlagsBits = 0xD000000000000021;
  v547.value._object = 0x800000026B56D470;
  Action.init(_:mac:)(v547, 0);
  v929 = v931;
  v930 = v932;
  v548 = sub_26B4D43F4();
  v549 = sub_26B4CE5C8();
  v550 = sub_26B4D4400();
  *&v819 = sub_26B4D4408();
  *(&v819 + 1) = sub_26B4D4414();
  *&v770 = v542;
  *(&v770 + 1) = v543;
  *(&v721 + 1) = v883;
  *&v721 = v917;
  v551 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000025, 0x800000026B56D440, v538, MEMORY[0x277D84F90], v548, 0, 0, v935, v927 + 7208, v549 & 1, v550 & 1, v721, v770, v819, v546, &v934, &v933, 0, 0, &v929);
  v552 = swift_allocObject();
  *(v552 + 16) = xmmword_26B545100;
  v553 = swift_allocObject();
  *(v553 + 16) = xmmword_26B545120;
  *(v553 + 32) = 0xD00000000000004FLL;
  *(v553 + 40) = 0x800000026B56D4A0;
  *(v553 + 48) = 0xD000000000000054;
  *(v553 + 56) = 0x800000026B56D4F0;
  *(v552 + 32) = v553;
  *(v552 + 40) = 0;
  v935[0] = 1;
  v554 = swift_allocObject();
  *(v554 + 16) = xmmword_26B545140;
  *(v554 + 32) = 84017408;
  *(v554 + 36) = 8;
  v918 = sub_26B470D98(v554);

  if (*(v551 + 16))
  {
    v884 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v884 = MEMORY[0x277D84FA0];
  }

  v555 = swift_allocObject();
  *(v555 + 16) = xmmword_26B545100;
  *(v555 + 32) = 3;
  v556 = sub_26B470D98(v555);

  v557 = swift_allocObject();
  *(v557 + 16) = xmmword_26B5450C0;
  v558 = *v926;
  *(v557 + 32) = *v926;
  *(v557 + 40) = 1;
  *(v557 + 48) = v558;
  *(v557 + 56) = 3;
  *(v557 + 64) = v558;
  *(v557 + 72) = 8;
  *(v557 + 80) = 0x403A000000000000;
  *(v557 + 88) = 10;
  v559 = swift_allocObject();
  *(v559 + 16) = xmmword_26B545100;
  *(v559 + 32) = 14;
  v560 = sub_26B470F10(v559);

  v934 = 4;
  v933 = 4;
  v561.value._countAndFlagsBits = 0xD000000000000026;
  v561.value._object = 0x800000026B56D580;
  Action.init(_:mac:)(v561, 0);
  v929 = v931;
  v930 = v932;
  v562 = sub_26B4D43F4();
  v563 = sub_26B4CE5C8();
  v564 = sub_26B4D4400();
  *&v820 = sub_26B4D4408();
  *(&v820 + 1) = sub_26B4D4414();
  *&v771 = v556;
  *(&v771 + 1) = v557;
  *(&v722 + 1) = v884;
  *&v722 = v918;
  v565 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002ALL, 0x800000026B56D550, v552, MEMORY[0x277D84F90], v562, 0, 0, v935, v927 + 7392, v563 & 1, v564 & 1, v722, v771, v820, v560, &v934, &v933, 0, 0, &v929);
  v566 = swift_allocObject();
  *(v566 + 16) = xmmword_26B545100;
  v567 = swift_allocObject();
  *(v567 + 16) = xmmword_26B545100;
  *(v567 + 32) = 0xD000000000000035;
  *(v567 + 40) = 0x800000026B56D5B0;
  *(v566 + 32) = v567;
  *(v566 + 40) = 0;
  v935[0] = 1;
  v568 = swift_allocObject();
  *(v568 + 16) = xmmword_26B545140;
  *(v568 + 32) = 84017408;
  *(v568 + 36) = 8;
  v919 = sub_26B470D98(v568);

  if (*(v565 + 16))
  {
    v885 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v885 = MEMORY[0x277D84FA0];
  }

  v569 = swift_allocObject();
  *(v569 + 16) = xmmword_26B545100;
  *(v569 + 32) = 3;
  v570 = sub_26B470D98(v569);

  v571 = swift_allocObject();
  *(v571 + 16) = xmmword_26B5450C0;
  v572 = *v926;
  *(v571 + 32) = *v926;
  *(v571 + 40) = 1;
  *(v571 + 48) = v572;
  *(v571 + 56) = 3;
  *(v571 + 64) = v572;
  *(v571 + 72) = 8;
  *(v571 + 80) = 0x403A000000000000;
  *(v571 + 88) = 10;
  v573 = swift_allocObject();
  *(v573 + 16) = xmmword_26B545100;
  *(v573 + 32) = 14;
  v574 = sub_26B470F10(v573);

  v934 = 4;
  v933 = 4;
  v575.value._countAndFlagsBits = 0xD000000000000023;
  v575.value._object = 0x800000026B56D620;
  v576.value._countAndFlagsBits = 0xD000000000000022;
  v576.value._object = 0x800000026B56D650;
  Action.init(_:mac:)(v575, v576);
  v929 = v931;
  v930 = v932;
  v577 = sub_26B4D43F4();
  v578 = sub_26B4CE5C8();
  v579 = sub_26B4D4400();
  *&v821 = sub_26B4D4408();
  *(&v821 + 1) = sub_26B4D4414();
  *&v772 = v570;
  *(&v772 + 1) = v571;
  *(&v723 + 1) = v885;
  *&v723 = v919;
  v580 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000027, 0x800000026B56D5F0, v566, MEMORY[0x277D84F90], v577, 0, 0, v935, v927 + 7576, v578 & 1, v579 & 1, v723, v772, v821, v574, &v934, &v933, 0, 0, &v929);
  v581 = swift_allocObject();
  *(v581 + 16) = xmmword_26B545100;
  v582 = swift_allocObject();
  *(v582 + 16) = xmmword_26B545120;
  *(v582 + 32) = 0xD000000000000053;
  *(v582 + 40) = 0x800000026B56D680;
  *(v582 + 48) = 0xD000000000000058;
  *(v582 + 56) = 0x800000026B56D6E0;
  *(v581 + 32) = v582;
  *(v581 + 40) = 0;
  v935[0] = 1;
  v583 = swift_allocObject();
  *(v583 + 16) = xmmword_26B545140;
  *(v583 + 32) = 84017408;
  *(v583 + 36) = 8;
  v920 = sub_26B470D98(v583);

  if (*(v580 + 16))
  {
    v886 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v886 = MEMORY[0x277D84FA0];
  }

  v584 = swift_allocObject();
  *(v584 + 16) = xmmword_26B545100;
  *(v584 + 32) = 3;
  v585 = sub_26B470D98(v584);

  v586 = swift_allocObject();
  *(v586 + 16) = xmmword_26B5450C0;
  v587 = *v926;
  *(v586 + 32) = *v926;
  *(v586 + 40) = 1;
  *(v586 + 48) = v587;
  *(v586 + 56) = 3;
  *(v586 + 64) = v587;
  *(v586 + 72) = 8;
  *(v586 + 80) = 0x403A000000000000;
  *(v586 + 88) = 10;
  v588 = swift_allocObject();
  *(v588 + 16) = xmmword_26B545100;
  *(v588 + 32) = 14;
  v589 = sub_26B470F10(v588);

  v934 = 4;
  v933 = 4;
  v590.value._countAndFlagsBits = 0xD000000000000028;
  v590.value._object = 0x800000026B56D770;
  Action.init(_:mac:)(v590, 0);
  v929 = v931;
  v930 = v932;
  v591 = sub_26B4D43F4();
  v592 = sub_26B4CE5C8();
  v593 = sub_26B4D4400();
  *&v822 = sub_26B4D4408();
  *(&v822 + 1) = sub_26B4D4414();
  *&v773 = v585;
  *(&v773 + 1) = v586;
  *(&v724 + 1) = v886;
  *&v724 = v920;
  v594 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002CLL, 0x800000026B56D740, v581, MEMORY[0x277D84F90], v591, 0, 0, v935, v927 + 7760, v592 & 1, v593 & 1, v724, v773, v822, v589, &v934, &v933, 0, 0, &v929);
  v595 = swift_allocObject();
  *(v595 + 16) = xmmword_26B545100;
  v596 = swift_allocObject();
  *(v596 + 16) = xmmword_26B545100;
  *(v596 + 32) = 0xD00000000000001FLL;
  *(v596 + 40) = 0x800000026B56D7A0;
  *(v595 + 32) = v596;
  *(v595 + 40) = 0;
  v935[0] = 1;
  v597 = swift_allocObject();
  *(v597 + 16) = xmmword_26B545140;
  *(v597 + 32) = 84017408;
  *(v597 + 36) = 8;
  v921 = sub_26B470D98(v597);

  if (*(v594 + 16))
  {
    v887 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v887 = MEMORY[0x277D84FA0];
  }

  v598 = swift_allocObject();
  *(v598 + 16) = xmmword_26B545100;
  *(v598 + 32) = 3;
  v599 = sub_26B470D98(v598);

  v600 = swift_allocObject();
  *(v600 + 16) = xmmword_26B5450C0;
  v601 = *v926;
  *(v600 + 32) = *v926;
  *(v600 + 40) = 1;
  *(v600 + 48) = v601;
  *(v600 + 56) = 3;
  *(v600 + 64) = v601;
  *(v600 + 72) = 8;
  *(v600 + 80) = 0x403A000000000000;
  *(v600 + 88) = 10;
  v602 = swift_allocObject();
  *(v602 + 16) = xmmword_26B545100;
  *(v602 + 32) = 14;
  v603 = sub_26B470F10(v602);

  v934 = 4;
  v933 = 4;
  v604.value._object = 0x800000026B56D7E0;
  v604.value._countAndFlagsBits = 0xD000000000000012;
  Action.init(_:mac:)(v604, 0);
  v929 = v931;
  v930 = v932;
  v605 = sub_26B4D43F4();
  v606 = sub_26B4CE5C8();
  v607 = sub_26B4D4400();
  *&v823 = sub_26B4D4408();
  *(&v823 + 1) = sub_26B4D4414();
  *&v774 = v599;
  *(&v774 + 1) = v600;
  *(&v725 + 1) = v887;
  *&v725 = v921;
  v608 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000016, 0x800000026B56D7C0, v595, MEMORY[0x277D84F90], v605, 0, 0, v935, v927 + 7944, v606 & 1, v607 & 1, v725, v774, v823, v603, &v934, &v933, 0, 0, &v929);
  v609 = swift_allocObject();
  *(v609 + 16) = xmmword_26B545100;
  v610 = swift_allocObject();
  *(v610 + 16) = xmmword_26B545120;
  *(v610 + 32) = 0xD000000000000044;
  *(v610 + 40) = 0x800000026B56D800;
  *(v610 + 48) = 0xD000000000000049;
  *(v610 + 56) = 0x800000026B56D850;
  *(v609 + 32) = v610;
  *(v609 + 40) = 0;
  v935[0] = 1;
  v611 = swift_allocObject();
  *(v611 + 16) = xmmword_26B545140;
  *(v611 + 32) = 84017408;
  *(v611 + 36) = 8;
  v922 = sub_26B470D98(v611);

  if (*(v608 + 16))
  {
    v888 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v888 = MEMORY[0x277D84FA0];
  }

  v612 = swift_allocObject();
  *(v612 + 16) = xmmword_26B545100;
  *(v612 + 32) = 3;
  v613 = sub_26B470D98(v612);

  v614 = swift_allocObject();
  *(v614 + 16) = xmmword_26B5450C0;
  v615 = *v926;
  *(v614 + 32) = *v926;
  *(v614 + 40) = 1;
  *(v614 + 48) = v615;
  *(v614 + 56) = 3;
  *(v614 + 64) = v615;
  *(v614 + 72) = 8;
  *(v614 + 80) = 0x403A000000000000;
  *(v614 + 88) = 10;
  v616 = swift_allocObject();
  *(v616 + 16) = xmmword_26B545100;
  *(v616 + 32) = 14;
  v617 = sub_26B470F10(v616);

  v934 = 4;
  v933 = 4;
  v618.value._object = 0x800000026B56D8C0;
  v618.value._countAndFlagsBits = 0xD000000000000017;
  Action.init(_:mac:)(v618, 0);
  v929 = v931;
  v930 = v932;
  v619 = sub_26B4D43F4();
  v620 = sub_26B4CE5C8();
  v621 = sub_26B4D4400();
  *&v824 = sub_26B4D4408();
  *(&v824 + 1) = sub_26B4D4414();
  *&v775 = v613;
  *(&v775 + 1) = v614;
  *(&v726 + 1) = v888;
  *&v726 = v922;
  v622 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B56D8A0, v609, MEMORY[0x277D84F90], v619, 0, 0, v935, v927 + 8128, v620 & 1, v621 & 1, v726, v775, v824, v617, &v934, &v933, 0, 0, &v929);
  v623 = swift_allocObject();
  *(v623 + 16) = xmmword_26B545100;
  v624 = swift_allocObject();
  *(v624 + 16) = xmmword_26B545100;
  *(v624 + 32) = 0xD000000000000022;
  *(v624 + 40) = 0x800000026B56D8E0;
  *(v623 + 32) = v624;
  *(v623 + 40) = 0;
  v935[0] = 0;
  v625 = swift_allocObject();
  *(v625 + 16) = xmmword_26B5450C0;
  *(v625 + 32) = 84017408;
  v923 = sub_26B470D98(v625);

  if (*(v622 + 16))
  {
    v889 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v889 = MEMORY[0x277D84FA0];
  }

  v626 = swift_allocObject();
  *(v626 + 16) = xmmword_26B545120;
  *(v626 + 32) = 2051;
  v627 = sub_26B470D98(v626);

  v628 = swift_allocObject();
  *(v628 + 16) = xmmword_26B5450D0;
  v629 = *v926;
  *(v628 + 32) = *v926;
  *(v628 + 40) = 1;
  *(v628 + 48) = v629;
  *(v628 + 56) = 3;
  *(v628 + 64) = v629;
  *(v628 + 72) = 8;
  v630 = swift_allocObject();
  *(v630 + 16) = xmmword_26B545100;
  *(v630 + 32) = 14;
  v631 = sub_26B470F10(v630);

  v934 = 4;
  v933 = 4;
  v632.value._object = 0x800000026B56D930;
  v632.value._countAndFlagsBits = 0xD000000000000015;
  Action.init(_:mac:)(v632, 0);
  v929 = v931;
  v930 = v932;
  v633 = sub_26B4D43F4();
  v634 = sub_26B4CE5C8();
  v635 = sub_26B4D4400();
  *&v825 = sub_26B4D4408();
  *(&v825 + 1) = sub_26B4D4414();
  *&v776 = v627;
  *(&v776 + 1) = v628;
  *(&v727 + 1) = v889;
  *&v727 = v923;
  v636 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B56D910, v623, MEMORY[0x277D84F90], v633, 0, 0, v935, v927 + 8312, v634 & 1, v635 & 1, v727, v776, v825, v631, &v934, &v933, 0, 0, &v929);
  v637 = swift_allocObject();
  *(v637 + 16) = xmmword_26B545100;
  v638 = swift_allocObject();
  *(v638 + 16) = xmmword_26B545120;
  *(v638 + 32) = 0xD00000000000004CLL;
  *(v638 + 40) = 0x800000026B56D950;
  *(v638 + 48) = 0xD000000000000047;
  *(v638 + 56) = 0x800000026B56D9A0;
  *(v637 + 32) = v638;
  *(v637 + 40) = 0;
  v935[0] = 1;
  v639 = swift_allocObject();
  *(v639 + 16) = xmmword_26B5450C0;
  *(v639 + 32) = 84017408;
  v924 = sub_26B470D98(v639);

  if (*(v636 + 16))
  {
    v890 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v890 = MEMORY[0x277D84FA0];
  }

  v640 = swift_allocObject();
  *(v640 + 16) = xmmword_26B545120;
  *(v640 + 32) = 2051;
  v641 = sub_26B470D98(v640);

  v642 = swift_allocObject();
  *(v642 + 16) = xmmword_26B5450D0;
  v643 = *v926;
  *(v642 + 32) = *v926;
  *(v642 + 40) = 1;
  *(v642 + 48) = v643;
  *(v642 + 56) = 3;
  *(v642 + 64) = v643;
  *(v642 + 72) = 8;
  v644 = swift_allocObject();
  *(v644 + 16) = xmmword_26B545100;
  *(v644 + 32) = 14;
  v645 = sub_26B470F10(v644);

  v934 = 4;
  v933 = 4;
  v646.value._object = 0x800000026B56DA10;
  v646.value._countAndFlagsBits = 0xD00000000000001ALL;
  Action.init(_:mac:)(v646, 0);
  v929 = v931;
  v930 = v932;
  v647 = sub_26B4D43F4();
  v648 = sub_26B4CE5C8();
  v649 = sub_26B4D4400();
  *&v826 = sub_26B4D4408();
  *(&v826 + 1) = sub_26B4D4414();
  *&v777 = v641;
  *(&v777 + 1) = v642;
  *(&v728 + 1) = v890;
  *&v728 = v924;
  v650 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ELL, 0x800000026B56D9F0, v637, MEMORY[0x277D84F90], v647, 0, 0, v935, v927 + 8496, v648 & 1, v649 & 1, v728, v777, v826, v645, &v934, &v933, 0, 0, &v929);
  v651 = swift_allocObject();
  *(v651 + 16) = xmmword_26B545100;
  v652 = swift_allocObject();
  *(v652 + 16) = xmmword_26B545100;
  *(v652 + 32) = 0xD000000000000022;
  *(v652 + 40) = 0x800000026B56DA30;
  *(v651 + 32) = v652;
  *(v651 + 40) = 0;
  v935[0] = 0;
  v653 = swift_allocObject();
  *(v653 + 16) = xmmword_26B545140;
  *(v653 + 32) = 84017408;
  *(v653 + 36) = 8;
  v925 = sub_26B470D98(v653);

  if (*(v650 + 16))
  {
    v893 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v893 = MEMORY[0x277D84FA0];
  }

  v654 = swift_allocObject();
  *(v654 + 16) = xmmword_26B545100;
  *(v654 + 32) = 3;
  v655 = sub_26B470D98(v654);

  v656 = swift_allocObject();
  *(v656 + 16) = xmmword_26B5450C0;
  v657 = *v926;
  *(v656 + 32) = *v926;
  *(v656 + 40) = 1;
  *(v656 + 48) = v657;
  *(v656 + 56) = 3;
  *(v656 + 64) = v657;
  *(v656 + 72) = 8;
  *(v656 + 80) = 0x403A000000000000;
  *(v656 + 88) = 10;
  v658 = swift_allocObject();
  *(v658 + 16) = xmmword_26B545100;
  *(v658 + 32) = 14;
  v659 = sub_26B470F10(v658);

  v934 = 4;
  v933 = 4;
  v660.value._object = 0x800000026B56DA80;
  v660.value._countAndFlagsBits = 0xD000000000000015;
  Action.init(_:mac:)(v660, 0);
  v929 = v931;
  v930 = v932;
  v661 = sub_26B4D43F4();
  v662 = sub_26B4CE5C8();
  v663 = sub_26B4D4400();
  *&v827 = sub_26B4D4408();
  *(&v827 + 1) = sub_26B4D4414();
  *&v778 = v655;
  *(&v778 + 1) = v656;
  *(&v729 + 1) = v893;
  *&v729 = v925;
  v664 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B56DA60, v651, MEMORY[0x277D84F90], v661, 0, 0, v935, v927 + 8680, v662 & 1, v663 & 1, v729, v778, v827, v659, &v934, &v933, 0, 0, &v929);
  v665 = swift_allocObject();
  *(v665 + 16) = xmmword_26B545100;
  v666 = swift_allocObject();
  *(v666 + 16) = xmmword_26B545120;
  *(v666 + 32) = 0xD00000000000004CLL;
  *(v666 + 40) = 0x800000026B56DAA0;
  *(v666 + 48) = 0xD000000000000047;
  *(v666 + 56) = 0x800000026B56DAF0;
  *(v665 + 32) = v666;
  *(v665 + 40) = 0;
  v935[0] = 1;
  v667 = swift_allocObject();
  *(v667 + 16) = xmmword_26B545140;
  *(v667 + 32) = 84017408;
  *(v667 + 36) = 8;
  v928 = sub_26B470D98(v667);

  if (*(v664 + 16))
  {
    v668 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v668 = MEMORY[0x277D84FA0];
  }

  v669 = swift_allocObject();
  *(v669 + 16) = xmmword_26B545100;
  *(v669 + 32) = 3;
  v670 = sub_26B470D98(v669);

  v671 = swift_allocObject();
  *(v671 + 16) = xmmword_26B5450C0;
  v672 = *v926;
  *(v671 + 32) = *v926;
  *(v671 + 40) = 1;
  *(v671 + 48) = v672;
  *(v671 + 56) = 3;
  *(v671 + 64) = v672;
  *(v671 + 72) = 8;
  *(v671 + 80) = 0x403A000000000000;
  *(v671 + 88) = 10;
  v673 = swift_allocObject();
  *(v673 + 16) = xmmword_26B545100;
  *(v673 + 32) = 14;
  v674 = sub_26B470F10(v673);

  v934 = 4;
  v933 = 4;
  v675.value._object = 0x800000026B56DB60;
  v675.value._countAndFlagsBits = 0xD00000000000001ALL;
  Action.init(_:mac:)(v675, 0);
  v929 = v931;
  v930 = v932;
  v676 = sub_26B4D43F4();
  v677 = sub_26B4CE5C8();
  v678 = sub_26B4D4400();
  *&v828 = sub_26B4D4408();
  *(&v828 + 1) = sub_26B4D4414();
  *&v779 = v670;
  *(&v779 + 1) = v671;
  *(&v730 + 1) = v668;
  *&v730 = v928;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ELL, 0x800000026B56DB40, v665, MEMORY[0x277D84F90], v676, 0, 0, v935, v927 + 8864, v677 & 1, v678 & 1, v730, v779, v828, v674, &v934, &v933, 0, 0, &v929);
  v679 = sub_26B4D4400() & 1;
  v680._countAndFlagsBits = 0x6E6564646948;
  v680._object = 0xE600000000000000;
  v681._countAndFlagsBits = v830;
  v681._object = v829;
  VCCommandCollection.init(identifier:displayName:showInSettings:showCodingGuideInSettings:commands:)(&unk_280406E88, v680, v681, 0, v679, v927);
}