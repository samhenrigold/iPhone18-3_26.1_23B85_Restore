uint64_t sub_2168ED1E4()
{
  type metadata accessor for MusicAppDestination(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_7();
  v3 = v2 - v1;
  v4 = OUTLINED_FUNCTION_38();
  sub_2168ED84C(v4, v5, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 1;
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 2:
    case 5:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 18:
      v9 = type metadata accessor for MusicAppDestination;
      goto LABEL_3;
    case 6:
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBBE0, &unk_2170638E0);
      OUTLINED_FUNCTION_5_31(v13);
      v10 = type metadata accessor for MusicAppDestination.AlbumDescriptor;
      goto LABEL_9;
    case 7:
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACA4F0, &qword_217025718);
      OUTLINED_FUNCTION_5_31(v14);
      v10 = type metadata accessor for MusicAppDestination.PlaylistDescriptor;
      goto LABEL_9;
    case 8:
      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBBE8, &unk_2170638D0) + 48);
      sub_217005EF4();
      OUTLINED_FUNCTION_34();
      (*(v12 + 8))(v3 + v11);
      v9 = type metadata accessor for MusicAppDestination.PlaylistDescriptor;
LABEL_3:
      sub_2168ED8A8(v3, v9);
      goto LABEL_4;
    case 9:
    case 19:
      return result;
    case 17:

      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACA4E0, &unk_217019020) + 48);
      sub_217005EF4();
      OUTLINED_FUNCTION_34();
      (*(v16 + 8))(v3 + v15);
LABEL_4:
      result = 1;
      break;
    default:
      v10 = type metadata accessor for MusicAppDestination;
LABEL_9:
      sub_2168ED8A8(v3, v10);
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_2168ED3E8@<X0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (!a1[12])
  {
    if (!a1[4])
    {
      v18 = type metadata accessor for MusicAppDestination(0);
      v19 = a4;
      v20 = 1;
LABEL_22:

      return __swift_storeEnumTagSinglePayload(v19, v20, 1, v18);
    }

    sub_21700DF14();
  }

  sub_21700DF14();
  v7 = sub_21700BA64();
  v9 = v7;
  v10 = v8;
  v11 = *a1;
  switch(v11)
  {
    case 4:
      goto LABEL_12;
    case 5:
      *a4 = v7;
      a4[1] = v8;
      v12 = type metadata accessor for MusicAppDestination(0);
LABEL_21:
      swift_storeEnumTagMultiPayload();
      v19 = a4;
      v20 = 0;
      v18 = v12;
      goto LABEL_22;
    case 14:
      v13 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACA4F0, &qword_217025718) + 48);
      *a4 = v9;
      a4[1] = v10;
      type metadata accessor for MusicAppDestination.PlaylistDescriptor(0);
      swift_storeEnumTagMultiPayload();
      if (!a3)
      {
        v14 = 0;
        v15 = 0;
        goto LABEL_20;
      }

      goto LABEL_11;
    case 19:
LABEL_12:
      v13 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBBE0, &unk_2170638E0) + 48);
      *a4 = v9;
      a4[1] = v10;
      type metadata accessor for MusicAppDestination.AlbumDescriptor(0);
      swift_storeEnumTagMultiPayload();
      if (!a3)
      {
        v14 = 0;
        v15 = 0;
        goto LABEL_20;
      }

LABEL_11:
      sub_21700DF14();
      v14 = sub_21700BA64();
LABEL_20:
      *v13 = v14;
      *(v13 + 1) = v15;
      v12 = type metadata accessor for MusicAppDestination(0);
      goto LABEL_21;
  }

  v16 = type metadata accessor for MusicAppDestination(0);
  __swift_storeEnumTagSinglePayload(a4, 1, 1, v16);
}

uint64_t sub_2168ED65C()
{
  type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_7();
  v3 = v2 - v1;
  OUTLINED_FUNCTION_3_49();
  v4 = OUTLINED_FUNCTION_38();
  sub_2168ED84C(v4, v5, v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F0, &unk_217019010);
      OUTLINED_FUNCTION_5_31(v11);
      v7 = type metadata accessor for ContentDescriptor;
      goto LABEL_7;
    case 4u:
    case 0x12u:
      v7 = type metadata accessor for FlowAction.Destination;
LABEL_7:
      sub_2168ED8A8(v3, v7);
      goto LABEL_13;
    case 0xDu:
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80D0, &qword_21701D6B0);
      OUTLINED_FUNCTION_5_31(v12);
      goto LABEL_9;
    case 0xEu:
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C8, &unk_217019000);
      OUTLINED_FUNCTION_5_31(v13);
      goto LABEL_11;
    case 0x10u:
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C0, &unk_217036050);
      sub_216697664(v3 + *(v9 + 48), &qword_27CAB6AE8, qword_217014050);
LABEL_9:
      sub_21700C1E4();
      goto LABEL_12;
    case 0x11u:
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B8, &unk_217018FF0);
      sub_216697664(v3 + *(v10 + 48), qword_27CAB6AF0, &unk_21701D840);
LABEL_11:
      sub_21700C924();
LABEL_12:
      OUTLINED_FUNCTION_34();
      (*(v14 + 8))(v3);
LABEL_13:
      result = 1;
      break;
    default:
      sub_2168ED8A8(v3, type metadata accessor for FlowAction.Destination);
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_2168ED84C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2168ED8A8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2168ED900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentDescriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2168ED9AC(uint64_t a1)
{
  type metadata accessor for JSSearchResultsPage.QueryContext(319);
  if (v1 <= 0x3F)
  {
    sub_2166DAA20(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ObjectGraph(319);
      if (v3 <= 0x3F)
      {
        sub_216820EBC(319);
        if (v4 <= 0x3F)
        {
          sub_2166DAA20(319, &qword_280E2B468, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_2166DAA20(319, &qword_280E2B438, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2168EDB18@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = sub_21700DAF4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  MEMORY[0x28223BE20](v8 - 8);
  v49 = &v41 - v9;
  v48 = sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBC08, &qword_2170257B8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBC10, &qword_2170257C0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - v19;
  *v17 = sub_2170091A4();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBC18, &qword_2170257C8);
  sub_2168EE08C(v1, &v17[*(v21 + 44)]);
  v22 = *(type metadata accessor for SearchResultsQueryContextView(0) + 32);
  v52 = v1;
  v23 = v1 + v22;
  v24 = *(v23 + 8);
  v25 = *(v23 + 24);
  if (*(v23 + 32) != 1)
  {
    v45 = v7;
    v26 = *v23;
    v43 = *(v23 + 16);
    v27 = v43;

    sub_21700ED94();
    v47 = v2;
    v28 = sub_217009C34();
    v46 = v4;
    v29 = v28;
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_21680E444(v26, v24, v27, v25, 0);
    v42 = *(v11 + 8);
    v30 = v48;
    v42(v14, v48);
    v44 = v54;

    sub_21700ED94();
    v31 = sub_217009C34();
    v2 = v47;
    sub_217007BC4();

    v4 = v46;
    sub_2170090E4();
    swift_getAtKeyPath();
    v32 = v26;
    v7 = v45;
    sub_21680E444(v32, v24, v43, v25, 0);
    v42(v14, v30);
    v25 = v55;
    v24 = v44;
  }

  v33 = &v17[*(v50 + 36)];
  *v33 = 0;
  *(v33 + 1) = v24;
  *(v33 + 2) = 0;
  *(v33 + 3) = v25;
  v33[32] = 0;
  v34 = *(type metadata accessor for JSSearchResultsPage.QueryContext(0) + 36);
  v35 = sub_21700D7A4();
  OUTLINED_FUNCTION_34();
  v37 = v49;
  (*(v36 + 16))(v49, v52 + v34, v35);
  __swift_storeEnumTagSinglePayload(v37, 0, 1, v35);
  sub_21700DAE4();
  sub_2168F19B8();
  sub_21700A1C4();
  (*(v4 + 8))(v7, v2);
  sub_216699778(v37, &qword_27CAB6D58);
  sub_216699778(v17, &qword_27CABBC08);
  *&v20[*(v51 + 36)] = xmmword_21701AB40;
  sub_217008344();
  sub_2168F1A9C();
  sub_21700A624();
  sub_216699778(v20, &qword_27CABBC10);
  sub_217009CE4();
  sub_217007F24();
  OUTLINED_FUNCTION_1_27();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBC40, &qword_2170257E0);
  OUTLINED_FUNCTION_3_50(v38);
  sub_217009C74();
  sub_217007F24();
  OUTLINED_FUNCTION_1_27();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBC48, &qword_2170257E8);
  return OUTLINED_FUNCTION_3_50(v39);
}

uint64_t sub_2168EE08C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v106 = a2;
  v3 = sub_2170080D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v87 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBC50, &qword_2170257F0);
  MEMORY[0x28223BE20](v87);
  v11 = (&v87 - v10);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBC58, &qword_2170257F8);
  MEMORY[0x28223BE20](v88);
  v13 = &v87 - v12;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBC60, &qword_217025800);
  MEMORY[0x28223BE20](v90);
  v92 = &v87 - v14;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBC68, &qword_217025808);
  MEMORY[0x28223BE20](v89);
  v95 = &v87 - v15;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBC70, &qword_217025810);
  MEMORY[0x28223BE20](v91);
  v93 = &v87 - v16;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBC78, &qword_217025818);
  MEMORY[0x28223BE20](v99);
  v94 = &v87 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBC80, &qword_217025820);
  v102 = *(v18 - 8);
  v103 = v18;
  MEMORY[0x28223BE20](v18);
  v98 = &v87 - v19;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBC88, &qword_217025828);
  MEMORY[0x28223BE20](v96);
  v101 = &v87 - v20;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBC90, &qword_217025830);
  MEMORY[0x28223BE20](v100);
  v105 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v97 = &v87 - v23;
  MEMORY[0x28223BE20](v24);
  v104 = &v87 - v25;
  Context = type metadata accessor for SearchResultsQueryContextView.TextView(0);
  sub_2168F2134(a1, v11 + Context[6]);
  v27 = *(type metadata accessor for SearchResultsQueryContextView(0) + 24);
  v107 = a1;
  v28 = *(a1 + v27);
  *v11 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  swift_storeEnumTagMultiPayload();
  v29 = v11 + Context[5];
  *v29 = swift_getKeyPath();
  v29[40] = 0;
  *(v11 + Context[7]) = v28;
  v30 = qword_27CAB59D8;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = qword_27CABBBF0;
  KeyPath = swift_getKeyPath();
  v33 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBC98, &qword_2170258D0) + 36));
  *v33 = KeyPath;
  v33[1] = v31;
  v34 = swift_getKeyPath();
  v35 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBCA0, &unk_217025908) + 36);
  *v35 = v34;
  *(v35 + 1) = 4;
  v35[16] = 0;

  LOBYTE(v31) = sub_217009C74();
  sub_217007F24();
  v36 = v11 + *(v87 + 36);
  *v36 = v31;
  *(v36 + 1) = v37;
  *(v36 + 2) = v38;
  *(v36 + 3) = v39;
  *(v36 + 4) = v40;
  v36[40] = 0;
  sub_21700B3B4();
  sub_217008BB4();
  sub_2167C5834(v11, v13, &qword_27CABBC50, &qword_2170257F0);
  v41 = memcpy(&v13[*(v88 + 36)], __src, 0x70uLL);
  sub_216C0C924(v41, v42, v43, v44, v45, v46, v47, v48, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
  (*(v4 + 104))(v6, *MEMORY[0x277CDF3C0], v3);
  LOBYTE(v31) = sub_2170080C4();
  v49 = *(v4 + 8);
  v49(v6, v3);
  v49(v9, v3);
  if (v31)
  {
    if (qword_27CAB59E8 != -1)
    {
      swift_once();
    }

    v50 = &qword_27CABBC00;
  }

  else
  {
    if (qword_27CAB59E0 != -1)
    {
      swift_once();
    }

    v50 = &qword_27CABBBF8;
  }

  v51 = *v50;

  v52 = sub_217009C84();
  v53 = v92;
  sub_2167C5834(v13, v92, &qword_27CABBC58, &qword_2170257F8);
  v54 = v53 + *(v90 + 36);
  *v54 = v51;
  *(v54 + 8) = v52;
  v55 = v95;
  v56 = (v95 + *(v89 + 36));
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB72E8, &unk_21701F5E0);
  sub_217008C64();
  v58 = sub_217008B44();
  v59 = *(v58 + 20);
  v60 = *MEMORY[0x277CE0118];
  v61 = sub_217009294();
  v62 = *(*(v61 - 8) + 104);
  v62(&v56[v59], v60, v61);
  __asm { FMOV            V0.2D, #22.0 }

  *v56 = _Q0;
  v56[*(v57 + 36)] = 0;
  sub_2167C5834(v53, v55, &qword_27CABBC60, &qword_217025800);
  v68 = v93;
  v69 = (v93 + *(v91 + 36));
  v62(&v69[*(v58 + 20)], v60, v61);
  __asm { FMOV            V0.2D, #24.0 }

  *v69 = _Q0;
  *&v69[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0) + 36)] = 256;
  sub_2167C5834(v55, v68, &qword_27CABBC68, &qword_217025808);
  v71 = v94;
  v72 = sub_2167C5834(v68, v94, &qword_27CABBC70, &qword_217025810);
  *(v71 + *(v99 + 36)) = 1;
  MEMORY[0x28223BE20](v72);
  type metadata accessor for SearchQueryContextMenu(0);
  sub_2168F1B8C();
  sub_2168F20EC(&qword_27CABBCF8, type metadata accessor for SearchQueryContextMenu, &unk_217044948);
  v73 = v98;
  sub_21700A3B4();
  sub_216699778(v71, &qword_27CABBC78);
  sub_21700ACC4();
  v74 = sub_21700AD04();

  v75 = v101;
  (*(v102 + 32))(v101, v73, v103);
  v76 = &v75[*(v96 + 36)];
  *v76 = v74;
  *(v76 + 8) = xmmword_217025720;
  *(v76 + 3) = 0x4028000000000000;
  sub_21700ACC4();
  v77 = sub_21700AD04();

  v78 = v75;
  v79 = v97;
  sub_2167C5834(v78, v97, &qword_27CABBC88, &qword_217025828);
  v80 = (v79 + *(v100 + 36));
  *v80 = v77;
  v80[1] = 0x3FE0000000000000;
  v80[2] = 0;
  v80[3] = 0;
  v81 = v104;
  sub_2167C5834(v79, v104, &qword_27CABBC90, &qword_217025830);
  v82 = v105;
  sub_21670DC68(v81, v105);
  v83 = v106;
  *v106 = 0;
  *(v83 + 8) = 0;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD00, &qword_217025918);
  sub_21670DC68(v82, v83 + *(v84 + 48));
  v85 = v83 + *(v84 + 64);
  *v85 = 0;
  v85[8] = 0;
  sub_216699778(v81, &qword_27CABBC90);
  return sub_216699778(v82, &qword_27CABBC90);
}

uint64_t sub_2168EEC18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = (a1 + *(type metadata accessor for SearchResultsQueryContextView(0) + 20));
  v11 = v10[1];
  if (v11)
  {
    v12 = *v10;
    v28 = v11;
    v29 = v12;
  }

  else
  {
    v28 = 0xE000000000000000;
    v29 = 0;
  }

  v13 = *(a1 + 56);
  sub_21700DF14();
  sub_2169FD4B4(v13);
  v27 = v14;
  v15 = type metadata accessor for ContentDescriptor(0);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v15);
  v26 = 0x8000000217084180;
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  swift_storeEnumTagMultiPayload();
  ContextMenu = type metadata accessor for SearchQueryContextMenu(0);
  v17 = a2 + ContextMenu[7];
  sub_216683A80(v9, v17, &qword_27CAB6A00, &unk_217016B60);
  v18 = type metadata accessor for MenuConfiguration(0);
  sub_2168F2134(v6, &v17[v18[5]]);
  v19 = &v17[v18[6]];
  *v19 = 0;
  *(v19 + 1) = 0;
  *&v17[v18[7]] = 0;
  sub_216683A80(v30, &v17[v18[8]], &qword_27CAB6DB0, &qword_217016C00);
  sub_2168F24A4(v6, type metadata accessor for MenuContext);
  sub_216699778(v30, &qword_27CAB6DB0);
  sub_216699778(v9, &qword_27CAB6A00);
  v20 = &v17[v18[9]];
  *v20 = 0xD000000000000016;
  *(v20 + 1) = v26;
  type metadata accessor for MenuBuilder();
  sub_2168F20EC(qword_280E45220, type metadata accessor for MenuBuilder, &unk_21705881C);
  *a2 = sub_217008CF4();
  a2[1] = v21;
  v22 = ContextMenu[5];
  *(a2 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  result = swift_storeEnumTagMultiPayload();
  v24 = (a2 + ContextMenu[6]);
  v25 = v28;
  *v24 = v29;
  v24[1] = v25;
  v24[2] = v27;
  return result;
}

uint64_t sub_2168EEF24@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2170093C4();
  *(a2 + 8) = 0x4018000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD28, &qword_2170259C0);
  return sub_2168EEF78(v2, (a2 + *(v4 + 44)));
}

uint64_t sub_2168EEF78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v162 = a2;
  v3 = sub_2170080D4();
  v142 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v141 = &v133 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v140 = &v133 - v6;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD30, &qword_2170259C8);
  MEMORY[0x28223BE20](v143);
  v139 = &v133 - v7;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD38, &qword_2170259D0);
  MEMORY[0x28223BE20](v160);
  v144 = &v133 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD40, &qword_2170259D8);
  MEMORY[0x28223BE20](v9 - 8);
  v161 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v159 = &v133 - v12;
  Context = type metadata accessor for SearchResultsQueryContextView.TextViewContentView(0);
  MEMORY[0x28223BE20](Context);
  v146 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD48, &qword_2170259E0);
  MEMORY[0x28223BE20](v15);
  v17 = &v133 - v16;
  v18 = type metadata accessor for SearchResultsQueryContextView.TextView(0);
  v19 = v18 - 8;
  v147 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v148 = v20;
  v149 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD50, &qword_2170259E8);
  MEMORY[0x28223BE20](v21);
  v136 = &v133 - v22;
  v165 = sub_217005C64();
  v167 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v164 = &v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v135 = &v133 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v133 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD58, &unk_2170259F0);
  MEMORY[0x28223BE20](v29 - 8);
  v158 = &v133 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v168 = &v133 - v32;
  v33 = *(v19 + 32);
  v166 = a1;
  v34 = a1 + v33;
  v35 = *(a1 + v33 + 32);
  sub_21700B3B4();
  sub_2170083C4();
  v153 = v175;
  v152 = v177;
  v151 = v179;
  v150 = v180;
  v174 = 1;
  v173 = v176;
  v172 = v178;
  v36 = *(v34 + 8);
  v163 = v34;
  if (v36)
  {
    v137 = v21;
    sub_21700DF14();
    v37 = sub_21700A074();
    v138 = v17;
    v38 = v28;
    v40 = v39;
    v42 = v41;
    v145 = v15;

    sub_217009EA4();
    v157 = sub_21700A094();
    v156 = v43;
    v44 = Context;
    v45 = v35;
    v46 = v3;
    v48 = v47;
    v155 = v49;

    v50 = v37;
    v21 = v137;
    v51 = v40;
    v28 = v38;
    v17 = v138;
    sub_21678817C(v50, v51, v42 & 1);
    v15 = v145;

    v52 = v48 & 1;
    v3 = v46;
    v35 = v45;
    Context = v44;
    v154 = v52;
  }

  else
  {
    v157 = 0;
    v156 = 0;
    v154 = 0;
    v155 = 0;
  }

  if (v35 == 2 || (v35 & 1) == 0)
  {
    v75 = v163;
    v77 = v146;
    sub_2168F2134(v163, v146);
    sub_2168F2134(v77, v17);
    swift_storeEnumTagMultiPayload();
    sub_2168F23EC();
    sub_2168F20EC(&qword_27CABBD78, type metadata accessor for SearchResultsQueryContextView.TextViewContentView, &unk_217025AD0);
    sub_217009554();
    sub_2168F24A4(v77, type metadata accessor for SearchResultsQueryContextView.TextViewContentView);
  }

  else
  {
    v137 = Context;
    v53 = *(v163 + 24);
    v181 = *(v163 + 16);
    v182 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD88, &qword_217025A10);
    swift_allocObject();
    sub_21700DF14();
    sub_217006564();
    sub_217006554();

    v54 = *(v167 + 16);
    LODWORD(v146) = v35;
    v55 = v165;
    v54(v135, v28, v165);
    v56 = sub_21700A164();
    v58 = v57;
    v138 = v28;
    v60 = v59;
    v61 = v21;
    sub_217009D54();
    v62 = sub_21700A094();
    v145 = v15;
    v63 = v62;
    v134 = v64;
    HIDWORD(v133) = v65;
    v135 = v66;

    sub_21678817C(v56, v58, v60 & 1);

    KeyPath = swift_getKeyPath();
    v68 = swift_getKeyPath();
    v69 = v149;
    sub_2168F2134(v166, v149);
    v70 = (*(v147 + 80) + 16) & ~*(v147 + 80);
    v71 = swift_allocObject();
    sub_2168F29F4(v69, v71 + v70);
    v72 = v136;
    v73 = (v136 + *(v61 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD70, &qword_217025A00);
    sub_2170084D4();
    *v73 = v68;
    v74 = v134;
    *v72 = v63;
    *(v72 + 8) = v74;
    *(v72 + 16) = BYTE4(v133) & 1;
    *(v72 + 24) = v135;
    *(v72 + 32) = KeyPath;
    *(v72 + 40) = 0;
    *(v72 + 48) = 1;
    sub_216683A80(v72, v17, &qword_27CABBD50, &qword_2170259E8);
    swift_storeEnumTagMultiPayload();
    sub_2168F23EC();
    sub_2168F20EC(&qword_27CABBD78, type metadata accessor for SearchResultsQueryContextView.TextViewContentView, &unk_217025AD0);
    v75 = v163;
    v28 = v138;
    sub_217009554();
    sub_216699778(v72, &qword_27CABBD50);
    v76 = v55;
    v35 = v146;
    (*(v167 + 8))(v28, v76);
  }

  v78 = *(v75 + 48);
  if (v78)
  {
    LODWORD(v146) = v35;
    v181 = *(v75 + 40);
    v182 = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD88, &qword_217025A10);
    swift_allocObject();
    sub_21700DF14();
    sub_217006564();
    v79 = v164;
    sub_217006554();

    (*(v167 + 16))(v28, v79, v165);
    v163 = sub_21700A164();
    v145 = v80;
    v82 = v81;
    v83 = v140;
    sub_216C0C924(v163, v80, v81, v84, v85, v86, v87, v88, v133, v134, v135, v136, v137, v84, v139, v140, v141, v142, v143, v144);
    v89 = v142;
    v90 = v141;
    (*(v142 + 104))(v141, *MEMORY[0x277CDF3C0], v3);
    v91 = sub_2170080C4();
    v92 = *(v89 + 8);
    v92(v90, v3);
    v92(v83, v3);
    if (v91)
    {
      v93 = sub_217009834();
    }

    else
    {
      v93 = sub_217009824();
    }

    v95 = v93;
    v142 = swift_getKeyPath();
    LODWORD(v181) = v95;
    v141 = sub_2170083D4();
    v140 = sub_217009E64();
    v96 = swift_getKeyPath();
    v97 = v82 & 1;
    v170 = v82 & 1;
    v98 = sub_217009824();
    v99 = swift_getKeyPath();
    v171 = 0;
    LOBYTE(v95) = sub_217009C94();
    sub_217007F24();
    v101 = v100;
    v103 = v102;
    v105 = v104;
    v107 = v106;
    LOBYTE(v181) = 0;
    v108 = swift_getKeyPath();
    v109 = v149;
    sub_2168F2134(v166, v149);
    v110 = (*(v147 + 80) + 16) & ~*(v147 + 80);
    v111 = swift_allocObject();
    sub_2168F29F4(v109, v111 + v110);
    v112 = v139;
    v113 = (v139 + *(v143 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD70, &qword_217025A00);
    sub_2170084D4();
    *v113 = v108;
    v114 = v145;
    *v112 = v163;
    *(v112 + 8) = v114;
    *(v112 + 16) = v97;
    v115 = v142;
    *(v112 + 24) = v138;
    *(v112 + 32) = v115;
    *(v112 + 40) = v141;
    *(v112 + 48) = v96;
    *(v112 + 56) = v140;
    *(v112 + 64) = v98;
    *(v112 + 72) = v99;
    *(v112 + 80) = 2;
    *(v112 + 88) = 0;
    *(v112 + 96) = v95;
    *(v112 + 104) = v101;
    *(v112 + 112) = v103;
    *(v112 + 120) = v105;
    *(v112 + 128) = v107;
    *(v112 + 136) = 0;
    sub_2168F2500();
    v116 = v144;
    sub_21700A954();
    sub_216699778(v112, &qword_27CABBD30);
    (*(v167 + 8))(v164, v165);
    v94 = v159;
    sub_2167C5834(v116, v159, &qword_27CABBD38, &qword_2170259D0);
    __swift_storeEnumTagSinglePayload(v94, 0, 1, v160);
  }

  else
  {
    v94 = v159;
    __swift_storeEnumTagSinglePayload(v159, 1, 1, v160);
  }

  sub_21700B3B4();
  sub_2170083C4();
  v167 = v181;
  v166 = v183;
  v165 = v185;
  v164 = v186;
  v171 = 1;
  v170 = v182;
  v169 = v184;
  v117 = v174;
  v118 = v173;
  v119 = v172;
  v120 = v158;
  sub_216683A80(v168, v158, &qword_27CABBD58, &unk_2170259F0);
  v121 = v161;
  sub_216683A80(v94, v161, &qword_27CABBD40, &qword_2170259D8);
  v122 = v171;
  LODWORD(v160) = v170;
  LODWORD(v163) = v169;
  v123 = v162;
  *v162 = 0;
  *(v123 + 8) = v117;
  v123[2] = v153;
  *(v123 + 24) = v118;
  v123[4] = v152;
  *(v123 + 40) = v119;
  v124 = v150;
  v123[6] = v151;
  v123[7] = v124;
  v125 = v157;
  v126 = v156;
  v123[8] = v157;
  v123[9] = v126;
  v127 = v154;
  v128 = v155;
  v123[10] = v154;
  v123[11] = v128;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD80, &qword_217025A08);
  sub_216683A80(v120, v123 + v129[16], &qword_27CABBD58, &unk_2170259F0);
  sub_216683A80(v121, v123 + v129[20], &qword_27CABBD40, &qword_2170259D8);
  v130 = v123 + v129[24];
  *v130 = 0;
  v130[8] = v122;
  *(v130 + 2) = v167;
  v130[24] = v160;
  *(v130 + 4) = v166;
  v130[40] = v163;
  v131 = v164;
  *(v130 + 6) = v165;
  *(v130 + 7) = v131;
  sub_2167770D0(v125, v126, v127, v128);
  sub_216699778(v94, &qword_27CABBD40);
  sub_216699778(v168, &qword_27CABBD58);
  sub_216699778(v121, &qword_27CABBD40);
  sub_216699778(v120, &qword_27CABBD58);
  return sub_2167C4DF0(v125, v126, v127, v128);
}

uint64_t sub_2168F0114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a2;
  v86 = a3;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8148, &qword_217019070);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v70 - v4;
  v5 = sub_21700DA84();
  v84 = *(v5 - 8);
  v85 = v5;
  MEMORY[0x28223BE20](v5);
  v70 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v83 = &v70 - v8;
  v80 = sub_21700CFB4();
  v9 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_21700D704();
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v74 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v93 = &v70 - v13;
  v76 = sub_21700D284();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_217005EF4();
  v91 = *(v16 - 8);
  v92 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v90 = &v70 - v20;
  v81 = type metadata accessor for OpenExternalURLAction(0);
  MEMORY[0x28223BE20](v81);
  v88 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_217005AB4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v70 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BD0, &unk_2170142B0);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v70 - v33;
  sub_2170059E4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, 1, v22);
  v87 = v31;
  v89 = v34;
  if (!EnumTagSinglePayload)
  {
    sub_217005A64();
    v34 = v89;
    v31 = v87;
  }

  if (__swift_getEnumTagSinglePayload(v34, 1, v22))
  {
    v36 = v92;
    __swift_storeEnumTagSinglePayload(v31, 1, 1, v92);
  }

  else
  {
    (*(v23 + 16))(v25, v34, v22);
    sub_2170059F4();
    (*(v23 + 8))(v25, v22);
    v36 = v92;
  }

  v37 = v91;
  (*(v91 + 16))(v90, a1, v36);
  sub_21700D6F4();
  v38 = MEMORY[0x277D837D0];
  v98 = MEMORY[0x277D837D0];
  *&v97 = 0x657461676976616ELL;
  *(&v97 + 1) = 0xE800000000000000;
  sub_2166EF9C4(&v97, &v94);
  v39 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v99 = v39;
  sub_2166EF9D4();
  v40 = v99;
  v98 = v38;
  *&v97 = 0xD000000000000012;
  *(&v97 + 1) = 0x80000002170801F0;
  sub_2166EF9C4(&v97, &v94);
  swift_isUniquelyReferenced_nonNull_native();
  v99 = v40;
  sub_2166EF9D4();
  v41 = v99;
  sub_216683A80(v31, v28, &qword_27CABA820, &unk_217018CE0);
  if (__swift_getEnumTagSinglePayload(v28, 1, v36) == 1)
  {
    sub_216699778(v28, &qword_27CABA820);
  }

  else
  {
    (*(v37 + 32))(v18, v28, v36);
    v42 = sub_217005DE4();
    v98 = v38;
    *&v97 = v42;
    *(&v97 + 1) = v43;
    sub_2166EF9C4(&v97, &v94);
    swift_isUniquelyReferenced_nonNull_native();
    v99 = v41;
    sub_2166EF9D4();
    v41 = v99;
    (*(v37 + 8))(v18, v36);
  }

  v44 = v88;
  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v45 = sub_21700CF84();
  v46 = __swift_project_value_buffer(v45, qword_280E73DB0);
  v47 = v78;
  MEMORY[0x21CE9DD70](0x656372756F53, 0xE600000000000000, 1802398060, 0xE400000000000000, v41, v46);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
  v48 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_217013DA0;
  v50 = v49 + v48;
  v51 = v80;
  (*(v9 + 16))(v50, v47, v80);
  v52 = v77;
  v53 = v93;
  v54 = v79;
  (*(v77 + 16))(v74, v93, v79);
  sub_21700D244();
  (*(v9 + 8))(v47, v51);
  (*(v52 + 8))(v53, v54);
  (*(v91 + 32))(v44, v90, v92);
  v55 = v81;
  (*(v75 + 32))(v44 + *(v81 + 24), v15, v76);
  *(v44 + *(v55 + 20)) = 0;
  type metadata accessor for SearchResultsQueryContextView.TextView(0);
  type metadata accessor for ObjectGraph(0);
  v56 = v83;
  v57 = v85;
  sub_21700E094();
  type metadata accessor for MusicPageMetricsProvider(0);
  sub_21700E094();
  v58 = v97;
  v59 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
  swift_beginAccess();
  v60 = sub_21700D194();
  if (__swift_getEnumTagSinglePayload(v58 + v59, 1, v60))
  {
    swift_endAccess();
    v61 = MEMORY[0x277D837D0];
LABEL_13:
    v62 = sub_21700E384();

    goto LABEL_15;
  }

  v62 = sub_21700D0F4();
  swift_endAccess();
  v61 = MEMORY[0x277D837D0];
  if (!v62)
  {
    goto LABEL_13;
  }

