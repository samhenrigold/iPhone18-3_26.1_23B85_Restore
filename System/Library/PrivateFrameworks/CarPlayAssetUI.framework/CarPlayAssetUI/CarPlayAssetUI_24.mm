uint64_t sub_242E49278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140, &qword_242F13A90);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = &v33 - v4;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8F38, &qword_242F39B98);
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v38 = (&v33 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3030, &qword_242F17A28);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v33 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3028, &qword_242F17A20);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9BB0, &qword_242F3CDC8);
  v43 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v41 = &v33 - v14;
  v15 = sub_242F04000();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v2;
  if (*(v2 + 16) != 1)
  {
    v33 = *(v2 + 8);
    v34 = v17;

    sub_242F05710();
    v35 = v9;
    v36 = v10;
    v23 = sub_242F04360();
    v9 = v35;
    v10 = v36;
    sub_242F03930();

    sub_242F03FF0();
    swift_getAtKeyPath();
    v24 = sub_242E188A8(v20, v33, 0);
    (*(v16 + 8))(v19, v34, v24);
    v20 = v45;
    v21 = v46;
    if (v45)
    {
      goto LABEL_3;
    }

LABEL_6:
    v25 = 1;
    return (*(v43 + 56))(v44, v25, 1, v13);
  }

  v21 = *(v2 + 8);
  sub_242CA0064(*v2, v21);
  if (!v20)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_242E481E0(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_242D0DC4C(v20, v21);
    sub_242C6D138(v8, &qword_27ECF3030, &qword_242F17A28);
    v22 = 1;
  }

  else
  {
    sub_242CF6B3C(v8, v12, &qword_27ECF3028, &qword_242F17A20);
    v26 = v2 + *(type metadata accessor for SlotView(0) + 28);

    v27 = v20(v26, v37, v12);
    sub_242D0DC4C(v20, v21);
    sub_242D0DC4C(v20, v21);
    sub_242C6D138(v12, &qword_27ECF3028, &qword_242F17A20);
    v28 = type metadata accessor for Slot(0);
    v29 = v39;
    sub_242CA321C(v26 + *(v28 + 44), v39, &qword_27ECF2140, &qword_242F13A90);
    v30 = v38;
    sub_242CF6B3C(v29, v38 + *(v42 + 52), &qword_27ECF2138, &qword_242F2DFB0);
    *v30 = v27;
    sub_242CF6B3C(v30, v41, &qword_27ECF8F38, &qword_242F39B98);
    v22 = 0;
  }

  v31 = v41;
  (*(v40 + 56))(v41, v22, 1, v42);
  sub_242CF6B3C(v31, v44, &qword_27ECF9BB0, &qword_242F3CDC8);
  v25 = 0;
  return (*(v43 + 56))(v44, v25, 1, v13);
}

uint64_t sub_242E497E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1 + 28);
  v5 = v4 + *(type metadata accessor for Slot(0) + 36);

  return sub_242E48424(v5, a2);
}

void sub_242E49860(uint64_t a1)
{
  sub_242DB2054(319, &qword_27ECF8EE0, &qword_27ECF8EE8, &unk_242F39B00);
  if (v1 <= 0x3F)
  {
    sub_242E49944();
    if (v2 <= 0x3F)
    {
      sub_242DB2054(319, &qword_27ECF8EF0, &qword_27ECF3030, &qword_242F17A28);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Slot(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_242E49944()
{
  if (!qword_27ECF84A0)
  {
    v0 = sub_242F03BC0();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF84A0);
    }
  }
}

unint64_t sub_242E49994()
{
  result = qword_27ECF9B28;
  if (!qword_27ECF9B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF9B30, &qword_242F3CD78);
    sub_242E49A4C();
    sub_242C7E000(&qword_27ECF9B48, &qword_27ECF9B50, &qword_242F3CD88, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9B28);
  }

  return result;
}

unint64_t sub_242E49A4C()
{
  result = qword_27ECF9B38;
  if (!qword_27ECF9B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF9B40, &qword_242F3CD80);
    sub_242C7E000(&qword_27ECF9B48, &qword_27ECF9B50, &qword_242F3CD88, MEMORY[0x277CE11A8]);
    sub_242C7E000(&qword_27ECF9B58, &qword_27ECF9B60, &qword_242F3CD90, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9B38);
  }

  return result;
}

unint64_t sub_242E49B30()
{
  result = qword_27ECF9B98;
  if (!qword_27ECF9B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF9B90, &qword_242F3CDC0);
    sub_242E49C18(&qword_27ECF9BA0, &qword_27ECF9B88, &qword_242F3CDB8, sub_242E49C94);
    sub_242E49D44(&qword_27ECF9BC0, type metadata accessor for InstrumentView, &protocol conformance descriptor for InstrumentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9B98);
  }

  return result;
}

uint64_t sub_242E49C18(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_242E49C94()
{
  result = qword_27ECF9BA8;
  if (!qword_27ECF9BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF9BB0, &qword_242F3CDC8);
    sub_242C7E000(&qword_27ECF9BB8, &qword_27ECF8F38, &qword_242F39B98, MEMORY[0x277CE1148]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9BA8);
  }

  return result;
}

uint64_t sub_242E49D44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_242E49D8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_242E49DF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_242E49E80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_242E49EC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_242E49F5C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for NotificationView(0);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9BC8, &qword_242F3D2C0);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = *(v1 + 120);
  v45 = *(v1 + 104);
  v46 = v10;
  v47 = *(v1 + 136);
  v48 = *(v1 + 152);
  v11 = *(v1 + 56);
  v41 = *(v1 + 40);
  v42 = v11;
  v12 = *(v1 + 88);
  v43 = *(v1 + 72);
  v44 = v12;
  v13 = *(v1 + 24);
  v39 = *(v1 + 8);
  v40 = v13;
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7CC0, &qword_242F3D2F0);
  swift_storeEnumTagMultiPayload();
  v14 = v4[7];
  *(v6 + v14) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v15 = v4[8];
  *(v6 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7F08, &qword_242F359F0);
  swift_storeEnumTagMultiPayload();
  v16 = v4[9];
  *(v6 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9BD0, &qword_242F48340);
  swift_storeEnumTagMultiPayload();
  v17 = v6 + v4[10];
  v18 = v46;
  *(v17 + 6) = v45;
  *(v17 + 7) = v18;
  *(v17 + 8) = v47;
  *(v17 + 18) = v48;
  v19 = v42;
  *(v17 + 2) = v41;
  *(v17 + 3) = v19;
  v20 = v44;
  *(v17 + 4) = v43;
  *(v17 + 5) = v20;
  v21 = v40;
  *v17 = v39;
  *(v17 + 1) = v21;
  sub_242E4A350(&v39, v38);
  LODWORD(v16) = sub_242F03C00();
  if (v16 == sub_242F03C00())
  {
    sub_242F04A50();
  }

  else
  {
    sub_242F04A60();
  }

  sub_242F03E40();
  sub_242E4A3AC(v6, v9);
  v22 = &v9[*(v7 + 36)];
  v23 = v38[5];
  *(v22 + 4) = v38[4];
  *(v22 + 5) = v23;
  *(v22 + 6) = v38[6];
  v24 = v38[1];
  *v22 = v38[0];
  *(v22 + 1) = v24;
  v25 = v38[3];
  *(v22 + 2) = v38[2];
  *(v22 + 3) = v25;
  if (qword_27ECEF4B8 != -1)
  {
    swift_once();
  }

  v26 = sub_242F039A0();
  v27 = __swift_project_value_buffer(v26, qword_27ED5D2C8);
  v36 = 540697705;
  v37 = 0xE400000000000000;
  MEMORY[0x245D26660](v39, *(&v39 + 1));
  v28 = v36;
  v29 = v37;
  v30 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9BD8, &qword_242F3D380) + 36);
  (*(*(v26 - 8) + 16))(v30, v27, v26);
  v31 = type metadata accessor for AppearanceLogger(0);
  v32 = v30 + *(v31 + 20);
  *v32 = "Remote Notification";
  *(v32 + 8) = 19;
  *(v32 + 16) = 2;
  v33 = (v30 + *(v31 + 24));
  *v33 = v28;
  v33[1] = v29;
  return sub_242E4A410(v9, a1);
}

uint64_t sub_242E4A3AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_242E4A410(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9BC8, &qword_242F3D2C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_242E4A480()
{
  result = qword_27ECF9BE0;
  if (!qword_27ECF9BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF9BD8, &qword_242F3D380);
    sub_242E4A53C();
    sub_242E4A5F8(&qword_27ECF9BF8, type metadata accessor for AppearanceLogger, &unk_242F2EB04);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9BE0);
  }

  return result;
}

unint64_t sub_242E4A53C()
{
  result = qword_27ECF9BE8;
  if (!qword_27ECF9BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF9BC8, &qword_242F3D2C0);
    sub_242E4A5F8(&qword_27ECF9BF0, type metadata accessor for NotificationView, &protocol conformance descriptor for NotificationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9BE8);
  }

  return result;
}

uint64_t sub_242E4A5F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void VectorFont.Asset.restore(from:)(void *a1)
{
  v3 = v2;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_2Tm(a1, v4);
  v6 = *v1;
  v7 = v1[1];
  v12 = 1;
  v8 = *(v5 + 8);

  v9 = v6;
  v10 = v3;
  v11 = v8(v9, v7, &v12, v4, v5);

  if (!v10)
  {

    v1[6] = v11;
  }
}

uint64_t VectorFont.assets.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 8);
  v6 = v0[5];
  v7 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200, &qword_242F0A530);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_242F09510;
  *(v8 + 56) = &type metadata for VectorFont.Asset;
  *(v8 + 64) = &protocol witness table for VectorFont.Asset;
  v9 = swift_allocObject();
  *(v8 + 32) = v9;
  *(v9 + 16) = v2;
  *(v9 + 24) = v1;
  *(v9 + 32) = v4;
  *(v9 + 40) = v3;
  *(v9 + 48) = v5;
  *(v9 + 56) = v6;
  *(v9 + 64) = v7;
  v10 = v7;

  return v8;
}

void VectorFont.restoreAssets(from:)(void *a1)
{
  v3 = v2;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_2Tm(a1, v4);
  v6 = *v1;
  v7 = v1[1];
  v12 = 1;
  v8 = *(v5 + 8);

  v9 = v6;
  v10 = v3;
  v11 = v8(v9, v7, &v12, v4, v5);

  if (!v10)
  {

    v1[6] = v11;
  }
}

void VectorFont.Asset.postScriptName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t VectorFont.Asset.familyName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void VectorFont.Asset.familyName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void *VectorFont.Asset.file.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t VectorFont.Asset.init(postScriptName:familyName:traits:weight:file:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a8;
  *(a7 + 48) = a6;
  return result;
}

void VectorFont.Asset.init(resource:bundle:)(void *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_242F03690();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v46[-v11];
  MEMORY[0x28223BE20](v13);
  v15 = &v46[-v14];
  v16 = sub_242F04F00();
  v17 = [a3 URLForResource:v16 withExtension:0];

  if (!v17)
  {
    goto LABEL_19;
  }

  sub_242F03660();

  (*(v7 + 32))(v15, v12, v6);
  (*(v7 + 16))(v9, v15, v6);
  v18 = objc_allocWithZone(MEMORY[0x277CCAA20]);
  v19 = sub_242D6EC18(v9, 0);
  if (!v19)
  {
    (*(v7 + 8))(v15, v6);
LABEL_19:

LABEL_23:
    *(a4 + 48) = 0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    return;
  }

  sub_242F03620();
  v20 = sub_242F04F00();
  [v19 setPreferredFilename_];

  v21 = sub_242F03630();
  FontDescriptorsFromURL = CTFontManagerCreateFontDescriptorsFromURL(v21);

  if (!FontDescriptorsFromURL)
  {
    goto LABEL_20;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    v19 = FontDescriptorsFromURL;
    goto LABEL_22;
  }

  v57 = 0;
  type metadata accessor for CTFontDescriptor(0);
  sub_242F05300();

  v23 = v57;
  if (!v57)
  {
LABEL_20:

LABEL_22:

    (*(v7 + 8))(v15, v6);
    goto LABEL_23;
  }

  if (!(v57 >> 62))
  {
    if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

LABEL_25:
    (*(v7 + 8))(v15, v6);

LABEL_31:

    goto LABEL_23;
  }

  if (!sub_242F059B0())
  {
    goto LABEL_25;
  }

LABEL_8:
  if ((v23 & 0xC000000000000001) != 0)
  {
    v53 = v23;
    v54 = MEMORY[0x245D270D0](0, v23);
    if (!(v23 >> 62))
    {
      v23 = v53;
      v25 = v54;
      v24 = v53 & 0xFFFFFFFFFFFFFF8;
LABEL_11:
      if (*(v24 + 16) == 1)
      {
        goto LABEL_12;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v24 = v23 & 0xFFFFFFFFFFFFFF8;
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v25 = *(v23 + 32);
      goto LABEL_11;
    }

    __break(1u);
  }

  v23 = v53;
  v43 = sub_242F059B0();
  v25 = v54;
  if (v43 != 1)
  {
LABEL_30:
    v44 = v25;
    (*(v7 + 8))(v15, v6);

    goto LABEL_31;
  }

LABEL_12:
  v54 = v25;
  v55 = CTFontCreateWithFontDescriptor(v25, 0.0, 0);
  v26 = CTFontCopyPostScriptName(v55);
  v51 = sub_242F04F30();
  v52 = v27;

  v28 = CTFontCopyFamilyName(v55);
  v29 = sub_242F04F30();
  v49 = v30;
  v50 = v29;

  v31 = CTFontCopyTraits(v55);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v57 = 0;
    sub_242F04CE0();

    v32 = v57;
    if (v57)
    {
      v33 = sub_242F04F30();
      if (*(v32 + 16))
      {
        v53 = v23;
        v48 = v32;
        v35 = sub_242CE519C(v33, v34);
        v47 = v36;

        if (v47)
        {
          v37 = *(*(v48 + 56) + 8 * v35);
          swift_unknownObjectRetain();

          v57 = v37;
          if (swift_dynamicCast())
          {

            v38 = v56;
            v39 = v55;
            SymbolicTraits = CTFontGetSymbolicTraits(v55);

            (*(v7 + 8))(v15, v6);
            v41 = v52;
            *a4 = v51;
            *(a4 + 8) = v41;
            v42 = v49;
            *(a4 + 16) = v50;
            *(a4 + 24) = v42;
            *(a4 + 32) = SymbolicTraits;
            *(a4 + 40) = v38;
            *(a4 + 48) = v19;
            return;
          }

          goto LABEL_35;
        }
      }

      else
      {
      }
    }
  }

  else
  {
  }

LABEL_35:
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_242F05A80();

  v57 = 0xD00000000000001FLL;
  v58 = 0x8000000242F5C9C0;
  MEMORY[0x245D26660](v51, v52);
  MEMORY[0x245D26660](2629690, 0xE300000000000000);
  sub_242E4D3C0(&qword_27ECF5D48, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
  v45 = sub_242F05F60();
  MEMORY[0x245D26660](v45);

  MEMORY[0x245D26660](41, 0xE100000000000000);
  sub_242F05C60();
  __break(1u);
}

void VectorFont.Asset.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  sub_242F04DD0();
  sub_242F04DD0();
  sub_242F063C0();
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  MEMORY[0x245D279D0](*&v4);
  if (v3)
  {
    sub_242F063B0();
    v5 = v3;
    sub_242F05820();
  }

  else
  {
    sub_242F063B0();
  }
}

uint64_t VectorFont.Asset.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  *&v7[72] = *v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  sub_242F06390();
  VectorFont.Asset.hash(into:)(v7);
  return sub_242F063E0();
}

uint64_t sub_242E4B248()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  *&v7[72] = *v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  sub_242F06390();
  VectorFont.Asset.hash(into:)(v7);
  return sub_242F063E0();
}

uint64_t sub_242E4B2B8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *&v8[72] = *v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  sub_242F06390();
  VectorFont.Asset.hash(into:)(v8);
  return sub_242F063E0();
}

double VectorFont.asset.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  v8 = v7;

  return result;
}

__n128 VectorFont.asset.setter(__n128 *a1)
{
  v9 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = a1[2].n128_u32[0];
  v5 = a1[2].n128_u64[1];
  v6 = a1[3].n128_u64[0];
  v7 = v1[3].n128_u64[0];

  result = v9;
  *v1 = v9;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  v1[2].n128_u32[0] = v4;
  v1[2].n128_u64[1] = v5;
  v1[3].n128_u64[0] = v6;
  return result;
}

uint64_t VectorFont.init(asset:pointSize:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *(result + 16);
  v4 = *(result + 24);
  v5 = *(result + 32);
  v6 = *(result + 40);
  v7 = *(result + 48);
  *a2 = *result;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  *(a2 + 56) = a3;
  return result;
}

void VectorFont.init(resource:pointSize:bundle:)(void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  VectorFont.Asset.init(resource:bundle:)(a3, &v13);
  v7 = v14;
  if (v14)
  {
    v8 = v19;
    v9 = v18;
    v10 = v16;
    v11 = v17;
    v12 = v15;
    *a4 = v13;
    *(a4 + 8) = v7;
    *(a4 + 32) = v11;
  }

  else
  {
    v12 = 0;
    v10 = 0;
    v8 = 0;
    *(a4 + 32) = 0;
    v9 = 0;
    a5 = 0.0;
    *a4 = 0;
    *(a4 + 8) = 0;
  }

  *(a4 + 16) = v12;
  *(a4 + 24) = v10;
  *(a4 + 40) = v9;
  *(a4 + 48) = v8;
  *(a4 + 56) = a5;
}

uint64_t sub_242E4B530()
{
  if (*v0)
  {
    return 0x7A6953746E696F70;
  }

  else
  {
    return 0x7465737361;
  }
}

void sub_242E4B56C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7A6953746E696F70 && a2 == 0xE900000000000065)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_242F06110();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_242E4B64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E4CEEC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E4B688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E4CEEC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t VectorFont.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9C00, &qword_242F3D398);
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[3];
  v22 = v1[2];
  v23 = v6;
  v33 = *(v1 + 8);
  v9 = v1[5];
  v10 = v1[6];
  v11 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E4CEEC(v11, v12, v13);

  v14 = v10;
  v15 = sub_242F064C0();
  v26 = v23;
  v27 = v7;
  v28 = v22;
  v29 = v8;
  v30 = v33;
  v31 = v9;
  v32 = v10;
  v34 = 0;
  sub_242C869C4(v15, v16, v17);
  v18 = v24;
  sub_242F05F20();
  v19 = v32;

  if (!v18)
  {
    LOBYTE(v26) = 1;
    sub_242F05EE0();
  }

  return (*(v25 + 8))(v5, v3);
}

uint64_t VectorFont.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 56);
  VectorFont.Asset.hash(into:)(a1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  return MEMORY[0x245D279D0](*&v3);
}

uint64_t VectorFont.hashValue.getter()
{
  v1 = *(v0 + 56);
  sub_242F06390();
  VectorFont.Asset.hash(into:)(v4);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x245D279D0](*&v2);
  return sub_242F063E0();
}

uint64_t VectorFont.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9C10, &qword_242F3D3A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E4CEEC(v9, v10, v11);
  v12 = sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  LOBYTE(v31) = 0;
  sub_242C86C4C(v12, v13, v14);
  sub_242F05E00();
  v15 = v36;
  v16 = v38;
  v28 = v37;
  v29 = v35;
  v43 = v39;
  v17 = v40;
  v30 = v41;
  v44 = 1;
  sub_242F05DC0();
  v19 = v18;
  (*(v6 + 8))(v8, v5);
  v21 = v28;
  v20 = v29;
  *&v31 = v29;
  *(&v31 + 1) = v15;
  *&v32 = v28;
  *(&v32 + 1) = v16;
  v22 = v16;
  v23 = v43;
  LODWORD(v33) = v43;
  *(&v33 + 1) = v17;
  v24 = v30;
  *&v34 = v30;
  *(&v34 + 1) = v19;
  v25 = v32;
  *a2 = v31;
  a2[1] = v25;
  v26 = v34;
  a2[2] = v33;
  a2[3] = v26;
  sub_242D67214(&v31, &v35);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  v35 = v20;
  v36 = v15;
  v37 = v21;
  v38 = v22;
  v39 = v23;
  v40 = v17;
  v41 = v24;
  v42 = v19;
  return sub_242D67270(&v35);
}

uint64_t sub_242E4BCA0(uint64_t a1)
{
  v2 = *(v1 + 56);
  VectorFont.Asset.hash(into:)(a1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  return MEMORY[0x245D279D0](*&v3);
}

uint64_t sub_242E4BD1C(uint64_t a1)
{
  v2 = *(v1 + 56);
  sub_242F06390();
  VectorFont.Asset.hash(into:)(v5);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x245D279D0](*&v3);
  return sub_242F063E0();
}

