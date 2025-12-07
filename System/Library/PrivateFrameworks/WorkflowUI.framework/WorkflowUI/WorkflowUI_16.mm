void sub_27489B828(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v19 = v3;
  v20 = v2;
  aBlock = v2;
  v13 = v3;
  sub_27473ADB8(&v20, &v18, &unk_28096CEA0, &qword_274A1E6F8);
  sub_27473ADB8(&v19, &v18, &qword_28096D0B0, &qword_274A1EA70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D100, &qword_274A1EA98);
  sub_2749FC5C4();
  v4 = v18;
  if (v18 == 1)
  {
    aBlock = v2;
    v13 = v3;
    v18 = 0;
    sub_2749FC5D4();
    sub_2748A045C(&v20, &unk_28096CEA0);
    sub_2748A045C(&v19, &qword_28096D0B0);
    v5 = [objc_opt_self() sharedManager];
    v6 = *a1;
    v7 = swift_allocObject();
    v8 = *(a1 + 16);
    v7[1] = *a1;
    v7[2] = v8;
    v7[3] = *(a1 + 32);
    v16 = sub_2748A0428;
    v17 = v7;
    aBlock = MEMORY[0x277D85DD0];
    v13 = 1107296256;
    v14 = sub_27489BBDC;
    v15 = &block_descriptor_201;
    v9 = _Block_copy(&aBlock);
    sub_27473ADB8(&v20, &v18, &unk_28096CEA0, &qword_274A1E6F8);
    sub_27473ADB8(&v19, &v18, &qword_28096D0B0, &qword_274A1EA70);
    v10 = v6;

    v11 = [v5 getImageForBanner:v10 completionHandler:v9];
    _Block_release(v9);
  }

  else
  {
    sub_2748A045C(&v20, &unk_28096CEA0);
    sub_2748A045C(&v19, &qword_28096D0B0);
    sub_2748A0430(v4);
  }
}

double sub_27489BA90(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a2)
    {
      v4 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D100, &qword_274A1EA98);
      sub_2749FC5D4();
    }

    else
    {
      v6 = MEMORY[0x28223BE20](a1);
      sub_2749FC964();
      sub_2749FACF4();
    }
  }

  return result;
}

uint64_t sub_27489BB7C(uint64_t a1, void *a2)
{
  v2 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D100, &qword_274A1EA98);
  return sub_2749FC5D4();
}

void sub_27489BBDC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_27489BCAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CF08, &qword_274A1E928);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v40 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CF10, &qword_274A1E930);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CF18, &qword_274A1E938);
  MEMORY[0x28223BE20](v40);
  v11 = &v40 - v10;
  *a1 = sub_2749FB524();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v12 = sub_2749FB644();
  v13 = *(v2 + 8);
  *v6 = v12;
  v6[1] = v13 / 3.0;
  *(v6 + 16) = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096CF20, &unk_274A1E940);
  sub_27489BFD0(v2, v6 + *(v14 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FDC0, &qword_274A16220);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274A0F620;
  v16 = sub_2749FBC94();
  *(inited + 32) = v16;
  v17 = sub_2749FBCB4();
  *(inited + 33) = v17;
  v18 = sub_2749FBCA4();
  sub_2749FBCA4();
  if (sub_2749FBCA4() != v16)
  {
    v18 = sub_2749FBCA4();
  }

  sub_2749FBCA4();
  if (sub_2749FBCA4() != v17)
  {
    v18 = sub_2749FBCA4();
  }

  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CF30, &qword_274A1E950) + 44);
  sub_2749FA9E4();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_2747D31F8(v6, v9, &qword_28096CF08, &qword_274A1E928);
  v28 = &v9[*(v7 + 36)];
  *v28 = v18;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = sub_2749FBC74();
  sub_2749FA9E4();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_2747D31F8(v9, v11, &qword_28096CF10, &qword_274A1E930);
  v38 = &v11[*(v40 + 36)];
  *v38 = v29;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  return sub_2747D31F8(v11, a1 + v19, &qword_28096CF18, &qword_274A1E938);
}

uint64_t sub_27489BFD0@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CF38, &qword_274A1E958);
  MEMORY[0x28223BE20](v58);
  v55 = &v52 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CF40, &qword_274A1E960);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v54 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v52 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CF48, &qword_274A1E968);
  MEMORY[0x28223BE20](v56);
  v10 = &v52 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CF50, &qword_274A1E970);
  MEMORY[0x28223BE20](v57);
  v12 = &v52 - v11;
  v13 = sub_2749FAE14();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v52 - v18;
  type metadata accessor for GalleryCollectionHeaderView(0);
  v20 = a1;
  sub_2747B95BC();
  (*(v14 + 104))(v17, *MEMORY[0x277CDF988], v13);
  sub_27489DC28(&qword_28096CF58);
  LOBYTE(a1) = sub_2749FCD34();
  v21 = *(v14 + 8);
  v21(v17, v13);
  v21(v19, v13);
  if (a1)
  {
    v53 = v10;
    *v8 = sub_2749FB504();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CF78, &qword_274A1E980);
    sub_27489D04C(v20, &v8[*(v22 + 44)]);
    v23 = [*v20 collectionDescription];
    v24 = v8;
    if (v23)
    {
      v25 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v27 = v26;

      v60 = v25;
      v61 = v27;
      sub_27475D0D0();
      v28 = sub_2749FBEE4();
      v30 = v29;
      LOBYTE(v27) = v31;
      sub_2749FBDC4();
      v32 = sub_2749FBEC4();
      v34 = v33;
      v52 = v8;
      v36 = v35;

      sub_27477656C(v28, v30, v27 & 1);

      sub_2749FC4A4();
      v23 = sub_2749FBE84();
      v38 = v37;
      v40 = v39;
      v42 = v41;

      v43 = v36 & 1;
      v24 = v52;
      sub_27477656C(v32, v34, v43);

      v44 = v40 & 1;
      sub_274754DBC(v23, v38, v40 & 1);
    }

    else
    {
      v38 = 0;
      v44 = 0;
      v42 = 0;
    }

    v48 = v54;
    sub_27473ADB8(v24, v54, &qword_28096CF40, &qword_274A1E960);
    v49 = v55;
    sub_27473ADB8(v48, v55, &qword_28096CF40, &qword_274A1E960);
    v50 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CF80, &qword_274A1E988) + 48));
    *v50 = v23;
    v50[1] = v38;
    v50[2] = v44;
    v50[3] = v42;
    sub_2747FF76C(v23, v38, v44, v42);
    sub_2747FF7B8(v23, v38, v44, v42);
    sub_2748A045C(v48, &qword_28096CF40);
    sub_27473ADB8(v49, v53, &qword_28096CF38, &qword_274A1E958);
    swift_storeEnumTagMultiPayload();
    sub_2748A06D8(&unk_28096CF68);
    sub_2748A06D8(&unk_28096CF70);
    sub_2749FB7B4();
    sub_2747FF7B8(v23, v38, v44, v42);
    sub_2748A045C(v49, &qword_28096CF38);
    v46 = v24;
    v47 = &qword_28096CF40;
  }

  else
  {
    *v12 = sub_2749FB644();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CF60, &qword_274A1E978);
    sub_27489C6C8(v20, &v12[*(v45 + 44)]);
    sub_27473ADB8(v12, v10, &qword_28096CF50, &qword_274A1E970);
    swift_storeEnumTagMultiPayload();
    sub_2748A06D8(&unk_28096CF68);
    sub_2748A06D8(&unk_28096CF70);
    sub_2749FB7B4();
    v46 = v12;
    v47 = &qword_28096CF50;
  }

  return sub_2748A045C(v46, v47);
}

uint64_t sub_27489C6C8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CF88, &unk_274A1E990);
  v68 = *(v3 - 8);
  v69 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v67 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v71 = &v62 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CF90, &unk_274A1FB90);
  MEMORY[0x28223BE20](v7);
  v9 = &v62 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CF98, &qword_274A1E9A0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v70 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v62 - v13;
  v15 = *a1;
  v16 = [*a1 name];
  if (v16)
  {
    v17 = v16;
    v18 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v20 = v19;

    sub_27489CB98(v18, v20, v9);

    sub_2747D31F8(v9, v14, &qword_28096CF90, &unk_274A1FB90);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v21, 1, v7);
  v22 = [v15 collectionDescription];
  if (v22)
  {
    v23 = v22;
    v24 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v26 = v25;

    v72 = v24;
    v73 = v26;
    sub_27475D0D0();
    v27 = sub_2749FBEE4();
    v29 = v28;
    LOBYTE(v26) = v30;
    sub_2749FBDC4();
    v31 = sub_2749FBEC4();
    v62 = a1;
    v32 = v14;
    v34 = v33;
    v36 = v35;

    sub_27477656C(v27, v29, v26 & 1);

    sub_2749FC4A4();
    v37 = sub_2749FBE84();
    v39 = v38;
    LOBYTE(v29) = v40;
    v42 = v41;

    v43 = v34;
    v14 = v32;
    sub_27477656C(v31, v43, v36 & 1);

    v64 = v39;
    v65 = v37;
    v44 = v39;
    v45 = v29 & 1;
    sub_274754DBC(v37, v44, v29 & 1);
    v46 = v42;
  }

  else
  {
    v64 = 0;
    v65 = 0;
    v45 = 0;
    v46 = 0;
  }

  v63 = v14;
  v47 = v71;
  sub_27489CD6C(v71);
  v48 = v70;
  sub_27473ADB8(v14, v70, &qword_28096CF98, &qword_274A1E9A0);
  v50 = v67;
  v49 = v68;
  v51 = *(v68 + 16);
  v52 = v47;
  v53 = v69;
  v51(v67, v52, v69);
  v54 = v48;
  v55 = v66;
  sub_27473ADB8(v54, v66, &qword_28096CF98, &qword_274A1E9A0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CFE0, &qword_274A1E9E8);
  v57 = (v55 + *(v56 + 48));
  v58 = v64;
  v59 = v65;
  *v57 = v65;
  v57[1] = v58;
  v57[2] = v45;
  v57[3] = v46;
  v51((v55 + *(v56 + 64)), v50, v53);
  sub_2747FF76C(v59, v58, v45, v46);
  sub_2747FF7B8(v59, v58, v45, v46);
  v60 = *(v49 + 8);
  v60(v71, v53);
  sub_2748A045C(v63, &qword_28096CF98);
  v60(v50, v53);
  sub_2747FF7B8(v59, v58, v45, v46);
  return sub_2748A045C(v70, &qword_28096CF98);
}

uint64_t sub_27489CB98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[1] = a3;
  v21 = sub_2749FB5D4();
  v20[0] = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  v23 = a2;
  sub_27475D0D0();

  v7 = sub_2749FBEE4();
  v9 = v8;
  v11 = v10;
  sub_2749FBD84();
  sub_2749FBD34();
  sub_2749FBDA4();

  v12 = sub_2749FBEC4();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_27477656C(v7, v9, v11 & 1);

  v22 = v12;
  v23 = v14;
  v16 &= 1u;
  v24 = v16;
  v25 = v18;
  sub_2749FB5C4();
  sub_2749FC1D4();
  (*(v20[0] + 8))(v6, v21);
  sub_27477656C(v12, v14, v16);
}

uint64_t sub_27489CD6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19[1] = a1;
  v3 = sub_2749FAF64();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GalleryCollectionHeaderView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096EDD0, &qword_274A1E9B0);
  MEMORY[0x28223BE20](v10);
  v12 = v19 - v11;
  sub_27489E230(v2, v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GalleryCollectionHeaderView);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  sub_27489E28C(v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for GalleryCollectionHeaderView);
  sub_2749FC624();
  v15 = sub_2749FC434();
  KeyPath = swift_getKeyPath();
  v17 = &v12[*(v10 + 36)];
  *v17 = KeyPath;
  v17[1] = v15;
  sub_2749FAF54();
  sub_27489FAD0();
  sub_27489DC28(&qword_28159E6A0);
  sub_2749FBFC4();
  (*(v4 + 8))(v6, v3);
  return sub_2748A045C(v12, &unk_28096EDD0);
}

uint64_t sub_27489D04C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CF88, &unk_274A1E990);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CF90, &unk_274A1FB90);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CF98, &qword_274A1E9A0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  v18 = [*a1 name];
  if (v18)
  {
    v19 = v18;
    v20 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v22 = v21;

    sub_27489CB98(v20, v22, v11);

    sub_2747D31F8(v11, v17, &qword_28096CF90, &unk_274A1FB90);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  __swift_storeEnumTagSinglePayload(v17, v23, 1, v9);
  sub_27489CD6C(v8);
  v32 = v15;
  sub_27473ADB8(v17, v15, &qword_28096CF98, &qword_274A1E9A0);
  v24 = v33;
  v25 = v34;
  v26 = *(v33 + 16);
  v26(v6, v8, v34);
  v27 = v35;
  sub_27473ADB8(v15, v35, &qword_28096CF98, &qword_274A1E9A0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096CFA0, &qword_274A1E9A8);
  v29 = v27 + *(v28 + 48);
  *v29 = 0;
  *(v29 + 8) = 1;
  v26((v27 + *(v28 + 64)), v6, v25);
  v30 = *(v24 + 8);
  v30(v8, v25);
  sub_2748A045C(v17, &qword_28096CF98);
  v30(v6, v25);
  return sub_2748A045C(v32, &qword_28096CF98);
}

void sub_27489D384()
{
  v1 = v0;
  v25 = type metadata accessor for RootNavigationDestination(0);
  MEMORY[0x28223BE20](v25);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2749FB4C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  v9 = [v8 name];
  if (v9)
  {
    v10 = v9;
    v11 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990, &qword_274A11FB0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_274A11F70;
  *(v14 + 32) = v8;
  objc_allocWithZone(MEMORY[0x277D7C470]);
  v15 = v8;
  v16 = sub_27489D7A4(0, v11, v13, 0, 0, 0, v14, 0, 0, 0, 0, 0);
  v17 = v1[17];
  v18 = v1[18];
  if (*(v1 + 152) == 1)
  {
    swift_unknownObjectRetain();
    if (v17)
    {
LABEL_6:
      ObjectType = swift_getObjectType();
      *v3 = v16;
      *(v3 + 1) = 0;
      *(v3 + 2) = 0;
      *(v3 + 3) = 0;
      v3[32] = 64;
      swift_storeEnumTagMultiPayload();
      v20 = *(v18 + 16);
      v21 = v16;
      v20(v3, ObjectType, v18);

      swift_unknownObjectRelease();
      sub_27489DC68(v3, type metadata accessor for RootNavigationDestination);
      return;
    }
  }

  else
  {

    sub_2749FD2D4();
    v22 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();
    v23 = sub_274830180(v17, v18, 0);
    (*(v5 + 8))(v7, v4, v23);
    v18 = v27;
    if (v26)
    {
      goto LABEL_6;
    }
  }
}

uint64_t sub_27489D680@<X0>(uint64_t a1@<X8>)
{
  sub_2749FCE14("See All", 7);
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v2 = qword_28159E448;
  v3 = sub_2749FCD64();
  v4 = sub_2749FCD64();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  sub_27475D0D0();
  result = sub_2749FBEE4();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

id sub_27489D7A4(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  if (a3)
  {
    v17 = sub_2749FCD64();

    if (a6)
    {
LABEL_3:
      sub_27471CF08(0, &qword_28096CB38, 0x277D7C460);
      v18 = sub_2749FCF74();

      goto LABEL_6;
    }
  }

  else
  {
    v17 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
LABEL_6:
  if (a7)
  {
    sub_27471CF08(0, &qword_28096CB30, 0x277D7C468);
    v19 = sub_2749FCF74();
  }

  else
  {
    v19 = 0;
  }

  if (a9)
  {
    v20 = sub_2749FCD64();
  }

  else
  {
    v20 = 0;
  }

  if (a12)
  {
    v21 = sub_2749FCD64();
  }

  else
  {
    v21 = 0;
  }

  v22 = [v24 initWithIdentifier:a1 name:v17 minVersion:a4 isRoot:a5 banners:v18 collections:v19 language:v20 base:a10 persistentIdentifier:v21];

  return v22;
}

uint64_t objectdestroyTm_8()
{
  sub_27489A4B0(*(v0 + 24), *(v0 + 32));
  sub_274830180(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0);
}

void sub_27489D9B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2749FCD64();

  [a3 setSessionIdentifier_];
}

uint64_t sub_27489DA18(void *a1)
{
  v2 = [a1 sessionIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  return v3;
}

unint64_t sub_27489DA88()
{
  result = qword_28096CAE8;
  if (!qword_28096CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096CAE8);
  }

  return result;
}

uint64_t sub_27489DADC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
    return sub_27476D244(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_27489DB78(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
    return sub_2747A3168(a1, a2);
  }

  else
  {
  }
}

uint64_t objectdestroy_29Tm_0()
{
  v1 = OUTLINED_FUNCTION_35_9();
  if (!v2)
  {
  }

  return MEMORY[0x2821FE8E8](v0);
}

unint64_t sub_27489DC28(uint64_t a1)
{
  result = OUTLINED_FUNCTION_15_1(a1);
  if (!result)
  {
    v3(255);
    OUTLINED_FUNCTION_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_27489DC68(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_27489DCC8(void *a1)
{
  v1 = [a1 workflows];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_27471CF08(0, &unk_28096CD30, 0x277D7C498);
  v3 = sub_2749FCF84();

  return v3;
}

uint64_t objectdestroy_56Tm()
{
  v1 = OUTLINED_FUNCTION_35_9();
  if (!v2)
  {
  }

  return MEMORY[0x2821FE8E8](v0);
}

void sub_27489DDC4(uint64_t a1)
{
  sub_27489E6D0(319, &qword_28096CB58, &qword_28096CB60, 0x277D7C490, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_27489E94C(319, &qword_28096CB68, &unk_28096CB70, &qword_274A1FEF0, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_27489DF38(319, &qword_2809695D0, MEMORY[0x277CDFAA0]);
      if (v3 <= 0x3F)
      {
        sub_27489DF38(319, &qword_28096CB80, MEMORY[0x277CDFA28]);
        if (v4 <= 0x3F)
        {
          sub_27471CF08(319, &qword_28096F010, 0x277D7C470);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_27489DF38(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_3();
    v4 = sub_2749FAAB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_27489DF98(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 17))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 16) & 0x7E | (*(a1 + 16) >> 7)) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_27489DFE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

unint64_t sub_27489E058()
{
  result = qword_28096CB98;
  if (!qword_28096CB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096CB18, &qword_274A1E150);
    sub_2748A0284(&unk_28096CBA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096CB98);
  }

  return result;
}

unint64_t sub_27489E110()
{
  result = qword_28096CBB0;
  if (!qword_28096CBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096CBB8, &qword_274A1E2A0);
    sub_2748A06D8(&qword_280968318);
    sub_27478E528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096CBB0);
  }

  return result;
}

uint64_t sub_27489E230(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_44();
  v5(v4);
  return a2;
}

uint64_t sub_27489E28C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_44();
  v5(v4);
  return a2;
}

void sub_27489E2E8()
{
  v1 = type metadata accessor for GalleryPageContentView(0);
  OUTLINED_FUNCTION_34(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  sub_2748946F0(v3);
}

unint64_t sub_27489E344()
{
  result = qword_28096CC18;
  if (!qword_28096CC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096CC10, &unk_274A1E370);
    sub_27489E3D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096CC18);
  }

  return result;
}

unint64_t sub_27489E3D0()
{
  result = qword_28096CC20;
  if (!qword_28096CC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096CC20);
  }

  return result;
}

unint64_t sub_27489E424()
{
  result = qword_28096CC28;
  if (!qword_28096CC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096CBE8, &qword_274A1E348);
    sub_27489DC28(&unk_28096CC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096CC28);
  }

  return result;
}

void sub_27489E4E0()
{
  v1 = type metadata accessor for GalleryPageContentView(0);
  OUTLINED_FUNCTION_27(v1);
  OUTLINED_FUNCTION_30_8();
  v4 = *(v0 + v3);

  sub_2748944E0(v0 + v2, v4);
}

unint64_t sub_27489E554(uint64_t a1)
{
  result = OUTLINED_FUNCTION_15_1(a1);
  if (!result)
  {
    sub_27471CF08(255, v3, v4);
    OUTLINED_FUNCTION_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_27489E5B8(uint64_t a1)
{
  sub_27489E94C(319, &qword_28096CB68, &unk_28096CB70, &qword_274A1FEF0, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_27489DF38(319, &qword_2809695D0, MEMORY[0x277CDFAA0]);
    if (v2 <= 0x3F)
    {
      sub_27489E6D0(319, &unk_28096CC58, &qword_28096CB30, 0x277D7C468, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_27489E6D0(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_27471CF08(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_27489E740(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_27489E780(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
      *(result + 176) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_27489E824(uint64_t a1)
{
  sub_27489E94C(319, &qword_28096CB68, &unk_28096CB70, &qword_274A1FEF0, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_27489DF38(319, &qword_2809695D0, MEMORY[0x277CDFAA0]);
    if (v2 <= 0x3F)
    {
      sub_27489E94C(319, &qword_28096CC78, &unk_28096CC80, qword_274A1E458, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_27489E94C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_27489EA04()
{
  result = qword_28096CCC0;
  if (!qword_28096CCC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096CCB8, &qword_274A1E578);
    sub_27489EA90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096CCC0);
  }

  return result;
}

unint64_t sub_27489EA90()
{
  result = qword_28096CCC8;
  if (!qword_28096CCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096CCB0, &qword_274A1E570);
    sub_27489EB1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096CCC8);
  }

  return result;
}

unint64_t sub_27489EB1C()
{
  result = qword_28096CCD0;
  if (!qword_28096CCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096CCA8, &qword_274A1E568);
    sub_27489EBA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096CCD0);
  }

  return result;
}

unint64_t sub_27489EBA8()
{
  result = qword_28096CCD8;
  if (!qword_28096CCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096CCA0, &qword_274A1E560);
    sub_2748A06D8(&unk_28096CCE0);
    sub_27489DC28(&qword_28159E5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096CCD8);
  }

  return result;
}

unint64_t sub_27489ED4C()
{
  result = qword_28096CDC8;
  if (!qword_28096CDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096CD80, &qword_274A1E630);
    sub_27489DC28(&unk_28096CDB8);
    sub_27489DC28(&unk_28096CDC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096CDC8);
  }

  return result;
}

unint64_t sub_27489EE44()
{
  result = qword_28096CE00;
  if (!qword_28096CE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096CDF8, &qword_274A1E690);
    sub_27489EF00();
    sub_27489DC28(&qword_28159E5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096CE00);
  }

  return result;
}

unint64_t sub_27489EF00()
{
  result = qword_28096CE08;
  if (!qword_28096CE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096CDF0, &qword_274A1E688);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096CDE0, &qword_274A1E678);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096CDD8, &qword_274A1E670);
    sub_2749FBBD4();
    sub_2748A06D8(&unk_28096CE10);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096CE08);
  }

  return result;
}

unint64_t sub_27489F060()
{
  result = qword_28096CE28;
  if (!qword_28096CE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096CE20, &qword_274A1E6A0);
    sub_2748A06D8(&unk_28096CE30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096CE28);
  }

  return result;
}

uint64_t objectdestroy_129Tm(void (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_23();
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  sub_274830180(*v4, *(v4 + 8), *(v4 + 16));
  v5 = *(v1 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968AA8, &unk_274A13650);
  if (OUTLINED_FUNCTION_59_3(v6) == 1)
  {
    sub_2749FAE34();
    OUTLINED_FUNCTION_1_2();
    (*(v7 + 8))(v4 + v5);
  }

  else
  {
  }

  v8 = OUTLINED_FUNCTION_23_12();

  return MEMORY[0x2821FE8E8](v8);
}

uint64_t sub_27489F25C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_34(v3);
  v4 = OUTLINED_FUNCTION_8_0();

  return a3(v4);
}

unint64_t sub_27489F2E0()
{
  result = qword_28096CE68;
  if (!qword_28096CE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096CE50, &qword_274A1E6D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096CE70, &qword_274A1E6E0);
    sub_2748A06D8(&unk_28096CE78);
    sub_27489F3E8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096CE68);
  }

  return result;
}

unint64_t sub_27489F3E8()
{
  result = qword_28096CE80;
  if (!qword_28096CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096CE80);
  }

  return result;
}

uint64_t sub_27489F43C()
{
  v1 = type metadata accessor for GalleryPageBannerView(0);
  OUTLINED_FUNCTION_27(v1);
  OUTLINED_FUNCTION_30_8();
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_274898BB0((v0 + v2), v4, v5);
}

unint64_t sub_27489F4C4()
{
  result = qword_28096CE98;
  if (!qword_28096CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096CE98);
  }

  return result;
}

void sub_27489F550(uint64_t a1)
{
  sub_27489E94C(319, &qword_28096CB68, &unk_28096CB70, &qword_274A1FEF0, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_27489DF38(319, &qword_2809695D0, MEMORY[0x277CDFAA0]);
    if (v2 <= 0x3F)
    {
      sub_27489E6D0(319, &qword_28096CEC0, &unk_28096CD30, 0x277D7C498, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_27489F698(uint64_t a1)
{
  sub_27471CF08(319, &qword_28096CB30, 0x277D7C468);
  if (v1 <= 0x3F)
  {
    sub_27489E94C(319, &qword_28096CB68, &unk_28096CB70, &qword_274A1FEF0, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_27489DF38(319, &qword_28096CB80, MEMORY[0x277CDFA28]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_27489F7A4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_27489F7E4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_27489F840()
{
  result = qword_28096CED8;
  if (!qword_28096CED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096CEE0, &qword_274A1E7E8);
    sub_27489EA04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096CED8);
  }

  return result;
}

unint64_t sub_27489F8CC()
{
  result = qword_28096CEE8;
  if (!qword_28096CEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096CEF0, &qword_274A1E7F0);
    sub_2748A06D8(&unk_28096CD68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096CEE8);
  }

  return result;
}

unint64_t sub_27489F97C()
{
  result = qword_28096CEF8;
  if (!qword_28096CEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096CF00, &qword_274A1E7F8);
    sub_27489EE44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096CEF8);
  }

  return result;
}

void sub_27489FA78()
{
  v0 = type metadata accessor for GalleryCollectionHeaderView(0);
  OUTLINED_FUNCTION_34(v0);
  sub_27489D384();
}

unint64_t sub_27489FAD0()
{
  result = qword_28096CFB0;
  if (!qword_28096CFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096EDD0, &qword_274A1E9B0);
    sub_2748A06D8(&unk_28096B360);
    sub_2748A06D8(&unk_28159E5B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096CFB0);
  }

  return result;
}

uint64_t sub_27489FBB4()
{
  v0 = type metadata accessor for GalleryPageCollectionsRowView(0);
  OUTLINED_FUNCTION_34(v0);
  v1 = OUTLINED_FUNCTION_8_0();

  return sub_274895B84(v1, v2, v3);
}

unint64_t sub_27489FC28()
{
  result = qword_28096D008;
  if (!qword_28096D008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D000, &qword_274A1EA08);
    sub_27489FCB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096D008);
  }

  return result;
}

unint64_t sub_27489FCB4()
{
  result = qword_28096D010;
  if (!qword_28096D010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D018, &qword_274A1EA10);
    sub_2748A06D8(&unk_28096D020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096D010);
  }

  return result;
}

uint64_t sub_27489FD6C()
{
  v1 = type metadata accessor for GalleryPageCollectionsRowView(0);
  OUTLINED_FUNCTION_27(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = sub_2749FAF04();
  OUTLINED_FUNCTION_34(v4);

  return sub_274896CB0(v0 + v3);
}

unint64_t sub_27489FE2C()
{
  result = qword_28096D040;
  if (!qword_28096D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096D040);
  }

  return result;
}

unint64_t sub_27489FE88()
{
  result = qword_28096D050;
  if (!qword_28096D050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D048, &qword_274A1EA28);
    sub_27489FF0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096D050);
  }

  return result;
}

unint64_t sub_27489FF0C()
{
  result = qword_28096D058;
  if (!qword_28096D058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D060, &qword_274A1EA30);
    sub_2748A06D8(&unk_28096D068);
    sub_27489FFF0(&unk_28096D078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096D058);
  }

  return result;
}