LABEL_15:
  v98 = v61;
  *&v97 = 0x686372616553;
  *(&v97 + 1) = 0xE600000000000000;
  sub_2166EF9C4(&v97, &v94);
  swift_isUniquelyReferenced_nonNull_native();
  v99 = v62;
  sub_2166EF9D4();
  v63 = v99;
  sub_216C0C534(&v97);
  if (v98)
  {
    __swift_project_boxed_opaque_existential_1(&v97, v98);
    v95 = v55;
    v96 = sub_2168F20EC(qword_280E3A6B0, type metadata accessor for OpenExternalURLAction, &unk_2170319D8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v94);
    sub_2168F2134(v44, boxed_opaque_existential_1);
    v99 = v63;
    v65 = v71;
    sub_21700DA44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    v66 = v70;
    sub_21700DA24();
    (*(v72 + 8))(v65, v73);

    sub_217007534();
    v67 = v84;
    v68 = v66;
    v44 = v88;
    (*(v84 + 8))(v68, v57);
    __swift_destroy_boxed_opaque_existential_1Tm(&v94);
    __swift_destroy_boxed_opaque_existential_1Tm(&v97);
  }

  else
  {

    sub_216699778(&v97, &qword_27CAB7310);
    v67 = v84;
  }

  sub_2170084C4();

  (*(v67 + 8))(v56, v57);
  sub_2168F24A4(v44, type metadata accessor for OpenExternalURLAction);
  sub_216699778(v87, &qword_27CABA820);
  return sub_216699778(v89, &qword_27CAB6BD0);
}

uint64_t sub_2168F0E30@<X0>(uint64_t a1@<X8>)
{
  v69 = sub_21700CFB4();
  v3 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217005EF4();
  v52 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_21700D704();
  v53 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v54 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - v16;
  v18 = sub_21700D284();
  v67 = *(v18 - 8);
  v68 = v18;
  MEMORY[0x28223BE20](v18);
  v65 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v1[1];
  v58 = *v1;
  v21 = v1[3];
  v60 = v1[2];
  v22 = v1[6];
  v63 = v1[5];
  v56 = v1;
  v64 = v22;
  sub_21700DF14();
  v59 = v20;
  sub_21700DF14();
  v61 = v21;
  sub_21700DF14();
  v57 = sub_217009E94();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v5);
  v23 = v11;
  sub_21700D6F4();
  v24 = MEMORY[0x277D837D0];
  v73 = MEMORY[0x277D837D0];
  *&v72 = 0x7463656C6573;
  *(&v72 + 1) = 0xE600000000000000;
  sub_2166EF9C4(&v72, v71);
  v25 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v70 = v25;
  sub_2166EF9D4();
  v26 = v70;
  v73 = v24;
  *&v72 = 0xD000000000000012;
  *(&v72 + 1) = 0x80000002170801F0;
  sub_2166EF9C4(&v72, v71);
  swift_isUniquelyReferenced_nonNull_native();
  v70 = v26;
  sub_2166EF9D4();
  v27 = v70;
  v55 = v17;
  sub_216683A80(v17, v14, &qword_27CABA820, &unk_217018CE0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v5) == 1)
  {
    sub_216699778(v14, &qword_27CABA820);
  }

  else
  {
    v28 = v52;
    (*(v52 + 32))(v7, v14, v5);
    v29 = sub_217005DE4();
    v73 = v24;
    *&v72 = v29;
    *(&v72 + 1) = v30;
    sub_2166EF9C4(&v72, v71);
    swift_isUniquelyReferenced_nonNull_native();
    v70 = v27;
    sub_2166EF9D4();
    v27 = v70;
    (*(v28 + 8))(v7, v5);
  }

  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v31 = sub_21700CF84();
  v32 = __swift_project_value_buffer(v31, qword_280E73DB0);
  v33 = v66;
  MEMORY[0x21CE9DD70](1701998413, 0xE400000000000000, 0x6E6F74747562, 0xE600000000000000, v27, v32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
  v34 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_217013DA0;
  v36 = v35 + v34;
  v37 = v69;
  (*(v3 + 16))(v36, v33, v69);
  v38 = v53;
  v39 = v62;
  (*(v53 + 16))(v54, v23, v62);
  v40 = v65;
  sub_21700D244();
  (*(v3 + 8))(v33, v37);
  (*(v38 + 8))(v23, v39);
  sub_216699778(v55, &qword_27CABA820);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE08, &qword_217025B20);
  v42 = a1 + v41[25];
  LOBYTE(v71[0]) = 0;
  sub_21700AEA4();
  v43 = *(&v72 + 1);
  *v42 = v72;
  *(v42 + 8) = v43;
  v44 = v41[26];
  *(a1 + v44) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE10, &unk_217034D70);
  swift_storeEnumTagMultiPayload();
  sub_2168F15B4(v56, a1);
  *(a1 + v41[17]) = 1;
  *(a1 + v41[18]) = 1;
  v45 = (a1 + v41[20]);
  v46 = v59;
  *v45 = v58;
  v45[1] = v46;
  v47 = (a1 + v41[19]);
  v48 = v61;
  *v47 = v60;
  v47[1] = v48;
  *(a1 + v41[21]) = 3;
  *(a1 + v41[23]) = v57;
  v49 = (a1 + v41[22]);
  v50 = v64;
  *v49 = v63;
  v49[1] = v50;
  return (*(v67 + 32))(a1 + v41[24], v40, v68);
}

uint64_t sub_2168F15B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_21700D284();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ModalPresentationDescriptor(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE18, &unk_217025B60);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20, qword_217034D80);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v25 - v17;
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  sub_21700DF14();
  sub_21700D234();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v3);
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = v19;
  *(v9 + 5) = v20;
  v9[48] = 8;
  *(v9 + 7) = 0;
  v9[64] = 0;
  sub_216683A80(v15, v12, &qword_27CABBE18, &unk_217025B60);
  if (__swift_getEnumTagSinglePayload(v12, 1, v3) == 1)
  {
    sub_21700D234();
    sub_216699778(v15, &qword_27CABBE18);
    if (__swift_getEnumTagSinglePayload(v12, 1, v3) != 1)
    {
      sub_216699778(v12, &qword_27CABBE18);
    }
  }

  else
  {
    sub_216699778(v15, &qword_27CABBE18);
    (*(v4 + 32))(v6, v12, v3);
  }

  (*(v4 + 32))(&v9[*(v7 + 40)], v6, v3);
  sub_2168F29F4(v9, v18);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v7);
  v21 = sub_21700AD34();
  v22 = sub_217009E94();
  v23 = v26;
  sub_2167C5834(v18, v26, &qword_27CABBE20, qword_217034D80);
  result = type metadata accessor for ParagraphView(0);
  *(v23 + *(result + 20)) = v21;
  *(v23 + *(result + 24)) = v22;
  return result;
}

uint64_t sub_2168F1924(uint64_t a1)
{
  result = sub_217009E24();
  qword_27CABBBF0 = result;
  return result;
}

uint64_t sub_2168F196C(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = sub_21700AC44();
  *a3 = result;
  return result;
}

unint64_t sub_2168F19B8()
{
  result = qword_27CABBC20;
  if (!qword_27CABBC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBC08, &qword_2170257B8);
    sub_21669E098(&qword_27CABBC28, &unk_27CABBC30, &unk_2170257D0, MEMORY[0x277CE1138]);
    sub_21669E098(&qword_280E2A8D8, &qword_27CAB8860, &unk_21701A550, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBC20);
  }

  return result;
}

unint64_t sub_2168F1A9C()
{
  result = qword_27CABBC38;
  if (!qword_27CABBC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBC10, &qword_2170257C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBC08, &qword_2170257B8);
    sub_2168F19B8();
    swift_getOpaqueTypeConformance2();
    sub_2167B8C60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBC38);
  }

  return result;
}

unint64_t sub_2168F1B8C()
{
  result = qword_27CABBCA8;
  if (!qword_27CABBCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBC78, &qword_217025818);
    sub_2168F1C18();
    sub_2168F2098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBCA8);
  }

  return result;
}

unint64_t sub_2168F1C18()
{
  result = qword_27CABBCB0;
  if (!qword_27CABBCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBC70, &qword_217025810);
    sub_2168F1CD0();
    sub_21669E098(&qword_280E2B390, &qword_27CAB7438, &qword_21701A4C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBCB0);
  }

  return result;
}

unint64_t sub_2168F1CD0()
{
  result = qword_27CABBCB8;
  if (!qword_27CABBCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBC68, &qword_217025808);
    sub_2168F1D88();
    sub_21669E098(&qword_280E2A808, &qword_27CAB72E8, &unk_21701F5E0, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBCB8);
  }

  return result;
}

unint64_t sub_2168F1D88()
{
  result = qword_27CABBCC0;
  if (!qword_27CABBCC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBC60, &qword_217025800);
    sub_2168F1E40();
    sub_21669E098(&qword_280E2A840, &qword_27CAB7BE8, &qword_217019E70, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBCC0);
  }

  return result;
}

unint64_t sub_2168F1E40()
{
  result = qword_27CABBCC8;
  if (!qword_27CABBCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBC58, &qword_2170257F8);
    sub_2168F2268(&qword_27CABBCD0, &qword_27CABBC50, &qword_2170257F0, sub_2168F1EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBCC8);
  }

  return result;
}

unint64_t sub_2168F1EF8()
{
  result = qword_27CABBCD8;
  if (!qword_27CABBCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBCA0, &unk_217025908);
    sub_2168F1FB0();
    sub_21669E098(&qword_280E2A6F8, &qword_27CAB7638, &unk_217017490, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBCD8);
  }

  return result;
}

unint64_t sub_2168F1FB0()
{
  result = qword_27CABBCE0;
  if (!qword_27CABBCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBC98, &qword_2170258D0);
    sub_2168F20EC(&qword_27CABBCE8, type metadata accessor for SearchResultsQueryContextView.TextView, &unk_217025970);
    sub_21669E098(&qword_280E2A720, &qword_27CAB7670, &qword_217018330, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBCE0);
  }

  return result;
}

unint64_t sub_2168F2098()
{
  result = qword_27CABBCF0;
  if (!qword_27CABBCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBCF0);
  }

  return result;
}

uint64_t sub_2168F20EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2168F2134(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

void sub_2168F21B4(uint64_t a1)
{
  sub_216820EBC(319);
  if (v1 <= 0x3F)
  {
    sub_21680D428(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for JSSearchResultsPage.QueryContext(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ObjectGraph(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2168F2268(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_100(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2168F22E8()
{
  result = qword_27CABBD20;
  if (!qword_27CABBD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBC40, &qword_2170257E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBC10, &qword_2170257C0);
    sub_2168F1A9C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBD20);
  }

  return result;
}

unint64_t sub_2168F23EC()
{
  result = qword_27CABBD60;
  if (!qword_27CABBD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBD50, &qword_2170259E8);
    sub_21680DC54();
    sub_21669E098(&qword_27CABBD68, &qword_27CABBD70, &qword_217025A00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBD60);
  }

  return result;
}

uint64_t sub_2168F24A4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2168F2500()
{
  result = qword_27CABBD90;
  if (!qword_27CABBD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBD30, &qword_2170259C8);
    sub_2168F2268(&qword_27CABBD98, &unk_27CABBDA0, &unk_217025A78, sub_2168F25E4);
    sub_21669E098(&qword_27CABBD68, &qword_27CABBD70, &qword_217025A00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBD90);
  }

  return result;
}

unint64_t sub_2168F25E4()
{
  result = qword_27CABBDA8;
  if (!qword_27CABBDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBDB0, &qword_217025A80);
    sub_2168F269C();
    sub_21669E098(&qword_280E2A6F8, &qword_27CAB7638, &unk_217017490, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBDA8);
  }

  return result;
}

unint64_t sub_2168F269C()
{
  result = qword_27CABBDB8;
  if (!qword_27CABBDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBDC0, &qword_217025A88);
    sub_2168F2754();
    sub_21669E098(&qword_280E2A830, &unk_27CAB8870, &unk_217036360, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBDB8);
  }

  return result;
}

unint64_t sub_2168F2754()
{
  result = qword_27CABBDC8;
  if (!qword_27CABBDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBDD0, &qword_217025A90);
    sub_2168F280C();
    sub_21669E098(&qword_280E2A720, &qword_27CAB7670, &qword_217018330, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBDC8);
  }

  return result;
}

unint64_t sub_2168F280C()
{
  result = qword_27CABBDD8;
  if (!qword_27CABBDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBDE0, &qword_217025A98);
    sub_21669E098(&qword_27CAB7CD8, &qword_27CAB7CE0, &unk_217025AA0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBDD8);
  }

  return result;
}

uint64_t sub_2168F28C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SearchResultsQueryContextView.TextView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2168F0114(a1, v6, a2);
}

uint64_t sub_2168F296C(uint64_t a1)
{
  result = type metadata accessor for JSSearchResultsPage.QueryContext(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2168F29F4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_2168F2A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a2;
  v46 = a3;
  sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v47 = v5;
  v48 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  v43 = v6;
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v39 = v8;
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v45 = v9;
  v51 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v42 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE90, qword_217025BF0);
  MEMORY[0x28223BE20](v20);
  v22 = (&v39 - v21);
  v50 = a1;
  sub_21700CE04();
  sub_21700CE04();
  v23 = sub_21700CDB4();
  v25 = v24;
  v26 = *(v11 + 8);
  v27 = v16;
  v28 = v51;
  v26(v27, v51);
  if (v25)
  {
    v41 = v26;
    (*(v11 + 32))(v22 + *(v20 + 36), v19, v28);
    *v22 = v23;
    v22[1] = v25;
    v29 = (v46 + *(type metadata accessor for IntentAction(0) + 20));
    v29[3] = v20;
    v29[4] = sub_2168F2FA0();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
    sub_2168F3004(v22, boxed_opaque_existential_1);
    v31 = v50;
    sub_21700CE04();
    v33 = v47;
    v32 = v48;
    v34 = v49;
    (*(v47 + 16))(v43, v49, v48);
    v35 = v44;
    sub_21700D224();
    (*(v33 + 8))(v34, v32);
    v41(v31, v51);
    sub_21669987C(v22, &qword_27CABBE90, qword_217025BF0);
    if (v35)
    {
      return sub_21669987C(v29, &qword_27CABBEA0, &qword_21706D990);
    }

    else
    {
      return (*(v39 + 32))(v46, v45, v40);
    }
  }

  else
  {
    v37 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    *v38 = 0x646E696B24;
    v38[1] = 0xE500000000000000;
    v38[2] = v20;
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D22530], v37);
    swift_willThrow();
    v26(v19, v28);
    (*(v47 + 8))(v49, v48);
    return (v26)(v50, v28);
  }
}

unint64_t sub_2168F2FA0()
{
  result = qword_27CABBE98;
  if (!qword_27CABBE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBE90, qword_217025BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBE98);
  }

  return result;
}

uint64_t sub_2168F3004(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE90, qword_217025BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2168F309C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v43 = a3;
  v46 = a2;
  v45 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v39 = v10;
  v40 = v9;
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v44 = a1;
  sub_21700CE04();
  v20 = sub_21700CDB4();
  v22 = v21;
  v23 = v19;
  v24 = *(v15 + 8);
  v24(v23, v13);
  if (v22)
  {
    v41 = v24;
    v25 = v43;
    v26 = v44;
    *v43 = v20;
    v25[1] = v22;
    sub_21700CE04();
    (*(v5 + 16))(v8, v46, v45);
    v27 = v42;
    sub_21700D224();
    v28 = OUTLINED_FUNCTION_1_23();
    v29(v28);
    v41(v26, v13);
    if (v27)
    {
    }

    else
    {
      v37 = type metadata accessor for UnblockUserAction(0);
      return (*(v39 + 32))(v43 + *(v37 + 20), v12, v40);
    }
  }

  else
  {
    v31 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    v33 = v32;
    v34 = type metadata accessor for UnblockUserAction(0);
    *v33 = 0x72506C6169636F73;
    v33[1] = 0xEF4449656C69666FLL;
    v33[2] = v34;
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D22530], v31);
    swift_willThrow();
    v35 = OUTLINED_FUNCTION_1_23();
    v36(v35);
    return (v24)(v44, v13);
  }
}

uint64_t sub_2168F34B4@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v73 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_1_0();
  v65 = v4;
  MEMORY[0x28223BE20](v5);
  v71 = v61 - v6;
  v76 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v70 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v64 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = v61 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v61 - v20;
  sub_21700CE04();
  v22 = sub_21700CDB4();
  v24 = v23;
  v26 = *(v13 + 8);
  v25 = v13 + 8;
  v72 = v11;
  v69 = v26;
  v26(v21, v11);
  if (v24)
  {
    __dst[0] = v22;
    __dst[1] = v24;
    sub_21700F364();
    type metadata accessor for Artwork(0);
    sub_21700CE04();
    v67 = *(v70 + 16);
    v68 = v70 + 16;
    v67(v10, v73, v76);
    v66 = type metadata accessor for RecentSearchLockup(0);
    sub_2166D5D50(&qword_280E2BF60, type metadata accessor for Artwork, &unk_21705A604);
    sub_21700D734();
    OUTLINED_FUNCTION_7_33(1819568500);
    v27 = sub_21700CDB4();
    v29 = v28;
    v30 = v72;
    v31 = v69;
    v69(v18, v72);
    a2[10] = v27;
    a2[11] = v29;
    sub_21700CE04();
    v32 = sub_21700CDB4();
    v34 = v33;
    v31(v18, v30);
    a2[12] = v32;
    a2[13] = v34;
    v35 = type metadata accessor for ContentDescriptor(0);
    v63 = a2;
    v61[1] = v25;
    v36 = v35;
    OUTLINED_FUNCTION_2_0();
    sub_21700CE04();
    v61[0] = v10;
    OUTLINED_FUNCTION_3_51();
    v37();
    sub_2166D5D50(qword_280E40390, type metadata accessor for ContentDescriptor, &protocol conformance descriptor for ContentDescriptor);
    v38 = v71;
    v62 = v36;
    v39 = v63;
    sub_21700D734();
    sub_216681B64(v38, &v39[*(v66 + 52)], &qword_27CAB6A00, &unk_217016B60);
    sub_21700CE04();
    sub_21700D2E4();
    v40 = v72;
    v31(v18, v72);
    v41 = v64;
    sub_21700CE04();
    LOBYTE(v32) = sub_21700CD44();
    v31(v41, v40);
    v39[112] = v32 & 1;
    OUTLINED_FUNCTION_7_33(1969710451);
    sub_21700D2E4();
    v31(v18, v40);
    sub_21700CE04();
    sub_2168F3E64();
    sub_21700CCC4();
    v31(v18, v40);
    v39[113] = __dst[0];
    sub_21700D7A4();
    OUTLINED_FUNCTION_2_0();
    sub_21700CE04();
    OUTLINED_FUNCTION_3_51();
    v42();
    sub_21700D734();
    v43 = v65;
    sub_216681B64(v71, v65, &qword_27CAB6A00, &unk_217016B60);
    if (__swift_getEnumTagSinglePayload(v43, 1, v62) == 1)
    {
      v44 = OUTLINED_FUNCTION_0_65();
      v45(v44);
      OUTLINED_FUNCTION_1_53();
      v46();
      sub_2168F3EB8(v71);
      result = sub_2168F3EB8(v43);
      v48 = 1;
    }

    else
    {
      memcpy(__dst, (v43 + 8), 0x69uLL);
      sub_21686BC90(__dst, v74);
      sub_2168F3F20(v43);
      memcpy(v74, __dst, 0x69uLL);
      v56 = ContentIdentifiers.identifierKinds.getter();
      sub_21686BCEC(__dst);
      v57 = sub_216CE1254(0, v56);

      v58 = OUTLINED_FUNCTION_0_65();
      v59(v58);
      OUTLINED_FUNCTION_1_53();
      v60();
      result = sub_2168F3EB8(v71);
      v48 = !v57;
    }

    v39[114] = v48 & 1;
  }

  else
  {
    v49 = sub_21700E2E4();
    sub_2166D5D50(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v51 = v50;
    v52 = type metadata accessor for RecentSearchLockup(0);
    *v51 = 25705;
    v51[1] = 0xE200000000000000;
    v51[2] = v52;
    (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D22530], v49);
    swift_willThrow();
    v53 = OUTLINED_FUNCTION_0_65();
    v54(v53);
    OUTLINED_FUNCTION_1_53();
    return v55();
  }

  return result;
}

uint64_t sub_2168F3E0C(uint64_t a1)
{
  result = sub_2166D5D50(qword_280E3E960, type metadata accessor for RecentSearchLockup, &unk_217025D44);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2168F3E64()
{
  result = qword_280E2BF68;
  if (!qword_280E2BF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2BF68);
  }

  return result;
}

uint64_t sub_2168F3EB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2168F3F20(uint64_t a1)
{
  v2 = type metadata accessor for ContentDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ContainerDetailArtworkView(uint64_t a1)
{
  result = qword_27CABBEB0;
  if (!qword_27CABBEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2168F3FF0(uint64_t a1)
{
  sub_216690C88(319, &qword_280E2BF20, type metadata accessor for Artwork);
  if (v1 <= 0x3F)
  {
    sub_216690C88(319, qword_280E44408, type metadata accessor for VideoArtwork);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2168F40D0@<X0>(uint64_t a1@<X8>)
{
  v177 = a1;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEC0, &qword_217025E30);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v3);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEC8, &qword_217025E38);
  OUTLINED_FUNCTION_1();
  v159 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v6);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBED0, &qword_217025E40);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v8);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBED8, &qword_217025E48);
  OUTLINED_FUNCTION_1();
  v163 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v11);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEE0, &unk_217025E50);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_105();
  v174 = v13;
  sub_21700D8E4();
  OUTLINED_FUNCTION_1();
  v171 = v15;
  v172 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v169 = v16;
  MEMORY[0x28223BE20](v17);
  v170 = &v139 - v18;
  v166 = sub_2170099D4();
  OUTLINED_FUNCTION_1();
  v165 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_70(&v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  OUTLINED_FUNCTION_36(v22);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v24);
  v25 = type metadata accessor for ContainerDetailArtworkView(0);
  OUTLINED_FUNCTION_1();
  v141 = v26;
  MEMORY[0x28223BE20](v27);
  v142 = v28;
  OUTLINED_FUNCTION_70(&v139 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEE8, &qword_217025E60);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v30);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEF0, &qword_217025E68);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v32);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEF8, &qword_217025E70);
  OUTLINED_FUNCTION_1();
  v150 = v33;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v35);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBF00, &qword_217025E78);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v37);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBF08, &qword_217025E80);
  OUTLINED_FUNCTION_1();
  v154 = v38;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v40);
  v41 = sub_2170071B4();
  OUTLINED_FUNCTION_1();
  v43 = v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v139 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710);
  v48 = OUTLINED_FUNCTION_36(v47);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_1_0();
  v140 = v49;
  MEMORY[0x28223BE20](v50);
  v52 = &v139 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBF10, &qword_2170532E0);
  OUTLINED_FUNCTION_36(v53);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v54);
  v56 = &v139 - v55;
  v57 = sub_217006EC4();
  OUTLINED_FUNCTION_1();
  v156 = v58;
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_1_0();
  v139 = v60;
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_70(&v139 - v62);
  v145 = v25;
  v63 = *(v25 + 20);
  v164 = v1;
  sub_2166A6E54(v1 + v63, v52, &qword_27CABBEA8, &unk_217026710);
  v64 = type metadata accessor for VideoArtwork(0);
  if (__swift_getEnumTagSinglePayload(v52, 1, v64) == 1)
  {
    sub_216697664(v52, &qword_27CABBEA8, &unk_217026710);
    __swift_storeEnumTagSinglePayload(v56, 1, 1, v57);
LABEL_4:
    sub_216697664(v56, &qword_27CABBF10, &qword_2170532E0);
    v66 = v157;
    sub_2168F50D4(v157);
    v67 = (v66 + *(v158 + 36));
    v68 = *(sub_217008B44() + 20);
    v69 = *MEMORY[0x277CE0118];
    sub_217009294();
    OUTLINED_FUNCTION_34();
    (*(v70 + 104))(&v67[v68], v69);
    __asm { FMOV            V0.2D, #10.0 }

    *v67 = _Q0;
    *&v67[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0) + 36)] = 256;
    sub_2170099A4();
    sub_2168F6264();
    OUTLINED_FUNCTION_11_29();
    v76 = OUTLINED_FUNCTION_10_26();
    v77(v76);
    sub_216697664(v66, &qword_27CABBEC0, &qword_217025E30);
    v78 = sub_216983738(33);
    OUTLINED_FUNCTION_3_52(v78, v79);
    sub_2167B2E14();
    v80 = MEMORY[0x277D837D0];
    v81 = v161;
    OUTLINED_FUNCTION_12_26(&v179);

    v82 = OUTLINED_FUNCTION_14_22();
    v83(v82);
    OUTLINED_FUNCTION_7_34();
    sub_216697664(v178, &unk_27CABF7A0, &unk_217014D20);
    OUTLINED_FUNCTION_9_34();
    v181 = v80;
    v179 = 0x636974617473;
    v180 = 0xE600000000000000;
    v84 = v170;
    sub_21700D8C4();
    v85 = v172;
    v86 = *(v171 + 8);
    v86(v67, v172);
    OUTLINED_FUNCTION_9_34();
    v87 = sub_2168F648C();
    v88 = v162;
    v89 = v175;
    sub_21700A204();
    v86(v84, v85);
    sub_216697664(v81, &qword_27CABBED0, &qword_217025E40);
    v90 = v163;
    v91 = v176;
    (*(v163 + 16))(v174, v88, v176);
    swift_storeEnumTagMultiPayload();
    v92 = sub_2168F65AC();
    v179 = v167;
    v180 = v92;
    swift_getOpaqueTypeConformance2();
    v179 = v89;
    v180 = v87;
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    return (*(v90 + 8))(v88, v91);
  }

  sub_217007174();
  sub_216DEE900(v56);
  (*(v43 + 8))(v46, v41);
  OUTLINED_FUNCTION_5_32();
  sub_2168F68F0(v52, v65);
  if (__swift_getEnumTagSinglePayload(v56, 1, v57) == 1)
  {
    goto LABEL_4;
  }

  v94 = v156;
  v95 = *(v156 + 32);
  v96 = v155;
  v95(v155, v56, v57);
  v97 = v139;
  (*(v94 + 16))(v139, v96, v57);
  v98 = v164;
  v99 = v143;
  sub_2168F6758(v164, v143);
  v100 = (*(v141 + 80) + 16) & ~*(v141 + 80);
  v101 = swift_allocObject();
  sub_2168F67BC(v99, v101 + v100);
  v102 = v140;
  sub_2166A6E54(v98 + v63, v140, &qword_27CABBEA8, &unk_217026710);
  if (__swift_getEnumTagSinglePayload(v102, 1, v64) == 1)
  {
    sub_216697664(v102, &qword_27CABBEA8, &unk_217026710);
    v103 = sub_21700C444();
    v104 = v146;
    v105 = v146;
    v106 = 1;
  }

  else
  {
    v107 = *(v64 + 20);
    v108 = sub_21700C444();
    OUTLINED_FUNCTION_34();
    v110 = v102 + v107;
    v104 = v146;
    (*(v109 + 16))(v146, v110, v108);
    OUTLINED_FUNCTION_5_32();
    sub_2168F68F0(v102, v111);
    v105 = v104;
    v106 = 0;
    v103 = v108;
  }

  __swift_storeEnumTagSinglePayload(v105, v106, 1, v103);
  v112 = *(v98 + *(v145 + 24));
  v113 = v147;
  v95(v147, v97, v57);
  v114 = v144;
  v115 = (v113 + *(v144 + 36));
  *v115 = sub_2168F6820;
  v115[1] = v101;
  sub_2168F6880(v104, v113 + *(v114 + 40));
  *(v113 + *(v114 + 44)) = v112;
  v116 = v148;
  v117 = (v148 + *(v149 + 36));
  v118 = *(sub_217008B44() + 20);
  v119 = *MEMORY[0x277CE0118];
  sub_217009294();
  OUTLINED_FUNCTION_34();
  (*(v120 + 104))(&v117[v118], v119);
  __asm { FMOV            V0.2D, #10.0 }

  *v117 = _Q0;
  *&v117[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0) + 36)] = 256;
  sub_21678818C(v113, v116, &qword_27CABBEE8, &qword_217025E60);
  sub_2170099A4();
  sub_2168F6674();
  OUTLINED_FUNCTION_11_29();
  v122 = OUTLINED_FUNCTION_10_26();
  v123(v122);
  sub_216697664(v116, &qword_27CABBEF0, &qword_217025E68);
  v124 = sub_216983738(161);
  OUTLINED_FUNCTION_3_52(v124, v125);
  sub_2167B2E14();
  v126 = MEMORY[0x277D837D0];
  v127 = v152;
  OUTLINED_FUNCTION_12_26(&v179);

  v128 = OUTLINED_FUNCTION_14_22();
  v129(v128);
  OUTLINED_FUNCTION_7_34();
  sub_216697664(v178, &unk_27CABF7A0, &unk_217014D20);
  OUTLINED_FUNCTION_9_34();
  v181 = v126;
  v179 = 0x6E6F69746F6DLL;
  v180 = 0xE600000000000000;
  v130 = v170;
  sub_21700D8C4();
  v131 = v172;
  v132 = *(v171 + 8);
  v132(v117, v172);
  OUTLINED_FUNCTION_9_34();
  v133 = sub_2168F65AC();
  v171 = v57;
  v134 = v153;
  v135 = v167;
  sub_21700A204();
  v132(v130, v131);
  sub_216697664(v127, &qword_27CABBF00, &qword_217025E78);
  v136 = v154;
  v137 = v168;
  (*(v154 + 16))(v174, v134, v168);
  swift_storeEnumTagMultiPayload();
  v179 = v135;
  v180 = v133;
  swift_getOpaqueTypeConformance2();
  v138 = sub_2168F648C();
  v179 = v175;
  v180 = v138;
  swift_getOpaqueTypeConformance2();
  sub_217009554();
  (*(v136 + 8))(v134, v137);
  return (*(v156 + 8))(v155, v171);
}