uint64_t sub_242E4BDD0()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

double sub_242E4BE9C(uint64_t a1)
{
  sub_242F04DD0();

  return result;
}

uint64_t sub_242E4BF54(uint64_t a1)
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

unint64_t sub_242E4C01C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_242E4D374(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_242E4C04C(uint64_t *a1@<X8>)
{
  v2 = 0xEE00656D614E7470;
  v3 = 0x6972635374736F70;
  v4 = 0x737469617274;
  if (*v1 != 2)
  {
    v4 = 0x746867696577;
  }

  if (*v1)
  {
    v3 = 0x614E796C696D6166;
    v2 = 0xEA0000000000656DLL;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE600000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_242E4C0D4()
{
  v1 = 0x6972635374736F70;
  v2 = 0x737469617274;
  if (*v0 != 2)
  {
    v2 = 0x746867696577;
  }

  if (*v0)
  {
    v1 = 0x614E796C696D6166;
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

unint64_t sub_242E4C158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242E4D374(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242E4C180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E4CF40(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E4C1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E4CF40(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t VectorFont.Asset.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t VectorFont.Asset.preferredFilename.getter()
{
  v1 = *(v0 + 48);
  if (v1 && (v2 = [v1 preferredFilename]) != 0)
  {
    v3 = v2;
    v4 = sub_242F04F30();

    return v4;
  }

  else
  {
    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

NSFileWrapper_optional __swiftcall VectorFont.Asset.generateAsset(destination:)(CarPlayAssetUI::ArcPackageExporter::Destination destination)
{
  v2 = *(v1 + 48);
  v3 = v2;
  v5 = v2;
  result.value.super.isa = v5;
  result.is_nil = v4;
  return result;
}

uint64_t VectorFont.Asset.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9C18, &qword_242F3D3A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = *(v1 + 16);
  v16 = *(v1 + 24);
  v17 = v7;
  HIDWORD(v15) = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E4CF40(v9, v10, v11);
  sub_242F064C0();
  LOBYTE(v19) = 0;
  v12 = v18;
  sub_242F05EC0();
  if (!v12)
  {
    v14 = HIDWORD(v15);
    LOBYTE(v19) = 1;
    sub_242F05EC0();
    LODWORD(v19) = v14;
    v20 = 2;
    type metadata accessor for SymbolicTraits(0);
    sub_242E4D3C0(&qword_27ECF9C28, type metadata accessor for SymbolicTraits, &protocol conformance descriptor for UIFontDescriptorSymbolicTraits);
    sub_242F05F20();
    v19 = v8;
    v20 = 3;
    type metadata accessor for Weight(0);
    sub_242E4D3C0(&qword_27ECF62C8, type metadata accessor for Weight, &protocol conformance descriptor for UIFontWeight);
    sub_242F05F20();
  }

  return (*(v4 + 8))(v6, v3);
}

void VectorFont.Asset.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9C30, &qword_242F3D3B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E4CF40(v9, v10, v11);
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  else
  {
    LOBYTE(v21) = 0;
    v12 = sub_242F05DA0();
    v20 = v13;
    LOBYTE(v21) = 1;
    v18 = sub_242F05DA0();
    v19 = v14;
    type metadata accessor for SymbolicTraits(0);
    v23 = 2;
    sub_242E4D3C0(&qword_27ECF9C38, type metadata accessor for SymbolicTraits, &protocol conformance descriptor for UIFontDescriptorSymbolicTraits);
    sub_242F05E00();
    v22 = v21;
    type metadata accessor for Weight(0);
    v23 = 3;
    sub_242E4D3C0(&qword_27ECF62E8, type metadata accessor for Weight, &protocol conformance descriptor for UIFontWeight);
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v15 = v21;
    v17 = v19;
    v16 = v20;
    *a2 = v12;
    *(a2 + 8) = v16;
    *(a2 + 16) = v18;
    *(a2 + 24) = v17;
    *(a2 + 32) = v22;
    *(a2 + 40) = v15;
    *(a2 + 48) = 0;

    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }
}

uint64_t sub_242E4C908()
{
  v1 = *(v0 + 48);
  if (v1 && (v2 = [v1 preferredFilename]) != 0)
  {
    v3 = v2;
    v4 = sub_242F04F30();

    return v4;
  }

  else
  {
    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

void *sub_242E4C9B8()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t sub_242E4CA10()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 8);
  v6 = v0[5];
  v7 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200, &qword_242F0A530);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_242F09510;
  *(v8 + 56) = &type metadata for VectorFont.Asset;
  *(v8 + 64) = &protocol witness table for VectorFont.Asset;
  v9 = swift_allocObject();
  *(v8 + 32) = v9;
  *(v9 + 16) = v2;
  *(v9 + 24) = v1;
  *(v9 + 32) = v4;
  *(v9 + 40) = v3;
  *(v9 + 48) = v5;
  *(v9 + 56) = v6;
  *(v9 + 64) = v7;
  v10 = v7;

  return v8;
}

uint64_t sub_242E4CBF8()
{
  sub_242F06390();
  sub_242F063C0();
  return sub_242F063E0();
}

uint64_t sub_242E4CC6C(uint64_t a1)
{
  sub_242F06390();
  sub_242F063C0();
  return sub_242F063E0();
}

uint64_t _s14CarPlayAssetUI10VectorFontV0C0V2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 8);
  v5 = *(a1 + 5);
  v6 = a1[6];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (*a1 == *a2 && a1[1] == *(a2 + 8) || (v12 = sub_242F06110(), result = 0, (v12 & 1) != 0))
  {
    if (v2 == v7 && v3 == v8)
    {
      result = 0;
    }

    else
    {
      v14 = sub_242F06110();
      result = 0;
      if ((v14 & 1) == 0)
      {
        return result;
      }
    }

    if (v4 == v9 && v5 == v10)
    {
      if (v6)
      {
        if (v11)
        {
          sub_242C6CBCC();
          v15 = v11;
          v16 = v6;
          v17 = sub_242F05810();

          if (v17)
          {
            return 1;
          }
        }
      }

      else if (!v11)
      {
        return 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t _s14CarPlayAssetUI10VectorFontV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v13 = *(a2 + 8);
  v14 = a2[5];
  v15 = a2[6];
  v16 = *(a2 + 7);
  v26[0] = *a1;
  v26[1] = v2;
  v26[2] = v3;
  v26[3] = v4;
  v27 = v5;
  v28 = v6;
  v29 = v7;
  v22[0] = v9;
  v22[1] = v10;
  v22[2] = v11;
  v22[3] = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v17 = v15;

  v18 = v7;

  LOBYTE(v2) = _s14CarPlayAssetUI10VectorFontV0C0V2eeoiySbAE_AEtFZ_0(v26, v22);
  v19 = v25;

  v20 = v29;

  return v2 & (v8 == v16);
}

unint64_t sub_242E4CEEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9C08;
  if (!qword_27ECF9C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9C08);
  }

  return result;
}

unint64_t sub_242E4CF40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9C20;
  if (!qword_27ECF9C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9C20);
  }

  return result;
}

unint64_t sub_242E4CF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9C40;
  if (!qword_27ECF9C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9C40);
  }

  return result;
}

unint64_t sub_242E4CFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9C48;
  if (!qword_27ECF9C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9C48);
  }

  return result;
}

uint64_t sub_242E4D08C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_242E4D0D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_242E4D168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9C58;
  if (!qword_27ECF9C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9C58);
  }

  return result;
}

unint64_t sub_242E4D1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9C60;
  if (!qword_27ECF9C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9C60);
  }

  return result;
}

unint64_t sub_242E4D218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9C68;
  if (!qword_27ECF9C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9C68);
  }

  return result;
}

unint64_t sub_242E4D270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9C70;
  if (!qword_27ECF9C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9C70);
  }

  return result;
}

unint64_t sub_242E4D2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9C78;
  if (!qword_27ECF9C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9C78);
  }

  return result;
}

unint64_t sub_242E4D320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9C80;
  if (!qword_27ECF9C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9C80);
  }

  return result;
}

unint64_t sub_242E4D374(uint64_t a1, uint64_t a2)
{
  v2 = sub_242F05CD0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_242E4D3C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Instrument.GaugeStyle.ProgressBarConfiguration.Style.description.getter()
{
  memcpy(v3, v0, 0x164uLL);
  v1 = sub_242D49294(v3);
  sub_242C59070(v3);
  if (v1 == 1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x676E695269676944;
  }
}

uint64_t sub_242E4D494()
{
  if (*v0)
  {
    return 0x74656D7265776F70;
  }

  else
  {
    return 0x72614269676964;
  }
}

void sub_242E4D4D4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72614269676964 && a2 == 0xE700000000000000;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x74656D7265776F70 && a2 == 0xEA00000000007265)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_242F06110();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_242E4D5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E5087C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E4D5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E5087C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242E4D630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E50978(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E4D66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E50978(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242E4D6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E508D0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E4D6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E508D0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Instrument.GaugeStyle.ProgressBarConfiguration.Style.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9C90, &qword_242F3D900);
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v37 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9C98, &qword_242F3D908);
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9CA0, &qword_242F3D910);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v12 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E5087C(v12, v13, v14);
  sub_242F064C0();
  memcpy(v44, v42, 0x164uLL);
  LODWORD(a1) = sub_242D49294(v44);
  v15 = (v9 + 8);
  v16 = sub_242C59070(v44);
  v19 = v16;
  if (a1 == 1)
  {
    LOBYTE(v43[0]) = 1;
    sub_242E508D0(v16, v17, v18);
    sub_242F05E40();
    v20 = memcpy(v43, v19, 0x164uLL);
    sub_242E50924(v20, v21, v22);
    v23 = v41;
    sub_242F05F20();
    (*(v40 + 8))(v4, v23);
  }

  else
  {
    LOBYTE(v43[0]) = 0;
    sub_242E50978(v16, v17, v18);
    v24 = sub_242F05E40();
    v25 = *v19;
    v26 = v19[2];
    v43[1] = v19[1];
    v43[2] = v26;
    v43[0] = v25;
    v27 = v19[3];
    v28 = v19[4];
    v29 = v19[6];
    v43[5] = v19[5];
    v43[6] = v29;
    v43[3] = v27;
    v43[4] = v28;
    v30 = v19[7];
    v31 = v19[8];
    v32 = v19[9];
    *(&v43[9] + 12) = *(v19 + 156);
    v43[8] = v31;
    v43[9] = v32;
    v43[7] = v30;
    sub_242E509CC(v24, v33, v34);
    v35 = v39;
    sub_242F05F20();
    (*(v38 + 8))(v7, v35);
  }

  return (*v15)(v11, v8);
}

uint64_t Instrument.GaugeStyle.ProgressBarConfiguration.Style.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9CD0, &qword_242F3D918);
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9CD8, &qword_242F3D920);
  v45 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9CE0, &unk_242F3D928);
  v49 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v13 = a1[3];
  v58 = a1;
  v14 = __swift_project_boxed_opaque_existential_2Tm(a1, v13);
  sub_242E5087C(v14, v15, v16);
  v17 = v50;
  sub_242F06480();
  if (!v17)
  {
    v50 = v7;
    v18 = v48;
    v19 = sub_242F05E10();
    v20 = (2 * *(v19 + 16)) | 1;
    v54 = v19;
    v55 = v19 + 32;
    v56 = 0;
    v57 = v20;
    v21 = sub_242C7FBE4();
    v24 = v10;
    if (v21 == 2 || v56 != v57 >> 1)
    {
      v28 = v12;
      v29 = sub_242F05B10();
      swift_allocError();
      v31 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10, &qword_242F095A0);
      *v31 = &type metadata for Instrument.GaugeStyle.ProgressBarConfiguration.Style;
      sub_242F05D20();
      sub_242F05AF0();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84160], v29);
      swift_willThrow();
      (*(v49 + 8))(v28, v24);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v21)
      {
        v52[0] = 1;
        sub_242E508D0(v21, v22, v23);
        v25 = sub_242F05D10();
        v26 = v10;
        v27 = v49;
        v37 = v18;
        v38 = v26;
        sub_242E50A20(v25, v26, v39);
        v40 = v46;
        sub_242F05E00();
        (*(v47 + 8))(v6, v40);
        (*(v27 + 8))(v12, v38);
        swift_unknownObjectRelease();
        memcpy(v51, v52, sizeof(v51));
        sub_242E50A74(v51);
        v43 = v51;
      }

      else
      {
        v52[0] = 0;
        sub_242E50978(v21, v22, v23);
        v33 = v9;
        v34 = sub_242F05D10();
        v35 = v24;
        v36 = v49;
        v37 = v18;
        v47 = v35;
        sub_242E50AD0(v34, v35, v41);
        v42 = v50;
        sub_242F05E00();
        (*(v45 + 8))(v33, v42);
        (*(v36 + 8))(v12, v47);
        swift_unknownObjectRelease();
        *&v52[128] = *&v51[128];
        *&v52[144] = *&v51[144];
        *&v52[156] = *&v51[156];
        *&v52[64] = *&v51[64];
        *&v52[80] = *&v51[80];
        *&v52[96] = *&v51[96];
        *&v52[112] = *&v51[112];
        *v52 = *v51;
        *&v52[16] = *&v51[16];
        *&v52[32] = *&v51[32];
        *&v52[48] = *&v51[48];
        sub_242E50B24(v52);
        v43 = v52;
      }

      memcpy(v53, v43, sizeof(v53));
      memcpy(v37, v53, 0x164uLL);
    }
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v58);
}

uint64_t sub_242E4E0E0()
{
  memcpy(v3, v0, 0x164uLL);
  v1 = sub_242D49294(v3);
  sub_242C59070(v3);
  if (v1 == 1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x676E695269676944;
  }
}

uint64_t Instrument.GaugeStyle.ProgressBarConfiguration.style.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x164uLL);
  memcpy(a1, v1, 0x164uLL);
  return sub_242E50B7C(__dst, v4);
}

void *Instrument.GaugeStyle.ProgressBarConfiguration.style.setter(const void *a1)
{
  memcpy(v4, v1, 0x164uLL);
  sub_242E50BB4(v4);
  return memcpy(v1, a1, 0x164uLL);
}

uint64_t Instrument.GaugeStyle.ProgressBarConfiguration.assets.getter()
{
  memcpy(__dst, v0, 0x164uLL);
  sub_242D49294(__dst);
  sub_242C59070(__dst);
  return MEMORY[0x277D84F90];
}

void *Instrument.GaugeStyle.ProgressBarConfiguration.restoreAssets(from:)()
{
  memcpy(v2, v0, sizeof(v2));
  memcpy(__dst, v0, 0x164uLL);
  sub_242D49294(__dst);
  sub_242C59070(__dst);
  return memcpy(v0, v2, 0x164uLL);
}

uint64_t Instrument.GaugeStyle.ProgressBarConfiguration.description.getter()
{
  memcpy(__dst, v0, 0x164uLL);
  v1 = sub_242D49294(__dst);
  sub_242C59070(__dst);
  if (v1 == 1)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0x676E695269676944;
  }

  if (v1 == 1)
  {
    v3 = 0x8000000242F5CA00;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  MEMORY[0x245D26660](v2, v3);

  return 0x206C6169646152;
}

uint64_t static Instrument.GaugeStyle.ProgressBarConfiguration.== infix(_:_:)(void *__src, const void *a2)
{
  memcpy(__dst, __src, 0x164uLL);
  memcpy(v8, a2, 0x164uLL);
  memcpy(__srca, __src, 0x164uLL);
  memcpy(v5, a2, 0x164uLL);
  sub_242E50B7C(__dst, v10);
  sub_242E50B7C(v8, v10);
  LOBYTE(a2) = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO24ProgressBarConfigurationV0G0O2eeoiySbAI_AItFZ_0(__srca, v5);
  memcpy(v9, v5, 0x164uLL);
  sub_242E50BE4(v9);
  memcpy(v10, __srca, 0x164uLL);
  sub_242E50BE4(v10);
  return a2 & 1;
}

void sub_242E4E49C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_242F06110();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_242E4E520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E50C14(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E4E55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E50C14(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Instrument.GaugeStyle.ProgressBarConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9CF8, &qword_242F3D938);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-v5];
  memcpy(v16, v1, 0x164uLL);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  v7 = sub_242E50B7C(v16, v15);
  sub_242E50C14(v7, v8, v9);
  sub_242F064C0();
  v10 = memcpy(v15, v16, 0x164uLL);
  sub_242E50C68(v10, v11, v12);
  sub_242F05F20();
  memcpy(v14, v15, 0x164uLL);
  sub_242E50BE4(v14);
  return (*(v4 + 8))(v6, v3);
}

void _s14CarPlayAssetUI10InstrumentV10GaugeStyleO24ProgressBarConfigurationV0G0O4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  memcpy(__dst, v1, 0x164uLL);
  v3 = sub_242D49294(__dst);
  sub_242C59070(__dst);
  if (v3 == 1)
  {
    MEMORY[0x245D279A0](1);
    PowermeterDataIdentifiers.hash(into:)(a1);
    Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(a1);
  }

  else
  {
    MEMORY[0x245D279A0](0);
  }

  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(a1);
}

uint64_t _s14CarPlayAssetUI10InstrumentV10GaugeStyleO24ProgressBarConfigurationV0G0O9hashValueSivg_0()
{
  sub_242F06390();
  memcpy(__dst, v0, 0x164uLL);
  v1 = sub_242D49294(__dst);
  sub_242C59070(__dst);
  if (v1 == 1)
  {
    MEMORY[0x245D279A0](1);
    PowermeterDataIdentifiers.hash(into:)(v3);
    Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v3);
  }

  else
  {
    MEMORY[0x245D279A0](0);
  }

  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v3);
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.ProgressBarConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v17 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9D10, &qword_242F3D940);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-v6];
  v8 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E50C14(v8, v9, v10);
  v11 = sub_242F06480();
  if (!v2)
  {
    v14 = v17;
    sub_242E50CBC(v11, v12, v13);
    sub_242F05E00();
    (*(v5 + 8))(v7, v4);
    memcpy(v14, v16, 0x164uLL);
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242E4EBAC()
{
  memcpy(__dst, v0, 0x164uLL);
  sub_242D49294(__dst);
  sub_242C59070(__dst);
  return MEMORY[0x277D84F90];
}

void *sub_242E4EBF8()
{
  memcpy(v2, v0, sizeof(v2));
  memcpy(__dst, v0, 0x164uLL);
  sub_242D49294(__dst);
  sub_242C59070(__dst);
  return memcpy(v0, v2, 0x164uLL);
}

uint64_t sub_242E4EC94(uint64_t a1)
{
  sub_242F06390();
  memcpy(__dst, v1, 0x164uLL);
  v2 = sub_242D49294(__dst);
  sub_242C59070(__dst);
  if (v2 == 1)
  {
    MEMORY[0x245D279A0](1);
    PowermeterDataIdentifiers.hash(into:)(v4);
    Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v4);
  }

  else
  {
    MEMORY[0x245D279A0](0);
  }

  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v4);
  return sub_242F063E0();
}

uint64_t sub_242E4EE18()
{
  memcpy(__dst, v0, 0x164uLL);
  v1 = sub_242D49294(__dst);
  sub_242C59070(__dst);
  if (v1 == 1)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0x676E695269676944;
  }

  if (v1 == 1)
  {
    v3 = 0x8000000242F5CA00;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  MEMORY[0x245D26660](v2, v3);

  return 0x206C6169646152;
}

uint64_t sub_242E4EED0(void *__src, const void *a2)
{
  memcpy(__dst, __src, 0x164uLL);
  memcpy(v8, a2, 0x164uLL);
  memcpy(__srca, __src, 0x164uLL);
  memcpy(v5, a2, 0x164uLL);
  sub_242E50B7C(__dst, v10);
  sub_242E50B7C(v8, v10);
  LOBYTE(a2) = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO24ProgressBarConfigurationV0G0O2eeoiySbAI_AItFZ_0(__srca, v5);
  memcpy(v9, v5, 0x164uLL);
  sub_242E50BE4(v9);
  memcpy(v10, __srca, 0x164uLL);
  sub_242E50BE4(v10);
  return a2 & 1;
}

void Instrument.GaugeStyle.DigiBarPowermeterConfiguration.dataIdentifiers.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 6);
  *a1 = *v1;
  *(a1 + 4) = v2;
  *(a1 + 6) = v3;
}

uint64_t Instrument.GaugeStyle.DigiBarPowermeterConfiguration.dataIdentifiers.setter(uint64_t result)
{
  v2 = *(result + 4);
  v3 = *(result + 6);
  *v1 = *result;
  *(v1 + 4) = v2;
  *(v1 + 6) = v3;
  return result;
}

