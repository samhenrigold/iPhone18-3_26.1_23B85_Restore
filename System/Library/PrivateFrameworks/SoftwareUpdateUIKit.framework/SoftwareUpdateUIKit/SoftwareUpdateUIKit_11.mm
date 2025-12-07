uint64_t sub_26B025F5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 16)))
      {
        v3 = *(a1 + 16);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26B026074(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_26B026254()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DEB40, &unk_26B090EB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC748, &qword_26B08A188);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEB50, &unk_26B090540);
  sub_26B025E3C();
  sub_26AE95974();
  sub_26AEFDA40();
  sub_26AF7DC04();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26B026374()
{

  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_26B0263F4()
{

  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_26B026538@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v18 = a2;
  v19 = a1;
  v22 = 0;
  v21 = 0;
  v10 = 0;
  v9 = type metadata accessor for ReleaseNotesSheetView(0);
  v8 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v20 = (&v7 - v8);
  v22 = &v7 - v8;
  v21 = v2;
  swift_getKeyPath();
  sub_26B078A30();

  *(v20 + *(v9 + 20)) = v19;
  sub_26B028AD4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB68, &qword_26B091048);
  v12 = sub_26B07A760();
  v11 = v3;
  *v3 = sub_26B028B38();
  sub_26AEA3B2C();
  v14 = v4;
  v16 = sub_26B07A050();

  v17 = [ObjCClassFromMetadata appearanceWhenContainedInInstancesOfClasses_];
  *&v5 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  [v17 setAdjustsFontSizeToFitWidth_];
  MEMORY[0x277D82BD8](v17);
  sub_26AF2DAE4(v20, v18);

  return sub_26AF2DA30(v20);
}

uint64_t type metadata accessor for ReleaseNotesSheetView(uint64_t a1)
{
  v2 = qword_2803DEBF0;
  if (!qword_2803DEBF0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void *sub_26B026770@<X0>(void *a1@<X8>)
{
  v5 = a1;
  v8 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB80, &qword_26B086048);
  v4 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v7 = (&v3 - v4);
  v8 = v1;
  sub_26AE9181C(v1, (&v3 - v4));
  sub_26B078A10();
  return sub_26AE918F0(v7);
}

void *sub_26B02686C(void *a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v4[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB80, &qword_26B086048) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v5 = (v4 - v4[0]);
  v8 = v2;
  v7 = v1;
  sub_26AE9181C(v2, (v4 - v4[0]));
  sub_26AE91A90(v5, v4[1]);
  return sub_26AE918F0(v6);
}

uint64_t sub_26B026924()
{
  v2 = *(v0 + *(type metadata accessor for ReleaseNotesSheetView(0) + 20));

  return v2;
}

uint64_t sub_26B026968(uint64_t a1)
{

  *(v1 + *(type metadata accessor for ReleaseNotesSheetView(0) + 20)) = a1;
}

uint64_t ReleaseNotesSheetView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v11 = MEMORY[0x277CDED18];
  v14 = MEMORY[0x277CDE8A0];
  v16 = MEMORY[0x277CDE130];
  v20 = MEMORY[0x277CDEEF8];
  v24 = sub_26B028B9C;
  v49 = 0;
  v48 = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB88, &qword_26B091050);
  v25 = *(v31 - 8);
  v26 = v31 - 8;
  v8 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v31);
  v29 = &v8 - v8;
  v9 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v8 - v8);
  v30 = &v8 - v9;
  v49 = &v8 - v9;
  v48 = v1;
  v22 = &v34;
  v35 = v1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB90, &qword_26B091058);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEB98, &qword_26B091060);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEBA0, &qword_26B091068);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEBA8, &qword_26B091070);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEBB0, &qword_26B091078);
  v3 = sub_26B028BA4();
  v46 = v10;
  v47 = v3;
  v21 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v4 = sub_26AE95974();
  v42 = v12;
  v43 = MEMORY[0x277D837D0];
  v44 = OpaqueTypeConformance2;
  v45 = v4;
  v19 = swift_getOpaqueTypeConformance2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEBD0, &qword_26B091088);
  v5 = sub_26B028CE0();
  v40 = v15;
  v41 = v5;
  v6 = swift_getOpaqueTypeConformance2();
  v36 = v17;
  v37 = v18;
  v38 = v19;
  v39 = v6;
  swift_getOpaqueTypeConformance2();
  sub_26B078BB0();
  v28 = sub_26B028D68();
  sub_26AE9463C(v29, v31, v30);
  v33 = *(v25 + 8);
  v32 = v25 + 8;
  v33(v29, v31);
  (*(v25 + 16))(v29, v30, v31);
  sub_26AE94B4C(v29, v31, v27);
  v33(v29, v31);
  return (v33)(v30, v31);
}

uint64_t sub_26B026DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v39 = a1;
  v18 = sub_26B029178;
  v34 = MEMORY[0x277CDED18];
  v44 = MEMORY[0x277CDE8A0];
  v46 = MEMORY[0x277CDE130];
  v48 = sub_26B029264;
  v56 = MEMORY[0x277CDEEF8];
  v75 = 0;
  v74 = 0;
  v29 = 0;
  v9 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v31 = &v9 - v9;
  v10 = (*(*(sub_26B079DE0() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29);
  v28 = &v9 - v10;
  v25 = sub_26B078D60();
  v22 = *(v25 - 8);
  v23 = v25 - 8;
  v11 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v24 = &v9 - v11;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEBA8, &qword_26B091070);
  v36 = *(v40 - 8);
  v37 = v40 - 8;
  v12 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v40);
  v38 = &v9 - v12;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB98, &qword_26B091060);
  v49 = *(v52 - 8);
  v50 = v52 - 8;
  v13 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v52);
  v51 = &v9 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB90, &qword_26B091058);
  v58 = *(v64 - 8);
  v59 = v64 - 8;
  v14 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39);
  v62 = &v9 - v14;
  v15 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v63 = &v9 - v15;
  v75 = &v9 - v15;
  v74 = v4;
  v16 = v68;
  v68[2] = v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEBC8, &qword_26B091080);
  sub_26B028C3C();
  v19 = &v73;
  sub_26B079800();
  v20 = __dst;
  v21 = 58;
  memcpy(__dst, v19, 0x3AuLL);
  v26 = v72;
  memcpy(v72, __dst, 0x3AuLL);
  (*(v22 + 104))(v24, *MEMORY[0x277CDDDC0], v25);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEBB0, &qword_26B091078);
  v33 = sub_26B028BA4();
  sub_26B0795A0();
  (*(v22 + 8))(v24, v25);
  sub_26B029180(v26);
  v27 = 1;
  sub_26B079D00("About this update", 17, 1);
  sub_26B079D80();
  v30 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v30);
  sub_26AEFB5C4();
  v69[2] = 0;
  v69[3] = 0;
  v70 = 0;
  v71 = v27 & 1;
  v5 = sub_26B079E40();
  v35 = v69;
  v69[0] = v5;
  v69[1] = v6;
  v68[13] = v32;
  v68[14] = v33;
  v57 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = sub_26AE95974();
  v41 = MEMORY[0x277D837D0];
  sub_26B0794F0();
  sub_26AE9BCC0(v35);
  (*(v36 + 8))(v38, v40);
  v47 = v67;
  v67[2] = v39;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEBA0, &qword_26B091068);
  v68[9] = v40;
  v68[10] = v41;
  v68[11] = OpaqueTypeConformance2;
  v68[12] = v43;
  v54 = swift_getOpaqueTypeConformance2();
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEBD0, &qword_26B091088);
  v7 = sub_26B028CE0();
  v68[7] = v45;
  v68[8] = v7;
  v55 = swift_getOpaqueTypeConformance2();
  sub_26B079690();
  (*(v49 + 8))(v51, v52);
  v68[3] = v52;
  v68[4] = v53;
  v68[5] = v54;
  v68[6] = v55;
  v61 = swift_getOpaqueTypeConformance2();
  sub_26AE9463C(v62, v64, v63);
  v66 = *(v58 + 8);
  v65 = v58 + 8;
  v66(v62, v64);
  (*(v58 + 16))(v62, v63, v64);
  sub_26AE94B4C(v62, v64, v60);
  v66(v62, v64);
  return (v66)(v63, v64);
}

uint64_t sub_26B027560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, 0x3AuLL);
  v69 = 0u;
  v70 = 0u;
  v57 = 0u;
  v58 = 0u;
  v41 = 0;
  v42 = 0;
  memset(v40, 0, 0x39uLL);
  memset(v37, 0, 0x39uLL);
  v74 = a1;
  type metadata accessor for ReleaseNotesSheetView(0);

  KeyPath = swift_getKeyPath();
  ReactiveDescriptor.subscript.getter(KeyPath, &v72);
  v31 = v72;

  if (v31)
  {
    swift_getObjectType();
    v2 = [v31 releaseNotes];
    v25 = v2;
    if (v2)
    {
      v21 = sub_26B0781D0();
      v22 = v3;
      MEMORY[0x277D82BD8](v25);
      v23 = v21;
      v24 = v22;
    }

    else
    {
      v23 = 0;
      v24 = 0xF000000000000000;
    }

    swift_unknownObjectRelease();

    v26 = v23;
    v27 = v24;
  }

  else
  {

    v26 = 0;
    v27 = 0xF000000000000000;
  }

  if ((v27 & 0xF000000000000000) == 0xF000000000000000)
  {
    HIBYTE(v17) = 1;
    sub_26B079D00("No release notes available.", 27, 1);
    sub_26B078E10();
    v4 = sub_26B02D0D0();
    MEMORY[0x277D82BE0](*v4);
    v66 = 0;
    v67 = 0;
    v68 = v17 & 0x100;
    v62 = sub_26B0792C0();
    v63 = v5;
    v64 = v6;
    v65 = v7;
    v59[0] = v62;
    v59[1] = v5;
    v60 = v6 & 1;
    v61 = v7;
    v19 = MEMORY[0x277CE0BD8];
    v20 = MEMORY[0x277CE0BC8];
    sub_26AE9463C(v59, MEMORY[0x277CE0BD8], &v69);
    sub_26AE95B40(v59);
    v12 = v69;
    v13 = v70;
    v14 = *(&v70 + 1);
    sub_26AE95D28(v69, *(&v69 + 1), v70 & 1);
    sub_26B078640();
    v54 = v12;
    v55 = v13 & 1;
    v56 = v14;
    sub_26AE94B4C(&v54, v19, &v57);
    sub_26AE95B40(&v54);
    v15 = v57;
    v16 = v58;
    v18 = *(&v58 + 1);
    sub_26AE95D28(v57, *(&v57 + 1), v58 & 1);
    sub_26B078640();
    v50 = v15;
    v51 = v16 & 1;
    v52 = v18;
    v8 = sub_26AE957D8();
    sub_26AE94CA8(&v50, &type metadata for UpdateRemoteContentView, v19, v8, v20, v53);
    sub_26AE95B40(&v50);
    memcpy(__dst, v53, sizeof(__dst));
    memcpy(__b, __dst, 0x3AuLL);
    sub_26AE95B40(&v57);
    sub_26AE95B40(&v69);
  }

  else
  {
    v41 = v26;
    v42 = v27;
    sub_26AE961DC(v26, v27);
    UpdateRemoteContentView.init(data:)(v26, v27, v39);
    memcpy(v43, v39, sizeof(v43));
    memcpy(v38, v43, 0x39uLL);
    v11 = sub_26AE957D8();
    sub_26AE9463C(v38, &type metadata for UpdateRemoteContentView, v40);
    sub_26AE96494(v38);
    memcpy(v44, v40, 0x39uLL);
    sub_26AEBBFD0(v44, v36);
    memcpy(v35, v44, 0x39uLL);
    sub_26AE94B4C(v35, &type metadata for UpdateRemoteContentView, v37);
    sub_26AE96494(v35);
    memcpy(v45, v37, 0x39uLL);
    sub_26AEBBFD0(v45, v33);
    memcpy(v32, v45, 0x39uLL);
    sub_26AE94BB0(v32, &type metadata for UpdateRemoteContentView, MEMORY[0x277CE0BD8], v11, MEMORY[0x277CE0BC8], v34);
    sub_26AE96494(v32);
    memcpy(v46, v34, sizeof(v46));
    memcpy(__b, v46, 0x3AuLL);
    sub_26AE96494(v37);
    sub_26AE96494(v40);
    sub_26AE96418(v26, v27);
  }

  memcpy(v49, __b, 0x3AuLL);
  sub_26B029668(v49, v48);
  memcpy(v47, v49, 0x3AuLL);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEBC8, &qword_26B091080);
  sub_26B028C3C();
  sub_26AE94B4C(v47, v10, a2);
  sub_26B0297C0(v47);
  return sub_26B0297C0(__b);
}

uint64_t sub_26B027BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v8 = a1;
  v12 = sub_26B02926C;
  v28 = 0;
  v27 = 0;
  v2 = sub_26B078FA0();
  v7 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v11 = &v7 - v7;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEBD0, &qword_26B091088);
  v16 = *(v22 - 8);
  v17 = v22 - 8;
  v9 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v20 = &v7 - v9;
  v10 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v21 = &v7 - v10;
  v28 = &v7 - v10;
  v27 = v5;
  v13 = &v25;
  v26 = v5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEC00, &qword_26B091170);
  v15 = sub_26B029274();
  sub_26B028A34();
  sub_26B078C30();
  v19 = sub_26B028CE0();
  sub_26B0264D4(v20, v22, v21);
  v24 = *(v16 + 8);
  v23 = v16 + 8;
  v24(v20, v22);
  (*(v16 + 16))(v20, v21, v22);
  MEMORY[0x26D66C1B0](v20, v22, v19);
  v24(v20, v22);
  return (v24)(v21, v22);
}

uint64_t sub_26B027E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v12 = a1;
  v25 = 0;
  v22 = MEMORY[0x277CDE608];
  v27 = sub_26B02953C;
  v24 = sub_26B028648;
  v42 = 0;
  v41 = 0;
  v2 = type metadata accessor for ReleaseNotesSheetView(0);
  v10 = *(v2 - 8);
  v15 = v10;
  v16 = *(v10 + 64);
  v11 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v18 = &v9 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEC00, &qword_26B091170);
  v28 = *(v34 - 8);
  v29 = v34 - 8;
  v13 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v32 = &v9 - v13;
  v14 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v33 = &v9 - v14;
  v42 = &v9 - v14;
  v41 = v5;
  sub_26AF2DAE4(v5, v6);
  v17 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v23 = swift_allocObject();
  sub_26B029448(v18, (v23 + v17));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DEC10, qword_26B091178);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DBFC8, &unk_26B088180);
  v20 = sub_26B078DC0();
  v21 = sub_26AEB3370();
  v7 = sub_26B0295A0();
  v37 = v19;
  v38 = v20;
  v39 = v21;
  v40 = v7;
  swift_getOpaqueTypeConformance2();
  sub_26B079900();
  v31 = sub_26B029274();
  sub_26AE9463C(v32, v34, v33);
  v36 = *(v28 + 8);
  v35 = v28 + 8;
  v36(v32, v34);
  (*(v28 + 16))(v32, v33, v34);
  sub_26AE94B4C(v32, v34, v30);
  v36(v32, v34);
  return (v36)(v33, v34);
}

uint64_t sub_26B0281FC(uint64_t a1)
{
  v28 = a1;
  v35 = 0;
  v43 = 0;
  v23 = 0;
  v24 = sub_26B078AD0();
  v25 = *(v24 - 8);
  v26 = v25;
  MEMORY[0x28223BE20](0);
  v27 = (&v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_26B078580();
  v30 = *(v29 - 8);
  v31 = v30;
  MEMORY[0x28223BE20](v28);
  v32 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v3;
  sub_26B078550();
  v37 = sub_26B078570();
  v33 = v37;
  v36 = sub_26B07A2A0();
  v34 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v38 = sub_26B07A760();
  if (os_log_type_enabled(v37, v36))
  {
    v4 = v23;
    v14 = sub_26B07A420();
    v10 = v14;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v12 = 0;
    v15 = sub_26AEA3B70(0, v11, v11);
    v13 = v15;
    v16 = sub_26AEA3B70(v12, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v42 = v14;
    v41 = v15;
    v40 = v16;
    v17 = 0;
    v18 = &v42;
    sub_26AEA3BC4(0, &v42);
    sub_26AEA3BC4(v17, v18);
    v39 = v38;
    v19 = &v7;
    MEMORY[0x28223BE20](&v7);
    v20 = &v7 - 6;
    *(&v7 - 4) = v5;
    *(&v7 - 3) = &v41;
    *(&v7 - 2) = &v40;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10, &qword_26B088A50);
    sub_26AE9CC18();
    sub_26B079FF0();
    v22 = v4;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v33, v34, "User Action: Clicked 'Done' on the ReleaseNotesSheetView", v10, 2u);
      v8 = 0;
      sub_26AEA3C24(v13, 0, v11);
      sub_26AEA3C24(v16, v8, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();

      v9 = v22;
    }
  }

  else
  {

    v9 = v23;
  }

  (*(v31 + 8))(v32, v29);
  sub_26B026770(v27);
  sub_26B078AC0();
  return (*(v26 + 8))(v27, v24);
}

uint64_t sub_26B028648@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v27 = MEMORY[0x277CDE608];
  v41 = 0;
  v24 = sub_26B078DC0();
  v17 = *(v24 - 8);
  v18 = v24 - 8;
  v8 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24);
  v19 = &v7 - v8;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v9 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23);
  v22 = &v7 - v9;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DEC10, qword_26B091178);
  v28 = *(v34 - 8);
  v29 = v34 - 8;
  v10 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34);
  v32 = &v7 - v10;
  v11 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](&v7 - v10);
  v33 = &v7 - v11;
  v41 = &v7 - v11;
  v12 = 1;
  sub_26B079D00("Done", 4, 1, v2);
  v15 = sub_26B078E10();
  v16 = v3;
  v13 = v4;
  v14 = v5;
  sub_26B079D00("xmark", 5, v12 & 1);
  sub_26B079880();
  sub_26B028A1C();
  v25 = sub_26AEB3370();
  v26 = sub_26B0295A0();
  sub_26B0793E0();
  (*(v17 + 8))(v19, v24);
  (*(v20 + 8))(v22, v23);
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26AE9463C(v32, v34, v33);
  v36 = *(v28 + 8);
  v35 = v28 + 8;
  v36(v32, v34);
  (*(v28 + 16))(v32, v33, v34);
  sub_26AE94B4C(v32, v34, v30);
  v36(v32, v34);
  return (v36)(v33, v34);
}

unint64_t sub_26B028AD4()
{
  v2 = qword_2803DEB60;
  if (!qword_2803DEB60)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DEB60);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_26B028B38()
{
  v2 = qword_2803DEB70;
  if (!qword_2803DEB70)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DEB70);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_26B028BA4()
{
  v2 = qword_2803DEBB8;
  if (!qword_2803DEBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEBB0, &qword_26B091078);
    sub_26B028C3C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEBB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B028C3C()
{
  v2 = qword_2803DEBC0;
  if (!qword_2803DEBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEBC8, &qword_26B091080);
    sub_26AE957D8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEBC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B028CE0()
{
  v2 = qword_2803DEBD8;
  if (!qword_2803DEBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEBD0, &qword_26B091088);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEBD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B028D68()
{
  v2 = qword_2803DEBE0;
  if (!qword_2803DEBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEB88, &qword_26B091050);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEBE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B028E4C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB80, &qword_26B086048);
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 20)) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 20));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_26B028F98(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB80, &qword_26B086048);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_26B029094(uint64_t a1)
{
  v4 = sub_26AE96BE8(319);
  if (v1 <= 0x3F)
  {
    v4 = type metadata accessor for ReactiveDescriptor(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

uint64_t sub_26B0291D8(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a9)
  {
    sub_26AE95AFC(a1, a2, a3 & 1);
  }

  else
  {
    sub_26AE963D0(a1, a2, a3 & 1);
    return sub_26AED4828(a6, a7);
  }
}

unint64_t sub_26B029274()
{
  v2 = qword_2803DEC08;
  if (!qword_2803DEC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEC00, &qword_26B091170);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEC08);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B0292FC()
{
  v0 = *(*(type metadata accessor for ReleaseNotesSheetView(0) - 8) + 80);
  v4 = (v0 + 16) & ~v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB520, &unk_26B086050);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078AD0();
    (*(*(v1 - 8) + 8))(v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

char *sub_26B029448(char *a1, char *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB520, &unk_26B086050);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B078AD0();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v7 - 8) + 64));
  }

  v3 = type metadata accessor for ReleaseNotesSheetView(0);
  result = a2;
  *&a2[*(v3 + 20)] = *&a1[*(v3 + 20)];
  return result;
}

uint64_t sub_26B02953C()
{
  v1 = *(type metadata accessor for ReleaseNotesSheetView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26B0281FC(v2);
}

unint64_t sub_26B0295A0()
{
  v2 = qword_2803DEC28;
  if (!qword_2803DEC28)
  {
    sub_26B078DC0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEC28);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B029668(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = *(a1 + 56);
  v11 = *(a1 + 57);
  sub_26B029734(*a1, v4, v5, v6, v7, v8, v9, v10, v11);
  result = a2;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 57) = v11 & 1;
  return result;
}

double sub_26B029734(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a9)
  {
    sub_26AE95D28(a1, a2, a3 & 1);
    sub_26B078640();
  }

  else
  {
    sub_26AE96194(a1, a2, a3 & 1);
    sub_26AEC1EF4(a6, a7);
  }

  return result;
}

void View.analyticsForNavigation(_:)(uint64_t a1, uint64_t a2)
{
  sub_26B029AF4();
  MEMORY[0x26D66C890]();
  sub_26B029B38();
}

void View.analyticsForButtonTap(_:)(uint64_t a1, uint64_t a2)
{
  sub_26B029930();
  MEMORY[0x26D66C890]();
  sub_26B029B70();
}

void View.analyticsForToggle(onType:offType:isOn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v23 = a6;
  v21 = a1;
  v20 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v16 = v7;

  sub_26B029A68(a1, a2, a3, a4, a5 & 1, v22);
  memcpy(__dst, v22, 0x31uLL);
  MEMORY[0x26D66C890](__dst, a6, &unk_287B9C7C0, a7);
  sub_26B029BA8();
}

uint64_t sub_26B029A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  swift_getKeyPath();
  sub_26B078A30();
  result = a1;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = v13;
  *(a6 + 48) = v14 & 1;
  return result;
}

void sub_26B029BA8()
{

  sub_26AF072D8();
}

uint64_t sub_26B029BF8(uint64_t a1, uint64_t a2, char a3)
{
  sub_26AF07734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DC9C0, &unk_26B08D610);
  sub_26B078A10();
  sub_26AF072D8();
  return v4;
}

uint64_t sub_26B029CC0(uint64_t a1, char a2)
{
  sub_26AF07734();
  *(v2 + 8) = a1;
  *(v2 + 16) = a2 & 1;
  sub_26AF072D8();
  return sub_26AF072D8();
}

uint64_t sub_26B029D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v47 = a5;
  v31 = a1;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v28 = sub_26B02A3A0;
  v30 = sub_26B02A41C;
  v44 = MEMORY[0x277CE0DA0];
  v62 = 0;
  v61 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v36 = sub_26B0789D0();
  v33 = *(v36 - 8);
  v34 = v36 - 8;
  v19 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36);
  v35 = &v18 - v19;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEC30, &qword_26B0911B8);
  v37 = *(v41 - 8);
  v38 = v41 - 8;
  v20 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41);
  v39 = &v18 - v20;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEC38, &qword_26B0911C0);
  v45 = *(v51 - 8);
  v46 = v51 - 8;
  v21 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v31);
  v49 = &v18 - v21;
  v22 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v50 = &v18 - v22;
  v62 = &v18 - v22;
  v61 = v7;
  v58 = v8;
  v59 = v9;
  v26 = 1;
  v60 = v10 & 1;
  sub_26B02A258();
  sub_26B0789C0();
  sub_26AF07734();
  v27 = 7;
  v11 = swift_allocObject();
  v12 = v24;
  v13 = v25;
  v14 = v26;
  v29 = v11;
  *(v11 + 16) = v23;
  *(v11 + 24) = v12;
  *(v11 + 32) = v13 & 1 & v14;
  v15 = swift_allocObject();
  v16 = v29;
  v32 = v15;
  *(v15 + 16) = v28;
  *(v15 + 24) = v16;
  sub_26B079A70();

  (*(v33 + 8))(v35, v36);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEC40, &unk_26B0911C8);
  v42 = sub_26B02A450();
  v43 = sub_26B02A4D8();
  sub_26B02A428(v40, v41);
  sub_26B079530();
  (*(v37 + 8))(v39, v41);
  v54 = v40;
  v55 = v41;
  v56 = v42;
  v57 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26AE9463C(v49, v51, v50);
  v53 = *(v45 + 8);
  v52 = v45 + 8;
  v53(v49, v51);
  (*(v45 + 16))(v49, v50, v51);
  sub_26AE94B4C(v49, v51, v47);
  v53(v49, v51);
  return (v53)(v50, v51);
}

uint64_t sub_26B02A264(uint64_t a1, uint64_t a2, char a3)
{
  sub_26AF07734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DC9C0, &unk_26B08D610);
  sub_26B078A10();
  result = sub_26AF072D8();
  if (v5)
  {
    ReactiveAnalyticsReporter.submitButtonTap(_:)(a1);
  }

  return result;
}