double sub_2168F50D4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v62 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v58 - v4;
  v6 = sub_21700C444();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v10 - 8);
  v59 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v58 - v16;
  v69 = sub_217007474();
  v64 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v68 = &v58 - v21;
  MEMORY[0x28223BE20](v22);
  v63 = &v58 - v23;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8, &qword_217017590);
  v24 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v58 - v25;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBF38, &qword_217025E90);
  MEMORY[0x28223BE20](v60);
  v66 = &v58 - v26;
  v61 = v2;
  sub_2166A6E54(v2, v14, &qword_27CAB6D60, &qword_217014E40);
  v27 = type metadata accessor for Artwork(0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v27) == 1)
  {
    sub_216697664(v14, &qword_27CAB6D60, &qword_217014E40);
    v28 = sub_21700C4B4();
    v29 = v17;
    v30 = 1;
  }

  else
  {
    v31 = sub_21700C4B4();
    v58 = v9;
    v32 = v31;
    (*(*(v31 - 8) + 16))(v17, v14, v31);
    sub_2168F68F0(v14, type metadata accessor for Artwork);
    v29 = v17;
    v30 = 0;
    v28 = v32;
    v9 = v58;
  }

  __swift_storeEnumTagSinglePayload(v29, v30, 1, v28);
  type metadata accessor for ContainerDetailArtworkView(0);
  v33 = v61;
  sub_217007434();
  sub_217007404();
  v34 = *(v64 + 8);
  v34(v19, v69);
  v35 = v59;
  sub_2166A6E54(v33, v59, &qword_27CAB6D60, &qword_217014E40);
  if (__swift_getEnumTagSinglePayload(v35, 1, v27) == 1)
  {
    sub_216697664(v35, &qword_27CAB6D60, &qword_217014E40);
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
    sub_21700C404();
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
    {
      sub_216697664(v5, &qword_27CAB7530, &unk_21701A660);
    }
  }

  else
  {
    (*(v7 + 16))(v5, v35 + *(v27 + 20), v6);
    sub_2168F68F0(v35, type metadata accessor for Artwork);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
    (*(v7 + 32))(v9, v5, v6);
  }

  v36 = v63;
  v37 = v68;
  sub_2170073E4();
  (*(v7 + 8))(v9, v6);
  v38 = v69;
  v34(v37, v69);
  *(swift_allocObject() + 16) = xmmword_217016ED0;
  sub_2167C505C();
  v39 = v65;
  sub_2170073F4();

  v34(v36, v38);
  sub_21700ACC4();
  v40 = sub_21700AD04();

  v41 = v66;
  v42 = &v66[*(v60 + 36)];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7440, &unk_217016D40);
  v44 = &v42[*(v43 + 36)];
  v45 = *(sub_217008B44() + 20);
  v46 = *MEMORY[0x277CE0118];
  v47 = sub_217009294();
  (*(*(v47 - 8) + 104))(&v44[v45], v46, v47);
  __asm { FMOV            V0.2D, #10.0 }

  *v44 = _Q0;
  *v42 = 0x3FF0000000000000;
  v42[8] = 0;
  *(v42 + 2) = v40;
  v53 = &v42[*(v43 + 40)];
  *v53 = swift_getKeyPath();
  v53[8] = 0;
  (*(v24 + 32))(v41, v39, v67);
  sub_21700ACC4();
  v54 = sub_21700AD04();

  v55 = v62;
  sub_21678818C(v41, v62, &qword_27CABBF38, &qword_217025E90);
  v56 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBF28, &qword_217025E88) + 36);
  *v56 = v54;
  result = 25.0;
  *(v56 + 8) = xmmword_217025D90;
  *(v56 + 24) = 0x4034000000000000;
  return result;
}

uint64_t sub_2168F58C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &OpaqueTypeMetadata2 - v5;
  v6 = sub_2170063E4();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v50 = &OpaqueTypeMetadata2 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB76F8, &qword_217017590);
  v46 = v8;
  v9 = *(a1 + 16);
  v10 = sub_2167C505C();
  v63 = &type metadata for ArtworkPlaceholderView;
  v64 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v11 = *(a1 + 24);
  v63 = v8;
  v64 = v9;
  v65 = OpaqueTypeConformance2;
  v66 = v11;
  v12 = sub_2170063B4();
  v47 = sub_2170064D4();
  v49 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v14 = &OpaqueTypeMetadata2 - v13;
  v15 = sub_217005EF4();
  MEMORY[0x28223BE20](v15 - 8);
  v40 = *(v12 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &OpaqueTypeMetadata2 - v17;
  WitnessTable = swift_getWitnessTable();
  v63 = v12;
  v64 = WitnessTable;
  v42 = MEMORY[0x277D269E0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v44 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v38 = &OpaqueTypeMetadata2 - v20;
  v21 = sub_2170089F4();
  v45 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v39 = &OpaqueTypeMetadata2 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v41 = &OpaqueTypeMetadata2 - v24;
  sub_217006EB4();
  v58 = v9;
  v59 = v11;
  v25 = v2;
  v60 = v2;
  v55 = v9;
  v56 = v11;
  v57 = v2;
  sub_2170063A4();
  sub_21700A2A4();
  (*(v40 + 8))(v18, v12);
  v26 = v51;
  sub_2166A6E54(v25 + *(v48 + 40), v51, &qword_27CAB7530, &unk_21701A660);
  v27 = v50;
  sub_216B50CD4(v26, v50);
  v28 = v38;
  v29 = v47;
  sub_217006454();
  (*(v52 + 8))(v27, v53);
  (*(v49 + 8))(v14, v29);
  v63 = v12;
  v64 = WitnessTable;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = OpaqueTypeMetadata2;
  sub_2166BF464();
  v32 = v39;
  sub_21700A9C4();
  (*(v44 + 8))(v28, v31);
  v61 = v30;
  v62 = MEMORY[0x277CDF678];
  v33 = swift_getWitnessTable();
  v34 = v41;
  sub_2166C24DC(v32, v21, v33);
  v35 = *(v45 + 8);
  v35(v32, v21);
  sub_2166C24DC(v34, v21, v33);
  return (v35)(v34, v21);
}

uint64_t sub_2168F5F80()
{
  v0 = sub_21700C444();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_217007474();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  sub_217006EA4();
  v14 = sub_21700C4B4();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v14);
  sub_217007464();
  sub_21700C404();
  sub_2170073E4();
  (*(v1 + 8))(v3, v0);
  v15 = *(v8 + 8);
  v15(v10, v7);
  *(swift_allocObject() + 16) = xmmword_217016ED0;
  sub_2167C505C();
  sub_2170073F4();

  return (v15)(v13, v7);
}

unint64_t sub_2168F6264()
{
  result = qword_27CABBF18;
  if (!qword_27CABBF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBEC0, &qword_217025E30);
    sub_2168F631C();
    sub_2166D9530(&qword_280E2B390, &qword_27CAB7438, &qword_21701A4C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBF18);
  }

  return result;
}

unint64_t sub_2168F631C()
{
  result = qword_27CABBF20;
  if (!qword_27CABBF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBF28, &qword_217025E88);
    sub_2168F63A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBF20);
  }

  return result;
}

unint64_t sub_2168F63A8()
{
  result = qword_27CABBF30;
  if (!qword_27CABBF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBF38, &qword_217025E90);
    sub_2167C505C();
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(qword_280E382B8, &qword_27CAB7440, &unk_217016D40, &unk_21705A1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBF30);
  }

  return result;
}

unint64_t sub_2168F648C()
{
  result = qword_27CABBF40;
  if (!qword_27CABBF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBED0, &qword_217025E40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBEC0, &qword_217025E30);
    sub_2168F6264();
    swift_getOpaqueTypeConformance2();
    sub_2168F6554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBF40);
  }

  return result;
}

unint64_t sub_2168F6554()
{
  result = qword_280E2A6F0;
  if (!qword_280E2A6F0)
  {
    sub_217009B44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A6F0);
  }

  return result;
}

unint64_t sub_2168F65AC()
{
  result = qword_27CABBF48;
  if (!qword_27CABBF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBF00, &qword_217025E78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBEF0, &qword_217025E68);
    sub_2168F6674();
    swift_getOpaqueTypeConformance2();
    sub_2168F6554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBF48);
  }

  return result;
}

unint64_t sub_2168F6674()
{
  result = qword_27CABBF50;
  if (!qword_27CABBF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBEF0, &qword_217025E68);
    sub_2166D9530(qword_27CABBF58, &qword_27CABBEE8, &qword_217025E60, &unk_217025F00);
    sub_2166D9530(&qword_280E2B390, &qword_27CAB7438, &qword_21701A4C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBF50);
  }

  return result;
}

uint64_t sub_2168F6758(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerDetailArtworkView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2168F67BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerDetailArtworkView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_2168F6820@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContainerDetailArtworkView(0);
  OUTLINED_FUNCTION_36(v2);
  return sub_2168F50D4(a1);
}

uint64_t sub_2168F6880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2168F68F0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_2168F6948(uint64_t a1)
{
  sub_217006EC4();
  if (v1 <= 0x3F)
  {
    sub_2166B0B84();
    if (v2 <= 0x3F)
    {
      sub_216690C88(319, &unk_280E2A3A0, MEMORY[0x277D2B220]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2168F6A48()
{
  result = qword_27CABBFE0;
  if (!qword_27CABBFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBFE8, &qword_217025EF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBF00, &qword_217025E78);
    sub_2168F65AC();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBED0, &qword_217025E40);
    sub_2168F648C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBFE0);
  }

  return result;
}

unint64_t sub_2168F6BB8()
{
  result = qword_280E35180[0];
  if (!qword_280E35180[0])
  {
    type metadata accessor for RemoveAppWithAccessAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E35180);
  }

  return result;
}

uint64_t sub_2168F6C10(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + *(type metadata accessor for RemoveAppWithAccessAction(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  type metadata accessor for JSIntentDispatcher();
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  sub_216ECDDBC(v4, v5, a2);
  v8[3] = sub_21700D7C4();
  v8[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v8);
  sub_21700D7B4();
  sub_21700D2A4();
  v6 = sub_21700E1B4();

  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

uint64_t type metadata accessor for RecordLabelContextMenu(uint64_t a1)
{
  result = qword_280E39008;
  if (!qword_280E39008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2168F6D88(uint64_t a1)
{
  sub_21700BEA4();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MenuConfiguration(319);
    if (v2 <= 0x3F)
    {
      sub_2167B83B4(319);
      if (v3 <= 0x3F)
      {
        sub_2167EE974(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2168F6FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[20] = a1;
  v4[21] = a2;
  v5 = sub_217006DE4();
  v4[24] = v5;
  OUTLINED_FUNCTION_2(v5);
  v4[25] = v6;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v7 = sub_217006E04();
  v4[28] = v7;
  OUTLINED_FUNCTION_2(v7);
  v4[29] = v8;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v9 = sub_217006E24();
  v4[33] = v9;
  OUTLINED_FUNCTION_2(v9);
  v4[34] = v10;
  v4[35] = OUTLINED_FUNCTION_80();
  v11 = sub_217006BF4();
  v4[36] = v11;
  OUTLINED_FUNCTION_2(v11);
  v4[37] = v12;
  v4[38] = OUTLINED_FUNCTION_80();
  v13 = sub_21700C084();
  v4[39] = v13;
  OUTLINED_FUNCTION_2(v13);
  v4[40] = v14;
  v4[41] = OUTLINED_FUNCTION_80();
  v15 = sub_21700C384();
  v4[42] = v15;
  OUTLINED_FUNCTION_2(v15);
  v4[43] = v16;
  v4[44] = OUTLINED_FUNCTION_80();
  v17 = sub_21700C1E4();
  v4[45] = v17;
  OUTLINED_FUNCTION_2(v17);
  v4[46] = v18;
  v4[47] = OUTLINED_FUNCTION_80();
  v19 = sub_2170067A4();
  v4[48] = v19;
  OUTLINED_FUNCTION_2(v19);
  v4[49] = v20;
  v4[50] = OUTLINED_FUNCTION_80();
  type metadata accessor for CreateGenericMusicItemStationAction(0);
  v4[51] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v4[52] = sub_21700EA24();
  v22 = sub_21700E9B4();
  v4[53] = v22;
  v4[54] = v21;

  return MEMORY[0x2822009F8](sub_2168F7334, v22, v21);
}

void sub_2168F7334()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A30, &unk_217013D70);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  sub_216EAE8EC();
  v2 = v92;
  v1 = v93;
  v3 = v94;
  v4 = v95;
  *(v0 + 440) = v93;
  *(v0 + 448) = v3;
  *(v0 + 456) = v4;
  if (qword_27CAB59F0 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 408);
  v6 = *(v0 + 168);
  v7 = sub_217007CA4();
  *(v0 + 464) = __swift_project_value_buffer(v7, qword_27CABBFF0);
  sub_2168F95F0(v6, v5);
  v8 = sub_217007C84();
  v9 = sub_21700EDA4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 408);
  if (v10)
  {
    v90 = v2;
    v12 = swift_slowAlloc();
    v91 = v1;
    v92 = swift_slowAlloc();
    v13 = v3;
    v14 = v4;
    v15 = v92;
    *v12 = 136446210;
    sub_2168F9704(&qword_27CAB7098, MEMORY[0x277D2A460], MEMORY[0x277D2A490]);
    v16 = sub_21700F784();
    v18 = v17;
    sub_2168F9654(v11);
    v19 = sub_2166A85FC(v16, v18, &v92);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_216679000, v8, v9, "Playing station from %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    v4 = v14;
    v3 = v13;
    v1 = v91;
    OUTLINED_FUNCTION_6();
    v2 = v90;
    OUTLINED_FUNCTION_6();
  }

  else
  {

    sub_2168F9654(v11);
  }

  v21 = *(v0 + 392);
  v20 = *(v0 + 400);
  v22 = *(v0 + 384);
  (*(v21 + 16))(v20, *(v0 + 168), v22);
  v23 = (*(v21 + 88))(v20, v22);
  if (v23 == *MEMORY[0x277D2A400])
  {
    v24 = *(v0 + 376);
    (*(*(v0 + 392) + 96))(*(v0 + 400), *(v0 + 384));
    v25 = OUTLINED_FUNCTION_8();
    v26(v25);
    OUTLINED_FUNCTION_27_19();
    *(v24 + 120) = v2;
    *(v0 + 128) = v1;
    *(v0 + 136) = v3;
    *(v0 + 144) = v4;
    v27 = OUTLINED_FUNCTION_28_20();
    OUTLINED_FUNCTION_38_12(v27, v28, v29, v30, v31, v32, v33, v34, v88, v89, v90, v91);
    v35 = swift_task_alloc();
    *(v0 + 472) = v35;
    *v35 = v0;
    v35[1] = sub_2168F7D00;
    goto LABEL_10;
  }

  if (v23 == *MEMORY[0x277D2A418])
  {
    v36 = *(v0 + 352);
    (*(*(v0 + 392) + 96))(*(v0 + 400), *(v0 + 384));
    v37 = OUTLINED_FUNCTION_8();
    v38(v37);
    OUTLINED_FUNCTION_27_19();
    *(v36 + 88) = v2;
    *(v0 + 96) = v1;
    *(v0 + 104) = v3;
    *(v0 + 112) = v4;
    v39 = OUTLINED_FUNCTION_28_20();
    OUTLINED_FUNCTION_38_12(v39, v40, v41, v42, v43, v44, v45, v46, v88, v89, v90, v91);
    v47 = swift_task_alloc();
    *(v0 + 488) = v47;
    *v47 = v0;
    v47[1] = sub_2168F7F8C;
    goto LABEL_10;
  }

  if (v23 == *MEMORY[0x277D2A438] || v23 == *MEMORY[0x277D2A3C8] || v23 == *MEMORY[0x277D2A428] || v23 == *MEMORY[0x277D2A388] || v23 == *MEMORY[0x277D2A408] || v23 == *MEMORY[0x277D2A3B0] || v23 == *MEMORY[0x277D2A3B8] || v23 == *MEMORY[0x277D2A440] || v23 == *MEMORY[0x277D2A450] || v23 == *MEMORY[0x277D2A3C0] || v23 == *MEMORY[0x277D2A3D0])
  {
    goto LABEL_24;
  }

  if (v23 == *MEMORY[0x277D2A3F8])
  {
    v76 = *(v0 + 328);
    (*(*(v0 + 392) + 96))(*(v0 + 400), *(v0 + 384));
    v77 = OUTLINED_FUNCTION_8();
    v78(v77);
    OUTLINED_FUNCTION_27_19();
    *(v76 + 56) = v2;
    *(v0 + 64) = v1;
    *(v0 + 72) = v3;
    *(v0 + 80) = v4;
    v79 = OUTLINED_FUNCTION_28_20();
    OUTLINED_FUNCTION_38_12(v79, v80, v81, v82, v83, v84, v85, v86, v88, v89, v90, v91);
    v87 = swift_task_alloc();
    *(v0 + 504) = v87;
    *v87 = v0;
    v87[1] = sub_2168F8218;
LABEL_10:
    OUTLINED_FUNCTION_59();

    __asm { BRAA            X6, X16 }
  }

  if (v23 == *MEMORY[0x277D2A430] || v23 == *MEMORY[0x277D2A458] || v23 == *MEMORY[0x277D2A448] || v23 == *MEMORY[0x277D2A420] || v23 == *MEMORY[0x277D2A3D8] || v23 == *MEMORY[0x277D2A3E0])
  {
LABEL_24:
    v51 = *(v0 + 392);
    v50 = *(v0 + 400);
    v52 = *(v0 + 384);
  }

  else
  {
    v51 = *(v0 + 392);
    v50 = *(v0 + 400);
    v52 = *(v0 + 384);
    if (v23 == *MEMORY[0x277D2A410])
    {
      (*(v51 + 8))(*(v0 + 400), *(v0 + 384));
      sub_2168F96B0();
      v53 = swift_allocError();
      swift_willThrow();
LABEL_26:
      *(v0 + 152) = v53;
      v54 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
      if (swift_dynamicCast())
      {
        v55 = OUTLINED_FUNCTION_22_26();
        if (v56(v55) == *MEMORY[0x277D2A8C8])
        {
          OUTLINED_FUNCTION_9_35();
          v57 = OUTLINED_FUNCTION_21_22();
          v58(v57);
          v59 = OUTLINED_FUNCTION_5_33();
          v60(v59);
          v61 = sub_217007C84();
          v62 = sub_21700EDA4();
          if (OUTLINED_FUNCTION_9_3(v62))
          {
            v63 = OUTLINED_FUNCTION_43();
            OUTLINED_FUNCTION_36_5(v63);
            OUTLINED_FUNCTION_121(&dword_216679000, v64, v65, "Presenting dialog...");
            OUTLINED_FUNCTION_26_4();
          }

          OUTLINED_FUNCTION_38_0(&unk_217015B10);
          v66 = swift_task_alloc();
          v67 = OUTLINED_FUNCTION_25_17(v66);
          *v67 = v68;
          OUTLINED_FUNCTION_0_66(v67);
          OUTLINED_FUNCTION_59();

          __asm { BR              X3 }
        }

        v71 = OUTLINED_FUNCTION_43_13();
        OUTLINED_FUNCTION_47_12(v71);
        OUTLINED_FUNCTION_8_32();
        v72 = OUTLINED_FUNCTION_18_20();
        v73(v72);
      }

      else
      {
        OUTLINED_FUNCTION_43_13();

        OUTLINED_FUNCTION_8_32();
      }

      OUTLINED_FUNCTION_2_42();

      OUTLINED_FUNCTION_45_14();

      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_59();

      __asm { BRAA            X1, X16 }
    }
  }

  sub_2168F96B0();
  v53 = swift_allocError();
  swift_willThrow();
  (*(v51 + 8))(v50, v52);
  goto LABEL_26;
}

uint64_t sub_2168F7D00()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_28();
  *v4 = v3;
  *v4 = *v1;
  v3[60] = v0;

  sub_21677A4C0(v3[15], v2[16], v2[17], v2[18]);
  v5 = v3[53];
  v6 = v3[54];
  if (v0)
  {
    v7 = sub_2168F8BC0;
  }

  else
  {
    v7 = sub_2168F7E58;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2168F7E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_37_17();
  OUTLINED_FUNCTION_42_15();

  v18 = OUTLINED_FUNCTION_34_16();
  v19(v18);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_12_5();
  if (v20())
  {
    OUTLINED_FUNCTION_16_25();
  }

  OUTLINED_FUNCTION_1_54();
  OUTLINED_FUNCTION_48_10();
  sub_21700D2A4();
  OUTLINED_FUNCTION_9();
  v21 = OUTLINED_FUNCTION_44_14();
  v22(v21);
  OUTLINED_FUNCTION_33_4();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_35_1();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_2168F7F8C()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_28();
  *v4 = v3;
  *v4 = *v1;
  v3[62] = v0;

  sub_21677A4C0(v3[11], v2[12], v2[13], v2[14]);
  v5 = v3[53];
  v6 = v3[54];
  if (v0)
  {
    v7 = sub_2168F8DB8;
  }

  else
  {
    v7 = sub_2168F80E4;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2168F80E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_37_17();
  OUTLINED_FUNCTION_42_15();

  v18 = OUTLINED_FUNCTION_34_16();
  v19(v18);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_12_5();
  if (v20())
  {
    OUTLINED_FUNCTION_16_25();
  }

  OUTLINED_FUNCTION_1_54();
  OUTLINED_FUNCTION_48_10();
  sub_21700D2A4();
  OUTLINED_FUNCTION_9();
  v21 = OUTLINED_FUNCTION_44_14();
  v22(v21);
  OUTLINED_FUNCTION_33_4();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_35_1();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_2168F8218()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_28();
  *v4 = v3;
  *v4 = *v1;
  v3[64] = v0;

  sub_21677A4C0(v3[7], v2[8], v2[9], v2[10]);
  v5 = v3[53];
  v6 = v3[54];
  if (v0)
  {
    v7 = sub_2168F8FB0;
  }

  else
  {
    v7 = sub_2168F8370;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2168F8370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_37_17();
  OUTLINED_FUNCTION_42_15();

  v18 = OUTLINED_FUNCTION_34_16();
  v19(v18);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_12_5();
  if (v20())
  {
    OUTLINED_FUNCTION_16_25();
  }

  OUTLINED_FUNCTION_1_54();
  OUTLINED_FUNCTION_48_10();
  sub_21700D2A4();
  OUTLINED_FUNCTION_9();
  v21 = OUTLINED_FUNCTION_44_14();
  v22(v21);
  OUTLINED_FUNCTION_33_4();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_35_1();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_2168F84A4()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  *(*v1 + 528) = v0;

  v3 = *(v2 + 432);
  v4 = *(v2 + 424);
  if (v0)
  {
    v5 = sub_2168F91A8;
  }

  else
  {
    v5 = sub_2168F85DC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2168F85DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_142();
  a22 = v24;
  v27 = *(v24 + 256);
  v28 = *(v24 + 240);
  v29 = *(v24 + 224);
  v30 = *(*(v24 + 232) + 16);
  v30(*(v24 + 248), v27, v29);
  v30(v28, v27, v29);
  v31 = sub_217007C84();
  v32 = sub_21700EDA4();
  v33 = os_log_type_enabled(v31, v32);
  v35 = *(v24 + 240);
  v34 = *(v24 + 248);
  v37 = *(v24 + 224);
  v36 = *(v24 + 232);
  if (v33)
  {
    a9 = *(v24 + 216);
    a10 = *(v24 + 192);
    HIDWORD(a11) = v32;
    v38 = swift_slowAlloc();
    a12 = swift_slowAlloc();
    a13 = a12;
    *v38 = 136446466;
    v39 = sub_217006DC4();
    v41 = v40;
    v42 = *(v36 + 8);
    v42(v34, v37);
    v43 = sub_2166A85FC(v39, v41, &a13);

    *(v38 + 4) = v43;
    *(v38 + 12) = 2082;
    sub_217006DF4();
    v44 = sub_21700E594();
    v46 = v45;
    v42(v35, v37);
    v47 = sub_2166A85FC(v44, v46, &a13);

    *(v38 + 14) = v47;
    _os_log_impl(&dword_216679000, v31, BYTE4(a11), "Performing dialog action %{public}s with kind %{public}s", v38, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v42 = *(v36 + 8);
    v42(v35, v37);
    v42(v34, v37);
  }

  *(v24 + 536) = v42;
  v49 = *(v24 + 208);
  v48 = *(v24 + 216);
  v50 = *(v24 + 192);
  v51 = *(v24 + 200);
  sub_217006DF4();
  (*(v51 + 104))(v49, *MEMORY[0x277D2A928], v50);
  *(v24 + 568) = sub_217006DD4() & 1;
  v52 = *(v51 + 8);
  v52(v49, v50);
  v52(v48, v50);
  v53 = *(v24 + 40);
  v54 = *(v24 + 48);
  __swift_project_boxed_opaque_existential_1((v24 + 16), v53);
  *(v24 + 544) = (*(v54 + 112))(v53, v54);
  v55 = swift_task_alloc();
  *(v24 + 552) = v55;
  *v55 = v24;
  v55[1] = sub_2168F8904;
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x282189CE0](v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2168F8904()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  *(*v1 + 560) = v0;

  v3 = *(v2 + 432);
  v4 = *(v2 + 424);
  if (v0)
  {
    v5 = sub_2168F92A4;
  }

  else
  {
    v5 = sub_2168F8A54;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2168F8A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_37_17();
  OUTLINED_FUNCTION_42_15();
  v19 = *(v18 + 536);
  v21 = *(v18 + 272);
  v20 = *(v18 + 280);
  v23 = *(v18 + 256);
  v22 = *(v18 + 264);
  v24 = *(v18 + 224);

  v19(v23, v24);
  (*(v21 + 8))(v20, v22);

  v25 = *(v18 + 568);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_12_5();
  if ((v26() & 1) != 0 && (v25 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_25();
  }

  OUTLINED_FUNCTION_1_54();
  OUTLINED_FUNCTION_48_10();
  sub_21700D2A4();
  OUTLINED_FUNCTION_9();
  v27 = OUTLINED_FUNCTION_44_14();
  v28(v27);
  OUTLINED_FUNCTION_33_4();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_35_1();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_2168F8BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();
  (*(v16[46] + 8))(v16[47], v16[45]);
  OUTLINED_FUNCTION_23_17();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  if (OUTLINED_FUNCTION_24_18(v17))
  {
    v18 = OUTLINED_FUNCTION_22_26();
    if (v19(v18) == *MEMORY[0x277D2A8C8])
    {
      OUTLINED_FUNCTION_9_35();
      v20 = OUTLINED_FUNCTION_21_22();
      v21(v20);
      v22 = OUTLINED_FUNCTION_5_33();
      v23(v22);
      v24 = sub_217007C84();
      v25 = sub_21700EDA4();
      if (OUTLINED_FUNCTION_9_3(v25))
      {
        v26 = OUTLINED_FUNCTION_43();
        OUTLINED_FUNCTION_36_5(v26);
        OUTLINED_FUNCTION_121(&dword_216679000, v27, v28, "Presenting dialog...");
        OUTLINED_FUNCTION_26_4();
      }

      OUTLINED_FUNCTION_38_0(&unk_217015B10);
      v53 = v29;
      v30 = swift_task_alloc();
      v31 = OUTLINED_FUNCTION_25_17(v30);
      *v31 = v32;
      OUTLINED_FUNCTION_0_66(v31);
      OUTLINED_FUNCTION_13_2();

      return v36(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, v53, a14, a15, a16);
    }

    v42 = OUTLINED_FUNCTION_3_53();
    OUTLINED_FUNCTION_47_12(v42);
    OUTLINED_FUNCTION_8_32();
    v43 = OUTLINED_FUNCTION_18_20();
    v44(v43);
  }

  else
  {
    OUTLINED_FUNCTION_3_53();

    OUTLINED_FUNCTION_8_32();
  }

  OUTLINED_FUNCTION_2_42();
  OUTLINED_FUNCTION_40_10();
  OUTLINED_FUNCTION_45_14();

  OUTLINED_FUNCTION_10_27();
  OUTLINED_FUNCTION_13_2();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2168F8DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();
  (*(v16[43] + 8))(v16[44], v16[42]);
  OUTLINED_FUNCTION_23_17();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  if (OUTLINED_FUNCTION_24_18(v17))
  {
    v18 = OUTLINED_FUNCTION_22_26();
    if (v19(v18) == *MEMORY[0x277D2A8C8])
    {
      OUTLINED_FUNCTION_9_35();
      v20 = OUTLINED_FUNCTION_21_22();
      v21(v20);
      v22 = OUTLINED_FUNCTION_5_33();
      v23(v22);
      v24 = sub_217007C84();
      v25 = sub_21700EDA4();
      if (OUTLINED_FUNCTION_9_3(v25))
      {
        v26 = OUTLINED_FUNCTION_43();
        OUTLINED_FUNCTION_36_5(v26);
        OUTLINED_FUNCTION_121(&dword_216679000, v27, v28, "Presenting dialog...");
        OUTLINED_FUNCTION_26_4();
      }

      OUTLINED_FUNCTION_38_0(&unk_217015B10);
      v53 = v29;
      v30 = swift_task_alloc();
      v31 = OUTLINED_FUNCTION_25_17(v30);
      *v31 = v32;
      OUTLINED_FUNCTION_0_66(v31);
      OUTLINED_FUNCTION_13_2();

      return v36(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, v53, a14, a15, a16);
    }

    v42 = OUTLINED_FUNCTION_3_53();
    OUTLINED_FUNCTION_47_12(v42);
    OUTLINED_FUNCTION_8_32();
    v43 = OUTLINED_FUNCTION_18_20();
    v44(v43);
  }

  else
  {
    OUTLINED_FUNCTION_3_53();

    OUTLINED_FUNCTION_8_32();
  }

  OUTLINED_FUNCTION_2_42();
  OUTLINED_FUNCTION_40_10();
  OUTLINED_FUNCTION_45_14();

  OUTLINED_FUNCTION_10_27();
  OUTLINED_FUNCTION_13_2();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2168F8FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();
  (*(v16[40] + 8))(v16[41], v16[39]);
  OUTLINED_FUNCTION_23_17();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  if (OUTLINED_FUNCTION_24_18(v17))
  {
    v18 = OUTLINED_FUNCTION_22_26();
    if (v19(v18) == *MEMORY[0x277D2A8C8])
    {
      OUTLINED_FUNCTION_9_35();
      v20 = OUTLINED_FUNCTION_21_22();
      v21(v20);
      v22 = OUTLINED_FUNCTION_5_33();
      v23(v22);
      v24 = sub_217007C84();
      v25 = sub_21700EDA4();
      if (OUTLINED_FUNCTION_9_3(v25))
      {
        v26 = OUTLINED_FUNCTION_43();
        OUTLINED_FUNCTION_36_5(v26);
        OUTLINED_FUNCTION_121(&dword_216679000, v27, v28, "Presenting dialog...");
        OUTLINED_FUNCTION_26_4();
      }

      OUTLINED_FUNCTION_38_0(&unk_217015B10);
      v53 = v29;
      v30 = swift_task_alloc();
      v31 = OUTLINED_FUNCTION_25_17(v30);
      *v31 = v32;
      OUTLINED_FUNCTION_0_66(v31);
      OUTLINED_FUNCTION_13_2();

      return v36(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, v53, a14, a15, a16);
    }

    v42 = OUTLINED_FUNCTION_3_53();
    OUTLINED_FUNCTION_47_12(v42);
    OUTLINED_FUNCTION_8_32();
    v43 = OUTLINED_FUNCTION_18_20();
    v44(v43);
  }

  else
  {
    OUTLINED_FUNCTION_3_53();

    OUTLINED_FUNCTION_8_32();
  }

  OUTLINED_FUNCTION_2_42();
  OUTLINED_FUNCTION_40_10();
  OUTLINED_FUNCTION_45_14();

  OUTLINED_FUNCTION_10_27();
  OUTLINED_FUNCTION_13_2();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2168F91A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();
  v18 = v16[34];
  v17 = v16[35];
  v19 = v16[33];

  v20 = OUTLINED_FUNCTION_8();
  sub_21677A510(v20, v21);
  (*(v18 + 8))(v17, v19);
  OUTLINED_FUNCTION_17_27();
  OUTLINED_FUNCTION_33_4();

  OUTLINED_FUNCTION_10_27();
  OUTLINED_FUNCTION_13_2();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2168F92A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();
  v33 = v16[67];
  v18 = v16[34];
  v17 = v16[35];
  v20 = v16[32];
  v19 = v16[33];
  v21 = v16[28];

  v22 = OUTLINED_FUNCTION_8();
  sub_21677A510(v22, v23);
  v33(v20, v21);
  (*(v18 + 8))(v17, v19);
  OUTLINED_FUNCTION_17_27();
  OUTLINED_FUNCTION_33_4();

  OUTLINED_FUNCTION_10_27();
  OUTLINED_FUNCTION_13_2();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, v33, a14, a15, a16);
}

uint64_t sub_2168F93C8()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABBFF0);
  __swift_project_value_buffer(v0, qword_27CABBFF0);
  return sub_217007C94();
}

uint64_t sub_2168F9448()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *v0;
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_2166F2728;

  return sub_2168F6FE0(v7, v5, v3, v8);
}

unint64_t sub_2168F94FC(uint64_t a1)
{
  result = sub_2166E03A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2168F9524(uint64_t a1)
{
  result = sub_2168F954C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2168F954C()
{
  result = qword_27CABC008;
  if (!qword_27CABC008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC008);
  }

  return result;
}

uint64_t sub_2168F95F0(uint64_t a1, uint64_t a2)
{
  GenericMusicItemStationAction = type metadata accessor for CreateGenericMusicItemStationAction(0);
  (*(*(GenericMusicItemStationAction - 8) + 16))(a2, a1, GenericMusicItemStationAction);
  return a2;
}

uint64_t sub_2168F9654(uint64_t a1)
{
  GenericMusicItemStationAction = type metadata accessor for CreateGenericMusicItemStationAction(0);
  (*(*(GenericMusicItemStationAction - 8) + 8))(a1, GenericMusicItemStationAction);
  return a1;
}

unint64_t sub_2168F96B0()
{
  result = qword_27CABC018;
  if (!qword_27CABC018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC018);
  }

  return result;
}

uint64_t sub_2168F9704(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for CreateGenericMusicItemStationActionImplementation.Error(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_2168F97FC()
{
  result = qword_27CABC020;
  if (!qword_27CABC020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC020);
  }

  return result;
}

uint64_t sub_2168F9850(uint64_t a1)
{
  v2 = sub_217006FE4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, a1, v8, v12);
  v15 = OUTLINED_FUNCTION_38();
  v17 = v16(v15);
  v19 = v17 == *MEMORY[0x277D2A418] || v17 == *MEMORY[0x277D2A3C8] || v17 == *MEMORY[0x277D2A428];
  if (v19 || v17 == *MEMORY[0x277D2A3B0] || v17 == *MEMORY[0x277D2A440] || v17 == *MEMORY[0x277D2A3E8] || v17 == *MEMORY[0x277D2A3C0] || v17 != *MEMORY[0x277D2A3D0])
  {
    v20 = OUTLINED_FUNCTION_0_67();
    v2(v20);
    v21 = OUTLINED_FUNCTION_38();
    v2(v21);
    return 0;
  }

  else
  {
    v24 = OUTLINED_FUNCTION_38();
    v25(v24);
    (*(v4 + 32))(v7, v14, v2);
    v22 = sub_217006FA4();
    (*(v10 + 8))(a1, v8);
    (*(v4 + 8))(v7, v2);
  }

  return v22;
}

uint64_t sub_2168F9BC4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  *(v1 + 16) = a1;
  type metadata accessor for ObjectGraph(0);

  sub_21700E094();

  (*(v5 + 32))(v1 + OBJC_IVAR____TtC7MusicUI26FavoriteMenuActionProvider_actionDispatcher, v8, v3);
  return v1;
}

void sub_2168F9E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_49();
  a19 = v21;
  a20 = v22;
  v30 = OUTLINED_FUNCTION_10_28(v23, v24, v25, v26, v27, v28, v29);
  v31 = OUTLINED_FUNCTION_0(v30, &a10);
  v123 = v32;
  MEMORY[0x28223BE20](v31);
  v122 = v33;
  v34 = OUTLINED_FUNCTION_8_0(v115 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = type metadata accessor for FavoriteAction(v34);
  v36 = OUTLINED_FUNCTION_0(v35, &v131);
  v120 = v37;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_70(v115 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v121 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v41);
  v42 = sub_21700CFB4();
  v43 = OUTLINED_FUNCTION_0(v42, &v130);
  v119 = v44;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v45);
  v46 = sub_217005EF4();
  v47 = OUTLINED_FUNCTION_0(v46, &v126);
  v115[7] = v48;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v49);
  v50 = sub_21700D704();
  v51 = OUTLINED_FUNCTION_0(v50, &v129);
  v118 = v52;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  v56 = OUTLINED_FUNCTION_36(v55);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v58);
  v59 = sub_21700D284();
  v60 = OUTLINED_FUNCTION_0(v59, &v128);
  v117 = v61;
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v62);
  v63 = sub_21700BBC4();
  OUTLINED_FUNCTION_1();
  v65 = v64;
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_7();
  v69 = v68 - v67;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC038, &unk_217026220);
  OUTLINED_FUNCTION_1();
  v72 = v71;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_71_1();
  sub_21700BE44();
  sub_21700BE34();
  sub_217006844();
  v74 = v20(0);
  OUTLINED_FUNCTION_32_16();

  v76 = *(v65 + 8);
  v75 = v65 + 8;
  v76(v69, v63);
  v77 = OUTLINED_FUNCTION_194();
  v79 = v78(v77);
  LODWORD(v63) = *MEMORY[0x277D2B048];
  v80 = v72 + 8;
  v81 = OUTLINED_FUNCTION_194();
  v82(v81);
  if (v79 == v63)
  {
    v115[2] = OUTLINED_FUNCTION_12_27();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    v84 = OUTLINED_FUNCTION_20_6(inited, xmmword_217013D90);
    v85 = OUTLINED_FUNCTION_45_15(v84);
    v86 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_58_9(v85);
    inited[7].n128_u64[1] = v86;
    v87 = v115[10];
    inited[5].n128_u64[1] = 0xE400000000000000;
    inited[6].n128_u64[0] = v87;
    inited[6].n128_u64[1] = v115[11];
    sub_21700DF14();
    sub_21700DF14();
    sub_21700E384();
    OUTLINED_FUNCTION_28_21();
    v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    v125 = inited;
    OUTLINED_FUNCTION_44_15();
    v88 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_43();
    OUTLINED_FUNCTION_24_19();
    sub_2166EF9D4();
    OUTLINED_FUNCTION_61_7();
    v127 = v86;
    v89 = 0xE800000000000000;
    v125 = 0x657469726F766166;
    v126 = 0xE800000000000000;
    OUTLINED_FUNCTION_36_13();
    OUTLINED_FUNCTION_2_43();
    OUTLINED_FUNCTION_24_19();
    sub_2166EF9D4();
    OUTLINED_FUNCTION_61_7();
    OUTLINED_FUNCTION_56_4();
    switch(v116)
    {
      case 1:
        OUTLINED_FUNCTION_55_11();
        break;
      case 2:
        v89 = 0xE400000000000000;
        v90 = 1701998445;
        break;
      case 3:
        OUTLINED_FUNCTION_56_10();
        break;
      case 4:
        v90 = 0xD000000000000010;
        v89 = 0x80000002170801D0;
        break;
      case 5:
        OUTLINED_FUNCTION_48_11();
        break;
      case 6:
        OUTLINED_FUNCTION_29_17();
        break;
      case 7:
        OUTLINED_FUNCTION_37_18();
        break;
      default:
        break;
    }

    v127 = v86;
    v125 = v90;
    v126 = v89;
    OUTLINED_FUNCTION_36_13();
    OUTLINED_FUNCTION_2_43();
    OUTLINED_FUNCTION_24_19();
    sub_2166EF9D4();
    OUTLINED_FUNCTION_42_16();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v88, 1, v20);
    v115[4] = v74;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v88, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v93 = OUTLINED_FUNCTION_15_23();
      v94(v93);
      v95 = sub_217005DE4();
      v127 = v86;
      v125 = v95;
      v126 = v96;
      OUTLINED_FUNCTION_44_15();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_20_20();
      v97 = OUTLINED_FUNCTION_35_15();
      v98(v97);
    }

    if (qword_280E46040 != -1)
    {
      OUTLINED_FUNCTION_19_9(&qword_280E46040);
    }

    v99 = sub_21700CF84();
    __swift_project_value_buffer(v99, qword_280E73DB0);
    OUTLINED_FUNCTION_17_28();

    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v101 = OUTLINED_FUNCTION_31_21(v100);
    v102 = OUTLINED_FUNCTION_25_18(v101, xmmword_217013DA0);
    v103(v102);
    v104 = OUTLINED_FUNCTION_13_19();
    v105(v104);
    OUTLINED_FUNCTION_51_4();
    (*(v89 + 8))(v20, v80);
    (*(v86 + 8))(v70, v75);
    sub_216697664(v124, &qword_27CABA820, &unk_217018CE0);
    v106 = OUTLINED_FUNCTION_30_18();
    (*(v101[-1].n128_u64[1] + 16))(v106, v115[1], v101);
    *(v80 + 40) = 0;
    v107 = OUTLINED_FUNCTION_16_26();
    v108(v107);
    type metadata accessor for MenuActionType(0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_62_5();
    v109 = OUTLINED_FUNCTION_14_23();
    v110(v109);
    v111 = OUTLINED_FUNCTION_11_30();
    OUTLINED_FUNCTION_43_14(v111);
    v112 = OUTLINED_FUNCTION_59_8();
    v113(v112);
    v114 = type metadata accessor for MenuAction(0);
    OUTLINED_FUNCTION_39_12(v114);
  }

  else
  {
    v91 = type metadata accessor for MenuAction(0);
    OUTLINED_FUNCTION_52_8(v91);
  }

  OUTLINED_FUNCTION_26();
}