uint64_t Instrument.GaugeStyle.DigiBarPowermeterConfiguration.consumedPowerConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 152);
  v14[8] = *(v1 + 136);
  v15[0] = v3;
  *(v15 + 12) = *(v1 + 164);
  v4 = *(v1 + 56);
  v5 = *(v1 + 88);
  v14[4] = *(v1 + 72);
  v14[5] = v5;
  v14[6] = *(v1 + 104);
  v14[7] = v2;
  v6 = *(v1 + 24);
  v14[0] = *(v1 + 8);
  v14[1] = v6;
  v14[2] = *(v1 + 40);
  v14[3] = v4;
  v7 = *(v1 + 120);
  v8 = *(v1 + 152);
  a1[8] = *(v1 + 136);
  a1[9] = v8;
  *(a1 + 156) = *(v1 + 164);
  v9 = *(v1 + 56);
  v10 = *(v1 + 88);
  a1[4] = *(v1 + 72);
  a1[5] = v10;
  a1[6] = *(v1 + 104);
  a1[7] = v7;
  v11 = *(v1 + 24);
  *a1 = *(v1 + 8);
  a1[1] = v11;
  a1[2] = *(v1 + 40);
  a1[3] = v9;
  return sub_242E50D10(v14, &v13);
}

__n128 Instrument.GaugeStyle.DigiBarPowermeterConfiguration.consumedPowerConfiguration.setter(uint64_t a1)
{
  v3 = *(v1 + 120);
  v4 = *(v1 + 152);
  v14[8] = *(v1 + 136);
  v15[0] = v4;
  *(v15 + 12) = *(v1 + 164);
  v5 = *(v1 + 56);
  v6 = *(v1 + 88);
  v14[4] = *(v1 + 72);
  v14[5] = v6;
  v14[6] = *(v1 + 104);
  v14[7] = v3;
  v7 = *(v1 + 24);
  v14[0] = *(v1 + 8);
  v14[1] = v7;
  v14[2] = *(v1 + 40);
  v14[3] = v5;
  sub_242E50D6C(v14);
  v8 = *(a1 + 96);
  *(v1 + 120) = *(a1 + 112);
  v9 = *(a1 + 144);
  *(v1 + 136) = *(a1 + 128);
  *(v1 + 152) = v9;
  *(v1 + 164) = *(a1 + 156);
  v10 = *(a1 + 32);
  *(v1 + 56) = *(a1 + 48);
  v11 = *(a1 + 80);
  *(v1 + 72) = *(a1 + 64);
  *(v1 + 88) = v11;
  *(v1 + 104) = v8;
  result = *a1;
  v13 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v13;
  *(v1 + 40) = v10;
  return result;
}

uint64_t Instrument.GaugeStyle.DigiBarPowermeterConfiguration.regenPowerConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 232);
  v3 = *(v1 + 248);
  v4 = *(v1 + 200);
  v17[0] = *(v1 + 184);
  v17[1] = v4;
  v17[2] = *(v1 + 216);
  v17[3] = v2;
  v5 = *(v1 + 296);
  v6 = *(v1 + 328);
  v18 = *(v1 + 312);
  v19[0] = v6;
  *(v19 + 12) = *(v1 + 340);
  v8 = *(v1 + 264);
  v7 = *(v1 + 280);
  v17[4] = v3;
  v17[5] = v8;
  v9 = *(v1 + 264);
  v10 = *(v1 + 280);
  v11 = *(v1 + 296);
  v17[6] = v7;
  v17[7] = v11;
  v12 = *(v1 + 328);
  a1[8] = v18;
  a1[9] = v12;
  *(a1 + 156) = *(v1 + 340);
  a1[4] = *(v1 + 248);
  a1[5] = v9;
  v13 = *(v1 + 232);
  a1[6] = v10;
  a1[7] = v5;
  v14 = *(v1 + 200);
  *a1 = *(v1 + 184);
  a1[1] = v14;
  a1[2] = *(v1 + 216);
  a1[3] = v13;
  return sub_242E50D10(v17, &v16);
}

__n128 Instrument.GaugeStyle.DigiBarPowermeterConfiguration.regenPowerConfiguration.setter(uint64_t a1)
{
  v3 = *(v1 + 232);
  v4 = *(v1 + 248);
  v5 = *(v1 + 200);
  v17[0] = *(v1 + 184);
  v17[1] = v5;
  v17[2] = *(v1 + 216);
  v17[3] = v3;
  v6 = *(v1 + 296);
  v7 = *(v1 + 328);
  v17[8] = *(v1 + 312);
  v18[0] = v7;
  *(v18 + 12) = *(v1 + 340);
  v8 = *(v1 + 264);
  v9 = *(v1 + 280);
  v17[4] = v4;
  v17[5] = v8;
  v17[6] = v9;
  v17[7] = v6;
  sub_242E50D6C(v17);
  v10 = *(a1 + 128);
  v11 = *(a1 + 144);
  v12 = *(a1 + 96);
  *(v1 + 296) = *(a1 + 112);
  *(v1 + 312) = v10;
  *(v1 + 328) = v11;
  *(v1 + 340) = *(a1 + 156);
  v13 = *(a1 + 32);
  *(v1 + 232) = *(a1 + 48);
  v14 = *(a1 + 80);
  *(v1 + 248) = *(a1 + 64);
  *(v1 + 264) = v14;
  *(v1 + 280) = v12;
  result = *a1;
  v16 = *(a1 + 16);
  *(v1 + 184) = *a1;
  *(v1 + 200) = v16;
  *(v1 + 216) = v13;
  return result;
}

__n128 Instrument.GaugeStyle.DigiBarPowermeterConfiguration.init(consumedPowerConfiguration:regenPowerConfiguration:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 926627351;
  v3 = a1[6];
  *(a3 + 120) = a1[7];
  v4 = a1[9];
  *(a3 + 136) = a1[8];
  *(a3 + 152) = v4;
  *(a3 + 164) = *(a1 + 156);
  v5 = a1[2];
  *(a3 + 56) = a1[3];
  v6 = a1[5];
  *(a3 + 72) = a1[4];
  *(a3 + 88) = v6;
  *(a3 + 104) = v3;
  v7 = a1[1];
  *(a3 + 8) = *a1;
  *(a3 + 24) = v7;
  *(a3 + 40) = v5;
  v8 = *(a2 + 128);
  v9 = *(a2 + 144);
  v10 = *(a2 + 96);
  *(a3 + 296) = *(a2 + 112);
  *(a3 + 312) = v8;
  *(a3 + 328) = v9;
  *(a3 + 340) = *(a2 + 156);
  v11 = *(a2 + 32);
  *(a3 + 232) = *(a2 + 48);
  v12 = *(a2 + 80);
  *(a3 + 248) = *(a2 + 64);
  *(a3 + 264) = v12;
  *(a3 + 280) = v10;
  result = *a2;
  v14 = *(a2 + 16);
  *(a3 + 184) = *a2;
  *(a3 + 200) = v14;
  *(a3 + 4) = 20536;
  *(a3 + 6) = 8;
  *(a3 + 216) = v11;
  return result;
}

unint64_t sub_242E4F3B4()
{
  v1 = 0xD00000000000001ALL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E65644961746164;
  }
}

uint64_t sub_242E4F428@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242E517F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242E4F450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E50DC0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E4F48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E50DC0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Instrument.GaugeStyle.DigiBarPowermeterConfiguration.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9D20, &qword_242F3D948);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - v6;
  v32 = *(v2 + 4);
  v8 = *(v2 + 6);
  v9 = *(v2 + 120);
  v10 = *(v2 + 152);
  v67 = *(v2 + 136);
  v68[0] = v10;
  *(v68 + 12) = *(v2 + 164);
  v11 = *(v2 + 56);
  v12 = *(v2 + 88);
  v63 = *(v2 + 72);
  v64 = v12;
  v65 = *(v2 + 104);
  v66 = v9;
  v13 = *(v2 + 24);
  v59 = *(v2 + 8);
  v60 = v13;
  v61 = *(v2 + 40);
  v62 = v11;
  v14 = *(v2 + 312);
  v15 = *(v2 + 328);
  v76 = *(v2 + 296);
  v77 = v14;
  v78[0] = v15;
  *(v78 + 12) = *(v2 + 340);
  v16 = *(v2 + 264);
  v17 = *(v2 + 280);
  v73 = *(v2 + 248);
  v74 = v16;
  v18 = *(v2 + 232);
  v75 = v17;
  v19 = *(v2 + 200);
  v69 = *(v2 + 184);
  v70 = v19;
  v71 = *(v2 + 216);
  v72 = v18;
  v20 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E50DC0(v20, v21, v22);
  v23 = sub_242F064C0();
  LODWORD(v49) = *v2;
  WORD2(v49) = v32;
  BYTE6(v49) = v8;
  LOBYTE(v46[0]) = 0;
  sub_242E10728(v23, v24, v25);
  v26 = v79;
  sub_242F05F20();
  if (!v26)
  {
    v57 = v67;
    v58[0] = v68[0];
    *(v58 + 12) = *(v68 + 12);
    v53 = v63;
    v54 = v64;
    v55 = v65;
    v56 = v66;
    v49 = v59;
    v50 = v60;
    v51 = v61;
    v52 = v62;
    v48 = 1;
    v28 = sub_242E50D10(&v59, v46);
    sub_242E509CC(v28, v29, v30);
    sub_242F05F20();
    v46[8] = v57;
    *v47 = v58[0];
    *&v47[12] = *(v58 + 12);
    v46[4] = v53;
    v46[5] = v54;
    v46[6] = v55;
    v46[7] = v56;
    v46[0] = v49;
    v46[1] = v50;
    v46[2] = v51;
    v46[3] = v52;
    sub_242E50D6C(v46);
    v44 = v77;
    v45[0] = v78[0];
    *(v45 + 12) = *(v78 + 12);
    v40 = v73;
    v41 = v74;
    v42 = v75;
    v43 = v76;
    v36 = v69;
    v37 = v70;
    v38 = v71;
    v39 = v72;
    v35 = 2;
    sub_242E50D10(&v69, v33);
    sub_242F05F20();
    v33[8] = v44;
    *v34 = v45[0];
    *&v34[12] = *(v45 + 12);
    v33[4] = v40;
    v33[5] = v41;
    v33[6] = v42;
    v33[7] = v43;
    v33[0] = v36;
    v33[1] = v37;
    v33[2] = v38;
    v33[3] = v39;
    sub_242E50D6C(v33);
  }

  return (*(v5 + 8))(v7, v4);
}

void Instrument.GaugeStyle.DigiBarPowermeterConfiguration.hash(into:)(uint64_t a1)
{
  PowermeterDataIdentifiers.hash(into:)(a1);
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(a1);
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(a1);
}

uint64_t Instrument.GaugeStyle.DigiBarPowermeterConfiguration.hashValue.getter()
{
  sub_242F06390();
  PowermeterDataIdentifiers.hash(into:)(v1);
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v1);
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.DigiBarPowermeterConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9D30, &qword_242F3D950);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = a1[3];
  v75 = a1;
  v10 = __swift_project_boxed_opaque_existential_2Tm(a1, v9);
  sub_242E50DC0(v10, v11, v12);
  v13 = sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(v75);
  }

  v16 = v6;
  v32 = a2;
  LOBYTE(v33[0]) = 0;
  sub_242E1077C(v13, v14, v15);
  v17 = sub_242F05E00();
  v28 = v35;
  v29 = v34;
  v27 = v36;
  v30 = v38;
  v31 = v37;
  v18 = v39;
  v19 = v40;
  v62 = 1;
  sub_242E50AD0(v17, v20, v21);
  sub_242F05E00();
  HIDWORD(v25) = v19;
  v26 = v18;
  *(&v74[7] + 1) = v70;
  *(&v74[8] + 1) = v71;
  *(&v74[9] + 1) = v72[0];
  *(&v74[9] + 13) = *(v72 + 12);
  *(&v74[3] + 1) = v66;
  *(&v74[4] + 1) = v67;
  *(&v74[5] + 1) = v68;
  *(&v74[6] + 1) = v69;
  *(v74 + 1) = v63;
  *(&v74[1] + 1) = v64;
  *(&v74[2] + 1) = v65;
  v51 = 2;
  sub_242F05E00();
  (*(v16 + 8))(v8, v5);
  *(&v73[7] + 4) = v59;
  *(&v73[8] + 4) = v60;
  *(&v73[9] + 4) = *v61;
  v73[10] = *&v61[12];
  *(&v73[3] + 4) = v55;
  *(&v73[4] + 4) = v56;
  *(&v73[5] + 4) = v57;
  *(&v73[6] + 4) = v58;
  *(v73 + 4) = v52;
  *(&v73[1] + 4) = v53;
  *(&v73[2] + 4) = v54;
  *(&v33[29] + 3) = v74[7];
  *(&v33[33] + 3) = v74[8];
  *(&v33[37] + 3) = v74[9];
  *&v33[41] = *(&v74[9] + 13);
  *(&v33[13] + 3) = v74[3];
  *(&v33[17] + 3) = v74[4];
  *(&v33[21] + 3) = v74[5];
  *(&v33[25] + 3) = v74[6];
  *(&v33[1] + 3) = v74[0];
  *(&v33[5] + 3) = v74[1];
  *(&v33[9] + 3) = v74[2];
  *&v33[73] = v73[7];
  *&v33[77] = v73[8];
  *&v33[81] = v73[9];
  *&v33[85] = *&v61[12];
  *&v33[65] = v73[5];
  *&v33[69] = v73[6];
  *&v33[57] = v73[3];
  *&v33[61] = v73[4];
  *&v33[45] = v73[0];
  *&v33[49] = v73[1];
  v23 = v28;
  v22 = v29;
  LOBYTE(v33[0]) = v29;
  BYTE1(v33[0]) = v28;
  LOBYTE(v16) = v27;
  BYTE2(v33[0]) = v27;
  HIBYTE(v33[0]) = v31;
  LOBYTE(v33[1]) = v30;
  BYTE1(v33[1]) = v26;
  BYTE2(v33[1]) = BYTE4(v25);
  *&v33[53] = v73[2];
  memcpy(v32, v33, 0x164uLL);
  sub_242E50E14(v33, &v34);
  __swift_destroy_boxed_opaque_existential_2Tm(v75);
  v48 = v74[7];
  v49 = v74[8];
  v50[0] = v74[9];
  *(v50 + 13) = *(&v74[9] + 13);
  v44 = v74[3];
  v45 = v74[4];
  v46 = v74[5];
  v47 = v74[6];
  v41 = v74[0];
  v42 = v74[1];
  v43 = v74[2];
  *(&v50[8] + 13) = v73[7];
  *(&v50[9] + 13) = v73[8];
  *(&v50[10] + 13) = v73[9];
  *(&v50[11] + 13) = v73[10];
  *(&v50[6] + 13) = v73[5];
  *(&v50[7] + 13) = v73[6];
  *(&v50[4] + 13) = v73[3];
  *(&v50[5] + 13) = v73[4];
  *(&v50[1] + 13) = v73[0];
  *(&v50[2] + 13) = v73[1];
  v34 = v22;
  v35 = v23;
  v36 = v16;
  v37 = v31;
  v38 = v30;
  v39 = v26;
  v40 = BYTE4(v25);
  *(&v50[3] + 13) = v73[2];
  return sub_242E50E4C(&v34);
}

void sub_242E4FFE8(uint64_t a1)
{
  PowermeterDataIdentifiers.hash(into:)(a1);
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(a1);
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(a1);
}

uint64_t sub_242E500D8(uint64_t a1)
{
  sub_242F06390();
  PowermeterDataIdentifiers.hash(into:)(v2);
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v2);
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v2);
  return sub_242F063E0();
}

BOOL _s14CarPlayAssetUI10InstrumentV10GaugeStyleO30DigiBarPowermeterConfigurationV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 6);
  v4 = *(a1 + 120);
  v5 = *(a1 + 152);
  v88 = *(a1 + 136);
  v89[0] = v5;
  *(v89 + 12) = *(a1 + 164);
  v6 = *(a1 + 56);
  v7 = *(a1 + 88);
  v84 = *(a1 + 72);
  v85 = v7;
  v8 = *(a1 + 104);
  v87 = v4;
  v86 = v8;
  v9 = *(a1 + 24);
  v80 = *(a1 + 8);
  v81 = v9;
  v10 = *(a1 + 40);
  v83 = v6;
  v82 = v10;
  v11 = *(a1 + 296);
  v12 = *(a1 + 328);
  v98 = *(a1 + 312);
  v99[0] = v12;
  *(v99 + 12) = *(a1 + 340);
  v13 = *(a1 + 232);
  v14 = *(a1 + 264);
  v15 = *(a1 + 280);
  v94 = *(a1 + 248);
  v95 = v14;
  v97 = v11;
  v96 = v15;
  v16 = *(a1 + 200);
  v90 = *(a1 + 184);
  v91 = v16;
  v17 = *(a1 + 216);
  v93 = v13;
  v92 = v17;
  v18 = *(a2 + 4);
  v19 = *(a2 + 6);
  v20 = *(a2 + 120);
  v21 = *(a2 + 152);
  v108 = *(a2 + 136);
  v109[0] = v21;
  *(v109 + 12) = *(a2 + 164);
  v22 = *(a2 + 56);
  v23 = *(a2 + 88);
  v104 = *(a2 + 72);
  v105 = v23;
  v24 = *(a2 + 104);
  v107 = v20;
  v106 = v24;
  v25 = *(a2 + 24);
  v100 = *(a2 + 8);
  v101 = v25;
  v26 = *(a2 + 40);
  v103 = v22;
  v102 = v26;
  v27 = *(a2 + 296);
  v28 = *(a2 + 328);
  v118 = *(a2 + 312);
  v119[0] = v28;
  *(v119 + 12) = *(a2 + 340);
  v29 = *(a2 + 264);
  v30 = *(a2 + 280);
  v114 = *(a2 + 248);
  v115 = v29;
  v31 = *(a2 + 232);
  v116 = v30;
  v117 = v27;
  v32 = *(a2 + 200);
  v110 = *(a2 + 184);
  v111 = v32;
  v112 = *(a2 + 216);
  v113 = v31;
  LODWORD(v78[0]) = *a1;
  WORD2(v78[0]) = v2;
  BYTE6(v78[0]) = v3;
  LODWORD(v76[0]) = *a2;
  WORD2(v76[0]) = v18;
  BYTE6(v76[0]) = v19;
  if ((_s14CarPlayAssetUI31DriverAssistanceDataIdentifiersV2eeoiySbAC_ACtFZ_0(v78) & 1) != 0 && (v74 = v88, v75[0] = v89[0], *(v75 + 12) = *(v89 + 12), v70 = v84, v71 = v85, v72 = v86, v73 = v87, v66 = v80, v67 = v81, v68 = v82, v69 = v83, v64 = v108, v65[0] = v109[0], *(v65 + 12) = *(v109 + 12), v60 = v104, v61 = v105, v62 = v106, v63 = v107, v56 = v100, v57 = v101, v58 = v102, v59 = v103, sub_242E50D10(&v80, &v46), sub_242E50D10(&v100, &v46), v33 = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO20DigiBarConfigurationV2eeoiySbAG_AGtFZ_0(&v66, &v56), v76[8] = v64, v77[0] = v65[0], *(v77 + 12) = *(v65 + 12), v76[4] = v60, v76[5] = v61, v76[6] = v62, v76[7] = v63, v76[0] = v56, v76[1] = v57, v76[2] = v58, v76[3] = v59, sub_242E50D6C(v76), v78[8] = v74, v79[0] = v75[0], *(v79 + 12) = *(v75 + 12), v78[4] = v70, v78[5] = v71, v78[6] = v72, v78[7] = v73, v78[0] = v66, v78[1] = v67, v78[2] = v68, v78[3] = v69, sub_242E50D6C(v78), v33))
  {
    v54 = v98;
    v55[0] = v99[0];
    *(v55 + 12) = *(v99 + 12);
    v50 = v94;
    v51 = v95;
    v52 = v96;
    v53 = v97;
    v46 = v90;
    v47 = v91;
    v48 = v92;
    v49 = v93;
    v44 = v118;
    v45[0] = v119[0];
    *(v45 + 12) = *(v119 + 12);
    v40 = v114;
    v41 = v115;
    v42 = v116;
    v43 = v117;
    v36 = v110;
    v37 = v111;
    v38 = v112;
    v39 = v113;
    sub_242E50D10(&v90, &v66);
    sub_242E50D10(&v110, &v66);
    v34 = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO20DigiBarConfigurationV2eeoiySbAG_AGtFZ_0(&v46, &v36);
    v64 = v44;
    v65[0] = v45[0];
    *(v65 + 12) = *(v45 + 12);
    v60 = v40;
    v61 = v41;
    v62 = v42;
    v63 = v43;
    v56 = v36;
    v57 = v37;
    v58 = v38;
    v59 = v39;
    sub_242E50D6C(&v56);
    v74 = v54;
    v75[0] = v55[0];
    *(v75 + 12) = *(v55 + 12);
    v70 = v50;
    v71 = v51;
    v72 = v52;
    v73 = v53;
    v66 = v46;
    v67 = v47;
    v68 = v48;
    v69 = v49;
    sub_242E50D6C(&v66);
  }

  else
  {
    return 0;
  }

  return v34;
}

