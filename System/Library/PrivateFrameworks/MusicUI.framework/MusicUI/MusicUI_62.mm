uint64_t sub_216CE51A8(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v47 - v5;
  v7 = sub_2170061E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  v14 = type metadata accessor for MusicEvent.Event(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DDA0A0(v2, v16);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB8C0, &qword_21705EE80);
      (*(v8 + 32))(v13, v16, v7);
      sub_216DD9B04();
      sub_216DD9F00();
      (*(v8 + 16))(v10, v13, v7);
      type metadata accessor for MusicEvent(0);
      sub_216DD9F00();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9600, &qword_21705FEF0);
      swift_allocObject();
      sub_216DD2D40();
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9598, &qword_21705FE88);
      v19 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC95A0, &qword_21705FE90);
      v36 = swift_allocObject();
      *(v36 + 16) = v35;
      *(v19 + 16) = v36;
      sub_2166997CC(v6, &qword_27CAB74E8, &qword_217030A40);
      goto LABEL_20;
    case 2u:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC95A8, &qword_21705FE98);
      swift_allocObject();

      sub_216CDF280();
      goto LABEL_24;
    case 3u:
    case 4u:
      __src[0] = 0;
      __src[1] = 0xE000000000000000;
      sub_21700F3B4();
      MEMORY[0x21CE9F490](39, 0xE100000000000000);
      type metadata accessor for MusicEvent(0);
      sub_21700F544();
      MEMORY[0x21CE9F490](0xD000000000000022, 0x8000000217083D60);
      result = sub_21700F584();
      __break(1u);
      return result;
    case 5u:
      sub_216DD9F00();
      v33 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v33;
      v23 = *(v33 + 8);
      v24 = &unk_27CAC9620;
      v25 = &unk_21705FF10;
      goto LABEL_17;
    case 6u:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9618, &qword_21705FF08);
      swift_allocObject();

      goto LABEL_15;
    case 7u:
      sub_216DD9F00();
      v28 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v28;
      v23 = *(v28 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC95F8, &qword_21705FEE8);
      v29 = swift_allocObject();
      v30 = v29;
      v29[2] = 0;
      v29[3] = 0;
      v29[17] = 0;
      goto LABEL_18;
    case 8u:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC95F0, &qword_21705FEE0);
      swift_allocObject();

      sub_216DC16C0();
      goto LABEL_24;
    case 9u:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC95E8, &qword_21705FED8);
      swift_allocObject();

      goto LABEL_23;
    case 0xAu:
      sub_216DD9F00();
      v32 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v32;
      v23 = *(v32 + 8);
      v24 = &unk_27CAC95E0;
      v25 = &unk_21705FED0;
      goto LABEL_17;
    case 0xBu:
      sub_216DD9F00();
      v27 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v27;
      v23 = *(v27 + 8);
      v24 = &unk_27CAC95D8;
      v25 = &unk_21705FEC8;
      goto LABEL_17;
    case 0xCu:
      sub_216DD9F00();
      v31 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v31;
      v23 = *(v31 + 8);
      v24 = &unk_27CAC95D0;
      v25 = &unk_21705FEC0;
      goto LABEL_17;
    case 0xDu:
      sub_216DD9F00();
      v21 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = &unk_27CAC95C8;
      v25 = &unk_21705FEB8;
LABEL_17:
      __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
      v29 = swift_allocObject();
      v30 = v29;
      v29[2] = 0;
      v29[3] = 0;
LABEL_18:
      v29[16] = 0;
      memcpy(v29 + 4, __src, 0x50uLL);
      v30[14] = v22;
      *(v30 + 120) = v23;
      goto LABEL_25;
    case 0xEu:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC95B0, &qword_21705FEA0);
      swift_allocObject();

      sub_216DD3430();
      goto LABEL_24;
    case 0xFu:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC95B8, &qword_21705FEA8);
      swift_allocObject();

LABEL_15:
      sub_216DD30B0();
      goto LABEL_24;
    case 0x10u:
      sub_216DD9F00();
      v37 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v38 = *v37;
      v39 = *(v37 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC95C0, &qword_21705FEB0);
      swift_allocObject();
      v40 = v48;

      sub_216CE252C(__src, v38, v39, v40, v41, v42, v43, v44, v47, v48);
      goto LABEL_24;
    case 0x11u:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9610, &qword_21705FF00);
      swift_allocObject();

      sub_216CDF9B8();
      goto LABEL_24;
    case 0x12u:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9590, &qword_21705FE80);
      swift_allocObject();

LABEL_23:
      sub_216DC19CC();
LABEL_24:
      v30 = v26;
LABEL_25:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9598, &qword_21705FE88);
      v19 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC95A0, &qword_21705FE90);
      v45 = swift_allocObject();
      *(v45 + 16) = v30;
      *(v19 + 16) = v45;
      break;
    default:
      (*(v8 + 32))(v13, v16, v7);
      sub_216DD9F00();
      (*(v8 + 16))(v10, v13, v7);
      type metadata accessor for MusicEvent(0);
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9600, &qword_21705FEF0);
      swift_allocObject();
      sub_216DD2D40();
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9598, &qword_21705FE88);
      v19 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9608, &qword_21705FEF8);
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *(v19 + 16) = v20;
LABEL_20:
      (*(v8 + 8))(v13, v7);
      break;
  }

  return v19;
}

uint64_t sub_216CE5E00(uint64_t a1, uint64_t a2)
{
  v76 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v75 - v5;
  v7 = sub_2170061E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v75 - v12;
  v14 = type metadata accessor for MusicEvent.Event(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DDA0A0(v2, v16);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB8C0, &qword_21705EE80);
      (*(v8 + 32))(v13, v16, v7);
      sub_216DD9B04();
      sub_216DD9F00();
      (*(v8 + 16))(v10, v13, v7);
      type metadata accessor for MusicEvent(0);
      sub_216DD9F00();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9568, &qword_21705FE58);
      swift_allocObject();
      sub_216DD2E14();
      v62 = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC08C8, &qword_21705FDD0);
      v19 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9508, &qword_21705FDF8);
      v63 = swift_allocObject();
      *(v63 + 16) = v62;
      *(v19 + 16) = v63;
      sub_2166997CC(v6, &qword_27CAB74E8, &qword_217030A40);
      goto LABEL_20;
    case 2u:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9510, &qword_21705FE00);
      swift_allocObject();

      sub_216CDF3A8();
      goto LABEL_24;
    case 3u:
    case 4u:
      *&v77[0] = 0;
      *(&v77[0] + 1) = 0xE000000000000000;
      sub_21700F3B4();
      MEMORY[0x21CE9F490](39, 0xE100000000000000);
      type metadata accessor for MusicEvent(0);
      sub_21700F544();
      MEMORY[0x21CE9F490](0xD000000000000022, 0x8000000217083D60);
      result = sub_21700F584();
      __break(1u);
      return result;
    case 5u:
      sub_216DD9F00();
      v59 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v59;
      v23 = *(v59 + 8);
      v24 = &unk_27CAC9580;
      v25 = &unk_21705FE70;
      goto LABEL_17;
    case 6u:
      sub_216DD9F00();
      v58 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v45 = *v58;
      v46 = *(v58 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9578, &qword_21705FE68);
      swift_allocObject();
      v47 = v76;

      v49 = &qword_27CAB8EF0;
      v50 = qword_217024020;
      v51 = type metadata accessor for TasteStateChangePublisher;
      goto LABEL_15;
    case 7u:
      sub_216DD9F00();
      v41 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v41;
      v23 = *(v41 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9560, &qword_21705FE50);
      v42 = swift_allocObject();
      v43 = v42;
      *(v42 + 16) = 0;
      *(v42 + 24) = 0;
      *(v42 + 120) = 0;
      goto LABEL_18;
    case 8u:
      sub_216DD9F00();
      v52 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v53 = *v52;
      v54 = *(v52 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9558, &qword_21705FE48);
      swift_allocObject();
      v55 = v76;

      v30 = sub_216DC1738(v77, v55, v53, v54);
      goto LABEL_24;
    case 9u:
      sub_216DD9F00();
      v32 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v33 = *v32;
      v34 = *(v32 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9550, &qword_21705FE40);
      swift_allocObject();
      v35 = v76;

      v36 = type metadata accessor for PlaylistCollaboratorsRefreshProvider;
      goto LABEL_23;
    case 0xAu:
      sub_216DD9F00();
      v57 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v57;
      v23 = *(v57 + 8);
      v24 = &unk_27CAC9548;
      v25 = &unk_21705FE38;
      goto LABEL_17;
    case 0xBu:
      sub_216DD9F00();
      v31 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v31;
      v23 = *(v31 + 8);
      v24 = &unk_27CAC9540;
      v25 = &unk_21705FE30;
      goto LABEL_17;
    case 0xCu:
      sub_216DD9F00();
      v56 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v56;
      v23 = *(v56 + 8);
      v24 = &unk_27CAC9538;
      v25 = &unk_21705FE28;
      goto LABEL_17;
    case 0xDu:
      sub_216DD9F00();
      v21 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = &unk_27CAC9530;
      v25 = &unk_21705FE20;
LABEL_17:
      __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
      v42 = swift_allocObject();
      v43 = v42;
      *(v42 + 16) = 0;
      *(v42 + 24) = 0;
LABEL_18:
      *(v42 + 112) = 0;
      v60 = v77[1];
      *(v42 + 32) = v77[0];
      *(v42 + 48) = v60;
      *(v42 + 64) = v78[0];
      *(v42 + 73) = *(v78 + 9);
      *(v42 + 96) = v22;
      *(v42 + 104) = v23;
      goto LABEL_25;
    case 0xEu:
      sub_216DD9F00();
      v26 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v27 = *v26;
      v28 = *(v26 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9518, &qword_21705FE08);
      swift_allocObject();
      v29 = v76;

      v30 = sub_216DD34B4(v77, v29, v27, v28);
      goto LABEL_24;
    case 0xFu:
      sub_216DD9F00();
      v44 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v45 = *v44;
      v46 = *(v44 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9520, &qword_21705FE10);
      swift_allocObject();
      v47 = v76;

      v49 = &qword_27CABCD60;
      v50 = &unk_21705EF20;
      v51 = type metadata accessor for UserSocialProfileCoordinator;
LABEL_15:
      sub_216DD3154(v77, v45, v46, v47, v49, v50, v51, v48, v75, v76);
      goto LABEL_24;
    case 0x10u:
      sub_216DD9F00();
      v64 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v65 = *v64;
      v66 = *(v64 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9528, &qword_21705FE18);
      swift_allocObject();
      v67 = v76;

      sub_216CE267C(v77, v65, v66, v67, v68, v69, v70, v71, v75, v76);
      goto LABEL_24;
    case 0x11u:
      sub_216DD9F00();
      v37 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v38 = *v37;
      v39 = *(v37 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9570, &qword_21705FE60);
      swift_allocObject();
      v40 = v76;

      v30 = sub_216CDFA58(v77, v38, v39, v40);
      goto LABEL_24;
    case 0x12u:
      sub_216DD9F00();
      v72 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v33 = *v72;
      v34 = *(v72 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9500, &qword_21705FDF0);
      swift_allocObject();
      v35 = v76;

      v36 = _s18HighlightsProviderCMa;
LABEL_23:
      v30 = sub_216DC1A2C(v77, v35, v33, v34, v36);
LABEL_24:
      v43 = v30;
LABEL_25:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC08C8, &qword_21705FDD0);
      v19 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9508, &qword_21705FDF8);
      v73 = swift_allocObject();
      *(v73 + 16) = v43;
      *(v19 + 16) = v73;
      break;
    default:
      (*(v8 + 32))(v13, v16, v7);
      sub_216DD9F00();
      (*(v8 + 16))(v10, v13, v7);
      type metadata accessor for MusicEvent(0);
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9568, &qword_21705FE58);
      swift_allocObject();
      sub_216DD2E14();
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC08C8, &qword_21705FDD0);
      v19 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC94F8, &qword_21705FDE8);
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *(v19 + 16) = v20;
LABEL_20:
      (*(v8 + 8))(v13, v7);
      break;
  }

  return v19;
}

uint64_t sub_216CE6A60(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v47 - v5;
  v7 = sub_2170061E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  v14 = type metadata accessor for MusicEvent.Event(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DDA0A0(v2, v16);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB8C0, &qword_21705EE80);
      (*(v8 + 32))(v13, v16, v7);
      sub_216DD9B04();
      sub_216DD9F00();
      (*(v8 + 16))(v10, v13, v7);
      type metadata accessor for MusicEvent(0);
      sub_216DD9F00();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9290, &qword_21705F960);
      swift_allocObject();
      sub_216DD2D40();
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9228, &qword_21705F8F8);
      v19 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9230, &qword_21705F900);
      v36 = swift_allocObject();
      *(v36 + 16) = v35;
      *(v19 + 16) = v36;
      sub_2166997CC(v6, &qword_27CAB74E8, &qword_217030A40);
      goto LABEL_20;
    case 2u:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9238, &qword_21705F908);
      swift_allocObject();

      sub_216CDF280();
      goto LABEL_24;
    case 3u:
    case 4u:
      __src[0] = 0;
      __src[1] = 0xE000000000000000;
      sub_21700F3B4();
      MEMORY[0x21CE9F490](39, 0xE100000000000000);
      type metadata accessor for MusicEvent(0);
      sub_21700F544();
      MEMORY[0x21CE9F490](0xD000000000000022, 0x8000000217083D60);
      result = sub_21700F584();
      __break(1u);
      return result;
    case 5u:
      sub_216DD9F00();
      v33 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v33;
      v23 = *(v33 + 8);
      v24 = &unk_27CAC92B0;
      v25 = &unk_21705F980;
      goto LABEL_17;
    case 6u:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC92A8, &qword_21705F978);
      swift_allocObject();

      goto LABEL_15;
    case 7u:
      sub_216DD9F00();
      v28 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v28;
      v23 = *(v28 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9288, &qword_21705F958);
      v29 = swift_allocObject();
      v30 = v29;
      v29[2] = 0;
      v29[3] = 0;
      v29[17] = 0;
      goto LABEL_18;
    case 8u:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9280, &qword_21705F950);
      swift_allocObject();

      sub_216DC16C0();
      goto LABEL_24;
    case 9u:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9278, &qword_21705F948);
      swift_allocObject();

      goto LABEL_23;
    case 0xAu:
      sub_216DD9F00();
      v32 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v32;
      v23 = *(v32 + 8);
      v24 = &unk_27CAC9270;
      v25 = &unk_21705F940;
      goto LABEL_17;
    case 0xBu:
      sub_216DD9F00();
      v27 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v27;
      v23 = *(v27 + 8);
      v24 = &unk_27CAC9268;
      v25 = &unk_21705F938;
      goto LABEL_17;
    case 0xCu:
      sub_216DD9F00();
      v31 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v31;
      v23 = *(v31 + 8);
      v24 = &unk_27CAC9260;
      v25 = &unk_21705F930;
      goto LABEL_17;
    case 0xDu:
      sub_216DD9F00();
      v21 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = &unk_27CAC9258;
      v25 = &unk_21705F928;
LABEL_17:
      __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
      v29 = swift_allocObject();
      v30 = v29;
      v29[2] = 0;
      v29[3] = 0;
LABEL_18:
      v29[16] = 0;
      memcpy(v29 + 4, __src, 0x50uLL);
      v30[14] = v22;
      *(v30 + 120) = v23;
      goto LABEL_25;
    case 0xEu:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9240, &qword_21705F910);
      swift_allocObject();

      sub_216DD3430();
      goto LABEL_24;
    case 0xFu:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9248, &qword_21705F918);
      swift_allocObject();

LABEL_15:
      sub_216DD30B0();
      goto LABEL_24;
    case 0x10u:
      sub_216DD9F00();
      v37 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v38 = *v37;
      v39 = *(v37 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9250, &qword_21705F920);
      swift_allocObject();
      v40 = v48;

      sub_216CE252C(__src, v38, v39, v40, v41, v42, v43, v44, v47, v48);
      goto LABEL_24;
    case 0x11u:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC92A0, &qword_21705F970);
      swift_allocObject();

      sub_216CDF9B8();
      goto LABEL_24;
    case 0x12u:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9220, &qword_21705F8F0);
      swift_allocObject();

LABEL_23:
      sub_216DC19CC();
LABEL_24:
      v30 = v26;
LABEL_25:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9228, &qword_21705F8F8);
      v19 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9230, &qword_21705F900);
      v45 = swift_allocObject();
      *(v45 + 16) = v30;
      *(v19 + 16) = v45;
      break;
    default:
      (*(v8 + 32))(v13, v16, v7);
      sub_216DD9F00();
      (*(v8 + 16))(v10, v13, v7);
      type metadata accessor for MusicEvent(0);
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9290, &qword_21705F960);
      swift_allocObject();
      sub_216DD2D40();
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9228, &qword_21705F8F8);
      v19 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9298, &qword_21705F968);
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *(v19 + 16) = v20;
LABEL_20:
      (*(v8 + 8))(v13, v7);
      break;
  }

  return v19;
}

uint64_t sub_216CE76B8(uint64_t a1, uint64_t a2)
{
  v76 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v75 - v5;
  v7 = sub_2170061E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v75 - v12;
  v14 = type metadata accessor for MusicEvent.Event(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DDA0A0(v2, v16);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB8C0, &qword_21705EE80);
      (*(v8 + 32))(v13, v16, v7);
      sub_216DD9B04();
      sub_216DD9F00();
      (*(v8 + 16))(v10, v13, v7);
      type metadata accessor for MusicEvent(0);
      sub_216DD9F00();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC93B0, &qword_21705FB38);
      swift_allocObject();
      sub_216DD2E14();
      v62 = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0890, &unk_217039E90);
      v19 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9350, &qword_21705FAD8);
      v63 = swift_allocObject();
      *(v63 + 16) = v62;
      *(v19 + 16) = v63;
      sub_2166997CC(v6, &qword_27CAB74E8, &qword_217030A40);
      goto LABEL_20;
    case 2u:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9358, &qword_21705FAE0);
      swift_allocObject();

      sub_216CDF3A8();
      goto LABEL_24;
    case 3u:
    case 4u:
      *&v77[0] = 0;
      *(&v77[0] + 1) = 0xE000000000000000;
      sub_21700F3B4();
      MEMORY[0x21CE9F490](39, 0xE100000000000000);
      type metadata accessor for MusicEvent(0);
      sub_21700F544();
      MEMORY[0x21CE9F490](0xD000000000000022, 0x8000000217083D60);
      result = sub_21700F584();
      __break(1u);
      return result;
    case 5u:
      sub_216DD9F00();
      v59 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v59;
      v23 = *(v59 + 8);
      v24 = &unk_27CAC93C8;
      v25 = &unk_21705FB50;
      goto LABEL_17;
    case 6u:
      sub_216DD9F00();
      v58 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v45 = *v58;
      v46 = *(v58 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC93C0, &qword_21705FB48);
      swift_allocObject();
      v47 = v76;

      v49 = &qword_27CAB8EF0;
      v50 = qword_217024020;
      v51 = type metadata accessor for TasteStateChangePublisher;
      goto LABEL_15;
    case 7u:
      sub_216DD9F00();
      v41 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v41;
      v23 = *(v41 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC93A8, &qword_21705FB30);
      v42 = swift_allocObject();
      v43 = v42;
      *(v42 + 16) = 0;
      *(v42 + 24) = 0;
      *(v42 + 120) = 0;
      goto LABEL_18;
    case 8u:
      sub_216DD9F00();
      v52 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v53 = *v52;
      v54 = *(v52 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC93A0, &qword_21705FB28);
      swift_allocObject();
      v55 = v76;

      v30 = sub_216DC1738(v77, v55, v53, v54);
      goto LABEL_24;
    case 9u:
      sub_216DD9F00();
      v32 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v33 = *v32;
      v34 = *(v32 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9398, &qword_21705FB20);
      swift_allocObject();
      v35 = v76;

      v36 = type metadata accessor for PlaylistCollaboratorsRefreshProvider;
      goto LABEL_23;
    case 0xAu:
      sub_216DD9F00();
      v57 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v57;
      v23 = *(v57 + 8);
      v24 = &unk_27CAC9390;
      v25 = &unk_21705FB18;
      goto LABEL_17;
    case 0xBu:
      sub_216DD9F00();
      v31 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v31;
      v23 = *(v31 + 8);
      v24 = &unk_27CAC9388;
      v25 = &unk_21705FB10;
      goto LABEL_17;
    case 0xCu:
      sub_216DD9F00();
      v56 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v56;
      v23 = *(v56 + 8);
      v24 = &unk_27CAC9380;
      v25 = &unk_21705FB08;
      goto LABEL_17;
    case 0xDu:
      sub_216DD9F00();
      v21 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = &unk_27CAC9378;
      v25 = &unk_21705FB00;
LABEL_17:
      __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
      v42 = swift_allocObject();
      v43 = v42;
      *(v42 + 16) = 0;
      *(v42 + 24) = 0;
LABEL_18:
      *(v42 + 112) = 0;
      v60 = v77[1];
      *(v42 + 32) = v77[0];
      *(v42 + 48) = v60;
      *(v42 + 64) = v78[0];
      *(v42 + 73) = *(v78 + 9);
      *(v42 + 96) = v22;
      *(v42 + 104) = v23;
      goto LABEL_25;
    case 0xEu:
      sub_216DD9F00();
      v26 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v27 = *v26;
      v28 = *(v26 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9360, &qword_21705FAE8);
      swift_allocObject();
      v29 = v76;

      v30 = sub_216DD34B4(v77, v29, v27, v28);
      goto LABEL_24;
    case 0xFu:
      sub_216DD9F00();
      v44 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v45 = *v44;
      v46 = *(v44 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9368, &qword_21705FAF0);
      swift_allocObject();
      v47 = v76;

      v49 = &qword_27CABCD60;
      v50 = &unk_21705EF20;
      v51 = type metadata accessor for UserSocialProfileCoordinator;
LABEL_15:
      sub_216DD3154(v77, v45, v46, v47, v49, v50, v51, v48, v75, v76);
      goto LABEL_24;
    case 0x10u:
      sub_216DD9F00();
      v64 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v65 = *v64;
      v66 = *(v64 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9370, &qword_21705FAF8);
      swift_allocObject();
      v67 = v76;

      sub_216CE267C(v77, v65, v66, v67, v68, v69, v70, v71, v75, v76);
      goto LABEL_24;
    case 0x11u:
      sub_216DD9F00();
      v37 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v38 = *v37;
      v39 = *(v37 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC93B8, &qword_21705FB40);
      swift_allocObject();
      v40 = v76;

      v30 = sub_216CDFA58(v77, v38, v39, v40);
      goto LABEL_24;
    case 0x12u:
      sub_216DD9F00();
      v72 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v33 = *v72;
      v34 = *(v72 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9348, &qword_21705FAD0);
      swift_allocObject();
      v35 = v76;

      v36 = _s18HighlightsProviderCMa;
LABEL_23:
      v30 = sub_216DC1A2C(v77, v35, v33, v34, v36);
LABEL_24:
      v43 = v30;
LABEL_25:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0890, &unk_217039E90);
      v19 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9350, &qword_21705FAD8);
      v73 = swift_allocObject();
      *(v73 + 16) = v43;
      *(v19 + 16) = v73;
      break;
    default:
      (*(v8 + 32))(v13, v16, v7);
      sub_216DD9F00();
      (*(v8 + 16))(v10, v13, v7);
      type metadata accessor for MusicEvent(0);
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC93B0, &qword_21705FB38);
      swift_allocObject();
      sub_216DD2E14();
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0890, &unk_217039E90);
      v19 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9340, &qword_21705FAC8);
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *(v19 + 16) = v20;
LABEL_20:
      (*(v8 + 8))(v13, v7);
      break;
  }

  return v19;
}

uint64_t sub_216CE8318(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v47 - v5;
  v7 = sub_2170061E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  v14 = type metadata accessor for MusicEvent.Event(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DDA0A0(v2, v16);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB8C0, &qword_21705EE80);
      (*(v8 + 32))(v13, v16, v7);
      sub_216DD9B04();
      sub_216DD9F00();
      (*(v8 + 16))(v10, v13, v7);
      type metadata accessor for MusicEvent(0);
      sub_216DD9F00();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9058, &qword_21705F510);
      swift_allocObject();
      sub_216DD2D40();
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8FF0, &qword_21705F4A8);
      v19 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8FF8, &qword_21705F4B0);
      v36 = swift_allocObject();
      *(v36 + 16) = v35;
      *(v19 + 16) = v36;
      sub_2166997CC(v6, &qword_27CAB74E8, &qword_217030A40);
      goto LABEL_20;
    case 2u:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9000, &qword_21705F4B8);
      swift_allocObject();

      sub_216CDF280();
      goto LABEL_24;
    case 3u:
    case 4u:
      __src[0] = 0;
      __src[1] = 0xE000000000000000;
      sub_21700F3B4();
      MEMORY[0x21CE9F490](39, 0xE100000000000000);
      type metadata accessor for MusicEvent(0);
      sub_21700F544();
      MEMORY[0x21CE9F490](0xD000000000000022, 0x8000000217083D60);
      result = sub_21700F584();
      __break(1u);
      return result;
    case 5u:
      sub_216DD9F00();
      v33 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v33;
      v23 = *(v33 + 8);
      v24 = &unk_27CAC9078;
      v25 = &unk_21705F530;
      goto LABEL_17;
    case 6u:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9070, &qword_21705F528);
      swift_allocObject();

      goto LABEL_15;
    case 7u:
      sub_216DD9F00();
      v28 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v28;
      v23 = *(v28 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9050, &qword_21705F508);
      v29 = swift_allocObject();
      v30 = v29;
      v29[2] = 0;
      v29[3] = 0;
      v29[17] = 0;
      goto LABEL_18;
    case 8u:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9048, &qword_21705F500);
      swift_allocObject();

      sub_216DC16C0();
      goto LABEL_24;
    case 9u:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9040, &qword_21705F4F8);
      swift_allocObject();

      goto LABEL_23;
    case 0xAu:
      sub_216DD9F00();
      v32 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v32;
      v23 = *(v32 + 8);
      v24 = &unk_27CAC9038;
      v25 = &unk_21705F4F0;
      goto LABEL_17;
    case 0xBu:
      sub_216DD9F00();
      v27 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v27;
      v23 = *(v27 + 8);
      v24 = &unk_27CAC9030;
      v25 = &unk_21705F4E8;
      goto LABEL_17;
    case 0xCu:
      sub_216DD9F00();
      v31 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v31;
      v23 = *(v31 + 8);
      v24 = &unk_27CAC9028;
      v25 = &unk_21705F4E0;
      goto LABEL_17;
    case 0xDu:
      sub_216DD9F00();
      v21 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = &unk_27CAC9020;
      v25 = &unk_21705F4D8;
LABEL_17:
      __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
      v29 = swift_allocObject();
      v30 = v29;
      v29[2] = 0;
      v29[3] = 0;
LABEL_18:
      v29[16] = 0;
      memcpy(v29 + 4, __src, 0x50uLL);
      v30[14] = v22;
      *(v30 + 120) = v23;
      goto LABEL_25;
    case 0xEu:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9008, &qword_21705F4C0);
      swift_allocObject();

      sub_216DD3430();
      goto LABEL_24;
    case 0xFu:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9010, &qword_21705F4C8);
      swift_allocObject();

LABEL_15:
      sub_216DD30B0();
      goto LABEL_24;
    case 0x10u:
      sub_216DD9F00();
      v37 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v38 = *v37;
      v39 = *(v37 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9018, &qword_21705F4D0);
      swift_allocObject();
      v40 = v48;

      sub_216CE252C(__src, v38, v39, v40, v41, v42, v43, v44, v47, v48);
      goto LABEL_24;
    case 0x11u:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9068, &qword_21705F520);
      swift_allocObject();

      sub_216CDF9B8();
      goto LABEL_24;
    case 0x12u:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8FE8, &qword_21705F4A0);
      swift_allocObject();

LABEL_23:
      sub_216DC19CC();
LABEL_24:
      v30 = v26;
LABEL_25:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8FF0, &qword_21705F4A8);
      v19 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8FF8, &qword_21705F4B0);
      v45 = swift_allocObject();
      *(v45 + 16) = v30;
      *(v19 + 16) = v45;
      break;
    default:
      (*(v8 + 32))(v13, v16, v7);
      sub_216DD9F00();
      (*(v8 + 16))(v10, v13, v7);
      type metadata accessor for MusicEvent(0);
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9058, &qword_21705F510);
      swift_allocObject();
      sub_216DD2D40();
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8FF0, &qword_21705F4A8);
      v19 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9060, &qword_21705F518);
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *(v19 + 16) = v20;
LABEL_20:
      (*(v8 + 8))(v13, v7);
      break;
  }

  return v19;
}