void sub_2168FA704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_49();
  a19 = v21;
  a20 = v22;
  v30 = OUTLINED_FUNCTION_10_28(v23, v24, v25, v26, v27, v28, v29);
  v31 = OUTLINED_FUNCTION_0(v30, &a10);
  v123 = v32;
  MEMORY[0x28223BE20](v31);
  v122 = v33;
  v34 = OUTLINED_FUNCTION_8_0(v115 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = type metadata accessor for FavoriteAction(v34);
  v36 = OUTLINED_FUNCTION_0(v35, &v131);
  v120 = v37;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_70(v115 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v121 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v41);
  v42 = sub_21700CFB4();
  v43 = OUTLINED_FUNCTION_0(v42, &v130);
  v119 = v44;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v45);
  v46 = sub_217005EF4();
  v47 = OUTLINED_FUNCTION_0(v46, &v126);
  v115[7] = v48;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v49);
  v50 = sub_21700D704();
  v51 = OUTLINED_FUNCTION_0(v50, &v129);
  v118 = v52;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  v56 = OUTLINED_FUNCTION_36(v55);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v58);
  v59 = sub_21700D284();
  v60 = OUTLINED_FUNCTION_0(v59, &v128);
  v117 = v61;
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v62);
  v63 = sub_21700BC84();
  OUTLINED_FUNCTION_1();
  v65 = v64;
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_7();
  v69 = v68 - v67;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC028, &unk_21706C8F0);
  OUTLINED_FUNCTION_1();
  v72 = v71;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_71_1();
  sub_21700BE44();
  sub_21700BE34();
  sub_2170067C4();
  v74 = v20(0);
  OUTLINED_FUNCTION_32_16();

  v76 = *(v65 + 8);
  v75 = v65 + 8;
  v76(v69, v63);
  v77 = OUTLINED_FUNCTION_194();
  v79 = v78(v77);
  LODWORD(v63) = *MEMORY[0x277D2B048];
  v80 = v72 + 8;
  v81 = OUTLINED_FUNCTION_194();
  v82(v81);
  if (v79 == v63)
  {
    v115[2] = OUTLINED_FUNCTION_12_27();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    v84 = OUTLINED_FUNCTION_20_6(inited, xmmword_217013D90);
    v85 = OUTLINED_FUNCTION_45_15(v84);
    v86 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_58_9(v85);
    v87 = 0xE400000000000000;
    inited[7].n128_u64[1] = v86;
    v88 = v115[10];
    inited[5].n128_u64[1] = 0xE400000000000000;
    inited[6].n128_u64[0] = v88;
    inited[6].n128_u64[1] = v115[11];
    sub_21700DF14();
    sub_21700DF14();
    sub_21700E384();
    OUTLINED_FUNCTION_28_21();
    v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    v125 = inited;
    OUTLINED_FUNCTION_44_15();
    v89 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_43();
    OUTLINED_FUNCTION_24_19();
    sub_2166EF9D4();
    OUTLINED_FUNCTION_61_7();
    v127 = v86;
    v125 = 0x69726F7661666E75;
    v126 = 0xEA00000000006574;
    OUTLINED_FUNCTION_36_13();
    OUTLINED_FUNCTION_2_43();
    OUTLINED_FUNCTION_24_19();
    sub_2166EF9D4();
    OUTLINED_FUNCTION_61_7();
    v90 = 1701998445;
    switch(v116)
    {
      case 1:
        OUTLINED_FUNCTION_55_11();
        break;
      case 2:
        break;
      case 3:
        OUTLINED_FUNCTION_56_10();
        break;
      case 4:
        v90 = 0xD000000000000010;
        v87 = 0x80000002170801D0;
        break;
      case 5:
        OUTLINED_FUNCTION_48_11();
        break;
      case 6:
        OUTLINED_FUNCTION_29_17();
        break;
      case 7:
        OUTLINED_FUNCTION_37_18();
        break;
      default:
        v87 = 0xE800000000000000;
        OUTLINED_FUNCTION_56_4();
        break;
    }

    v127 = v86;
    v125 = v90;
    v126 = v87;
    OUTLINED_FUNCTION_36_13();
    OUTLINED_FUNCTION_2_43();
    OUTLINED_FUNCTION_24_19();
    sub_2166EF9D4();
    OUTLINED_FUNCTION_42_16();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v89, 1, v20);
    v115[4] = v74;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v89, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v93 = OUTLINED_FUNCTION_15_23();
      v94(v93);
      v95 = sub_217005DE4();
      v127 = v86;
      v125 = v95;
      v126 = v96;
      OUTLINED_FUNCTION_44_15();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_20_20();
      v97 = OUTLINED_FUNCTION_35_15();
      v98(v97);
    }

    if (qword_280E46040 != -1)
    {
      OUTLINED_FUNCTION_19_9(&qword_280E46040);
    }

    v99 = sub_21700CF84();
    __swift_project_value_buffer(v99, qword_280E73DB0);
    OUTLINED_FUNCTION_17_28();

    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v101 = OUTLINED_FUNCTION_31_21(v100);
    v102 = OUTLINED_FUNCTION_25_18(v101, xmmword_217013DA0);
    v103(v102);
    v104 = OUTLINED_FUNCTION_13_19();
    v105(v104);
    OUTLINED_FUNCTION_51_4();
    (*(v87 + 8))(v20, v80);
    (*(v86 + 8))(v70, v75);
    sub_216697664(v124, &qword_27CABA820, &unk_217018CE0);
    v106 = OUTLINED_FUNCTION_30_18();
    (*(v101[-1].n128_u64[1] + 16))(v106, v115[1], v101);
    *(v80 + 40) = 1;
    v107 = OUTLINED_FUNCTION_16_26();
    v108(v107);
    type metadata accessor for MenuActionType(0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_62_5();
    v109 = OUTLINED_FUNCTION_14_23();
    v110(v109);
    v111 = OUTLINED_FUNCTION_11_30();
    OUTLINED_FUNCTION_43_14(v111);
    v112 = OUTLINED_FUNCTION_59_8();
    v113(v112);
    v114 = type metadata accessor for MenuAction(0);
    OUTLINED_FUNCTION_39_12(v114);
  }

  else
  {
    v91 = type metadata accessor for MenuAction(0);
    OUTLINED_FUNCTION_52_8(v91);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_2168FB6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[3] = type metadata accessor for FavoriteAction(0);
  v6[4] = sub_2168FB984();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  sub_2168FB9DC(a2, boxed_opaque_existential_1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_2168FB76C()
{

  v1 = OBJC_IVAR____TtC7MusicUI26FavoriteMenuActionProvider_actionDispatcher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t type metadata accessor for FavoriteMenuActionProvider(uint64_t a1)
{
  result = qword_280E34808;
  if (!qword_280E34808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2168FB91C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FavoriteAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2168FB984()
{
  result = qword_27CABC030;
  if (!qword_27CABC030)
  {
    type metadata accessor for FavoriteAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC030);
  }

  return result;
}

uint64_t sub_2168FB9DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FavoriteAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2168FBA40()
{
  v1 = *(type metadata accessor for FavoriteAction(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_2170075A4();
  OUTLINED_FUNCTION_36(v4);
  return sub_2168FB6C0(*(v0 + 16), v0 + v2, v0 + ((v2 + v3 + *(v5 + 80)) & ~*(v5 + 80)));
}

void *sub_2168FBB04@<X0>(uint64_t a4@<X8>)
{
  v5 = sub_2170093B4();
  sub_2168FBC6C(__src);
  v6 = __src[0];
  v7 = __src[2];
  v8 = __src[3];
  v15 = __src[1];
  v14 = __src[4];
  sub_21700B3B4();
  sub_217008BB4();
  memcpy(&v16[7], __src, 0x70uLL);
  type metadata accessor for SubscriptionPurchaseViewModel(0);
  sub_2168FCA00();
  v9 = sub_2170081B4();
  v10 = sub_21700B3B4();
  v12 = v11;
  *a4 = v5;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = v6;
  *(a4 + 32) = v15;
  *(a4 + 40) = v7;
  *(a4 + 48) = v8;
  *(a4 + 56) = v14;
  result = memcpy((a4 + 57), v16, 0x77uLL);
  *(a4 + 176) = v9;
  *(a4 + 184) = v10;
  *(a4 + 192) = v12;
  return result;
}

uint64_t sub_2168FBC6C@<X0>(uint64_t a4@<X8>)
{
  type metadata accessor for SubscriptionPurchaseViewModel(0);
  sub_2168FCA00();
  v5 = sub_2170081B4();
  v6 = sub_216BA1EF4();

  switch(v6)
  {
    case 1:
    case 2:
    case 3:
      v9 = sub_21700F7D4();

      v8 = 1.0;
      if ((v9 & 1) == 0)
      {
        v10 = sub_2170081B4();
        v11 = sub_216BA1EF4();

        switch(v11)
        {
          case 1:

            break;
          default:
            v12 = sub_21700F7D4();

            if (v12)
            {
              v8 = 1.0;
            }

            else
            {
              v8 = 0.0;
            }

            break;
        }
      }

      break;
    default:

      v8 = 1.0;
      break;
  }

  *a4 = 0;
  *(a4 + 8) = 1;
  *(a4 + 16) = v8;
  *(a4 + 24) = 0;
  *(a4 + 32) = 1;
  return result;
}

uint64_t sub_2168FBEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2170091A4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC0B0, &qword_2170264D8);
  sub_2168FC0CC((a2 + *(v3 + 44)));
  sub_21700B3B4();
  sub_2170083C4();
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC0B8, &qword_2170264E0) + 36));
  *v4 = v21;
  v4[1] = v22;
  v4[2] = v23;
  v5 = [objc_opt_self() systemBackgroundColor];
  v6 = sub_21700AC44();
  v7 = sub_217009C84();
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC0C0, &qword_2170264E8) + 36);
  *v8 = v6;
  *(v8 + 8) = v7;
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC0C8, &unk_2170264F0) + 36));
  v10 = *(sub_217008B44() + 20);
  v11 = *MEMORY[0x277CE0118];
  v12 = sub_217009294();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  __asm { FMOV            V0.2D, #10.0 }

  *v9 = _Q0;
  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0) + 36)] = 256;
  if (qword_27CAB59F8 != -1)
  {
    swift_once();
  }

  v18 = qword_27CABC040;
  v19 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC0D0, &unk_217026500) + 36);
  *v19 = v18;
  *(v19 + 8) = xmmword_217026230;
  *(v19 + 24) = 0x4018000000000000;
}

uint64_t sub_2168FC0CC@<X0>(char *a1@<X8>)
{
  v33 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC0D8, &qword_217042620);
  v28 = *(v32 - 8);
  v1 = v28;
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7BD0, &unk_217026510);
  v30 = *(v6 - 8);
  v7 = v30;
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  sub_217008294();
  v34 = sub_216983738(145);
  v35 = v13;
  v36 = 0;
  v37 = MEMORY[0x277D84F90];
  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668, &unk_2170174F0);
  sub_2167C4D74();
  v26 = v5;
  sub_21700A304();

  v14 = *(v7 + 16);
  v29 = v9;
  v27 = v6;
  v14(v9, v12, v6);
  v15 = *(v1 + 16);
  v16 = v31;
  v17 = v5;
  v18 = v32;
  v15(v31, v17, v32);
  v19 = v33;
  v14(v33, v9, v6);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC0E0, &qword_217026520);
  v15(&v19[*(v20 + 48)], v16, v18);
  v21 = *(v28 + 8);
  v22 = v18;
  v21(v26, v18);
  v23 = *(v30 + 8);
  v24 = v27;
  v23(v12, v27);
  v21(v16, v22);
  return (v23)(v29, v24);
}

uint64_t sub_2168FC3F0()
{
  v0 = sub_21700AC64();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0ED0], v1);
  result = sub_21700AD54();
  qword_27CABC040 = result;
  return result;
}

uint64_t sub_2168FC504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2168FCC5C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2168FC568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2168FCC5C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2168FC5CC(uint64_t a1)
{
  sub_2168FCC5C();
  sub_217009AF4();
  __break(1u);
}

id sub_2168FC5F4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC7MusicUIP33_472952789AFE0556D5F511BA5300504524PresentingViewController_didPresent] = 0;
  *&v1[OBJC_IVAR____TtC7MusicUIP33_472952789AFE0556D5F511BA5300504524PresentingViewController_model] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
}

void sub_2168FC658()
{
  *(v0 + OBJC_IVAR____TtC7MusicUIP33_472952789AFE0556D5F511BA5300504524PresentingViewController_didPresent) = 0;
  sub_21700F584();
  __break(1u);
}

void sub_2168FC6F8(char a1)
{
  v2 = v1;
  v5.receiver = v2;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewDidAppear_, a1 & 1);
  if ((*(v2 + OBJC_IVAR____TtC7MusicUIP33_472952789AFE0556D5F511BA5300504524PresentingViewController_didPresent) & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC7MusicUIP33_472952789AFE0556D5F511BA5300504524PresentingViewController_didPresent) = 1;
    switch(sub_216BA1EF4())
    {
      case 1u:
      case 2u:
      case 3u:
        v4 = sub_21700F7D4();

        if (v4)
        {
          goto LABEL_5;
        }

        break;
      default:

LABEL_5:
        sub_216BA1F68(v2);
        break;
    }
  }
}

uint64_t sub_2168FC950(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2168FC990(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_2168FCA00()
{
  result = qword_27CABC058;
  if (!qword_27CABC058)
  {
    type metadata accessor for SubscriptionPurchaseViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC058);
  }

  return result;
}

unint64_t sub_2168FCA78()
{
  result = qword_27CABC060;
  if (!qword_27CABC060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC068, &qword_2170263A0);
    sub_2168FCB30();
    sub_2166D9530(&qword_27CABC090, &qword_27CABC098, qword_2170263B8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC060);
  }

  return result;
}

unint64_t sub_2168FCB30()
{
  result = qword_27CABC070;
  if (!qword_27CABC070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC078, &qword_2170263A8);
    sub_2166D9530(&qword_27CABC080, &qword_27CABC088, &qword_2170263B0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC070);
  }

  return result;
}

unint64_t sub_2168FCC08()
{
  result = qword_27CABC0A0;
  if (!qword_27CABC0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC0A0);
  }

  return result;
}

unint64_t sub_2168FCC5C()
{
  result = qword_27CABC0A8;
  if (!qword_27CABC0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC0A8);
  }

  return result;
}

unint64_t sub_2168FCCB0()
{
  result = qword_27CABC0E8;
  if (!qword_27CABC0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC0D0, &unk_217026500);
    sub_2168FCD3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC0E8);
  }

  return result;
}

unint64_t sub_2168FCD3C()
{
  result = qword_27CABC0F0;
  if (!qword_27CABC0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC0C8, &unk_2170264F0);
    sub_2168FCDF4();
    sub_2166D9530(&qword_280E2B390, &qword_27CAB7438, &qword_21701A4C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC0F0);
  }

  return result;
}

unint64_t sub_2168FCDF4()
{
  result = qword_27CABC0F8;
  if (!qword_27CABC0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC0C0, &qword_2170264E8);
    sub_2168FCEAC();
    sub_2166D9530(&qword_280E2A840, &qword_27CAB7BE8, &qword_217019E70, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC0F8);
  }

  return result;
}

unint64_t sub_2168FCEAC()
{
  result = qword_27CABC100;
  if (!qword_27CABC100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC0B8, &qword_2170264E0);
    sub_2166D9530(&qword_27CABC108, &qword_27CABC110, &qword_217026528, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC100);
  }

  return result;
}

uint64_t sub_2168FCFA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a2;
  *(a4 + 8) = swift_getKeyPath();
  *(a4 + 16) = 0;
  *(a4 + 24) = swift_getKeyPath();
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  v10 = type metadata accessor for ArtistDetailHeaderLockupView(0, *(v8 + 80), *(v8 + 88), v9);
  v11 = v10[11];
  *(a4 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  swift_storeEnumTagMultiPayload();
  v12 = a4 + v10[12];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = (a4 + v10[13]);
  type metadata accessor for SubscriptionStatusCoordinator();
  OUTLINED_FUNCTION_1_55();
  sub_216906924(v14, v15, &unk_217065168);
  *v13 = sub_217008CF4();
  v13[1] = v16;
  v17 = a4 + v10[14];
  result = sub_2168FD124(0, 1);
  *v17 = result;
  *(v17 + 8) = v19 & 1;
  *(v17 + 16) = v20;
  *a4 = a1;
  *(a4 + v10[15]) = a2;
  *(a4 + v10[16]) = a3;
  return result;
}