BOOL _s14CarPlayAssetUI10InstrumentV10GaugeStyleO24ProgressBarConfigurationV0G0O2eeoiySbAI_AItFZ_0(void *__src, const void *a2)
{
  memcpy(__dst, __src, 0x164uLL);
  memcpy(__srca, a2, 0x164uLL);
  memcpy(v26, __src, 0x164uLL);
  memcpy(v27, a2, sizeof(v27));
  memcpy(v28, __src, 0x164uLL);
  if (sub_242D49294(v28) == 1)
  {
    v4 = sub_242C59070(v28);
    memcpy(v23, __srca, 0x164uLL);
    v5 = sub_242D49294(v23);
    v6 = sub_242C59070(v23);
    if (v5 == 1)
    {
      v7 = v6;
      memcpy(v22, v4, 0x164uLL);
      memcpy(v21, v7, sizeof(v21));
      sub_242E50B7C(__srca, v19);
      sub_242E50B7C(__dst, v19);
      sub_242E50B7C(__dst, v19);
      sub_242E50B7C(__srca, v19);
      v8 = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO30DigiBarPowermeterConfigurationV2eeoiySbAG_AGtFZ_0(v22, v21);
LABEL_7:
      v12 = v8;
      sub_242E51924(v26);
      sub_242E50BE4(__srca);
      sub_242E50BE4(__dst);
      return v12;
    }
  }

  else
  {
    v9 = sub_242C59070(v28);
    memcpy(v23, __srca, 0x164uLL);
    v10 = sub_242D49294(v23);
    v11 = sub_242C59070(v23);
    if (v10 != 1)
    {
      v13 = v9[9];
      *&v21[128] = v9[8];
      *&v21[144] = v13;
      *&v21[156] = *(v9 + 156);
      v14 = v9[5];
      *&v21[64] = v9[4];
      *&v21[80] = v14;
      v15 = v9[7];
      *&v21[96] = v9[6];
      *&v21[112] = v15;
      v16 = v9[1];
      *v21 = *v9;
      *&v21[16] = v16;
      v17 = v9[3];
      *&v21[32] = v9[2];
      *&v21[48] = v17;
      v19[7] = v11[7];
      v19[8] = v11[8];
      v20[0] = v11[9];
      *(v20 + 12) = *(v11 + 156);
      v19[3] = v11[3];
      v19[4] = v11[4];
      v19[5] = v11[5];
      v19[6] = v11[6];
      v19[0] = *v11;
      v19[1] = v11[1];
      v19[2] = v11[2];
      sub_242E50B7C(__srca, v22);
      sub_242E50B7C(__dst, v22);
      sub_242E50B7C(__dst, v22);
      sub_242E50B7C(__srca, v22);
      v8 = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO20DigiBarConfigurationV2eeoiySbAG_AGtFZ_0(v21, v19);
      goto LABEL_7;
    }
  }

  sub_242E50B7C(__dst, v23);
  sub_242E50B7C(__srca, v23);
  sub_242E51924(v26);
  return 0;
}

unint64_t sub_242E5087C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9CA8;
  if (!qword_27ECF9CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9CA8);
  }

  return result;
}

unint64_t sub_242E508D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9CB0;
  if (!qword_27ECF9CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9CB0);
  }

  return result;
}

unint64_t sub_242E50924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9CB8;
  if (!qword_27ECF9CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9CB8);
  }

  return result;
}

unint64_t sub_242E50978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9CC0;
  if (!qword_27ECF9CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9CC0);
  }

  return result;
}

unint64_t sub_242E509CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9CC8;
  if (!qword_27ECF9CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9CC8);
  }

  return result;
}

unint64_t sub_242E50A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9CE8;
  if (!qword_27ECF9CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9CE8);
  }

  return result;
}

int8x16_t sub_242E50A74(uint64_t a1)
{
  v1 = *(a1 + 208) & 1;
  v2 = *(a1 + 344) & 0xFFFFFFFFFFLL | 0x8000000000000000;
  *(a1 + 88) &= 0xC3FFFFFFFFuLL;
  *(a1 + 168) = vandq_s8(*(a1 + 168), xmmword_242F3D8E0);
  *(a1 + 208) = v1;
  result = vandq_s8(*(a1 + 264), xmmword_242F3D8F0);
  *(a1 + 264) = result;
  *(a1 + 344) = v2;
  return result;
}

unint64_t sub_242E50AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9CF0;
  if (!qword_27ECF9CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9CF0);
  }

  return result;
}

int8x16_t sub_242E50B24(uint64_t a1)
{
  v1 = *(a1 + 208) & 1;
  v2 = *(a1 + 344) & 0xFFFFFFFFFFLL;
  *(a1 + 88) &= 0xC3FFFFFFFFuLL;
  *(a1 + 168) = vandq_s8(*(a1 + 168), xmmword_242F3D8E0);
  *(a1 + 208) = v1;
  result = vandq_s8(*(a1 + 264), xmmword_242F3D8F0);
  *(a1 + 264) = result;
  *(a1 + 344) = v2;
  return result;
}

unint64_t sub_242E50C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9D00;
  if (!qword_27ECF9D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D00);
  }

  return result;
}

unint64_t sub_242E50C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9D08;
  if (!qword_27ECF9D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D08);
  }

  return result;
}

unint64_t sub_242E50CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9D18;
  if (!qword_27ECF9D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D18);
  }

  return result;
}

unint64_t sub_242E50DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9D28;
  if (!qword_27ECF9D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D28);
  }

  return result;
}

unint64_t sub_242E50E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9D38;
  if (!qword_27ECF9D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D38);
  }

  return result;
}

unint64_t sub_242E50ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9D40;
  if (!qword_27ECF9D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D40);
  }

  return result;
}

unint64_t sub_242E50F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9D48;
  if (!qword_27ECF9D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D48);
  }

  return result;
}

uint64_t sub_242E50F9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 356))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 88) >> 34) & 0xF | (*(a1 + 88) >> 36) & 0xFFFFFF0 | (*(a1 + 168) >> 12) & 0xF0000000;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_242E51008(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 344) = 0;
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 352) = 0;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 356) = 1;
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
      result = 0.0;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 80) = 0;
      *(a1 + 88) = (-a2 << 36) & 0xFFFFFF0000000000 | ((-a2 & 0xFLL) << 34);
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 160) = 0;
      *(a1 + 168) = (-a2 << 12) & 0xF0000000000;
      *(a1 + 176) = 0u;
      *(a1 + 192) = 0u;
      *(a1 + 208) = 0u;
      *(a1 + 224) = 0u;
      *(a1 + 240) = 0u;
      *(a1 + 256) = 0u;
      *(a1 + 272) = 0u;
      *(a1 + 288) = 0u;
      *(a1 + 304) = 0u;
      *(a1 + 320) = 0u;
      *(a1 + 336) = 0u;
      *(a1 + 352) = 0;
      return result;
    }

    *(a1 + 356) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int8x16_t sub_242E510F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 208) & 1;
  v3 = *(a1 + 344) & 0xFFFFFFFFFFLL | (a2 << 63);
  *(a1 + 88) &= 0xC3FFFFFFFFuLL;
  *(a1 + 168) = vandq_s8(*(a1 + 168), xmmword_242F3D8E0);
  *(a1 + 208) = v2;
  result = vandq_s8(*(a1 + 264), xmmword_242F3D8F0);
  *(a1 + 264) = result;
  *(a1 + 344) = v3;
  return result;
}

uint64_t sub_242E51160(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 356))
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

uint64_t sub_242E511BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 344) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 328) = 0u;
    *(result + 352) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 356) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 356) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_242E512D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9D50;
  if (!qword_27ECF9D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D50);
  }

  return result;
}

unint64_t sub_242E5132C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9D58;
  if (!qword_27ECF9D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D58);
  }

  return result;
}

unint64_t sub_242E51384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9D60;
  if (!qword_27ECF9D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D60);
  }

  return result;
}

unint64_t sub_242E513DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9D68;
  if (!qword_27ECF9D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D68);
  }

  return result;
}

unint64_t sub_242E51434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9D70;
  if (!qword_27ECF9D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D70);
  }

  return result;
}

unint64_t sub_242E5148C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9D78;
  if (!qword_27ECF9D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D78);
  }

  return result;
}

unint64_t sub_242E514E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9D80;
  if (!qword_27ECF9D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D80);
  }

  return result;
}

unint64_t sub_242E5153C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9D88;
  if (!qword_27ECF9D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D88);
  }

  return result;
}

unint64_t sub_242E51594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9D90;
  if (!qword_27ECF9D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D90);
  }

  return result;
}

unint64_t sub_242E515EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9D98;
  if (!qword_27ECF9D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D98);
  }

  return result;
}

unint64_t sub_242E51644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9DA0;
  if (!qword_27ECF9DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9DA0);
  }

  return result;
}

unint64_t sub_242E5169C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9DA8;
  if (!qword_27ECF9DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9DA8);
  }

  return result;
}

unint64_t sub_242E516F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9DB0;
  if (!qword_27ECF9DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9DB0);
  }

  return result;
}

unint64_t sub_242E5174C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9DB8;
  if (!qword_27ECF9DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9DB8);
  }

  return result;
}

unint64_t sub_242E517A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9DC0;
  if (!qword_27ECF9DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9DC0);
  }

  return result;
}

uint64_t sub_242E517F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644961746164 && a2 == 0xEF73726569666974;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000242F5CA20 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000242F5CA40 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t sub_242E51924(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9DC8, &unk_242F3F560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ImageGroupConfiguration.description.getter(uint64_t a1)
{
  if (*v1 == 86)
  {
    v2 = 0xEE006567616D6920;
    v3 = 0x746E6174736E6F43;
  }

  else
  {
    v4 = InstrumentDataIdentifier.rawValue.getter();
    v6 = sub_242EFCF00(v4, v5);
    v2 = v7;

    v3 = v6;
  }

  MEMORY[0x245D26660](v3, v2);

  return 0;
}

uint64_t ImageGroupConfiguration.assets.getter()
{
  v1 = *(v0 + 8);
  swift_getKeyPath();

  v2 = sub_242D47D30(v1, sub_242D49264);

  return v2;
}

double ImageGroupConfiguration.restoreAssets(from:)(void *a1)
{
  v2 = *(v1 + 8);
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v45 = v2;
  while (v6)
  {
LABEL_11:
    v10 = (*(v2 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
    v11 = *v10;
    v12 = v10[1];

    v13 = sub_242E52264(v50, v11, v12);
    if (!*(v14 + 48))
    {
      (v13)(v50, 0);
      goto LABEL_5;
    }

    v15 = v14;
    v51 = v13;
    v16 = a1[3];
    v17 = a1[4];
    __swift_project_boxed_opaque_existential_2Tm(a1, v16);
    *&v48 = *(v15 + 40);
    if (((*(v17 + 24))(&v48, v16, v17) & 1) == 0)
    {
      goto LABEL_18;
    }

    v18 = *v15;
    v19 = *(v15 + 8);
    v21 = *(v15 + 16);
    v20 = *(v15 + 24);
    if (*(v15 + 32) < 0)
    {
      *&v48 = *v15;
      *(&v48 + 1) = v19;
      *&v49 = v21;
      *(&v49 + 1) = v20;
      v30 = v18;

      ImageAsset.LocalizedImage.restore(from:)(a1);
      if (v46)
      {
        goto LABEL_21;
      }

      v31 = *v15;
      v32 = *(v15 + 8);
      v33 = *(v15 + 16);
      v34 = *(v15 + 24);
      v35 = v49;
      *v15 = v48;
      *(v15 + 16) = v35;
      v36 = *(v15 + 32);
      *(v15 + 32) = 0x80;
      sub_242C7F724(v31, v32, v33, v34, v36);
LABEL_18:
      v2 = v45;
      (v51)(v50, 0);
      goto LABEL_5;
    }

    v39 = *(v15 + 32);
    v40 = *(v15 + 24);
    v42 = *v15;
    v22 = a1[4];
    __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
    LOBYTE(v48) = 0;
    v41 = *(v22 + 8);
    v43 = v21;

    v44 = v19;
    v23 = v41();
    if (v46)
    {

      (v51)(v50, 1);
      goto LABEL_22;
    }

    v24 = v23;

    v25 = *v15;
    v26 = *(v15 + 8);
    v27 = *(v15 + 16);
    v28 = *(v15 + 24);
    *v15 = v42;
    *(v15 + 8) = v44;
    *(v15 + 16) = v24;
    *(v15 + 24) = v40;
    v29 = *(v15 + 32);
    *(v15 + 32) = v39 & 1;
    sub_242C7F724(v25, v26, v27, v28, v29);
    v2 = v45;
    (v51)(v50, 0);
LABEL_5:
    v6 &= v6 - 1;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
      goto LABEL_23;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_21:
  v37 = v48;

  (v51)(v50, 1);
LABEL_22:

LABEL_23:

  return result;
}

uint64_t sub_242E51EEC()
{
  sub_242F06390();
  MEMORY[0x245D279A0](1);
  return sub_242F063E0();
}

uint64_t sub_242E51F58(uint64_t a1)
{
  sub_242F06390();
  MEMORY[0x245D279A0](1);
  return sub_242F063E0();
}

uint64_t ImageGroupConfiguration.defaultState.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void ImageGroupConfiguration.defaultState.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t ImageGroupConfiguration.redactedState.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void ImageGroupConfiguration.redactedState.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

_BYTE *ImageGroupConfiguration.init(dataIdentifier:criticalStateDataIdentifier:states:defaultState:redactedState:dataTransformationType:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *a2;
  v10 = *a8;
  *a9 = *result;
  *(a9 + 1) = v9;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = v10;
  return result;
}

uint64_t sub_242E521CC(_OWORD *a1)
{
  v3 = a1[1];
  v10[0] = *a1;
  v10[1] = v3;
  v5 = *a1;
  v4 = a1[1];
  v11[0] = a1[2];
  *(v11 + 9) = *(a1 + 41);
  v7 = v5;
  v8 = v4;
  *v9 = a1[2];
  *&v9[9] = *(a1 + 41);
  sub_242C7F938(v10, v12);
  swift_getAtKeyPath();
  v12[0] = v7;
  v12[1] = v8;
  v13[0] = *v9;
  *(v13 + 9) = *&v9[9];
  return sub_242C7F994(v12);
}

uint64_t (*sub_242E52264(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_242E52F28(v6, a2, a3);
  return sub_242E522EC;
}

void sub_242E522EC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_242E52338()
{
  v1 = *v0;
  v2 = 0x6E65644961746164;
  v3 = 0x53746C7561666564;
  v4 = 0x6465746361646572;
  if (v1 != 4)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000001BLL;
  if (v1 != 1)
  {
    v5 = 0x736574617473;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_242E52414@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242E53A88(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242E5243C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E535E0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E52478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E535E0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t ImageGroupConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9DD0, &qword_242F3F590);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v8 = *v1;
  v30 = v1[1];
  v9 = *(v1 + 1);
  v27 = *(v1 + 2);
  v28 = v9;
  v10 = *(v1 + 3);
  v24 = *(v1 + 4);
  v25 = *(v1 + 5);
  v26 = v10;
  v23 = v1[48];
  v11 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E535E0(v11, v12, v13);
  v14 = sub_242F064C0();
  LOBYTE(v29) = v8;
  v31 = 0;
  sub_242C8AC28(v14, v15, v16);
  sub_242F05EB0();
  if (!v2)
  {
    v18 = v28;
    LOBYTE(v29) = v30;
    v31 = 1;
    sub_242F05EB0();
    v29 = v18;
    v31 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9DE0, &qword_242F3F598);
    sub_242E536DC(&qword_27ECF9DE8, sub_242E53634, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_242F05F20();
    LOBYTE(v29) = 3;
    sub_242F05E50();
    LOBYTE(v29) = 4;
    v19 = sub_242F05E50();
    LOBYTE(v29) = v23;
    v31 = 5;
    sub_242E53688(v19, v20, v21);
    sub_242F05EB0();
  }

  return (*(v5 + 8))(v7, v4);
}

void ImageGroupConfiguration.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 1);
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  if (*v1 == 86)
  {
    sub_242F063B0();
    if (v3 != 86)
    {
LABEL_3:
      sub_242F063B0();
      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      goto LABEL_6;
    }
  }

  else
  {
    sub_242F063B0();
    InstrumentDataIdentifier.rawValue.getter();
    sub_242F04DD0();

    if (v3 != 86)
    {
      goto LABEL_3;
    }
  }

  sub_242F063B0();
LABEL_6:
  sub_242C7B384(a1, v4);
  if (v5)
  {
    sub_242F063B0();
    sub_242F04DD0();
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_11:
    sub_242F063B0();
    if (v7)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  sub_242F063B0();
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_242F063B0();
  sub_242F04DD0();
  if (v7)
  {
LABEL_9:
    sub_242F063B0();
    return;
  }

LABEL_12:
  sub_242F063B0();
  MEMORY[0x245D279A0](1);
}

uint64_t ImageGroupConfiguration.hashValue.getter()
{
  sub_242F06390();
  ImageGroupConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

void ImageGroupConfiguration.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9E00, &qword_242F3F5A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  v40 = 1;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E535E0(v9, v10, v11);
  v12 = sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  else
  {
    LOBYTE(v34) = 0;
    sub_242C8AC7C(v12, v13, v14);
    sub_242F05D90();
    v15 = v38[0];
    LOBYTE(v34) = 1;
    sub_242F05D90();
    v16 = LOBYTE(v38[0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9DE0, &qword_242F3F598);
    LOBYTE(v34) = 2;
    sub_242E536DC(&qword_27ECF9E08, sub_242E53760, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_242F05E00();
    v33 = v38[0];
    LOBYTE(v38[0]) = 3;
    v17 = sub_242F05D30();
    v31 = v16;
    v30 = v17;
    v32 = v18;
    LOBYTE(v38[0]) = 4;
    v19 = sub_242F05D30();
    v21 = v20;
    v29 = v19;
    v41 = 5;
    sub_242E537B4(v19, v20, v22);
    sub_242F05D90();
    (*(v6 + 8))(v8, v5);
    v23 = v42;
    v40 = v42;
    LOBYTE(v34) = v15;
    BYTE1(v34) = v31;
    v24 = v32;
    v26 = v29;
    v25 = v30;
    *(&v34 + 1) = v33;
    *&v35 = v30;
    *(&v35 + 1) = v32;
    *&v36 = v29;
    *(&v36 + 1) = v21;
    v37 = v42;
    *(a2 + 48) = v42;
    v27 = v35;
    *a2 = v34;
    *(a2 + 16) = v27;
    *(a2 + 32) = v36;
    sub_242DBE658(&v34, v38);
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    LOBYTE(v38[0]) = v15;
    BYTE1(v38[0]) = v31;
    v38[1] = v33;
    v38[2] = v25;
    v38[3] = v24;
    v38[4] = v26;
    v38[5] = v21;
    v39 = v23;
    sub_242D49348(v38);
  }
}

uint64_t sub_242E52DCC()
{
  v1 = *(v0 + 8);
  swift_getKeyPath();

  v2 = sub_242D47D30(v1, sub_242E53DCC);

  return v2;
}

uint64_t sub_242E52EA4()
{
  sub_242F06390();
  ImageGroupConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242E52EE8(uint64_t a1)
{
  sub_242F06390();
  ImageGroupConfiguration.hash(into:)(v2);
  return sub_242F063E0();
}

void (*sub_242E52F28(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_242E532EC(v7);
  v7[9] = sub_242E53034(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_242E52FD4;
}

void sub_242E52FD4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_242E53034(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t *a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x1A0uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[49] = a3;
  v10[50] = v4;
  v10[48] = a2;
  v12 = *v4;
  v13 = sub_242CE519C(a2, a3);
  *(v11 + 57) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_242D0317C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_242D07AD4(v18, a4 & 1);
    v13 = sub_242CE519C(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_242F06320();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[51] = v13;
  if (v19)
  {
    memmove(v11 + 16, (*(*v5 + 56) + (v13 << 6)), 0x39uLL);
  }

  else
  {
    *(v11 + 169) = 0u;
    *(v11 + 9) = 0u;
    *(v11 + 10) = 0u;
    *(v11 + 8) = 0u;
  }

  return sub_242E531A0;
}

void sub_242E531A0(uint64_t *a1, char a2)
{
  v2 = *a1;
  *(v2 + 233) = *(*a1 + 169);
  v3 = *(v2 + 144);
  *(v2 + 192) = *(v2 + 128);
  *(v2 + 208) = v3;
  *(v2 + 224) = *(v2 + 160);
  v4 = *(v2 + 240);
  if (a2)
  {
    if (v4)
    {
      v6 = *(v2 + 400);
      v5 = *(v2 + 408);
      if ((*(v2 + 57) & 1) == 0)
      {
        v7 = *(v2 + 384);
        v8 = *(v2 + 392);
        v9 = *v6;
        v10 = *(v2 + 144);
        *v2 = *(v2 + 128);
        *(v2 + 16) = v10;
        *(v2 + 32) = *(v2 + 160);
        *(v2 + 41) = *(v2 + 169);
        v11 = v8;
        v12 = v2;
LABEL_11:
        sub_242D09F7C(v5, v7, v11, v12, v9);

        goto LABEL_12;
      }

      goto LABEL_7;
    }
  }

  else if (v4)
  {
    v6 = *(v2 + 400);
    v5 = *(v2 + 408);
    if ((*(v2 + 57) & 1) == 0)
    {
      v7 = *(v2 + 384);
      v15 = *(v2 + 392);
      v9 = *v6;
      v16 = *(v2 + 144);
      *(v2 + 64) = *(v2 + 128);
      *(v2 + 80) = v16;
      *(v2 + 96) = *(v2 + 160);
      *(v2 + 105) = *(v2 + 169);
      v12 = (v2 + 64);
      v11 = v15;
      goto LABEL_11;
    }

LABEL_7:
    memmove((*(*v6 + 56) + (v5 << 6)), (v2 + 128), 0x39uLL);
    goto LABEL_12;
  }

  if (*(v2 + 57))
  {
    v13 = *(v2 + 408);
    v14 = **(v2 + 400);
    sub_242D3E0BC(*(v14 + 48) + 16 * v13);
    sub_242ED0C2C(v13, v14);
  }

LABEL_12:
  v17 = *(v2 + 144);
  *(v2 + 256) = *(v2 + 128);
  *(v2 + 272) = v17;
  *(v2 + 288) = *(v2 + 160);
  *(v2 + 297) = *(v2 + 169);
  sub_242E53CF4(v2 + 192, v2 + 320);
  sub_242E53D64(v2 + 256);

  free(v2);
}

uint64_t (*sub_242E532EC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_242E53314;
}

uint64_t _s14CarPlayAssetUI23ImageGroupConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 1);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *a2;
  v9 = a2[1];
  v11 = *(a2 + 1);
  v10 = *(a2 + 2);
  v12 = *(a2 + 5);
  v13 = a2[48];
  if (*a1 == 86)
  {
    v32 = *(a2 + 3);
    v33 = *(a1 + 24);
    v34 = *(a2 + 4);
    if (v8 != 86)
    {
      return 0;
    }

LABEL_3:
    if (v2 == 86)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (v8 == 86)
  {
    return 0;
  }

  v36 = *(a2 + 2);
  v38 = *(a1 + 16);
  v32 = *(a2 + 3);
  v33 = *(a1 + 24);
  v34 = *(a2 + 4);
  v30 = *(a1 + 40);
  v14 = *(a1 + 32);
  v15 = a2[48];
  v16 = InstrumentDataIdentifier.rawValue.getter();
  v18 = v17;
  if (v16 != InstrumentDataIdentifier.rawValue.getter() || v18 != v19)
  {
    v26 = sub_242F06110();

    v13 = v15;
    v5 = v14;
    v6 = v30;
    v10 = v36;
    v3 = v38;
    if ((v26 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_3;
  }

  v13 = v15;
  v5 = v14;
  v6 = v30;
  v10 = v36;
  v3 = v38;
  if (v2 == 86)
  {
LABEL_4:
    v35 = v10;
    v37 = v3;
    if (v9 != 86)
    {
      return 0;
    }

    goto LABEL_17;
  }

LABEL_10:
  if (v9 == 86)
  {
    return 0;
  }

  v35 = v10;
  v37 = v3;
  v31 = v6;
  v20 = v5;
  v21 = v13;
  v22 = InstrumentDataIdentifier.rawValue.getter();
  v24 = v23;
  if (v22 == InstrumentDataIdentifier.rawValue.getter() && v24 == v25)
  {

    v13 = v21;
    v5 = v20;
    v6 = v31;
  }

  else
  {
    v27 = sub_242F06110();

    v13 = v21;
    v5 = v20;
    v6 = v31;
    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_17:
  if (sub_242C76D14(v4, v11))
  {
    if (v33)
    {
      v28 = v34;
      if (!v32 || (v37 != v35 || v33 != v32) && (sub_242F06110() & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v28 = v34;
      if (v32)
      {
        return 0;
      }
    }

    if (v6)
    {
      if (v12 && (v5 == v28 && v6 == v12 || (sub_242F06110() & 1) != 0))
      {
        return v7 ^ v13 ^ 1u;
      }
    }

    else if (!v12)
    {
      return v7 ^ v13 ^ 1u;
    }
  }

  return 0;
}

unint64_t sub_242E535E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9DD8;
  if (!qword_27ECF9DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9DD8);
  }

  return result;
}

unint64_t sub_242E53634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9DF0;
  if (!qword_27ECF9DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9DF0);
  }

  return result;
}

unint64_t sub_242E53688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9DF8;
  if (!qword_27ECF9DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9DF8);
  }

  return result;
}

uint64_t sub_242E536DC(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF9DE0, &qword_242F3F598);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242E53760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9E10;
  if (!qword_27ECF9E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9E10);
  }

  return result;
}

unint64_t sub_242E537B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9E18;
  if (!qword_27ECF9E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9E18);
  }

  return result;
}

unint64_t sub_242E5380C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9E20;
  if (!qword_27ECF9E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9E20);
  }

  return result;
}

unint64_t sub_242E53864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9E28;
  if (!qword_27ECF9E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9E28);
  }

  return result;
}

uint64_t sub_242E538B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_242E53900(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_242E53984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9E30;
  if (!qword_27ECF9E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9E30);
  }

  return result;
}