uint64_t sub_216CE8F70(uint64_t a1, uint64_t a2)
{
  v76 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v75 - v5;
  v7 = sub_2170061E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v75 - v12;
  v14 = type metadata accessor for MusicEvent.Event(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DDA0A0(v2, v16);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB8C0, &qword_21705EE80);
      (*(v8 + 32))(v13, v16, v7);
      sub_216DD9B04();
      sub_216DD9F00();
      (*(v8 + 16))(v10, v13, v7);
      type metadata accessor for MusicEvent(0);
      sub_216DD9F00();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8FC0, &qword_21705F478);
      swift_allocObject();
      sub_216DD2E14();
      v62 = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0870, &unk_217039E60);
      v19 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8F60, &qword_21705F418);
      v63 = swift_allocObject();
      *(v63 + 16) = v62;
      *(v19 + 16) = v63;
      sub_2166997CC(v6, &qword_27CAB74E8, &qword_217030A40);
      goto LABEL_20;
    case 2u:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8F68, &qword_21705F420);
      swift_allocObject();

      sub_216CDF3A8();
      goto LABEL_24;
    case 3u:
    case 4u:
      *&v77[0] = 0;
      *(&v77[0] + 1) = 0xE000000000000000;
      sub_21700F3B4();
      MEMORY[0x21CE9F490](39, 0xE100000000000000);
      type metadata accessor for MusicEvent(0);
      sub_21700F544();
      MEMORY[0x21CE9F490](0xD000000000000022, 0x8000000217083D60);
      result = sub_21700F584();
      __break(1u);
      return result;
    case 5u:
      sub_216DD9F00();
      v59 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v59;
      v23 = *(v59 + 8);
      v24 = &unk_27CAC8FD8;
      v25 = &unk_21705F490;
      goto LABEL_17;
    case 6u:
      sub_216DD9F00();
      v58 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v45 = *v58;
      v46 = *(v58 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8FD0, &qword_21705F488);
      swift_allocObject();
      v47 = v76;

      v49 = &qword_27CAB8EF0;
      v50 = qword_217024020;
      v51 = type metadata accessor for TasteStateChangePublisher;
      goto LABEL_15;
    case 7u:
      sub_216DD9F00();
      v41 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v41;
      v23 = *(v41 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8FB8, &qword_21705F470);
      v42 = swift_allocObject();
      v43 = v42;
      *(v42 + 16) = 0;
      *(v42 + 24) = 0;
      *(v42 + 120) = 0;
      goto LABEL_18;
    case 8u:
      sub_216DD9F00();
      v52 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v53 = *v52;
      v54 = *(v52 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8FB0, &qword_21705F468);
      swift_allocObject();
      v55 = v76;

      v30 = sub_216DC1738(v77, v55, v53, v54);
      goto LABEL_24;
    case 9u:
      sub_216DD9F00();
      v32 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v33 = *v32;
      v34 = *(v32 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8FA8, &qword_21705F460);
      swift_allocObject();
      v35 = v76;

      v36 = type metadata accessor for PlaylistCollaboratorsRefreshProvider;
      goto LABEL_23;
    case 0xAu:
      sub_216DD9F00();
      v57 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v57;
      v23 = *(v57 + 8);
      v24 = &unk_27CAC8FA0;
      v25 = &unk_21705F458;
      goto LABEL_17;
    case 0xBu:
      sub_216DD9F00();
      v31 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v31;
      v23 = *(v31 + 8);
      v24 = &unk_27CAC8F98;
      v25 = &unk_21705F450;
      goto LABEL_17;
    case 0xCu:
      sub_216DD9F00();
      v56 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v56;
      v23 = *(v56 + 8);
      v24 = &unk_27CAC8F90;
      v25 = &unk_21705F448;
      goto LABEL_17;
    case 0xDu:
      sub_216DD9F00();
      v21 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = &unk_27CAC8F88;
      v25 = &unk_21705F440;
LABEL_17:
      __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
      v42 = swift_allocObject();
      v43 = v42;
      *(v42 + 16) = 0;
      *(v42 + 24) = 0;
LABEL_18:
      *(v42 + 112) = 0;
      v60 = v77[1];
      *(v42 + 32) = v77[0];
      *(v42 + 48) = v60;
      *(v42 + 64) = v78[0];
      *(v42 + 73) = *(v78 + 9);
      *(v42 + 96) = v22;
      *(v42 + 104) = v23;
      goto LABEL_25;
    case 0xEu:
      sub_216DD9F00();
      v26 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v27 = *v26;
      v28 = *(v26 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8F70, &qword_21705F428);
      swift_allocObject();
      v29 = v76;

      v30 = sub_216DD34B4(v77, v29, v27, v28);
      goto LABEL_24;
    case 0xFu:
      sub_216DD9F00();
      v44 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v45 = *v44;
      v46 = *(v44 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8F78, &qword_21705F430);
      swift_allocObject();
      v47 = v76;

      v49 = &qword_27CABCD60;
      v50 = &unk_21705EF20;
      v51 = type metadata accessor for UserSocialProfileCoordinator;
LABEL_15:
      sub_216DD3154(v77, v45, v46, v47, v49, v50, v51, v48, v75, v76);
      goto LABEL_24;
    case 0x10u:
      sub_216DD9F00();
      v64 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v65 = *v64;
      v66 = *(v64 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8F80, &qword_21705F438);
      swift_allocObject();
      v67 = v76;

      sub_216CE267C(v77, v65, v66, v67, v68, v69, v70, v71, v75, v76);
      goto LABEL_24;
    case 0x11u:
      sub_216DD9F00();
      v37 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v38 = *v37;
      v39 = *(v37 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8FC8, &qword_21705F480);
      swift_allocObject();
      v40 = v76;

      v30 = sub_216CDFA58(v77, v38, v39, v40);
      goto LABEL_24;
    case 0x12u:
      sub_216DD9F00();
      v72 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v33 = *v72;
      v34 = *(v72 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8F58, &qword_21705F410);
      swift_allocObject();
      v35 = v76;

      v36 = _s18HighlightsProviderCMa;
LABEL_23:
      v30 = sub_216DC1A2C(v77, v35, v33, v34, v36);
LABEL_24:
      v43 = v30;
LABEL_25:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0870, &unk_217039E60);
      v19 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8F60, &qword_21705F418);
      v73 = swift_allocObject();
      *(v73 + 16) = v43;
      *(v19 + 16) = v73;
      break;
    default:
      (*(v8 + 32))(v13, v16, v7);
      sub_216DD9F00();
      (*(v8 + 16))(v10, v13, v7);
      type metadata accessor for MusicEvent(0);
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8FC0, &qword_21705F478);
      swift_allocObject();
      sub_216DD2E14();
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0870, &unk_217039E60);
      v19 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8F50, &qword_21705F408);
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *(v19 + 16) = v20;
LABEL_20:
      (*(v8 + 8))(v13, v7);
      break;
  }

  return v19;
}

uint64_t sub_216CE9BD0(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v47 - v5;
  v7 = sub_2170061E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  v14 = type metadata accessor for MusicEvent.Event(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DDA0A0(v2, v16);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB8C0, &qword_21705EE80);
      (*(v8 + 32))(v13, v16, v7);
      sub_216DD9B04();
      sub_216DD9F00();
      (*(v8 + 16))(v10, v13, v7);
      type metadata accessor for MusicEvent(0);
      sub_216DD9F00();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9830, &qword_2170602F0);
      swift_allocObject();
      sub_216DD2D40();
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC97C8, &qword_217060288);
      v19 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC97D0, &qword_217060290);
      v36 = swift_allocObject();
      *(v36 + 16) = v35;
      *(v19 + 16) = v36;
      sub_2166997CC(v6, &qword_27CAB74E8, &qword_217030A40);
      goto LABEL_20;
    case 2u:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC97D8, &qword_217060298);
      swift_allocObject();

      sub_216CDF280();
      goto LABEL_24;
    case 3u:
    case 4u:
      __src[0] = 0;
      __src[1] = 0xE000000000000000;
      sub_21700F3B4();
      MEMORY[0x21CE9F490](39, 0xE100000000000000);
      type metadata accessor for MusicEvent(0);
      sub_21700F544();
      MEMORY[0x21CE9F490](0xD000000000000022, 0x8000000217083D60);
      result = sub_21700F584();
      __break(1u);
      return result;
    case 5u:
      sub_216DD9F00();
      v33 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v33;
      v23 = *(v33 + 8);
      v24 = &unk_27CAC9850;
      v25 = &unk_217060310;
      goto LABEL_17;
    case 6u:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9848, &qword_217060308);
      swift_allocObject();

      goto LABEL_15;
    case 7u:
      sub_216DD9F00();
      v28 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v28;
      v23 = *(v28 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9828, &qword_2170602E8);
      v29 = swift_allocObject();
      v30 = v29;
      v29[2] = 0;
      v29[3] = 0;
      v29[17] = 0;
      goto LABEL_18;
    case 8u:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9820, &qword_2170602E0);
      swift_allocObject();

      sub_216DC16C0();
      goto LABEL_24;
    case 9u:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9818, &qword_2170602D8);
      swift_allocObject();

      goto LABEL_23;
    case 0xAu:
      sub_216DD9F00();
      v32 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v32;
      v23 = *(v32 + 8);
      v24 = &unk_27CAC9810;
      v25 = &unk_2170602D0;
      goto LABEL_17;
    case 0xBu:
      sub_216DD9F00();
      v27 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v27;
      v23 = *(v27 + 8);
      v24 = &unk_27CAC9808;
      v25 = &unk_2170602C8;
      goto LABEL_17;
    case 0xCu:
      sub_216DD9F00();
      v31 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v31;
      v23 = *(v31 + 8);
      v24 = &unk_27CAC9800;
      v25 = &unk_2170602C0;
      goto LABEL_17;
    case 0xDu:
      sub_216DD9F00();
      v21 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = &unk_27CAC97F8;
      v25 = &unk_2170602B8;
LABEL_17:
      __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
      v29 = swift_allocObject();
      v30 = v29;
      v29[2] = 0;
      v29[3] = 0;
LABEL_18:
      v29[16] = 0;
      memcpy(v29 + 4, __src, 0x50uLL);
      v30[14] = v22;
      *(v30 + 120) = v23;
      goto LABEL_25;
    case 0xEu:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC97E0, &qword_2170602A0);
      swift_allocObject();

      sub_216DD3430();
      goto LABEL_24;
    case 0xFu:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC97E8, &qword_2170602A8);
      swift_allocObject();

LABEL_15:
      sub_216DD30B0();
      goto LABEL_24;
    case 0x10u:
      sub_216DD9F00();
      v37 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v38 = *v37;
      v39 = *(v37 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC97F0, &qword_2170602B0);
      swift_allocObject();
      v40 = v48;

      sub_216CE252C(__src, v38, v39, v40, v41, v42, v43, v44, v47, v48);
      goto LABEL_24;
    case 0x11u:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9840, &qword_217060300);
      swift_allocObject();

      sub_216CDF9B8();
      goto LABEL_24;
    case 0x12u:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC97C0, &qword_217060280);
      swift_allocObject();

LABEL_23:
      sub_216DC19CC();
LABEL_24:
      v30 = v26;
LABEL_25:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC97C8, &qword_217060288);
      v19 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC97D0, &qword_217060290);
      v45 = swift_allocObject();
      *(v45 + 16) = v30;
      *(v19 + 16) = v45;
      break;
    default:
      (*(v8 + 32))(v13, v16, v7);
      sub_216DD9F00();
      (*(v8 + 16))(v10, v13, v7);
      type metadata accessor for MusicEvent(0);
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9830, &qword_2170602F0);
      swift_allocObject();
      sub_216DD2D40();
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC97C8, &qword_217060288);
      v19 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9838, &qword_2170602F8);
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *(v19 + 16) = v20;
LABEL_20:
      (*(v8 + 8))(v13, v7);
      break;
  }

  return v19;
}

uint64_t sub_216CEA828(uint64_t a1, uint64_t a2)
{
  v76 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v75 - v5;
  v7 = sub_2170061E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v75 - v12;
  v14 = type metadata accessor for MusicEvent.Event(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DDA0A0(v2, v16);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB8C0, &qword_21705EE80);
      (*(v8 + 32))(v13, v16, v7);
      sub_216DD9B04();
      sub_216DD9F00();
      (*(v8 + 16))(v10, v13, v7);
      type metadata accessor for MusicEvent(0);
      sub_216DD9F00();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9798, &qword_217060258);
      swift_allocObject();
      sub_216DD2E14();
      v62 = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC08D8, &qword_217039F38);
      v19 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9738, &qword_2170601F8);
      v63 = swift_allocObject();
      *(v63 + 16) = v62;
      *(v19 + 16) = v63;
      sub_2166997CC(v6, &qword_27CAB74E8, &qword_217030A40);
      goto LABEL_20;
    case 2u:
      sub_216DD9F00();
      type metadata accessor for MusicEvent(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9740, &qword_217060200);
      swift_allocObject();

      sub_216CDF3A8();
      goto LABEL_24;
    case 3u:
    case 4u:
      *&v77[0] = 0;
      *(&v77[0] + 1) = 0xE000000000000000;
      sub_21700F3B4();
      MEMORY[0x21CE9F490](39, 0xE100000000000000);
      type metadata accessor for MusicEvent(0);
      sub_21700F544();
      MEMORY[0x21CE9F490](0xD000000000000022, 0x8000000217083D60);
      result = sub_21700F584();
      __break(1u);
      return result;
    case 5u:
      sub_216DD9F00();
      v59 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v59;
      v23 = *(v59 + 8);
      v24 = &unk_27CAC97B0;
      v25 = &unk_217060270;
      goto LABEL_17;
    case 6u:
      sub_216DD9F00();
      v58 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v45 = *v58;
      v46 = *(v58 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC97A8, &qword_217060268);
      swift_allocObject();
      v47 = v76;

      v49 = &qword_27CAB8EF0;
      v50 = qword_217024020;
      v51 = type metadata accessor for TasteStateChangePublisher;
      goto LABEL_15;
    case 7u:
      sub_216DD9F00();
      v41 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v41;
      v23 = *(v41 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9790, &qword_217060250);
      v42 = swift_allocObject();
      v43 = v42;
      *(v42 + 16) = 0;
      *(v42 + 24) = 0;
      *(v42 + 120) = 0;
      goto LABEL_18;
    case 8u:
      sub_216DD9F00();
      v52 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v53 = *v52;
      v54 = *(v52 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9788, &qword_217060248);
      swift_allocObject();
      v55 = v76;

      v30 = sub_216DC1738(v77, v55, v53, v54);
      goto LABEL_24;
    case 9u:
      sub_216DD9F00();
      v32 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v33 = *v32;
      v34 = *(v32 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9780, &qword_217060240);
      swift_allocObject();
      v35 = v76;

      v36 = type metadata accessor for PlaylistCollaboratorsRefreshProvider;
      goto LABEL_23;
    case 0xAu:
      sub_216DD9F00();
      v57 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v57;
      v23 = *(v57 + 8);
      v24 = &unk_27CAC9778;
      v25 = &unk_217060238;
      goto LABEL_17;
    case 0xBu:
      sub_216DD9F00();
      v31 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v31;
      v23 = *(v31 + 8);
      v24 = &unk_27CAC9770;
      v25 = &unk_217060230;
      goto LABEL_17;
    case 0xCu:
      sub_216DD9F00();
      v56 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v56;
      v23 = *(v56 + 8);
      v24 = &unk_27CAC9768;
      v25 = &unk_217060228;
      goto LABEL_17;
    case 0xDu:
      sub_216DD9F00();
      v21 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = &unk_27CAC9760;
      v25 = &unk_217060220;
LABEL_17:
      __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
      v42 = swift_allocObject();
      v43 = v42;
      *(v42 + 16) = 0;
      *(v42 + 24) = 0;
LABEL_18:
      *(v42 + 112) = 0;
      v60 = v77[1];
      *(v42 + 32) = v77[0];
      *(v42 + 48) = v60;
      *(v42 + 64) = v78[0];
      *(v42 + 73) = *(v78 + 9);
      *(v42 + 96) = v22;
      *(v42 + 104) = v23;
      goto LABEL_25;
    case 0xEu:
      sub_216DD9F00();
      v26 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v27 = *v26;
      v28 = *(v26 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9748, &qword_217060208);
      swift_allocObject();
      v29 = v76;

      v30 = sub_216DD34B4(v77, v29, v27, v28);
      goto LABEL_24;
    case 0xFu:
      sub_216DD9F00();
      v44 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v45 = *v44;
      v46 = *(v44 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9750, &qword_217060210);
      swift_allocObject();
      v47 = v76;

      v49 = &qword_27CABCD60;
      v50 = &unk_21705EF20;
      v51 = type metadata accessor for UserSocialProfileCoordinator;
LABEL_15:
      sub_216DD3154(v77, v45, v46, v47, v49, v50, v51, v48, v75, v76);
      goto LABEL_24;
    case 0x10u:
      sub_216DD9F00();
      v64 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v65 = *v64;
      v66 = *(v64 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9758, &qword_217060218);
      swift_allocObject();
      v67 = v76;

      sub_216CE267C(v77, v65, v66, v67, v68, v69, v70, v71, v75, v76);
      goto LABEL_24;
    case 0x11u:
      sub_216DD9F00();
      v37 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v38 = *v37;
      v39 = *(v37 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC97A0, &qword_217060260);
      swift_allocObject();
      v40 = v76;

      v30 = sub_216CDFA58(v77, v38, v39, v40);
      goto LABEL_24;
    case 0x12u:
      sub_216DD9F00();
      v72 = v2 + *(type metadata accessor for MusicEvent(0) + 20);
      v33 = *v72;
      v34 = *(v72 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9730, &qword_2170601F0);
      swift_allocObject();
      v35 = v76;

      v36 = _s18HighlightsProviderCMa;
LABEL_23:
      v30 = sub_216DC1A2C(v77, v35, v33, v34, v36);
LABEL_24:
      v43 = v30;
LABEL_25:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC08D8, &qword_217039F38);
      v19 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9738, &qword_2170601F8);
      v73 = swift_allocObject();
      *(v73 + 16) = v43;
      *(v19 + 16) = v73;
      break;
    default:
      (*(v8 + 32))(v13, v16, v7);
      sub_216DD9F00();
      (*(v8 + 16))(v10, v13, v7);
      type metadata accessor for MusicEvent(0);
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9798, &qword_217060258);
      swift_allocObject();
      sub_216DD2E14();
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC08D8, &qword_217039F38);
      v19 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9728, &qword_2170601E8);
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *(v19 + 16) = v20;
LABEL_20:
      (*(v8 + 8))(v13, v7);
      break;
  }

  return v19;
}

uint64_t sub_216CEB4E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216DEA528();
  *a1 = result & 1;
  return result;
}

uint64_t sub_216CEB578(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_143();
  swift_allocObject();
  OUTLINED_FUNCTION_31_0();
  sub_21700DC34();
  *(v2 + 16) = sub_21700DC24();
  return v2;
}

uint64_t sub_216CEB5C0(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  sub_2170078C4();
  v3[19] = swift_task_alloc();
  v4 = sub_21700B774();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  v5 = sub_21700B754();
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  v6 = sub_217005EF4();
  v3[26] = v6;
  v3[27] = *(v6 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BD0, &unk_2170142B0);
  v3[33] = swift_task_alloc();
  v7 = sub_217005AB4();
  v3[34] = v7;
  v3[35] = *(v7 - 8);
  v3[36] = swift_task_alloc();
  v8 = sub_21700B864();
  v3[37] = v8;
  v3[38] = *(v8 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v9 = sub_217007C24();
  v3[41] = v9;
  v3[42] = *(v9 - 8);
  v3[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB08, &qword_217025210);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v10 = sub_217005844();
  v3[48] = v10;
  v3[49] = *(v10 - 8);
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216CEB9D8, 0, 0);
}

uint64_t sub_216CEB9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_47_23();
  if (sub_21669DAC4())
  {
    v23 = swift_task_alloc();
    v22[52] = v23;
    *v23 = v22;
    OUTLINED_FUNCTION_99_0(v23);
    OUTLINED_FUNCTION_31_4();

    return sub_216A4F6C8();
  }

  else
  {
    v26 = v22[17];
    v27 = *(type metadata accessor for NoProtoRequest(0) + 20);
    v28 = type metadata accessor for Empty(0);
    v22[53] = v28;
    v22[5] = v28;
    OUTLINED_FUNCTION_829();
    v31 = sub_2166DC484(v29, v30, &unk_217072A50);
    v22[54] = v31;
    OUTLINED_FUNCTION_101_1(v31);
    OUTLINED_FUNCTION_345();
    sub_216DDA0A0(v26, v32);
    OUTLINED_FUNCTION_1266();
    __swift_destroy_boxed_opaque_existential_1Tm(v22 + 2);
    if (v27)
    {
      OUTLINED_FUNCTION_160_1();

      OUTLINED_FUNCTION_180_1();
      OUTLINED_FUNCTION_31_4();
    }

    else
    {
      v41 = sub_21700B664();
      OUTLINED_FUNCTION_91_1(v41);
      v22[55] = MEMORY[0x21CE9C470]();
      if (qword_27CAB5BC8 != -1)
      {
        OUTLINED_FUNCTION_7_91(&qword_27CAB5BC8);
      }

      OUTLINED_FUNCTION_387();
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB10, &qword_217025220);
      v43 = __swift_project_value_buffer(v42, qword_27CB22950);
      v44 = OUTLINED_FUNCTION_943(v43);
      v46 = v45(v44);
      OUTLINED_FUNCTION_21_51(v46, "FetchDeveloperToken");
      OUTLINED_FUNCTION_1075();
      OUTLINED_FUNCTION_38_0(MEMORY[0x277CD7BB8]);
      a18 = v47;
      v48 = swift_task_alloc();
      v22[59] = v48;
      *v48 = v22;
      OUTLINED_FUNCTION_123_5(v48);
      OUTLINED_FUNCTION_31_4();
    }

    return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }
}

uint64_t sub_216CEBCA8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216CEBD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_47_23();
  v23 = v22[17];
  v24 = *(type metadata accessor for NoProtoRequest(0) + 20);
  v25 = type metadata accessor for Empty(0);
  v22[53] = v25;
  v22[5] = v25;
  OUTLINED_FUNCTION_829();
  v28 = sub_2166DC484(v26, v27, &unk_217072A50);
  v22[54] = v28;
  OUTLINED_FUNCTION_101_1(v28);
  OUTLINED_FUNCTION_345();
  sub_216DDA0A0(v23, v29);
  OUTLINED_FUNCTION_1266();
  __swift_destroy_boxed_opaque_existential_1Tm(v22 + 2);
  if (v24)
  {
    OUTLINED_FUNCTION_160_1();

    OUTLINED_FUNCTION_180_1();
    OUTLINED_FUNCTION_31_4();
  }

  else
  {
    v39 = sub_21700B664();
    OUTLINED_FUNCTION_91_1(v39);
    v22[55] = MEMORY[0x21CE9C470]();
    if (qword_27CAB5BC8 != -1)
    {
      OUTLINED_FUNCTION_7_91(&qword_27CAB5BC8);
    }

    OUTLINED_FUNCTION_387();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB10, &qword_217025220);
    v41 = __swift_project_value_buffer(v40, qword_27CB22950);
    v42 = OUTLINED_FUNCTION_943(v41);
    v44 = v43(v42);
    OUTLINED_FUNCTION_21_51(v44, "FetchDeveloperToken");
    OUTLINED_FUNCTION_1075();
    OUTLINED_FUNCTION_38_0(MEMORY[0x277CD7BB8]);
    a18 = v45;
    v46 = swift_task_alloc();
    v22[59] = v46;
    *v46 = v22;
    OUTLINED_FUNCTION_123_5(v46);
    OUTLINED_FUNCTION_31_4();
  }

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_216CEBFE0()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_725();
  OUTLINED_FUNCTION_28();
  *v4 = v3;
  v5 = v3[38];
  *v4 = *v2;
  v3[60] = v6;
  v3[61] = v1;

  v7 = (v5 + 8);
  v3[62] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8 = v3[40];
  v9 = v3[37];
  if (v1)
  {
    (*v7)(v8, v9);
  }

  else
  {
    v3[63] = v0;
    v10 = *v7;
    v3[64] = *v7;
    v10(v8, v9);
  }

  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_12_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_216CEC288()
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_420();
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *v5 = *v3;
  v4[67] = v1;

  OUTLINED_FUNCTION_1051();
  v7 = *(v6 + 512);
  v8 = v4[39];
  v9 = v4[37];
  if (!v1)
  {
    v4[68] = v0;
    v4[69] = v2;
  }

  v7(v8, v9);

  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_216CEC410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_77_2();
  v21 = *(v20 + 376);

  sub_2166997CC(v21, &qword_27CABBB08, &qword_217025210);
  v22 = OUTLINED_FUNCTION_38();
  v23(v22);
  OUTLINED_FUNCTION_320();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_59();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_216CEC804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_77_2();

  v20 = OUTLINED_FUNCTION_229();
  sub_2166997CC(v20, v21, &qword_217025210);
  v22 = OUTLINED_FUNCTION_158();
  sub_2166997CC(v22, v23, &qword_217025210);
  v24 = OUTLINED_FUNCTION_116();
  v25(v24);
  OUTLINED_FUNCTION_320();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_59();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_216CEC94C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 568) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216CECE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_77_2();
  v21 = v20[49];
  v39 = v20[48];
  v40 = v20[51];
  OUTLINED_FUNCTION_1276();

  v22 = OUTLINED_FUNCTION_44_14();
  sub_2166997CC(v22, v23, &qword_217025210);
  v24 = OUTLINED_FUNCTION_69();
  v25(v24);
  v26 = OUTLINED_FUNCTION_229();
  sub_2166997CC(v26, v27, &qword_217025210);
  v28 = OUTLINED_FUNCTION_158();
  sub_2166997CC(v28, v29, &qword_217025210);
  (*(v21 + 8))(v40, v39);
  OUTLINED_FUNCTION_320();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_59();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, v39, v40, a18, a19, a20);
}

uint64_t sub_216CECFE0(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  sub_2170078C4();
  v3[19] = swift_task_alloc();
  v4 = sub_21700B774();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  v5 = sub_21700B754();
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  v6 = sub_217005EF4();
  v3[26] = v6;
  v3[27] = *(v6 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BD0, &unk_2170142B0);
  v3[33] = swift_task_alloc();
  v7 = sub_217005AB4();
  v3[34] = v7;
  v3[35] = *(v7 - 8);
  v3[36] = swift_task_alloc();
  v8 = sub_21700B864();
  v3[37] = v8;
  v3[38] = *(v8 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v9 = sub_217007C24();
  v3[41] = v9;
  v3[42] = *(v9 - 8);
  v3[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB08, &qword_217025210);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  type metadata accessor for BaseURLRequest(0);
  v3[48] = swift_task_alloc();
  v10 = sub_217005844();
  v3[49] = v10;
  v3[50] = *(v10 - 8);
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216CED424, 0, 0);
}

uint64_t sub_216CED424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_47_23();
  if (sub_21669DAC4())
  {
    v24 = swift_task_alloc();
    v25 = OUTLINED_FUNCTION_1255(v24);
    *v25 = v26;
    OUTLINED_FUNCTION_99_0(v25);
    OUTLINED_FUNCTION_31_4();

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_260();
    sub_216FF3318(v29);
    *(v23 + 40) = type metadata accessor for AnyPageRequestBody(0);
    OUTLINED_FUNCTION_822();
    v32 = sub_2166DC484(v30, v31, &unk_21707E378);
    OUTLINED_FUNCTION_101_1(v32);
    sub_216FF321C();
    OUTLINED_FUNCTION_22_47();
    OUTLINED_FUNCTION_79_18();
    __swift_destroy_boxed_opaque_existential_1Tm((v23 + 16));
    if (v22)
    {
      OUTLINED_FUNCTION_50_21();

      OUTLINED_FUNCTION_180_1();
      OUTLINED_FUNCTION_31_4();
    }

    else
    {
      v41 = sub_21700B664();
      OUTLINED_FUNCTION_91_1(v41);
      v42 = MEMORY[0x21CE9C470]();
      OUTLINED_FUNCTION_948(v42);
      if (qword_27CAB5BC8 != -1)
      {
        OUTLINED_FUNCTION_7_91(&qword_27CAB5BC8);
      }

      OUTLINED_FUNCTION_387();
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB10, &qword_217025220);
      v44 = __swift_project_value_buffer(v43, qword_27CB22950);
      v45 = OUTLINED_FUNCTION_65_15(v44);
      v47 = v46(v45);
      OUTLINED_FUNCTION_21_51(v47, "FetchDeveloperToken");
      OUTLINED_FUNCTION_1075();
      OUTLINED_FUNCTION_38_0(MEMORY[0x277CD7BB8]);
      a18 = v48;
      v49 = swift_task_alloc();
      v50 = OUTLINED_FUNCTION_831(v49);
      *v50 = v51;
      OUTLINED_FUNCTION_123_5(v50);
      OUTLINED_FUNCTION_31_4();
    }

    return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }
}