uint64_t sub_2168FD124(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC448, &qword_217026950);
  sub_21700AEA4();
  return v3;
}

void sub_2168FD17C()
{
  type metadata accessor for SubscriptionStatusCoordinator();
  OUTLINED_FUNCTION_1_55();
  sub_216906924(v0, v1, &unk_217065168);
  sub_217008CF4();
  sub_2168FD124(0, 1);
  sub_21700F584();
  __break(1u);
}

uint64_t sub_2168FD22C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v62 = a2;
  OUTLINED_FUNCTION_16();
  v6 = v5;
  v64 = *(v7 + 64);
  MEMORY[0x28223BE20](v8);
  v65 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700C384();
  v55 = v10;
  OUTLINED_FUNCTION_16();
  v57 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC128, &qword_2170265B0);
  v63 = v15;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC130, &unk_2170265B8);
  OUTLINED_FUNCTION_16();
  v59 = v20;
  v60 = v19;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  v23 = &v49 - v22;
  sub_2168FD7A4(a1, v18);
  v50 = v2;
  v68 = v10;
  v69 = MEMORY[0x277CD8418];
  __swift_allocate_boxed_opaque_existential_1(v67);
  sub_2168C6A5C();
  v24 = &v18[*(v15 + 36)];
  sub_2167B7D58(v67, (v24 + 2));
  type metadata accessor for MusicEntityAnnotationWrapper();
  sub_216906924(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper, &unk_2170370E0);
  *v24 = sub_217008CF4();
  v24[1] = v25;
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  sub_2168C6A5C();
  v26 = v65;
  v56 = *(v6 + 16);
  v56(v65, v3, a1);
  v27 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v28 = swift_allocObject();
  v29 = *(a1 + 24);
  v54 = *(a1 + 16);
  *(v28 + 16) = v54;
  *(v28 + 24) = v29;
  v30 = *(v6 + 32);
  v61 = v6 + 32;
  v52 = v29;
  v53 = v30;
  v30(v28 + v27, v26, a1);
  v31 = sub_2169033A0();
  OUTLINED_FUNCTION_4_32();
  v34 = sub_216906924(v32, v33, MEMORY[0x277CD8440]);
  v58 = v23;
  v35 = v55;
  v51 = v31;
  sub_21700AB04();
  v36 = v35;

  (*(v57 + 8))(v14, v35);
  v37 = v18;
  v38 = v50;
  sub_216699778(v37, &qword_27CABC128);
  if (*(v38 + *(a1 + 52)))
  {

    v39 = sub_2166EFC70();

    v66 = v39;
    v40 = v65;
    v56(v65, v38, a1);
    v41 = swift_allocObject();
    v42 = v53;
    v43 = v52;
    *(v41 + 16) = v54;
    *(v41 + 24) = v43;
    v42(v41 + v27, v40, a1);
    v67[0] = v63;
    v67[1] = v36;
    v67[2] = v51;
    v68 = v34;
    swift_getOpaqueTypeConformance2();
    sub_2169035CC();
    v44 = v60;
    OUTLINED_FUNCTION_10_4();
    v45 = v58;
    sub_21700AB04();

    return (*(v59 + 8))(v45, v44);
  }

  else
  {
    type metadata accessor for SubscriptionStatusCoordinator();
    OUTLINED_FUNCTION_1_55();
    sub_216906924(v47, v48, &unk_217065168);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_2168FD7A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v62 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC168, &qword_2170265D8);
  MEMORY[0x28223BE20](v61);
  v54 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC180, &qword_2170265E8);
  MEMORY[0x28223BE20](v6);
  v8 = &v47 - v7;
  v57 = *(a1 - 8);
  MEMORY[0x28223BE20](v9);
  v55 = v10;
  v56 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2170090F4();
  v52 = *(v11 - 8);
  v53 = v11;
  MEMORY[0x28223BE20](v11);
  v51 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC150, &qword_2170265D0);
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC188, &unk_2170265F0);
  v59 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v58 = &v47 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC148, &qword_2170265C8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v47 - v22;
  v67[3] = type metadata accessor for ArtistDetailHeaderLockup(0);
  v67[4] = &off_28291F768;
  __swift_allocate_boxed_opaque_existential_1(v67);
  sub_2168ABE5C();
  sub_2168FE7DC(v23);
  v24 = sub_2168FE8C4();
  v60 = v23;
  if (v24)
  {
    v48 = v13;
    v47 = v20;
    v49 = v6;
    v50 = v16;
    v54 = v8;
    *v15 = sub_2170093B4();
    *(v15 + 1) = 0;
    v15[16] = 0;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC190, &qword_217026600);
    v26 = *(a1 + 16);
    v27 = *(a1 + 24);
    sub_2168FE960(v67, v3, v23, v26, v27, &v15[*(v25 + 44)]);
    v28 = *(v3 + 8);
    if (*(v3 + 16) == 1)
    {
      v29 = *(v3 + 8);
    }

    else
    {

      sub_21700ED94();
      v33 = sub_217009C34();
      sub_217007BC4();

      v34 = v51;
      sub_2170090E4();
      swift_getAtKeyPath();
      sub_216684F5C(v28, 0);
      (*(v52 + 8))(v34, v53);
      v29 = v63;
    }

    v63 = v29;
    v36 = v56;
    v35 = v57;
    (*(v57 + 16))(v56, v3, a1);
    v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = v26;
    *(v38 + 24) = v27;
    (*(v35 + 32))(v38 + v37, v36, a1);
    v39 = sub_21669E098(&qword_27CABC158, &qword_27CABC150, &qword_2170265D0, MEMORY[0x277CE1198]);
    v40 = sub_2168384AC();
    v41 = MEMORY[0x277D85048];
    v42 = v58;
    v43 = v48;
    sub_21700AB14();

    sub_216699778(v15, &qword_27CABC150);
    v44 = v59;
    v45 = v50;
    (*(v59 + 16))(v54, v42, v50);
    swift_storeEnumTagMultiPayload();
    v63 = v43;
    v64 = v41;
    v65 = v39;
    v66 = v40;
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_27CABC160, &qword_27CABC168, &qword_2170265D8, MEMORY[0x277CE1138]);
    v20 = v47;
    sub_217009554();
    (*(v44 + 8))(v42, v45);
  }

  else
  {
    v30 = v54;
    sub_21690130C(a1, v54);
    sub_216683A80(v30, v8, &qword_27CABC168, &qword_2170265D8);
    swift_storeEnumTagMultiPayload();
    v31 = sub_21669E098(&qword_27CABC158, &qword_27CABC150, &qword_2170265D0, MEMORY[0x277CE1198]);
    v32 = sub_2168384AC();
    v63 = v13;
    v64 = MEMORY[0x277D85048];
    v65 = v31;
    v66 = v32;
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_27CABC160, &qword_27CABC168, &qword_2170265D8, MEMORY[0x277CE1138]);
    sub_217009554();
    sub_216699778(v30, &qword_27CABC168);
  }

  sub_2167C5834(v20, v62, &qword_27CABC148, &qword_2170265C8);
  sub_216699778(v60, &qword_27CAB6D60);
  return __swift_destroy_boxed_opaque_existential_1Tm(v67);
}

void sub_2168FDF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930, &qword_21701A250);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  sub_21700C384();
  sub_216906924(&qword_27CABB808, MEMORY[0x277CD8428], MEMORY[0x277CD8440]);
  v13 = sub_21700E494();
  v15 = type metadata accessor for ArtistDetailHeaderLockupView(0, a4, a5, v14);
  if ((v13 & 1) == 0 || (sub_216A3FFDC(), v16 = type metadata accessor for ToolbarConfiguration(0), EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v16), sub_216699778(v12, &qword_27CAB7930), EnumTagSinglePayload == 1))
  {
    sub_2168FE160(v15, v9);
    v18 = type metadata accessor for ToolbarConfiguration(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v18);
    sub_216A3FFF0(v9);
  }
}

uint64_t sub_2168FE160@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v54 = a2;
  v2 = type metadata accessor for ToolbarProperties(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_21700DFD4();
  v53 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_21700C384();
  v8 = *(v59 - 8);
  v56 = *(v8 + 64);
  MEMORY[0x28223BE20](v59);
  v55 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = &v48 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v48 - v16;
  v18 = type metadata accessor for ArtistDetailHeaderLockup(0);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2168ABE5C();
  v22 = &v21[*(v19 + 52)];
  v51 = v17;
  sub_216683A80(v22, v17, &qword_27CAB6A00, &unk_217016B60);
  sub_216905668(v21, type metadata accessor for ArtistDetailHeaderLockup);
  v50 = v14;
  sub_2168C6A5C();
  type metadata accessor for ObjectGraph(0);
  v49 = v7;
  sub_21700E094();
  v23 = *(v3 + 32);
  v24 = *MEMORY[0x277CDDDC0];
  v25 = sub_217009124();
  (*(*(v25 - 8) + 104))(&v5[v23], v24, v25);
  v26 = type metadata accessor for ArtistPageToolbarContentProvider(0);
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v27 = v54;
  sub_216906698(v5, v54 + *(v26 + 20), type metadata accessor for ToolbarProperties);
  v28 = v17;
  v29 = v27;
  sub_216683A80(v28, v27, &qword_27CAB6A00, &unk_217016B60);
  v52 = *(v8 + 16);
  v52(v58, v14, v59);
  v30 = type metadata accessor for ArtistPageToolbarContent(0);
  v31 = v53;
  v32 = v7;
  v33 = v57;
  (*(v53 + 16))(v27 + v30[6], v32, v57);
  v34 = v27 + v30[7];
  v60 = 0;
  v61 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC178, &qword_2170265E0);
  sub_21700AEA4();
  v35 = v63;
  *v34 = v62;
  *(v34 + 16) = v35;
  v36 = (v27 + v30[9]);
  type metadata accessor for SubscriptionStatusCoordinator();
  sub_216906924(&qword_280E30FC8, type metadata accessor for SubscriptionStatusCoordinator, &unk_217065168);
  v37 = sub_217008CF4();
  v39 = v38;
  sub_216905668(v5, type metadata accessor for ToolbarProperties);
  (*(v31 + 8))(v49, v33);
  v40 = v59;
  (*(v8 + 8))(v50, v59);
  sub_216699778(v51, &qword_27CAB6A00);
  *v36 = v37;
  v36[1] = v39;
  v41 = v58;
  v52((v29 + v30[5]), v58, v40);
  v42 = *(v8 + 32);
  v43 = v55;
  v42(v55, v41, v40);
  v44 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v45 = swift_allocObject();
  result = (v42)(v45 + v44, v43, v40);
  v47 = v29 + v30[8];
  *v47 = sub_2169047E0;
  *(v47 + 8) = v45;
  *(v47 + 16) = 0;
  return result;
}

void sub_2168FE6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930, &qword_21701A250);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  v11 = type metadata accessor for ArtistDetailHeaderLockupView(0, a4, a5, v10);
  sub_2168FE160(v11, v9);
  v12 = type metadata accessor for ToolbarConfiguration(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v12);
  sub_216A3FFF0(v9);
}

uint64_t sub_2168FE7DC@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for ArtistDetailHeaderLockup(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2169031B4();
  sub_2168ABE5C();
  v7 = 28;
  if (v6)
  {
    v7 = 48;
  }

  sub_216683A80(&v5[*(v3 + v7)], a2, &qword_27CAB6D60, &qword_217014E40);
  return sub_216905668(v5, type metadata accessor for ArtistDetailHeaderLockup);
}

BOOL sub_2168FE8C4()
{
  v0 = type metadata accessor for ArtistDetailHeaderLockup(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2168ABE5C();
  v3 = sub_216AD18DC();
  sub_216905668(v2, type metadata accessor for ArtistDetailHeaderLockup);
  return v3;
}

uint64_t sub_2168FE960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_2170090F4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a4;
  v41 = a5;
  v42 = a1;
  v43 = a2;
  v44 = a3;
  v37 = a4;
  v38 = a5;
  v39 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC1A0, &qword_217026610);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC1A8, &qword_217026618);
  sub_2169048E0();
  sub_216905060();
  sub_216905118();
  sub_217006574();
  v16 = sub_217009CB4();
  v17 = *(a2 + 32);
  if (*(a2 + 56) != 1)
  {
    v18 = *(a2 + 24);
    v19 = *(a2 + 40);
    v20 = *(a2 + 48);
    v36 = v19;

    sub_21700ED94();
    v21 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_21680E444(v18, v17, v36, v20, 0);
    (*(v13 + 8))(v15, v12);
  }

  sub_217007F24();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC278, &qword_217026688) + 36);
  *v30 = v16;
  *(v30 + 8) = v23;
  *(v30 + 16) = v25;
  *(v30 + 24) = v27;
  *(v30 + 32) = v29;
  *(v30 + 40) = 0;
  v31 = sub_217009CE4();
  sub_21690516C();
  v32 = sub_217008A34();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC298, &qword_217026698);
  v34 = a6 + *(result + 36);
  *v34 = v32;
  *(v34 + 8) = v31;
  return result;
}

uint64_t sub_2168FEC54@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v188 = a4;
  v189 = a5;
  v179 = a3;
  v186 = a6;
  v187 = a2;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC2A8, &qword_2170266D0);
  MEMORY[0x28223BE20](v184);
  v185 = v138 - v7;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC2B0, &unk_2170266D8);
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v162 = v138 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v9 - 8);
  v177 = v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v155 = v138 - v12;
  MEMORY[0x28223BE20](v13);
  v159 = v138 - v14;
  v161 = sub_2170063E4();
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v158 = v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC2B8, &qword_2170266E8);
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v154 = v138 - v16;
  v17 = sub_217005EF4();
  MEMORY[0x28223BE20](v17 - 8);
  v142 = v138 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC1E0, &qword_217026640);
  MEMORY[0x28223BE20](v145);
  v143 = v138 - v19;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC2C0, &qword_2170266F0);
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v146 = v138 - v20;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC1C0, &qword_217026630);
  v147 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v144 = v138 - v21;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC1B8, &unk_217026620);
  v151 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v150 = v138 - v22;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC2C8, &unk_2170266F8);
  v153 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v152 = v138 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v24 - 8);
  v168 = v138 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v138 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v29 - 8);
  v169 = v138 - v30;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC238, &qword_217026670);
  v171 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v170 = v138 - v31;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC2D0, &qword_217026708);
  v173 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v172 = v138 - v32;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC220, &qword_217026660);
  v176 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v175 = v138 - v33;
  v34 = sub_2170071B4();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = v138 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710);
  MEMORY[0x28223BE20](v38 - 8);
  v141 = v138 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = v138 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBF10, &qword_2170532E0);
  MEMORY[0x28223BE20](v43 - 8);
  v45 = v138 - v44;
  v46 = sub_217006EC4();
  v167 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v166 = v138 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1[3];
  v48 = a1[4];
  v163 = a1;
  v50 = __swift_project_boxed_opaque_existential_1(a1, v49);
  v51 = *(v48 + 16);
  v52 = *(v51 + 8);
  v138[1] = v50;
  v140 = v49;
  v139 = v51;
  v138[0] = v52;
  v52(v49);
  v53 = type metadata accessor for VideoArtwork(0);
  if (__swift_getEnumTagSinglePayload(v42, 1, v53) == 1)
  {
    sub_216699778(v42, &qword_27CABBEA8);
    __swift_storeEnumTagSinglePayload(v45, 1, 1, v46);
LABEL_4:
    sub_216699778(v45, &qword_27CABBF10);
    v57 = v179;
    sub_216683A80(v179, v28, &qword_27CAB6D60, &qword_217014E40);
    v58 = type metadata accessor for Artwork(0);
    if (__swift_getEnumTagSinglePayload(v28, 1, v58) == 1)
    {
      sub_216699778(v28, &qword_27CAB6D60);
      v59 = sub_21700C4B4();
      v60 = v169;
      v61 = v169;
      v62 = 1;
    }

    else
    {
      v63 = sub_21700C4B4();
      v60 = v169;
      (*(*(v63 - 8) + 16))(v169, v28, v63);
      sub_216905668(v28, type metadata accessor for Artwork);
      v61 = v60;
      v62 = 0;
      v59 = v63;
    }

    __swift_storeEnumTagSinglePayload(v61, v62, 1, v59);
    v64 = v188;
    v65 = v168;
    sub_216683A80(v57, v168, &qword_27CAB6D60, &qword_217014E40);
    if (__swift_getEnumTagSinglePayload(v65, 1, v58) == 1)
    {
      sub_216699778(v65, &qword_27CAB6D60);
      v66 = sub_21700C444();
      v67 = v177;
      v68 = v177;
      v69 = 1;
    }

    else
    {
      v70 = *(v58 + 20);
      v71 = sub_21700C444();
      v72 = v65 + v70;
      v67 = v177;
      (*(*(v71 - 8) + 16))(v177, v72, v71);
      sub_216905668(v65, type metadata accessor for Artwork);
      v68 = v67;
      v69 = 0;
      v66 = v71;
    }

    __swift_storeEnumTagSinglePayload(v68, v69, 1, v66);
    v74 = type metadata accessor for ArtistDetailHeaderLockupView(0, v64, v189, v73);
    v75 = v170;
    sub_216900734(v60, v67, v74, v170);
    sub_216699778(v67, &qword_27CAB7530);
    sub_216699778(v60, &qword_27CABF770);
    v76 = sub_21700B314();
    MEMORY[0x28223BE20](v76);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC240, &qword_217026678);
    v78 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC248, &qword_217026680);
    v79 = sub_216904E34();
    v190 = v78;
    v191 = v79;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v81 = sub_216904F6C();
    v82 = v172;
    v83 = v178;
    sub_21700AB44();
    (*(v171 + 8))(v75, v83);
    v84 = sub_21700B314();
    v189 = v138;
    MEMORY[0x28223BE20](v84);
    MEMORY[0x28223BE20](v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC230, &qword_217026668);
    sub_21669E098(&qword_27CABC228, &qword_27CABC230, &qword_217026668, MEMORY[0x277CDE1F8]);
    v190 = v83;
    v191 = MEMORY[0x277CE1350];
    v192 = v77;
    v193 = OpaqueTypeConformance2;
    v194 = MEMORY[0x277CE1340];
    v195 = v81;
    swift_getOpaqueTypeConformance2();
    v86 = v175;
    v87 = v174;
    sub_21700B324();
    (*(v173 + 8))(v82, v87);
    v88 = v176;
    v89 = v180;
    (*(v176 + 16))(v185, v86, v180);
    swift_storeEnumTagMultiPayload();
    v90 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABAA40, &unk_217014260);
    v91 = sub_216904A08();
    v190 = v181;
    v191 = v91;
    v92 = swift_getOpaqueTypeConformance2();
    v190 = v182;
    v191 = v90;
    v192 = v92;
    swift_getOpaqueTypeConformance2();
    sub_216904CB8();
    sub_217009554();
    return (*(v88 + 8))(v86, v89);
  }

  v55 = type metadata accessor for ArtistDetailHeaderLockupView(0, v188, v189, v54);
  sub_216900558(v55, v56);
  sub_216DEE900(v45);
  (*(v35 + 8))(v37, v34);
  sub_216905668(v42, type metadata accessor for VideoArtwork);
  if (__swift_getEnumTagSinglePayload(v45, 1, v46) == 1)
  {
    goto LABEL_4;
  }

  v94 = *(v167 + 32);
  v177 = v46;
  v94(v166, v45, v46);
  v95 = sub_217006EB4();
  MEMORY[0x28223BE20](v95);
  v176 = v53;
  MEMORY[0x28223BE20](v96);
  v97 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC248, &qword_217026680);
  v98 = sub_216904E34();
  v190 = v97;
  v191 = v98;
  swift_getOpaqueTypeConformance2();
  v99 = v143;
  sub_2170063A4();
  v100 = sub_217009CE4();
  sub_21669E098(&qword_27CABC1F8, &unk_27CABC200, &unk_217026650, MEMORY[0x277D26978]);
  v101 = sub_217008A34();
  v102 = v145;
  v103 = v99 + *(v145 + 36);
  *v103 = v101;
  *(v103 + 8) = v100;
  v104 = sub_21700B314();
  MEMORY[0x28223BE20](v104);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC1E8, &qword_217026648);
  v106 = sub_216904B48();
  v107 = sub_216904C00();
  v108 = v146;
  sub_21700AB44();
  sub_216699778(v99, &qword_27CABC1E0);
  v109 = sub_21700B314();
  v189 = v138;
  MEMORY[0x28223BE20](v109);
  MEMORY[0x28223BE20](v110);
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC1D8, &qword_217026638);
  sub_21669E098(&qword_27CABC1D0, &qword_27CABC1D8, &qword_217026638, MEMORY[0x277CDE1F8]);
  v190 = v102;
  v191 = MEMORY[0x277CE1350];
  v192 = v105;
  v193 = v106;
  v194 = MEMORY[0x277CE1340];
  v195 = v107;
  v111 = v176;
  swift_getOpaqueTypeConformance2();
  v112 = v144;
  v113 = v149;
  sub_21700B324();
  (*(v148 + 8))(v108, v113);
  v114 = sub_216904A08();
  v115 = v154;
  v116 = v181;
  sub_21700A2A4();
  (*(v147 + 8))(v112, v116);
  v117 = v141;
  (v138[0])(v140, v139);
  if (__swift_getEnumTagSinglePayload(v117, 1, v111) == 1)
  {
    sub_216699778(v117, &qword_27CABBEA8);
    v118 = sub_21700C444();
    v119 = v155;
    __swift_storeEnumTagSinglePayload(v155, 1, 1, v118);
    v120 = v159;
    sub_21700C414();
    if (__swift_getEnumTagSinglePayload(v119, 1, v118) != 1)
    {
      sub_216699778(v119, &qword_27CAB7530);
    }
  }

  else
  {
    v121 = *(v111 + 20);
    v118 = sub_21700C444();
    v122 = *(v118 - 8);
    v123 = v155;
    (*(v122 + 16))(v155, v117 + v121, v118);
    sub_216905668(v117, type metadata accessor for VideoArtwork);
    __swift_storeEnumTagSinglePayload(v123, 0, 1, v118);
    v120 = v159;
    (*(v122 + 32))(v159, v123, v118);
  }

  sub_21700C444();
  __swift_storeEnumTagSinglePayload(v120, 0, 1, v118);
  v124 = v158;
  sub_216B50CD4(v120, v158);
  v125 = v150;
  v126 = v157;
  sub_217006454();
  (*(v160 + 8))(v124, v161);
  (*(v156 + 8))(v115, v126);
  v190 = v116;
  v191 = v114;
  v127 = swift_getOpaqueTypeConformance2();
  v128 = v162;
  v129 = v182;
  sub_21700A2A4();
  (*(v151 + 8))(v125, v129);
  v130 = v163[3];
  v131 = v163[4];
  __swift_project_boxed_opaque_existential_1(v163, v130);
  v190 = (*(v131 + 40))(v130, v131);
  v191 = v132;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40, &unk_217014260);
  v134 = v152;
  v135 = v165;
  sub_217006464();

  (*(v164 + 8))(v128, v135);
  v136 = v153;
  v137 = v183;
  (*(v153 + 16))(v185, v134, v183);
  swift_storeEnumTagMultiPayload();
  v190 = v129;
  v191 = v133;
  v192 = v127;
  swift_getOpaqueTypeConformance2();
  sub_216904CB8();
  sub_217009554();
  (*(v136 + 8))(v134, v137);
  return (*(v167 + 8))(v166, v177);
}

uint64_t sub_216900558(uint64_t a1, double a2)
{
  if (sub_2169031B4())
  {

    return sub_217007184();
  }

  else
  {

    return sub_217007164();
  }
}

uint64_t sub_2169005B0@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  sub_217006EA4();
  v14 = sub_21700C4B4();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  v15 = sub_21700C444();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v15);
  v17 = type metadata accessor for ArtistDetailHeaderLockupView(0, a3, a4, v16);
  sub_216900734(v13, v10, v17, x8_0);
  sub_216699778(v10, &qword_27CAB7530);
  return sub_216699778(v13, &qword_27CABF770);
}

uint64_t sub_216900734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43[0] = a1;
  v51 = a4;
  v6 = sub_21700C384();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700D8E4();
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x28223BE20](v9);
  v44 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v45 = v43 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v43 - v17;
  v19 = type metadata accessor for StaticArtworkView(0);
  MEMORY[0x28223BE20](v19);
  v21 = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC248, &qword_217026680);
  MEMORY[0x28223BE20](v46);
  v23 = v43 - v22;
  v24 = v43[1];
  sub_216683A80(v43[0], v18, &qword_27CABF770, &unk_21701A670);
  sub_216683A80(a2, v15, &qword_27CAB7530, &unk_21701A660);
  v25 = v24 + *(a3 + 56);
  v26 = *v25;
  v27 = *(v25 + 8);
  v28 = *(v25 + 16);
  v53 = v26;
  LOBYTE(v54) = v27;
  v55 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC198, &qword_217026608);
  sub_21700AEB4();
  if (BYTE8(v52[0]) == 1)
  {
    v30 = sub_216901508(a3, v29);
  }

  else
  {
    v30 = *v52;
  }

  sub_2167C5834(v18, v21, &qword_27CABF770, &unk_21701A670);
  sub_2167C5834(v15, &v21[v19[5]], &qword_27CAB7530, &unk_21701A660);
  *&v21[v19[6]] = v30;
  v31 = &v21[v19[7]];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  v53 = sub_216983738(33);
  v54 = v32;
  sub_216906924(&qword_27CABC258, type metadata accessor for StaticArtworkView, &unk_217026BF0);
  sub_2167B2E14();
  v33 = MEMORY[0x277D837D0];
  sub_21700A6B4();

  sub_216905668(v21, type metadata accessor for StaticArtworkView);
  sub_2168C6A5C();
  v34 = sub_21700C324();
  v36 = v35;
  (*(v47 + 8))(v8, v48);
  if (v36)
  {
    v37 = MEMORY[0x277CD7E90];
  }

  else
  {
    v34 = 0;
    v37 = 0;
    v55 = 0;
  }

  v53 = v34;
  v54 = v36;
  v56 = v37;
  memset(v52, 0, sizeof(v52));
  v38 = v44;
  sub_21700D854();
  sub_216699778(v52, &unk_27CABF7A0);
  sub_216699778(&v53, &unk_27CABF7A0);
  v56 = v33;
  v53 = 0x636974617473;
  v54 = 0xE600000000000000;
  v39 = v45;
  sub_21700D8C4();
  v40 = v50;
  v41 = *(v49 + 8);
  v41(v38, v50);
  sub_216699778(&v53, &unk_27CABF7A0);
  sub_216904E34();
  sub_21700A204();
  v41(v39, v40);
  return sub_216699778(v23, &qword_27CABC248);
}

uint64_t sub_216900CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34[1] = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v34 - v19;
  sub_216683A80(a2, v17, &qword_27CAB6D60, &qword_217014E40);
  v21 = type metadata accessor for Artwork(0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v21) == 1)
  {
    sub_216699778(v17, &qword_27CAB6D60);
    v22 = sub_21700C4B4();
    v23 = v20;
    v24 = 1;
  }

  else
  {
    v25 = sub_21700C4B4();
    (*(*(v25 - 8) + 16))(v20, v17, v25);
    sub_216905668(v17, type metadata accessor for Artwork);
    v23 = v20;
    v24 = 0;
    v22 = v25;
  }

  __swift_storeEnumTagSinglePayload(v23, v24, 1, v22);
  sub_216683A80(a2, v14, &qword_27CAB6D60, &qword_217014E40);
  if (__swift_getEnumTagSinglePayload(v14, 1, v21) == 1)
  {
    sub_216699778(v14, &qword_27CAB6D60);
    v26 = sub_21700C444();
    v27 = v11;
    v28 = 1;
  }

  else
  {
    v29 = *(v21 + 20);
    v30 = sub_21700C444();
    (*(*(v30 - 8) + 16))(v11, &v14[v29], v30);
    sub_216905668(v14, type metadata accessor for Artwork);
    v27 = v11;
    v28 = 0;
    v26 = v30;
  }

  __swift_storeEnumTagSinglePayload(v27, v28, 1, v26);
  v32 = type metadata accessor for ArtistDetailHeaderLockupView(0, a3, a4, v31);
  sub_216900734(v20, v11, v32, a5);
  sub_216699778(v11, &qword_27CAB7530);
  return sub_216699778(v20, &qword_27CABF770);
}

uint64_t sub_216901048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_216904B48();
  sub_216683A80(a1, a2, &qword_27CABC1E0, &qword_217026640);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC1E8, &qword_217026648);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_2169010A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC238, &qword_217026670);
  sub_216904E34();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC240, &qword_217026678);
  *(a2 + *(result + 36)) = 0;
  return result;
}

__n128 sub_216901140@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2170090F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ArtistDetailHeaderLockupView(0, a2, a3, v12);
  sub_21690130C(v13, a4);
  v14 = *(a1 + 40);
  v15 = *(a1 + 24);
  v16 = *(a1 + 56);
  v22 = v15;
  v23 = v14;
  if ((v16 & 1) == 0)
  {
    v17 = v15;

    sub_21700ED94();
    v18 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_21680E444(v17, v22.n128_i64[1], v23, *(&v23 + 1), 0);
    (*(v9 + 8))(v11, v8);
    v22 = v24;
    v23 = v25;
  }

  v19 = sub_217009C84();
  v20 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC1A8, &qword_217026618) + 36);
  *v20 = v19;
  result = v22;
  *(v20 + 24) = v23;
  *(v20 + 8) = result;
  *(v20 + 40) = 0;
  return result;
}

uint64_t sub_21690130C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_217009194();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC308, &qword_217026768);
  return sub_216901534(*(a1 + 16), *(a1 + 24), a2 + *(v4 + 44));
}

uint64_t sub_21690136C@<X0>(uint64_t a1@<X8>)
{
  result = sub_2169013A0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_2169013A0()
{
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC2A0, &qword_2170266C8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_217013D90;
  sub_21700ACC4();
  sub_21700AD04();

  *(v1 + 32) = sub_21700B234();
  *(v1 + 40) = v2;
  sub_21700ACC4();
  sub_21700AD04();

  *(v1 + 48) = sub_21700B234();
  *(v1 + 56) = v3;
  sub_21700B244();
  return KeyPath;
}

uint64_t sub_216901484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for ArtistDetailHeaderLockupView(0, a2, a3, a4);
  sub_216901508(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC198, &qword_217026608);
  return sub_21700AEC4();
}

