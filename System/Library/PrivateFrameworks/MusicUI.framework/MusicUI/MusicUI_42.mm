uint64_t sub_216ACD1C0()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_28();
  *v4 = v3;
  *v4 = *v1;
  v3[79] = v0;

  sub_21677A4C0(v3[32], v2[33], v2[34], v2[35]);

  v5 = v3[67];
  v6 = v3[66];
  if (v0)
  {
    v7 = sub_216ACD8A8;
  }

  else
  {
    v7 = sub_216ACD344;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_216ACD344()
{
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v4 = *(v0 + 344);
  v3 = *(v0 + 352);
  sub_216ACDA20(*(v0 + 657), v1);
  sub_21700D234();
  *(v0 + 80) = v2;
  *(v0 + 88) = sub_216ACDC4C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  sub_2169BC198(v1, boxed_opaque_existential_1);
  v6 = swift_task_alloc();
  *(v0 + 640) = v6;
  type metadata accessor for QueueMusicItemsActionImplementation(0, v4, v3, v7);
  swift_getWitnessTable();
  *v6 = v0;
  v6[1] = sub_216ACD470;

  return sub_216B6DB60();
}

uint64_t sub_216ACD470()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[81] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8_60();
    v9 = sub_216ACD960;
  }

  else
  {
    (*(v3[51] + 8))(v3[52], v3[50]);
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 7);
    OUTLINED_FUNCTION_8_60();
    v9 = sub_216ACD58C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216ACD58C()
{
  OUTLINED_FUNCTION_1_116();
  v1 = v0[50];
  v2 = v0[51];
  v3 = v0[46];
  v4 = v0[39];

  OUTLINED_FUNCTION_11_51();
  sub_2169BC1FC(v3);
  (*(v2 + 104))(v4, *MEMORY[0x277D21CA8], v1);
  OUTLINED_FUNCTION_9_58();

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t sub_216ACD684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_1_116();
  v14 = v12[63];
  v13 = v12[64];
  v16 = v12[58];
  v15 = v12[59];
  v17 = v12[57];
  v18 = v12[43];

  OUTLINED_FUNCTION_11_51();
  (*(v16 + 8))(v15, v17);
  (*(v14 + 8))(v13, v18);
  OUTLINED_FUNCTION_0_138();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_216ACD770()
{
  OUTLINED_FUNCTION_1_116();
  v1 = v0[63];
  v2 = v0[58];
  v9 = v0[59];
  v4 = v0[56];
  v3 = v0[57];
  v6 = v0[54];
  v5 = v0[55];
  v10 = v0[43];
  v11 = v0[64];

  OUTLINED_FUNCTION_11_51();
  (*(v5 + 8))(v4, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
  sub_2167AD91C((v0 + 12));
  (*(v2 + 8))(v9, v3);
  (*(v1 + 8))(v11, v10);
  OUTLINED_FUNCTION_0_138();

  OUTLINED_FUNCTION_3();

  return v7();
}

uint64_t sub_216ACD8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();

  OUTLINED_FUNCTION_11_51();

  OUTLINED_FUNCTION_0_138();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_216ACD960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_1_116();
  v13 = *(v12 + 368);

  OUTLINED_FUNCTION_11_51();
  sub_2169BC1FC(v13);
  __swift_destroy_boxed_opaque_existential_1Tm((v12 + 56));
  OUTLINED_FUNCTION_0_138();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_216ACDA20@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8E00, &qword_2170313E0);
  v5 = dword_217040A70[a1];

  return __swift_storeEnumTagSinglePayload(a2, v5, 11, v4);
}

uint64_t sub_216ACDA84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A4;

  return sub_216ACC534();
}

uint64_t sub_216ACDB4C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216ACDB88(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216ACDBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_216ED7B54(a1, a2, a3, WitnessTable);
}

unint64_t sub_216ACDC4C()
{
  result = qword_27CAB8E08;
  if (!qword_27CAB8E08)
  {
    type metadata accessor for NoticeAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8E08);
  }

  return result;
}

uint64_t sub_216ACDCA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DB0, &qword_217016C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216ACDE00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1D30, &qword_217040B08);
  if (swift_dynamicCast())
  {
    v6 = *(&v11 + 1);
    v7 = v12;
    __swift_project_boxed_opaque_existential_1(&v10, *(&v11 + 1));
    (*(v7 + 8))(v6, v7);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v10);
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    sub_216ACDF5C(&v10);
    v9 = type metadata accessor for Page.Header(0);
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v9);
  }
}