unint64_t sub_27489FFF0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_15_1(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_108(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    sub_27489DC28(&qword_28096CD10);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t objectdestroy_184Tm()
{
  type metadata accessor for GalleryPageCollectionsRowView(0);
  OUTLINED_FUNCTION_23();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_274830180(*v3, *(v3 + 8), *(v3 + 16));
  v4 = *(v0 + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968AA8, &unk_274A13650);
  if (OUTLINED_FUNCTION_59_3(v5) == 1)
  {
    sub_2749FAE34();
    OUTLINED_FUNCTION_1_2();
    (*(v6 + 8))(v3 + v4);
  }

  else
  {
  }

  v7 = OUTLINED_FUNCTION_23_12();

  return MEMORY[0x2821FE8E8](v7);
}

unint64_t sub_2748A01CC()
{
  result = qword_28096D0B8;
  if (!qword_28096D0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D0A0, &qword_274A1EA60);
    sub_2748A0284(&unk_28096D0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096D0B8);
  }

  return result;
}

unint64_t sub_2748A0284(uint64_t a1)
{
  result = OUTLINED_FUNCTION_15_1(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_108(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2748A02F8()
{
  result = qword_28096D0D0;
  if (!qword_28096D0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D0D8, &qword_274A1EA80);
    sub_2748A06D8(&unk_28096D0E0);
    sub_2748A06D8(&unk_28096D0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096D0D0);
  }

  return result;
}

uint64_t objectdestroy_193Tm()
{
  v1 = *(v0 + 48);
  if (v1 != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0);
}

void sub_2748A0430(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_2748A045C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_108(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_1_2();
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_2748A04AC()
{
  result = qword_28096D138;
  if (!qword_28096D138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D120, &qword_274A1EAB8);
    sub_2748A06D8(&unk_28096D140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096D138);
  }

  return result;
}

unint64_t sub_2748A0564()
{
  result = qword_28096D198;
  if (!qword_28096D198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D098, &qword_274A1EA58);
    sub_2748A061C();
    sub_2748A06D8(&qword_28159E640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096D198);
  }

  return result;
}

unint64_t sub_2748A061C()
{
  result = qword_28096D1A0;
  if (!qword_28096D1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D090, &qword_274A1EA50);
    sub_27489DC28(&qword_28096E8D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096D1A0);
  }

  return result;
}

unint64_t sub_2748A06D8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_15_1(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_108(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2748A0714()
{
  result = qword_28096D1B0;
  if (!qword_28096D1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D1B8, &qword_274A1EB18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D0A0, &qword_274A1EA60);
    sub_2748A01CC();
    swift_getOpaqueTypeConformance2();
    sub_27489DC28(&qword_28159E5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096D1B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_38_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2749FB7B4();
}

double sub_2748A0890@<D0>(char *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_2749FAE14();
  OUTLINED_FUNCTION_0_29();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v61 - v13;
  (*(v8 + 16))(&v61 - v13, a1, v3);
  v15 = (*(v8 + 88))(v14, v3);
  v16 = *MEMORY[0x277CDF988];
  v17 = 12.0;
  if (v15 != *MEMORY[0x277CDF9F8] && v15 != *MEMORY[0x277CDF9E0] && v15 != *MEMORY[0x277CDF9E8] && v15 != *MEMORY[0x277CDF9D8] && v15 != *MEMORY[0x277CDF9F0] && v15 != *MEMORY[0x277CDFA00] && v15 != *MEMORY[0x277CDFA10] && v15 != v16)
  {
    v17 = 14.0;
    if (v15 != *MEMORY[0x277CDF998])
    {
      v17 = 16.0;
      if (v15 != *MEMORY[0x277CDF9A8])
      {
        v17 = 18.0;
        if (v15 != *MEMORY[0x277CDF9B8])
        {
          v17 = 20.0;
          if (v15 != *MEMORY[0x277CDF9D0])
          {
            (*(v8 + 8))(v14, v3);
            v17 = 12.0;
          }
        }
      }
    }
  }

  if (a3 >= 414.0 || a3 < 320.0)
  {
    v26 = 20.0;
  }

  else
  {
    v26 = 16.0;
  }

  v27 = v17 + -2.0;
  WFConvertEdgeInsetsToRTLIfNeeded();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = [objc_opt_self() currentTraitCollection];
  v37 = [objc_opt_self() metricsCompatibleWithTraitCollection:v36 viewWidth:a3 layoutMargins:{v29, v31, v33, v35}];

  [v37 workflowSize];
  v66 = v38;
  [v37 workflowIconToLabelMargin];
  v65 = v39;
  [v37 workflowGlyphDimension];
  v64 = v40;
  [v37 workflowButtonDimension];
  v63 = v41;
  [v37 cornerRadius];
  v62 = v42;
  [v37 workflowContentEdgeInsets];
  v44 = v43;
  v61 = v45;
  v47 = v46;
  v49 = v48;
  (*(v8 + 104))(v12, v16, v3);
  sub_2748A0CBC();
  v50 = sub_2749FCD34();
  v51 = *(v8 + 8);
  v51(v12, v3);
  if (v50)
  {
    v52 = 2;
  }

  else
  {
    v52 = 1;
  }

  sub_2748A0D5C(v52, a3 - (v26 + v26));
  v54 = v53;
  v56 = v55;

  v51(a1, v3);
  *a2 = v27;
  *(a2 + 8) = v26;
  *(a2 + 16) = v27;
  *(a2 + 24) = v26;
  *(a2 + 32) = v17;
  *(a2 + 40) = v54;
  v57 = v61;
  v58 = v62;
  *(a2 + 48) = v56;
  *(a2 + 56) = v58;
  *(a2 + 64) = v44;
  *(a2 + 72) = v57;
  *(a2 + 80) = v47;
  *(a2 + 88) = v49;
  v59 = v64;
  *(a2 + 96) = v65;
  *(a2 + 104) = v59;
  result = v66;
  *(a2 + 112) = v63;
  *(a2 + 120) = result;
  return result;
}

unint64_t sub_2748A0CBC()
{
  result = qword_28096CF58;
  if (!qword_28096CF58)
  {
    sub_2749FAE14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096CF58);
  }

  return result;
}

uint64_t sub_2748A0D14(uint64_t a1)
{
  result = sub_2749FC8B4();
  v2 = 120.0;
  if (result)
  {
    v2 = 112.0;
  }

  qword_2809891E8 = 0x4065400000000000;
  qword_2809891F0 = *&v2;
  return result;
}

uint64_t sub_2748A0D5C(uint64_t result, double a2)
{
  v2 = round(a2 / 340.0);
  if (v2 > 1.0)
  {
    if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    v2 = 1.0;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((v2 * result) >> 64 != (v2 * result) >> 63)
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

double sub_2748A0E0C(uint64_t a1)
{
  sub_2749FB924();
  OUTLINED_FUNCTION_0_29();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x277CE0558], v1);
  v7 = sub_2749FB914();
  (*(v3 + 8))(v6, v1);
  result = 24.0;
  if (v7)
  {
    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10)
    {
      v11 = sub_2749FC8B4();
      result = 12.0;
      if (v11)
      {
        return 24.0;
      }
    }

    else
    {
      return 32.0;
    }
  }

  return result;
}

uint64_t sub_2748A0F5C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2748A0F7C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 128) = v3;
  return result;
}

uint64_t type metadata accessor for SmartShortcutPickerSectionRowView(uint64_t a1)
{
  result = qword_28096D1C0;
  if (!qword_28096D1C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2748A104C(uint64_t a1)
{
  sub_2748A1180();
  if (v1 <= 0x3F)
  {
    sub_2747F1DF4(319, &qword_280969C88);
    if (v2 <= 0x3F)
    {
      sub_2747B70E4(319, &qword_280968A68, &qword_280968A30, &unk_274A133E0);
      if (v3 <= 0x3F)
      {
        sub_2747B70E4(319, &qword_280968A50, &qword_280968A58, &qword_274A15E00);
        if (v4 <= 0x3F)
        {
          sub_2747F1DF4(319, &qword_2809695F0);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_2748A1180()
{
  result = qword_280970690;
  if (!qword_280970690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280970690);
  }

  return result;
}

uint64_t sub_2748A11E0@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2749FB634();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D1D0, &qword_274A1EBF8);
  return sub_2748A1230(v2, a2 + *(v4 + 44));
}

uint64_t sub_2748A1230@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2749FB4C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D1D8, &qword_274A1EC00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D1E0, &qword_274A1EC08);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  *v10 = sub_2749FB524();
  *(v10 + 1) = 0x402A000000000000;
  v10[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D1E8, &unk_274A1EC10);
  sub_2748A15A4(a1, &v10[*(v14 + 44)]);
  v15 = sub_2749FBC54();
  memcpy(__dst, a1 + 11, 0x5AuLL);
  if ((__dst[11] & 0x100) != 0)
  {
    memcpy(v43, a1 + 11, sizeof(v43));
    memcpy(v42, a1 + 11, 0x5AuLL);
    sub_2747D2AC8(v42, &v41);
  }

  else
  {

    sub_2749FD2D4();
    v40 = v15;
    v16 = sub_2749FBC14();
    v39 = v4;
    v17 = v16;
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_27472ECBC(__dst, &qword_280969BE0, &qword_274A15E58);
    (*(v5 + 8))(v7, v39);
    LOBYTE(v15) = v40;
  }

  memcpy(v42, v43, 0x59uLL);
  sub_2747D2B24(v42);
  sub_2749FA9E4();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_27475CF54(v10, v13, &qword_28096D1D8, &qword_274A1EC00);
  v26 = &v13[*(v11 + 36)];
  *v26 = v15;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = sub_2749FBCC4();
  sub_2749FA9E4();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_27475CF54(v13, a2, &qword_28096D1E0, &qword_274A1EC08);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D1F0, &qword_274A1EC20);
  v37 = a2 + *(result + 36);
  *v37 = v27;
  *(v37 + 8) = v29;
  *(v37 + 16) = v31;
  *(v37 + 24) = v33;
  *(v37 + 32) = v35;
  *(v37 + 40) = 0;
  return result;
}

uint64_t sub_2748A15A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D1F8, &qword_274A1EC28);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v56 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v55 = (&v52 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D200, &qword_274A1EC30);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v57 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = (&v52 - v10);
  v11 = sub_2749FA2F4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2749FA2C4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D208, &unk_274A1EC38);
  v20 = v19 - 8;
  v21 = MEMORY[0x28223BE20](v19);
  v54 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v52 - v23;
  v25 = a1[2];
  *v18 = 0x4044000000000000;
  (*(v16 + 104))(v18, *MEMORY[0x277D7D688], v15);
  (*(v12 + 104))(v14, *MEMORY[0x277D7D6D0], v11);
  v26 = v25;
  sub_2749FA314();
  sub_2749FC914();
  sub_2749FABB4();
  v27 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C560, &unk_274A1D400) + 36)];
  v28 = v62;
  *v27 = v61;
  *(v27 + 1) = v28;
  *(v27 + 2) = v63;
  *&v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D210, &qword_274A1EC48) + 36)] = 257;
  v29 = sub_2749FC914();
  v31 = v30;
  sub_2748A1B58(a1, &v59);
  v52 = v59;
  v32 = v60;
  v33 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D218, &qword_274A1EC50) + 36)];
  *v33 = v52;
  *(v33 + 2) = v32;
  *(v33 + 3) = v29;
  *(v33 + 4) = v31;
  LOBYTE(v29) = sub_2749FBC94();
  sub_2749FA9E4();
  v34 = &v24[*(v20 + 44)];
  *v34 = v29;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  v39 = sub_2749FB524();
  v40 = v53;
  *v53 = v39;
  *(v40 + 8) = 0;
  *(v40 + 16) = 0;
  v41 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D220, &qword_274A1EC58) + 44);
  v42 = sub_2749FB644();
  v43 = v55;
  *v55 = v42;
  *(v43 + 8) = 0x4010000000000000;
  *(v43 + 16) = 0;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D228, &qword_274A1EC60);
  sub_2748A1F28(a1, (v43 + *(v44 + 44)));
  v45 = v56;
  sub_27473F28C(v43, v56, &qword_28096D1F8, &qword_274A1EC28);
  sub_27473F28C(v45, v41, &qword_28096D1F8, &qword_274A1EC28);
  v46 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D230, &qword_274A1EC68) + 48);
  *v46 = 0;
  *(v46 + 8) = 1;
  sub_27472ECBC(v43, &qword_28096D1F8, &qword_274A1EC28);
  sub_27472ECBC(v45, &qword_28096D1F8, &qword_274A1EC28);
  v47 = v54;
  sub_27473F28C(v24, v54, &qword_28096D208, &unk_274A1EC38);
  v48 = v57;
  sub_27473F28C(v40, v57, &qword_28096D200, &qword_274A1EC30);
  v49 = v58;
  sub_27473F28C(v47, v58, &qword_28096D208, &unk_274A1EC38);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D238, &qword_274A1EC70);
  sub_27473F28C(v48, v49 + *(v50 + 48), &qword_28096D200, &qword_274A1EC30);
  sub_27472ECBC(v40, &qword_28096D200, &qword_274A1EC30);
  sub_27472ECBC(v24, &qword_28096D208, &unk_274A1EC38);
  sub_27472ECBC(v48, &qword_28096D200, &qword_274A1EC30);
  return sub_27472ECBC(v47, &qword_28096D208, &unk_274A1EC38);
}

uint64_t (*sub_2748A1B58@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>))()
{
  v32 = a2;
  v3 = sub_2749FC404();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v29 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2749FB4C4();
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x28223BE20](v5);
  v26 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SmartShortcutPickerSectionRowView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809681D0, &unk_274A11580);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - v11;
  v13 = *(a1 + 72);
  v33 = a1;
  sub_2748D83B4(sub_2748A5AB8, v13, &v25 - v11);
  v14 = type metadata accessor for SmartShortcutPickerEntry(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v14);
  sub_27472ECBC(v12, &qword_2809681D0, &unk_274A11580);
  v16 = 0;
  v17 = 0;
  result = 0;
  if (EnumTagSinglePayload != 1)
  {
    sub_2748A5A00(a1, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SmartShortcutPickerSectionRowView);
    v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v17 = swift_allocObject();
    sub_2748A591C(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v19);
    v20 = a1 + *(v7 + 40);
    v21 = *v20;
    if (*(v20 + 8) == 1)
    {
      if ((v21 & 1) == 0)
      {
LABEL_4:
        (*(v30 + 104))(v29, *MEMORY[0x277CE0EE0], v31);
        result = sub_2749FC4C4();
LABEL_7:
        v16 = sub_2748A5980;
        goto LABEL_8;
      }
    }

    else
    {

      sub_2749FD2D4();
      v22 = sub_2749FBC14();
      sub_2749FA424();

      v23 = v26;
      sub_2749FB4B4();
      swift_getAtKeyPath();
      sub_2747F2F1C(v21, 0);
      (*(v27 + 8))(v23, v28);
      if (v34 != 1)
      {
        goto LABEL_4;
      }
    }

    result = sub_2749FC474();
    goto LABEL_7;
  }

LABEL_8:
  v24 = v32;
  *v32 = v16;
  v24[1] = v17;
  v24[2] = result;
  return result;
}

uint64_t sub_2748A1F28@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v61 = a2;
  v3 = sub_2749FBDB4();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v56 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D240, &qword_274A1EC78);
  v5 = MEMORY[0x28223BE20](v55);
  v60 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v59 = &v51 - v7;
  v8 = sub_2749FB4C4();
  v52 = *(v8 - 8);
  v53 = v8;
  MEMORY[0x28223BE20](v8);
  v51 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[1];
  v62 = *a1;
  v63 = v10;
  sub_27475D0D0();

  v11 = sub_2749FBEE4();
  v13 = v12;
  v15 = v14;
  sub_2749FBE04();
  v16 = sub_2749FBEC4();
  v18 = v17;
  v20 = v19;

  sub_27477656C(v11, v13, v15 & 1);

  sub_2749FBD54();
  v21 = sub_2749FBE74();
  v54 = v22;
  v24 = v23;
  v25 = v16;
  v26 = a1;
  sub_27477656C(v25, v18, v20 & 1);

  v27 = a1 + *(type metadata accessor for SmartShortcutPickerSectionRowView(0) + 40);
  v28 = *v27;
  if (v27[8] != 1)
  {

    sub_2749FD2D4();
    v30 = sub_2749FBC14();
    sub_2749FA424();

    v31 = v51;
    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_2747F2F1C(v28, 0);
    (*(v52 + 8))(v31, v53);
    if (v62 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v29 = sub_2749FB8B4();
    goto LABEL_6;
  }

  if (v28)
  {
    goto LABEL_5;
  }

LABEL_3:
  v29 = sub_2749FB8D4();
LABEL_6:
  LODWORD(v62) = v29;
  v32 = v54;
  v33 = sub_2749FBE94();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_27477656C(v21, v32, v24 & 1);

  v40 = v59;
  sub_2748A2424(v26, v59);
  sub_2749FBDD4();
  v42 = v56;
  v41 = v57;
  v43 = v58;
  (*(v57 + 104))(v56, *MEMORY[0x277CE0A08], v58);
  v44 = sub_2749FBDE4();

  (*(v41 + 8))(v42, v43);
  KeyPath = swift_getKeyPath();
  v46 = (v40 + *(v55 + 36));
  *v46 = KeyPath;
  v46[1] = v44;
  v47 = v60;
  sub_27473F28C(v40, v60, &qword_28096D240, &qword_274A1EC78);
  v48 = v61;
  *v61 = v33;
  v48[1] = v35;
  v37 &= 1u;
  *(v48 + 16) = v37;
  v48[3] = v39;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D248, &qword_274A1ECB0);
  sub_27473F28C(v47, v48 + *(v49 + 48), &qword_28096D240, &qword_274A1EC78);
  sub_274754DBC(v33, v35, v37);

  sub_27472ECBC(v40, &qword_28096D240, &qword_274A1EC78);
  sub_27472ECBC(v47, &qword_28096D240, &qword_274A1EC78);
  sub_27477656C(v33, v35, v37);
}

uint64_t sub_2748A2424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D250, &qword_274A1ECB8);
  MEMORY[0x28223BE20](v37);
  v4 = v33 - v3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D258, &qword_274A1ECC0);
  MEMORY[0x28223BE20](v38);
  v36 = v33 - v5;
  v6 = sub_2749FB4C4();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D260, &qword_274A1ECC8);
  MEMORY[0x28223BE20](v9);
  v39 = v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D268, &unk_274A1ECD0);
  MEMORY[0x28223BE20](v11);
  v13 = v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809681D0, &unk_274A11580);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v33 - v15;
  v17 = *(a1 + 72);
  v41 = a1;
  sub_2748D83B4(sub_2748A55DC, v17, v33 - v15);
  v18 = type metadata accessor for SmartShortcutPickerEntry(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v18);
  sub_27472ECBC(v16, &qword_2809681D0, &unk_274A11580);
  if (EnumTagSinglePayload != 1)
  {
    sub_2748A2A84();
    v26 = v44;
    v27 = v43;
    *v13 = v42;
    *(v13 + 1) = v27;
    v13[32] = v26;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D298, &qword_274A1ECF0);
    sub_2748A5764();
    sub_2748A57E8();
    return sub_2749FB7B4();
  }

  v33[1] = v9;
  v33[2] = v11;
  v20 = a1 + *(type metadata accessor for SmartShortcutPickerSectionRowView(0) + 40);
  v21 = *v20;
  if (*(v20 + 8) != 1)
  {

    sub_2749FD2D4();
    v29 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_2747F2F1C(v21, 0);
    (*(v34 + 8))(v8, v35);
    if (v42 != 1)
    {
      goto LABEL_4;
    }

LABEL_7:
    v30 = sub_2749FBC24();
    v31 = v36;
    *v36 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D2B0, &unk_274A1ECF8);
    sub_2748A44E8();
    *&v42 = v32;
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967BB0, &unk_274A0FD90);
    sub_27472AB6C(&qword_28096D2B8, &qword_280967BB0, &unk_274A0FD90, MEMORY[0x277D83980]);
    sub_2749FC754();
    *(v31 + *(v38 + 36)) = sub_2749FB8D4();
    sub_27473F28C(v31, v4, &qword_28096D258, &qword_274A1ECC0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D270, &qword_274A1ECE0);
    sub_2748A55FC();
    sub_2748A56E0();
    v25 = v39;
    sub_2749FB7B4();
    sub_27472ECBC(v31, &qword_28096D258, &qword_274A1ECC0);
    goto LABEL_8;
  }

  if (v21)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_2748A30D8();
  v22 = v44;
  v23 = v45;
  v24 = v43;
  *v4 = v42;
  *(v4 + 1) = v24;
  v4[32] = v22;
  v4[33] = v23;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D270, &qword_274A1ECE0);
  sub_2748A55FC();
  sub_2748A56E0();
  v25 = v39;
  sub_2749FB7B4();
LABEL_8:
  sub_27473F28C(v25, v13, &qword_28096D260, &qword_274A1ECC8);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D298, &qword_274A1ECF0);
  sub_2748A5764();
  sub_2748A57E8();
  sub_2749FB7B4();
  return sub_27472ECBC(v25, &qword_28096D260, &qword_274A1ECC8);
}

void sub_2748A2A84()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v3 = v2;
  v4 = sub_2749FB4C4();
  OUTLINED_FUNCTION_43();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809681D0, &unk_274A11580);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v66[-v12];
  v14 = *(v1 + 72);
  v72 = v1;
  v15 = 0;
  sub_2748D83B4(sub_2748A5AB8, v14, &v66[-v12]);
  v16 = type metadata accessor for SmartShortcutPickerEntry(0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v16) != 1)
  {
    OUTLINED_FUNCTION_37_9(v76);
    OUTLINED_FUNCTION_37_9(v77);
    v20 = sub_274772AD0(v77);
    v71 = v6;
    switch(v20)
    {
      case 1:
        sub_274721C98(v77);
        sub_2749FCE14("Create New Shortcut", 19);
        OUTLINED_FUNCTION_97_1();
        if (qword_28159E3A8 != -1)
        {
          OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
        }

        v31 = qword_28159E448;
        v32 = OUTLINED_FUNCTION_20_13();
        OUTLINED_FUNCTION_20_13();
        OUTLINED_FUNCTION_32_11();
        v33 = [v31 localizedStringForKey:v32 value:0 table:0];

        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        OUTLINED_FUNCTION_89_1();

        break;
      case 2:
        v6 = *sub_274721C98(v77);
        OUTLINED_FUNCTION_29_11();
        v22 = *sub_274721C98(v74);
        v23 = [v6 name];
        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        OUTLINED_FUNCTION_89_1();

        sub_274772BE8(v76);
        break;
      case 3:
        v24 = sub_274721C98(v77);
        v15 = *(v24 + 8);
        v26 = *(v24 + 16);
        v25 = *(v24 + 24);
        v27 = *(v24 + 40);
        v69 = *(v24 + 32);
        v70 = v25;
        v68 = v27;
        v67 = *(v24 + 48);
        OUTLINED_FUNCTION_29_11();
        v28 = sub_274721C98(v74);
        sub_27473F28C(v28, v73, &unk_280970630, &qword_274A13560);
        v29 = OUTLINED_FUNCTION_32();
        sub_27477CABC(v29, v30, v26, v70, v69, v68, v67);
        memcpy(v73, (v24 + 56), 0x81uLL);
        v6 = v73;
        SmartShortcutPickerActionConfiguration.displayString.getter();
        OUTLINED_FUNCTION_89_1();
        sub_274772B94(v24 + 56);
        break;
      default:
        v21 = sub_274721C98(v77);
        v6 = *(v21 + 16);
        v15 = *(v21 + 24);
        OUTLINED_FUNCTION_29_11();
        sub_274721C98(v74);

        break;
    }

    OUTLINED_FUNCTION_1_38();
    sub_2748A5A60(v13, v34);
    v35 = v1 + *(type metadata accessor for SmartShortcutPickerSectionRowView(0) + 40);
    v36 = *v35;
    if (*(v35 + 8) == 1)
    {
      if ((v36 & 1) == 0)
      {
LABEL_12:
        OUTLINED_FUNCTION_32();
        sub_2748A4004();
        v38 = v37;
        v40 = v39;

        *&v74[0] = v38;
        *(&v74[0] + 1) = v40;
        sub_27475D0D0();
        sub_2749FBEE4();
        OUTLINED_FUNCTION_89_1();
        LODWORD(v74[0]) = sub_2749FB8D4();
        v41 = OUTLINED_FUNCTION_28_11();
        v43 = v42;
        v45 = v44;
        v47 = v46;
        v48 = OUTLINED_FUNCTION_32();
        sub_27477656C(v48, v49, v50);

        v73[0] = v41;
        v73[1] = v43;
        v73[2] = v45 & 1;
        v73[3] = v47;
        LOBYTE(v73[4]) = 1;
LABEL_17:
        sub_2749FB7B4();
        v17 = v74[0];
        v19 = v74[1];
        v18 = v75;
        goto LABEL_18;
      }
    }

    else
    {

      sub_2749FD2D4();
      v51 = sub_2749FBC14();
      sub_2749FA424();

      sub_2749FB4B4();
      swift_getAtKeyPath();
      sub_2747F2F1C(v36, 0);
      (v71[1])(v10, v4);
      if (LOBYTE(v74[0]) != 1)
      {
        goto LABEL_12;
      }
    }

    sub_2749FCE14("Chosen: %@", 10);
    OUTLINED_FUNCTION_17_18();
    if (qword_28159E3A8 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
    }

    OUTLINED_FUNCTION_43_0();
    v52 = sub_2749FCD64();
    OUTLINED_FUNCTION_43_0();
    sub_2749FCD64();
    v53 = OUTLINED_FUNCTION_33_1();
    v54 = OUTLINED_FUNCTION_8_23(v53, sel_localizedStringForKey_value_table_);

    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628, &qword_274A0FF40);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_274A0EF10;
    *(v55 + 56) = MEMORY[0x277D837D0];
    *(v55 + 64) = sub_27475C4F4();
    *(v55 + 32) = v6;
    *(v55 + 40) = v15;
    sub_2749FCD74();
    OUTLINED_FUNCTION_89_1();

    *&v74[0] = v6;
    *(&v74[0] + 1) = v15;
    sub_27475D0D0();
    sub_2749FBEE4();
    OUTLINED_FUNCTION_89_1();
    LODWORD(v74[0]) = sub_2749FB8B4();
    v56 = OUTLINED_FUNCTION_28_11();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v63 = OUTLINED_FUNCTION_32();
    sub_27477656C(v63, v64, v65);

    v73[0] = v56;
    v73[1] = v58;
    v73[2] = v60 & 1;
    v73[3] = v62;
    LOBYTE(v73[4]) = 0;
    goto LABEL_17;
  }

  sub_27472ECBC(v13, &qword_2809681D0, &unk_274A11580);
  v17 = 0uLL;
  v18 = -1;
  v19 = 0uLL;
LABEL_18:
  *v3 = v17;
  *(v3 + 16) = v19;
  *(v3 + 32) = v18;
  OUTLINED_FUNCTION_46();
}