unint64_t sub_26B02A450()
{
  v2 = qword_2803DEC48;
  if (!qword_2803DEC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEC40, &unk_26B0911C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEC48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B02A4D8()
{
  v2 = qword_2803DEC50;
  if (!qword_2803DEC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEC30, &qword_26B0911B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEC50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B02A5E4()
{
  v8 = v0;
  v9 = *(v0 + 16);
  v10 = *(v0 + 32);
  sub_26B02A67C(&v9, v7);
  v5 = v9;
  v6 = v10;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCEB0, &unk_26B088A20);
  MEMORY[0x26D66CBA0](&v4, v1);
  v3 = v4;
  sub_26AED3530(&v9);
  return v3 & 1;
}

uint64_t sub_26B02A67C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *a2 = v3;
  v5 = a1[1];

  result = a2;
  *(a2 + 8) = v5;
  *(a2 + 16) = *(a1 + 16);
  return result;
}

void *sub_26B02A6E0(char a1)
{
  v8 = a1 & 1;
  v7 = v1;
  v9 = *(v1 + 16);
  v10 = *(v1 + 32);
  sub_26B02A67C(&v9, v6);
  sub_26B02A67C(&v9, v5);
  v3 = v9;
  v4 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCEB0, &unk_26B088A20);
  sub_26B0799D0();
  sub_26AED3530(&v3);
  result = &v9;
  sub_26AED3530(&v9);
  return result;
}

uint64_t sub_26B02A7A8()
{
  v4 = v0;
  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  sub_26B02A67C(&v5, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCEB0, &unk_26B088A20);
  sub_26B0799E0();
  sub_26AED3530(&v5);
  return v2;
}

uint64_t sub_26B02A858()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_26B02A8A8(uint64_t a1, uint64_t a2, char a3)
{

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
}

uint64_t sub_26B02A91C()
{
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_26B02A9A4(&v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DC9C0, &unk_26B08D610);
  sub_26B078A10();
  sub_26B02A9FC();
  return v2;
}

uint64_t sub_26B02A9A4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  sub_26AF07734();
  result = a2;
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_26B02AA34()
{
  v2 = *(v0 + 40);
  sub_26AF07734();
  return v2;
}

uint64_t sub_26B02AA74(uint64_t a1, char a2)
{
  sub_26AF07734();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2 & 1;
  sub_26AF072D8();
  return sub_26AF072D8();
}

uint64_t sub_26B02AAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v11 = a1;
  v13 = sub_26B02B010;
  v20 = MEMORY[0x277CE0E30];
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEC58, &qword_26B0911D8);
  v21 = *(v27 - 8);
  v22 = v27 - 8;
  v9 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v25 = &v8 - v9;
  v10 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v26 = &v8 - v10;
  v38 = &v8 - v10;
  v37 = v5;
  v36 = v2;
  v6 = sub_26B02A5E4();
  v14 = &v35;
  v35 = v6 & 1;
  sub_26B02AF10(v12, v34);
  v15 = swift_allocObject();
  memcpy((v15 + 16), v12, 0x31uLL);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEC60, &qword_26B0911E0);
  v18 = sub_26B02B018();
  v17 = MEMORY[0x277D839B0];
  v19 = MEMORY[0x277D839C8];
  sub_26AEC69E0();
  sub_26B0796D0();

  v30 = v16;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26AE9463C(v25, v27, v26);
  v29 = *(v21 + 8);
  v28 = v21 + 8;
  v29(v25, v27);
  (*(v21 + 16))(v25, v26, v27);
  sub_26AE94B4C(v25, v27, v23);
  v29(v25, v27);
  return (v29)(v26, v27);
}

void sub_26B02AE04(_BYTE *a1, char *a2, uint64_t a3)
{
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v9 = *a1 & 1;
  v4 = *a2;
  v8 = *a2 & 1;
  v7 = a3;
  v10 = *(a3 + 40);
  v11 = *(a3 + 48);
  sub_26B02A9A4(&v10, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DC9C0, &unk_26B08D610);
  sub_26B078A10();
  sub_26B02A9FC();
  if (v5)
  {
    ReactiveAnalyticsReporter.submitSwitchToggle(onType:offType:isOn:)(*a3, *(a3 + 8), v4 & 1);
  }
}

uint64_t sub_26B02AF10(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  v3 = *(a1 + 16);

  *(a2 + 16) = v3;
  v4 = *(a1 + 24);

  *(a2 + 24) = v4;
  *(a2 + 32) = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  sub_26AF07734();
  result = a2;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7 & 1;
  return result;
}

uint64_t sub_26B02AFB8()
{

  sub_26AF072D8();
  return swift_deallocObject();
}

unint64_t sub_26B02B018()
{
  v2 = qword_2803DEC68;
  if (!qword_2803DEC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEC60, &qword_26B0911E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEC68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B02B140(uint64_t a1, uint64_t a2, char a3)
{
  sub_26AF07734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DC9C0, &unk_26B08D610);
  sub_26B078A10();
  sub_26AF072D8();
  return v4;
}

uint64_t sub_26B02B208(uint64_t a1, char a2)
{
  sub_26AF07734();
  *(v2 + 8) = a1;
  *(v2 + 16) = a2 & 1;
  sub_26AF072D8();
  return sub_26AF072D8();
}

uint64_t sub_26B02B26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v25 = a5;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v23 = sub_26B02B5BC;
  v34 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEC70, &qword_26B0911E8);
  v16 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v28 = &v16 - v16;
  v17 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v29 = &v16 - v17;
  v34 = &v16 - v17;
  v33 = a1;
  v30 = v8;
  v31 = v9;
  v21 = 1;
  v32 = v10 & 1;
  sub_26AF07734();
  v11 = swift_allocObject();
  v12 = v19;
  v13 = v20;
  v14 = v21;
  *(v11 + 16) = v18;
  *(v11 + 24) = v12;
  *(v11 + 32) = v13 & 1 & v14;
  v24 = v11;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEC78, &qword_26B0911F0);
  sub_26B02B5D0();
  sub_26B0796C0();
  sub_26AEB3258(v23, v24);
  v27 = sub_26B02B658();
  sub_26AE9463C(v28, v26, v29);
  sub_26B02B6FC(v28);
  sub_26B02B7DC(v29, v28);
  sub_26AE94B4C(v28, v26, v25);
  sub_26B02B6FC(v28);
  return sub_26B02B6FC(v29);
}

uint64_t sub_26B02B480(uint64_t a1, uint64_t a2, char a3)
{
  sub_26AF07734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DC9C0, &unk_26B08D610);
  sub_26B078A10();
  result = sub_26AF072D8();
  if (v5)
  {
    ReactiveAnalyticsReporter.submitNavigation(_:)(a1);
  }

  return result;
}

unint64_t sub_26B02B5D0()
{
  v2 = qword_2803DEC80;
  if (!qword_2803DEC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEC78, &qword_26B0911F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEC80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B02B658()
{
  v2 = qword_2803DEC88;
  if (!qword_2803DEC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEC70, &qword_26B0911E8);
    sub_26B02B5D0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEC88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B02B6FC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEC78, &qword_26B0911F0);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEC70, &qword_26B0911E8) + 36);
  if (*(a1 + v4))
  {
  }

  if (*(a1 + v4 + 16))
  {
  }

  return a1;
}

uint64_t sub_26B02B7DC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEC78, &qword_26B0911F0);
  (*(*(v2 - 8) + 16))(a2, a1);
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEC70, &qword_26B0911E8) + 36);
  if (*(a1 + v13))
  {
    v9 = *(a1 + v13);
    v10 = *(a1 + v13 + 8);

    v3 = (a2 + v13);
    *v3 = v9;
    v3[1] = v10;
  }

  else
  {
    *(a2 + v13) = *(a1 + v13);
  }

  v7 = a2 + v13;
  v8 = a1 + v13;
  if (*(a1 + v13 + 16))
  {
    v5 = *(v8 + 16);
    v6 = *(a1 + v13 + 24);

    *(v7 + 16) = v5;
    *(a2 + v13 + 24) = v6;
  }

  else
  {
    *(v7 + 16) = *(v8 + 16);
  }

  return a2;
}

uint64_t sub_26B02B9DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v2 = *(a1 + 16) ^ 0xFF;
      if (v2 >= 0xFE)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26B02BAD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 17);
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    *(result + 16) = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_26B02BCD0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 24)))
      {
        v3 = *(a1 + 24);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26B02BDE8(uint64_t result, int a2, int a3)
{
  v3 = (result + 49);
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 48) = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 24) = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_26B02BFC0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v2 = *(a1 + 16) ^ 0xFF;
      if (v2 >= 0xFE)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26B02C0B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 17);
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    *(result + 16) = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_26B02C284()
{
  sub_26B078BF0();
  sub_26AF2C5CC();
  return swift_getWitnessTable();
}

uint64_t sub_26B02C304()
{
  sub_26B078BF0();
  sub_26B02C384();
  return swift_getWitnessTable();
}

unint64_t sub_26B02C384()
{
  v2 = qword_2803DEC90;
  if (!qword_2803DEC90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEC90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B02C400()
{
  sub_26B078BF0();
  sub_26AF1B358();
  return swift_getWitnessTable();
}

uint64_t sub_26B02C480()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEC40, &unk_26B0911C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEC30, &qword_26B0911B8);
  sub_26B02A450();
  sub_26B02A4D8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26B02C520()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEC60, &qword_26B0911E0);
  sub_26B02B018();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26B02C68C()
{
  v0 = sub_26B078480();
  __swift_allocate_value_buffer(v0, qword_2803DEC98);
  __swift_project_value_buffer(v0, qword_2803DEC98);
  sub_26B07A760();
  sub_26AF0358C();
  return sub_26B07A4C0();
}

uint64_t sub_26B02C710()
{
  if (qword_2803DB4B8 != -1)
  {
    swift_once();
  }

  v0 = sub_26B078480();
  return __swift_project_value_buffer(v0, qword_2803DEC98);
}

uint64_t sub_26B02C77C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26B02C710();
  v1 = sub_26B078480();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

unint64_t sub_26B02C844()
{
  v2 = qword_2803DECB0;
  if (!qword_2803DECB0)
  {
    sub_26B078480();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DECB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B02C910()
{
  v2 = qword_2803DECB8;
  if (!qword_2803DECB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DECB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B02C98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4[1] = 0;
  v12 = sub_26B078480();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v11 = v4 - v5;
  v15 = sub_26B078D30();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v15);
  v16 = v4 - v7;
  (*(v13 + 16))(v4 - v7, v2);
  EnvironmentValues.capabilities.getter();
  (*(v8 + 32))(v10, v11, v12);
  return (*(v13 + 8))(v16, v15);
}

uint64_t sub_26B02CB1C(uint64_t a1)
{
  v4 = a1;
  v1 = sub_26B078480();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v1);
  v7 = &v4 - v5;
  (*(v6 + 16))(v2);
  return EnvironmentValues.capabilities.setter(v7);
}

uint64_t EnvironmentValues.capabilities.setter(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v9 = sub_26B078480();
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v9);
  v5[1] = v5 - v5[0];
  v11 = v3;
  v10 = v1;
  (*(v6 + 16))(v2);
  sub_26B02C910();
  sub_26B078D50();
  return (*(v6 + 8))(v8, v9);
}

uint64_t (*EnvironmentValues.capabilities.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 15753);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_26B078480();
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 15753);
  v6[4] = __swift_coroFrameAllocStub(v5, 15753);
  EnvironmentValues.capabilities.getter();
  return sub_26B02CE00;
}

void sub_26B02CE00(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    EnvironmentValues.capabilities.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    EnvironmentValues.capabilities.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t View.capabilities(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_26B079430();
}

uint64_t sub_26B02CFB4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DECC0, &qword_26B091A40);
  sub_26B078BF0();
  sub_26B02D048();
  return swift_getWitnessTable();
}

unint64_t sub_26B02D048()
{
  v2 = qword_2803DECC8;
  if (!qword_2803DECC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DECC0, &qword_26B091A40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DECC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_26B02D0D0()
{
  if (qword_2803DB4D8 != -1)
  {
    swift_once();
  }

  return &qword_2803DED00;
}

uint64_t SUUIStatefulError.heading(_:download:)(uint64_t a1, uint64_t a2, double a3)
{
  v111 = a1;
  v112 = a2;
  v97 = "Assertion failed";
  v98 = "SoftwareUpdateUIKit/Localization.swift";
  v99 = "Fatal error";
  v149 = 0;
  v148 = 0;
  v147 = 0;
  v146 = 0;
  v136 = 0;
  v137 = 0;
  v117 = 0;
  v100 = sub_26B079DC0();
  v101 = *(v100 - 8);
  v102 = v100 - 8;
  v103 = (*(v101 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v104 = &v36 - v103;
  v105 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v106 = &v36 - v105;
  v107 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v108 = &v36 - v107;
  v109 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v117);
  v110 = &v36 - v109;
  v114 = (*(*(sub_26B079DE0() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v113);
  v115 = &v36 - v114;
  v149 = v8;
  v148 = v9;
  v147 = v10;
  v116 = [v10 headingTokenWithStatefulDescriptor:v7 download:?];
  v146 = v116;
  MEMORY[0x277D82BE0](v116);
  MEMORY[0x277D82BE0](v116);
  v11 = [v116 type];
  v120 = &v145;
  v145 = v11;
  v118 = &v144;
  v144 = 0;
  v119 = type metadata accessor for SUUIStatefulErrorTokenType(v117);
  sub_26B034E5C();
  if ((sub_26B07A790() & 1) == 0)
  {
    v87 = 23;
    v12 = sub_26B07A740();
    v94 = &v142;
    v142 = v12;
    v143 = v13;
    v92 = 1;
    v14 = sub_26B079D00("Unexpected token type: ", v87, 1);
    v88 = v15;
    MEMORY[0x26D66D910](v14);

    v90 = &v141;
    v141 = v116;
    v91 = 0;
    v89 = sub_26B034EDC();
    sub_26B034F40();
    sub_26B07A710();
    v16 = sub_26B079D00("", v91, v92 & 1);
    v93 = v17;
    MEMORY[0x26D66D910](v16);

    v96 = v142;
    v95 = v143;
    sub_26B078640();
    sub_26AEB9F6C(v94);
    sub_26B079EB0();
    sub_26B07A660();
    __break(1u);
  }

  MEMORY[0x277D82BD8](v116);
  *&v18 = MEMORY[0x277D82BD8](v116).n128_u64[0];
  v86 = [v116 heading];
  if (v86)
  {
    if (v86 == 1)
    {
      *&v78[1] = 1;
      sub_26B079D00("Unable to Update", 16, 1);
      sub_26B079D80();
      v79 = *sub_26B02D0D0();
      MEMORY[0x277D82BE0](v79);
      sub_26AEFB5C4();
      v121 = 0;
      v122 = 0;
      v123 = *v78 & 0x100;
      v80 = sub_26B079E40();
      v81 = v20;
      MEMORY[0x277D82BD8](v116);
      v84 = v80;
      v85 = v81;
    }

    else if (v86 == 2)
    {
      *&v74[1] = 1;
      sub_26B079D00("Unable to Download", 18, 1);
      sub_26B079D80();
      v75 = *sub_26B02D0D0();
      MEMORY[0x277D82BE0](v75);
      sub_26AEFB5C4();
      v124 = 0;
      v125 = 0;
      v126 = *v74 & 0x100;
      v76 = sub_26B079E40();
      v77 = v21;
      MEMORY[0x277D82BD8](v116);
      v84 = v76;
      v85 = v77;
    }

    else if (v86 == 3)
    {
      *&v70[1] = 1;
      sub_26B079D00("Unable to Install", 17, 1);
      sub_26B079D80();
      v71 = *sub_26B02D0D0();
      MEMORY[0x277D82BE0](v71);
      sub_26AEFB5C4();
      v127 = 0;
      v128 = 0;
      v129 = *v70 & 0x100;
      v72 = sub_26B079E40();
      v73 = v22;
      MEMORY[0x277D82BD8](v116);
      v84 = v72;
      v85 = v73;
    }

    else if (v86 == 4)
    {
      *&v66[1] = 1;
      sub_26B079D00("More Storage Required", 21, 1);
      sub_26B079D80();
      v67 = *sub_26B02D0D0();
      MEMORY[0x277D82BE0](v67);
      sub_26AEFB5C4();
      v130 = 0;
      v131 = 0;
      v132 = *v66 & 0x100;
      v68 = sub_26B079E40();
      v69 = v23;
      MEMORY[0x277D82BD8](v116);
      v84 = v68;
      v85 = v69;
    }

    else
    {
      if (v86 != 5)
      {
        goto LABEL_21;
      }

      v64 = sub_26B034EDC();
      v65 = [v116 formatParameters];
      if (v65)
      {
        v63 = v65;
        v60 = v65;
        v61 = sub_26B079C70();
        MEMORY[0x277D82BD8](v60);
        v62 = v61;
      }

      else
      {
        v62 = 0;
      }

      v57 = v62;
      v58 = static SUUIStatefulErrorToken.requiredBatteryLevel(_:)(v62);
      v59 = v24;

      if (!v59)
      {
        MEMORY[0x277D82BE0](v116);
        v28 = sub_26B07A740();
        v42 = &v139;
        v139 = v28;
        v140 = v29;
        v40 = 1;
        v30 = sub_26B079D00("SUUIStatefulErrorToken ", 23, 1);
        v38 = v31;
        MEMORY[0x26D66D910](v30);

        v39 = &v138;
        v138 = v116;
        sub_26B034F40();
        sub_26B07A710();
        v32 = sub_26B079D00(" missing required battery level", 31, v40 & 1);
        v41 = v33;
        MEMORY[0x26D66D910](v32);

        v44 = v139;
        v43 = v140;
        sub_26B078640();
        sub_26AEB9F6C(v42);
        sub_26B079EB0();
        sub_26B07A660();
        __break(1u);
LABEL_21:
        v36 = sub_26B079D00("", 0, 1);
        v37 = v34;
        MEMORY[0x277D82BD8](v116);
        v84 = v36;
        v85 = v37;
        return v84;
      }

      v55 = v58;
      v56 = v59;
      v52 = v59;
      v46 = v58;
      v136 = v58;
      v137 = v59;
      v47 = 17;
      sub_26B079DB0();
      v50 = 0;
      *&v49[1] = 1;
      sub_26B079D00("");
      v45 = v25;
      sub_26B079DA0();

      sub_26B079D90();
      sub_26B079D00(" Battery Required", v47, v49[1] & 1);
      v48 = v26;
      sub_26B079DA0();

      (*(v101 + 16))(v106, v108, v100);
      (*(v101 + 32))(v104, v106, v100);
      (*(v101 + 8))(v108, v100);
      sub_26B079DD0();
      v51 = *sub_26B02D0D0();
      MEMORY[0x277D82BE0](v51);
      sub_26AEFB5C4();
      v133 = 0;
      v134 = 0;
      v135 = *v49 & 0x100;
      v53 = sub_26B079E40();
      v54 = v27;

      MEMORY[0x277D82BD8](v116);
      v84 = v53;
      v85 = v54;
    }
  }

  else
  {
    v82 = sub_26B079D00("", 0, 1);
    v83 = v19;
    MEMORY[0x277D82BD8](v116);
    v84 = v82;
    v85 = v83;
  }

  return v84;
}

uint64_t SUUIStatefulError.body(_:platform:download:)(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v694 = v2;
  v696 = v3;
  v695 = v4;
  v697 = v1;
  v686 = "Assertion failed";
  v687 = "SoftwareUpdateUIKit/Localization.swift";
  v688 = "Fatal error";
  v689 = "Paramenter is the error code";
  v1019 = 0;
  v1018 = 0;
  v1017 = 0;
  v1016 = 0;
  v1015 = 0;
  v1008 = 0;
  v936 = 0;
  v937 = 0;
  v923 = 0;
  v924 = 0;
  v910 = 0;
  v911 = 0;
  v897 = 0;
  v898 = 0;
  v892 = 0;
  v893 = 0;
  v879 = 0;
  v880 = 0;
  v866 = 0;
  v867 = 0;
  v853 = 0;
  v854 = 0;
  v848 = 0;
  v849 = 0;
  v803 = 0;
  v804 = 0;
  v708 = 0;
  v690 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v691 = &v168 - v690;
  v692 = (*(*(sub_26B079DE0() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v708);
  v693 = &v168 - v692;
  v698 = sub_26B079DC0();
  v699 = *(v698 - 8);
  v700 = v698 - 8;
  v701 = (*(v699 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v697);
  v702 = &v168 - v701;
  v703 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v704 = &v168 - v703;
  v705 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v8);
  v706 = &v168 - v705;
  v1019 = v10;
  v1018 = v11;
  v1017 = v12;
  v1016 = v13;
  v707 = [v13 bodyTokenWithStatefulDescriptor:v9 download:?];
  v1015 = v707;
  MEMORY[0x277D82BE0](v707);
  MEMORY[0x277D82BE0](v707);
  v14 = [v707 type];
  v711 = &v1014;
  v1014 = v14;
  v709 = &v1013;
  v1013 = 1;
  v710 = type metadata accessor for SUUIStatefulErrorTokenType(v708);
  sub_26B034E5C();
  if ((sub_26B07A790() & 1) == 0)
  {
    v676 = 23;
    v15 = sub_26B07A740();
    v683 = &v1011;
    v1011 = v15;
    v1012 = v16;
    v681 = 1;
    v17 = sub_26B079D00("Unexpected token type: ", v676, 1);
    v677 = v18;
    MEMORY[0x26D66D910](v17);

    v679 = &v1010;
    v1010 = v707;
    v680 = 0;
    v678 = sub_26B034EDC();
    sub_26B034F40();
    sub_26B07A710();
    v19 = sub_26B079D00("", v680, v681 & 1);
    v682 = v20;
    MEMORY[0x26D66D910](v19);

    v685 = v1011;
    v684 = v1012;
    sub_26B078640();
    sub_26AEB9F6C(v683);
    sub_26B079EB0();
    sub_26B07A660();
    __break(1u);
  }

  MEMORY[0x277D82BD8](v707);
  MEMORY[0x277D82BD8](v707);
  MEMORY[0x277D82BE0](v694);
  if (v694)
  {
    v675 = v694;
    v671 = v694;
    v672 = [v694 descriptor];
    MEMORY[0x277D82BD8](v671);
    swift_getObjectType();
    v673 = [v672 isSplatUpdate];
    swift_unknownObjectRelease();
    v674 = v673;
  }

  else
  {
    v674 = 2;
  }

  v1009 = v674;
  if (v674 == 2)
  {
    v670 = 0;
  }

  else
  {
    v670 = v1009;
  }

  v668 = v670;
  v1008 = v670 & 1;
  v669 = [v707 body];
  if (v669 > 0x1E)
  {
    v169 = sub_26B079D00("", 0, 1);
    v170 = v166;
    MEMORY[0x277D82BD8](v707);
    v655 = v169;
    v656 = v170;
  }

  else
  {
    switch(v669)
    {
      case 1uLL:
        if (v668)
        {
          v647 = 1;
          sub_26B079D00("This security response is not available because you are not connected to the internet.", 86, 1);
          sub_26B079D80();
          v648 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v648);
          sub_26AEFB5C4();
          v719 = 0;
          v720 = 0;
          v721 = 0;
          v722 = v647 & 1;
        }

        else
        {
          v649 = 1;
          sub_26B079D00("This update is not available because you are not connected to the internet.", 75, 1);
          sub_26B079D80();
          v650 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v650);
          sub_26AEFB5C4();
          v716[1] = 0;
          v716[2] = 0;
          v717 = 0;
          v718 = v649 & 1;
        }

        v651 = sub_26B079E40();
        v652 = v25;
        v646 = v25;
        v645 = v651;
        MEMORY[0x277D82BD8](v707);
        v655 = v645;
        v656 = v646;
        return v655;
      case 2uLL:
        if (sub_26B0784F0())
        {
          v641 = 1;
          sub_26B079D00("You can resume the download when you are connected to a WLAN, 3G, or faster network.", 84, 1);
          sub_26B079D80();
          v642 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v642);
          sub_26AEFB5C4();
          v723 = 0;
          v724 = 0;
          v725 = 0;
          v726 = v641 & 1;
        }

        else
        {
          v639 = 1;
          sub_26B079D00("You can resume the download when you are connected to a Wi-Fi, 3G, or faster network.", 85, 1);
          sub_26B079D80();
          v640 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v640);
          sub_26AEFB5C4();
          v727 = 0;
          v728 = 0;
          v729 = 0;
          v730 = v639 & 1;
        }

        v643 = sub_26B079E40();
        v644 = v26;
        v638 = v26;
        v637 = v643;
        MEMORY[0x277D82BD8](v707);
        v655 = v637;
        v656 = v638;
        return v655;
      case 3uLL:
        if (sub_26B0784F0())
        {
          if (v668)
          {
            v631 = 1;
            sub_26B079D00("This security response requires a WLAN, 3G, or faster network connection to download.", 85, 1);
            sub_26B079D80();
            v632 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v632);
            sub_26AEFB5C4();
            v735 = 0;
            v736 = 0;
            v737 = 0;
            v738 = v631 & 1;
          }

          else
          {
            v633 = 1;
            sub_26B079D00("This update requires a WLAN, 3G, or faster network connection to download.", 74, 1);
            sub_26B079D80();
            v634 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v634);
            sub_26AEFB5C4();
            v731 = 0;
            v732 = 0;
            v733 = 0;
            v734 = v633 & 1;
          }

          v635 = sub_26B079E40();
          v636 = v27;
          v630 = v27;
          v629 = v635;
          MEMORY[0x277D82BD8](v707);
          v655 = v629;
          v656 = v630;
        }

        else
        {
          if (v668)
          {
            v623 = 1;
            sub_26B079D00("This security response requires a Wi-Fi, 3G, or faster network connection to download.", 86, 1);
            sub_26B079D80();
            v624 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v624);
            sub_26AEFB5C4();
            v743 = 0;
            v744 = 0;
            v745 = 0;
            v746 = v623 & 1;
          }

          else
          {
            v625 = 1;
            sub_26B079D00("This update requires a Wi-Fi, 3G, or faster network connection to download.", 75, 1);
            sub_26B079D80();
            v626 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v626);
            sub_26AEFB5C4();
            v739 = 0;
            v740 = 0;
            v741 = 0;
            v742 = v625 & 1;
          }

          v627 = sub_26B079E40();
          v628 = v28;
          v622 = v28;
          v621 = v627;
          MEMORY[0x277D82BD8](v707);
          v655 = v621;
          v656 = v622;
        }

        return v655;
      case 4uLL:
        v617 = 1;
        sub_26B079D00("To download and install this software update, connect your ProductFamilyName to your computer.", 94, 1);
        sub_26B079D80();
        v618 = *sub_26B02D0D0();
        MEMORY[0x277D82BE0](v618);
        sub_26AEFB5C4();
        v747 = 0;
        v748 = 0;
        v749 = 0;
        v750 = v617 & 1;
        v619 = sub_26B079E40();
        v620 = v29;
        MEMORY[0x277D82BD8](v707);
        v655 = v619;
        v656 = v620;
        return v655;
      case 5uLL:
        v613 = 1;
        sub_26B079D00("Update is not installable at this time.", 39, 1);
        sub_26B079D80();
        v614 = *sub_26B02D0D0();
        MEMORY[0x277D82BE0](v614);
        sub_26AEFB5C4();
        v751 = 0;
        v752 = 0;
        v753 = 0;
        v754 = v613 & 1;
        v615 = sub_26B079E40();
        v616 = v30;
        MEMORY[0x277D82BD8](v707);
        v655 = v615;
        v656 = v616;
        return v655;
      case 6uLL:
        if (sub_26B0784F0())
        {
          v609 = 1;
          sub_26B079D00("You can resume the download when you are connected to a WLAN network.", 69, 1);
          sub_26B079D80();
          v610 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v610);
          sub_26AEFB5C4();
          v755 = 0;
          v756 = 0;
          v757 = 0;
          v758 = v609 & 1;
          v611 = sub_26B079E40();
          v612 = v31;
          MEMORY[0x277D82BD8](v707);
          v655 = v611;
          v656 = v612;
        }

        else
        {
          v605 = 1;
          sub_26B079D00("You can resume the download when you are connected to a Wi-Fi network.", 70, 1);
          sub_26B079D80();
          v606 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v606);
          sub_26AEFB5C4();
          v759 = 0;
          v760 = 0;
          v761 = 0;
          v762 = v605 & 1;
          v607 = sub_26B079E40();
          v608 = v32;
          MEMORY[0x277D82BD8](v707);
          v655 = v607;
          v656 = v608;
        }

        return v655;
      case 7uLL:
        if (sub_26B0784F0())
        {
          if (v668)
          {
            v599 = 1;
            sub_26B079D00("This security response requires a WLAN network connection to download.", 70, 1);
            sub_26B079D80();
            v600 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v600);
            sub_26AEFB5C4();
            v767 = 0;
            v768 = 0;
            v769 = 0;
            v770 = v599 & 1;
          }

          else
          {
            v601 = 1;
            sub_26B079D00("This update requires a WLAN network connection to download.", 59, 1);
            sub_26B079D80();
            v602 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v602);
            sub_26AEFB5C4();
            v763 = 0;
            v764 = 0;
            v765 = 0;
            v766 = v601 & 1;
          }

          v603 = sub_26B079E40();
          v604 = v33;
          v598 = v33;
          v597 = v603;
          MEMORY[0x277D82BD8](v707);
          v655 = v597;
          v656 = v598;
        }

        else
        {
          if (v668)
          {
            v591 = 1;
            sub_26B079D00("This security response requires a Wi-Fi network connection to download.", 71, 1);
            sub_26B079D80();
            v592 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v592);
            sub_26AEFB5C4();
            v775 = 0;
            v776 = 0;
            v777 = 0;
            v778 = v591 & 1;
          }

          else
          {
            v593 = 1;
            sub_26B079D00("This update requires a Wi-Fi network connection to download.", 60, 1);
            sub_26B079D80();
            v594 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v594);
            sub_26AEFB5C4();
            v771 = 0;
            v772 = 0;
            v773 = 0;
            v774 = v593 & 1;
          }

          v595 = sub_26B079E40();
          v596 = v34;
          v590 = v34;
          v589 = v595;
          MEMORY[0x277D82BD8](v707);
          v655 = v589;
          v656 = v590;
        }

        return v655;
      case 8uLL:
        if (sub_26B0784F0())
        {
          if (v668)
          {
            v583 = 1;
            sub_26B079D00("When Low Data Mode is turned on, downloads are paused. Turn off Low Data Mode, or switch WLAN networks to proceed with the security response.", 141, 1);
            sub_26B079D80();
            v584 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v584);
            sub_26AEFB5C4();
            v783 = 0;
            v784 = 0;
            v785 = 0;
            v786 = v583 & 1;
          }

          else
          {
            v585 = 1;
            sub_26B079D00("When Low Data Mode is turned on, downloads are paused. Turn off Low Data Mode, or switch WLAN networks to proceed with the update.", 130, 1);
            sub_26B079D80();
            v586 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v586);
            sub_26AEFB5C4();
            v779 = 0;
            v780 = 0;
            v781 = 0;
            v782 = v585 & 1;
          }

          v587 = sub_26B079E40();
          v588 = v35;
          v582 = v35;
          v581 = v587;
          MEMORY[0x277D82BD8](v707);
          v655 = v581;
          v656 = v582;
        }

        else
        {
          if (v668)
          {
            v575 = 1;
            sub_26B079D00("When Low Data Mode is turned on, downloads are paused. Turn off Low Data Mode, or switch Wi-Fi networks to proceed with the security response.", 142, 1);
            sub_26B079D80();
            v576 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v576);
            sub_26AEFB5C4();
            v791 = 0;
            v792 = 0;
            v793 = 0;
            v794 = v575 & 1;
          }

          else
          {
            v577 = 1;
            sub_26B079D00("When Low Data Mode is turned on, downloads are paused. Turn off Low Data Mode, or switch Wi-Fi networks to proceed with the update.", 131, 1);
            sub_26B079D80();
            v578 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v578);
            sub_26AEFB5C4();
            v787 = 0;
            v788 = 0;
            v789 = 0;
            v790 = v577 & 1;
          }

          v579 = sub_26B079E40();
          v580 = v36;
          v574 = v36;
          v573 = v579;
          MEMORY[0x277D82BD8](v707);
          v655 = v573;
          v656 = v574;
        }

        return v655;
      case 9uLL:
        v571 = sub_26B034EDC();
        v572 = [v707 formatParameters];
        if (v572)
        {
          v570 = v572;
          v567 = v572;
          v568 = sub_26B079C70();
          MEMORY[0x277D82BD8](v567);
          v569 = v568;
        }

        else
        {
          v569 = 0;
        }

        v564 = v569;
        v565 = static SUUIStatefulErrorToken.requiredFreeDiskSpace(_:)(v569);
        v566 = v37;

        if (!v566)
        {
          MEMORY[0x277D82BE0](v707);
          v43 = sub_26B07A740();
          v545 = &v806;
          v806 = v43;
          v807 = v44;
          v543 = 1;
          v45 = sub_26B079D00("SUUIStatefulErrorToken ", 23, 1);
          v541 = v46;
          MEMORY[0x26D66D910](v45);

          v542 = &v805;
          v805 = v707;
          sub_26B034F40();
          sub_26B07A710();
          v47 = sub_26B079D00(" missing required disk space", 28, v543 & 1);
          v544 = v48;
          MEMORY[0x26D66D910](v47);

          v547 = v806;
          v546 = v807;
          sub_26B078640();
          sub_26AEB9F6C(v545);
          sub_26B079EB0();
          sub_26B07A660();
          __break(1u);
          goto LABEL_63;
        }

        v562 = v565;
        v563 = v566;
        v560 = v566;
        v561 = v565;
        v803 = v565;
        v804 = v566;
        if (v668)
        {
          sub_26B079DB0();
          v552 = 1;
          sub_26B079D00("This security response cannot be installed because it requires at least ", 72, 1);
          v550 = v41;
          sub_26B079DA0();

          sub_26B079D90();
          sub_26B079D00(" of available storage during installation.", 42, v552 & 1);
          v551 = v42;
          sub_26B079DA0();

          (*(v699 + 16))(v704, v706, v698);
          (*(v699 + 32))(v702, v704, v698);
          (*(v699 + 8))(v706, v698);
          sub_26B079DD0();
          v553 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v553);
          sub_26AEFB5C4();
          v799 = 0;
          v800 = 0;
          v801 = 0;
          v802 = v552 & 1;
        }

        else
        {
          sub_26B079DB0();
          v556 = 1;
          sub_26B079D00("This update cannot be installed because it requires at least ", 61, 1);
          v554 = v38;
          sub_26B079DA0();

          sub_26B079D90();
          sub_26B079D00(" of available storage during installation.", 42, v556 & 1);
          v555 = v39;
          sub_26B079DA0();

          (*(v699 + 16))(v704, v706, v698);
          (*(v699 + 32))(v702, v704, v698);
          (*(v699 + 8))(v706, v698);
          sub_26B079DD0();
          v557 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v557);
          sub_26AEFB5C4();
          v795 = 0;
          v796 = 0;
          v797 = 0;
          v798 = v556 & 1;
        }

        v558 = sub_26B079E40();
        v559 = v40;
        v549 = v40;
        v548 = v558;

        MEMORY[0x277D82BD8](v707);
        v655 = v548;
        v656 = v549;
        return v655;
      case 0xAuLL:
        if (v668)
        {
          v527 = 1;
          sub_26B079D00("The security response could not be installed. Connect your ProductFamilyName to your computer to install.", 105, 1);
          sub_26B079D80();
          v528 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v528);
          sub_26AEFB5C4();
          v820 = 0;
          v821 = 0;
          v822 = 0;
          v823 = v527 & 1;
        }

        else
        {
          v529 = 1;
          sub_26B079D00("The update could not be installed. Connect your ProductFamilyName to your computer to install.", 94, 1);
          sub_26B079D80();
          v530 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v530);
          sub_26AEFB5C4();
          v816 = 0;
          v817 = 0;
          v818 = 0;
          v819 = v529 & 1;
        }

        v531 = sub_26B079E40();
        v532 = v50;
        v526 = v50;
        v525 = v531;
        MEMORY[0x277D82BD8](v707);
        v655 = v525;
        v656 = v526;
        return v655;
      case 0xBuLL:
        if (v668)
        {
          v519 = 1;
          sub_26B079D00("Verification of the %@ security response failed because you are no longer connected to the internet.", 100, 1);
          sub_26B079D80();
          v520 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v520);
          sub_26AEFB5C4();
          v828 = 0;
          v829 = 0;
          v830 = 0;
          v831 = v519 & 1;
        }

        else
        {
          v521 = 1;
          sub_26B079D00("Verification of the %@ update failed because you are no longer connected to the internet.", 89, 1);
          sub_26B079D80();
          v522 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v522);
          sub_26AEFB5C4();
          v824 = 0;
          v825 = 0;
          v826 = 0;
          v827 = v521 & 1;
        }

        v523 = sub_26B079E40();
        v524 = v51;
        v518 = v51;
        v517 = v523;
        MEMORY[0x277D82BD8](v707);
        v655 = v517;
        v656 = v518;
        return v655;
      case 0xCuLL:
        if (v668)
        {
          v511 = 1;
          sub_26B079D00("You can install this security response when your ProductFamilyName is finished restoring from the iCloud backup.", 112, 1);
          sub_26B079D80();
          v512 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v512);
          sub_26AEFB5C4();
          v836 = 0;
          v837 = 0;
          v838 = 0;
          v839 = v511 & 1;
        }

        else
        {
          v513 = 1;
          sub_26B079D00("You can install this update when your ProductFamilyName is finished restoring from the iCloud backup.", 101, 1);
          sub_26B079D80();
          v514 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v514);
          sub_26AEFB5C4();
          v832 = 0;
          v833 = 0;
          v834 = 0;
          v835 = v513 & 1;
        }

        v515 = sub_26B079E40();
        v516 = v52;
        v510 = v52;
        v509 = v515;
        MEMORY[0x277D82BD8](v707);
        v655 = v509;
        v656 = v510;
        return v655;
      case 0xDuLL:
        v507 = sub_26B034EDC();
        v508 = [v707 formatParameters];
        if (v508)
        {
          v506 = v508;
          v503 = v508;
          v504 = sub_26B079C70();
          MEMORY[0x277D82BD8](v503);
          v505 = v504;
        }

        else
        {
          v505 = 0;
        }

        v500 = v505;
        v501 = static SUUIStatefulErrorToken.requiredFreeDiskSpace(_:)(v505);
        v502 = v53;

        if (!v502)
        {
          goto LABEL_92;
        }

        v498 = v501;
        v499 = v502;
        v495 = v502;
        v496 = v501;
        v853 = v501;
        v854 = v502;
        v497 = [v707 formatParameters];
        if (v497)
        {
          v494 = v497;
          v491 = v497;
          v492 = sub_26B079C70();
          MEMORY[0x277D82BD8](v491);
          v493 = v492;
        }

        else
        {
          v493 = 0;
        }

        v488 = v493;
        v489 = static SUUIStatefulErrorToken.requiredBatteryLevel(_:)(v493);
        v490 = v54;

        if (!v490)
        {
          MEMORY[0x277D82BE0](v707);
          v62 = sub_26B07A740();
          v467 = &v851;
          v851 = v62;
          v852 = v63;
          v465 = 1;
          v64 = sub_26B079D00("SUUIStatefulErrorToken ", 23, 1);
          v463 = v65;
          MEMORY[0x26D66D910](v64);

          v464 = &v850;
          v850 = v707;
          sub_26B034F40();
          sub_26B07A710();
          v66 = sub_26B079D00(" missing required battery level", 31, v465 & 1);
          v466 = v67;
          MEMORY[0x26D66D910](v66);

          v469 = v851;
          v468 = v852;
          sub_26B078640();
          sub_26AEB9F6C(v467);
          sub_26B079EB0();
          sub_26B07A660();
          __break(1u);
LABEL_92:
          MEMORY[0x277D82BE0](v707);
          v68 = sub_26B07A740();
          v460 = &v856;
          v856 = v68;
          v857 = v69;
          v458 = 1;
          v70 = sub_26B079D00("SUUIStatefulErrorToken ", 23, 1);
          v456 = v71;
          MEMORY[0x26D66D910](v70);

          v457 = &v855;
          v855 = v707;
          sub_26B034F40();
          sub_26B07A710();
          v72 = sub_26B079D00(" missing required disk space", 28, v458 & 1);
          v459 = v73;
          MEMORY[0x26D66D910](v72);

          v462 = v856;
          v461 = v857;
          sub_26B078640();
          sub_26AEB9F6C(v460);
          sub_26B079EB0();
          sub_26B07A660();
          __break(1u);
          goto LABEL_93;
        }

        v486 = v489;
        v487 = v490;
        v484 = v490;
        v485 = v489;
        v848 = v489;
        v849 = v490;
        if (v668)
        {
          sub_26B079DB0();
          v475 = 1;
          sub_26B079D00("This security response requires at least ", 41, 1);
          v472 = v59;
          sub_26B079DA0();

          sub_26B079D90();
          sub_26B079D00(" battery while connected to a power source, ", 44, v475 & 1);
          v473 = v60;
          sub_26B079DA0();

          sub_26B079D90();
          sub_26B079D00(" of available storage during installation, and a network connection to install.", 79, v475 & 1);
          v474 = v61;
          sub_26B079DA0();

          (*(v699 + 16))(v704, v706, v698);
          (*(v699 + 32))(v702, v704, v698);
          (*(v699 + 8))(v706, v698);
          sub_26B079DD0();
          v476 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v476);
          sub_26AEFB5C4();
          v844 = 0;
          v845 = 0;
          v846 = 0;
          v847 = v475 & 1;
        }

        else
        {
          sub_26B079DB0();
          v480 = 1;
          sub_26B079D00("This update requires at least ", 30, 1);
          v477 = v55;
          sub_26B079DA0();

          sub_26B079D90();
          sub_26B079D00(" battery, ", 10, v480 & 1);
          v478 = v56;
          sub_26B079DA0();

          sub_26B079D90();
          sub_26B079D00(" of available storage during installation, and a network connection to install.", 79, v480 & 1);
          v479 = v57;
          sub_26B079DA0();

          (*(v699 + 16))(v704, v706, v698);
          (*(v699 + 32))(v702, v704, v698);
          (*(v699 + 8))(v706, v698);
          sub_26B079DD0();
          v481 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v481);
          sub_26AEFB5C4();
          v840 = 0;
          v841 = 0;
          v842 = 0;
          v843 = v480 & 1;
        }

        v482 = sub_26B079E40();
        v483 = v58;
        v471 = v58;
        v470 = v482;

        MEMORY[0x277D82BD8](v707);
        v655 = v470;
        v656 = v471;
        return v655;
      case 0xEuLL:
LABEL_93:
        v454 = sub_26B034EDC();
        v455 = [v707 formatParameters];
        if (v455)
        {
          v453 = v455;
          v450 = v455;
          v451 = sub_26B079C70();
          MEMORY[0x277D82BD8](v450);
          v452 = v451;
        }

        else
        {
          v452 = 0;
        }

        v447 = v452;
        v448 = static SUUIStatefulErrorToken.requiredFreeDiskSpace(_:)(v452);
        v449 = v74;

        if (v449)
        {
          v445 = v448;
          v446 = v449;
          v443 = v449;
          v444 = v448;
          v866 = v448;
          v867 = v449;
          if (v668)
          {
            sub_26B079DB0();
            v435 = 1;
            sub_26B079D00("This security response requires at least ", 41, 1);
            v433 = v78;
            sub_26B079DA0();

            sub_26B079D90();
            sub_26B079D00(" of available storage during installation, and a network connection to install.", 79, v435 & 1);
            v434 = v79;
            sub_26B079DA0();

            (*(v699 + 16))(v704, v706, v698);
            (*(v699 + 32))(v702, v704, v698);
            (*(v699 + 8))(v706, v698);
            sub_26B079DD0();
            v436 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v436);
            sub_26AEFB5C4();
            v862 = 0;
            v863 = 0;
            v864 = 0;
            v865 = v435 & 1;
          }

          else
          {
            sub_26B079DB0();
            v439 = 1;
            sub_26B079D00("This update requires at least ", 30, 1);
            v437 = v75;
            sub_26B079DA0();

            sub_26B079D90();
            sub_26B079D00(" of available storage during installation, and a network connection to install.", 79, v439 & 1);
            v438 = v76;
            sub_26B079DA0();

            (*(v699 + 16))(v704, v706, v698);
            (*(v699 + 32))(v702, v704, v698);
            (*(v699 + 8))(v706, v698);
            sub_26B079DD0();
            v440 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v440);
            sub_26AEFB5C4();
            v858 = 0;
            v859 = 0;
            v860 = 0;
            v861 = v439 & 1;
          }

          v441 = sub_26B079E40();
          v442 = v77;
          v432 = v77;
          v431 = v441;

          MEMORY[0x277D82BD8](v707);
          v655 = v431;
          v656 = v432;
          return v655;
        }

        MEMORY[0x277D82BE0](v707);
        v80 = sub_26B07A740();
        v428 = &v869;
        v869 = v80;
        v870 = v81;
        v426 = 1;
        v82 = sub_26B079D00("SUUIStatefulErrorToken ", 23, 1);
        v424 = v83;
        MEMORY[0x26D66D910](v82);

        v425 = &v868;
        v868 = v707;
        sub_26B034F40();
        sub_26B07A710();
        v84 = sub_26B079D00(" missing required disk space", 28, v426 & 1);
        v427 = v85;
        MEMORY[0x26D66D910](v84);

        v430 = v869;
        v429 = v870;
        sub_26B078640();
        sub_26AEB9F6C(v428);
        sub_26B079EB0();
        sub_26B07A660();
        __break(1u);
LABEL_102:
        v422 = sub_26B034EDC();
        v423 = [v707 formatParameters];
        if (v423)
        {
          v421 = v423;
          v418 = v423;
          v419 = sub_26B079C70();
          MEMORY[0x277D82BD8](v418);
          v420 = v419;
        }

        else
        {
          v420 = 0;
        }

        v415 = v420;
        v416 = static SUUIStatefulErrorToken.requiredBatteryLevel(_:)(v420);
        v417 = v86;

        if (v417)
        {
          v413 = v416;
          v414 = v417;
          v411 = v417;
          v412 = v416;
          v879 = v416;
          v880 = v417;
          if (v668)
          {
            sub_26B079DB0();
            v403 = 1;
            sub_26B079D00("This security response requires at least ", 41, 1);
            v401 = v90;
            sub_26B079DA0();

            sub_26B079D90();
            sub_26B079D00(" battery while connected to a power source, and a network connection to install.", 80, v403 & 1);
            v402 = v91;
            sub_26B079DA0();

            (*(v699 + 16))(v704, v706, v698);
            (*(v699 + 32))(v702, v704, v698);
            (*(v699 + 8))(v706, v698);
            sub_26B079DD0();
            v404 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v404);
            sub_26AEFB5C4();
            v875 = 0;
            v876 = 0;
            v877 = 0;
            v878 = v403 & 1;
          }

          else
          {
            sub_26B079DB0();
            v407 = 1;
            sub_26B079D00("This update requires at least ", 30, 1);
            v405 = v87;
            sub_26B079DA0();

            sub_26B079D90();
            sub_26B079D00(" battery, and a network connection to install.", 46, v407 & 1);
            v406 = v88;
            sub_26B079DA0();

            (*(v699 + 16))(v704, v706, v698);
            (*(v699 + 32))(v702, v704, v698);
            (*(v699 + 8))(v706, v698);
            sub_26B079DD0();
            v408 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v408);
            sub_26AEFB5C4();
            v871 = 0;
            v872 = 0;
            v873 = 0;
            v874 = v407 & 1;
          }

          v409 = sub_26B079E40();
          v410 = v89;
          v400 = v89;
          v399 = v409;

          MEMORY[0x277D82BD8](v707);
          v655 = v399;
          v656 = v400;
          return v655;
        }

        MEMORY[0x277D82BE0](v707);
        v92 = sub_26B07A740();
        v396 = &v882;
        v882 = v92;
        v883 = v93;
        v394 = 1;
        v94 = sub_26B079D00("SUUIStatefulErrorToken ", 23, 1);
        v392 = v95;
        MEMORY[0x26D66D910](v94);

        v393 = &v881;
        v881 = v707;
        sub_26B034F40();
        sub_26B07A710();
        v96 = sub_26B079D00(" missing required battery level", 31, v394 & 1);
        v395 = v97;
        MEMORY[0x26D66D910](v96);

        v398 = v882;
        v397 = v883;
        sub_26B078640();
        sub_26AEB9F6C(v396);
        sub_26B079EB0();
        sub_26B07A660();
        __break(1u);