uint64_t sub_216ACDF5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1D38, &qword_217040B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216ACE054(uint64_t a1)
{
  result = sub_21668F138(&qword_27CAC1D40, type metadata accessor for PlayAction, &unk_217040B18);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for RoutedPageIntent(uint64_t a1)
{
  result = qword_27CAC1D48;
  if (!qword_27CAC1D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216ACE120(uint64_t a1)
{
  sub_216ACE1DC(319, &qword_280E44870, type metadata accessor for ReferrerInfo);
  if (v1 <= 0x3F)
  {
    sub_216ACE1DC(319, &qword_280E4A510, MEMORY[0x277CC9260]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216ACE1DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_216ACE278(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v11 = result;
    sub_2166F1DCC();
    v12 = type metadata accessor for RoutedPageIntent(0);
    v23 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1D68, &unk_217040C50);
    v13 = sub_21700E594();
    v25 = MEMORY[0x277D837D0];
    v23 = v13;
    v24 = v14;
    v15 = a1;
    v16 = sub_2166F1E10(&v23, a1);
    sub_2166F1F64(v16, 0x646E696B24, 0xE500000000000000);
    sub_216681B64(v2 + *(v12 + 20), v9, &qword_27CABA820, &unk_217018CE0);
    v17 = sub_217005EF4();
    if (__swift_getEnumTagSinglePayload(v9, 1, v17) == 1)
    {
      sub_21669987C(v9, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v18 = sub_217005DE4();
      v20 = v19;
      (*(*(v17 - 8) + 8))(v9, v17);
      v23 = v18;
      v24 = v20;
      sub_21700DD04();

      sub_21700F0B4();
    }

    sub_216681B64(v2, v6, &qword_27CAB6FD0, &qword_21701D5F0);
    v21 = type metadata accessor for ReferrerInfo(0);
    if (__swift_getEnumTagSinglePayload(v6, 1, v21) == 1)
    {
      sub_21669987C(v6, &qword_27CAB6FD0, &qword_21701D5F0);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(v15).super.isa;
      sub_2168CC340(v6);
    }

    sub_2166F1F64(isa, 0x7265727265666572, 0xEC0000006F666E49);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216ACE5D4(uint64_t a1)
{
  result = sub_2166CE5DC(&qword_27CAC1D58, type metadata accessor for RoutedPageIntent, &unk_217040B90);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216ACE674(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE5DC(&qword_27CAC1D58, type metadata accessor for RoutedPageIntent, &unk_217040B90);
  result = sub_2166CE5DC(&qword_27CAC1D60, type metadata accessor for RoutedPageIntent, &unk_217040B74);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for GenreContextMenu(uint64_t a1)
{
  result = qword_280E41210;
  if (!qword_280E41210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216ACE76C(uint64_t a1)
{
  sub_2167B83B4(319);
  if (v1 <= 0x3F)
  {
    sub_2167EE974(319);
    if (v2 <= 0x3F)
    {
      sub_21700C254();
      if (v3 <= 0x3F)
      {
        type metadata accessor for MenuConfiguration(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_216ACE83C()
{
  v1 = sub_2170075A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = var50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    v5 = type metadata accessor for GenreContextMenu(0);
    v6 = *(v5 + 24);

    sub_216C0C548(v7, v8, v9, v10, v11, v12, v13, v14, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
    v15 = sub_216C64F98(v0 + v6, v4, v0 + *(v5 + 28));

    (*(v2 + 8))(v4, v1);
    type metadata accessor for MenuBuilder();
    sub_216C647A0(v15);
  }

  else
  {
    type metadata accessor for MenuBuilder();
    sub_2167EE91C();
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

double sub_216ACEA00@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a2;
  v89 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0, &unk_21701A800);
  MEMORY[0x28223BE20](v5 - 8);
  v82 = &v78 - v6;
  v7 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10_54();
  v11 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v79 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v78 = &v78 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v78 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v78 - v22;
  v24 = sub_21700D7A4();
  OUTLINED_FUNCTION_9_59();
  sub_21700CE04();
  v81 = v9;
  v25 = *(v9 + 16);
  v91 = v7;
  v26 = v7;
  v27 = v13;
  v28 = v9 + 16;
  v88 = v25;
  v25(v3, v93, v26);
  v29 = a1;
  OUTLINED_FUNCTION_0_131();
  sub_21700CE04();
  v30 = v20;
  sub_21700CDB4();
  OUTLINED_FUNCTION_11_52();
  v32 = *(v27 + 8);
  v31 = v27 + 8;
  v33 = v20;
  v34 = v11;
  v90 = v32;
  v32(v33, v11);
  if (v24)
  {
    v35 = type metadata accessor for ContainerDetailHeaderLockup(0);
    v87 = v31;
    v36 = v35;
    *&v92 = v30;
    *(&v92 + 1) = v24;
    v37 = v89;
    sub_21700F364();
    type metadata accessor for ContentDescriptor(0);
    OUTLINED_FUNCTION_9_59();
    sub_21700CE04();
    v85 = v34;
    v38 = v88;
    v88(v3, v93, v91);
    v86 = v28;
    sub_216ACFCB4(qword_280E40390, type metadata accessor for ContentDescriptor);
    OUTLINED_FUNCTION_0_131();
    v39 = type metadata accessor for Artwork(0);
    sub_21700CE04();
    v38(v3, v93, v91);
    sub_216ACFCB4(&qword_280E2BF60, type metadata accessor for Artwork);
    OUTLINED_FUNCTION_0_131();
    v80 = v29;
    sub_21700CE04();
    sub_21700CDB4();
    OUTLINED_FUNCTION_11_52();
    v90(v23, v85);
    v40 = (v37 + v36[6]);
    *v40 = v23;
    v40[1] = v39;
    sub_21700CE04();
    v41 = v93;
    v42 = v91;
    v38(v3, v93, v91);
    sub_216AC6598();
    *(v37 + v36[7]) = v43;
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_9_59();
    sub_21700CE04();
    v38(v3, v41, v42);
    sub_216AC6598();
    *(v37 + v36[8]) = v44;
    sub_21700CE04();
    sub_21700CDB4();
    OUTLINED_FUNCTION_11_52();
    v45 = v85;
    v90(v23, v85);
    v46 = v36[9];
    v84 = v36;
    v47 = (v37 + v46);
    *v47 = v23;
    v47[1] = v41;
    type metadata accessor for ModalPresentationDescriptor(0);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_9_59();
    sub_21700CE04();
    v48 = v93;
    v88(v3, v93, v91);
    sub_216ACFCB4(&qword_27CAC1C70, type metadata accessor for ModalPresentationDescriptor);
    OUTLINED_FUNCTION_0_131();
    v49 = v78;
    sub_21700CE04();
    LOBYTE(v38) = sub_21700CD44();
    v90(v49, v45);
    *(v37 + v84[11]) = v38 & 1;
    type metadata accessor for VideoArtwork(0);
    sub_21700CE04();
    v88(v3, v48, v91);
    sub_216ACFCB4(qword_280E44448, type metadata accessor for VideoArtwork);
    v50 = v37;
    v78 = v3;
    sub_21700D734();
    v51 = v79;
    sub_21700CE04();
    v52 = v82;
    sub_21700CD74();
    v90(v51, v85);
    v53 = sub_21700E2C4();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v52, 1, v53);
    v55 = v93;
    v56 = v50;
    v57 = v88;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v82, &qword_27CAB78D0, &unk_21701A800);
      v58 = 0;
    }

    else
    {
      v67 = v82;
      v66 = v83;
      v58 = sub_21700E2A4();
      v83 = v66;
      (*(*(v53 - 8) + 8))(v67, v53);
    }

    *(v56 + v84[12]) = v58;
    type metadata accessor for LinkComponentModel(0);
    OUTLINED_FUNCTION_7_70(0x79616C70u);
    sub_21700CE04();
    v68 = v78;
    v69 = v55;
    v70 = v91;
    v57(v78, v69, v91);
    v82 = sub_216ACFCB4(&qword_280E3EC48, type metadata accessor for LinkComponentModel);
    OUTLINED_FUNCTION_6_64();
    sub_21700D734();
    sub_21700CE04();
    v71 = v88;
    v88(v68, v93, v70);
    v72 = v84;
    OUTLINED_FUNCTION_6_64();
    sub_21700D734();
    OUTLINED_FUNCTION_7_70(0x676E6973u);
    sub_21700CE04();
    v73 = v93;
    v71(v68, v93, v91);
    OUTLINED_FUNCTION_6_64();
    sub_21700D734();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_9_59();
    v74 = v80;
    sub_21700CE04();
    v75 = v73;
    v76 = v73;
    v77 = v91;
    v71(v68, v76, v91);
    sub_216AC7D00();
    sub_21700D734();
    (*(v81 + 8))(v75, v77);
    v90(v74, v85);
    result = *&v92;
    *(v89 + v72[13]) = v92;
  }

  else
  {
    v59 = sub_21700E2E4();
    OUTLINED_FUNCTION_0_139();
    sub_216ACFCB4(v60, v61);
    OUTLINED_FUNCTION_42_0();
    swift_allocError();
    v63 = v62;
    v64 = type metadata accessor for ContainerDetailHeaderLockup(0);
    *v63 = 25705;
    v63[1] = 0xE200000000000000;
    v63[2] = v64;
    (*(*(v59 - 8) + 104))(v63, *MEMORY[0x277D22530], v59);
    swift_willThrow();
    (*(v81 + 8))(v93, v91);
    v90(v29, v11);
    sub_216697664(v89, &qword_27CAB6D58, &unk_217014E30);
  }

  return result;
}

uint64_t sub_216ACF518@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30, &qword_217017F30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for ContainerDetailHeaderLockup(0);
  sub_216681B04(v1 + *(v6 + 68), v5, &qword_27CAB7A30, &qword_217017F30);
  v7 = type metadata accessor for LinkComponentModel(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) == 1)
  {
    result = sub_216697664(v5, &qword_27CAB7A30, &qword_217017F30);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    sub_216681B04(&v5[*(v7 + 24)], a1, &qword_27CAB6DB0, &qword_217016C00);
    return sub_216ACFCF8(v5);
  }

  return result;
}

uint64_t sub_216ACF634(uint64_t a1, uint64_t a2)
{
  v6 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10_54();
  sub_21700CE04();
  v10 = v3;
  sub_21700CDB4();
  OUTLINED_FUNCTION_11_52();
  v11 = *(v8 + 8);
  v11(v3, v6);
  if (!v2)
  {
    v10 = sub_21700E2E4();
    OUTLINED_FUNCTION_0_139();
    sub_216ACFCB4(v13, v14);
    OUTLINED_FUNCTION_42_0();
    swift_allocError();
    *v15 = 0x656C746974;
    v15[1] = 0xE500000000000000;
    v15[2] = &type metadata for ContainerDetailHeaderLockup.SiriBannerConfiguration;
    (*(*(v10 - 8) + 104))(v15, *MEMORY[0x277D22530], v10);
    swift_willThrow();
  }

  sub_21700CF34();
  OUTLINED_FUNCTION_34();
  (*(v12 + 8))(a2);
  v11(a1, v6);
  return v10;
}

uint64_t sub_216ACF860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_216ACF634(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t type metadata accessor for ContainerDetailHeaderLockup(uint64_t a1)
{
  result = qword_27CAC1D70;
  if (!qword_27CAC1D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216ACF900(uint64_t a1)
{
  sub_216689400(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_216688560(319, &qword_280E2A070, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_21668FAC0(319, &qword_280E29E70, &qword_27CAB8968, qword_21701A810);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_216689400(319, qword_280E33788, type metadata accessor for ModalPresentationDescriptor);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_21668FAC0(319, &qword_280E2A030, &qword_27CAB8950, &qword_217040120);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            sub_216688560(319, qword_280E33BC8, &type metadata for ContainerDetailHeaderLockup.SiriBannerConfiguration);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              sub_216689400(319, &qword_280E2BF20, type metadata accessor for Artwork);
              v2 = v14;
              if (v15 <= 0x3F)
              {
                sub_216689400(319, qword_280E44408, type metadata accessor for VideoArtwork);
                v2 = v16;
                if (v17 <= 0x3F)
                {
                  sub_216689400(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
                  v2 = v18;
                  if (v19 <= 0x3F)
                  {
                    sub_216689400(319, &qword_280E3EC00, type metadata accessor for LinkComponentModel);
                    v2 = v20;
                    if (v21 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                      return 0;
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

  return v2;
}

uint64_t sub_216ACFC14(uint64_t a1)
{
  result = sub_216ACFCB4(&qword_27CAC1D80, type metadata accessor for ContainerDetailHeaderLockup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216ACFCB4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_42_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_216ACFCF8(uint64_t a1)
{
  v2 = type metadata accessor for LinkComponentModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216ACFD68(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[25])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216ACFDA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

_BYTE *sub_216ACFE04(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_216ACFEE0()
{
  result = qword_27CAC1D90;
  if (!qword_27CAC1D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1D90);
  }

  return result;
}

uint64_t sub_216ACFF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  return result;
}

void sub_216ACFFF8()
{
  OUTLINED_FUNCTION_22_3();
  v76 = v1;
  v73 = v3;
  v74 = v2;
  v78 = v4;
  v5 = *v0;
  v6 = type metadata accessor for SectionContent(0);
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_77();
  v70 = v8 - v9;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v10);
  v69 = &v64 - v11;
  v12 = _s7SectionVMa(0);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v68 = v15 - v14;
  v16 = *(v5 + 80);
  v75 = v0;
  v77 = *(v5 + 88);
  type metadata accessor for PageUpdateDescriptor(0, v16, v77, v17);
  OUTLINED_FUNCTION_16();
  v71 = v19;
  v72 = v18;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_77();
  v67 = (v20 - v21);
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v22);
  v66 = &v64 - v23;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v24);
  v65 = &v64 - v25;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v26);
  v64 = &v64 - v27;
  type metadata accessor for SectionChangeInstruction.Instruction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7();
  v29 = sub_21700F164();
  OUTLINED_FUNCTION_16();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v64 - v33;
  OUTLINED_FUNCTION_16();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_77();
  v40 = v38 - v39;
  v42 = MEMORY[0x28223BE20](v41);
  v44 = &v64 - v43;
  (*(v31 + 16))(v34, v78, v29, v42);
  if (__swift_getEnumTagSinglePayload(v34, 1, v16) == 1)
  {
    (*(v31 + 8))(v34, v29);
    v46 = type metadata accessor for SectionChangeInstructionPerformer.SectionChangeInstructionUpdateError(0, v16, v77, v45);
    v47 = OUTLINED_FUNCTION_10_55(v46);
    OUTLINED_FUNCTION_4(v47);
    *v48 = 0;
    swift_willThrow();
  }

  else
  {
    v49 = v77;
    (*(v36 + 32))(v44, v34, v16);
    v50 = v74;
    sub_216AD1760();
    OUTLINED_FUNCTION_8();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v52 = v44;
    v53 = v16;
    v54 = v75;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_6_65();
        v55 = v69;
        sub_2166C5CD4();
        OUTLINED_FUNCTION_9_60();
        v56 = v66;
        goto LABEL_10;
      case 2:
        OUTLINED_FUNCTION_6_65();
        v55 = v70;
        sub_2166C5CD4();
        OUTLINED_FUNCTION_7_71();
        v56 = v67;
LABEL_10:
        v62 = v76;
        sub_216AD0EDC();
        v58 = v62;
        v59 = type metadata accessor for SectionContent;
        goto LABEL_11;
      case 3:
        (*(v36 + 16))(v40, v52, v16);
        sub_216E41D9C(v40, 0, *(v54 + 48), 0, 0, v16, v49, v73);
        goto LABEL_13;
      case 4:
        v60 = v64;
        v61 = v76;
        sub_216AD0790(v52, v64);
        if (v61)
        {
          goto LABEL_15;
        }

        (*(v71 + 32))(v73, v60, v72);
        goto LABEL_13;
      default:
        v55 = v68;
        sub_2166C5CD4();
        v56 = v65;
        v57 = v76;
        sub_216AD0A14();
        v58 = v57;
        v59 = _s7SectionVMa;
LABEL_11:
        sub_216AD16E8(v55, v59);
        if (v58)
        {
          goto LABEL_15;
        }

        (*(v71 + 32))(v73, v56, v72);
LABEL_13:
        v63 = *(v50 + *(type metadata accessor for SectionChangeInstruction(0) + 20));
        if (v63 != 1)
        {
          sub_2168E6C7C(v63);
        }

LABEL_15:
        (*(v36 + 8))(v52, v53);
        break;
    }
  }

  OUTLINED_FUNCTION_21_4();
}

void sub_216AD05C8()
{
  OUTLINED_FUNCTION_22_3();
  v2 = v1;
  v4 = v3;
  v5 = _s7SectionVMa(0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_7();
  v8 = (v7 - v6);
  v9 = *(v0 + 80);
  v21 = *(v0 + 88);
  v10 = (*(*(v21 + 16) + 32))(v9);
  v11 = 0;
  v12 = *(v10 + 16);
  while (1)
  {
    if (v12 == v11)
    {

      v17 = type metadata accessor for SectionChangeInstructionPerformer.SectionChangeInstructionUpdateError(0, v9, v21, v16);
      v18 = OUTLINED_FUNCTION_10_55(v17);
      OUTLINED_FUNCTION_4(v18);
      *v19 = 1;
      swift_willThrow();
      goto LABEL_13;
    }

    if (v11 >= *(v10 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_0_140();
    sub_216AD1760();
    if (*v8 == v4 && v8[1] == v2)
    {
      OUTLINED_FUNCTION_1_117();
      sub_216AD16E8(v8, v20);
LABEL_12:

LABEL_13:
      OUTLINED_FUNCTION_21_4();
      return;
    }

    v14 = sub_21700F7D4();
    OUTLINED_FUNCTION_1_117();
    sub_216AD16E8(v8, v15);
    if (v14)
    {
      goto LABEL_12;
    }

    ++v11;
  }

  __break(1u);
}

uint64_t sub_216AD077C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return v5;
}

void sub_216AD0790(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  v5 = *v2;
  v6 = *v2;
  v7 = _s7SectionVMa(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v5 + 80);
  v25 = *(v10 - 8);
  MEMORY[0x28223BE20](v11);
  v24 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  v16 = v28;
  sub_216AD05C8();
  if (!v16)
  {
    v18 = v2[3];
    v28 = v17;
    sub_2168E6F2C(v2[2], v18);
    v19 = v25;
    (*(v25 + 16))(v15, a1, v10);
    v20 = *(v6 + 88);
    v21 = (*(*(v20 + 16) + 48))(v27, v10);
    sub_216CFB5A0();
    sub_216AD16E8(v9, _s7SectionVMa);
    v21(v27, 0);
    v22 = v24;
    (*(v19 + 32))(v24, v15, v10);
    sub_216E41D9C(v22, 0, *(v3 + 48), 0, 0, v10, v20, v26);
  }
}

void sub_216AD0A14()
{
  OUTLINED_FUNCTION_22_3();
  v3 = v2;
  v55 = v4;
  v5 = *v0;
  v6 = *(*v0 + 80);
  OUTLINED_FUNCTION_16();
  v58 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v48 - v13;
  v16 = *v15;
  v17 = v15[1];
  v56 = v18;
  sub_216AD05C8();
  if (v1)
  {
    goto LABEL_7;
  }

  v53 = v11;
  v54 = v19;
  v50 = v16;
  v51 = v17;
  v52 = 0;
  v20 = v0;
  v21 = v3;
  sub_2168E6C88(v3);
  v22 = *(v58 + 16);
  v23 = v56;
  v56 = (v58 + 16);
  v49 = v22;
  v22(v14, v23, v6);
  v24 = *(v5 + 88);
  v25 = (*(*(v24 + 16) + 48))(v57, v6);
  v27 = v26;
  v28 = *v26;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v27 = v28;
  v30 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_216E15A14();
    v28 = v47;
    *v27 = v47;
  }

  v31 = v21;
  v32 = v20;
  if ((v54 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v54 < *(v28 + 16))
  {
    v48[1] = _s7SectionVMa(0);
    sub_216AD1694();
    v33 = v25(v57, 0);
    v48[0] = v48;
    v57[0] = v20[5];
    MEMORY[0x28223BE20](v33);
    v34 = v30;
    v48[-4] = v6;
    v48[-3] = v24;
    v48[-2] = v31;
    _s15ContentObserverCMa(255, v6, v24, v35);
    sub_21700E984();
    v54 = v32;
    sub_21700DF14();
    OUTLINED_FUNCTION_8_61();
    swift_getWitnessTable();
    sub_21700E7A4();

    v49(v53, v30, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1D98, &qword_217041020);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC1DA0, &qword_217041028);
    OUTLINED_FUNCTION_13_44();
    v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_217013DA0;
    v39 = (v38 + v37);
    v40 = v51;
    *v39 = v50;
    v39[1] = v40;
    OUTLINED_FUNCTION_0_140();
    sub_216AD1760();
    sub_21700DF14();
    sub_21700E384();
    (*(v58 + 8))(v34, v6);
    v41 = OUTLINED_FUNCTION_14_46();
    sub_216E41D9C(v41, v42, v43, v44, v45, v6, v24, v46);
LABEL_7:
    OUTLINED_FUNCTION_21_4();
    return;
  }

  __break(1u);
}

void sub_216AD0EDC()
{
  OUTLINED_FUNCTION_22_3();
  v76 = v2;
  v82 = v3;
  v83 = v4;
  v85 = v1;
  v5 = v0;
  v87 = v6;
  v8 = v7;
  v10 = v9;
  v78 = v11;
  v12 = *v0;
  v84 = *(v12 + 80);
  OUTLINED_FUNCTION_16();
  v80 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77();
  v77 = v15 - v16;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v17);
  v79 = &v69 - v18;
  v19 = type metadata accessor for SectionContent(0);
  v20 = OUTLINED_FUNCTION_36(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7();
  v23 = v22 - v21;
  v24 = _s7SectionVMa(0);
  OUTLINED_FUNCTION_16();
  v81 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_77();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = (&v69 - v31);
  v33 = v10;
  v34 = v8;
  v35 = v85;
  sub_216AD05C8();
  if (v35)
  {
    goto LABEL_10;
  }

  v73 = v24;
  v74 = v32;
  v85 = 0;
  v70 = v33;
  v71 = v29;
  v75 = v23;
  v69 = v8;
  v72 = v5;
  v37 = *(v12 + 88);
  v38 = *(v37 + 16);
  v39 = v87;
  v40 = v36;
  v41 = (*(v38 + 32))(v84, v38);
  if ((v40 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v39 = v41;
  if (v40 >= *(v41 + 16))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    sub_216E15A14();
    v48 = v68;
    *v32 = v68;
    goto LABEL_7;
  }

  v42 = (*(v81 + 80) + 32) & ~*(v81 + 80);
  v43 = *(v81 + 72) * v40;
  OUTLINED_FUNCTION_0_140();
  v44 = v74;
  sub_216AD1760();

  v45 = v85;
  v83(v82);
  v85 = v45;
  if (v45)
  {
    v46 = v44;
LABEL_9:
    sub_216AD16E8(v46, _s7SectionVMa);
LABEL_10:
    OUTLINED_FUNCTION_21_4();
    return;
  }

  v82 = v42;
  v83 = v43;
  OUTLINED_FUNCTION_0_140();
  v23 = v71;
  sub_216AD1760();
  sub_216AD1694();
  v34 = v84;
  v81 = *(v80 + 16);
  (v81)(v79, v87, v84);
  v39 = (*(v38 + 48))(v86, v34, v38);
  v32 = v47;
  v48 = *v47;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v32 = v48;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v50 = v72;
  if (v40 < *(v48 + 16))
  {
    sub_216AD1694();
    v51 = v39(v86, 0);
    v52 = v23;
    v86[0] = v50[5];
    MEMORY[0x28223BE20](v51);
    *(&v69 - 4) = v34;
    *(&v69 - 3) = v37;
    *(&v69 - 2) = v23;
    _s15ContentObserverCMa(255, v34, v37, v53);
    sub_21700E984();
    v54 = v34;
    sub_21700DF14();
    OUTLINED_FUNCTION_8_61();
    swift_getWitnessTable();
    v55 = v85;
    sub_21700E7A4();
    v85 = v55;

    v56 = v79;
    (v81)(v77, v79, v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1D98, &qword_217041020);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC1DA0, &qword_217041028);
    OUTLINED_FUNCTION_13_44();
    v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_217013DA0;
    v60 = (v59 + v58);
    v61 = v69;
    *v60 = v70;
    v60[1] = v61;
    OUTLINED_FUNCTION_0_140();
    sub_216AD1760();
    sub_21700DF14();
    sub_21700E384();
    (*(v80 + 8))(v56, v54);
    sub_216AD16E8(v75, type metadata accessor for SectionContent);
    sub_216AD16E8(v74, _s7SectionVMa);
    v62 = OUTLINED_FUNCTION_14_46();
    sub_216E41D9C(v62, v63, v64, v65, v66, v54, v37, v67);
    v46 = v52;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_216AD14D4(void *a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_216A9642C(a2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_216AD152C(void *a1, uint64_t a2)
{
  v2 = _s7SectionVMa(0);
  v3 = OUTLINED_FUNCTION_36(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v6 = v5 - v4;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_0_140();
    sub_216AD1760();
    sub_216A9642C(v6);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_1_117();
    return sub_216AD16E8(v6, v8);
  }

  return result;
}

uint64_t sub_216AD15E0()
{

  return v0;
}

uint64_t sub_216AD1610()
{
  sub_216AD15E0();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216AD1694()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t sub_216AD16E8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216AD1760()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

_BYTE *sub_216AD17B4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

BOOL sub_216AD18DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for ArtistDetailHeaderLockup(0);
  sub_216681B64(v0 + *(v7 + 52), v6, &qword_27CABBEA8, &unk_217026710);
  v8 = type metadata accessor for VideoArtwork(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v8);
  sub_21669987C(v6, &qword_27CABBEA8, &unk_217026710);
  if (EnumTagSinglePayload != 1 && !UIAccessibilityIsReduceMotionEnabled())
  {
    v10 = [objc_opt_self() processInfo];
    v11 = [v10 isLowPowerModeEnabled];

    if (!v11)
    {
      return 1;
    }
  }

  sub_216681B64(v0 + *(v7 + 28), v3, &qword_27CAB6D60, &qword_217014E40);
  v12 = type metadata accessor for Artwork(0);
  v13 = __swift_getEnumTagSinglePayload(v3, 1, v12) != 1;
  sub_21669987C(v3, &qword_27CAB6D60, &qword_217014E40);
  return v13;
}

uint64_t sub_216AD1AB4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a2;
  v60 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v48 - v17;
  sub_21700D7A4();
  OUTLINED_FUNCTION_1_84();
  sub_21700CE04();
  v53 = v6;
  v20 = *(v6 + 16);
  v19 = v6 + 16;
  v56 = v4;
  v54 = v20;
  v20(v9, v57, v4);
  OUTLINED_FUNCTION_2_100();
  v55 = a1;
  sub_21700CE04();
  v21 = sub_21700CDB4();
  v23 = v22;
  v24 = *(v12 + 8);
  v51 = v12 + 8;
  v52 = v10;
  v50 = v24;
  v24(v15, v10);
  if (v23)
  {
    v49 = type metadata accessor for ArtistDetailHeaderLockup(0);
    v58 = v21;
    v59 = v23;
    sub_21700F364();
    type metadata accessor for ContentDescriptor(0);
    OUTLINED_FUNCTION_1_84();
    sub_21700CE04();
    v25 = v56;
    v54(v9, v57, v56);
    sub_2166D35AC(qword_280E40390, type metadata accessor for ContentDescriptor, &protocol conformance descriptor for ContentDescriptor);
    OUTLINED_FUNCTION_2_100();
    type metadata accessor for Artwork(0);
    sub_21700CE04();
    v26 = v57;
    v27 = v54;
    v54(v9, v57, v25);
    v48[0] = sub_2166D35AC(&qword_280E2BF60, type metadata accessor for Artwork, &unk_21705A604);
    v48[1] = v19;
    OUTLINED_FUNCTION_2_100();
    sub_21700CE04();
    v28 = v9;
    v29 = v9;
    v30 = v26;
    v31 = v56;
    v27(v28, v26, v56);
    v32 = v49;
    sub_21700D734();
    type metadata accessor for VideoArtwork(0);
    v33 = v55;
    sub_21700CE04();
    v27(v29, v30, v31);
    sub_2166D35AC(qword_280E44448, type metadata accessor for VideoArtwork, &unk_217061470);
    v34 = v60;
    sub_21700D734();
    v35 = v33;
    sub_21700CE04();
    v36 = sub_21700CDB4();
    v38 = v37;
    v39 = v52;
    v40 = v50;
    v50(v18, v52);
    v41 = (v34 + *(v32 + 24));
    *v41 = v36;
    v41[1] = v38;
    sub_21700CE04();
    v42 = v57;
    sub_21700D2E4();
    v40(v18, v39);
    OUTLINED_FUNCTION_1_84();
    sub_21700CE04();
    LOBYTE(v36) = sub_21700CD44();
    v40(v18, v39);
    *(v34 + *(v32 + 32)) = v36;
    sub_2170061D4();
    (*(v53 + 8))(v42, v56);
    return (v40)(v35, v39);
  }

  else
  {
    v44 = sub_21700E2E4();
    sub_2166D35AC(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v46 = v45;
    v47 = type metadata accessor for ArtistDetailHeaderLockup(0);
    *v46 = 25705;
    v46[1] = 0xE200000000000000;
    v46[2] = v47;
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D22530], v44);
    swift_willThrow();
    (*(v53 + 8))(v57, v56);
    v50(v55, v52);
    return sub_21669987C(v60, &qword_27CAB6D58, &unk_217014E30);
  }
}

uint64_t sub_216AD2194(uint64_t a1)
{
  result = sub_2166D35AC(&qword_280E36D90, type metadata accessor for ArtistDetailHeaderLockup, &unk_2170411DC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216AD2214@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v101 = a2;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v98 = v6;
  MEMORY[0x28223BE20](v7);
  v91 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v86 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v14);
  v87 = &v84 - v15;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v16);
  v88 = &v84 - v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  v90 = &v84 - v19;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v20);
  v22 = &v84 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v84 - v24;
  sub_21700CE04();
  v26 = sub_21700CDB4();
  v28 = v27;
  v30 = *(v11 + 8);
  v29 = v11 + 8;
  v97 = v9;
  v94 = v30;
  v30(v25, v9);
  if (!v28)
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_141();
    v70 = sub_2166D71EC(v68, v69, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_4(v70);
    v72 = v71;
    FriendsPageLockup = type metadata accessor for SocialOnboardingFindFriendsPageLockup(0);
    *v72 = 25705;
    v72[1] = 0xE200000000000000;
    v72[2] = FriendsPageLockup;
    OUTLINED_FUNCTION_50();
    (*(v74 + 104))(v72);
    swift_willThrow();
    (*(v98 + 8))(v101, v5);
    return v94(a1, v97);
  }

  v31 = type metadata accessor for SocialOnboardingFindFriendsPageLockup(0);
  v95 = v22;
  v92 = v29;
  v32 = v31;
  v33 = *(v31 + 20);
  v99 = v26;
  v100 = v28;
  v85 = v33;
  sub_21700F364();
  sub_21700D7A4();
  sub_21700CE04();
  v34 = *(v98 + 16);
  v35 = v91;
  v96 = a3;
  v36 = v5;
  v37 = v101;
  v34(v91, v101, v36);
  v93 = v32;
  v84 = v32[6];
  OUTLINED_FUNCTION_109();
  sub_21700D734();
  v38 = type metadata accessor for Artwork(0);
  sub_21700CE04();
  v89 = v36;
  v34(v35, v37, v36);
  sub_2166D71EC(&qword_280E2BF60, type metadata accessor for Artwork, &unk_21705A604);
  v39 = v96;
  OUTLINED_FUNCTION_109();
  sub_21700D734();
  v40 = 0xE500000000000000;
  v41 = v90;
  sub_21700CE04();
  v42 = v41;
  sub_21700CDB4();
  OUTLINED_FUNCTION_1_118();
  v43 = v41;
  v44 = v97;
  v45 = v94;
  v94(v43, v97);
  v46 = v39;
  v47 = v45;
  v91 = v42;
  if (v42)
  {
    v48 = 0x72506C6169636F73;
    v49 = (v46 + v93[7]);
    *v49 = v38;
    v49[1] = v42;
    v40 = 0xEF4449656C69666FLL;
    v50 = v88;
    sub_21700CE04();
    sub_21700CDB4();
    OUTLINED_FUNCTION_1_118();
    v47(v50, v44);
    if (v50)
    {
      v48 = 0x69546E6F74747562;
      v51 = (v96 + v93[9]);
      *v51 = v38;
      v51[1] = v50;
      v40 = 0xEB00000000656C74;
      v52 = a1;
      v53 = v87;
      v90 = v52;
      sub_21700CE04();
      v54 = v53;
      sub_21700CDB4();
      OUTLINED_FUNCTION_1_118();
      v47(v53, v44);
      v55 = v47;
      if (v54)
      {
        v56 = v93;
        v57 = v95;
        v58 = v96;
        v59 = (v96 + v93[11]);
        *v59 = v38;
        v59[1] = v54;
        v60 = v90;
        sub_21700CE04();
        sub_21700CDB4();
        OUTLINED_FUNCTION_1_118();
        v61 = OUTLINED_FUNCTION_109();
        v55(v61);
        v62 = (v58 + v56[8]);
        *v62 = v38;
        v62[1] = v57;
        sub_21700CE04();
        sub_21700CDB4();
        OUTLINED_FUNCTION_1_118();
        v63 = OUTLINED_FUNCTION_109();
        v55(v63);
        v64 = (v58 + v56[10]);
        *v64 = v38;
        v64[1] = v57;
        sub_21700CE04();
        v65 = sub_21700CD44();
        (*(v98 + 8))(v101, v89);
        (v55)(v60, v44);
        v66 = OUTLINED_FUNCTION_109();
        result = (v55)(v66);
        *(v58 + v56[12]) = v65 & 1;
        return result;
      }

      v75 = v93;
      LODWORD(v95) = 1;
      v76 = v101;
      a1 = v90;
      v77 = v89;
      goto LABEL_9;
    }
  }

  else
  {
    v48 = 0x656C746974;
  }

  v75 = v93;
  LODWORD(v95) = 0;
  v76 = v101;
  v77 = v89;
LABEL_9:
  sub_21700E2E4();
  OUTLINED_FUNCTION_0_141();
  v80 = sub_2166D71EC(v78, v79, MEMORY[0x277D22550]);
  OUTLINED_FUNCTION_4(v80);
  *v81 = v48;
  v81[1] = v40;
  v81[2] = v75;
  OUTLINED_FUNCTION_50();
  (*(v82 + 104))();
  swift_willThrow();
  (*(v98 + 8))(v76, v77);
  v47(a1, v97);
  v83 = v96;
  sub_216699820(v96, &qword_27CAB6D60, &qword_217014E40);
  sub_216788110(v83 + v85);
  result = sub_216699820(v83 + v84, &qword_27CAB6D58, &unk_217014E30);
  if (v91)
  {
  }

  if (v95)
  {
  }

  return result;
}

uint64_t _s19PageMetricsModifierVMa(uint64_t a1)
{
  result = qword_280E460A0;
  if (!qword_280E460A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216AD2B54(uint64_t a1)
{
  sub_21700D194();
  if (v1 <= 0x3F)
  {
    sub_2166DBA60(319);
    if (v2 <= 0x3F)
    {
      sub_21700D4D4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_216AD2BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v56 = a3;
  v57 = a6;
  v46 = a4;
  v47 = a5;
  v55 = a2;
  v48 = a1;
  v58 = a9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1E28, &unk_217041400);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v49 = &v44 - v13;
  v14 = sub_21700D574();
  OUTLINED_FUNCTION_1();
  v54 = v15;
  MEMORY[0x28223BE20](v16);
  v53 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a7;
  v63 = a8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v51 = v19;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v22 = &v44 - v21;
  v62 = a7;
  v63 = a8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v62 = OpaqueTypeMetadata2;
  v63 = OpaqueTypeConformance2;
  v24 = OpaqueTypeConformance2;
  v52 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v50 = v25;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v26);
  v28 = &v44 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8, qword_21701B930);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v44 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v44 - v33;
  sub_216861304(v48, &v44 - v33);
  v35 = sub_21700D194();
  if (!__swift_getEnumTagSinglePayload(v34, 1, v35))
  {
    v44 = v22;
    v36 = v24;
    v45 = OpaqueTypeMetadata2;
    v48 = v9;
    v37 = sub_21700D0E4();
    if (*v38)
    {
      v61 = MEMORY[0x277D837D0];
      v59 = v46;
      v60 = v47;
      sub_21700DF14();
      sub_2166EF928();
    }

    v37(&v62, 0);
    OpaqueTypeMetadata2 = v45;
    v24 = v36;
    v22 = v44;
  }

  sub_21700A224();
  sub_216861304(v34, v31);
  v39 = v53;
  v48 = v14;
  sub_21700D444();
  v40 = v49;
  sub_217007584();
  v41 = sub_217007594();
  __swift_storeEnumTagSinglePayload(v40, 0, 1, v41);
  sub_21700A194();
  sub_21669987C(v40, &qword_27CAC1E28, &unk_217041400);
  (*(v54 + 8))(v39, v48);
  sub_21669987C(v31, &qword_27CAB8DF8, qword_21701B930);
  (*(v51 + 8))(v22, OpaqueTypeMetadata2);
  sub_21700D844();
  sub_21700D444();
  v62 = OpaqueTypeMetadata2;
  v63 = v24;
  OUTLINED_FUNCTION_1_119();
  swift_getOpaqueTypeConformance2();
  v42 = v52;
  sub_21700A1F4();

  (*(v50 + 8))(v28, v42);
  return sub_21669987C(v34, &qword_27CAB8DF8, qword_21701B930);
}

unint64_t sub_216AD30E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_29();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  (*(a3 + 56))(a2, a3, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(&v16, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v7 + 8))(v11, AssociatedTypeWitness);
  v15 = v16;
  v13 = sub_216AD3260(&v15);
  sub_216AD39D8(v15, *(&v15 + 1));
  return v13;
}

unint64_t sub_216AD3260(unint64_t *a1)
{
  v1 = a1[1];
  v2 = 1701670728;
  switch(v1)
  {
    case 0uLL:
      return v2;
    case 1uLL:
      v2 = 7824718;
      break;
    case 2uLL:
      v2 = 0x736F65646956;
      break;
    case 3uLL:
      v2 = 0x6F69646152;
      break;
    case 4uLL:
      v2 = 0x7972617262694CLL;
      break;
    case 5uLL:
      v2 = 0x79616C5020776F4ELL;
      break;
    case 6uLL:
      v2 = 0x686372616553;
      break;
    case 7uLL:
      v2 = 0xD000000000000012;
      break;
    default:
      v2 = *a1;
      sub_2166E8270(*a1, v1);
      break;
  }

  return v2;
}

uint64_t sub_216AD339C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1E28, &unk_217041400);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v41 - v4;
  v47 = sub_21700D574();
  v53 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1E30, &qword_217041410);
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1E38, &qword_217041418);
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x28223BE20](v9);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8, qword_21701B930);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = sub_21700D194();
  (*(*(v20 - 8) + 16))(v19, v2, v20);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v20);
  v21 = _s19PageMetricsModifierVMa(0);
  v22 = v21[5];
  v43 = *(v2 + v21[6]);
  v24 = *(v2 + v22);
  v23 = *(v2 + v22 + 8);
  v25 = *(v2 + v21[7]);
  v49 = v19;
  sub_216861304(v19, v16);
  v26 = v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v20);
  v57 = v25;
  if (!EnumTagSinglePayload)
  {
    v42 = v13;
    v28 = sub_21700D0E4();
    if (*v29)
    {
      v60 = MEMORY[0x277D837D0];
      v58 = v24;
      v59 = v23;
      sub_21700DF14();
      sub_2166EF928();
    }

    v28(&v61, 0);
    v26 = v16;
    v13 = v42;
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1E40, &unk_217041420);
  v31 = sub_216AD3974();
  sub_21700A224();
  v45 = v26;
  sub_216861304(v26, v13);
  v32 = v46;
  v33 = v47;
  sub_21700D444();
  v34 = v48;
  sub_217007584();
  v35 = sub_217007594();
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v35);
  v61 = v30;
  v62 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v44;
  v38 = v52;
  sub_21700A194();
  sub_21669987C(v34, &qword_27CAC1E28, &unk_217041400);
  (*(v53 + 8))(v32, v33);
  sub_21669987C(v13, &qword_27CAB8DF8, qword_21701B930);
  (*(v51 + 8))(v8, v38);
  sub_21700D844();
  sub_21700D444();
  v61 = v38;
  v62 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v39 = v55;
  sub_21700A1F4();

  (*(v54 + 8))(v37, v39);
  sub_21669987C(v49, &qword_27CAB8DF8, qword_21701B930);
  return sub_21669987C(v45, &qword_27CAB8DF8, qword_21701B930);
}

unint64_t sub_216AD3974()
{
  result = qword_280E2A888;
  if (!qword_280E2A888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1E40, &unk_217041420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A888);
  }

  return result;
}

uint64_t sub_216AD39D8(uint64_t a1, unint64_t a2)
{
  if (a2 != 7)
  {
    return sub_2166E8284(a1, a2);
  }

  return a1;
}

uint64_t sub_216AD39E8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216AD3A3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_216AD3A94()
{
  sub_21700F8F4();
  sub_216AD3D9C(v1);
  return sub_21700F944();
}

uint64_t sub_216AD3AD4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v5 = sub_21700CDF4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  sub_21700CE04();
  v12 = sub_21700CDB4();
  v21 = v13;
  v22 = v12;
  v14 = *(v6 + 8);
  v14(v11, v5);
  sub_21700CE04();
  v20 = sub_21700CDB4();
  v16 = v15;
  v14(v11, v5);
  sub_21700CE04();
  LOBYTE(v11) = sub_21700CD44();
  v17 = sub_21700CF34();
  (*(*(v17 - 8) + 8))(v23, v17);
  v14(a1, v5);
  result = (v14)(v8, v5);
  v19 = v21;
  *a3 = v22;
  *(a3 + 8) = v19;
  *(a3 + 16) = v20;
  *(a3 + 24) = v16;
  *(a3 + 32) = v11 & 1;
  return result;
}

uint64_t sub_216AD3CF0(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_19;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_21700F7D4() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v5)
  {
    goto LABEL_19;
  }

  v7 = a1[3];
  v8 = *(a2 + 24);
  if (v7)
  {
    if (v8)
    {
      v9 = a1[2] == *(a2 + 16) && v7 == v8;
      if (v9 || (sub_21700F7D4() & 1) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    v10 = 0;
    return v10 & 1;
  }

  if (v8)
  {
    goto LABEL_19;
  }

LABEL_17:
  v10 = *(a1 + 32) ^ *(a2 + 32) ^ 1;
  return v10 & 1;
}

uint64_t sub_216AD3D9C(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_21700F914();
    sub_21700E614();
  }

  else
  {
    sub_21700F914();
  }

  if (*(v1 + 24))
  {
    sub_21700F914();
    sub_21700E614();
  }

  else
  {
    sub_21700F914();
  }

  return sub_21700F914();
}

double sub_216AD3E34@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_216AD3AD4(a1, a2, v7);
  if (!v3)
  {
    result = *v7;
    v6 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v6;
    *(a3 + 32) = v8;
  }

  return result;
}

uint64_t sub_216AD3E84(uint64_t a1)
{
  sub_21700F8F4();
  sub_216AD3D9C(v2);
  return sub_21700F944();
}

unint64_t sub_216AD3EC8()
{
  result = qword_27CAC1E48;
  if (!qword_27CAC1E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1E48);
  }

  return result;
}

uint64_t sub_216AD3F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v111 = a2;
  v108 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0, &unk_21701A800);
  MEMORY[0x28223BE20](v4 - 8);
  v94 = &v91 - v5;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v93 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v92 = &v91 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v91 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v91 - v23;
  sub_21700D7A4();
  OUTLINED_FUNCTION_2_0();
  sub_21700CE04();
  v98 = v8;
  v25 = *(v8 + 16);
  v107 = v6;
  v101 = v8 + 16;
  v104 = v25;
  v25(v11, v111, v6);
  v102 = v11;
  sub_21700D734();
  v106 = a1;
  sub_21700CE04();
  v26 = sub_21700CDB4();
  v28 = v27;
  v31 = *(v14 + 8);
  v30 = v14 + 8;
  v29 = v31;
  v103 = v12;
  (v31)(v21, v12);
  if (v28)
  {
    v32 = type metadata accessor for TVMovieDetailHeaderLockup(0);
    v105 = v29;
    v33 = v32;
    v109 = v26;
    v110 = v28;
    v34 = v108;
    sub_21700F364();
    v35 = type metadata accessor for Artwork(0);
    sub_21700CE04();
    v36 = v102;
    v100 = v30;
    v37 = v107;
    v104(v102, v111, v107);
    v95 = sub_2166D8670(&qword_280E2BF60, type metadata accessor for Artwork);
    v96 = v35;
    OUTLINED_FUNCTION_3_97();
    type metadata accessor for ContentDescriptor(0);
    OUTLINED_FUNCTION_2_0();
    sub_21700CE04();
    v104(v36, v111, v37);
    sub_2166D8670(qword_280E40390, type metadata accessor for ContentDescriptor);
    OUTLINED_FUNCTION_3_97();
    sub_21700CE04();
    v38 = sub_21700CDB4();
    v40 = v39;
    v41 = v103;
    v105(v24);
    v42 = (v34 + *(v33 + 32));
    *v42 = v38;
    v42[1] = v40;
    sub_21700CE04();
    v97 = v33;
    v43 = v111;
    sub_21700D2E4();
    (v105)(v24, v41);
    sub_21700CE04();
    v44 = sub_21700CDB4();
    v46 = v45;
    (v105)(v24, v41);
    v47 = *(v33 + 28);
    v48 = v102;
    v49 = v108;
    v50 = (v108 + v47);
    *v50 = v44;
    v50[1] = v46;
    sub_21700CE04();
    v51 = v43;
    v52 = v43;
    v53 = v107;
    v54 = v104;
    v104(v48, v51, v107);
    sub_216AC6598();
    v55 = v97;
    *(v49 + *(v97 + 36)) = v56;
    type metadata accessor for ModalPresentationDescriptor(0);
    OUTLINED_FUNCTION_11_0();
    sub_21700CE04();
    v54(v48, v52, v53);
    v57 = v55;
    sub_2166D8670(&qword_27CAC1C70, type metadata accessor for ModalPresentationDescriptor);
    v58 = v108;
    sub_21700D734();
    OUTLINED_FUNCTION_11_0();
    v59 = v106;
    sub_21700CE04();
    v54(v48, v52, v107);
    sub_21700D734();
    sub_21700CE04();
    v60 = sub_21700CDB4();
    v62 = v61;
    v63 = v103;
    (v105)(v24, v103);
    v64 = *(v57 + 48);
    v65 = v105;
    v66 = (v58 + v64);
    *v66 = v60;
    v66[1] = v62;
    OUTLINED_FUNCTION_11_0();
    v67 = v92;
    sub_21700CE04();
    v68 = v94;
    sub_21700CD74();
    v65(v67, v63);
    v69 = sub_21700E2C4();
    if (__swift_getEnumTagSinglePayload(v68, 1, v69) == 1)
    {
      sub_216699820(v68, &qword_27CAB78D0, &unk_21701A800);
      v70 = 0;
    }

    else
    {
      v76 = v99;
      v70 = sub_21700E2A4();
      v99 = v76;
      OUTLINED_FUNCTION_50();
      (*(v77 + 8))(v68, v69);
    }

    v78 = v97;
    v79 = v108;
    *(v108 + *(v97 + 52)) = v70;
    v80 = v93;
    sub_21700CE04();
    v81 = sub_21700CD44();
    v82 = v80;
    v83 = v65;
    v65(v82, v63);
    *(v79 + *(v78 + 56)) = v81 & 1;
    sub_21700CE04();
    v84 = v111;
    v85 = v107;
    v104(v102, v111, v107);
    sub_21700D734();
    sub_21700CE04();
    v86 = sub_21700CDB4();
    v105 = v87;
    (*(v98 + 8))(v84, v85);
    v88 = v103;
    v83(v59, v103);
    result = (v83)(v24, v88);
    v89 = (v79 + *(v78 + 64));
    v90 = v105;
    *v89 = v86;
    v89[1] = v90;
  }

  else
  {
    sub_21700E2E4();
    sub_2166D8670(&qword_280E2A0F8, MEMORY[0x277D22548]);
    OUTLINED_FUNCTION_42_0();
    swift_allocError();
    v72 = v71;
    v73 = type metadata accessor for TVMovieDetailHeaderLockup(0);
    *v72 = 25705;
    v72[1] = 0xE200000000000000;
    v72[2] = v73;
    OUTLINED_FUNCTION_50();
    (*(v74 + 104))(v72);
    swift_willThrow();
    (*(v98 + 8))(v111, v107);
    (v29)(v106, v103);
    return sub_216699820(v108, &qword_27CAB6D58, &unk_217014E30);
  }

  return result;
}

uint64_t sub_216AD4968@<X0>(uint64_t *a2@<X8>)
{
  result = sub_21700CDB4();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_216AD4A94()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v77 = v2;
  sub_217009314();
  OUTLINED_FUNCTION_1();
  v74 = v4;
  v75 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v73 = v6 - v5;
  sub_2170099D4();
  OUTLINED_FUNCTION_1();
  v67 = v8;
  v68 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1EA0, &qword_2170417B0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v64 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1EA8, &qword_2170417B8);
  OUTLINED_FUNCTION_1();
  v69 = v16;
  v70 = v15;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v19 = &v64 - v18;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1EB0, &qword_2170417C0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  v66 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v71 = &v64 - v23;
  *v14 = sub_2170093C4();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1EB8, &qword_2170417C8);
  sub_216AD5110(v1, &v14[*(v24 + 44)]);
  v25 = sub_217009C84();
  v26 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1EC0, &qword_2170417D0) + 36)];
  *v26 = v25;
  *(v26 + 8) = xmmword_217041640;
  *(v26 + 24) = xmmword_217041650;
  v26[40] = 0;
  v27 = sub_21700B354();
  v29 = v28;
  v30 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1EC8, &qword_2170417D8) + 36)];
  v76 = v1;
  sub_216AD61DC(v1);
  v31 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1ED0, &qword_2170417E0) + 36)];
  *v31 = v27;
  v31[1] = v29;
  v32 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1ED8, &unk_2170417E8) + 36)];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7440, &unk_217016D40);
  v34 = &v32[*(v33 + 36)];
  v35 = *(sub_217008B44() + 20);
  v36 = *MEMORY[0x277CE0118];
  sub_217009294();
  OUTLINED_FUNCTION_34();
  (*(v37 + 104))(&v34[v35], v36);
  __asm { FMOV            V0.2D, #14.0 }

  *v34 = _Q0;
  if (qword_280E2C2C8 != -1)
  {
    swift_once();
  }

  v43 = qword_280E73AA0;
  v44 = byte_280E73AA8;
  v45 = qword_280E73AB0;
  v46 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1EE0, &unk_2170417F8) + 36)];
  sub_216ADD3EC(v34, v46, MEMORY[0x277CDFC08]);
  *(v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0) + 36)) = 256;
  *v32 = v43;
  v32[8] = v44;
  *(v32 + 2) = v45;
  v47 = &v32[*(v33 + 40)];
  *v47 = swift_getKeyPath();
  v47[8] = 0;

  v48 = sub_21700B384();
  v50 = v49;
  v51 = v65;
  v52 = &v14[*(v65 + 36)];
  v53 = v76;
  sub_216AD6518(v76, v52);
  v54 = (v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1EE8, &qword_217041838) + 36));
  *v54 = v48;
  v54[1] = v50;
  sub_2170099A4();
  v55 = sub_216ADCF28();
  sub_21700A784();
  (*(v67 + 8))(v11, v68);
  sub_2167FDB84(v14, &qword_27CAC1EA0);
  sub_216AD77C0();
  v80 = v56;
  v81 = v57;
  v78 = v51;
  v79 = v55;
  OUTLINED_FUNCTION_5_5();
  swift_getOpaqueTypeConformance2();
  sub_2167B2E14();
  v58 = v66;
  v59 = v70;
  sub_21700A6B4();

  (*(v69 + 8))(v19, v59);
  v60 = v73;
  sub_2170092F4();
  v61 = v71;
  sub_2170089A4();
  (*(v74 + 8))(v60, v75);
  v62 = sub_2167FDB84(v58, &qword_27CAC1EB0);
  MEMORY[0x28223BE20](v62);
  *(&v64 - 2) = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1F48, &qword_217041850);
  sub_216ADD2F4();
  OUTLINED_FUNCTION_8_2();
  sub_2167D2D50(v63);
  sub_21700A774();
  sub_2167FDB84(v61, &qword_27CAC1EB0);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216AD5110@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2060, &qword_217041A80);
  MEMORY[0x28223BE20](v3 - 8);
  v102 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v103 = (&v91 - v6);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2068, &qword_217041A88);
  MEMORY[0x28223BE20](v96);
  v100 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v98 = &v91 - v9;
  v10 = type metadata accessor for SplitPosterLockup(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v91 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2070, &qword_217041A90);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v95 = &v91 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2078, &qword_217041A98);
  MEMORY[0x28223BE20](v19 - 8);
  v99 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v91 - v22;
  MEMORY[0x28223BE20](v24);
  v104 = &v91 - v25;
  v97 = a1;
  v26 = *a1;
  sub_216AD5A50();
  v27 = &v15[v10[9]];
  v28 = *v27;
  v29 = v27[1];
  sub_21700DF14();
  sub_216ADEF60(v15, type metadata accessor for SplitPosterLockup);
  if (!v29)
  {
    sub_216AD5A50();
    v30 = &v12[v10[10]];
    v28 = *v30;
    v29 = v30[1];
    sub_21700DF14();
    sub_216ADEF60(v12, type metadata accessor for SplitPosterLockup);
  }

  sub_216AD5BB8(v28, v29);
  if (v34)
  {
    v35 = v31;
    v36 = v32;
    v108 = v31;
    v109 = v32;
    v94 = v26;
    v93 = v16;
    v37 = v10;
    v38 = v33 & 1;
    LOBYTE(v110) = v33 & 1;
    v111 = v34;
    v39 = v95;
    sub_21700ABA4();
    v40 = v38;
    v10 = v37;
    sub_21678817C(v35, v36, v40);

    (*(v17 + 32))(v23, v39, v93);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2080, &qword_217041AA0);
    *&v23[*(v41 + 36)] = 0x3FF0000000000000;
    v42 = v23;
    v43 = 0;
  }

  else
  {
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2080, &qword_217041AA0);
    v42 = v23;
    v43 = 1;
  }

  __swift_storeEnumTagSinglePayload(v42, v43, 1, v41);
  sub_2167C5834(v23, v104, &qword_27CAC2078, &qword_217041A98);
  sub_21700B3B4();
  sub_2170083C4();
  v95 = v108;
  v94 = v110;
  v93 = v112;
  v92 = v113;
  v107 = 1;
  v106 = v109;
  v105 = v111;
  sub_216AD5A50();
  v44 = v98;
  sub_216ADD3EC(&v12[v10[6]], v98, type metadata accessor for SplitPosterLockup.Item);
  sub_216ADEF60(v12, type metadata accessor for SplitPosterLockup);
  v45 = type metadata accessor for SplitPosterLockupView.SplitLockupContentView(0);
  sub_2168C718C();
  *(v44 + v45[6]) = 1;
  v46 = v45[7];
  *(v44 + v46) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v47 = v44 + v45[8];
  *v47 = swift_getKeyPath();
  *(v47 + 40) = 0;
  LOBYTE(v47) = sub_217009CA4();
  sub_217007F24();
  v48 = v44 + *(v96 + 36);
  *v48 = v47;
  *(v48 + 8) = v49;
  *(v48 + 16) = v50;
  *(v48 + 24) = v51;
  *(v48 + 32) = v52;
  *(v48 + 40) = 0;
  v53 = sub_2170093C4();
  v54 = v103;
  *v103 = v53;
  v54[1] = 0;
  *(v54 + 16) = 0;
  v55 = v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2088, &qword_217041AA8) + 44);
  sub_216AD5A50();
  sub_216ADD3EC(&v12[v10[7]], v55, type metadata accessor for SplitPosterLockup.Item);
  sub_216ADEF60(v12, type metadata accessor for SplitPosterLockup);
  sub_2168C7294();
  *(v55 + v45[6]) = 0;
  v56 = v45[7];
  *(v55 + v56) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v57 = v55 + v45[8];
  *v57 = swift_getKeyPath();
  *(v57 + 40) = 0;
  v58 = sub_21700B364();
  v60 = v59;
  v61 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2090, &qword_217041AB0) + 36);
  sub_216AD5F54(v97);
  v62 = (v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2098, &qword_217041AB8) + 36));
  *v62 = v58;
  v62[1] = v60;
  LOBYTE(v58) = sub_217009C94();
  sub_217007F24();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC20A0, &qword_217041AC0) + 36);
  *v71 = v58;
  *(v71 + 8) = v64;
  *(v71 + 16) = v66;
  *(v71 + 24) = v68;
  *(v71 + 32) = v70;
  *(v71 + 40) = 0;
  LOBYTE(v58) = sub_217009CA4();
  sub_217007F24();
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v80 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC20A8, &qword_217041AC8) + 36);
  *v80 = v58;
  *(v80 + 8) = v73;
  *(v80 + 16) = v75;
  *(v80 + 24) = v77;
  *(v80 + 32) = v79;
  *(v80 + 40) = 0;
  v81 = v99;
  sub_216683A80(v104, v99, &qword_27CAC2078, &qword_217041A98);
  LOBYTE(v45) = v107;
  v82 = v106;
  LODWORD(v97) = v105;
  v83 = v100;
  sub_216683A80(v44, v100, &qword_27CAC2068, &qword_217041A88);
  v85 = v102;
  v84 = v103;
  sub_216683A80(v103, v102, &qword_27CAC2060, &qword_217041A80);
  v86 = v101;
  sub_216683A80(v81, v101, &qword_27CAC2078, &qword_217041A98);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC20B0, &qword_217041AD0);
  v88 = v86 + v87[12];
  *v88 = 0;
  *(v88 + 8) = v45;
  *(v88 + 16) = v95;
  *(v88 + 24) = v82;
  *(v88 + 32) = v94;
  *(v88 + 40) = v97;
  v89 = v92;
  *(v88 + 48) = v93;
  *(v88 + 56) = v89;
  sub_216683A80(v83, v86 + v87[16], &qword_27CAC2068, &qword_217041A88);
  sub_216683A80(v85, v86 + v87[20], &qword_27CAC2060, &qword_217041A80);
  sub_2167FDB84(v84, &qword_27CAC2060);
  sub_2167FDB84(v44, &qword_27CAC2068);
  sub_2167FDB84(v104, &qword_27CAC2078);
  sub_2167FDB84(v85, &qword_27CAC2060);
  sub_2167FDB84(v83, &qword_27CAC2068);
  return sub_2167FDB84(v81, &qword_27CAC2078);
}