double sub_216901508(uint64_t a1, double a2)
{
  v2 = sub_2169031B4();
  result = 2.28571429;
  if (v2)
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_216901534@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = type metadata accessor for ArtistDetailHeaderLockup(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC310, &qword_217026770);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v38 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  sub_2168ABE5C();
  v15 = type metadata accessor for ArtistDetailHeaderLockupView(0, a1, a2, v14);
  sub_2169019B8(v7, v15, v13);
  sub_216905668(v7, type metadata accessor for ArtistDetailHeaderLockup);
  LOBYTE(a1) = sub_217009CA4();
  sub_216902324(v15);
  sub_217007F24();
  v16 = &v13[*(v9 + 44)];
  *v16 = a1;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  v40[3] = v5;
  v40[4] = sub_216906924(&qword_27CABC318, type metadata accessor for ArtistDetailHeaderLockup, &unk_217041190);
  __swift_allocate_boxed_opaque_existential_1(v40);
  sub_2168ABE5C();
  v21 = sub_21690249C();
  v22 = sub_217009CC4();
  sub_217009CC4();
  if (sub_217009CC4() != v21)
  {
    v22 = sub_217009CC4();
  }

  sub_216902518(0xD000000000000010, 0x800000021707F800, v22, 0);
  sub_2169056C0(v40);
  v41[3] = sub_2170067A4();
  v41[4] = sub_216906924(&qword_280E4A480, MEMORY[0x277D2A460], MEMORY[0x277D2A398]);
  __swift_allocate_boxed_opaque_existential_1(v41);
  sub_2168C0564();
  sub_2167B7D58(v41, &v40[17]);
  type metadata accessor for MusicEntityAnnotationWrapper();
  sub_216906924(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper, &unk_2170370E0);
  v40[15] = sub_217008CF4();
  v40[16] = v23;
  memcpy(v40, v42, 0x71uLL);
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  v24 = sub_217009CA4();
  sub_216902E08(v15);
  sub_217007F24();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  memcpy(v42, v40, 0xB0uLL);
  LOBYTE(v41[0]) = 0;
  v42[176] = v24;
  *v43 = v40[0];
  *&v43[3] = *(v40 + 3);
  v44 = v26;
  v45 = v28;
  v46 = v30;
  v47 = v32;
  v48 = 0;
  v33 = v38;
  sub_216683A80(v13, v38, &qword_27CABC310, &qword_217026770);
  sub_216683A80(v42, v40, &qword_27CABC320, &qword_217026778);
  v34 = v39;
  sub_216683A80(v33, v39, &qword_27CABC310, &qword_217026770);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC328, &qword_217026780);
  v36 = v34 + *(v35 + 48);
  *v36 = 0x403E000000000000;
  *(v36 + 8) = 0;
  sub_216683A80(v40, v34 + *(v35 + 64), &qword_27CABC320, &qword_217026778);
  sub_216699778(v42, &qword_27CABC320);
  sub_216699778(v13, &qword_27CABC310);
  sub_216699778(v40, &qword_27CABC320);
  return sub_216699778(v33, &qword_27CABC310);
}

uint64_t sub_2169019B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v99 = a2;
  v97 = a3;
  v98 = sub_21700D8E4();
  v96 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v95 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB75D0, &qword_217017420);
  MEMORY[0x28223BE20](v89);
  v102 = &v77 - v7;
  v8 = sub_217008844();
  v100 = *(v8 - 8);
  v101 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21700C384();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v92 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v77 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC358, &qword_2170267A0);
  v84 = *(v17 - 8);
  v85 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v77 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC360, &qword_2170267A8);
  v86 = *(v20 - 8);
  v87 = v20;
  MEMORY[0x28223BE20](v20);
  v83 = &v77 - v21;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC368, &qword_2170267B0);
  MEMORY[0x28223BE20](v81);
  v82 = &v77 - v22;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC370, &qword_2170267B8);
  MEMORY[0x28223BE20](v80);
  v88 = &v77 - v23;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC378, &qword_2170267C0);
  MEMORY[0x28223BE20](v90);
  v91 = &v77 - v24;
  v25 = (a1 + *(type metadata accessor for ArtistDetailHeaderLockup(0) + 24));
  v26 = v25[1];
  v93 = v12;
  v94 = v11;
  if (v26)
  {
    v27 = *v25;
    v28 = v26;
  }

  else
  {
    sub_2168C6A5C();
    v29 = sub_21700C364();
    v30 = v12;
    v27 = v29;
    v28 = v31;
    (*(v30 + 8))(v16, v11);
  }

  v79 = v4;
  sub_21700DF14();
  v32 = v99;
  v33 = sub_216902F80();
  KeyPath = swift_getKeyPath();
  v35 = sub_216902FC4(v32);
  v36 = swift_getKeyPath();
  *&v106 = v27;
  *(&v106 + 1) = v28;
  *&v107 = 0;
  *(&v107 + 1) = MEMORY[0x277D84F90];
  *&v108 = KeyPath;
  *(&v108 + 1) = v33;
  *&v109 = v36;
  *(&v109 + 1) = v35;
  v37 = v10;
  v99 = v4 + *(v32 + 44);
  sub_216C0C570(v36, v38, v39, v40, v41, v42, v43, v44, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
  sub_217008834();
  v45 = v100;
  v46 = v101;
  v77 = *(v100 + 8);
  v78 = v100 + 8;
  v77(v37, v101);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E88, &unk_217018BF0);
  v48 = sub_2167D95A8();
  sub_21700A664();
  v105[0] = v106;
  v105[1] = v107;
  v105[2] = v108;
  v105[3] = v109;
  sub_216699778(v105, &qword_27CAB7E88);
  v49 = v102;
  (*(v45 + 104))(v102, *MEMORY[0x277CDF9B8], v46);
  sub_216906924(&qword_280E2B340, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_21700E494();
  if (result)
  {
    __src[0] = v47;
    __src[1] = v48;
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_280E29AE8, &qword_27CAB75D0, &qword_217017420, MEMORY[0x277D84470]);
    v51 = v83;
    v52 = v49;
    v53 = v85;
    sub_21700A5B4();
    sub_216699778(v52, &qword_27CAB75D0);
    v54 = (*(v84 + 8))(v19, v53);
    sub_216C0C570(v54, v55, v56, v57, v58, v59, v60, v61, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
    v62 = sub_217008834();
    v77(v37, v46);
    if (v62)
    {
      v63 = 3;
    }

    else
    {
      v63 = 2;
    }

    v64 = swift_getKeyPath();
    v65 = v82;
    (*(v86 + 32))(v82, v51, v87);
    v66 = v65 + *(v81 + 36);
    *v66 = v64;
    *(v66 + 8) = v63;
    *(v66 + 16) = 0;
    v67 = swift_getKeyPath();
    v68 = v88;
    sub_2167C5834(v65, v88, &qword_27CABC368, &qword_2170267B0);
    v69 = v68 + *(v80 + 36);
    *v69 = v67;
    *(v69 + 8) = 0;
    sub_21700B3C4();
    sub_217008BB4();
    v70 = v91;
    sub_2167C5834(v68, v91, &qword_27CABC370, &qword_2170267B8);
    memcpy((v70 + *(v90 + 36)), __src, 0x70uLL);
    v71 = v92;
    sub_2168C6A5C();
    v72 = sub_21700C324();
    v74 = v73;
    (*(v93 + 8))(v71, v94);
    if (v74)
    {
      v75 = MEMORY[0x277CD7E90];
    }

    else
    {
      v72 = 0;
      v75 = 0;
      v104[2] = 0;
    }

    v104[0] = v72;
    v104[1] = v74;
    v104[3] = v75;
    memset(v103, 0, sizeof(v103));
    v76 = v95;
    sub_21700D854();
    sub_216699778(v103, &unk_27CABF7A0);
    sub_216699778(v104, &unk_27CABF7A0);
    sub_2169058C8();
    sub_21700A204();
    (*(v96 + 8))(v76, v98);
    return sub_216699778(v70, &qword_27CABC378);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_216902324(uint64_t a1)
{
  v3 = sub_2170090F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2168FE8C4();
  result = 11.0;
  if (v7)
  {
    v9 = v1 + *(a1 + 48);
    v10 = *v9;
    if (*(v9 + 8) == 1)
    {
      v11 = *v9;
    }

    else
    {

      sub_21700ED94();
      v12 = sub_217009C34();
      sub_217007BC4();

      sub_2170090E4();
      swift_getAtKeyPath();
      sub_216684F5C(v10, 0);
      (*(v4 + 8))(v6, v3);
      v11 = v13[15];
    }

    result = 18.0;
    if (v11 < 2)
    {
      return 24.0;
    }
  }

  return result;
}

uint64_t sub_21690249C()
{
  if (sub_2168FE8C4())
  {
    v0 = sub_217009CA4();
  }

  else
  {
    v0 = sub_217009C94();
  }

  v1 = v0;
  v2 = sub_217009CC4();
  sub_217009CC4();
  if (sub_217009CC4() == v1)
  {
    return v2;
  }

  return sub_217009CC4();
}

uint64_t sub_216902518(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (a2)
  {
    type metadata accessor for PopoverBubbleTipRequestManager(0);
    sub_216906924(&qword_280E30968, type metadata accessor for PopoverBubbleTipRequestManager, &unk_21703A2E0);
    sub_21700DF14();
    v8 = sub_2170080F4();
    v16 = v9 & 1;
    sub_21700AEA4();
    v10 = v27;
    v11 = v28;
    v17[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC350, &unk_217026790);
    sub_21700AEA4();
    v13 = v27;
    v12 = v28;
    sub_216905714(v4, v17);
    v17[5] = v8;
    v18 = v16;
    v19 = a1;
    v20 = a2;
    v21 = a3;
    v22 = a4 & 1;
    v23 = v10;
    v24 = v11;
    v25 = v13;
    v26 = v12;
    sub_216683A80(v17, &v27, &qword_27CABC330, &qword_217026788);
    v29 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC330, &qword_217026788);
    sub_216905D1C(&qword_27CABC338, &qword_27CABC330, &qword_217026788, sub_216905770);
    sub_216905770();
    sub_217009554();
    return sub_216699778(v17, &qword_27CABC330);
  }

  else
  {
    sub_216905714(v4, &v27);
    v29 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC330, &qword_217026788);
    sub_216905D1C(&qword_27CABC338, &qword_27CABC330, &qword_217026788, sub_216905770);
    sub_216905770();
    return sub_217009554();
  }
}

uint64_t sub_216902784()
{
  OUTLINED_FUNCTION_12_28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC398, &qword_217026898);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC3A0, &unk_2170268A0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  if (v4)
  {
    type metadata accessor for PopoverBubbleTipRequestManager(0);
    v38 = v0;
    OUTLINED_FUNCTION_3_54();
    sub_216906924(v13, v14, &unk_21703A2E0);
    v35 = v1;
    v36 = v3;
    sub_21700DF14();
    v34 = sub_2170080F4();
    v40 = v15 & 1;
    LOBYTE(v39) = 0;
    sub_21700AEA4();
    v33 = v41;
    v32 = v42;
    v39 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC350, &unk_217026790);
    sub_21700AEA4();
    v16 = v9;
    v37 = v2;
    v18 = v41;
    v17 = v42;
    v19 = v5 & 1;
    v20 = v40;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC3A8, &qword_21706C7A0);
    OUTLINED_FUNCTION_34();
    (*(v22 + 16))(v12, v35, v21);
    v23 = &v12[*(v16 + 36)];
    *v23 = v34;
    v23[8] = v20;
    *(v23 + 2) = v36;
    *(v23 + 3) = v4;
    v23[32] = v38;
    v23[33] = v19;
    v23[40] = v33;
    *(v23 + 6) = v32;
    *(v23 + 7) = v18;
    *(v23 + 8) = v17;
    sub_216683A80(v12, v8, &qword_27CABC3A0, &unk_2170268A0);
    swift_storeEnumTagMultiPayload();
    sub_216905B9C();
    v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC3B8, &unk_2170268B0);
    v25 = sub_216905C64();
    v41 = v24;
    v42 = v25;
    OUTLINED_FUNCTION_6_36();
    OUTLINED_FUNCTION_15_24();
    sub_217009554();
    return sub_216699778(v12, &qword_27CABC3A0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC3A8, &qword_21706C7A0);
    OUTLINED_FUNCTION_34();
    v27 = OUTLINED_FUNCTION_15_24();
    v28(v27);
    swift_storeEnumTagMultiPayload();
    sub_216905B9C();
    v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC3B8, &unk_2170268B0);
    v30 = sub_216905C64();
    v41 = v29;
    v42 = v30;
    OUTLINED_FUNCTION_6_36();
    return sub_217009554();
  }
}

uint64_t sub_216902ACC()
{
  OUTLINED_FUNCTION_12_28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC3D8, &unk_2170268C0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC3E0, &unk_21706C730);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  if (v4)
  {
    type metadata accessor for PopoverBubbleTipRequestManager(0);
    v40 = v0;
    OUTLINED_FUNCTION_3_54();
    sub_216906924(v13, v14, &unk_21703A2E0);
    v37 = v1;
    v39 = v3;
    sub_21700DF14();
    v36 = sub_2170080F4();
    v44 = v15 & 1;
    LOBYTE(v41) = 0;
    sub_21700AEA4();
    v35 = v42;
    v34 = v43;
    v41 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC350, &unk_217026790);
    sub_21700AEA4();
    v16 = v9;
    v18 = v42;
    v17 = v43;
    v19 = v5 & 1;
    v38 = v2;
    v20 = v44;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC3E8, &unk_2170268D0);
    OUTLINED_FUNCTION_34();
    (*(v22 + 16))(v12, v37, v21);
    v23 = &v12[*(v16 + 36)];
    *v23 = v36;
    v23[8] = v20;
    *(v23 + 2) = v39;
    *(v23 + 3) = v4;
    v23[32] = v40;
    v23[33] = v19;
    v23[40] = v35;
    *(v23 + 6) = v34;
    *(v23 + 7) = v18;
    *(v23 + 8) = v17;
    sub_216683A80(v12, v8, &qword_27CABC3E0, &unk_21706C730);
    OUTLINED_FUNCTION_15_24();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_5_35();
    sub_216905D1C(v24, &qword_27CABC3E0, &unk_21706C730, v25);
    sub_216905D9C();
    sub_217009554();
    return sub_216699778(v12, &qword_27CABC3E0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC3E8, &unk_2170268D0);
    OUTLINED_FUNCTION_34();
    v27 = OUTLINED_FUNCTION_15_24();
    v28(v27);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_5_35();
    sub_216905D1C(v29, v30, v31, v32);
    sub_216905D9C();
    return sub_217009554();
  }
}

double sub_216902E08(uint64_t a1)
{
  v3 = sub_2170090F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2168FE8C4();
  result = 11.0;
  if (v7)
  {
    v9 = v1 + *(a1 + 48);
    v10 = *v9;
    if (*(v9 + 8) == 1)
    {
      v11 = *v9;
    }

    else
    {

      sub_21700ED94();
      v12 = sub_217009C34();
      sub_217007BC4();

      sub_2170090E4();
      swift_getAtKeyPath();
      sub_216684F5C(v10, 0);
      (*(v4 + 8))(v6, v3);
      v11 = v13[15];
    }

    result = 26.0;
    if (v11 < 2)
    {
      return 22.0;
    }
  }

  return result;
}

uint64_t sub_216902F80()
{
  if (sub_2168FE8C4())
  {

    return sub_21700ACF4();
  }

  else
  {

    return sub_21700AD14();
  }
}

uint64_t sub_216902FC4(uint64_t a1)
{
  v3 = sub_2170090F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 48);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = *v7;
  }

  else
  {

    sub_21700ED94();
    v10 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v8, 0);
    (*(v4 + 8))(v6, v3);
    v9 = v12[15];
  }

  if (v9 >= 2 && sub_2168FE8C4())
  {
    if (qword_27CAB5A08 == -1)
    {
    }

    goto LABEL_10;
  }

  if (qword_27CAB5A00 != -1)
  {
LABEL_10:
    swift_once();
  }
}

BOOL sub_2169031B4()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
    v6 = *(v0 + 8);
  }

  else
  {

    sub_21700ED94();
    v7 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v5, 0);
    (*(v2 + 8))(v4, v1);
    v6 = *&v9[1];
  }

  return v6 <= 592.0;
}

void sub_21690333C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_14_24(a1, a2, a3, a4);
  v4 = OUTLINED_FUNCTION_9_36();

  sub_2168FDF90(v4, v5, v6, v7, v8);
}

unint64_t sub_2169033A0()
{
  result = qword_27CABC138;
  if (!qword_27CABC138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC128, &qword_2170265B0);
    sub_21690342C();
    sub_2167B8760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC138);
  }

  return result;
}

unint64_t sub_21690342C()
{
  result = qword_27CABC140;
  if (!qword_27CABC140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC148, &qword_2170265C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC150, &qword_2170265D0);
    sub_21669E098(&qword_27CABC158, &qword_27CABC150, &qword_2170265D0, MEMORY[0x277CE1198]);
    sub_2168384AC();
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_27CABC160, &qword_27CABC168, &qword_2170265D8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC140);
  }

  return result;
}

void sub_216903568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_14_24(a1, a2, a3, a4);
  v4 = OUTLINED_FUNCTION_9_36();

  sub_2168FE6FC(v4, v5, v6, v7, v8);
}

unint64_t sub_2169035CC()
{
  result = qword_27CABC170;
  if (!qword_27CABC170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC170);
  }

  return result;
}

uint64_t sub_216903620@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v2 - 8);
  v60 = &v48 - v3;
  v4 = sub_21700C444();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v59 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2170090F4();
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x28223BE20](v7);
  v49 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_217007474();
  v57 = *(v9 - 8);
  v58 = v9;
  MEMORY[0x28223BE20](v9);
  v53 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v56 = &v48 - v12;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC480, &unk_217026C40);
  MEMORY[0x28223BE20](v61);
  v55 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v54 = &v48 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v48 - v17;
  v19 = sub_21700C4B4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v48 - v24;
  sub_216683A80(v1, v18, &qword_27CABF770, &unk_21701A670);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_216699778(v18, &qword_27CABF770);
    v26 = 1;
    v27 = v61;
  }

  else
  {
    v52 = v5;
    (*(v20 + 32))(v25, v18, v19);
    (*(v20 + 16))(v22, v25, v19);
    v28 = type metadata accessor for StaticArtworkView(0);
    v29 = v1 + *(v28 + 28);
    v30 = *v29;
    if (*(v29 + 8) != 1)
    {

      sub_21700ED94();
      v31 = sub_217009C34();
      v48 = v4;
      v32 = v31;
      sub_217007BC4();

      v4 = v48;
      v33 = v49;
      sub_2170090E4();
      swift_getAtKeyPath();
      sub_216684F5C(v30, 0);
      (*(v50 + 8))(v33, v51);
    }

    v34 = v53;
    sub_216903CC8();
    sub_217007484();
    v35 = v1 + *(v28 + 20);
    v36 = v60;
    sub_216683A80(v35, v60, &qword_27CAB7530, &unk_21701A660);
    if (__swift_getEnumTagSinglePayload(v36, 1, v4) == 1)
    {
      v37 = v59;
      sub_21700C414();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v4);
      v27 = v61;
      if (EnumTagSinglePayload != 1)
      {
        sub_216699778(v36, &qword_27CAB7530);
      }
    }

    else
    {
      v37 = v59;
      (*(v52 + 32))(v59, v36, v4);
      v27 = v61;
    }

    v39 = v56;
    sub_2170073E4();
    (*(v52 + 8))(v37, v4);
    v41 = v57;
    v40 = v58;
    (*(v57 + 8))(v34, v58);
    v42 = sub_217009CE4();
    v43 = sub_217008A34();
    (*(v20 + 8))(v25, v19);
    v44 = v55;
    (*(v41 + 32))(v55, v39, v40);
    v45 = v44 + *(v27 + 36);
    *v45 = v43;
    *(v45 + 8) = v42;
    v46 = v54;
    sub_2167C5834(v44, v54, &qword_27CABC480, &unk_217026C40);
    sub_2167C5834(v46, v62, &qword_27CABC480, &unk_217026C40);
    v26 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v62, v26, 1, v27);
}

double sub_216903CC8()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StaticArtworkView(0);
  v6 = v0 + *(v5 + 28);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    v8 = *v6;
  }

  else
  {

    sub_21700ED94();
    v9 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v7, 0);
    (*(v2 + 8))(v4, v1);
    v8 = *&v11[1];
  }

  return v8 / *(v0 + *(v5 + 24));
}

void *sub_216903E40@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a4@<X8>)
{
  v7 = sub_2170093B4();
  v13 = 0;
  sub_216903F28(a1, a2 & 1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v15, __src, sizeof(v15));
  sub_216683A80(__dst, &v10, &qword_27CABC488, &qword_21706EB20);
  sub_216699778(v15, &qword_27CABC488);
  memcpy(&v12[7], __dst, 0x68uLL);
  v8 = v13;
  *a4 = v7;
  *(a4 + 8) = 0;
  *(a4 + 16) = v8;
  return memcpy((a4 + 17), v12, 0x6FuLL);
}

uint64_t sub_216903F28@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a4@<X8>)
{
  sub_21700DF14();
  sub_21700B554();
  sub_21700B544();
  sub_2170085D4();
  sub_21690406C(a1, a2 & 1);
  sub_21700B3B4();
  sub_2170083C4();
  v9[96] = 0;
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(&v9[7], __src, 0x58uLL);
  *a4 = 0;
  *(a4 + 8) = 0;
  memcpy((a4 + 9), v9, 0x5FuLL);
  memcpy(v12, __src, sizeof(v12));
  sub_216683A80(__dst, &v8, &qword_27CABC490, &qword_217026C50);
  return sub_216699778(v12, &qword_27CABC490);
}

double sub_21690406C(uint64_t a1, char a2)
{
  v4 = sub_2170090F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v8 = a1;
  }

  else
  {

    sub_21700ED94();
    v9 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(a1, 0);
    (*(v5 + 8))(v7, v4);
    v8 = v11[15];
  }

  result = 150.0;
  if (v8 < 2)
  {
    return 120.0;
  }

  return result;
}

uint64_t sub_2169041E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_100(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  a4();
  return sub_2170098D4();
}

uint64_t sub_216904288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v9 = OUTLINED_FUNCTION_100(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_34();
  (*(v11 + 16))(a5, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = a5 + *(result + 36);
  *v13 = 0x408F400000000000;
  *(v13 + 8) = 256;
  return result;
}

uint64_t sub_216904318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_216906698(a1, a2, type metadata accessor for ArtworkContentView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC4A0, &qword_217026C58);
  v4 = a2 + *(result + 36);
  *v4 = 0x408F400000000000;
  *(v4 + 8) = 256;
  return result;
}

uint64_t sub_216904384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = OUTLINED_FUNCTION_100(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_34();
  v9 = *(v8 + 16);

  return v9(a3, a1, v7);
}

double sub_216904418@<D0>(uint64_t a1@<X8>)
{
  sub_217009F84();
  v7.origin.x = OUTLINED_FUNCTION_2_44();
  CGRectGetMinX(v7);
  v8.origin.x = OUTLINED_FUNCTION_2_44();
  CGRectGetMinY(v8);
  v9.origin.x = OUTLINED_FUNCTION_2_44();
  CGRectGetWidth(v9);
  v10.origin.x = OUTLINED_FUNCTION_2_44();
  CGRectGetHeight(v10);
  sub_217009F54();
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  return result;
}

double sub_2169044E4@<D0>(uint64_t a1@<X8>)
{
  sub_216904418(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void (*sub_21690453C(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_217007EB4();
  return sub_2167CA09C;
}

uint64_t sub_2169045B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216906644();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_216904618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216906644();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_21690467C(uint64_t a1)
{
  v2 = sub_216906644();

  return MEMORY[0x282133738](a1, v2);
}

uint64_t sub_2169046C8(uint64_t a1)
{
  sub_217009D34();
  sub_217009D94();
  v1 = sub_217009E34();

  qword_27CABC118 = v1;
  return result;
}

uint64_t sub_21690470C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81D0, &unk_21701AFF0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  sub_217009D94();
  v3 = sub_217009D84();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = sub_217009DF4();
  result = sub_216699778(v2, &qword_27CAB81D0);
  qword_27CABC120 = v4;
  return result;
}

uint64_t sub_2169047E0()
{
  v1 = *(sub_21700C384() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_216EBEC0C(v2);
}

uint64_t sub_216904840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for ArtistDetailHeaderLockupView(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_216901484(v9, v5, v6, v7);
}

unint64_t sub_2169048E0()
{
  result = qword_27CABC1B0;
  if (!qword_27CABC1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC1A0, &qword_217026610);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC1B8, &unk_217026620);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABAA40, &unk_217014260);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC1C0, &qword_217026630);
    sub_216904A08();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_216904CB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC1B0);
  }

  return result;
}

unint64_t sub_216904A08()
{
  result = qword_27CABC1C8;
  if (!qword_27CABC1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC1C0, &qword_217026630);
    sub_21669E098(&qword_27CABC1D0, &qword_27CABC1D8, &qword_217026638, MEMORY[0x277CDE1F8]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC1E0, &qword_217026640);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC1E8, &qword_217026648);
    sub_216904B48();
    sub_216904C00();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC1C8);
  }

  return result;
}

unint64_t sub_216904B48()
{
  result = qword_27CABC1F0;
  if (!qword_27CABC1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC1E0, &qword_217026640);
    sub_21669E098(&qword_27CABC1F8, &unk_27CABC200, &unk_217026650, MEMORY[0x277D26978]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC1F0);
  }

  return result;
}

unint64_t sub_216904C00()
{
  result = qword_27CABC208;
  if (!qword_27CABC208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC1E8, &qword_217026648);
    sub_216904B48();
    sub_21669E098(&qword_280E2B380, &qword_27CABC210, &qword_21702A200, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC208);
  }

  return result;
}

unint64_t sub_216904CB8()
{
  result = qword_27CABC218;
  if (!qword_27CABC218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC220, &qword_217026660);
    sub_21669E098(&qword_27CABC228, &qword_27CABC230, &qword_217026668, MEMORY[0x277CDE1F8]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC238, &qword_217026670);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC240, &qword_217026678);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC248, &qword_217026680);
    sub_216904E34();
    swift_getOpaqueTypeConformance2();
    sub_216904F6C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC218);
  }

  return result;
}

unint64_t sub_216904E34()
{
  result = qword_27CABC250;
  if (!qword_27CABC250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC248, &qword_217026680);
    sub_216906924(&qword_27CABC258, type metadata accessor for StaticArtworkView, &unk_217026BF0);
    sub_216906924(&qword_280E2A6F0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC250);
  }

  return result;
}

uint64_t type metadata accessor for StaticArtworkView(uint64_t a1)
{
  result = qword_27CABC450;
  if (!qword_27CABC450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_216904F6C()
{
  result = qword_27CABC260;
  if (!qword_27CABC260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC240, &qword_217026678);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC248, &qword_217026680);
    sub_216904E34();
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_280E2B380, &qword_27CABC210, &qword_21702A200, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC260);
  }

  return result;
}

unint64_t sub_216905060()
{
  result = qword_27CABC268;
  if (!qword_27CABC268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC1A8, &qword_217026618);
    sub_21669E098(&qword_27CABC160, &qword_27CABC168, &qword_2170265D8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC268);
  }

  return result;
}

unint64_t sub_216905118()
{
  result = qword_27CABC270;
  if (!qword_27CABC270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC270);
  }

  return result;
}

unint64_t sub_21690516C()
{
  result = qword_27CABC280;
  if (!qword_27CABC280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC278, &qword_217026688);
    sub_21669E098(&qword_27CABC288, &unk_27CABC290, &unk_217026690, MEMORY[0x277D26A78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC280);
  }

  return result;
}

unint64_t sub_216905388()
{
  result = qword_27CABC2E0;
  if (!qword_27CABC2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC2D8, &qword_217026720);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC1E0, &qword_217026640);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC1E8, &qword_217026648);
    sub_216904B48();
    sub_216904C00();
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_27CABC2E8, &unk_27CABC2F0, &unk_217026728, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC2E0);
  }

  return result;
}

unint64_t sub_2169054F8()
{
  result = qword_27CABC300;
  if (!qword_27CABC300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC2F8, &qword_217026730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC238, &qword_217026670);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC240, &qword_217026678);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC248, &qword_217026680);
    sub_216904E34();
    swift_getOpaqueTypeConformance2();
    sub_216904F6C();
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_27CABC2E8, &unk_27CABC2F0, &unk_217026728, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC300);
  }

  return result;
}

uint64_t sub_216905668(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216905770()
{
  result = qword_27CABC340;
  if (!qword_27CABC340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC340);
  }

  return result;
}

unint64_t sub_2169057C4()
{
  result = qword_27CABC348;
  if (!qword_27CABC348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC348);
  }

  return result;
}

uint64_t sub_216905818()
{
  OUTLINED_FUNCTION_17_6();
  result = sub_217008FA4();
  *v0 = result;
  return result;
}

uint64_t sub_216905868()
{
  OUTLINED_FUNCTION_17_6();
  result = sub_2170090A4();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

unint64_t sub_2169058C8()
{
  result = qword_27CABC380;
  if (!qword_27CABC380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC378, &qword_2170267C0);
    sub_216905954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC380);
  }

  return result;
}

unint64_t sub_216905954()
{
  result = qword_27CABC388;
  if (!qword_27CABC388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC370, &qword_2170267B8);
    sub_216905A0C();
    sub_21669E098(&qword_280E2A730, &qword_27CAB8688, qword_2170272F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC388);
  }

  return result;
}