void sub_2748A30D8()
{
  OUTLINED_FUNCTION_48();
  v4 = v3;
  v5 = sub_2749FB4C4();
  OUTLINED_FUNCTION_43();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_38_10(v66);
  if (v66[89])
  {
    memcpy(v65, (v0 + 88), sizeof(v65));
    OUTLINED_FUNCTION_38_10(v62);
    sub_2747D2AC8(v62, v59);
  }

  else
  {

    v1 = sub_2749FD2D4();
    v2 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_27472ECBC(v66, &qword_280969BE0, &qword_274A15E58);
    (*(v7 + 8))(v11, v5);
  }

  memcpy(v62, v65, 0x59uLL);
  if (!LOBYTE(v62[11]))
  {
    sub_2749FCE14("Available after opening app", 27);
    OUTLINED_FUNCTION_97_1();
    if (qword_28159E3A8 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
    }

    v16 = qword_28159E448;
    OUTLINED_FUNCTION_20_13();
    OUTLINED_FUNCTION_19_14();
    v24 = OUTLINED_FUNCTION_32_11();
    v25 = OUTLINED_FUNCTION_11_2(v24, sel_localizedStringForKey_value_table_);

    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    OUTLINED_FUNCTION_35_10();
    *&v59[0] = v5;
    *(&v59[0] + 1) = v16;
    sub_27475D0D0();
    sub_2749FBEE4();
    LODWORD(v59[0]) = OUTLINED_FUNCTION_12_20();
    OUTLINED_FUNCTION_7_20();
    OUTLINED_FUNCTION_2_30();
    OUTLINED_FUNCTION_14_12();
    v63 = 0;
    v26 = OUTLINED_FUNCTION_5_27();
    v29 = OUTLINED_FUNCTION_39_9(v26, v27, v28);
    OUTLINED_FUNCTION_10_22(v29, MEMORY[0x277CE0BD8], v30, MEMORY[0x277CE0BC8]);
    OUTLINED_FUNCTION_6_23();
    v64 = 0;
    goto LABEL_23;
  }

  if (LOBYTE(v62[11]) == 1)
  {
    v5 = v62[0];
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    OUTLINED_FUNCTION_22_15();
    if (v1 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v11 == v12)
    {
    }

    else
    {
      v1 = OUTLINED_FUNCTION_7();

      if ((v1 & 1) == 0)
      {
        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        OUTLINED_FUNCTION_22_15();
        if (v1 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v11 == v14)
        {
        }

        else
        {
          v5 = OUTLINED_FUNCTION_7();

          if ((v5 & 1) == 0)
          {
            sub_2747D2B24(v62);
            goto LABEL_17;
          }
        }

        sub_2749FCE14("Available after opening app", 27);
        OUTLINED_FUNCTION_97_1();
        if (qword_28159E3A8 != -1)
        {
          OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
        }

        v16 = qword_28159E448;
        OUTLINED_FUNCTION_20_13();
        OUTLINED_FUNCTION_19_14();
        v49 = OUTLINED_FUNCTION_32_11();
        v50 = OUTLINED_FUNCTION_11_2(v49, sel_localizedStringForKey_value_table_);

        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        OUTLINED_FUNCTION_35_10();
        *&v59[0] = v5;
        *(&v59[0] + 1) = v16;
        sub_27475D0D0();
        sub_2749FBEE4();
        LODWORD(v59[0]) = OUTLINED_FUNCTION_12_20();
        OUTLINED_FUNCTION_7_20();
        OUTLINED_FUNCTION_2_30();
        OUTLINED_FUNCTION_14_12();
        v63 = 0;
        v51 = OUTLINED_FUNCTION_5_27();
        OUTLINED_FUNCTION_39_9(v51, v52, v53);
        v54 = OUTLINED_FUNCTION_5_27();
        v57 = OUTLINED_FUNCTION_39_9(v54, v55, v56);
        OUTLINED_FUNCTION_10_22(v57, MEMORY[0x277CE0BD8], v58, MEMORY[0x277CE0BC8]);
        OUTLINED_FUNCTION_6_23();
        v64 = 1;
LABEL_28:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809699B0, &unk_274A21B70);
        v42 = sub_2747FEF94();
        OUTLINED_FUNCTION_23_13(v42);
        sub_2747D2B24(v62);
        v43 = OUTLINED_FUNCTION_5_27();
        sub_27477656C(v43, v44, v45);

        goto LABEL_29;
      }
    }

    sub_2749FCE14("Available in Settings after set up", 34);
    OUTLINED_FUNCTION_97_1();
    if (qword_28159E3A8 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
    }

    v16 = qword_28159E448;
    OUTLINED_FUNCTION_20_13();
    OUTLINED_FUNCTION_19_14();
    v32 = OUTLINED_FUNCTION_32_11();
    v33 = OUTLINED_FUNCTION_11_2(v32, sel_localizedStringForKey_value_table_);

    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    OUTLINED_FUNCTION_35_10();
    *&v59[0] = v5;
    *(&v59[0] + 1) = v16;
    sub_27475D0D0();
    sub_2749FBEE4();
    LODWORD(v59[0]) = OUTLINED_FUNCTION_12_20();
    OUTLINED_FUNCTION_7_20();
    OUTLINED_FUNCTION_2_30();
    OUTLINED_FUNCTION_14_12();
    v63 = 1;
    v34 = OUTLINED_FUNCTION_5_27();
    OUTLINED_FUNCTION_39_9(v34, v35, v36);
    v37 = OUTLINED_FUNCTION_5_27();
    v40 = OUTLINED_FUNCTION_39_9(v37, v38, v39);
    OUTLINED_FUNCTION_10_22(v40, MEMORY[0x277CE0BD8], v41, MEMORY[0x277CE0BC8]);
    OUTLINED_FUNCTION_6_23();
    v64 = 0;
    goto LABEL_28;
  }

LABEL_17:
  sub_2749FCE14("Available after opening app", 27);
  OUTLINED_FUNCTION_97_1();
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
  }

  v16 = qword_28159E448;
  OUTLINED_FUNCTION_20_13();
  OUTLINED_FUNCTION_19_14();
  v17 = OUTLINED_FUNCTION_32_11();
  v18 = OUTLINED_FUNCTION_11_2(v17, sel_localizedStringForKey_value_table_);

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_35_10();
  *&v59[0] = v5;
  *(&v59[0] + 1) = v16;
  sub_27475D0D0();
  sub_2749FBEE4();
  LODWORD(v59[0]) = OUTLINED_FUNCTION_12_20();
  OUTLINED_FUNCTION_7_20();
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_14_12();
  v63 = 1;
  v19 = OUTLINED_FUNCTION_5_27();
  v22 = OUTLINED_FUNCTION_39_9(v19, v20, v21);
  OUTLINED_FUNCTION_10_22(v22, MEMORY[0x277CE0BD8], v23, MEMORY[0x277CE0BC8]);
  OUTLINED_FUNCTION_6_23();
  v64 = 1;
LABEL_23:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809699B0, &unk_274A21B70);
  v31 = sub_2747FEF94();
  OUTLINED_FUNCTION_23_13(v31);
LABEL_29:
  sub_27477656C(v16, v1, v2);

  v46 = v59[1];
  v47 = v60;
  v48 = v61;
  *v4 = v59[0];
  *(v4 + 16) = v46;
  *(v4 + 32) = v47;
  *(v4 + 33) = v48;
  OUTLINED_FUNCTION_46();
}

uint64_t sub_2748A3738@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2749FAFC4();
  v3 = v2 - 8;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2748A3A6C(v32, v4);
  sub_2749FAC54();
  v8 = v7 * *MEMORY[0x277D7A390] + 3.0;
  v9 = *(v3 + 28);
  v10 = *MEMORY[0x277CE0118];
  v11 = sub_2749FB584();
  (*(*(v11 - 8) + 104))(v6 + v9, v10, v11);
  *v6 = v8;
  v6[1] = v8;
  v12 = __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  MEMORY[0x28223BE20](v12);
  (*(v14 + 16))(v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_2749FABC4();
  sub_2749FAB34();
  sub_2748A5A00(v6, a1, MEMORY[0x277CDFC08]);
  v16 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969D98, &qword_274A160F8) + 36);
  v17 = v34;
  *v16 = v33;
  *(v16 + 16) = v17;
  *(v16 + 32) = v35;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D2C0, &qword_274A1ED20);
  *(a1 + *(v18 + 52)) = v15;
  *(a1 + *(v18 + 56)) = 256;
  v19 = sub_2749FC914();
  v21 = v20;
  sub_2748A5A60(v6, MEMORY[0x277CDFC08]);
  v22 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D2C8, &qword_274A1ED28) + 36));
  *v22 = v19;
  v22[1] = v21;
  sub_2749FC914();
  sub_2749FABB4();
  v23 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D2D0, &qword_274A1ED30) + 36));
  v24 = v37;
  *v23 = v36;
  v23[1] = v24;
  v23[2] = v38;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D2D8, &qword_274A1ED38);
  __asm { FMOV            V0.2D, #-3.0 }

  *(a1 + *(v25 + 36)) = _Q0;
  return __swift_destroy_boxed_opaque_existential_0(v32);
}

void sub_2748A4004()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = v3;
  sub_2749FB4C4();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = (v7 - v6);
  OUTLINED_FUNCTION_38_10(v38);
  if (v38[89])
  {
    memcpy(v37, v0 + 11, sizeof(v37));
    OUTLINED_FUNCTION_38_10(v36);
    sub_2747D2AC8(v36, &v35);
  }

  else
  {

    sub_2749FD2D4();
    v9 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_27472ECBC(v38, &qword_280969BE0, &qword_274A15E58);
    v10 = OUTLINED_FUNCTION_43_0();
    v11(v10);
  }

  memcpy(v36, v37, 0x59uLL);
  if (v36[88])
  {
    if (v36[88] != 1)
    {
      goto LABEL_17;
    }

    v12 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v14 = v13;
    v15 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v8 = v16;
    if (v12 == v15 && v14 == v16)
    {
    }

    else
    {
      v18 = sub_2749FDCC4();

      if ((v18 & 1) == 0)
      {
        v19 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v8 = v20;
        if (v19 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v8 == v21)
        {
        }

        else
        {
          v23 = sub_2749FDCC4();

          if ((v23 & 1) == 0)
          {
            sub_2747D2B24(v36);
LABEL_17:
            sub_2749FCE14("Chosen: %@\nAvailable after opening app", 38);
            OUTLINED_FUNCTION_17_18();
            if (qword_28159E3A8 == -1)
            {
              goto LABEL_20;
            }

            goto LABEL_28;
          }
        }

        sub_2749FCE14("Chosen: %@\nAvailable after opening app", 38);
        OUTLINED_FUNCTION_17_18();
        if (qword_28159E3A8 == -1)
        {
LABEL_23:
          OUTLINED_FUNCTION_43_0();
          v27 = sub_2749FCD64();
          OUTLINED_FUNCTION_43_0();
          sub_2749FCD64();
          v28 = OUTLINED_FUNCTION_33_1();
          v29 = OUTLINED_FUNCTION_8_23(v28, sel_localizedStringForKey_value_table_);

          _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
          OUTLINED_FUNCTION_17_18();

          sub_2747D2B24(v36);
          goto LABEL_24;
        }

LABEL_29:
        OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
        goto LABEL_23;
      }
    }

    sub_2749FCE14("Chosen: %@\nAvailable after opening app", 38);
    OUTLINED_FUNCTION_17_18();
    if (qword_28159E3A8 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_29;
  }

  sub_2749FCE14("Chosen: %@\nAvailable after opening app", 38);
  OUTLINED_FUNCTION_17_18();
  if (qword_28159E3A8 != -1)
  {
LABEL_28:
    OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
  }

LABEL_20:
  OUTLINED_FUNCTION_43_0();
  v24 = sub_2749FCD64();
  OUTLINED_FUNCTION_43_0();
  sub_2749FCD64();
  v25 = OUTLINED_FUNCTION_33_1();
  v26 = OUTLINED_FUNCTION_8_23(v25, sel_localizedStringForKey_value_table_);

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_17_18();

LABEL_24:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628, &qword_274A0FF40);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_274A0F620;
  v31 = MEMORY[0x277D837D0];
  *(v30 + 56) = MEMORY[0x277D837D0];
  v32 = sub_27475C4F4();
  *(v30 + 32) = v4;
  *(v30 + 40) = v2;
  v33 = v0[6];
  v34 = v0[7];
  *(v30 + 96) = v31;
  *(v30 + 104) = v32;
  *(v30 + 64) = v32;
  *(v30 + 72) = v33;
  *(v30 + 80) = v34;

  OUTLINED_FUNCTION_43_0();
  sub_2749FCD74();
  OUTLINED_FUNCTION_89_1();

  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_46();
}

void sub_2748A44E8()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v3 = type metadata accessor for SmartShortcutPickerEntry(0);
  OUTLINED_FUNCTION_43();
  v104 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v114 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809681D0, &unk_274A11580);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v102 - v9;
  v11 = *(v0 + 72);

  v105 = v11;
  v12 = sub_2747ACDA0(v2, v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_2749FCE14(" + %ld more", v12);
  if (qword_28159E3A8 != -1)
  {
    goto LABEL_62;
  }

  while (1)
  {
    v19 = qword_28159E448;
    v20 = sub_2749FCD64();
    v21 = sub_2749FCD64();

    v113 = v19;
    v22 = [v19 localizedStringForKey:v20 value:v21 table:0];

    v107 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v108 = v23;

    v24 = (v18 >> 1) - v16;
    if (__OFSUB__(v18 >> 1, v16))
    {
      break;
    }

    if (v24 <= 1)
    {

      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809678C0, &unk_274A0FAD0);
      v26 = OUTLINED_FUNCTION_102(v25);
      *(v26 + 16) = xmmword_274A0EF10;
      OUTLINED_FUNCTION_21_13();
      sub_2747A6CC0(v27, v28, v29, v30);
      if (__swift_getEnumTagSinglePayload(v10, 1, v3) == 1)
      {
        sub_27472ECBC(v10, &qword_2809681D0, &unk_274A11580);
        *(v26 + 32) = 0;
        *(v26 + 40) = 0;
      }

      else
      {
        memcpy(v127, v10, 0xB9uLL);
        memcpy(v128, v10, 0xB9uLL);
        switch(sub_274772AD0(v128))
        {
          case 1u:
            sub_274721C98(v128);
            sub_2749FCE14("Create New Shortcut", 19);
            OUTLINED_FUNCTION_95();
            v92 = sub_2749FCD64();
            v81 = sub_2749FCD64();

            v93 = [v113 localizedStringForKey:v92 value:v81 table:0];

            _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
            OUTLINED_FUNCTION_95();

            break;
          case 2u:
            v81 = *sub_274721C98(v128);
            OUTLINED_FUNCTION_15_17();
            v82 = *sub_274721C98(v125);
            v83 = [v81 name];
            _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
            OUTLINED_FUNCTION_95();

            sub_274772BE8(v127);
            break;
          case 3u:
            v84 = sub_274721C98(v128);
            v14 = *(v84 + 8);
            v85 = *(v84 + 32);
            v86 = *(v84 + 40);
            LODWORD(v117) = *(v84 + 48);
            OUTLINED_FUNCTION_15_17();
            v87 = sub_274721C98(v125);
            sub_27473F28C(v87, v124, &unk_280970630, &qword_274A13560);
            OUTLINED_FUNCTION_21_13();
            sub_27477CABC(v88, v89, v90, v91, v85, v86, v117);
            memcpy(v124, (v84 + 56), 0x81uLL);
            v81 = v124;
            SmartShortcutPickerActionConfiguration.displayString.getter();
            OUTLINED_FUNCTION_95();
            sub_274772B94(v84 + 56);
            break;
          default:
            v80 = sub_274721C98(v128);
            v81 = *(v80 + 16);
            v14 = *(v80 + 24);
            OUTLINED_FUNCTION_15_17();
            sub_274721C98(v125);

            break;
        }

        OUTLINED_FUNCTION_1_38();
        sub_2748A5A60(v10, v94);
        *(v26 + 32) = v81;
        *(v26 + 40) = v14;
      }

      v95 = MEMORY[0x277D84F90];
      v96 = *(v26 + 40);
      if (v96)
      {
        v97 = *(v26 + 32);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_274763850();
          v95 = v100;
        }

        v98 = *(v95 + 16);
        if (v98 >= *(v95 + 24) >> 1)
        {
          sub_274763850();
          v95 = v101;
        }

        *(v95 + 16) = v98 + 1;
        v99 = v95 + 16 * v98;
        *(v99 + 32) = v97;
        *(v99 + 40) = v96;
      }

      swift_unknownObjectRelease();
      swift_setDeallocating();
      sub_2747A3504();
      goto LABEL_57;
    }

    v130 = MEMORY[0x277D84F90];
    sub_27471F128();
    v31 = 0;
    v32 = 0;
    v33 = 1;
    v34 = v130;
    v106 = xmmword_274A0EF10;
    v18 = v114;
    v16 = v105;
    v103 = v24;
    while (v31 < v24)
    {
      v35 = __OFADD__(v31, 1);
      v36 = v31 + 1;
      if (v35)
      {
        goto LABEL_59;
      }

      if (v32)
      {
        goto LABEL_64;
      }

      if ((v33 & 0x8000000000000000) != 0)
      {
        goto LABEL_60;
      }

      v111 = v33;
      v112 = v36;
      v37 = *(v16 + 16);
      v109 = v37 - v33;
      v110 = v34;
      if (v37 >= v33)
      {
        v38 = v33;
      }

      else
      {
        v38 = v37;
      }

      if (v33 && v38)
      {
        v129 = MEMORY[0x277D84F90];
        v39 = v104;
        v40 = v16 + ((*(v104 + 80) + 32) & ~*(v104 + 80));

        sub_27471F128();
        v41 = v129;
        v117 = *(v39 + 72);
        while (1)
        {
          sub_2748A5A00(v40, v18, type metadata accessor for SmartShortcutPickerEntry);
          OUTLINED_FUNCTION_37_9(v127);
          OUTLINED_FUNCTION_37_9(v128);
          switch(sub_274772AD0(v128))
          {
            case 1u:
              sub_274721C98(v128);
              sub_2749FCE14("Create New Shortcut", 19);
              OUTLINED_FUNCTION_95();
              v63 = sub_2749FCD64();
              v64 = sub_2749FCD64();

              v65 = [v113 localizedStringForKey:v63 value:v64 table:0];

              v43 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
              v44 = v66;

              goto LABEL_29;
            case 2u:
              v45 = *sub_274721C98(v128);
              OUTLINED_FUNCTION_15_17();
              v46 = *sub_274721C98(v125);
              v47 = [v45 name];
              v43 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
              v44 = v48;

              sub_274772BE8(v127);
              goto LABEL_29;
            case 3u:
              v49 = sub_274721C98(v128);
              v50 = *(v49 + 32);
              v116 = *(v49 + 40);
              v115 = *(v49 + 48);
              OUTLINED_FUNCTION_15_17();
              v51 = sub_274721C98(v125);
              sub_27473F28C(v51, v124, &unk_280970630, &qword_274A13560);
              OUTLINED_FUNCTION_21_13();
              sub_27477CABC(v52, v53, v54, v55, v50, v116, v115);
              memcpy(v126, (v49 + 56), 0x81uLL);
              v56 = sub_274772C3C(v126);
              if (v56)
              {
                v18 = v114;
                if (v56 != 1)
                {
                  CGSizeMake();
                  v43 = *v68;
                  v44 = v68[1];
LABEL_28:

                  sub_274772B94(v49 + 56);
                  goto LABEL_29;
                }

                CGSizeMake();
                v58 = v57[9];
                if (!v58)
                {
                  v43 = v57[2];
                  v44 = v57[3];
                  goto LABEL_28;
                }

                v59 = v57[7];
                v116 = v57[8];
                v60 = v57[6];
                v61 = *v57;
                v62 = v57[1];

                v122 = v61;
                v123 = v62;
                v124[0] = 31524;
                v124[1] = 0xE200000000000000;

                MEMORY[0x277C5EBC0](v60, v59);
                MEMORY[0x277C5EBC0](125, 0xE100000000000000);
                v120 = v124[0];
                v121 = v124[1];
                v118 = v116;
                v119 = v58;
                sub_2748A5874();
                sub_2748A58C8();
                v18 = v114;
                sub_2749FD204();

                sub_274772B94(v49 + 56);
                v43 = v124[0];
                v44 = v124[1];
              }

              else
              {
                CGSizeMake();
                v43 = *v67;
                v44 = v67[1];

                sub_274772B94(v49 + 56);
                v18 = v114;
              }

LABEL_29:
              OUTLINED_FUNCTION_1_38();
              sub_2748A5A60(v18, v69);
              v129 = v41;
              v70 = *(v41 + 16);
              v3 = v70 + 1;
              if (v70 >= *(v41 + 24) >> 1)
              {
                sub_27471F128();
                v41 = v129;
              }

              *(v41 + 16) = v3;
              v71 = v41 + 16 * v70;
              *(v71 + 32) = v43;
              *(v71 + 40) = v44;
              v40 += v117;
              if (!--v38)
              {
                v16 = v105;
                v24 = v103;
                goto LABEL_34;
              }

              break;
            default:
              v42 = sub_274721C98(v128);
              v43 = *(v42 + 16);
              v44 = *(v42 + 24);
              OUTLINED_FUNCTION_15_17();
              sub_274721C98(v125);

              goto LABEL_29;
          }
        }
      }

      v41 = MEMORY[0x277D84F90];
LABEL_34:
      v128[0] = v41;
      v72 = &unk_274A0FD90;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967BB0, &unk_274A0FD90);
      sub_27472AB6C(&qword_28096ECA0, &qword_280967BB0, &unk_274A0FD90, MEMORY[0x277D83958]);
      sub_2749FCD24();
      OUTLINED_FUNCTION_22_15();

      v73 = v109;
      if (v109 <= 0)
      {
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628, &qword_274A0FF40);
        v74 = swift_allocObject();
        *(v74 + 16) = v106;
        *(v74 + 56) = MEMORY[0x277D83B88];
        *(v74 + 64) = MEMORY[0x277D83C10];
        *(v74 + 32) = v73;
        v75 = sub_2749FCD74();
        v77 = v76;

        v128[0] = &unk_274A0FD90;
        v128[1] = v14;

        MEMORY[0x277C5EBC0](v75, v77);

        v72 = v128[0];
        v14 = v128[1];
      }

      v34 = v110;
      v130 = v110;
      v78 = *(v110 + 16);
      v10 = (v78 + 1);
      if (v78 >= *(v110 + 24) >> 1)
      {
        sub_27471F128();
        v34 = v130;
      }

      *(v34 + 16) = v10;
      v79 = v34 + 16 * v78;
      *(v79 + 32) = v72;
      *(v79 + 40) = v14;
      v32 = v111 == v24;
      if (v111 == v24)
      {
        v33 = 0;
        v31 = v112;
      }

      else
      {
        v33 = v111 + 1;
        v31 = v112;
        if (__OFADD__(v111, 1))
        {
          goto LABEL_61;
        }
      }

      if (v31 == v24)
      {

        sub_2748A54C4(v34);
        swift_unknownObjectRelease();
LABEL_57:
        OUTLINED_FUNCTION_46();
        return;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
  }

  __break(1u);
LABEL_64:
  __break(1u);
}

uint64_t sub_2748A5024@<X0>(uint64_t a2@<X8>)
{
  sub_27475D0D0();

  result = sub_2749FBEE4();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_2748A5090(const void *a1, uint64_t a2)
{
  v4 = sub_2749FB4C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  memcpy(v24, a1, 0xB9uLL);
  v8 = *(type metadata accessor for SmartShortcutPickerSectionRowView(0) + 36);
  memcpy(v25, (a2 + v8), 0xBAuLL);
  memcpy(v26, (a2 + v8), 0xBAuLL);
  if (sub_2747B973C(v26) == 1)
  {
    CGSizeMake();
    memcpy(v20, v25, 0xBAuLL);
    CGSizeMake();
    memcpy(v23, v9, sizeof(v23));
    sub_274772ADC(v24, v19);
    sub_27473F28C(v25, v19, &qword_280968A90, &qword_274A13640);
  }

  else
  {
    CGSizeMake();
    memcpy(v20, v25, 0xBAuLL);
    CGSizeMake();
    sub_274772ADC(v24, v19);
    sub_27473F28C(v25, v19, &qword_280968A90, &qword_274A13640);
    sub_2749FD2D4();
    v10 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_27472ECBC(v25, &qword_280968A90, &qword_274A13640);
    (*(v5 + 8))(v7, v4);
  }

  memcpy(v21, v24, sizeof(v21));
  CGSizeMake();
  memcpy(&v20[192], v23, 0xB9uLL);
  memcpy(v20, v21, 0xB9uLL);
  memcpy(v22, v21, 0xB9uLL);
  if (sub_2747B9744(v22) != 1)
  {
    memcpy(v18, v20, 0xB9uLL);
    memcpy(v17, v20, sizeof(v17));
    memcpy(v19, &v20[192], 0xB9uLL);
    if (sub_2747B9744(v19) != 1)
    {
      memcpy(v16, &v20[192], 0xB9uLL);
      sub_27473F28C(v18, v15, &qword_280968A58, &qword_274A15E00);
      v11 = static SmartShortcutPickerEntry.Identifier.== infix(_:_:)();
      memcpy(v14, v16, 0xB9uLL);
      sub_274772BE8(v14);
      memcpy(v15, v17, 0xB9uLL);
      sub_274772BE8(v15);
      memcpy(v16, v20, 0xB9uLL);
      sub_27472ECBC(v16, &qword_280968A58, &qword_274A15E00);
      return v11 & 1;
    }

    memcpy(v16, v20, 0xB9uLL);
    sub_27473F28C(v18, v15, &qword_280968A58, &qword_274A15E00);
    sub_274772BE8(v16);
    goto LABEL_9;
  }

  memcpy(v19, &v20[192], 0xB9uLL);
  if (sub_2747B9744(v19) != 1)
  {
LABEL_9:
    memcpy(v19, v20, 0x179uLL);
    sub_27472ECBC(v19, &qword_280968A98, &qword_274A13648);
    v11 = 0;
    return v11 & 1;
  }

  memcpy(v18, v20, 0xB9uLL);
  sub_27472ECBC(v18, &qword_280968A58, &qword_274A15E00);
  v11 = 1;
  return v11 & 1;
}

uint64_t sub_2748A54C4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = 0;
  v5 = v2 >> 1;
  v6 = v2 - 1;
  for (i = 16 * v2 + 24; ; i -= 16)
  {
    if (v4 == v6)
    {
      goto LABEL_11;
    }

    v8 = *(v1 + 16);
    if (v4 >= v8)
    {
      break;
    }

    if (v6 >= v8)
    {
      goto LABEL_14;
    }

    v10 = *(v1 + v3 + 32);
    v9 = *(v1 + v3 + 40);
    v12 = *(v1 + i - 8);
    v11 = *(v1 + i);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2747D57E8();
      v1 = v15;
    }

    v13 = v1 + v3;
    *(v13 + 32) = v12;
    *(v13 + 40) = v11;

    if (v6 >= *(v1 + 16))
    {
      goto LABEL_15;
    }

    v14 = (v1 + i);
    *(v14 - 1) = v10;
    *v14 = v9;

LABEL_11:
    ++v4;
    --v6;
    v3 += 16;
    if (v5 == v4)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_2748A55FC()
{
  result = qword_28096D278;
  if (!qword_28096D278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D258, &qword_274A1ECC0);
    sub_27472AB6C(&qword_28096D280, &qword_28096D288, &qword_274A1ECE8, MEMORY[0x277CDD828]);
    sub_27472AB6C(&qword_28096C850, &qword_28096C858, &qword_274A1D950, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096D278);
  }

  return result;
}

unint64_t sub_2748A56E0()
{
  result = qword_28096D290;
  if (!qword_28096D290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D270, &qword_274A1ECE0);
    sub_2747FEF94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096D290);
  }

  return result;
}

unint64_t sub_2748A5764()
{
  result = qword_28096D2A0;
  if (!qword_28096D2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D298, &qword_274A1ECF0);
    sub_2747FEF94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096D2A0);
  }

  return result;
}

unint64_t sub_2748A57E8()
{
  result = qword_28096D2A8;
  if (!qword_28096D2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D260, &qword_274A1ECC8);
    sub_2748A55FC();
    sub_2748A56E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096D2A8);
  }

  return result;
}

unint64_t sub_2748A5874()
{
  result = qword_280970640;
  if (!qword_280970640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970640);
  }

  return result;
}

unint64_t sub_2748A58C8()
{
  result = qword_280970280;
  if (!qword_280970280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970280);
  }

  return result;
}

uint64_t sub_2748A591C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmartShortcutPickerSectionRowView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2748A5980@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SmartShortcutPickerSectionRowView(0);

  return sub_2748A3738(a1);
}