uint64_t sub_216CED6C4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216CED7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_47_23();
  OUTLINED_FUNCTION_260();
  sub_216FF3318(v24);
  *(v23 + 40) = type metadata accessor for AnyPageRequestBody(0);
  OUTLINED_FUNCTION_822();
  v27 = sub_2166DC484(v25, v26, &unk_21707E378);
  OUTLINED_FUNCTION_101_1(v27);
  sub_216FF321C();
  OUTLINED_FUNCTION_22_47();
  OUTLINED_FUNCTION_79_18();
  __swift_destroy_boxed_opaque_existential_1Tm((v23 + 16));
  if (v22)
  {
    OUTLINED_FUNCTION_50_21();

    OUTLINED_FUNCTION_180_1();
    OUTLINED_FUNCTION_31_4();
  }

  else
  {
    v37 = sub_21700B664();
    OUTLINED_FUNCTION_91_1(v37);
    v38 = MEMORY[0x21CE9C470]();
    OUTLINED_FUNCTION_948(v38);
    if (qword_27CAB5BC8 != -1)
    {
      OUTLINED_FUNCTION_7_91(&qword_27CAB5BC8);
    }

    OUTLINED_FUNCTION_387();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB10, &qword_217025220);
    v40 = __swift_project_value_buffer(v39, qword_27CB22950);
    v41 = OUTLINED_FUNCTION_65_15(v40);
    v43 = v42(v41);
    OUTLINED_FUNCTION_21_51(v43, "FetchDeveloperToken");
    OUTLINED_FUNCTION_1075();
    OUTLINED_FUNCTION_38_0(MEMORY[0x277CD7BB8]);
    a18 = v44;
    v45 = swift_task_alloc();
    v46 = OUTLINED_FUNCTION_831(v45);
    *v46 = v47;
    OUTLINED_FUNCTION_123_5(v46);
    OUTLINED_FUNCTION_31_4();
  }

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_216CED9D0()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_725();
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *v3 = *v1;
  v2[59] = v4;
  v2[60] = v0;

  OUTLINED_FUNCTION_365();
  if (v0)
  {
    (*v5)(*(v6 + 320), v2[37]);
  }

  else
  {
    OUTLINED_FUNCTION_902(v5);
    v7();
  }

  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_12_7();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216CEDC20()
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_420();
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *v3 = *v1;
  v2[66] = v0;

  OUTLINED_FUNCTION_1051();
  if (v0)
  {
    (*(v4 + 504))(v2[39], v2[37]);
  }

  else
  {
    OUTLINED_FUNCTION_1238();
    v5();
  }

  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_216CEE020()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 560) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216CEE43C(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  sub_2170078C4();
  v3[19] = swift_task_alloc();
  v4 = sub_21700B774();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  v5 = sub_21700B754();
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  v6 = sub_217005EF4();
  v3[26] = v6;
  v3[27] = *(v6 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BD0, &unk_2170142B0);
  v3[33] = swift_task_alloc();
  v7 = sub_217005AB4();
  v3[34] = v7;
  v3[35] = *(v7 - 8);
  v3[36] = swift_task_alloc();
  v8 = sub_21700B864();
  v3[37] = v8;
  v3[38] = *(v8 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v9 = sub_217007C24();
  v3[41] = v9;
  v3[42] = *(v9 - 8);
  v3[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB08, &qword_217025210);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  type metadata accessor for BaseURLRequest(0);
  v3[48] = swift_task_alloc();
  v10 = sub_217005844();
  v3[49] = v10;
  v3[50] = *(v10 - 8);
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216CEE880, 0, 0);
}

uint64_t sub_216CEE880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_47_23();
  if (sub_21669DAC4())
  {
    v24 = swift_task_alloc();
    v25 = OUTLINED_FUNCTION_1255(v24);
    *v25 = v26;
    OUTLINED_FUNCTION_99_0(v25);
    OUTLINED_FUNCTION_31_4();

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_260();
    sub_216FB2850(v29);
    *(v23 + 40) = type metadata accessor for AnyReplayPageRequestBody(0);
    OUTLINED_FUNCTION_821();
    v32 = sub_2166DC484(v30, v31, &unk_21707B2D8);
    OUTLINED_FUNCTION_101_1(v32);
    sub_216FB276C();
    OUTLINED_FUNCTION_22_47();
    OUTLINED_FUNCTION_79_18();
    __swift_destroy_boxed_opaque_existential_1Tm((v23 + 16));
    if (v22)
    {
      OUTLINED_FUNCTION_50_21();

      OUTLINED_FUNCTION_180_1();
      OUTLINED_FUNCTION_31_4();
    }

    else
    {
      v41 = sub_21700B664();
      OUTLINED_FUNCTION_91_1(v41);
      v42 = MEMORY[0x21CE9C470]();
      OUTLINED_FUNCTION_948(v42);
      if (qword_27CAB5BC8 != -1)
      {
        OUTLINED_FUNCTION_7_91(&qword_27CAB5BC8);
      }

      OUTLINED_FUNCTION_387();
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB10, &qword_217025220);
      v44 = __swift_project_value_buffer(v43, qword_27CB22950);
      v45 = OUTLINED_FUNCTION_65_15(v44);
      v47 = v46(v45);
      OUTLINED_FUNCTION_21_51(v47, "FetchDeveloperToken");
      OUTLINED_FUNCTION_1075();
      OUTLINED_FUNCTION_38_0(MEMORY[0x277CD7BB8]);
      a18 = v48;
      v49 = swift_task_alloc();
      v50 = OUTLINED_FUNCTION_831(v49);
      *v50 = v51;
      OUTLINED_FUNCTION_123_5(v50);
      OUTLINED_FUNCTION_31_4();
    }

    return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }
}

uint64_t sub_216CEEB20()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216CEEC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_47_23();
  OUTLINED_FUNCTION_260();
  sub_216FB2850(v24);
  *(v23 + 40) = type metadata accessor for AnyReplayPageRequestBody(0);
  OUTLINED_FUNCTION_821();
  v27 = sub_2166DC484(v25, v26, &unk_21707B2D8);
  OUTLINED_FUNCTION_101_1(v27);
  sub_216FB276C();
  OUTLINED_FUNCTION_22_47();
  OUTLINED_FUNCTION_79_18();
  __swift_destroy_boxed_opaque_existential_1Tm((v23 + 16));
  if (v22)
  {
    OUTLINED_FUNCTION_50_21();

    OUTLINED_FUNCTION_180_1();
    OUTLINED_FUNCTION_31_4();
  }

  else
  {
    v37 = sub_21700B664();
    OUTLINED_FUNCTION_91_1(v37);
    v38 = MEMORY[0x21CE9C470]();
    OUTLINED_FUNCTION_948(v38);
    if (qword_27CAB5BC8 != -1)
    {
      OUTLINED_FUNCTION_7_91(&qword_27CAB5BC8);
    }

    OUTLINED_FUNCTION_387();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB10, &qword_217025220);
    v40 = __swift_project_value_buffer(v39, qword_27CB22950);
    v41 = OUTLINED_FUNCTION_65_15(v40);
    v43 = v42(v41);
    OUTLINED_FUNCTION_21_51(v43, "FetchDeveloperToken");
    OUTLINED_FUNCTION_1075();
    OUTLINED_FUNCTION_38_0(MEMORY[0x277CD7BB8]);
    a18 = v44;
    v45 = swift_task_alloc();
    v46 = OUTLINED_FUNCTION_831(v45);
    *v46 = v47;
    OUTLINED_FUNCTION_123_5(v46);
    OUTLINED_FUNCTION_31_4();
  }

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_216CEEE2C()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_725();
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *v3 = *v1;
  v2[59] = v4;
  v2[60] = v0;

  OUTLINED_FUNCTION_365();
  if (v0)
  {
    (*v5)(*(v6 + 320), v2[37]);
  }

  else
  {
    OUTLINED_FUNCTION_902(v5);
    v7();
  }

  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_12_7();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216CEF07C()
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_420();
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *v3 = *v1;
  v2[66] = v0;

  OUTLINED_FUNCTION_1051();
  if (v0)
  {
    (*(v4 + 504))(v2[39], v2[37]);
  }

  else
  {
    OUTLINED_FUNCTION_1238();
    v5();
  }

  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_216CEF200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_47_23();
  v23 = *(v22 + 376);

  sub_2166997CC(v23, &qword_27CABBB08, &qword_217025210);
  v24 = OUTLINED_FUNCTION_38();
  v25(v24);
  v35 = *(v22 + 480);
  OUTLINED_FUNCTION_160_1();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_31_4();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v35, a20, a21, a22);
}

uint64_t sub_216CEF5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_47_23();

  v23 = OUTLINED_FUNCTION_229();
  sub_2166997CC(v23, v24, &qword_217025210);
  v25 = OUTLINED_FUNCTION_158();
  sub_2166997CC(v25, v26, &qword_217025210);
  v27 = OUTLINED_FUNCTION_116();
  v28(v27);
  v38 = *(v22 + 528);
  OUTLINED_FUNCTION_160_1();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_31_4();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v38, a20, a21, a22);
}

uint64_t sub_216CEF730()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 560) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216CEFB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_47_23();
  v23 = v22[50];
  v41 = v22[49];
  v42 = v22[52];
  OUTLINED_FUNCTION_1276();

  v24 = OUTLINED_FUNCTION_44_14();
  sub_2166997CC(v24, v25, &qword_217025210);
  v26 = OUTLINED_FUNCTION_69();
  v27(v26);
  v28 = OUTLINED_FUNCTION_229();
  sub_2166997CC(v28, v29, &qword_217025210);
  v30 = OUTLINED_FUNCTION_158();
  sub_2166997CC(v30, v31, &qword_217025210);
  (*(v23 + 8))(v42, v41);
  v43 = v22[70];
  OUTLINED_FUNCTION_160_1();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_31_4();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, v41, v43, a20, a21, a22);
}

uint64_t sub_216CEFCD4(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  sub_2170078C4();
  v3[19] = swift_task_alloc();
  v4 = sub_21700B774();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  v5 = sub_21700B754();
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  v6 = sub_217005EF4();
  v3[26] = v6;
  v3[27] = *(v6 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BD0, &unk_2170142B0);
  v3[33] = swift_task_alloc();
  v7 = sub_217005AB4();
  v3[34] = v7;
  v3[35] = *(v7 - 8);
  v3[36] = swift_task_alloc();
  v8 = sub_21700B864();
  v3[37] = v8;
  v3[38] = *(v8 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v9 = sub_217007C24();
  v3[41] = v9;
  v3[42] = *(v9 - 8);
  v3[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB08, &qword_217025210);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  type metadata accessor for BaseURLRequest(0);
  v3[48] = swift_task_alloc();
  v10 = sub_217005844();
  v3[49] = v10;
  v3[50] = *(v10 - 8);
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216CF0118, 0, 0);
}

uint64_t sub_216CF0118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_47_23();
  if (sub_21669DAC4())
  {
    v24 = swift_task_alloc();
    v25 = OUTLINED_FUNCTION_1255(v24);
    *v25 = v26;
    OUTLINED_FUNCTION_99_0(v25);
    OUTLINED_FUNCTION_31_4();

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_260();
    sub_216FB2650(v29);
    *(v23 + 40) = type metadata accessor for AnyReplayRequestBody(0);
    OUTLINED_FUNCTION_820();
    v32 = sub_2166DC484(v30, v31, &unk_21707A900);
    OUTLINED_FUNCTION_101_1(v32);
    sub_216FB256C();
    OUTLINED_FUNCTION_22_47();
    OUTLINED_FUNCTION_79_18();
    __swift_destroy_boxed_opaque_existential_1Tm((v23 + 16));
    if (v22)
    {
      OUTLINED_FUNCTION_50_21();

      OUTLINED_FUNCTION_180_1();
      OUTLINED_FUNCTION_31_4();
    }

    else
    {
      v41 = sub_21700B664();
      OUTLINED_FUNCTION_91_1(v41);
      v42 = MEMORY[0x21CE9C470]();
      OUTLINED_FUNCTION_948(v42);
      if (qword_27CAB5BC8 != -1)
      {
        OUTLINED_FUNCTION_7_91(&qword_27CAB5BC8);
      }

      OUTLINED_FUNCTION_387();
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB10, &qword_217025220);
      v44 = __swift_project_value_buffer(v43, qword_27CB22950);
      v45 = OUTLINED_FUNCTION_65_15(v44);
      v47 = v46(v45);
      OUTLINED_FUNCTION_21_51(v47, "FetchDeveloperToken");
      OUTLINED_FUNCTION_1075();
      OUTLINED_FUNCTION_38_0(MEMORY[0x277CD7BB8]);
      a18 = v48;
      v49 = swift_task_alloc();
      v50 = OUTLINED_FUNCTION_831(v49);
      *v50 = v51;
      OUTLINED_FUNCTION_123_5(v50);
      OUTLINED_FUNCTION_31_4();
    }

    return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }
}

uint64_t sub_216CF03B8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216CF049C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_47_23();
  OUTLINED_FUNCTION_260();
  sub_216FB2650(v24);
  *(v23 + 40) = type metadata accessor for AnyReplayRequestBody(0);
  OUTLINED_FUNCTION_820();
  v27 = sub_2166DC484(v25, v26, &unk_21707A900);
  OUTLINED_FUNCTION_101_1(v27);
  sub_216FB256C();
  OUTLINED_FUNCTION_22_47();
  OUTLINED_FUNCTION_79_18();
  __swift_destroy_boxed_opaque_existential_1Tm((v23 + 16));
  if (v22)
  {
    OUTLINED_FUNCTION_50_21();

    OUTLINED_FUNCTION_180_1();
    OUTLINED_FUNCTION_31_4();
  }

  else
  {
    v37 = sub_21700B664();
    OUTLINED_FUNCTION_91_1(v37);
    v38 = MEMORY[0x21CE9C470]();
    OUTLINED_FUNCTION_948(v38);
    if (qword_27CAB5BC8 != -1)
    {
      OUTLINED_FUNCTION_7_91(&qword_27CAB5BC8);
    }

    OUTLINED_FUNCTION_387();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB10, &qword_217025220);
    v40 = __swift_project_value_buffer(v39, qword_27CB22950);
    v41 = OUTLINED_FUNCTION_65_15(v40);
    v43 = v42(v41);
    OUTLINED_FUNCTION_21_51(v43, "FetchDeveloperToken");
    OUTLINED_FUNCTION_1075();
    OUTLINED_FUNCTION_38_0(MEMORY[0x277CD7BB8]);
    a18 = v44;
    v45 = swift_task_alloc();
    v46 = OUTLINED_FUNCTION_831(v45);
    *v46 = v47;
    OUTLINED_FUNCTION_123_5(v46);
    OUTLINED_FUNCTION_31_4();
  }

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_216CF06C4()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_725();
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *v3 = *v1;
  v2[59] = v4;
  v2[60] = v0;

  OUTLINED_FUNCTION_365();
  if (v0)
  {
    (*v5)(*(v6 + 320), v2[37]);
  }

  else
  {
    OUTLINED_FUNCTION_902(v5);
    v7();
  }

  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_12_7();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216CF0914()
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_420();
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *v3 = *v1;
  v2[66] = v0;

  OUTLINED_FUNCTION_1051();
  if (v0)
  {
    (*(v4 + 504))(v2[39], v2[37]);
  }

  else
  {
    OUTLINED_FUNCTION_1238();
    v5();
  }

  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_216CF0D14()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 560) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216CF1130(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  sub_2170078C4();
  v3[19] = swift_task_alloc();
  v4 = sub_21700B774();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  v5 = sub_21700B754();
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  v6 = sub_217005EF4();
  v3[26] = v6;
  v3[27] = *(v6 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BD0, &unk_2170142B0);
  v3[33] = swift_task_alloc();
  v7 = sub_217005AB4();
  v3[34] = v7;
  v3[35] = *(v7 - 8);
  v3[36] = swift_task_alloc();
  v8 = sub_21700B864();
  v3[37] = v8;
  v3[38] = *(v8 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v9 = sub_217007C24();
  v3[41] = v9;
  v3[42] = *(v9 - 8);
  v3[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB08, &qword_217025210);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  type metadata accessor for BaseURLRequest(0);
  v3[48] = swift_task_alloc();
  v10 = sub_217005844();
  v3[49] = v10;
  v3[50] = *(v10 - 8);
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216CF1574, 0, 0);
}

uint64_t sub_216CF1574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_47_23();
  if (sub_21669DAC4())
  {
    v24 = swift_task_alloc();
    v25 = OUTLINED_FUNCTION_1255(v24);
    *v25 = v26;
    OUTLINED_FUNCTION_99_0(v25);
    OUTLINED_FUNCTION_31_4();

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_260();
    sub_216FB2750(v29);
    *(v23 + 40) = type metadata accessor for AnyReplayYearRequestBody(0);
    OUTLINED_FUNCTION_818();
    v32 = sub_2166DC484(v30, v31, &unk_21707AD38);
    OUTLINED_FUNCTION_101_1(v32);
    sub_216FB266C();
    OUTLINED_FUNCTION_22_47();
    OUTLINED_FUNCTION_79_18();
    __swift_destroy_boxed_opaque_existential_1Tm((v23 + 16));
    if (v22)
    {
      OUTLINED_FUNCTION_50_21();

      OUTLINED_FUNCTION_180_1();
      OUTLINED_FUNCTION_31_4();
    }

    else
    {
      v41 = sub_21700B664();
      OUTLINED_FUNCTION_91_1(v41);
      v42 = MEMORY[0x21CE9C470]();
      OUTLINED_FUNCTION_948(v42);
      if (qword_27CAB5BC8 != -1)
      {
        OUTLINED_FUNCTION_7_91(&qword_27CAB5BC8);
      }

      OUTLINED_FUNCTION_387();
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB10, &qword_217025220);
      v44 = __swift_project_value_buffer(v43, qword_27CB22950);
      v45 = OUTLINED_FUNCTION_65_15(v44);
      v47 = v46(v45);
      OUTLINED_FUNCTION_21_51(v47, "FetchDeveloperToken");
      OUTLINED_FUNCTION_1075();
      OUTLINED_FUNCTION_38_0(MEMORY[0x277CD7BB8]);
      a18 = v48;
      v49 = swift_task_alloc();
      v50 = OUTLINED_FUNCTION_831(v49);
      *v50 = v51;
      OUTLINED_FUNCTION_123_5(v50);
      OUTLINED_FUNCTION_31_4();
    }

    return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }
}

uint64_t sub_216CF1814()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216CF18F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_47_23();
  OUTLINED_FUNCTION_260();
  sub_216FB2750(v24);
  *(v23 + 40) = type metadata accessor for AnyReplayYearRequestBody(0);
  OUTLINED_FUNCTION_818();
  v27 = sub_2166DC484(v25, v26, &unk_21707AD38);
  OUTLINED_FUNCTION_101_1(v27);
  sub_216FB266C();
  OUTLINED_FUNCTION_22_47();
  OUTLINED_FUNCTION_79_18();
  __swift_destroy_boxed_opaque_existential_1Tm((v23 + 16));
  if (v22)
  {
    OUTLINED_FUNCTION_50_21();

    OUTLINED_FUNCTION_180_1();
    OUTLINED_FUNCTION_31_4();
  }

  else
  {
    v37 = sub_21700B664();
    OUTLINED_FUNCTION_91_1(v37);
    v38 = MEMORY[0x21CE9C470]();
    OUTLINED_FUNCTION_948(v38);
    if (qword_27CAB5BC8 != -1)
    {
      OUTLINED_FUNCTION_7_91(&qword_27CAB5BC8);
    }

    OUTLINED_FUNCTION_387();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB10, &qword_217025220);
    v40 = __swift_project_value_buffer(v39, qword_27CB22950);
    v41 = OUTLINED_FUNCTION_65_15(v40);
    v43 = v42(v41);
    OUTLINED_FUNCTION_21_51(v43, "FetchDeveloperToken");
    OUTLINED_FUNCTION_1075();
    OUTLINED_FUNCTION_38_0(MEMORY[0x277CD7BB8]);
    a18 = v44;
    v45 = swift_task_alloc();
    v46 = OUTLINED_FUNCTION_831(v45);
    *v46 = v47;
    OUTLINED_FUNCTION_123_5(v46);
    OUTLINED_FUNCTION_31_4();
  }

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_216CF1B20()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_725();
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *v3 = *v1;
  v2[59] = v4;
  v2[60] = v0;

  OUTLINED_FUNCTION_365();
  if (v0)
  {
    (*v5)(*(v6 + 320), v2[37]);
  }

  else
  {
    OUTLINED_FUNCTION_902(v5);
    v7();
  }

  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_12_7();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216CF1D70()
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_420();
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *v3 = *v1;
  v2[66] = v0;

  OUTLINED_FUNCTION_1051();
  if (v0)
  {
    (*(v4 + 504))(v2[39], v2[37]);
  }

  else
  {
    OUTLINED_FUNCTION_1238();
    v5();
  }

  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_216CF2170()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 560) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void *sub_216CF258C(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8A50, &qword_21705EA08);
  swift_allocObject();
  *(v1 + 16) = sub_21700CC44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8A58, &unk_21705EA10);
  swift_allocObject();
  *(v1 + 24) = sub_21700CC44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8E90, &qword_21705F270);
  swift_allocObject();
  *(v1 + 32) = sub_21700CC44();
  *(v1 + 48) = 0;
  v4 = MEMORY[0x277D84F90];
  v2[7] = MEMORY[0x277D84F90];
  v2[8] = v4;
  v2[9] = v4;
  v2[10] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0850, &unk_217039E30);
  v2[11] = sub_21700E384();
  type metadata accessor for MusicEvent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8E98, &qword_21705F278);
  sub_2166DC484(&qword_280E46330, type metadata accessor for MusicEvent, &unk_2170438E8);
  v2[12] = sub_21700E384();
  v2[5] = a1;
  return v2;
}

void *sub_216CF2704(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9418, &qword_21705FC10);
  swift_allocObject();
  *(v1 + 16) = sub_21700CC44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9428, &qword_21705FC18);
  swift_allocObject();
  *(v1 + 24) = sub_21700CC44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8E90, &qword_21705F270);
  swift_allocObject();
  *(v1 + 32) = sub_21700CC44();
  *(v1 + 48) = 0;
  v4 = MEMORY[0x277D84F90];
  v2[7] = MEMORY[0x277D84F90];
  v2[8] = v4;
  v2[9] = v4;
  v2[10] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC08B8, &qword_21705FC50);
  v2[11] = sub_21700E384();
  type metadata accessor for MusicEvent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8E98, &qword_21705F278);
  sub_2166DC484(&qword_280E46330, type metadata accessor for MusicEvent, &unk_2170438E8);
  v2[12] = sub_21700E384();
  v2[5] = a1;
  return v2;
}

void *sub_216CF287C(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC90B8, &qword_21705F5C8);
  swift_allocObject();
  *(v1 + 16) = sub_21700CC44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC90C0, &qword_21705F5D0);
  swift_allocObject();
  *(v1 + 24) = sub_21700CC44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8E90, &qword_21705F270);
  swift_allocObject();
  *(v1 + 32) = sub_21700CC44();
  *(v1 + 48) = 0;
  v4 = MEMORY[0x277D84F90];
  v2[7] = MEMORY[0x277D84F90];
  v2[8] = v4;
  v2[9] = v4;
  v2[10] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0878, &unk_217039E70);
  v2[11] = sub_21700E384();
  type metadata accessor for MusicEvent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8E98, &qword_21705F278);
  sub_2166DC484(&qword_280E46330, type metadata accessor for MusicEvent, &unk_2170438E8);
  v2[12] = sub_21700E384();
  v2[5] = a1;
  return v2;
}

void *sub_216CF29F4(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9168, &qword_21705F740);
  swift_allocObject();
  *(v1 + 16) = sub_21700CC44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9178, &qword_21705F748);
  swift_allocObject();
  *(v1 + 24) = sub_21700CC44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8E90, &qword_21705F270);
  swift_allocObject();
  *(v1 + 32) = sub_21700CC44();
  *(v1 + 48) = 0;
  v4 = MEMORY[0x277D84F90];
  v2[7] = MEMORY[0x277D84F90];
  v2[8] = v4;
  v2[9] = v4;
  v2[10] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0880, &unk_217039E80);
  v2[11] = sub_21700E384();
  type metadata accessor for MusicEvent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8E98, &qword_21705F278);
  sub_2166DC484(&qword_280E46330, type metadata accessor for MusicEvent, &unk_2170438E8);
  v2[12] = sub_21700E384();
  v2[5] = a1;
  return v2;
}

void *sub_216CF2B6C(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9880, &qword_2170603A8);
  swift_allocObject();
  *(v1 + 16) = sub_21700CC44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9888, &qword_2170603B0);
  swift_allocObject();
  *(v1 + 24) = sub_21700CC44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8E90, &qword_21705F270);
  swift_allocObject();
  *(v1 + 32) = sub_21700CC44();
  *(v1 + 48) = 0;
  v4 = MEMORY[0x277D84F90];
  v2[7] = MEMORY[0x277D84F90];
  v2[8] = v4;
  v2[9] = v4;
  v2[10] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC08E0, &qword_217060320);
  v2[11] = sub_21700E384();
  type metadata accessor for MusicEvent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8E98, &qword_21705F278);
  sub_2166DC484(&qword_280E46330, type metadata accessor for MusicEvent, &unk_2170438E8);
  v2[12] = sub_21700E384();
  v2[5] = a1;
  return v2;
}

void sub_216CF2CE4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_216CF6784(a1, a2, a3, a4, a5, a6, a7, a8, v23, a1, a2, v26, v28, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
  swift_beginAccess();
  v27 = v8;
  v9 = *(v8 + 88);
  v10 = v9 + 64;
  OUTLINED_FUNCTION_46_16();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  sub_21700DF14();
  v16 = 0;
  v29 = v9;
  while (v13)
  {
LABEL_7:
    v18 = *(*(v9 + 56) + ((v16 << 9) | (8 * __clz(__rbit64(v13)))));
    if (v18 >> 62)
    {
      v19 = sub_21700F2B4();
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 &= v13 - 1;
    if (v19)
    {
      if (v19 < 1)
      {
        goto LABEL_20;
      }

      sub_21700DF14();
      v20 = 0;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = OUTLINED_FUNCTION_52_9();
          MEMORY[0x21CEA0220](v21);
        }

        else
        {
          OUTLINED_FUNCTION_1161();
        }

        ++v20;
        OUTLINED_FUNCTION_0_1();
        (*(v22 + 96))();
      }

      while (v19 != v20);

      v9 = v29;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
      *(v27 + 88) = sub_21700E384();

      return;
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_216CF381C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_49();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = OUTLINED_FUNCTION_945(v34, v32, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(v37, v38);
  OUTLINED_FUNCTION_1();
  v40 = v39;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_89_13();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_47_1();
  v248 = v50;
  v240 = v31;
  v241 = v29;
  v51 = OUTLINED_FUNCTION_114_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v51, v52);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v59);
  v60 = v25;
  v61 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(v27, v60);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_69_1();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_6_4();
  v247 = v67;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  v69 = v23[7];
  v242 = v35;
  v70 = *(v69 + 16);
  v249 = v33;
  sub_2168EAE00(v35, v33);
  v71 = 0;
  v245 = v61;
  for (i = v40; ; v40 = i)
  {
    if (v70 == v71)
    {
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_236();
    v243 = v72;
    v244 = *(v40 + 72);
    OUTLINED_FUNCTION_615();
    sub_216DD9F00();
    if (v33 == 1)
    {
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        OUTLINED_FUNCTION_47_2();
        sub_2166997CC(v87, v88, v89);
        goto LABEL_19;
      }

LABEL_13:
      OUTLINED_FUNCTION_47_2();
      sub_2166997CC(v81, v82, v83);
      goto LABEL_14;
    }

    if (!v33)
    {
      OUTLINED_FUNCTION_47_2();
      sub_2166997CC(v84, v85, v86);
      v71 = 0;
      goto LABEL_19;
    }

    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_13;
    }

    sub_216DD9B04();
    OUTLINED_FUNCTION_1044();
    v74 = OUTLINED_FUNCTION_570(v238 + v73);
    v77 = v77 && v75 == v33;
    if (v77)
    {
      break;
    }

    v78 = OUTLINED_FUNCTION_1160(v74, v75, v76);
    v79 = OUTLINED_FUNCTION_227();
    sub_2166997CC(v79, v80, v29);
    if (v78)
    {
      goto LABEL_19;
    }

LABEL_14:
    ++v71;
    v61 = v245;
  }

  v90 = OUTLINED_FUNCTION_227();
  sub_2166997CC(v90, v91, v29);