LABEL_111:
        v390 = sub_26B034EDC();
        v391 = [v707 formatParameters];
        if (v391)
        {
          v389 = v391;
          v386 = v391;
          v387 = sub_26B079C70();
          MEMORY[0x277D82BD8](v386);
          v388 = v387;
        }

        else
        {
          v388 = 0;
        }

        v383 = v388;
        v384 = static SUUIStatefulErrorToken.requiredFreeDiskSpace(_:)(v388);
        v385 = v98;

        if (!v385)
        {
          goto LABEL_124;
        }

        v381 = v384;
        v382 = v385;
        v378 = v385;
        v379 = v384;
        v897 = v384;
        v898 = v385;
        v380 = [v707 formatParameters];
        if (v380)
        {
          v377 = v380;
          v374 = v380;
          v375 = sub_26B079C70();
          MEMORY[0x277D82BD8](v374);
          v376 = v375;
        }

        else
        {
          v376 = 0;
        }

        v371 = v376;
        v372 = static SUUIStatefulErrorToken.requiredBatteryLevel(_:)(v376);
        v373 = v99;

        if (v373)
        {
          v369 = v372;
          v370 = v373;
          v367 = v373;
          v368 = v372;
          v892 = v372;
          v893 = v373;
          if (v668)
          {
            sub_26B079DB0();
            v358 = 1;
            sub_26B079D00("This security response requires at least ", 41, 1);
            v355 = v104;
            sub_26B079DA0();

            sub_26B079D90();
            sub_26B079D00(" battery while connected to a power source, and ", 48, v358 & 1);
            v356 = v105;
            sub_26B079DA0();

            sub_26B079D90();
            sub_26B079D00(" of available storage during installation.", 42, v358 & 1);
            v357 = v106;
            sub_26B079DA0();

            (*(v699 + 16))(v704, v706, v698);
            (*(v699 + 32))(v702, v704, v698);
            (*(v699 + 8))(v706, v698);
            sub_26B079DD0();
            v359 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v359);
            sub_26AEFB5C4();
            v888 = 0;
            v889 = 0;
            v890 = 0;
            v891 = v358 & 1;
          }

          else
          {
            sub_26B079DB0();
            v363 = 1;
            sub_26B079D00("This update requires at least ", 30, 1);
            v360 = v100;
            sub_26B079DA0();

            sub_26B079D90();
            sub_26B079D00(" battery, and ", 14, v363 & 1);
            v361 = v101;
            sub_26B079DA0();

            sub_26B079D90();
            sub_26B079D00(" of available storage during installation.", 42, v363 & 1);
            v362 = v102;
            sub_26B079DA0();

            (*(v699 + 16))(v704, v706, v698);
            (*(v699 + 32))(v702, v704, v698);
            (*(v699 + 8))(v706, v698);
            sub_26B079DD0();
            v364 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v364);
            sub_26AEFB5C4();
            v884 = 0;
            v885 = 0;
            v886 = 0;
            v887 = v363 & 1;
          }

          v365 = sub_26B079E40();
          v366 = v103;
          v354 = v103;
          v353 = v365;

          MEMORY[0x277D82BD8](v707);
          v655 = v353;
          v656 = v354;
        }

        else
        {
          MEMORY[0x277D82BE0](v707);
          v107 = sub_26B07A740();
          v350 = &v895;
          v895 = v107;
          v896 = v108;
          v348 = 1;
          v109 = sub_26B079D00("SUUIStatefulErrorToken ", 23, 1);
          v346 = v110;
          MEMORY[0x26D66D910](v109);

          v347 = &v894;
          v894 = v707;
          sub_26B034F40();
          sub_26B07A710();
          v111 = sub_26B079D00(" missing required battery level", 31, v348 & 1);
          v349 = v112;
          MEMORY[0x26D66D910](v111);

          v352 = v895;
          v351 = v896;
          sub_26B078640();
          sub_26AEB9F6C(v350);
          sub_26B079EB0();
          sub_26B07A660();
          __break(1u);
LABEL_124:
          MEMORY[0x277D82BE0](v707);
          v113 = sub_26B07A740();
          v343 = &v900;
          v900 = v113;
          v901 = v114;
          v341 = 1;
          v115 = sub_26B079D00("SUUIStatefulErrorToken ", 23, 1);
          v339 = v116;
          MEMORY[0x26D66D910](v115);

          v340 = &v899;
          v899 = v707;
          sub_26B034F40();
          sub_26B07A710();
          v117 = sub_26B079D00(" missing required disk space", 28, v341 & 1);
          v342 = v118;
          MEMORY[0x26D66D910](v117);

          v345 = v900;
          v344 = v901;
          sub_26B078640();
          sub_26AEB9F6C(v343);
          sub_26B079EB0();
          sub_26B07A660();
          __break(1u);
LABEL_125:
          v337 = sub_26B034EDC();
          v338 = [v707 formatParameters];
          if (v338)
          {
            v336 = v338;
            v333 = v338;
            v334 = sub_26B079C70();
            MEMORY[0x277D82BD8](v333);
            v335 = v334;
          }

          else
          {
            v335 = 0;
          }

          v330 = v335;
          v331 = static SUUIStatefulErrorToken.requiredBatteryLevel(_:)(v335);
          v332 = v119;

          if (v332)
          {
            v328 = v331;
            v329 = v332;
            v326 = v332;
            v327 = v331;
            v910 = v331;
            v911 = v332;
            if (v668)
            {
              sub_26B079DB0();
              v318 = 1;
              sub_26B079D00("This security response requires at least ", 41, 1);
              v316 = v123;
              sub_26B079DA0();

              sub_26B079D90();
              sub_26B079D00(" battery or to be connected to a power source.", 46, v318 & 1);
              v317 = v124;
              sub_26B079DA0();

              (*(v699 + 16))(v704, v706, v698);
              (*(v699 + 32))(v702, v704, v698);
              (*(v699 + 8))(v706, v698);
              sub_26B079DD0();
              v319 = *sub_26B02D0D0();
              MEMORY[0x277D82BE0](v319);
              sub_26AEFB5C4();
              v906 = 0;
              v907 = 0;
              v908 = 0;
              v909 = v318 & 1;
            }

            else
            {
              sub_26B079DB0();
              v322 = 1;
              sub_26B079D00("This update requires at least ", 30, 1);
              v320 = v120;
              sub_26B079DA0();

              sub_26B079D90();
              sub_26B079D00(" battery.", 9, v322 & 1);
              v321 = v121;
              sub_26B079DA0();

              (*(v699 + 16))(v704, v706, v698);
              (*(v699 + 32))(v702, v704, v698);
              (*(v699 + 8))(v706, v698);
              sub_26B079DD0();
              v323 = *sub_26B02D0D0();
              MEMORY[0x277D82BE0](v323);
              sub_26AEFB5C4();
              v902 = 0;
              v903 = 0;
              v904 = 0;
              v905 = v322 & 1;
            }

            v324 = sub_26B079E40();
            v325 = v122;
            v315 = v122;
            v314 = v324;

            MEMORY[0x277D82BD8](v707);
            v655 = v314;
            v656 = v315;
          }

          else
          {
            MEMORY[0x277D82BE0](v707);
            v125 = sub_26B07A740();
            v311 = &v913;
            v913 = v125;
            v914 = v126;
            v309 = 1;
            v127 = sub_26B079D00("SUUIStatefulErrorToken ", 23, 1);
            v307 = v128;
            MEMORY[0x26D66D910](v127);

            v308 = &v912;
            v912 = v707;
            sub_26B034F40();
            sub_26B07A710();
            v129 = sub_26B079D00(" missing required battery level", 31, v309 & 1);
            v310 = v130;
            MEMORY[0x26D66D910](v129);

            v313 = v913;
            v312 = v914;
            sub_26B078640();
            sub_26AEB9F6C(v311);
            sub_26B079EB0();
            sub_26B07A660();
            __break(1u);
LABEL_134:
            v305 = sub_26B034EDC();
            v306 = [v707 formatParameters];
            if (v306)
            {
              v304 = v306;
              v301 = v306;
              v302 = sub_26B079C70();
              MEMORY[0x277D82BD8](v301);
              v303 = v302;
            }

            else
            {
              v303 = 0;
            }

            v298 = v303;
            v299 = static SUUIStatefulErrorToken.requiredBatteryLevel(_:)(v303);
            v300 = v131;

            if (v300)
            {
              v296 = v299;
              v297 = v300;
              v294 = v300;
              v295 = v299;
              v923 = v299;
              v924 = v300;
              if (v668)
              {
                sub_26B079DB0();
                v286 = 1;
                sub_26B079D00("This security response requires at least ", 41, 1);
                v284 = v135;
                sub_26B079DA0();

                sub_26B079D90();
                sub_26B079D00(" battery while connected to a power source.", 43, v286 & 1);
                v285 = v136;
                sub_26B079DA0();

                (*(v699 + 16))(v704, v706, v698);
                (*(v699 + 32))(v702, v704, v698);
                (*(v699 + 8))(v706, v698);
                sub_26B079DD0();
                v287 = *sub_26B02D0D0();
                MEMORY[0x277D82BE0](v287);
                sub_26AEFB5C4();
                v919 = 0;
                v920 = 0;
                v921 = 0;
                v922 = v286 & 1;
              }

              else
              {
                sub_26B079DB0();
                v290 = 1;
                sub_26B079D00("This update requires at least ", 30, 1);
                v288 = v132;
                sub_26B079DA0();

                sub_26B079D90();
                sub_26B079D00(" battery while connected to a power source.", 43, v290 & 1);
                v289 = v133;
                sub_26B079DA0();

                (*(v699 + 16))(v704, v706, v698);
                (*(v699 + 32))(v702, v704, v698);
                (*(v699 + 8))(v706, v698);
                sub_26B079DD0();
                v291 = *sub_26B02D0D0();
                MEMORY[0x277D82BE0](v291);
                sub_26AEFB5C4();
                v915 = 0;
                v916 = 0;
                v917 = 0;
                v918 = v290 & 1;
              }

              v292 = sub_26B079E40();
              v293 = v134;
              v283 = v134;
              v282 = v292;

              MEMORY[0x277D82BD8](v707);
              v655 = v282;
              v656 = v283;
            }

            else
            {
              MEMORY[0x277D82BE0](v707);
              v137 = sub_26B07A740();
              v279 = &v926;
              v926 = v137;
              v927 = v138;
              v277 = 1;
              v139 = sub_26B079D00("SUUIStatefulErrorToken ", 23, 1);
              v275 = v140;
              MEMORY[0x26D66D910](v139);

              v276 = &v925;
              v925 = v707;
              sub_26B034F40();
              sub_26B07A710();
              v141 = sub_26B079D00(" missing required battery level", 31, v277 & 1);
              v278 = v142;
              MEMORY[0x26D66D910](v141);

              v281 = v926;
              v280 = v927;
              sub_26B078640();
              sub_26AEB9F6C(v279);
              sub_26B079EB0();
              sub_26B07A660();
              __break(1u);
LABEL_143:
              v273 = sub_26B034EDC();
              v274 = [v707 formatParameters];
              if (v274)
              {
                v272 = v274;
                v269 = v274;
                v270 = sub_26B079C70();
                MEMORY[0x277D82BD8](v269);
                v271 = v270;
              }

              else
              {
                v271 = 0;
              }

              v266 = v271;
              v267 = static SUUIStatefulErrorToken.requiredBatteryLevel(_:)(v271);
              v268 = v143;

              if (v268)
              {
                v264 = v267;
                v265 = v268;
                v262 = v268;
                v263 = v267;
                v936 = v267;
                v937 = v268;
                if (v668)
                {
                  sub_26B079DB0();
                  v254 = 1;
                  sub_26B079D00("This security response requires at least ", 41, 1);
                  v252 = v147;
                  sub_26B079DA0();

                  sub_26B079D90();
                  sub_26B079D00(" battery while wirelessly charging.", 35, v254 & 1);
                  v253 = v148;
                  sub_26B079DA0();

                  (*(v699 + 16))(v704, v706, v698);
                  (*(v699 + 32))(v702, v704, v698);
                  (*(v699 + 8))(v706, v698);
                  sub_26B079DD0();
                  v255 = *sub_26B02D0D0();
                  MEMORY[0x277D82BE0](v255);
                  sub_26AEFB5C4();
                  v932 = 0;
                  v933 = 0;
                  v934 = 0;
                  v935 = v254 & 1;
                }

                else
                {
                  sub_26B079DB0();
                  v258 = 1;
                  sub_26B079D00("This update requires at least ", 30, 1);
                  v256 = v144;
                  sub_26B079DA0();

                  sub_26B079D90();
                  sub_26B079D00(" battery while wirelessly charging.", 35, v258 & 1);
                  v257 = v145;
                  sub_26B079DA0();

                  (*(v699 + 16))(v704, v706, v698);
                  (*(v699 + 32))(v702, v704, v698);
                  (*(v699 + 8))(v706, v698);
                  sub_26B079DD0();
                  v259 = *sub_26B02D0D0();
                  MEMORY[0x277D82BE0](v259);
                  sub_26AEFB5C4();
                  v928 = 0;
                  v929 = 0;
                  v930 = 0;
                  v931 = v258 & 1;
                }

                v260 = sub_26B079E40();
                v261 = v146;
                v251 = v146;
                v250 = v260;

                MEMORY[0x277D82BD8](v707);
                v655 = v250;
                v656 = v251;
              }

              else
              {
                MEMORY[0x277D82BE0](v707);
                v149 = sub_26B07A740();
                v247 = &v939;
                v939 = v149;
                v940 = v150;
                v245 = 1;
                v151 = sub_26B079D00("SUUIStatefulErrorToken ", 23, 1);
                v243 = v152;
                MEMORY[0x26D66D910](v151);

                v244 = &v938;
                v938 = v707;
                sub_26B034F40();
                sub_26B07A710();
                v153 = sub_26B079D00(" missing required battery level", 31, v245 & 1);
                v246 = v154;
                MEMORY[0x26D66D910](v153);

                v249 = v939;
                v248 = v940;
                sub_26B078640();
                sub_26AEB9F6C(v247);
                sub_26B079EB0();
                sub_26B07A660();
                __break(1u);
LABEL_152:
                if (v668)
                {
                  v237 = 1;
                  sub_26B079D00("This security response cannot be installed while data is syncing.", 65, 1);
                  sub_26B079D80();
                  v238 = *sub_26B02D0D0();
                  MEMORY[0x277D82BE0](v238);
                  sub_26AEFB5C4();
                  v945 = 0;
                  v946 = 0;
                  v947 = 0;
                  v948 = v237 & 1;
                }

                else
                {
                  v239 = 1;
                  sub_26B079D00("This update cannot be installed while data is syncing.", 54, 1);
                  sub_26B079D80();
                  v240 = *sub_26B02D0D0();
                  MEMORY[0x277D82BE0](v240);
                  sub_26AEFB5C4();
                  v941 = 0;
                  v942 = 0;
                  v943 = 0;
                  v944 = v239 & 1;
                }

                v241 = sub_26B079E40();
                v242 = v155;
                v236 = v155;
                v235 = v241;
                MEMORY[0x277D82BD8](v707);
                v655 = v235;
                v656 = v236;
              }
            }
          }
        }

        break;
      case 0xFuLL:
        goto LABEL_102;
      case 0x10uLL:
        goto LABEL_111;
      case 0x11uLL:
        goto LABEL_125;
      case 0x12uLL:
        goto LABEL_134;
      case 0x13uLL:
        goto LABEL_143;
      case 0x14uLL:
LABEL_63:
        if (v668)
        {
          v535 = 1;
          sub_26B079D00("This security response requires a network connection to install.", 64, 1);
          sub_26B079D80();
          v536 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v536);
          sub_26AEFB5C4();
          v812 = 0;
          v813 = 0;
          v814 = 0;
          v815 = v535 & 1;
        }

        else
        {
          v537 = 1;
          sub_26B079D00("This update requires a network connection to install.", 53, 1);
          sub_26B079D80();
          v538 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v538);
          sub_26AEFB5C4();
          v808 = 0;
          v809 = 0;
          v810 = 0;
          v811 = v537 & 1;
        }

        v539 = sub_26B079E40();
        v540 = v49;
        v534 = v49;
        v533 = v539;
        MEMORY[0x277D82BD8](v707);
        v655 = v533;
        v656 = v534;
        return v655;
      case 0x15uLL:
        goto LABEL_152;
      case 0x16uLL:
        if (v668)
        {
          v229 = 1;
          sub_26B079D00("This security response cannot be installed while on a call.", 59, 1);
          sub_26B079D80();
          v230 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v230);
          sub_26AEFB5C4();
          v953 = 0;
          v954 = 0;
          v955 = 0;
          v956 = v229 & 1;
        }

        else
        {
          v231 = 1;
          sub_26B079D00("This update cannot be installed while on a call.", 48, 1);
          sub_26B079D80();
          v232 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v232);
          sub_26AEFB5C4();
          v949 = 0;
          v950 = 0;
          v951 = 0;
          v952 = v231 & 1;
        }

        v233 = sub_26B079E40();
        v234 = v156;
        v228 = v156;
        v227 = v233;
        MEMORY[0x277D82BD8](v707);
        v655 = v227;
        v656 = v228;
        return v655;
      case 0x17uLL:
        if (v668)
        {
          v221 = 1;
          sub_26B079D00("This security response cannot be installed while restoring from a backup.", 73, 1);
          sub_26B079D80();
          v222 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v222);
          sub_26AEFB5C4();
          v961 = 0;
          v962 = 0;
          v963 = 0;
          v964 = v221 & 1;
        }

        else
        {
          v223 = 1;
          sub_26B079D00("This update cannot be installed while restoring from a backup.", 62, 1);
          sub_26B079D80();
          v224 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v224);
          sub_26AEFB5C4();
          v957 = 0;
          v958 = 0;
          v959 = 0;
          v960 = v223 & 1;
        }

        v225 = sub_26B079E40();
        v226 = v157;
        v220 = v157;
        v219 = v225;
        MEMORY[0x277D82BD8](v707);
        v655 = v219;
        v656 = v220;
        return v655;
      case 0x18uLL:
        if (v668)
        {
          v213 = 1;
          sub_26B079D00("This security response cannot be installed while connected to Apple CarPlay.", 76, 1);
          sub_26B079D80();
          v214 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v214);
          sub_26AEFB5C4();
          v969 = 0;
          v970 = 0;
          v971 = 0;
          v972 = v213 & 1;
        }

        else
        {
          v215 = 1;
          sub_26B079D00("This update cannot be installed while connected to Apple CarPlay.", 65, 1);
          sub_26B079D80();
          v216 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v216);
          sub_26AEFB5C4();
          v965 = 0;
          v966 = 0;
          v967 = 0;
          v968 = v215 & 1;
        }

        v217 = sub_26B079E40();
        v218 = v158;
        v212 = v158;
        v211 = v217;
        MEMORY[0x277D82BD8](v707);
        v655 = v211;
        v656 = v212;
        return v655;
      case 0x19uLL:
        if (v668)
        {
          v205 = 1;
          sub_26B079D00("This security response cannot be installed while audio is playing.", 66, 1);
          sub_26B079D80();
          v206 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v206);
          sub_26AEFB5C4();
          v977 = 0;
          v978 = 0;
          v979 = 0;
          v980 = v205 & 1;
        }

        else
        {
          v207 = 1;
          sub_26B079D00("This update cannot be installed while audio is playing.", 55, 1);
          sub_26B079D80();
          v208 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v208);
          sub_26AEFB5C4();
          v973 = 0;
          v974 = 0;
          v975 = 0;
          v976 = v207 & 1;
        }

        v209 = sub_26B079E40();
        v210 = v159;
        v204 = v159;
        v203 = v209;
        MEMORY[0x277D82BD8](v707);
        v655 = v203;
        v656 = v204;
        return v655;
      case 0x1AuLL:
        if (v668)
        {
          v197 = 1;
          sub_26B079D00("This security response cannot be installed while driving.", 57, 1);
          sub_26B079D80();
          v198 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v198);
          sub_26AEFB5C4();
          v985 = 0;
          v986 = 0;
          v987 = 0;
          v988 = v197 & 1;
        }

        else
        {
          v199 = 1;
          sub_26B079D00("This update cannot be installed while driving.", 46, 1);
          sub_26B079D80();
          v200 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v200);
          sub_26AEFB5C4();
          v981 = 0;
          v982 = 0;
          v983 = 0;
          v984 = v199 & 1;
        }

        v201 = sub_26B079E40();
        v202 = v160;
        v196 = v160;
        v195 = v201;
        MEMORY[0x277D82BD8](v707);
        v655 = v195;
        v656 = v196;
        return v655;
      case 0x1BuLL:
        if (v668)
        {
          *&v189[1] = 1;
          sub_26B079D00("This security response cannot be installed while Continuity Camera is in use", 76, 1);
          sub_26B079D80();
          v190 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v190);
          sub_26AEFB5C4();
          v993 = 0;
          v994 = 0;
          v995 = *v189 & 0x100;
        }

        else
        {
          v191 = 1;
          sub_26B079D00("This update cannot be installed while Continuity Camera is in use", 65, 1);
          sub_26B079D80();
          v192 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v192);
          sub_26AEFB5C4();
          v989 = 0;
          v990 = 0;
          v991 = 0;
          v992 = v191 & 1;
        }

        v193 = sub_26B079E40();
        v194 = v161;
        v188 = v161;
        v187 = v193;
        MEMORY[0x277D82BD8](v707);
        v655 = v187;
        v656 = v188;
        return v655;
      case 0x1CuLL:
        *&v183[1] = 1;
        sub_26B079D00("The download was paused because you are on a roaming cellular network. You can continue downloading this update over the current network. Additional usage fees may apply.", 170, 1);
        sub_26B079D80();
        v184 = *sub_26B02D0D0();
        MEMORY[0x277D82BE0](v184);
        sub_26AEFB5C4();
        v996 = 0;
        v997 = 0;
        v998 = *v183 & 0x100;
        v185 = sub_26B079E40();
        v186 = v162;
        MEMORY[0x277D82BD8](v707);
        v655 = v185;
        v656 = v186;
        return v655;
      case 0x1DuLL:
        if (sub_26B0784F0())
        {
          *&v179[1] = 1;
          sub_26B079D00("The download was paused because you are roaming and data roaming is turned off. The download will resume when you are no longer roaming, or if you connect to WLAN network.", 171, 1);
          sub_26B079D80();
          v180 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v180);
          sub_26AEFB5C4();
          v999 = 0;
          v1000 = 0;
          v1001 = *v179 & 0x100;
          v181 = sub_26B079E40();
          v182 = v163;
          MEMORY[0x277D82BD8](v707);
          v655 = v181;
          v656 = v182;
        }

        else
        {
          *&v175[1] = 1;
          sub_26B079D00("The download was paused because you are roaming and data roaming is turned off. The download will resume when you are no longer roaming, or if you connect to Wi-Fi network.", 172, 1);
          sub_26B079D80();
          v176 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v176);
          sub_26AEFB5C4();
          v1002 = 0;
          v1003 = 0;
          v1004 = *v175 & 0x100;
          v177 = sub_26B079E40();
          v178 = v164;
          MEMORY[0x277D82BD8](v707);
          v655 = v177;
          v656 = v178;
        }

        return v655;
      case 0x1EuLL:
        *&v171[1] = 1;
        sub_26B079D00("INTERNAL ONLY: Device needs to be rooted from snapshot to update.\nAs root user, run “snapshottool golive 0” then “reboot”.\nYou’ll be able to update once the device boots back.", 185, 0);
        sub_26B079D80();
        v172 = *sub_26B02D0D0();
        MEMORY[0x277D82BE0](v172);
        sub_26AEFB5C4();
        v1005 = 0;
        v1006 = 0;
        v1007 = *v171 & 0x100;
        v173 = sub_26B079E40();
        v174 = v165;
        MEMORY[0x277D82BD8](v707);
        v655 = v173;
        v656 = v174;
        return v655;
      default:
        if (sub_26B078500())
        {
          v657 = 80;
          sub_26B079DB0();
          v662 = 1;
          sub_26B079D00("[Internal Only] An unresolvable error has occurred, please file a radar.\nError: ", v657, 1);
          v658 = v21;
          sub_26B079DA0();

          MEMORY[0x277D82BE0](v697);
          v660 = v716;
          v716[0] = v697;
          v664 = 0;
          v659 = sub_26B034FC0();
          sub_26B035024();
          sub_26B079E70();
          v661 = v22;
          sub_26B079D90();

          sub_26B079D00("", v664, v662 & 1);
          v663 = v23;
          sub_26B079DA0();

          (*(v699 + 16))(v704, v706, v698);
          (*(v699 + 32))(v702, v704, v698);
          (*(v699 + 8))(v706, v698);
          sub_26B079DD0();
          v665 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v665);
          sub_26AEFB5C4();
          v712 = v689;
          v713 = 28;
          v714 = 2;
          v715 = 0;
          v666 = sub_26B079E40();
        }

        else
        {
          v666 = sub_26B079D00("", 0, 1);
        }

        v667 = v24;
        v654 = v24;
        v653 = v666;
        MEMORY[0x277D82BD8](v707);
        v655 = v653;
        v656 = v654;
        return v655;
    }
  }

  return v655;
}