uint64_t sub_216AD5A50()
{
  v2 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for SplitPosterLockup(v2);
  sub_216ADCD70(qword_280E3F790);
  sub_216ADCD70(&qword_280E3F778);
  swift_getKeyPath();
  v5 = v1;
  sub_2167D2D50(&qword_27CABB840);
  sub_2170066D4();

  v3 = *(*v1 + 120);
  swift_beginAccess();
  return sub_216ADD3EC(v5 + v3, v0, type metadata accessor for SplitPosterLockup);
}

void sub_216AD5BB8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_21680A15C();
    v3 = v2;

    sub_217009264();
    v4 = sub_21700A154();
    v6 = v5;
    v8 = v7;
    v45 = *(v3 + 16);
    sub_216777114(v4, v5, v7 & 1);
    sub_21700DF14();
    v9 = 0;
    v46 = v3;
    v10 = (v3 + 48);
    v43 = v6;
    v44 = v4;
    v11 = v6;
    v42 = v8;
    for (i = v8; ; i = v41)
    {
      if (v45 == v9)
      {

        sub_21678817C(v44, v43, v42 & 1);

        return;
      }

      if (v9 >= *(v46 + 16))
      {
        break;
      }

      v50 = i;
      v51 = v10;
      v52 = v9;
      v53 = v11;
      v54 = v4;
      v48 = *v10;
      sub_2167B2E14();
      swift_bridgeObjectRetain_n();
      v13 = sub_21700A174();
      v15 = v14;
      v17 = v16;
      sub_217009DE4();
      v18 = sub_217009FA4();
      v20 = v19;
      v22 = v21;
      sub_21678817C(v13, v15, v17 & 1);

      sub_217009E24();
      v23 = sub_21700A094();
      v25 = v24;
      v27 = v26;

      sub_21678817C(v18, v20, v22 & 1);

      sub_21700AD14();
      if ((v48 & 1) == 0)
      {
        sub_21700AD04();
      }

      v28 = sub_21700A044();
      v30 = v29;
      v32 = v31;
      sub_21678817C(v23, v25, v27 & 1);

      if (v48)
      {
        sub_217009D94();
      }

      else
      {
        sub_217009DE4();
      }

      v33 = sub_217009FA4();
      v35 = v34;
      v37 = v36;
      sub_21678817C(v28, v30, v32 & 1);

      v38 = sub_21700A064();
      v47 = v39;
      v49 = v38;
      v41 = v40;

      sub_21678817C(v33, v35, v37 & 1);

      sub_21678817C(v54, v53, v50 & 1);

      v10 = v51 + 24;
      v9 = v52 + 1;
      v11 = v47;
      v4 = v49;
    }

    __break(1u);
  }
}

uint64_t sub_216AD5F54(uint64_t a1)
{
  v2 = sub_2170099D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2170080D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for SplitPosterLockupView(0) + 36)))
  {

    sub_216C0C924(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21, v22, *(&v22 + 1), v23, v24, v25, v26, v27, v28, v29, v30);
    v18 = sub_216E50F58(1, v9);

    (*(v7 + 8))(v9, v6);
    v21 = v18;
    v22 = xmmword_217041660;
    sub_2170099A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC20B8, &qword_217041AD8);
    sub_216ADE128(&unk_27CAC20C0);
    sub_21700A784();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    type metadata accessor for ReplayGradientImageGenerator();
    sub_216ADCD70(qword_280E31F28);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216AD61DC(uint64_t a1)
{
  v2 = sub_2170099D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2170080D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for SplitPosterLockupView(0) + 36)))
  {

    sub_216C0C924(v10, v11, v12, v13, v14, v15, v16, v17, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
    v18 = sub_216E50F58(2, v9);

    (*(v7 + 8))(v9, v6);
    v19 = objc_opt_self();
    v20 = [v19 tertiarySystemFillColor];
    v21 = sub_21700AC44();
    v22 = [v19 tertiarySystemFillColor];
    sub_21700AC44();
    v23 = sub_21700AD04();

    v24 = swift_allocObject();
    *(v24 + 16) = v21;
    *(v24 + 24) = v23;
    v25 = objc_allocWithZone(MEMORY[0x277D75348]);

    sub_216847A1C(sub_216847A14, v24);
    v26 = sub_21700AC44();

    v27 = sub_217009C84();
    v30 = v18;
    v31 = v26;
    LOBYTE(v32) = v27;
    sub_2170099A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2050, &unk_217041A70);
    sub_216ADE050();
    sub_21700A784();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    type metadata accessor for ReplayGradientImageGenerator();
    sub_216ADCD70(qword_280E31F28);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216AD6518@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v110 = sub_217009354();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1FC0, &qword_217041950);
  MEMORY[0x28223BE20](v98);
  v97 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v93 = &v90 - v6;
  v7 = sub_217008844();
  v114 = *(v7 - 8);
  v115 = v7;
  MEMORY[0x28223BE20](v7);
  v113 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v112 = &v90 - v10;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1FC8, &qword_217041958);
  MEMORY[0x28223BE20](v95);
  v94 = &v90 - v11;
  v96 = type metadata accessor for SplitPosterLockupView(0);
  v111 = *(v96 - 8);
  v12 = *(v111 + 8);
  MEMORY[0x28223BE20](v96);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1F60, &unk_217041858);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v116 = &v90 - v13;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1FD0, &qword_217041960);
  MEMORY[0x28223BE20](v100);
  v99 = &v90 - v14;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1FD8, &qword_217041968);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v90 - v15;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1FE0, &qword_217041970);
  MEMORY[0x28223BE20](v106);
  v105 = &v90 - v16;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1FE8, &qword_217041978);
  v107 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v104 = &v90 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9328, &qword_21701C9C0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = (&v90 - v19);
  v21 = type metadata accessor for ShareAccessoryButton(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SplitPosterLockup(0);
  MEMORY[0x28223BE20](v24);
  v26 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v90 - v28;
  v30 = a1;
  sub_216AD5A50();
  sub_216683A80(&v29[*(v24 + 32)], &v121, &qword_27CAB8E60, qword_21701BCD0);
  sub_216ADEF60(v29, type metadata accessor for SplitPosterLockup);
  if (!v123)
  {
    v88 = &qword_27CAB8E60;
LABEL_9:
    v89 = &v121;
LABEL_12:
    sub_2167FDB84(v89, v88);
    goto LABEL_13;
  }

  v31 = v121;
  sub_2168269C4(&v121);
  if (v31 != 2)
  {
LABEL_13:
    v87 = v117;
    v85 = v118;
    v86 = 1;
    return __swift_storeEnumTagSinglePayload(v85, v86, 1, v87);
  }

  sub_216AD5A50();
  sub_216683A80(&v26[*(v24 + 32)], &v121, &qword_27CAB8E60, qword_21701BCD0);
  sub_216ADEF60(v26, type metadata accessor for SplitPosterLockup);
  if (!v123)
  {
    sub_2167FDB84(&v121, &qword_27CAB8E60);
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
    goto LABEL_11;
  }

  sub_216826960(&v121 + 8, v120);
  sub_2168269C4(&v121);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9330, &qword_21701C9E0);
  v32 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v20, v32 ^ 1u, 1, v21);
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
LABEL_11:
    v88 = &qword_27CAB9328;
    v89 = v20;
    goto LABEL_12;
  }

  sub_216ADD4A0(v20, v23, type metadata accessor for ShareAccessoryButton);
  sub_216683A80(&v23[*(v21 + 24)], &v121, &qword_27CAB6DB0, &qword_217016C00);
  if (!*(&v122 + 1))
  {
    sub_216ADEF60(v23, type metadata accessor for ShareAccessoryButton);
    v88 = &qword_27CAB6DB0;
    goto LABEL_9;
  }

  v90 = v23;
  sub_2166A0F18(&v121, v120);
  sub_216ADD3EC(a1, &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SplitPosterLockupView);
  sub_2167B7D58(v120, &v121);
  v33 = (v111[80] + 16) & ~v111[80];
  v34 = swift_allocObject();
  sub_216ADD4A0(&v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33, type metadata accessor for SplitPosterLockupView);
  v35 = sub_2166A0F18(&v121, v34 + ((v12 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
  MEMORY[0x28223BE20](v35);
  v111 = v30;
  *(&v90 - 2) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1F80, &qword_217041888);
  sub_216ADD51C();
  sub_21700AF14();
  v36 = v114;
  v37 = v115;
  v38 = *(v114 + 104);
  v39 = v112;
  v38(v112, *MEMORY[0x277CDF9E8], v115);
  v40 = v113;
  v38(v113, *MEMORY[0x277CDF9D8], v37);
  sub_216ADCD70(&qword_27CABA188);
  result = sub_21700E474();
  if (result)
  {
    v42 = *(v36 + 32);
    v43 = v93;
    v42(v93, v39, v37);
    v44 = v98;
    v42((v43 + *(v98 + 48)), v40, v37);
    v45 = v97;
    sub_216683A80(v43, v97, &qword_27CAC1FC0, &qword_217041950);
    v46 = *(v44 + 48);
    v47 = v94;
    v42(v94, v45, v37);
    v48 = *(v36 + 8);
    v48(v45 + v46, v37);
    sub_2167C5834(v43, v45, &qword_27CAC1FC0, &qword_217041950);
    v42((v47 + *(v95 + 36)), (v45 + *(v44 + 48)), v37);
    v48(v45, v37);
    sub_2167D2D50(&unk_27CAC1FF0);
    sub_2167D2D50(&unk_27CAC1FF8);
    v49 = v99;
    v50 = v92;
    v51 = v116;
    sub_21700A5B4();
    sub_2167FDB84(v47, &qword_27CAC1FC8);
    (*(v91 + 8))(v51, v50);
    v52 = &v111[*(v96 + 28)];
    v53 = *v52;
    v54 = *(v52 + 1);
    LOBYTE(v121) = v53;
    *(&v121 + 1) = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
    sub_21700AEB4();
    v55 = v119;
    KeyPath = swift_getKeyPath();
    v57 = swift_allocObject();
    *(v57 + 16) = v55;
    v58 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2000, &qword_2170419B0) + 36));
    *v58 = KeyPath;
    v58[1] = sub_2167D2420;
    v58[2] = v57;
    v59 = sub_21700AD14();
    v60 = swift_getKeyPath();
    v61 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2008, &qword_2170419E8) + 36));
    *v61 = v60;
    v61[1] = v59;
    v62 = sub_217009E54();
    v63 = swift_getKeyPath();
    v64 = v100;
    v65 = (v49 + *(v100 + 36));
    *v65 = v63;
    v65[1] = v62;
    sub_217009DE4();
    v66 = sub_216ADDAC0();
    v67 = v101;
    sub_21700A304();
    sub_2167FDB84(v49, &qword_27CAC1FD0);
    v68 = v108;
    sub_217009344();
    *&v121 = v64;
    *(&v121 + 1) = v66;
    swift_getOpaqueTypeConformance2();
    sub_216ADCD70(&qword_27CAB9D40);
    v69 = v105;
    v70 = v103;
    v71 = v110;
    sub_21700A364();
    (*(v109 + 8))(v68, v71);
    (*(v102 + 8))(v67, v70);
    v72 = (v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2028, &unk_217041A20) + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A60, &qword_217050220);
    sub_217008BE4();
    *v72 = swift_getKeyPath();
    sub_21700B3B4();
    sub_2170083C4();
    v73 = (v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2030, &unk_217041A60) + 36));
    v74 = v122;
    *v73 = v121;
    v73[1] = v74;
    v73[2] = v123;
    v75 = sub_217009C84();
    v76 = v69 + *(v106 + 36);
    *v76 = v75;
    *(v76 + 8) = 0;
    *(v76 + 16) = 0;
    __asm { FMOV            V0.2D, #16.0 }

    *(v76 + 24) = _Q0;
    *(v76 + 40) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA420, &unk_21706D110);
    sub_216ADDDB8();
    sub_2167D2D50(&qword_280E2A5E0);
    v82 = v104;
    sub_21700A944();
    sub_2167FDB84(v69, &qword_27CAC1FE0);
    __swift_destroy_boxed_opaque_existential_1Tm(v120);
    sub_216ADEF60(v90, type metadata accessor for ShareAccessoryButton);
    v84 = v117;
    v83 = v118;
    (*(v107 + 32))(v118, v82, v117);
    v85 = v83;
    v86 = 0;
    v87 = v84;
    return __swift_storeEnumTagSinglePayload(v85, v86, 1, v87);
  }

  __break(1u);
  return result;
}

uint64_t sub_216AD7520(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SplitPosterLockupView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  v12 = v2 + *(v5 + 36);
  v13 = *v12;
  v14 = *(v12 + 8);
  LOBYTE(v22[0]) = v13;
  *(&v22[0] + 1) = v14;
  v23 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  sub_21700AEC4();
  v15 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v15);
  sub_216ADD3EC(v2, v8, type metadata accessor for SplitPosterLockupView);
  sub_2167B7D58(a1, v22);
  sub_21700EA34();
  v16 = sub_21700EA24();
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = (v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v16;
  *(v19 + 24) = v20;
  sub_216ADD4A0(v8, v19 + v17, type metadata accessor for SplitPosterLockupView);
  sub_2166A0F18(v22, v19 + v18);
  sub_21677E228(0, 0, v11, &unk_2170418F8, v19);
}

uint64_t sub_216AD7758()
{
  sub_216983738(296);
  sub_2167B2E14();
  return sub_21700AE34();
}

void sub_216AD77C0()
{
  v0 = type metadata accessor for SplitPosterLockup.Item(0);
  v1 = (v0 - 8);
  MEMORY[0x28223BE20](v0);
  v47 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v43 - v4;
  v6 = type metadata accessor for SplitPosterLockup(0);
  v7 = (v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7228, &unk_217029EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  sub_216AD5A50();
  v11 = &v9[v7[12]];
  v12 = *v11;
  v13 = *(v11 + 1);
  sub_21700DF14();
  sub_216ADEF60(v9, type metadata accessor for SplitPosterLockup);
  *(inited + 32) = v12;
  *(inited + 40) = v13;
  v49 = inited;
  sub_216AD5A50();
  sub_216ADD3EC(&v9[v7[8]], v5, type metadata accessor for SplitPosterLockup.Item);
  sub_216ADEF60(v9, type metadata accessor for SplitPosterLockup);
  v14 = swift_initStackObject();
  v45 = xmmword_217015230;
  *(v14 + 16) = xmmword_217015230;
  v15 = &v5[v1[10]];
  v16 = *(v15 + 1);
  *(v14 + 32) = *v15;
  *(v14 + 40) = v16;
  v17 = &v5[v1[8]];
  v18 = *(v17 + 1);
  *(v14 + 48) = *v17;
  *(v14 + 56) = v18;
  v19 = v1[9];
  v44 = v5;
  v20 = &v5[v19];
  v21 = *(v20 + 1);
  *(v14 + 64) = *v20;
  *(v14 + 72) = v21;
  sub_21700DF14();
  sub_21700DF14();
  sub_21700DF14();
  sub_216BDD25C(v14);
  sub_216AD5A50();
  v22 = v47;
  sub_216ADD3EC(&v9[v7[9]], v47, type metadata accessor for SplitPosterLockup.Item);
  v23 = v22;
  sub_216ADEF60(v9, type metadata accessor for SplitPosterLockup);
  v24 = swift_initStackObject();
  *(v24 + 16) = v45;
  v25 = (v23 + v1[10]);
  v26 = v25[1];
  *(v24 + 32) = *v25;
  *(v24 + 40) = v26;
  v27 = (v23 + v1[8]);
  v28 = v27[1];
  *(v24 + 48) = *v27;
  *(v24 + 56) = v28;
  v29 = (v23 + v1[9]);
  v30 = v29[1];
  *(v24 + 64) = *v29;
  *(v24 + 72) = v30;
  sub_21700DF14();
  sub_21700DF14();
  sub_21700DF14();
  sub_216BDD25C(v24);
  v31 = 0;
  v32 = v49;
  v33 = *(v49 + 16);
  v34 = MEMORY[0x277D84F90];
LABEL_2:
  v35 = 16 * v31 + 40;
  while (1)
  {
    if (v33 == v31)
    {

      v48 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
      sub_2167D2D50(&qword_280E29E38);
      sub_21700E454();

      sub_216ADEF60(v23, type metadata accessor for SplitPosterLockup.Item);
      sub_216ADEF60(v44, type metadata accessor for SplitPosterLockup.Item);
      return;
    }

    if (v31 >= *(v32 + 16))
    {
      break;
    }

    ++v31;
    v36 = v35 + 16;
    v37 = *(v32 + v35);
    v35 += 16;
    if (v37)
    {
      v38 = *(v32 + v36 - 24);
      sub_21700DF14();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21693776C();
        v34 = v41;
      }

      v39 = *(v34 + 16);
      if (v39 >= *(v34 + 24) >> 1)
      {
        sub_21693776C();
        v34 = v42;
      }

      *(v34 + 16) = v39 + 1;
      v40 = v34 + 16 * v39;
      *(v40 + 32) = v38;
      *(v40 + 40) = v37;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t sub_216AD7C20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v3 = type metadata accessor for SplitPosterLockupView(0);
  v87 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v88 = v4;
  v89 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1F60, &unk_217041858);
  v92 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v90 = &v86 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9328, &qword_21701C9C0);
  MEMORY[0x28223BE20](v6 - 8);
  v96 = &v86 - v7;
  v95 = type metadata accessor for ShareAccessoryButton(0);
  MEMORY[0x28223BE20](v95);
  v93 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1F68, &qword_217041868);
  MEMORY[0x28223BE20](v9 - 8);
  v112 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v108 = &v86 - v12;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1F70, &qword_217041870) - 8;
  MEMORY[0x28223BE20](v104);
  v110 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v109 = &v86 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = (&v86 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = (&v86 - v20);
  v22 = type metadata accessor for SplitPosterLockup(0);
  MEMORY[0x28223BE20](v22);
  v94 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v106 = &v86 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v86 - v27;
  v29 = type metadata accessor for SplitPosterLockup.Item(0);
  v30 = v29 - 8;
  v101 = *(v29 - 8);
  v98 = *(v101 + 8);
  MEMORY[0x28223BE20](v29);
  v114 = &v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v115 = &v86 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v86 - v35;
  v91 = a1;
  v103 = *a1;
  sub_216AD5A50();
  v102 = v22;
  sub_216ADD3EC(&v28[*(v22 + 24)], v36, type metadata accessor for SplitPosterLockup.Item);
  v105 = type metadata accessor for SplitPosterLockup;
  sub_216ADEF60(v28, type metadata accessor for SplitPosterLockup);
  sub_216AD5A50();
  v37 = &v28[*(v22 + 28)];
  v38 = v115;
  v100 = type metadata accessor for SplitPosterLockup.Item;
  sub_216ADD3EC(v37, v115, type metadata accessor for SplitPosterLockup.Item);
  sub_216ADEF60(v28, type metadata accessor for SplitPosterLockup);
  sub_216683A80(&v36[*(v30 + 48)], v21, &qword_27CAB6DB0, &qword_217016C00);
  v39 = v104;
  v40 = *(v104 + 52);
  v99 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v21 + v40, 1, 1, v99);
  v107 = v36;
  v41 = v36;
  v42 = v114;
  sub_216ADD3EC(v41, v114, type metadata accessor for SplitPosterLockup.Item);
  v43 = (*(v101 + 80) + 16) & ~*(v101 + 80);
  v44 = swift_allocObject();
  v101 = type metadata accessor for SplitPosterLockup.Item;
  sub_216ADD4A0(v42, v44 + v43, type metadata accessor for SplitPosterLockup.Item);
  v45 = v39[14];
  *(v21 + v45) = swift_getKeyPath();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v46 = v21 + v39[15];
  *v46 = swift_getKeyPath();
  v46[40] = 0;
  v21[5] = sub_216ADF36C;
  v21[6] = v44;
  v21[7] = 0;
  v21[8] = 0;
  v47 = v21;
  v48 = *(v30 + 48);
  v49 = v102;
  sub_216683A80(v38 + v48, v18, &qword_27CAB6DB0, &qword_217016C00);
  __swift_storeEnumTagSinglePayload(v18 + v39[13], 1, 1, v99);
  v50 = v114;
  sub_216ADD3EC(v38, v114, v100);
  v51 = swift_allocObject();
  sub_216ADD4A0(v50, v51 + v43, v101);
  v52 = v39[14];
  *(v18 + v52) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v53 = v18 + v39[15];
  *v53 = swift_getKeyPath();
  v53[40] = 0;
  v18[5] = sub_216ADD448;
  v18[6] = v51;
  v18[7] = 0;
  v18[8] = 0;
  v54 = v18;
  v55 = v106;
  sub_216AD5A50();
  sub_216683A80(v55 + *(v49 + 32), &v118, &qword_27CAB8E60, qword_21701BCD0);
  sub_216ADEF60(v55, v105);
  if (!v120)
  {
    sub_2167FDB84(&v118, &qword_27CAB8E60);
    v57 = v108;
    goto LABEL_11;
  }

  v56 = v118;
  sub_2168269C4(&v118);
  v57 = v108;
  if (v56 != 2)
  {
LABEL_11:
    v73 = v57;
    v74 = 1;
    v75 = v111;
    goto LABEL_12;
  }

  v58 = v94;
  sub_216AD5A50();
  sub_216683A80(v58 + *(v49 + 32), &v118, &qword_27CAB8E60, qword_21701BCD0);
  sub_216ADEF60(v58, type metadata accessor for SplitPosterLockup);
  if (!v120)
  {
    sub_2167FDB84(&v118, &qword_27CAB8E60);
    v59 = v96;
    __swift_storeEnumTagSinglePayload(v96, 1, 1, v95);
    goto LABEL_9;
  }

  sub_216826960(v119, &v116);
  sub_2168269C4(&v118);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9330, &qword_21701C9E0);
  v59 = v96;
  v60 = v95;
  v61 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v59, v61 ^ 1u, 1, v60);
  if (__swift_getEnumTagSinglePayload(v59, 1, v60) == 1)
  {
LABEL_9:
    v76 = &qword_27CAB9328;
    v77 = v59;
LABEL_10:
    sub_2167FDB84(v77, v76);
    goto LABEL_11;
  }

  v62 = v93;
  sub_216ADD4A0(v59, v93, type metadata accessor for ShareAccessoryButton);
  sub_216683A80(v62 + *(v60 + 24), &v116, &qword_27CAB6DB0, &qword_217016C00);
  if (!v117)
  {
    sub_216ADEF60(v62, type metadata accessor for ShareAccessoryButton);
    v76 = &qword_27CAB6DB0;
    v77 = &v116;
    goto LABEL_10;
  }

  sub_2166A0F18(&v116, &v118);
  v63 = v57;
  v64 = v91;
  v65 = v89;
  sub_216ADD3EC(v91, v89, type metadata accessor for SplitPosterLockupView);
  sub_2167B7D58(&v118, &v116);
  v66 = (*(v87 + 80) + 16) & ~*(v87 + 80);
  v67 = (v88 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  sub_216ADD4A0(v65, v68 + v66, type metadata accessor for SplitPosterLockupView);
  v69 = sub_2166A0F18(&v116, v68 + v67);
  MEMORY[0x28223BE20](v69);
  *(&v86 - 2) = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1F80, &qword_217041888);
  sub_216ADD51C();
  v70 = v90;
  sub_21700AF14();
  __swift_destroy_boxed_opaque_existential_1Tm(&v118);
  sub_216ADEF60(v62, type metadata accessor for ShareAccessoryButton);
  v71 = v70;
  v57 = v63;
  v72 = v111;
  (*(v92 + 32))(v63, v71, v111);
  v73 = v63;
  v74 = 0;
  v75 = v72;