unint64_t sub_216905A0C()
{
  result = qword_27CABC390;
  if (!qword_27CABC390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC368, &qword_2170267B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC358, &qword_2170267A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB75D0, &qword_217017420);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7E88, &unk_217018BF0);
    sub_2167D95A8();
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_280E29AE8, &qword_27CAB75D0, &qword_217017420, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_280E2A6F8, &qword_27CAB7638, &unk_217017490, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC390);
  }

  return result;
}

unint64_t sub_216905B9C()
{
  result = qword_27CABC3B0;
  if (!qword_27CABC3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC3A0, &unk_2170268A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC3B8, &unk_2170268B0);
    sub_216905C64();
    swift_getOpaqueTypeConformance2();
    sub_2169057C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC3B0);
  }

  return result;
}

unint64_t sub_216905C64()
{
  result = qword_27CABC3C0;
  if (!qword_27CABC3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC3B8, &unk_2170268B0);
    sub_21669E098(&qword_27CABC3C8, &qword_27CABC3D0, &qword_21706C780, &unk_21702C8E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC3C0);
  }

  return result;
}

uint64_t sub_216905D1C(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_100(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    sub_2169057C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_216905D9C()
{
  result = qword_27CABC3F8;
  if (!qword_27CABC3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC3E8, &unk_2170268D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC400, &unk_21706C740);
    sub_2170091D4();
    sub_216905EC0();
    sub_216906924(&qword_27CABC420, MEMORY[0x277CDDE40], MEMORY[0x277CDDE38]);
    swift_getOpaqueTypeConformance2();
    sub_216905F78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC3F8);
  }

  return result;
}

unint64_t sub_216905EC0()
{
  result = qword_27CABC408;
  if (!qword_27CABC408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC400, &unk_21706C740);
    sub_21669E098(&qword_27CABC410, &qword_27CABC418, &unk_2170268E0, &unk_21702C8E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC408);
  }

  return result;
}

unint64_t sub_216905F78()
{
  result = qword_27CABC428;
  if (!qword_27CABC428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC430, &unk_21706C750);
    sub_21669E098(&qword_27CABC438, &qword_27CABC440, &qword_2170268F0, &unk_21702C8E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC428);
  }

  return result;
}

uint64_t sub_21690603C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21690607C(uint64_t result, int a2, int a3)
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

void sub_216906104(uint64_t a1)
{
  sub_2169063D0(319, &qword_280E2A390, MEMORY[0x277CD8460], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2169063D0(319, &unk_280E2A3A0, MEMORY[0x277D2B220], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2168AEB44(319, &qword_280E2B480, MEMORY[0x277D85048]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216906218(uint64_t a1)
{
  sub_2166D3380(319);
  if (v2 <= 0x3F)
  {
    sub_2168AEB44(319, &qword_280E2B480, MEMORY[0x277D85048]);
    if (v3 <= 0x3F)
    {
      sub_2168AEB44(319, &qword_280E2B468, MEMORY[0x277CDF310]);
      if (v4 <= 0x3F)
      {
        sub_2169063D0(319, &qword_280E2B450, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v5 <= 0x3F)
        {
          sub_2168AEB44(319, &qword_280E2B488, &_s9SizeClassON);
          if (v6 <= 0x3F)
          {
            sub_2166D9618(319);
            if (v7 <= 0x3F)
            {
              sub_216906434(319);
              if (v9 <= 0x3F)
              {
                type metadata accessor for CatalogPagePresenter(319, *(a1 + 16), *(a1 + 24), v8);
                if (v10 <= 0x3F)
                {
                  type metadata accessor for ObjectGraph(319);
                  if (v11 <= 0x3F)
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

void sub_2169063D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_216906434(uint64_t a1)
{
  if (!qword_280E2A5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC448, &qword_217026950);
    v1 = sub_21700AEE4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2A5A8);
    }
  }
}

uint64_t sub_2169064DC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216906560()
{
  result = qword_27CABC470;
  if (!qword_27CABC470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC470);
  }

  return result;
}

unint64_t sub_2169065B8()
{
  result = qword_27CABC478;
  if (!qword_27CABC478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC478);
  }

  return result;
}

unint64_t sub_216906644()
{
  result = qword_27CABC498;
  if (!qword_27CABC498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC498);
  }

  return result;
}

uint64_t sub_216906698(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

unint64_t sub_2169066FC()
{
  result = qword_27CABC4A8;
  if (!qword_27CABC4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC4A0, &qword_217026C58);
    sub_216906924(&qword_27CABC4B0, type metadata accessor for ArtworkContentView, &unk_217029960);
    sub_21669E098(&qword_27CABC2E8, &unk_27CABC2F0, &unk_217026728, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC4A8);
  }

  return result;
}

unint64_t sub_2169067E4()
{
  result = qword_27CABC4B8;
  if (!qword_27CABC4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC4C0, &qword_217026C60);
    sub_216906868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC4B8);
  }

  return result;
}

unint64_t sub_216906868()
{
  result = qword_27CABC4C8;
  if (!qword_27CABC4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC480, &unk_217026C40);
    sub_216906924(&qword_280E4A3F0, MEMORY[0x277CE43D0], MEMORY[0x277CE43B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC4C8);
  }

  return result;
}

uint64_t sub_216906924(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21690696C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_49();
  a19 = v21;
  a20 = v22;
  v188 = v20;
  sub_2170070F4();
  OUTLINED_FUNCTION_1();
  v185 = v24;
  v186[0] = v23;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_0();
  v184 = v25;
  OUTLINED_FUNCTION_4_1();
  sub_217007064();
  OUTLINED_FUNCTION_1();
  v182 = v27;
  v183 = v26;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_0();
  v181 = v28;
  OUTLINED_FUNCTION_4_1();
  sub_217007264();
  OUTLINED_FUNCTION_1();
  v179 = v30;
  v180 = v29;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6_0();
  v178 = v31;
  OUTLINED_FUNCTION_4_1();
  sub_217007324();
  OUTLINED_FUNCTION_1();
  v176 = v33;
  v177 = v32;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6_0();
  v175 = v34;
  OUTLINED_FUNCTION_4_1();
  sub_2170073D4();
  OUTLINED_FUNCTION_1();
  v173 = v36;
  v174 = v35;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6_0();
  v172 = v37;
  OUTLINED_FUNCTION_4_1();
  sub_21700C2F4();
  OUTLINED_FUNCTION_1();
  v170 = v39;
  v171 = v38;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_6_0();
  v169 = v40;
  OUTLINED_FUNCTION_4_1();
  v41 = sub_21700C644();
  v42 = OUTLINED_FUNCTION_0(v41, &a18);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v43);
  v44 = sub_21700C084();
  v45 = OUTLINED_FUNCTION_0(v44, &a15);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_6_0();
  v47 = OUTLINED_FUNCTION_8_0(v46);
  type metadata accessor for ShareURLDescriptor(v47);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v49);
  v50 = sub_21700BEA4();
  v51 = OUTLINED_FUNCTION_0(v50, &a10);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v52);
  v53 = sub_21700C994();
  v54 = OUTLINED_FUNCTION_0(v53, &v188);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v55);
  v56 = sub_21700C924();
  v57 = OUTLINED_FUNCTION_0(v56, v186);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v58);
  v59 = sub_21700BA44();
  v60 = OUTLINED_FUNCTION_0(v59, &v183);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v61);
  v62 = sub_217006B84();
  v63 = OUTLINED_FUNCTION_0(v62, &v180);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v64);
  v65 = sub_21700C254();
  v66 = OUTLINED_FUNCTION_0(v65, &v177);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_6_0();
  v68 = OUTLINED_FUNCTION_8_0(v67);
  v186[1] = type metadata accessor for SocialProfileDescriptor(v68);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_6_0();
  v187 = v70;
  v71 = OUTLINED_FUNCTION_4_1();
  v72 = type metadata accessor for MusicFriendsInviteDescriptor(v71);
  v73 = OUTLINED_FUNCTION_36(v72);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v74);
  v75 = sub_217006F54();
  v76 = OUTLINED_FUNCTION_0(v75, &v173);
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v77);
  v78 = sub_21700C554();
  v79 = OUTLINED_FUNCTION_0(v78, &v170);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_7();
  v82 = v81 - v80;
  v83 = sub_2170072A4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_7();
  v87 = v86 - v85;
  v88 = sub_21700C384();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_7();
  v92 = v91 - v90;
  v93 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_7();
  v97 = v96 - v95;
  type metadata accessor for ShareableMusicItem(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_7();
  v101 = v100 - v99;
  OUTLINED_FUNCTION_1_56();
  sub_21690A8A0(v188, v101, v102);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_17_3();
      v142(v92, v101, v88);
      sub_21700C344();
      OUTLINED_FUNCTION_31_22();
      v106 = v92;
      goto LABEL_27;
    case 2u:
      OUTLINED_FUNCTION_35_16();
      v129(v87, v101, v83);
      sub_217007284();
      (*(v88 + 8))(v87, v83);
      goto LABEL_29;
    case 3u:
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_64_0();
      v137(v134, v135, v136);
      sub_21700C4E4();
      OUTLINED_FUNCTION_31_22();
      v106 = v82;
      goto LABEL_27;
    case 4u:
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_18_21();
      OUTLINED_FUNCTION_64_0();
      v121(v118, v119, v120);
      sub_217006F04();
      goto LABEL_26;
    case 5u:
      OUTLINED_FUNCTION_15_25();
      OUTLINED_FUNCTION_43_15(v101, &v174, v147);
      v122 = v187;
      sub_21690A8A0(v97, v187, type metadata accessor for SocialProfileDescriptor);
      OUTLINED_FUNCTION_14_25();
      sub_216908D6C(v97, v148);
      goto LABEL_19;
    case 6u:
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_18_21();
      OUTLINED_FUNCTION_64_0();
      v155(v152, v153, v154);
      sub_21700C234();
      goto LABEL_26;
    case 7u:
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_18_21();
      OUTLINED_FUNCTION_64_0();
      v141(v138, v139, v140);
      sub_217006B24();
      goto LABEL_26;
    case 8u:
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_18_21();
      OUTLINED_FUNCTION_64_0();
      v165(v162, v163, v164);
      sub_21700B9F4();
      goto LABEL_26;
    case 9u:
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_18_21();
      OUTLINED_FUNCTION_64_0();
      v128(v125, v126, v127);
      sub_21700C7C4();
      goto LABEL_26;
    case 0xAu:
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_18_21();
      OUTLINED_FUNCTION_64_0();
      v161(v158, v159, v160);
      sub_21700C954();
      goto LABEL_26;
    case 0xBu:
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_18_21();
      OUTLINED_FUNCTION_64_0();
      v117(v114, v115, v116);
      sub_21700BE64();
      goto LABEL_26;
    case 0xCu:
      OUTLINED_FUNCTION_13_20();
      v122 = v168;
      sub_2169090CC(v101, v168, v123);
      sub_217005DE4();
      sub_21700BA64();
      v124 = type metadata accessor for ShareURLDescriptor;
      goto LABEL_20;
    case 0xDu:
      OUTLINED_FUNCTION_12_29();
      v122 = v187;
      sub_2169090CC(v101, v187, v151);
LABEL_19:
      sub_21700DF14();
      v124 = type metadata accessor for SocialProfileDescriptor;
LABEL_20:
      sub_216908D6C(v122, v124);
      goto LABEL_29;
    case 0xEu:
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_18_21();
      OUTLINED_FUNCTION_64_0();
      v113(v110, v111, v112);
      sub_21700BFF4();
      goto LABEL_26;
    case 0xFu:
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_18_21();
      OUTLINED_FUNCTION_64_0();
      v133(v130, v131, v132);
      sub_21700C604();
      goto LABEL_26;
    case 0x10u:
      v97 = v169;
      v108 = OUTLINED_FUNCTION_10_29();
      v88 = v171;
      v109(v108);
      sub_21700C2A4();
      goto LABEL_26;
    case 0x11u:
      v97 = v172;
      v143 = OUTLINED_FUNCTION_10_29();
      v88 = v174;
      v144(v143);
      sub_217007374();
      goto LABEL_26;
    case 0x12u:
      v97 = v175;
      v156 = OUTLINED_FUNCTION_10_29();
      v88 = v177;
      v157(v156);
      sub_2170072C4();
      goto LABEL_26;
    case 0x13u:
      v97 = v178;
      v166 = OUTLINED_FUNCTION_10_29();
      v88 = v180;
      v167(v166);
      sub_217007214();
      goto LABEL_26;
    case 0x14u:
      v97 = v181;
      v145 = OUTLINED_FUNCTION_10_29();
      v88 = v183;
      v146(v145);
      sub_217007024();
      goto LABEL_26;
    case 0x15u:
      v97 = v184;
      v149 = OUTLINED_FUNCTION_10_29();
      v88 = v186[0];
      v150(v149);
      sub_2170070B4();
LABEL_26:
      OUTLINED_FUNCTION_31_22();
      v106 = v97;
LABEL_27:
      v107 = v88;
      break;
    default:
      v103 = OUTLINED_FUNCTION_10_29();
      v104(v103);
      sub_21700C164();
      OUTLINED_FUNCTION_31_22();
      v106 = v97;
      v107 = v93;
      break;
  }

  v105(v106, v107);
LABEL_29:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_21690764C()
{
  type metadata accessor for ShareableMusicItem(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  v4 = v3 - v2;
  OUTLINED_FUNCTION_1_56();
  sub_21690A8A0(v0, v4, v5);
  swift_getEnumCaseMultiPayload();
  sub_216908D6C(v4, type metadata accessor for ShareableMusicItem);
  return OUTLINED_FUNCTION_227();
}

void static ShareableMusicItem.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_49();
  a19 = v21;
  a20 = v22;
  v278 = v23;
  v279[0] = v24;
  sub_2170070F4();
  OUTLINED_FUNCTION_1();
  v274 = v26;
  v275 = v25;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v27);
  sub_217007064();
  OUTLINED_FUNCTION_1();
  v272 = v29;
  v273 = v28;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v30);
  sub_217007264();
  OUTLINED_FUNCTION_1();
  v270 = v32;
  v271 = v31;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v33);
  sub_217007324();
  OUTLINED_FUNCTION_1();
  v268 = v35;
  v269 = v34;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v36);
  sub_2170073D4();
  OUTLINED_FUNCTION_1();
  v266 = v38;
  v267 = v37;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v39);
  sub_21700C2F4();
  OUTLINED_FUNCTION_1();
  v264 = v41;
  v265 = v40;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v42);
  sub_21700C644();
  OUTLINED_FUNCTION_1();
  v262 = v44;
  v263 = v43;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v45);
  sub_21700C084();
  OUTLINED_FUNCTION_1();
  v260 = v47;
  v261 = v46;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_6_0();
  v49 = OUTLINED_FUNCTION_8_0(v48);
  v50 = type metadata accessor for SocialProfileDescriptor(v49);
  v51 = OUTLINED_FUNCTION_36(v50);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_6_0();
  v53 = OUTLINED_FUNCTION_8_0(v52);
  v54 = type metadata accessor for ShareURLDescriptor(v53);
  v55 = OUTLINED_FUNCTION_36(v54);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v56);
  v259 = sub_21700BEA4();
  OUTLINED_FUNCTION_1();
  v258 = v57;
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v59);
  v60 = sub_21700C994();
  v61 = OUTLINED_FUNCTION_0(v60, &a17);
  v256 = v62;
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v63);
  v64 = sub_21700C924();
  v65 = OUTLINED_FUNCTION_0(v64, &a15);
  v255[7] = v66;
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v67);
  v68 = sub_21700BA44();
  v69 = OUTLINED_FUNCTION_0(v68, &a13);
  v255[5] = v70;
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v71);
  v72 = sub_217006B84();
  v73 = OUTLINED_FUNCTION_0(v72, &a11);
  v255[3] = v74;
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v75);
  v76 = sub_21700C254();
  v77 = OUTLINED_FUNCTION_0(v76, &a9);
  v255[1] = v78;
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_6_0();
  v80 = OUTLINED_FUNCTION_8_0(v79);
  v81 = type metadata accessor for MusicFriendsInviteDescriptor(v80);
  v82 = OUTLINED_FUNCTION_36(v81);
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v83);
  v84 = sub_217006F54();
  v85 = OUTLINED_FUNCTION_0(v84, v279);
  v254 = v86;
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v87);
  v88 = sub_21700C554();
  v89 = OUTLINED_FUNCTION_0(v88, &v277);
  v252 = v90;
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v91);
  v92 = sub_2170072A4();
  v93 = OUTLINED_FUNCTION_0(v92, &v275);
  v251[3] = v94;
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v95);
  v96 = sub_21700C384();
  v97 = OUTLINED_FUNCTION_0(v96, &v273);
  v251[1] = v98;
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v99);
  sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v276 = v101;
  v277 = v100;
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_6_0();
  v103 = OUTLINED_FUNCTION_8_0(v102);
  v104 = type metadata accessor for ShareableMusicItem(v103);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v121);
  v123 = &v245 - v122;
  MEMORY[0x28223BE20](v124);
  v126 = &v245 - v125;
  MEMORY[0x28223BE20](v127);
  v129 = &v245 - v128;
  MEMORY[0x28223BE20](v130);
  v132 = &v245 - v131;
  MEMORY[0x28223BE20](v133);
  v135 = &v245 - v134;
  MEMORY[0x28223BE20](v136);
  v138 = &v245 - v137;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC4E0, &unk_217026C70);
  OUTLINED_FUNCTION_36(v139);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v140);
  OUTLINED_FUNCTION_38_13();
  v142 = *(v141 + 56);
  sub_21690A8A0(v278, v20, type metadata accessor for ShareableMusicItem);
  v278 = v142;
  sub_21690A8A0(v279[0], v20 + v142, type metadata accessor for ShareableMusicItem);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v189 = OUTLINED_FUNCTION_0_68();
      sub_21690A8A0(v189, v135, v190);
      if (OUTLINED_FUNCTION_21_23() == 1)
      {
        OUTLINED_FUNCTION_17_3();
        v191 = v247;
        OUTLINED_FUNCTION_31_13();
        v192();
        sub_21700C334();
        OUTLINED_FUNCTION_37_19();
        v104(v191, v129);
        v161 = v135;
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_67();
      v236 = v135;
      v238 = &v273;
      goto LABEL_73;
    case 2u:
      v170 = OUTLINED_FUNCTION_0_68();
      sub_21690A8A0(v170, v132, v171);
      if (OUTLINED_FUNCTION_21_23() == 2)
      {
        OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_23_18();
        OUTLINED_FUNCTION_31_13();
        v172();
        sub_217007274();
        OUTLINED_FUNCTION_37_19();
        v173 = OUTLINED_FUNCTION_25_19();
        (v104)(v173);
        v161 = v132;
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_67();
      v236 = v132;
      v238 = &v275;
      goto LABEL_73;
    case 3u:
      v178 = OUTLINED_FUNCTION_0_68();
      sub_21690A8A0(v178, v129, v179);
      if (OUTLINED_FUNCTION_21_23() == 3)
      {
        v180 = v252;
        v181 = v248;
        v182 = v253;
        (*(v252 + 32))(v248, v104 + v20, v253);
        sub_21700C4D4();
        v183 = *(v180 + 8);
        v183(v181, v182);
        v184 = v129;
        v185 = v182;
        goto LABEL_80;
      }

      OUTLINED_FUNCTION_67();
      v236 = v129;
      v238 = &v277;
      goto LABEL_73;
    case 4u:
      v157 = OUTLINED_FUNCTION_0_68();
      sub_21690A8A0(v157, v126, v158);
      if (OUTLINED_FUNCTION_21_23() == 4)
      {
        OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_23_18();
        OUTLINED_FUNCTION_31_13();
        v159();
        sub_217006EF4();
        OUTLINED_FUNCTION_37_19();
        v160 = OUTLINED_FUNCTION_25_19();
        (v104)(v160);
        v161 = v126;
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_67();
      v236 = v126;
      v238 = v279;
      goto LABEL_73;
    case 5u:
      v201 = OUTLINED_FUNCTION_0_68();
      sub_21690A8A0(v201, v123, v202);
      if (OUTLINED_FUNCTION_21_23() == 5)
      {
        OUTLINED_FUNCTION_15_25();
        OUTLINED_FUNCTION_43_15(v104 + v20, v251, v203);
        static MusicFriendsInviteDescriptor.== infix(_:_:)(v123, v129);
        v204 = type metadata accessor for MusicFriendsInviteDescriptor;
        sub_216908D6C(v129, type metadata accessor for MusicFriendsInviteDescriptor);
        v205 = v123;
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_14_25();
      v241 = v123;
      goto LABEL_68;
    case 6u:
      v215 = OUTLINED_FUNCTION_0_68();
      OUTLINED_FUNCTION_33_18(v215, &v256, v216);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_23_18();
        OUTLINED_FUNCTION_64_0();
        v217();
        OUTLINED_FUNCTION_27_0();
        sub_21700C224();
        v218 = *(v138 + 1);
        v218(v135, v104);
        v218(v123, v104);
        goto LABEL_50;
      }

      v236 = OUTLINED_FUNCTION_22_27();
      v238 = &a9;
      goto LABEL_73;
    case 7u:
      v186 = OUTLINED_FUNCTION_0_68();
      OUTLINED_FUNCTION_33_18(v186, &v257, v187);
      if (OUTLINED_FUNCTION_21_23() == 7)
      {
        OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_23_18();
        OUTLINED_FUNCTION_31_13();
        v188();
        OUTLINED_FUNCTION_27_0();
        sub_217006B14();
        goto LABEL_48;
      }

      v236 = OUTLINED_FUNCTION_22_27();
      v238 = &a11;
      goto LABEL_73;
    case 8u:
      v226 = OUTLINED_FUNCTION_0_68();
      OUTLINED_FUNCTION_33_18(v226, &v258, v227);
      if (OUTLINED_FUNCTION_21_23() == 8)
      {
        OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_23_18();
        OUTLINED_FUNCTION_31_13();
        v228();
        OUTLINED_FUNCTION_27_0();
        sub_21700B9E4();
        goto LABEL_48;
      }

      v236 = OUTLINED_FUNCTION_22_27();
      v238 = &a13;
      goto LABEL_73;
    case 9u:
      v167 = OUTLINED_FUNCTION_0_68();
      OUTLINED_FUNCTION_33_18(v167, &v259, v168);
      if (OUTLINED_FUNCTION_21_23() == 9)
      {
        OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_23_18();
        OUTLINED_FUNCTION_31_13();
        v169();
        OUTLINED_FUNCTION_27_0();
        sub_21700C7B4();
        goto LABEL_48;
      }

      v236 = OUTLINED_FUNCTION_22_27();
      v238 = &a15;
      goto LABEL_73;
    case 0xAu:
      v223 = OUTLINED_FUNCTION_0_68();
      OUTLINED_FUNCTION_33_18(v223, &v260, v224);
      if (OUTLINED_FUNCTION_21_23() == 10)
      {
        OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_23_18();
        OUTLINED_FUNCTION_31_13();
        v225();
        OUTLINED_FUNCTION_27_0();
        sub_21700C944();
        goto LABEL_48;
      }

      v236 = OUTLINED_FUNCTION_22_27();
      v238 = &a17;
LABEL_73:
      v234 = *(v238 - 32);
      goto LABEL_76;
    case 0xBu:
      v153 = OUTLINED_FUNCTION_0_68();
      OUTLINED_FUNCTION_33_18(v153, &v261, v154);
      if (OUTLINED_FUNCTION_21_23() == 11)
      {
        OUTLINED_FUNCTION_17_3();
        v155 = OUTLINED_FUNCTION_23_18();
        v129 = v259;
        v156(v155);
        OUTLINED_FUNCTION_27_0();
        sub_21700BE54();
        goto LABEL_48;
      }

      v236 = OUTLINED_FUNCTION_22_27();
      v234 = v259;
      goto LABEL_76;
    case 0xCu:
      v162 = OUTLINED_FUNCTION_0_68();
      v163 = v249;
      sub_21690A8A0(v162, v249, v164);
      if (OUTLINED_FUNCTION_21_23() == 12)
      {
        OUTLINED_FUNCTION_13_20();
        OUTLINED_FUNCTION_43_15(v104 + v20, &v254, v165);
        OUTLINED_FUNCTION_227();
        static ShareURLDescriptor.== infix(_:_:)();
        v166 = type metadata accessor for ShareURLDescriptor;
        goto LABEL_36;
      }

      v239 = type metadata accessor for ShareURLDescriptor;
      goto LABEL_67;
    case 0xDu:
      v210 = OUTLINED_FUNCTION_0_68();
      v163 = v250;
      sub_21690A8A0(v210, v250, v211);
      if (OUTLINED_FUNCTION_21_23() == 13)
      {
        OUTLINED_FUNCTION_12_29();
        OUTLINED_FUNCTION_43_15(v104 + v20, v255, v212);
        v213 = OUTLINED_FUNCTION_227();
        static SocialProfileDescriptor.== infix(_:_:)(v213, v214);
        v166 = type metadata accessor for SocialProfileDescriptor;
LABEL_36:
        v204 = v166;
        sub_216908D6C(v129, v166);
        v205 = v163;
LABEL_37:
        sub_216908D6C(v205, v204);
        goto LABEL_50;
      }

      v239 = type metadata accessor for SocialProfileDescriptor;
LABEL_67:
      v240 = v239;
      v241 = v163;
LABEL_68:
      sub_216908D6C(v241, v240);
      goto LABEL_77;
    case 0xEu:
      v149 = OUTLINED_FUNCTION_0_68();
      OUTLINED_FUNCTION_33_18(v149, &v264, v150);
      if (OUTLINED_FUNCTION_21_23() == 14)
      {
        v129 = v261;
        OUTLINED_FUNCTION_9_37();
        v151 = OUTLINED_FUNCTION_19_24();
        v152(v151);
        OUTLINED_FUNCTION_27_0();
        sub_21700BFE4();
        goto LABEL_48;
      }

      v235 = v260;
      v234 = v261;
      goto LABEL_75;
    case 0xFu:
      v174 = OUTLINED_FUNCTION_0_68();
      OUTLINED_FUNCTION_33_18(v174, &v265, v175);
      if (OUTLINED_FUNCTION_21_23() == 15)
      {
        v129 = v263;
        OUTLINED_FUNCTION_9_37();
        v176 = OUTLINED_FUNCTION_19_24();
        v177(v176);
        OUTLINED_FUNCTION_27_0();
        sub_21700C5F4();
        goto LABEL_48;
      }

      v235 = v262;
      v234 = v263;
      goto LABEL_75;
    case 0x10u:
      v145 = OUTLINED_FUNCTION_0_68();
      OUTLINED_FUNCTION_33_18(v145, &v266, v146);
      if (OUTLINED_FUNCTION_21_23() == 16)
      {
        v129 = v265;
        OUTLINED_FUNCTION_9_37();
        v147 = OUTLINED_FUNCTION_19_24();
        v148(v147);
        OUTLINED_FUNCTION_27_0();
        sub_21700C294();
        goto LABEL_48;
      }

      v235 = v264;
      v234 = v265;
      goto LABEL_75;
    case 0x11u:
      v193 = OUTLINED_FUNCTION_0_68();
      OUTLINED_FUNCTION_33_18(v193, &v267, v194);
      if (OUTLINED_FUNCTION_21_23() == 17)
      {
        v129 = v267;
        OUTLINED_FUNCTION_9_37();
        v195 = OUTLINED_FUNCTION_19_24();
        v196(v195);
        OUTLINED_FUNCTION_27_0();
        sub_217007364();
        goto LABEL_48;
      }

      v235 = v266;
      v234 = v267;
      goto LABEL_75;
    case 0x12u:
      v219 = OUTLINED_FUNCTION_0_68();
      OUTLINED_FUNCTION_33_18(v219, &v268, v220);
      if (OUTLINED_FUNCTION_21_23() == 18)
      {
        v129 = v269;
        OUTLINED_FUNCTION_9_37();
        v221 = OUTLINED_FUNCTION_19_24();
        v222(v221);
        OUTLINED_FUNCTION_27_0();
        sub_2170072B4();
        goto LABEL_48;
      }

      v235 = v268;
      v234 = v269;
      goto LABEL_75;
    case 0x13u:
      v229 = OUTLINED_FUNCTION_0_68();
      OUTLINED_FUNCTION_33_18(v229, &v269, v230);
      if (OUTLINED_FUNCTION_21_23() == 19)
      {
        v129 = v271;
        OUTLINED_FUNCTION_9_37();
        v231 = OUTLINED_FUNCTION_19_24();
        v232(v231);
        OUTLINED_FUNCTION_27_0();
        sub_217007204();
        goto LABEL_48;
      }

      v235 = v270;
      v234 = v271;
      goto LABEL_75;
    case 0x14u:
      v197 = OUTLINED_FUNCTION_0_68();
      OUTLINED_FUNCTION_33_18(v197, &v270, v198);
      if (OUTLINED_FUNCTION_21_23() == 20)
      {
        v129 = v273;
        OUTLINED_FUNCTION_9_37();
        v199 = OUTLINED_FUNCTION_19_24();
        v200(v199);
        OUTLINED_FUNCTION_27_0();
        sub_217007014();
        goto LABEL_48;
      }

      v235 = v272;
      v234 = v273;
      goto LABEL_75;
    case 0x15u:
      v206 = OUTLINED_FUNCTION_0_68();
      OUTLINED_FUNCTION_33_18(v206, &v271, v207);
      if (OUTLINED_FUNCTION_21_23() == 21)
      {
        v129 = v275;
        OUTLINED_FUNCTION_9_37();
        v208 = OUTLINED_FUNCTION_19_24();
        v209(v208);
        OUTLINED_FUNCTION_27_0();
        sub_2170070A4();
LABEL_48:
        OUTLINED_FUNCTION_37_19();
        v233 = OUTLINED_FUNCTION_25_19();
        (v104)(v233);
        v161 = v123;
LABEL_49:
        v104(v161, v129);
        goto LABEL_50;
      }

      v235 = v274;
      v234 = v275;
LABEL_75:
      v237 = *(v235 + 8);
      v236 = v123;
LABEL_76:
      v237(v236, v234);
      goto LABEL_77;
    default:
      v143 = OUTLINED_FUNCTION_0_68();
      sub_21690A8A0(v143, v138, v144);
      if (OUTLINED_FUNCTION_21_23())
      {
        (*(v276 + 8))(v138, v277);
LABEL_77:
        sub_216697664(v20, &qword_27CABC4E0, &unk_217026C70);
      }

      else
      {
        v243 = v276;
        v242 = v277;
        v244 = v246;
        (*(v276 + 32))(v246, v104 + v20, v277);
        sub_21700C154();
        v183 = *(v243 + 8);
        v183(v244, v242);
        v184 = OUTLINED_FUNCTION_227();
LABEL_80:
        v183(v184, v185);
LABEL_50:
        sub_216908D6C(v20, type metadata accessor for ShareableMusicItem);
      }

      OUTLINED_FUNCTION_26();
      return;
  }
}

uint64_t sub_216908D6C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

void static ShareURLDescriptor.== infix(_:_:)()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v4 = v3;
  v5 = sub_21700C4B4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  OUTLINED_FUNCTION_36(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC4E8, &qword_217026C80);
  OUTLINED_FUNCTION_36(v16);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_38_13();
  v19 = *(v18 + 56);
  sub_21690912C(v4, v0);
  sub_21690912C(v2, v0 + v19);
  OUTLINED_FUNCTION_5_3(v0);
  if (!v20)
  {
    sub_21690912C(v0, v15);
    OUTLINED_FUNCTION_5_3(v0 + v19);
    if (!v20)
    {
      (*(v7 + 32))(v11, v0 + v19, v5);
      OUTLINED_FUNCTION_28_22();
      sub_21690A7A0(v21, v22, MEMORY[0x277CD8478]);
      v23 = sub_21700E494();
      v24 = *(v7 + 8);
      v25 = OUTLINED_FUNCTION_25_19();
      v24(v25);
      (v24)(v15, v5);
      sub_216697664(v0, &qword_27CABF770, &unk_21701A670);
      if ((v23 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    (*(v7 + 8))(v15, v5);
LABEL_9:
    sub_216697664(v0, &qword_27CABC4E8, &qword_217026C80);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_5_3(v0 + v19);
  if (!v20)
  {
    goto LABEL_9;
  }

  sub_216697664(v0, &qword_27CABF770, &unk_21701A670);
LABEL_12:
  v26 = type metadata accessor for ShareURLDescriptor(0);
  v27 = *(v26 + 20);
  v28 = *(v4 + v27);
  v29 = *(v2 + v27);
  if (v28 == 23)
  {
    if (v29 != 23)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v38 = v28;
    if (v29 == 23)
    {
      goto LABEL_10;
    }

    v37 = v29;
    if (!static ContentKind.== infix(_:_:)(&v38, &v37))
    {
      goto LABEL_10;
    }
  }

  v30 = *(v26 + 24);
  v31 = (v4 + v30);
  v32 = *(v4 + v30 + 8);
  v33 = (v2 + v30);
  v34 = v33[1];
  if (v32)
  {
    if (v34)
    {
      v35 = *v31 == *v33 && v32 == v34;
      if (v35 || (sub_21700F7D4() & 1) != 0)
      {
        goto LABEL_26;
      }
    }
  }

  else if (!v34)
  {
LABEL_26:
    sub_217005E54();
  }

LABEL_10:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2169090CC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_21690912C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void ShareableMusicItem.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_49();
  a19 = v22;
  a20 = v23;
  v167 = v24;
  v168 = v20;
  sub_2170070F4();
  OUTLINED_FUNCTION_1();
  v165 = v26;
  v166 = v25;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6_0();
  v164 = v27;
  OUTLINED_FUNCTION_4_1();
  sub_217007064();
  OUTLINED_FUNCTION_1();
  v162 = v29;
  v163 = v28;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6_0();
  v161 = v30;
  OUTLINED_FUNCTION_4_1();
  sub_217007264();
  OUTLINED_FUNCTION_1();
  v159 = v32;
  v160 = v31;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_0();
  v158 = v33;
  OUTLINED_FUNCTION_4_1();
  sub_217007324();
  OUTLINED_FUNCTION_1();
  v156 = v35;
  v157 = v34;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_0();
  v155 = v36;
  OUTLINED_FUNCTION_4_1();
  sub_2170073D4();
  OUTLINED_FUNCTION_1();
  v153 = v38;
  v154 = v37;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6_0();
  v152 = v39;
  OUTLINED_FUNCTION_4_1();
  sub_21700C2F4();
  OUTLINED_FUNCTION_1();
  v150 = v41;
  v151 = v40;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6_0();
  v149 = v42;
  OUTLINED_FUNCTION_4_1();
  v148 = sub_21700C644();
  OUTLINED_FUNCTION_1();
  v147[1] = v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v45);
  v46 = sub_21700C084();
  v47 = OUTLINED_FUNCTION_0(v46, &a16);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_6_0();
  v49 = OUTLINED_FUNCTION_8_0(v48);
  v50 = type metadata accessor for SocialProfileDescriptor(v49);
  v51 = OUTLINED_FUNCTION_36(v50);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_6_0();
  v53 = OUTLINED_FUNCTION_8_0(v52);
  v54 = type metadata accessor for ShareURLDescriptor(v53);
  v55 = OUTLINED_FUNCTION_36(v54);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v56);
  v57 = sub_21700BEA4();
  v58 = OUTLINED_FUNCTION_0(v57, &a12);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v59);
  v60 = sub_21700C994();
  v61 = OUTLINED_FUNCTION_0(v60, &v169);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v62);
  v63 = sub_21700C924();
  v64 = OUTLINED_FUNCTION_0(v63, &v166);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v65);
  v66 = sub_21700BA44();
  v67 = OUTLINED_FUNCTION_0(v66, &v163);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v68);
  v69 = sub_217006B84();
  v70 = OUTLINED_FUNCTION_0(v69, &v160);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v71);
  v72 = sub_21700C254();
  v73 = OUTLINED_FUNCTION_0(v72, &v156);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_6_0();
  v75 = OUTLINED_FUNCTION_8_0(v74);
  v143 = type metadata accessor for MusicFriendsInviteDescriptor(v75);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v77);
  v78 = sub_217006F54();
  v79 = OUTLINED_FUNCTION_0(v78, &v152);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v80);
  v81 = sub_21700C554();
  v82 = OUTLINED_FUNCTION_0(v81, v147);
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_7();
  v85 = v84 - v83;
  v86 = sub_2170072A4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_38_13();
  v88 = sub_21700C384();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_7();
  v92 = v91 - v90;
  v93 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v95 = v94;
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_7();
  v99 = v98 - v97;
  type metadata accessor for ShareableMusicItem(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_7();
  v103 = v102 - v101;
  OUTLINED_FUNCTION_1_56();
  sub_21690A8A0(v168, v103, v104);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_35_16();
      v123(v92, v103, v88);
      MEMORY[0x21CEA0720](1);
      sub_21690A7A0(&unk_27CACA510, MEMORY[0x277CD8428], MEMORY[0x277CD8438]);
      OUTLINED_FUNCTION_34_2();
      sub_21700E434();
      (*(v95 + 8))(v92, v88);
      break;
    case 2u:
      OUTLINED_FUNCTION_35_16();
      v118(v21, v103, v86);
      MEMORY[0x21CEA0720](2);
      sub_21690A7A0(&qword_27CABC570, MEMORY[0x277D2AD30], MEMORY[0x277D2AD40]);
      OUTLINED_FUNCTION_34_2();
      sub_21700E434();
      (*(v95 + 8))(v21, v86);
      break;
    case 3u:
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_64_0();
      v121();
      MEMORY[0x21CEA0720](3);
      sub_21690A7A0(&qword_27CABC568, MEMORY[0x277CD84B0], MEMORY[0x277CD84C0]);
      OUTLINED_FUNCTION_34_2();
      sub_21700E434();
      (*(v86 + 8))(v85, v95);
      break;
    case 4u:
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_58_2();
      OUTLINED_FUNCTION_64_0();
      v112();
      MEMORY[0x21CEA0720](4);
      v107 = &unk_27CABC560;
      v108 = MEMORY[0x277D2AAF8];
      v109 = MEMORY[0x277D2AB08];
      goto LABEL_27;
    case 5u:
      OUTLINED_FUNCTION_15_25();
      sub_2169090CC(v103, v144, v128);
      v129 = v167;
      MEMORY[0x21CEA0720](5);
      SocialProfileDescriptor.hash(into:)(v129);
      if (*(v144 + *(v143 + 20) + 8))
      {
        sub_21700F914();
        sub_21700E614();
      }

      else
      {
        sub_21700F914();
      }

      if (*(v144 + *(v143 + 24) + 8))
      {
        sub_21700F914();
        sub_21700E614();
      }

      else
      {
        sub_21700F914();
      }

      OUTLINED_FUNCTION_14_25();
      v135 = v144;
      goto LABEL_34;
    case 6u:
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_58_2();
      OUTLINED_FUNCTION_64_0();
      v136();
      MEMORY[0x21CEA0720](6);
      v107 = &unk_27CABC558;
      v108 = MEMORY[0x277CD8320];
      v109 = MEMORY[0x277CD8330];
      goto LABEL_27;
    case 7u:
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_58_2();
      OUTLINED_FUNCTION_64_0();
      v122();
      MEMORY[0x21CEA0720](7);
      v107 = &unk_27CABC550;
      v108 = MEMORY[0x277D2A7C8];
      v109 = MEMORY[0x277D2A7D8];
      goto LABEL_27;
    case 8u:
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_58_2();
      OUTLINED_FUNCTION_64_0();
      v140();
      MEMORY[0x21CEA0720](8);
      v107 = &qword_27CABC548;
      v108 = MEMORY[0x277CD7E58];
      v109 = MEMORY[0x277CD7E68];
      goto LABEL_27;
    case 9u:
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_58_2();
      OUTLINED_FUNCTION_64_0();
      v117();
      MEMORY[0x21CEA0720](9);
      v107 = &unk_27CACA4B0;
      v108 = MEMORY[0x277CD8608];
      v109 = MEMORY[0x277CD8618];
      goto LABEL_27;
    case 0xAu:
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_58_2();
      OUTLINED_FUNCTION_64_0();
      v139();
      MEMORY[0x21CEA0720](10);
      v107 = &unk_27CABC540;
      v108 = MEMORY[0x277CD8658];
      v109 = MEMORY[0x277CD8668];
      goto LABEL_27;
    case 0xBu:
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_58_2();
      OUTLINED_FUNCTION_64_0();
      v111();
      MEMORY[0x21CEA0720](11);
      v107 = &unk_27CABC538;
      v108 = MEMORY[0x277CD7FA8];
      v109 = MEMORY[0x277CD7FB8];
      goto LABEL_27;
    case 0xCu:
      OUTLINED_FUNCTION_13_20();
      v113 = v145;
      sub_2169090CC(v103, v145, v114);
      v115 = v167;
      MEMORY[0x21CEA0720](12);
      ShareURLDescriptor.hash(into:)(v115);
      v116 = type metadata accessor for ShareURLDescriptor;
      goto LABEL_21;
    case 0xDu:
      OUTLINED_FUNCTION_12_29();
      v113 = v146;
      sub_2169090CC(v103, v146, v132);
      v133 = v167;
      MEMORY[0x21CEA0720](13);
      SocialProfileDescriptor.hash(into:)(v133);
      v116 = type metadata accessor for SocialProfileDescriptor;
LABEL_21:
      v134 = v116;
      v135 = v113;
LABEL_34:
      sub_216908D6C(v135, v134);
      break;
    case 0xEu:
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_58_2();
      OUTLINED_FUNCTION_64_0();
      v110();
      MEMORY[0x21CEA0720](14);
      v107 = &qword_27CABC530;
      v108 = MEMORY[0x277CD8238];
      v109 = MEMORY[0x277CD8250];
      goto LABEL_27;
    case 0xFu:
      OUTLINED_FUNCTION_17_3();
      v119 = OUTLINED_FUNCTION_58_2();
      v95 = v148;
      v120(v119);
      MEMORY[0x21CEA0720](15);
      v107 = &unk_27CABC528;
      v108 = MEMORY[0x277CD84F8];
      v109 = MEMORY[0x277CD8508];
      goto LABEL_27;
    case 0x10u:
      v88 = v149;
      v86 = v150;
      v105 = OUTLINED_FUNCTION_29_7();
      v95 = v151;
      v106(v105);
      MEMORY[0x21CEA0720](16);
      v107 = &unk_27CABC520;
      v108 = MEMORY[0x277CD83B8];
      v109 = MEMORY[0x277CD83C8];
      goto LABEL_27;
    case 0x11u:
      v88 = v152;
      v86 = v153;
      v124 = OUTLINED_FUNCTION_29_7();
      v95 = v154;
      v125(v124);
      MEMORY[0x21CEA0720](17);
      v107 = &unk_27CABC518;
      v108 = MEMORY[0x277D2ADE8];
      v109 = MEMORY[0x277D2ADF8];
      goto LABEL_27;
    case 0x12u:
      v88 = v155;
      v86 = v156;
      v137 = OUTLINED_FUNCTION_29_7();
      v95 = v157;
      v138(v137);
      MEMORY[0x21CEA0720](18);
      v107 = &unk_27CABC510;
      v108 = MEMORY[0x277D2AD78];
      v109 = MEMORY[0x277D2AD88];
      goto LABEL_27;
    case 0x13u:
      v88 = v158;
      v86 = v159;
      v141 = OUTLINED_FUNCTION_29_7();
      v95 = v160;
      v142(v141);
      MEMORY[0x21CEA0720](19);
      v107 = &unk_27CABC508;
      v108 = MEMORY[0x277D2ACE8];
      v109 = MEMORY[0x277D2ACF8];
      goto LABEL_27;
    case 0x14u:
      v88 = v161;
      v86 = v162;
      v126 = OUTLINED_FUNCTION_29_7();
      v95 = v163;
      v127(v126);
      MEMORY[0x21CEA0720](20);
      v107 = &unk_27CABC500;
      v108 = MEMORY[0x277D2AB98];
      v109 = MEMORY[0x277D2ABA8];
      goto LABEL_27;
    case 0x15u:
      v88 = v164;
      v86 = v165;
      v130 = OUTLINED_FUNCTION_29_7();
      v95 = v166;
      v131(v130);
      MEMORY[0x21CEA0720](21);
      v107 = &unk_27CABC4F8;
      v108 = MEMORY[0x277D2ABF0];
      v109 = MEMORY[0x277D2AC00];
LABEL_27:
      sub_21690A7A0(v107, v108, v109);
      OUTLINED_FUNCTION_34_2();
      sub_21700E434();
      (*(v86 + 8))(v88, v95);
      break;
    default:
      (*(v95 + 32))(v99, v103, v93);
      MEMORY[0x21CEA0720](0);
      sub_21690A7A0(&qword_27CACA4A0, MEMORY[0x277CD82C8], MEMORY[0x277CD82D8]);
      OUTLINED_FUNCTION_34_2();
      sub_21700E434();
      (*(v95 + 8))(v99, v93);
      break;
  }

  OUTLINED_FUNCTION_26();
}