uint64_t sub_2748A5A00(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2748A5A60(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

void *OUTLINED_FUNCTION_38_10(void *a1)
{

  return memcpy(a1, (v1 + 88), 0x5AuLL);
}

uint64_t OUTLINED_FUNCTION_39_9(uint64_t a1, uint64_t a2, char a3)
{
  sub_274754DBC(a1, a2, a3);
}

void ShortcutP2PFileImportView.init(workflow:extractResult:completion:)()
{
  OUTLINED_FUNCTION_48();
  v30 = v0;
  v31 = v1;
  v3 = v2;
  v29 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D2F0, &unk_274A1ED60);
  OUTLINED_FUNCTION_34(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = sub_2749F9A14();
  OUTLINED_FUNCTION_43();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  v18 = type metadata accessor for ShortcutP2PFileImportView(0);
  v19 = v6 + v18[8];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = v18[9];
  *(v6 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50, &qword_274A11AE0);
  swift_storeEnumTagMultiPayload();
  v32 = 0;
  sub_2749FC5B4();
  OUTLINED_FUNCTION_18_2();
  v32 = 0;
  sub_2749FC5B4();
  OUTLINED_FUNCTION_18_2();
  v21 = v18[12];
  sub_2749F9AA4();
  v22 = sub_2749F9A94();
  v23 = 1;
  sub_2749F9A04();
  (*(v13 + 104))(v17, *MEMORY[0x277D7BCF0], v11);
  sub_2749F9A24();
  *(v6 + v21) = v22;
  *v6 = v29;
  v6[1] = [v3 fileContentType];
  v24 = [v3 sharedDate];
  if (v24)
  {
    v25 = v24;
    sub_2749F90D4();

    v23 = 0;
    v3 = v25;
  }

  v26 = sub_2749F90F4();
  __swift_storeEnumTagSinglePayload(v10, v23, 1, v26);
  sub_2747D31F8(v10, v6 + v18[6], &unk_28096D2F0, &unk_274A1ED60);
  v27 = (v6 + v18[7]);
  v28 = v31;
  *v27 = v30;
  v27[1] = v28;
  OUTLINED_FUNCTION_46();
}

uint64_t type metadata accessor for ShortcutP2PFileImportView(uint64_t a1)
{
  result = qword_28096D368;
  if (!qword_28096D368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2748A5DE8()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v4 = sub_2749FB4C4();
  OUTLINED_FUNCTION_43();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50, &qword_274A11AE0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_22();
  v12 = type metadata accessor for ShortcutP2PFileImportView(0);
  sub_27473ADB8(v0 + *(v12 + 36), v1, &qword_28096BF50, &qword_274A11AE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2747D31F8(v1, v3, &qword_28096B2A0, &qword_274A11BA0);
  }

  else
  {
    sub_2749FD2D4();
    v13 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();

    (*(v6 + 8))(v10, v4);
  }

  OUTLINED_FUNCTION_46();
}

void ShortcutP2PFileImportView.body.getter()
{
  OUTLINED_FUNCTION_48();
  v36 = v2;
  v3 = type metadata accessor for ShortcutP2PFileImportView(0);
  v4 = v3 - 8;
  v33 = *(v3 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v32 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D300, &qword_274A1EDD8);
  OUTLINED_FUNCTION_43();
  v34 = v6;
  v35 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22();
  v37 = v0;
  v31 = sub_2749FBC44();
  v30[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D308, &qword_274A1EDE0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D310, &qword_274A1EDE8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D318, &qword_274A1EDF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D320, &qword_274A1EDF8);
  v12 = sub_2748A9178();
  v40 = v11;
  v41 = v12;
  OUTLINED_FUNCTION_4_27();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = OUTLINED_FUNCTION_42();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v14, v15);
  v17 = OUTLINED_FUNCTION_7_21(&qword_28096D348);
  v40 = v16;
  v41 = v17;
  OUTLINED_FUNCTION_3_38();
  v18 = swift_getOpaqueTypeConformance2();
  v40 = v9;
  v41 = v10;
  v42 = OpaqueTypeConformance2;
  v43 = v18;
  swift_getOpaqueTypeConformance2();
  sub_2749FAA54();
  v19 = v0 + *(v4 + 48);
  v20 = *v19;
  v21 = *(v19 + 8);
  v38 = v20;
  v39 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400, &qword_274A15820);
  sub_2749FC5E4();
  v22 = v32;
  sub_2748A9230(v0, v32);
  v23 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v24 = swift_allocObject();
  sub_2748A9294(v22, v24 + v23);
  type metadata accessor for GalleryImportView(0);
  OUTLINED_FUNCTION_4_26();
  sub_27472AB6C(v25, &qword_28096D300, &qword_274A1EDD8, v26);
  OUTLINED_FUNCTION_5_28();
  sub_2748A96E8(v27, v28, &unk_274A228F0);
  OUTLINED_FUNCTION_42();
  v29 = v34;
  sub_2749FC274();

  (*(v35 + 8))(v1, v29);
  OUTLINED_FUNCTION_46();
}

void sub_2748A6324()
{
  OUTLINED_FUNCTION_48();
  v2 = v0;
  v27[1] = v3;
  v4 = sub_2749FB4F4();
  OUTLINED_FUNCTION_43();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D320, &qword_274A1EDF8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v14 = v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D310, &qword_274A1EDE8);
  OUTLINED_FUNCTION_43();
  v17 = v16;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_22();
  *v14 = sub_2749FB634();
  *(v14 + 1) = 0x4034000000000000;
  v14[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D3B0, &unk_274A1EEE0);
  sub_2748A68E8(v2, &v14[*(v19 + 44)]);
  v20 = sub_2749FBCC4();
  v21 = &v14[*(v11 + 36)];
  *v21 = v20;
  *(v21 + 8) = 0u;
  *(v21 + 24) = 0u;
  v21[40] = 1;
  (*(v6 + 104))(v10, *MEMORY[0x277CDDDC0], v4);
  v22 = sub_2748A9178();
  sub_2749FC224();
  (*(v6 + 8))(v10, v4);
  sub_27472ECBC(v14, &qword_28096D320, &qword_274A1EDF8);
  v27[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D318, &qword_274A1EDF0);
  v28 = v11;
  v29 = v22;
  OUTLINED_FUNCTION_4_27();
  swift_getOpaqueTypeConformance2();
  v23 = OUTLINED_FUNCTION_42();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v23, v24);
  v26 = OUTLINED_FUNCTION_7_21(&qword_28096D348);
  v28 = v25;
  v29 = v26;
  OUTLINED_FUNCTION_3_38();
  swift_getOpaqueTypeConformance2();
  sub_2749FC2C4();
  (*(v17 + 8))(v1, v15);
  OUTLINED_FUNCTION_46();
}

id sub_2748A65FC@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for ShortcutP2PFileImportView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v13 = *a1;
  sub_2748A9230(a1, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_2748A9294(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = *(type metadata accessor for GalleryImportView(0) + 32);
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850, &unk_274A13E20);
  swift_storeEnumTagMultiPayload();
  v10 = v13;
  a2[4] = 0;
  a2[5] = 0;
  a2[2] = v8;
  a2[3] = 0;
  *a2 = v10;
  a2[1] = sub_2748A95A4;

  return v10;
}

double sub_2748A675C(uint64_t a1)
{
  v2 = type metadata accessor for ShortcutP2PFileImportView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  sub_2748A9230(a1, &v13 - v7);
  v9 = *(v3 + 80);
  v10 = swift_allocObject();
  sub_2748A9294(v8, v10 + ((v9 + 16) & ~v9));
  sub_2748A9230(a1, v6);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2748A95BC;
  *(v11 + 24) = v10;
  sub_2748A9294(v6, v11 + ((v9 + 32) & ~v9));

  sub_2748B9708();

  return result;
}

uint64_t sub_2748A68E8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D3C0, &qword_274A1EEF0);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v41 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D3C8, &qword_274A1EEF8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D3D0, &qword_274A1C080);
  v16 = v15 - 8;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v39 - v20;
  *v21 = sub_2749FB634();
  *(v21 + 1) = 0x4024000000000000;
  v21[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096BFE0, &qword_274A1C078);
  sub_2748A6D94(&v21[*(v22 + 44)]);
  v23 = sub_2749FBC54();
  v24 = &v21[*(v16 + 44)];
  *v24 = v23;
  *(v24 + 8) = 0u;
  *(v24 + 24) = 0u;
  v24[40] = 1;
  *v14 = sub_2749FB634();
  *(v14 + 1) = 0x4020000000000000;
  v14[16] = 0;
  v25 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D3E0, &qword_274A1EF00) + 44)];
  v39 = v14;
  sub_2748A738C(a1, v25);
  *v8 = sub_2749FB634();
  *(v8 + 1) = 0x4010000000000000;
  v8[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D3E8, &qword_274A1EF08);
  sub_2748A7B04(a1, &v8[*(v26 + 44)]);
  v27 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D3F0, &unk_274A1EF10) + 36)];
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D900, &qword_274A1BBB0) + 28);
  v29 = *MEMORY[0x277CDF420];
  v30 = sub_2749FAAA4();
  (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
  *v27 = swift_getKeyPath();
  LOBYTE(v29) = sub_2749FBC54();
  v31 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D400, &qword_274A1EF50) + 36)];
  *v31 = v29;
  *(v31 + 8) = 0u;
  *(v31 + 24) = 0u;
  v31[40] = 1;
  sub_2749FC904();
  sub_2749FABB4();
  v32 = &v8[*(v4 + 44)];
  v33 = v44;
  *v32 = v43;
  *(v32 + 1) = v33;
  *(v32 + 2) = v45;
  v40 = v19;
  sub_27473ADB8(v21, v19, &unk_28096D3D0, &qword_274A1C080);
  sub_27473ADB8(v14, v12, &qword_28096D3C8, &qword_274A1EEF8);
  v34 = v41;
  sub_27474DB74(v8, v41);
  v35 = v42;
  sub_27473ADB8(v19, v42, &unk_28096D3D0, &qword_274A1C080);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D408, &qword_274A1EF58);
  sub_27473ADB8(v12, v35 + v36[12], &qword_28096D3C8, &qword_274A1EEF8);
  v37 = v35 + v36[16];
  *v37 = 0;
  *(v37 + 8) = 0;
  sub_27474DB74(v34, v35 + v36[20]);
  sub_27472ECBC(v8, &qword_28096D3C0, &qword_274A1EEF0);
  sub_27472ECBC(v39, &qword_28096D3C8, &qword_274A1EEF8);
  sub_27472ECBC(v21, &unk_28096D3D0, &qword_274A1C080);
  sub_27472ECBC(v34, &qword_28096D3C0, &qword_274A1EEF0);
  sub_27472ECBC(v12, &qword_28096D3C8, &qword_274A1EEF8);
  return sub_27472ECBC(v40, &unk_28096D3D0, &qword_274A1C080);
}

uint64_t sub_2748A6D94@<X0>(char *a1@<X8>)
{
  v71 = a1;
  v1 = sub_2749FA2F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2749FA2C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_2749FA304();
  v72 = *(v9 - 8);
  v73 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v75 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v66 - v12;
  sub_27471CF08(0, &qword_28096BB10, 0x277D79DA8);
  v14 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  sub_274903E28(v14, v15);
  *v8 = vdupq_n_s64(0x4054000000000000uLL);
  (*(v6 + 104))(v8, *MEMORY[0x277D7D690], v5);
  (*(v2 + 104))(v4, *MEMORY[0x277D7D6D0], v1);
  v74 = v13;
  sub_2749FA314();
  sub_2749FCE14("Add Shortcut", 12);
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v16 = qword_28159E448;
  v70 = qword_28159E448;
  v17 = sub_2749FCD64();
  v18 = sub_2749FCD64();

  v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

  v20 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v22 = v21;

  v78 = v20;
  v79 = v22;
  sub_27475D0D0();
  v23 = sub_2749FBEE4();
  v25 = v24;
  LOBYTE(v22) = v26;
  sub_2749FBCD4();
  v27 = sub_2749FBEC4();
  v29 = v28;
  v31 = v30;

  sub_27477656C(v23, v25, v22 & 1);

  v32 = sub_2749FBEB4();
  v67 = v33;
  v68 = v32;
  v35 = v34;
  v69 = v36;
  sub_27477656C(v27, v29, v31 & 1);

  sub_2749FCE14("Review the contents of this shortcut.", 37);
  v37 = sub_2749FCD64();
  v38 = sub_2749FCD64();

  v39 = [v70 localizedStringForKey:v37 value:v38 table:0];

  v40 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v42 = v41;

  v78 = v40;
  v79 = v42;
  v43 = sub_2749FBEE4();
  v45 = v44;
  LOBYTE(v40) = v46;
  v70 = v47;
  KeyPath = swift_getKeyPath();
  v50 = v72;
  v49 = v73;
  v51 = *(v72 + 16);
  v52 = v75;
  v51(v75, v74, v73);
  LOBYTE(v78) = v35 & 1;
  v77 = v40 & 1;
  v76 = 0;
  v53 = v71;
  v51(v71, v52, v49);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C0D8, &qword_274A1C188);
  v55 = &v53[v54[12]];
  v56 = v78;
  v58 = v67;
  v57 = v68;
  *v55 = v68;
  *(v55 + 1) = v58;
  v55[16] = v56;
  v59 = v70;
  *(v55 + 3) = v69;
  v60 = &v53[v54[16]];
  LOBYTE(v40) = v77;
  *v60 = v43;
  *(v60 + 1) = v45;
  v60[16] = v40;
  *(v60 + 3) = v59;
  *(v60 + 4) = KeyPath;
  v60[40] = 1;
  v61 = &v53[v54[20]];
  v62 = v76;
  *v61 = 0x4010000000000000;
  v61[8] = v62;
  v63 = v57;
  sub_274754DBC(v57, v58, v56);

  sub_274754DBC(v43, v45, v40);
  v64 = *(v50 + 8);

  v64(v74, v49);
  sub_27477656C(v43, v45, v77);

  sub_27477656C(v63, v58, v78);

  return (v64)(v75, v49);
}

uint64_t sub_2748A738C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v79 = sub_2749F99F4();
  v78 = *(v79 - 8);
  v3 = MEMORY[0x28223BE20](v79);
  v76 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v75 = &v64 - v5;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D450, &unk_274A1C130);
  MEMORY[0x28223BE20](v64);
  v7 = &v64 - v6;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C0B0, &unk_274A1EF90);
  MEMORY[0x28223BE20](v65);
  v69 = &v64 - v8;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D460, &qword_274A1C140);
  MEMORY[0x28223BE20](v67);
  v71 = &v64 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D468, &unk_274A1EFA0);
  v10 = MEMORY[0x28223BE20](v70);
  v73 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v66 = &v64 - v13;
  MEMORY[0x28223BE20](v12);
  v72 = &v64 - v14;
  v74 = a1;
  v68 = *a1;
  v15 = [v68 name];
  if (v15)
  {
    v16 = v15;
    v17 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  v83[0] = v17;
  v83[1] = v19;
  sub_27475D0D0();
  v20 = sub_2749FBEE4();
  v22 = v21;
  v24 = v23;
  sub_2749FBCF4();
  sub_2749FBD54();
  sub_2749FBDA4();

  v25 = sub_2749FBEC4();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  sub_27477656C(v20, v22, v24 & 1);

  sub_2749FC924();
  sub_2749FB004();
  v32 = v29 & 1;
  v81 = v29 & 1;
  LOBYTE(v20) = sub_2749FBC64();
  v82 = 1;
  v33 = &v7[*(v64 + 36)];
  v34 = *(sub_2749FAFC4() + 20);
  v35 = *MEMORY[0x277CE0118];
  v36 = sub_2749FB584();
  (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
  __asm { FMOV            V0.2D, #14.0 }

  *v33 = _Q0;
  *&v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C0C0, &qword_274A1C148) + 56)] = 256;
  *v7 = v25;
  *(v7 + 1) = v27;
  v7[16] = v32;
  *(v7 + 3) = v31;
  memcpy(v7 + 32, __src, 0x70uLL);
  v7[144] = v20;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  v7[184] = 1;
  LOBYTE(v31) = sub_2749FBC54();
  v42 = v7;
  v43 = v69;
  sub_2747D31F8(v42, v69, &unk_28096D450, &unk_274A1C130);
  v44 = v43 + *(v65 + 36);
  *v44 = v31;
  *(v44 + 8) = 0u;
  *(v44 + 24) = 0u;
  *(v44 + 40) = 1;
  sub_2749FC914();
  sub_2749FB004();
  v45 = v71;
  sub_2747D31F8(v43, v71, &unk_28096C0B0, &unk_274A1EF90);
  memcpy((v45 + *(v67 + 36)), v83, 0x70uLL);
  sub_2749FC454();
  v46 = sub_2749FC484();

  v47 = v66;
  sub_2747D31F8(v45, v66, &qword_28096D460, &qword_274A1C140);
  v48 = v47 + *(v70 + 36);
  *v48 = v46;
  *(v48 + 8) = xmmword_274A1ED50;
  *(v48 + 24) = 0x4010000000000000;
  v49 = v47;
  v50 = v72;
  sub_2747D31F8(v49, v72, &unk_28096D468, &unk_274A1EFA0);
  v51 = *(v74 + *(type metadata accessor for ShortcutP2PFileImportView(0) + 48));
  v52 = v68;
  v53 = v51;
  v54 = v75;
  sub_2749F99E4();
  v55 = v73;
  sub_27473ADB8(v50, v73, &unk_28096D468, &unk_274A1EFA0);
  v56 = v78;
  v57 = *(v78 + 16);
  v58 = v76;
  v59 = v79;
  v57(v76, v54, v79);
  v60 = v77;
  sub_27473ADB8(v55, v77, &unk_28096D468, &unk_274A1EFA0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D478, &qword_274A1EFB0);
  v57((v60 + *(v61 + 48)), v58, v59);
  v62 = *(v56 + 8);
  v62(v54, v59);
  sub_27472ECBC(v50, &unk_28096D468, &unk_274A1EFA0);
  v62(v58, v59);
  return sub_27472ECBC(v55, &unk_28096D468, &unk_274A1EFA0);
}

uint64_t sub_2748A7B04@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D410, &qword_274A1EF60) - 8;
  v3 = MEMORY[0x28223BE20](v42);
  v43 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v41 = &v34 - v5;
  v37 = sub_2749FBAE4();
  v39 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShortcutP2PFileImportView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D418, &qword_274A1EF68);
  v36 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D420, &qword_274A1EF70);
  v45 = *(v40 - 8);
  v14 = MEMORY[0x28223BE20](v40);
  v38 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v34 = a1;
  v35 = &v34 - v16;
  sub_2748A9230(a1, &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  sub_2748A9294(&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v46 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D428, &qword_274A1EF78);
  sub_2748A9664();
  sub_2749FC624();
  sub_2749FBAD4();
  sub_27472AB6C(&qword_28096D438, &qword_28096D418, &qword_274A1EF68, MEMORY[0x277CDF028]);
  sub_2748A96E8(&qword_28096D440, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  v19 = v35;
  v20 = v11;
  v21 = v37;
  sub_2749FBFC4();
  (*(v39 + 8))(v7, v21);
  (*(v36 + 8))(v13, v20);
  sub_2748A9230(v34, &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = swift_allocObject();
  sub_2748A9294(&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C050, &qword_274A1EF80);
  sub_27475C60C();
  v23 = v41;
  sub_2749FC624();
  v24 = sub_2749FBC64();
  v25 = v23 + *(v42 + 44);
  *v25 = v24;
  *(v25 + 8) = 0u;
  *(v25 + 24) = 0u;
  *(v25 + 40) = 1;
  v26 = *(v45 + 16);
  v27 = v38;
  v28 = v40;
  v26(v38, v19, v40);
  v29 = v43;
  sub_27473ADB8(v23, v43, &qword_28096D410, &qword_274A1EF60);
  v30 = v44;
  v26(v44, v27, v28);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D448, &qword_274A1EF88);
  sub_27473ADB8(v29, &v30[*(v31 + 48)], &qword_28096D410, &qword_274A1EF60);
  sub_27472ECBC(v23, &qword_28096D410, &qword_274A1EF60);
  v32 = *(v45 + 8);
  v32(v19, v28);
  sub_27472ECBC(v29, &qword_28096D410, &qword_274A1EF60);
  return (v32)(v27, v28);
}

double sub_2748A80F0(id *a1)
{
  v2 = type metadata accessor for ShortcutP2PFileImportView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-v7];
  v9 = [*a1 importQuestions];
  sub_27471CF08(0, &qword_28096EA30, 0x277D7CA80);
  v10 = sub_2749FCF84();

  v11 = sub_27472D918(v10);

  if (v11)
  {
    v12 = a1 + *(v2 + 40);
    v14 = *(v12 + 1);
    v21 = *v12;
    v13 = v21;
    v22 = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400, &qword_274A15820);
    sub_2749FC5C4();
    v19[8] = v13;
    v20 = v14;
    v19[7] = (v23 & 1) == 0;
    sub_2749FC5D4();
  }

  else
  {
    sub_2748A9230(a1, v8);
    v15 = *(v3 + 80);
    v16 = swift_allocObject();
    sub_2748A9294(v8, v16 + ((v15 + 16) & ~v15));
    sub_2748A9230(a1, v6);
    v17 = swift_allocObject();
    *(v17 + 16) = sub_2748A9BA0;
    *(v17 + 24) = v16;
    sub_2748A9294(v6, v17 + ((v15 + 32) & ~v15));

    sub_2748B9708();
  }

  return result;
}

void *sub_2748A8358@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v54[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C0A0, &qword_274A13E30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v54 - v4;
  v6 = sub_2749FBE14();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [*a1 importQuestions];
  sub_27471CF08(0, &qword_28096EA30, 0x277D7CA80);
  v11 = sub_2749FCF84();

  v12 = sub_27472D918(v11);

  if (v12)
  {
    sub_2749FCE14("ADD_SHORTCUT_BUTTON_WITH_IMPORT", 31, v54[0]);
    sub_2749FCE14("Add Shortcut…", 15);
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v13 = qword_28159E448;
    v14 = sub_2749FCD64();

    v15 = sub_2749FCD64();

    v16 = [v13 localizedStringForKey:v14 value:v15 table:0];

    v17 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v19 = v18;

    __src[0] = v17;
    __src[1] = v19;
    sub_27475D0D0();
    v20 = sub_2749FBEE4();
    v22 = v21;
    v24 = v23;
    (*(v7 + 104))(v9, *MEMORY[0x277CE0AC0], v6);
    v25 = sub_2749FBD24();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v25);
    sub_2749FBD74();
    sub_27472ECBC(v5, &unk_28096C0A0, &qword_274A13E30);
    (*(v7 + 8))(v9, v6);
    sub_2749FBD54();
    sub_2749FBDA4();

    v26 = sub_2749FBEC4();
    v28 = v27;
    v30 = v29;
    v32 = v31;

    sub_27477656C(v20, v22, v24 & 1);

    sub_2749FC914();
    sub_2749FB004();
    v57 = v30 & 1;
    v56[0] = v26;
    v56[1] = v28;
    LOBYTE(v56[2]) = v30 & 1;
    v56[3] = v32;
    sub_27475D12C(v56);
  }

  else
  {
    v33 = v6;
    sub_2749FCE14("ADD_SHORTCUT_BUTTON", 19, v54[0]);
    sub_2749FCE14("Add Shortcut", 12);
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v34 = qword_28159E448;
    v35 = sub_2749FCD64();

    v36 = sub_2749FCD64();

    v37 = [v34 localizedStringForKey:v35 value:v36 table:0];

    v38 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v40 = v39;

    __src[0] = v38;
    __src[1] = v40;
    sub_27475D0D0();
    v41 = sub_2749FBEE4();
    v43 = v42;
    v45 = v44;
    (*(v7 + 104))(v9, *MEMORY[0x277CE0AC0], v33);
    v46 = sub_2749FBD24();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v46);
    sub_2749FBD74();
    sub_27472ECBC(v5, &unk_28096C0A0, &qword_274A13E30);
    (*(v7 + 8))(v9, v33);
    sub_2749FBD54();
    sub_2749FBDA4();

    v47 = sub_2749FBEC4();
    v49 = v48;
    LOBYTE(v34) = v50;
    v52 = v51;

    sub_27477656C(v41, v43, v45 & 1);

    sub_2749FC914();
    sub_2749FB004();
    v57 = v34 & 1;
    v56[0] = v47;
    v56[1] = v49;
    LOBYTE(v56[2]) = v34 & 1;
    v56[3] = v52;
    sub_27475D138(v56);
  }

  memcpy(v55, v56, sizeof(v55));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C050, &qword_274A1EF80);
  sub_27475C60C();
  sub_2749FB7B4();
  return memcpy(v54[0], __src, 0x91uLL);
}

void *sub_2748A89EC@<X0>(uint64_t a1@<X8>)
{
  sub_2749FCE14("Don’t Add", 11);
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v2 = qword_28159E448;
  v3 = sub_2749FCD64();
  v4 = sub_2749FCD64();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  v6 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v8 = v7;

  __src[0] = v6;
  __src[1] = v8;
  sub_27475D0D0();
  v9 = sub_2749FBEE4();
  v11 = v10;
  LOBYTE(v8) = v12;
  sub_2749FBE04();
  sub_2749FBD54();
  sub_2749FBDA4();

  v13 = sub_2749FBEC4();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_27477656C(v9, v11, v8 & 1);

  sub_2749FC914();
  sub_2749FB004();
  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  return memcpy((a1 + 32), __src, 0x70uLL);
}

uint64_t sub_2748A8BEC(uint64_t a1)
{
  v2 = sub_2749FB834();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B350, &unk_274A1A020);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_2749FB814();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096CFC0, &qword_274A0F0A0);
  sub_27472AB6C(&unk_28096B360, &unk_28096CFC0, &qword_274A0F0A0, MEMORY[0x277CDF028]);
  sub_2749FAB44();
  v7 = sub_27472AB6C(&qword_28096D348, &unk_28096B350, &unk_274A1A020, MEMORY[0x277CDD7A8]);
  MEMORY[0x277C5D5D0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2748A8DD8(uint64_t a1)
{
  v2 = type metadata accessor for ShortcutP2PFileImportView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2749FCE14("Cancel", 6);
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v5 = qword_28159E448;
  v6 = sub_2749FCD64();
  v7 = sub_2749FCD64();

  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  v9 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v11 = v10;

  v15[0] = v9;
  v15[1] = v11;
  sub_2748A9230(a1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_2748A9294(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_27475D0D0();
  return sub_2749FC644();
}

void sub_2748A8FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = sub_2749FAF84();
  v25 = OUTLINED_FUNCTION_34(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B2A0, &qword_274A11BA0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v27);
  v29 = &a9 - v28;
  v30 = type metadata accessor for ShortcutP2PFileImportView(0);
  v31 = v30 - 8;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_0();
  v34 = v33 - v32;
  sub_2748A9230(v23, v33 - v32);
  sub_2748A5DE8();
  MEMORY[0x277C5E410](v26);
  sub_2749FAF74();
  OUTLINED_FUNCTION_42();
  sub_2749FC6C4();
  sub_27472ECBC(v29, &qword_28096B2A0, &qword_274A11BA0);
  sub_2748A95E8(v34);
  v35 = *(v23 + *(v31 + 36));
  v36 = [objc_opt_self() userCancelledError];
  v35();

  OUTLINED_FUNCTION_46();
}

unint64_t sub_2748A9178()
{
  result = qword_28096D328;
  if (!qword_28096D328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D320, &qword_274A1EDF8);
    sub_27472AB6C(&qword_28096D330, &unk_28096D338, &unk_274A1EE00, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096D328);
  }

  return result;
}

uint64_t sub_2748A9230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutP2PFileImportView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2748A9294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutP2PFileImportView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_2748A92F8@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for ShortcutP2PFileImportView(0);
  OUTLINED_FUNCTION_34(v2);
  v4 = OUTLINED_FUNCTION_10_23(*(v3 + 80));

  return sub_2748A65FC(v4, a1);
}

uint64_t sub_2748A9378(uint64_t a1)
{
  result = sub_2748A96E8(&qword_28096D360, type metadata accessor for ShortcutP2PFileImportView, &protocol conformance descriptor for ShortcutP2PFileImportView);
  *(a1 + 8) = result;
  return result;
}