LABEL_12:
  __swift_storeEnumTagSinglePayload(v73, v74, 1, v75);
  v78 = v47;
  v79 = v109;
  sub_216683A80(v47, v109, &qword_27CAC1F70, &qword_217041870);
  v80 = v110;
  sub_216683A80(v54, v110, &qword_27CAC1F70, &qword_217041870);
  v81 = v112;
  sub_216683A80(v57, v112, &qword_27CAC1F68, &qword_217041868);
  v82 = v113;
  sub_216683A80(v79, v113, &qword_27CAC1F70, &qword_217041870);
  v83 = v57;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1F78, &unk_217041878);
  sub_216683A80(v80, v82 + *(v84 + 48), &qword_27CAC1F70, &qword_217041870);
  sub_216683A80(v81, v82 + *(v84 + 64), &qword_27CAC1F68, &qword_217041868);
  sub_2167FDB84(v83, &qword_27CAC1F68);
  sub_2167FDB84(v54, &qword_27CAC1F70);
  sub_2167FDB84(v78, &qword_27CAC1F70);
  sub_216ADEF60(v115, type metadata accessor for SplitPosterLockup.Item);
  sub_216ADEF60(v107, type metadata accessor for SplitPosterLockup.Item);
  sub_2167FDB84(v81, &qword_27CAC1F68);
  sub_2167FDB84(v80, &qword_27CAC1F70);
  return sub_2167FDB84(v79, &qword_27CAC1F70);
}

uint64_t sub_216AD88F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7228, &unk_217029EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013D90;
  v5 = type metadata accessor for SplitPosterLockup.Item(0);
  v6 = (a1 + *(v5 + 32));
  v7 = v6[1];
  *(inited + 32) = *v6;
  *(inited + 40) = v7;
  v8 = (a1 + *(v5 + 24));
  v9 = v8[1];
  *(inited + 48) = *v8;
  *(inited + 56) = v9;
  sub_21700DF14();
  sub_21700DF14();
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
LABEL_2:
  v13 = (inited + 40 + 16 * v10);
  while (++v10 != 3)
  {
    v14 = v13 + 2;
    v15 = *v13;
    v13 += 2;
    if (v15)
    {
      v16 = *(v14 - 3);
      sub_21700DF14();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21693776C();
        v12 = v19;
      }

      v17 = *(v12 + 16);
      if (v17 >= *(v12 + 24) >> 1)
      {
        sub_21693776C();
        v12 = v20;
      }

      *(v12 + 16) = v17 + 1;
      v18 = v12 + 16 * v17;
      *(v18 + 32) = v16;
      *(v18 + 40) = v15;
      goto LABEL_2;
    }
  }

  swift_setDeallocating();
  sub_2169FAC80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
  sub_2167D2D50(&qword_280E29E38);
  v21 = sub_21700E454();
  v23 = v22;

  *a2 = v21;
  a2[1] = v23;
  a2[2] = 0;
  a2[3] = v11;
  return result;
}

void sub_216AD8AD8()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  OUTLINED_FUNCTION_8_1();
  v2 = sub_21700ADC4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1FB0, &unk_2170418A8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v28[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1F98, &qword_217041890);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v15 = &v28[-v14];
  v16 = (v1 + *(type metadata accessor for SplitPosterLockupView(0) + 28));
  v17 = *v16;
  v18 = *(v16 + 1);
  v28[16] = v17;
  v29 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  sub_21700AEB4();
  if (v28[15] == 1)
  {
    sub_217008294();
    v19 = sub_21700AD14();
    KeyPath = swift_getKeyPath();
    v21 = &v15[*(v12 + 36)];
    *v21 = KeyPath;
    v21[1] = v19;
    sub_216683A80(v15, v11, &qword_27CAC1F98, &qword_217041890);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1FA8, &unk_217041898);
    sub_216ADD5A8();
    sub_216ADD68C();
    OUTLINED_FUNCTION_25_31();
    sub_217009554();
    sub_2167FDB84(v15, &qword_27CAC1F98);
  }

  else
  {
    sub_21700ADB4();
    (*(v4 + 104))(v8, *MEMORY[0x277CE0FE0], v2);
    v22 = sub_21700AE04();

    (*(v4 + 8))(v8, v2);
    v23 = sub_217009CA4();
    sub_217007F24();
    *v11 = v22;
    *(v11 + 1) = 0;
    *(v11 + 8) = 1;
    v11[24] = v23;
    *(v11 + 4) = v24;
    *(v11 + 5) = v25;
    *(v11 + 6) = v26;
    *(v11 + 7) = v27;
    v11[64] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1FA8, &unk_217041898);
    sub_216ADD5A8();
    sub_216ADD68C();
    OUTLINED_FUNCTION_25_31();
    sub_217009554();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216AD8DEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19[3] = a1;
  v3 = type metadata accessor for SplitPosterLockupView.SplitLockupContentView(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v19[1] = v5;
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC20E0, &unk_217041C00);
  MEMORY[0x28223BE20](v7);
  v9 = (v19 - v8);
  v10 = type metadata accessor for SplitPosterLockup.Item(0);
  sub_216683A80(v2 + *(v10 + 40), v9, &qword_27CAB6DB0, &qword_217016C00);
  v11 = v7[11];
  v12 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v9 + v11, 1, 1, v12);
  sub_216ADD3EC(v2, v6, type metadata accessor for SplitPosterLockupView.SplitLockupContentView);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_216ADD4A0(v6, v14 + v13, type metadata accessor for SplitPosterLockupView.SplitLockupContentView);
  v19[2] = v7;
  v15 = v7[12];
  *(v9 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v16 = v9 + v7[13];
  *v16 = swift_getKeyPath();
  v16[40] = 0;
  v9[5] = sub_216ADE76C;
  v9[6] = v14;
  v9[7] = 0;
  v9[8] = 0;
  v19[10] = v2;
  v19[6] = v2;
  sub_216ADD3EC(v2, v6, type metadata accessor for SplitPosterLockupView.SplitLockupContentView);
  v17 = swift_allocObject();
  sub_216ADD4A0(v6, v17 + v13, type metadata accessor for SplitPosterLockupView.SplitLockupContentView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AA0, &qword_21701ADE0);
  type metadata accessor for ContextMenuPreview(0);
  sub_2167D2D50(&unk_27CAC20E8);
  sub_2167D2D50(qword_280E2BAE8);
  sub_216ADCD70(qword_280E3F158);
  sub_21700A394();

  return sub_2167FDB84(v9, &qword_27CAC20E0);
}

uint64_t sub_216AD91B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2170091A4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC20F0, &qword_217041C10);
  return sub_216AD9208(a1, a2 + *(v4 + 44));
}

uint64_t sub_216AD9208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC20F8, &qword_217041C18);
  MEMORY[0x28223BE20](v79);
  v72 = (&v70 - v3);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2100, &qword_217041C20);
  MEMORY[0x28223BE20](v76);
  v78 = &v70 - v4;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2108, &qword_217041C28);
  MEMORY[0x28223BE20](v77);
  v71 = &v70 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v70 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v70 - v10;
  v12 = type metadata accessor for SplitPosterLockupView.ArtworkView(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2110, &qword_217041C30);
  MEMORY[0x28223BE20](v74);
  *&v83 = &v70 - v15;
  *&v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2118, &qword_217041C38);
  MEMORY[0x28223BE20](v82);
  v75 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v81 = &v70 - v18;
  v19 = type metadata accessor for SplitPosterLockup.Item(0);
  sub_216683A80(a1 + v19[9], v11, &qword_27CAB6D60, &qword_217014E40);
  sub_216683A80(a1 + v19[5], v8, &qword_27CAB6A00, &unk_217016B60);
  v20 = type metadata accessor for ContentDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v20) == 1)
  {
    sub_2167FDB84(v8, &qword_27CAB6A00);
    v21 = 23;
  }

  else
  {
    v21 = *v8;
    sub_216ADEF60(v8, type metadata accessor for ContentDescriptor);
  }

  LOBYTE(v89) = v21;
  v22 = sub_216E41068(&v89, 0);
  v24 = v23;
  v25 = *(a1 + v19[12]);
  v73 = type metadata accessor for SplitPosterLockupView.SplitLockupContentView(0);
  v26 = *(v73 + 20);
  v27 = v12[7];
  v28 = sub_2170067A4();
  (*(*(v28 - 8) + 16))(&v14[v27], a1 + v26, v28);
  sub_2167C5834(v11, v14, &qword_27CAB6D60, &qword_217014E40);
  v29 = &v14[v12[5]];
  *v29 = v22;
  v29[1] = v24;
  v14[v12[6]] = v25;
  v30 = v12[8];
  *&v14[v30] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  swift_storeEnumTagMultiPayload();
  v31 = &v14[v12[9]];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  v32 = &v14[v12[10]];
  type metadata accessor for PlaybackPresenter(0);
  sub_216ADCD70(&qword_280E3FDB0);
  *v32 = sub_217008CF4();
  v32[1] = v33;
  v34 = sub_21700B3B4();
  v36 = v35;
  v37 = v83;
  v38 = v83 + *(v74 + 36);
  sub_216AD9C70(a1, v38);
  v39 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2120, &qword_217041C78) + 36));
  *v39 = v34;
  v39[1] = v36;
  sub_216ADD4A0(v14, v37, type metadata accessor for SplitPosterLockupView.ArtworkView);
  v40 = sub_217009CD4();
  sub_217007F24();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = v81;
  sub_2167C5834(v37, v81, &qword_27CAC2110, &qword_217041C30);
  v50 = v49 + *(v82 + 36);
  *v50 = v40;
  *(v50 + 8) = v42;
  *(v50 + 16) = v44;
  *(v50 + 24) = v46;
  *(v50 + 32) = v48;
  *(v50 + 40) = 0;
  v83 = *(a1 + v19[8]);
  v51 = v19[6];
  v82 = *(a1 + v19[7]);
  v53 = *(a1 + v51);
  v52 = *(a1 + v51 + 8);
  v54 = *(a1 + v19[11]);
  v55 = v75;
  if (*(a1 + *(v73 + 24)))
  {
    sub_216683A80(v49, v75, &qword_27CAC2118, &qword_217041C38);
    v85 = v83;
    v86 = v82;
    *&v87 = v53;
    *(&v87 + 1) = v52;
    LOBYTE(v88) = v54;
    *(&v88 + 1) = 0x3FF0000000000000;
    v56 = v82;
    v57 = v72;
    *v72 = v83;
    *(v57 + 16) = v56;
    v58 = v88;
    *(v57 + 32) = v87;
    *(v57 + 48) = v58;
    *(v57 + 64) = 0;
    *(v57 + 72) = 0;
    *(v57 + 80) = 0;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2128, &qword_217041C80);
    sub_216683A80(v55, v57 + *(v59 + 64), &qword_27CAC2118, &qword_217041C38);
    sub_21700DF14();
    sub_21700DF14();
    sub_21700DF14();
    sub_216683A80(&v85, &v89, &qword_27CAC2130, &qword_217041C88);
    sub_2167FDB84(v55, &qword_27CAC2118);
    v89 = v83;
    v90 = v82;
    v91 = v53;
    v92 = v52;
    v93 = v54;
    v94 = 0x3FF0000000000000;
    sub_2167FDB84(&v89, &qword_27CAC2130);
    sub_216683A80(v57, v78, &qword_27CAC20F8, &qword_217041C18);
    swift_storeEnumTagMultiPayload();
    sub_2167D2D50(&unk_27CAC2138);
    sub_2167D2D50(&unk_27CAC2140);
    sub_217009554();
    sub_2167FDB84(v57, &qword_27CAC20F8);
    v60 = v81;
  }

  else
  {
    sub_216683A80(v49, v75, &qword_27CAC2118, &qword_217041C38);
    v61 = v71;
    sub_216683A80(v55, v71, &qword_27CAC2118, &qword_217041C38);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2148, &qword_217041C90);
    v63 = (v61 + *(v62 + 48));
    v64 = v83;
    v65 = v82;
    v85 = v83;
    v86 = v82;
    *&v87 = v53;
    *(&v87 + 1) = v52;
    LOBYTE(v88) = v54;
    *(&v88 + 1) = 0x3FF0000000000000;
    v66 = v82;
    *v63 = v83;
    v63[1] = v66;
    v67 = v88;
    v63[2] = v87;
    v63[3] = v67;
    v68 = v61 + *(v62 + 64);
    *v68 = 0;
    *(v68 + 8) = 0;
    *(v68 + 16) = 0;
    v89 = v64;
    v90 = v65;
    v91 = v53;
    v92 = v52;
    v93 = v54;
    v94 = 0x3FF0000000000000;
    sub_21700DF14();
    sub_21700DF14();
    sub_21700DF14();
    sub_216683A80(&v85, v84, &qword_27CAC2130, &qword_217041C88);
    sub_2167FDB84(&v89, &qword_27CAC2130);
    sub_2167FDB84(v55, &qword_27CAC2118);
    sub_216683A80(v61, v78, &qword_27CAC2108, &qword_217041C28);
    swift_storeEnumTagMultiPayload();
    sub_2167D2D50(&unk_27CAC2138);
    sub_2167D2D50(&unk_27CAC2140);
    sub_217009554();
    sub_2167FDB84(v61, &qword_27CAC2108);
    v60 = v49;
  }

  return sub_2167FDB84(v60, &qword_27CAC2118);
}

uint64_t sub_216AD9C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2150, &qword_217041C98);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2158, &unk_217041CA0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v43 = &v38 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81D0, &unk_21701AFF0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BD8, &qword_217041CB0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v38 - v16);
  v18 = type metadata accessor for SplitPosterLockupView.SplitLockupContentView(0);
  if (sub_216EB939C())
  {
    v41 = sub_21700ADB4();
    sub_217009DE4();
    v19 = sub_217009D84();
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v19);
    v39 = sub_217009DF4();
    sub_2167FDB84(v14, &qword_27CAB81D0);
    KeyPath = swift_getKeyPath();
    v21 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BE0, &unk_21701B000) + 36));
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820, &qword_21701A450);
    v40 = v7;
    v23 = a1;
    v24 = *(v22 + 28);
    v42 = a2;
    v25 = *MEMORY[0x277CE1058];
    v26 = sub_21700ADF4();
    (*(*(v26 - 8) + 104))(v21 + v24, v25, v26);
    *v21 = swift_getKeyPath();
    *v17 = v41;
    v17[1] = KeyPath;
    v17[2] = v39;
    v27 = sub_21700AC54();
    v28 = swift_getKeyPath();
    v29 = (v17 + *(v15 + 36));
    *v29 = v28;
    v29[1] = v27;
    *v6 = sub_2170091A4();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2160, &qword_217041CE8);
    sub_216ADA0C4(v23, v17, &v6[*(v30 + 44)]);
    if (*(v23 + *(v18 + 24)))
    {
      v31 = 13.0;
    }

    else
    {
      v31 = -14.0;
    }

    sub_2167C5834(v6, v9, &qword_27CAC2150, &qword_217041C98);
    v32 = v40;
    v33 = &v9[*(v40 + 36)];
    *v33 = v31;
    *(v33 + 1) = 0;
    v34 = v43;
    sub_2167C5834(v9, v43, &qword_27CAC2158, &unk_217041CA0);
    v35 = v34;
    v36 = v42;
    sub_2167C5834(v35, v42, &qword_27CAC2158, &unk_217041CA0);
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v32);
    return sub_2167FDB84(v17, &qword_27CAB8BD8);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v7);
  }
}

uint64_t sub_216ADA0C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[1] = a3;
  v21[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2168, &qword_217041CF0);
  MEMORY[0x28223BE20](v21[0]);
  v6 = v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2170, &qword_217041CF8);
  MEMORY[0x28223BE20](v7);
  v9 = v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BD8, &qword_217041CB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2178, &qword_217041D00);
  MEMORY[0x28223BE20](v13);
  v15 = v21 - v14;
  LOBYTE(a1) = *(a1 + *(type metadata accessor for SplitPosterLockupView.SplitLockupContentView(0) + 24));
  sub_216683A80(a2, v12, &qword_27CAB8BD8, &qword_217041CB0);
  if (a1)
  {
    *v6 = 0;
    v6[8] = 1;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2180, &qword_217041D08);
    sub_216683A80(v12, &v6[*(v16 + 48)], &qword_27CAB8BD8, &qword_217041CB0);
    sub_2167FDB84(v12, &qword_27CAB8BD8);
    v17 = &qword_27CAC2168;
    sub_216683A80(v6, v9, &qword_27CAC2168, &qword_217041CF0);
    swift_storeEnumTagMultiPayload();
    sub_2167D2D50(&unk_27CAC2188);
    sub_2167D2D50(&unk_27CAC2190);
    sub_217009554();
    v18 = v6;
  }

  else
  {
    sub_216683A80(v12, v15, &qword_27CAB8BD8, &qword_217041CB0);
    v19 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BE8, &qword_217041D10) + 48)];
    *v19 = 0;
    v19[8] = 1;
    sub_2167FDB84(v12, &qword_27CAB8BD8);
    v17 = &qword_27CAC2178;
    sub_216683A80(v15, v9, &qword_27CAC2178, &qword_217041D00);
    swift_storeEnumTagMultiPayload();
    sub_2167D2D50(&unk_27CAC2188);
    sub_2167D2D50(&unk_27CAC2190);
    sub_217009554();
    v18 = v15;
  }

  return sub_2167FDB84(v18, v17);
}

uint64_t sub_216ADA470@<X0>(uint64_t a1@<X0>, void (**a2)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)@<X8>)
{
  v25 = a2;
  v24 = sub_2170067A4();
  v3 = *(v24 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v24);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MenuConfiguration(0);
  v23 = *(v9 - 8);
  v10 = *(v23 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  v15 = *(type metadata accessor for SplitPosterLockupView.SplitLockupContentView(0) + 20);
  swift_storeEnumTagMultiPayload();
  sub_2168A82D8();
  sub_216ADEF60(v8, type metadata accessor for MenuContext);
  v16 = v24;
  (*(v3 + 16))(v5, a1 + v15, v24);
  sub_216ADD4A0(v14, v11, type metadata accessor for MenuConfiguration);
  v17 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v18 = (v4 + *(v23 + 80) + v17) & ~*(v23 + 80);
  v19 = swift_allocObject();
  (*(v3 + 32))(v19 + v17, v5, v16);
  result = sub_216ADD4A0(v11, v19 + v18, type metadata accessor for MenuConfiguration);
  v21 = v25;
  *v25 = sub_216ADEAD0;
  v21[1] = v19;
  return result;
}

uint64_t sub_216ADA720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2170067A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v8);
  v10 = &v25[-v9 - 8];
  v11 = type metadata accessor for SplitPosterLockupView.SplitLockupContentView(0);
  v12 = *(v5 + 16);
  v12(v10, a1 + *(v11 + 20), v4);
  v13 = type metadata accessor for SplitPosterLockup.Item(0);
  sub_216683A80(a1 + *(v13 + 40), v25, &qword_27CAB6DB0, &qword_217016C00);
  v14 = type metadata accessor for ContextMenuPreview(0);
  v15 = (a2 + v14[6]);
  v15[3] = v4;
  v15[4] = sub_216ADCD70(&qword_280E4A480);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  v12(boxed_opaque_existential_1, v10, v4);
  if (v26)
  {
    v17 = 1;
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    v17 = (*(v5 + 88))(v7, v4) == *MEMORY[0x277D2A3F8];
    v10 = v7;
  }

  (*(v5 + 8))(v10, v4);
  sub_2167FDB84(v25, &qword_27CAB6DB0);
  *(a2 + v14[5]) = v17;
  v18 = type metadata accessor for ContextMenuPreview.ViewModel(0);
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v18);
  v19 = v14[7];
  v20 = sub_21700C4B4();
  __swift_storeEnumTagSinglePayload(a2 + v19, 1, 1, v20);
  v21 = v14[8];
  v22 = sub_21700C444();
  return __swift_storeEnumTagSinglePayload(a2 + v21, 1, 1, v22);
}

uint64_t sub_216ADA9BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DE8, "dP\r");
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_2170075A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(type metadata accessor for SplitPosterLockup.Item(0) + 40);
  v10 = *(type metadata accessor for SplitPosterLockupView.SplitLockupContentView(0) + 20);
  v11 = sub_216C0C534(&v25);
  sub_216C0C548(v11, v12, v13, v14, v15, v16, v17, v18, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
  v19 = type metadata accessor for MenuContext(0);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v19);
  sub_2167B9BDC(a1 + v9, a1 + v10, &v25, v8, v4, v20, v21, v22, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
  sub_2167FDB84(v4, &qword_27CAB6DE8);
  (*(v6 + 8))(v8, v5);
  return sub_2167FDB84(&v25, &qword_27CAB7310);
}

uint64_t sub_216ADAB84()
{
  v1 = sub_2170099D4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC21A8, &qword_217041E10);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  *v7 = sub_2170093C4();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC21B0, &qword_217041E18);
  sub_216ADAD44(v0, &v7[*(v8 + 44)]);
  sub_2170099B4();
  sub_2167D2D50(&unk_27CAC21B8);
  sub_21700A784();
  (*(v2 + 8))(v4, v1);
  return sub_2167FDB84(v7, &qword_27CAC21A8);
}

uint64_t sub_216ADAD44@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v63 = a2;
  v3 = sub_21700D864();
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x28223BE20](v3);
  v55 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21700D8E4();
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x28223BE20](v5);
  v52 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC21C0, &unk_217041E20);
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x28223BE20](v7);
  v60 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v73 = &v50 - v10;
  v98 = *a1;
  v11 = v98;
  sub_216683A80(&v98, v84, &qword_27CABAA40, &unk_217014260);
  if (qword_27CAB5CE8 != -1)
  {
    swift_once();
  }

  v12 = qword_27CAC1E68;
  *&v75 = swift_getKeyPath();
  *(&v75 + 1) = v12;

  *(&v74 + 1) = sub_21700AD34();
  *&v74 = swift_getKeyPath();
  v97 = a1[2];
  sub_216683A80(&v97, v84, &qword_27CABAA40, &unk_217014260);
  type metadata accessor for ExplicitBadgingPresenter(0);
  sub_216ADCD70(&qword_280E36A20);
  v14 = sub_217008CF4();
  if (!*(&v97 + 1))
  {
    goto LABEL_10;
  }

  v15 = HIBYTE(*(&v97 + 1)) & 0xFLL;
  v77 = v97;
  if ((*(&v97 + 1) & 0x2000000000000000) == 0)
  {
    v15 = v97 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
    sub_2167FDB84(&v97, &qword_27CABAA40);
LABEL_10:

    v14 = 0;
    v16 = 0;
    v76 = 0;
    v77 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    goto LABEL_13;
  }

  v16 = v13;
  v76 = *(&v97 + 1);
  v17 = *(a1 + 48);
  if (v17)
  {
    v18 = sub_217009154();
  }

  else
  {
    v18 = sub_2170091A4();
  }

  *&v83[0] = v14;
  *(&v83[0] + 1) = v16;
  *&v83[1] = v77;
  *(&v83[1] + 1) = v76;
  LOWORD(v83[2]) = v17;
  *(&v83[2] + 2) = v93;
  WORD3(v83[2]) = v94;
  *(&v83[2] + 1) = 0;
  LOBYTE(v83[3]) = 0;
  *(&v83[3] + 1) = *v92;
  DWORD1(v83[3]) = *&v92[3];
  *(&v83[3] + 1) = v18;
  v70 = *&v83[3];
  v71 = *&v83[2];
  *&v84[0] = v14;
  *(&v84[0] + 1) = v16;
  *&v84[1] = v77;
  *(&v84[1] + 1) = v76;
  LOWORD(v84[2]) = v17;
  WORD3(v84[2]) = v94;
  *(&v84[2] + 2) = v93;
  *(&v84[2] + 1) = 0;
  LOBYTE(v84[3]) = 0;
  DWORD1(v84[3]) = *&v92[3];
  *(&v84[3] + 1) = *v92;
  v72 = v18;
  *(&v84[3] + 1) = v18;
  sub_21680DAEC(v83, v78);
  sub_21680DB48(v84);