LABEL_19:
  v92 = v71 + 1;
  if (__OFADD__(v71, 1))
  {
    goto LABEL_161;
  }

  v93 = v243 + v92 * v244;
  while (2)
  {
    v94 = *(v69 + 16);
    if (v92 != v94)
    {
      if (v92 >= v94)
      {
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
        goto LABEL_159;
      }

      OUTLINED_FUNCTION_615();
      sub_216DD9F00();
      OUTLINED_FUNCTION_615();
      sub_216DD9F00();
      if (v249)
      {
        if (v249 == 1)
        {
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            goto LABEL_26;
          }

LABEL_34:
          OUTLINED_FUNCTION_47_2();
          sub_2166997CC(v113, v114, v115);
          OUTLINED_FUNCTION_47_2();
          sub_2166997CC(v116, v117, v118);
LABEL_35:
          if (v92 != v71)
          {
            if ((v71 & 0x8000000000000000) != 0)
            {
              goto LABEL_146;
            }

            v119 = *(v69 + 16);
            if (v71 >= v119)
            {
              goto LABEL_147;
            }

            OUTLINED_FUNCTION_615();
            sub_216DD9F00();
            if (v92 >= v119)
            {
              goto LABEL_148;
            }

            OUTLINED_FUNCTION_615();
            sub_216DD9F00();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v245[7] = v69;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              OUTLINED_FUNCTION_1211();
              v69 = v128(v127);
              v245[7] = v69;
            }

            OUTLINED_FUNCTION_615();
            sub_216DD9404();
            v245[7] = v69;
            if (v92 >= *(v69 + 16))
            {
              goto LABEL_149;
            }

            OUTLINED_FUNCTION_615();
            sub_216DD9404();
            v245[7] = v69;
          }

          ++v71;
        }

        else
        {
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            goto LABEL_34;
          }

          sub_216DD9B04();
          OUTLINED_FUNCTION_1044();
          v102 = OUTLINED_FUNCTION_570(v236 + v101);
          if (v77 && v103 == v249)
          {
            OUTLINED_FUNCTION_18_35();
            sub_2166997CC(v121, v122, v123);
            OUTLINED_FUNCTION_47_2();
            sub_2166997CC(v124, v125, v126);
          }

          else
          {
            v106 = OUTLINED_FUNCTION_1160(v102, v103, v104);
            OUTLINED_FUNCTION_18_35();
            sub_2166997CC(v107, v108, v109);
            OUTLINED_FUNCTION_47_2();
            sub_2166997CC(v110, v111, v112);
            if ((v106 & 1) == 0)
            {
              goto LABEL_35;
            }
          }
        }
      }

      else
      {
LABEL_26:
        OUTLINED_FUNCTION_47_2();
        sub_2166997CC(v95, v96, v97);
        OUTLINED_FUNCTION_47_2();
        sub_2166997CC(v98, v99, v100);
      }

      ++v92;
      v93 += v244;
      continue;
    }

    break;
  }

  v61 = v245;
  if (v92 < v71)
  {
    goto LABEL_158;
  }

LABEL_47:
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_770();
  swift_endAccess();
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  v129 = 0;
  v130 = v61[8];
  v131 = *(v130 + 16);
  while (2)
  {
    if (v131 != v129)
    {
      OUTLINED_FUNCTION_236();
      OUTLINED_FUNCTION_980(v132);
      OUTLINED_FUNCTION_615();
      sub_216DD9F00();
      if (v249 == 1)
      {
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          OUTLINED_FUNCTION_47_2();
          goto LABEL_65;
        }
      }

      else
      {
        if (!v249)
        {
          OUTLINED_FUNCTION_47_2();
          sub_2166997CC(v143, v144, v145);
          v129 = 0;
          goto LABEL_66;
        }

        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_216DD9B04();
          OUTLINED_FUNCTION_1044();
          v134 = OUTLINED_FUNCTION_570(v233 + v133);
          if (v77 && v135 == v249)
          {
            v146 = v233;
            v147 = v240;
            v148 = v241;
LABEL_65:
            sub_2166997CC(v146, v147, v148);
LABEL_66:
            v149 = v129 + 1;
            if (__OFADD__(v129, 1))
            {
              goto LABEL_162;
            }

            v150 = v247 + v149 * v248;
            while (2)
            {
              OUTLINED_FUNCTION_1230();
              if (v77)
              {
                if (v149 >= v129)
                {
                  goto LABEL_95;
                }

LABEL_159:
                __break(1u);
                goto LABEL_160;
              }

              if (v151)
              {
                goto LABEL_144;
              }

              OUTLINED_FUNCTION_31_9();
              sub_216DD9F00();
              OUTLINED_FUNCTION_615();
              sub_216DD9F00();
              if (v249)
              {
                if (v249 == 1)
                {
                  if (swift_getEnumCaseMultiPayload() != 1)
                  {
                    goto LABEL_73;
                  }

LABEL_82:
                  OUTLINED_FUNCTION_47_2();
                  sub_2166997CC(v169, v170, v171);
                  OUTLINED_FUNCTION_47_2();
                  sub_2166997CC(v172, v173, v174);
LABEL_83:
                  if (v149 != v129)
                  {
                    if ((v129 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_150;
                    }

                    v175 = *(v130 + 16);
                    if (v129 >= v175)
                    {
                      goto LABEL_151;
                    }

                    OUTLINED_FUNCTION_1231();
                    OUTLINED_FUNCTION_615();
                    sub_216DD9F00();
                    if (v149 >= v175)
                    {
                      goto LABEL_152;
                    }

                    OUTLINED_FUNCTION_31_9();
                    sub_216DD9F00();
                    v176 = swift_isUniquelyReferenced_nonNull_native();
                    v245[8] = v130;
                    if ((v176 & 1) == 0)
                    {
                      OUTLINED_FUNCTION_1211();
                      v130 = v183(v182);
                      v245[8] = v130;
                    }

                    OUTLINED_FUNCTION_615();
                    sub_216DD9404();
                    v245[8] = v130;
                    OUTLINED_FUNCTION_1230();
                    if (v151)
                    {
                      goto LABEL_153;
                    }

                    OUTLINED_FUNCTION_615();
                    sub_216DD9404();
                    v245[8] = v130;
                  }

                  ++v129;
                }

                else
                {
                  if (swift_getEnumCaseMultiPayload() != 1)
                  {
                    goto LABEL_82;
                  }

                  sub_216DD9B04();
                  OUTLINED_FUNCTION_1044();
                  v159 = OUTLINED_FUNCTION_570(v235 + v158);
                  if (v77 && v160 == v249)
                  {
                    v177 = OUTLINED_FUNCTION_194();
                    sub_2166997CC(v177, v178, v241);
                    OUTLINED_FUNCTION_47_2();
                    sub_2166997CC(v179, v180, v181);
                  }

                  else
                  {
                    v163 = OUTLINED_FUNCTION_1160(v159, v160, v161);
                    v164 = OUTLINED_FUNCTION_194();
                    sub_2166997CC(v164, v165, v241);
                    OUTLINED_FUNCTION_47_2();
                    sub_2166997CC(v166, v167, v168);
                    if ((v163 & 1) == 0)
                    {
                      goto LABEL_83;
                    }
                  }
                }
              }

              else
              {
LABEL_73:
                OUTLINED_FUNCTION_47_2();
                sub_2166997CC(v152, v153, v154);
                OUTLINED_FUNCTION_47_2();
                sub_2166997CC(v155, v156, v157);
              }

              ++v149;
              v150 += v248;
              continue;
            }
          }

          OUTLINED_FUNCTION_1160(v134, v135, v136);
          v138 = OUTLINED_FUNCTION_1040();
          sub_2166997CC(v138, v139, v241);
          if (v240)
          {
            goto LABEL_66;
          }

          goto LABEL_60;
        }
      }

      OUTLINED_FUNCTION_47_2();
      sub_2166997CC(v140, v141, v142);
LABEL_60:
      ++v129;
      continue;
    }

    break;
  }

LABEL_95:
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_770();
  swift_endAccess();
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  v184 = 0;
  v185 = v245[9];
  v186 = *(v185 + 16);
  while (2)
  {
    if (v186 == v184)
    {
LABEL_142:
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_770();
      swift_endAccess();
      sub_216B936DC(v242, v249);
      OUTLINED_FUNCTION_26();
      return;
    }

    OUTLINED_FUNCTION_236();
    OUTLINED_FUNCTION_980(v187);
    OUTLINED_FUNCTION_615();
    sub_216DD9F00();
    if (v249 == 1)
    {
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        OUTLINED_FUNCTION_47_2();
        goto LABEL_113;
      }

      goto LABEL_107;
    }

    if (!v249)
    {
      OUTLINED_FUNCTION_47_2();
      sub_2166997CC(v197, v198, v199);
      v184 = 0;
      goto LABEL_114;
    }

    if (swift_getEnumCaseMultiPayload() != 1)
    {
LABEL_107:
      OUTLINED_FUNCTION_47_2();
      sub_2166997CC(v194, v195, v196);
LABEL_108:
      ++v184;
      continue;
    }

    break;
  }

  sub_216DD9B04();
  OUTLINED_FUNCTION_1044();
  v189 = OUTLINED_FUNCTION_570(v237 + v188);
  if (!v77 || v190 != v249)
  {
    v193 = OUTLINED_FUNCTION_1160(v189, v190, v191);
    sub_2166997CC(v237, v240, v241);
    if (v193)
    {
      goto LABEL_114;
    }

    goto LABEL_108;
  }

  v200 = OUTLINED_FUNCTION_52_9();
  v202 = v241;
LABEL_113:
  sub_2166997CC(v200, v201, v202);
LABEL_114:
  v203 = v184 + 1;
  if (__OFADD__(v184, 1))
  {
    goto LABEL_163;
  }

  v204 = v247 + v203 * v248;
  while (2)
  {
    OUTLINED_FUNCTION_1230();
    if (!v77)
    {
      if (v205)
      {
        goto LABEL_145;
      }

      OUTLINED_FUNCTION_31_9();
      sub_216DD9F00();
      OUTLINED_FUNCTION_615();
      sub_216DD9F00();
      if (v249)
      {
        if (v249 == 1)
        {
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            goto LABEL_121;
          }

LABEL_129:
          OUTLINED_FUNCTION_47_2();
          sub_2166997CC(v220, v221, v222);
          OUTLINED_FUNCTION_47_2();
          sub_2166997CC(v223, v224, v225);
LABEL_130:
          if (v203 != v184)
          {
            if ((v184 & 0x8000000000000000) != 0)
            {
              goto LABEL_154;
            }

            v226 = *(v185 + 16);
            if (v184 >= v226)
            {
              goto LABEL_155;
            }

            OUTLINED_FUNCTION_1231();
            OUTLINED_FUNCTION_615();
            sub_216DD9F00();
            if (v203 >= v226)
            {
              goto LABEL_156;
            }

            OUTLINED_FUNCTION_615();
            sub_216DD9F00();
            v227 = swift_isUniquelyReferenced_nonNull_native();
            v245[9] = v185;
            if ((v227 & 1) == 0)
            {
              OUTLINED_FUNCTION_1211();
              v185 = v232(v231);
              v245[9] = v185;
            }

            OUTLINED_FUNCTION_1028();
            OUTLINED_FUNCTION_615();
            sub_216DD9404();
            v245[9] = v185;
            OUTLINED_FUNCTION_1230();
            if (v151)
            {
              goto LABEL_157;
            }

            OUTLINED_FUNCTION_615();
            sub_216DD9404();
            v245[9] = v185;
          }

          ++v184;
        }

        else
        {
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            goto LABEL_129;
          }

          sub_216DD9B04();
          OUTLINED_FUNCTION_1044();
          v213 = OUTLINED_FUNCTION_570(v234 + v212);
          if (v77 && v214 == v249)
          {
            sub_2166997CC(v234, v240, v241);
            OUTLINED_FUNCTION_47_2();
            sub_2166997CC(v228, v229, v230);
          }

          else
          {
            v246 = OUTLINED_FUNCTION_1160(v213, v214, v215);
            sub_2166997CC(v234, v240, v241);
            OUTLINED_FUNCTION_47_2();
            sub_2166997CC(v217, v218, v219);
            if ((v246 & 1) == 0)
            {
              goto LABEL_130;
            }
          }
        }
      }

      else
      {
LABEL_121:
        OUTLINED_FUNCTION_47_2();
        sub_2166997CC(v206, v207, v208);
        OUTLINED_FUNCTION_47_2();
        sub_2166997CC(v209, v210, v211);
      }

      ++v203;
      v204 += v248;
      continue;
    }

    break;
  }

  if (v203 >= v184)
  {
    goto LABEL_142;
  }

LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
}

void sub_216CF5028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_1262();
  v26 = v25;
  v28 = v27;
  OUTLINED_FUNCTION_1165(v29);
  v30 = *(v24 + 88);
  if (!*(v30 + 16) || (v31 = OUTLINED_FUNCTION_98(), v33 = sub_2166AF66C(v31, v32), (v34 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_13;
  }

  v35 = *(*(v30 + 56) + 8 * v33);
  swift_endAccess();
  v36 = v28(v35);
  if (!v36)
  {
LABEL_11:
    OUTLINED_FUNCTION_377();
    swift_beginAccess();
    v41 = OUTLINED_FUNCTION_98();
    v26(v41);
    swift_endAccess();

LABEL_13:
    OUTLINED_FUNCTION_1261();
    return;
  }

  v37 = v36;
  if (v36 >= 1)
  {
    sub_21700DF14();
    v38 = 0;
    do
    {
      if ((v35 & 0xC000000000000001) != 0)
      {
        v39 = OUTLINED_FUNCTION_52_9();
        MEMORY[0x21CEA0220](v39);
      }

      else
      {
        OUTLINED_FUNCTION_1161();
      }

      ++v38;
      OUTLINED_FUNCTION_0_1();
      (*(v40 + 96))();
    }

    while (v37 != v38);

    goto LABEL_11;
  }

  __break(1u);
}

void sub_216CF5154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_1262();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  OUTLINED_FUNCTION_1165(v32);
  v33 = *(v24 + 88);
  if (!*(v33 + 16) || (v34 = sub_2166AF66C(v25, v31), (v35 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_13;
  }

  v36 = *(*(v33 + 56) + 8 * v34);
  swift_endAccess();
  v37 = v29(v36);
  if (!v37)
  {
LABEL_11:
    OUTLINED_FUNCTION_377();
    swift_beginAccess();
    sub_21700DF14();
    v27(v25, v31);
    swift_endAccess();

LABEL_13:
    OUTLINED_FUNCTION_1261();
    return;
  }

  v38 = v37;
  if (v37 >= 1)
  {
    sub_21700DF14();
    v39 = 0;
    do
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v40 = OUTLINED_FUNCTION_52_9();
        MEMORY[0x21CEA0220](v40);
      }

      else
      {
        OUTLINED_FUNCTION_1161();
      }

      ++v39;
      OUTLINED_FUNCTION_0_1();
      (*(v41 + 96))();
    }

    while (v38 != v39);

    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_216CF5298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for MusicEvent(0);
  v31 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  swift_beginAccess();
  v40 = v3;
  v35 = a2;
  v36 = a3;
  v13 = sub_21693B60C();
  swift_endAccess();
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v45 = v14;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = a1 + 32;
    v30 = v15;
    v29 = v17;
    do
    {
      sub_2168EB174(v17 + (v16 << 6), v44);
      if (v44[0])
      {
        v18 = *(v44[0] + 16);
        if (v18)
        {
          v33 = v16;
          v39 = *(v40 + 40);
          v38 = *(v31 + 80);
          v19 = (v38 + 32) & ~v38;
          v20 = v44[0] + v19;
          v37 = *(v31 + 72);
          v32 = v44[0];
          sub_21700DF14();
          do
          {
            sub_216DDA0A0(v20, v12);
            sub_2168EB174(v44, v41);
            v42 = v35;
            v43 = v36;
            sub_21700DF14();
            v21 = sub_216CE38D8(v41, v39);
            v22 = swift_allocObject();
            swift_weakInit();
            v23 = swift_allocObject();
            swift_weakInit();
            sub_216DDA0F4(v12, v9);
            v24 = swift_allocObject();
            *(v24 + 16) = v22;
            *(v24 + 24) = v23;
            sub_216DDA0F4(v9, v24 + v19);
            (*(**(v21 + 16) + 88))(sub_216DD54E8, v24);

            MEMORY[0x21CE9F610](v25);
            if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_21700E874();
            }

            sub_21700E8C4();

            sub_2166997CC(v41, &qword_27CAC8D70, &unk_21705EF30);
            v20 += v37;
            --v18;
          }

          while (v18);
          v14 = v45;

          v15 = v30;
          v16 = v33;
          v17 = v29;
        }
      }

      ++v16;
      sub_2168EB1D0(v44);
    }

    while (v16 != v15);
  }

  v26 = v40;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44[0] = *(v26 + 88);
  sub_216939CF0(v14, v35, v36, isUniquelyReferenced_nonNull_native);
  *(v26 + 88) = v44[0];
  return swift_endAccess();
}

uint64_t sub_216CF56C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for MusicEvent(0);
  v31 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  swift_beginAccess();
  v40 = v3;
  v35 = a2;
  v36 = a3;
  v13 = sub_21693B60C();
  swift_endAccess();
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v45 = v14;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = a1 + 32;
    v30 = v15;
    v29 = v17;
    do
    {
      sub_2168EB174(v17 + (v16 << 6), v44);
      if (v44[0])
      {
        v18 = *(v44[0] + 16);
        if (v18)
        {
          v33 = v16;
          v39 = *(v40 + 40);
          v38 = *(v31 + 80);
          v19 = (v38 + 32) & ~v38;
          v20 = v44[0] + v19;
          v37 = *(v31 + 72);
          v32 = v44[0];
          sub_21700DF14();
          do
          {
            sub_216DDA0A0(v20, v12);
            sub_2168EB174(v44, v41);
            v42 = v35;
            v43 = v36;
            sub_21700DF14();
            v21 = sub_216CE51A8(v41, v39);
            v22 = swift_allocObject();
            swift_weakInit();
            v23 = swift_allocObject();
            swift_weakInit();
            sub_216DDA0F4(v12, v9);
            v24 = swift_allocObject();
            *(v24 + 16) = v22;
            *(v24 + 24) = v23;
            sub_216DDA0F4(v9, v24 + v19);
            (*(**(v21 + 16) + 88))(sub_216DD8648, v24);

            MEMORY[0x21CE9F610](v25);
            if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_21700E874();
            }

            sub_21700E8C4();

            sub_2166997CC(v41, &qword_27CAC9588, &qword_21705FE78);
            v20 += v37;
            --v18;
          }

          while (v18);
          v14 = v45;

          v15 = v30;
          v16 = v33;
          v17 = v29;
        }
      }

      ++v16;
      sub_2168EB1D0(v44);
    }

    while (v16 != v15);
  }

  v26 = v40;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44[0] = *(v26 + 88);
  sub_21693A054(v14, v35, v36, isUniquelyReferenced_nonNull_native);
  *(v26 + 88) = v44[0];
  return swift_endAccess();
}

uint64_t sub_216CF5AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for MusicEvent(0);
  v30 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  swift_beginAccess();
  v39 = v3;
  v34 = a2;
  v35 = a3;
  v13 = sub_21693B60C();
  swift_endAccess();
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v44 = v14;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = a1 + 32;
    v29 = v15;
    v28 = v17;
    do
    {
      sub_2168EB174(v17 + (v16 << 6), v43);
      if (v43[0] && (v18 = *(v43[0] + 16)) != 0)
      {
        v32 = v16;
        v38 = *(v39 + 40);
        v37 = *(v30 + 80);
        v19 = (v37 + 32) & ~v37;
        v20 = v43[0] + v19;
        v36 = *(v30 + 72);
        v31 = v43[0];
        sub_21700DF14();
        do
        {
          sub_216DDA0A0(v20, v12);
          sub_2168EB174(v43, v40);
          v41 = v34;
          v42 = v35;
          sub_21700DF14();
          v21 = sub_216CE6A60(v40, v38);
          v22 = swift_allocObject();
          swift_weakInit();
          v23 = swift_allocObject();
          swift_weakInit();
          sub_216DDA0F4(v12, v9);
          v24 = swift_allocObject();
          *(v24 + 16) = v22;
          *(v24 + 24) = v23;
          sub_216DDA0F4(v9, v24 + v19);
          (*(**(v21 + 16) + 88))(sub_216DD7A7C, v24);

          MEMORY[0x21CE9F610](v25);
          if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21700E874();
          }

          sub_21700E8C4();

          sub_2166997CC(v40, &qword_27CAC9208, &qword_21705F8E0);
          v20 += v36;
          --v18;
        }

        while (v18);
        sub_2168EB1D0(v43);

        v15 = v29;
        v16 = v32;
        v17 = v28;
      }

      else
      {
        sub_2168EB1D0(v43);
      }

      ++v16;
    }

    while (v16 != v15);
  }

  v26 = v39;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v43[0] = *(v26 + 88);
  sub_21693A560();
  *(v26 + 88) = v43[0];
  return swift_endAccess();
}

uint64_t sub_216CF5F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for MusicEvent(0);
  v30 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  swift_beginAccess();
  v39 = v3;
  v34 = a2;
  v35 = a3;
  v13 = sub_21693B60C();
  swift_endAccess();
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v44 = v14;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = a1 + 32;
    v29 = v15;
    v28 = v17;
    do
    {
      sub_2168EB174(v17 + (v16 << 6), v43);
      if (v43[0] && (v18 = *(v43[0] + 16)) != 0)
      {
        v32 = v16;
        v38 = *(v39 + 40);
        v37 = *(v30 + 80);
        v19 = (v37 + 32) & ~v37;
        v20 = v43[0] + v19;
        v36 = *(v30 + 72);
        v31 = v43[0];
        sub_21700DF14();
        do
        {
          sub_216DDA0A0(v20, v12);
          sub_2168EB174(v43, v40);
          v41 = v34;
          v42 = v35;
          sub_21700DF14();
          v21 = sub_216CE8318(v40, v38);
          v22 = swift_allocObject();
          swift_weakInit();
          v23 = swift_allocObject();
          swift_weakInit();
          sub_216DDA0F4(v12, v9);
          v24 = swift_allocObject();
          *(v24 + 16) = v22;
          *(v24 + 24) = v23;
          sub_216DDA0F4(v9, v24 + v19);
          (*(**(v21 + 16) + 88))(sub_216DD69C0, v24);

          MEMORY[0x21CE9F610](v25);
          if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21700E874();
          }

          sub_21700E8C4();

          sub_2166997CC(v40, &qword_27CAC8FE0, &qword_21705F498);
          v20 += v36;
          --v18;
        }

        while (v18);
        sub_2168EB1D0(v43);

        v15 = v29;
        v16 = v32;
        v17 = v28;
      }

      else
      {
        sub_2168EB1D0(v43);
      }

      ++v16;
    }

    while (v16 != v15);
  }

  v26 = v39;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v43[0] = *(v26 + 88);
  sub_21693AB24();
  *(v26 + 88) = v43[0];
  return swift_endAccess();
}

uint64_t sub_216CF6350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for MusicEvent(0);
  v30 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  swift_beginAccess();
  v39 = v3;
  v34 = a2;
  v35 = a3;
  v13 = sub_21693B60C();
  swift_endAccess();
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v44 = v14;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = a1 + 32;
    v29 = v15;
    v28 = v17;
    do
    {
      sub_2168EB174(v17 + (v16 << 6), v43);
      if (v43[0] && (v18 = *(v43[0] + 16)) != 0)
      {
        v32 = v16;
        v38 = *(v39 + 40);
        v37 = *(v30 + 80);
        v19 = (v37 + 32) & ~v37;
        v20 = v43[0] + v19;
        v36 = *(v30 + 72);
        v31 = v43[0];
        sub_21700DF14();
        do
        {
          sub_216DDA0A0(v20, v12);
          sub_2168EB174(v43, v40);
          v41 = v34;
          v42 = v35;
          sub_21700DF14();
          v21 = sub_216CE9BD0(v40, v38);
          v22 = swift_allocObject();
          swift_weakInit();
          v23 = swift_allocObject();
          swift_weakInit();
          sub_216DDA0F4(v12, v9);
          v24 = swift_allocObject();
          *(v24 + 16) = v22;
          *(v24 + 24) = v23;
          sub_216DDA0F4(v9, v24 + v19);
          (*(**(v21 + 16) + 88))(sub_216DD933C, v24);

          MEMORY[0x21CE9F610](v25);
          if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21700E874();
          }

          sub_21700E8C4();

          sub_2166997CC(v40, &qword_27CAC97B8, &qword_217060278);
          v20 += v36;
          --v18;
        }

        while (v18);
        sub_2168EB1D0(v43);

        v15 = v29;
        v16 = v32;
        v17 = v28;
      }

      else
      {
        sub_2168EB1D0(v43);
      }

      ++v16;
    }

    while (v16 != v15);
  }

  v26 = v39;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v43[0] = *(v26 + 88);
  sub_21693AEC4();
  *(v26 + 88) = v43[0];
  return swift_endAccess();
}

void sub_216CF6784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_1262();
  swift_beginAccess();
  v25 = *(v24 + 80);
  if (v25)
  {
    OUTLINED_FUNCTION_46_16();
    v28 = v27 & v26;
    v30 = (v29 + 63) >> 6;
    sub_21700DF14();
    v31 = 0;
    if (!v28)
    {
      goto LABEL_4;
    }

    do
    {
LABEL_8:
      v28 &= v28 - 1;
      OUTLINED_FUNCTION_0_1();
      v34 = *(v33 + 96);

      v34(v35);
    }

    while (v28);
LABEL_4:
    while (1)
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v32 >= v30)
      {

        *(v24 + 80) = 0;

        goto LABEL_11;
      }

      v28 = *(v25 + 64 + 8 * v32);
      ++v31;
      if (v28)
      {
        v31 = v32;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    OUTLINED_FUNCTION_1261();
  }
}

uint64_t sub_216CF68A0(uint64_t a1)
{
  v2 = type metadata accessor for MusicEvent(0);
  v46 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = v35 - v6;
  v40 = v7;
  MEMORY[0x28223BE20](v8);
  v38 = v35 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0860, &qword_21705EE70);
  sub_2166DC484(&qword_280E46330, type metadata accessor for MusicEvent, &unk_2170438E8);
  v35[0] = v2;
  v10 = sub_21700E384();
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 0;
    v36 = *(a1 + 16);
    v35[1] = a1 + 32;
    while (1)
    {
      sub_216DD9F00();
      v13 = v51[0];
      if (v51[0])
      {
        v48 = *(v51[0] + 16);
        if (v48)
        {
          break;
        }
      }

LABEL_18:
      ++v12;
      sub_2166997CC(v51, &qword_27CAC8CD0, &qword_21705EE78);
      if (v12 == v11)
      {
        goto LABEL_19;
      }
    }

    v37 = v12;
    v14 = *(v47 + 40);
    v44 = *(v46 + 80);
    v45 = v14;
    v43 = (v44 + 32) & ~v44;
    v42 = v51[0] + v43;
    sub_21700DF14();
    v15 = 0;
    v41 = v13;
    while (v15 < *(v13 + 16))
    {
      v49 = *(v46 + 72);
      v16 = v38;
      sub_216DDA0A0(v42 + v49 * v15, v38);
      v17 = sub_216CE453C(v51, v45);
      v18 = swift_allocObject();
      swift_weakInit();
      v19 = swift_allocObject();
      swift_weakInit();
      v20 = v39;
      sub_216DDA0A0(v16, v39);
      v21 = v43;
      v22 = swift_allocObject();
      *(v22 + 16) = v18;
      *(v22 + 24) = v19;
      sub_216DDA0F4(v20, v22 + v21);
      v23 = *(**(v17 + 16) + 88);

      v23(sub_216DD54B4, v22);

      sub_216DDA0F4(v16, v4);
      swift_isUniquelyReferenced_nonNull_native();
      v50 = v10;
      v24 = sub_216E68164();
      if (__OFADD__(v10[2], (v25 & 1) == 0))
      {
        goto LABEL_21;
      }

      v26 = v24;
      v27 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0858, &unk_217039E40);
      if (sub_21700F554())
      {
        v28 = sub_216E68164();
        v13 = v41;
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_23;
        }

        v26 = v28;
      }

      else
      {
        v13 = v41;
      }

      v10 = v50;
      if (v27)
      {
        *(v50[7] + 8 * v26) = v17;

        sub_216DDA050();
      }

      else
      {
        v50[(v26 >> 6) + 8] |= 1 << v26;
        sub_216DDA0A0(v4, v10[6] + v26 * v49);
        *(v10[7] + 8 * v26) = v17;

        sub_216DDA050();
        v30 = v10[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_22;
        }

        v10[2] = v32;
      }

      if (v48 == ++v15)
      {

        v11 = v36;
        v12 = v37;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_21700F824();
    __break(1u);
  }

  else
  {
LABEL_19:
    v33 = v47;
    swift_beginAccess();
    *(v33 + 80) = v10;
  }

  return result;
}