void sub_2748A93F8(uint64_t a1)
{
  sub_27471CF08(319, &qword_28096BF80, 0x277D7CA60);
  if (v1 <= 0x3F)
  {
    type metadata accessor for WFShortcutFileContentType(319);
    if (v2 <= 0x3F)
    {
      sub_2748A954C(319);
      if (v3 <= 0x3F)
      {
        sub_27478CEF4();
        if (v4 <= 0x3F)
        {
          sub_2747B70E4(319, &unk_28096D390, &qword_28096BF90, &qword_274A1C040);
          if (v5 <= 0x3F)
          {
            sub_2747B70E4(319, &qword_28096D3A0, &qword_28096B2A0, &qword_274A11BA0);
            if (v6 <= 0x3F)
            {
              sub_274877D24();
              if (v7 <= 0x3F)
              {
                sub_2749F9AA4();
                if (v8 <= 0x3F)
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

void sub_2748A954C(uint64_t a1)
{
  if (!qword_28096D380)
  {
    sub_2749F90F4();
    v1 = sub_2749FD6C4();
    if (!v2)
    {
      atomic_store(v1, &qword_28096D380);
    }
  }
}

uint64_t sub_2748A95E8(uint64_t a1)
{
  v2 = type metadata accessor for ShortcutP2PFileImportView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2748A9664()
{
  result = qword_28096D430;
  if (!qword_28096D430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D428, &qword_274A1EF78);
    sub_27475C60C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096D430);
  }

  return result;
}

uint64_t sub_2748A96E8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_9()
{
  type metadata accessor for ShortcutP2PFileImportView(0);
  OUTLINED_FUNCTION_23();
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  v5 = *(v0 + 24);
  v6 = sub_2749F90F4();
  if (!OUTLINED_FUNCTION_20_4(v6))
  {
    (*(*(v2 - 8) + 8))(v4 + v5, v2);
  }

  OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_21_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50, &qword_274A11AE0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B2A0, &qword_274A11BA0) + 32);
    sub_2749FAF84();
    OUTLINED_FUNCTION_9();
    (*(v9 + 8))(v2 + v8);
  }

  OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_13_19();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_2748A9914(uint64_t (*a1)(uint64_t))
{
  v1 = type metadata accessor for ShortcutP2PFileImportView(0);
  OUTLINED_FUNCTION_34(v1);
  v3 = OUTLINED_FUNCTION_10_23(*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroy_26Tm_1()
{
  type metadata accessor for ShortcutP2PFileImportView(0);
  OUTLINED_FUNCTION_23();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  v5 = v1 + v4;

  v6 = *(v0 + 24);
  v7 = sub_2749F90F4();
  if (!OUTLINED_FUNCTION_20_4(v7))
  {
    (*(*(v2 - 8) + 8))(v5 + v6, v2);
  }

  OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_21_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50, &qword_274A11AE0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B2A0, &qword_274A11BA0) + 32);
    sub_2749FAF84();
    OUTLINED_FUNCTION_9();
    (*(v10 + 8))(v2 + v9);
  }

  OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_13_19();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_2748A9B1C(uint64_t a1, char a2)
{
  v5 = type metadata accessor for ShortcutP2PFileImportView(0);
  OUTLINED_FUNCTION_34(v5);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_2748B9C68(a1, a2 & 1, v7, v8, v9);
}

char *sub_2748A9BA8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC10WorkflowUI35WFPickerNavigationBarBackgroundView_separatorView;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v23.receiver = v4;
  v23.super_class = type metadata accessor for WFPickerNavigationBarBackgroundView();
  v10 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  if (_UISolariumEnabled())
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
    sub_27486D4F8();
    type metadata accessor for SmartShortcutPickerDataSource(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass_];
    v14 = sub_2748340B4(0xD000000000000024, 0x8000000274A2EF50, v13);
    v15 = [objc_opt_self() effectWithVariableBlurRadius:v14 imageMask:9.0];

    [v11 setEffect_];
    [v11 setAutoresizingMask_];
    [v10 addSubview_];
  }

  else
  {
    v16 = [objc_opt_self() effectWithStyle_];
    v11 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
    [v11 setAutoresizingMask_];
    [v10 addSubview_];
    v17 = OBJC_IVAR____TtC10WorkflowUI35WFPickerNavigationBarBackgroundView_separatorView;
    v18 = *&v10[OBJC_IVAR____TtC10WorkflowUI35WFPickerNavigationBarBackgroundView_separatorView];
    v19 = objc_opt_self();
    v20 = v18;
    v21 = [v19 separatorColor];
    [v20 setBackgroundColor_];

    [v10 addSubview_];
  }

  return v10;
}

uint64_t sub_2748A9E5C(uint64_t a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for WFPickerNavigationBarBackgroundView();
  objc_msgSendSuper2(&v9, sel_layoutSubviews);
  result = _UISolariumEnabled();
  if ((result & 1) == 0)
  {
    v3 = *&v1[OBJC_IVAR____TtC10WorkflowUI35WFPickerNavigationBarBackgroundView_separatorView];
    [v1 bounds];
    Height = CGRectGetHeight(v10);
    [v1 bounds];
    Width = CGRectGetWidth(v11);
    v6 = [objc_opt_self() mainScreen];
    [v6 scale];
    v8 = v7;

    return [v3 setFrame_];
  }

  return result;
}

void sub_2748A9F94()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI35WFPickerNavigationBarBackgroundView_separatorView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  sub_2749FDAE4();
  __break(1u);
}

id sub_2748AA034(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WFPickerNavigationBarBackgroundView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t SmartShortcutPickerSelectionCoordinator.__allocating_init(style:selectionHandler:errorHandler:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  SmartShortcutPickerSelectionCoordinator.init(style:selectionHandler:errorHandler:)(a1, a2, a3, a4, a5);
  return v10;
}

void *SmartShortcutPickerSelectionCoordinator.init(style:selectionHandler:errorHandler:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for SmartShortcutPickerParameterEditorCoordinator();
  swift_allocObject();
  v5[20] = sub_27486ED18();
  memcpy(v5 + 4, a1, 0x59uLL);
  v5[16] = a2;
  v5[17] = a3;
  v5[18] = a4;
  v5[19] = a5;
  return v5;
}

double sub_2748AA1A4(uint64_t a1, __int128 *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v43 = a6;
  v42 = a5;
  v45 = a4;
  v12 = type metadata accessor for SmartShortcutPickerEntry(0);
  v13 = OUTLINED_FUNCTION_27(v12);
  v46 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960, &unk_274A10040);
  v19 = OUTLINED_FUNCTION_34(v18);
  MEMORY[0x28223BE20](v19);
  v21 = &v40 - v20;
  v47 = &v40 - v20;
  v22 = a2[1];
  v49 = *a2;
  v50 = v22;
  v51[0] = a2[2];
  *(v51 + 9) = *(a2 + 41);
  v23 = sub_2749FD0E4();
  OUTLINED_FUNCTION_21_15(v21, v24, v25, v23);
  sub_2748AF558(a1, v17, type metadata accessor for SmartShortcutPickerEntry);
  sub_2749FD0A4();
  v26 = a4;

  v41 = a3;
  sub_27475D1E4(a5, a6);
  sub_2747B24E0(&v49, v48);
  v27 = sub_2749FD094();
  v28 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v29 = (v16 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v34 = MEMORY[0x277D85700];
  *(v33 + 16) = v27;
  *(v33 + 24) = v34;
  sub_2748AF668(v17, v33 + v28, type metadata accessor for SmartShortcutPickerEntry);
  *(v33 + v29) = v44;
  *(v33 + v30) = v41;
  *(v33 + v31) = v45;
  v35 = (v33 + v32);
  v36 = v43;
  *v35 = v42;
  v35[1] = v36;
  v37 = (v33 + ((v32 + 23) & 0xFFFFFFFFFFFFFFF8));
  *(v37 + 41) = *(v51 + 9);
  v38 = v51[0];
  v37[1] = v50;
  v37[2] = v38;
  *v37 = v49;
  sub_27479930C();

  return result;
}

uint64_t sub_2748AA454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[92] = v15;
  v8[91] = v14;
  v8[90] = a8;
  v8[89] = a7;
  v8[88] = a6;
  v8[87] = a5;
  v8[86] = a4;
  type metadata accessor for SmartShortcutPickerEntry(0);
  v8[93] = swift_task_alloc();
  v9 = sub_2749FA4E4();
  v8[94] = v9;
  v8[95] = *(v9 - 8);
  v8[96] = swift_task_alloc();
  v8[97] = swift_task_alloc();
  sub_2749FD0A4();
  v8[98] = sub_2749FD094();
  v11 = sub_2749FD044();
  v8[99] = v11;
  v8[100] = v10;

  return MEMORY[0x2822009F8](sub_2748AA5A4, v11, v10);
}

uint64_t sub_2748AA5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_17();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_18_0();
  a20 = v22;
  v25 = *(v22 + 696);
  if (*(v25 + 120))
  {
    if (*(v25 + 120) == 1)
    {
      v26 = sub_2748D7C28(*(v25 + 32));
    }

    else
    {
      v26 = *MEMORY[0x277D7D830];
    }

    SmartShortcutPickerAppAvailabilityChecker.Availability.init(configurationContext:)(v26, &a10);
  }

  else
  {
    a10 = 1;
  }

  v27 = SmartShortcutPickerEntry.isAvailable(in:)(&a10);
  v28 = *(v22 + 688);
  if (v27)
  {
    v29 = *(v22 + 744);
    *(v22 + 808) = *MEMORY[0x277D7A4C0];
    sub_2749FA3D4();
    OUTLINED_FUNCTION_2_1();
    sub_2748AF558(v28, v29, v30);
    v31 = sub_2749FA4D4();
    v32 = sub_2749FD2E4();
    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v22 + 776);
    v35 = *(v22 + 760);
    v36 = *(v22 + 752);
    if (v33)
    {
      v69 = *(v22 + 776);
      v37 = OUTLINED_FUNCTION_30_9();
      v38 = swift_slowAlloc();
      a11 = v38;
      *v37 = 136315138;
      OUTLINED_FUNCTION_37_9((v22 + 16));
      memcpy((v22 + 208), (v22 + 16), 0xB9uLL);
      sub_274772ADC(v22 + 16, v22 + 400);
      v39 = sub_2749FCDC4();
      v41 = v40;
      OUTLINED_FUNCTION_0_30();
      v42 = sub_2747AF460(v39, v41, &a11);

      *(v37 + 4) = v42;
      OUTLINED_FUNCTION_37_10(&dword_274719000, v43, v44, "User selected entry: %s");
      __swift_destroy_boxed_opaque_existential_0(v38);
      OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_31();

      v45 = *(v35 + 8);
      v45(v69, v36);
    }

    else
    {

      OUTLINED_FUNCTION_0_30();
      v45 = *(v35 + 8);
      v45(v34, v36);
    }

    *(v22 + 816) = v45;
    v56 = *(v22 + 736);
    v57 = *(v22 + 728);
    v58 = *(v22 + 720);
    v59 = *(*(v22 + 696) + 160);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectWeakAssign();
    v60 = *(v59 + 40);
    v61 = *(v59 + 48);
    *(v59 + 40) = v58;
    *(v59 + 48) = v57;
    sub_27471F8A4(v60, v61);
    v62 = *v56;
    v63 = v56[1];
    v64 = v56[2];
    *(v22 + 633) = *(v56 + 41);
    *(v22 + 608) = v63;
    *(v22 + 624) = v64;
    *(v22 + 592) = v62;
    sub_27475D1E4(v58, v57);
    v65 = swift_task_alloc();
    *(v22 + 824) = v65;
    *v65 = v22;
    v65[1] = sub_2748AA8AC;
    OUTLINED_FUNCTION_9_4();

    return sub_2748AAE48(v66, v67);
  }

  else
  {
    v46 = *(v22 + 704);

    sub_2748AD634(v28, v46);
    OUTLINED_FUNCTION_24_12();

    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_9_4();

    return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_2748AA8AC()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_21_1();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_59_1();
  *v6 = v5;
  v3[104] = v0;

  v7 = v3[100];
  v8 = v3[99];
  if (v0)
  {
    v9 = sub_2748AAA24;
  }

  else
  {
    v9 = sub_2748AA9B8;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2748AA9B8()
{
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_24_12();

  OUTLINED_FUNCTION_48_0();

  return v0();
}

uint64_t sub_2748AAA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t), void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_17();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_18_0();
  a20 = v22;
  v26 = *(v22 + 832);
  v27 = *(v22 + 696);

  (*(v27 + 144))(v26);
  sub_2749FA3D4();
  v28 = v26;
  v29 = sub_2749FA4D4();
  v30 = sub_2749FD2C4();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = *(v22 + 832);
    a9 = *(v22 + 768);
    a10 = *(v22 + 816);
    v32 = *(v22 + 752);
    OUTLINED_FUNCTION_30_9();
    v33 = OUTLINED_FUNCTION_25_9();
    a11 = v33;
    *v23 = 136315138;
    swift_getErrorValue();
    v34 = sub_2749FDD84();
    v36 = sub_2747AF460(v34, v35, &a11);

    *(v23 + 4) = v36;
    _os_log_impl(&dword_274719000, v29, v30, "Failed to select new entry due to error: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_31();

    a10(a9, v32);
  }

  else
  {
    v37 = *(v22 + 816);
    v38 = *(v22 + 768);
    v39 = *(v22 + 752);

    v37(v38, v39);
  }

  OUTLINED_FUNCTION_24_12();

  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_9_4();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2748AAC00()
{
  OUTLINED_FUNCTION_18_0();
  v1 = type metadata accessor for SmartShortcutPickerEntry(0);
  OUTLINED_FUNCTION_27(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_2748AAD64;
  OUTLINED_FUNCTION_9_4();

  return sub_2748AA454(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2748AAD64()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_21_1();
  v1 = *v0;
  OUTLINED_FUNCTION_59_1();
  *v2 = v1;

  OUTLINED_FUNCTION_48_0();

  return v3();
}

uint64_t sub_2748AAE48(uint64_t a1, _OWORD *a2)
{
  *(v3 + 5904) = v2;
  *(v3 + 5896) = a1;
  v5 = sub_2749FA4E4();
  *(v3 + 5912) = v5;
  OUTLINED_FUNCTION_27(v5);
  *(v3 + 5920) = v6;
  *(v3 + 5928) = swift_task_alloc();
  v7 = type metadata accessor for SmartShortcutPickerEntry(0);
  OUTLINED_FUNCTION_27(v7);
  *(v3 + 5936) = v8;
  *(v3 + 5944) = *(v9 + 64);
  *(v3 + 5952) = swift_task_alloc();
  *(v3 + 5960) = swift_task_alloc();
  *(v3 + 5968) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280969260, &qword_274A14AC0);
  OUTLINED_FUNCTION_34(v10);
  *(v3 + 5976) = swift_task_alloc();
  v11 = a2[1];
  *(v3 + 5696) = *a2;
  *(v3 + 5712) = v11;
  *(v3 + 5728) = a2[2];
  *(v3 + 5737) = *(a2 + 41);
  sub_2749FD0A4();
  *(v3 + 5984) = sub_2749FD094();
  v13 = sub_2749FD044();
  *(v3 + 5992) = v13;
  *(v3 + 6000) = v12;

  return MEMORY[0x2822009F8](sub_2748AB010, v13, v12);
}

uint64_t sub_2748AB010()
{
  v155 = v0;
  v1 = *(v0 + 5896);
  OUTLINED_FUNCTION_29_12((v0 + 1936));
  OUTLINED_FUNCTION_29_12((v0 + 16));
  switch(sub_274772AD0(v0 + 16))
  {
    case 1u:
      v54 = *(v0 + 5976);
      v55 = *(v0 + 5904);
      v56 = *(v0 + 5896);
      sub_274721C98(v0 + 16);

      sub_274754670(v0 + 3664);
      memcpy(__dst, (v0 + 3664), 0xB9uLL);
      v57 = type metadata accessor for SmartShortcutPickerSelectedEntry(0);
      OUTLINED_FUNCTION_21_15(v54, v58, v59, v57);
      sub_2748AC444(__dst, v54, v56, (v0 + 5696), v55);
      sub_2747359D0(v54, &unk_280969260, &qword_274A14AC0);
      goto LABEL_14;
    case 2u:
      v24 = *OUTLINED_FUNCTION_23_14();
      OUTLINED_FUNCTION_28_12((v0 + 3856));
      v25 = *sub_274721C98(v0 + 3856);

      *(v0 + 4048) = v24;
      sub_2748AF4B4(v0 + 4048);
      memcpy(__dst, (v0 + 4048), 0xB9uLL);
      v26 = type metadata accessor for SmartShortcutPickerSelectedEntry(0);
      OUTLINED_FUNCTION_21_15(v1, v27, v28, v26);
      OUTLINED_FUNCTION_28_12((v0 + 4240));
      v29 = *sub_274721C98(v0 + 4240);
      OUTLINED_FUNCTION_22_16(v29, v30, v31, v32, v33, v34, v35, v36, v101, v104, v108, v112, v116, v120, v126, v130, v134, v138, v142, v146, v150);
      sub_274772BE8(v0 + 1936);
      sub_2747359D0(v1, &unk_280969260, &qword_274A14AC0);
      OUTLINED_FUNCTION_40_10((v0 + 4432), v37, v38, v39, v40, v41, v42, v43, v103, v106, v110, v114, v118, v122, v128, v132, v136, v140, v144, v148, v152);
      v23 = v0 + 4432;
      goto LABEL_13;
    case 3u:
      v44 = sub_274721C98(v0 + 16);
      *(v0 + 6008) = v44;
      v45 = *v44;
      *(v0 + 6016) = *v44;
      v149 = *(v44 + 8);
      *(v0 + 6024) = v149;
      v153 = *(v44 + 16);
      *(v0 + 6032) = v153;
      v137 = *(v44 + 24);
      *(v0 + 6040) = v137;
      v141 = *(v44 + 32);
      *(v0 + 6048) = v141;
      v145 = *(v44 + 40);
      *(v0 + 6056) = v145;
      v46 = *(v44 + 48);
      *(v0 + 201) = v46;
      *(v0 + 6144) = v46;
      memcpy((v0 + 4624), (v44 + 56), 0x81uLL);
      v47 = sub_274772C3C(v0 + 4624);
      v133 = v45;
      if (!v47)
      {
        v60 = *(v0 + 5976);
        v123 = *(v0 + 5896);
        v129 = *(v0 + 5904);
        CGSizeMake();
        OUTLINED_FUNCTION_28_12((v0 + 592));
        v61 = sub_274721C98(v0 + 592);
        sub_2747B97A0(v61, v0 + 2896, &unk_280970630, &qword_274A13560);

        OUTLINED_FUNCTION_29_12((v0 + 2704));
        sub_27477D3E8(v0 + 2704);
        memcpy(__dst, (v0 + 2704), 0xB9uLL);
        v62 = type metadata accessor for SmartShortcutPickerSelectedEntry(0);
        OUTLINED_FUNCTION_21_15(v60, v63, v64, v62);
        sub_27477C094(v45, v149, v153, v137, v141, v145, v46);
        sub_274772B38(v44 + 56, v0 + 5032);
        sub_2748AC444(__dst, v60, v123, (v0 + 5696), v129);
        sub_274772B94(v44 + 56);
        sub_27477CABC(v45, v149, v153, v137, v141, v145, v46);
        sub_2747359D0(v60, &unk_280969260, &qword_274A14AC0);
        OUTLINED_FUNCTION_40_10((v0 + 2512), v65, v66, v67, v68, v69, v70, v71, v101, v104, v108, v112, v116, v123, v129, v45, v137, v141, v145, v149, v153);
        v23 = v0 + 2512;
        goto LABEL_13;
      }

      if (v47 != 1)
      {
        LODWORD(v126) = v46;
        CGSizeMake();
        v73 = *(v72 + 16);
        v124 = *(v72 + 24);
        v74 = *(v72 + 48);
        OUTLINED_FUNCTION_28_12((v0 + 1552));
        v75 = sub_274721C98(v0 + 1552);
        sub_2747B97A0(v75, v0 + 1744, &unk_280970630, &qword_274A13560);

        if (v74 > 1)
        {
          v88 = *(v0 + 5968);
          v111 = v73;
          v89 = *(v0 + 5944);
          v90 = *(v0 + 5936);
          v107 = *(v0 + 5904);
          v91 = *(v0 + 5896);
          v92 = sub_27471CF08(0, &qword_28096D498, 0x277D7CA78);
          *(v0 + 5880) = &type metadata for SmartShortcutPickerOpenFolderConfigurationResolver;
          *(v0 + 5888) = &off_28839E530;
          *(v0 + 5856) = v92;
          v115 = *__swift_project_boxed_opaque_existential_1((v0 + 5856), &type metadata for SmartShortcutPickerOpenFolderConfigurationResolver);
          sub_2747B960C(v0 + 5856, v0 + 5816);
          v93 = v88;
          sub_2748AF558(v91, v88, type metadata accessor for SmartShortcutPickerEntry);
          v94 = (*(v90 + 80) + 72) & ~*(v90 + 80);
          v95 = (v94 + v89 + 71) & 0xFFFFFFFFFFFFFFF8;
          v96 = swift_allocObject();
          sub_2747A45FC((v0 + 5816), v96 + 16);
          *(v96 + 56) = v111;
          *(v96 + 64) = v124;
          sub_2748AF668(v93, v96 + v94, type metadata accessor for SmartShortcutPickerEntry);
          v97 = (v96 + ((v94 + v89 + 7) & 0xFFFFFFFFFFFFFFF8));
          v98 = *(v0 + 5712);
          *v97 = *(v0 + 5696);
          v97[1] = v98;
          v97[2] = *(v0 + 5728);
          *(v97 + 41) = *(v0 + 5737);
          *(v96 + v95) = v107;
          v99 = v96 + ((v95 + 15) & 0xFFFFFFFFFFFFFFF8);
          *&v100 = v45;
          *(&v100 + 1) = v149;
          *&v98 = v153;
          *(&v98 + 1) = v137;
          *v99 = v100;
          *(v99 + 16) = v98;
          *(v99 + 32) = v141;
          *(v99 + 40) = v145;
          *(v99 + 48) = *(v0 + 6144);
          sub_27477C094(v45, v149, v153, v137, v141, v145, v126);

          sub_2747B24E0(v0 + 5696, v0 + 5568);

          sub_27486DCE8(v115, sub_2748AF3F4, v96);
          sub_27477CABC(v45, v149, v153, v137, v141, v145, v126);
          sub_274772B94(v44 + 56);

          __swift_destroy_boxed_opaque_existential_0((v0 + 5856));
          goto LABEL_14;
        }

        v76 = *(v0 + 5976);
        v119 = *(v0 + 5896);
        v125 = *(v0 + 5904);
        OUTLINED_FUNCTION_29_12((v0 + 2320));
        sub_27477D3E8(v0 + 2320);
        memcpy(__dst, (v0 + 2320), 0xB9uLL);
        v77 = type metadata accessor for SmartShortcutPickerSelectedEntry(0);
        OUTLINED_FUNCTION_21_15(v76, v78, v79, v77);
        sub_27477C094(v133, v149, v153, v137, v141, v145, v126);
        sub_274772B38(v44 + 56, v0 + 4896);
        sub_2748AC444(__dst, v76, v119, (v0 + 5696), v125);
        sub_274772B94(v44 + 56);
        sub_27477CABC(v133, v149, v153, v137, v141, v145, v126);
        sub_2747359D0(v76, &unk_280969260, &qword_274A14AC0);
        OUTLINED_FUNCTION_40_10((v0 + 2128), v80, v81, v82, v83, v84, v85, v86, v101, v104, v108, v112, v119, v125, v126, v133, v137, v141, v145, v149, v153);
        v23 = v0 + 2128;
LABEL_13:
        sub_2747EBF14(v23);
LABEL_14:
        OUTLINED_FUNCTION_11_20();

        OUTLINED_FUNCTION_48_0();

        return v87();
      }

      CGSizeMake();
      v49 = v48;
      *(v0 + 6064) = v48;
      *(v0 + 6072) = *v48;
      *(v0 + 6080) = v48[1];
      *(v0 + 6088) = v48[2];
      *(v0 + 6096) = v48[3];
      memcpy((v0 + 5480), v48 + 4, 0x58uLL);
      *(v0 + 6104) = v49[15];
      *&v50 = v45;
      *(&v50 + 1) = v149;
      *&v51 = v153;
      *(&v51 + 1) = v137;
      *(v0 + 5776) = v51;
      *(v0 + 5760) = v50;
      *(v0 + 5792) = v141;
      *(v0 + 5800) = v145;
      *(v0 + 5808) = *(v0 + 6144);
      memcpy((v0 + 5168), (v44 + 56), 0x81uLL);
      sub_274772ADC(v0 + 1936, v0 + 400);

      sub_27478C42C((v49 + 4), v0 + 5392);

      v52 = swift_task_alloc();
      *(v0 + 6112) = v52;
      *v52 = v0;
      v52[1] = sub_2748AB95C;

      return SmartShortcutPickerActionTemplate.fullyFormedAction(with:)();
    default:
      v2 = OUTLINED_FUNCTION_23_14();
      v3 = *v2;
      v4 = v2[1];
      OUTLINED_FUNCTION_28_12((v0 + 208));
      sub_274721C98(v0 + 208);

      *(v0 + 3088) = v3;
      *(v0 + 3096) = v4;
      sub_2748AF4D4(v0 + 3088);
      memcpy(__dst, (v0 + 3088), 0xB9uLL);
      v5 = type metadata accessor for SmartShortcutPickerSelectedEntry(0);
      v8 = OUTLINED_FUNCTION_21_15(v1, v6, v7, v5);
      OUTLINED_FUNCTION_22_16(v8, v9, v10, v11, v12, v13, v14, v15, v101, v104, v108, v112, v116, v120, v126, v130, v134, v138, v142, v146, v150);
      sub_2747359D0(v1, &unk_280969260, &qword_274A14AC0);
      OUTLINED_FUNCTION_40_10((v0 + 3280), v16, v17, v18, v19, v20, v21, v22, v102, v105, v109, v113, v117, v121, v127, v131, v135, v139, v143, v147, v151);
      v23 = v0 + 3280;
      goto LABEL_13;
  }
}

uint64_t sub_2748AB95C()
{
  OUTLINED_FUNCTION_21_1();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  *v4 = v3;
  *v4 = *v1;
  v3[765] = v5;
  v3[766] = v0;

  if (v0)
  {

    v6 = v3[750];
    v7 = v3[749];
    v8 = sub_2748AC338;
  }

  else
  {
    v6 = v3[750];
    v7 = v3[749];
    v8 = sub_2748ABA9C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2748ABA9C()
{
  v43 = v0;
  if (*(*(v0 + 6064) + 72))
  {
    v40 = *(v0 + 6120);
    v36 = *(v0 + 201);
    v34 = *(v0 + 6048);
    v35 = *(v0 + 6056);
    v1 = *(v0 + 6008);
    v2 = *(v0 + 5976);
    v37 = *(v0 + 5896);
    v38 = *(v0 + 5904);
    v39 = *(v0 + 6064);

    memcpy((v0 + 1360), v1, 0xB9uLL);
    sub_27477D3E8(v0 + 1360);
    memcpy(__dst, (v0 + 1360), 0xB9uLL);
    v3 = type metadata accessor for SmartShortcutPickerSelectedEntry(0);
    OUTLINED_FUNCTION_21_15(v2, v4, v5, v3);
    OUTLINED_FUNCTION_16_13();
    sub_27477C094(v6, v7, v8, v9, v34, v35, v36);
    sub_274772B38(v1 + 56, v0 + 4760);
    sub_2748AC444(__dst, v2, v37, (v0 + 5696), v38);
    sub_27478C488(v39 + 32);
    sub_274772B94(v1 + 56);
    OUTLINED_FUNCTION_16_13();
    sub_27477CABC(v10, v11, v12, v13, v34, v35, v36);

    sub_2747359D0(v2, &unk_280969260, &qword_274A14AC0);
    memcpy((v0 + 1168), __dst, 0xB9uLL);
    sub_2747EBF14(v0 + 1168);
    OUTLINED_FUNCTION_11_20();

    OUTLINED_FUNCTION_48_0();

    return v14();
  }

  else
  {
    v16 = *(v0 + 5960);
    v17 = *(v0 + 5896);
    sub_2749FA3D4();
    OUTLINED_FUNCTION_2_1();
    sub_2748AF558(v17, v16, v18);
    v19 = sub_2749FA4D4();
    v20 = sub_2749FD2E4();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 5928);
    v23 = *(v0 + 5920);
    v24 = *(v0 + 5912);
    if (v21)
    {
      v41 = *(v0 + 5928);
      v25 = OUTLINED_FUNCTION_30_9();
      v26 = swift_slowAlloc();
      __dst[0] = v26;
      *v25 = 136315138;
      OUTLINED_FUNCTION_37_9((v0 + 3472));
      memcpy((v0 + 784), (v0 + 3472), 0xB9uLL);
      sub_274772ADC(v0 + 3472, v0 + 976);
      v27 = sub_2749FCDC4();
      v29 = v28;
      OUTLINED_FUNCTION_0_30();
      v30 = sub_2747AF460(v27, v29, __dst);

      *(v25 + 4) = v30;
      OUTLINED_FUNCTION_37_10(&dword_274719000, v31, v32, "User selected configurable entry: %s");
      __swift_destroy_boxed_opaque_existential_0(v26);
      OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_31();

      (*(v23 + 8))(v41, v24);
    }

    else
    {

      OUTLINED_FUNCTION_0_30();
      (*(v23 + 8))(v22, v24);
    }

    v33 = swift_task_alloc();
    *(v0 + 6136) = v33;
    *v33 = v0;
    v33[1] = sub_2748ABE70;

    return sub_2748AE110();
  }
}

uint64_t sub_2748ABE70()
{
  OUTLINED_FUNCTION_79();
  v1 = *v0;
  OUTLINED_FUNCTION_59_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_59_1();
  *v5 = v4;
  *(v7 + 202) = v6;

  v8 = *(v1 + 6000);
  v9 = *(v1 + 5992);

  return MEMORY[0x2822009F8](sub_2748ABF8C, v9, v8);
}

uint64_t sub_2748ABF8C()
{
  v1 = *(v0 + 202);

  if (v1 == 1)
  {
    v48 = *(v0 + 6128);
    v2 = *(v0 + 6120);
    v39 = *(v0 + 6088);
    v37 = *(v0 + 6072);
    v3 = *(v0 + 6064);
    v42 = *(v0 + 201);
    v38 = *(v0 + 6056);
    v4 = *(v0 + 6048);
    v5 = *(v0 + 6040);
    v6 = *(v0 + 6032);
    v7 = *(v0 + 6024);
    v8 = *(v0 + 6016);
    v36 = *(v0 + 5952);
    v9 = *(v0 + 5944);
    v10 = *(v0 + 5936);
    v40 = *(v0 + 5904);
    v41 = v3 + 32;
    v43 = *(v3 + 40);
    v44 = *(v3 + 32);
    v33 = *(v0 + 6096);
    OUTLINED_FUNCTION_2_1();
    v35 = v11;
    sub_2748AF558(v12, v13, v14);
    v15 = (*(v10 + 80) + 265) & ~*(v10 + 80);
    v34 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    memcpy((v16 + 24), (v0 + 5480), 0x58uLL);
    *(v16 + 112) = v37;
    *(v16 + 128) = v39;
    *(v16 + 136) = v33;
    *(v16 + 152) = v8;
    *(v16 + 160) = v7;
    *(v16 + 168) = v6;
    *(v16 + 176) = v5;
    *(v16 + 184) = v4;
    *(v16 + 192) = v38;
    *(v16 + 200) = *(v0 + 6144);
    v17 = *(v0 + 5712);
    *(v16 + 208) = *(v0 + 5696);
    *(v16 + 224) = v17;
    *(v16 + 240) = *(v0 + 5728);
    *(v16 + 249) = *(v0 + 5737);
    sub_2748AF668(v36, v16 + v15, v35);
    *(v16 + v34) = v40;
    sub_27477C094(v8, v7, v6, v5, v4, v38, v42);
    sub_2747B24E0(v0 + 5696, v0 + 5632);

    sub_27478C42C(v41, v0 + 5304);
    sub_27486DBA4(v2, v44, v43, sub_2748AF330, v16);
    v46 = *(v0 + 6120);
    LOBYTE(v8) = *(v0 + 201);
    v18 = *(v0 + 6056);
    v19 = *(v0 + 6048);
    v20 = *(v0 + 6008);
    sub_27478C488(*(v0 + 6064) + 32);
    OUTLINED_FUNCTION_16_13();
    sub_27477CABC(v21, v22, v23, v24, v19, v18, v8);

    sub_274772B94(v20 + 56);

    if (v48)
    {

      OUTLINED_FUNCTION_48_0();
      goto LABEL_6;
    }
  }

  else
  {
    v26 = *(v0 + 6064);
    v49 = *(v0 + 201);
    v45 = *(v0 + 6048);
    v47 = *(v0 + 6056);
    v27 = *(v0 + 6040);
    v28 = *(v0 + 6032);
    v29 = *(v0 + 6024);
    v30 = *(v0 + 6016);
    v31 = *(v0 + 6008);

    sub_27478C488(v26 + 32);

    sub_274772B94(v31 + 56);
    sub_27477CABC(v30, v29, v28, v27, v45, v47, v49);
  }

  OUTLINED_FUNCTION_11_20();

  OUTLINED_FUNCTION_48_0();
LABEL_6:

  return v25();
}

uint64_t sub_2748AC338()
{
  v1 = *(v0 + 6064);
  v2 = *(v0 + 201);
  v3 = *(v0 + 6056);
  v4 = *(v0 + 6048);
  v5 = *(v0 + 6040);
  v6 = *(v0 + 6032);
  v7 = *(v0 + 6024);
  v8 = *(v0 + 6016);
  v9 = *(v0 + 6008);

  sub_27478C488(v1 + 32);
  sub_274772B94(v9 + 56);
  sub_27477CABC(v8, v7, v6, v5, v4, v3, v2);

  OUTLINED_FUNCTION_48_0();

  return v10();
}

uint64_t sub_2748AC444(const void *a1, uint64_t a2, char *a3, __int128 *a4, uint64_t a5)
{
  v26 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280969260, &qword_274A14AC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - v10;
  v12 = type metadata accessor for SmartShortcutPickerSelectedEntry(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v31, a1, 0xB9uLL);
  sub_2747B97A0(a2, v11, &unk_280969260, &qword_274A14AC0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    memcpy(v28, a3, 0xB9uLL);
    v29 = *v26;
    v30 = *(v26 + 16);
    v15 = type metadata accessor for SmartShortcutPickerEntry(0);
    v16 = *(v15 + 20);
    v17 = *&a3[*(v15 + 24)];
    v18 = *(v12 + 28);
    v19 = sub_2749FA0F4();
    (*(*(v19 - 8) + 16))(&v14[v18], &a3[v16], v19);
    __swift_storeEnumTagSinglePayload(&v14[v18], 0, 1, v19);
    memcpy(v14, v28, 0xB9uLL);
    *(v14 + 12) = v29;
    v14[208] = v30;
    *(v14 + 27) = v17;
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      sub_274772ADC(v28, v27);
      sub_2748AF4FC(&v29, v27);
      v20 = v17;
    }

    else
    {
      sub_274772ADC(v28, v27);
      sub_2748AF4FC(&v29, v27);
      v21 = v17;
      sub_2747359D0(v11, &unk_280969260, &qword_274A14AC0);
    }
  }

  else
  {
    sub_2748AF668(v11, v14, type metadata accessor for SmartShortcutPickerSelectedEntry);
  }

  (*(a5 + 128))(v31, v14);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = *(a5 + 24);
    ObjectType = swift_getObjectType();
    (*(v22 + 8))(a5, ObjectType, v22);
    swift_unknownObjectRelease();
  }

  return sub_2748AF614(v14, type metadata accessor for SmartShortcutPickerSelectedEntry);
}

void *sub_2748AC72C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, char *a8, __int128 *a9, uint64_t a10, __int128 *a11)
{
  v72 = a6;
  v73 = a3;
  v80 = a10;
  v83 = a9;
  v14 = *a11;
  v78 = a11[1];
  v79 = v14;
  v15 = *(a11 + 4);
  v76 = *(a11 + 5);
  v77 = v15;
  v75 = *(a11 + 48);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280969260, &qword_274A14AC0);
  MEMORY[0x28223BE20](v16 - 8);
  v81 = &v66 - v17;
  v18 = sub_2749FA4E4();
  v74 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for SmartShortcutPickerSelectedEntry(0);
  result = MEMORY[0x28223BE20](v82);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a4)
  {
    return result;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    return result;
  }

  v24 = result;
  v71 = a8;
  swift_unknownObjectRetain_n();
  v25 = [v24 value];
  if (!v25)
  {
    return swift_unknownObjectRelease_n();
  }

  v26 = v25;
  v70 = a7;
  v27 = [v25 identifier];

  if (!v27)
  {
    return swift_unknownObjectRelease_n();
  }

  v67 = v18;
  v69 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v29 = v28;

  swift_unknownObjectRelease();
  objc_opt_self();
  v30 = swift_dynamicCastObjCClass();
  if (v30)
  {
    v31 = v30;
    v68 = v29;
    swift_unknownObjectRetain();
    v32 = [v31 value];
    if (v32)
    {
      v33 = v32;
      v34 = [v32 displayString];

      v35 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v37 = v36;

      sub_2749FCE14("Show %@", 7);
      if (qword_28159E3A8 != -1)
      {
        swift_once();
      }

      v66 = qword_28159E448;
      v38 = sub_2749FCD64();
      v39 = sub_2749FCD64();

      v40 = [v66 localizedStringForKey:v38 value:v39 table:0];

      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628, &qword_274A0FF40);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_274A0EF10;
      *(v41 + 56) = MEMORY[0x277D837D0];
      *(v41 + 64) = sub_27475C4F4();
      *(v41 + 32) = v35;
      *(v41 + 40) = v37;
      v42 = sub_2749FCD74();
      v44 = v43;
      v66 = v43;
      swift_unknownObjectRelease();

      v88[0] = v42;
      v88[1] = v44;
      v88[2] = v72;
      v88[3] = v70;
      v88[4] = v69;
      v45 = v68;
      v88[5] = v68;
      LOBYTE(v88[6]) = 0;
      sub_2748AF4F0(v88);
      v46 = v71;
      memcpy(v89, v71, 0xB9uLL);
      v90 = *v83;
      v91 = *(v83 + 16);
      v47 = *(v82 + 28);
      v48 = *(type metadata accessor for SmartShortcutPickerEntry(0) + 20);
      v49 = sub_2749FA0F4();
      (*(*(v49 - 8) + 16))(&v23[v47], &v46[v48], v49);
      v50 = &v23[v47];
      v51 = v69;
      __swift_storeEnumTagSinglePayload(v50, 0, 1, v49);
      memcpy(v23, v89, 0xB9uLL);
      *(v23 + 12) = v90;
      v23[208] = v91;
      v52 = v73;
      *(v23 + 27) = v73;

      sub_274772ADC(v89, v87);
      sub_2748AF4FC(&v90, v87);
      v53 = v52;
      sub_2749FA3D4();

      sub_2747E2DB4(v51, v45, 0);
      v54 = sub_2749FA4D4();
      LODWORD(v45) = sub_2749FD2E4();

      v55 = v51;
      v56 = v68;
      sub_2747D2EB8(v55, v68, 0);
      LODWORD(v73) = v45;
      v57 = v45;
      v58 = v54;
      if (os_log_type_enabled(v54, v57))
      {
        v59 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *&v86[0] = v72;
        *v59 = 136315138;
        memcpy(v87, v88, 0x81uLL);

        sub_2747E2DB4(v69, v56, 0);
        v60 = sub_2749FCDC4();
        v62 = sub_2747AF460(v60, v61, v86);
        v56 = v68;

        *(v59 + 4) = v62;
        _os_log_impl(&dword_274719000, v58, v73, "User configured entry: %s", v59, 0xCu);
        v63 = v72;
        __swift_destroy_boxed_opaque_existential_0(v72);
        MEMORY[0x277C61040](v63, -1, -1);
        MEMORY[0x277C61040](v59, -1, -1);
      }

      else
      {
      }

      (*(v74 + 8))(v20, v67);
      v85[136] = v75 & 1;
      memcpy(&v85[7], v88, 0x81uLL);
      v86[1] = v78;
      v86[0] = v79;
      *&v86[2] = v77;
      *(&v86[2] + 1) = v76;
      LOBYTE(v86[3]) = v75 & 1;
      memcpy(&v86[3] + 1, v85, 0x88uLL);
      sub_27477D3E8(v86);
      memcpy(v84, v86, 0xB9uLL);
      v64 = v81;
      sub_2748AF558(v23, v81, type metadata accessor for SmartShortcutPickerSelectedEntry);
      __swift_storeEnumTagSinglePayload(v64, 0, 1, v82);

      v65 = v69;
      sub_2747E2DB4(v69, v56, 0);
      sub_2748AF5B8(a11, v87);
      sub_2748AC444(v84, v64, v71, v83, v80);

      sub_2747D2EB8(v65, v56, 0);
      swift_unknownObjectRelease();

      sub_2747359D0(v64, &unk_280969260, &qword_274A14AC0);
      memcpy(v87, v84, 0xB9uLL);
      sub_2747EBF14(v87);
      return sub_2748AF614(v23, type metadata accessor for SmartShortcutPickerSelectedEntry);
    }

    return swift_unknownObjectRelease_n();
  }

  swift_unknownObjectRelease();
}