LABEL_13:
  if (qword_27CAB5CF8 != -1)
  {
    swift_once();
  }

  v53 = v16;
  v54 = v14;
  v19 = qword_27CAC1E78;
  *&v69 = swift_getKeyPath();
  *(&v69 + 1) = v19;

  *(&v68 + 1) = sub_21700AD14();
  *&v68 = swift_getKeyPath();
  v96 = a1[1];
  v20 = *(&v96 + 1);
  KeyPath = swift_getKeyPath();
  v95 = 0;
  v21 = v96;
  sub_216683A80(&v96, v84, &qword_27CABAA40, &unk_217014260);
  if (qword_27CAB5CF0 != -1)
  {
    swift_once();
  }

  v22 = MEMORY[0x277D84F90];
  if (v20)
  {
    v23 = MEMORY[0x277D84F90];
  }

  else
  {
    v23 = 0;
  }

  if (v20)
  {
    v24 = v21;
  }

  else
  {
    v24 = 0;
  }

  if (v20)
  {
    v25 = 1;
  }

  else
  {
    v25 = 2;
  }

  if (!*(&v11 + 1))
  {
    v22 = 0;
  }

  v64 = v22;
  v65 = v25;
  if (*(&v11 + 1))
  {
    v26 = v11;
  }

  else
  {
    v26 = 0;
  }

  v66 = v26;
  v27 = qword_27CAC1E70;
  v28 = swift_getKeyPath();

  v29 = sub_21700AD34();
  v51 = *(&v11 + 1);
  v30 = v29;
  v31 = swift_getKeyPath();
  v32 = swift_getKeyPath();
  v91 = 0;
  *&v84[0] = v24;
  *(&v84[0] + 1) = v20;
  *&v84[1] = 0;
  *(&v84[1] + 1) = v23;
  *&v84[2] = v28;
  *(&v84[2] + 1) = v27;
  *&v84[3] = v31;
  *(&v84[3] + 1) = v30;
  *&v84[4] = v32;
  *(&v84[4] + 1) = 1;
  LOBYTE(v84[5]) = 0;
  v34 = v55;
  v33 = v56;
  v35 = v57;
  (*(v56 + 104))(v55, *MEMORY[0x277D22070], v57);
  memset(v83, 0, 32);
  memset(v78, 0, 32);
  v36 = v52;
  sub_21700D874();
  sub_2167FDB84(v78, &unk_27CABF7A0);
  sub_2167FDB84(v83, &unk_27CABF7A0);
  (*(v33 + 8))(v34, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF610, &qword_2170337E0);
  sub_216ADEEA8();
  v37 = v73;
  sub_21700A204();
  (*(v58 + 8))(v36, v59);
  memcpy(v78, v84, 0x51uLL);
  sub_2167FDB84(v78, &qword_27CABF610);
  v39 = v60;
  v38 = v61;
  v40 = *(v61 + 16);
  v41 = v62;
  v40(v60, v37, v62);
  *&v79 = v66;
  *(&v79 + 1) = *(&v11 + 1);
  v42 = v63;
  *&v80 = 0;
  *(&v80 + 1) = v64;
  v81 = v75;
  v82 = v74;
  v43 = v80;
  *v63 = v79;
  *(v42 + 1) = v43;
  v44 = v82;
  *(v42 + 2) = v81;
  *(v42 + 3) = v44;
  v45 = v53;
  v46 = v54;
  *&v83[0] = v54;
  *(&v83[0] + 1) = v53;
  *&v83[1] = v77;
  *(&v83[1] + 1) = v76;
  v83[2] = v71;
  *&v83[3] = v70;
  *(&v83[3] + 1) = v72;
  v83[4] = v69;
  v83[5] = v68;
  *&v83[6] = KeyPath;
  *(&v83[6] + 1) = v65;
  LOBYTE(v83[7]) = 0;
  memcpy(v42 + 64, v83, 0x71uLL);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC21C8, &unk_217041E60);
  v40(&v42[*(v47 + 64)], v39, v41);
  sub_216683A80(&v79, v84, &qword_27CABA1C0, &unk_217039CA0);
  sub_216683A80(v83, v84, &qword_27CABF608, &unk_21705E0F0);
  v48 = *(v38 + 8);
  v48(v73, v41);
  v48(v39, v41);
  *&v84[0] = v46;
  *(&v84[0] + 1) = v45;
  *&v84[1] = v77;
  *(&v84[1] + 1) = v76;
  v84[2] = v71;
  *&v84[3] = v70;
  *(&v84[3] + 1) = v72;
  v84[4] = v69;
  v84[5] = v68;
  v85 = KeyPath;
  v86 = v65;
  v87 = 0;
  sub_2167FDB84(v84, &qword_27CABF608);
  v88[0] = v66;
  v88[1] = v51;
  v88[2] = 0;
  v88[3] = v64;
  v89 = v75;
  v90 = v74;
  return sub_2167FDB84(v88, &qword_27CABA1C0);
}

uint64_t sub_216ADB620@<X0>(uint64_t a1@<X8>)
{
  v123 = a1;
  v2 = sub_2170067A4();
  v121 = *(v2 - 8);
  v122 = v2;
  MEMORY[0x28223BE20](v2);
  v118 = v3;
  v119 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v120 = &v99 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v6 - 8);
  v111 = &v99 - v7;
  v112 = sub_21700C444();
  v8 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v109 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v10 - 8);
  v101 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v99 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v15 - 8);
  v100 = &v99 - v16;
  v110 = sub_217007474();
  v108 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v102 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v107 = &v99 - v19;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8, &qword_217017590);
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v104 = &v99 - v20;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC21D0, &qword_21705E110);
  MEMORY[0x28223BE20](v103);
  v115 = &v99 - v21;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC21D8, &qword_217041E70);
  MEMORY[0x28223BE20](v114);
  v116 = &v99 - v22;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC21E0, &qword_217041E78);
  MEMORY[0x28223BE20](v113);
  v117 = &v99 - v23;
  v125 = sub_217009294();
  v126 = *(v125 - 8);
  MEMORY[0x28223BE20](v125 - 8);
  v124 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2170090F4();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for SplitPosterLockupView.ArtworkView(0);
  v30 = v1;
  v31 = v1 + v29[9];
  v32 = *v31;
  if (*(v31 + 8) == 1)
  {
    v33 = *v31;
  }

  else
  {

    sub_21700ED94();
    v34 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v32, 0);
    (*(v26 + 8))(v28, v25);
    v33 = v127;
  }

  v35 = v33 * 0.3;
  v36 = [objc_opt_self() defaultMetrics];
  [v36 scaledValueForValue_];
  v38 = v37;

  if (v35 >= v38)
  {
    v35 = v38;
  }

  v39 = v30;
  v40 = v109;
  if (*(v30 + v29[6]) == 1)
  {

    v41 = v35 * 0.5;
    v42 = MEMORY[0x277CE0128];
  }

  else
  {
    v43 = sub_21700F7D4();

    if (v43)
    {
      v41 = v35 * 0.5;
    }

    else
    {
      v41 = 5.0;
    }

    v44 = sub_21700F7D4();
    v42 = MEMORY[0x277CE0118];
    if (v44)
    {
      v42 = MEMORY[0x277CE0128];
    }
  }

  v45 = v8;
  v46 = v102;
  v47 = v100;
  (*(v126 + 104))(v124, *v42, v125);
  sub_216683A80(v39, v14, &qword_27CAB6D60, &qword_217014E40);
  v48 = type metadata accessor for Artwork(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v48);
  v50 = v101;
  if (EnumTagSinglePayload == 1)
  {
    sub_2167FDB84(v14, &qword_27CAB6D60);
    v51 = sub_21700C4B4();
    v52 = v47;
    v53 = 1;
  }

  else
  {
    v54 = sub_21700C4B4();
    (*(*(v54 - 8) + 16))(v47, v14, v54);
    sub_216ADEF60(v14, type metadata accessor for Artwork);
    v52 = v47;
    v53 = 0;
    v51 = v54;
  }

  __swift_storeEnumTagSinglePayload(v52, v53, 1, v51);
  v55 = v111;
  sub_217007434();
  sub_216683A80(v39, v50, &qword_27CAB6D60, &qword_217014E40);
  v56 = __swift_getEnumTagSinglePayload(v50, 1, v48);
  v57 = v112;
  if (v56 == 1)
  {
    sub_2167FDB84(v50, &qword_27CAB6D60);
    __swift_storeEnumTagSinglePayload(v55, 1, 1, v57);
    sub_21700C404();
    if (__swift_getEnumTagSinglePayload(v55, 1, v57) != 1)
    {
      sub_2167FDB84(v55, &qword_27CAB7530);
    }
  }

  else
  {
    (*(v45 + 16))(v55, v50 + *(v48 + 20), v112);
    sub_216ADEF60(v50, type metadata accessor for Artwork);
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v57);
    (*(v45 + 32))(v40, v55, v57);
  }

  v58 = v107;
  sub_2170073E4();
  (*(v45 + 8))(v40, v57);
  v59 = *(v108 + 8);
  v60 = v46;
  v61 = v110;
  v59(v60, v110);
  v62 = (v39 + v29[5]);
  v63 = *v62;
  v64 = v62[1];
  v65 = swift_allocObject();
  *(v65 + 16) = v63;
  *(v65 + 24) = v64;
  sub_2167B8890(v63, v64);
  sub_2167C505C();
  v66 = v104;
  sub_2170073F4();

  v59(v58, v61);
  v67 = v115;
  (*(v105 + 32))(v115, v66, v106);
  *(v67 + *(v103 + 36)) = xmmword_217026E20;
  v68 = sub_21700B3B4();
  v70 = *(v39 + v29[10]);
  if (v70)
  {
    v71 = v68;
    v72 = v69;
    v74 = v121;
    v73 = v122;
    v75 = *(v121 + 16);
    v76 = v39 + v29[7];
    v77 = v120;
    v75(v120, v76, v122);
    v78 = v119;
    v75(v119, v77, v73);
    v79 = (*(v74 + 80) + 24) & ~*(v74 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = v70;
    (*(v74 + 32))(v80 + v79, v78, v73);
    type metadata accessor for PlaybackPresenter(0);
    sub_216ADCD70(&qword_280E3FDB0);
    swift_retain_n();
    v81 = sub_217008684();
    v83 = v82;
    (*(v74 + 8))(v77, v73);
    v84 = v116;
    sub_2167C5834(v67, v116, &qword_27CAC21D0, &qword_21705E110);
    v85 = v84 + *(v114 + 36);
    *v85 = sub_21680CE98;
    *(v85 + 8) = v80;
    *(v85 + 16) = 0;
    *(v85 + 24) = v81;
    *(v85 + 32) = v83;
    *(v85 + 40) = v71;
    *(v85 + 48) = v72;
    v86 = v117;
    v87 = &v117[*(v113 + 36)];
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7440, &unk_217016D40);
    v89 = &v87[*(v88 + 36)];
    v90 = sub_217008B44();
    v91 = v125;
    v92 = v124;
    (*(v126 + 16))(v89 + *(v90 + 20), v124, v125);
    *v89 = v41;
    v89[1] = v41;
    if (qword_27CAB5D00 != -1)
    {
      swift_once();
    }

    v93 = qword_27CAC1E80;
    v94 = byte_27CAC1E88;
    v95 = qword_27CAC1E90;
    (*(v126 + 8))(v92, v91);
    v96 = v86 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC21E8, &qword_217041E80) + 36);
    sub_216ADD3EC(v89, v96, MEMORY[0x277CDFC08]);
    *(v96 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0) + 36)) = 256;
    sub_2167C5834(v84, v86, &qword_27CAC21D8, &qword_217041E70);
    *v87 = v93;
    v87[8] = v94;
    *(v87 + 2) = v95;
    v97 = &v87[*(v88 + 40)];
    *v97 = swift_getKeyPath();
    v97[8] = 0;
    sub_2167C5834(v86, v123, &qword_27CAC21E0, &qword_217041E78);
  }

  else
  {
    type metadata accessor for PlaybackPresenter(0);
    sub_216ADCD70(&qword_280E3FDB0);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216ADC464()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC1E50);
  __swift_project_value_buffer(v0, qword_27CAC1E50);
  type metadata accessor for SplitPosterLockupView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1FB8, &qword_217041910);
  sub_21700E5B4();
  return sub_217007C94();
}

uint64_t sub_216ADC508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF360, &unk_217041900);
  v5[20] = swift_task_alloc();
  sub_21700EA34();
  v5[21] = sub_21700EA24();
  v7 = sub_21700E9B4();
  v5[22] = v7;
  v5[23] = v6;

  return MEMORY[0x2822009F8](sub_216ADC5D8, v7, v6);
}

uint64_t sub_216ADC860()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  *(*v1 + 208) = v0;

  sub_2167FDB84(v3, &qword_27CABF360);
  v4 = *(v2 + 184);
  v5 = *(v2 + 176);
  if (v0)
  {
    v6 = sub_216ADCA7C;
  }

  else
  {
    v6 = sub_216ADC9C8;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_216ADC9C8()
{
  v1 = *(v0 + 192);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_13_45();
  *(v1 + 128) = v2;
  *(v0 + 136) = v3;
  *(v0 + 218) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  sub_21700AEC4();

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_216ADCA7C()
{
  v1 = *(v0 + 192);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_13_45();
  *(v1 + 112) = v2;
  *(v0 + 120) = v3;
  *(v0 + 217) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  sub_21700AEC4();

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_216ADCB38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for SplitPosterLockupView(0);
  v4 = v3[5];
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  swift_storeEnumTagMultiPayload();
  v5 = a2 + v3[6];
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v6 = a2 + v3[7];
  sub_21700AEA4();
  *v6 = v12;
  *(v6 + 1) = v13;
  v7 = a2 + v3[8];
  *v7 = swift_getKeyPath();
  v7[40] = 0;
  v8 = (a2 + v3[9]);
  type metadata accessor for ReplayGradientImageGenerator();
  sub_216ADCD70(qword_280E31F28);
  *v8 = sub_217008CF4();
  v8[1] = v9;
  v10 = v3[10];
  *(a2 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_216ADCCF8(uint64_t a1)
{
  result = sub_216ADCD70(&qword_27CAC1E98);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216ADCD70(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_216ADCDB4(__n128 a1)
{
  sub_217009E84();
  sub_217009DE4();
  v1 = sub_217009E34();

  qword_27CAC1E68 = v1;
  return result;
}

uint64_t sub_216ADCDF8(uint64_t a1)
{
  result = sub_217009D44();
  qword_27CAC1E70 = result;
  return result;
}

uint64_t sub_216ADCE18()
{
  result = sub_217009E54();
  qword_27CAC1E78 = result;
  return result;
}

uint64_t sub_216ADCE38(uint64_t a1)
{
  sub_21700ACC4();
  v1 = sub_21700AD04();

  sub_21700ACF4();
  v2 = sub_21700AD04();

  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = objc_allocWithZone(MEMORY[0x277D75348]);

  sub_216847A1C(sub_216ADF370, v3);
  v5 = sub_21700AC44();

  qword_27CAC1E80 = 0x3FF0000000000000;
  byte_27CAC1E88 = 1;
  qword_27CAC1E90 = v5;
  return result;
}

unint64_t sub_216ADCF28()
{
  result = qword_27CAC1EF0;
  if (!qword_27CAC1EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1EA0, &qword_2170417B0);
    sub_216ADCFE0();
    sub_2167D2D50(&unk_27CAC1F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1EF0);
  }

  return result;
}

unint64_t sub_216ADCFE0()
{
  result = qword_27CAC1EF8;
  if (!qword_27CAC1EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1ED8, &unk_2170417E8);
    sub_216ADF0D8(&unk_27CAC1F00);
    sub_2167D2D50(qword_280E382B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1EF8);
  }

  return result;
}

unint64_t sub_216ADD0C4()
{
  result = qword_27CAC1F10;
  if (!qword_27CAC1F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1EE0, &unk_2170417F8);
    sub_216ADD17C();
    sub_2167D2D50(&qword_280E2B390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1F10);
  }

  return result;
}

unint64_t sub_216ADD17C()
{
  result = qword_27CAC1F18;
  if (!qword_27CAC1F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1EC8, &qword_2170417D8);
    sub_216ADD234();
    sub_2167D2D50(&unk_27CAC1F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1F18);
  }

  return result;
}

unint64_t sub_216ADD234()
{
  result = qword_27CAC1F20;
  if (!qword_27CAC1F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1EC0, &qword_2170417D0);
    sub_2167D2D50(&unk_27CAC1F28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1F20);
  }

  return result;
}

unint64_t sub_216ADD2F4()
{
  result = qword_27CAC1F50;
  if (!qword_27CAC1F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1EB0, &qword_2170417C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1EA0, &qword_2170417B0);
    sub_216ADCF28();
    swift_getOpaqueTypeConformance2();
    sub_216ADCD70(&qword_280E2A6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1F50);
  }

  return result;
}

uint64_t sub_216ADD3EC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216ADD44C()
{
  v1 = OUTLINED_FUNCTION_8_1();
  v2 = type metadata accessor for SplitPosterLockup.Item(v1);
  OUTLINED_FUNCTION_36(v2);
  v4 = OUTLINED_FUNCTION_31_3(*(v3 + 80));
  return sub_216AD88F4(v4, v0);
}

uint64_t sub_216ADD4A0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

unint64_t sub_216ADD51C()
{
  result = qword_27CAC1F88;
  if (!qword_27CAC1F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1F80, &qword_217041888);
    sub_216ADD5A8();
    sub_216ADD68C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1F88);
  }

  return result;
}

unint64_t sub_216ADD5A8()
{
  result = qword_27CAC1F90;
  if (!qword_27CAC1F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1F98, &qword_217041890);
    sub_2167D2D50(&qword_27CAB7BC8);
    sub_2167D2D50(&qword_280E2A718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1F90);
  }

  return result;
}

unint64_t sub_216ADD68C()
{
  result = qword_27CAC1FA0;
  if (!qword_27CAC1FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1FA8, &unk_217041898);
    sub_216ADE128(&qword_280E2B0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1FA0);
  }

  return result;
}

uint64_t sub_216ADD738()
{
  OUTLINED_FUNCTION_17_6();
  result = sub_2170090C4();
  *v0 = result;
  return result;
}

uint64_t sub_216ADD78C(uint64_t a1)
{
  v4 = type metadata accessor for SplitPosterLockupView(0);
  OUTLINED_FUNCTION_2(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2167AF644;

  return sub_216ADC508(a1, v9, v10, v1 + v6, v1 + v8);
}

uint64_t objectdestroy_19Tm_0()
{
  type metadata accessor for SplitPosterLockupView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  OUTLINED_FUNCTION_20_36();
  v6 = v3 + v0[8];
  if (*(v6 + 40))
  {
    if (*(v6 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }
  }

  else
  {
  }

  v7 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v8 + 8))(v3 + v7);
  }

  else
  {
  }

  OUTLINED_FUNCTION_27_33();

  return swift_deallocObject();
}

uint64_t sub_216ADDA40()
{
  v1 = type metadata accessor for SplitPosterLockupView(0);
  OUTLINED_FUNCTION_2(v1);
  return sub_216AD7520(v0 + ((*(v3 + 64) + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
}

unint64_t sub_216ADDAC0()
{
  result = qword_27CAC2010;
  if (!qword_27CAC2010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1FD0, &qword_217041960);
    sub_216ADDB78();
    sub_2167D2D50(&qword_280E2A720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2010);
  }

  return result;
}

unint64_t sub_216ADDB78()
{
  result = qword_27CAC2018;
  if (!qword_27CAC2018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2008, &qword_2170419E8);
    sub_216ADDC30();
    sub_2167D2D50(&qword_280E2A718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2018);
  }

  return result;
}

unint64_t sub_216ADDC30()
{
  result = qword_27CAC2020;
  if (!qword_27CAC2020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2000, &qword_2170419B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1F60, &unk_217041858);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1FC8, &qword_217041958);
    sub_2167D2D50(&unk_27CAC1FF0);
    sub_2167D2D50(&unk_27CAC1FF8);
    swift_getOpaqueTypeConformance2();
    sub_2167D2D50(&qword_280E2A6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2020);
  }

  return result;
}

unint64_t sub_216ADDDB8()
{
  result = qword_27CAC2038;
  if (!qword_27CAC2038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1FE0, &qword_217041970);
    sub_216ADDE44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2038);
  }

  return result;
}

unint64_t sub_216ADDE44()
{
  result = qword_27CAC2040;
  if (!qword_27CAC2040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2030, &unk_217041A60);
    sub_216ADDED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2040);
  }

  return result;
}

unint64_t sub_216ADDED0()
{
  result = qword_27CAC2048;
  if (!qword_27CAC2048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2028, &unk_217041A20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1FD8, &qword_217041968);
    sub_217009354();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1FD0, &qword_217041960);
    sub_216ADDAC0();
    swift_getOpaqueTypeConformance2();
    sub_216ADCD70(&qword_27CAB9D40);
    swift_getOpaqueTypeConformance2();
    sub_2167D2D50(&qword_280E2A728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2048);
  }

  return result;
}

unint64_t sub_216ADE050()
{
  result = qword_27CAC2058;
  if (!qword_27CAC2058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2050, &unk_217041A70);
    sub_2167D2D50(&qword_280E2A840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2058);
  }

  return result;
}