uint64_t SUUIStatefulError.heading(_:download:)(uint64_t a1, uint64_t a2)
{

  if (a1)
  {
    v7 = *(a1 + 24);
    MEMORY[0x277D82BE0](v7);

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (a2)
  {
    v5 = *(a2 + 16);
    MEMORY[0x277D82BE0](v5);

    swift_getObjectType();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v4 = SUUIStatefulError.heading(_:download:)(v8, v6, v2);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v8);
  return v4;
}

uint64_t static SUUIStatefulErrorToken.requiredBatteryLevel(_:)(uint64_t a1)
{
  v11 = 0;
  v12 = a1;
  sub_26B078640();
  if (a1)
  {
    v1 = sub_26B0344E4();
    v5 = *v1;
    v6 = v1[1];
    sub_26B078640();
    v8[0] = v5;
    v8[1] = v6;
    sub_26B079CC0();
    sub_26AE9BCC0(v8);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v10 = 0;
  }

  if (v10)
  {
    if (swift_dynamicCast())
    {
      return v8[2];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_26AED4660(v9);
    return 0;
  }
}

uint64_t SUUIStatefulError.body(_:platform:download:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  if (a1)
  {
    v5 = *(a1 + 24);
    MEMORY[0x277D82BE0](v5);

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a3)
  {
    MEMORY[0x277D82BE0](*(a3 + 16));

    swift_getObjectType();
  }

  v4 = SUUIStatefulError.body(_:platform:download:)(v6);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v6);
  return v4;
}

uint64_t static SUUIStatefulErrorToken.requiredFreeDiskSpace(_:)(uint64_t a1)
{
  v11 = 0;
  v12 = a1;
  sub_26B078640();
  if (a1)
  {
    v1 = sub_26B0345F0();
    v5 = *v1;
    v6 = v1[1];
    sub_26B078640();
    v8[0] = v5;
    v8[1] = v6;
    sub_26B079CC0();
    sub_26AE9BCC0(v8);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v10 = 0;
  }

  if (v10)
  {
    if (swift_dynamicCast())
    {
      return v8[2];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_26AED4660(v9);
    return 0;
  }
}

double sub_26B03447C()
{
  v2 = *MEMORY[0x277D64C40];
  MEMORY[0x277D82BE0](*MEMORY[0x277D64C40]);
  qword_2803DECD0 = sub_26B079E00();
  qword_2803DECD8 = v0;
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

uint64_t *sub_26B0344E4()
{
  if (qword_2803DB4C0 != -1)
  {
    swift_once();
  }

  return &qword_2803DECD0;
}

uint64_t static SUUIStatefulErrorToken.Keys.requiredBatteryLevel.getter()
{
  v1 = *sub_26B0344E4();
  sub_26B078640();
  return v1;
}

double sub_26B034588()
{
  v2 = *MEMORY[0x277D64C48];
  MEMORY[0x277D82BE0](*MEMORY[0x277D64C48]);
  qword_2803DECE0 = sub_26B079E00();
  qword_2803DECE8 = v0;
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

uint64_t *sub_26B0345F0()
{
  if (qword_2803DB4C8 != -1)
  {
    swift_once();
  }

  return &qword_2803DECE0;
}

uint64_t static SUUIStatefulErrorToken.Keys.requiredFreeDiskSpace.getter()
{
  v1 = *sub_26B0345F0();
  sub_26B078640();
  return v1;
}

double sub_26B034694()
{
  v2 = *MEMORY[0x277D64C38];
  MEMORY[0x277D82BE0](*MEMORY[0x277D64C38]);
  qword_2803DECF0 = sub_26B079E00();
  qword_2803DECF8 = v0;
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

uint64_t *sub_26B0346FC()
{
  if (qword_2803DB4D0 != -1)
  {
    swift_once();
  }

  return &qword_2803DECF0;
}

uint64_t static SUUIStatefulErrorToken.Keys.personalizationUpdateName.getter()
{
  v1 = *sub_26B0346FC();
  sub_26B078640();
  return v1;
}

uint64_t static SUUIStatefulErrorToken.personalizationUpdateName(_:)(uint64_t a1)
{
  v11 = 0;
  v12 = a1;
  sub_26B078640();
  if (a1)
  {
    v1 = sub_26B0346FC();
    v5 = *v1;
    v6 = v1[1];
    sub_26B078640();
    v8[0] = v5;
    v8[1] = v6;
    sub_26B079CC0();
    sub_26AE9BCC0(v8);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v10 = 0;
  }

  if (v10)
  {
    if (swift_dynamicCast())
    {
      return v8[2];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_26AED4660(v9);
    return 0;
  }
}

Swift::String __swiftcall SUUILocalizedString(_:comment:)(Swift::String _, Swift::String_optional comment)
{
  v15 = _;
  v14 = comment;
  sub_26B079D00("Localizable", 11, 1);
  v2 = sub_26B02D0D0();
  v10 = *v2;
  MEMORY[0x277D82BE0](*v2);
  sub_26B078640();
  v12 = comment;
  if (comment.value._object)
  {
    v13 = v12;
  }

  else
  {
    v13.value._countAndFlagsBits = sub_26B079D00("", 0, 1);
    v13.value._object = v3;
  }

  v8 = sub_26B078020();
  v9 = v4;

  MEMORY[0x277D82BD8](v10);

  v5 = v8;
  v6 = v9;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall SUUILocalizedString(_:value:comment:)(Swift::String _, Swift::String_optional value, Swift::String_optional comment)
{
  countAndFlagsBits = _._countAndFlagsBits;
  object = _._object;
  v22 = _;
  v21 = value;
  v20 = comment;
  sub_26B079D00("Localizable", 11, 1);
  v3 = sub_26B02D0D0();
  v13 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_26B078640();
  v18 = value;
  sub_26B078640();
  if (value.value._object)
  {
    v19 = v18;
  }

  else
  {
    sub_26B078640();
    v19.value._countAndFlagsBits = countAndFlagsBits;
    v19.value._object = object;
  }

  sub_26B078640();
  v16 = comment;
  if (comment.value._object)
  {
    v17 = v16;
  }

  else
  {
    v17.value._countAndFlagsBits = sub_26B079D00("", 0, 1);
    v17.value._object = v4;
  }

  v9 = sub_26B078020();
  v10 = v5;

  MEMORY[0x277D82BD8](v13);

  v6 = v9;
  v7 = v10;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

id sub_26B034E14()
{
  sub_26B0350A4();
  _s11LookupClassCMa();
  result = sub_26B035130();
  qword_2803DED00 = result;
  return result;
}

unint64_t sub_26B034E5C()
{
  v2 = qword_2803DED08;
  if (!qword_2803DED08)
  {
    type metadata accessor for SUUIStatefulErrorTokenType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DED08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B034EDC()
{
  v2 = qword_2803DED10;
  if (!qword_2803DED10)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DED10);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_26B034F40()
{
  v2 = qword_2803DED18;
  if (!qword_2803DED18)
  {
    sub_26B034EDC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DED18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B034FC0()
{
  v2 = qword_2803DED20;
  if (!qword_2803DED20)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DED20);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_26B035024()
{
  v2 = qword_2803DED28;
  if (!qword_2803DED28)
  {
    sub_26B034FC0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DED28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B0350A4()
{
  v2 = qword_2803DED30;
  if (!qword_2803DED30)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DED30);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_26B035130()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass_];

  return v0;
}

uint64_t static NSBundle.softwareUpdateUI.getter()
{
  v0 = sub_26B02D0D0();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

SoftwareUpdateUIKit::DeepLinkDestination_optional sub_26B03521C(uint64_t a1, void *a2)
{
  sub_26B078640();
  v2._countAndFlagsBits = a1;
  v2._object = a2;
  return DeepLinkDestination.init(rawValue:)(v2);
}

SoftwareUpdateUIKit::DeepLinkDestination_optional __swiftcall DeepLinkDestination.init(rawValue:)(Swift::String rawValue)
{
  v4 = v1;
  sub_26B07A760();
  *v2 = "SUAutomaticUpdateButton";
  *(v2 + 8) = 23;
  *(v2 + 16) = 2;
  *(v2 + 24) = "SUBetaUpdatesButton";
  *(v2 + 32) = 19;
  *(v2 + 40) = 2;
  *(v2 + 48) = "SUAlternativeUpdatesButton";
  *(v2 + 56) = 26;
  *(v2 + 64) = 2;
  sub_26AEA3B2C();
  v5 = sub_26B07A6B0();

  if (v5)
  {
    if (v5 == 1)
    {
      v6 = 1;
    }

    else
    {
      if (v5 != 2)
      {

        *v4 = 3;
        return result;
      }

      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  *v4 = v6;
}

uint64_t DeepLinkDestination.rawValue.getter()
{
  if (!*v0)
  {
    return sub_26B079D00("SUAutomaticUpdateButton", 23, 1);
  }

  if (*v0 == 1)
  {
    return sub_26B079D00("SUBetaUpdatesButton", 19, 1);
  }

  return sub_26B079D00("SUAlternativeUpdatesButton", 26, 1);
}

uint64_t sub_26B0355E4@<X0>(uint64_t *a1@<X8>)
{
  result = DeepLinkDestination.rawValue.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_26B03562C()
{
  v2 = qword_2803DED38;
  if (!qword_2803DED38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DED38);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for DeepLinkDestination(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DeepLinkDestination(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

double ReactiveAnalyticsReporter.submitButtonTap(_:)(uint64_t a1)
{
  v49 = a1;
  v43 = sub_26B037C00;
  v44 = sub_26B038384;
  v45 = sub_26B038308;
  v46 = sub_26B03833C;
  v47 = sub_26B0383D0;
  v63 = 0;
  v62 = 0;
  v48 = 0;
  v50 = sub_26B078580();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49);
  v54 = &v17 - v53;
  v63 = v2;
  v62 = v1;
  v55 = *(v1 + 16);
  swift_unknownObjectRetain();
  v61 = v55;
  v42 = v55 != 0;
  v41 = v42;
  sub_26AF03700(&v61);
  if (v41)
  {
    sub_26B078560();
    v30 = 7;
    v31 = swift_allocObject();
    *(v31 + 16) = v49;
    v39 = sub_26B078570();
    v40 = sub_26B07A2A0();
    v28 = 17;
    v33 = swift_allocObject();
    *(v33 + 16) = 34;
    v34 = swift_allocObject();
    *(v34 + 16) = 8;
    v29 = 32;
    v4 = swift_allocObject();
    v5 = v31;
    v32 = v4;
    *(v4 + 16) = v43;
    *(v4 + 24) = v5;
    v6 = swift_allocObject();
    v7 = v32;
    v36 = v6;
    *(v6 + 16) = v44;
    *(v6 + 24) = v7;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
    v35 = sub_26B07A760();
    v37 = v8;

    v9 = v33;
    v10 = v37;
    *v37 = v45;
    v10[1] = v9;

    v11 = v34;
    v12 = v37;
    v37[2] = v46;
    v12[3] = v11;

    v13 = v36;
    v14 = v37;
    v37[4] = v47;
    v14[5] = v13;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v39, v40))
    {
      v15 = v48;
      v21 = sub_26B07A420();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
      v22 = sub_26AEA3B70(0, v20, v20);
      v23 = sub_26AEA3B70(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v24 = &v60;
      v60 = v21;
      v25 = &v59;
      v59 = v22;
      v26 = &v58;
      v58 = v23;
      sub_26AEA3BC4(2, &v60);
      sub_26AEA3BC4(1, v24);
      v56 = v45;
      v57 = v33;
      sub_26AEA3BD8(&v56, v24, v25, v26);
      v27 = v15;
      if (v15)
      {

        __break(1u);
      }

      else
      {
        v56 = v46;
        v57 = v34;
        sub_26AEA3BD8(&v56, &v60, &v59, &v58);
        v19 = 0;
        v56 = v47;
        v57 = v36;
        sub_26AEA3BD8(&v56, &v60, &v59, &v58);
        _os_log_impl(&dword_26AE88000, v39, v40, "Reporting UI button tap: %{public}s", v21, 0xCu);
        sub_26AEA3C24(v22, 0, v20);
        sub_26AEA3C24(v23, 1, MEMORY[0x277D84F70] + 8);
        sub_26B07A400();
      }
    }

    else
    {
    }

    v16 = MEMORY[0x277D82BD8](v39);
    (*(v51 + 8))(v54, v50, v16);
    sub_26B0383DC();
    v18 = sub_26B037A70(v49);
    ReactiveAnalyticsReporter.submit(_:)(v18);
    *&result = MEMORY[0x277D82BD8](v18).n128_u64[0];
  }

  return result;
}

double ReactiveAnalyticsReporter.submitNavigation(_:)(uint64_t a1)
{
  v49 = a1;
  v43 = sub_26B03846C;
  v44 = sub_26B03851C;
  v45 = sub_26B0384A0;
  v46 = sub_26B0384D4;
  v47 = sub_26B038568;
  v63 = 0;
  v62 = 0;
  v48 = 0;
  v50 = sub_26B078580();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49);
  v54 = &v17 - v53;
  v63 = v2;
  v62 = v1;
  v55 = *(v1 + 16);
  swift_unknownObjectRetain();
  v61 = v55;
  v42 = v55 != 0;
  v41 = v42;
  sub_26AF03700(&v61);
  if (v41)
  {
    sub_26B078560();
    v30 = 7;
    v31 = swift_allocObject();
    *(v31 + 16) = v49;
    v39 = sub_26B078570();
    v40 = sub_26B07A2A0();
    v28 = 17;
    v33 = swift_allocObject();
    *(v33 + 16) = 34;
    v34 = swift_allocObject();
    *(v34 + 16) = 8;
    v29 = 32;
    v4 = swift_allocObject();
    v5 = v31;
    v32 = v4;
    *(v4 + 16) = v43;
    *(v4 + 24) = v5;
    v6 = swift_allocObject();
    v7 = v32;
    v36 = v6;
    *(v6 + 16) = v44;
    *(v6 + 24) = v7;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
    v35 = sub_26B07A760();
    v37 = v8;

    v9 = v33;
    v10 = v37;
    *v37 = v45;
    v10[1] = v9;

    v11 = v34;
    v12 = v37;
    v37[2] = v46;
    v12[3] = v11;

    v13 = v36;
    v14 = v37;
    v37[4] = v47;
    v14[5] = v13;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v39, v40))
    {
      v15 = v48;
      v21 = sub_26B07A420();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
      v22 = sub_26AEA3B70(0, v20, v20);
      v23 = sub_26AEA3B70(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v24 = &v60;
      v60 = v21;
      v25 = &v59;
      v59 = v22;
      v26 = &v58;
      v58 = v23;
      sub_26AEA3BC4(2, &v60);
      sub_26AEA3BC4(1, v24);
      v56 = v45;
      v57 = v33;
      sub_26AEA3BD8(&v56, v24, v25, v26);
      v27 = v15;
      if (v15)
      {

        __break(1u);
      }

      else
      {
        v56 = v46;
        v57 = v34;
        sub_26AEA3BD8(&v56, &v60, &v59, &v58);
        v19 = 0;
        v56 = v47;
        v57 = v36;
        sub_26AEA3BD8(&v56, &v60, &v59, &v58);
        _os_log_impl(&dword_26AE88000, v39, v40, "Reporting UI navigation: %{public}s", v21, 0xCu);
        sub_26AEA3C24(v22, 0, v20);
        sub_26AEA3C24(v23, 1, MEMORY[0x277D84F70] + 8);
        sub_26B07A400();
      }
    }

    else
    {
    }

    v16 = MEMORY[0x277D82BD8](v39);
    (*(v51 + 8))(v54, v50, v16);
    sub_26B0383DC();
    v18 = sub_26B037A70(v49);
    ReactiveAnalyticsReporter.submit(_:)(v18);
    *&result = MEMORY[0x277D82BD8](v18).n128_u64[0];
  }

  return result;
}

double ReactiveAnalyticsReporter.submitSwitchToggle(onType:offType:isOn:)(uint64_t a1, uint64_t a2, int a3)
{
  v78 = a1;
  v77 = a2;
  v76 = a3;
  v65 = sub_26B0385A0;
  v66 = sub_26B038688;
  v67 = sub_26B0385D4;
  v68 = sub_26B038788;
  v69 = sub_26B03860C;
  v70 = sub_26B038640;
  v71 = sub_26B0386D4;
  v72 = sub_26B03870C;
  v73 = sub_26B038740;
  v74 = sub_26B0387D4;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v90 = 0;
  v75 = 0;
  v79 = sub_26B078580();
  v80 = *(v79 - 8);
  v81 = v79 - 8;
  v82 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v78);
  v83 = v31 - v82;
  v95 = v4;
  v94 = v5;
  v93 = v6 & 1;
  v92 = v3;
  v84 = *(v3 + 16);
  swift_unknownObjectRetain();
  v91 = v84;
  v64 = v84 != 0;
  v63 = v64;
  sub_26AF03700(&v91);
  if (v63)
  {
    if (v76)
    {
      v62 = v78;
    }

    else
    {
      v62 = v77;
    }

    v41 = v62;
    v90 = v62;
    sub_26B078560();
    v48 = 7;
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    v45 = 17;
    v49 = swift_allocObject();
    *(v49 + 16) = v76;
    v60 = sub_26B078570();
    v61 = sub_26B07A2A0();
    v51 = swift_allocObject();
    v44 = 34;
    *(v51 + 16) = 34;
    v52 = swift_allocObject();
    v46 = 8;
    *(v52 + 16) = 8;
    v47 = 32;
    v8 = swift_allocObject();
    v9 = v42;
    v43 = v8;
    *(v8 + 16) = v65;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v43;
    v53 = v10;
    *(v10 + 16) = v66;
    *(v10 + 24) = v11;
    v54 = swift_allocObject();
    *(v54 + 16) = v44;
    v55 = swift_allocObject();
    *(v55 + 16) = v46;
    v12 = swift_allocObject();
    v13 = v49;
    v50 = v12;
    *(v12 + 16) = v67;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v50;
    v57 = v14;
    *(v14 + 16) = v68;
    *(v14 + 24) = v15;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
    v56 = sub_26B07A760();
    v58 = v16;

    v17 = v51;
    v18 = v58;
    *v58 = v69;
    v18[1] = v17;

    v19 = v52;
    v20 = v58;
    v58[2] = v70;
    v20[3] = v19;

    v21 = v53;
    v22 = v58;
    v58[4] = v71;
    v22[5] = v21;

    v23 = v54;
    v24 = v58;
    v58[6] = v72;
    v24[7] = v23;

    v25 = v55;
    v26 = v58;
    v58[8] = v73;
    v26[9] = v25;

    v27 = v57;
    v28 = v58;
    v58[10] = v74;
    v28[11] = v27;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v60, v61))
    {
      v29 = v75;
      v33 = sub_26B07A420();
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
      v34 = sub_26AEA3B70(0, v32, v32);
      v35 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v37 = &v89;
      v89 = v33;
      v38 = &v88;
      v88 = v34;
      v39 = &v87;
      v87 = v35;
      v36 = 2;
      sub_26AEA3BC4(2, &v89);
      sub_26AEA3BC4(v36, v37);
      v85 = v69;
      v86 = v51;
      sub_26AEA3BD8(&v85, v37, v38, v39);
      v40 = v29;
      if (v29)
      {

        __break(1u);
      }

      else
      {
        v85 = v70;
        v86 = v52;
        sub_26AEA3BD8(&v85, &v89, &v88, &v87);
        v31[4] = 0;
        v85 = v71;
        v86 = v53;
        sub_26AEA3BD8(&v85, &v89, &v88, &v87);
        v31[3] = 0;
        v85 = v72;
        v86 = v54;
        sub_26AEA3BD8(&v85, &v89, &v88, &v87);
        v31[2] = 0;
        v85 = v73;
        v86 = v55;
        sub_26AEA3BD8(&v85, &v89, &v88, &v87);
        v31[1] = 0;
        v85 = v74;
        v86 = v57;
        sub_26AEA3BD8(&v85, &v89, &v88, &v87);
        _os_log_impl(&dword_26AE88000, v60, v61, "Reporting UI toggle: %{public}s (%{public}s)", v33, 0x16u);
        sub_26AEA3C24(v34, 0, v32);
        sub_26AEA3C24(v35, 2, MEMORY[0x277D84F70] + 8);
        sub_26B07A400();
      }
    }

    else
    {
    }

    v30 = MEMORY[0x277D82BD8](v60);
    (*(v80 + 8))(v83, v79, v30);
    sub_26B0383DC();
    v31[0] = sub_26B037A70(v41);
    ReactiveAnalyticsReporter.submit(_:)(v31[0]);
    *&result = MEMORY[0x277D82BD8](v31[0]).n128_u64[0];
  }

  return result;
}

uint64_t sub_26B037224()
{
  v2 = *(v0 + 16);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t ReactiveAnalyticsReporter.init(representing:)(uint64_t a1)
{
  sub_26B078350();
  swift_unknownObjectRetain();
  *(v1 + 16) = a1;
  swift_unknownObjectRelease();
  return v4;
}

uint64_t ReactiveAnalyticsReporter.submit(_:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  result = swift_unknownObjectRetain();
  if (v4)
  {
    swift_getObjectType();
    [v4 submitAnalyticsEvent_];
    return swift_unknownObjectRelease();
  }

  return result;
}

double ReactiveAnalyticsReporter.submitUserInteraction(_:)(uint64_t a1)
{
  v49 = a1;
  v43 = sub_26B03880C;
  v44 = sub_26B0388BC;
  v45 = sub_26B038840;
  v46 = sub_26B038874;
  v47 = sub_26B038908;
  v63 = 0;
  v62 = 0;
  v48 = 0;
  v50 = sub_26B078580();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49);
  v54 = &v17 - v53;
  v63 = v2;
  v62 = v1;
  v55 = *(v1 + 16);
  swift_unknownObjectRetain();
  v61 = v55;
  v42 = v55 != 0;
  v41 = v42;
  sub_26AF03700(&v61);
  if (v41)
  {
    sub_26B078560();
    v30 = 7;
    v31 = swift_allocObject();
    *(v31 + 16) = v49;
    v39 = sub_26B078570();
    v40 = sub_26B07A2A0();
    v28 = 17;
    v33 = swift_allocObject();
    *(v33 + 16) = 34;
    v34 = swift_allocObject();
    *(v34 + 16) = 8;
    v29 = 32;
    v4 = swift_allocObject();
    v5 = v31;
    v32 = v4;
    *(v4 + 16) = v43;
    *(v4 + 24) = v5;
    v6 = swift_allocObject();
    v7 = v32;
    v36 = v6;
    *(v6 + 16) = v44;
    *(v6 + 24) = v7;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
    v35 = sub_26B07A760();
    v37 = v8;

    v9 = v33;
    v10 = v37;
    *v37 = v45;
    v10[1] = v9;

    v11 = v34;
    v12 = v37;
    v37[2] = v46;
    v12[3] = v11;

    v13 = v36;
    v14 = v37;
    v37[4] = v47;
    v14[5] = v13;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v39, v40))
    {
      v15 = v48;
      v21 = sub_26B07A420();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
      v22 = sub_26AEA3B70(0, v20, v20);
      v23 = sub_26AEA3B70(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v24 = &v60;
      v60 = v21;
      v25 = &v59;
      v59 = v22;
      v26 = &v58;
      v58 = v23;
      sub_26AEA3BC4(2, &v60);
      sub_26AEA3BC4(1, v24);
      v56 = v45;
      v57 = v33;
      sub_26AEA3BD8(&v56, v24, v25, v26);
      v27 = v15;
      if (v15)
      {

        __break(1u);
      }

      else
      {
        v56 = v46;
        v57 = v34;
        sub_26AEA3BD8(&v56, &v60, &v59, &v58);
        v19 = 0;
        v56 = v47;
        v57 = v36;
        sub_26AEA3BD8(&v56, &v60, &v59, &v58);
        _os_log_impl(&dword_26AE88000, v39, v40, "Reporting UI interaction: %{public}s", v21, 0xCu);
        sub_26AEA3C24(v22, 0, v20);
        sub_26AEA3C24(v23, 1, MEMORY[0x277D84F70] + 8);
        sub_26B07A400();
      }
    }

    else
    {
    }

    v16 = MEMORY[0x277D82BD8](v39);
    (*(v51 + 8))(v54, v50, v16);
    sub_26B0383DC();
    v18 = sub_26B037A70(v49);
    ReactiveAnalyticsReporter.submit(_:)(v18);
    *&result = MEMORY[0x277D82BD8](v18).n128_u64[0];
  }

  return result;
}

uint64_t sub_26B037A1C()
{
  v1 = SUUIAnalyticsEventInteractionTypeToString();
  v2 = sub_26B079E00();
  MEMORY[0x277D82BD8](v1);
  return v2;
}

uint64_t sub_26B037AB0()
{
  v1 = SUUIAnalyticsEventInteractionTypeToString();
  v2 = sub_26B079E00();
  MEMORY[0x277D82BD8](v1);
  return v2;
}

uint64_t sub_26B037B04(char a1)
{
  if (a1)
  {
    return sub_26B079D00("true", 4, 1);
  }

  else
  {
    return sub_26B079D00("false", 5, 1);
  }
}

uint64_t sub_26B037B80()
{
  v1 = SUUIAnalyticsEventInteractionTypeToString();
  v2 = sub_26B079E00();
  MEMORY[0x277D82BD8](v1);
  return v2;
}

uint64_t sub_26B037C08()
{
  v1 = SUUIAnalyticsEventInteractionTypeToString();
  v2 = sub_26B079E00();
  MEMORY[0x277D82BD8](v1);
  return v2;
}

uint64_t sub_26B037C5C@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC19SoftwareUpdateUIKit25ReactiveAnalyticsReporter___observationRegistrar;
  v2 = sub_26B078360();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_26B037CD0(void *a1)
{
  v7 = a1;
  v16 = 0;
  v14 = 0;
  v5 = *a1;
  v12 = sub_26B078360();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v1 = MEMORY[0x28223BE20](v7);
  v11 = &v5 - v2;
  v16 = v3;
  v15 = *(v5 + *MEMORY[0x277D84DE8] + 8);
  v14 = v6;
  (*(v9 + 16))(&v5 - v2, v6 + OBJC_IVAR____TtC19SoftwareUpdateUIKit25ReactiveAnalyticsReporter___observationRegistrar, v1);
  v8 = &v13;
  v13 = v6;
  sub_26B038914();
  sub_26B078320();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_26B037E40@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = a5;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v33 = a4;
  v14 = *a1;
  v12 = sub_26B078360();
  v15 = *(v12 - 8);
  v13 = v12 - 8;
  v5 = MEMORY[0x28223BE20](v19);
  v16 = v11 - v6;
  v32 = v7;
  v31 = *(v14 + *MEMORY[0x277D84DE8] + 8);
  v29 = v8;
  v30 = v21;
  v28 = v17;
  (*(v15 + 16))(v11 - v6, v17 + OBJC_IVAR____TtC19SoftwareUpdateUIKit25ReactiveAnalyticsReporter___observationRegistrar, v5);
  v24 = &v27;
  v27 = v17;
  sub_26B038914();
  v9 = v23;
  sub_26B078310();
  v25 = v9;
  v26 = v9;
  if (v9)
  {
    v11[1] = v26;
  }

  return (*(v15 + 8))(v16, v12);
}

uint64_t sub_26B0380E4(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v3 = sub_26B07A820();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3 & 1;
}

uint64_t ReactiveAnalyticsReporter.deinit()
{
  sub_26AF03700((v0 + 16));
  v3 = OBJC_IVAR____TtC19SoftwareUpdateUIKit25ReactiveAnalyticsReporter___observationRegistrar;
  v1 = sub_26B078360();
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

unint64_t sub_26B0383DC()
{
  v2 = qword_2803DED48;
  if (!qword_2803DED48)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DED48);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_26B038914()
{
  v2 = qword_2803DED60;
  if (!qword_2803DED60)
  {
    type metadata accessor for ReactiveAnalyticsReporter(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DED60);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for ReactiveAnalyticsReporter(uint64_t a1)
{
  v2 = qword_2803DED70;
  if (!qword_2803DED70)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_26B038A24(uint64_t a1)
{
  updated = sub_26B078360();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_26B038BC0@<X0>(void *a1@<X8>)
{
  v5[2] = a1;
  v8 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEDE0, &qword_26B091CC0);
  v5[0] = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v1 = (v5 - v5[0]);
  v7 = v5 - v5[0];
  v8 = v2;
  v3 = type metadata accessor for CapabilityViewModifier(0);
  sub_26B038D00((v5[1] + *(v3 + 20)), v1);
  sub_26B078A10();
  return sub_26B038DD4(v7);
}

uint64_t type metadata accessor for CapabilityViewModifier(uint64_t a1)
{
  v2 = qword_2803DEE20;
  if (!qword_2803DEE20)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void *sub_26B038D00(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEDE8, &qword_26B091CC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B078480();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_26B038DD4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEDE8, &qword_26B091CC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078480();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_26B038EB0(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v9 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEDE0, &qword_26B091CC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  v10 = v2;
  v9 = v1;
  sub_26B038D00(v2, (&v5 - v6));
  v3 = type metadata accessor for CapabilityViewModifier(0);
  sub_26B038F74(v7, (v1 + *(v3 + 20)));
  return sub_26B038DD4(v8);
}

void *sub_26B038F74(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_26B039060(a2);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEDE8, &qword_26B091CC8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_26B078480();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t sub_26B039060(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEDE8, &qword_26B091CC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078480();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t CapabilityViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v33 = a1;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEDF0, &qword_26B091CD0);
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  v25 = (v23[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v26 = &v12 - v25;
  v27 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v12 - v25);
  v28 = &v12 - v27;
  v53 = &v12 - v27;
  v29 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v30 = &v12 - v29;
  v52 = &v12 - v29;
  v45 = sub_26B078480();
  v41 = *(v45 - 8);
  v42 = v45 - 8;
  v31 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v43 = &v12 - v31;
  v32 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v12 - v31);
  v44 = &v12 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEDF8, &qword_26B091CD8);
  v36 = *(*(v34 - 8) + 64);
  v35 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v33);
  v37 = &v12 - v35;
  v38 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v39 = &v12 - v38;
  v51 = &v12 - v38;
  v50 = v8;
  v49 = v2;
  sub_26B038BC0(v9);
  (*(v41 + 16))(v43, v40, v45);
  sub_26B0396B0();
  v48 = sub_26B07A980();
  v47 = *(v41 + 8);
  v46 = v41 + 8;
  v47(v43, v45);
  v47(v44, v45);
  if (v48)
  {
    v18 = sub_26B039730();
    sub_26AE9463C(v33, v22, v30);
    v17 = v23[2];
    v16 = v23 + 2;
    v17(v26, v30, v22);
    sub_26AE94B4C(v26, v22, v28);
    v20 = v23[1];
    v19 = v23 + 1;
    v20(v26, v22);
    v17(v26, v28, v22);
    sub_26AE94BB0(v26, v22, MEMORY[0x277CE1428], v18, MEMORY[0x277CE1410], v37);
    v20(v26, v22);
    sub_26B0397B8(v37, v39);
    v20(v28, v22);
    v20(v30, v22);
  }

  else
  {
    sub_26B079B90();
    v13 = MEMORY[0x277CE1428];
    v14 = MEMORY[0x277CE1410];
    sub_26AE9463C(v15, MEMORY[0x277CE1428], v15);
    sub_26AE94B4C(v15, v13, v15);
    v10 = sub_26B039730();
    sub_26AE94CA8(v15, v22, v13, v10, v14, v37);
    sub_26B0397B8(v37, v39);
  }

  sub_26B039894(v39, v37);
  sub_26B039970();
  sub_26AE94B4C(v37, v34, v21);
  sub_26B039A14(v37);
  return sub_26B039A14(v39);
}

unint64_t sub_26B0396B0()
{
  v2 = qword_2803DEE00;
  if (!qword_2803DEE00)
  {
    sub_26B078480();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEE00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B039730()
{
  v2 = qword_2803DEE08;
  if (!qword_2803DEE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEDF0, &qword_26B091CD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEE08);
    return WitnessTable;
  }

  return v2;
}

void *sub_26B0397B8(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEE10, &qword_26B091CE0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEDF0, &qword_26B091CD0);
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

void *sub_26B039894(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEE10, &qword_26B091CE0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEDF0, &qword_26B091CD0);
    (*(*(v2 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

unint64_t sub_26B039970()
{
  v2 = qword_2803DEE18;
  if (!qword_2803DEE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEDF8, &qword_26B091CD8);
    sub_26B039730();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEE18);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B039A14(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEE10, &qword_26B091CE0);
  if (!swift_getEnumCaseMultiPayload())
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEDF0, &qword_26B091CD0);
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

void *sub_26B039B0C@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = sub_26B078480();
  (*(*(v3 - 8) + 32))(a3, a1);
  v4 = type metadata accessor for CapabilityViewModifier(0);
  return sub_26B03A48C(a2, (a3 + *(v4 + 20)));
}

uint64_t View.enabledIfCapabilitySupported(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a4;
  v15 = a1;
  v21 = a2;
  v23 = a3;
  v26 = 0;
  v25 = 0;
  v27 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEDE0, &qword_26B091CC0);
  v10 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v19 = &v10 - v10;
  v11 = 0;
  v14 = sub_26B078480();
  v17 = *(v14 - 8);
  v13 = v14 - 8;
  v12 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v18 = &v10 - v12;
  v22 = type metadata accessor for CapabilityViewModifier(v6);
  v16 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v18);
  v24 = &v10 - v16;
  v26 = v8;
  v25 = v4;
  (*(v17 + 16))(v7);
  sub_26B039AA8();
  sub_26B039B0C(v18, v19, v24);
  MEMORY[0x26D66C890](v24, v21, v22, v23);
  return sub_26B039DD0(v24);
}

uint64_t sub_26B039DD0(uint64_t a1)
{
  v2 = sub_26B078480();
  v3 = *(*(v2 - 8) + 8);
  v3(a1);
  v4 = *(type metadata accessor for CapabilityViewModifier(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEDE8, &qword_26B091CC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (v3)(a1 + v4, v2);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_26B039F18(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = sub_26B078480();
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEDE0, &qword_26B091CC0);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 20), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_26B03A0A0(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v9 = sub_26B078480();
  if (a3 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 56))(a1, a2, a2, v9);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEDE0, &qword_26B091CC0);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + *(a4 + 20), a2, a2, result);
  }

  __break(1u);
  return result;
}

unint64_t sub_26B03A200(uint64_t a1)
{
  v4 = sub_26B078480();
  if (v1 <= 0x3F)
  {
    v4 = sub_26B03A2CC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

unint64_t sub_26B03A2CC(uint64_t a1)
{
  v5 = qword_2803DEE30;
  if (!qword_2803DEE30)
  {
    sub_26B078480();
    v4 = sub_26B078A20();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_2803DEE30);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_26B03A380()
{
  type metadata accessor for CapabilityViewModifier(255);
  sub_26B078BF0();
  sub_26B03A40C();
  return swift_getWitnessTable();
}

unint64_t sub_26B03A40C()
{
  v2 = qword_2803DEE38;
  if (!qword_2803DEE38)
  {
    type metadata accessor for CapabilityViewModifier(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEE38);
    return WitnessTable;
  }

  return v2;
}

void *sub_26B03A48C(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEDE8, &qword_26B091CC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B078480();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

uint64_t ReactiveUIManager.presentedDialog.getter@<X0>(uint64_t *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_26B05601C(KeyPath);

  v4 = (v2 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__presentedDialog);
  swift_beginAccess();
  sub_26AE9FB6C(v4, a1);
  return swift_endAccess();
}

uint64_t ReactiveUIManager.presentedDialog.setter(__int128 *a1)
{
  v30 = &v37;
  v42 = 0;
  v21 = 0;
  v2 = *a1;
  v3 = a1[1];
  *(v44 + 9) = *(a1 + 25);
  v44[0] = v3;
  v43 = v2;
  v22 = v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__presentedDialog;
  v23 = &v41;
  swift_beginAccess();
  v24 = *v22;
  v25 = *(v22 + 8);
  v26 = *(v22 + 16);
  v27 = *(v22 + 24);
  v28 = *(v22 + 32);
  v29 = *(v22 + 40);
  sub_26AEF56C4(v24, v25, v26, v27, v28, v29);
  swift_endAccess();
  v39[0] = v24;
  v39[1] = v25;
  v39[2] = v26;
  v39[3] = v27;
  v39[4] = v28;
  v40 = v29;
  *(v38 + 9) = *(v44 + 9);
  v38[0] = v44[0];
  v37 = v43;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC5C8, &qword_26B089C58);
  v4 = sub_26AEF4560();
  v32 = v39;
  v33 = sub_26B05618C(v39, &v37, v31, v4);
  sub_26AEA007C(v39);
  if ((v33 & 1) == 0)
  {
    v11[1] = &v43;
    sub_26AE9FB6C(&v43, v36);
    v12 = (v20 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__presentedDialog);
    v13 = &v35;
    swift_beginAccess();
    sub_26B056B8C(&v43, v12);
    swift_endAccess();
    v14 = v21;
    return sub_26AEA007C(&v43);
  }

  v5 = v20;
  v6 = v21;
  KeyPath = swift_getKeyPath();
  v15 = KeyPath;

  v16 = &v43;
  sub_26AE9FB6C(&v43, v34);
  v18 = v11;
  MEMORY[0x28223BE20](KeyPath);
  v10[2] = v5;
  v10[3] = v7;
  sub_26B056288(v8, sub_26B056DE4, v10, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
  v19 = v6;
  if (!v6)
  {

    sub_26AEA007C(&v43);

    v14 = v19;
    return sub_26AEA007C(&v43);
  }

  result = sub_26AEA007C(&v43);
  __break(1u);
  return result;
}

uint64_t ReactiveUIManager.downloadAndInstall(_:delegate:)(uint64_t a1, uint64_t a2)
{
  v3[36] = v2;
  v3[35] = a2;
  v3[34] = a1;
  v3[25] = v3;
  v3[26] = 0;
  v3[27] = 0;
  v3[28] = 0;
  v3[23] = 0;
  v3[24] = 0;
  v3[33] = 0;
  v4 = sub_26B078580();
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[26] = a1;
  v3[27] = a2;
  v3[28] = v2;

  return MEMORY[0x2822009F8](sub_26B03AA04, 0, 0);
}

uint64_t sub_26B03AA04(uint64_t a1)
{
  v46 = v1;
  v22 = v1[36];
  v26 = v1[34];
  v1[25] = v1;
  sub_26B078540();

  v38 = sub_26B078570();
  v39 = sub_26B07A2A0();
  v28 = swift_allocObject();
  *(v28 + 16) = 32;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26B05E884;
  *(v23 + 24) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26B067564;
  *(v24 + 24) = v23;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_26B0675B0;
  *(v30 + 24) = v24;
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26B05E88C;
  *(v25 + 24) = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_26B0676B0;
  *(v33 + 24) = v25;
  v34 = swift_allocObject();
  *(v34 + 16) = 32;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_26B05E91C;
  *(v27 + 24) = v26;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_26B0677B0;
  *(v36 + 24) = v27;
  v1[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  sub_26B07A760();
  v37 = v2;

  *v37 = sub_26B0674E8;
  v37[1] = v28;

  v37[2] = sub_26B06751C;
  v37[3] = v29;

  v37[4] = sub_26B0675FC;
  v37[5] = v30;

  v37[6] = sub_26B067634;
  v37[7] = v31;

  v37[8] = sub_26B067668;
  v37[9] = v32;

  v37[10] = sub_26B0676FC;
  v37[11] = v33;

  v37[12] = sub_26B067734;
  v37[13] = v34;

  v37[14] = sub_26B067768;
  v37[15] = v35;

  v37[16] = sub_26B0677FC;
  v37[17] = v36;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v38, v39))
  {
    buf = sub_26B07A420();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v19 = sub_26AEA3B70(0, v17, v17);
    v20 = sub_26AEA3B70(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v41 = buf;
    v42 = v19;
    v43 = v20;
    sub_26AEA3BC4(2, &v41);
    sub_26AEA3BC4(3, &v41);
    v44 = sub_26B0674E8;
    v45 = v28;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B06751C;
    v45 = v29;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B0675FC;
    v45 = v30;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B067634;
    v45 = v31;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B067668;
    v45 = v32;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B0676FC;
    v45 = v33;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B067734;
    v45 = v34;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B067768;
    v45 = v35;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B0677FC;
    v45 = v36;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    _os_log_impl(&dword_26AE88000, v38, v39, "%s.%s: Initiating a Download and Install request for %s...", buf, 0x20u);
    sub_26AEA3C24(v19, 0, v17);
    sub_26AEA3C24(v20, 3, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  *(v21 + 336) = 0;
  v11 = *(v21 + 320);
  v12 = *(v21 + 296);
  v16 = *(v21 + 280);
  v13 = *(v21 + 272);
  v10 = *(v21 + 304);
  v3 = MEMORY[0x277D82BD8](v38);
  v4 = *(v10 + 8);
  *(v21 + 344) = v4;
  *(v21 + 352) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v11, v12, v3);
  v14 = ReactiveUIManager.statefulManager.getter();
  *(v21 + 360) = v14;
  v15 = *(v13 + 24);
  *(v21 + 368) = v15;
  MEMORY[0x277D82BE0](v15);
  swift_unknownObjectRetain();
  *(v21 + 232) = v16;

  if (*(v21 + 232))
  {
    v40 = *(v21 + 232);
  }

  else
  {
    v8 = *(v21 + 288);
    swift_beginAccess();
    v9 = *(v8 + 24);
    MEMORY[0x277D82BE0](v9);
    swift_endAccess();
    if (!v9)
    {
      return sub_26B07A650();
    }

    v40 = v9;
    if (*(v21 + 232))
    {
      sub_26B067808((v21 + 232));
    }
  }

  *(v21 + 376) = v40;
  sub_26AF4013C();
  v7 = sub_26B07A2E0();
  *(v21 + 384) = v7;
  *(v21 + 16) = *(v21 + 200);
  *(v21 + 56) = v21 + 168;
  *(v21 + 24) = sub_26B03B874;
  v6 = swift_continuation_init();
  *(v21 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEE50, &unk_26B091EB0);
  *(v21 + 112) = v6;
  *(v21 + 80) = MEMORY[0x277D85DD0];
  *(v21 + 88) = 1107296256;
  *(v21 + 92) = 0;
  *(v21 + 96) = sub_26B05E5E4;
  *(v21 + 104) = &block_descriptor_3;
  [v14 downloadAndInstall:v15 operationDelegate:v40 delegateCallbackQueue:v7 completionHandler:?];

  return MEMORY[0x282200938](v21 + 16);
}

uint64_t sub_26B03B874()
{
  *(*v0 + 200) = *v0;

  return MEMORY[0x2822009F8](sub_26B03B970, 0, 0);
}

uint64_t sub_26B03B970()
{
  v51 = v0;
  v19 = v0[48];
  v20 = v0[46];
  v1 = v0[45];
  v23 = v0[36];
  v27 = v0[34];
  v0[25] = v0;
  v21 = v0[21];
  v22 = v0[22];
  v0[23] = v21;
  v0[24] = v22;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v19);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v20);
  sub_26B078540();

  MEMORY[0x277D82BE0](v21);
  MEMORY[0x277D82BE0](v22);
  v29 = swift_allocObject();
  *(v29 + 16) = v21;
  *(v29 + 24) = v22;
  v44 = sub_26B078570();
  v45 = sub_26B07A2A0();
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26B067874;
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26B067990;
  *(v25 + 24) = v24;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_26B0679DC;
  *(v33 + 24) = v25;
  v34 = swift_allocObject();
  *(v34 + 16) = 32;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_26B05E950;
  *(v26 + 24) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_26B067ADC;
  *(v36 + 24) = v26;
  v37 = swift_allocObject();
  *(v37 + 16) = 32;
  v38 = swift_allocObject();
  *(v38 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_26B06787C;
  *(v28 + 24) = v27;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_26B067BDC;
  *(v39 + 24) = v28;
  v40 = swift_allocObject();
  *(v40 + 16) = 32;
  v41 = swift_allocObject();
  *(v41 + 16) = 8;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_26B0678DC;
  *(v30 + 24) = v29;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_26B067CDC;
  *(v42 + 24) = v30;
  sub_26B07A760();
  v43 = v2;

  *v43 = sub_26B067914;
  v43[1] = v31;

  v43[2] = sub_26B067948;
  v43[3] = v32;

  v43[4] = sub_26B067A28;
  v43[5] = v33;

  v43[6] = sub_26B067A60;
  v43[7] = v34;

  v43[8] = sub_26B067A94;
  v43[9] = v35;

  v43[10] = sub_26B067B28;
  v43[11] = v36;

  v43[12] = sub_26B067B60;
  v43[13] = v37;

  v43[14] = sub_26B067B94;
  v43[15] = v38;

  v43[16] = sub_26B067C28;
  v43[17] = v39;

  v43[18] = sub_26B067C60;
  v43[19] = v40;

  v43[20] = sub_26B067C94;
  v43[21] = v41;

  v43[22] = sub_26B067D28;
  v43[23] = v42;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v44, v45))
  {
    v3 = *(v18 + 336);
    buf = sub_26B07A420();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v16 = sub_26AEA3B70(0, v14, v14);
    v17 = sub_26AEA3B70(4, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v46 = buf;
    v47 = v16;
    v48 = v17;
    sub_26AEA3BC4(2, &v46);
    sub_26AEA3BC4(4, &v46);
    v49 = sub_26B067914;
    v50 = v31;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    if (v3)
    {
    }

    v49 = sub_26B067948;
    v50 = v32;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B067A28;
    v50 = v33;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B067A60;
    v50 = v34;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B067A94;
    v50 = v35;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B067B28;
    v50 = v36;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B067B60;
    v50 = v37;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B067B94;
    v50 = v38;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B067C28;
    v50 = v39;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B067C60;
    v50 = v40;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B067C94;
    v50 = v41;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B067D28;
    v50 = v42;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    _os_log_impl(&dword_26AE88000, v44, v45, "%s.%s: Finished to execute Download and Install request for %s with result: %s", buf, 0x2Au);
    sub_26AEA3C24(v16, 0, v14);
    sub_26AEA3C24(v17, 4, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  v12 = *(v18 + 344);
  v10 = *(v18 + 312);
  v11 = *(v18 + 296);
  v5 = MEMORY[0x277D82BD8](v44);
  v12(v10, v11, v5);
  MEMORY[0x277D82BE0](v21);
  MEMORY[0x277D82BE0](v22);
  if (v21)
  {
    *(v18 + 264) = v21;
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);

    v6 = v21;
    v7 = *(*(v18 + 200) + 8);
  }

  else
  {
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BE0](0);
    MEMORY[0x277D82BE0](v22);
    MEMORY[0x277D82BD8](0);
    if (v22)
    {
      v9 = v22;
    }

    else
    {
      v9 = 0;
    }

    *(v18 + 240) = v9;
    if (!*(v18 + 240))
    {
      type metadata accessor for SUUIError(0);
      *(v18 + 256) = -1;
      sub_26AE9B67C();
      sub_26B05E82C();
      sub_26B0780F0();
      v8 = *(v18 + 248);
      MEMORY[0x277D82BE0](v8);
      MEMORY[0x277D82BD8](v8);
      if (*(v18 + 240))
      {
        sub_26B067D34((v18 + 240));
      }
    }

    swift_willThrow();
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v22);

    v6 = v13;
    v7 = *(*(v18 + 200) + 8);
  }

  return v7(v6);
}

uint64_t ReactiveUIManager.downloadAndSchedule(_:delegate:)(uint64_t a1, uint64_t a2)
{
  v3[36] = v2;
  v3[35] = a2;
  v3[34] = a1;
  v3[25] = v3;
  v3[26] = 0;
  v3[27] = 0;
  v3[28] = 0;
  v3[23] = 0;
  v3[24] = 0;
  v3[33] = 0;
  v4 = sub_26B078580();
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[26] = a1;
  v3[27] = a2;
  v3[28] = v2;

  return MEMORY[0x2822009F8](sub_26B03CD64, 0, 0);
}

uint64_t sub_26B03CD64(uint64_t a1)
{
  v46 = v1;
  v22 = v1[36];
  v26 = v1[34];
  v1[25] = v1;
  sub_26B078540();

  v38 = sub_26B078570();
  v39 = sub_26B07A2A0();
  v28 = swift_allocObject();
  *(v28 + 16) = 32;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26B067D60;
  *(v23 + 24) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26B067E18;
  *(v24 + 24) = v23;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_26B067E64;
  *(v30 + 24) = v24;
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26B05ECF4;
  *(v25 + 24) = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_26B067F64;
  *(v33 + 24) = v25;
  v34 = swift_allocObject();
  *(v34 + 16) = 32;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_26B067D68;
  *(v27 + 24) = v26;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_26B068064;
  *(v36 + 24) = v27;
  v1[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  sub_26B07A760();
  v37 = v2;

  *v37 = sub_26B067D9C;
  v37[1] = v28;

  v37[2] = sub_26B067DD0;
  v37[3] = v29;

  v37[4] = sub_26B067EB0;
  v37[5] = v30;

  v37[6] = sub_26B067EE8;
  v37[7] = v31;

  v37[8] = sub_26B067F1C;
  v37[9] = v32;

  v37[10] = sub_26B067FB0;
  v37[11] = v33;

  v37[12] = sub_26B067FE8;
  v37[13] = v34;

  v37[14] = sub_26B06801C;
  v37[15] = v35;

  v37[16] = sub_26B0680B0;
  v37[17] = v36;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v38, v39))
  {
    buf = sub_26B07A420();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v19 = sub_26AEA3B70(0, v17, v17);
    v20 = sub_26AEA3B70(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v41 = buf;
    v42 = v19;
    v43 = v20;
    sub_26AEA3BC4(2, &v41);
    sub_26AEA3BC4(3, &v41);
    v44 = sub_26B067D9C;
    v45 = v28;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B067DD0;
    v45 = v29;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B067EB0;
    v45 = v30;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B067EE8;
    v45 = v31;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B067F1C;
    v45 = v32;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B067FB0;
    v45 = v33;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B067FE8;
    v45 = v34;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B06801C;
    v45 = v35;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B0680B0;
    v45 = v36;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    _os_log_impl(&dword_26AE88000, v38, v39, "%s.%s: Initiating a Download and Schedule request for %s...", buf, 0x20u);
    sub_26AEA3C24(v19, 0, v17);
    sub_26AEA3C24(v20, 3, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  *(v21 + 336) = 0;
  v11 = *(v21 + 320);
  v12 = *(v21 + 296);
  v16 = *(v21 + 280);
  v13 = *(v21 + 272);
  v10 = *(v21 + 304);
  v3 = MEMORY[0x277D82BD8](v38);
  v4 = *(v10 + 8);
  *(v21 + 344) = v4;
  *(v21 + 352) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v11, v12, v3);
  v14 = ReactiveUIManager.statefulManager.getter();
  *(v21 + 360) = v14;
  v15 = *(v13 + 24);
  *(v21 + 368) = v15;
  MEMORY[0x277D82BE0](v15);
  swift_unknownObjectRetain();
  *(v21 + 232) = v16;

  if (*(v21 + 232))
  {
    v40 = *(v21 + 232);
  }

  else
  {
    v8 = *(v21 + 288);
    swift_beginAccess();
    v9 = *(v8 + 24);
    MEMORY[0x277D82BE0](v9);
    swift_endAccess();
    if (!v9)
    {
      return sub_26B07A650();
    }

    v40 = v9;
    if (*(v21 + 232))
    {
      sub_26B067808((v21 + 232));
    }
  }

  *(v21 + 376) = v40;
  sub_26AF4013C();
  v7 = sub_26B07A2E0();
  *(v21 + 384) = v7;
  *(v21 + 16) = *(v21 + 200);
  *(v21 + 56) = v21 + 168;
  *(v21 + 24) = sub_26B03DBD4;
  v6 = swift_continuation_init();
  *(v21 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEE58, &qword_26B091EC8);
  *(v21 + 112) = v6;
  *(v21 + 80) = MEMORY[0x277D85DD0];
  *(v21 + 88) = 1107296256;
  *(v21 + 92) = 0;
  *(v21 + 96) = sub_26B05ED84;
  *(v21 + 104) = &block_descriptor_172;
  [v14 downloadAndScheduleUpdate:v15 operationDelegate:v40 delegateCallbackQueue:v7 completionHandler:?];

  return MEMORY[0x282200938](v21 + 16);
}

uint64_t sub_26B03DBD4()
{
  *(*v0 + 200) = *v0;

  return MEMORY[0x2822009F8](sub_26B03DCD0, 0, 0);
}

uint64_t sub_26B03DCD0()
{
  v41 = v0;
  v19 = v0[48];
  v20 = v0[46];
  v1 = v0[45];
  v23 = v0[34];
  v0[25] = v0;
  v21 = v0[21];
  v22 = v0[22];
  v0[23] = v21;
  v0[24] = v22;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v19);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v20);
  sub_26B078540();

  MEMORY[0x277D82BE0](v21);
  MEMORY[0x277D82BE0](v22);
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  *(v25 + 24) = v22;
  v34 = sub_26B078570();
  v35 = sub_26B07A2A0();
  v27 = swift_allocObject();
  *(v27 + 16) = 32;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26B0680FC;
  *(v24 + 24) = v23;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_26B068210;
  *(v29 + 24) = v24;
  v30 = swift_allocObject();
  *(v30 + 16) = 32;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_26B06815C;
  *(v26 + 24) = v25;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_26B068310;
  *(v32 + 24) = v26;
  sub_26B07A760();
  v33 = v2;

  *v33 = sub_26B068194;
  v33[1] = v27;

  v33[2] = sub_26B0681C8;
  v33[3] = v28;

  v33[4] = sub_26B06825C;
  v33[5] = v29;

  v33[6] = sub_26B068294;
  v33[7] = v30;

  v33[8] = sub_26B0682C8;
  v33[9] = v31;

  v33[10] = sub_26B06835C;
  v33[11] = v32;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v34, v35))
  {
    v3 = *(v18 + 336);
    buf = sub_26B07A420();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v16 = sub_26AEA3B70(0, v14, v14);
    v17 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v36 = buf;
    v37 = v16;
    v38 = v17;
    sub_26AEA3BC4(2, &v36);
    sub_26AEA3BC4(2, &v36);
    v39 = sub_26B068194;
    v40 = v27;
    sub_26AEA3BD8(&v39, &v36, &v37, &v38);
    if (v3)
    {
    }

    v39 = sub_26B0681C8;
    v40 = v28;
    sub_26AEA3BD8(&v39, &v36, &v37, &v38);
    v39 = sub_26B06825C;
    v40 = v29;
    sub_26AEA3BD8(&v39, &v36, &v37, &v38);
    v39 = sub_26B068294;
    v40 = v30;
    sub_26AEA3BD8(&v39, &v36, &v37, &v38);
    v39 = sub_26B0682C8;
    v40 = v31;
    sub_26AEA3BD8(&v39, &v36, &v37, &v38);
    v39 = sub_26B06835C;
    v40 = v32;
    sub_26AEA3BD8(&v39, &v36, &v37, &v38);
    _os_log_impl(&dword_26AE88000, v34, v35, "Finished to execute Download and Schedule request for %s with result: %s", buf, 0x16u);
    sub_26AEA3C24(v16, 0, v14);
    sub_26AEA3C24(v17, 2, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  v12 = *(v18 + 344);
  v10 = *(v18 + 312);
  v11 = *(v18 + 296);
  v5 = MEMORY[0x277D82BD8](v34);
  v12(v10, v11, v5);
  MEMORY[0x277D82BE0](v21);
  MEMORY[0x277D82BE0](v22);
  if (v21)
  {
    *(v18 + 264) = v21;
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);

    v6 = v21;
    v7 = *(*(v18 + 200) + 8);
  }

  else
  {
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BE0](0);
    MEMORY[0x277D82BE0](v22);
    MEMORY[0x277D82BD8](0);
    if (v22)
    {
      v9 = v22;
    }

    else
    {
      v9 = 0;
    }

    *(v18 + 240) = v9;
    if (!*(v18 + 240))
    {
      type metadata accessor for SUUIError(0);
      *(v18 + 256) = -1;
      sub_26AE9B67C();
      sub_26B05E82C();
      sub_26B0780F0();
      v8 = *(v18 + 248);
      MEMORY[0x277D82BE0](v8);
      MEMORY[0x277D82BD8](v8);
      if (*(v18 + 240))
      {
        sub_26B067D34((v18 + 240));
      }
    }

    swift_willThrow();
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v22);

    v6 = v13;
    v7 = *(*(v18 + 200) + 8);
  }

  return v7(v6);
}

uint64_t ReactiveUIManager.download(_:delegate:)(uint64_t a1, uint64_t a2)
{
  v3[36] = v2;
  v3[35] = a2;
  v3[34] = a1;
  v3[25] = v3;
  v3[26] = 0;
  v3[27] = 0;
  v3[28] = 0;
  v3[23] = 0;
  v3[24] = 0;
  v3[33] = 0;
  v4 = sub_26B078580();
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[26] = a1;
  v3[27] = a2;
  v3[28] = v2;

  return MEMORY[0x2822009F8](sub_26B03EAD8, 0, 0);
}

uint64_t sub_26B03EAD8(uint64_t a1)
{
  v46 = v1;
  v22 = v1[36];
  v26 = v1[34];
  v1[25] = v1;
  sub_26B078540();

  v38 = sub_26B078570();
  v39 = sub_26B07A2A0();
  v28 = swift_allocObject();
  *(v28 + 16) = 32;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26B068368;
  *(v23 + 24) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26B068420;
  *(v24 + 24) = v23;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_26B06846C;
  *(v30 + 24) = v24;
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26B05E554;
  *(v25 + 24) = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_26B06856C;
  *(v33 + 24) = v25;
  v34 = swift_allocObject();
  *(v34 + 16) = 32;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_26B068370;
  *(v27 + 24) = v26;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_26B06866C;
  *(v36 + 24) = v27;
  v1[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  sub_26B07A760();
  v37 = v2;

  *v37 = sub_26B0683A4;
  v37[1] = v28;

  v37[2] = sub_26B0683D8;
  v37[3] = v29;

  v37[4] = sub_26B0684B8;
  v37[5] = v30;

  v37[6] = sub_26B0684F0;
  v37[7] = v31;

  v37[8] = sub_26B068524;
  v37[9] = v32;

  v37[10] = sub_26B0685B8;
  v37[11] = v33;

  v37[12] = sub_26B0685F0;
  v37[13] = v34;

  v37[14] = sub_26B068624;
  v37[15] = v35;

  v37[16] = sub_26B0686B8;
  v37[17] = v36;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v38, v39))
  {
    buf = sub_26B07A420();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v19 = sub_26AEA3B70(0, v17, v17);
    v20 = sub_26AEA3B70(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v41 = buf;
    v42 = v19;
    v43 = v20;
    sub_26AEA3BC4(2, &v41);
    sub_26AEA3BC4(3, &v41);
    v44 = sub_26B0683A4;
    v45 = v28;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B0683D8;
    v45 = v29;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B0684B8;
    v45 = v30;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B0684F0;
    v45 = v31;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B068524;
    v45 = v32;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B0685B8;
    v45 = v33;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B0685F0;
    v45 = v34;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B068624;
    v45 = v35;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B0686B8;
    v45 = v36;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    _os_log_impl(&dword_26AE88000, v38, v39, "%s.%s: Initiating a Download Only request for %s...", buf, 0x20u);
    sub_26AEA3C24(v19, 0, v17);
    sub_26AEA3C24(v20, 3, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  *(v21 + 336) = 0;
  v11 = *(v21 + 320);
  v12 = *(v21 + 296);
  v16 = *(v21 + 280);
  v13 = *(v21 + 272);
  v10 = *(v21 + 304);
  v3 = MEMORY[0x277D82BD8](v38);
  v4 = *(v10 + 8);
  *(v21 + 344) = v4;
  *(v21 + 352) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v11, v12, v3);
  v14 = ReactiveUIManager.statefulManager.getter();
  *(v21 + 360) = v14;
  v15 = *(v13 + 24);
  *(v21 + 368) = v15;
  MEMORY[0x277D82BE0](v15);
  swift_unknownObjectRetain();
  *(v21 + 232) = v16;

  if (*(v21 + 232))
  {
    v40 = *(v21 + 232);
  }

  else
  {
    v8 = *(v21 + 288);
    swift_beginAccess();
    v9 = *(v8 + 24);
    MEMORY[0x277D82BE0](v9);
    swift_endAccess();
    if (!v9)
    {
      return sub_26B07A650();
    }

    v40 = v9;
    if (*(v21 + 232))
    {
      sub_26B067808((v21 + 232));
    }
  }

  *(v21 + 376) = v40;
  sub_26AF4013C();
  v7 = sub_26B07A2E0();
  *(v21 + 384) = v7;
  *(v21 + 16) = *(v21 + 200);
  *(v21 + 56) = v21 + 168;
  *(v21 + 24) = sub_26B03F948;
  v6 = swift_continuation_init();
  *(v21 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEE50, &unk_26B091EB0);
  *(v21 + 112) = v6;
  *(v21 + 80) = MEMORY[0x277D85DD0];
  *(v21 + 88) = 1107296256;
  *(v21 + 92) = 0;
  *(v21 + 96) = sub_26B05E5E4;
  *(v21 + 104) = &block_descriptor_263;
  [v14 downloadUpdate:v15 operationDelegate:v40 delegateCallbackQueue:v7 completionHandler:?];

  return MEMORY[0x282200938](v21 + 16);
}

uint64_t sub_26B03F948()
{
  *(*v0 + 200) = *v0;

  return MEMORY[0x2822009F8](sub_26B03FA44, 0, 0);
}

uint64_t sub_26B03FA44()
{
  v51 = v0;
  v19 = v0[48];
  v20 = v0[46];
  v1 = v0[45];
  v23 = v0[36];
  v27 = v0[34];
  v0[25] = v0;
  v21 = v0[21];
  v22 = v0[22];
  v0[23] = v21;
  v0[24] = v22;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v19);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v20);
  sub_26B078540();

  MEMORY[0x277D82BE0](v21);
  MEMORY[0x277D82BE0](v22);
  v29 = swift_allocObject();
  *(v29 + 16) = v21;
  *(v29 + 24) = v22;
  v44 = sub_26B078570();
  v45 = sub_26B07A2A0();
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26B068704;
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26B068820;
  *(v25 + 24) = v24;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_26B06886C;
  *(v33 + 24) = v25;
  v34 = swift_allocObject();
  *(v34 + 16) = 32;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_26B05E724;
  *(v26 + 24) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_26B06896C;
  *(v36 + 24) = v26;
  v37 = swift_allocObject();
  *(v37 + 16) = 32;
  v38 = swift_allocObject();
  *(v38 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_26B06870C;
  *(v28 + 24) = v27;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_26B068A6C;
  *(v39 + 24) = v28;
  v40 = swift_allocObject();
  *(v40 + 16) = 32;
  v41 = swift_allocObject();
  *(v41 + 16) = 8;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_26B06876C;
  *(v30 + 24) = v29;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_26B068B6C;
  *(v42 + 24) = v30;
  sub_26B07A760();
  v43 = v2;

  *v43 = sub_26B0687A4;
  v43[1] = v31;

  v43[2] = sub_26B0687D8;
  v43[3] = v32;

  v43[4] = sub_26B0688B8;
  v43[5] = v33;

  v43[6] = sub_26B0688F0;
  v43[7] = v34;

  v43[8] = sub_26B068924;
  v43[9] = v35;

  v43[10] = sub_26B0689B8;
  v43[11] = v36;

  v43[12] = sub_26B0689F0;
  v43[13] = v37;

  v43[14] = sub_26B068A24;
  v43[15] = v38;

  v43[16] = sub_26B068AB8;
  v43[17] = v39;

  v43[18] = sub_26B068AF0;
  v43[19] = v40;

  v43[20] = sub_26B068B24;
  v43[21] = v41;

  v43[22] = sub_26B068BB8;
  v43[23] = v42;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v44, v45))
  {
    v3 = *(v18 + 336);
    buf = sub_26B07A420();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v16 = sub_26AEA3B70(0, v14, v14);
    v17 = sub_26AEA3B70(4, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v46 = buf;
    v47 = v16;
    v48 = v17;
    sub_26AEA3BC4(2, &v46);
    sub_26AEA3BC4(4, &v46);
    v49 = sub_26B0687A4;
    v50 = v31;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    if (v3)
    {
    }

    v49 = sub_26B0687D8;
    v50 = v32;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B0688B8;
    v50 = v33;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B0688F0;
    v50 = v34;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B068924;
    v50 = v35;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B0689B8;
    v50 = v36;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B0689F0;
    v50 = v37;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B068A24;
    v50 = v38;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B068AB8;
    v50 = v39;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B068AF0;
    v50 = v40;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B068B24;
    v50 = v41;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B068BB8;
    v50 = v42;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    _os_log_impl(&dword_26AE88000, v44, v45, "%s.%s: Finished to execute Download Only request for %s with result: %s", buf, 0x2Au);
    sub_26AEA3C24(v16, 0, v14);
    sub_26AEA3C24(v17, 4, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  v12 = *(v18 + 344);
  v10 = *(v18 + 312);
  v11 = *(v18 + 296);
  v5 = MEMORY[0x277D82BD8](v44);
  v12(v10, v11, v5);
  MEMORY[0x277D82BE0](v21);
  MEMORY[0x277D82BE0](v22);
  if (v21)
  {
    *(v18 + 264) = v21;
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);

    v6 = v21;
    v7 = *(*(v18 + 200) + 8);
  }

  else
  {
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BE0](0);
    MEMORY[0x277D82BE0](v22);
    MEMORY[0x277D82BD8](0);
    if (v22)
    {
      v9 = v22;
    }

    else
    {
      v9 = 0;
    }

    *(v18 + 240) = v9;
    if (!*(v18 + 240))
    {
      type metadata accessor for SUUIError(0);
      *(v18 + 256) = -1;
      sub_26AE9B67C();
      sub_26B05E82C();
      sub_26B0780F0();
      v8 = *(v18 + 248);
      MEMORY[0x277D82BE0](v8);
      MEMORY[0x277D82BD8](v8);
      if (*(v18 + 240))
      {
        sub_26B067D34((v18 + 240));
      }
    }

    swift_willThrow();
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v22);

    v6 = v13;
    v7 = *(*(v18 + 200) + 8);
  }

  return v7(v6);
}

uint64_t ReactiveUIManager.install(_:delegate:)(uint64_t a1, uint64_t a2)
{
  v3[36] = v2;
  v3[35] = a2;
  v3[34] = a1;
  v3[25] = v3;
  v3[26] = 0;
  v3[27] = 0;
  v3[28] = 0;
  v3[23] = 0;
  v3[24] = 0;
  v3[33] = 0;
  v4 = sub_26B078580();
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[26] = a1;
  v3[27] = a2;
  v3[28] = v2;

  return MEMORY[0x2822009F8](sub_26B040E38, 0, 0);
}

uint64_t sub_26B040E38(uint64_t a1)
{
  v46 = v1;
  v22 = v1[36];
  v26 = v1[34];
  v1[25] = v1;
  sub_26B078540();

  v38 = sub_26B078570();
  v39 = sub_26B07A2A0();
  v28 = swift_allocObject();
  *(v28 + 16) = 32;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26B068BC4;
  *(v23 + 24) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26B068C7C;
  *(v24 + 24) = v23;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_26B068CC8;
  *(v30 + 24) = v24;
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26B05EF68;
  *(v25 + 24) = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_26B068DC8;
  *(v33 + 24) = v25;
  v34 = swift_allocObject();
  *(v34 + 16) = 32;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_26B068BCC;
  *(v27 + 24) = v26;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_26B068EC8;
  *(v36 + 24) = v27;
  v1[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  sub_26B07A760();
  v37 = v2;

  *v37 = sub_26B068C00;
  v37[1] = v28;

  v37[2] = sub_26B068C34;
  v37[3] = v29;

  v37[4] = sub_26B068D14;
  v37[5] = v30;

  v37[6] = sub_26B068D4C;
  v37[7] = v31;

  v37[8] = sub_26B068D80;
  v37[9] = v32;

  v37[10] = sub_26B068E14;
  v37[11] = v33;

  v37[12] = sub_26B068E4C;
  v37[13] = v34;

  v37[14] = sub_26B068E80;
  v37[15] = v35;

  v37[16] = sub_26B068F14;
  v37[17] = v36;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v38, v39))
  {
    buf = sub_26B07A420();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v19 = sub_26AEA3B70(0, v17, v17);
    v20 = sub_26AEA3B70(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v41 = buf;
    v42 = v19;
    v43 = v20;
    sub_26AEA3BC4(2, &v41);
    sub_26AEA3BC4(3, &v41);
    v44 = sub_26B068C00;
    v45 = v28;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B068C34;
    v45 = v29;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B068D14;
    v45 = v30;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B068D4C;
    v45 = v31;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B068D80;
    v45 = v32;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B068E14;
    v45 = v33;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B068E4C;
    v45 = v34;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B068E80;
    v45 = v35;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B068F14;
    v45 = v36;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    _os_log_impl(&dword_26AE88000, v38, v39, "%s.%s: Initiating a Install Now request for %s...", buf, 0x20u);
    sub_26AEA3C24(v19, 0, v17);
    sub_26AEA3C24(v20, 3, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  *(v21 + 336) = 0;
  v11 = *(v21 + 320);
  v12 = *(v21 + 296);
  v16 = *(v21 + 280);
  v13 = *(v21 + 272);
  v10 = *(v21 + 304);
  v3 = MEMORY[0x277D82BD8](v38);
  v4 = *(v10 + 8);
  *(v21 + 344) = v4;
  *(v21 + 352) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v11, v12, v3);
  v14 = ReactiveUIManager.statefulManager.getter();
  *(v21 + 360) = v14;
  v15 = *(v13 + 24);
  *(v21 + 368) = v15;
  MEMORY[0x277D82BE0](v15);
  swift_unknownObjectRetain();
  *(v21 + 232) = v16;

  if (*(v21 + 232))
  {
    v40 = *(v21 + 232);
  }

  else
  {
    v8 = *(v21 + 288);
    swift_beginAccess();
    v9 = *(v8 + 24);
    MEMORY[0x277D82BE0](v9);
    swift_endAccess();
    if (!v9)
    {
      return sub_26B07A650();
    }

    v40 = v9;
    if (*(v21 + 232))
    {
      sub_26B067808((v21 + 232));
    }
  }

  *(v21 + 376) = v40;
  sub_26AF4013C();
  v7 = sub_26B07A2E0();
  *(v21 + 384) = v7;
  *(v21 + 16) = *(v21 + 200);
  *(v21 + 56) = v21 + 168;
  *(v21 + 24) = sub_26B041CA8;
  v6 = swift_continuation_init();
  *(v21 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEE60, &qword_26B091EE0);
  *(v21 + 112) = v6;
  *(v21 + 80) = MEMORY[0x277D85DD0];
  *(v21 + 88) = 1107296256;
  *(v21 + 92) = 0;
  *(v21 + 96) = sub_26B05EFF8;
  *(v21 + 104) = &block_descriptor_390;
  [v14 installUpdate:v15 operationDelegate:v40 delegateCallbackQueue:v7 completionHandler:?];

  return MEMORY[0x282200938](v21 + 16);
}

uint64_t sub_26B041CA8()
{
  *(*v0 + 200) = *v0;

  return MEMORY[0x2822009F8](sub_26B041DA4, 0, 0);
}

uint64_t sub_26B041DA4()
{
  v51 = v0;
  v19 = v0[48];
  v20 = v0[46];
  v1 = v0[45];
  v23 = v0[36];
  v27 = v0[34];
  v0[25] = v0;
  v21 = v0[21];
  v22 = v0[22];
  v0[23] = v21;
  v0[24] = v22;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v19);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v20);
  sub_26B078540();

  MEMORY[0x277D82BE0](v21);
  MEMORY[0x277D82BE0](v22);
  v29 = swift_allocObject();
  *(v29 + 16) = v21;
  *(v29 + 24) = v22;
  v44 = sub_26B078570();
  v45 = sub_26B07A2A0();
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26B068F60;
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26B06907C;
  *(v25 + 24) = v24;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_26B0690C8;
  *(v33 + 24) = v25;
  v34 = swift_allocObject();
  *(v34 + 16) = 32;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_26B05F104;
  *(v26 + 24) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_26B0691C8;
  *(v36 + 24) = v26;
  v37 = swift_allocObject();
  *(v37 + 16) = 32;
  v38 = swift_allocObject();
  *(v38 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_26B068F68;
  *(v28 + 24) = v27;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_26B0692C8;
  *(v39 + 24) = v28;
  v40 = swift_allocObject();
  *(v40 + 16) = 32;
  v41 = swift_allocObject();
  *(v41 + 16) = 8;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_26B068FC8;
  *(v30 + 24) = v29;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_26B0693C8;
  *(v42 + 24) = v30;
  sub_26B07A760();
  v43 = v2;

  *v43 = sub_26B069000;
  v43[1] = v31;

  v43[2] = sub_26B069034;
  v43[3] = v32;

  v43[4] = sub_26B069114;
  v43[5] = v33;

  v43[6] = sub_26B06914C;
  v43[7] = v34;

  v43[8] = sub_26B069180;
  v43[9] = v35;

  v43[10] = sub_26B069214;
  v43[11] = v36;

  v43[12] = sub_26B06924C;
  v43[13] = v37;

  v43[14] = sub_26B069280;
  v43[15] = v38;

  v43[16] = sub_26B069314;
  v43[17] = v39;

  v43[18] = sub_26B06934C;
  v43[19] = v40;

  v43[20] = sub_26B069380;
  v43[21] = v41;

  v43[22] = sub_26B069414;
  v43[23] = v42;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v44, v45))
  {
    v3 = *(v18 + 336);
    buf = sub_26B07A420();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v16 = sub_26AEA3B70(0, v14, v14);
    v17 = sub_26AEA3B70(4, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v46 = buf;
    v47 = v16;
    v48 = v17;
    sub_26AEA3BC4(2, &v46);
    sub_26AEA3BC4(4, &v46);
    v49 = sub_26B069000;
    v50 = v31;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    if (v3)
    {
    }

    v49 = sub_26B069034;
    v50 = v32;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B069114;
    v50 = v33;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B06914C;
    v50 = v34;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B069180;
    v50 = v35;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B069214;
    v50 = v36;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B06924C;
    v50 = v37;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B069280;
    v50 = v38;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B069314;
    v50 = v39;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B06934C;
    v50 = v40;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B069380;
    v50 = v41;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B069414;
    v50 = v42;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    _os_log_impl(&dword_26AE88000, v44, v45, "%s.%s: Finished to execute Install Now request for %s with result: %s", buf, 0x2Au);
    sub_26AEA3C24(v16, 0, v14);
    sub_26AEA3C24(v17, 4, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  v12 = *(v18 + 344);
  v10 = *(v18 + 312);
  v11 = *(v18 + 296);
  v5 = MEMORY[0x277D82BD8](v44);
  v12(v10, v11, v5);
  MEMORY[0x277D82BE0](v21);
  MEMORY[0x277D82BE0](v22);
  if (v21)
  {
    *(v18 + 264) = v21;
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);

    v6 = v21;
    v7 = *(*(v18 + 200) + 8);
  }

  else
  {
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BE0](0);
    MEMORY[0x277D82BE0](v22);
    MEMORY[0x277D82BD8](0);
    if (v22)
    {
      v9 = v22;
    }

    else
    {
      v9 = 0;
    }

    *(v18 + 240) = v9;
    if (!*(v18 + 240))
    {
      type metadata accessor for SUUIError(0);
      *(v18 + 256) = -1;
      sub_26AE9B67C();
      sub_26B05E82C();
      sub_26B0780F0();
      v8 = *(v18 + 248);
      MEMORY[0x277D82BE0](v8);
      MEMORY[0x277D82BD8](v8);
      if (*(v18 + 240))
      {
        sub_26B067D34((v18 + 240));
      }
    }

    swift_willThrow();
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v22);

    v6 = v13;
    v7 = *(*(v18 + 200) + 8);
  }

  return v7(v6);
}

uint64_t ReactiveUIManager.schedule(_:delegate:)(uint64_t a1, uint64_t a2)
{
  v3[36] = v2;
  v3[35] = a2;
  v3[34] = a1;
  v3[25] = v3;
  v3[26] = 0;
  v3[27] = 0;
  v3[28] = 0;
  v3[23] = 0;
  v3[24] = 0;
  v3[33] = 0;
  v4 = sub_26B078580();
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[26] = a1;
  v3[27] = a2;
  v3[28] = v2;

  return MEMORY[0x2822009F8](sub_26B043198, 0, 0);
}

uint64_t sub_26B043198(uint64_t a1)
{
  v46 = v1;
  v22 = v1[36];
  v26 = v1[34];
  v1[25] = v1;
  sub_26B078540();

  v38 = sub_26B078570();
  v39 = sub_26B07A2A0();
  v28 = swift_allocObject();
  *(v28 + 16) = 32;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26B069420;
  *(v23 + 24) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26B0694D8;
  *(v24 + 24) = v23;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_26B069524;
  *(v30 + 24) = v24;
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26B05F238;
  *(v25 + 24) = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_26B069624;
  *(v33 + 24) = v25;
  v34 = swift_allocObject();
  *(v34 + 16) = 32;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_26B069428;
  *(v27 + 24) = v26;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_26B069724;
  *(v36 + 24) = v27;
  v1[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  sub_26B07A760();
  v37 = v2;

  *v37 = sub_26B06945C;
  v37[1] = v28;

  v37[2] = sub_26B069490;
  v37[3] = v29;

  v37[4] = sub_26B069570;
  v37[5] = v30;

  v37[6] = sub_26B0695A8;
  v37[7] = v31;

  v37[8] = sub_26B0695DC;
  v37[9] = v32;

  v37[10] = sub_26B069670;
  v37[11] = v33;

  v37[12] = sub_26B0696A8;
  v37[13] = v34;

  v37[14] = sub_26B0696DC;
  v37[15] = v35;

  v37[16] = sub_26B069770;
  v37[17] = v36;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v38, v39))
  {
    buf = sub_26B07A420();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v19 = sub_26AEA3B70(0, v17, v17);
    v20 = sub_26AEA3B70(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v41 = buf;
    v42 = v19;
    v43 = v20;
    sub_26AEA3BC4(2, &v41);
    sub_26AEA3BC4(3, &v41);
    v44 = sub_26B06945C;
    v45 = v28;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B069490;
    v45 = v29;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B069570;
    v45 = v30;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B0695A8;
    v45 = v31;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B0695DC;
    v45 = v32;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B069670;
    v45 = v33;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B0696A8;
    v45 = v34;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B0696DC;
    v45 = v35;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26B069770;
    v45 = v36;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    _os_log_impl(&dword_26AE88000, v38, v39, "%s.%s: Initiating a Install Tonight request for %s...", buf, 0x20u);
    sub_26AEA3C24(v19, 0, v17);
    sub_26AEA3C24(v20, 3, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  *(v21 + 336) = 0;
  v11 = *(v21 + 320);
  v12 = *(v21 + 296);
  v16 = *(v21 + 280);
  v13 = *(v21 + 272);
  v10 = *(v21 + 304);
  v3 = MEMORY[0x277D82BD8](v38);
  v4 = *(v10 + 8);
  *(v21 + 344) = v4;
  *(v21 + 352) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v11, v12, v3);
  v14 = ReactiveUIManager.statefulManager.getter();
  *(v21 + 360) = v14;
  v15 = *(v13 + 24);
  *(v21 + 368) = v15;
  MEMORY[0x277D82BE0](v15);
  swift_unknownObjectRetain();
  *(v21 + 232) = v16;

  if (*(v21 + 232))
  {
    v40 = *(v21 + 232);
  }

  else
  {
    v8 = *(v21 + 288);
    swift_beginAccess();
    v9 = *(v8 + 24);
    MEMORY[0x277D82BE0](v9);
    swift_endAccess();
    if (!v9)
    {
      return sub_26B07A650();
    }

    v40 = v9;
    if (*(v21 + 232))
    {
      sub_26B067808((v21 + 232));
    }
  }

  *(v21 + 376) = v40;
  sub_26AF4013C();
  v7 = sub_26B07A2E0();
  *(v21 + 384) = v7;
  *(v21 + 16) = *(v21 + 200);
  *(v21 + 56) = v21 + 168;
  *(v21 + 24) = sub_26B044008;
  v6 = swift_continuation_init();
  *(v21 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEE68, &qword_26B091EF0);
  *(v21 + 112) = v6;
  *(v21 + 80) = MEMORY[0x277D85DD0];
  *(v21 + 88) = 1107296256;
  *(v21 + 92) = 0;
  *(v21 + 96) = sub_26B05F2C8;
  *(v21 + 104) = &block_descriptor_517;
  [v14 scheduleUpdate:v15 operationDelegate:v40 delegateCallbackQueue:v7 completionHandler:?];

  return MEMORY[0x282200938](v21 + 16);
}

uint64_t sub_26B044008()
{
  *(*v0 + 200) = *v0;

  return MEMORY[0x2822009F8](sub_26B044104, 0, 0);
}

uint64_t sub_26B044104()
{
  v51 = v0;
  v19 = v0[48];
  v20 = v0[46];
  v1 = v0[45];
  v23 = v0[36];
  v27 = v0[34];
  v0[25] = v0;
  v21 = v0[21];
  v22 = v0[22];
  v0[23] = v21;
  v0[24] = v22;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v19);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v20);
  sub_26B078540();

  MEMORY[0x277D82BE0](v21);
  MEMORY[0x277D82BE0](v22);
  v29 = swift_allocObject();
  *(v29 + 16) = v21;
  *(v29 + 24) = v22;
  v44 = sub_26B078570();
  v45 = sub_26B07A2A0();
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26B0697BC;
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26B0698D8;
  *(v25 + 24) = v24;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_26B069924;
  *(v33 + 24) = v25;
  v34 = swift_allocObject();
  *(v34 + 16) = 32;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_26B05F3D4;
  *(v26 + 24) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_26B069A24;
  *(v36 + 24) = v26;
  v37 = swift_allocObject();
  *(v37 + 16) = 32;
  v38 = swift_allocObject();
  *(v38 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_26B0697C4;
  *(v28 + 24) = v27;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_26B069B24;
  *(v39 + 24) = v28;
  v40 = swift_allocObject();
  *(v40 + 16) = 32;
  v41 = swift_allocObject();
  *(v41 + 16) = 8;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_26B069824;
  *(v30 + 24) = v29;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_26B069C24;
  *(v42 + 24) = v30;
  sub_26B07A760();
  v43 = v2;

  *v43 = sub_26B06985C;
  v43[1] = v31;

  v43[2] = sub_26B069890;
  v43[3] = v32;

  v43[4] = sub_26B069970;
  v43[5] = v33;

  v43[6] = sub_26B0699A8;
  v43[7] = v34;

  v43[8] = sub_26B0699DC;
  v43[9] = v35;

  v43[10] = sub_26B069A70;
  v43[11] = v36;

  v43[12] = sub_26B069AA8;
  v43[13] = v37;

  v43[14] = sub_26B069ADC;
  v43[15] = v38;

  v43[16] = sub_26B069B70;
  v43[17] = v39;

  v43[18] = sub_26B069BA8;
  v43[19] = v40;

  v43[20] = sub_26B069BDC;
  v43[21] = v41;

  v43[22] = sub_26B069C70;
  v43[23] = v42;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v44, v45))
  {
    v3 = *(v18 + 336);
    buf = sub_26B07A420();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v16 = sub_26AEA3B70(0, v14, v14);
    v17 = sub_26AEA3B70(4, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v46 = buf;
    v47 = v16;
    v48 = v17;
    sub_26AEA3BC4(2, &v46);
    sub_26AEA3BC4(4, &v46);
    v49 = sub_26B06985C;
    v50 = v31;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    if (v3)
    {
    }

    v49 = sub_26B069890;
    v50 = v32;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B069970;
    v50 = v33;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B0699A8;
    v50 = v34;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B0699DC;
    v50 = v35;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B069A70;
    v50 = v36;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B069AA8;
    v50 = v37;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B069ADC;
    v50 = v38;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B069B70;
    v50 = v39;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B069BA8;
    v50 = v40;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B069BDC;
    v50 = v41;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    v49 = sub_26B069C70;
    v50 = v42;
    sub_26AEA3BD8(&v49, &v46, &v47, &v48);
    _os_log_impl(&dword_26AE88000, v44, v45, "%s.%s: Finished to execute Install Tonight request for %s with result: %s", buf, 0x2Au);
    sub_26AEA3C24(v16, 0, v14);
    sub_26AEA3C24(v17, 4, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  v12 = *(v18 + 344);
  v10 = *(v18 + 312);
  v11 = *(v18 + 296);
  v5 = MEMORY[0x277D82BD8](v44);
  v12(v10, v11, v5);
  MEMORY[0x277D82BE0](v21);
  MEMORY[0x277D82BE0](v22);
  if (v21)
  {
    *(v18 + 264) = v21;
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);

    v6 = v21;
    v7 = *(*(v18 + 200) + 8);
  }

  else
  {
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BE0](0);
    MEMORY[0x277D82BE0](v22);
    MEMORY[0x277D82BD8](0);
    if (v22)
    {
      v9 = v22;
    }

    else
    {
      v9 = 0;
    }

    *(v18 + 240) = v9;
    if (!*(v18 + 240))
    {
      type metadata accessor for SUUIError(0);
      *(v18 + 256) = -1;
      sub_26AE9B67C();
      sub_26B05E82C();
      sub_26B0780F0();
      v8 = *(v18 + 248);
      MEMORY[0x277D82BE0](v8);
      MEMORY[0x277D82BD8](v8);
      if (*(v18 + 240))
      {
        sub_26B067D34((v18 + 240));
      }
    }

    swift_willThrow();
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v22);

    v6 = v13;
    v7 = *(*(v18 + 200) + 8);
  }

  return v7(v6);
}

uint64_t ReactiveUIManager.statefulManager.getter()
{
  v17 = 0;
  v11 = sub_26B078360();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v17 = v6;
  (*(v8 + 16))(&v3 - v4, v6 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v0);
  v5 = &v16;
  v16 = v6;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078320();
  v1 = v6;

  (*(v8 + 8))(v10, v11);
  v12 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__statefulManager);
  v13 = &v15;
  swift_beginAccess();
  v14 = *v12;
  MEMORY[0x277D82BE0](v14);
  swift_endAccess();
  return v14;
}

id ReactiveUIManager.currentState.getter()
{
  v14 = 0;
  v10 = sub_26B078360();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v10);
  v9 = &v2 - v3;
  v14 = v5;
  (*(v7 + 16))(&v2 - v3, v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v0);
  v4 = &v13;
  v13 = v5;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078320();

  (*(v7 + 8))(v9, v10);
  v11 = ReactiveUIManager.statefulManager.getter();
  v12 = [v11 currentState];
  MEMORY[0x277D82BD8](v11);
  return v12;
}

Swift::Bool __swiftcall ReactiveUIManager.isPreferredUpdatePromotedAsAlternate()()
{
  v10 = v0;
  v7 = ReactiveUIManager.statefulManager.getter();
  v8 = [v7 isPreferredUpdatePromotedAsAlternate];
  MEMORY[0x277D82BD8](v7);

  if (v8)
  {
    v6 = ReactiveUIManager.statefulManager.getter();
    v9 = [v6 preferredStatefulDescriptor];
    if (v9)
    {
      v4 = v9;
      MEMORY[0x277D82BE0](v9);
      sub_26AEB7548(&v9);
      [v4 currentState];
      MEMORY[0x277D82BD8](v4);
      v5 = 0;
    }

    else
    {
      sub_26AEB7548(&v9);
      MEMORY[0x277D82BD8](v6);
      v5 = 1;
    }

    if (v5)
    {
      v3 = 0;
    }

    else
    {
      type metadata accessor for SUUIStatefulDescriptorState(0);
      sub_26AFE1DF4();
      v3 = sub_26B079D70();
    }

    v2 = v3;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t ReactiveUIManager.preferredDescriptor.getter()
{
  v17 = 0;
  v11 = sub_26B078360();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v17 = v6;
  (*(v8 + 16))(&v3 - v4, v6 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v0);
  v5 = &v16;
  v16 = v6;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078320();
  v1 = v6;

  (*(v8 + 8))(v10, v11);
  v12 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__preferredDescriptor);
  v13 = &v15;
  swift_beginAccess();
  v14 = *v12;

  swift_endAccess();
  return v14;
}

uint64_t ReactiveUIManager.alternateDescriptor.getter()
{
  v17 = 0;
  v11 = sub_26B078360();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v17 = v6;
  (*(v8 + 16))(&v3 - v4, v6 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v0);
  v5 = &v16;
  v16 = v6;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078320();
  v1 = v6;

  (*(v8 + 8))(v10, v11);
  v12 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__alternateDescriptor);
  v13 = &v15;
  swift_beginAccess();
  v14 = *v12;

  swift_endAccess();
  return v14;
}

id ReactiveUIManager.scanError.getter()
{
  v14 = 0;
  v10 = sub_26B078360();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v10);
  v9 = &v2 - v3;
  v14 = v5;
  (*(v7 + 16))(&v2 - v3, v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v0);
  v4 = &v13;
  v13 = v5;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078320();

  (*(v7 + 8))(v9, v10);
  v11 = ReactiveUIManager.statefulManager.getter();
  v12 = [v11 scanError];
  MEMORY[0x277D82BD8](v11);
  return v12;
}

uint64_t ReactiveUIManager.currentDownload.getter()
{
  v17 = 0;
  v11 = sub_26B078360();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v17 = v6;
  (*(v8 + 16))(&v3 - v4, v6 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v0);
  v5 = &v16;
  v16 = v6;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078320();
  v1 = v6;

  (*(v8 + 8))(v10, v11);
  v12 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__currentDownload);
  v13 = &v15;
  swift_beginAccess();
  v14 = *v12;

  swift_endAccess();
  return v14;
}

id ReactiveUIManager.ddmDeclaration.getter()
{
  v14 = 0;
  v10 = sub_26B078360();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v10);
  v9 = &v2 - v3;
  v14 = v5;
  (*(v7 + 16))(&v2 - v3, v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v0);
  v4 = &v13;
  v13 = v5;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078320();

  (*(v7 + 8))(v9, v10);
  v11 = ReactiveUIManager.statefulManager.getter();
  v12 = [v11 ddmDeclaration];
  MEMORY[0x277D82BD8](v11);
  return v12;
}