uint64_t sub_2748ACFA0(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 *a12, __int128 *a13, char *a14, uint64_t a15)
{
  v62 = a8;
  v63 = a3;
  v55 = a7;
  v53 = a1;
  v69 = a15;
  v68 = a14;
  v72 = a13;
  v61 = a11;
  v70 = a10;
  v54 = a9;
  v19 = *a12;
  v59 = a12[1];
  v60 = v19;
  v20 = *(a12 + 4);
  v57 = *(a12 + 5);
  v58 = v20;
  v56 = *(a12 + 48);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280969260, &qword_274A14AC0);
  MEMORY[0x28223BE20](v21 - 8);
  v67 = &v53 - v22;
  v23 = sub_2749FA4E4();
  v65 = *(v23 - 8);
  v66 = v23;
  MEMORY[0x28223BE20](v23);
  v64 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for SmartShortcutPickerSelectedEntry(0);
  MEMORY[0x28223BE20](v73);
  v71 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a6;
  v26 = a6[1];

  v28 = sub_2749FCD64();
  [a5 setParameterState:a4 forKey:v28];

  v84 = *(a6 + 1);
  v29 = a4;
  if (a4)
  {
    if (a2)
    {
      v30 = v53;
    }

    else
    {
      v30 = 0;
    }

    if (a2)
    {
      a4 = a2;
    }

    else
    {
      a4 = 0xE000000000000000;
    }

    sub_2748AF6C8(&v84, v80);

    swift_unknownObjectRetain();
    v31 = sub_2749552B4(a5);
    if (v32)
    {
      v33 = v31;
    }

    else
    {
      v33 = 0;
    }

    v34 = 0xE000000000000000;
    if (v32)
    {
      v34 = v32;
    }
  }

  else
  {

    v30 = 0;
    v33 = 0;
    v34 = 0;
  }

  v83 = *(a6 + 9);
  v77[3] = v84;
  *(&v77[6] + 8) = v83;
  *&v77[0] = v55;
  *(&v77[0] + 1) = v62;
  *&v77[1] = v54;
  *(&v77[1] + 1) = v70;
  *&v77[2] = v27;
  *(&v77[2] + 1) = v26;
  *&v77[4] = v30;
  *(&v77[4] + 1) = a4;
  *&v77[5] = v33;
  *(&v77[5] + 1) = v34;
  *&v77[6] = v29;
  *(&v77[7] + 1) = v61;
  memcpy(v78, v77, 0x80uLL);
  sub_274860690(v78);
  v79[0] = v60;
  v79[1] = v59;
  *&v79[2] = v58;
  *(&v79[2] + 1) = v57;
  LOBYTE(v79[3]) = v56 & 1;
  memcpy(&v79[3] + 8, v78, 0x81uLL);
  memcpy(v80, v79, 0xB9uLL);
  sub_274754670(v80);
  v81 = *v72;
  v82 = *(v72 + 16);
  v35 = *(v73 + 28);
  v36 = *(type metadata accessor for SmartShortcutPickerEntry(0) + 20);
  v37 = sub_2749FA0F4();
  v38 = v71;
  v39 = v68;
  (*(*(v37 - 8) + 16))(v71 + v35, &v68[v36], v37);
  __swift_storeEnumTagSinglePayload(v38 + v35, 0, 1, v37);
  memcpy(v38, v80, 0xB9uLL);
  *(v38 + 192) = v81;
  *(v38 + 208) = v82;
  v40 = v63;
  *(v38 + 216) = v63;
  sub_2748AF6C8(&v83, v76);

  sub_2748AF5B8(a12, v76);
  sub_2747B97A0(v77, v76, &unk_28096D4A0, &qword_274A1F0F8);
  sub_2747B97A0(v79, v76, &unk_280970630, &qword_274A13560);
  sub_2748AF4FC(&v81, v76);
  v41 = v40;
  v42 = v64;
  sub_2749FA3D4();
  sub_2747B97A0(v77, v76, &unk_28096D4A0, &qword_274A1F0F8);
  v43 = sub_2749FA4D4();
  v44 = sub_2749FD2E4();
  sub_2747359D0(v77, &unk_28096D4A0, &qword_274A1F0F8);
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v75[0] = v46;
    *v45 = 136315138;
    memcpy(v76, v78, 0x81uLL);
    v47 = sub_2749FCDC4();
    v49 = sub_2747AF460(v47, v48, v75);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_274719000, v43, v44, "User configured entry: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x277C61040](v46, -1, -1);
    MEMORY[0x277C61040](v45, -1, -1);
  }

  else
  {
    sub_2747359D0(v77, &unk_28096D4A0, &qword_274A1F0F8);
  }

  (*(v65 + 8))(v42, v66);
  memcpy(v75, v79, 0xB9uLL);
  sub_27477D3E8(v75);
  memcpy(v74, v75, 0xB9uLL);
  v50 = v71;
  v51 = v67;
  sub_2748AF558(v71, v67, type metadata accessor for SmartShortcutPickerSelectedEntry);
  __swift_storeEnumTagSinglePayload(v51, 0, 1, v73);
  sub_2748AC444(v74, v51, v39, v72, v69);
  sub_2747359D0(v51, &unk_280969260, &qword_274A14AC0);
  memcpy(v76, v74, 0xB9uLL);
  sub_2747EBF14(v76);
  return sub_2748AF614(v50, type metadata accessor for SmartShortcutPickerSelectedEntry);
}

void sub_2748AD634(uint64_t a1, void *a2)
{
  v87 = a2;
  v3 = type metadata accessor for SmartShortcutPickerEntry(0);
  v4 = OUTLINED_FUNCTION_27(v3);
  v83 = v5;
  MEMORY[0x28223BE20](v4);
  v84 = v6;
  v85 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2749F93D4();
  sub_2749F93C4();
  SmartShortcutPickerEntry.associatedBundleIdentifier.getter();
  v7 = sub_2749F93B4();
  v9 = v8;

  v86 = a1;
  if (v9)
  {
    v82 = v7;
    sub_2749FCE14("To choose “%@” open “%@” first.", 39);
    sub_2749FCE14("SystemActionConfigurationExtension", 34);
    OUTLINED_FUNCTION_34_7();
    if (!v10)
    {
      OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
    }

    v11 = qword_28159E448;
    v12 = OUTLINED_FUNCTION_28();
    v13 = OUTLINED_FUNCTION_28();

    v14 = sub_2749FCD64();

    v88 = v11;
    v15 = [v11 localizedStringForKey:v12 value:v13 table:v14];

    v81 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v17 = v16;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628, &qword_274A0FF40);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_274A0F620;
    OUTLINED_FUNCTION_37_9(v91);
    OUTLINED_FUNCTION_37_9(v92);
    switch(sub_274772AD0(v92))
    {
      case 1u:
        sub_274721C98(v92);
        sub_2749FCE14("Create New Shortcut", 19);
        OUTLINED_FUNCTION_14_13();
        v39 = sub_2749FCD64();
        v20 = sub_2749FCD64();

        v40 = [v88 &selRef:v39 presentedViewFrameInContainerViewOfSize:v20 withSizeCalculation:0 + 4];

        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        OUTLINED_FUNCTION_14_13();

        break;
      case 2u:
        v20 = *sub_274721C98(v92);
        OUTLINED_FUNCTION_10_24();
        v30 = *sub_274721C98(v90);
        v31 = [v20 name];
        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        OUTLINED_FUNCTION_14_13();

        sub_274772BE8(v91);
        break;
      case 3u:
        v32 = sub_274721C98(v92);
        v33 = *v32;
        v15 = *(v32 + 8);
        v80 = v17;
        v35 = *(v32 + 16);
        v34 = *(v32 + 24);
        v37 = *(v32 + 32);
        v36 = *(v32 + 40);
        v79 = *(v32 + 48);
        OUTLINED_FUNCTION_10_24();
        v38 = sub_274721C98(v90);
        sub_2747B97A0(v38, v89, &unk_280970630, &qword_274A13560);
        sub_27477CABC(v33, v15, v35, v34, v37, v36, v79);
        memcpy(v89, (v32 + 56), 0x81uLL);
        v20 = v89;
        SmartShortcutPickerActionConfiguration.displayString.getter();
        OUTLINED_FUNCTION_14_13();
        sub_274772B94(v32 + 56);
        break;
      default:
        v19 = sub_274721C98(v92);
        v20 = *(v19 + 16);
        v15 = *(v19 + 24);
        OUTLINED_FUNCTION_10_24();
        sub_274721C98(v90);

        break;
    }

    v41 = MEMORY[0x277D837D0];
    *(v18 + 56) = MEMORY[0x277D837D0];
    v42 = sub_27475C4F4();
    *(v18 + 32) = v20;
    *(v18 + 40) = v15;
    *(v18 + 96) = v41;
    *(v18 + 104) = v42;
    v43 = v82;
    *(v18 + 64) = v42;
    *(v18 + 72) = v43;
    *(v18 + 80) = v9;
    v44 = sub_2749FCDB4();
    v46 = v45;
  }

  else
  {
    sub_2749FCE14("To choose “%@” open this app first.", 39);
    sub_2749FCE14("SystemActionConfigurationExtension", 34);
    OUTLINED_FUNCTION_34_7();
    if (!v10)
    {
      OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
    }

    v21 = qword_28159E448;
    v22 = OUTLINED_FUNCTION_28();
    v23 = OUTLINED_FUNCTION_28();

    v24 = sub_2749FCD64();

    v88 = v21;
    v25 = [v21 localizedStringForKey:v22 value:v23 table:v24];

    v26 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628, &qword_274A0FF40);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_274A0EF10;
    OUTLINED_FUNCTION_37_9(v91);
    OUTLINED_FUNCTION_37_9(v92);
    switch(sub_274772AD0(v92))
    {
      case 1u:
        sub_274721C98(v92);
        sub_2749FCE14("Create New Shortcut", 19);
        v25 = sub_2749FCD64();
        v29 = sub_2749FCD64();

        v56 = [v88 &selRef:v25 presentedViewFrameInContainerViewOfSize:v29 withSizeCalculation:0 + 4];

        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        OUTLINED_FUNCTION_14_13();

        break;
      case 2u:
        v29 = *sub_274721C98(v92);
        OUTLINED_FUNCTION_10_24();
        v47 = *sub_274721C98(v90);
        v48 = [v29 name];
        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        OUTLINED_FUNCTION_14_13();

        sub_274772BE8(v91);
        break;
      case 3u:
        v49 = sub_274721C98(v92);
        v50 = *v49;
        v51 = *(v49 + 8);
        v25 = *(v49 + 16);
        v52 = *(v49 + 24);
        v82 = v26;
        v54 = *(v49 + 32);
        v53 = *(v49 + 40);
        LODWORD(v81) = *(v49 + 48);
        OUTLINED_FUNCTION_10_24();
        v55 = sub_274721C98(v90);
        sub_2747B97A0(v55, v89, &unk_280970630, &qword_274A13560);
        sub_27477CABC(v50, v51, v25, v52, v54, v53, v81);
        memcpy(v89, (v49 + 56), 0x81uLL);
        v29 = v89;
        SmartShortcutPickerActionConfiguration.displayString.getter();
        OUTLINED_FUNCTION_14_13();
        sub_274772B94(v49 + 56);
        break;
      default:
        v28 = sub_274721C98(v92);
        v29 = *(v28 + 16);
        v25 = *(v28 + 24);
        OUTLINED_FUNCTION_10_24();
        sub_274721C98(v90);

        break;
    }

    *(v27 + 56) = MEMORY[0x277D837D0];
    *(v27 + 64) = sub_27475C4F4();
    *(v27 + 32) = v29;
    *(v27 + 40) = v25;
    v44 = sub_2749FCDB4();
    v46 = v57;
  }

  sub_27471CF08(0, &unk_28096DB70, 0x277D75110);
  v58 = sub_274856E7C(0, 0, v44, v46, 1);
  sub_27471CF08(0, &qword_28096C980, 0x277D750F8);
  sub_2749FCE14("Cancel", 6);
  sub_2749FCE14("SystemActionConfigurationExtension", 34);
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
  }

  v59 = sub_2749FCD64();
  v60 = sub_2749FCD64();

  v61 = sub_2749FCD64();

  v62 = v88;
  v63 = [v88 localizedStringForKey:v59 value:v60 table:v61];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v64 = OUTLINED_FUNCTION_29_1();
  v66 = sub_274856F34(v64, v65, 1, 0, 0);
  [v58 addAction_];

  sub_2749FCE14("Open App", 8);
  sub_2749FCE14("SystemActionConfigurationExtension", 34);
  OUTLINED_FUNCTION_29_1();
  v67 = sub_2749FCD64();
  OUTLINED_FUNCTION_29_1();
  v68 = sub_2749FCD64();

  v69 = sub_2749FCD64();

  v70 = [v62 localizedStringForKey:v67 value:v68 table:v69];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v71 = v85;
  sub_2748AF558(v86, v85, type metadata accessor for SmartShortcutPickerEntry);
  v72 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v73 = swift_allocObject();
  sub_2748AF668(v71, v73 + v72, type metadata accessor for SmartShortcutPickerEntry);
  v74 = OUTLINED_FUNCTION_29_1();
  v77 = sub_274856F34(v74, v75, 0, v76, v73);
  [v58 addAction_];

  [v87 presentViewController:v58 animated:1 completion:0];
}

void sub_2748AE02C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967618, &qword_274A151C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = SmartShortcutPickerEntry.associatedBundleIdentifier.getter();
  v5 = v4;
  v6 = sub_2749F9064();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v6);
  v7 = objc_allocWithZone(MEMORY[0x277CFC240]);
  v8 = sub_2748AF0F0(v3, v5, 0, v2, 0);
  [v8 performWithCompletionHandler_];
}

uint64_t sub_2748AE110()
{
  OUTLINED_FUNCTION_79();
  v0[119] = v1;
  v2 = sub_2749FA4E4();
  v0[120] = v2;
  OUTLINED_FUNCTION_27(v2);
  v0[121] = v3;
  v0[122] = swift_task_alloc();
  v0[123] = sub_2749FD0A4();
  v0[124] = sub_2749FD094();
  v5 = sub_2749FD044();
  v0[125] = v5;
  v0[126] = v4;

  return MEMORY[0x2822009F8](sub_2748AE200, v5, v4);
}

uint64_t sub_2748AE200()
{
  memcpy((v0 + 80), *(v0 + 952), 0xB9uLL);
  switch(sub_274772AD0(v0 + 80))
  {
    case 1u:
    case 2u:
      sub_274721C98(v0 + 80);
      goto LABEL_4;
    case 3u:
      v3 = *(v0 + 952);
      v4 = sub_274721C98(v0 + 80);
      memcpy((v0 + 272), v3, 0xB9uLL);
      v5 = sub_274721C98(v0 + 272);
      v6 = *v4;
      v7 = *(v4 + 48);
      sub_2747B97A0(v5, v0 + 464, &unk_280970630, &qword_274A13560);
      sub_274772B94(v4 + 56);
      if ((v7 & 1) == 0)
      {

LABEL_5:

        OUTLINED_FUNCTION_20_14();

        return v1(1);
      }

      v8 = [v6 bundleIdentifier];
      if (!v8)
      {
        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v8 = sub_2749FCD64();
      }

      v9 = [objc_opt_self() applicationWithBundleIdentifier_];
      *(v0 + 1016) = v9;

      if (![v9 isLocked])
      {
        v12 = *(v0 + 1016);

        goto LABEL_5;
      }

      v10 = [objc_opt_self() sharedGuard];
      *(v0 + 1024) = v10;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 936;
      *(v0 + 24) = sub_2748AE558;
      v11 = swift_continuation_init();
      *(v0 + 904) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D488, &qword_274A1F0E0);
      *(v0 + 880) = v11;
      *(v0 + 848) = MEMORY[0x277D85DD0];
      *(v0 + 856) = 1107296256;
      *(v0 + 864) = sub_2748AECCC;
      *(v0 + 872) = &block_descriptor_30;
      [v10 getIsChallengeCurrentlyRequiredForSubject:v9 completion:v0 + 848];

      return MEMORY[0x282200938](v0 + 16);
    default:
      sub_274721C98(v0 + 80);
      OUTLINED_FUNCTION_29_12((v0 + 656));
      sub_274721C98(v0 + 656);

LABEL_4:

      goto LABEL_5;
  }
}

uint64_t sub_2748AE558()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_59_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 1032) = v4;
  v5 = v3[126];
  v6 = v3[125];
  if (v4)
  {
    v7 = sub_2748AE98C;
  }

  else
  {
    v7 = sub_2748AE67C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2748AE67C()
{
  v1 = v0[128];
  v2 = v0[117];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    v4 = v0[127];
    v5 = sub_2749FD094();
    v0[130] = v5;
    v6 = swift_task_alloc();
    v0[131] = v6;
    *(v6 + 16) = v4;
    v7 = swift_task_alloc();
    v0[132] = v7;
    *v7 = v0;
    v7[1] = sub_2748AE7FC;
    v8 = MEMORY[0x277D85700];
    v9 = MEMORY[0x277D839B0];

    return MEMORY[0x2822008A0](v0 + 265, v5, v8, 0xD000000000000014, 0x8000000274A312A0, sub_2748AF21C, v6, v9);
  }

  else
  {
    v10 = v0[127];

    OUTLINED_FUNCTION_20_14();

    return v11(1);
  }
}

uint64_t sub_2748AE7FC()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_21_1();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_59_1();
  *v6 = v5;
  v3[133] = v0;

  if (v0)
  {
    v7 = v3[126];
    v8 = v3[125];
    v9 = sub_2748AEB28;
  }

  else
  {

    v7 = v3[126];
    v8 = v3[125];
    v9 = sub_2748AE91C;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2748AE91C()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 1016);

  v2 = *(v0 + 265);

  OUTLINED_FUNCTION_20_14();

  return v3(v2);
}