unint64_t sub_216ADE128(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_100(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_6_66();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_216ADE1A4(uint64_t a1)
{
  type metadata accessor for SplitPosterLockup.Item(319);
  if (v1 <= 0x3F)
  {
    sub_2170067A4();
    if (v2 <= 0x3F)
    {
      sub_216ADEE0C(319, &qword_280E2B4C0, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_21680D428(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SplitPosterLockupView.SplitLockupContentView.ArtworkAlignment(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_216ADE394(uint64_t a1)
{
  sub_216ADE538(319);
  if (v1 <= 0x3F)
  {
    sub_216ADEE0C(319, &qword_280E2B460, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_216ADE614(319, &qword_280E2B480, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_216ADE614(319, &qword_280E2A590, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_21680D428(319);
          if (v5 <= 0x3F)
          {
            sub_216ADE664(319);
            if (v6 <= 0x3F)
            {
              sub_216ADEE0C(319, &qword_280E2B4C0, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
              if (v7 <= 0x3F)
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

void sub_216ADE538(uint64_t a1)
{
  if (!qword_280E43230[0])
  {
    v4[0] = type metadata accessor for SplitPosterLockup(255);
    v4[1] = sub_216ADCD70(qword_280E3F790);
    v4[2] = &off_28293B1E0;
    v4[3] = sub_216ADCD70(&qword_280E3F778);
    v2 = type metadata accessor for MappedItemPair(a1, v4);
    if (!v3)
    {
      atomic_store(v2, qword_280E43230);
    }
  }
}

void sub_216ADE614(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_216ADE664(uint64_t a1)
{
  if (!qword_280E2ACA8)
  {
    type metadata accessor for ReplayGradientImageGenerator();
    sub_216ADCD70(qword_280E31F28);
    v1 = sub_217008D04();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2ACA8);
    }
  }
}

unint64_t sub_216ADE6FC()
{
  result = qword_27CAC20D8;
  if (!qword_27CAC20D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC20D8);
  }

  return result;
}

uint64_t sub_216ADE76C()
{
  v1 = OUTLINED_FUNCTION_8_1();
  v2 = type metadata accessor for SplitPosterLockupView.SplitLockupContentView(v1);
  OUTLINED_FUNCTION_36(v2);
  v4 = OUTLINED_FUNCTION_31_3(*(v3 + 80));

  return sub_216AD91B4(v4, v0);
}

uint64_t objectdestroy_79Tm()
{
  OUTLINED_FUNCTION_49();
  type metadata accessor for SplitPosterLockupView.SplitLockupContentView(0);
  OUTLINED_FUNCTION_4_4();
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  v5 = type metadata accessor for SplitPosterLockup.Item(0);
  v6 = &v4[v5[5]];
  v7 = type metadata accessor for ContentDescriptor(0);
  if (!OUTLINED_FUNCTION_4_16(v7))
  {

    v8 = *(v2 + 24);
    v2 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(&v6[v8], 1, v2))
    {
      OUTLINED_FUNCTION_50();
      (*(v9 + 8))(&v6[v8], v2);
    }
  }

  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();
  v10 = &v4[v5[9]];
  v11 = type metadata accessor for Artwork(0);
  if (!OUTLINED_FUNCTION_4_16(v11))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v12 + 8))(v10);
    v13 = *(v2 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v14 + 8))(&v10[v13]);
  }

  v15 = &v4[v5[10]];
  if (*(v15 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  v16 = v0[5];
  sub_2170067A4();
  OUTLINED_FUNCTION_9_0();
  (*(v17 + 8))(&v4[v16]);
  v18 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v19 + 8))(&v4[v18]);
  }

  else
  {
  }

  v20 = &v4[v0[8]];
  if (v20[40])
  {
    if (*(v20 + 3))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_216ADEA7C()
{
  v0 = type metadata accessor for SplitPosterLockupView.SplitLockupContentView(0);
  OUTLINED_FUNCTION_36(v0);
  v2 = OUTLINED_FUNCTION_31_3(*(v1 + 80));

  return sub_216ADA9BC(v2);
}

void sub_216ADEAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_8_1();
  v21 = sub_2170067A4();
  OUTLINED_FUNCTION_2(v21);
  v23 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v25 = *(v24 + 64);
  v26 = type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_36(v26);
  v34 = v20 + ((v23 + v25 + *(v33 + 80)) & ~*(v33 + 80));

  sub_2169BDF30(v20 + v23, v34, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_216ADEBB4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 49))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216ADEC08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_216ADECA4(uint64_t a1)
{
  sub_216ADEE0C(319, &qword_280E2BF20, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2170067A4();
    if (v2 <= 0x3F)
    {
      sub_216ADEE0C(319, &qword_280E2B450, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_216ADE614(319, &qword_280E2B480, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_2167B84AC(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_216ADEE0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_216ADEEA8()
{
  result = qword_280E2AF00;
  if (!qword_280E2AF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF610, &qword_2170337E0);
    sub_21686BF40();
    sub_2167D2D50(&qword_280E2A6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AF00);
  }

  return result;
}

uint64_t sub_216ADEF60(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_60Tm()
{

  return swift_deallocObject();
}

unint64_t sub_216ADEFF4()
{
  result = qword_27CAC21F0;
  if (!qword_27CAC21F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC21E0, &qword_217041E78);
    sub_216ADF0D8(&unk_27CAC21F8);
    sub_2167D2D50(qword_280E382B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC21F0);
  }

  return result;
}

unint64_t sub_216ADF0D8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_100(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    OUTLINED_FUNCTION_6_66();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_216ADF140()
{
  result = qword_27CAC2208;
  if (!qword_27CAC2208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC21E8, &qword_217041E80);
    sub_216ADF1F8();
    sub_2167D2D50(&qword_280E2B390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2208);
  }

  return result;
}

unint64_t sub_216ADF1F8()
{
  result = qword_27CAC2210;
  if (!qword_27CAC2210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC21D8, &qword_217041E70);
    sub_216ADF2B0();
    sub_2167D2D50(&qword_27CAC2220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2210);
  }

  return result;
}

unint64_t sub_216ADF2B0()
{
  result = qword_27CAC2218;
  if (!qword_27CAC2218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC21D0, &qword_21705E110);
    sub_2167C505C();
    swift_getOpaqueTypeConformance2();
    sub_2167B8C60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2218);
  }

  return result;
}

void sub_216ADF378()
{
  OUTLINED_FUNCTION_49();
  v92 = v1;
  v3 = v2;
  v5 = v4;
  v88 = sub_21700CFB4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v87 = v9;
  v10 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_21700D704();
  OUTLINED_FUNCTION_1();
  v84 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v18);
  v20 = &v83 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  v22 = OUTLINED_FUNCTION_36(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v23);
  v25 = &v83 - v24;
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v90 = v27;
  v91 = v26;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_0();
  v89 = v28;
  *(v5 + 80) = 0u;
  v83 = v5 + 80;
  *(v5 + 112) = 0;
  *(v5 + 96) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  v93 = v3;
  v94 = v5;
  *v5 = 0u;
  *&v95 = sub_217006784();
  v30 = v29;
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v10);
  sub_21700D6F4();
  v97 = MEMORY[0x277D837D0];
  *&v96 = 2036427888;
  *(&v96 + 1) = 0xE400000000000000;
  sub_2166EF9C4(&v96, v100);
  v34 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v99 = v34;
  sub_2166EF9D4();
  v35 = v99;
  sub_216681B04(v25, v0, &qword_27CABA820, &unk_217018CE0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v10) == 1)
  {
    sub_216697664(v0, &qword_27CABA820, &unk_217018CE0);
  }

  else
  {
    v36 = OUTLINED_FUNCTION_97();
    v37(v36);
    v38 = sub_217005DE4();
    v97 = MEMORY[0x277D837D0];
    *&v96 = v38;
    *(&v96 + 1) = v39;
    sub_2166EF9C4(&v96, v100);
    swift_isUniquelyReferenced_nonNull_native();
    v99 = v35;
    sub_2166EF9D4();
    v35 = v99;
    (*(v12 + 8))(v15, v10);
  }

  v40 = v91;
  if (qword_280E46040 != -1)
  {
    OUTLINED_FUNCTION_19_9(&qword_280E46040);
  }

  v41 = sub_21700CF84();
  v42 = __swift_project_value_buffer(v41, qword_280E73DB0);
  v43 = v87;
  MEMORY[0x21CE9DD70](v95, v30, 0x6E6F74747562, 0xE600000000000000, v35, v42);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
  OUTLINED_FUNCTION_9_61();
  v44 = swift_allocObject();
  v95 = xmmword_217013DA0;
  *(v44 + 16) = xmmword_217013DA0;
  v45 = v44 + v0;
  v46 = v88;
  (*(v7 + 16))(v45, v43, v88);
  v47 = v84;
  v48 = v86;
  (*(v84 + 16))(v85, v20, v86);
  v49 = v89;
  sub_21700D244();
  v50 = OUTLINED_FUNCTION_97();
  v51(v50);
  (*(v47 + 8))(v20, v48);
  sub_216697664(v25, &qword_27CABA820, &unk_217018CE0);
  sub_216C6D16C();
  sub_217006D94();

  v52 = sub_217006D14();
  v53 = v90;
  v54 = v40;
  v55 = v93;
  if (v52)
  {
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFFE0, qword_217041EC0);
    sub_2170067A4();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_9_61();
    v57 = swift_allocObject();
    v58 = OUTLINED_FUNCTION_26_35(v57);
    v59(v58);
    v97 = type metadata accessor for QueueGenericMusicItemsAction(0);
    OUTLINED_FUNCTION_6_67();
    v98 = sub_216AE2C68(v60, v61, &unk_21706F42C);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v96);
    v63 = OUTLINED_FUNCTION_25_32(boxed_opaque_existential_1);
    v64(v63);
    *v46 = v56;
    *(v46 + 8) = 1;
    sub_216AE2770(&v96, v83);
  }

  if (sub_217006D24())
  {
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFFE0, qword_217041EC0);
    sub_2170067A4();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_9_61();
    v66 = swift_allocObject();
    v67 = OUTLINED_FUNCTION_26_35(v66);
    v68(v67);
    v97 = type metadata accessor for QueueGenericMusicItemsAction(0);
    OUTLINED_FUNCTION_6_67();
    v98 = sub_216AE2C68(v69, v70, &unk_21706F42C);
    v71 = __swift_allocate_boxed_opaque_existential_1(&v96);
    v72 = OUTLINED_FUNCTION_25_32(v71);
    v73(v72);
    *v46 = v65;
    *(v46 + 8) = 0;
    sub_216AE2770(&v96, v94 + 40);
  }

  if (sub_217006D04())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFFE0, qword_217041EC0);
    v74 = sub_2170067A4();
    OUTLINED_FUNCTION_1();
    v76 = v75;
    OUTLINED_FUNCTION_9_61();
    v77 = swift_allocObject();
    *(v77 + 16) = v95;
    (*(v76 + 16))(v77 + v46, v55, v74);

    (*(v76 + 8))(v55, v74);
    v78 = type metadata accessor for QueueGenericMusicItemsAction(0);
    v97 = v78;
    OUTLINED_FUNCTION_6_67();
    v98 = sub_216AE2C68(v79, v80, &unk_21706F42C);
    v81 = __swift_allocate_boxed_opaque_existential_1(&v96);
    *v81 = v77;
    *(v81 + 8) = 2;
    (*(v53 + 32))(v81 + *(v78 + 24), v49, v54);
    sub_216AE2770(&v96, v94);
  }

  else
  {

    sub_2170067A4();
    OUTLINED_FUNCTION_34();
    (*(v82 + 8))(v55);
    (*(v53 + 8))(v49, v54);
  }

  OUTLINED_FUNCTION_26();
}

void sub_216ADFC6C()
{
  OUTLINED_FUNCTION_49();
  v282 = v0;
  v281 = v1;
  v3 = v2;
  v280 = v4;
  v253 = sub_21700BA44();
  OUTLINED_FUNCTION_1();
  v252 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v7);
  v249 = sub_21700C084();
  OUTLINED_FUNCTION_1();
  v248 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v10);
  v279 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v14);
  v277 = sub_21700CFB4();
  OUTLINED_FUNCTION_1();
  v276 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v17);
  v258 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v263 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v22);
  v274 = sub_21700D704();
  OUTLINED_FUNCTION_1();
  v259 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  v30 = OUTLINED_FUNCTION_36(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v36);
  v262 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v261 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81E0, qword_217019170);
  OUTLINED_FUNCTION_36(v42);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v43);
  v45 = &v229 - v44;
  v46 = sub_21700BBA4();
  OUTLINED_FUNCTION_1();
  v271 = v47;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A70, &unk_21701ADA0);
  OUTLINED_FUNCTION_36(v52);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v53);
  v55 = &v229 - v54;
  v56 = sub_21700BDB4();
  OUTLINED_FUNCTION_1();
  v58 = v57;
  MEMORY[0x28223BE20](v59);
  v61 = &v229 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v283 = type metadata accessor for TrailingSwipeActions(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v63);
  sub_216681B04(v3, v55, &qword_27CAB8A70, &unk_21701ADA0);
  if (__swift_getEnumTagSinglePayload(v55, 1, v56) == 1)
  {
    (*(v12 + 8))(v282, v279);
    sub_216697664(v281, &qword_27CAB81E0, qword_217019170);
    sub_216697664(v3, &qword_27CAB8A70, &unk_21701ADA0);
    v64 = v55;
    v65 = &qword_27CAB8A70;
    v66 = &unk_21701ADA0;
  }

  else
  {
    v246 = v3;
    v247 = v12;
    (*(v58 + 32))(v61, v55, v56);
    v67 = v281;
    sub_216681B04(v281, v45, &qword_27CAB81E0, qword_217019170);
    OUTLINED_FUNCTION_40_18();
    if (!v68)
    {
      v72 = v271;
      v73 = *(v271 + 32);
      v74 = v270;
      v232 = v271 + 32;
      v231 = v73;
      v73(v270, v45, v46);
      v75 = v278;
      (*(v58 + 16))(v278, v61, v56);
      v76 = *(v72 + 16);
      v230 = *(v283 + 20);
      v235 = v46;
      v76(v75 + v230, v74, v46);
      v244 = sub_217006784();
      v245 = v77;
      v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
      inited = swift_initStackObject();
      v255 = xmmword_217013DA0;
      *(inited + 16) = xmmword_217013DA0;
      *(inited + 32) = 0x72466574656C6564;
      *(inited + 40) = 0xEA00000000006D6FLL;
      v79 = MEMORY[0x277D837D0];
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = 0x7972617262694CLL;
      *(inited + 56) = 0xE700000000000000;
      sub_21700E384();
      v80 = v265;
      OUTLINED_FUNCTION_38_2();
      v81 = v258;
      __swift_storeEnumTagSinglePayload(v82, v83, v84, v258);
      sub_21700D6F4();
      v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
      v285 = v233;
      OUTLINED_FUNCTION_62_10();
      v85 = MEMORY[0x277D84F98];
      swift_isUniquelyReferenced_nonNull_native();
      v289 = v85;
      v86 = OUTLINED_FUNCTION_1_120();
      OUTLINED_FUNCTION_45_21(v86, v87);
      v88 = v289;
      v285 = v79;
      OUTLINED_FUNCTION_38_23(0x62694C6F54646461);
      swift_isUniquelyReferenced_nonNull_native();
      v289 = v88;
      v89 = OUTLINED_FUNCTION_1_120();
      OUTLINED_FUNCTION_44_19(v89, v90);
      v91 = v289;
      v92 = v254;
      sub_216681B04(v80, v254, &qword_27CABA820, &unk_217018CE0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v92, 1, v81);
      if (EnumTagSinglePayload == 1)
      {
        v94 = v81;
        sub_216697664(v92, &qword_27CABA820, &unk_217018CE0);
      }

      else
      {
        OUTLINED_FUNCTION_18_37();
        v95 = v250;
        v96(v250, v92, v81);
        v97 = sub_217005DE4();
        v285 = v79;
        OUTLINED_FUNCTION_12_47(v97, v98);
        swift_isUniquelyReferenced_nonNull_native();
        v289 = v91;
        v99 = OUTLINED_FUNCTION_1_120();
        OUTLINED_FUNCTION_50_17(v99, v100);
        v91 = v289;
        v101 = v95;
        v94 = v81;
        (*(v80 + 8))(v101, v81);
      }

      v102 = v276;
      v103 = v259;
      v236 = v61;
      v237 = v58;
      v238 = v56;
      if (qword_280E46040 != -1)
      {
        OUTLINED_FUNCTION_19_9(&qword_280E46040);
      }

      v104 = sub_21700CF84();
      v105 = __swift_project_value_buffer(v104, qword_280E73DB0);
      v106 = v275;
      v259 = v105;
      MEMORY[0x21CE9DD70](v244, v245, 0x6E6F74747562, 0xE600000000000000, v91);

      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
      v108 = (v102[80] + 32) & ~v102[80];
      v109 = v108 + *(v102 + 9);
      v244 = v102[80];
      v250 = v107;
      v243 = v109;
      v110 = swift_allocObject();
      v111 = OUTLINED_FUNCTION_19_38(v110);
      v112 = *(v102 + 2);
      v254 = v108;
      v114 = v113 + v108;
      v115 = v277;
      v242 = (v102 + 16);
      v241 = v112;
      v112(v114, v106, v277, v111);
      v116 = OUTLINED_FUNCTION_53_16();
      v117 = v266;
      v118 = v274;
      v240 = v119;
      v239 = v120;
      v120(v116, v266, v274);
      sub_21700D244();
      v121 = *(v102 + 1);
      v276 = v102 + 8;
      v245 = v121;
      v121(v106, v115);
      v266 = *(v103 + 8);
      (v266)(v117, v118);
      v122 = OUTLINED_FUNCTION_59_12(&v287);
      sub_216697664(v122, v123, &unk_217018CE0);
      sub_217006784();
      v124 = swift_initStackObject();
      OUTLINED_FUNCTION_19_38(v124);
      v125[4] = 0x72466574656C6564;
      v125[5] = 0xEA00000000006D6FLL;
      v126 = MEMORY[0x277D837D0];
      v125[9] = MEMORY[0x277D837D0];
      v125[6] = 0x7972617262694CLL;
      v125[7] = 0xE700000000000000;
      sub_21700E384();
      v127 = v267;
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v128, v129, v130, v94);
      sub_21700D6F4();
      OUTLINED_FUNCTION_58_15(v233);
      OUTLINED_FUNCTION_62_10();
      v131 = MEMORY[0x277D84F98];
      swift_isUniquelyReferenced_nonNull_native();
      v289 = v131;
      v132 = OUTLINED_FUNCTION_1_120();
      OUTLINED_FUNCTION_45_21(v132, v133);
      v134 = v289;
      v285 = v126;
      *&v284 = 0x6574656C6564;
      *(&v284 + 1) = 0xE600000000000000;
      sub_2166EF9C4(&v284, v290);
      swift_isUniquelyReferenced_nonNull_native();
      v289 = v134;
      v135 = OUTLINED_FUNCTION_1_120();
      OUTLINED_FUNCTION_44_19(v135, v136);
      v137 = v289;
      v138 = v256;
      sub_216681B04(v127, v256, &qword_27CABA820, &unk_217018CE0);
      OUTLINED_FUNCTION_40_18();
      if (v68)
      {
        sub_216697664(v138, &qword_27CABA820, &unk_217018CE0);
      }

      else
      {
        OUTLINED_FUNCTION_18_37();
        v139 = v251;
        v140(v251, v138, v94);
        sub_217005DE4();
        OUTLINED_FUNCTION_58_15(MEMORY[0x277D837D0]);
        OUTLINED_FUNCTION_12_47(v141, v142);
        swift_isUniquelyReferenced_nonNull_native();
        v289 = v137;
        v143 = OUTLINED_FUNCTION_1_120();
        OUTLINED_FUNCTION_50_17(v143, v144);
        off_27CABA828(v139, v94);
      }

      v145 = v275;
      v146 = OUTLINED_FUNCTION_29_30();
      MEMORY[0x21CE9DD70](v146);

      v147 = OUTLINED_FUNCTION_34_24();
      OUTLINED_FUNCTION_19_38(v147);
      v148 = v277;
      OUTLINED_FUNCTION_56_16();
      v149();
      OUTLINED_FUNCTION_55_16();
      v150();
      sub_21700D244();
      v245(v145, v148);
      v151 = OUTLINED_FUNCTION_97();
      v266(v151);
      v152 = OUTLINED_FUNCTION_59_12(&v288);
      sub_216697664(v152, v153, &unk_217018CE0);
      sub_217006784();
      v154 = v268;
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v155, v156, v157, v94);
      sub_21700D6F4();
      OUTLINED_FUNCTION_58_15(MEMORY[0x277D837D0]);
      OUTLINED_FUNCTION_38_23(0x64616F6C6E776F64);
      v158 = MEMORY[0x277D84F98];
      swift_isUniquelyReferenced_nonNull_native();
      v289 = v158;
      v159 = OUTLINED_FUNCTION_1_120();
      OUTLINED_FUNCTION_44_19(v159, v160);
      v161 = v289;
      v162 = v257;
      sub_216681B04(v154, v257, &qword_27CABA820, &unk_217018CE0);
      OUTLINED_FUNCTION_40_18();
      if (v68)
      {
        sub_216697664(v162, &qword_27CABA820, &unk_217018CE0);
      }

      else
      {
        OUTLINED_FUNCTION_18_37();
        v163 = OUTLINED_FUNCTION_53_16();
        v164(v163, v162, v94);
        sub_217005DE4();
        OUTLINED_FUNCTION_58_15(MEMORY[0x277D837D0]);
        OUTLINED_FUNCTION_12_47(v165, v166);
        swift_isUniquelyReferenced_nonNull_native();
        v289 = v161;
        v167 = OUTLINED_FUNCTION_1_120();
        OUTLINED_FUNCTION_50_17(v167, v168);
        off_27CABA828(&unk_217018CE0, v94);
      }

      v169 = v246;
      v170 = v264;
      v171 = v275;
      v172 = OUTLINED_FUNCTION_29_30();
      MEMORY[0x21CE9DD70](v172);

      v173 = OUTLINED_FUNCTION_34_24();
      OUTLINED_FUNCTION_19_38(v173);
      v174 = v277;
      OUTLINED_FUNCTION_56_16();
      v175();
      v176 = v269;
      v177 = v274;
      OUTLINED_FUNCTION_55_16();
      v178();
      sub_21700D244();
      sub_216697664(v281, &qword_27CAB81E0, qword_217019170);
      sub_216697664(v169, &qword_27CAB8A70, &unk_21701ADA0);
      v245(v171, v174);
      (v266)(v176, v177);
      sub_216697664(v268, &qword_27CABA820, &unk_217018CE0);
      v179 = *(v237 + 8);
      v180 = v238;
      v179(v236, v238);
      v181 = v260;
      (*(v247 + 32))(v260, v282, v279);
      v182 = OUTLINED_FUNCTION_97();
      v184 = v183(v182);
      if (v184 == *MEMORY[0x277D2A3B8])
      {
        v185 = OUTLINED_FUNCTION_97();
        v186(v185);
        OUTLINED_FUNCTION_23_35(&v279);
        v187 = OUTLINED_FUNCTION_53_16();
        v188 = v253;
        v189(v187, v181, v253);
        OUTLINED_FUNCTION_35_28();
        v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6B0, &unk_217041EA0);
        *(v170 + 24) = v190;
        v191 = OUTLINED_FUNCTION_16_44(qword_280E43D68);
        OUTLINED_FUNCTION_60_12(v191);
        v192 = *(v176 + 16);
        OUTLINED_FUNCTION_22_13();
        v192();
        v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6B8, &qword_217033AA0);
        OUTLINED_FUNCTION_39_19(v193);
        v194 = OUTLINED_FUNCTION_17_45();
        (qword_27CABF6B0)(v194);
        v195 = OUTLINED_FUNCTION_21_39();
        OUTLINED_FUNCTION_22_13();
        v192();
        swift_storeEnumTagMultiPayload();
        v196 = OUTLINED_FUNCTION_42_24();
        (qword_27CABF6B0)(v196);
        v197 = OUTLINED_FUNCTION_15_47(&v278);
        v198(v197);
        v199 = OUTLINED_FUNCTION_30_32();
        v200(v199);
        (*(v176 + 24))(v180, v195);
        v201 = OUTLINED_FUNCTION_33_25();
        v202 = v201;
        v203 = &v286;
      }

      else
      {
        if (v184 != *MEMORY[0x277D2A3F8])
        {
          v221 = v278;
          v222 = *(v261 + 8);
          v222(v170, v262);
          v223 = OUTLINED_FUNCTION_59_12(&v291);
          (v222)(v223);
          v224 = OUTLINED_FUNCTION_59_12(v290 + 8);
          (v222)(v224);
          v225 = *(v271 + 8);
          v226 = v235;
          v225(v270, v235);
          v227 = OUTLINED_FUNCTION_97();
          v228(v227);
          v179(v221, v180);
          v225(v221 + v230, v226);
          goto LABEL_7;
        }

        v204 = OUTLINED_FUNCTION_97();
        v205(v204);
        OUTLINED_FUNCTION_23_35(&v273);
        v206 = OUTLINED_FUNCTION_53_16();
        v188 = v249;
        v207(v206, v181, v249);
        OUTLINED_FUNCTION_35_28();
        v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF688, &unk_217041EB0);
        *(v170 + 24) = v190;
        v208 = OUTLINED_FUNCTION_16_44(&qword_280E43D60);
        OUTLINED_FUNCTION_60_12(v208);
        v209 = *(v176 + 16);
        OUTLINED_FUNCTION_22_13();
        v209();
        v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF690, &qword_217033A80);
        OUTLINED_FUNCTION_39_19(v210);
        v211 = OUTLINED_FUNCTION_17_45();
        (qword_27CABF688)(v211);
        v212 = OUTLINED_FUNCTION_21_39();
        OUTLINED_FUNCTION_22_13();
        v209();
        swift_storeEnumTagMultiPayload();
        v213 = OUTLINED_FUNCTION_42_24();
        (qword_27CABF688)(v213);
        v214 = OUTLINED_FUNCTION_15_47(&v272);
        v215(v214);
        v216 = OUTLINED_FUNCTION_30_32();
        v217(v216);
        (*(v176 + 24))(v180, v212);
        v201 = OUTLINED_FUNCTION_33_25();
        v202 = v201;
        v203 = &v280;
      }

      v218 = v283;
      v281(v201, *(v203 - 32), v188);
      v219 = v278;
      swift_storeEnumTagMultiPayload();
      (v276)(v202 + *(v190 + 44), v272, v170);
      sub_2166A0F18(&v284, v219 + *(v218 + 32));
      v220 = v280;
      sub_216AE26B0(v219, v280);
      __swift_storeEnumTagSinglePayload(v220, 0, 1, v218);
      sub_216AE2714(v219);
      goto LABEL_8;
    }

    (*(v247 + 8))(v282, v279);
    sub_216697664(v67, &qword_27CAB81E0, qword_217019170);
    sub_216697664(v246, &qword_27CAB8A70, &unk_21701ADA0);
    (*(v58 + 8))(v61, v56);
    v64 = v45;
    v65 = &qword_27CAB81E0;
    v66 = qword_217019170;
  }

  sub_216697664(v64, v65, v66);
LABEL_7:
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v283);
LABEL_8:
  OUTLINED_FUNCTION_26();
}

void sub_216AE13B8()
{
  OUTLINED_FUNCTION_49();
  v79 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2230, &qword_217042048);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = (&v75 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2238, &qword_217042050);
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v78 = v8;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_4();
  v77 = v10;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_4();
  v76 = v12;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_4();
  v75 = v14;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_4();
  v80 = v16;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v17);
  v19 = &v75 - v18;
  sub_216681B04(v1 + 80, &v81, &qword_27CAB6DB0, &qword_217016C00);
  if (v83)
  {
    OUTLINED_FUNCTION_37_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2250, &qword_217042068);
    OUTLINED_FUNCTION_46_20();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    v24 = *(v0 + 48);
    *(v5 + v24) = swift_getKeyPath();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
    OUTLINED_FUNCTION_43_24(v25);
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_31_35(KeyPath);
    v5[7] = 0;
    v5[8] = 0;
    v5[5] = sub_216AE2E5C;
    v5[6] = 0;
    v27 = [objc_opt_self() systemOrangeColor];
    v28 = sub_21700AC44();
    swift_getKeyPath();
    v81 = v28;
    v29 = sub_2170083D4();
    OUTLINED_FUNCTION_36_26(v29);
    v30 = sub_216983738(11);
    v0 = v31;
    v81 = v30;
    v82 = v31;
    sub_216AE29B8();
    sub_2167B2E14();
    OUTLINED_FUNCTION_48_18(&v81, v32, MEMORY[0x277D837D0]);

    sub_216697664(v5, &qword_27CAC2230, &qword_217042048);
    __swift_destroy_boxed_opaque_existential_1Tm(v84);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2240, &qword_217042058);
    v34 = v19;
    v35 = 0;
  }

  else
  {
    sub_216697664(&v81, &qword_27CAB6DB0, &qword_217016C00);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2240, &qword_217042058);
    v34 = v19;
    v35 = 1;
  }

  __swift_storeEnumTagSinglePayload(v34, v35, 1, v33);
  sub_216681B04(v1 + 40, &v81, &qword_27CAB6DB0, &qword_217016C00);
  if (v83)
  {
    OUTLINED_FUNCTION_37_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2250, &qword_217042068);
    OUTLINED_FUNCTION_46_20();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
    v40 = *(v0 + 48);
    *(v5 + v40) = swift_getKeyPath();
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
    OUTLINED_FUNCTION_43_24(v41);
    v42 = swift_getKeyPath();
    OUTLINED_FUNCTION_31_35(v42);
    v5[7] = 0;
    v5[8] = 0;
    v5[5] = sub_216AE1B20;
    v5[6] = 0;
    v43 = [objc_opt_self() systemIndigoColor];
    v44 = sub_21700AC44();
    swift_getKeyPath();
    v81 = v44;
    v45 = sub_2170083D4();
    OUTLINED_FUNCTION_36_26(v45);
    v46 = sub_216983738(194);
    v0 = v47;
    v81 = v46;
    v82 = v47;
    sub_216AE29B8();
    sub_2167B2E14();
    v48 = v80;
    OUTLINED_FUNCTION_48_18(&v81, v49, MEMORY[0x277D837D0]);

    sub_216697664(v5, &qword_27CAC2230, &qword_217042048);
    __swift_destroy_boxed_opaque_existential_1Tm(v84);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2240, &qword_217042058);
    v51 = v48;
    v52 = 0;
  }

  else
  {
    sub_216697664(&v81, &qword_27CAB6DB0, &qword_217016C00);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2240, &qword_217042058);
    v51 = v80;
    v52 = 1;
  }

  __swift_storeEnumTagSinglePayload(v51, v52, 1, v50);
  v53 = v75;
  sub_216681B04(v1, &v81, &qword_27CAB6DB0, &qword_217016C00);
  if (v83)
  {
    OUTLINED_FUNCTION_37_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2250, &qword_217042068);
    OUTLINED_FUNCTION_46_20();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
    v58 = *(v0 + 48);
    *(v5 + v58) = swift_getKeyPath();
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
    OUTLINED_FUNCTION_43_24(v59);
    v60 = swift_getKeyPath();
    OUTLINED_FUNCTION_31_35(v60);
    v5[7] = 0;
    v5[8] = 0;
    v5[5] = sub_216AE2E5C;
    v5[6] = 0;
    v61 = [objc_opt_self() systemOrangeColor];
    v62 = sub_21700AC44();
    swift_getKeyPath();
    v81 = v62;
    v63 = sub_2170083D4();
    OUTLINED_FUNCTION_36_26(v63);
    v81 = sub_216983738(193);
    v82 = v64;
    sub_216AE29B8();
    sub_2167B2E14();
    OUTLINED_FUNCTION_48_18(&v81, v65, MEMORY[0x277D837D0]);

    sub_216697664(v5, &qword_27CAC2230, &qword_217042048);
    __swift_destroy_boxed_opaque_existential_1Tm(v84);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2240, &qword_217042058);
    v67 = v53;
    v68 = 0;
  }

  else
  {
    sub_216697664(&v81, &qword_27CAB6DB0, &qword_217016C00);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2240, &qword_217042058);
    v67 = v53;
    v68 = 1;
  }

  __swift_storeEnumTagSinglePayload(v67, v68, 1, v66);
  v69 = v76;
  OUTLINED_FUNCTION_49_20(v19, v76);
  v70 = v80;
  v71 = v77;
  OUTLINED_FUNCTION_49_20(v80, v77);
  v72 = v78;
  OUTLINED_FUNCTION_49_20(v53, v78);
  v73 = v79;
  OUTLINED_FUNCTION_49_20(v69, v79);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2248, &qword_217042060);
  OUTLINED_FUNCTION_49_20(v71, v73 + *(v74 + 48));
  OUTLINED_FUNCTION_49_20(v72, v73 + *(v74 + 64));
  OUTLINED_FUNCTION_47_21(v53);
  OUTLINED_FUNCTION_47_21(v70);
  OUTLINED_FUNCTION_47_21(v19);
  OUTLINED_FUNCTION_47_21(v72);
  OUTLINED_FUNCTION_47_21(v71);
  OUTLINED_FUNCTION_47_21(v69);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216AE1B20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21700ADB4();
  *a1 = result;
  return result;
}

void sub_216AE1B64()
{
  OUTLINED_FUNCTION_49();
  v141 = v2;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2268, &qword_217042110);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_105();
  v130 = v4;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2270, &qword_217042118);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_105();
  v127 = v6;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2278, &qword_217042120);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v128 = v8;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_47_1();
  v129 = v10;
  v123 = sub_21700BBA4();
  OUTLINED_FUNCTION_1();
  v122 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2280, &qword_217042128);
  v15 = OUTLINED_FUNCTION_36(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  v125 = v16;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_47_1();
  v134 = v18;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2288, &qword_217042130);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_105();
  v137 = v20;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2250, &qword_217042068);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_105();
  v132 = v22;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2290, &qword_217042138);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_105();
  v133 = v24;
  v25 = sub_21700BDB4();
  OUTLINED_FUNCTION_1();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_5_4();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v121 - v31;
  v33 = v27[2];
  v140 = v0;
  v131 = v33;
  (v33)(&v121 - v31, v0, v25, v30);
  v34 = v27[11];
  v35 = v34(v32, v25);
  v36 = *MEMORY[0x277D2B120];
  v37 = v27[1];
  v37(v32, v25);
  if (v35 == v36)
  {
    v38 = type metadata accessor for TrailingSwipeActions(0);
    v39 = v132;
    sub_2167B7D58(v140 + *(v38 + 28), v132);
    v40 = v139;
    sub_217007F04();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
    v45 = *(v40 + 48);
    *(v39 + v45) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_31_35(KeyPath);
    v39[7] = 0;
    v39[8] = 0;
    v39[5] = sub_216AE25AC;
    v39[6] = 0;
    v142 = sub_216983738(8);
    v143 = v47;
    OUTLINED_FUNCTION_51();
    sub_2166D9530(v48, v49, v50, v51);
    sub_2167B2E14();
    v52 = v133;
    sub_21700A6B4();

    OUTLINED_FUNCTION_51();
    sub_216697664(v53, v54, v55);
    sub_216681B04(v52, v137, &qword_27CAC2290, &qword_217042138);
    swift_storeEnumTagMultiPayload();
    sub_216AE2B80();
    OUTLINED_FUNCTION_8_2();
    sub_2166D9530(v56, v57, v58, v59);
    v60 = v141;
    sub_217009554();
    v61 = v52;
    v62 = &qword_27CAC2290;
    v63 = &qword_217042138;
LABEL_9:
    sub_216697664(v61, v62, v63);
    v95 = 0;
    goto LABEL_10;
  }

  v64 = v139;
  v131(v1, v140, v25);
  v65 = OUTLINED_FUNCTION_98();
  v66 = (v34)(v65);
  v67 = *MEMORY[0x277D2B118];
  v68 = OUTLINED_FUNCTION_98();
  (v37)(v68);
  v69 = v66 == v67;
  v60 = v141;
  if (v69)
  {
    v70 = type metadata accessor for TrailingSwipeActions(0);
    v71 = v140;
    (*(v122 + 16))(v121, v140 + v70[5], v123);
    v72 = OUTLINED_FUNCTION_98();
    v74 = v73(v72);
    v75 = *MEMORY[0x277D2AFE0];
    v76 = OUTLINED_FUNCTION_98();
    v77(v76);
    if (v74 == v75)
    {
      v78 = v127;
      sub_2167B7D58(v71 + v70[6], v127);
      sub_217007F04();
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
      v83 = *(v64 + 48);
      *(v78 + v83) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
      swift_storeEnumTagMultiPayload();
      v84 = swift_getKeyPath();
      OUTLINED_FUNCTION_31_35(v84);
      v78[7] = 0;
      v78[8] = 0;
      v78[5] = sub_216AE25E0;
      v78[6] = 0;
      v85 = sub_21700AC94();
      v86 = swift_getKeyPath();
      v87 = v126;
      v88 = (v78 + *(v126 + 36));
      *v88 = v86;
      v88[1] = v85;
      v142 = sub_216983738(91);
      v143 = v89;
      sub_216AE2A9C();
      sub_2167B2E14();
      v90 = v129;
      OUTLINED_FUNCTION_61_12(&v142, v91, MEMORY[0x277D837D0]);

      sub_216697664(v78, &qword_27CAC2270, &qword_217042118);
      v92 = v134;
      sub_216AE2CB0(v90, v134);
      v93 = 0;
      v94 = v137;
    }

    else
    {
      v93 = 1;
      v94 = v137;
      v90 = v129;
      v92 = v134;
      v87 = v126;
      v78 = v127;
    }

    __swift_storeEnumTagSinglePayload(v92, v93, 1, v124);
    sub_2167B7D58(v71 + v70[8], v78);
    v96 = v92;
    sub_217007F04();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
    v101 = *(v64 + 48);
    *(v78 + v101) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
    swift_storeEnumTagMultiPayload();
    v102 = swift_getKeyPath();
    OUTLINED_FUNCTION_31_35(v102);
    v78[7] = 0;
    v78[8] = 0;
    v78[5] = sub_216AE2620;
    v78[6] = 0;
    v103 = sub_21700AC84();
    v104 = swift_getKeyPath();
    v105 = (v78 + *(v87 + 36));
    *v105 = v104;
    v105[1] = v103;
    v142 = sub_216983738(71);
    v143 = v106;
    sub_216AE2A9C();
    sub_2167B2E14();
    OUTLINED_FUNCTION_61_12(&v142, v107, MEMORY[0x277D837D0]);

    sub_216697664(v78, &qword_27CAC2270, &qword_217042118);
    v108 = v125;
    sub_216681B04(v96, v125, &qword_27CAC2280, &qword_217042128);
    v109 = v128;
    sub_216681B04(v90, v128, &qword_27CAC2278, &qword_217042120);
    v110 = v130;
    sub_216681B04(v108, v130, &qword_27CAC2280, &qword_217042128);
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC22A8, &qword_217042180);
    sub_216681B04(v109, v110 + *(v111 + 48), &qword_27CAC2278, &qword_217042120);
    sub_216697664(v109, &qword_27CAC2278, &qword_217042120);
    sub_216697664(v108, &qword_27CAC2280, &qword_217042128);
    sub_216681B04(v110, v94, &qword_27CAC2268, &qword_217042110);
    swift_storeEnumTagMultiPayload();
    sub_216AE2B80();
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_51();
    sub_2166D9530(v112, v113, v114, v115);
    v116 = v141;
    sub_217009554();
    OUTLINED_FUNCTION_51();
    sub_216697664(v117, v118, v119);
    sub_216697664(v90, &qword_27CAC2278, &qword_217042120);
    v61 = v134;
    v62 = &qword_27CAC2280;
    v63 = &qword_217042128;
    v60 = v116;
    goto LABEL_9;
  }

  v95 = 1;