uint64_t ReactiveUIManager.presentingViewController.getter()
{
  KeyPath = swift_getKeyPath();
  sub_26B05601C(KeyPath);

  v3 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__presentingViewController);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x277D82BE0](*v3);
  swift_endAccess();
  return v4;
}

uint64_t ReactiveUIManager.canEnrollInBetaUpdates.getter()
{
  v17 = 0;
  v11 = sub_26B078360();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v17 = v6;
  (*(v8 + 16))(&v3 - v4, v6 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v0);
  v5 = &v16;
  v16 = v6;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078320();
  v1 = v6;

  (*(v8 + 8))(v10, v11);
  v12 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__canEnrollInBetaUpdates);
  v13 = &v15;
  swift_beginAccess();
  v14 = *v12;
  swift_endAccess();
  return v14 & 1;
}

uint64_t ReactiveUIManager.betaPrograms.getter()
{
  v17 = 0;
  v11 = sub_26B078360();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v17 = v6;
  (*(v8 + 16))(&v3 - v4, v6 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v0);
  v5 = &v16;
  v16 = v6;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078320();
  v1 = v6;

  (*(v8 + 8))(v10, v11);
  v12 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__betaPrograms);
  v13 = &v15;
  swift_beginAccess();
  v14 = *v12;
  sub_26B078640();
  swift_endAccess();
  return v14;
}