uint64_t sub_216CF6E0C(uint64_t a1)
{
  v2 = type metadata accessor for MusicEvent(0);
  v46 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = v35 - v6;
  v40 = v7;
  MEMORY[0x28223BE20](v8);
  v38 = v35 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC08C8, &qword_21705FDD0);
  sub_2166DC484(&qword_280E46330, type metadata accessor for MusicEvent, &unk_2170438E8);
  v35[0] = v2;
  v10 = sub_21700E384();
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 0;
    v36 = *(a1 + 16);
    v35[1] = a1 + 32;
    while (1)
    {
      sub_216DD9F00();
      v13 = v51[0];
      if (v51[0])
      {
        v48 = *(v51[0] + 16);
        if (v48)
        {
          break;
        }
      }

LABEL_18:
      ++v12;
      sub_2166997CC(v51, &qword_27CAC94D0, &qword_21705FDD8);
      if (v12 == v11)
      {
        goto LABEL_19;
      }
    }

    v37 = v12;
    v14 = *(v47 + 40);
    v44 = *(v46 + 80);
    v45 = v14;
    v43 = (v44 + 32) & ~v44;
    v42 = v51[0] + v43;
    sub_21700DF14();
    v15 = 0;
    v41 = v13;
    while (v15 < *(v13 + 16))
    {
      v49 = *(v46 + 72);
      v16 = v38;
      sub_216DDA0A0(v42 + v49 * v15, v38);
      v17 = sub_216CE5E00(v51, v45);
      v18 = swift_allocObject();
      swift_weakInit();
      v19 = swift_allocObject();
      swift_weakInit();
      v20 = v39;
      sub_216DDA0A0(v16, v39);
      v21 = v43;
      v22 = swift_allocObject();
      *(v22 + 16) = v18;
      *(v22 + 24) = v19;
      sub_216DDA0F4(v20, v22 + v21);
      v23 = *(**(v17 + 16) + 88);

      v23(sub_216DD8614, v22);

      sub_216DDA0F4(v16, v4);
      swift_isUniquelyReferenced_nonNull_native();
      v50 = v10;
      v24 = sub_216E68164();
      if (__OFADD__(v10[2], (v25 & 1) == 0))
      {
        goto LABEL_21;
      }

      v26 = v24;
      v27 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC08C0, &unk_217039F20);
      if (sub_21700F554())
      {
        v28 = sub_216E68164();
        v13 = v41;
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_23;
        }

        v26 = v28;
      }

      else
      {
        v13 = v41;
      }

      v10 = v50;
      if (v27)
      {
        *(v50[7] + 8 * v26) = v17;

        sub_216DDA050();
      }

      else
      {
        v50[(v26 >> 6) + 8] |= 1 << v26;
        sub_216DDA0A0(v4, v10[6] + v26 * v49);
        *(v10[7] + 8 * v26) = v17;

        sub_216DDA050();
        v30 = v10[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_22;
        }

        v10[2] = v32;
      }

      if (v48 == ++v15)
      {

        v11 = v36;
        v12 = v37;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_21700F824();
    __break(1u);
  }

  else
  {
LABEL_19:
    v33 = v47;
    swift_beginAccess();
    *(v33 + 80) = v10;
  }

  return result;
}

uint64_t sub_216CF7378(uint64_t a1)
{
  v2 = type metadata accessor for MusicEvent(0);
  v33 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v36 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v3;
  MEMORY[0x28223BE20](v4);
  v6 = v31 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0890, &unk_217039E90);
  sub_2166DC484(&qword_280E46330, type metadata accessor for MusicEvent, &unk_2170438E8);
  v31[0] = v2;
  v7 = sub_21700E384();
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = 0;
    v31[1] = a1 + 32;
    v32 = v8;
    while (1)
    {
      sub_216DD9F00();
      if (v43[0])
      {
        v10 = *(v43[0] + 16);
        if (v10)
        {
          break;
        }
      }

      sub_2166997CC(v43, &qword_27CAC9328, &qword_21705FAB8);
LABEL_17:
      if (++v9 == v8)
      {
        goto LABEL_18;
      }
    }

    v34 = v43[0];
    v35 = v9;
    v11 = *(v40 + 40);
    v38 = *(v33 + 80);
    v39 = v11;
    v12 = (v38 + 32) & ~v38;
    v13 = v43[0] + v12;
    v41 = *(v33 + 72);
    sub_21700DF14();
    while (1)
    {
      sub_216DDA0A0(v13, v6);
      v14 = sub_216CE76B8(v43, v39);
      v15 = swift_allocObject();
      swift_weakInit();
      v16 = swift_allocObject();
      swift_weakInit();
      v17 = v36;
      sub_216DDA0A0(v6, v36);
      v18 = swift_allocObject();
      *(v18 + 16) = v15;
      *(v18 + 24) = v16;
      sub_216DDA0F4(v17, v18 + v12);
      v19 = *(**(v14 + 16) + 88);

      v19(sub_216DD7F38, v18);

      swift_isUniquelyReferenced_nonNull_native();
      v42 = v7;
      v20 = sub_216E68164();
      if (__OFADD__(v7[2], (v21 & 1) == 0))
      {
        break;
      }

      v22 = v20;
      v23 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0888, &qword_21705FAC0);
      if (sub_21700F554())
      {
        v24 = sub_216E68164();
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_21;
        }

        v22 = v24;
      }

      v7 = v42;
      if (v23)
      {
        *(v42[7] + 8 * v22) = v14;

        sub_216DDA050();
      }

      else
      {
        v42[(v22 >> 6) + 8] |= 1 << v22;
        sub_216DDA0A0(v6, v7[6] + v22 * v41);
        *(v7[7] + 8 * v22) = v14;

        sub_216DDA050();
        v26 = v7[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_20;
        }

        v7[2] = v28;
      }

      v13 += v41;
      if (!--v10)
      {
        sub_2166997CC(v43, &qword_27CAC9328, &qword_21705FAB8);

        v8 = v32;
        v9 = v35;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    result = sub_21700F824();
    __break(1u);
  }

  else
  {
LABEL_18:
    v29 = v40;
    swift_beginAccess();
    *(v29 + 80) = v7;
  }

  return result;
}

uint64_t sub_216CF7848(uint64_t a1)
{
  v2 = type metadata accessor for MusicEvent(0);
  v33 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v36 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v3;
  MEMORY[0x28223BE20](v4);
  v6 = v31 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0870, &unk_217039E60);
  sub_2166DC484(&qword_280E46330, type metadata accessor for MusicEvent, &unk_2170438E8);
  v31[0] = v2;
  v7 = sub_21700E384();
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = 0;
    v31[1] = a1 + 32;
    v32 = v8;
    while (1)
    {
      sub_216DD9F00();
      if (v43[0])
      {
        v10 = *(v43[0] + 16);
        if (v10)
        {
          break;
        }
      }

      sub_2166997CC(v43, &qword_27CAC8F18, &unk_21705F3D0);
LABEL_17:
      if (++v9 == v8)
      {
        goto LABEL_18;
      }
    }

    v34 = v43[0];
    v35 = v9;
    v11 = *(v40 + 40);
    v38 = *(v33 + 80);
    v39 = v11;
    v12 = (v38 + 32) & ~v38;
    v13 = v43[0] + v12;
    v41 = *(v33 + 72);
    sub_21700DF14();
    while (1)
    {
      sub_216DDA0A0(v13, v6);
      v14 = sub_216CE8F70(v43, v39);
      v15 = swift_allocObject();
      swift_weakInit();
      v16 = swift_allocObject();
      swift_weakInit();
      v17 = v36;
      sub_216DDA0A0(v6, v36);
      v18 = swift_allocObject();
      *(v18 + 16) = v15;
      *(v18 + 24) = v16;
      sub_216DDA0F4(v17, v18 + v12);
      v19 = *(**(v14 + 16) + 88);

      v19(sub_216DD6920, v18);

      swift_isUniquelyReferenced_nonNull_native();
      v42 = v7;
      v20 = sub_216E68164();
      if (__OFADD__(v7[2], (v21 & 1) == 0))
      {
        break;
      }

      v22 = v20;
      v23 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0868, &qword_217039E58);
      if (sub_21700F554())
      {
        v24 = sub_216E68164();
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_21;
        }

        v22 = v24;
      }

      v7 = v42;
      if (v23)
      {
        *(v42[7] + 8 * v22) = v14;

        sub_216DDA050();
      }

      else
      {
        v42[(v22 >> 6) + 8] |= 1 << v22;
        sub_216DDA0A0(v6, v7[6] + v22 * v41);
        *(v7[7] + 8 * v22) = v14;

        sub_216DDA050();
        v26 = v7[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_20;
        }

        v7[2] = v28;
      }

      v13 += v41;
      if (!--v10)
      {
        sub_2166997CC(v43, &qword_27CAC8F18, &unk_21705F3D0);

        v8 = v32;
        v9 = v35;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    result = sub_21700F824();
    __break(1u);
  }

  else
  {
LABEL_18:
    v29 = v40;
    swift_beginAccess();
    *(v29 + 80) = v7;
  }

  return result;
}

uint64_t sub_216CF7D18(uint64_t a1)
{
  v2 = type metadata accessor for MusicEvent(0);
  v33 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v36 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v3;
  MEMORY[0x28223BE20](v4);
  v6 = v31 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC08D8, &qword_217039F38);
  sub_2166DC484(&qword_280E46330, type metadata accessor for MusicEvent, &unk_2170438E8);
  v31[0] = v2;
  v7 = sub_21700E384();
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = 0;
    v31[1] = a1 + 32;
    v32 = v8;
    while (1)
    {
      sub_216DD9F00();
      if (v43[0])
      {
        v10 = *(v43[0] + 16);
        if (v10)
        {
          break;
        }
      }

      sub_2166997CC(v43, &qword_27CAC96F8, &unk_2170601B0);
LABEL_17:
      if (++v9 == v8)
      {
        goto LABEL_18;
      }
    }

    v34 = v43[0];
    v35 = v9;
    v11 = *(v40 + 40);
    v38 = *(v33 + 80);
    v39 = v11;
    v12 = (v38 + 32) & ~v38;
    v13 = v43[0] + v12;
    v41 = *(v33 + 72);
    sub_21700DF14();
    while (1)
    {
      sub_216DDA0A0(v13, v6);
      v14 = sub_216CEA828(v43, v39);
      v15 = swift_allocObject();
      swift_weakInit();
      v16 = swift_allocObject();
      swift_weakInit();
      v17 = v36;
      sub_216DDA0A0(v6, v36);
      v18 = swift_allocObject();
      *(v18 + 16) = v15;
      *(v18 + 24) = v16;
      sub_216DDA0F4(v17, v18 + v12);
      v19 = *(**(v14 + 16) + 88);

      v19(sub_216DD9140, v18);

      swift_isUniquelyReferenced_nonNull_native();
      v42 = v7;
      v20 = sub_216E68164();
      if (__OFADD__(v7[2], (v21 & 1) == 0))
      {
        break;
      }

      v22 = v20;
      v23 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC08D0, &qword_217039F30);
      if (sub_21700F554())
      {
        v24 = sub_216E68164();
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_21;
        }

        v22 = v24;
      }

      v7 = v42;
      if (v23)
      {
        *(v42[7] + 8 * v22) = v14;

        sub_216DDA050();
      }

      else
      {
        v42[(v22 >> 6) + 8] |= 1 << v22;
        sub_216DDA0A0(v6, v7[6] + v22 * v41);
        *(v7[7] + 8 * v22) = v14;

        sub_216DDA050();
        v26 = v7[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_20;
        }

        v7[2] = v28;
      }

      v13 += v41;
      if (!--v10)
      {
        sub_2166997CC(v43, &qword_27CAC96F8, &unk_2170601B0);

        v8 = v32;
        v9 = v35;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    result = sub_21700F824();
    __break(1u);
  }

  else
  {
LABEL_18:
    v29 = v40;
    swift_beginAccess();
    *(v29 + 80) = v7;
  }

  return result;
}

void sub_216CF81E8()
{
  OUTLINED_FUNCTION_75_6();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8A68, &qword_21705EA48);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8A70, &unk_21705EA50);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_78_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD130, &qword_217029E38);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_79_5();
  MEMORY[0x28223BE20](v9);
  v11 = v18 - v10 + 8;
  if (v3)
  {
    if (v3 == 1)
    {
      OUTLINED_FUNCTION_17_2((v0 + 8), v18);
      if (!*(v0[8] + 16))
      {
        goto LABEL_12;
      }
    }

    else
    {
      OUTLINED_FUNCTION_17_2((v0 + 9), v18);
      if (!*(v0[9] + 16))
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_17_2((v0 + 7), v18);
    if (!*(v0[7] + 16))
    {
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  sub_216CE1A8C();
  swift_endAccess();
  v12 = OUTLINED_FUNCTION_1256();
  sub_216D03B04(v12);
  OUTLINED_FUNCTION_21_52();
  sub_216DD9F00();
  OUTLINED_FUNCTION_54_3();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = &qword_21705EA48;
    OUTLINED_FUNCTION_27_0();
    sub_216DD9B04();
    sub_216CFFA4C(v1);
    v14 = v1;
    v15 = &qword_27CAC8A68;
  }

  else
  {
    v13 = &unk_21705EA50;
    OUTLINED_FUNCTION_39();
    sub_216DD9B04();
    v16 = OUTLINED_FUNCTION_947();
    sub_216D01284(v16);
    v14 = OUTLINED_FUNCTION_52_3();
  }

  sub_2166997CC(v14, v15, v13);
  sub_216CF81E8();
  sub_2166997CC(v11, &qword_27CABD130, &qword_217029E38);
LABEL_12:
  OUTLINED_FUNCTION_65_2();
}

uint64_t sub_216CF8468(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9440, &qword_21705FC38);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9448, &unk_21705FC40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD2E0, &unk_21702A030);
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v17[-v11];
  if (a1)
  {
    if (a1 == 1)
    {
      result = swift_beginAccess();
      if (!*(v1[8] + 16))
      {
        return result;
      }
    }

    else
    {
      result = swift_beginAccess();
      if (!*(v1[9] + 16))
      {
        return result;
      }
    }
  }

  else
  {
    result = swift_beginAccess();
    if (!*(v1[7] + 16))
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_216CE1BD4();
  swift_endAccess();
  sub_216D03DC4(v12);
  sub_216DD9F00();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = &qword_21705FC38;
    sub_216DD9B04();
    sub_216CFFF24(v5);
    v15 = v5;
    v16 = &qword_27CAC9440;
  }

  else
  {
    v14 = &unk_21705FC40;
    sub_216DD9B04();
    sub_216D01A2C(v8);
    v15 = v8;
    v16 = &qword_27CAC9448;
  }

  sub_2166997CC(v15, v16, v14);
  sub_216CF8468(a1);
  return sub_2166997CC(v12, &qword_27CABD2E0, &unk_21702A030);
}

uint64_t sub_216CF8768(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8F40, &qword_21705F400);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8F20, &unk_21705F3E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD178, &qword_217029E78);
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v17[-v11];
  if (a1)
  {
    if (a1 == 1)
    {
      result = swift_beginAccess();
      if (!*(v1[8] + 16))
      {
        return result;
      }
    }

    else
    {
      result = swift_beginAccess();
      if (!*(v1[9] + 16))
      {
        return result;
      }
    }
  }

  else
  {
    result = swift_beginAccess();
    if (!*(v1[7] + 16))
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_216CE1D1C();
  swift_endAccess();
  sub_216D04084(v12);
  sub_216DD9F00();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = &qword_21705F400;
    sub_216DD9B04();
    sub_216D008D4(v5);
    v15 = v5;
    v16 = &qword_27CAC8F40;
  }

  else
  {
    v14 = &unk_21705F3E0;
    sub_216DD9B04();
    sub_216D0297C(v8);
    v15 = v8;
    v16 = &qword_27CAC8F20;
  }

  sub_2166997CC(v15, v16, v14);
  sub_216CF8768(a1);
  return sub_2166997CC(v12, &qword_27CABD178, &qword_217029E78);
}

uint64_t sub_216CF8A68(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9190, &qword_21705F768);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9198, &qword_21705F770);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD190, &qword_217029E90);
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v17[-v11];
  if (a1)
  {
    if (a1 == 1)
    {
      result = swift_beginAccess();
      if (!*(v1[8] + 16))
      {
        return result;
      }
    }

    else
    {
      result = swift_beginAccess();
      if (!*(v1[9] + 16))
      {
        return result;
      }
    }
  }

  else
  {
    result = swift_beginAccess();
    if (!*(v1[7] + 16))
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_216CE1E64();
  swift_endAccess();
  sub_216D04344(v12);
  sub_216DD9F00();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = &qword_21705F768;
    sub_216DD9B04();
    sub_216D003FC(v5);
    v15 = v5;
    v16 = &qword_27CAC9190;
  }

  else
  {
    v14 = &qword_21705F770;
    sub_216DD9B04();
    sub_216D021D4(v8);
    v15 = v8;
    v16 = &qword_27CAC9198;
  }

  sub_2166997CC(v15, v16, v14);
  sub_216CF8A68(a1);
  return sub_2166997CC(v12, &qword_27CABD190, &qword_217029E90);
}

uint64_t sub_216CF8D68(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9718, &qword_2170601E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9700, &unk_2170601C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD2F8, &qword_21702A048);
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v17[-v11];
  if (a1)
  {
    if (a1 == 1)
    {
      result = swift_beginAccess();
      if (!*(v1[8] + 16))
      {
        return result;
      }
    }

    else
    {
      result = swift_beginAccess();
      if (!*(v1[9] + 16))
      {
        return result;
      }
    }
  }

  else
  {
    result = swift_beginAccess();
    if (!*(v1[7] + 16))
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_216CE1FAC();
  swift_endAccess();
  sub_216D04604(v12);
  sub_216DD9F00();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = &qword_2170601E0;
    sub_216DD9B04();
    sub_216D00DAC(v5);
    v15 = v5;
    v16 = &qword_27CAC9718;
  }

  else
  {
    v14 = &unk_2170601C0;
    sub_216DD9B04();
    sub_216D03124(v8);
    v15 = v8;
    v16 = &qword_27CAC9700;
  }

  sub_2166997CC(v15, v16, v14);
  sub_216CF8D68(a1);
  return sub_2166997CC(v12, &qword_27CABD2F8, &qword_21702A048);
}

uint64_t sub_216CF9068@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8A68, &qword_21705EA48);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8A70, &unk_21705EA50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD130, &qword_217029E38);
  MEMORY[0x28223BE20](v8);
  sub_216DD9F00();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = &qword_21705EA48;
    sub_216DD9B04();
    v10 = sub_217006224();
    (*(*(v10 - 8) + 16))(a1, v4, v10);
    v11 = v4;
    v12 = &qword_27CAC8A68;
  }

  else
  {
    v9 = &unk_21705EA50;
    sub_216DD9B04();
    v13 = sub_217006224();
    (*(*(v13 - 8) + 16))(a1, v7, v13);
    v11 = v7;
    v12 = &qword_27CAC8A70;
  }

  return sub_2166997CC(v11, v12, v9);
}

uint64_t sub_216CF92A0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9440, &qword_21705FC38);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9448, &unk_21705FC40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD2E0, &unk_21702A030);
  MEMORY[0x28223BE20](v8);
  sub_216DD9F00();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = &qword_21705FC38;
    sub_216DD9B04();
    v10 = sub_217006224();
    (*(*(v10 - 8) + 16))(a1, v4, v10);
    v11 = v4;
    v12 = &qword_27CAC9440;
  }

  else
  {
    v9 = &unk_21705FC40;
    sub_216DD9B04();
    v13 = sub_217006224();
    (*(*(v13 - 8) + 16))(a1, v7, v13);
    v11 = v7;
    v12 = &qword_27CAC9448;
  }

  return sub_2166997CC(v11, v12, v9);
}

uint64_t sub_216CF94D8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8F40, &qword_21705F400);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8F20, &unk_21705F3E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD178, &qword_217029E78);
  MEMORY[0x28223BE20](v8);
  sub_216DD9F00();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = &qword_21705F400;
    sub_216DD9B04();
    v10 = sub_217006224();
    (*(*(v10 - 8) + 16))(a1, v4, v10);
    v11 = v4;
    v12 = &qword_27CAC8F40;
  }

  else
  {
    v9 = &unk_21705F3E0;
    sub_216DD9B04();
    v13 = sub_217006224();
    (*(*(v13 - 8) + 16))(a1, v7, v13);
    v11 = v7;
    v12 = &qword_27CAC8F20;
  }

  return sub_2166997CC(v11, v12, v9);
}

uint64_t sub_216CF9710@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9190, &qword_21705F768);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9198, &qword_21705F770);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD190, &qword_217029E90);
  MEMORY[0x28223BE20](v8);
  sub_216DD9F00();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = &qword_21705F768;
    sub_216DD9B04();
    v10 = sub_217006224();
    (*(*(v10 - 8) + 16))(a1, v4, v10);
    v11 = v4;
    v12 = &qword_27CAC9190;
  }

  else
  {
    v9 = &qword_21705F770;
    sub_216DD9B04();
    v13 = sub_217006224();
    (*(*(v13 - 8) + 16))(a1, v7, v13);
    v11 = v7;
    v12 = &qword_27CAC9198;
  }

  return sub_2166997CC(v11, v12, v9);
}

uint64_t sub_216CF9948@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9718, &qword_2170601E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9700, &unk_2170601C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD2F8, &qword_21702A048);
  MEMORY[0x28223BE20](v8);
  sub_216DD9F00();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = &qword_2170601E0;
    sub_216DD9B04();
    v10 = sub_217006224();
    (*(*(v10 - 8) + 16))(a1, v4, v10);
    v11 = v4;
    v12 = &qword_27CAC9718;
  }

  else
  {
    v9 = &unk_2170601C0;
    sub_216DD9B04();
    v13 = sub_217006224();
    (*(*(v13 - 8) + 16))(a1, v7, v13);
    v11 = v7;
    v12 = &qword_27CAC9700;
  }

  return sub_2166997CC(v11, v12, v9);
}

uint64_t sub_216CF9B80@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8A68, &qword_21705EA48);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8A70, &unk_21705EA50);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD130, &qword_217029E38);
  MEMORY[0x28223BE20](v8);
  sub_216DD9F00();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = &qword_21705EA48;
    sub_216DD9B04();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB28, &unk_2170254D0);
    v11 = sub_2166D9530(&qword_27CABBB30, &qword_27CABBB28, &unk_2170254D0, &unk_21702AB1C);
    v12 = swift_allocObject();
    sub_216DD9F00();
    v13 = v4;
    v14 = &qword_27CAC8A68;
  }

  else
  {
    v9 = &unk_21705EA50;
    sub_216DD9B04();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8CD8, &qword_21705EE88);
    v11 = sub_2166D9530(&qword_280E2FA90, &qword_27CAC8CD8, &qword_21705EE88, &unk_21702AB1C);
    v12 = swift_allocObject();
    sub_216DD9F00();
    v13 = v7;
    v14 = &qword_27CAC8A70;
  }

  result = sub_2166997CC(v13, v14, v9);
  a1[3] = v10;
  a1[4] = v11;
  *a1 = v12;
  return result;
}

uint64_t sub_216CF9E58@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9440, &qword_21705FC38);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9448, &unk_21705FC40);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD2E0, &unk_21702A030);
  MEMORY[0x28223BE20](v8);
  sub_216DD9F00();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = &qword_21705FC38;
    sub_216DD9B04();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB28, &unk_2170254D0);
    v11 = sub_2166D9530(&qword_27CABBB30, &qword_27CABBB28, &unk_2170254D0, &unk_21702AB1C);
    v12 = swift_allocObject();
    sub_216DD9F00();
    v13 = v4;
    v14 = &qword_27CAC9440;
  }

  else
  {
    v9 = &unk_21705FC40;
    sub_216DD9B04();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC94E8, &qword_21705FDE0);
    v11 = sub_2166D9530(&qword_27CAC94F0, &qword_27CAC94E8, &qword_21705FDE0, &unk_21702AB1C);
    v12 = swift_allocObject();
    sub_216DD9F00();
    v13 = v7;
    v14 = &qword_27CAC9448;
  }

  result = sub_2166997CC(v13, v14, v9);
  a1[3] = v10;
  a1[4] = v11;
  *a1 = v12;
  return result;
}

uint64_t sub_216CFA130@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9190, &qword_21705F768);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9198, &qword_21705F770);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD190, &qword_217029E90);
  MEMORY[0x28223BE20](v8);
  sub_216DD9F00();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = &qword_21705F768;
    sub_216DD9B04();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB28, &unk_2170254D0);
    v11 = sub_2166D9530(&qword_27CABBB30, &qword_27CABBB28, &unk_2170254D0, &unk_21702AB1C);
    v12 = swift_allocObject();
    sub_216DD9F00();
    v13 = v4;
    v14 = &qword_27CAC9190;
  }

  else
  {
    v9 = &qword_21705F770;
    sub_216DD9B04();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9210, &qword_21705F8E8);
    v11 = sub_2166D9530(&qword_27CAC9218, &qword_27CAC9210, &qword_21705F8E8, &unk_21702AB1C);
    v12 = swift_allocObject();
    sub_216DD9F00();
    v13 = v7;
    v14 = &qword_27CAC9198;
  }

  result = sub_2166997CC(v13, v14, v9);
  a1[3] = v10;
  a1[4] = v11;
  *a1 = v12;
  return result;
}

uint64_t sub_216CFA408@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8F40, &qword_21705F400);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8F20, &unk_21705F3E0);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD178, &qword_217029E78);
  MEMORY[0x28223BE20](v8);
  sub_216DD9F00();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = &qword_21705F400;
    sub_216DD9B04();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB28, &unk_2170254D0);
    v11 = sub_2166D9530(&qword_27CABBB30, &qword_27CABBB28, &unk_2170254D0, &unk_21702AB1C);
    v12 = swift_allocObject();
    sub_216DD9F00();
    v13 = v4;
    v14 = &qword_27CAC8F40;
  }

  else
  {
    v9 = &unk_21705F3E0;
    sub_216DD9B04();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8F38, &unk_21705F3F0);
    v11 = sub_2166D9530(&qword_27CAC8F48, &qword_27CAC8F38, &unk_21705F3F0, &unk_21702AB1C);
    v12 = swift_allocObject();
    sub_216DD9F00();
    v13 = v7;
    v14 = &qword_27CAC8F20;
  }

  result = sub_2166997CC(v13, v14, v9);
  a1[3] = v10;
  a1[4] = v11;
  *a1 = v12;
  return result;
}

uint64_t sub_216CFA6E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9718, &qword_2170601E0);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9700, &unk_2170601C0);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD2F8, &qword_21702A048);
  MEMORY[0x28223BE20](v8);
  sub_216DD9F00();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = &qword_2170601E0;
    sub_216DD9B04();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB28, &unk_2170254D0);
    v11 = sub_2166D9530(&qword_27CABBB30, &qword_27CABBB28, &unk_2170254D0, &unk_21702AB1C);
    v12 = swift_allocObject();
    sub_216DD9F00();
    v13 = v4;
    v14 = &qword_27CAC9718;
  }

  else
  {
    v9 = &unk_2170601C0;
    sub_216DD9B04();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9710, &unk_2170601D0);
    v11 = sub_2166D9530(&qword_27CAC9720, &qword_27CAC9710, &unk_2170601D0, &unk_21702AB1C);
    v12 = swift_allocObject();
    sub_216DD9F00();
    v13 = v7;
    v14 = &qword_27CAC9700;
  }

  result = sub_2166997CC(v13, v14, v9);
  a1[3] = v10;
  a1[4] = v11;
  *a1 = v12;
  return result;
}

void sub_216CFA9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_50_19();
  OUTLINED_FUNCTION_1024(v26);
  v27 = *(v23 + 80);
  if (v27 && *(v27 + 16) && (sub_216E68164(), (v28 & 1) != 0))
  {
    swift_endAccess();
    OUTLINED_FUNCTION_0_1();
    v30 = *(v29 + 96);

    v30(v31);
    OUTLINED_FUNCTION_377();
    swift_beginAccess();
    if (*(v25 + 80))
    {
      v22(v24);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
    }
  }

  else
  {
    swift_endAccess();
  }

  OUTLINED_FUNCTION_49_25();
}