LABEL_10:
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2298, &qword_217042140);
  __swift_storeEnumTagSinglePayload(v60, v95, 1, v120);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216AE25AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21700ADB4();
  *a1 = result;
  return result;
}

uint64_t sub_216AE25E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21700ADB4();
  *a1 = result;
  return result;
}

uint64_t sub_216AE2620@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21700ADB4();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for TrailingSwipeActions(uint64_t a1)
{
  result = qword_280E3ADC0;
  if (!qword_280E3ADC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216AE26B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrailingSwipeActions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216AE2714(uint64_t a1)
{
  v2 = type metadata accessor for TrailingSwipeActions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216AE2770(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DB0, &qword_217016C00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_216AE2808(uint64_t a1)
{
  result = sub_21700BDB4();
  if (v2 <= 0x3F)
  {
    result = sub_21700BBA4();
    if (v3 <= 0x3F)
    {
      result = sub_21668B174();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_216AE28AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 120))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216AE2900(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_216AE29B8()
{
  result = qword_27CAC2258;
  if (!qword_27CAC2258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2230, &qword_217042048);
    sub_2166D9530(&qword_27CAC2260, &qword_27CAC2250, &qword_217042068, &unk_21702C8E0);
    sub_2166D9530(&qword_27CAB7CD8, &qword_27CAB7CE0, &unk_217025AA0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2258);
  }

  return result;
}

unint64_t sub_216AE2A9C()
{
  result = qword_27CAC22A0;
  if (!qword_27CAC22A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2270, &qword_217042118);
    sub_2166D9530(&qword_27CAC2260, &qword_27CAC2250, &qword_217042068, &unk_21702C8E0);
    sub_2166D9530(&qword_280E2A718, &qword_27CAB7BE0, &unk_217018250, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC22A0);
  }

  return result;
}

unint64_t sub_216AE2B80()
{
  result = qword_27CAC22B0;
  if (!qword_27CAC22B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2290, &qword_217042138);
    sub_2166D9530(&qword_27CAC2260, &qword_27CAC2250, &qword_217042068, &unk_21702C8E0);
    sub_216AE2C68(&qword_280E2A6F0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC22B0);
  }

  return result;
}

uint64_t sub_216AE2C68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216AE2CB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2278, &qword_217042120);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216AE2D20()
{
  result = qword_27CAC22D0;
  if (!qword_27CAC22D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC22D8, &qword_217042190);
    sub_216AE2DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC22D0);
  }

  return result;
}

unint64_t sub_216AE2DA4()
{
  result = qword_27CAC22E0;
  if (!qword_27CAC22E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2298, &qword_217042140);
    sub_216AE2B80();
    sub_2166D9530(&qword_27CAC22B8, &qword_27CAC2268, &qword_217042110, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC22E0);
  }

  return result;
}

double sub_216AE2E98@<D0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v32 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for MappedSection(0);
  v14 = *(v13 + 24);
  v15 = *(a9 + 16);
  v16 = *&a2[*(v13 + 32)];
  v17 = sub_21700DF14();
  v15(v41, v17, v16, &a2[v14], AssociatedTypeWitness, a9);
  v18 = (*(a9 + 24))(a3, v16, AssociatedTypeWitness, a9);
  v36 = v19;
  v37 = v18;
  v21 = v20;
  v35 = v22;
  v40 = a3;
  v23 = *a2;
  v24 = *(a2 + 1);
  v42[0] = v23;
  v42[1] = v24;
  v42[2] = 0;
  v42[3] = 0;
  v43 = 0;
  v25 = swift_allocObject();
  v25[2] = a5;
  v25[3] = *(v32 + 80);
  v25[4] = a6;
  v25[5] = a7;
  v25[6] = *(v32 + 88);
  v25[7] = a9;
  v26 = sub_21700E984();
  WitnessTable = swift_getWitnessTable();
  v28 = *(swift_getAssociatedConformanceWitness() + 8);
  *(&v31 + 1) = swift_getAssociatedConformanceWitness();
  *(&v30 + 1) = WitnessTable;
  *&v31 = v28;
  *&v30 = AssociatedTypeWitness;
  sub_216830064(&v40, v41, v37, v21, v36, v35, v42, a4, a8, sub_216AE32EC, v25, v26, v30, v31, a6);
  sub_21700DF14();
  return result;
}

uint64_t sub_216AE30C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v21[1] = a4;
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v21 - v15;
  (*(v6 + 16))(v8, a1, a2, v14);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 40))(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  v18 = *(AssociatedConformanceWitness + 8);
  sub_2166C24DC(v12, AssociatedTypeWitness, v18);
  v19 = *(v10 + 8);
  v19(v12, AssociatedTypeWitness);
  sub_2166C24DC(v16, AssociatedTypeWitness, v18);
  return (v19)(v16, AssociatedTypeWitness);
}

uint64_t type metadata accessor for AlbumContextMenu(uint64_t a1)
{
  result = qword_280E415D8;
  if (!qword_280E415D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216AE3370(uint64_t a1)
{
  sub_21700C1E4();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MenuConfiguration(319);
    if (v2 <= 0x3F)
    {
      sub_2167B83B4(319);
      if (v3 <= 0x3F)
      {
        sub_2167B84AC(319);
        if (v4 <= 0x3F)
        {
          sub_2167EE974(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_216AE3600(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = *(v4 + 24);
  v8 = *(v7 + 16);

  sub_21700DF14();
  os_unfair_lock_lock(v8);
  v9 = sub_216AE3FF0(a3 & 1, a4);
  v10 = sub_21700E4D4();
  [v9 removeObjectForKey_];

  os_unfair_lock_unlock(*(v7 + 16));
}

uint64_t sub_216AE3760(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10[0] = 0;
  v3 = [v2 dataWithPropertyList:sub_21700F7B4() format:200 options:0 error:v10];
  swift_unknownObjectRelease();
  v4 = v10[0];
  if (v3)
  {
    v5 = sub_217005FB4();
    sub_21677A524(v5, v6);

    return 0;
  }

  else
  {
    v8 = v4;
    v7 = sub_217005D34();

    swift_willThrow();
  }

  return v7;
}

uint64_t sub_216AE3860(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  sub_216685F4C(0, &qword_280E29AF8, 0x277CD4640);
  v2 = sub_21700F124();
  v3 = sub_21700F134();

  return v3;
}

id sub_216AE3900(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_216AE4924(a2);
  if (v11)
  {
    v12 = v10;
    sub_21700DF14();
    LOBYTE(v13) = sub_216AE3E00(v12);
    if (v13 != 2)
    {
      goto LABEL_10;
    }
  }

  if (qword_27CAB5D08 != -1)
  {
    swift_once();
  }

  v14 = sub_217007CA4();
  __swift_project_value_buffer(v14, qword_27CB22990);
  v15 = a2;
  v16 = sub_217007C84();
  v17 = sub_21700ED84();

  if (os_log_type_enabled(v16, v17))
  {
    a4 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *a4 = 138543362;
    *(a4 + 4) = v15;
    *v18 = v15;
    v19 = v15;
    _os_log_impl(&dword_216679000, v16, v17, "Scope must be of type string and be serializable: '%{public}@'", a4, 0xCu);
    sub_21669987C(v18, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v18, -1, -1);
    MEMORY[0x21CEA1440](a4, -1, -1);
  }

  v13 = [objc_opt_self() valueWithNullInContext_];
  a3 = v13;
  if (v13)
  {
    return a3;
  }

  __break(1u);
LABEL_10:
  v20 = v13;
  sub_216AE4924(a3);
  if (!v21)
  {
    goto LABEL_15;
  }

  v40 = v5;
  type metadata accessor for Persistence();
  v22 = *(a4 + OBJC_IVAR____TtC7MusicUI13JSPersistence_objectGraph);
  sub_21700D4D4();
  sub_21700E094();
  v23 = *(v38 + 24);
  v24 = *(v23 + 16);

  sub_21700DF14();
  os_unfair_lock_lock(v24);
  v25 = sub_216AE3FF0(v20, v22);
  v26 = sub_21700E4D4();
  v27 = [v25 objectForKey_];

  if (!v27)
  {

    v38 = 0u;
    v39 = 0u;
    os_unfair_lock_unlock(*(v23 + 16));

LABEL_22:
    result = [objc_opt_self() valueWithNullInContext_];
    if (!result)
    {
      __break(1u);
      goto LABEL_26;
    }

LABEL_23:
    a3 = result;

    sub_21669987C(&v38, &unk_27CABF7A0, &unk_217014D20);
    return a3;
  }

  sub_21700F1E4();

  swift_unknownObjectRelease();
  os_unfair_lock_unlock(*(v23 + 16));

  if (!*(&v39 + 1))
  {
    goto LABEL_22;
  }

  a3 = sub_216685F4C(0, &qword_280E29B58, 0x277CD4658);
  sub_216697C8C(&v38, v37);
  v28 = a1;
  result = sub_2166F1E10(v37, a1);
  if (result)
  {
    goto LABEL_23;
  }

  __break(1u);
LABEL_15:
  if (qword_27CAB5D08 != -1)
  {
    swift_once();
  }

  v30 = sub_217007CA4();
  __swift_project_value_buffer(v30, qword_27CB22990);
  v31 = a3;
  v32 = sub_217007C84();
  v33 = sub_21700ED84();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138543362;
    *(v34 + 4) = v31;
    *v35 = v31;
    v36 = v31;
    _os_log_impl(&dword_216679000, v32, v33, "key must be of type string: '%{public}@'", v34, 0xCu);
    sub_21669987C(v35, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v35, -1, -1);
    MEMORY[0x21CEA1440](v34, -1, -1);
  }

  result = [objc_opt_self() valueWithNullInContext_];
  if (result)
  {
    a3 = result;

    return a3;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_216AE3E00(uint64_t a1)
{
  v1 = sub_21700F5E4();

  if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216AE3F44(char a1)
{
  if (a1)
  {
    return 0x656369766564;
  }

  else
  {
    return 1919251317;
  }
}

uint64_t sub_216AE3F94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216AE3E00(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_216AE3FC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216AE3F44(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_216AE3FF0(char a1, uint64_t a2)
{
  v3 = v2;
  os_unfair_lock_assert_owner(*(*(v3 + 24) + 16));
  v6 = sub_216AE4720(a1 & 1, a2);
  v8 = v7;
  swift_beginAccess();
  v9 = sub_21693556C(v6, v8, *(v3 + 16));
  if (v9)
  {
    v10 = v9;
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v11 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    sub_21700DF14();
    v12 = sub_2166AA548(v6, v8);
    if (!v12)
    {
      v12 = [objc_opt_self() standardUserDefaults];
    }

    v13 = v12;
    swift_beginAccess();
    v10 = v13;
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v3 + 16);
    sub_21693A948();
    *(v3 + 16) = v15;

    swift_endAccess();
  }

  return v10;
}

void sub_216AE4144(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_216AE3760(a1);
  if (v9)
  {
    v10 = v9;
    v11 = sub_21700E4D4();
    sub_2166A6DF8(a1, v32);
    v12 = swift_allocObject();
    sub_2166EF9C4(v32, (v12 + 16));
    *(v12 + 48) = v10;
    v31[4] = sub_216AE4AE4;
    v31[5] = v12;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 1107296256;
    v31[2] = sub_216AE4684;
    v31[3] = &block_descriptor_20;
    v13 = _Block_copy(v31);
    v14 = v10;

    AnalyticsSendEventLazy();
    _Block_release(v13);

    if (qword_27CAB5D10 != -1)
    {
      swift_once();
    }

    v15 = sub_217007CA4();
    __swift_project_value_buffer(v15, qword_27CAC22E8);
    sub_2166A6DF8(a1, v31);
    v16 = v10;
    v17 = sub_217007C84();
    v18 = sub_21700ED84();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33 = v21;
      *v19 = 136446466;
      sub_2166A6DF8(v31, v32);
      v22 = sub_21700E594();
      v24 = v23;
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      v25 = sub_2166A85FC(v22, v24, &v33);

      *(v19 + 4) = v25;
      *(v19 + 12) = 2114;
      v26 = v10;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v27;
      *v20 = v27;
      _os_log_impl(&dword_216679000, v17, v18, "Failed to serialize set storage item.  Dropping item: '%{public}s' Error: '%{public}@'", v19, 0x16u);
      sub_21669987C(v20, &qword_27CABF880, &unk_21701D6E0);
      MEMORY[0x21CEA1440](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x21CEA1440](v21, -1, -1);
      MEMORY[0x21CEA1440](v19, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v31);
    }
  }

  else
  {
    v28 = sub_216AE3FF0(a3 & 1, a4);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v29 = sub_21700F7B4();
    v30 = sub_21700E4D4();
    [v28 setObject:v29 forKey:v30];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_216AE44D0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2318, qword_2170423D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = 0xD000000000000029;
  *(inited + 40) = 0x8000000217087FD0;
  sub_216685F4C(0, qword_27CABC980, 0x277CCACA8);
  sub_21700F3B4();
  MEMORY[0x21CE9F490](0x27203A6D657469, 0xE700000000000000);
  sub_21700F544();
  MEMORY[0x21CE9F490](0x3A726F7272452027, 0xEA00000000002720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  sub_21700F544();
  MEMORY[0x21CE9F490](39, 0xE100000000000000);
  *(inited + 48) = sub_2169130B0(0, 0xE000000000000000);
  sub_216685F4C(0, &qword_27CAC2310, 0x277D82BB8);
  return sub_21700E384();
}

id sub_216AE4684(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_216685F4C(0, &qword_27CAC2310, 0x277D82BB8);
    v4 = sub_21700E344();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_216AE4720(char a1, uint64_t a2)
{
  os_unfair_lock_assert_owner(*(*(v2 + 24) + 16));
  type metadata accessor for SubscriptionStatusCoordinator();
  sub_21700D4D4();
  sub_21700E094();
  sub_2166C0578(&v7);
  if (!v8 || (v4 = *(&v7 + 1), v5 = v7, sub_21700DF14(), sub_21669987C(&v7, &qword_27CAC5980, &qword_217035260), !v4))
  {

    v5 = 48;
  }

  if (a1)
  {

    return 0x656369766564;
  }

  return v5;
}

uint64_t sub_216AE4830(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_217007CA4();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_217007C94();
}

uint64_t sub_216AE48A8()
{

  return v0;
}

uint64_t sub_216AE48D0()
{
  sub_216AE48A8();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216AE4924(void *a1)
{
  v1 = [a1 toString];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21700E514();

  return v3;
}

_BYTE *storeEnumTagSinglePayload for Persistence.Scope(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_216AE4A68()
{
  result = qword_27CAC2308;
  if (!qword_27CAC2308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2308);
  }

  return result;
}

uint64_t sub_216AE4AF0()
{
  v1 = v0;
  sub_217005BF4();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  v3 = sub_217005C64();
  OUTLINED_FUNCTION_16();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  type metadata accessor for ScrollableParagraphView.Content(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = (v12 - v11);
  sub_216AECDB8(v1, v12 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v9, v13, v3);
    sub_217005BE4();
    sub_216AEBA80(&qword_27CAC2518, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
    v14 = sub_21700E714();
    (*(v5 + 8))(v9, v3);
  }

  else if (v13[1])
  {
    return *v13;
  }

  else
  {
    return 0;
  }

  return v14;
}

void sub_216AE4CDC()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x277D76918];
  v2 = [v0 preferredFontForTextStyle_];

  qword_27CB229A8 = v2;
}

uint64_t sub_216AE4D48()
{
  type metadata accessor for ScrollableTextView(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_7();
  v3 = v2 - v1;
  sub_216AE4E70(v2 - v1);
  v4 = sub_217005C64();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  sub_216AE4AF0();
  sub_216AEBA80(&qword_27CAC2510, type metadata accessor for ScrollableTextView, &unk_2170427B0);
  sub_2167B2E14();
  sub_21700A6B4();

  return sub_216AECD60(v3, type metadata accessor for ScrollableTextView);
}

uint64_t sub_216AE4E70@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ScrollableParagraphView.Content(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_216AECDB8(v1, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_217005C64();
    return (*(*(v6 - 8) + 32))(a1, v5, v6);
  }

  else
  {
    sub_216AE4F60(*v5, v5[1], a1);
  }
}

uint64_t sub_216AE4F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_217005C34();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_217005CC4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v28[0] = v12;
    v28[16] = a1;
    v28[17] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD88, &qword_217025A10);
    swift_allocObject();
    sub_21700DF14();
    sub_217006564();
    v28[1] = a3;
    sub_217006554();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2358, &qword_21704CD20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    v16 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v17 = qword_27CAB5D18;
    v18 = v16;
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = qword_27CB229A8;
    v20 = sub_216685F4C(0, &qword_27CABB180, 0x277D74300);
    *(inited + 40) = v19;
    v21 = *MEMORY[0x277D740C0];
    *(inited + 64) = v20;
    *(inited + 72) = v21;
    v22 = sub_216685F4C(0, &qword_280E29B48, 0x277D75348);
    v23 = qword_27CAB6118;
    v24 = v19;
    v25 = v21;
    if (v23 != -1)
    {
      swift_once();
    }

    v26 = sub_21700F0D4();
    *(inited + 104) = v22;
    *(inited + 80) = v26;
    type metadata accessor for Key(0);
    sub_216AEBA80(&qword_27CAB6820, type metadata accessor for Key, &unk_2170139C8);
    sub_21700E384();
    sub_217005CD4();
    (*(v7 + 104))(v9, *MEMORY[0x277CC8B80], v6);
    sub_217005C24();
    (*(v7 + 8))(v9, v6);
    return (*(v11 + 8))(v14, v28[0]);
  }

  else
  {

    return sub_217005C14();
  }
}

uint64_t sub_216AE5314(uint64_t a1, char a2, uint64_t a3, char a4, void *a5)
{
  v24 = a5;
  v9 = sub_217005BF4();
  v25 = *(v9 - 8);
  v26 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD478, &qword_21702A208);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v24 - v13;
  v15 = sub_217005C64();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v19 = 10.0;
  }

  else
  {
    v19 = *&a1;
  }

  if (a4)
  {
    v20 = 10.0;
  }

  else
  {
    v20 = *&a3;
  }

  sub_216683A80(v27, v14, &qword_27CABD478, &qword_21702A208);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_216697664(v14, &qword_27CABD478, &qword_21702A208);
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    sub_217005BE4();
    v21 = sub_216E9A4CC();
    (*(v25 + 8))(v11, v26);
    if ((v21 & 1) == 0)
    {
      [v24 sizeThatFits_];
      v19 = v22;
    }

    (*(v16 + 8))(v18, v15);
  }

  return *&v19;
}

id sub_216AE55B4()
{
  type metadata accessor for UIKitScrollableTextView(0);
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_216AE55F0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD478, &qword_21702A208);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_217005C64();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216683A80(v2, v6, &qword_27CABD478, &qword_21702A208);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_217005C14();
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      sub_216697664(v6, &qword_27CABD478, &qword_21702A208);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  sub_216AE5BC0(v10);
  return [a1 setNeedsLayout];
}

uint64_t sub_216AE57FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216AEBA80(&qword_27CAC2548, type metadata accessor for ScrollableTextView, &unk_217042720);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_216AE5890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216AEBA80(&qword_27CAC2548, type metadata accessor for ScrollableTextView, &unk_217042720);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_216AE5924(uint64_t a1)
{
  sub_216AEBA80(&qword_27CAC2548, type metadata accessor for ScrollableTextView, &unk_217042720);
  sub_2170094F4();
  __break(1u);
}

void sub_216AE597C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_217005C64();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView_attributedText;
  swift_beginAccess();
  v8 = *(v4 + 16);
  v8(v6, v1 + v7, v3);
  sub_216AEBA80(&qword_27CAC2360, MEMORY[0x277CC8C40], MEMORY[0x277CC8C58]);
  v9 = sub_21700E494();
  (*(v4 + 8))(v6, v3);
  if ((v9 & 1) == 0)
  {
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2368, &unk_217042420);
    sub_21700E3D4();
    swift_endAccess();
    sub_216685F4C(0, &qword_280E29CC8, 0x277CCA898);
    v8(v6, v2 + v7, v3);
    v10 = sub_21700EEC4();
    v11 = sub_216AE60BC();
    v12 = v10;
    [v11 setAttributedText_];

    v13 = *(v2 + OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView_textView);
    [v13 setAttributedText_];
  }
}

uint64_t sub_216AE5BC0(uint64_t a1)
{
  v3 = sub_217005C64();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView_attributedText;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  swift_beginAccess();
  (*(v4 + 24))(v1 + v7, a1, v3);
  swift_endAccess();
  sub_216AE597C(v6);
  v8 = *(v4 + 8);
  v8(a1, v3);
  return (v8)(v6, v3);
}

void sub_216AE5D1C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for UIKitScrollableTextView(0);
  objc_msgSendSuper2(&v3, sel_willMoveToWindow_, a1);
  if (a1)
  {
    if (!*&v1[OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView_textView])
    {
      sub_216AE64A8();
    }
  }
}

double sub_216AE5DE8(double a1, double a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for UIKitScrollableTextView(0);
  objc_msgSendSuper2(&v6, sel_sizeThatFits_, a1, a2);
  return a1;
}

void sub_216AE5E94()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for UIKitScrollableTextView(0);
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView_textView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame_];
  }
}

void sub_216AE5F58()
{
  v19.receiver = v0;
  v19.super_class = type metadata accessor for UIKitScrollableTextView(0);
  objc_msgSendSuper2(&v19, sel_safeAreaInsetsDidChange);
  v1 = *&v0[OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView_textView];
  if (v1)
  {
    v2 = v1;
    [v2 contentInset];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [v0 safeAreaInsets];
    if (v4 != v14 || v6 != v11 || v8 != v12 || v10 != v13)
    {
      [v0 safeAreaInsets];
      [v2 setContentInset_];
      [v2 contentOffset];
      if (v18 == 0.0)
      {
        [v2 adjustedContentInset];
        [v2 contentOffset];
        [v2 setContentOffset_];
      }
    }
  }
}

id sub_216AE60BC()
{
  v1 = OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView____lazy_storage___sizingTextView;
  v2 = *(v0 + OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView____lazy_storage___sizingTextView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView____lazy_storage___sizingTextView);
  }

  else
  {
    v4 = sub_216AE611C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_216AE611C()
{
  v1 = v0;
  v2 = sub_217005C64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [objc_allocWithZone(MEMORY[0x277D75C40]) initWithFrame_];
  [v6 setFont_];
  [v6 setEditable_];
  sub_216685F4C(0, &qword_280E29CC8, 0x277CCA898);
  v7 = OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView_attributedText;
  swift_beginAccess();
  (*(v3 + 16))(v5, &v1[v7], v2);
  v8 = sub_21700EEC4();
  [v6 setAttributedText_];

  [v6 setTextAlignment_];
  [v6 setTextContainerInset_];
  v9 = v6;
  [v1 safeAreaInsets];
  [v9 setContentInset_];
  [v9 setContentInsetAdjustmentBehavior_];
  v10 = [v9 textContainer];
  [v10 setLineFragmentPadding_];

  [v9 setScrollEnabled_];
  v11 = v9;
  [v11 setUserInteractionEnabled_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2358, &qword_21704CD20);
  inited = swift_initStackObject();
  v13 = MEMORY[0x277D740C0];
  *(inited + 16) = xmmword_217013DA0;
  v14 = *v13;
  *(inited + 32) = *v13;
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 secondaryLabelColor];
  *(inited + 64) = sub_216685F4C(0, &qword_280E29B48, 0x277D75348);
  *(inited + 40) = v17;
  type metadata accessor for Key(0);
  sub_216AEBA80(&qword_27CAB6820, type metadata accessor for Key, &unk_2170139C8);
  v18 = sub_21700E384();
  sub_216AEB9BC(v18, v11);
  v19 = [v11 layer];

  [v19 setCornerRadius_];
  return v11;
}

void sub_216AE64A8()
{
  v1 = sub_216AE611C();
  v2 = *&v0[OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView_textView];
  *&v0[OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView_textView] = v1;
  v3 = v1;

  [v0 addSubview_];
  v4 = [v3 panGestureRecognizer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0, &unk_217023900);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21701D830;
  v6 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v8 = v4;
  *(v5 + 32) = [v6 initWithInteger_];
  *(v5 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_216685F4C(0, &unk_27CABF7E0, 0x277CCABB0);
  v7 = sub_21700E804();

  [v8 setAllowedTouchTypes_];

  [v0 addGestureRecognizer_];
}

id sub_216AE6620(__n128 a1, double a2, double a3, double a4)
{
  v8 = a1.n128_f64[0];
  sub_217005C14();
  *&v4[OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView_textView] = 0;
  v9 = OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView_cachedFittedSize;
  type metadata accessor for CGSize(0);
  sub_216AEBA80(&qword_27CAC2370, type metadata accessor for CGSize, MEMORY[0x277CBF290]);
  *&v4[v9] = sub_21700E384();
  v10 = OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView_preferredFont;
  *&v4[v10] = [objc_opt_self() preferredFontForTextStyle_];
  *&v4[OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView____lazy_storage___sizingTextView] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for UIKitScrollableTextView(0);
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, v8, a2, a3, a4);
}