uint64_t ShareURLDescriptor.contentKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ShareURLDescriptor(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t ShareURLDescriptor.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShareURLDescriptor(0) + 24));
  sub_21700DF14();
  return v1;
}

uint64_t ShareURLDescriptor.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareURLDescriptor(0) + 28);
  sub_217005EF4();
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t ShareURLDescriptor.hash(into:)(uint64_t a1)
{
  v3 = v1;
  v5 = sub_21700C4B4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_38_13();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v19[-v11];
  v13 = OUTLINED_FUNCTION_227();
  sub_21690912C(v13, v14);
  if (__swift_getEnumTagSinglePayload(v12, 1, v5) == 1)
  {
    sub_21700F914();
  }

  else
  {
    (*(v7 + 32))(v2, v12, v5);
    sub_21700F914();
    OUTLINED_FUNCTION_28_22();
    sub_21690A7A0(v15, v16, MEMORY[0x277CD8470]);
    sub_21700E434();
    (*(v7 + 8))(v2, v5);
  }

  v17 = type metadata accessor for ShareURLDescriptor(0);
  if (*(v3 + *(v17 + 20)) == 23)
  {
    sub_21700F914();
  }

  else
  {
    v19[15] = *(v3 + *(v17 + 20));
    sub_21700F914();
    ContentKind.hash(into:)(a1);
  }

  if (*(v3 + *(v17 + 24) + 8))
  {
    sub_21700F914();
    sub_21700E614();
  }

  else
  {
    sub_21700F914();
  }

  sub_217005EF4();
  sub_21690A7A0(&qword_27CACA4D0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  return sub_21700E434();
}

uint64_t sub_21690A6F0(uint64_t (*a1)(_BYTE *))
{
  sub_21700F8F4();
  a1(v3);
  return sub_21700F944();
}

uint64_t sub_21690A75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_21700F8F4();
  a4(v6);
  return sub_21700F944();
}

uint64_t sub_21690A7A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21690A8A0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t View.musicMetricsContext<A, B>(using:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  nullsub_1();
  v11 = v6;

  v7 = *(v5 + 96);
  v10[0] = *(v5 + 80);
  v10[1] = v7;
  v8 = type metadata accessor for MusicMetricsContextModifier(0, v10);
  MEMORY[0x21CE9B900](&v11, a2, v8, a3);
}

void sub_21690AA08(uint64_t a1)
{
  sub_2169110D0(319, &qword_280E2B4C0, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_2169109EC(319, &qword_280E2B4D0, &qword_27CAB7310, &unk_2170170F0, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_21690AB00(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21690AB00(uint64_t a1)
{
  if (!qword_280E45880)
  {
    v4[0] = type metadata accessor for FlowcaseLockup(255);
    v4[1] = sub_2166D4620(qword_280E43620, type metadata accessor for FlowcaseLockup, &unk_21702F2F8);
    v4[2] = &off_28293B340;
    v4[3] = sub_2166D4620(&qword_280E43608, type metadata accessor for FlowcaseLockup, &unk_21702C1F8);
    v2 = type metadata accessor for MappedItem(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_280E45880);
    }
  }
}

uint64_t sub_21690ABF8@<X0>(uint64_t a1@<X8>)
{
  v194 = a1;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC5D0, &qword_217026F50);
  OUTLINED_FUNCTION_1();
  v190 = v2;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v4);
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC5D8, &unk_217026F58);
  OUTLINED_FUNCTION_1();
  v191 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v7);
  v8 = type metadata accessor for FlowcaseLockupView(0);
  v9 = v8 - 8;
  *&v175 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  *(&v175 + 1) = v10;
  OUTLINED_FUNCTION_70(&EnumTagSinglePayload - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  OUTLINED_FUNCTION_36(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  v15 = OUTLINED_FUNCTION_36(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  OUTLINED_FUNCTION_36(v18);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v20);
  v202 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v200 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_70(&EnumTagSinglePayload - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_47_1();
  v201 = v27;
  v185 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_47_1();
  v197 = v30;
  v31 = type metadata accessor for FlowcaseLockup(0);
  v32 = (v31 - 8);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v36);
  v38 = &EnumTagSinglePayload - v37;
  MEMORY[0x28223BE20](v39);
  v41 = &EnumTagSinglePayload - v40;
  MEMORY[0x28223BE20](v42);
  v44 = &EnumTagSinglePayload - v43;
  MEMORY[0x28223BE20](v45);
  v47 = &EnumTagSinglePayload - v46;
  MEMORY[0x28223BE20](v48);
  v50 = &EnumTagSinglePayload - v49;
  v168 = type metadata accessor for FlowcaseLockupView.ContentView(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v51);
  v53 = &EnumTagSinglePayload - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC5E0, &qword_217026F68);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v55);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC5E8, &qword_217026F70);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v57);
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC5F0, &qword_217026F78);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v59);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC5F8, &qword_217026F80);
  OUTLINED_FUNCTION_1();
  v183 = v60;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_105();
  v199 = v62;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC600, &qword_217026F88);
  OUTLINED_FUNCTION_1();
  v180 = v63;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v65);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC608, &qword_217026F90);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v67);
  v68 = *(v9 + 32);
  v187 = v1;
  v69 = *(v1 + v68);
  sub_2167B56E8();
  sub_216DE9978();
  v70 = &v50[v32[15]];
  v71 = *(v70 + 1);
  *&v161 = *v70;
  *(&v161 + 1) = v71;
  sub_21700DF14();
  sub_2169107A0(v50, type metadata accessor for FlowcaseLockup);
  sub_216DE9978();
  v72 = &v47[v32[9]];
  v73 = *(v72 + 1);
  *&v160 = *v72;
  *(&v160 + 1) = v73;
  sub_21700DF14();
  sub_2169107A0(v47, type metadata accessor for FlowcaseLockup);
  sub_216DE9978();
  v74 = &v44[v32[10]];
  v75 = *(v74 + 1);
  v158 = *v74;
  v159 = v75;
  sub_21700DF14();
  sub_2169107A0(v44, type metadata accessor for FlowcaseLockup);
  sub_216DE9978();
  v157 = v41[v32[14]];
  sub_2169107A0(v41, type metadata accessor for FlowcaseLockup);
  v76 = v197;
  sub_216CCC250();
  v77 = v164;
  sub_216A8EA78(v164);
  v196 = *(v200 + 8);
  v197 = v200 + 8;
  v196(v76, v202);
  v78 = sub_217005EF4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v77, 1, v78);
  sub_2167FDB84(v77, &qword_27CABA820);
  sub_216DE9978();
  v79 = &v38[v32[11]];
  v80 = v79[1];
  v164 = *v79;
  sub_21700DF14();
  sub_2169107A0(v38, type metadata accessor for FlowcaseLockup);
  v81 = v162;
  sub_216DE9978();
  sub_216683A80(v81 + v32[20], v195, &qword_27CAB6D60, &qword_217014E40);
  sub_2169107A0(v81, type metadata accessor for FlowcaseLockup);
  v82 = v163;
  sub_216DE9978();
  v83 = v167;
  sub_216683A80(v82 + v32[12], v167, &qword_27CAB6D60, &qword_217014E40);
  sub_2169107A0(v82, type metadata accessor for FlowcaseLockup);
  v84 = v165;
  sub_216DE9978();
  v85 = (v84 + v32[13]);
  v86 = v84;
  v88 = *v85;
  v87 = v85[1];
  sub_21700DF14();
  sub_2169107A0(v86, type metadata accessor for FlowcaseLockup);
  v89 = v166;
  sub_216DE9978();
  v90 = v32[18];
  v91 = v171;
  sub_216683A80(v89 + v90, v171, &qword_27CAB6A00, &unk_217016B60);
  sub_2169107A0(v89, type metadata accessor for FlowcaseLockup);
  v92 = type metadata accessor for ContentDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v91, 1, v92) == 1)
  {
    sub_2167FDB84(v91, &qword_27CAB6A00);
    v93 = 23;
  }

  else
  {
    v93 = *v91;
    sub_2169107A0(v91, type metadata accessor for ContentDescriptor);
  }

  v94 = EnumTagSinglePayload != 1;
  v95 = v204;
  *v53 = v203;
  *(v53 + 1) = v95;
  *(v53 + 4) = v205;
  v96 = v161;
  *(v53 + 56) = v160;
  *(v53 + 40) = v96;
  v97 = v159;
  *(v53 + 9) = v158;
  *(v53 + 10) = v97;
  v53[88] = v157;
  v53[89] = v94;
  *(v53 + 12) = v164;
  *(v53 + 13) = v80;
  v98 = v168;
  sub_2167C5834(v195, &v53[*(v168 + 44)], &qword_27CAB6D60, &qword_217014E40);
  sub_2167C5834(v83, &v53[v98[12]], &qword_27CAB6D60, &qword_217014E40);
  v99 = &v53[v98[13]];
  *v99 = v88;
  *(v99 + 1) = v87;
  v53[v98[14]] = v93;
  v100 = &v53[v98[15]];
  *v100 = swift_getKeyPath();
  v100[8] = 0;
  *(&v204 + 1) = v202;
  v205 = sub_2166D4620(&qword_280E4A480, MEMORY[0x277D2A460], MEMORY[0x277D2A398]);
  __swift_allocate_boxed_opaque_existential_1Tm(&v203);
  sub_216CCC250();
  v101 = v172;
  v102 = (v172 + *(v169 + 36));
  sub_2167B7D58(&v203, (v102 + 2));
  type metadata accessor for MusicEntityAnnotationWrapper();
  sub_2166D4620(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper, &unk_2170370E0);
  *v102 = sub_217008CF4();
  v102[1] = v103;
  sub_21691046C(v53, v101, type metadata accessor for FlowcaseLockupView.ContentView);
  __swift_destroy_boxed_opaque_existential_1Tm(&v203);
  v104 = v101;
  v105 = p_EnumTagSinglePayload;
  sub_2167C5834(v104, p_EnumTagSinglePayload, &qword_27CABC5E0, &qword_217026F68);
  *(v105 + *(v170 + 36)) = xmmword_217026E20;
  v106 = v174;
  v107 = v174 + *(v198 + 36);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A90, &qword_21701ADD0);
  sub_217008C64();
  v195 = v69;
  if (qword_280E2C2C0 != -1)
  {
    swift_once();
  }

  v109 = sub_217008B34();
  v110 = __swift_project_value_buffer(v109, qword_280E73A88);
  sub_216910410(v110, v107, MEMORY[0x277CDFBC8]);
  *(v107 + *(v108 + 36)) = 0;
  v111 = sub_2167C5834(v105, v106, &qword_27CABC5E8, &qword_217026F70);
  p_EnumTagSinglePayload = &EnumTagSinglePayload;
  MEMORY[0x28223BE20](v111);
  v112 = v187;
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_26_1();
  v114 = v177;
  sub_216910410(v112, v177, type metadata accessor for FlowcaseLockupView);
  v115 = (*(v175 + 80) + 16) & ~*(v175 + 80);
  v116 = swift_allocObject();
  sub_21691046C(v114, v116 + v115, type metadata accessor for FlowcaseLockupView);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AA0, &qword_21701ADE0);
  *&v175 = type metadata accessor for ContextMenuPreview(0);
  *(&v175 + 1) = sub_21691051C();
  v177 = sub_21669E098(qword_280E2BAE8, &qword_27CAB8AA0, &qword_21701ADE0, &unk_217037028);
  v155 = sub_2166D4620(qword_280E3F158, type metadata accessor for ContextMenuPreview, &unk_217017238);
  v118 = v198;
  sub_21700A394();

  sub_2167FDB84(v106, &qword_27CABC5F0);
  v119 = v201;
  v120 = sub_216CCC250();
  v195 = &EnumTagSinglePayload;
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_26_1();
  v121 = v200;
  v122 = *(v200 + 16);
  v123 = v181;
  v124 = v202;
  v122(v181, v119, v202);
  LODWORD(v187) = (*(v121 + 88))(v123, v124) != *MEMORY[0x277D2A410];
  v196(v123, v124);
  v208 = v124;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v207);
  v122(boxed_opaque_existential_1Tm, v119, v124);
  v126 = v186;
  v122(v186, v119, v124);
  v127 = (*(v121 + 80) + 16) & ~*(v121 + 80);
  v128 = swift_allocObject();
  v129 = (*(v121 + 32))(v128 + v127, v126, v124);
  MEMORY[0x28223BE20](v129);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA000, &unk_21701F600);
  *&v203 = v118;
  *(&v203 + 1) = v117;
  v204 = v175;
  v205 = v177;
  v206 = v155;
  *&v154 = OUTLINED_FUNCTION_23_19();
  *(&v154 + 1) = sub_21686AF54();
  v131 = v184;
  v132 = v188;
  v133 = v199;
  sub_21700AA24();

  sub_2167FDB84(v207, &unk_27CABF7A0);
  *&v203 = v131;
  *(&v203 + 1) = v130;
  v204 = v154;
  v134 = OUTLINED_FUNCTION_23_19();
  v135 = v189;
  v136 = v193;
  sub_21700A724();
  (*(v190 + 8))(v132, v136);
  *&v203 = v136;
  *(&v203 + 1) = v134;
  OUTLINED_FUNCTION_23_19();
  v137 = v178;
  v138 = v192;
  sub_21700A8D4();
  (*(v191 + 8))(v135, v138);
  v196(v201, v124);
  (*(v183 + 8))(v133, v131);
  KeyPath = swift_getKeyPath();
  v140 = v179;
  (*(v180 + 32))(v179, v137, v182);
  v141 = v140 + *(v176 + 36);
  *v141 = KeyPath;
  *(v141 + 8) = 0;
  LOBYTE(KeyPath) = sub_217009C94();
  sub_217007F24();
  v143 = v142;
  v145 = v144;
  v147 = v146;
  v149 = v148;
  v150 = v140;
  v151 = v194;
  sub_2167C5834(v150, v194, &qword_27CABC608, &qword_217026F90);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC630, &unk_217026FF0);
  v153 = v151 + *(result + 36);
  *v153 = KeyPath;
  *(v153 + 8) = v143;
  *(v153 + 16) = v145;
  *(v153 + 24) = v147;
  *(v153 + 32) = v149;
  *(v153 + 40) = 0;
  return result;
}

uint64_t sub_21690BF7C@<X0>(uint64_t (**a1)()@<X8>)
{
  v28 = a1;
  v26 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v26);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for FlowcaseLockup(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MenuConfiguration(0);
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v25 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = sub_2170067A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  type metadata accessor for FlowcaseLockupView(0);
  sub_216CCC250();
  sub_216DE9978();
  swift_storeEnumTagMultiPayload();
  sub_2168A72B4();
  sub_2169107A0(v2, type metadata accessor for MenuContext);
  sub_2169107A0(v5, type metadata accessor for FlowcaseLockup);
  v18 = *(v12 + 32);
  v18(v14, v17, v11);
  v19 = v25;
  sub_21691046C(v10, v25, type metadata accessor for MenuConfiguration);
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = (v13 + *(v27 + 80) + v20) & ~*(v27 + 80);
  v22 = swift_allocObject();
  v18((v22 + v20), v14, v11);
  result = sub_21691046C(v19, v22 + v21, type metadata accessor for MenuConfiguration);
  v24 = v28;
  *v28 = sub_21680CDC8;
  v24[1] = v22;
  return result;
}