void sub_216CFAA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_50_19();
  OUTLINED_FUNCTION_1024(v26);
  v27 = *(v23 + 80);
  if (v27 && *(v27 + 16) && (sub_216E68164(), (v28 & 1) != 0))
  {
    swift_endAccess();
    OUTLINED_FUNCTION_0_1();
    v30 = *(v29 + 96);

    v30(v31);
    OUTLINED_FUNCTION_377();
    swift_beginAccess();
    if (*(v25 + 80))
    {
      v22(v24);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
    }
  }

  else
  {
    swift_endAccess();
  }

  OUTLINED_FUNCTION_49_25();
}

void sub_216CFAB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  (*(**(a1 + 16) + 96))();
  swift_beginAccess();
  v8 = sub_21693B60C();
  if (v8)
  {
    v9 = v8;
    v10 = v8 + 32;
    swift_endAccess();
    v11 = sub_2166BF3C8(v9);
    sub_21700DF14();
    v12 = 0;
    v13 = 0;
    while (1)
    {
      if (v11 == v13)
      {
        swift_bridgeObjectRelease_n();
        return;
      }

      if ((v9 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x21CEA0220](v13, v9);
        swift_unknownObjectRelease();
        v14 = v20;
      }

      else
      {
        if (v13 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v14 = *(v10 + 8 * v13);
      }

      if (v14 == a1)
      {
        break;
      }

      v12 -= 8;
      if (__OFADD__(v13++, 1))
      {
        goto LABEL_21;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v9 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      v9 = sub_216E17104();
    }

    v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17 > v13)
    {
      v18 = v17 - 1;
      sub_21693B604(((v9 & 0xFFFFFFFFFFFFFF8) - v12 + 40), ~v13 + v17, ((v9 & 0xFFFFFFFFFFFFFF8) - v12 + 32));
      *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v18;

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *(v4 + 88);
      sub_216939CF0(v9, a2, a3, isUniquelyReferenced_nonNull_native);
      *(v4 + 88) = v21;
      goto LABEL_18;
    }

LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_18:
    swift_endAccess();
  }
}

void sub_216CFAD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  (*(**(a1 + 16) + 96))();
  swift_beginAccess();
  v8 = sub_21693B60C();
  if (v8)
  {
    v9 = v8;
    v10 = v8 + 32;
    swift_endAccess();
    v11 = sub_2166BF3C8(v9);
    sub_21700DF14();
    v12 = 0;
    v13 = 0;
    while (1)
    {
      if (v11 == v13)
      {
        swift_bridgeObjectRelease_n();
        return;
      }

      if ((v9 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x21CEA0220](v13, v9);
        swift_unknownObjectRelease();
        v14 = v20;
      }

      else
      {
        if (v13 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v14 = *(v10 + 8 * v13);
      }

      if (v14 == a1)
      {
        break;
      }

      v12 -= 8;
      if (__OFADD__(v13++, 1))
      {
        goto LABEL_21;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v9 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      v9 = sub_216E17104();
    }

    v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17 > v13)
    {
      v18 = v17 - 1;
      sub_21693B604(((v9 & 0xFFFFFFFFFFFFFF8) - v12 + 40), ~v13 + v17, ((v9 & 0xFFFFFFFFFFFFFF8) - v12 + 32));
      *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v18;

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *(v4 + 88);
      sub_21693A054(v9, a2, a3, isUniquelyReferenced_nonNull_native);
      *(v4 + 88) = v21;
      goto LABEL_18;
    }

LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_18:
    swift_endAccess();
  }
}

void sub_216CFAF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  (*(**(a1 + 16) + 96))();
  swift_beginAccess();
  v6 = sub_21693B60C();
  if (v6)
  {
    v7 = v6;
    v8 = v6 + 32;
    swift_endAccess();
    v9 = sub_2166BF3C8(v7);
    sub_21700DF14();
    v10 = 0;
    v11 = 0;
    while (1)
    {
      if (v9 == v11)
      {
        swift_bridgeObjectRelease_n();
        return;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x21CEA0220](v11, v7);
        swift_unknownObjectRelease();
        v12 = v17;
      }

      else
      {
        if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v12 = *(v8 + 8 * v11);
      }

      if (v12 == a1)
      {
        break;
      }

      v10 -= 8;
      if (__OFADD__(v11++, 1))
      {
        goto LABEL_21;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v7 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      v7 = sub_216E17104();
    }

    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15 > v11)
    {
      v16 = v15 - 1;
      sub_21693B604(((v7 & 0xFFFFFFFFFFFFFF8) - v10 + 40), ~v11 + v15, ((v7 & 0xFFFFFFFFFFFFFF8) - v10 + 32));
      *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v16;

      swift_beginAccess();
      sub_21700DF14();
      swift_isUniquelyReferenced_nonNull_native();
      v18 = *(v4 + 88);
      sub_21693A560();
      *(v4 + 88) = v18;

      goto LABEL_18;
    }

LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_18:
    swift_endAccess();
  }
}

void sub_216CFB190(uint64_t a1)
{
  v2 = v1;
  (*(**(a1 + 16) + 96))();
  swift_beginAccess();
  v4 = sub_21693B60C();
  if (v4)
  {
    v5 = v4;
    v6 = v4 + 32;
    swift_endAccess();
    v7 = sub_2166BF3C8(v5);
    sub_21700DF14();
    v8 = 0;
    v9 = 0;
    while (1)
    {
      if (v7 == v9)
      {
        swift_bridgeObjectRelease_n();
        return;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x21CEA0220](v9, v5);
        swift_unknownObjectRelease();
        v10 = v15;
      }

      else
      {
        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v10 = *(v6 + 8 * v9);
      }

      if (v10 == a1)
      {
        break;
      }

      v8 -= 8;
      if (__OFADD__(v9++, 1))
      {
        goto LABEL_21;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v5 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      v5 = sub_216E17104();
    }

    v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13 > v9)
    {
      v14 = v13 - 1;
      sub_21693B604(((v5 & 0xFFFFFFFFFFFFFF8) - v8 + 40), ~v9 + v13, ((v5 & 0xFFFFFFFFFFFFFF8) - v8 + 32));
      *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v14;

      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v16 = *(v2 + 88);
      sub_21693AB24();
      *(v2 + 88) = v16;
      goto LABEL_18;
    }

LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_18:
    swift_endAccess();
  }
}

void sub_216CFB390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  (*(**(a1 + 16) + 96))();
  swift_beginAccess();
  v6 = sub_21693B60C();
  if (v6)
  {
    v7 = v6;
    v8 = v6 + 32;
    swift_endAccess();
    v9 = sub_2166BF3C8(v7);
    sub_21700DF14();
    v10 = 0;
    v11 = 0;
    while (1)
    {
      if (v9 == v11)
      {
        swift_bridgeObjectRelease_n();
        return;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x21CEA0220](v11, v7);
        swift_unknownObjectRelease();
        v12 = v17;
      }

      else
      {
        if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v12 = *(v8 + 8 * v11);
      }

      if (v12 == a1)
      {
        break;
      }

      v10 -= 8;
      if (__OFADD__(v11++, 1))
      {
        goto LABEL_21;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v7 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      v7 = sub_216E17104();
    }

    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15 > v11)
    {
      v16 = v15 - 1;
      sub_21693B604(((v7 & 0xFFFFFFFFFFFFFF8) - v10 + 40), ~v11 + v15, ((v7 & 0xFFFFFFFFFFFFFF8) - v10 + 32));
      *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v16;

      swift_beginAccess();
      sub_21700DF14();
      swift_isUniquelyReferenced_nonNull_native();
      v18 = *(v4 + 88);
      sub_21693AEC4();
      *(v4 + 88) = v18;

      goto LABEL_18;
    }

LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_18:
    swift_endAccess();
  }
}

void sub_216CFB5A0()
{
  OUTLINED_FUNCTION_75_6();
  v2 = v1;
  v4 = v3;
  v5 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_216E15A14();
    v5 = v13;
  }

  v6 = *(v5 + 16);
  if (v6 <= v2)
  {
    __break(1u);
  }

  else
  {
    v7 = _s7SectionVMa(0);
    OUTLINED_FUNCTION_2(v7);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + v10 * v2;
    v12 = OUTLINED_FUNCTION_645();
    sub_216DDA0F4(v12, v4);
    sub_216939630(v11 + v10, v6 - 1 - v2, v11);
    *(v5 + 16) = v6 - 1;
    *v0 = v5;
    OUTLINED_FUNCTION_65_2();
  }
}

void sub_216CFB690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_1172();
  a23 = v24;
  a24 = v25;
  v27 = v26;
  OUTLINED_FUNCTION_17_2(v28 + 16, &a12);
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_17_2(v27 + 16, &a9);
    if (swift_weakLoadStrong())
    {
      OUTLINED_FUNCTION_119();
      OUTLINED_FUNCTION_1140();
      sub_216CFB734();
    }
  }

  OUTLINED_FUNCTION_1171();
}

void sub_216CFB734()
{
  OUTLINED_FUNCTION_49();
  v27 = v2;
  v28 = v3;
  v25 = v5;
  v26 = v4;
  v24 = v6;
  v8 = v7;
  v23 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
  OUTLINED_FUNCTION_581();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_25_1();
  v11 = *(v8 + 48);
  v12 = *(v8 + 72);
  v22 = *(v8 + 64);
  OUTLINED_FUNCTION_0_1();
  v21 = *(v13 + 128);
  v14 = type metadata accessor for SectionChangeInstruction(0);
  v15 = sub_2166DC484(&qword_280E360E0, type metadata accessor for SectionChangeInstruction, &unk_21702DE84);
  sub_2166DC484(&qword_280E360D8, type metadata accessor for SectionChangeInstruction, &unk_21702DED0);
  OUTLINED_FUNCTION_823();
  sub_21700DF14();
  v21(&v29, v8 + 8, v14, v15, type metadata accessor for SectionChangeInstruction);
  sub_217006214();
  sub_216DDA0A0(v23, v0 + v1[11]);
  OUTLINED_FUNCTION_576();
  sub_216DD9F00();
  v16 = *(v8 + 56);
  v17 = (v0 + v1[12]);
  *v17 = v22;
  v17[1] = v12;
  *(v0 + v1[14]) = v11;
  *(v0 + v1[15]) = v16;
  sub_21700DF14();
  v25(v24, v22, v12);
  v28(v0);
  sub_2166997CC(v0, v26, v27);
  OUTLINED_FUNCTION_31_9();
  sub_2166997CC(v18, v19, v20);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216CFB930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  OUTLINED_FUNCTION_17_2(a2 + 16, v9);
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_17_2(a3 + 16, &v8);
    if (swift_weakLoadStrong())
    {
      OUTLINED_FUNCTION_31_9();
      a5();
    }
  }

  return result;
}

uint64_t sub_216CFB9D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v22 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8A70, &unk_21705EA50);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = *(**(a3 + 16) + 128);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6B80, &qword_2170141F0);
  v11 = sub_2166D9530(&qword_280E3A198, &qword_27CAB6B80, &qword_2170141F0, &unk_21701CEB8);
  v12 = sub_2166D9530(&qword_280E3A190, &qword_27CAB6B80, &qword_2170141F0, &unk_21701CF04);
  v9(v25, a2 + 8, v10, v11, v12);
  sub_217006214();
  v13 = v23;
  sub_216DDA0A0(v23, &v8[v6[11]]);
  sub_216DD9F00();
  LOBYTE(v9) = *(a2 + 56);
  v14 = *(a2 + 48);
  sub_216CFDFF8(&qword_27CAC8CE0, &qword_21705EE90);
  v8[v6[13]] = v9;
  *&v8[v6[14]] = v14;
  sub_21700DF14();
  sub_216CFA9B8(v13, sub_216A51654, v15, v16, v17, v18, v19, v20, v22, v23, v24, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9], v25[10]);
  sub_216CFE088(v8);
  sub_2166997CC(v8, &qword_27CAC8A70, &unk_21705EA50);
  return sub_2166997CC(v25, &qword_27CAC8CD8, &qword_21705EE88);
}

uint64_t sub_216CFBC14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v22 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9448, &unk_21705FC40);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = *(**(a3 + 16) + 128);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BD8, &qword_2170142E0);
  v11 = sub_2166D9530(&qword_27CAC94D8, &qword_27CAB6BD8, &qword_2170142E0, &unk_21701CEB8);
  v12 = sub_2166D9530(&qword_27CAC94E0, &qword_27CAB6BD8, &qword_2170142E0, &unk_21701CF04);
  v9(v25, a2 + 8, v10, v11, v12);
  sub_217006214();
  v13 = v23;
  sub_216DDA0A0(v23, &v8[v6[11]]);
  sub_216DD9F00();
  LOBYTE(v9) = *(a2 + 56);
  v14 = *(a2 + 48);
  sub_216CFDFF8(&qword_27CAC94F8, &qword_21705FDE8);
  v8[v6[13]] = v9;
  *&v8[v6[14]] = v14;
  sub_21700DF14();
  sub_216CFA9B8(v13, sub_216A517D0, v15, v16, v17, v18, v19, v20, v22, v23, v24, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9], v25[10]);
  sub_216CFE4CC(v8);
  sub_2166997CC(v8, &qword_27CAC9448, &unk_21705FC40);
  return sub_2166997CC(v25, &qword_27CAC94E8, &qword_21705FDE0);
}

uint64_t sub_216CFBE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v22 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9198, &qword_21705F770);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = *(**(a3 + 16) + 128);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6B90, &qword_217014200);
  v11 = sub_2166D9530(&qword_27CAC9330, &qword_27CAB6B90, &qword_217014200, &unk_21701CEB8);
  v12 = sub_2166D9530(&qword_27CAC9338, &qword_27CAB6B90, &qword_217014200, &unk_21701CF04);
  v9(v25, a2 + 8, v10, v11, v12);
  sub_217006214();
  v13 = v23;
  sub_216DDA0A0(v23, &v8[v6[11]]);
  sub_216DD9F00();
  LOBYTE(v9) = *(a2 + 56);
  v14 = *(a2 + 48);
  sub_216CFDFF8(&qword_27CAC9340, &qword_21705FAC8);
  v8[v6[13]] = v9;
  *&v8[v6[14]] = v14;
  sub_21700DF14();
  sub_216CFAA9C(v13, sub_216A51C90, v15, v16, v17, v18, v19, v20, v22, v23, v24, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9], v25[10]);
  sub_216CFE910(v8);
  sub_2166997CC(v8, &qword_27CAC9198, &qword_21705F770);
  return sub_2166997CC(v25, &qword_27CAC9210, &qword_21705F8E8);
}

uint64_t sub_216CFC08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v22 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8F20, &unk_21705F3E0);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = *(**(a3 + 16) + 128);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6B88, &qword_2170141F8);
  v11 = sub_2166D9530(&qword_27CAC8F28, &qword_27CAB6B88, &qword_2170141F8, &unk_21701CEB8);
  v12 = sub_2166D9530(&qword_27CAC8F30, &qword_27CAB6B88, &qword_2170141F8, &unk_21701CF04);
  v9(v25, a2 + 8, v10, v11, v12);
  sub_217006214();
  v13 = v23;
  sub_216DDA0A0(v23, &v8[v6[11]]);
  sub_216DD9F00();
  LOBYTE(v9) = *(a2 + 56);
  v14 = *(a2 + 48);
  sub_216CFDFF8(&qword_27CAC8F50, &qword_21705F408);
  v8[v6[13]] = v9;
  *&v8[v6[14]] = v14;
  sub_21700DF14();
  sub_216CFAA9C(v13, sub_216A51E0C, v15, v16, v17, v18, v19, v20, v22, v23, v24, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9], v25[10]);
  sub_216CFED54(v8);
  sub_2166997CC(v8, &qword_27CAC8F20, &unk_21705F3E0);
  return sub_2166997CC(v25, &qword_27CAC8F38, &unk_21705F3F0);
}

uint64_t sub_216CFC2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v22 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9700, &unk_2170601C0);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = *(**(a3 + 16) + 128);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BE0, &qword_2170142E8);
  v11 = sub_2166D9530(qword_280E3A1A0, &qword_27CAB6BE0, &qword_2170142E8, &unk_21701CEB8);
  v12 = sub_2166D9530(&qword_27CAC9708, &qword_27CAB6BE0, &qword_2170142E8, &unk_21701CF04);
  v9(v25, a2 + 8, v10, v11, v12);
  sub_217006214();
  v13 = v23;
  sub_216DDA0A0(v23, &v8[v6[11]]);
  sub_216DD9F00();
  LOBYTE(v9) = *(a2 + 56);
  v14 = *(a2 + 48);
  sub_216CFDFF8(&qword_27CAC9728, &qword_2170601E8);
  v8[v6[13]] = v9;
  *&v8[v6[14]] = v14;
  sub_21700DF14();
  sub_216CFAA9C(v13, sub_216A52124, v15, v16, v17, v18, v19, v20, v22, v23, v24, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9], v25[10]);
  sub_216CFF198(v8);
  sub_2166997CC(v8, &qword_27CAC9700, &unk_2170601C0);
  return sub_2166997CC(v25, &qword_27CAC9710, &unk_2170601D0);
}

uint64_t sub_216CFC504(uint64_t a1)
{
  v2 = v1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD130, &qword_217029E38);
  MEMORY[0x28223BE20](v38);
  v5 = &v35 - v4;
  v37 = type metadata accessor for MusicEvent(0);
  MEMORY[0x28223BE20](v37);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8A68, &qword_21705EA48);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  if (qword_280E2C0F0 != -1)
  {
    swift_once();
  }

  v14 = sub_217007CA4();
  __swift_project_value_buffer(v14, qword_280E2C0F8);
  sub_216DD9F00();
  v39 = a1;
  sub_216DD9F00();
  v15 = sub_217007C84();
  v16 = sub_21700EDA4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v40[0] = v18;
    *v17 = 136446466;
    v19 = &v13[v8[10]];
    v35 = v5;
    v36 = v2;
    v21 = *v19;
    v20 = v19[1];
    sub_21700DF14();
    sub_2166997CC(v13, &qword_27CAC8A68, &qword_21705EA48);
    v22 = sub_2166A85FC(v21, v20, v40);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2082;
    sub_216DDA0A0(&v10[v8[9]], v7);
    v23 = sub_21700E594();
    v25 = v24;
    sub_2166997CC(v10, &qword_27CAC8A68, &qword_21705EA48);
    v26 = sub_2166A85FC(v23, v25, v40);
    v5 = v35;

    *(v17 + 14) = v26;
    v2 = v36;
    _os_log_impl(&dword_216679000, v15, v16, "Section %{public}s invalidated by: %{public}s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v18, -1, -1);
    MEMORY[0x21CEA1440](v17, -1, -1);
  }

  else
  {

    sub_2166997CC(v10, &qword_27CAC8A68, &qword_21705EA48);
    sub_2166997CC(v13, &qword_27CAC8A68, &qword_21705EA48);
  }

  v31 = *(v39 + v8[13]);
  if (v31 == 3)
  {
    if (*(v2 + 48))
    {
      return sub_216CFFA4C(v39);
    }

    if (!*(v39 + v8[12]))
    {
      sub_216CF5028(*(v39 + v8[10]), *(v39 + v8[10] + 8), sub_2166BF3C8, sub_216A51630, v27, v28, v29, v30, v35, v36, v37, v38, v39, v40[0], v40[1], v40[2], v40[3], v40[4], v40[5], v40[6], v40[7], v40[8], v40[9], v40[10]);
    }

    sub_216DD9F00();
    swift_storeEnumTagMultiPayload();
    sub_216CFF5DC();
    v34 = v5;
  }

  else
  {
    sub_216DD9F00();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB38, &qword_2170254E0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_217013DA0;
    *(v33 + 32) = v31;
    sub_216CFF5DC();

    v34 = v5;
  }

  return sub_2166997CC(v34, &qword_27CABD130, &qword_217029E38);
}

uint64_t sub_216CFCA68(uint64_t a1)
{
  v2 = v1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD2E0, &unk_21702A030);
  MEMORY[0x28223BE20](v38);
  v5 = &v35 - v4;
  v37 = type metadata accessor for MusicEvent(0);
  MEMORY[0x28223BE20](v37);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9440, &qword_21705FC38);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  if (qword_280E2C0F0 != -1)
  {
    swift_once();
  }

  v14 = sub_217007CA4();
  __swift_project_value_buffer(v14, qword_280E2C0F8);
  sub_216DD9F00();
  v39 = a1;
  sub_216DD9F00();
  v15 = sub_217007C84();
  v16 = sub_21700EDA4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v40[0] = v18;
    *v17 = 136446466;
    v19 = &v13[v8[10]];
    v35 = v5;
    v36 = v2;
    v21 = *v19;
    v20 = v19[1];
    sub_21700DF14();
    sub_2166997CC(v13, &qword_27CAC9440, &qword_21705FC38);
    v22 = sub_2166A85FC(v21, v20, v40);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2082;
    sub_216DDA0A0(&v10[v8[9]], v7);
    v23 = sub_21700E594();
    v25 = v24;
    sub_2166997CC(v10, &qword_27CAC9440, &qword_21705FC38);
    v26 = sub_2166A85FC(v23, v25, v40);
    v5 = v35;

    *(v17 + 14) = v26;
    v2 = v36;
    _os_log_impl(&dword_216679000, v15, v16, "Section %{public}s invalidated by: %{public}s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v18, -1, -1);
    MEMORY[0x21CEA1440](v17, -1, -1);
  }

  else
  {

    sub_2166997CC(v10, &qword_27CAC9440, &qword_21705FC38);
    sub_2166997CC(v13, &qword_27CAC9440, &qword_21705FC38);
  }

  v31 = *(v39 + v8[13]);
  if (v31 == 3)
  {
    if (*(v2 + 48))
    {
      return sub_216CFFF24(v39);
    }

    if (!*(v39 + v8[12]))
    {
      sub_216CF5028(*(v39 + v8[10]), *(v39 + v8[10] + 8), sub_2166BF3C8, sub_216A517AC, v27, v28, v29, v30, v35, v36, v37, v38, v39, v40[0], v40[1], v40[2], v40[3], v40[4], v40[5], v40[6], v40[7], v40[8], v40[9], v40[10]);
    }

    sub_216DD9F00();
    swift_storeEnumTagMultiPayload();
    sub_216CFF5DC();
    v34 = v5;
  }

  else
  {
    sub_216DD9F00();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB38, &qword_2170254E0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_217013DA0;
    *(v33 + 32) = v31;
    sub_216CFF5DC();

    v34 = v5;
  }

  return sub_2166997CC(v34, &qword_27CABD2E0, &unk_21702A030);
}

uint64_t sub_216CFCFCC(uint64_t a1)
{
  v2 = v1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD190, &qword_217029E90);
  MEMORY[0x28223BE20](v38);
  v5 = &v35 - v4;
  v37 = type metadata accessor for MusicEvent(0);
  MEMORY[0x28223BE20](v37);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9190, &qword_21705F768);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  if (qword_280E2C0F0 != -1)
  {
    swift_once();
  }

  v14 = sub_217007CA4();
  __swift_project_value_buffer(v14, qword_280E2C0F8);
  sub_216DD9F00();
  v39 = a1;
  sub_216DD9F00();
  v15 = sub_217007C84();
  v16 = sub_21700EDA4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v40[0] = v18;
    *v17 = 136446466;
    v19 = &v13[v8[10]];
    v35 = v5;
    v36 = v2;
    v21 = *v19;
    v20 = v19[1];
    sub_21700DF14();
    sub_2166997CC(v13, &qword_27CAC9190, &qword_21705F768);
    v22 = sub_2166A85FC(v21, v20, v40);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2082;
    sub_216DDA0A0(&v10[v8[9]], v7);
    v23 = sub_21700E594();
    v25 = v24;
    sub_2166997CC(v10, &qword_27CAC9190, &qword_21705F768);
    v26 = sub_2166A85FC(v23, v25, v40);
    v5 = v35;

    *(v17 + 14) = v26;
    v2 = v36;
    _os_log_impl(&dword_216679000, v15, v16, "Section %{public}s invalidated by: %{public}s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v18, -1, -1);
    MEMORY[0x21CEA1440](v17, -1, -1);
  }

  else
  {

    sub_2166997CC(v10, &qword_27CAC9190, &qword_21705F768);
    sub_2166997CC(v13, &qword_27CAC9190, &qword_21705F768);
  }

  v31 = *(v39 + v8[13]);
  if (v31 == 3)
  {
    if (*(v2 + 48))
    {
      return sub_216D003FC(v39);
    }

    if (!*(v39 + v8[12]))
    {
      sub_216CF5154(*(v39 + v8[10]), *(v39 + v8[10] + 8), sub_2166BF3C8, sub_216A51C6C, v27, v28, v29, v30, v35, v36, v37, v38, v39, v40[0], v40[1], v40[2], v40[3], v40[4], v40[5], v40[6], v40[7], v40[8], v40[9], v40[10]);
    }

    sub_216DD9F00();
    swift_storeEnumTagMultiPayload();
    sub_216CFF814();
    v34 = v5;
  }

  else
  {
    sub_216DD9F00();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB38, &qword_2170254E0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_217013DA0;
    *(v33 + 32) = v31;
    sub_216CFF814();

    v34 = v5;
  }

  return sub_2166997CC(v34, &qword_27CABD190, &qword_217029E90);
}

uint64_t sub_216CFD530(uint64_t a1)
{
  v2 = v1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD178, &qword_217029E78);
  MEMORY[0x28223BE20](v38);
  v5 = &v35 - v4;
  v37 = type metadata accessor for MusicEvent(0);
  MEMORY[0x28223BE20](v37);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8F40, &qword_21705F400);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  if (qword_280E2C0F0 != -1)
  {
    swift_once();
  }

  v14 = sub_217007CA4();
  __swift_project_value_buffer(v14, qword_280E2C0F8);
  sub_216DD9F00();
  v39 = a1;
  sub_216DD9F00();
  v15 = sub_217007C84();
  v16 = sub_21700EDA4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v40[0] = v18;
    *v17 = 136446466;
    v19 = &v13[v8[10]];
    v35 = v5;
    v36 = v2;
    v21 = *v19;
    v20 = v19[1];
    sub_21700DF14();
    sub_2166997CC(v13, &qword_27CAC8F40, &qword_21705F400);
    v22 = sub_2166A85FC(v21, v20, v40);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2082;
    sub_216DDA0A0(&v10[v8[9]], v7);
    v23 = sub_21700E594();
    v25 = v24;
    sub_2166997CC(v10, &qword_27CAC8F40, &qword_21705F400);
    v26 = sub_2166A85FC(v23, v25, v40);
    v5 = v35;

    *(v17 + 14) = v26;
    v2 = v36;
    _os_log_impl(&dword_216679000, v15, v16, "Section %{public}s invalidated by: %{public}s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v18, -1, -1);
    MEMORY[0x21CEA1440](v17, -1, -1);
  }

  else
  {

    sub_2166997CC(v10, &qword_27CAC8F40, &qword_21705F400);
    sub_2166997CC(v13, &qword_27CAC8F40, &qword_21705F400);
  }

  v31 = *(v39 + v8[13]);
  if (v31 == 3)
  {
    if (*(v2 + 48))
    {
      return sub_216D008D4(v39);
    }

    if (!*(v39 + v8[12]))
    {
      sub_216CF5028(*(v39 + v8[10]), *(v39 + v8[10] + 8), sub_2166BF3C8, sub_216A51DE8, v27, v28, v29, v30, v35, v36, v37, v38, v39, v40[0], v40[1], v40[2], v40[3], v40[4], v40[5], v40[6], v40[7], v40[8], v40[9], v40[10]);
    }

    sub_216DD9F00();
    swift_storeEnumTagMultiPayload();
    sub_216CFF814();
    v34 = v5;
  }

  else
  {
    sub_216DD9F00();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB38, &qword_2170254E0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_217013DA0;
    *(v33 + 32) = v31;
    sub_216CFF814();

    v34 = v5;
  }

  return sub_2166997CC(v34, &qword_27CABD178, &qword_217029E78);
}