id sub_216AE6788(void *a1, __n128 a2)
{
  sub_217005C14();
  *&v2[OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView_textView] = 0;
  v4 = OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView_cachedFittedSize;
  type metadata accessor for CGSize(0);
  sub_216AEBA80(&qword_27CAC2370, type metadata accessor for CGSize, MEMORY[0x277CBF290]);
  *&v2[v4] = sub_21700E384();
  v5 = OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView_preferredFont;
  *&v2[v5] = [objc_opt_self() preferredFontForTextStyle_];
  *&v2[OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView____lazy_storage___sizingTextView] = 0;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for UIKitScrollableTextView(0);
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id sub_216AE68E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIKitScrollableTextView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_216AE69F4(uint64_t a1)
{
  result = sub_217005C64();
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

uint64_t sub_216AE6AAC@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2170093C4();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2420, &qword_217042508);
  return sub_216AE6B00(v2, a2 + *(v4 + 44));
}

uint64_t sub_216AE6B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20, qword_217034D80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v83 - v4;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2428, &qword_217042510);
  MEMORY[0x28223BE20](v91);
  v92 = &v83 - v6;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2430, &qword_217042518);
  MEMORY[0x28223BE20](v93);
  v95 = &v83 - v7;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2438, &qword_217042520);
  MEMORY[0x28223BE20](v94);
  v99 = &v83 - v8;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2440, &qword_217042528);
  MEMORY[0x28223BE20](v96);
  v100 = &v83 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2448, &unk_217042530);
  MEMORY[0x28223BE20](v10);
  v97 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v98 = &v83 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD478, &qword_21702A208);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v83 - v15;
  v17 = sub_217005C64();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v83 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2450, &qword_217042540);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v83 - v28;
  v103 = a1;
  sub_216AE7568(v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_216697664(v16, &qword_27CABD478, &qword_21702A208);
    v30 = 1;
  }

  else
  {
    v88 = v10;
    v101 = v29;
    v89 = v26;
    (*(v18 + 32))(v23, v16, v17);
    v86 = v18;
    v31 = *(v18 + 16);
    v85 = v17;
    v31(v20, v23, v17);
    v87 = v20;
    v32 = sub_21700A164();
    v34 = v33;
    v36 = v35;
    v83 = type metadata accessor for ParagraphView(0);
    v37 = *(v103 + *(v83 + 24));
    v90 = v5;
    v84 = v23;
    if (!v37)
    {
      sub_217009D54();
    }

    v38 = sub_21700A094();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    sub_21678817C(v32, v34, v36 & 1);

    v45 = v92;
    v46 = &v92[*(v91 + 36)];
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2460, &qword_217042550) + 28);
    v48 = *MEMORY[0x277CE0B28];
    v49 = sub_21700A014();
    (*(*(v49 - 8) + 104))(v46 + v47, v48, v49);
    *v46 = swift_getKeyPath();
    *v45 = v38;
    *(v45 + 8) = v40;
    *(v45 + 16) = v42 & 1;
    *(v45 + 24) = v44;
    KeyPath = swift_getKeyPath();
    v51 = v95;
    sub_2167C5834(v45, v95, &qword_27CAC2428, &qword_217042510);
    v52 = v51 + *(v93 + 36);
    *v52 = KeyPath;
    *(v52 + 8) = 0;
    sub_21700B354();
    sub_217008BB4();
    v53 = v99;
    sub_2167C5834(v51, v99, &qword_27CAC2430, &qword_217042518);
    memcpy((v53 + *(v94 + 36)), __src, 0x70uLL);
    v54 = *(v103 + *(v83 + 20));
    v26 = v89;
    v29 = v101;
    v10 = v88;
    v55 = v86;
    if (!v54)
    {
      if (qword_27CAB6118 != -1)
      {
        swift_once();
      }

      v54 = qword_27CB22AA0;
    }

    v56 = *(v55 + 8);

    v56(v84, v85);
    v57 = swift_getKeyPath();
    v58 = v100;
    sub_2167C5834(v53, v100, &qword_27CAC2438, &qword_217042520);
    v59 = (v58 + *(v96 + 36));
    *v59 = v57;
    v59[1] = v54;
    v60 = *(v10 + 36);
    v61 = *MEMORY[0x277CE13D8];
    v62 = sub_21700B434();
    v63 = v97;
    (*(*(v62 - 8) + 104))(&v97[v60], v61, v62);
    sub_2167C5834(v58, v63, &qword_27CAC2440, &qword_217042528);
    v64 = v98;
    sub_2167C5834(v63, v98, &qword_27CAC2448, &unk_217042530);
    sub_2167C5834(v64, v29, &qword_27CAC2448, &unk_217042530);
    v30 = 0;
    v5 = v90;
  }

  __swift_storeEnumTagSinglePayload(v29, v30, 1, v10);
  sub_216683A80(v103, v5, &qword_27CABBE20, qword_217034D80);
  v65 = type metadata accessor for ModalPresentationDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v65) == 1)
  {
    sub_216697664(v5, &qword_27CABBE20, qword_217034D80);
    v66 = 0;
    v67 = 0;
LABEL_15:
    v79 = 0;
    v78 = 0;
    goto LABEL_16;
  }

  v67 = *(v5 + 7);
  v68 = v67;
  sub_216AECD60(v5, type metadata accessor for ModalPresentationDescriptor);
  if (!v67)
  {
    v66 = 0;
    goto LABEL_15;
  }

  v69 = v68;
  sub_217005C94();
  v70 = sub_21700A164();
  v72 = v71;
  v74 = v73;
  sub_217009E64();
  v101 = v29;
  v66 = sub_21700A094();
  v67 = v75;
  LODWORD(v103) = v76;
  v78 = v77;
  v29 = v101;

  sub_21678817C(v70, v72, v74 & 1);

  v79 = v103 & 1;
  sub_216777114(v66, v67, v103 & 1);
  sub_21700DF14();
LABEL_16:
  sub_216683A80(v29, v26, &qword_27CAC2450, &qword_217042540);
  v80 = v102;
  sub_216683A80(v26, v102, &qword_27CAC2450, &qword_217042540);
  v81 = (v80 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2458, &qword_217042548) + 48));
  sub_2167770D0(v66, v67, v79, v78);
  sub_2167C4DF0(v66, v67, v79, v78);
  *v81 = v66;
  v81[1] = v67;
  v81[2] = v79;
  v81[3] = v78;
  sub_216697664(v29, &qword_27CAC2450, &qword_217042540);
  sub_2167C4DF0(v66, v67, v79, v78);
  return sub_216697664(v26, &qword_27CAC2450, &qword_217042540);
}

uint64_t sub_216AE7568@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20, qword_217034D80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - v5;
  sub_216683A80(v2, v13 - v5, &qword_27CABBE20, qword_217034D80);
  v7 = type metadata accessor for ModalPresentationDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_216697664(v6, &qword_27CABBE20, qword_217034D80);
LABEL_5:
    v10 = 1;
    goto LABEL_6;
  }

  v9 = *(v6 + 4);
  v8 = *(v6 + 5);
  sub_21700DF14();
  sub_216AECD60(v6, type metadata accessor for ModalPresentationDescriptor);
  if (!v8)
  {
    goto LABEL_5;
  }

  v13[0] = v9;
  v13[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD88, &qword_217025A10);
  swift_allocObject();
  sub_217006564();
  sub_217006554();

  v10 = 0;
LABEL_6:
  v11 = sub_217005C64();
  return __swift_storeEnumTagSinglePayload(a1, v10, 1, v11);
}

uint64_t sub_216AE76E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v148 = a2;
  sub_217008C14();
  OUTLINED_FUNCTION_16();
  v146 = v5;
  v147 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v145 = v7 - v6;
  v8 = sub_217008AD4();
  v118 = v8;
  OUTLINED_FUNCTION_16();
  v144 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v143 = v12 - v11;
  OUTLINED_FUNCTION_16();
  v141 = v13;
  v142 = *(v14 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_70(&v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8, &qword_21701B9E0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v18);
  v139 = *(a1 + 24);
  sub_21700F164();
  v19 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7638, &unk_217017490);
  OUTLINED_FUNCTION_2_3();
  v136 = v19;
  sub_2170089F4();
  sub_2170089F4();
  sub_2170089F4();
  v20 = sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2468, &qword_2170425F0);
  v21 = OUTLINED_FUNCTION_2_3();
  v24 = OUTLINED_FUNCTION_22_9(v21, v22, v23);
  OUTLINED_FUNCTION_18_38(v24);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_3();
  v25 = sub_21700B0A4();
  OUTLINED_FUNCTION_10_56();
  WitnessTable = swift_getWitnessTable();
  v155 = v25;
  v156 = WitnessTable;
  OUTLINED_FUNCTION_9_62();
  swift_getOpaqueTypeMetadata2();
  sub_217009B44();
  OUTLINED_FUNCTION_2_3();
  sub_2170089F4();
  sub_2170089F4();
  v27 = OUTLINED_FUNCTION_19_0();
  v29 = OUTLINED_FUNCTION_22_9(v27, v20, v28);
  OUTLINED_FUNCTION_18_38(v29);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_2170083A4();
  sub_2170089F4();
  OUTLINED_FUNCTION_8_62();
  v160 = swift_getWitnessTable();
  v161 = MEMORY[0x277CE03F0];
  v137 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_3();
  sub_217008BC4();
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  v128 = *(a1 + 32);
  sub_21700F164();
  OUTLINED_FUNCTION_14_47();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_18_38(TupleTypeMetadata3);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  v31 = sub_21700B084();
  v125 = v31;
  OUTLINED_FUNCTION_7_1();
  v124 = swift_getWitnessTable();
  type metadata accessor for ActionButton(0, v31, v124, v32);
  OUTLINED_FUNCTION_16();
  v131 = v33;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v35);
  OUTLINED_FUNCTION_6_2();
  v37 = v36;
  v119 = v36;
  v38 = swift_getWitnessTable();
  v116 = v38;
  OUTLINED_FUNCTION_5_72();
  v115 = sub_216AEBA80(v39, v40, MEMORY[0x277CDDB08]);
  v155 = v37;
  v156 = v8;
  v157 = v38;
  v158 = v115;
  v127 = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16();
  v129 = v41;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v43);
  v121 = sub_2170089F4();
  OUTLINED_FUNCTION_16();
  v132 = v44;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v46);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A60, &qword_217050220);
  v126 = sub_2170089F4();
  OUTLINED_FUNCTION_16();
  v134 = v47;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v49);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7BE0, &unk_217018250);
  v133 = sub_2170089F4();
  OUTLINED_FUNCTION_16();
  v135 = v50;
  MEMORY[0x28223BE20](v51);
  v122 = &v111 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_70(&v111 - v54);
  v55 = v2;
  v56 = (v2 + *(a1 + 80));
  v57 = v56[1];
  v58 = (v2 + *(a1 + 76));
  v59 = v58[1];
  v60 = (v2 + *(a1 + 88));
  v62 = *v60;
  v61 = v60[1];
  v63 = *(a1 + 96);
  *&v64 = *v58;
  v112 = v64;
  *&v64 = *v56;
  v111 = v64;
  v65 = type metadata accessor for PresentExpandedTextAction(0);
  v158 = v65;
  v159 = sub_216AEBA80(&qword_27CAC2470, type metadata accessor for PresentExpandedTextAction, &unk_2170723B0);
  v66 = __swift_allocate_boxed_opaque_existential_1(&v155);
  v67 = *(v65 + 28);
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v68 + 16))(v66 + v67, v55 + v63);
  *&v69 = v111;
  *(&v69 + 1) = v57;
  *&v70 = v112;
  *(&v70 + 1) = v59;
  *v66 = v69;
  *(v66 + 1) = v70;
  v66[4] = v62;
  v66[5] = v61;
  v71 = sub_217007F04();
  v72 = v138;
  __swift_storeEnumTagSinglePayload(v138, 1, 1, v71);
  v73 = v141;
  v74 = v140;
  (*(v141 + 16))(v140, v55, a1);
  v75 = v73;
  v76 = (*(v73 + 80) + 64) & ~*(v73 + 80);
  v77 = swift_allocObject();
  v78 = v139;
  *(v77 + 16) = v136;
  *(v77 + 24) = v78;
  *(v77 + 32) = v128;
  *(v77 + 40) = *(a1 + 40);
  *(v77 + 56) = *(a1 + 56);
  (*(v75 + 32))(v77 + v76, v74, a1);
  v79 = v114;
  sub_21695FF44(&v155, v72, sub_216AEC89C, v77, 0, 0, v125, v124, v114);
  sub_21700DF14();
  sub_21700DF14();
  sub_21700DF14();
  v80 = v143;
  sub_217008AC4();
  v81 = v113;
  v82 = v119;
  v83 = v118;
  v84 = v116;
  v85 = v115;
  sub_21700A364();
  (*(v144 + 8))(v80, v83);
  OUTLINED_FUNCTION_67();
  v86(v79, v82);
  v87 = (v55 + *(a1 + 100));
  v88 = *v87;
  v89 = *(v87 + 1);
  LOBYTE(v155) = v88;
  v156 = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  sub_21700AEB4();
  v155 = v82;
  v156 = v83;
  v157 = v84;
  v158 = v85;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v91 = v120;
  v92 = OpaqueTypeMetadata2;
  sub_21700A604();
  OUTLINED_FUNCTION_67();
  v93(v81, v92);
  v94 = v145;
  sub_217008BD4();
  v153 = OpaqueTypeConformance2;
  v154 = MEMORY[0x277CE0770];
  v95 = v121;
  v96 = swift_getWitnessTable();
  v97 = v117;
  sub_21700A634();
  (*(v146 + 8))(v94, v147);
  OUTLINED_FUNCTION_67();
  v98(v91, v95);
  sub_21700ACD4();
  v99 = MEMORY[0x277CE0868];
  v100 = sub_2166D9530(&qword_280E2A728, &qword_27CAB8A60, &qword_217050220, MEMORY[0x277CE0868]);
  v151 = v96;
  v152 = v100;
  v101 = v126;
  v102 = swift_getWitnessTable();
  v103 = v122;
  sub_21700A994();

  OUTLINED_FUNCTION_67();
  v104(v97, v101);
  v105 = sub_2166D9530(&qword_280E2A718, &qword_27CAB7BE0, &unk_217018250, v99);
  v149 = v102;
  v150 = v105;
  v106 = v133;
  v107 = swift_getWitnessTable();
  v108 = v130;
  sub_2166C24DC(v103, v106, v107);
  v109 = *(v135 + 8);
  v109(v103, v106);
  sub_2166C24DC(v108, v106, v107);
  return (v109)(v108, v106);
}

uint64_t sub_216AE833C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_2170093C4();
  sub_21700F164();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7638, &unk_217017490);
  sub_2170089F4();
  sub_2170089F4();
  sub_2170089F4();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2468, &qword_2170425F0);
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  sub_21700B0A4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_217009B44();
  sub_2170089F4();
  sub_2170089F4();
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  sub_2170083A4();
  sub_2170089F4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_217008BC4();
  sub_2170089F4();
  sub_21700F164();
  swift_getTupleTypeMetadata3();
  sub_21700B4E4();
  swift_getWitnessTable();
  return sub_21700B074();
}

uint64_t sub_216AE865C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v127 = a7;
  v124 = a6;
  v120 = a5;
  v118 = a1;
  v114 = a8;
  v101 = *(a4 - 1);
  MEMORY[0x28223BE20](a1);
  v100 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v99 = &v95 - v13;
  MEMORY[0x28223BE20](v14);
  v98 = &v95 - v15;
  v113 = sub_21700F164();
  v111 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v123 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v110 = &v95 - v18;
  MEMORY[0x28223BE20](v19);
  v112 = &v95 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7638, &unk_217017490);
  v21 = sub_2170089F4();
  v22 = sub_2170089F4();
  v107 = v21;
  sub_2170089F4();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2468, &qword_2170425F0);
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  v23 = sub_21700B0A4();
  WitnessTable = swift_getWitnessTable();
  v134 = v23;
  v135 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_217009B44();
  sub_2170089F4();
  sub_2170089F4();
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  sub_2170083A4();
  sub_2170089F4();
  v140 = swift_getWitnessTable();
  v141 = MEMORY[0x277CE03F0];
  swift_getWitnessTable();
  v25 = sub_217008BC4();
  v108 = v22;
  v103 = v25;
  v121 = sub_2170089F4();
  v116 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v126 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v119 = &v95 - v28;
  v106 = *(a3 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = &v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v97 = &v95 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v95 - v35;
  v37 = sub_21700F164();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = &v95 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = &v95 - v42;
  MEMORY[0x28223BE20](v44);
  v125 = &v95 - v45;
  v134 = a2;
  v135 = a3;
  v46 = v124;
  v122 = a4;
  v136 = a4;
  v137 = v120;
  v138 = v124;
  v139 = v127;
  v102 = type metadata accessor for ExpandableTextView(0, &v134);
  v47 = *(v38 + 16);
  v48 = &v118[*(v102 + 68)];
  v105 = v38 + 16;
  v104 = v47;
  v47(v43, v48, v37);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 1, a3);
  v115 = v38;
  if (EnumTagSinglePayload == 1)
  {
    v50 = *(v38 + 8);
    v50(v43, v37);
    __swift_storeEnumTagSinglePayload(v40, 1, 1, a3);
    sub_2168D4034(v40, v125);
    v106 = v50;
    v50(v40, v37);
  }

  else
  {
    v51 = v106;
    v96 = *(v106 + 4);
    v96(v36, v43, a3);
    v52 = v97;
    sub_2166C24DC(v36, a3, v46);
    v53 = *(v51 + 1);
    v53(v36, a3);
    sub_2166C24DC(v52, a3, v46);
    v53(v52, a3);
    v96(v40, v31, a3);
    __swift_storeEnumTagSinglePayload(v40, 0, 1, a3);
    sub_2168D4034(v40, v125);
    v106 = *(v115 + 8);
    v106(v40, v37);
  }

  v117 = v40;
  v109 = v37;
  v54 = v126;
  v55 = v102;
  v56 = v118;
  sub_216AE9414(1u, v102, v126);
  v57 = sub_2166D9530(&qword_280E2A6F8, &qword_27CAB7638, &unk_217017490, MEMORY[0x277CE0868]);
  v133[7] = v120;
  v133[8] = v57;
  v58 = swift_getWitnessTable();
  v59 = sub_216AEC978();
  v133[5] = v58;
  v133[6] = v59;
  v60 = swift_getWitnessTable();
  v61 = swift_getWitnessTable();
  v133[3] = v60;
  v133[4] = v61;
  v62 = v121;
  v63 = swift_getWitnessTable();
  sub_2166C24DC(v54, v62, v63);
  v64 = *(v116 + 8);
  v120 = v116 + 8;
  v108 = v64;
  v64(v54, v62);
  v65 = v111;
  v66 = &v56[*(v55 + 72)];
  v67 = v110;
  v68 = v113;
  v118 = *(v111 + 16);
  (v118)(v110, v66, v113);
  v69 = __swift_getEnumTagSinglePayload(v67, 1, v122);
  v70 = v127;
  if (v69 == 1)
  {
    v71 = *(v65 + 8);
    v111 = (v65 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v71(v67, v68);
    v72 = v123;
    __swift_storeEnumTagSinglePayload(v123, 1, 1, v122);
    v73 = v112;
    sub_2168D4034(v72, v112);
    v122 = v71;
    v71(v72, v68);
  }

  else
  {
    v74 = v101;
    v75 = v65;
    v107 = v63;
    v76 = *(v101 + 32);
    v77 = v67;
    v78 = v98;
    v79 = v122;
    v76(v98, v77, v122);
    v80 = v99;
    sub_2166C24DC(v78, v79, v70);
    v81 = *(v74 + 8);
    v81(v78, v79);
    v82 = v100;
    sub_2166C24DC(v80, v79, v127);
    v81(v80, v79);
    v83 = v123;
    v76(v123, v82, v79);
    v63 = v107;
    __swift_storeEnumTagSinglePayload(v83, 0, 1, v79);
    v73 = v112;
    sub_2168D4034(v83, v112);
    v84 = *(v75 + 8);
    v111 = (v75 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v122 = v84;
    v84(v83, v68);
  }

  v85 = v117;
  v86 = v109;
  v104(v117, v125, v109);
  v134 = v85;
  v87 = v126;
  v88 = v119;
  v89 = v121;
  (*(v116 + 16))(v126, v119, v121);
  v135 = v87;
  v90 = v123;
  (v118)(v123, v73, v68);
  v136 = v90;
  v133[0] = v86;
  v133[1] = v89;
  v133[2] = v68;
  v129 = v124;
  v130 = swift_getWitnessTable();
  v131 = v63;
  v128 = v127;
  v132 = swift_getWitnessTable();
  sub_216984F84(&v134, 3, v133);
  v91 = v122;
  v122(v73, v68);
  v92 = v108;
  v108(v88, v89);
  v93 = v106;
  v106(v125, v86);
  v91(v90, v68);
  v92(v126, v89);
  return v93(v117, v86);
}

uint64_t sub_216AE9414@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a1;
  v46 = a3;
  v4 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7638, &unk_217017490);
  v44 = v4;
  v5 = sub_2170089F4();
  sub_2170089F4();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2468, &qword_2170425F0);
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  v55 = sub_21700B0A4();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_217009B44();
  sub_2170089F4();
  sub_2170089F4();
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  sub_2170083A4();
  v6 = sub_2170089F4();
  v43 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v41 = &v32 - v7;
  v37 = v5;
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = sub_2170089F4();
  v42 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v34 = &v32 - v12;
  v53 = swift_getWitnessTable();
  v54 = MEMORY[0x277CE03F0];
  v35 = v6;
  v36 = swift_getWitnessTable();
  v38 = sub_217008BC4();
  v13 = sub_2170089F4();
  v40 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  v33 = a2;
  v19 = *(a2 + 40);
  sub_21700ABB4();
  v20 = sub_2166D9530(&qword_280E2A6F8, &qword_27CAB7638, &unk_217017490, MEMORY[0x277CE0868]);
  v51 = v19;
  v52 = v20;
  v21 = v37;
  v22 = swift_getWitnessTable();
  sub_21700AA04();
  (*(v39 + 8))(v10, v21);
  v23 = v41;
  sub_216AE9A70(v33, v41);
  v24 = sub_216AEC978();
  v49 = v22;
  v50 = v24;
  v25 = swift_getWitnessTable();
  v26 = v35;
  sub_2166BF464();
  v27 = v34;
  sub_21700AAA4();
  (*(v43 + 8))(v23, v26);
  (*(v42 + 8))(v27, v11);
  v28 = swift_getWitnessTable();
  v47 = v25;
  v48 = v28;
  v29 = swift_getWitnessTable();
  sub_2166C24DC(v15, v13, v29);
  v30 = *(v40 + 8);
  v30(v15, v13);
  sub_2166C24DC(v18, v13, v29);
  return (v30)(v18, v13);
}

uint64_t sub_216AE9A70@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7638, &unk_217017490);
  v20 = v3;
  sub_2170089F4();
  sub_2170089F4();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2468, &qword_2170425F0);
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  v30 = sub_21700B0A4();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_217009B44();
  sub_2170089F4();
  sub_2170089F4();
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  v4 = sub_2170083A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  v8 = sub_2170089F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  sub_217009C64();
  v23 = v20;
  v24 = *(a1 + 24);
  v25 = *(a1 + 40);
  v26 = *(a1 + 56);
  v27 = v21;
  sub_217008394();
  v15 = swift_getWitnessTable();
  sub_21700A464();
  (*(v5 + 8))(v7, v4);
  v28 = v15;
  v29 = MEMORY[0x277CE03F0];
  v16 = swift_getWitnessTable();
  sub_2166C24DC(v11, v8, v16);
  v17 = *(v9 + 8);
  v17(v11, v8);
  sub_2166C24DC(v14, v8, v16);
  return (v17)(v14, v8);
}

uint64_t sub_216AE9E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v77 = a7;
  v76 = a6;
  v105 = a4;
  v104 = a3;
  v108 = a1;
  v103 = a8;
  v102 = sub_217009314();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v100 = v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_2170099D4();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v97 = v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2468, &qword_2170425F0);
  swift_getTupleTypeMetadata2();
  v91 = sub_21700B4E4();
  WitnessTable = swift_getWitnessTable();
  v16 = sub_21700B0A4();
  v86 = v16;
  v94 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v83 = v68 - v17;
  v85 = swift_getWitnessTable();
  v119 = v16;
  v120 = v85;
  v89 = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v92 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v80 = v68 - v18;
  sub_217009B44();
  v87 = sub_2170089F4();
  v95 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v81 = v68 - v19;
  v93 = sub_2170089F4();
  v96 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v82 = v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v88 = v68 - v22;
  v119 = a2;
  v120 = a3;
  v121 = a4;
  v122 = a5;
  v123 = a6;
  v124 = a7;
  v79 = type metadata accessor for ExpandableTextView(0, &v119);
  v23 = *(v79 - 8);
  v78 = *(v23 + 64);
  MEMORY[0x28223BE20](v79);
  v73 = v68 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7638, &unk_217017490);
  v25 = sub_2170089F4();
  v72 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = v68 - v26;
  v28 = sub_2170089F4();
  v75 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v69 = v68 - v29;
  v74 = sub_2170089F4();
  v106 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v107 = v68 - v32;
  v70 = a2;
  v33 = v108;
  sub_21700ABB4();
  v34 = sub_2166D9530(&qword_280E2A6F8, &qword_27CAB7638, &unk_217017490, MEMORY[0x277CE0868]);
  v118[10] = a5;
  v118[11] = v34;
  v68[1] = MEMORY[0x277CDFAD8];
  v35 = swift_getWitnessTable();
  sub_21700AB84();
  (*(v72 + 8))(v27, v25);
  v36 = v73;
  v37 = v79;
  (*(v23 + 16))(v73, v33, v79);
  v38 = (*(v23 + 80) + 64) & ~*(v23 + 80);
  v39 = swift_allocObject();
  v40 = v104;
  *(v39 + 2) = a2;
  *(v39 + 3) = v40;
  *(v39 + 4) = v105;
  *(v39 + 5) = a5;
  v41 = v76;
  v42 = v77;
  *(v39 + 6) = v76;
  *(v39 + 7) = v42;
  (*(v23 + 32))(&v39[v38], v36, v37);
  v118[8] = v35;
  v118[9] = MEMORY[0x277CDFC48];
  v43 = swift_getWitnessTable();
  v44 = v71;
  v45 = v69;
  sub_21700AAF4();

  (*(v75 + 8))(v45, v28);
  v118[6] = v43;
  v118[7] = MEMORY[0x277CE0790];
  v46 = v74;
  v75 = swift_getWitnessTable();
  sub_2166C24DC(v44, v46, v75);
  v78 = *(v106 + 8);
  v79 = v106 + 8;
  v78(v44, v46);
  sub_2170093D4();
  sub_217009154();
  v109 = v70;
  v110 = v104;
  v111 = v105;
  v112 = a5;
  v113 = v41;
  v114 = v42;
  v115 = v108;
  v47 = v83;
  sub_21700B094();
  v48 = v97;
  sub_2170099B4();
  v49 = v80;
  v50 = v86;
  v51 = v85;
  sub_21700A784();
  (*(v98 + 8))(v48, v99);
  (*(v94 + 8))(v47, v50);
  v52 = v100;
  sub_2170092F4();
  v119 = v50;
  v120 = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = v81;
  v55 = OpaqueTypeMetadata2;
  sub_21700A504();
  (*(v101 + 8))(v52, v102);
  (*(v92 + 8))(v49, v55);
  v56 = sub_216AEBA80(&qword_280E2A6F0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v118[4] = OpaqueTypeConformance2;
  v118[5] = v56;
  v57 = v87;
  v58 = swift_getWitnessTable();
  v59 = v82;
  sub_21700A614();
  (*(v95 + 8))(v54, v57);
  v118[2] = v58;
  v118[3] = MEMORY[0x277CE0688];
  v60 = v93;
  v61 = swift_getWitnessTable();
  v62 = v88;
  sub_2166C24DC(v59, v60, v61);
  v63 = v96;
  v64 = *(v96 + 8);
  v64(v59, v60);
  v65 = v107;
  (*(v106 + 16))(v44, v107, v46);
  v119 = v44;
  (*(v63 + 16))(v59, v62, v60);
  v120 = v59;
  v118[0] = v46;
  v118[1] = v60;
  v116 = v75;
  v117 = v61;
  sub_216984F84(&v119, 2, v118);
  v64(v62, v60);
  v66 = v78;
  v78(v65, v46);
  v64(v59, v60);
  return v66(v44, v46);
}