uint64_t ReactiveUIManager.enrolledBetaProgram.getter()
{
  v17 = 0;
  v11 = sub_26B078360();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v17 = v6;
  (*(v8 + 16))(&v3 - v4, v6 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v0);
  v5 = &v16;
  v16 = v6;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078320();
  v1 = v6;

  (*(v8 + 8))(v10, v11);
  v12 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__enrolledBetaProgram);
  v13 = &v15;
  swift_beginAccess();
  v14 = *v12;

  swift_endAccess();
  return v14;
}

void ReactiveUIManager.betaUpdatesRestrictions.getter(_BYTE *a1@<X8>)
{
  v11 = v1;
  v8 = ReactiveUIManager.statefulManager.getter();
  v9 = [v8 inLockdownMode];
  MEMORY[0x277D82BD8](v8);
  if (v9)
  {
    *a1 = 1;
  }

  else
  {
    v6 = ReactiveUIManager.statefulManager.getter();
    v10 = [v6 currentSeedingDevice];
    if (v10)
    {
      v3 = v10;
      MEMORY[0x277D82BE0](v10);
      sub_26B069E90(&v10);
      v4 = [v3 hasDeviceManagementRestriction];
      MEMORY[0x277D82BD8](v3);
      v5 = v4;
    }

    else
    {
      sub_26B069E90(&v10);
      MEMORY[0x277D82BD8](v6);
      v5 = 2;
    }

    if (v5 == 2)
    {
      v2 = 0;
    }

    else
    {
      v2 = v5;
    }

    if (v2)
    {
      *a1 = 2;
    }

    else
    {
      *a1 = 0;
    }
  }
}