uint64_t sub_216CFDA94(uint64_t a1)
{
  v2 = v1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD2F8, &qword_21702A048);
  MEMORY[0x28223BE20](v38);
  v5 = &v35 - v4;
  v37 = type metadata accessor for MusicEvent(0);
  MEMORY[0x28223BE20](v37);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9718, &qword_2170601E0);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  if (qword_280E2C0F0 != -1)
  {
    swift_once();
  }

  v14 = sub_217007CA4();
  __swift_project_value_buffer(v14, qword_280E2C0F8);
  sub_216DD9F00();
  v39 = a1;
  sub_216DD9F00();
  v15 = sub_217007C84();
  v16 = sub_21700EDA4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v40[0] = v18;
    *v17 = 136446466;
    v19 = &v13[v8[10]];
    v35 = v5;
    v36 = v2;
    v21 = *v19;
    v20 = v19[1];
    sub_21700DF14();
    sub_2166997CC(v13, &qword_27CAC9718, &qword_2170601E0);
    v22 = sub_2166A85FC(v21, v20, v40);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2082;
    sub_216DDA0A0(&v10[v8[9]], v7);
    v23 = sub_21700E594();
    v25 = v24;
    sub_2166997CC(v10, &qword_27CAC9718, &qword_2170601E0);
    v26 = sub_2166A85FC(v23, v25, v40);
    v5 = v35;

    *(v17 + 14) = v26;
    v2 = v36;
    _os_log_impl(&dword_216679000, v15, v16, "Section %{public}s invalidated by: %{public}s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v18, -1, -1);
    MEMORY[0x21CEA1440](v17, -1, -1);
  }

  else
  {

    sub_2166997CC(v10, &qword_27CAC9718, &qword_2170601E0);
    sub_2166997CC(v13, &qword_27CAC9718, &qword_2170601E0);
  }

  v31 = *(v39 + v8[13]);
  if (v31 == 3)
  {
    if (*(v2 + 48))
    {
      return sub_216D00DAC(v39);
    }

    if (!*(v39 + v8[12]))
    {
      sub_216CF5154(*(v39 + v8[10]), *(v39 + v8[10] + 8), sub_2166BF3C8, sub_216A5202C, v27, v28, v29, v30, v35, v36, v37, v38, v39, v40[0], v40[1], v40[2], v40[3], v40[4], v40[5], v40[6], v40[7], v40[8], v40[9], v40[10]);
    }

    sub_216DD9F00();
    swift_storeEnumTagMultiPayload();
    sub_216CFF814();
    v34 = v5;
  }

  else
  {
    sub_216DD9F00();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB38, &qword_2170254E0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_217013DA0;
    *(v33 + 32) = v31;
    sub_216CFF814();

    v34 = v5;
  }

  return sub_2166997CC(v34, &qword_27CABD2F8, &qword_21702A048);
}

uint64_t sub_216CFDFF8(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  if (swift_dynamicCastClass())
  {
    return sub_216DD9F00();
  }

  sub_2170061E4();
  v4 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_216CFE088(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD130, &qword_217029E38);
  MEMORY[0x28223BE20](v2);
  v4 = v29 - v3;
  v5 = type metadata accessor for MusicEvent(0);
  MEMORY[0x28223BE20](v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8A70, &unk_21705EA50);
  MEMORY[0x28223BE20](v8);
  v10 = v29 - v9;
  if (qword_280E2C0F0 != -1)
  {
    swift_once();
  }

  v11 = sub_217007CA4();
  __swift_project_value_buffer(v11, qword_280E2C0F8);
  sub_216DD9F00();
  v12 = sub_217007C84();
  v13 = sub_21700EDA4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29[1] = v2;
    v16 = v15;
    v30 = v15;
    *v14 = 136446210;
    sub_216DDA0A0(&v10[v8[9]], v7);
    v17 = sub_21700E594();
    v19 = v18;
    sub_2166997CC(v10, &qword_27CAC8A70, &unk_21705EA50);
    v20 = sub_2166A85FC(v17, v19, &v30);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_216679000, v12, v13, "Page invalidated by: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x21CEA1440](v16, -1, -1);
    MEMORY[0x21CEA1440](v14, -1, -1);
  }

  else
  {

    sub_2166997CC(v10, &qword_27CAC8A70, &unk_21705EA50);
  }

  v27 = *(a1 + v8[12]);
  if (!v27 || !*(v27 + 16))
  {
    if (*(v29[2] + 48) == 1)
    {
      return sub_216D01284(a1);
    }

    if (*(a1 + v8[11]) != 2)
    {
      sub_216CF2CE4(&qword_27CAC0850, &unk_217039E30, v21, v22, v23, v24, v25, v26);
    }
  }

  sub_216DD9F00();
  swift_storeEnumTagMultiPayload();
  sub_216CFF5DC();
  return sub_2166997CC(v4, &qword_27CABD130, &qword_217029E38);
}

uint64_t sub_216CFE4CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD2E0, &unk_21702A030);
  MEMORY[0x28223BE20](v2);
  v4 = v29 - v3;
  v5 = type metadata accessor for MusicEvent(0);
  MEMORY[0x28223BE20](v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9448, &unk_21705FC40);
  MEMORY[0x28223BE20](v8);
  v10 = v29 - v9;
  if (qword_280E2C0F0 != -1)
  {
    swift_once();
  }

  v11 = sub_217007CA4();
  __swift_project_value_buffer(v11, qword_280E2C0F8);
  sub_216DD9F00();
  v12 = sub_217007C84();
  v13 = sub_21700EDA4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29[1] = v2;
    v16 = v15;
    v30 = v15;
    *v14 = 136446210;
    sub_216DDA0A0(&v10[v8[9]], v7);
    v17 = sub_21700E594();
    v19 = v18;
    sub_2166997CC(v10, &qword_27CAC9448, &unk_21705FC40);
    v20 = sub_2166A85FC(v17, v19, &v30);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_216679000, v12, v13, "Page invalidated by: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x21CEA1440](v16, -1, -1);
    MEMORY[0x21CEA1440](v14, -1, -1);
  }

  else
  {

    sub_2166997CC(v10, &qword_27CAC9448, &unk_21705FC40);
  }

  v27 = *(a1 + v8[12]);
  if (!v27 || !*(v27 + 16))
  {
    if (*(v29[2] + 48) == 1)
    {
      return sub_216D01A2C(a1);
    }

    if (*(a1 + v8[11]) != 2)
    {
      sub_216CF2CE4(&qword_27CAC08B8, &qword_21705FC50, v21, v22, v23, v24, v25, v26);
    }
  }

  sub_216DD9F00();
  swift_storeEnumTagMultiPayload();
  sub_216CFF5DC();
  return sub_2166997CC(v4, &qword_27CABD2E0, &unk_21702A030);
}

uint64_t sub_216CFE910(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD190, &qword_217029E90);
  MEMORY[0x28223BE20](v2);
  v4 = v29 - v3;
  v5 = type metadata accessor for MusicEvent(0);
  MEMORY[0x28223BE20](v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9198, &qword_21705F770);
  MEMORY[0x28223BE20](v8);
  v10 = v29 - v9;
  if (qword_280E2C0F0 != -1)
  {
    swift_once();
  }

  v11 = sub_217007CA4();
  __swift_project_value_buffer(v11, qword_280E2C0F8);
  sub_216DD9F00();
  v12 = sub_217007C84();
  v13 = sub_21700EDA4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29[1] = v2;
    v16 = v15;
    v30 = v15;
    *v14 = 136446210;
    sub_216DDA0A0(&v10[v8[9]], v7);
    v17 = sub_21700E594();
    v19 = v18;
    sub_2166997CC(v10, &qword_27CAC9198, &qword_21705F770);
    v20 = sub_2166A85FC(v17, v19, &v30);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_216679000, v12, v13, "Page invalidated by: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x21CEA1440](v16, -1, -1);
    MEMORY[0x21CEA1440](v14, -1, -1);
  }

  else
  {

    sub_2166997CC(v10, &qword_27CAC9198, &qword_21705F770);
  }

  v27 = *(a1 + v8[12]);
  if (!v27 || !*(v27 + 16))
  {
    if (*(v29[2] + 48) == 1)
    {
      return sub_216D021D4(a1);
    }

    if (*(a1 + v8[11]) != 2)
    {
      sub_216CF2CE4(&qword_27CAC0880, &unk_217039E80, v21, v22, v23, v24, v25, v26);
    }
  }

  sub_216DD9F00();
  swift_storeEnumTagMultiPayload();
  sub_216CFF814();
  return sub_2166997CC(v4, &qword_27CABD190, &qword_217029E90);
}

uint64_t sub_216CFED54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD178, &qword_217029E78);
  MEMORY[0x28223BE20](v2);
  v4 = v29 - v3;
  v5 = type metadata accessor for MusicEvent(0);
  MEMORY[0x28223BE20](v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8F20, &unk_21705F3E0);
  MEMORY[0x28223BE20](v8);
  v10 = v29 - v9;
  if (qword_280E2C0F0 != -1)
  {
    swift_once();
  }

  v11 = sub_217007CA4();
  __swift_project_value_buffer(v11, qword_280E2C0F8);
  sub_216DD9F00();
  v12 = sub_217007C84();
  v13 = sub_21700EDA4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29[1] = v2;
    v16 = v15;
    v30 = v15;
    *v14 = 136446210;
    sub_216DDA0A0(&v10[v8[9]], v7);
    v17 = sub_21700E594();
    v19 = v18;
    sub_2166997CC(v10, &qword_27CAC8F20, &unk_21705F3E0);
    v20 = sub_2166A85FC(v17, v19, &v30);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_216679000, v12, v13, "Page invalidated by: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x21CEA1440](v16, -1, -1);
    MEMORY[0x21CEA1440](v14, -1, -1);
  }

  else
  {

    sub_2166997CC(v10, &qword_27CAC8F20, &unk_21705F3E0);
  }

  v27 = *(a1 + v8[12]);
  if (!v27 || !*(v27 + 16))
  {
    if (*(v29[2] + 48) == 1)
    {
      return sub_216D0297C(a1);
    }

    if (*(a1 + v8[11]) != 2)
    {
      sub_216CF2CE4(&qword_27CAC0878, &unk_217039E70, v21, v22, v23, v24, v25, v26);
    }
  }

  sub_216DD9F00();
  swift_storeEnumTagMultiPayload();
  sub_216CFF814();
  return sub_2166997CC(v4, &qword_27CABD178, &qword_217029E78);
}

uint64_t sub_216CFF198(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD2F8, &qword_21702A048);
  MEMORY[0x28223BE20](v2);
  v4 = v29 - v3;
  v5 = type metadata accessor for MusicEvent(0);
  MEMORY[0x28223BE20](v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9700, &unk_2170601C0);
  MEMORY[0x28223BE20](v8);
  v10 = v29 - v9;
  if (qword_280E2C0F0 != -1)
  {
    swift_once();
  }

  v11 = sub_217007CA4();
  __swift_project_value_buffer(v11, qword_280E2C0F8);
  sub_216DD9F00();
  v12 = sub_217007C84();
  v13 = sub_21700EDA4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29[1] = v2;
    v16 = v15;
    v30 = v15;
    *v14 = 136446210;
    sub_216DDA0A0(&v10[v8[9]], v7);
    v17 = sub_21700E594();
    v19 = v18;
    sub_2166997CC(v10, &qword_27CAC9700, &unk_2170601C0);
    v20 = sub_2166A85FC(v17, v19, &v30);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_216679000, v12, v13, "Page invalidated by: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x21CEA1440](v16, -1, -1);
    MEMORY[0x21CEA1440](v14, -1, -1);
  }

  else
  {

    sub_2166997CC(v10, &qword_27CAC9700, &unk_2170601C0);
  }

  v27 = *(a1 + v8[12]);
  if (!v27 || !*(v27 + 16))
  {
    if (*(v29[2] + 48) == 1)
    {
      return sub_216D03124(a1);
    }

    if (*(a1 + v8[11]) != 2)
    {
      sub_216CF2CE4(&qword_27CAC08E0, &qword_217060320, v21, v22, v23, v24, v25, v26);
    }
  }

  sub_216DD9F00();
  swift_storeEnumTagMultiPayload();
  sub_216CFF814();
  return sub_2166997CC(v4, &qword_27CABD2F8, &qword_21702A048);
}

void sub_216CFF5DC()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v4 = OUTLINED_FUNCTION_945(v2, v0, v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_42_2();
  if (qword_280E2C0F0 != -1)
  {
    OUTLINED_FUNCTION_1_52(&qword_280E2C0F0);
  }

  v8 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v8, qword_280E2C0F8);
  OUTLINED_FUNCTION_554();
  sub_216DD9F00();
  sub_21700DF14();
  v9 = sub_217007C84();
  v10 = sub_21700EDA4();

  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_544();
    v11 = swift_slowAlloc();
    OUTLINED_FUNCTION_556();
    v30 = swift_slowAlloc();
    OUTLINED_FUNCTION_1224(4.8752e-34);
    v12();
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    OUTLINED_FUNCTION_26_21();
    v13 = sub_21700CEA4();
    OUTLINED_FUNCTION_28_27();
    sub_2166997CC(v14, v15, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    v17 = OUTLINED_FUNCTION_39_3();
    sub_2166A85FC(v17, v18, v19);
    OUTLINED_FUNCTION_26_21();

    *(v11 + 4) = v13;
    *(v11 + 12) = 2082;
    v20 = MEMORY[0x21CE9F660](v1, &unk_282931A88);
    v22 = sub_2166A85FC(v20, v21, &v30);

    *(v11 + 14) = v22;
    OUTLINED_FUNCTION_1268(&dword_216679000, v23, v24, "Deferred update: %{public}s until: %{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440]();
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440]();
  }

  else
  {

    OUTLINED_FUNCTION_28_27();
    v25 = sub_2166997CC(v26, v27, v28);
  }

  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_992();
  OUTLINED_FUNCTION_26();
}

void sub_216CFF814()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v4 = OUTLINED_FUNCTION_945(v2, v0, v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_42_2();
  if (qword_280E2C0F0 != -1)
  {
    OUTLINED_FUNCTION_1_52(&qword_280E2C0F0);
  }

  v8 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v8, qword_280E2C0F8);
  OUTLINED_FUNCTION_554();
  sub_216DD9F00();
  sub_21700DF14();
  v9 = sub_217007C84();
  v10 = sub_21700EDA4();

  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_544();
    v11 = swift_slowAlloc();
    OUTLINED_FUNCTION_556();
    v30 = swift_slowAlloc();
    OUTLINED_FUNCTION_1224(4.8752e-34);
    v12();
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    OUTLINED_FUNCTION_26_21();
    v13 = sub_21700CEA4();
    OUTLINED_FUNCTION_28_27();
    sub_2166997CC(v14, v15, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    v17 = OUTLINED_FUNCTION_39_3();
    sub_2166A85FC(v17, v18, v19);
    OUTLINED_FUNCTION_26_21();

    *(v11 + 4) = v13;
    *(v11 + 12) = 2082;
    v20 = MEMORY[0x21CE9F660](v1, &unk_282931A88);
    v22 = sub_2166A85FC(v20, v21, &v30);

    *(v11 + 14) = v22;
    OUTLINED_FUNCTION_1268(&dword_216679000, v23, v24, "Deferred update: %{public}s until: %{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440]();
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440]();
  }

  else
  {

    OUTLINED_FUNCTION_28_27();
    v25 = sub_2166997CC(v26, v27, v28);
  }

  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_992();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216CFFA4C(uint64_t a1)
{
  v44 = type metadata accessor for MusicEvent(0);
  MEMORY[0x28223BE20](v44);
  v43 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8A68, &qword_21705EA48);
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  if (!*(a1 + *(v13 + 48)))
  {
    v14 = (a1 + v4[10]);
    v15 = *v14;
    v16 = v14[1];
    sub_216CF381C(*v14, v16, &qword_27CABD130, &qword_217029E38, &qword_27CAC8A68, &qword_21705EA48, &unk_27CAC8A78, &unk_21705EA60, sub_216937BAC, sub_21693961C, sub_216E159FC, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
    sub_216CF5028(v15, v16, sub_2166BF3C8, sub_216A51630, v17, v18, v19, v20, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
  }

  if (qword_280E2C0F0 != -1)
  {
    swift_once();
  }

  v21 = sub_217007CA4();
  __swift_project_value_buffer(v21, qword_280E2C0F8);
  sub_216DD9F00();
  sub_216DD9F00();
  sub_216DD9F00();
  v22 = sub_217007C84();
  v23 = sub_21700EDA4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v45 = v41;
    *v24 = 136446722;
    v25 = &v12[v4[10]];
    v42 = v1;
    v26 = *v25;
    v27 = v25[1];
    sub_21700DF14();
    sub_2166997CC(v12, &qword_27CAC8A68, &qword_21705EA48);
    v28 = sub_2166A85FC(v26, v27, &v45);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2082;
    __swift_project_boxed_opaque_existential_1(&v9[v4[11]], *&v9[v4[11] + 24]);
    v29 = sub_21700CEA4();
    v31 = v30;
    sub_2166997CC(v9, &qword_27CAC8A68, &qword_21705EA48);
    v32 = sub_2166A85FC(v29, v31, &v45);

    *(v24 + 14) = v32;
    *(v24 + 22) = 2082;
    sub_216DDA0A0(&v6[v4[9]], v43);
    v33 = sub_21700E594();
    v35 = v34;
    sub_2166997CC(v6, &qword_27CAC8A68, &qword_21705EA48);
    v36 = sub_2166A85FC(v33, v35, &v45);

    *(v24 + 24) = v36;
    _os_log_impl(&dword_216679000, v22, v23, "Section %{public}s needs update from: %{public}s after: %{public}s", v24, 0x20u);
    v37 = v41;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v37, -1, -1);
    MEMORY[0x21CEA1440](v24, -1, -1);
  }

  else
  {

    sub_2166997CC(v6, &qword_27CAC8A68, &qword_21705EA48);
    sub_2166997CC(v12, &qword_27CAC8A68, &qword_21705EA48);
    sub_2166997CC(v9, &qword_27CAC8A68, &qword_21705EA48);
  }

  return sub_21700CC34();
}

uint64_t sub_216CFFF24(uint64_t a1)
{
  v44 = type metadata accessor for MusicEvent(0);
  MEMORY[0x28223BE20](v44);
  v43 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9440, &qword_21705FC38);
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  if (!*(a1 + *(v13 + 48)))
  {
    v14 = (a1 + v4[10]);
    v15 = *v14;
    v16 = v14[1];
    sub_216CF381C(*v14, v16, &qword_27CABD2E0, &unk_21702A030, &qword_27CAC9440, &qword_21705FC38, &unk_27CAC9450, &unk_21705FC58, sub_21693847C, sub_2169396A8, sub_216E15A2C, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
    sub_216CF5028(v15, v16, sub_2166BF3C8, sub_216A517AC, v17, v18, v19, v20, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
  }

  if (qword_280E2C0F0 != -1)
  {
    swift_once();
  }

  v21 = sub_217007CA4();
  __swift_project_value_buffer(v21, qword_280E2C0F8);
  sub_216DD9F00();
  sub_216DD9F00();
  sub_216DD9F00();
  v22 = sub_217007C84();
  v23 = sub_21700EDA4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v45 = v41;
    *v24 = 136446722;
    v25 = &v12[v4[10]];
    v42 = v1;
    v26 = *v25;
    v27 = v25[1];
    sub_21700DF14();
    sub_2166997CC(v12, &qword_27CAC9440, &qword_21705FC38);
    v28 = sub_2166A85FC(v26, v27, &v45);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2082;
    __swift_project_boxed_opaque_existential_1(&v9[v4[11]], *&v9[v4[11] + 24]);
    v29 = sub_21700CEA4();
    v31 = v30;
    sub_2166997CC(v9, &qword_27CAC9440, &qword_21705FC38);
    v32 = sub_2166A85FC(v29, v31, &v45);

    *(v24 + 14) = v32;
    *(v24 + 22) = 2082;
    sub_216DDA0A0(&v6[v4[9]], v43);
    v33 = sub_21700E594();
    v35 = v34;
    sub_2166997CC(v6, &qword_27CAC9440, &qword_21705FC38);
    v36 = sub_2166A85FC(v33, v35, &v45);

    *(v24 + 24) = v36;
    _os_log_impl(&dword_216679000, v22, v23, "Section %{public}s needs update from: %{public}s after: %{public}s", v24, 0x20u);
    v37 = v41;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v37, -1, -1);
    MEMORY[0x21CEA1440](v24, -1, -1);
  }

  else
  {

    sub_2166997CC(v6, &qword_27CAC9440, &qword_21705FC38);
    sub_2166997CC(v12, &qword_27CAC9440, &qword_21705FC38);
    sub_2166997CC(v9, &qword_27CAC9440, &qword_21705FC38);
  }

  return sub_21700CC34();
}

uint64_t sub_216D003FC(uint64_t a1)
{
  v44 = type metadata accessor for MusicEvent(0);
  MEMORY[0x28223BE20](v44);
  v43 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9190, &qword_21705F768);
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  if (!*(a1 + *(v13 + 48)))
  {
    v14 = (a1 + v4[10]);
    v15 = *v14;
    v16 = v14[1];
    sub_216CF381C(*v14, v16, &qword_27CABD190, &qword_217029E90, &qword_27CAC9190, &qword_21705F768, &unk_27CAC91A0, &unk_21705F778, sub_2169389BC, sub_2169396D4, sub_216E15A5C, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
    sub_216CF5154(v15, v16, sub_2166BF3C8, sub_216A51C6C, v17, v18, v19, v20, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
  }

  if (qword_280E2C0F0 != -1)
  {
    swift_once();
  }

  v21 = sub_217007CA4();
  __swift_project_value_buffer(v21, qword_280E2C0F8);
  sub_216DD9F00();
  sub_216DD9F00();
  sub_216DD9F00();
  v22 = sub_217007C84();
  v23 = sub_21700EDA4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v45 = v41;
    *v24 = 136446722;
    v25 = &v12[v4[10]];
    v42 = v1;
    v26 = *v25;
    v27 = v25[1];
    sub_21700DF14();
    sub_2166997CC(v12, &qword_27CAC9190, &qword_21705F768);
    v28 = sub_2166A85FC(v26, v27, &v45);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2082;
    __swift_project_boxed_opaque_existential_1(&v9[v4[11]], *&v9[v4[11] + 24]);
    v29 = sub_21700CEA4();
    v31 = v30;
    sub_2166997CC(v9, &qword_27CAC9190, &qword_21705F768);
    v32 = sub_2166A85FC(v29, v31, &v45);

    *(v24 + 14) = v32;
    *(v24 + 22) = 2082;
    sub_216DDA0A0(&v6[v4[9]], v43);
    v33 = sub_21700E594();
    v35 = v34;
    sub_2166997CC(v6, &qword_27CAC9190, &qword_21705F768);
    v36 = sub_2166A85FC(v33, v35, &v45);

    *(v24 + 24) = v36;
    _os_log_impl(&dword_216679000, v22, v23, "Section %{public}s needs update from: %{public}s after: %{public}s", v24, 0x20u);
    v37 = v41;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v37, -1, -1);
    MEMORY[0x21CEA1440](v24, -1, -1);
  }

  else
  {

    sub_2166997CC(v6, &qword_27CAC9190, &qword_21705F768);
    sub_2166997CC(v12, &qword_27CAC9190, &qword_21705F768);
    sub_2166997CC(v9, &qword_27CAC9190, &qword_21705F768);
  }

  return sub_21700CC34();
}

uint64_t sub_216D008D4(uint64_t a1)
{
  v44 = type metadata accessor for MusicEvent(0);
  MEMORY[0x28223BE20](v44);
  v43 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8F40, &qword_21705F400);
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  if (!*(a1 + *(v13 + 48)))
  {
    v14 = (a1 + v4[10]);
    v15 = *v14;
    v16 = v14[1];
    sub_216CF381C(*v14, v16, &qword_27CABD178, &qword_217029E78, &qword_27CAC8F40, &qword_21705F400, &unk_27CAC9080, &unk_21705F538, sub_2169390A0, sub_2169397B0, sub_216E15C80, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
    sub_216CF5028(v15, v16, sub_2166BF3C8, sub_216A51DE8, v17, v18, v19, v20, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
  }

  if (qword_280E2C0F0 != -1)
  {
    swift_once();
  }

  v21 = sub_217007CA4();
  __swift_project_value_buffer(v21, qword_280E2C0F8);
  sub_216DD9F00();
  sub_216DD9F00();
  sub_216DD9F00();
  v22 = sub_217007C84();
  v23 = sub_21700EDA4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v45 = v41;
    *v24 = 136446722;
    v25 = &v12[v4[10]];
    v42 = v1;
    v26 = *v25;
    v27 = v25[1];
    sub_21700DF14();
    sub_2166997CC(v12, &qword_27CAC8F40, &qword_21705F400);
    v28 = sub_2166A85FC(v26, v27, &v45);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2082;
    __swift_project_boxed_opaque_existential_1(&v9[v4[11]], *&v9[v4[11] + 24]);
    v29 = sub_21700CEA4();
    v31 = v30;
    sub_2166997CC(v9, &qword_27CAC8F40, &qword_21705F400);
    v32 = sub_2166A85FC(v29, v31, &v45);

    *(v24 + 14) = v32;
    *(v24 + 22) = 2082;
    sub_216DDA0A0(&v6[v4[9]], v43);
    v33 = sub_21700E594();
    v35 = v34;
    sub_2166997CC(v6, &qword_27CAC8F40, &qword_21705F400);
    v36 = sub_2166A85FC(v33, v35, &v45);

    *(v24 + 24) = v36;
    _os_log_impl(&dword_216679000, v22, v23, "Section %{public}s needs update from: %{public}s after: %{public}s", v24, 0x20u);
    v37 = v41;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v37, -1, -1);
    MEMORY[0x21CEA1440](v24, -1, -1);
  }

  else
  {

    sub_2166997CC(v6, &qword_27CAC8F40, &qword_21705F400);
    sub_2166997CC(v12, &qword_27CAC8F40, &qword_21705F400);
    sub_2166997CC(v9, &qword_27CAC8F40, &qword_21705F400);
  }

  return sub_21700CC34();
}

uint64_t sub_216D00DAC(uint64_t a1)
{
  v44 = type metadata accessor for MusicEvent(0);
  MEMORY[0x28223BE20](v44);
  v43 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9718, &qword_2170601E0);
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  if (!*(a1 + *(v13 + 48)))
  {
    v14 = (a1 + v4[10]);
    v15 = *v14;
    v16 = v14[1];
    sub_216CF381C(*v14, v16, &qword_27CABD2F8, &qword_21702A048, &qword_27CAC9718, &qword_2170601E0, &unk_27CAC9858, &unk_217060318, sub_216939534, sub_2169398D0, sub_216E15CFC, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
    sub_216CF5154(v15, v16, sub_2166BF3C8, sub_216A5202C, v17, v18, v19, v20, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
  }

  if (qword_280E2C0F0 != -1)
  {
    swift_once();
  }

  v21 = sub_217007CA4();
  __swift_project_value_buffer(v21, qword_280E2C0F8);
  sub_216DD9F00();
  sub_216DD9F00();
  sub_216DD9F00();
  v22 = sub_217007C84();
  v23 = sub_21700EDA4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v45 = v41;
    *v24 = 136446722;
    v25 = &v12[v4[10]];
    v42 = v1;
    v26 = *v25;
    v27 = v25[1];
    sub_21700DF14();
    sub_2166997CC(v12, &qword_27CAC9718, &qword_2170601E0);
    v28 = sub_2166A85FC(v26, v27, &v45);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2082;
    __swift_project_boxed_opaque_existential_1(&v9[v4[11]], *&v9[v4[11] + 24]);
    v29 = sub_21700CEA4();
    v31 = v30;
    sub_2166997CC(v9, &qword_27CAC9718, &qword_2170601E0);
    v32 = sub_2166A85FC(v29, v31, &v45);

    *(v24 + 14) = v32;
    *(v24 + 22) = 2082;
    sub_216DDA0A0(&v6[v4[9]], v43);
    v33 = sub_21700E594();
    v35 = v34;
    sub_2166997CC(v6, &qword_27CAC9718, &qword_2170601E0);
    v36 = sub_2166A85FC(v33, v35, &v45);

    *(v24 + 24) = v36;
    _os_log_impl(&dword_216679000, v22, v23, "Section %{public}s needs update from: %{public}s after: %{public}s", v24, 0x20u);
    v37 = v41;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v37, -1, -1);
    MEMORY[0x21CEA1440](v24, -1, -1);
  }

  else
  {

    sub_2166997CC(v6, &qword_27CAC9718, &qword_2170601E0);
    sub_2166997CC(v12, &qword_27CAC9718, &qword_2170601E0);
    sub_2166997CC(v9, &qword_27CAC9718, &qword_2170601E0);
  }

  return sub_21700CC34();
}

uint64_t sub_216D01284(uint64_t a1)
{
  v58 = type metadata accessor for MusicEvent(0);
  MEMORY[0x28223BE20](v58);
  v57 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8A70, &unk_21705EA50);
  MEMORY[0x28223BE20](v3);
  v59 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v55 - v6;
  MEMORY[0x28223BE20](v8);
  v56 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v55 - v11;
  v13 = sub_2170061E4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v55 - v18;
  v61 = v3;
  sub_216DD9F00();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_2166997CC(v12, &qword_27CAB74E8, &qword_217030A40);