unint64_t sub_242E539DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9E38;
  if (!qword_27ECF9E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9E38);
  }

  return result;
}

unint64_t sub_242E53A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9E40;
  if (!qword_27ECF9E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9E40);
  }

  return result;
}

uint64_t sub_242E53A88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000242F5CA80 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736574617473 && a2 == 0xE600000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x53746C7561666564 && a2 == 0xEC00000065746174 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465746361646572 && a2 == 0xED00006574617453 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000242F5CAA0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_242E53CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9E48;
  if (!qword_27ECF9E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9E48);
  }

  return result;
}

uint64_t sub_242E53CF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9E50, &qword_242F3F910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242E53D64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9E50, &qword_242F3F910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242E53DD0()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v16 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v15 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECF9E58 = v16;
  *(&xmmword_27ECF9E58 + 1) = v15;
  qword_27ECF9E68 = v14;
  unk_27ECF9E70 = v7;
  *&xmmword_27ECF9E78 = v8;
  *(&xmmword_27ECF9E78 + 1) = v9;
  qword_27ECF9E88 = v10;
  unk_27ECF9E90 = v11;
  qword_27ECF9E98 = result;
  return result;
}

uint64_t static Color.Ticks.green.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF700 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *&qword_27ECF9E88;
  v8[2] = xmmword_27ECF9E78;
  v8[3] = *&qword_27ECF9E88;
  v9 = qword_27ECF9E98;
  v3 = qword_27ECF9E98;
  v4 = *&qword_27ECF9E68;
  v8[0] = xmmword_27ECF9E58;
  v5 = xmmword_27ECF9E58;
  v8[1] = *&qword_27ECF9E68;
  *(a1 + 32) = xmmword_27ECF9E78;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_242C8CBA8(v8, &v7);
}

uint64_t static Color.Ticks.green.setter(uint64_t a1)
{
  if (qword_27ECEF700 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[2] = xmmword_27ECF9E78;
  v5[3] = *&qword_27ECF9E88;
  v6 = qword_27ECF9E98;
  v5[0] = xmmword_27ECF9E58;
  v5[1] = *&qword_27ECF9E68;
  v2 = *(a1 + 48);
  xmmword_27ECF9E78 = *(a1 + 32);
  *&qword_27ECF9E88 = v2;
  qword_27ECF9E98 = *(a1 + 64);
  v3 = *(a1 + 16);
  xmmword_27ECF9E58 = *a1;
  *&qword_27ECF9E68 = v3;
  return sub_242C8CCB0(v5);
}

uint64_t (*static Color.Ticks.green.modify(uint64_t a1))()
{
  if (qword_27ECEF700 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242E54290()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v16 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v15 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECF9EA0 = v16;
  *(&xmmword_27ECF9EA0 + 1) = v15;
  qword_27ECF9EB0 = v14;
  unk_27ECF9EB8 = v7;
  *&xmmword_27ECF9EC0 = v8;
  *(&xmmword_27ECF9EC0 + 1) = v9;
  qword_27ECF9ED0 = v10;
  unk_27ECF9ED8 = v11;
  qword_27ECF9EE0 = result;
  return result;
}

uint64_t static Color.ProgressBars.green.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF708 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *&qword_27ECF9ED0;
  v8[2] = xmmword_27ECF9EC0;
  v8[3] = *&qword_27ECF9ED0;
  v9 = qword_27ECF9EE0;
  v3 = qword_27ECF9EE0;
  v4 = *&qword_27ECF9EB0;
  v8[0] = xmmword_27ECF9EA0;
  v5 = xmmword_27ECF9EA0;
  v8[1] = *&qword_27ECF9EB0;
  *(a1 + 32) = xmmword_27ECF9EC0;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_242C8D144(v8, &v7);
}

uint64_t static Color.ProgressBars.green.setter(uint64_t a1)
{
  if (qword_27ECEF708 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[2] = xmmword_27ECF9EC0;
  v5[3] = *&qword_27ECF9ED0;
  v6 = qword_27ECF9EE0;
  v5[0] = xmmword_27ECF9EA0;
  v5[1] = *&qword_27ECF9EB0;
  v2 = *(a1 + 48);
  xmmword_27ECF9EC0 = *(a1 + 32);
  *&qword_27ECF9ED0 = v2;
  qword_27ECF9EE0 = *(a1 + 64);
  v3 = *(a1 + 16);
  xmmword_27ECF9EA0 = *a1;
  *&qword_27ECF9EB0 = v3;
  return sub_242C8D24C(v5);
}

uint64_t (*static Color.ProgressBars.green.modify(uint64_t a1))()
{
  if (qword_27ECEF708 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242E5478C()
{
  v0 = sub_242F04700();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v1);
  result = sub_242F047A0();
  qword_27ECF9EE8 = result;
  return result;
}

uint64_t static Color.Modular.green.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECEF710 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECF9EE8;
}

double static Color.Modular.green.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27ECEF710 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECF9EE8 = v1;

  return result;
}

uint64_t (*static Color.Modular.green.modify(uint64_t a1))()
{
  if (qword_27ECEF710 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242E549F8()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECF9EF0 = v14;
  *(&xmmword_27ECF9EF0 + 1) = v7;
  qword_27ECF9F00 = v8;
  unk_27ECF9F08 = v9;
  *&xmmword_27ECF9F10 = v10;
  *(&xmmword_27ECF9F10 + 1) = v11;
  qword_27ECF9F20 = result;
  return result;
}

uint64_t static Color.ACC.green.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF718 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27ECF9EF0 + 1);
  v3 = qword_27ECF9F00;
  v4 = unk_27ECF9F08;
  v5 = xmmword_27ECF9F10;
  v6 = qword_27ECF9F20;
  *a1 = xmmword_27ECF9EF0;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
}