uint64_t ReactiveUIManager.enrollInBetaUpdatesProgram(toProgram:)(uint64_t a1)
{
  v2[23] = v1;
  v2[22] = a1;
  v2[18] = v2;
  v2[19] = 0;
  v2[20] = 0;
  v3 = sub_26B078580();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[19] = a1;
  v2[20] = v1;

  return MEMORY[0x2822009F8](sub_26B046874, 0, 0);
}

uint64_t sub_26B046874(uint64_t a1)
{
  v41 = v1;
  v18 = v1[23];
  v22 = v1[22];
  v1[18] = v1;
  sub_26B078540();

  v34 = sub_26B078570();
  v35 = sub_26B07A2A0();
  v24 = swift_allocObject();
  *(v24 + 16) = 32;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_26B069EC4;
  *(v19 + 24) = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_26B069F7C;
  *(v20 + 24) = v19;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_26B069FC8;
  *(v26 + 24) = v20;
  v27 = swift_allocObject();
  *(v27 + 16) = 32;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_26B05FAD4;
  *(v21 + 24) = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_26B06A0C8;
  *(v29 + 24) = v21;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26B069ECC;
  *(v23 + 24) = v22;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_26B06A608;
  *(v32 + 24) = v23;
  v1[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  sub_26B07A760();
  v33 = v2;

  *v33 = sub_26B069F00;
  v33[1] = v24;

  v33[2] = sub_26B069F34;
  v33[3] = v25;

  v33[4] = sub_26B06A014;
  v33[5] = v26;

  v33[6] = sub_26B06A04C;
  v33[7] = v27;

  v33[8] = sub_26B06A080;
  v33[9] = v28;

  v33[10] = sub_26B06A114;
  v33[11] = v29;

  v33[12] = sub_26B06A14C;
  v33[13] = v30;

  v33[14] = sub_26B06A180;
  v33[15] = v31;

  v33[16] = sub_26B06A654;
  v33[17] = v32;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v34, v35))
  {
    buf = sub_26B07A420();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v15 = sub_26AEA3B70(0, v13, v13);
    v16 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v36 = buf;
    v37 = v15;
    v38 = v16;
    sub_26AEA3BC4(2, &v36);
    sub_26AEA3BC4(3, &v36);
    v39 = sub_26B069F00;
    v40 = v24;
    sub_26AEA3BD8(&v39, &v36, &v37, &v38);
    v39 = sub_26B069F34;
    v40 = v25;
    sub_26AEA3BD8(&v39, &v36, &v37, &v38);
    v39 = sub_26B06A014;
    v40 = v26;
    sub_26AEA3BD8(&v39, &v36, &v37, &v38);
    v39 = sub_26B06A04C;
    v40 = v27;
    sub_26AEA3BD8(&v39, &v36, &v37, &v38);
    v39 = sub_26B06A080;
    v40 = v28;
    sub_26AEA3BD8(&v39, &v36, &v37, &v38);
    v39 = sub_26B06A114;
    v40 = v29;
    sub_26AEA3BD8(&v39, &v36, &v37, &v38);
    v39 = sub_26B06A14C;
    v40 = v30;
    sub_26AEA3BD8(&v39, &v36, &v37, &v38);
    v39 = sub_26B06A180;
    v40 = v31;
    sub_26AEA3BD8(&v39, &v36, &v37, &v38);
    v39 = sub_26B06A654;
    v40 = v32;
    sub_26AEA3BD8(&v39, &v36, &v37, &v38);
    _os_log_impl(&dword_26AE88000, v34, v35, "%s.%s: Initiating a request to enroll into a beta program %ld", buf, 0x20u);
    sub_26AEA3C24(v15, 0, v13);
    sub_26AEA3C24(v16, 2, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  *(v17 + 232) = 0;
  v7 = *(v17 + 216);
  v8 = *(v17 + 192);
  v9 = *(v17 + 176);
  v6 = *(v17 + 200);
  v3 = MEMORY[0x277D82BD8](v34);
  v4 = *(v6 + 8);
  *(v17 + 240) = v4;
  *(v17 + 248) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v7, v8, v3);
  v12 = ReactiveUIManager.statefulManager.getter();
  *(v17 + 256) = v12;
  v11 = *(v9 + 16);
  *(v17 + 264) = v11;
  MEMORY[0x277D82BE0](v11);
  *(v17 + 16) = *(v17 + 144);
  *(v17 + 56) = v17 + 168;
  *(v17 + 24) = sub_26B0474A8;
  v10 = swift_continuation_init();
  *(v17 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEED0, &qword_26B0920B8);
  *(v17 + 112) = v10;
  *(v17 + 80) = MEMORY[0x277D85DD0];
  *(v17 + 88) = 1107296256;
  *(v17 + 92) = 0;
  *(v17 + 96) = sub_26B05FB58;
  *(v17 + 104) = &block_descriptor_676;
  [v12 enrollInBetaUpdatesProgram:v11 completionHandler:?];

  return MEMORY[0x282200938](v17 + 16);
}

uint64_t sub_26B0474A8()
{
  v4 = *v0;
  v4[18] = *v0;
  v1 = v4[6];
  v4[34] = v1;
  if (v1)
  {
    v2 = sub_26B04815C;
  }

  else
  {
    v2 = sub_26B047600;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26B047600()
{
  v39 = v0;
  v15 = v0[33];
  v14 = v0[32];
  v16 = v0[23];
  v20 = v0[22];
  v0[18] = v0;
  MEMORY[0x277D82BD8](v0[21]);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  sub_26B078540();

  v32 = sub_26B078570();
  v33 = sub_26B07A2A0();
  v22 = swift_allocObject();
  *(v22 + 16) = 32;
  v23 = swift_allocObject();
  *(v23 + 16) = 8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_26B06A708;
  *(v17 + 24) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_26B06A7C0;
  *(v18 + 24) = v17;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26B06A80C;
  *(v24 + 24) = v18;
  v25 = swift_allocObject();
  *(v25 + 16) = 32;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_26B05FCBC;
  *(v19 + 24) = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_26B06A90C;
  *(v27 + 24) = v19;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_26B06A710;
  *(v21 + 24) = v20;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_26B06AA0C;
  *(v30 + 24) = v21;
  sub_26B07A760();
  v31 = v1;

  *v31 = sub_26B06A744;
  v31[1] = v22;

  v31[2] = sub_26B06A778;
  v31[3] = v23;

  v31[4] = sub_26B06A858;
  v31[5] = v24;

  v31[6] = sub_26B06A890;
  v31[7] = v25;

  v31[8] = sub_26B06A8C4;
  v31[9] = v26;

  v31[10] = sub_26B06A958;
  v31[11] = v27;

  v31[12] = sub_26B06A990;
  v31[13] = v28;

  v31[14] = sub_26B06A9C4;
  v31[15] = v29;

  v31[16] = sub_26B06AA58;
  v31[17] = v30;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v32, v33))
  {
    v2 = v13[29];
    buf = sub_26B07A420();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v11 = sub_26AEA3B70(0, v9, v9);
    v12 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v34 = buf;
    v35 = v11;
    v36 = v12;
    sub_26AEA3BC4(2, &v34);
    sub_26AEA3BC4(3, &v34);
    v37 = sub_26B06A744;
    v38 = v22;
    sub_26AEA3BD8(&v37, &v34, &v35, &v36);
    if (v2)
    {
    }

    v37 = sub_26B06A778;
    v38 = v23;
    sub_26AEA3BD8(&v37, &v34, &v35, &v36);
    v37 = sub_26B06A858;
    v38 = v24;
    sub_26AEA3BD8(&v37, &v34, &v35, &v36);
    v37 = sub_26B06A890;
    v38 = v25;
    sub_26AEA3BD8(&v37, &v34, &v35, &v36);
    v37 = sub_26B06A8C4;
    v38 = v26;
    sub_26AEA3BD8(&v37, &v34, &v35, &v36);
    v37 = sub_26B06A958;
    v38 = v27;
    sub_26AEA3BD8(&v37, &v34, &v35, &v36);
    v37 = sub_26B06A990;
    v38 = v28;
    sub_26AEA3BD8(&v37, &v34, &v35, &v36);
    v37 = sub_26B06A9C4;
    v38 = v29;
    sub_26AEA3BD8(&v37, &v34, &v35, &v36);
    v37 = sub_26B06AA58;
    v38 = v30;
    sub_26AEA3BD8(&v37, &v34, &v35, &v36);
    _os_log_impl(&dword_26AE88000, v32, v33, "%s.%s: Finished to execute a request to enroll into a beta program %ld", buf, 0x20u);
    sub_26AEA3C24(v11, 0, v9);
    sub_26AEA3C24(v12, 2, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  v7 = v13[30];
  v8 = v13[26];
  v6 = v13[24];
  v4 = MEMORY[0x277D82BD8](v32);
  v7(v8, v6, v4);

  v5 = *(v13[18] + 8);

  return v5();
}

uint64_t sub_26B04815C(__n128 a1)
{
  v5 = v1[33];
  v4 = v1[32];
  v1[18] = v1;
  swift_willThrow();
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  v2 = *(v1[18] + 8);

  return v2();
}

uint64_t ReactiveUIManager.unenrollFromBetaUpdates()()
{
  *(v1 + 160) = v0;
  *(v1 + 144) = v1;
  *(v1 + 152) = 0;
  *(v1 + 240) = 0;
  v2 = sub_26B078580();
  *(v1 + 168) = v2;
  *(v1 + 176) = *(v2 - 8);
  *(v1 + 184) = swift_task_alloc();
  *(v1 + 192) = swift_task_alloc();
  *(v1 + 152) = v0;

  return MEMORY[0x2822009F8](sub_26B048364, 0, 0);
}

uint64_t sub_26B048364(uint64_t a1)
{
  v34 = v1;
  v16 = v1[20];
  v1[18] = v1;
  sub_26B078540();

  v27 = sub_26B078570();
  v28 = sub_26B07A2A0();
  v20 = swift_allocObject();
  *(v20 + 16) = 32;
  v21 = swift_allocObject();
  *(v21 + 16) = 8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_26B06AACC;
  *(v17 + 24) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_26B06AB7C;
  *(v18 + 24) = v17;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26B06ABC8;
  *(v22 + 24) = v18;
  v23 = swift_allocObject();
  *(v23 + 16) = 32;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_26B05FD6C;
  *(v19 + 24) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26B06ACC8;
  *(v25 + 24) = v19;
  v1[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  sub_26B07A760();
  v26 = v2;

  *v26 = sub_26B06AB00;
  v26[1] = v20;

  v26[2] = sub_26B06AB34;
  v26[3] = v21;

  v26[4] = sub_26B06AC14;
  v26[5] = v22;

  v26[6] = sub_26B06AC4C;
  v26[7] = v23;

  v26[8] = sub_26B06AC80;
  v26[9] = v24;

  v26[10] = sub_26B06AD14;
  v26[11] = v25;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v27, v28))
  {
    buf = sub_26B07A420();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v13 = sub_26AEA3B70(0, v11, v11);
    v14 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v29 = buf;
    v30 = v13;
    v31 = v14;
    sub_26AEA3BC4(2, &v29);
    sub_26AEA3BC4(2, &v29);
    v32 = sub_26B06AB00;
    v33 = v20;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    v32 = sub_26B06AB34;
    v33 = v21;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    v32 = sub_26B06AC14;
    v33 = v22;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    v32 = sub_26B06AC4C;
    v33 = v23;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    v32 = sub_26B06AC80;
    v33 = v24;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    v32 = sub_26B06AD14;
    v33 = v25;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    _os_log_impl(&dword_26AE88000, v27, v28, "%s.%s: Initiating a request to unenroll from beta updates", buf, 0x16u);
    sub_26AEA3C24(v13, 0, v11);
    sub_26AEA3C24(v14, 2, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  *(v15 + 208) = 0;
  v7 = *(v15 + 192);
  v8 = *(v15 + 168);
  v6 = *(v15 + 176);
  v3 = MEMORY[0x277D82BD8](v27);
  v4 = *(v6 + 8);
  *(v15 + 216) = v4;
  *(v15 + 224) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v7, v8, v3);
  v10 = ReactiveUIManager.statefulManager.getter();
  *(v15 + 232) = v10;
  *(v15 + 16) = *(v15 + 144);
  *(v15 + 56) = v15 + 241;
  *(v15 + 24) = sub_26B048C7C;
  v9 = swift_continuation_init();
  *(v15 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEED8, &qword_26B0920C8);
  *(v15 + 112) = v9;
  *(v15 + 80) = MEMORY[0x277D85DD0];
  *(v15 + 88) = 1107296256;
  *(v15 + 92) = 0;
  *(v15 + 96) = sub_26B05FD9C;
  *(v15 + 104) = &block_descriptor_768;
  [v10 unenrollFromBetaUpdatesWithCompletion_];

  return MEMORY[0x282200938](v15 + 16);
}

uint64_t sub_26B048C7C()
{
  *(*v0 + 144) = *v0;

  return MEMORY[0x2822009F8](sub_26B048D78, 0, 0);
}

uint64_t sub_26B048D78()
{
  v34 = v0;
  v1 = *(v0 + 232);
  v16 = *(v0 + 160);
  *(v0 + 144) = v0;
  v15 = *(v0 + 241);
  *(v0 + 240) = v15 & 1;
  MEMORY[0x277D82BD8](v1);
  sub_26B078540();

  v27 = sub_26B078570();
  v28 = sub_26B07A2A0();
  v20 = swift_allocObject();
  *(v20 + 16) = 32;
  v21 = swift_allocObject();
  *(v21 + 16) = 8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_26B06AD60;
  *(v17 + 24) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_26B06AE10;
  *(v18 + 24) = v17;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26B06AE5C;
  *(v22 + 24) = v18;
  v23 = swift_allocObject();
  *(v23 + 16) = 32;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_26B05FE10;
  *(v19 + 24) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26B06AF5C;
  *(v25 + 24) = v19;
  sub_26B07A760();
  v26 = v2;

  *v26 = sub_26B06AD94;
  v26[1] = v20;

  v26[2] = sub_26B06ADC8;
  v26[3] = v21;

  v26[4] = sub_26B06AEA8;
  v26[5] = v22;

  v26[6] = sub_26B06AEE0;
  v26[7] = v23;

  v26[8] = sub_26B06AF14;
  v26[9] = v24;

  v26[10] = sub_26B06AFA8;
  v26[11] = v25;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v27, v28))
  {
    v3 = v14[26];
    buf = sub_26B07A420();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v12 = sub_26AEA3B70(0, v10, v10);
    v13 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v29 = buf;
    v30 = v12;
    v31 = v13;
    sub_26AEA3BC4(2, &v29);
    sub_26AEA3BC4(2, &v29);
    v32 = sub_26B06AD94;
    v33 = v20;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    if (v3)
    {
    }

    v32 = sub_26B06ADC8;
    v33 = v21;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    v32 = sub_26B06AEA8;
    v33 = v22;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    v32 = sub_26B06AEE0;
    v33 = v23;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    v32 = sub_26B06AF14;
    v33 = v24;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    v32 = sub_26B06AFA8;
    v33 = v25;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    _os_log_impl(&dword_26AE88000, v27, v28, "%s.%s: Finished to execute a request to unenroll from beta updates", buf, 0x16u);
    sub_26AEA3C24(v12, 0, v10);
    sub_26AEA3C24(v13, 2, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  v8 = v14[27];
  v9 = v14[23];
  v7 = v14[21];
  v5 = MEMORY[0x277D82BD8](v27);
  v8(v9, v7, v5);

  v6 = *(v14[18] + 8);

  return v6(v15 & 1);
}

uint64_t ReactiveUIManager.refreshBetaUpdates()()
{
  v1[22] = v0;
  v1[18] = v1;
  v1[19] = 0;
  v1[21] = 0;
  v2 = sub_26B078580();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[19] = v0;

  return MEMORY[0x2822009F8](sub_26B04972C, 0, 0);
}

uint64_t sub_26B04972C(uint64_t a1)
{
  v34 = v1;
  v16 = v1[22];
  v1[18] = v1;
  sub_26B078540();

  v27 = sub_26B078570();
  v28 = sub_26B07A2A0();
  v20 = swift_allocObject();
  *(v20 + 16) = 32;
  v21 = swift_allocObject();
  *(v21 + 16) = 8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_26B06AFB4;
  *(v17 + 24) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_26B06B064;
  *(v18 + 24) = v17;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26B06B0B0;
  *(v22 + 24) = v18;
  v23 = swift_allocObject();
  *(v23 + 16) = 32;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_26B05FE6C;
  *(v19 + 24) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26B06B1B0;
  *(v25 + 24) = v19;
  v1[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  sub_26B07A760();
  v26 = v2;

  *v26 = sub_26B06AFE8;
  v26[1] = v20;

  v26[2] = sub_26B06B01C;
  v26[3] = v21;

  v26[4] = sub_26B06B0FC;
  v26[5] = v22;

  v26[6] = sub_26B06B134;
  v26[7] = v23;

  v26[8] = sub_26B06B168;
  v26[9] = v24;

  v26[10] = sub_26B06B1FC;
  v26[11] = v25;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v27, v28))
  {
    buf = sub_26B07A420();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v13 = sub_26AEA3B70(0, v11, v11);
    v14 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v29 = buf;
    v30 = v13;
    v31 = v14;
    sub_26AEA3BC4(2, &v29);
    sub_26AEA3BC4(2, &v29);
    v32 = sub_26B06AFE8;
    v33 = v20;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    v32 = sub_26B06B01C;
    v33 = v21;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    v32 = sub_26B06B0FC;
    v33 = v22;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    v32 = sub_26B06B134;
    v33 = v23;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    v32 = sub_26B06B168;
    v33 = v24;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    v32 = sub_26B06B1FC;
    v33 = v25;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    _os_log_impl(&dword_26AE88000, v27, v28, "%s.%s: Initiating a request to refresh the current beta updates", buf, 0x16u);
    sub_26AEA3C24(v13, 0, v11);
    sub_26AEA3C24(v14, 2, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  *(v15 + 224) = 0;
  v7 = *(v15 + 208);
  v8 = *(v15 + 184);
  v6 = *(v15 + 192);
  v3 = MEMORY[0x277D82BD8](v27);
  v4 = *(v6 + 8);
  *(v15 + 232) = v4;
  *(v15 + 240) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v7, v8, v3);
  v10 = ReactiveUIManager.statefulManager.getter();
  *(v15 + 248) = v10;
  *(v15 + 16) = *(v15 + 144);
  *(v15 + 56) = v15 + 160;
  *(v15 + 24) = sub_26B04A048;
  v9 = swift_continuation_init();
  *(v15 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DEEE0, &qword_26B0920D8);
  *(v15 + 112) = v9;
  *(v15 + 80) = MEMORY[0x277D85DD0];
  *(v15 + 88) = 1107296256;
  *(v15 + 92) = 0;
  *(v15 + 96) = sub_26B05FE9C;
  *(v15 + 104) = &block_descriptor_843;
  [v10 refreshBetaUpdates_];

  return MEMORY[0x282200938](v15 + 16);
}

uint64_t sub_26B04A048()
{
  v4 = *v0;
  v4[18] = *v0;
  v1 = v4[6];
  v4[32] = v1;
  if (v1)
  {
    v2 = sub_26B04AA3C;
  }

  else
  {
    v2 = sub_26B04A1A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26B04A1A0()
{
  v34 = v0;
  v1 = v0[31];
  v16 = v0[22];
  v0[18] = v0;
  v15 = v0[20];
  v0[21] = v15;
  MEMORY[0x277D82BD8](v1);
  sub_26B078540();

  v27 = sub_26B078570();
  v28 = sub_26B07A2A0();
  v20 = swift_allocObject();
  *(v20 + 16) = 32;
  v21 = swift_allocObject();
  *(v21 + 16) = 8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_26B06B248;
  *(v17 + 24) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_26B06B2F8;
  *(v18 + 24) = v17;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26B06B344;
  *(v22 + 24) = v18;
  v23 = swift_allocObject();
  *(v23 + 16) = 32;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_26B060000;
  *(v19 + 24) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26B06B444;
  *(v25 + 24) = v19;
  sub_26B07A760();
  v26 = v2;

  *v26 = sub_26B06B27C;
  v26[1] = v20;

  v26[2] = sub_26B06B2B0;
  v26[3] = v21;

  v26[4] = sub_26B06B390;
  v26[5] = v22;

  v26[6] = sub_26B06B3C8;
  v26[7] = v23;

  v26[8] = sub_26B06B3FC;
  v26[9] = v24;

  v26[10] = sub_26B06B490;
  v26[11] = v25;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v27, v28))
  {
    v3 = v14[28];
    buf = sub_26B07A420();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v12 = sub_26AEA3B70(0, v10, v10);
    v13 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v29 = buf;
    v30 = v12;
    v31 = v13;
    sub_26AEA3BC4(2, &v29);
    sub_26AEA3BC4(2, &v29);
    v32 = sub_26B06B27C;
    v33 = v20;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    if (v3)
    {
    }

    v32 = sub_26B06B2B0;
    v33 = v21;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    v32 = sub_26B06B390;
    v33 = v22;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    v32 = sub_26B06B3C8;
    v33 = v23;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    v32 = sub_26B06B3FC;
    v33 = v24;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    v32 = sub_26B06B490;
    v33 = v25;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    _os_log_impl(&dword_26AE88000, v27, v28, "%s.%s: Finished to execute a request to refresh the current beta updates", buf, 0x16u);
    sub_26AEA3C24(v12, 0, v10);
    sub_26AEA3C24(v13, 2, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  v8 = v14[29];
  v9 = v14[25];
  v7 = v14[23];
  v5 = MEMORY[0x277D82BD8](v27);
  v8(v9, v7, v5);

  v6 = *(v14[18] + 8);

  return v6(v15);
}