LABEL_9:
    v33 = v59;
    if (*(a1 + *(v61 + 44)) != 2)
    {
      sub_216CF381C(0, 0, &qword_27CABD130, &qword_217029E38, &qword_27CAC8A68, &qword_21705EA48, &unk_27CAC8A78, &unk_21705EA60, sub_216937BAC, sub_21693961C, sub_216E159FC, v54, v55, v56, v57, v58, v59, v60, v61, v62[0], v62[1], v62[2], v62[3]);
      sub_216CF2CE4(&qword_27CAC0850, &unk_217039E30, v34, v35, v36, v37, v38, v39);
    }

    if (qword_280E2C0F0 != -1)
    {
      swift_once();
    }

    v40 = sub_217007CA4();
    __swift_project_value_buffer(v40, qword_280E2C0F8);
    sub_216DD9F00();
    sub_216DD9F00();
    v41 = sub_217007C84();
    v42 = sub_21700EDA4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v62[0] = v44;
      *v43 = 136446466;
      v45 = v61;
      __swift_project_boxed_opaque_existential_1(&v7[*(v61 + 40)], *&v7[*(v61 + 40) + 24]);
      v46 = sub_21700CEA4();
      v48 = v47;
      sub_2166997CC(v7, &qword_27CAC8A70, &unk_21705EA50);
      v49 = sub_2166A85FC(v46, v48, v62);

      *(v43 + 4) = v49;
      *(v43 + 12) = 2082;
      sub_216DDA0A0(v33 + *(v45 + 36), v57);
      v50 = sub_21700E594();
      v52 = v51;
      sub_2166997CC(v33, &qword_27CAC8A70, &unk_21705EA50);
      v53 = sub_2166A85FC(v50, v52, v62);

      *(v43 + 14) = v53;
      _os_log_impl(&dword_216679000, v41, v42, "Page needs update from: %{public}s after: %{public}s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v44, -1, -1);
      MEMORY[0x21CEA1440](v43, -1, -1);
    }

    else
    {

      sub_2166997CC(v33, &qword_27CAC8A70, &unk_21705EA50);
      sub_2166997CC(v7, &qword_27CAC8A70, &unk_21705EA50);
    }

    return sub_21700CC34();
  }

  (*(v14 + 32))(v19, v12, v13);
  sub_2170061D4();
  v20 = sub_217006144();
  v21 = *(v14 + 8);
  v21(v16, v13);
  if ((v20 & 1) == 0)
  {
    v21(v19, v13);
    goto LABEL_9;
  }

  if (qword_280E2C0F0 != -1)
  {
    swift_once();
  }

  v22 = sub_217007CA4();
  __swift_project_value_buffer(v22, qword_280E2C0F8);
  v23 = v56;
  sub_216DD9F00();
  v24 = sub_217007C84();
  v25 = sub_21700EDA4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v62[0] = v60;
    *v26 = 136446210;
    __swift_project_boxed_opaque_existential_1((v23 + *(v61 + 40)), *(v23 + *(v61 + 40) + 24));
    v27 = sub_21700CEA4();
    v29 = v28;
    sub_2166997CC(v23, &qword_27CAC8A70, &unk_21705EA50);
    v30 = sub_2166A85FC(v27, v29, v62);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_216679000, v24, v25, "Ignoring page update from: %{public}s. End date surpassed.", v26, 0xCu);
    v31 = v60;
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    MEMORY[0x21CEA1440](v31, -1, -1);
    MEMORY[0x21CEA1440](v26, -1, -1);

    return (v21)(v19, v13);
  }

  else
  {

    v21(v19, v13);
    return sub_2166997CC(v23, &qword_27CAC8A70, &unk_21705EA50);
  }
}

uint64_t sub_216D01A2C(uint64_t a1)
{
  v58 = type metadata accessor for MusicEvent(0);
  MEMORY[0x28223BE20](v58);
  v57 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9448, &unk_21705FC40);
  MEMORY[0x28223BE20](v3);
  v59 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v55 - v6;
  MEMORY[0x28223BE20](v8);
  v56 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v55 - v11;
  v13 = sub_2170061E4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v55 - v18;
  v61 = v3;
  sub_216DD9F00();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_2166997CC(v12, &qword_27CAB74E8, &qword_217030A40);
LABEL_9:
    v33 = v59;
    if (*(a1 + *(v61 + 44)) != 2)
    {
      sub_216CF381C(0, 0, &qword_27CABD2E0, &unk_21702A030, &qword_27CAC9440, &qword_21705FC38, &unk_27CAC9450, &unk_21705FC58, sub_21693847C, sub_2169396A8, sub_216E15A2C, v54, v55, v56, v57, v58, v59, v60, v61, v62[0], v62[1], v62[2], v62[3]);
      sub_216CF2CE4(&qword_27CAC08B8, &qword_21705FC50, v34, v35, v36, v37, v38, v39);
    }

    if (qword_280E2C0F0 != -1)
    {
      swift_once();
    }

    v40 = sub_217007CA4();
    __swift_project_value_buffer(v40, qword_280E2C0F8);
    sub_216DD9F00();
    sub_216DD9F00();
    v41 = sub_217007C84();
    v42 = sub_21700EDA4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v62[0] = v44;
      *v43 = 136446466;
      v45 = v61;
      __swift_project_boxed_opaque_existential_1(&v7[*(v61 + 40)], *&v7[*(v61 + 40) + 24]);
      v46 = sub_21700CEA4();
      v48 = v47;
      sub_2166997CC(v7, &qword_27CAC9448, &unk_21705FC40);
      v49 = sub_2166A85FC(v46, v48, v62);

      *(v43 + 4) = v49;
      *(v43 + 12) = 2082;
      sub_216DDA0A0(v33 + *(v45 + 36), v57);
      v50 = sub_21700E594();
      v52 = v51;
      sub_2166997CC(v33, &qword_27CAC9448, &unk_21705FC40);
      v53 = sub_2166A85FC(v50, v52, v62);

      *(v43 + 14) = v53;
      _os_log_impl(&dword_216679000, v41, v42, "Page needs update from: %{public}s after: %{public}s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v44, -1, -1);
      MEMORY[0x21CEA1440](v43, -1, -1);
    }

    else
    {

      sub_2166997CC(v33, &qword_27CAC9448, &unk_21705FC40);
      sub_2166997CC(v7, &qword_27CAC9448, &unk_21705FC40);
    }

    return sub_21700CC34();
  }

  (*(v14 + 32))(v19, v12, v13);
  sub_2170061D4();
  v20 = sub_217006144();
  v21 = *(v14 + 8);
  v21(v16, v13);
  if ((v20 & 1) == 0)
  {
    v21(v19, v13);
    goto LABEL_9;
  }

  if (qword_280E2C0F0 != -1)
  {
    swift_once();
  }

  v22 = sub_217007CA4();
  __swift_project_value_buffer(v22, qword_280E2C0F8);
  v23 = v56;
  sub_216DD9F00();
  v24 = sub_217007C84();
  v25 = sub_21700EDA4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v62[0] = v60;
    *v26 = 136446210;
    __swift_project_boxed_opaque_existential_1((v23 + *(v61 + 40)), *(v23 + *(v61 + 40) + 24));
    v27 = sub_21700CEA4();
    v29 = v28;
    sub_2166997CC(v23, &qword_27CAC9448, &unk_21705FC40);
    v30 = sub_2166A85FC(v27, v29, v62);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_216679000, v24, v25, "Ignoring page update from: %{public}s. End date surpassed.", v26, 0xCu);
    v31 = v60;
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    MEMORY[0x21CEA1440](v31, -1, -1);
    MEMORY[0x21CEA1440](v26, -1, -1);

    return (v21)(v19, v13);
  }

  else
  {

    v21(v19, v13);
    return sub_2166997CC(v23, &qword_27CAC9448, &unk_21705FC40);
  }
}

uint64_t sub_216D021D4(uint64_t a1)
{
  v58 = type metadata accessor for MusicEvent(0);
  MEMORY[0x28223BE20](v58);
  v57 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9198, &qword_21705F770);
  MEMORY[0x28223BE20](v3);
  v59 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v55 - v6;
  MEMORY[0x28223BE20](v8);
  v56 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v55 - v11;
  v13 = sub_2170061E4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v55 - v18;
  v61 = v3;
  sub_216DD9F00();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_2166997CC(v12, &qword_27CAB74E8, &qword_217030A40);
LABEL_9:
    v33 = v59;
    if (*(a1 + *(v61 + 44)) != 2)
    {
      sub_216CF381C(0, 0, &qword_27CABD190, &qword_217029E90, &qword_27CAC9190, &qword_21705F768, &unk_27CAC91A0, &unk_21705F778, sub_2169389BC, sub_2169396D4, sub_216E15A5C, v54, v55, v56, v57, v58, v59, v60, v61, v62[0], v62[1], v62[2], v62[3]);
      sub_216CF2CE4(&qword_27CAC0880, &unk_217039E80, v34, v35, v36, v37, v38, v39);
    }

    if (qword_280E2C0F0 != -1)
    {
      swift_once();
    }

    v40 = sub_217007CA4();
    __swift_project_value_buffer(v40, qword_280E2C0F8);
    sub_216DD9F00();
    sub_216DD9F00();
    v41 = sub_217007C84();
    v42 = sub_21700EDA4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v62[0] = v44;
      *v43 = 136446466;
      v45 = v61;
      __swift_project_boxed_opaque_existential_1(&v7[*(v61 + 40)], *&v7[*(v61 + 40) + 24]);
      v46 = sub_21700CEA4();
      v48 = v47;
      sub_2166997CC(v7, &qword_27CAC9198, &qword_21705F770);
      v49 = sub_2166A85FC(v46, v48, v62);

      *(v43 + 4) = v49;
      *(v43 + 12) = 2082;
      sub_216DDA0A0(v33 + *(v45 + 36), v57);
      v50 = sub_21700E594();
      v52 = v51;
      sub_2166997CC(v33, &qword_27CAC9198, &qword_21705F770);
      v53 = sub_2166A85FC(v50, v52, v62);

      *(v43 + 14) = v53;
      _os_log_impl(&dword_216679000, v41, v42, "Page needs update from: %{public}s after: %{public}s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v44, -1, -1);
      MEMORY[0x21CEA1440](v43, -1, -1);
    }

    else
    {

      sub_2166997CC(v33, &qword_27CAC9198, &qword_21705F770);
      sub_2166997CC(v7, &qword_27CAC9198, &qword_21705F770);
    }

    return sub_21700CC34();
  }

  (*(v14 + 32))(v19, v12, v13);
  sub_2170061D4();
  v20 = sub_217006144();
  v21 = *(v14 + 8);
  v21(v16, v13);
  if ((v20 & 1) == 0)
  {
    v21(v19, v13);
    goto LABEL_9;
  }

  if (qword_280E2C0F0 != -1)
  {
    swift_once();
  }

  v22 = sub_217007CA4();
  __swift_project_value_buffer(v22, qword_280E2C0F8);
  v23 = v56;
  sub_216DD9F00();
  v24 = sub_217007C84();
  v25 = sub_21700EDA4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v62[0] = v60;
    *v26 = 136446210;
    __swift_project_boxed_opaque_existential_1((v23 + *(v61 + 40)), *(v23 + *(v61 + 40) + 24));
    v27 = sub_21700CEA4();
    v29 = v28;
    sub_2166997CC(v23, &qword_27CAC9198, &qword_21705F770);
    v30 = sub_2166A85FC(v27, v29, v62);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_216679000, v24, v25, "Ignoring page update from: %{public}s. End date surpassed.", v26, 0xCu);
    v31 = v60;
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    MEMORY[0x21CEA1440](v31, -1, -1);
    MEMORY[0x21CEA1440](v26, -1, -1);

    return (v21)(v19, v13);
  }

  else
  {

    v21(v19, v13);
    return sub_2166997CC(v23, &qword_27CAC9198, &qword_21705F770);
  }
}

uint64_t sub_216D0297C(uint64_t a1)
{
  v58 = type metadata accessor for MusicEvent(0);
  MEMORY[0x28223BE20](v58);
  v57 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8F20, &unk_21705F3E0);
  MEMORY[0x28223BE20](v3);
  v59 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v55 - v6;
  MEMORY[0x28223BE20](v8);
  v56 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v55 - v11;
  v13 = sub_2170061E4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v55 - v18;
  v61 = v3;
  sub_216DD9F00();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_2166997CC(v12, &qword_27CAB74E8, &qword_217030A40);
LABEL_9:
    v33 = v59;
    if (*(a1 + *(v61 + 44)) != 2)
    {
      sub_216CF381C(0, 0, &qword_27CABD178, &qword_217029E78, &qword_27CAC8F40, &qword_21705F400, &unk_27CAC9080, &unk_21705F538, sub_2169390A0, sub_2169397B0, sub_216E15C80, v54, v55, v56, v57, v58, v59, v60, v61, v62[0], v62[1], v62[2], v62[3]);
      sub_216CF2CE4(&qword_27CAC0878, &unk_217039E70, v34, v35, v36, v37, v38, v39);
    }

    if (qword_280E2C0F0 != -1)
    {
      swift_once();
    }

    v40 = sub_217007CA4();
    __swift_project_value_buffer(v40, qword_280E2C0F8);
    sub_216DD9F00();
    sub_216DD9F00();
    v41 = sub_217007C84();
    v42 = sub_21700EDA4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v62[0] = v44;
      *v43 = 136446466;
      v45 = v61;
      __swift_project_boxed_opaque_existential_1(&v7[*(v61 + 40)], *&v7[*(v61 + 40) + 24]);
      v46 = sub_21700CEA4();
      v48 = v47;
      sub_2166997CC(v7, &qword_27CAC8F20, &unk_21705F3E0);
      v49 = sub_2166A85FC(v46, v48, v62);

      *(v43 + 4) = v49;
      *(v43 + 12) = 2082;
      sub_216DDA0A0(v33 + *(v45 + 36), v57);
      v50 = sub_21700E594();
      v52 = v51;
      sub_2166997CC(v33, &qword_27CAC8F20, &unk_21705F3E0);
      v53 = sub_2166A85FC(v50, v52, v62);

      *(v43 + 14) = v53;
      _os_log_impl(&dword_216679000, v41, v42, "Page needs update from: %{public}s after: %{public}s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v44, -1, -1);
      MEMORY[0x21CEA1440](v43, -1, -1);
    }

    else
    {

      sub_2166997CC(v33, &qword_27CAC8F20, &unk_21705F3E0);
      sub_2166997CC(v7, &qword_27CAC8F20, &unk_21705F3E0);
    }

    return sub_21700CC34();
  }

  (*(v14 + 32))(v19, v12, v13);
  sub_2170061D4();
  v20 = sub_217006144();
  v21 = *(v14 + 8);
  v21(v16, v13);
  if ((v20 & 1) == 0)
  {
    v21(v19, v13);
    goto LABEL_9;
  }

  if (qword_280E2C0F0 != -1)
  {
    swift_once();
  }

  v22 = sub_217007CA4();
  __swift_project_value_buffer(v22, qword_280E2C0F8);
  v23 = v56;
  sub_216DD9F00();
  v24 = sub_217007C84();
  v25 = sub_21700EDA4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v62[0] = v60;
    *v26 = 136446210;
    __swift_project_boxed_opaque_existential_1((v23 + *(v61 + 40)), *(v23 + *(v61 + 40) + 24));
    v27 = sub_21700CEA4();
    v29 = v28;
    sub_2166997CC(v23, &qword_27CAC8F20, &unk_21705F3E0);
    v30 = sub_2166A85FC(v27, v29, v62);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_216679000, v24, v25, "Ignoring page update from: %{public}s. End date surpassed.", v26, 0xCu);
    v31 = v60;
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    MEMORY[0x21CEA1440](v31, -1, -1);
    MEMORY[0x21CEA1440](v26, -1, -1);

    return (v21)(v19, v13);
  }

  else
  {

    v21(v19, v13);
    return sub_2166997CC(v23, &qword_27CAC8F20, &unk_21705F3E0);
  }
}

uint64_t sub_216D03124(uint64_t a1)
{
  v58 = type metadata accessor for MusicEvent(0);
  MEMORY[0x28223BE20](v58);
  v57 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9700, &unk_2170601C0);
  MEMORY[0x28223BE20](v3);
  v59 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v55 - v6;
  MEMORY[0x28223BE20](v8);
  v56 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v55 - v11;
  v13 = sub_2170061E4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v55 - v18;
  v61 = v3;
  sub_216DD9F00();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_2166997CC(v12, &qword_27CAB74E8, &qword_217030A40);
LABEL_9:
    v33 = v59;
    if (*(a1 + *(v61 + 44)) != 2)
    {
      sub_216CF381C(0, 0, &qword_27CABD2F8, &qword_21702A048, &qword_27CAC9718, &qword_2170601E0, &unk_27CAC9858, &unk_217060318, sub_216939534, sub_2169398D0, sub_216E15CFC, v54, v55, v56, v57, v58, v59, v60, v61, v62[0], v62[1], v62[2], v62[3]);
      sub_216CF2CE4(&qword_27CAC08E0, &qword_217060320, v34, v35, v36, v37, v38, v39);
    }

    if (qword_280E2C0F0 != -1)
    {
      swift_once();
    }

    v40 = sub_217007CA4();
    __swift_project_value_buffer(v40, qword_280E2C0F8);
    sub_216DD9F00();
    sub_216DD9F00();
    v41 = sub_217007C84();
    v42 = sub_21700EDA4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v62[0] = v44;
      *v43 = 136446466;
      v45 = v61;
      __swift_project_boxed_opaque_existential_1(&v7[*(v61 + 40)], *&v7[*(v61 + 40) + 24]);
      v46 = sub_21700CEA4();
      v48 = v47;
      sub_2166997CC(v7, &qword_27CAC9700, &unk_2170601C0);
      v49 = sub_2166A85FC(v46, v48, v62);

      *(v43 + 4) = v49;
      *(v43 + 12) = 2082;
      sub_216DDA0A0(v33 + *(v45 + 36), v57);
      v50 = sub_21700E594();
      v52 = v51;
      sub_2166997CC(v33, &qword_27CAC9700, &unk_2170601C0);
      v53 = sub_2166A85FC(v50, v52, v62);

      *(v43 + 14) = v53;
      _os_log_impl(&dword_216679000, v41, v42, "Page needs update from: %{public}s after: %{public}s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v44, -1, -1);
      MEMORY[0x21CEA1440](v43, -1, -1);
    }

    else
    {

      sub_2166997CC(v33, &qword_27CAC9700, &unk_2170601C0);
      sub_2166997CC(v7, &qword_27CAC9700, &unk_2170601C0);
    }

    return sub_21700CC34();
  }

  (*(v14 + 32))(v19, v12, v13);
  sub_2170061D4();
  v20 = sub_217006144();
  v21 = *(v14 + 8);
  v21(v16, v13);
  if ((v20 & 1) == 0)
  {
    v21(v19, v13);
    goto LABEL_9;
  }

  if (qword_280E2C0F0 != -1)
  {
    swift_once();
  }

  v22 = sub_217007CA4();
  __swift_project_value_buffer(v22, qword_280E2C0F8);
  v23 = v56;
  sub_216DD9F00();
  v24 = sub_217007C84();
  v25 = sub_21700EDA4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v62[0] = v60;
    *v26 = 136446210;
    __swift_project_boxed_opaque_existential_1((v23 + *(v61 + 40)), *(v23 + *(v61 + 40) + 24));
    v27 = sub_21700CEA4();
    v29 = v28;
    sub_2166997CC(v23, &qword_27CAC9700, &unk_2170601C0);
    v30 = sub_2166A85FC(v27, v29, v62);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_216679000, v24, v25, "Ignoring page update from: %{public}s. End date surpassed.", v26, 0xCu);
    v31 = v60;
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    MEMORY[0x21CEA1440](v31, -1, -1);
    MEMORY[0x21CEA1440](v26, -1, -1);

    return (v21)(v19, v13);
  }

  else
  {

    v21(v19, v13);
    return sub_2166997CC(v23, &qword_27CAC9700, &unk_2170601C0);
  }
}

uint64_t sub_216D038CC(char a1, void *a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (a1)
  {
    if (a1 == 1)
    {
      OUTLINED_FUNCTION_377();
      v8 = swift_beginAccess();
      a4(v8);
      v9 = *(a2[8] + 16);
      a5(v9);
      v10 = a2[8];
      *(v10 + 16) = v9 + 1;
      v11 = OUTLINED_FUNCTION_104_0();
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
      OUTLINED_FUNCTION_2(v13);
      OUTLINED_FUNCTION_1007();
      a2[8] = v10;
    }

    else
    {
      OUTLINED_FUNCTION_377();
      v20 = swift_beginAccess();
      a4(v20);
      v21 = *(a2[9] + 16);
      a5(v21);
      v22 = a2[9];
      *(v22 + 16) = v21 + 1;
      v23 = OUTLINED_FUNCTION_104_0();
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
      OUTLINED_FUNCTION_2(v25);
      OUTLINED_FUNCTION_1007();
      a2[9] = v22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_377();
    v14 = swift_beginAccess();
    a4(v14);
    v15 = *(a2[7] + 16);
    a5(v15);
    v16 = a2[7];
    *(v16 + 16) = v15 + 1;
    v17 = OUTLINED_FUNCTION_104_0();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
    OUTLINED_FUNCTION_2(v19);
    OUTLINED_FUNCTION_1007();
    a2[7] = v16;
  }

  return swift_endAccess();
}

uint64_t sub_216D03B04(uint64_t a1)
{
  swift_beginAccess();
  sub_216DD3E3C();
  if (*(v1[7] + 16) < v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_216DD3B8C();
  v3 = swift_endAccess();
  MEMORY[0x28223BE20](v3);
  swift_beginAccess();
  sub_216DD3E3C();
  if (*(v1[8] + 16) < v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_216DD3B8C();
  v5 = swift_endAccess();
  MEMORY[0x28223BE20](v5);
  swift_beginAccess();
  sub_216DD3E3C();
  if (*(v1[9] + 16) >= v6)
  {
    sub_216DD3B8C();
    return swift_endAccess();
  }

LABEL_7:
  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_216D03DC4(uint64_t a1)
{
  swift_beginAccess();
  sub_216DD3E3C();
  if (*(v1[7] + 16) < v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_216DD3B8C();
  v3 = swift_endAccess();
  MEMORY[0x28223BE20](v3);
  swift_beginAccess();
  sub_216DD3E3C();
  if (*(v1[8] + 16) < v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_216DD3B8C();
  v5 = swift_endAccess();
  MEMORY[0x28223BE20](v5);
  swift_beginAccess();
  sub_216DD3E3C();
  if (*(v1[9] + 16) >= v6)
  {
    sub_216DD3B8C();
    return swift_endAccess();
  }

LABEL_7:
  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_216D04084(uint64_t a1)
{
  swift_beginAccess();
  sub_216DD3E3C();
  if (*(v1[7] + 16) < v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_216DD3B8C();
  v3 = swift_endAccess();
  MEMORY[0x28223BE20](v3);
  swift_beginAccess();
  sub_216DD3E3C();
  if (*(v1[8] + 16) < v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_216DD3B8C();
  v5 = swift_endAccess();
  MEMORY[0x28223BE20](v5);
  swift_beginAccess();
  sub_216DD3E3C();
  if (*(v1[9] + 16) >= v6)
  {
    sub_216DD3B8C();
    return swift_endAccess();
  }

LABEL_7:
  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_216D04344(uint64_t a1)
{
  swift_beginAccess();
  sub_216DD3E3C();
  if (*(v1[7] + 16) < v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_216DD3B8C();
  v3 = swift_endAccess();
  MEMORY[0x28223BE20](v3);
  swift_beginAccess();
  sub_216DD3E3C();
  if (*(v1[8] + 16) < v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_216DD3B8C();
  v5 = swift_endAccess();
  MEMORY[0x28223BE20](v5);
  swift_beginAccess();
  sub_216DD3E3C();
  if (*(v1[9] + 16) >= v6)
  {
    sub_216DD3B8C();
    return swift_endAccess();
  }

LABEL_7:
  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_216D04604(uint64_t a1)
{
  swift_beginAccess();
  sub_216DD3E3C();
  if (*(v1[7] + 16) < v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_216DD3B8C();
  v3 = swift_endAccess();
  MEMORY[0x28223BE20](v3);
  swift_beginAccess();
  sub_216DD3E3C();
  if (*(v1[8] + 16) < v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_216DD3B8C();
  v5 = swift_endAccess();
  MEMORY[0x28223BE20](v5);
  swift_beginAccess();
  sub_216DD3E3C();
  if (*(v1[9] + 16) >= v6)
  {
    sub_216DD3B8C();
    return swift_endAccess();
  }

LABEL_7:
  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_216D048C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_110();
  sub_217006224();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_79_5();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_737();
  v8 = a3();
  (a3)(v8);
  OUTLINED_FUNCTION_114_0();
  v9 = sub_217006204();
  v10 = *(v5 + 8);
  v11 = OUTLINED_FUNCTION_39();
  v10(v11);
  v12 = OUTLINED_FUNCTION_52_9();
  v10(v12);
  return v9 & 1;
}

uint64_t sub_216D049D0(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 136) = 0;
  sub_216DD9F00();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 128) = 0;
  memcpy((v3 + 32), v8, 0x50uLL);
  *(v3 + 112) = a2;
  *(v3 + 120) = a3 & 1;
  sub_2166997CC(a1, &qword_27CAC8D70, &unk_21705EF30);
  return v3;
}

uint64_t sub_216D04A6C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 120) = 0;
  sub_216DD9F00();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 112) = 0;
  *(v3 + 32) = v8;
  *(v3 + 48) = v9;
  *(v3 + 64) = *v10;
  *(v3 + 73) = *&v10[9];
  *(v3 + 96) = a2;
  *(v3 + 104) = a3 & 1;
  sub_2166997CC(a1, &qword_27CAC8CD0, &qword_21705EE78);
  return v3;
}

void *sub_216D04B10(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_31_17();
  v6 = type metadata accessor for AsyncQueue(v5);
  v2[2] = 0;
  v2[3] = 0;
  OUTLINED_FUNCTION_91_1(v6);
  v2[5] = sub_216CA9FD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CABCEB8, &unk_21705F010);
  v2[6] = sub_21700E244();
  v2[4] = v3;

  sub_216CA9EA0(a2, v2);

  return v2;
}

uint64_t sub_216D04BC0(uint64_t a1)
{
  v1[2] = a1;
  sub_21700EA34();
  v1[3] = sub_21700EA24();
  v3 = sub_21700E9B4();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_216D04C58, v3, v2);
}

uint64_t sub_216D04C58()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_850();
  v0 = OUTLINED_FUNCTION_116();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_20_2(&qword_280E2A108);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_88_9(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_197_1(v3);

  return MEMORY[0x282180360](v5);
}

uint64_t sub_216D04D14(uint64_t a1)
{
  v1[2] = a1;
  sub_21700EA34();
  v1[3] = sub_21700EA24();
  v3 = sub_21700E9B4();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_216D04DAC, v3, v2);
}

uint64_t sub_216D04DAC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_850();
  v0 = OUTLINED_FUNCTION_116();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_20_2(&qword_280E2A108);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_88_9(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_197_1(v3);

  return MEMORY[0x282180360](v5);
}

uint64_t sub_216D04E68()
{
  OUTLINED_FUNCTION_75_6();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_143();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v1 & 1;

  sub_21700DF14();
  v6 = OUTLINED_FUNCTION_116();
  sub_216CA9EA0(v6, v7);

  OUTLINED_FUNCTION_65_2();
}

uint64_t sub_216D04F1C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 96) = a3;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  sub_21700EA34();
  *(v3 + 56) = sub_21700EA24();
  v5 = sub_21700E9B4();
  *(v3 + 64) = v5;
  *(v3 + 72) = v4;

  return MEMORY[0x2822009F8](sub_216D04FB8, v5, v4);
}

uint64_t sub_216D04FB8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_240_1();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    OUTLINED_FUNCTION_525(Strong);

    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_853(v1);
    *v2 = v3;
    OUTLINED_FUNCTION_254_0(v2);

    return sub_216E582CC();
  }

  else
  {

    OUTLINED_FUNCTION_3();

    return v5();
  }
}

uint64_t sub_216D05094()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_28();
  *v3 = v1;
  *v3 = *v2;

  OUTLINED_FUNCTION_119_0();
  if (v0)
  {
  }

  v4 = *(v1 + 64);
  v5 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_216930FC0, v4, v5);
}