uint64_t sub_2748AE98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_17();
  a21 = v26;
  a22 = v27;
  OUTLINED_FUNCTION_18_0();
  a20 = v22;
  v28 = v22[128];
  v29 = v22[127];

  swift_willThrow();

  v30 = v22[129];
  v31 = v22[122];
  sub_2749FA3D4();
  v32 = v30;
  v33 = sub_2749FA4D4();
  v34 = sub_2749FD2C4();

  if (os_log_type_enabled(v33, v34))
  {
    a9 = v22[122];
    v35 = v22[121];
    v36 = v22[120];
    OUTLINED_FUNCTION_30_9();
    v37 = OUTLINED_FUNCTION_25_9();
    a10 = v37;
    OUTLINED_FUNCTION_39_10(4.8149e-34);
    v38 = sub_2749FDD84();
    v40 = sub_2747AF460(v38, v39, &a10);

    *(v25 + 4) = v40;
    OUTLINED_FUNCTION_38_11(&dword_274719000, v41, v42, "App protection check failed due to %s");
    __swift_destroy_boxed_opaque_existential_0(v37);
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_31();

    (*(v35 + 8))(a9, v36);
  }

  else
  {
    OUTLINED_FUNCTION_36_11();

    (*(v24 + 8))(v31, v23);
  }

  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_4();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2748AEB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_17();
  a21 = v26;
  a22 = v27;
  OUTLINED_FUNCTION_18_0();
  a20 = v22;
  v28 = v22[127];

  v29 = v22[133];
  v30 = v22[122];
  sub_2749FA3D4();
  v31 = v29;
  v32 = sub_2749FA4D4();
  v33 = sub_2749FD2C4();

  if (os_log_type_enabled(v32, v33))
  {
    a10 = v22[122];
    v34 = v22[121];
    v35 = v22[120];
    OUTLINED_FUNCTION_30_9();
    v36 = OUTLINED_FUNCTION_25_9();
    a11 = v36;
    OUTLINED_FUNCTION_39_10(4.8149e-34);
    v37 = sub_2749FDD84();
    v39 = sub_2747AF460(v37, v38, &a11);

    *(v25 + 4) = v39;
    OUTLINED_FUNCTION_38_11(&dword_274719000, v40, v41, "App protection check failed due to %s");
    __swift_destroy_boxed_opaque_existential_0(v36);
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_31();

    (*(v34 + 8))(a10, v35);
  }

  else
  {
    OUTLINED_FUNCTION_36_11();

    (*(v24 + 8))(v30, v23);
  }

  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_4();

  return v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14);
}

void *sub_2748AECCC(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_27488721C();
  }

  else if (a2)
  {
    v7 = a2;

    return sub_274887218();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2748AED5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D490, &unk_274A1F0E8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = [objc_opt_self() sharedGuard];
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_2748AF224;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274878F18;
  aBlock[3] = &block_descriptor_12_3;
  v11 = _Block_copy(aBlock);

  [v8 authenticateForSubject:a2 completion:v11];
  _Block_release(v11);
}

uint64_t sub_2748AEF38(char a1, id a2)
{
  if ((a1 & 1) != 0 || !a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D490, &unk_274A1F0E8);
    return sub_2749FD064();
  }

  else
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D490, &unk_274A1F0E8);
    return sub_2749FD054();
  }
}

uint64_t SmartShortcutPickerSelectionCoordinator.deinit()
{
  sub_2747545BC(v0 + 16);
  sub_2747D2480(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));

  return v0;
}

uint64_t SmartShortcutPickerSelectionCoordinator.__deallocating_deinit()
{
  SmartShortcutPickerSelectionCoordinator.deinit();

  return MEMORY[0x2821FE8D8](v0, 168, 7);
}

id sub_2748AF0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v10 = sub_2749FCD64();

  if (a3)
  {
    v11 = sub_2749FCC94();
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_2749F9064();
  v13 = 0;
  if (__swift_getEnumTagSinglePayload(a4, 1, v12) != 1)
  {
    v13 = sub_2749F9024();
    (*(*(v12 - 8) + 8))(a4, v12);
  }

  v14 = [v6 initWithBundleIdentifier:v10 options:v11 URL:v13 userActivity:a5];

  return v14;
}

uint64_t sub_2748AF224(char a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D490, &unk_274A1F0E8);
  OUTLINED_FUNCTION_34(v4);

  return sub_2748AEF38(a1, a2);
}

double block_copy_helper_10_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_2748AF2C4()
{
  v0 = type metadata accessor for SmartShortcutPickerEntry(0);
  OUTLINED_FUNCTION_34(v0);

  sub_2748AE02C();
}

uint64_t sub_2748AF330()
{
  v1 = OUTLINED_FUNCTION_26_11();
  OUTLINED_FUNCTION_27(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 265) & ~*(v3 + 80);
  v18 = (v0 + v6);
  v19 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = *(v0 + 144);
  v16 = *(v0 + 128);
  v7 = OUTLINED_FUNCTION_51_2();
  return sub_2748ACFA0(v7, v8, v9, v10, v11, v12, v13, v14, v16, *(&v16 + 1), v17, (v0 + 152), (v0 + 208), v18, v19);
}

void *sub_2748AF3F4()
{
  v1 = OUTLINED_FUNCTION_26_11();
  OUTLINED_FUNCTION_27(v1);
  v4 = ((*(v2 + 80) + 72) & ~*(v2 + 80)) + *(v3 + 64);
  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v4 + 71) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v0 + v6);
  v18 = (v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v16 = (v0 + v5);
  v7 = OUTLINED_FUNCTION_51_2();
  return sub_2748AC72C(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17, v18);
}

uint64_t sub_2748AF4B4(uint64_t result)
{
  v1 = *(result + 184);
  *(result + 48) &= 1uLL;
  *(result + 184) = v1 & 3 | 0x40;
  return result;
}

uint64_t sub_2748AF4D4(uint64_t result)
{
  v1 = *(result + 184) & 3;
  *(result + 48) &= 1uLL;
  *(result + 184) = v1;
  return result;
}

uint64_t sub_2748AF558(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2748AF614(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2748AF668(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void OUTLINED_FUNCTION_38_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_39_10(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

void sub_2748AF764(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 name];
  if (v3)
  {
    v4 = v3;
    v5 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_2748AF7CC(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_2749FCD64();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setName_];
}

id WFComposeViewController.init(workflow:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithWorkflow_];

  return v2;
}

{
  v3 = [v1 initWithWorkflow:a1 isAutomation:0 home:0 triggerInputType:0 hideRunnerToolbar:0];

  return v3;
}

id WFComposeViewController.init(forHomeEditingWith:home:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initForHomeEditingWithWorkflow:a1 home:a2];

  return v4;
}

{
  v4 = OUTLINED_FUNCTION_12_21();
  v6 = [v4 v5];

  return v6;
}

id WFComposeViewController.init(forTriggerEditingWith:triggerConfigurationDescription:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_2749FCD64();

  v6 = [v4 initForTriggerEditingWithWorkflow:a1 triggerConfigurationDescription:v5];

  return v6;
}

char *WFComposeViewController.init(forTriggerEditingWith:triggerConfigurationDescription:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_2748AFB4C(a1);
  if (v8)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v10 = [v4 initWithWorkflow:a1 isAutomation:1 home:0 triggerInputType:ObjCClassFromMetadata hideRunnerToolbar:0];
  v11 = [v10 navigationItem];
  sub_2748B8E38(a2, a3, v11);

  v12 = &v10[OBJC_IVAR___WFComposeViewController_cachedNavigationTitle];
  *v12 = a2;
  *(v12 + 1) = a3;

  return v10;
}

void sub_2748AFB4C(void *a1)
{
  sub_27484F55C(a1, &selRef_workflowID);
  if (v2)
  {
    v3 = [a1 database];
    if (v3)
    {
      v4 = v3;
      v5 = sub_2749FCD64();

      v6 = [v4 configuredTriggersForWorkflowID_];

      v7 = [v6 descriptors];
      sub_27471CF08(0, &unk_28159E4B0, 0x277D7C288);
      v8 = sub_2749FCF84();

      v9 = sub_27472D918(v8);
      if (v9)
      {
        v10 = v9;
        v18 = v4;
        v11 = 0;
        while (1)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x277C5F6D0](v11, v8);
          }

          else
          {
            if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_19;
            }

            v12 = *(v8 + 8 * v11 + 32);
          }

          v13 = v12;
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          v15 = [v12 trigger];
          ObjCClassFromObject = swift_getObjCClassFromObject();

          v17 = [ObjCClassFromObject shortcutInputContentItemClass];
          if (!v17 || (swift_getObjCClassMetadata(), sub_27471CF08(0, &qword_28096D760, 0x277CFC2F8), !swift_dynamicCastMetatype()))
          {
            ++v11;
            if (v14 != v10)
            {
              continue;
            }
          }

          return;
        }

        __break(1u);
LABEL_19:
        __break(1u);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_2748AFE40()
{
  v1 = *(v0 + OBJC_IVAR___WFComposeViewController_cachedNavigationTitle);

  return v1;
}

uint64_t sub_2748AFEFC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___WFComposeViewController_cachedNavigationTitle);
  *v3 = a1;
  v3[1] = a2;
}

char *sub_2748AFF50(void *a1, char a2, void *a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = &v5[OBJC_IVAR___WFComposeViewController_cachedNavigationTitle];
  *v11 = 0;
  v11[1] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR___WFComposeViewController_toolbar] = 0;
  v12 = OBJC_IVAR___WFComposeViewController_delegateAdaptor;
  *&v6[v12] = [objc_allocWithZone(_s15DelegateAdaptorCMa()) init];
  *&v6[OBJC_IVAR___WFComposeViewController_moveCoordinator] = 0;
  *&v6[OBJC_IVAR___WFComposeViewController_addToHomeScreenActivity] = 0;
  v6[OBJC_IVAR___WFComposeViewController_selectVariableModeActive] = 0;
  *&v6[OBJC_IVAR___WFComposeViewController_workflowObservers] = MEMORY[0x277D84F90];
  *&v6[OBJC_IVAR___WFComposeViewController_settingsViewController] = 0;
  v13 = OBJC_IVAR___WFComposeViewController_separator;
  *&v6[v13] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&v6[OBJC_IVAR___WFComposeViewController_lastHorizontalSizeClass] = 0;
  v14 = OBJC_IVAR___WFComposeViewController_editorUndoManager;
  *&v6[v14] = [objc_allocWithZone(MEMORY[0x277CCAD90]) init];
  v6[OBJC_IVAR___WFComposeViewController_isEditingNewWorkflow] = 0;
  v15 = objc_allocWithZone(sub_2749F99D4());
  v16 = a1;
  v17 = sub_2749F99B4();
  v18 = OBJC_IVAR___WFComposeViewController_editorHostingViewController;
  *&v6[OBJC_IVAR___WFComposeViewController_editorHostingViewController] = v17;
  *&v6[OBJC_IVAR___WFComposeViewController_workflow] = v16;
  v19 = objc_allocWithZone(type metadata accessor for WFActionDrawerCoordinator());
  v20 = a3;
  v21 = v16;
  *&v6[OBJC_IVAR___WFComposeViewController_drawerCoordinator] = sub_274814998(v21, a3);
  if (a2)
  {
    v6[OBJC_IVAR___WFComposeViewController_layoutMode] = 1;
    v22 = *&v6[v18];
    *&v6[OBJC_IVAR___WFComposeViewController_contentViewController] = v22;
    *&v6[OBJC_IVAR___WFComposeViewController_documentMenu] = 0;
    v23 = v22;
  }

  else
  {
    v6[OBJC_IVAR___WFComposeViewController_layoutMode] = 0;
    v24 = [objc_allocWithZone(WFComposeNavigationController) initWithRootViewController_];
    *&v6[OBJC_IVAR___WFComposeViewController_contentViewController] = v24;
    v25 = [objc_allocWithZone(WFComposeDocumentMenu) initWithWorkflow_];
    *&v6[OBJC_IVAR___WFComposeViewController_documentMenu] = v25;
  }

  v6[OBJC_IVAR___WFComposeViewController_hideRunnerToolbar] = a5 & 1;
  v50.receiver = v6;
  v50.super_class = WFComposeViewController;
  v26 = objc_msgSendSuper2(&v50, sel_initWithNibName_bundle_, 0, 0);
  [v26 setModalPresentationStyle_];
  v27 = OBJC_IVAR___WFComposeViewController_delegateAdaptor;
  swift_unknownObjectWeakAssign();
  v28 = OBJC_IVAR___WFComposeViewController_editorHostingViewController;
  v29 = *&v26[OBJC_IVAR___WFComposeViewController_editorHostingViewController];
  v49 = v20;
  v30 = v29;
  sub_2749F9974();

  v31 = *&v26[v28];
  v32 = *&v26[v27];
  sub_274720F00(&unk_28096D730, _s15DelegateAdaptorCMa, &unk_274A1F1B0);
  v33 = v31;
  v34 = v32;
  sub_2749F99A4();

  v35 = *&v26[v27];
  v36 = *&v26[v28];
  v37 = v35;
  sub_2749F98D4();

  v38 = *&v26[v28];
  sub_2749F9914();

  v39 = *&v26[v28];
  sub_2749F9924();

  v40 = *&v26[v28];
  sub_2749F9904();

  *(*&v26[OBJC_IVAR___WFComposeViewController_drawerCoordinator] + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_delegate + 8) = &off_288399EE8;
  swift_unknownObjectWeakAssign();
  v41 = *&v26[OBJC_IVAR___WFComposeViewController_documentMenu];
  if (v41)
  {
    [v41 setDelegate_];
  }

  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2749F9004();

  v42 = OBJC_IVAR___WFComposeViewController_workflowObservers;
  v43 = swift_beginAccess();
  MEMORY[0x277C5ECC0](v43);
  sub_2748E3F58(*((*&v26[v42] & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_2749FCFF4();
  swift_endAccess();
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2749F9004();

  v44 = swift_beginAccess();
  MEMORY[0x277C5ECC0](v44);
  sub_2748E3F58(*((*&v26[v42] & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_2749FCFF4();
  swift_endAccess();
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2749F9004();

  v45 = swift_beginAccess();
  MEMORY[0x277C5ECC0](v45);
  sub_2748E3F58(*((*&v26[v42] & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_2749FCFF4();
  swift_endAccess();
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2749F9004();

  v46 = swift_beginAccess();
  MEMORY[0x277C5ECC0](v46);
  sub_2748E3F58(*((*&v26[v42] & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_2749FCFF4();
  swift_endAccess();
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_2749F9004();

  v47 = swift_beginAccess();
  MEMORY[0x277C5ECC0](v47);
  sub_2748E3F58(*((*&v26[v42] & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_2749FCFF4();
  swift_endAccess();

  return v26;
}

void sub_2748B0738()
{
  if ((*(v0 + OBJC_IVAR___WFComposeViewController_layoutMode) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR___WFComposeViewController_documentMenu);
    if (v1)
    {
      if ((*(v0 + OBJC_IVAR___WFComposeViewController_selectVariableModeActive) & 1) == 0)
      {
        v2 = *(v0 + OBJC_IVAR___WFComposeViewController_editorHostingViewController);
        v3 = v1;
        v4 = [v2 navigationController];
        if (v4)
        {
          v5 = v4;
          v6 = [v4 navigationBar];
        }

        else
        {
          v6 = 0;
        }

        [v3 setNavigationBar_];

        v7 = [v2 navigationItem];
        [v3 updateDocumentMenuWithNavigationItem_];
      }
    }
  }
}

void sub_2748B0860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_2748B0738();
  }
}

void sub_2748B08B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong workflow];
    v6 = [v5 isDeleted];

    if (v6)
    {
      v7 = [v4 workflow];
      v8 = [v7 storageState];

      if (!v8)
      {
        [v4 requestDismissal];
      }
    }
  }
}

void sub_2748B0978()
{
  v1 = *&v0[OBJC_IVAR___WFComposeViewController_toolbar];
  if (v1)
  {
    v2 = v0;
    v15 = v1;
    [v15 setEditing_];
    [v15 setWorkflowUndoManager_];
    [v15 setRunning_];
    v3 = [v0 workflow];
    v4 = [v3 actions];

    sub_27471CF08(0, &qword_28096D540, 0x277D7C098);
    v5 = sub_2749FCF84();

    v6 = sub_27472D918(v5);

    v7 = [v2 workflow];
    v8 = [v7 triggers];

    sub_27471CF08(0, &unk_28159E4B0, 0x277D7C288);
    v9 = sub_2749FCF84();

    sub_27472D918(v9);

    [v15 setPlayEnabled_];
    if (v6 >= 1 && (v10 = [v2 workflow], v11 = objc_msgSend(v10, sel_reference), v10, v11))
    {

      v12 = 1;
    }

    else
    {
      v12 = 0;
    }

    [v15 setShareEnabled_];
    v13 = [v2 view];
    if (v13)
    {
      v14 = v13;
      [v13 setNeedsLayout];

      sub_2748146F4();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_2748B0BEC()
{
  v1 = v0;
  v2 = sub_2749FA3C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x277D79BC0], v2);
  v6 = sub_2749FA3B4();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = [objc_allocWithZone(MEMORY[0x277D75DD0]) init];
    v8 = [objc_opt_self() effectWithBlurRadius_];
    [v7 setDimmingVisualEffect_];

    v20 = sub_2748B52DC;
    v21 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_2748B532C;
    v19 = &block_descriptor_74;
    v9 = _Block_copy(&aBlock);
    [v7 setInteractiveDismissShouldBegin_];
    _Block_release(v9);
    if ([v1 willDeleteWhenClosed])
    {
      v10 = objc_opt_self();
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = sub_2748B96C4;
      v21 = v11;
      aBlock = MEMORY[0x277D85DD0];
      v17 = 1107296256;
      v18 = sub_2747CA168;
      v19 = &block_descriptor_79;
      v12 = _Block_copy(&aBlock);
      v13 = v7;

      v14 = [v10 _zoomWithOptions_sourceItemProvider_];
      _Block_release(v12);
    }

    else
    {
      sub_27471CF08(0, &qword_28096D728, 0x277D75D30);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = v7;

      v14 = sub_2749FD534();
    }

    [v1 setPreferredTransition_];
  }
}

void sub_2748B0F50(id *a1@<X0>, SEL *a2@<X3>, unint64_t *a3@<X4>, void *a4@<X5>, uint64_t *a5@<X8>)
{
  v8 = [*a1 *a2];
  sub_27471CF08(0, a3, a4);
  v9 = sub_2749FCF84();

  *a5 = v9;
}

void sub_2748B0FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_2748B0978();
  }

  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    sub_2748B0BEC();
  }
}

id WFComposeViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void WFComposeViewController.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR___WFComposeViewController_cachedNavigationTitle);
  *v1 = 0;
  v1[1] = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___WFComposeViewController_toolbar) = 0;
  v2 = OBJC_IVAR___WFComposeViewController_delegateAdaptor;
  *(v0 + v2) = [objc_allocWithZone(_s15DelegateAdaptorCMa()) init];
  *(v0 + OBJC_IVAR___WFComposeViewController_moveCoordinator) = 0;
  *(v0 + OBJC_IVAR___WFComposeViewController_addToHomeScreenActivity) = 0;
  *(v0 + OBJC_IVAR___WFComposeViewController_selectVariableModeActive) = 0;
  *(v0 + OBJC_IVAR___WFComposeViewController_workflowObservers) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR___WFComposeViewController_settingsViewController) = 0;
  v3 = OBJC_IVAR___WFComposeViewController_separator;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(v0 + OBJC_IVAR___WFComposeViewController_lastHorizontalSizeClass) = 0;
  v4 = OBJC_IVAR___WFComposeViewController_editorUndoManager;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277CCAD90]) init];
  *(v0 + OBJC_IVAR___WFComposeViewController_isEditingNewWorkflow) = 0;
  sub_2749FDAE4();
  __break(1u);
}

uint64_t WFComposeViewController.delegate.getter()
{
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t WFComposeViewController.delegate.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_125_0(a1);
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

id sub_2748B13D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  *a2 = result;
  return result;
}

void sub_2748B141C()
{
  if (*(v0 + OBJC_IVAR___WFComposeViewController_selectVariableModeActive) == 1)
  {
    sub_2747DE030([v0 navigationItem], &selRef_title);
    if (v1)
    {
      v2 = sub_2749FCD64();
    }

    else
    {
      v2 = 0;
    }

    [v0 setCachedNavigationTitle_];
  }

  sub_2748B14C8(1);

  sub_2748B0978();
}