double static Color.ACC.green.setter(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  v3 = *(a1 + 32);
  v1 = *(a1 + 48);
  if (qword_27ECEF718 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27ECF9EF0 = v5;
  *&qword_27ECF9F00 = v4;
  xmmword_27ECF9F10 = v3;
  qword_27ECF9F20 = v1;

  return result;
}

uint64_t (*static Color.ACC.green.modify(uint64_t a1))()
{
  if (qword_27ECEF718 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242E54EE8()
{
  if (qword_27ECEF708 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v36 = xmmword_27ECF9EC0;
  v37 = *&qword_27ECF9ED0;
  v38 = qword_27ECF9EE0;
  v34 = xmmword_27ECF9EA0;
  v35 = *&qword_27ECF9EB0;
  sub_242C8D144(&v34, &v39);
  if (qword_27ECEF700 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v41 = xmmword_27ECF9E78;
  v42 = *&qword_27ECF9E88;
  v43 = qword_27ECF9E98;
  v39 = xmmword_27ECF9E58;
  v40 = *&qword_27ECF9E68;
  sub_242C8CBA8(&v39, &v30);
  if (qword_27ECEF710 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27ECEF718;
  v28 = qword_27ECF9EE8;

  if (v0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *(&xmmword_27ECF9EF0 + 1);
  v2 = qword_27ECF9F00;
  v3 = unk_27ECF9F08;
  v4 = xmmword_27ECF9F10;
  v5 = qword_27ECF9F20;
  v6 = qword_27ECEF0B0;
  v27 = xmmword_27ECF9EF0;

  v26 = v1;

  v25 = v2;

  v24 = v5;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *algn_27ECF3678;
  v8 = qword_27ECF3680;
  v9 = qword_27ECEF0B8;
  v23 = qword_27ECF3670;

  v22 = v7;

  v21 = v8;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_27ECEF0C0;
  v20 = qword_27ECF3688;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = *algn_27ECF3698;
  v12 = qword_27ECF36A0;
  v13 = unk_27ECF36A8;
  v14 = qword_27ECF36B0;
  v15 = unk_27ECF36B8;
  v16 = qword_27ECF36C0;
  v17 = qword_27ECEF0C8;
  v19 = qword_27ECF3690;

  if (v17 != -1)
  {
    swift_once();
  }

  v30 = xmmword_27ECF36C8;
  v31 = *&qword_27ECF36D8;
  v32 = xmmword_27ECF36E8;
  v33 = *&qword_27ECF36F8;
  sub_242C8E7B0(&v30, v29);
  if (qword_27ECEF0D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27ECF9F48 = v36;
  unk_27ECF9F58 = v37;
  xmmword_27ECF9F28 = v34;
  unk_27ECF9F38 = v35;
  unk_27ECF9F70 = v39;
  unk_27ECF9FA0 = v42;
  qword_27ECF9F68 = v38;
  unk_27ECF9F90 = v41;
  unk_27ECF9F80 = v40;
  qword_27ECF9FB0 = v43;
  unk_27ECF9FB8 = v28;
  qword_27ECF9FC0 = v23;
  unk_27ECF9FC8 = v22;
  qword_27ECF9FD0 = v21;
  unk_27ECF9FD8 = v27;
  qword_27ECF9FE0 = v26;
  qword_27ECF9FE8 = v25;
  unk_27ECF9FF0 = v3;
  xmmword_27ECF9FF8 = v4;
  qword_27ECFA008 = v24;
  unk_27ECFA010 = v20;
  qword_27ECFA018 = v19;
  qword_27ECFA020 = v11;
  unk_27ECFA028 = v12;
  qword_27ECFA030 = v13;
  unk_27ECFA038 = v14;
  qword_27ECFA040 = v15;
  unk_27ECFA048 = v16;
  xmmword_27ECFA070 = v32;
  unk_27ECFA080 = v33;
  xmmword_27ECFA050 = v30;
  unk_27ECFA060 = v31;
  xmmword_27ECFA090 = xmmword_27ECF3708;
  qword_27ECFA0A0 = qword_27ECF3718;
  unk_27ECFA0A8 = unk_27ECF3720;
  xmmword_27ECFA0B0 = xmmword_27ECF3728;
  qword_27ECFA0C0 = qword_27ECF3738;
}

uint64_t static Color.ColorValues.green.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECEF720 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &xmmword_27ECF9F28, sizeof(__dst));
  memcpy(a1, &xmmword_27ECF9F28, 0x1A0uLL);
  return sub_242C8DFF4(__dst, &v3);
}

uint64_t sub_242E55460()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0758, &qword_242F0B4B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F0A4E0;
  *(inited + 32) = xmmword_242F0B490;
  v25 = inited + 32;
  *(inited + 48) = 0;
  v5 = *(v1 + 104);
  v24 = *MEMORY[0x277CE0EE0];
  v23 = v5;
  v5(v3);
  v6 = sub_242F047A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50, &unk_242F37640);
  v7 = swift_initStackObject();
  v22 = xmmword_242F09510;
  *(v7 + 16) = xmmword_242F09510;
  *(v7 + 32) = 0;
  v8 = v7 + 32;
  *(v7 + 40) = v6;
  v9 = sub_242CE6C84(v7);
  swift_setDeallocating();

  sub_242C6E840(v8);
  v10 = sub_242E1E384(v9);

  if (*(v10 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v11 = sub_242F05CB0();
  }

  else
  {
    v11 = MEMORY[0x277D84F98];
  }

  v26[0] = v11;

  sub_242E21B3C(v12, 1, v26);

  *(inited + 56) = v26[0];
  *(inited + 64) = xmmword_242F0B4A0;
  *(inited + 80) = 0;
  v23(v3, v24, v0);
  v13 = sub_242F047A0();
  v14 = swift_initStackObject();
  *(v14 + 16) = v22;
  *(v14 + 32) = 0;
  v15 = v14 + 32;
  *(v14 + 40) = v13;
  v16 = sub_242CE6C84(v14);
  swift_setDeallocating();

  sub_242C6E840(v15);
  v17 = sub_242E1E384(v16);

  if (*(v17 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v18 = sub_242F05CB0();
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  v26[0] = v18;

  sub_242E21B3C(v19, 1, v26);

  *(inited + 88) = v26[0];
  v20 = sub_242CE6EE4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0760, &qword_242F0B4B8);
  result = swift_arrayDestroy();
  qword_27ECFA0C8 = v20;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesDigiBandLightGreen.modify(uint64_t a1))()
{
  if (qword_27ECEF728 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

unint64_t sub_242E55904()
{
  result = sub_242CE6EE4(MEMORY[0x277D84F90]);
  qword_27ECFA0D0 = result;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesDigiRingLightGreen.modify(uint64_t a1))()
{
  if (qword_27ECEF730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

unint64_t sub_242E559FC()
{
  result = sub_242CE6EE4(MEMORY[0x277D84F90]);
  qword_27ECFA0D8 = result;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesModularLightGreen.modify(uint64_t a1))()
{
  if (qword_27ECEF738 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t ShapeLayerConfiguration.description.getter()
{
  v1 = *v0;
  sub_242F05A80();
  MEMORY[0x245D26660](0xD000000000000026, 0x8000000242F5CAC0);
  v2 = MEMORY[0x245D26920](v1, &type metadata for ShapeLayerConfiguration.PathElement);
  MEMORY[0x245D26660](v2);

  MEMORY[0x245D26660](0x6143656E696C202CLL, 0xEB00000000203A70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA0E0, &qword_242F3F950);
  v3 = sub_242F04F90();
  MEMORY[0x245D26660](v3);

  MEMORY[0x245D26660](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_242E55C08()
{
  v1 = *v0;
  v2 = 120;
  v3 = 0x676E417472617473;
  v4 = 0x656C676E41646E65;
  if (v1 != 4)
  {
    v4 = 0x7369776B636F6C63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 121;
  if (v1 != 1)
  {
    v5 = 0x737569646172;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_242E55CB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242E58CDC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242E55CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E58184(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E55D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E58184(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242E55D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E58130(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E55D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E58130(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242E55DC8()
{
  v1 = 0x6F5465766F6DLL;
  v2 = 0x6F54637261;
  if (*v0 != 2)
  {
    v2 = 0x62755365736F6C63;
  }

  if (*v0)
  {
    v1 = 0x6F54656E696CLL;
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

uint64_t sub_242E55E40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242E58ED0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242E55E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E580DC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E55EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E580DC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242E55EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E581D8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E55F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E581D8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242E55F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E5822C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E55F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E5822C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t ShapeLayerConfiguration.PathElement.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA0E8, &qword_242F3F958);
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x28223BE20](v3);
  v45 = v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA0F0, &qword_242F3F960);
  v6 = *(v5 - 8);
  v51 = v5;
  v52 = v6;
  MEMORY[0x28223BE20](v5);
  v50 = v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA0F8, &qword_242F3F968);
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA100, &qword_242F3F970);
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA108, &qword_242F3F978);
  v15 = *(v14 - 8);
  v54 = v14;
  v55 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = v42 - v16;
  v18 = *(v1 + 8);
  v19 = *(v1 + 20);
  v42[0] = *(v1 + 16);
  v42[1] = v18;
  v20 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E580DC(v20, v21, v22);
  v53 = v17;
  v23 = sub_242F064C0();
  v26 = v19 >> 6;
  if (v19 >> 6 > 1)
  {
    if (v26 != 2)
    {
      v70 = 3;
      sub_242E58130(v23, v24, v25);
      v39 = v45;
      v41 = v53;
      v40 = v54;
      sub_242F05E40();
      (*(v48 + 8))(v39, v49);
      return (*(v55 + 8))(v41, v40);
    }

    v69 = 2;
    sub_242E58184(v23, v24, v25);
    v31 = v50;
    v33 = v53;
    v32 = v54;
    sub_242F05E40();
    v68 = 0;
    v34 = v51;
    v35 = v56;
    sub_242F05EF0();
    if (!v35)
    {
      v67 = 1;
      sub_242F05EF0();
      v66 = 2;
      sub_242F05EF0();
      v65 = 3;
      sub_242F05EF0();
      v64 = 4;
      sub_242F05EF0();
      v63 = 5;
      sub_242F05ED0();
    }

    (*(v52 + 8))(v31, v34);
    return (*(v55 + 8))(v33, v32);
  }

  if (v26)
  {
    v62 = 1;
    sub_242E581D8(v23, v24, v25);
    v33 = v53;
    v32 = v54;
    sub_242F05E40();
    v61 = 0;
    v36 = v47;
    v37 = v56;
    sub_242F05EF0();
    if (!v37)
    {
      v60 = 1;
      sub_242F05EF0();
    }

    (*(v46 + 8))(v10, v36);
    return (*(v55 + 8))(v33, v32);
  }

  v59 = 0;
  sub_242E5822C(v23, v24, v25);
  v28 = v53;
  v27 = v54;
  sub_242F05E40();
  v58 = 0;
  v29 = v44;
  v30 = v56;
  sub_242F05EF0();
  if (!v30)
  {
    v57 = 1;
    sub_242F05EF0();
  }

  (*(v43 + 8))(v13, v29);
  return (*(v55 + 8))(v28, v27);
}

void ShapeLayerConfiguration.PathElement.hash(into:)()
{
  v1 = *(v0 + 20) >> 6;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      MEMORY[0x245D279A0](2);
      sub_242F063C0();
      sub_242F063C0();
      sub_242F063C0();
      sub_242F063C0();
      sub_242F063C0();
      sub_242F063B0();
    }

    else
    {
      MEMORY[0x245D279A0](3);
    }
  }

  else
  {
    MEMORY[0x245D279A0](v1 != 0);
    sub_242F063C0();
    sub_242F063C0();
  }
}

uint64_t ShapeLayerConfiguration.PathElement.hashValue.getter()
{
  sub_242F06390();
  ShapeLayerConfiguration.PathElement.hash(into:)();
  return sub_242F063E0();
}

uint64_t ShapeLayerConfiguration.PathElement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA138, &qword_242F3F980);
  v74 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v69 - v3;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA140, &qword_242F3F988);
  v77 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v78 = &v69 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA148, &qword_242F3F990);
  v75 = *(v5 - 8);
  v76 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v69 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA150, &qword_242F3F998);
  v72 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v69 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA158, &unk_242F3F9A0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v69 - v13;
  v15 = a1[3];
  v83 = a1;
  v16 = __swift_project_boxed_opaque_existential_2Tm(a1, v15);
  sub_242E580DC(v16, v17, v18);
  v19 = v82;
  sub_242F06480();
  if (!v19)
  {
    v71 = 0;
    v20 = v10;
    v70 = v8;
    v22 = v79;
    v21 = v80;
    v23 = v78;
    v82 = v12;
    v24 = v81;
    v25 = sub_242F05E10();
    v26 = (2 * *(v25 + 16)) | 1;
    v84 = v25;
    v85 = v25 + 32;
    v86 = 0;
    v87 = v26;
    v27 = sub_242C7FBF0();
    if (v27 == 4 || v86 != v87 >> 1)
    {
      v33 = sub_242F05B10();
      swift_allocError();
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10, &qword_242F095A0);
      *v35 = &type metadata for ShapeLayerConfiguration.PathElement;
      sub_242F05D20();
      sub_242F05AF0();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
      swift_willThrow();
      (*(v82 + 8))(v14, v11);
    }

    else
    {
      if (v27 > 1u)
      {
        if (v27 == 2)
        {
          v88 = 2;
          sub_242E58184(v27, v28, v29);
          v37 = v71;
          sub_242F05D10();
          v38 = v82;
          if (!v37)
          {
            v88 = 0;
            v39 = v73;
            sub_242F05DD0();
            v52 = v51;
            v88 = 1;
            sub_242F05DD0();
            v53 = v77;
            v55 = v54;
            v88 = 2;
            sub_242F05DD0();
            v57 = v56;
            v88 = 3;
            sub_242F05DD0();
            LODWORD(v80) = v58;
            v88 = 4;
            sub_242F05DD0();
            v64 = v63;
            v88 = 5;
            v65 = sub_242F05DB0();
            v66 = v23;
            v67 = v65;
            (*(v53 + 8))(v66, v39);
            (*(v38 + 8))(v14, v11);
            swift_unknownObjectRelease();
            v50 = v52 | (v55 << 32);
            v48 = v57 | (v80 << 32);
            v68 = 0x100000000;
            if ((v67 & 1) == 0)
            {
              v68 = 0;
            }

            v49 = v68 | v64 | 0xFFFFFF8000000000;
            goto LABEL_19;
          }
        }

        else
        {
          v88 = 3;
          sub_242E58130(v27, v28, v29);
          v42 = v71;
          sub_242F05D10();
          v43 = v82;
          if (!v42)
          {
            (*(v74 + 8))(v22, v21);
            (*(v43 + 8))(v14, v11);
            swift_unknownObjectRelease();
            v50 = 0;
            v48 = 0;
            v49 = 0xC000000000;
            goto LABEL_19;
          }
        }
      }

      else if (v27)
      {
        v88 = 1;
        sub_242E581D8(v27, v28, v29);
        v40 = v71;
        sub_242F05D10();
        if (!v40)
        {
          v88 = 0;
          v41 = v76;
          sub_242F05DD0();
          v60 = v59;
          v88 = 1;
          sub_242F05DD0();
          v62 = v61;
          (*(v75 + 8))(v7, v41);
          (*(v82 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v48 = 0;
          v50 = v60 | (v62 << 32);
          v49 = 0x4000000000;
          goto LABEL_19;
        }
      }

      else
      {
        v88 = 0;
        sub_242E5822C(v27, v28, v29);
        v30 = v71;
        sub_242F05D10();
        if (!v30)
        {
          v88 = 0;
          v31 = v70;
          sub_242F05DD0();
          v32 = v82;
          v45 = v44;
          v88 = 1;
          sub_242F05DD0();
          v47 = v46;
          (*(v72 + 8))(v20, v31);
          (*(v32 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v48 = 0;
          v49 = 0;
          v50 = v45 | (v47 << 32);
LABEL_19:
          *v24 = v50;
          *(v24 + 8) = v48;
          *(v24 + 16) = v49;
          *(v24 + 20) = BYTE4(v49);
          return __swift_destroy_boxed_opaque_existential_2Tm(v83);
        }
      }

      (*(v82 + 8))(v14, v11);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v83);
}

uint64_t sub_242E57160()
{
  sub_242F06390();
  ShapeLayerConfiguration.PathElement.hash(into:)();
  return sub_242F063E0();
}

uint64_t sub_242E571C0(uint64_t a1)
{
  sub_242F06390();
  ShapeLayerConfiguration.PathElement.hash(into:)();
  return sub_242F063E0();
}

uint64_t ShapeLayerConfiguration.lineWidth.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 36) = BYTE4(result) & 1;
  return result;
}

uint64_t ShapeLayerConfiguration.init(pathElements:lineCap:fillColorIDs:strokeColorIDs:lineWidth:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a2;
  *a6 = result;
  *(a6 + 8) = v6;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 36) = BYTE4(a5) & 1;
  return result;
}

uint64_t sub_242E573C0()
{
  v1 = *v0;
  v2 = 0x6D656C4568746170;
  v3 = 0x6F6C6F436C6C6966;
  v4 = 0x6F43656B6F727473;
  if (v1 != 3)
  {
    v4 = 0x74646957656E696CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x706143656E696CLL;
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

uint64_t sub_242E5747C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242E5902C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242E574A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E58280(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E574E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E58280(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t ShapeLayerConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA160, &qword_242F3F9B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - v6;
  v8 = *v1;
  v24 = *(v1 + 8);
  v9 = v1[2];
  v22 = v1[3];
  v23 = v9;
  v20[1] = *(v1 + 8);
  v21 = *(v1 + 36);
  v10 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E58280(v10, v11, v12);

  sub_242F064C0();
  v26 = v8;
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA170, &unk_242F3F9B8);
  sub_242E58328(&qword_27ECFA178, sub_242E582D4, MEMORY[0x277D83948]);
  sub_242F05F20();
  if (v2)
  {
  }

  else
  {
    v14 = v22;
    v13 = v23;
    v15 = v21;

    LOBYTE(v26) = v24;
    v25 = 1;
    sub_242CD0B40(v16, v17, v18);
    sub_242F05EB0();
    v26 = v13;
    v25 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8, &qword_242F180D0);
    sub_242CCFBCC(&qword_27ECF1C00, sub_242C7DEA0, MEMORY[0x277D83B90], MEMORY[0x277D83508]);
    sub_242F05EB0();
    v26 = v14;
    v25 = 3;
    sub_242F05EB0();
    LOBYTE(v26) = 4;
    v25 = v15;
    sub_242F05E80();
  }

  return (*(v5 + 8))(v7, v4);
}

double ShapeLayerConfiguration.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 8);
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = *(v2 + 36);
  sub_242C7BBD8(a1, *v2);
  if (v4 == 3)
  {
    sub_242F063B0();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_242F063B0();
    MEMORY[0x245D279A0](v4);
    if (v6)
    {
LABEL_3:
      sub_242F063B0();
      sub_242C79508(a1, v6);
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_242F063B0();
      if (v7)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  sub_242F063B0();
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_242F063B0();
  sub_242C79508(a1, v5);
  if (v7)
  {
LABEL_5:
    sub_242F063B0();
    return result;
  }

LABEL_9:
  sub_242F063B0();
  sub_242F063C0();
  return result;
}

uint64_t ShapeLayerConfiguration.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 36);
  v5[9] = *v0;
  v6 = v1;
  v7 = *(v0 + 16);
  v8 = v2;
  v9 = v3;
  sub_242F06390();
  ShapeLayerConfiguration.hash(into:)(v5);
  return sub_242F063E0();
}

void ShapeLayerConfiguration.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA188, &qword_242F3F9C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E58280(v9, v10, v11);
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA170, &unk_242F3F9B8);
    v23 = 0;
    sub_242E58328(&qword_27ECFA190, sub_242E583A0, MEMORY[0x277D83978]);
    v12 = sub_242F05E00();
    v13 = v24;
    v23 = 1;
    sub_242CD0A98(v12, v14, v15);
    sub_242F05D90();
    v22 = v13;
    v21 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8, &qword_242F180D0);
    v23 = 2;
    sub_242CCFBCC(&qword_27ECF1C10, sub_242C7DFAC, MEMORY[0x277D83BB8], MEMORY[0x277D83528]);
    sub_242F05D90();
    v20 = v24;
    v23 = 3;
    sub_242F05D90();
    v16 = v24;
    LOBYTE(v24) = 4;
    v17 = sub_242F05D60();
    v18 = v22;
    v19 = v17;
    (*(v6 + 8))(v8, v5);
    *a2 = v18;
    *(a2 + 8) = v21;
    *(a2 + 16) = v20;
    *(a2 + 24) = v16;
    *(a2 + 32) = v19;
    *(a2 + 36) = BYTE4(v19) & 1;

    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }
}

uint64_t sub_242E57DC4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 36);
  v5[9] = *v0;
  v6 = v1;
  v7 = *(v0 + 16);
  v8 = v2;
  v9 = v3;
  sub_242F06390();
  ShapeLayerConfiguration.hash(into:)(v5);
  return sub_242F063E0();
}

uint64_t sub_242E57E34(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v4 = *(v1 + 36);
  v6[9] = *v1;
  v7 = v2;
  v8 = *(v1 + 16);
  v9 = v3;
  v10 = v4;
  sub_242F06390();
  ShapeLayerConfiguration.hash(into:)(v6);
  return sub_242F063E0();
}

BOOL _s14CarPlayAssetUI23ShapeLayerConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 36);
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 36);
  if ((sub_242C72FF0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == 3)
  {
    if (v7 != 3)
    {
      return 0;
    }

LABEL_7:
    if (v4)
    {
      if (!v9)
      {
        return 0;
      }

      v13 = sub_242C75A30(v4, v9);

      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v9)
    {
      return 0;
    }

    if (v3)
    {
      if (!v8)
      {
        return 0;
      }

      v14 = sub_242C75A30(v3, v8);

      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v8)
    {
      return 0;
    }

    if ((v6 & 1) == 0)
    {
      if (v5 == v10)
      {
        v15 = v11;
      }

      else
      {
        v15 = 1;
      }

      return (v15 & 1) == 0;
    }

    return (v11 & 1) != 0;
  }

  result = 0;
  if (v7 != 3 && v2 == v7)
  {
    goto LABEL_7;
  }

  return result;
}

BOOL _s14CarPlayAssetUI23ShapeLayerConfigurationV11PathElementO2eeoiySbAE_AEtFZ_0(float *a1, float *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4) | (*(a2 + 20) << 32);
  v5 = *(a1 + 20) >> 6;
  if (v5 <= 1)
  {
    v6 = (v4 >> 38) & 3;
    if (!v5)
    {
      if (v6)
      {
        return 0;
      }

LABEL_23:
      if (*&v2 == *&v3)
      {
        return *(&v2 + 1) == *(&v3 + 1);
      }

      return 0;
    }

    if (v6 == 1)
    {
      goto LABEL_23;
    }

    return 0;
  }

  v7 = *(a2 + 1);
  if (v5 == 2)
  {
    if (((v4 >> 38) & 3) == 2)
    {
      v8 = *&v2 == *&v3 && *(&v2 + 1) == *(&v3 + 1);
      v9 = v8 && a1[2] == *&v7;
      v10 = v9 && a1[3] == *(&v7 + 1);
      if (v10 && a1[4] == a2[4])
      {
        return a1[5] & 1 ^ ((v4 & 0x100000000) == 0);
      }
    }

    return 0;
  }

  v13 = v7 | v3;
  return ((v4 >> 38) & 3) == 3 && v13 == 0 && (v4 & 0xFFFFFFFFFFLL) == 0xC000000000;
}

unint64_t sub_242E580DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA110;
  if (!qword_27ECFA110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA110);
  }

  return result;
}

unint64_t sub_242E58130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA118;
  if (!qword_27ECFA118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA118);
  }

  return result;
}

unint64_t sub_242E58184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA120;
  if (!qword_27ECFA120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA120);
  }

  return result;
}

unint64_t sub_242E581D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA128;
  if (!qword_27ECFA128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA128);
  }

  return result;
}

unint64_t sub_242E5822C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA130;
  if (!qword_27ECFA130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA130);
  }

  return result;
}

unint64_t sub_242E58280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA168;
  if (!qword_27ECFA168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA168);
  }

  return result;
}

unint64_t sub_242E582D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA180;
  if (!qword_27ECFA180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA180);
  }

  return result;
}

uint64_t sub_242E58328(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFA170, &unk_242F3F9B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242E583A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA198;
  if (!qword_27ECFA198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA198);
  }

  return result;
}

unint64_t sub_242E583F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA1A0;
  if (!qword_27ECFA1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA1A0);
  }

  return result;
}

unint64_t sub_242E58450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA1A8;
  if (!qword_27ECFA1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA1A8);
  }

  return result;
}

__n128 __swift_memcpy37_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_242E584B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 37))
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

uint64_t sub_242E58500(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 37) = 1;
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

    *(result + 37) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy21_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ShapeLayerConfiguration.PathElement(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 21))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 20) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 20) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ShapeLayerConfiguration.PathElement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 20) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_242E5861C(uint64_t a1)
{
  v1 = *(a1 + 20) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_242E58638(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = a1 + 16;
  v3 = v2 | (*(result + 4) << 32);
  *result = v2;
  *(result + 4) = BYTE4(v3) & 0x3F;
  return result;
}

uint64_t sub_242E58654(uint64_t result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 16);
    result += 16;
    v3 = (v2 | (*(result + 4) << 32)) & 0x1FFFFFFFFLL | (a2 << 38);
    *result = v2;
    *(result + 4) = BYTE4(v3);
  }

  else
  {
    *result = (a2 - 3);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 20) = -64;
  }

  return result;
}

unint64_t sub_242E58708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA1B0;
  if (!qword_27ECFA1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA1B0);
  }

  return result;
}

unint64_t sub_242E58760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA1B8;
  if (!qword_27ECFA1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA1B8);
  }

  return result;
}

unint64_t sub_242E587B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA1C0;
  if (!qword_27ECFA1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA1C0);
  }

  return result;
}

unint64_t sub_242E58810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA1C8;
  if (!qword_27ECFA1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA1C8);
  }

  return result;
}

unint64_t sub_242E58868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA1D0;
  if (!qword_27ECFA1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA1D0);
  }

  return result;
}

unint64_t sub_242E588C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA1D8;
  if (!qword_27ECFA1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA1D8);
  }

  return result;
}

unint64_t sub_242E58918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA1E0;
  if (!qword_27ECFA1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA1E0);
  }

  return result;
}

unint64_t sub_242E58970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA1E8;
  if (!qword_27ECFA1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA1E8);
  }

  return result;
}

unint64_t sub_242E589C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA1F0;
  if (!qword_27ECFA1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA1F0);
  }

  return result;
}

unint64_t sub_242E58A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA1F8;
  if (!qword_27ECFA1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA1F8);
  }

  return result;
}

unint64_t sub_242E58A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA200;
  if (!qword_27ECFA200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA200);
  }

  return result;
}

unint64_t sub_242E58AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA208;
  if (!qword_27ECFA208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA208);
  }

  return result;
}

unint64_t sub_242E58B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA210;
  if (!qword_27ECFA210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA210);
  }

  return result;
}

unint64_t sub_242E58B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA218;
  if (!qword_27ECFA218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA218);
  }

  return result;
}

unint64_t sub_242E58BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA220;
  if (!qword_27ECFA220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA220);
  }

  return result;
}

unint64_t sub_242E58C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA228;
  if (!qword_27ECFA228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA228);
  }

  return result;
}

unint64_t sub_242E58C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA230[0];
  if (!qword_27ECFA230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ECFA230);
  }

  return result;
}

uint64_t sub_242E58CDC(uint64_t a1, uint64_t a2)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x737569646172 && a2 == 0xE600000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E417472617473 && a2 == 0xEA0000000000656CLL || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C676E41646E65 && a2 == 0xE800000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7369776B636F6C63 && a2 == 0xE900000000000065)
  {

    return 5;
  }

  else
  {
    v5 = sub_242F06110();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_242E58ED0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F5465766F6DLL && a2 == 0xE600000000000000;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F54656E696CLL && a2 == 0xE600000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F54637261 && a2 == 0xE500000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x62755365736F6C63 && a2 == 0xEC00000068746170)
  {

    return 3;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t sub_242E5902C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D656C4568746170 && a2 == 0xEC00000073746E65;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x706143656E696CLL && a2 == 0xE700000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6C6F436C6C6966 && a2 == 0xEC00000073444972 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F43656B6F727473 && a2 == 0xEE00734449726F6CLL || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74646957656E696CLL && a2 == 0xE900000000000068)
  {

    return 4;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t (*SlotViewBuilder.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)(uint64_t a1, uint64_t a2, uint64_t a3)@<X8>))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  *(result + 2) = a3;
  *(result + 3) = a4;
  *(result + 4) = a1;
  *(result + 5) = a2;
  *a5 = sub_242E592FC;
  a5[1] = result;
  return result;
}

uint64_t sub_242E5926C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = MEMORY[0x28223BE20](a1);
  v8(v7);
  return sub_242F04940();
}

uint64_t sub_242E59318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_242F041B0();
  v8 = MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2, v8);
  swift_storeEnumTagMultiPayload();
  return sub_242F041C0();
}