void sub_2748B14C8(int a1)
{
  v2 = v1;
  v4 = sub_2749FA3C4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v86 - v9;
  v11 = v2[OBJC_IVAR___WFComposeViewController_layoutMode];
  if (v11 == 1)
  {
    v12 = [v2 navigationItem];
    [v12 setLargeTitleDisplayMode_];
  }

  else
  {
    v12 = [*&v2[OBJC_IVAR___WFComposeViewController_editorHostingViewController] navigationItem];
  }

  v95 = OBJC_IVAR___WFComposeViewController_selectVariableModeActive;
  v13 = v2[OBJC_IVAR___WFComposeViewController_selectVariableModeActive];
  v14 = MEMORY[0x277D79BC0];
  v94 = v2;
  v93 = a1;
  if (v13 == 1)
  {
    sub_27471CF08(0, &qword_28096D740, 0x277D751F0);
    v15 = sub_2749FCF74();
    [v12 setTrailingItemGroups_];

    v97 = type metadata accessor for WFComposeViewController(v16);
    v96[0] = v2;
    v17 = objc_allocWithZone(MEMORY[0x277D751E0]);
    v18 = v2;
    sub_2747F93B4(24, v96, sel_exitSelectVariableMode);
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990, &qword_274A11FB0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_274A11F70;
    *(v21 + 32) = v20;
    v22 = objc_allocWithZone(MEMORY[0x277D751F0]);
    v23 = v14;
    v24 = v8;
    v25 = v20;
    v26 = sub_2748B8D9C(v21, 0);
    v27 = v12;
    [v12 setPinnedTrailingGroup_];

    v8 = v24;
    v14 = v23;

    v28 = v93 & 1;
  }

  else
  {
    v28 = a1 & 1;
    if ((a1 & 1) != 0 || (v29 = *&v2[OBJC_IVAR___WFComposeViewController_toolbar]) == 0)
    {
      sub_27471CF08(0, &qword_28096D740, 0x277D751F0);
      v50 = sub_2749FCF74();
      [v12 setTrailingItemGroups_];

      v49 = [v12 setPinnedTrailingGroup_];
    }

    else
    {
      v87 = 0;
      v89 = v8;
      v90 = v11;
      v96[0] = MEMORY[0x277D84F90];
      v30 = v29;
      v31 = [v30 undoRedoItems];
      sub_27471CF08(0, &qword_280968428, 0x277D751E0);
      v32 = sub_2749FCF84();

      v33 = objc_allocWithZone(MEMORY[0x277D751F0]);
      sub_2748B8D9C(v32, 0);
      MEMORY[0x277C5ECC0]();
      if (*((v96[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2749FCFB4();
      }

      v86 = v10;
      sub_2749FCFF4();
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990, &qword_274A11FB0);
      v34 = swift_allocObject();
      v92 = xmmword_274A11F70;
      *(v34 + 16) = xmmword_274A11F70;
      v88 = v30;
      *(v34 + 32) = [v30 shareItem];
      v35 = objc_allocWithZone(MEMORY[0x277D751F0]);
      sub_2748B8D9C(v34, 0);
      MEMORY[0x277C5ECC0]();
      if (*((v96[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2749FCFB4();
      }

      sub_2749FCFF4();
      v36 = swift_allocObject();
      *(v36 + 16) = v92;
      *(v36 + 32) = [objc_opt_self() fixedSpaceItemOfWidth_];
      v37 = objc_allocWithZone(MEMORY[0x277D751F0]);
      sub_2748B8D9C(v36, 0);
      MEMORY[0x277C5ECC0]();
      if (*((v96[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2749FCFB4();
      }

      sub_2749FCFF4();
      v38 = swift_allocObject();
      *(v38 + 16) = v92;
      v39 = v88;
      v40 = [v88 isRunning];
      v41 = &selRef_stopItem;
      if (!v40)
      {
        v41 = &selRef_runItem;
      }

      *(v38 + 32) = [v39 *v41];
      v42 = objc_allocWithZone(MEMORY[0x277D751F0]);
      sub_2748B8D9C(v38, 0);
      MEMORY[0x277C5ECC0]();
      v10 = v86;
      if (*((v96[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2749FCFB4();
      }

      sub_2749FCFF4();
      sub_27471CF08(0, &qword_28096D740, 0x277D751F0);
      v43 = sub_2749FCF74();

      [v12 setTrailingItemGroups_];

      v44 = swift_allocObject();
      *(v44 + 16) = v92;
      v45 = [v39 isRunning];
      v46 = &selRef_stopItem;
      if (!v45)
      {
        v46 = &selRef_runItem;
      }

      *(v44 + 32) = [v39 *v46];
      v47 = objc_allocWithZone(MEMORY[0x277D751F0]);
      v48 = sub_2748B8D9C(v44, 0);
      [v12 setPinnedTrailingGroup_];

      v11 = v90;
      v8 = v89;
      v28 = v87;
    }

    if ((v11 & 1) != 0 || (v93 & 1) != 0 && ((*(v5 + 104))(v10, *v14, v4), v56 = sub_2749FA3B4(), v49 = (*(v5 + 8))(v10, v4), (v56 & 1) == 0))
    {
      v97 = type metadata accessor for WFComposeViewController(v49);
      v96[0] = v2;
      v51 = objc_allocWithZone(MEMORY[0x277D751E0]);
      v2;
      sub_2747F93B4(0, v96, sel_requestDismissal);
      v53 = v52;
      v54 = sub_2749F9964();
      if (v54)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990, &qword_274A11FB0);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_274A11F70;
        *(v55 + 32) = v53;
        v27 = v12;
        sub_2748B8EB4(v55, v12);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990, &qword_274A11FB0);
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_274A11F70;
        *(v57 + 32) = v53;
        v58 = objc_allocWithZone(MEMORY[0x277D751F0]);
        v59 = v53;
        v60 = sub_2748B8D9C(v57, 0);
        v27 = v12;
        [v12 setPinnedTrailingGroup_];
      }

      v14 = MEMORY[0x277D79BC0];
    }

    else
    {
      v27 = v12;
    }
  }

  (*(v5 + 104))(v8, *v14, v4);
  sub_274720F00(&qword_28096D748, MEMORY[0x277D79BF0], MEMORY[0x277D79BB0]);
  v61 = sub_2749F98C4();
  (*(v5 + 8))(v8, v4);
  if (v11 & 1 | (v28 != 0) & ~v61)
  {
    v62 = v27;
    [v27 setBackAction_];
    v63 = v94;
  }

  else
  {
    sub_27471CF08(0, &qword_28096D750, 0x277D750C8);
    swift_allocObject();
    v63 = v94;
    swift_unknownObjectWeakInit();
    v64 = sub_2749FD644(0, 0xE000000000000000, 0, 0, 0, 0, 0, 0, 0, 0);
    sub_2749FCE14("Closes the shortcut", 19);
    v62 = v27;
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v65 = qword_28159E448;
    v66 = sub_2749FCD64();
    v67 = sub_2749FCD64();

    v68 = [v65 localizedStringForKey:v66 value:v67 table:0];

    v69 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v71 = v70;

    sub_27484DB24(v69, v71, v64, &selRef_setAccessibilityHint_);
    [v62 setBackAction_];
  }

  if (v63[v95] == 1)
  {
    sub_2749FCE14("Select Variable", 15);
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v72 = qword_28159E448;
    v73 = sub_2749FCD64();
    v74 = sub_2749FCD64();

    v75 = [v72 localizedStringForKey:v73 value:v74 table:0];

    v76 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v78 = v77;

    sub_27484DB24(v76, v78, v62, &selRef_setTitle_);
    [v62 setStyle_];
    [v62 setTitleMenuProvider_];
    sub_2749FD364();
    [v62 setDocumentProperties_];
    v79 = *&v63[OBJC_IVAR___WFComposeViewController_documentMenu];
    if (v79)
    {
      [v79 setIconViewHidden_];
    }
  }

  else
  {
    if (v11 && (sub_27484F55C(v63, &selRef_cachedNavigationTitle), v80))
    {
      v81 = sub_2749FCD64();
    }

    else
    {
      v81 = 0;
    }

    [v62 setTitle_];

    v82 = [v63 traitCollection];
    v83 = [v82 horizontalSizeClass] != 1;

    [v62 setStyle_];
    sub_2748B0738();
    v84 = *&v63[OBJC_IVAR___WFComposeViewController_documentMenu];
    if (v84)
    {
      v85 = v84;
      [v85 layoutIconView];
      [v85 setIconViewHidden_];

      v62 = v85;
    }
  }
}

void *WFComposeViewController.undoManager.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFComposeViewController_editorUndoManager);
  v2 = v1;
  return v1;
}

Swift::Void __swiftcall WFComposeViewController.viewDidLoad()()
{
  v1 = v0;
  v20.super_class = WFComposeViewController;
  objc_msgSendSuper2(&v20, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  v4 = objc_allocWithZone(MEMORY[0x277D75348]);
  v5 = sub_2747CA0C4(sub_2748B2448, 0);
  [v3 setBackgroundColor_];

  v6 = [v1 navigationItem];
  [v6 setLargeTitleDisplayMode_];

  v7 = [*&v1[OBJC_IVAR___WFComposeViewController_editorHostingViewController] view];
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  sub_27484DB24(0x726F74696465, 0xE600000000000000, v7, &selRef_setAccessibilityIdentifier_);

  v9 = *&v1[OBJC_IVAR___WFComposeViewController_contentViewController];
  [v1 addChildViewController_];
  v10 = [v1 view];
  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v10;
  v12 = [v9 view];
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12;
  [v11 addSubview_];

  [v9 didMoveToParentViewController_];
  v14 = *&v1[OBJC_IVAR___WFComposeViewController_separator];
  v15 = [objc_opt_self() separatorColor];
  v16 = OUTLINED_FUNCTION_12_21();
  [v16 v17];

  v18 = [v1 view];
  if (v18)
  {
    v19 = v18;
    [v18 addSubview_];

    return;
  }

LABEL_11:
  __break(1u);
}

id sub_2748B2448(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_blackColor;
  if (v1 != 2)
  {
    v3 = &selRef_systemGray6Color;
  }

  v4 = [v2 *v3];

  return v4;
}

Swift::Void __swiftcall WFComposeViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  objc_msgSendSuper2(&v5, sel_viewWillAppear_, a1);
  sub_2748B0738();
  v2 = [v1 navigationItem];
  v3 = [v1 traitCollection];
  v4 = [v3 horizontalSizeClass] != 1;

  [v2 setStyle_];
}

Swift::Void __swiftcall WFComposeViewController.viewWillLayoutSubviews()()
{
  v1 = v0;
  v19.super_class = WFComposeViewController;
  objc_msgSendSuper2(&v19, sel_viewWillLayoutSubviews);
  v2 = [v0 traitCollection];
  v3 = [v2 horizontalSizeClass];

  v4 = OBJC_IVAR___WFComposeViewController_lastHorizontalSizeClass;
  if (v3 != *&v1[OBJC_IVAR___WFComposeViewController_lastHorizontalSizeClass])
  {
    sub_2748B282C();
    v5 = [v1 traitCollection];
    v6 = [v5 horizontalSizeClass];

    *&v1[v4] = v6;
  }

  v7 = [v1 traitCollection];
  v8 = [v7 horizontalSizeClass];

  if (v8 == 2)
  {
    sub_2748B14C8(0);
    v9 = *&v1[OBJC_IVAR___WFComposeViewController_drawerCoordinator];
    if (*(v9 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentationMode) != 2)
    {
      sub_274815FE8(v1);
      v10 = *&v1[OBJC_IVAR___WFComposeViewController_delegateAdaptor];
      v11 = v1[OBJC_IVAR___WFComposeViewController_layoutMode];
      v12 = objc_allocWithZone(type metadata accessor for DrawerNavigationBarTitleView());
      v13 = sub_2748B91A0(v10, (v11 & 1) == 0, v12);
      v14 = *(v9 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_inspectorPaneRootViewController);
      if (v14)
      {
        v15 = [v14 navigationItem];
        [v15 setTitleView_];
      }
    }

    v16 = 0.0;
  }

  else
  {
    sub_2748B14C8(1);
    if (*(*&v1[OBJC_IVAR___WFComposeViewController_drawerCoordinator] + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentationMode) != 1)
    {
      v17 = *&v1[OBJC_IVAR___WFComposeViewController_toolbar];
      v18 = v17;
      sub_2748155C8(v1, v17);
    }

    v16 = 78.0;
  }

  sub_274814684(v16);
}

void sub_2748B282C()
{
  if (([v0 hideRunnerToolbar] & 1) == 0)
  {
    v1 = OBJC_IVAR___WFComposeViewController_toolbar;
    v2 = *&v0[OBJC_IVAR___WFComposeViewController_toolbar];
    if (v2)
    {
      [v2 removeFromSuperview];
    }

    v3 = [v0 workflow];
    v4 = [objc_allocWithZone(MEMORY[0x277D7BDF0]) initWithWorkflow_];

    [v4 setDelegate_];
    [v4 setShareHidden_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v6 = v4;

    sub_2748B0978();
    sub_2748B0BEC();
    sub_27481469C(v4);
  }
}

Swift::Void __swiftcall WFComposeViewController.viewDidLayoutSubviews()()
{
  v28.super_class = WFComposeViewController;
  objc_msgSendSuper2(&v28, sel_viewDidLayoutSubviews);
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 == 2)
  {
    sub_2748B2BC8(1);
    return;
  }

  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;

  v9 = [v0 view];
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = v9;
  v11 = objc_opt_self();
  [v10 safeAreaInsets];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [v0 traitCollection];
  [v11 workflowViewSizeFromParentSize:v20 safeAreaInsets:v6 traitCollection:{v8, v13, v15, v17, v19}];
  v22 = v21;
  v24 = v23;

  v25 = [*&v0[OBJC_IVAR___WFComposeViewController_contentViewController] view];
  if (v25)
  {
    v26 = v25;
    [v25 setFrame_];

    v27 = *&v0[OBJC_IVAR___WFComposeViewController_separator];
    [v27 setFrame_];
    [v27 setHidden_];
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_2748B2BC8(char a1)
{
  v2 = *(*&v1[OBJC_IVAR___WFComposeViewController_drawerCoordinator] + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_inspectorPaneNavigationController);
  if (!v2)
  {
    return;
  }

  v4 = v2;
  v5 = 0.0;
  v6 = WFShouldReverseLayoutDirection();
  if (a1)
  {
    v7 = [objc_opt_self() mainScreen];
    [v7 scale];
    v9 = v8;

    v5 = 1.0 / v9;
  }

  v10 = [v1 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_36;
  }

  v11 = v10;
  [v10 bounds];
  v13 = v12;
  v15 = v14;

  v16 = [v1 view];
  if (!v16)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v17 = v16;
  v18 = objc_opt_self();
  [v17 safeAreaInsets];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = [v1 traitCollection];
  [v18 workflowViewSizeFromParentSize:v27 safeAreaInsets:v13 traitCollection:{v15, v20, v22, v24, v26}];
  Width = v28;
  v31 = v30;

  v32 = [v1 view];
  if (!v32)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v33 = v32;
  v96 = v31;
  [v32 bounds];
  v35 = v34;
  v37 = v36;

  v38 = [v1 view];
  if (!v38)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v39 = v38;
  [v38 safeAreaInsets];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;

  v48 = [v1 traitCollection];
  [v18 drawerSizeFromParentSize:v48 safeAreaInsets:v35 traitCollection:{v37, v41, v43, v45, v47}];
  v50 = v49;
  v52 = v51;

  if ((a1 & 1) == 0)
  {
    v53 = [v1 view];
    if (!v53)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v54 = v53;
    [v53 bounds];
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;

    v99.origin.x = v56;
    v99.origin.y = v58;
    v99.size.width = v60;
    v99.size.height = v62;
    Width = CGRectGetWidth(v99);
  }

  v95 = v52;
  if (v6)
  {
    v63 = 0.0;
  }

  else
  {
    v63 = v5 + Width;
  }

  if (v6)
  {
    v64 = v5 + v50;
  }

  else
  {
    v64 = 0.0;
  }

  v65 = [v1 view];
  if (!v65)
  {
    goto LABEL_39;
  }

  v66 = v65;
  if (v6)
  {
    v67 = v50;
  }

  else
  {
    v67 = Width;
  }

  [v65 bounds];
  v69 = v68;

  v70 = *&v1[OBJC_IVAR___WFComposeViewController_separator];
  [v70 setHidden_];
  [v70 frame];
  v103.origin.y = 0.0;
  v103.origin.x = v67;
  v103.size.width = v5;
  v103.size.height = v69;
  if (!CGRectEqualToRect(v100, v103))
  {
    [v70 setFrame_];
  }

  v97 = v4;
  v71 = [v97 view];
  if (!v71)
  {
    goto LABEL_40;
  }

  v72 = v71;
  [v71 frame];
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;

  v104.origin.y = 0.0;
  v101.origin.x = v74;
  v101.origin.y = v76;
  v101.size.width = v78;
  v101.size.height = v80;
  v104.origin.x = v63;
  v104.size.width = v50;
  v104.size.height = v95;
  v81 = v97;
  if (!CGRectEqualToRect(v101, v104))
  {
    v81 = [v97 view];

    if (!v81)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    [v81 setFrame_];
  }

  v82 = *&v1[OBJC_IVAR___WFComposeViewController_contentViewController];
  v83 = [v82 view];
  if (!v83)
  {
    goto LABEL_41;
  }

  v84 = v83;
  [v83 frame];
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v92 = v91;

  v105.origin.y = 0.0;
  v102.origin.x = v86;
  v102.origin.y = v88;
  v102.size.width = v90;
  v102.size.height = v92;
  v105.origin.x = v64;
  v105.size.width = Width;
  v105.size.height = v96;
  if (!CGRectEqualToRect(v102, v105))
  {
    v93 = [v82 view];
    if (v93)
    {
      v94 = v93;
      [v93 setFrame_];

      goto LABEL_31;
    }

LABEL_44:
    __break(1u);
    return;
  }

LABEL_31:
}

uint64_t WFComposeViewController.isEditingNewWorkflow.getter()
{
  v1 = OBJC_IVAR___WFComposeViewController_isEditingNewWorkflow;
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t WFComposeViewController.isEditingNewWorkflow.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR___WFComposeViewController_isEditingNewWorkflow;
  result = OUTLINED_FUNCTION_125_0(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t WFComposeViewController.willDeleteWhenClosed.getter()
{
  result = [v0 isEditingNewWorkflow];
  if (result)
  {
    v2 = [v0 workflow];
    v3 = [v2 actions];

    sub_27471CF08(0, &qword_28096D540, 0x277D7C098);
    v4 = sub_2749FCF84();

    v5 = sub_27472D918(v4);

    if (!v5)
    {
      v6 = [v0 workflow];
      v7 = [v6 inputAction];

      if (!v7)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

Swift::Void __swiftcall WFComposeViewController.presentIconPicker()()
{
  v1 = v0;
  v2 = sub_2749FA3C4();
  OUTLINED_FUNCTION_43();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v34 = *MEMORY[0x277D79BB8];
  v33 = *(v4 + 104);
  v33(v7 - v6);
  v9 = sub_2749FA3B4();
  v32 = *(v4 + 8);
  v32(v8, v2);
  v10 = [v0 workflow];
  v35 = v1;
  if (v9)
  {
    v11 = objc_allocWithZone(type metadata accessor for WFIconPickerViewController());
    v12 = sub_27486AF20(v10);
    v13 = objc_allocWithZone(type metadata accessor for WFPreviewNavigationController());
    v14 = sub_2748B8F60(v12, 1, v13);
  }

  else
  {
    v15 = objc_allocWithZone(type metadata accessor for ShortcutIconEditorViewController());
    v14 = sub_27482D05C(v10);
    v16 = [v1 traitCollection];
    v17 = [v16 horizontalSizeClass];

    if (v17 == 2)
    {
      v14[OBJC_IVAR___WFShortcutIconEditorViewController_showsDoneButton] = 0;
    }

    v1 = v35;
  }

  v18 = [v1 &selRef_setSelectedTabIndex_];
  v19 = [v18 &selRef_gestureSettings + 2];

  if (v19 == 2)
  {
    [v14 setPreferredContentSize_];
    [v14 setModalPresentationStyle_];
    v20 = [v14 popoverPresentationController];
    if (v20)
    {
      v21 = v20;
      [v20 setPermittedArrowDirections_];
      v22 = *&v35[OBJC_IVAR___WFComposeViewController_documentMenu];
      if (v22 && (v23 = [v22 sourceViewForIconEditing]) != 0)
      {
        v24 = v23;
        [v21 setSourceView_];
        [v24 bounds];
        [v21 setSourceRect_];
      }

      else
      {
        v30 = [*&v35[OBJC_IVAR___WFComposeViewController_editorHostingViewController] navigationController];
        if (!v30 || (v31 = v30, v24 = [v30 navigationBar], v31, !v24))
        {

          v14 = v21;
          goto LABEL_19;
        }

        [v21 setSourceView_];
        [v21 setSourceRect_];
      }
    }

    goto LABEL_18;
  }

  (v33)(v8, v34, v2);
  v29 = sub_2749FA3B4();
  v32(v8, v2);
  if ((v29 & 1) == 0)
  {
LABEL_18:
    [v35 presentViewController:v14 animated:1 completion:0];
    goto LABEL_19;
  }

  sub_2748166E4();
LABEL_19:
}

Swift::Void __swiftcall WFComposeViewController.prepareToDismiss()()
{
  v1 = v0;
  sub_2749F9984();
  v2 = [v0 workflow];
  [v2 save];

  v3 = [v1 workflow];
  [v3 setIgnoreModifications_];
}

void sub_2748B3AD8(uint64_t a1)
{
  v3 = *(*(v1 + OBJC_IVAR___WFComposeViewController_drawerCoordinator) + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_inspectorPaneRootViewController);
  if (v3)
  {
    v4 = [v3 navigationItem];
    v5 = [v4 titleView];

    if (v5)
    {
      type metadata accessor for DrawerNavigationBarTitleView();
      if (swift_dynamicCastClass())
      {
        sub_2748B8CA8(a1);
      }
    }
  }
}

uint64_t WFComposeViewController.canPerformAction(_:withSender:)(uint64_t a1, uint64_t a2)
{
  if (sub_2749F92A4())
  {
    v5 = sub_2749F99C4() ^ 1;
  }

  else
  {
    if (sub_2749F92A4())
    {
      return sub_2749F99C4() & 1;
    }

    sub_2748B94D0(a2, v15);
    v7 = v16;
    if (v16)
    {
      v8 = __swift_project_boxed_opaque_existential_1(v15, v16);
      v9 = *(v7 - 8);
      MEMORY[0x28223BE20](v8);
      OUTLINED_FUNCTION_2_0();
      v12 = v11 - v10;
      (*(v9 + 16))(v11 - v10);
      v13 = sub_2749FDCA4();
      (*(v9 + 8))(v12, v7);
      __swift_destroy_boxed_opaque_existential_0(v15);
    }

    else
    {
      v13 = 0;
    }

    v14.receiver = v2;
    v14.super_class = WFComposeViewController;
    v5 = objc_msgSendSuper2(&v14, sel_canPerformAction_withSender_, a1, v13);
    swift_unknownObjectRelease();
  }

  return v5 & 1;
}

Swift::Bool __swiftcall WFComposeViewController.accessibilityPerformMagicTap()()
{
  if (sub_2749F99C4())
  {
    sub_2749F9984();
  }

  else
  {
    sub_2749F9954();
  }

  return 1;
}

Swift::Bool __swiftcall WFComposeViewController.accessibilityPerformEscape()()
{
  if (sub_2749F99C4())
  {
    sub_2749F9984();
  }

  else
  {
    [v0 requestDismissal];
  }

  return 1;
}

void sub_2748B403C()
{
  v1 = [*(v0 + OBJC_IVAR___WFComposeViewController_editorHostingViewController) navigationController];
  if (v1)
  {
    v2 = v1;
    if ([v1 respondsToSelector_])
    {
      [v2 rename_];
    }
  }
}

Swift::Void __swiftcall WFComposeViewController.addCommentActionFromKeyPress()()
{
  OUTLINED_FUNCTION_6_25();
  sub_2749FCD64();
  OUTLINED_FUNCTION_5_29();
  [v0 appendActionWithIdentifier_];
}

Swift::Void __swiftcall WFComposeViewController.addSetVariableActionFromKeyPress()()
{
  OUTLINED_FUNCTION_6_25();
  sub_2749FCD64();
  OUTLINED_FUNCTION_5_29();
  [v0 appendActionWithIdentifier_];
}

Swift::Void __swiftcall WFComposeViewController.addAskForInputActionFromKeyPress()()
{
  OUTLINED_FUNCTION_6_25();
  sub_2749FCD64();
  OUTLINED_FUNCTION_5_29();
  [v0 appendActionWithIdentifier_];
}

Swift::Void __swiftcall WFComposeViewController.addShowResultActionFromKeyPress()()
{
  OUTLINED_FUNCTION_6_25();
  sub_2749FCD64();
  OUTLINED_FUNCTION_5_29();
  [v0 appendActionWithIdentifier_];
}

Swift::Void __swiftcall WFComposeViewController.addChooseFromMenuActionFromKeyPress()()
{
  OUTLINED_FUNCTION_6_25();
  sub_2749FCD64();
  OUTLINED_FUNCTION_5_29();
  [v0 appendActionWithIdentifier_];
}

Swift::Void __swiftcall WFComposeViewController.addConditionalActionFromKeyPress()()
{
  OUTLINED_FUNCTION_6_25();
  sub_2749FCD64();
  OUTLINED_FUNCTION_5_29();
  [v0 appendActionWithIdentifier_];
}

Swift::Void __swiftcall WFComposeViewController.addRepeatCountActionFromKeyPress()()
{
  OUTLINED_FUNCTION_6_25();
  sub_2749FCD64();
  OUTLINED_FUNCTION_5_29();
  [v0 appendActionWithIdentifier_];
}

Swift::Void __swiftcall WFComposeViewController.addRepeatEachActionFromKeyPress()()
{
  OUTLINED_FUNCTION_6_25();
  sub_2749FCD64();
  OUTLINED_FUNCTION_5_29();
  [v0 appendActionWithIdentifier_];
}

void sub_2748B463C(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() sharedRegistry];
  v3 = sub_2749FCD64();
  v4 = [v2 createActionWithIdentifier:v3 serializedParameters:0];

  sub_2749F98E4();
}

void sub_2748B4764()
{
  v1 = v0;
  v79[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2749FA4E4();
  OUTLINED_FUNCTION_43();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = sub_2749FA3C4();
  OUTLINED_FUNCTION_43();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  sub_2749F9984();
  (*(v11 + 104))(v15, *MEMORY[0x277D79BC0], v9);
  v16 = sub_2749FA3B4();
  (*(v11 + 8))(v15, v9);
  if ((v16 & 1) == 0 && (v1[OBJC_IVAR___WFComposeViewController_layoutMode] & 1) == 0)
  {
    v17 = OUTLINED_FUNCTION_10_25();
    v18 = [v17 reference];

    if (v18)
    {
      v19 = OUTLINED_FUNCTION_10_25();
      v20 = [v19 database];

      if (!v20)
      {
        v20 = v18;
LABEL_31:

        goto LABEL_32;
      }

      v21 = OUTLINED_FUNCTION_10_25();
      v22 = [v21 isUntitled];

      if (v22 && (v23 = OUTLINED_FUNCTION_10_25(), v24 = [v23 hasActions], v23, (v24 & 1) == 0))
      {
        v79[0] = 0;
        v38 = [v20 deleteReference:v18 error:v79];
        v39 = v79[0];
        if (!v38)
        {
          v46 = v79[0];
          v47 = sub_2749F8FE4();

          swift_willThrow();
          sub_27471CF08(0, &qword_28096D720, 0x277CFC218);
          v48 = swift_allocObject();
          *(v48 + 16) = v1;
          v49 = v47;
          v50 = v1;
          v51 = sub_2748B4FAC(v47, sub_2748B9650, v48);
          v52 = WFUserInterfaceFromViewController();
          swift_getObjectType();
          sub_2749FD494();

          swift_unknownObjectRelease();
          return;
        }

        v40 = objc_allocWithZone(MEMORY[0x277D7C340]);
        v41 = v39;
        v42 = [v40 init];
        v43 = OUTLINED_FUNCTION_10_25();
        sub_2747DE030(v43, &selRef_associatedAppBundleIdentifier);
        if (v44)
        {
          v45 = sub_2749FCD64();
        }

        else
        {
          v45 = 0;
        }

        v63 = OUTLINED_FUNCTION_12_21();
        [v63 v64];

        v65 = OUTLINED_FUNCTION_10_25();
        sub_2747DE030(v65, &selRef_galleryIdentifier);
        if (v66)
        {
          v67 = sub_2749FCD64();
        }

        else
        {
          v67 = 0;
        }

        v68 = OUTLINED_FUNCTION_12_21();
        [v68 v69];

        v70 = OUTLINED_FUNCTION_10_25();
        sub_2747DE030(v70, &selRef_source);
        if (v71)
        {
          v37 = sub_2749FCD64();
        }

        else
        {
          v37 = 0;
        }

        v72 = OUTLINED_FUNCTION_12_21();
        [v72 v73];
      }

      else
      {
        v25 = OUTLINED_FUNCTION_10_25();
        v26 = [v25 isUntitled];

        if (!v26)
        {
          goto LABEL_30;
        }

        v27 = *&v1[OBJC_IVAR___WFComposeViewController_documentMenu];
        if (!v27)
        {
          goto LABEL_30;
        }

        v28 = [v27 placeholderName];
        if (!v28)
        {
          goto LABEL_30;
        }

        v29 = v28;
        v30 = [v20 suggestedWorkflowNameForName_];

        v31 = v30;
        if (!v30)
        {
          _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
          v31 = sub_2749FCD64();
        }

        v32 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v78 = v33;
        v79[0] = 0;
        v34 = [v20 renameReference:v18 to:v31 error:v79];

        if (!v34)
        {
          v53 = v79[0];
          v54 = sub_2749F8FE4();

          swift_willThrow();
          sub_2749FA3D4();

          v55 = v54;
          v56 = sub_2749FA4D4();
          v57 = sub_2749FD2C4();

          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v76 = swift_slowAlloc();
            v79[0] = v76;
            *v58 = 136315394;
            v77 = v57;
            v59 = sub_2747AF460(v32, v78, v79);

            *(v58 + 4) = v59;
            *(v58 + 12) = 2080;
            swift_getErrorValue();
            v60 = sub_2749FDD84();
            v62 = sub_2747AF460(v60, v61, v79);

            *(v58 + 14) = v62;
            _os_log_impl(&dword_274719000, v56, v77, "Unable to save placeholder name %s in editor: %s", v58, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x277C61040](v76, -1, -1);
            MEMORY[0x277C61040](v58, -1, -1);
          }

          else
          {
          }

          (*(v4 + 8))(v8, v2);
          return;
        }

        v35 = v79[0];

        v36 = OUTLINED_FUNCTION_10_25();
        sub_274926558(v32, v78, v36);

        v37 = OUTLINED_FUNCTION_10_25();
        [v37 save];
      }

LABEL_30:
      goto LABEL_31;
    }
  }

LABEL_32:
  v74 = [v1 delegate];
  if (v74)
  {
    v75 = v74;
    if ([v74 respondsToSelector_])
    {
      [v75 composeViewControllerRequestsDismissal_];
    }

    swift_unknownObjectRelease();
  }
}

id sub_2748B4F1C(void *a1)
{
  result = [a1 delegate];
  if (result)
  {
    v3 = result;
    if ([result respondsToSelector_])
    {
      [v3 composeViewControllerRequestsDismissal_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_2748B4FAC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2749F8FD4();
  if (a2)
  {
    v10[4] = a2;
    v10[5] = a3;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_274760264;
    v10[3] = &block_descriptor_49_0;
    v7 = _Block_copy(v10);
  }

  else
  {
    v7 = 0;
  }

  v8 = [swift_getObjCClassFromMetadata() alertWithError:v6 confirmationHandler:v7];
  _Block_release(v7);

  return v8;
}

id WFComposeViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_2749FCD64();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

BOOL sub_2748B52DC(void *a1)
{
  [a1 velocity];
  v3 = fabs(v2);
  [a1 velocity];
  return fabs(v4) <= v3;
}

uint64_t sub_2748B532C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

id sub_2748B5384(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  v4 = [Strong delegate];
  if (!v4)
  {

    return 0;
  }

  v5 = v4;
  if (([v4 respondsToSelector_] & 1) == 0)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v6 = [v5 sourceItemForDismissal];

  swift_unknownObjectRelease();
  return v6;
}

id sub_2748B5450(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  v4 = [Strong workflow];
  v5 = [v4 reference];

  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = [v3 delegate];
  if (!v6)
  {

LABEL_7:
    return 0;
  }

  v7 = v6;
  if (([v6 respondsToSelector_] & 1) == 0)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v8 = [v7 sourceViewForDismissing_];
  swift_unknownObjectRelease();

  return v8;
}

void sub_2748B5568(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong requestDismissal];
  }
}

void sub_2748B5638()
{
  v1 = [v0 workflow];
  v2 = [v0 workflow];
  v3 = [v2 database];

  WFPresentWorkflowSettingsViewController(v1, v3, v0, *&v0[OBJC_IVAR___WFComposeViewController_delegateAdaptor]);
}

void sub_2748B56E8(uint64_t a1)
{
  v2 = v1;
  v13 = sub_2748B5938(a1);
  v4 = [v13 popoverPresentationController];
  v5 = v13;
  if (v4)
  {
    v6 = v4;
    [v4 setSourceItem_];
    if (!a1)
    {
      goto LABEL_7;
    }

    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      sub_27471CF08(0, &qword_28096D728, 0x277D75D30);
      *(swift_allocObject() + 16) = v8;
      swift_unknownObjectRetain_n();
      v9 = sub_2749FD544();

      [v13 setPreferredTransition_];
      swift_unknownObjectRelease();
    }

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      swift_unknownObjectRetain();
      [v6 setSourceView_];
      sub_27471CF08(0, &qword_28096D728, 0x277D75D30);
      *(swift_allocObject() + 16) = v11;
      swift_unknownObjectRetain();
      v12 = sub_2749FD534();

      [v13 setPreferredTransition_];
      swift_unknownObjectRelease();
    }

    else
    {
LABEL_7:
      v12 = v6;
      v6 = v13;
    }

    v5 = v6;
  }

  [v2 presentViewController:v13 animated:1 completion:0];
}

id sub_2748B5938(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v5 = [v2 workflow];
  v6 = [v5 reference];

  if (v6)
  {
    v7 = objc_allocWithZone(type metadata accessor for AddToHomeScreenActivity());
    v8 = v6;
    AddToHomeScreenActivity.init(reference:)(v8);
    MEMORY[0x277C5ECC0]();
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2749FCFB4();
    }

    sub_2749FCFF4();
    v4 = v16;
  }

  if ([objc_opt_self() shortcutFileSharingEnabled])
  {
    sub_27471CF08(0, &qword_28096D708, &off_279EE44D0);
    v9 = *MEMORY[0x277CBF398];
    v10 = *(MEMORY[0x277CBF398] + 8);
    v11 = *(MEMORY[0x277CBF398] + 16);
    v12 = *(MEMORY[0x277CBF398] + 24);
    swift_unknownObjectRetain();
    sub_2748B5B38(0, a1, v9, v10, v11, v12);
    MEMORY[0x277C5ECC0]();
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2749FCFB4();
    }

    sub_2749FCFF4();
    v4 = v16;
  }

  v13 = [v2 workflow];
  v14 = objc_allocWithZone(WFWorkflowActivityViewController);
  return sub_27481ED80(v13, v4);
}

id sub_2748B5B38(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSourceView:a1 sourceRect:a2 sourceItem:{a3, a4, a5, a6}];

  swift_unknownObjectRelease();
  return v7;
}

id sub_2748B5BC8()
{
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = _s15DelegateAdaptorCMa();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_2748B5C60()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2748B0978();
  }
}

void sub_2748B5CC8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___WFComposeViewController_drawerCoordinator);

    sub_274814F3C();
  }

  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + OBJC_IVAR___WFComposeViewController_drawerCoordinator);

    sub_274815210(1);
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_2748B0978();
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    sub_2748B0738();
  }
}

void sub_2748B5DCC(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR___WFComposeViewController_selectVariableModeActive) = a2 & 1;
    v4 = Strong;
    sub_2748B141C();
  }
}

void sub_2748B5E54()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2748B5638();
  }
}

void sub_2748B5F8C(void (*a1)(void))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR___WFComposeViewController_drawerCoordinator);

    a1();
  }
}

void sub_2748B6074()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___WFComposeViewController_drawerCoordinator);

    sub_2748166E4();
  }
}

void sub_2748B61E8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];

    if (v2)
    {
      [v2 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_2748B6280(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR___WFComposeViewController_editorHostingViewController);

    sub_2749F98E4();
  }
}

BOOL sub_2748B630C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v1 = Strong;
  v2 = [Strong workflow];

  v3 = [v2 actions];
  sub_27471CF08(0, &qword_28096D540, 0x277D7C098);
  v4 = sub_2749FCF84();

  v5 = sub_27472D918(v4);

  return v5 == 0;
}

void sub_2748B63CC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___WFComposeViewController_editorHostingViewController);

    sub_2749F9954();
  }
}

void sub_2748B661C(uint64_t a1, SEL *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = [Strong undoManager];

  [v4 *a2];
}

void sub_2748B6704(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_2748B56E8(a2);
  }
}

void sub_2748B67F8(uint64_t a1, void *a2, void (*a3)(void))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + *a2);

    a3();
  }
}