uint64_t sub_242E59410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_242F041B0();
  v8 = MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3, v8);
  swift_storeEnumTagMultiPayload();
  return sub_242F041C0();
}

uint64_t Angle.description.getter(double a1)
{
  sub_242F05480();
  MEMORY[0x245D26660](539799746, 0xA400000000000000);
  sub_242F05480();
  MEMORY[0x245D26660](0x7364617220, 0xE500000000000000);
  return 0;
}

uint64_t sub_242E595B8()
{
  sub_242F05480();
  MEMORY[0x245D26660](539799746, 0xA400000000000000);
  sub_242F05480();
  MEMORY[0x245D26660](0x7364617220, 0xE500000000000000);
  return 0;
}

uint64_t IdentifiableIndices.Element.id.getter@<X0>(uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t sub_242E5971C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a6, a1, AssociatedTypeWitness);
  v13 = *(type metadata accessor for IdentifiableIndices.Element(0, a3, a4, a5) + 44);
  v14 = swift_getAssociatedTypeWitness();
  v15 = *(*(v14 - 8) + 32);

  return v15(a6 + v13, a2, v14);
}

uint64_t IdentifiableIndices.subscript.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v5 = a2[2];
  v22 = a2[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v21 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v19 - v7;
  v9 = a2[4];
  swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = swift_checkMetadataState();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v19 - v15;
  v17 = sub_242F05650();
  (*(v14 + 16))(v16);
  v17(v24, 0);
  sub_242F05AA0();
  (*(v14 + 8))(v16, v13);
  (*(v20 + 16))(v8, a1, v21);
  return sub_242E5971C(v12, v8, v5, v22, v9, v23);
}

uint64_t (*sub_242E59B6C(uint64_t **a1, uint64_t a2, void *a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_242E59C3C(v6, a2, a3);
  return sub_242E59BF4;
}

void sub_242E59BF4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_242E59C3C(uint64_t *a1, uint64_t a2, void *a3))()
{
  v6 = type metadata accessor for IdentifiableIndices.Element(0, a3[2], a3[3], a3[4]);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  IdentifiableIndices.subscript.getter(a2, a3, v8);
  return sub_242E59D18;
}

void sub_242E59D18(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_242E59D74@<X0>(uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v3 = sub_242F05860();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_242E59EA8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v13 - v10;
  (*(v8 + 32))(&v13 - v10, a1, AssociatedTypeWitness, v9);
  a4(v11, a2);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

uint64_t sub_242E59FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 - 8);
  (*(v6 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  sub_242F05C30();
  IdentifiableIndices.startIndex.getter(a1);
  v4 = *(v6 + 8);

  return v4(v2, a1);
}

uint64_t sub_242E5A0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_242E5A114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v6 = sub_242E5E358(v3, a1, WitnessTable);
  (*(*(a1 - 8) + 8))(v3, a1);
  return v6;
}

uint64_t RandomAccessCollection<>.identifiableIndices.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  return (*(v4 + 32))(a2, v7, a1);
}

uint64_t ForEach<>.init<A>(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v23[1] = a4;
  v24 = a2;
  v25 = a3;
  v26 = a1;
  v27 = a9;
  v16 = type metadata accessor for IdentifiableIndices(0, a6, a8, a10);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  (*(v17 + 16))(v23 - v19, a1, v16, v18);
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v20[6] = a8;
  v20[7] = a10;
  v21 = v25;
  v20[8] = v24;
  v20[9] = v21;
  swift_getWitnessTable();
  type metadata accessor for IdentifiableIndices.Element(255, a6, a8, a10);
  swift_getWitnessTable();
  sub_242F049A0();
  return (*(v17 + 8))(v26, v16);
}

uint64_t sub_242E5A474(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  v17 = type metadata accessor for IdentifiableIndices.Element(0, v15, v16, v14);
  a2(a1 + *(v17 + 44));
  sub_242CA32B4();
  v18 = *(v8 + 8);
  v18(v10, a5);
  sub_242CA32B4();
  return (v18)(v13, a5);
}

uint64_t ForEach<>.init<A>(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  return sub_242E5ACAC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, &unk_2855911A8, sub_242E5AC50);
}

{
  return sub_242E5ACAC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, &unk_2855911D0, sub_242E5B6E4);
}

uint64_t sub_242E5A664@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v86 = a5;
  v87 = a8;
  v77 = a3;
  v78 = a2;
  v79 = a9;
  v81 = a4;
  v82 = a10;
  v83 = a1;
  v84 = a11;
  v85 = a12;
  v69 = type metadata accessor for IdentifiableIndices.Element(0, a7, a11, a12);
  v88 = *(v69 - 8);
  v67 = v88[8];
  MEMORY[0x28223BE20](v69);
  v76 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v58 - v16;
  v61 = &v58 - v16;
  v80 = a7;
  v18 = sub_242F04980();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v70 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v58 - v22;
  v60 = &v58 - v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = sub_242F04980();
  v74 = *(v24 - 8);
  v75 = v24;
  MEMORY[0x28223BE20](v24);
  v71 = &v58 - v25;
  v62 = a6;
  v72 = *(a6 - 8);
  MEMORY[0x28223BE20](v26);
  v66 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v28);
  v68 = &v58 - v30;
  v31 = v19;
  v65 = *(v19 + 16);
  v32 = v18;
  v65(v23, v81, v18, v29);
  v33 = v88;
  v64 = v88[2];
  v34 = v17;
  v35 = v69;
  v64(v34, v83, v69);
  v36 = *(v31 + 80);
  v37 = (v36 + 88) & ~v36;
  v38 = *(v33 + 80);
  v59 = v37;
  v39 = (v20 + v37 + v38) & ~v38;
  v63 = v36 | v38;
  v40 = swift_allocObject();
  *(v40 + 2) = 0;
  *(v40 + 3) = 0;
  *(v40 + 4) = v86;
  *(v40 + 5) = a6;
  v41 = v87;
  *(v40 + 6) = v80;
  *(v40 + 7) = v41;
  v43 = v84;
  v42 = v85;
  *(v40 + 8) = v82;
  *(v40 + 9) = v43;
  *(v40 + 10) = v42;
  v58 = *(v31 + 32);
  v58(&v40[v37], v60, v32);
  v44 = v88[4];
  v88 += 4;
  v60 = v44;
  (v44)(&v40[v39], v61, v35);
  v45 = v70;
  v46 = v32;
  (v65)(v70, v81, v32);
  v47 = v76;
  v64(v76, v83, v35);
  v48 = swift_allocObject();
  *(v48 + 2) = 0;
  *(v48 + 3) = 0;
  v49 = v87;
  v50 = v62;
  *(v48 + 4) = v86;
  *(v48 + 5) = v50;
  *(v48 + 6) = v80;
  *(v48 + 7) = v49;
  v52 = v84;
  v51 = v85;
  *(v48 + 8) = v82;
  *(v48 + 9) = v52;
  *(v48 + 10) = v51;
  v58(&v48[v59], v45, v46);
  (v60)(&v48[v39], v47, v35);
  v53 = v71;
  sub_242F04970();
  v54 = v66;
  v78(v53);
  (*(v74 + 8))(v53, v75);
  v55 = v68;
  sub_242CA32B4();
  v56 = *(v72 + 8);
  v56(v54, v50);
  sub_242CA32B4();
  return (v56)(v55, v50);
}

uint64_t sub_242E5ACAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v49 = a3;
  v50 = a8;
  v47 = a2;
  v48 = a7;
  v45 = a4;
  v46 = a5;
  v51 = a9;
  v52 = a13;
  v44 = a12;
  v40 = a11;
  v41 = a10;
  v15 = sub_242F04980();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - v17;
  v37 = &v37 - v17;
  v43 = type metadata accessor for IdentifiableIndices(0, a6, a10, a11);
  MEMORY[0x28223BE20](v43);
  v20 = &v37 - v19;
  v42 = &v37 - v19;
  v21 = *(a6 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  MEMORY[0x245D25F50](v15, v23);
  RandomAccessCollection<>.identifiableIndices.getter(a6, v20);
  (*(v21 + 8))(v25, a6);
  v26 = *(v16 + 16);
  v27 = v18;
  v28 = v15;
  v38 = v15;
  v26(v27, a1, v15);
  v29 = (*(v16 + 80) + 88) & ~*(v16 + 80);
  v30 = swift_allocObject();
  v31 = v46;
  *(v30 + 2) = v45;
  *(v30 + 3) = v31;
  v32 = v48;
  *(v30 + 4) = a6;
  *(v30 + 5) = v32;
  v34 = v40;
  v33 = v41;
  *(v30 + 6) = v50;
  *(v30 + 7) = v33;
  v35 = v47;
  *(v30 + 8) = v34;
  *(v30 + 9) = v35;
  *(v30 + 10) = v49;
  (*(v16 + 32))(&v30[v29], v37, v28);
  swift_getWitnessTable();
  type metadata accessor for IdentifiableIndices.Element(255, a6, v33, v34);
  swift_getWitnessTable();
  sub_242F049A0();
  return (*(v16 + 8))(v39, v38);
}

uint64_t sub_242E5AFC4@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v87 = a5;
  v88 = a8;
  v63 = a4;
  v76 = a3;
  v77 = a2;
  v78 = a9;
  v84 = a10;
  v85 = a1;
  v73 = a11;
  v86 = a12;
  v15 = type metadata accessor for IdentifiableIndices.Element(0, a7, a11, a12);
  v65 = *(v15 - 8);
  v83 = *(v65 + 64);
  MEMORY[0x28223BE20](v15);
  v74 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v56 - v18;
  v59 = &v56 - v18;
  v82 = a7;
  v81 = sub_242F04980();
  v20 = *(v81 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v81);
  v67 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v56 - v23;
  v58 = &v56 - v23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v75 = sub_242F04980();
  v72 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v69 = &v56 - v25;
  v80 = a6;
  v70 = *(a6 - 8);
  MEMORY[0x28223BE20](v26);
  v66 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v28);
  v68 = &v56 - v30;
  v79 = v15;
  v64 = *(v15 + 44);
  v62 = *(v20 + 16);
  v31 = v24;
  v32 = v81;
  v62(v31, a4, v81, v29);
  v33 = v65;
  v61 = *(v65 + 16);
  v61(v19, v85, v15);
  v34 = *(v20 + 80);
  v35 = v20;
  v36 = *(v33 + 80);
  v37 = (v34 + 88) & ~v34;
  v57 = v37;
  v38 = (v21 + v37 + v36) & ~v36;
  v60 = v34 | v36;
  v39 = swift_allocObject();
  *(v39 + 2) = 0;
  *(v39 + 3) = 0;
  *(v39 + 4) = v87;
  *(v39 + 5) = a6;
  v40 = v88;
  *(v39 + 6) = v82;
  *(v39 + 7) = v40;
  v41 = v73;
  *(v39 + 8) = v84;
  *(v39 + 9) = v41;
  *(v39 + 10) = v86;
  v56 = *(v35 + 32);
  v56(&v39[v37], v58, v32);
  v65 = *(v33 + 32);
  v42 = v79;
  (v65)(&v39[v38], v59, v79);
  v43 = v67;
  (v62)(v67, v63, v32);
  v44 = v74;
  v45 = v85;
  v61(v74, v85, v42);
  v46 = swift_allocObject();
  *(v46 + 2) = 0;
  *(v46 + 3) = 0;
  v47 = v88;
  v49 = v80;
  v48 = v81;
  *(v46 + 4) = v87;
  *(v46 + 5) = v49;
  *(v46 + 6) = v82;
  *(v46 + 7) = v47;
  *(v46 + 8) = v84;
  *(v46 + 9) = v41;
  *(v46 + 10) = v86;
  v56(&v46[v57], v43, v48);
  (v65)(&v46[v38], v44, v79);
  v50 = v69;
  sub_242F04970();
  v51 = v66;
  v77(v45 + v64, v50);
  (*(v72 + 8))(v50, v75);
  v52 = v68;
  v53 = v80;
  sub_242CA32B4();
  v54 = *(v70 + 8);
  v54(v51, v53);
  sub_242CA32B4();
  return (v54)(v52, v53);
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 32);
  v2 = (sub_242F04980() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(*v2 + 64);

  (*(*(v1 - 8) + 8))(v0 + v4 + v2[10], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_242E5B6FC(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, void, uint64_t))
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v12 = *(v2 + 48);
  v9 = *(v2 + 64);
  v10 = *(sub_242F04980() - 8);
  return a2(a1, *(v2 + 72), *(v2 + 80), v2 + ((*(v10 + 80) + 88) & ~*(v10 + 80)), v5, v6, v7, v8, v12, *(&v12 + 1), v9);
}

uint64_t sub_242E5B7D0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X6>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_242F04980();
  MEMORY[0x245D25F50](v12);
  type metadata accessor for IdentifiableIndices.Element(0, a3, a6, a7);
  v13 = sub_242F05650();
  v15 = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a4, v15, AssociatedTypeWitness);
  v13(v18, 0);
  return (*(v9 + 8))(v11, a3);
}

uint64_t sub_242E5B96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v25 = a5;
  v26 = a1;
  v23 = a11;
  v24 = a12;
  MEMORY[0x28223BE20](a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v23 - v15;
  v17 = swift_getAssociatedTypeWitness();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v23 - v19;
  v21 = type metadata accessor for IdentifiableIndices.Element(0, a8, v23, v24);
  (*(v18 + 16))(v20, v25 + *(v21 + 44), v17);
  (*(v14 + 16))(v16, v26, AssociatedTypeWitness);
  sub_242F04980();
  MEMORY[0x245D25F50]();
  sub_242F04EC0();
  return sub_242F04960();
}

uint64_t Binding.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x245D25F50](v8, v5);
  swift_getAtKeyPath();
  return (*(v4 + 8))(v7, v3);
}

uint64_t Binding.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x245D25F50](v10, v7);
  v11 = swift_readAtKeyPath();
  (*(*(*(v4 + *MEMORY[0x277D84308] + 8) - 8) + 16))(a3);
  v11(v13, 0);
  return (*(v6 + 8))(v9, v5);
}

double sub_242E5BE00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  v6 = sub_242F04980();

  sub_242E5E428(a1, v5, v6);

  return result;
}

uint64_t Binding.subscript.setter(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  sub_242E5E428(a1, a2, a3);

  v5 = *(*(*(v4 + *MEMORY[0x277D84308] + 8) - 8) + 8);

  return v5(a1);
}

void (*Binding.subscript.modify(void *a1, uint64_t *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(*a2 + *MEMORY[0x277D84308] + 8);
  v8[3] = v10;
  v11 = *(v10 - 8);
  v8[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v8[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[5] = malloc(v12);
    v13 = malloc(v12);
  }

  v9[6] = v13;
  Binding.subscript.getter(a2, a3, v13);
  return sub_242E5C070;
}

void sub_242E5C070(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);

    sub_242E5E428(v3, v8, v7);

    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {

    sub_242E5E428(v4, v8, v7);

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Binding<A>.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a2;
  v34 = a5;
  v31 = a4;
  v32 = a1;
  v30 = a6;
  v27 = a3;
  v8 = sub_242F04980();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v29 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v27 - v13;
  v28 = *(v9 + 16);
  v15 = a1;
  v17 = v16;
  v28(&v27 - v13, v15, v12);
  v18 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = v33;
  *(v19 + 5) = a3;
  v20 = v34;
  *(v19 + 6) = v31;
  *(v19 + 7) = v20;
  v21 = *(v9 + 32);
  v21(&v19[v18], v14, v17);
  v22 = v29;
  (v28)(v29, v32, v17);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  v24 = v27;
  *(v23 + 4) = v33;
  *(v23 + 5) = v24;
  v25 = v34;
  *(v23 + 6) = v31;
  *(v23 + 7) = v25;
  v21(&v23[v18], v22, v17);
  sub_242F04970();
  return (*(v9 + 8))(v32, v17);
}

uint64_t sub_242E5C3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  MEMORY[0x28223BE20](a1);
  v7 = sub_242F04980();
  MEMORY[0x245D25F50](v7);
  return sub_242F04CB0();
}

uint64_t sub_242E5C484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MEMORY[0x28223BE20](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  (*(v12 + 16))(v9, v11);
  sub_242F04CB0();
  sub_242F04980();
  return sub_242F04960();
}

uint64_t Binding<A>.init(_:skipping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a4;
  v41 = a5;
  v42 = a2;
  v39 = *(a3 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](a1);
  v38 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_242F04980();
  v9 = *(v31 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v31);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v31 - v14;
  v16 = *(v9 + 16);
  v36 = a1;
  v16(&v31 - v14, a1, v13);
  v17 = *(v9 + 80);
  v37 = v9;
  v18 = (v17 + 48) & ~v17;
  v32 = v18 + v10;
  v34 = v17 | 7;
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a3;
  *(v19 + 5) = a4;
  v33 = *(v9 + 32);
  v20 = v15;
  v21 = v31;
  v33(&v19[v18], v20, v31);
  v22 = a1;
  v23 = v21;
  (v16)(v11, v22, v21);
  v25 = v38;
  v24 = v39;
  (*(v39 + 16))(v38, v42, a3);
  v26 = v24;
  v27 = (v32 + *(v24 + 80)) & ~*(v24 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  v29 = v35;
  *(v28 + 4) = a3;
  *(v28 + 5) = v29;
  v33(&v28[v18], v11, v23);
  (*(v26 + 32))(&v28[v27], v25, a3);
  sub_242F04970();
  (*(v26 + 8))(v42, a3);
  return (*(v37 + 8))(v36, v23);
}

uint64_t sub_242E5C8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_242F04EE0())
  {
    v11 = sub_242F04980();
    MEMORY[0x245D25F50](v11);
  }

  else
  {
    (*(v8 + 16))(v10, a1, a6);
  }

  sub_242F04980();
  return sub_242F04960();
}

uint64_t Binding<A>.skipping(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, v12);
  (*(v8 + 16))(v10, a1, v7);
  return Binding<A>.init(_:skipping:)(v14, v10, v7, a3, a4);
}

uint64_t sub_242E5CB70(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA3C0, qword_242F40560);
  sub_242F048A0();
  return v2;
}

uint64_t sub_242E5CBB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v62 = a1;
  v69 = a4;
  WitnessTable = swift_getWitnessTable();
  v5 = sub_242F04200();
  v6 = *(a2 + 16);
  v7 = swift_getWitnessTable();
  v8 = *(a2 + 24);
  v81 = v5;
  v82 = v6;
  v70 = v7;
  v71 = v6;
  v83 = v7;
  v84 = v8;
  v72 = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v59 = &v56 - v14;
  v15 = *(a2 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  v18 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v5;
  v19 = sub_242F03E00();
  v58 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v57 = &v56 - v23;
  v66 = OpaqueTypeMetadata2;
  v24 = sub_242F041D0();
  v64 = *(v24 - 8);
  v65 = v24;
  v25 = MEMORY[0x28223BE20](v24);
  v63 = &v56 - v26;
  v27 = v61;
  LODWORD(v26) = *(v61 + *(a2 + 44));
  v60 = *(a2 + 36);
  if (v26 == 1)
  {
    v59 = *(a2 + 40);
    (*(v15 + 16))(&v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v61, a2, v25);
    v28 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v29 = swift_allocObject();
    v30 = v70;
    v31 = v71;
    v32 = v72;
    *(v29 + 16) = v71;
    *(v29 + 24) = v32;
    (*(v15 + 32))(v29 + v28, v18, a2);
    v33 = v68;
    View.task<A>(id:priority:runOnAppear:_:)(v27 + v60, &v59[v27], 1u, &unk_242F405D0, v29, v68, v31, v30, v21, v72);

    v34 = WitnessTable;
    v73 = v30;
    v74 = WitnessTable;
    v35 = swift_getWitnessTable();
    v36 = v57;
    sub_242CA32B4();
    v37 = *(v58 + 8);
    v37(v21, v19);
    sub_242CA32B4();
    v81 = v33;
    v82 = v31;
    v83 = v30;
    v84 = v72;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v39 = v63;
    sub_242E59318(v21, v19, v66, v35, OpaqueTypeConformance2);
    v37(v21, v19);
    v37(v36, v19);
  }

  else
  {
    v40 = *(v15 + 16);
    v58 = v10;
    v40(&v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v61, a2, v25);
    v41 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v42 = swift_allocObject();
    v43 = v71;
    v44 = v72;
    *(v42 + 16) = v71;
    *(v42 + 24) = v44;
    (*(v15 + 32))(v42 + v41, v18, a2);
    v33 = v68;
    v45 = v70;
    sub_242F046C0();

    v81 = v33;
    v82 = v43;
    v83 = v45;
    v84 = v44;
    v46 = swift_getOpaqueTypeConformance2();
    v47 = v59;
    v48 = v66;
    sub_242CA32B4();
    v49 = *(v58 + 8);
    v49(v12, v48);
    sub_242CA32B4();
    v79 = v45;
    v34 = WitnessTable;
    v80 = WitnessTable;
    v50 = swift_getWitnessTable();
    v39 = v63;
    sub_242E59410(v12, v19, v48, v50, v46);
    v49(v12, v48);
    v49(v47, v48);
  }

  v51 = v70;
  v77 = v70;
  v78 = v34;
  v52 = swift_getWitnessTable();
  v81 = v33;
  v82 = v71;
  v83 = v51;
  v84 = v72;
  v53 = swift_getOpaqueTypeConformance2();
  v75 = v52;
  v76 = v53;
  v54 = v65;
  swift_getWitnessTable();
  sub_242CA32B4();
  return (*(v64 + 8))(v39, v54);
}

uint64_t sub_242E5D34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_242F05430();
  v3[5] = sub_242F05420();
  v5 = sub_242F05410();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_242E5D3E8, v5, v4);
}

uint64_t sub_242E5D3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = (v5 + *(type metadata accessor for TaskConditional(0, v4[3], v4[4], a4) + 48));
  v9 = (*v6 + **v6);
  v7 = swift_task_alloc();
  v4[8] = v7;
  *v7 = v4;
  v7[1] = sub_242E5D4E8;

  return v9();
}

uint64_t sub_242E5D4E8()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_242E5D608, v3, v2);
}

uint64_t sub_242E5D608()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t View.task<A>(id:priority:runOnAppear:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v35 = a8;
  v33 = a9;
  v34 = a6;
  v29 = a2;
  v30 = a5;
  v32 = a4;
  v31 = a3;
  v28 = a1;
  v11 = sub_242F05450();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a7 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TaskConditional(0, a7, a10, v19);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v27 - v23;
  (*(v15 + 16))(v18, v28, a7, v22);
  (*(v12 + 16))(v14, v29, v11);
  v25 = v30;

  sub_242E5DE4C(v18, v14, v31, v32, v25, a7, a10, v24);
  MEMORY[0x245D25CB0](v24, v34, v20, v35);
  return (*(v21 + 8))(v24, v20);
}

uint64_t sub_242E5D8C0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v27 = a3;
  v5 = type metadata accessor for TaskConditional(0, a2, a3, a4);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAFB0, &qword_242F432A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23 - v10;
  v12 = *a1;
  v24 = *(a1 + 1);
  v25 = v12;
  v29 = v12;
  v30 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA3C8, &qword_242F405E0);
  sub_242F048B0();
  if (v28)
  {
    sub_242F05460();
  }

  v13 = *(v5 + 40);
  v14 = sub_242F05450();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v11, &a1[v13], v14);
  (*(v15 + 56))(v11, 0, 1, v14);
  (*(v6 + 16))(v8, a1, v5);
  sub_242F05430();
  v16 = sub_242F05420();
  v17 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 2) = v16;
  *(v18 + 3) = v19;
  v20 = v27;
  *(v18 + 4) = v26;
  *(v18 + 5) = v20;
  (*(v6 + 32))(&v18[v17], v8, v5);
  v21 = sub_242E8C7B4(0, 0, v11, &unk_242F405F0, v18);
  v29 = v25;
  v30 = v24;
  v28 = v21;
  return sub_242F048C0();
}

uint64_t sub_242E5DB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_242F05430();
  v6[5] = sub_242F05420();
  v8 = sub_242F05410();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x2822009F8](sub_242E5DC2C, v8, v7);
}

uint64_t sub_242E5DC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = (v5 + *(type metadata accessor for TaskConditional(0, v4[3], v4[4], a4) + 48));
  v9 = (*v6 + **v6);
  v7 = swift_task_alloc();
  v4[8] = v7;
  *v7 = v4;
  v7[1] = sub_242E5DD2C;

  return v9();
}

uint64_t sub_242E5DD2C()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_242E60360, v3, v2);
}

uint64_t sub_242E5DE4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = sub_242E5CB70(0);
  *(a8 + 1) = v16;
  v18 = type metadata accessor for TaskConditional(0, a6, a7, v17);
  (*(*(a6 - 8) + 32))(&a8[v18[9]], a1, a6);
  v19 = v18[10];
  v20 = sub_242F05450();
  result = (*(*(v20 - 8) + 32))(&a8[v19], a2, v20);
  a8[v18[11]] = a3;
  v22 = &a8[v18[12]];
  *v22 = a4;
  *(v22 + 1) = a5;
  return result;
}

uint64_t EdgeInsets.hash(into:)(double a1, double a2, double a3, double a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x245D279D0](*&a1);
  if (a2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a2;
  }

  MEMORY[0x245D279D0](*&v7);
  if (a3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a3;
  }

  MEMORY[0x245D279D0](*&v8);
  if (a4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a4;
  }

  return MEMORY[0x245D279D0](*&v9);
}

uint64_t EdgeInsets.hashValue.getter(double a1, double a2, double a3, double a4)
{
  sub_242F06390();
  EdgeInsets.hash(into:)(a1, a2, a3, a4);
  return sub_242F063E0();
}

uint64_t sub_242E5E040()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_242F06390();
  EdgeInsets.hash(into:)(v1, v2, v3, v4);
  return sub_242F063E0();
}

uint64_t sub_242E5E0B4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  sub_242F06390();
  EdgeInsets.hash(into:)(v2, v3, v4, v5);
  return sub_242F063E0();
}

double UIEdgeInsets.init(_:layoutDirection:)(uint64_t a1, double a2)
{
  v4 = sub_242F03DF0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277CDFA90], v4, v6);
  sub_242F03DE0();
  v9 = *(v5 + 8);
  v9(a1, v4);
  v9(v8, v4);
  return a2;
}

uint64_t sub_242E5E274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_242F04E70();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_242E5E35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_242F04E70();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_242F056B0();
  result = sub_242F04E70();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_242E5E428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1);
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 16))(&v9 - v6, v5);
  MEMORY[0x245D25F50](a3);
  swift_setAtWritableKeyPath();
  return sub_242F04960();
}

uint64_t sub_242E5E584()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = *(sub_242F04980() - 8);
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0 + ((*(v5 + 80) + 64) & ~*(v5 + 80));

  return sub_242E5C3C0(v6, v7, v8, v1, v2, v3, v4);
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 40);
  v2 = (sub_242F04980() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(*v2 + 64);
  swift_unknownObjectRelease();

  (*(*(v1 - 8) + 8))(v0 + v4 + v2[10], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_242E5E724(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = *(sub_242F04980() - 8);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  return sub_242E5C484(a1, v8, v9, v10, v3, v4, v5, v6);
}

uint64_t sub_242E5E82C(uint64_t a1)
{
  v3 = v1[4];
  v4 = *(sub_242F04980() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1 + ((v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80));

  return sub_242E5C8E8(a1, v6, v7, v1 + v5, v8, v3);
}

uint64_t sub_242E5E924(uint64_t a1, void *a2)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_242E5EBF8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_242E5EC68(void *a1)
{
  swift_getAssociatedTypeWitness();
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_242E5ED54(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, AssociatedTypeWitness);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_242E5F030(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, AssociatedTypeWitness);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

void sub_242E5F398(uint64_t a1)
{
  sub_242E5F990(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_242F05450();
      if (v3 <= 0x3F)
      {
        sub_242E30C70();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_242E5F458(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_242F05450() - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  if (v7 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = v7;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  if (v14 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((((v11 + v12 + ((v10 + 16) & ~v10)) & ~v12) + v13) & 0xFFFFFFFFFFFFFFF8) + 24;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v14 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v14 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  v24 = (a1 + v10 + 16) & ~v10;
  if (v7 == v14)
  {
    v25 = *(v6 + 48);

    return v25(v24, v7, v5);
  }

  else
  {
    v26 = (v24 + v11 + v12) & ~v12;
    if (v9 == v14)
    {
      v27 = *(v8 + 48);

      return v27(v26);
    }

    else
    {
      v28 = *(((v26 + v13) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v28 >= 0xFFFFFFFF)
      {
        LODWORD(v28) = -1;
      }

      return (v28 + 1);
    }
  }
}

void sub_242E5F6CC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v29 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_242F05450() - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (v9 <= v11)
  {
    v16 = *(v10 + 84);
  }

  else
  {
    v16 = v9;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  v17 = ((((v13 + v14 + ((v12 + 16) & ~v12)) & ~v14) + v15) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v16 >= a3)
  {
    v20 = 0;
    v21 = a2 - v16;
    if (a2 <= v16)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((((v13 + v14 + ((v12 + 16) & ~v12)) & ~v14) + v15) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v18 = a3 - v16 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v16;
    if (a2 <= v16)
    {
LABEL_19:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      v24 = (a1 + v12 + 16) & ~v12;
      if (v9 == v16)
      {
        v25 = *(v29 + 56);

        v25(v24, a2, v9, v7);
      }

      else
      {
        v26 = (v24 + v13 + v14) & ~v14;
        if (v11 == v16)
        {
          v27 = *(v10 + 56);

          v27(v26, a2);
        }

        else
        {
          v28 = (v26 + v15) & 0xFFFFFFFFFFFFFFF8;
          if ((a2 & 0x80000000) != 0)
          {
            *(v28 + 8) = a2 & 0x7FFFFFFF;
            *(v28 + 16) = 0;
          }

          else
          {
            *(v28 + 8) = (a2 - 1);
          }
        }
      }

      return;
    }
  }

  if (((((v13 + v14 + ((v12 + 16) & ~v12)) & ~v14) + v15) & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v22 = v21;
  }

  else
  {
    v22 = 1;
  }

  if (((((v13 + v14 + ((v12 + 16) & ~v12)) & ~v14) + v15) & 0xFFFFFFF8) != 0xFFFFFFE8)
  {
    v23 = ~v16 + a2;
    bzero(a1, v17);
    *a1 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v17) = v22;
    }

    else
    {
      *(a1 + v17) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v17) = v22;
  }
}

void sub_242E5F990(uint64_t a1)
{
  if (!qword_27ECFA3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFA3C0, qword_242F40560);
    v1 = sub_242F048D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27ECFA3B8);
    }
  }
}

uint64_t sub_242E5FA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for TaskConditional(0, v5, v6, a4) - 8);
  v9 = (v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)));

  return sub_242E5D8C0(v9, v5, v6, v7);
}

uint64_t objectdestroy_34Tm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for TaskConditional(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*v6 + 64);

  (*(*(v5 - 8) + 8))(v4 + v8 + v6[11], v5);
  v10 = v6[12];
  v11 = sub_242F05450();
  (*(*(v11 - 8) + 8))(v4 + v8 + v10, v11);

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

uint64_t sub_242E5FC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for TaskConditional(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_242E5FCE8;

  return sub_242E5D34C(v4 + v9, v6, v7);
}

uint64_t sub_242E5FCE8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_242E5FDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[4];
  v8 = v4[5];
  v9 = *(type metadata accessor for TaskConditional(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = v4[2];
  v12 = v4[3];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_242E60348;

  return sub_242E5DB90(a1, v11, v12, v4 + v10, v7, v8);
}

uint64_t sub_242E5FEF0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[6];
  v5 = v1[8];
  v4 = v1[9];
  v6 = v1[10];
  sub_242F04980();
  type metadata accessor for IdentifiableIndices.Element(0, v3, v4, v6);
  return sub_242E5B7D0(v1[2], v3, a1, v5, v4, v6);
}

uint64_t objectdestroy_47Tm()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 6);
  v3 = *(v0 + 9);
  v4 = *(v0 + 10);
  v5 = (sub_242F04980() - 8);
  v6 = *(*v5 + 80);
  v7 = (v6 + 88) & ~v6;
  v8 = *(*v5 + 64);
  v9 = (type metadata accessor for IdentifiableIndices.Element(0, v2, v3, v4) - 8);
  v10 = *(*v9 + 80);
  v11 = (v7 + v8 + v10) & ~v10;
  v12 = *(*v9 + 64);
  v13 = v6 | v10;
  swift_unknownObjectRelease();

  (*(*(v2 - 8) + 8))(&v0[v7 + v5[10]], v2);
  (*(*(v1 - 8) + 8))(&v0[v11], v1);
  v14 = v9[13];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&v0[v11 + v14], AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v11 + v12, v13 | 7);
}

uint64_t sub_242E60220(uint64_t a1)
{
  v3 = v1[5];
  v14 = v1[4];
  v4 = v1[6];
  v5 = v1[7];
  v7 = v1[8];
  v6 = v1[9];
  v8 = v1[10];
  v9 = *(sub_242F04980() - 8);
  v10 = (*(v9 + 80) + 88) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for IdentifiableIndices.Element(0, v4, v6, v8) - 8);
  return sub_242E5B96C(a1, v1[2], v1[3], v1 + v10, v1 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80)), v14, v3, v4, v5, v7, v6, v8);
}

double sub_242E60364@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_242CE8370(), (v5 & 1) != 0))
  {
    v6 = (*(a1 + 56) + (v4 << 7));
    v7 = v6[3];
    v9 = *v6;
    v8 = v6[1];
    v20 = v6[2];
    v21 = v7;
    v18 = v9;
    v19 = v8;
    v11 = v6[5];
    v10 = v6[6];
    v12 = v6[4];
    *(v24 + 9) = *(v6 + 105);
    v23 = v11;
    v24[0] = v10;
    v22 = v12;
    memmove(a2, v6, 0x79uLL);
    nullsub_2();
    sub_242C7DAC0(&v18, &v17);
  }

  else
  {
    sub_242CE2D68(&v18);
    v14 = v23;
    a2[4] = v22;
    a2[5] = v14;
    a2[6] = v24[0];
    *(a2 + 105) = *(v24 + 9);
    v15 = v19;
    *a2 = v18;
    a2[1] = v15;
    result = *&v20;
    v16 = v21;
    a2[2] = v20;
    a2[3] = v16;
  }

  return result;
}

double sub_242E60430(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 80;
    while (1)
    {
      v4 = __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
      sub_242E62E08(v4, v5, v6);

      sub_242F05FA0();
      if (v9)
      {
        break;
      }

      v3 += 56;

      if (!--v2)
      {
        return result;
      }
    }
  }

  return result;
}

char *EditableTheme.layoutStyles()()
{
  v1 = *v0;
  KeyPath = swift_getKeyPath();
  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_242CDD828(*(v1 + 16), 0);
  v5 = sub_242CDFAF8(&v8, v4 + 4, v3, v1);
  v6 = v8;

  sub_242C6548C(v6);
  if (v5 != v3)
  {
    __break(1u);
LABEL_4:

    v4 = MEMORY[0x277D84F90];
  }

  v8 = v4;
  sub_242CE1B7C(&v8, KeyPath);

  return v8;
}

void EditableTheme.init()(void *a1@<X8>)
{
  v1 = MEMORY[0x277D84F98];
  *a1 = MEMORY[0x277D84FA0];
  a1[1] = v1;
}

double EditableTheme.addLayoutStyle(_:)@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v3;
  v8[2] = *(a1 + 32);
  v9 = *(a1 + 48);
  v4 = *v2;
  v5 = v2[1];
  *a2 = v4;
  a2[1] = v5;

  sub_242C8745C(v8, v7);
  sub_242CC0F70(v7, v8);

  return result;
}

double EditableTheme.addingLayoutStyle(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = *(a1 + 32);
  v5 = *(a1 + 48);
  sub_242C8745C(v4, v3);
  sub_242CC0F70(v3, v4);

  return result;
}

void EditableTheme.updatingLayoutStyle(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v3;
  v8[2] = *(a1 + 32);
  v9 = *(a1 + 48);
  sub_242C8745C(v8, v6);

  v5 = sub_242E6290C(v4, v8);
  sub_242CC50B0(v8);
  v7 = v5;
  sub_242C8745C(v8, v6);
  sub_242CC0F70(v6, v8);

  *v2 = v7;
}

double EditableTheme.layoutStyle(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a1 + *(type metadata accessor for Layout(0) + 28));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v9 = *v2;
    v8[0] = v6;
    v8[1] = v5;

    EditableTheme.subscript.getter(v8, a2);
  }

  else
  {
    *(a2 + 48) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

void EditableTheme.subscript.getter(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *v2;
  v7 = *(*v2 + 16);
  if (v7)
  {
    v21 = a1[1];
    v22 = v4;
    v8 = sub_242CDD828(v7, 0);
    v9 = sub_242CDFAF8(v23, v8 + 4, v7, v6);
    v10 = v23[0];

    a1 = sub_242C6548C(v10);
    if (v9 != v7)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v5 = v21;
    v4 = v22;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v23[0] = v4;
  v23[1] = v5;
  MEMORY[0x28223BE20](a1);
  v20[2] = v23;
  v11 = sub_242CDAD54(sub_242E62B98, v20, v8);
  if (v12)
  {

    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

  if (v11 >= v8[2])
  {
LABEL_13:
    __break(1u);
    return;
  }

  v13 = &v8[7 * v11];
  v14 = v13[5];
  v16 = v13[6];
  v15 = v13[7];
  v18 = v13[8];
  v17 = v13[9];
  v19 = v13[10];
  *a2 = v13[4];
  *(a2 + 8) = v14;
  *(a2 + 16) = v16;
  *(a2 + 24) = v15;
  *(a2 + 32) = v18;
  *(a2 + 40) = v17;
  *(a2 + 48) = v19;
}

char *EditableTheme.palettes(for:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = sub_242CE8370();
  if ((v4 & 1) == 0)
  {

    return 0;
  }

  v5 = *(*(v2 + 56) + 8 * v3);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = sub_242CDDB14(*(v5 + 16), 0);
    v8 = sub_242CE05C4(&v11, v7 + 32, v6, v5);
    v9 = v11;

    result = sub_242C6548C(v9);
    if (v8 == v6)
    {

      return v7;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

{
  v2 = *(v1 + 8);
  if (!*(a1 + *(type metadata accessor for Layout(0) + 28) + 8))
  {
    return 0;
  }

  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = sub_242CE8370();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(v2 + 56) + 8 * v3);
  v6 = *(v5 + 16);
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = sub_242CDDB14(*(v5 + 16), 0);
  v8 = sub_242CE05C4(&v11, v7 + 32, v6, v5);
  v9 = v11;

  result = sub_242C6548C(v9);
  if (v8 == v6)
  {
    return v7;
  }

  __break(1u);
  return result;
}

char *EditableTheme.palettes(for:)()
{
  v1 = *(v0 + 8);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_242CE8370();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(v1 + 56) + 8 * v2);
  v5 = *(v4 + 16);
  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_242CDDB14(*(v4 + 16), 0);
  v7 = sub_242CE05C4(&v10, v6 + 32, v5, v4);
  v8 = v10;

  result = sub_242C6548C(v8);
  if (v7 == v5)
  {
    return v6;
  }

  __break(1u);
  return result;
}

void EditableTheme.defaultPalette(for:)(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = type metadata accessor for Layout(0);
  v8 = (a1 + *(v7 + 28));
  v9 = v8[1];
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = *v8;
  v11 = *(v6 + 16);
  if (v11)
  {
    v24 = *v8;
    v25 = v9;
    v26 = v5;
    v12 = sub_242CDD828(v11, 0);
    v13 = sub_242CDFAF8(v27, v12 + 4, v11, v6);
    v14 = *&v27[0];

    v7 = sub_242C6548C(v14);
    if (v13 != v11)
    {
      __break(1u);
      goto LABEL_17;
    }

    v9 = v25;
    v5 = v26;
    v10 = v24;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  *&v27[0] = v10;
  *(&v27[0] + 1) = v9;
  MEMORY[0x28223BE20](v7);
  v23[2] = v27;
  v15 = sub_242CDAD54(sub_242E62E5C, v23, v12);
  if ((v16 & 1) == 0)
  {
    if ((v15 & 0x8000000000000000) == 0)
    {
      if (v15 < v12[2])
      {

        if (*(v5 + 16))
        {
          v17 = sub_242CE8370();
          if (v18)
          {
            v19 = *(*(v5 + 56) + 8 * v17);

            sub_242E60364(v19, a2);

            swift_bridgeObjectRelease_n();

            return;
          }
        }

        goto LABEL_14;
      }

LABEL_18:
      __break(1u);
      return;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_14:
  sub_242CE2D68(v27);
  v20 = v27[5];
  a2[4] = v27[4];
  a2[5] = v20;
  a2[6] = v28[0];
  *(a2 + 105) = *(v28 + 9);
  v21 = v27[1];
  *a2 = v27[0];
  a2[1] = v21;
  v22 = v27[3];
  a2[2] = v27[2];
  a2[3] = v22;
}