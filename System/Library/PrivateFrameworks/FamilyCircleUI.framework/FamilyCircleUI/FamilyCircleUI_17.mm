unint64_t sub_21BD4B42C()
{
  result = qword_27CDBB1B0;
  if (!qword_27CDBB1B0)
  {
    result = swift_getWitnessTable(byte_21BE4EFA8, &type metadata for ChecklistSectionsViews, v0, v1);
    atomic_store(result, &qword_27CDBB1B0);
  }

  return result;
}

unint64_t sub_21BD4B480()
{
  result = qword_27CDBB1B8;
  if (!qword_27CDBB1B8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB180, &qword_21BE46150);
    v4[0] = sub_21BD4B538();
    v4[1] = sub_21BB3B038(&qword_27CDBB1D0, &qword_27CDBB1D8, &qword_21BE46178, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBB1B8);
  }

  return result;
}

unint64_t sub_21BD4B538()
{
  result = qword_27CDBB1C0;
  if (!qword_27CDBB1C0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB178, &qword_21BE46148);
    v4[0] = sub_21BB3B038(&qword_27CDBB1C8, &qword_27CDBB170, &qword_21BE46140, MEMORY[0x277CE1148]);
    v4[1] = MEMORY[0x277CDFC60];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBB1C0);
  }

  return result;
}

uint64_t sub_21BD4B5F0(uint64_t a1)
{
  v4 = *(type metadata accessor for FamilyChecklistView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBA6A64;

  return sub_21BD47864(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_28Tm()
{
  v1 = *(type metadata accessor for FamilyChecklistView(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_21BE26F5C();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21BD4B844(uint64_t a1)
{
  v4 = *(type metadata accessor for FamilyChecklistView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBB7EB8;

  return sub_21BD47E80(a1, v6, v7, v1 + v5);
}

uint64_t sub_21BD4B934(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id FACacheImageMarqueeOperation.init(familyCircle:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = [objc_opt_self() mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = [objc_opt_self() defaultManager];
  v9 = [objc_allocWithZone(FAProfilePictureStore) initWithFamilyCircle_];
  v10 = [v8 URLsForDirectory:13 inDomains:1];
  v11 = sub_21BE25B9C();
  v12 = sub_21BE28C3C();

  if (*(v12 + 16))
  {
    v13 = *(v11 - 8);
    (*(v13 + 16))(v4, v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v11);

    (*(v13 + 56))(v4, 0, 1, v11);
    if (qword_280BD8A50 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v15 = sub_21BE289CC();
  v16 = [v14 initWithSuiteName_];

  if (!v16)
  {
    v16 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  }

  v17 = type metadata accessor for FACacheImageMarqueeOperation(0);
  v18 = objc_allocWithZone(v17);
  v19 = &v18[OBJC_IVAR___FACacheImageMarqueeOperation_imageExtension];
  *v19 = 6778480;
  *(v19 + 1) = 0xE300000000000000;
  v20 = OBJC_IVAR___FACacheImageMarqueeOperation_pictureStore;
  *&v18[OBJC_IVAR___FACacheImageMarqueeOperation_pictureStore] = 0;
  *&v18[OBJC_IVAR___FACacheImageMarqueeOperation_familyCircle] = a1;
  *&v18[v20] = v9;
  *&v18[OBJC_IVAR___FACacheImageMarqueeOperation_userDefaults] = v16;
  *&v18[OBJC_IVAR___FACacheImageMarqueeOperation_fileManager] = v8;
  sub_21BBA3854(v4, &v18[OBJC_IVAR___FACacheImageMarqueeOperation_rootURL], &unk_27CDB57F0, &qword_21BE328A0);
  *&v18[OBJC_IVAR___FACacheImageMarqueeOperation_deviceScale] = v7;
  v23.receiver = v18;
  v23.super_class = v17;
  v21 = objc_msgSendSuper2(&v23, sel_init);
  sub_21BB3A4CC(v4, &unk_27CDB57F0, &qword_21BE328A0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v21;
}

uint64_t type metadata accessor for FACacheImageMarqueeOperation(uint64_t a1)
{
  result = qword_280BD6B20;
  if (!qword_280BD6B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BD4BE18(int a1)
{
  v2 = v1;
  v72 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB220, &qword_21BE46358);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v59 - v4;
  v5 = sub_21BE26E6C();
  v69 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB228, &qword_21BE46360);
  MEMORY[0x28223BE20](v66);
  v9 = &v59 - v8;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB230, &qword_21BE46368);
  v10 = MEMORY[0x28223BE20](v67);
  v68 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v71 = &v59 - v12;
  v73 = sub_21BE26A4C();
  v13 = *(v73 - 8);
  v14 = MEMORY[0x28223BE20](v73);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v59 - v17;
  sub_21BE260CC();
  v19 = sub_21BE26A2C();
  v20 = sub_21BE28FFC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 67109120;
    *(v21 + 4) = v72 & 1;
    _os_log_impl(&dword_21BB35000, v19, v20, "Request to build mugshot for darkMode: %{BOOL}d", v21, 8u);
    MEMORY[0x21CF05C50](v21, -1, -1);
  }

  v22 = *(v13 + 8);
  v22(v18, v73);
  v23 = *(v2 + OBJC_IVAR___FACacheImageMarqueeOperation_pictureStore);
  if (!v23)
  {
    goto LABEL_11;
  }

  v24 = *(v2 + OBJC_IVAR___FACacheImageMarqueeOperation_familyCircle);
  if (!v24)
  {
    goto LABEL_11;
  }

  v60 = v16;
  v61 = v22;
  v25 = type metadata accessor for FamilyRowMarqueeViewModel();
  v64 = v2;
  v26 = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  v74[3] = v26;
  v74[4] = &off_282D8B0C8;
  v74[0] = v27;
  sub_21BB3A35C(v74, v75);
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BC2ACA4();
  v28 = v23;
  v29 = v24;
  v30 = v28;
  v62 = v29;
  v65 = v27;

  v63 = v30;
  v31 = sub_21BE270CC();
  v33 = v32;
  __swift_destroy_boxed_opaque_existential_0Tm(v74);
  *(&v76 + 1) = v31;
  v77 = v33;
  KeyPath = swift_getKeyPath();
  v35 = v69;
  v36 = *(v69 + 104);
  v37 = MEMORY[0x277CDF3C0];
  if ((v72 & 1) == 0)
  {
    v37 = MEMORY[0x277CDF3D0];
  }

  v38 = *v37;
  v36(v7, v38, v5);
  v39 = &v9[*(v66 + 36)];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB238, &qword_21BE463A0);
  (*(v35 + 32))(v39 + *(v40 + 28), v7, v5);
  *v39 = KeyPath;
  *(v9 + 6) = v77;
  v41 = v76;
  *(v9 + 1) = v75[1];
  *(v9 + 2) = v41;
  *v9 = v75[0];
  v42 = v70;
  v36(v70, v38, v5);
  (*(v35 + 56))(v42, 0, 1, v5);
  v43 = v71;
  sub_21BBB7D84(v42, &v71[*(v67 + 36)], &qword_27CDBB220, &qword_21BE46358);
  sub_21BBB7D84(v9, v43, &qword_27CDBB228, &qword_21BE46360);
  v44 = v68;
  sub_21BBA3854(v43, v68, &qword_27CDBB230, &qword_21BE46368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB240, &qword_21BE463A8);
  swift_allocObject();
  MEMORY[0x21CF02150](v44);
  sub_21BE26F9C();
  v45 = sub_21BE26F8C();
  if (!v45)
  {
    sub_21BB3A4CC(v43, &qword_27CDBB230, &qword_21BE46368);

    v22 = v61;
    v16 = v60;
LABEL_11:
    sub_21BE260CC();
    v54 = sub_21BE26A2C();
    v55 = sub_21BE28FFC();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = v22;
      v57 = swift_slowAlloc();
      *v57 = 67109120;
      *(v57 + 4) = v72 & 1;
      _os_log_impl(&dword_21BB35000, v54, v55, "Completed mugshot for darkMode: %{BOOL}d", v57, 8u);
      v58 = v57;
      v22 = v56;
      MEMORY[0x21CF05C50](v58, -1, -1);
    }

    v22(v16, v73);
    return 0;
  }

  v46 = v45;
  v47 = v62;
  v48 = v63;
  v49 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];
  v50 = UIImagePNGRepresentation(v49);
  if (v50)
  {
    v51 = v50;
    v52 = sub_21BE25BFC();

    sub_21BB3A4CC(v43, &qword_27CDBB230, &qword_21BE46368);
    return v52;
  }

  sub_21BB3A4CC(v43, &qword_27CDBB230, &qword_21BE46368);

  return 0;
}

uint64_t sub_21BD4C5D0(uint64_t a1)
{
  v2 = sub_21BE26E6C();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21BE272EC();
}

uint64_t sub_21BD4C698()
{
  v79 = *MEMORY[0x277D85DE8];
  v1 = sub_21BE26A4C();
  v72 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v73 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v62 - v4;
  v6 = sub_21BE25B9C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v71 = &v62 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v62 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v62 - v16;
  sub_21BBA3854(v0 + OBJC_IVAR___FACacheImageMarqueeOperation_rootURL, v5, &unk_27CDB57F0, &qword_21BE328A0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_21BB3A4CC(v5, &unk_27CDB57F0, &qword_21BE328A0);
    return MEMORY[0x277D84F90];
  }

  v18 = *(v7 + 32);
  v70 = v7 + 32;
  v68 = v1;
  v69 = v18;
  v18(v17, v5, v6);
  v19 = v7;
  v20 = v0;
  v21 = *(v0 + OBJC_IVAR___FACacheImageMarqueeOperation_fileManager);
  v22 = sub_21BE25B2C();
  v77 = 0;
  v23 = [v21 contentsOfDirectoryAtURL:v22 includingPropertiesForKeys:0 options:0 error:&v77];

  v24 = v77;
  v62 = v17;
  if (!v23)
  {
    v43 = v17;
    v44 = v77;
    v45 = sub_21BE25A8C();

    swift_willThrow();
    v46 = v73;
    sub_21BE2614C();
    (*(v19 + 16))(v10, v43, v6);
    v47 = v45;
    v48 = sub_21BE26A2C();
    v49 = sub_21BE28FDC();

    v50 = v19;
    if (os_log_type_enabled(v48, v49))
    {
      v51 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v77 = v71;
      *v51 = 136315394;
      v52 = sub_21BE25AFC();
      v54 = v53;
      v55 = *(v50 + 8);
      v55(v10, v6);
      v56 = sub_21BB3D81C(v52, v54, &v77);

      *(v51 + 4) = v56;
      *(v51 + 12) = 2080;
      swift_getErrorValue();
      v57 = sub_21BE29A5C();
      v59 = sub_21BB3D81C(v57, v58, &v77);

      *(v51 + 14) = v59;
      _os_log_impl(&dword_21BB35000, v48, v49, "Error removing images from: %s, error: %s", v51, 0x16u);
      v60 = v71;
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v60, -1, -1);
      MEMORY[0x21CF05C50](v51, -1, -1);

      (*(v72 + 8))(v73, v68);
    }

    else
    {

      v55 = *(v19 + 8);
      v55(v10, v6);
      (*(v72 + 8))(v46, v68);
    }

    v55(v62, v6);
    return MEMORY[0x277D84F90];
  }

  v64 = v19;
  v25 = sub_21BE28C3C();
  v26 = v24;

  v27 = v6;
  v68 = *(v25 + 16);
  if (v68)
  {
    v28 = 0;
    v66 = (v20 + OBJC_IVAR___FACacheImageMarqueeOperation_imageExtension);
    v29 = v64;
    v65 = v64 + 16;
    v63 = (v64 + 8);
    v30 = MEMORY[0x277D84F90];
    v67 = v25;
    while (1)
    {
      if (v28 >= *(v25 + 16))
      {
        __break(1u);
      }

      v73 = ((*(v29 + 80) + 32) & ~*(v29 + 80));
      v72 = *(v29 + 72);
      (*(v29 + 16))(v15, &v73[v25 + v72 * v28], v27);
      if (sub_21BE25AEC() == *v66 && v31 == v66[1])
      {
      }

      else
      {
        v33 = sub_21BE2995C();

        if ((v33 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      v77 = sub_21BE25B1C();
      v78 = v34;
      sub_21BE264AC();
      v74 = sub_21BE2647C();
      v75 = v35;
      sub_21BBBF0E4();
      sub_21BBBF138();
      v36 = sub_21BE2896C();

      v29 = v64;

      if (v36 & 1) != 0 || (v77 = sub_21BE25B1C(), v78 = v37, v74 = sub_21BE2646C(), v75 = v38, v39 = sub_21BE2896C(), , , (v39))
      {
        v69(v71, v15, v27);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v76 = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21BC59D74(0, *(v30 + 16) + 1, 1);
          v30 = v76;
        }

        v42 = *(v30 + 16);
        v41 = *(v30 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_21BC59D74((v41 > 1), v42 + 1, 1);
          v30 = v76;
        }

        *(v30 + 16) = v42 + 1;
        v69(&v73[v30 + v42 * v72], v71, v27);
        goto LABEL_7;
      }

LABEL_6:
      (*v63)(v15, v27);
LABEL_7:
      ++v28;
      v25 = v67;
      if (v68 == v28)
      {
        goto LABEL_26;
      }
    }
  }

  v30 = MEMORY[0x277D84F90];
  v29 = v64;
LABEL_26:
  (*(v29 + 8))(v62, v27);

  return v30;
}

id sub_21BD4CE9C()
{
  v1 = sub_21BE25B9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21BD4C698();
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (v2 + 8);
    while (v7 < *(v5 + 16))
    {
      (*(v2 + 16))(v4, v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v7, v1);
      sub_21BD4D13C(v4, v0);
      ++v7;
      (*v8)(v4, v1);
      if (v6 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);

    result = (*v8)(v4, v1);
    __break(1u);
  }

  else
  {
LABEL_5:

    v9 = *(v0 + OBJC_IVAR___FACacheImageMarqueeOperation_userDefaults);
    sub_21BE264AC();
    sub_21BE2647C();
    v10 = sub_21BE289CC();

    [v9 removeObjectForKey_];

    sub_21BE2646C();
    v11 = sub_21BE289CC();

    [v9 removeObjectForKey_];

    v15 = sub_21BB3A2A4(0, &qword_280BD8A28, 0x277CBEBD0);
    v16 = MEMORY[0x277D08080];
    v14[0] = v9;
    __swift_project_boxed_opaque_existential_1Tm(v14, v15);
    v12 = v9;
    sub_21BE2649C();
    sub_21BE2920C();

    sub_21BE2648C();
    sub_21BE2920C();

    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    [v12 synchronize];
    return [objc_opt_self() broadcastFamilyMarqueeChangedNotification];
  }

  return result;
}

id sub_21BD4D13C(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v44 = *MEMORY[0x277D85DE8];
  v3 = sub_21BE25B9C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_21BE26A4C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v39 = &v35[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v35[-v11];
  sub_21BE2614C();
  v13 = *(v4 + 16);
  v41 = a1;
  v13(v6, a1, v3);
  v14 = sub_21BE26A2C();
  v15 = sub_21BE28FFC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v38 = v8;
    v17 = v16;
    v37 = swift_slowAlloc();
    v42 = v37;
    *v17 = 136315394;
    *(v17 + 4) = sub_21BB3D81C(0xD000000000000021, 0x800000021BE5FC00, &v42);
    *(v17 + 12) = 2080;
    sub_21BC9B974();
    v18 = sub_21BE2992C();
    v36 = v15;
    v19 = v7;
    v21 = v20;
    (*(v4 + 8))(v6, v3);
    v22 = sub_21BB3D81C(v18, v21, &v42);
    v7 = v19;

    *(v17 + 14) = v22;
    _os_log_impl(&dword_21BB35000, v14, v36, "%s removing Image URL %s ", v17, 0x16u);
    v23 = v37;
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v23, -1, -1);
    v24 = v17;
    v8 = v38;
    MEMORY[0x21CF05C50](v24, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v25 = *(v8 + 8);
  v25(v12, v7);
  v26 = *(v40 + OBJC_IVAR___FACacheImageMarqueeOperation_fileManager);
  v27 = sub_21BE25B2C();
  v42 = 0;
  v28 = [v26 removeItemAtURL:v27 error:&v42];

  if (v28)
  {
    return v42;
  }

  v30 = v42;
  v31 = sub_21BE25A8C();

  swift_willThrow();
  v32 = v39;
  sub_21BE2614C();
  v42 = 0;
  v43 = 0xE000000000000000;
  v33 = v31;
  sub_21BE295EC();

  v42 = 0xD000000000000040;
  v43 = 0x800000021BE5FBB0;
  v34 = sub_21BE25AFC();
  MEMORY[0x21CF03CA0](v34);

  MEMORY[0x21CF03CA0](4203808, 0xE300000000000000);
  sub_21BC51D50(v31, v42, v43);

  return (v25)(v32, v7);
}

BOOL sub_21BD4D5D4(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v54 = a2;
  v63 = *MEMORY[0x277D85DE8];
  v3 = sub_21BE26A4C();
  v56 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v48 - v7;
  v9 = sub_21BE25B9C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v52 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v48 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v48 - v16;
  sub_21BBA3854(v2 + OBJC_IVAR___FACacheImageMarqueeOperation_rootURL, v8, &unk_27CDB57F0, &qword_21BE328A0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_21BB3A4CC(v8, &unk_27CDB57F0, &qword_21BE328A0);
    return 0;
  }

  v18 = v3;
  v50 = *(v10 + 32);
  v51 = v10 + 32;
  v50(v17, v8, v9);
  v19 = v2;
  v20 = *(v2 + OBJC_IVAR___FACacheImageMarqueeOperation_fileManager);
  v21 = sub_21BE25B2C();
  v61[0] = 0;
  v22 = [v20 contentsOfDirectoryAtURL:v21 includingPropertiesForKeys:0 options:0 error:v61];

  v23 = v61[0];
  v57 = v10;
  v58 = v9;
  if (!v22)
  {
    v40 = v17;
    v41 = v61[0];
    v42 = sub_21BE25A8C();

    swift_willThrow();
    sub_21BE2614C();
    v43 = sub_21BE26A2C();
    v44 = sub_21BE28FDC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_21BB35000, v43, v44, "FACacheImageMarquee Operation checkCache failed", v45, 2u);
      MEMORY[0x21CF05C50](v45, -1, -1);
    }

    (*(v56 + 8))(v5, v18);
    (*(v57 + 8))(v40, v58);
    return 0;
  }

  v48 = v17;
  v24 = sub_21BE28C3C();
  v25 = v23;

  v56 = *(v24 + 16);
  if (v56)
  {
    v26 = 0;
    v27 = (v19 + OBJC_IVAR___FACacheImageMarqueeOperation_imageExtension);
    v55 = v57 + 16;
    v49 = (v57 + 8);
    v28 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v26 >= *(v24 + 16))
      {
        __break(1u);
      }

      v29 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v30 = *(v57 + 72);
      (*(v57 + 16))(v15, v24 + v29 + v30 * v26, v9);
      if (sub_21BE25AEC() == *v27 && v31 == v27[1])
      {
      }

      else
      {
        v33 = sub_21BE2995C();

        if ((v33 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      v61[0] = sub_21BE25B1C();
      v61[1] = v34;
      v59 = v53;
      v60 = v54;
      sub_21BBBF0E4();
      sub_21BBBF138();
      v9 = v58;
      v35 = sub_21BE2896C();

      if (v35)
      {
        v50(v52, v15, v9);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v62 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21BC59D74(0, *(v28 + 16) + 1, 1);
          v28 = v62;
        }

        v38 = *(v28 + 16);
        v37 = *(v28 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_21BC59D74((v37 > 1), v38 + 1, 1);
          v28 = v62;
        }

        *(v28 + 16) = v38 + 1;
        v39 = v28 + v29 + v38 * v30;
        v9 = v58;
        v50(v39, v52, v58);
        goto LABEL_7;
      }

LABEL_6:
      (*v49)(v15, v9);
LABEL_7:
      if (v56 == ++v26)
      {
        goto LABEL_27;
      }
    }
  }

  v28 = MEMORY[0x277D84F90];
LABEL_27:
  (*(v57 + 8))(v48, v9);

  v47 = *(v28 + 16);

  return v47 != 0;
}

double sub_21BD4DBDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_21BE28DAC();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_21BC54908(0, 0, v3, &unk_21BE462A8, v5);

  return result;
}

uint64_t sub_21BD4DCE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBA6A64;

  return sub_21BD4DF2C();
}

uint64_t sub_21BD4DD70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBB7EB8;

  return sub_21BD4DCE0();
}

uint64_t sub_21BD4DF2C()
{
  v1[12] = v0;
  v2 = sub_21BE26A4C();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v1[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v1[19] = swift_task_alloc();
  v3 = sub_21BE25B9C();
  v1[20] = v3;
  v4 = *(v3 - 8);
  v1[21] = v4;
  v1[22] = *(v4 + 64);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BD4E0E4, 0, 0);
}

uint64_t sub_21BD4E0E4(uint64_t a1)
{
  v60 = v1;
  v2 = *(v1[12] + OBJC_IVAR___FACacheImageMarqueeOperation_familyCircle);
  if (!v2)
  {
    sub_21BE2614C();
    v4 = sub_21BE26A2C();
    v5 = sub_21BE28FFC();
    v6 = os_log_type_enabled(v4, v5);
    v8 = v1[14];
    v7 = v1[15];
    v9 = v1[13];
    if (v6)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v59[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_21BB3D81C(0xD000000000000014, 0x800000021BE5FA10, v59);
      _os_log_impl(&dword_21BB35000, v4, v5, "%s No family, cleaning up marquee files", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x21CF05C50](v11, -1, -1);
      MEMORY[0x21CF05C50](v10, -1, -1);
    }

    (*(v8 + 8))(v7, v9);
    sub_21BD4CE9C();
    goto LABEL_18;
  }

  v3 = v2;
  FAFamilyCircle.rowStatusForFamily()();
  if (LOBYTE(v59[0]) <= 1u && !LOBYTE(v59[0]))
  {

LABEL_10:
    sub_21BE2614C();
    v13 = sub_21BE26A2C();
    v14 = sub_21BE28FFC();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v1[16];
    v17 = v1[13];
    v18 = v1[14];
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v59[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_21BB3D81C(0xD000000000000014, 0x800000021BE5FA10, v59);
      _os_log_impl(&dword_21BB35000, v13, v14, "%s Family row hidden, cleaning up marquee files", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x21CF05C50](v20, -1, -1);
      MEMORY[0x21CF05C50](v19, -1, -1);
    }

    (*(v18 + 8))(v16, v17);
    sub_21BD4CE9C();

    goto LABEL_18;
  }

  v12 = sub_21BE2995C();

  if (v12)
  {
    goto LABEL_10;
  }

  v21 = v1[20];
  v22 = v1[21];
  v23 = v1[19];
  sub_21BBA3854(v1[12] + OBJC_IVAR___FACacheImageMarqueeOperation_rootURL, v23, &unk_27CDB57F0, &qword_21BE328A0);
  if ((*(v22 + 48))(v23, 1, v21) != 1)
  {
    v39 = v1[23];
    v38 = v1[24];
    v40 = v1[21];
    v54 = v39;
    v55 = v1[22];
    v41 = v1[20];
    v42 = v1[18];
    v56 = v38;
    v43 = v1[12];
    v58 = *(v40 + 32);
    v53 = v41;
    v58(v38, v1[19], v41);
    v57 = sub_21BD4C698();
    v44 = sub_21BE28DAC();
    (*(*(v44 - 8) + 56))(v42, 1, 1, v44);
    (*(v40 + 16))(v39, v38, v41);
    sub_21BE28D7C();
    v45 = v3;
    v46 = v43;
    v47 = sub_21BE28D6C();
    v48 = (*(v40 + 80) + 40) & ~*(v40 + 80);
    v49 = (v55 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
    v50 = swift_allocObject();
    v51 = MEMORY[0x277D85700];
    *(v50 + 2) = v47;
    *(v50 + 3) = v51;
    *(v50 + 4) = v46;
    v58(&v50[v48], v54, v53);
    *&v50[v49] = v45;
    *&v50[(v49 + 15) & 0xFFFFFFFFFFFFFFF8] = v57;
    sub_21BC54908(0, 0, v42, &unk_21BE462E8, v50);

    (*(v40 + 8))(v56, v53);
LABEL_18:

    v37 = v1[1];
    goto LABEL_19;
  }

  sub_21BB3A4CC(v1[19], &unk_27CDB57F0, &qword_21BE328A0);
  sub_21BE2614C();
  v24 = sub_21BE26A2C();
  v25 = sub_21BE28FFC();
  v26 = os_log_type_enabled(v24, v25);
  v27 = v1[17];
  v28 = v1[13];
  v29 = v1[14];
  if (v26)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v59[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_21BB3D81C(0xD000000000000014, 0x800000021BE5FA10, v59);
    _os_log_impl(&dword_21BB35000, v24, v25, "%s Root url is missing", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x21CF05C50](v31, -1, -1);
    MEMORY[0x21CF05C50](v30, -1, -1);
  }

  (*(v29 + 8))(v27, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57B8, &qword_21BE32840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = sub_21BE28A0C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v33;
  *(inited + 48) = 0xD000000000000013;
  *(inited + 56) = 0x800000021BE5FA30;
  sub_21BBB52D8(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57D8, &qword_21BE32860);
  v34 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v35 = sub_21BE289CC();
  v36 = sub_21BE288EC();

  [v34 initWithDomain:v35 code:-1 userInfo:v36];

  swift_willThrow();

  v37 = v1[1];
LABEL_19:

  return v37();
}

uint64_t sub_21BD4E904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  v8 = sub_21BE26A4C();
  v7[24] = v8;
  v7[25] = *(v8 - 8);
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  v9 = sub_21BE25B9C();
  v7[29] = v9;
  v7[30] = *(v9 - 8);
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v10 = sub_21BE25D6C();
  v7[35] = v10;
  v7[36] = *(v10 - 8);
  v7[37] = swift_task_alloc();
  sub_21BE28D7C();
  v7[38] = sub_21BE28D6C();
  v12 = sub_21BE28D0C();
  v7[39] = v12;
  v7[40] = v11;

  return MEMORY[0x2822009F8](sub_21BD4EAF0, v12, v11);
}

uint64_t sub_21BD4EAF0()
{
  v102 = v0;
  v1 = *(v0[20] + OBJC_IVAR___FACacheImageMarqueeOperation_pictureStore);
  v0[41] = v1;
  if (v1)
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_21BD4F674;
    v2 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC820, &unk_21BE4B450);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21BD9CFA0;
    v0[13] = &block_descriptor_43;
    v0[14] = v2;
    [v1 fetchProfileImagesWithCompletion_];
    v3 = (v0 + 2);

    return MEMORY[0x282200938](v3);
  }

  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[35];
  v7 = v0[20];
  sub_21BE25D5C();
  v8 = sub_21BE25D2C();
  v10 = v9;
  (*(v5 + 8))(v4, v6);
  v100 = v8;
  v101 = v10;
  v3 = MEMORY[0x21CF03CA0](64, 0xE100000000000000);
  v11 = *(v7 + OBJC_IVAR___FACacheImageMarqueeOperation_deviceScale);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
    return MEMORY[0x282200938](v3);
  }

  v12 = v0[20];
  v0[19] = v11;
  v13 = sub_21BE2992C();
  MEMORY[0x21CF03CA0](v13);

  MEMORY[0x21CF03CA0](11896, 0xE200000000000000);
  MEMORY[0x21CF03CA0](*(v12 + OBJC_IVAR___FACacheImageMarqueeOperation_imageExtension), *(v12 + OBJC_IVAR___FACacheImageMarqueeOperation_imageExtension + 8));
  v15 = v100;
  v14 = v101;
  sub_21BE264AC();
  sub_21BE2647C();
  MEMORY[0x21CF03CA0](45, 0xE100000000000000);
  MEMORY[0x21CF03CA0](v100, v101);
  sub_21BE25B3C();

  v16 = sub_21BD4BE18(0);
  v18 = v17;
  v100 = sub_21BE2646C();
  v101 = v19;
  MEMORY[0x21CF03CA0](45, 0xE100000000000000);
  MEMORY[0x21CF03CA0](v15, v14);

  sub_21BE25B3C();

  v20 = sub_21BD4BE18(1);
  v22 = v21;
  v98 = v16;
  v99 = v18;
  if (v18 >> 60 != 15)
  {
    sub_21BBBEE74(v16, v18);
    sub_21BE25C0C();
    sub_21BBBF0B4(v16, v18);
  }

  if (v22 >> 60 != 15)
  {
    sub_21BBBEE74(v20, v22);
    sub_21BE25C0C();
    sub_21BBBF0B4(v20, v22);
  }

  v94 = v20;
  v95 = v22;
  v23 = v0[34];
  v24 = v0[32];
  v25 = v0[29];
  v26 = v0[30];
  sub_21BE2614C();
  v92 = *(v26 + 16);
  v92(v24, v23, v25);
  v27 = sub_21BE26A2C();
  v28 = sub_21BE28FBC();
  v29 = os_log_type_enabled(v27, v28);
  v30 = v0[32];
  v31 = v0[30];
  v96 = v0[29];
  v32 = v0[28];
  v33 = v0[24];
  v34 = v0[25];
  if (v29)
  {
    v90 = v0[24];
    v35 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v100 = v87;
    *v35 = 136315394;
    v88 = v32;
    v36 = sub_21BE2647C();
    v38 = sub_21BB3D81C(v36, v37, &v100);

    *(v35 + 4) = v38;
    *(v35 + 12) = 2080;
    v39 = sub_21BE25AFC();
    v41 = v40;
    v42 = v96;
    v97 = *(v31 + 8);
    v97(v30, v42);
    v43 = sub_21BB3D81C(v39, v41, &v100);

    *(v35 + 14) = v43;
    _os_log_impl(&dword_21BB35000, v27, v28, "Saving light mode image with key: %s url: %s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v87, -1, -1);
    MEMORY[0x21CF05C50](v35, -1, -1);

    v44 = *(v34 + 8);
    v44(v88, v90);
  }

  else
  {

    v45 = v96;
    v97 = *(v31 + 8);
    v97(v30, v45);
    v44 = *(v34 + 8);
    v44(v32, v33);
  }

  v46 = v0[33];
  v47 = v0[31];
  v48 = v0[29];
  sub_21BE2614C();
  v92(v47, v46, v48);
  v49 = sub_21BE26A2C();
  v50 = sub_21BE28FBC();
  v51 = os_log_type_enabled(v49, v50);
  v52 = v0[31];
  v53 = v0[29];
  v54 = v0[27];
  v55 = v0[24];
  if (v51)
  {
    v93 = v44;
    v56 = swift_slowAlloc();
    v91 = v55;
    v57 = swift_slowAlloc();
    v100 = v57;
    *v56 = 136315394;
    v89 = v54;
    v58 = sub_21BE2646C();
    v60 = sub_21BB3D81C(v58, v59, &v100);

    *(v56 + 4) = v60;
    *(v56 + 12) = 2080;
    v61 = sub_21BE25AFC();
    v63 = v62;
    v97(v52, v53);
    v64 = sub_21BB3D81C(v61, v63, &v100);

    *(v56 + 14) = v64;
    _os_log_impl(&dword_21BB35000, v49, v50, "Saving dark mode image with key: %s url: %s", v56, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v57, -1, -1);
    MEMORY[0x21CF05C50](v56, -1, -1);

    v93(v89, v91);
  }

  else
  {

    v97(v52, v53);
    v44(v54, v55);
  }

  v65 = *(v0[20] + OBJC_IVAR___FACacheImageMarqueeOperation_userDefaults);
  sub_21BE25AFC();
  v66 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v67 = sub_21BE289CC();

  v68 = [v66 initWithString_];

  v69 = [v68 stringByExpandingTildeInPath];
  if (!v69)
  {
    sub_21BE28A0C();
    v69 = sub_21BE289CC();
  }

  sub_21BE2647C();
  v70 = sub_21BE289CC();

  [v65 setObject:v69 forKey:v70];

  sub_21BE25AFC();
  v71 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v72 = sub_21BE289CC();

  v73 = [v71 initWithString_];

  v74 = [v73 stringByExpandingTildeInPath];
  if (!v74)
  {
    sub_21BE28A0C();
    v74 = sub_21BE289CC();
  }

  v75 = v0[22];
  v76 = v0[23];
  sub_21BE2646C();
  v77 = sub_21BE289CC();

  [v65 setObject:v74 forKey:v77];

  sub_21BD50A68(v75, v65);
  [v65 synchronize];
  v78 = *(v76 + 16);
  if (v78)
  {
    v79 = v0[30];
    v80 = v0[23] + ((*(v79 + 80) + 32) & ~*(v79 + 80));
    v81 = *(v79 + 72);
    do
    {
      sub_21BD4D13C(v80, v0[20]);
      v80 += v81;
      --v78;
    }

    while (v78);
  }

  v83 = v0[33];
  v82 = v0[34];
  v84 = v0[29];
  [objc_opt_self() broadcastFamilyMarqueeChangedNotification];
  sub_21BBBF0B4(v94, v95);
  sub_21BBBF0B4(v98, v99);
  v97(v83, v84);
  v97(v82, v84);

  v85 = v0[1];

  return v85();
}

uint64_t sub_21BD4F674()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 336) = v2;
  v3 = *(v1 + 320);
  v4 = *(v1 + 312);
  if (v2)
  {
    v5 = sub_21BD5022C;
  }

  else
  {
    v5 = sub_21BD4F7A4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BD4F7A4()
{
  v100 = v0;
  v1 = v0[41];

  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[35];
  v5 = v0[20];
  sub_21BE25D5C();
  v6 = sub_21BE25D2C();
  v8 = v7;
  (*(v3 + 8))(v2, v4);
  v98 = v6;
  v99 = v8;
  result = MEMORY[0x21CF03CA0](64, 0xE100000000000000);
  v10 = *(v5 + OBJC_IVAR___FACacheImageMarqueeOperation_deviceScale);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v11 = v0[20];
  v0[19] = v10;
  v12 = sub_21BE2992C();
  MEMORY[0x21CF03CA0](v12);

  MEMORY[0x21CF03CA0](11896, 0xE200000000000000);
  MEMORY[0x21CF03CA0](*(v11 + OBJC_IVAR___FACacheImageMarqueeOperation_imageExtension), *(v11 + OBJC_IVAR___FACacheImageMarqueeOperation_imageExtension + 8));
  v14 = v98;
  v13 = v99;
  sub_21BE264AC();
  sub_21BE2647C();
  MEMORY[0x21CF03CA0](45, 0xE100000000000000);
  MEMORY[0x21CF03CA0](v98, v99);
  sub_21BE25B3C();

  v15 = sub_21BD4BE18(0);
  v17 = v16;
  v98 = sub_21BE2646C();
  v99 = v18;
  MEMORY[0x21CF03CA0](45, 0xE100000000000000);
  MEMORY[0x21CF03CA0](v14, v13);

  sub_21BE25B3C();

  v19 = sub_21BD4BE18(1);
  v21 = v20;
  v96 = v15;
  v97 = v17;
  if (v17 >> 60 != 15)
  {
    sub_21BBBEE74(v15, v17);
    sub_21BE25C0C();
    sub_21BBBF0B4(v15, v17);
  }

  if (v21 >> 60 != 15)
  {
    sub_21BBBEE74(v19, v21);
    sub_21BE25C0C();
    sub_21BBBF0B4(v19, v21);
  }

  v92 = v19;
  v93 = v21;
  v22 = v0[34];
  v23 = v0[32];
  v24 = v0[29];
  v25 = v0[30];
  sub_21BE2614C();
  v90 = *(v25 + 16);
  v90(v23, v22, v24);
  v26 = sub_21BE26A2C();
  v27 = sub_21BE28FBC();
  v28 = os_log_type_enabled(v26, v27);
  v29 = v0[32];
  v30 = v0[30];
  v94 = v0[29];
  v31 = v0[28];
  v32 = v0[24];
  v33 = v0[25];
  if (v28)
  {
    v88 = v0[24];
    v34 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v98 = v85;
    *v34 = 136315394;
    v86 = v31;
    v35 = sub_21BE2647C();
    v37 = sub_21BB3D81C(v35, v36, &v98);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2080;
    v38 = sub_21BE25AFC();
    v40 = v39;
    v41 = v94;
    v95 = *(v30 + 8);
    v95(v29, v41);
    v42 = sub_21BB3D81C(v38, v40, &v98);

    *(v34 + 14) = v42;
    _os_log_impl(&dword_21BB35000, v26, v27, "Saving light mode image with key: %s url: %s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v85, -1, -1);
    MEMORY[0x21CF05C50](v34, -1, -1);

    v43 = *(v33 + 8);
    v43(v86, v88);
  }

  else
  {

    v44 = v94;
    v95 = *(v30 + 8);
    v95(v29, v44);
    v43 = *(v33 + 8);
    v43(v31, v32);
  }

  v45 = v0[33];
  v46 = v0[31];
  v47 = v0[29];
  sub_21BE2614C();
  v90(v46, v45, v47);
  v48 = sub_21BE26A2C();
  v49 = sub_21BE28FBC();
  v50 = os_log_type_enabled(v48, v49);
  v51 = v0[31];
  v52 = v0[29];
  v53 = v0[27];
  v54 = v0[24];
  if (v50)
  {
    v91 = v43;
    v55 = swift_slowAlloc();
    v89 = v54;
    v56 = swift_slowAlloc();
    v98 = v56;
    *v55 = 136315394;
    v87 = v53;
    v57 = sub_21BE2646C();
    v59 = sub_21BB3D81C(v57, v58, &v98);

    *(v55 + 4) = v59;
    *(v55 + 12) = 2080;
    v60 = sub_21BE25AFC();
    v62 = v61;
    v95(v51, v52);
    v63 = sub_21BB3D81C(v60, v62, &v98);

    *(v55 + 14) = v63;
    _os_log_impl(&dword_21BB35000, v48, v49, "Saving dark mode image with key: %s url: %s", v55, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v56, -1, -1);
    MEMORY[0x21CF05C50](v55, -1, -1);

    v91(v87, v89);
  }

  else
  {

    v95(v51, v52);
    v43(v53, v54);
  }

  v64 = *(v0[20] + OBJC_IVAR___FACacheImageMarqueeOperation_userDefaults);
  sub_21BE25AFC();
  v65 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v66 = sub_21BE289CC();

  v67 = [v65 initWithString_];

  v68 = [v67 stringByExpandingTildeInPath];
  if (!v68)
  {
    sub_21BE28A0C();
    v68 = sub_21BE289CC();
  }

  sub_21BE2647C();
  v69 = sub_21BE289CC();

  [v64 setObject:v68 forKey:v69];

  sub_21BE25AFC();
  v70 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v71 = sub_21BE289CC();

  v72 = [v70 initWithString_];

  v73 = [v72 stringByExpandingTildeInPath];
  if (!v73)
  {
    sub_21BE28A0C();
    v73 = sub_21BE289CC();
  }

  v74 = v0[22];
  v75 = v0[23];
  sub_21BE2646C();
  v76 = sub_21BE289CC();

  [v64 setObject:v73 forKey:v76];

  sub_21BD50A68(v74, v64);
  [v64 synchronize];
  v77 = *(v75 + 16);
  if (v77)
  {
    v78 = v0[30];
    v79 = v0[23] + ((*(v78 + 80) + 32) & ~*(v78 + 80));
    v80 = *(v78 + 72);
    do
    {
      sub_21BD4D13C(v79, v0[20]);
      v79 += v80;
      --v77;
    }

    while (v77);
  }

  v82 = v0[33];
  v81 = v0[34];
  v83 = v0[29];
  [objc_opt_self() broadcastFamilyMarqueeChangedNotification];
  sub_21BBBF0B4(v92, v93);
  sub_21BBBF0B4(v96, v97);
  v95(v82, v83);
  v95(v81, v83);

  v84 = v0[1];

  return v84();
}

uint64_t sub_21BD5022C()
{
  v1 = *(v0 + 328);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BD50480(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_21BD50528;

  return sub_21BD4DF2C();
}

uint64_t sub_21BD50528()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_21BE25A7C();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

void sub_21BD506AC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  if (a1)
  {
    if (a1 == 2)
    {
      v7 = &unk_21BE462F8;
LABEL_8:
      v14 = sub_21BE28DAC();
      (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = v2;
      v16 = v2;
      sub_21BC54908(0, 0, v6, v7, v15);

      return;
    }

    if (a1 != 1)
    {
      sub_21BE2978C();
      __break(1u);
      return;
    }

    sub_21BE264AC();
    v8 = sub_21BE2647C();
    v10 = sub_21BD4D5D4(v8, v9);

    if (!v10 || (v11 = sub_21BE2646C(), v13 = sub_21BD4D5D4(v11, v12), , !v13))
    {
      v7 = &unk_21BE462F0;
      goto LABEL_8;
    }
  }
}

id FACacheImageMarqueeOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FACacheImageMarqueeOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FACacheImageMarqueeOperation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BD50A68(uint64_t a1, void *a2)
{
  v3 = sub_21BE25D1C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21BB3A2A4(0, &qword_280BD8A28, 0x277CBEBD0);
  v17 = MEMORY[0x277D08080];
  v15[0] = a2;
  __swift_project_boxed_opaque_existential_1Tm(v15, v16);
  a2;
  FAFamilyCircle.rowStatusForFamily()();
  if (HIBYTE(v12) <= 1u)
  {
    v7 = 0xE600000000000000;
    if (HIBYTE(v12))
    {
      v8 = 0x796C696D6166;
    }

    else
    {
      v8 = 0x6E6564646968;
    }
  }

  else if (HIBYTE(v12) == 2)
  {
    v7 = 0xEA00000000006574;
    v8 = 0x69766E49746E6573;
  }

  else if (HIBYTE(v12) == 3)
  {
    v7 = 0xEE00657469766E49;
    v8 = 0x6465766965636572;
  }

  else
  {
    v7 = 0x800000021BE54640;
    v8 = 0xD000000000000013;
  }

  v14 = MEMORY[0x277D837D0];
  v13[0] = v8;
  v13[1] = v7;
  sub_21BE264AC();
  sub_21BE2648C();
  sub_21BBB95AC();

  sub_21BB3A4CC(v13, &qword_27CDB5940, &unk_21BE32B10);
  sub_21BE25D0C();
  sub_21BE25C2C();
  v10 = v9;
  (*(v4 + 8))(v6, v3);
  v14 = MEMORY[0x277D839F8];
  v13[0] = v10;
  sub_21BE2649C();
  sub_21BBB95AC();

  sub_21BB3A4CC(v13, &qword_27CDB5940, &unk_21BE32B10);
  return __swift_destroy_boxed_opaque_existential_0Tm(v15);
}

uint64_t sub_21BD50CFC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_21BE25B9C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_21BBB7EB8;

  return sub_21BD4E904(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_21BD50E40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBA6A64;

  return sub_21BD4DCE0();
}

void sub_21BD50EFC(uint64_t a1)
{
  sub_21BBF088C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of FACacheImageMarqueeOperation.createAndCacheData()()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0xD0))();
}

{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xD8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBB7EB8;

  return v5();
}

uint64_t sub_21BD51160()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBA6A64;

  return sub_21BD50480(v2, v3);
}

uint64_t Publisher<>.onValueChange(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v23 = a1;
  v24 = a2;
  v20 = a4;
  v6 = sub_21BE26B8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  swift_getWitnessTable(MEMORY[0x277CBCBE0], v6);
  v10 = sub_21BE26BAC();
  v22 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  sub_21BE2635C();
  swift_allocObject();
  v13 = sub_21BE2634C();
  v14 = v21;
  sub_21BE26D0C();
  sub_21BE26CFC();
  (*(v7 + 8))(v9, v6);
  v15 = swift_allocObject();
  v16 = v20;
  v15[2] = a3;
  v15[3] = v16;
  v15[4] = v14;
  v15[5] = v13;
  v17 = v24;
  v15[6] = v23;
  v15[7] = v17;

  swift_getWitnessTable(MEMORY[0x277CBCC18], v10);
  v18 = sub_21BE26D1C();

  (*(v22 + 8))(v12, v10);
  return v18;
}

uint64_t Publisher<>.onAllValueChanges(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a1;
  v9 = sub_21BE26B8C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  sub_21BE2635C();
  swift_allocObject();
  v13 = sub_21BE2634C();
  sub_21BE26D0C();
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = v13;
  v14[6] = v18;
  v14[7] = a2;

  swift_getWitnessTable(MEMORY[0x277CBCBE0], v9);
  v15 = sub_21BE26D1C();

  (*(v10 + 8))(v12, v9);
  return v15;
}

uint64_t sub_21BD51674(int *a1, uint64_t a2, uint64_t a3)
{
  v7 = (a1 + *a1);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_21BBA6A64;

  return v7(a3);
}

double sub_21BD5176C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24 = a2;
  v22 = a7;
  v23 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = &v21 - v16;
  (*(v15 + 16))(&v21 - v16, a1, AssociatedTypeWitness);
  v18 = (*(v15 + 80) + 56) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a5;
  *(v19 + 3) = a6;
  *(v19 + 4) = v22;
  *(v19 + 5) = a3;
  *(v19 + 6) = a4;
  (*(v15 + 32))(&v19[v18], v17, AssociatedTypeWitness);

  sub_21BE2633C();

  return result;
}

uint64_t objectdestroyTm_23()
{

  return swift_deallocObject();
}

uint64_t sub_21BD51984(int *a1, uint64_t a2, uint64_t a3)
{
  v7 = (a1 + *a1);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_21BBB7EB8;

  return v7(a3);
}

uint64_t sub_21BD51A7C()
{
  v2 = *(swift_getAssociatedTypeWitness() - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21BBB7EB8;

  return sub_21BD51984(v4, v5, v0 + v3);
}

uint64_t objectdestroy_5Tm()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_21BD51C6C()
{
  v2 = *(swift_getAssociatedTypeWitness() - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21BBA6A64;

  return sub_21BD51674(v4, v5, v0 + v3);
}

uint64_t sub_21BD51D84@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB268, &qword_21BE46438);
  MEMORY[0x28223BE20](v5 - 8);
  v59[4] = v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB270, &qword_21BE46440);
  MEMORY[0x28223BE20](v7 - 8);
  v59[3] = v59 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB278, &qword_21BE46448);
  MEMORY[0x28223BE20](v9 - 8);
  v59[2] = v59 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB280, &qword_21BE46450);
  MEMORY[0x28223BE20](v11 - 8);
  v59[1] = v59 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB288, &unk_21BE46458);
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_21BE26A4C();
  v64 = *(v14 - 8);
  v65 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v59 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v59 - v19;
  v21 = sub_21BE28A4C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_21BE2679C();
  v61 = *(v25 - 8);
  v62 = v25;
  MEMORY[0x28223BE20](v25);
  v60 = v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE28A3C();
  v27 = sub_21BE28A1C();
  v29 = v28;
  v30 = v21;
  v31 = v29;
  (*(v22 + 8))(v24, v30);
  if (v31 >> 60 == 15)
  {
    sub_21BE2614C();

    v32 = sub_21BE26A2C();
    v33 = sub_21BE28FDC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v67 = v35;
      *v34 = 136315394;
      *(v34 + 4) = sub_21BB3D81C(0x7274732874696E69, 0xED0000293A676E69, &v67);
      *(v34 + 12) = 2080;
      v36 = sub_21BB3D81C(a1, a2, &v67);

      *(v34 + 14) = v36;
      _os_log_impl(&dword_21BB35000, v32, v33, "STExpressSettingsDefaults.%s converting string to data: %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v35, -1, -1);
      MEMORY[0x21CF05C50](v34, -1, -1);
    }

    else
    {
    }

    (*(v64 + 8))(v18, v65);
    v37 = 1;
    v39 = v62;
    v38 = v63;
    v40 = v61;
    return (*(v40 + 56))(v38, v37, 1, v39);
  }

  sub_21BE2578C();
  swift_allocObject();
  sub_21BE2577C();
  sub_21BD56CA0();
  sub_21BE2576C();

  v41 = v67;
  sub_21BE2614C();

  v42 = sub_21BE26A2C();
  v43 = sub_21BE28FFC();

  if (os_log_type_enabled(v42, v43))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v67 = v46;
    *v45 = 136315394;
    *(v45 + 4) = sub_21BB3D81C(0x7274732874696E69, 0xED0000293A676E69, &v67);
    *(v45 + 12) = 2080;
    v66 = v41;

    v47 = sub_21BE28A5C();
    v49 = sub_21BB3D81C(v47, v48, &v67);

    *(v45 + 14) = v49;
    _os_log_impl(&dword_21BB35000, v42, v43, "STExpressSettingsDefaults.%s loaded presets: %s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v46, -1, -1);
    MEMORY[0x21CF05C50](v45, -1, -1);
  }

  (*(v64 + 8))(v20, v65);
  v50 = v60;
  v51 = sub_21BD55AC8(v27, v31);
  v52 = v51;
  if (!v51)
  {
    goto LABEL_18;
  }

  v53 = [v51 sources];
  sub_21BB3A2A4(0, &qword_27CDBB298, 0x277D08320);
  v54 = sub_21BE28C3C();

  if (!(v54 >> 62))
  {
    result = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  result = sub_21BE2951C();
  if (!result)
  {
LABEL_17:

LABEL_18:
    v58 = 0;
    goto LABEL_19;
  }

LABEL_12:
  if ((v54 & 0xC000000000000001) != 0)
  {
    v56 = MEMORY[0x21CF047C0](0, v54);
    goto LABEL_15;
  }

  if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v56 = *(v54 + 32);
LABEL_15:
    v57 = v56;

    v58 = [v57 configuration];

LABEL_19:
    sub_21BD531E0(v41, v58, v50);

    sub_21BBBF0B4(v27, v31);
    v38 = v63;
    v40 = v61;
    v39 = v62;
    (*(v61 + 32))(v63, v50, v62);
    v37 = 0;
    return (*(v40 + 56))(v38, v37, 1, v39);
  }

  __break(1u);
  return result;
}

uint64_t sub_21BD528AC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      v4 = sub_21BE2672C();
      v5 = *(*(v4 - 8) + 56);
      v6 = v4;
      v7 = a2;
      v8 = 1;
      goto LABEL_15;
    }

    if (a1 == 4)
    {
      v3 = MEMORY[0x277D4BCF8];
    }

    else
    {
      v3 = MEMORY[0x277D4BD20];
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = MEMORY[0x277D4BD00];
    }

    else
    {
      v3 = MEMORY[0x277D4BD18];
    }
  }

  else if (a1)
  {
    v3 = MEMORY[0x277D4BD08];
  }

  else
  {
    v3 = MEMORY[0x277D4BD10];
  }

  v9 = *v3;
  v10 = sub_21BE2672C();
  v12 = *(v10 - 8);
  (*(v12 + 104))(a2, v9, v10);
  v5 = *(v12 + 56);
  v7 = a2;
  v8 = 0;
  v6 = v10;
LABEL_15:

  return v5(v7, v8, 1, v6);
}

unint64_t sub_21BD52A2C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB2B0, &qword_21BE46470);
    v2 = sub_21BE297DC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_21BBB71DC(*(a1 + 48) + 40 * v12, v24);
        sub_21BB3DCD4(*(a1 + 56) + 32 * v12, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        sub_21BBB71DC(v21, v20);
        if (!swift_dynamicCast())
        {
          sub_21BB3A4CC(v21, &qword_27CDBB2B8, &qword_21BE46478);

          goto LABEL_23;
        }

        sub_21BB3DCD4(v22 + 8, v20);
        sub_21BB3A4CC(v21, &qword_27CDBB2B8, &qword_21BE46478);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_21BBB3108(v18, v19);
        if (v13)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v18;
          v9[1] = v19;
          v10 = result;

          *(v2[7] + 8 * v10) = v18;
          result = swift_unknownObjectRelease();
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v14 = (v2[6] + 16 * result);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + 8 * result) = v18;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_27;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void sub_21BD52CFC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB2C0, &unk_21BE46480);
    v2 = sub_21BE297DC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v13 = __clz(__rbit64(v5)) | (v12 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_21BD572E0(*(a1 + 56) + 40 * v13, &v24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8568, &unk_21BE3BF70);
    sub_21BB3A2A4(0, &qword_27CDB6730, 0x277D82BB8);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v17 = sub_21BBB3108(v16, v15);
    if (v18)
    {
      v8 = (v2[6] + 16 * v17);
      *v8 = v16;
      v8[1] = v15;
      v9 = v17;

      v10 = v2[7];
      v11 = *(v10 + 8 * v9);
      *(v10 + 8 * v9) = v23;

      v7 = v12;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
      v19 = (v2[6] + 16 * v17);
      *v19 = v16;
      v19[1] = v15;
      *(v2[7] + 8 * v17) = v23;
      v20 = v2[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_23;
      }

      v2[2] = v22;
      v7 = v12;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v12 = v7;
  }
}

void sub_21BD52F6C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58C8, &qword_21BE329C0);
    v2 = sub_21BE297DC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v12 = __clz(__rbit64(v5)) | (v11 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    sub_21BB3DCD4(*(a1 + 56) + 32 * v12, v26);
    *&v25 = v14;
    *(&v25 + 1) = v15;
    v23[2] = v25;
    v24[0] = v26[0];
    v24[1] = v26[1];
    v16 = v25;
    sub_21BB414D0(v24, v23);
    sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);

    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v17 = sub_21BBB3108(v16, *(&v16 + 1));
    if (v18)
    {
      *(v2[6] + 16 * v17) = v16;
      v8 = v17;

      v9 = v2[7];
      v10 = *(v9 + 8 * v8);
      *(v9 + 8 * v8) = v22;

      v7 = v11;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
      *(v2[6] + 16 * v17) = v16;
      *(v2[7] + 8 * v17) = v22;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_23;
      }

      v2[2] = v21;
      v7 = v11;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v11 = v7;
  }
}

id sub_21BD531E0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v177 = a2;
  v178 = a3;
  v181 = a1;
  v3 = sub_21BE2667C();
  v174 = *(v3 - 8);
  v175 = v3;
  MEMORY[0x28223BE20](v3);
  v159 = &v136 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21BE2687C();
  v172 = *(v5 - 8);
  v173 = v5;
  MEMORY[0x28223BE20](v5);
  v158 = &v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21BE2681C();
  v171 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v153 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21BE267EC();
  v170 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v142 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB2A0, &qword_21BE46468);
  MEMORY[0x28223BE20](v11 - 8);
  v146 = &v136 - v12;
  v149 = sub_21BE267AC();
  v148 = *(v149 - 8);
  v13 = MEMORY[0x28223BE20](v149);
  v140 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v141 = &v136 - v15;
  v16 = sub_21BE26A4C();
  v17 = *(v16 - 8);
  v182 = v16;
  v183 = v17;
  v18 = MEMORY[0x28223BE20](v16);
  v166 = &v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v169 = &v136 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v176 = &v136 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v167 = &v136 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v136 - v26;
  v28 = sub_21BE2684C();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v163 = &v136 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB268, &qword_21BE46438);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v136 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB270, &qword_21BE46440);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v136 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB278, &qword_21BE46448);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = &v136 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB280, &qword_21BE46450);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v136 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB288, &unk_21BE46458);
  MEMORY[0x28223BE20](v43 - 8);
  v45 = &v136 - v44;
  v164 = v29;
  v165 = v28;
  v46 = *(v29 + 56);
  v161 = v29 + 56;
  v160 = v46;
  v46(v45, 1, 1, v28);
  v47 = *(v171 + 56);
  v154 = v7;
  v145 = v171 + 56;
  v144 = v47;
  v47(v42, 1, 1, v7);
  v48 = *(v170 + 56);
  v143 = v9;
  v138 = v170 + 56;
  v137 = v48;
  v48(v39, 1, 1, v9);
  v49 = *(v172 + 56);
  v151 = v172 + 56;
  v150 = v49;
  v49(v36, 1, 1, v173);
  v50 = *(v174 + 56);
  v156 = v174 + 56;
  v155 = v50;
  v50(v33, 1, 1, v175);
  v162 = v45;
  v51 = v181;
  v147 = v42;
  v139 = v39;
  v152 = v36;
  v157 = v33;
  sub_21BE2676C();
  if (!*(v51 + 16) || (v52 = *(v51 + 32)) == 0)
  {
    sub_21BE2614C();
    v77 = sub_21BE26A2C();
    v78 = sub_21BE28FFC();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v184 = v80;
      *v79 = 136315138;
      *(v79 + 4) = sub_21BB3D81C(0xD00000000000001CLL, 0x800000021BE5FC30, &v184);
      _os_log_impl(&dword_21BB35000, v77, v78, "STExpressSettingsDefaults.%s contentRestrictions missing", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v80);
      MEMORY[0x21CF05C50](v80, -1, -1);
      MEMORY[0x21CF05C50](v79, -1, -1);
    }

    v61 = v182;
    (*(v183 + 8))(v27, v182);
    v81 = v169;
    v82 = v176;
    v83 = v167;
    if (!*(v51 + 16))
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58C8, &qword_21BE329C0);
  v53 = sub_21BE297BC();
  v54 = v52 + 64;
  v55 = 1 << *(v52 + 32);
  v56 = -1;
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  v57 = v56 & *(v52 + 64);
  v58 = (v55 + 63) >> 6;
  v179 = v53;
  v168 = v53 + 64;

  v60 = 0;
  v61 = v182;
  if (!v57)
  {
LABEL_7:
    v63 = v60;
    while (1)
    {
      v60 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        __break(1u);
        goto LABEL_52;
      }

      if (v60 >= v58)
      {
        break;
      }

      v64 = *(v54 + 8 * v60);
      ++v63;
      if (v64)
      {
        v62 = __clz(__rbit64(v64));
        v57 = (v64 - 1) & v64;
        goto LABEL_12;
      }
    }

    if (v177)
    {
      v84 = v177;
      v85 = sub_21BD55DD0(v84);

      v179 = v85;
      v61 = v182;
    }

    v81 = v169;
    v82 = v176;
    v83 = v167;
    v86 = v165;

    v87 = v163;
    sub_21BE2682C();
    v88 = v164;
    v89 = v162;
    (*(v164 + 16))(v162, v87, v86);
    v160(v89, 0, 1, v86);
    sub_21BE2677C();
    (*(v88 + 8))(v87, v86);
    if (!*(v51 + 16))
    {
      goto LABEL_23;
    }

LABEL_22:
    v90 = *(v51 + 41);
    v91 = v90 | (*(v51 + 43) << 16);
    if (v90 != 3)
    {
      if (HIWORD(v91) - 2 >= 2u)
      {
        if (HIWORD(v91))
        {
          v127 = MEMORY[0x277D4BD60];
        }

        else
        {
          v127 = MEMORY[0x277D4BD58];
        }

        v128 = v148;
        v129 = v146;
        v130 = v149;
        (*(v148 + 104))(v146, *v127, v149);
        (*(v128 + 56))(v129, 0, 1, v130);
        v131 = v141;
        (*(v128 + 32))(v141, v129, v130);
        (*(v128 + 16))(v140, v131, v130);
        v132 = v142;
        sub_21BE267BC();
        v133 = v170;
        v134 = v139;
        v135 = v143;
        (*(v170 + 16))(v139, v132, v143);
        v137(v134, 0, 1, v135);
        sub_21BE2674C();
        (*(v133 + 8))(v132, v135);
        (*(v128 + 8))(v131, v130);
        v81 = v169;
      }

      else
      {
        v104 = v146;
        (*(v148 + 56))(v146, 1, 1, v149);
        sub_21BB3A4CC(v104, &qword_27CDBB2A0, &qword_21BE46468);
      }

      goto LABEL_26;
    }

LABEL_23:
    sub_21BE2614C();
    v92 = sub_21BE26A2C();
    v93 = sub_21BE28FFC();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v184 = v95;
      *v94 = 136315138;
      *(v94 + 4) = sub_21BB3D81C(0xD00000000000001CLL, 0x800000021BE5FC30, &v184);
      _os_log_impl(&dword_21BB35000, v92, v93, "STExpressSettingsDefaults.%s communicationLimits missing", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v95);
      MEMORY[0x21CF05C50](v95, -1, -1);
      v96 = v94;
      v82 = v176;
      MEMORY[0x21CF05C50](v96, -1, -1);
    }

    (*(v183 + 8))(v83, v61);
LABEL_26:
    if (*(v51 + 16) && *(v51 + 44) != 3)
    {
      v105 = v153;
      sub_21BE2665C();
      v106 = v171;
      v107 = v147;
      v108 = v154;
      (*(v171 + 16))(v147, v105, v154);
      v144(v107, 0, 1, v108);
      sub_21BE2675C();
      (*(v106 + 8))(v105, v108);
      if (!*(v51 + 16))
      {
        goto LABEL_37;
      }
    }

    else
    {
      sub_21BE2614C();
      v97 = sub_21BE26A2C();
      v98 = sub_21BE28FFC();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = v81;
        v100 = v82;
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v184 = v102;
        *v101 = 136315138;
        *(v101 + 4) = sub_21BB3D81C(0xD00000000000001CLL, 0x800000021BE5FC30, &v184);
        _os_log_impl(&dword_21BB35000, v97, v98, "STExpressSettingsDefaults.%s communicationSafety missing", v101, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v102);
        MEMORY[0x21CF05C50](v102, -1, -1);
        MEMORY[0x21CF05C50](v101, -1, -1);

        v103 = v100;
        v81 = v99;
        (*(v183 + 8))(v103, v61);
      }

      else
      {

        (*(v183 + 8))(v82, v61);
      }

      if (!*(v51 + 16))
      {
        goto LABEL_37;
      }
    }

    if (*(v51 + 46) != 3)
    {
      v118 = v158;
      sub_21BE2685C();
      v120 = v172;
      v119 = v173;
      v121 = v152;
      (*(v172 + 16))(v152, v118, v173);
      v150(v121, 0, 1, v119);
      sub_21BE2678C();
      (*(v120 + 8))(v118, v119);
      if (*(v51 + 16))
      {
        goto LABEL_40;
      }

      goto LABEL_43;
    }

LABEL_37:
    sub_21BE2614C();
    v109 = sub_21BE26A2C();
    v110 = sub_21BE28FFC();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v184 = v112;
      *v111 = 136315138;
      *(v111 + 4) = sub_21BB3D81C(0xD00000000000001CLL, 0x800000021BE5FC30, &v184);
      _os_log_impl(&dword_21BB35000, v109, v110, "STExpressSettingsDefaults.%s appAndWebActivity missing", v111, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v112);
      MEMORY[0x21CF05C50](v112, -1, -1);
      MEMORY[0x21CF05C50](v111, -1, -1);
    }

    (*(v183 + 8))(v81, v61);
    if (*(v51 + 16))
    {
LABEL_40:
      v113 = *(v51 + 48);

      if (v113 != 3)
      {
        v114 = v159;
        sub_21BE2665C();
        v115 = v174;
        v116 = v175;
        v117 = v157;
        (*(v174 + 16))(v157, v114, v175);
        v155(v117, 0, 1, v116);
        sub_21BE2673C();

        return (*(v115 + 8))(v114, v116);
      }

      goto LABEL_44;
    }

LABEL_43:

LABEL_44:
    v122 = v166;
    sub_21BE2614C();
    v123 = sub_21BE26A2C();
    v124 = sub_21BE28FFC();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v184 = v126;
      *v125 = 136315138;
      *(v125 + 4) = sub_21BB3D81C(0xD00000000000001CLL, 0x800000021BE5FC30, &v184);
      _os_log_impl(&dword_21BB35000, v123, v124, "STExpressSettingsDefaults.%s screenDistance missing", v125, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v126);
      MEMORY[0x21CF05C50](v126, -1, -1);
      MEMORY[0x21CF05C50](v125, -1, -1);
    }

    return (*(v183 + 8))(v122, v61);
  }

  while (1)
  {
    v62 = __clz(__rbit64(v57));
    v57 &= v57 - 1;
LABEL_12:
    v65 = v62 | (v60 << 6);
    v66 = *(v52 + 56);
    v67 = v52;
    v68 = (*(v52 + 48) + 16 * v65);
    v69 = v68[1];
    v180 = *v68;
    v70 = *(v66 + 8 * v65);
    v71 = objc_allocWithZone(MEMORY[0x277CCABB0]);

    result = [v71 initWithInteger_];
    *(v168 + ((v65 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v65;
    v72 = v179;
    v73 = (*(v179 + 48) + 16 * v65);
    *v73 = v180;
    v73[1] = v69;
    *(*(v72 + 56) + 8 * v65) = result;
    v74 = *(v72 + 16);
    v75 = __OFADD__(v74, 1);
    v76 = v74 + 1;
    if (v75)
    {
      break;
    }

    *(v72 + 16) = v76;
    v51 = v181;
    v61 = v182;
    v52 = v67;
    if (!v57)
    {
      goto LABEL_7;
    }
  }

LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_21BD5451C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB2F0, &qword_21BE46518);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BD57514();
  sub_21BE29B6C();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB2D8, &qword_21BE46510);
  sub_21BD575BC(&qword_27CDBB2F8, sub_21BD57634, MEMORY[0x277D83948]);
  sub_21BE298FC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21BD546A8(void *a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v14 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB358, &qword_21BE466C0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BD57DF0();
  sub_21BE29B6C();
  v16 = a2;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57D0, &qword_21BE32858);
  sub_21BD57F94(&qword_27CDBB360, MEMORY[0x277D837D8], MEMORY[0x277D83B90], MEMORY[0x277D83508]);
  sub_21BE298CC();
  if (!v4)
  {
    LOBYTE(v16) = 1;
    v12 = v14;
    sub_21BE298BC();
    BYTE2(v16) = BYTE3(v12);
    LOWORD(v16) = v12 >> 8;
    v15 = 2;
    sub_21BD58004();
    sub_21BE298CC();
    LOWORD(v16) = WORD2(v12);
    v15 = 3;
    sub_21BD58058();
    sub_21BE298CC();
    LOWORD(v16) = HIWORD(v12);
    v15 = 4;
    sub_21BD580AC();
    sub_21BE298CC();
    LOWORD(v16) = a4;
    v15 = 5;
    sub_21BD58100();
    sub_21BE298CC();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21BD54990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656372756F73 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21BE2995C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21BD54A18(uint64_t a1)
{
  v2 = sub_21BD57514();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BD54A54(uint64_t a1)
{
  v2 = sub_21BD57514();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_21BD54A90@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_21BD57360(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_21BD54AD8()
{
  v1 = *v0;
  v2 = 0x7365756C6176;
  v3 = 0xD000000000000013;
  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0x69446E6565726373;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F50746369727473;
  if (v1 != 1)
  {
    v5 = 0xD000000000000013;
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

uint64_t sub_21BD54BAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21BD57874(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21BD54BE0(uint64_t a1)
{
  v2 = sub_21BD57DF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BD54C1C(uint64_t a1)
{
  v2 = sub_21BD57DF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BD54C58@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_21BD57A84(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 11) = BYTE3(v5);
    *(a1 + 9) = v5 >> 8;
    *(a1 + 12) = WORD2(v5);
    *(a1 + 14) = HIWORD(v5);
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_21BD54CCC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000014;
  v4 = 0x800000021BE55780;
  v5 = 0xE700000000000000;
  if (v2 == 1)
  {
    v5 = 0x800000021BE55780;
  }

  else
  {
    v3 = 0x6E776F6E6B6E75;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x61746E6F43796E61;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA00000000007463;
  }

  v8 = 0xD000000000000014;
  if (*a2 != 1)
  {
    v8 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x61746E6F43796E61;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA00000000007463;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21BE2995C();
  }

  return v11 & 1;
}

uint64_t sub_21BD54DC8()
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BD54E74(uint64_t a1)
{
  sub_21BE28ABC();
}

uint64_t sub_21BD54F0C(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

unint64_t sub_21BD54FB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21BD585C8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21BD54FE4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007463;
  v4 = 0x800000021BE55780;
  v5 = 0xD000000000000014;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x61746E6F43796E61;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_21BD5504C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_21BD55078(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_21BD55078(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BE29B2C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(v6, v6[3]);
    sub_21BE2998C();
    v5 = sub_21BE2980C();

    if (v5 >= 3)
    {
      v3 = 2;
    }

    else
    {
      v3 = v5;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_21BD551CC(void *a1, uint64_t a2)
{
  v3 = BYTE2(a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB3E8, &qword_21BE469C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BD58924();
  sub_21BE29B6C();
  v10[15] = 0;
  sub_21BE298BC();
  if (!v2)
  {
    v10[14] = 1;
    sub_21BE298BC();
    v10[13] = v3;
    v10[12] = 2;
    sub_21BD58C80();
    sub_21BE298CC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21BD553AC(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  a5();
  sub_21BE29B6C();
  v16 = 0;
  v12 = v14[1];
  sub_21BE298BC();
  if (!v12)
  {
    v15 = 1;
    sub_21BE298BC();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21BD55538()
{
  v1 = 0x6F50746369727473;
  if (*v0 != 1)
  {
    v1 = 0x70795474696D696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

uint64_t sub_21BD555A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21BD58614(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21BD555C8(uint64_t a1)
{
  v2 = sub_21BD58924();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BD55604(uint64_t a1)
{
  v2 = sub_21BD58924();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BD55640@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_21BD58738(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 2) = BYTE2(result);
  }

  return result;
}

uint64_t sub_21BD556A0(uint64_t a1)
{
  v2 = sub_21BD589CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BD556DC(uint64_t a1)
{
  v2 = sub_21BD589CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BD557A4(uint64_t a1)
{
  v2 = sub_21BD58BD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BD557E0(uint64_t a1)
{
  v2 = sub_21BD58BD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BD558A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v6 || (sub_21BE2995C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F50746369727473 && a2 == 0xEC0000007963696CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21BE2995C();

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

uint64_t sub_21BD55988(uint64_t a1)
{
  v2 = sub_21BD58C2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BD559C4(uint64_t a1)
{
  v2 = sub_21BD58C2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t (*sub_21BD55A44@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X6>, _WORD *a6@<X8>))(void)
{
  result = sub_21BD58A20(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

id sub_21BD55AC8(uint64_t a1, uint64_t a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v6 = objc_opt_self();
  v7 = sub_21BE25BCC();
  v21[0] = 0;
  v8 = [v6 JSONObjectWithData:v7 options:0 error:v21];

  if (v8)
  {
    v9 = v21[0];
    sub_21BE294BC();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8D28, &unk_21BE45710);
    if (swift_dynamicCast())
    {
      v10 = objc_allocWithZone(MEMORY[0x277D08310]);
      v11 = sub_21BE288EC();

      v12 = [v10 initWithDictionary_];

      return v12;
    }
  }

  else
  {
    v14 = v21[0];
    v15 = sub_21BE25A8C();

    swift_willThrow();
  }

  sub_21BE2614C();
  v16 = sub_21BE26A2C();
  v17 = sub_21BE28FDC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v21[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_21BB3D81C(0x7465736572506166, 0xEF293A6D6F726628, v21);
    _os_log_impl(&dword_21BB35000, v16, v17, "STExpressSettingsDefaults.%s could not parse JSON", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x21CF05C50](v19, -1, -1);
    MEMORY[0x21CF05C50](v18, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

unint64_t sub_21BD55DD0(void *a1)
{
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 allValues];
  v7 = sub_21BE2890C();

  sub_21BD52F6C(v7);
  v9 = v8;

  if (v9)
  {
    return v9;
  }

  sub_21BE2614C();
  v11 = sub_21BE26A2C();
  v12 = sub_21BE28FDC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_21BB3D81C(0xD000000000000041, 0x800000021BE5FC50, &v16);
    _os_log_impl(&dword_21BB35000, v11, v12, "STExpressSettingsDefaults.%s unexpected types. Returning empty dictionary", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x21CF05C50](v14, -1, -1);
    MEMORY[0x21CF05C50](v13, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return sub_21BBB686C(MEMORY[0x277D84F90]);
}

id sub_21BD55FDC(uint64_t a1)
{
  v2 = sub_21BE25DFC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = 1684632420;
  v17[1] = 0xE400000000000000;
  sub_21BE2958C();
  if (!*(a1 + 16) || (v6 = sub_21BBB31E8(v16), (v7 & 1) == 0))
  {
    sub_21BBB7238(v16);
    goto LABEL_6;
  }

  sub_21BB3DCD4(*(a1 + 56) + 32 * v6, v17);
  sub_21BBB7238(v16);
  if (!swift_dynamicCast())
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v8 = v15[2];
LABEL_7:
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  sub_21BE25D7C();
  v10 = sub_21BE25DAC();
  (*(v3 + 8))(v5, v2);
  [v9 setLocale_];

  if (v8 && (, v11 = sub_21BE289CC(), v12 = [v9 numberFromString_], swift_bridgeObjectRelease_n(), v11, v12))
  {
    v13 = [v12 integerValue];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

unint64_t sub_21BD56220(uint64_t a1)
{
  v55 = sub_21BE2667C();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_21BE2687C();
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v50 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_21BE2681C();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21BE267AC();
  v46 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v45 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v45 - v8;
  v10 = sub_21BE267EC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21BE2684C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21BBB5D24(MEMORY[0x277D84F90]);
  v56 = a1;
  sub_21BE266BC();
  LOBYTE(a1) = sub_21BE2683C();
  (*(v15 + 8))(v17, v14);
  if (a1)
  {
    *&v59 = 0xD000000000000013;
    *(&v59 + 1) = 0x800000021BE54570;
    sub_21BE2958C();
    v19 = sub_21BBB6B88(&unk_282D85930);
    sub_21BB3A4CC(&unk_282D85950, &qword_27CDBB248, &qword_21BE46420);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB250, &qword_21BE46428);
    *&v59 = v19;
    sub_21BB414D0(&v59, &v61);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v58[0] = v18;
    sub_21BC80224(&v61, v63, isUniquelyReferenced_nonNull_native);
    sub_21BBB7238(v63);
    v18 = *&v58[0];
  }

  sub_21BE2669C();
  v21 = sub_21BE267CC();
  v22 = *(v11 + 8);
  v22(v13, v10);
  if (v21)
  {
    *&v59 = 0xD000000000000013;
    *(&v59 + 1) = 0x800000021BE545B0;
    sub_21BE2958C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB258, &qword_21BE46430);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21BE33260;
    *(inited + 32) = 0x64656C62616E65;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = 1;
    *(inited + 56) = 0x656C626174696465;
    *(inited + 64) = 0xE800000000000000;
    sub_21BE2669C();
    sub_21BE267DC();
    v22(v13, v10);
    v24 = v46;
    v25 = v45;
    (*(v46 + 104))(v45, *MEMORY[0x277D4BD68], v5);
    sub_21BD56C48();
    v26 = sub_21BE2899C();
    v27 = *(v24 + 8);
    v27(v25, v5);
    v27(v9, v5);
    *(inited + 72) = (v26 & 1) == 0;
    v28 = sub_21BBB6B88(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB248, &qword_21BE46420);
    swift_arrayDestroy();
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB250, &qword_21BE46428);
    *&v59 = v28;
    sub_21BB414D0(&v59, &v61);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    *&v58[0] = v18;
    sub_21BC80224(&v61, v63, v29);
    sub_21BBB7238(v63);
    v18 = *&v58[0];
  }

  v30 = v47;
  sub_21BE266AC();
  v31 = sub_21BE2666C();
  (*(v48 + 8))(v30, v49);
  if (v31)
  {
    *&v59 = 0xD000000000000013;
    *(&v59 + 1) = 0x800000021BE54590;
    sub_21BE2958C();
    *&v61 = 0xD000000000000013;
    *(&v61 + 1) = 0x800000021BE54590;
    sub_21BE2958C();
    v32 = sub_21BBB6B88(&unk_282D85968);
    sub_21BB3A4CC(&unk_282D85988, &qword_27CDBB248, &qword_21BE46420);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB250, &qword_21BE46428);
    *&v61 = v32;
    sub_21BB414D0(&v61, v58);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v18;
    sub_21BC80224(v58, &v59, v33);
    sub_21BBB7238(&v59);
    v34 = v57;
    v60 = MEMORY[0x277D84F78] + 8;
    sub_21BB414D0(&v59, &v61);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    *&v58[0] = v34;
    sub_21BC80224(&v61, v63, v35);
    sub_21BBB7238(v63);
    v18 = *&v58[0];
  }

  v36 = v50;
  sub_21BE266CC();
  v37 = sub_21BE2686C();
  (*(v51 + 8))(v36, v52);
  if (v37)
  {
    *&v59 = 0xD000000000000011;
    *(&v59 + 1) = 0x800000021BE545D0;
    sub_21BE2958C();
    v38 = sub_21BBB6B88(&unk_282D859A0);
    sub_21BB3A4CC(&unk_282D859C0, &qword_27CDBB248, &qword_21BE46420);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB250, &qword_21BE46428);
    *&v59 = v38;
    sub_21BB414D0(&v59, &v61);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    *&v58[0] = v18;
    sub_21BC80224(&v61, v63, v39);
    sub_21BBB7238(v63);
    v18 = *&v58[0];
  }

  v40 = v53;
  sub_21BE2668C();
  v41 = sub_21BE2666C();
  (*(v54 + 8))(v40, v55);
  if (v41)
  {
    strcpy(&v59, "screenDistance");
    HIBYTE(v59) = -18;
    sub_21BE2958C();
    v42 = sub_21BBB6B88(&unk_282D859D8);
    sub_21BB3A4CC(&unk_282D859F8, &qword_27CDBB248, &qword_21BE46420);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB250, &qword_21BE46428);
    *&v59 = v42;
    sub_21BB414D0(&v59, &v61);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    *&v58[0] = v18;
    sub_21BC80224(&v61, v63, v43);
    sub_21BBB7238(v63);
    return *&v58[0];
  }

  return v18;
}

unint64_t sub_21BD56C48()
{
  result = qword_27CDBB260;
  if (!qword_27CDBB260)
  {
    v3 = sub_21BE267AC();
    result = swift_getWitnessTable(MEMORY[0x277D4BD70], v3, v0, v1);
    atomic_store(result, &qword_27CDBB260);
  }

  return result;
}

unint64_t sub_21BD56CA0()
{
  result = qword_27CDBB290;
  if (!qword_27CDBB290)
  {
    result = swift_getWitnessTable(aF_3, &_s7PresetsVN, v0, v1);
    atomic_store(result, &qword_27CDBB290);
  }

  return result;
}

uint64_t sub_21BD56CF4(uint64_t a1)
{
  sub_21BE2958C();
  if (!*(a1 + 16) || (v2 = sub_21BBB31E8(v6), (v3 & 1) == 0))
  {
    sub_21BBB7238(v6);
    goto LABEL_6;
  }

  sub_21BB3DCD4(*(a1 + 56) + 32 * v2, v7);
  sub_21BBB7238(v6);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v5 = 0;
    return v5 & 1;
  }

  v5 = sub_21BE2995C();

  return v5 & 1;
}

unint64_t sub_21BD56E10(uint64_t a1, uint64_t a2)
{
  v2 = sub_21BE2980C();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21BD56E5C(uint64_t a1, unint64_t a2)
{
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  if (sub_21BE28B6C())
  {
    v27 = a1;
    v28 = a2;
    v26[0] = 0xD000000000000019;
    v26[1] = 0x800000021BE58C00;
    sub_21BD5728C();

    sub_21BE28F9C();
    sub_21BE2614C();
    v11 = v27;
    v12 = v28;

    v13 = sub_21BE26A2C();
    v14 = sub_21BE28FFC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = v4;
      v16 = v15;
      v17 = swift_slowAlloc();
      v26[0] = v17;
      *v16 = 136315650;
      *(v16 + 4) = sub_21BB3D81C(0xD000000000000011, 0x800000021BE5FCA0, v26);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_21BB3D81C(a1, a2, v26);
      *(v16 + 22) = 2080;
      *(v16 + 24) = sub_21BB3D81C(v11, v12, v26);
      _os_log_impl(&dword_21BB35000, v13, v14, "ActionType.%s %s initialized with %s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v17, -1, -1);
      MEMORY[0x21CF05C50](v16, -1, -1);

      (*(v5 + 8))(v10, v25);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }

    return sub_21BD56E10(v11, v12);
  }

  else
  {
    sub_21BE2614C();

    v18 = sub_21BE26A2C();
    v19 = sub_21BE28FDC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25 = v4;
      v22 = v21;
      v27 = v21;
      *v20 = 136315650;
      *(v20 + 4) = sub_21BB3D81C(0xD000000000000011, 0x800000021BE5FCA0, &v27);
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_21BB3D81C(a1, a2, &v27);
      *(v20 + 22) = 2080;
      *(v20 + 24) = sub_21BB3D81C(0xD000000000000019, 0x800000021BE58C00, &v27);
      _os_log_impl(&dword_21BB35000, v18, v19, "ActionType.%s %s does not start with %s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v22, -1, -1);
      MEMORY[0x21CF05C50](v20, -1, -1);

      (*(v5 + 8))(v8, v25);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    return 8;
  }
}

unint64_t sub_21BD5728C()
{
  result = qword_27CDBB2A8;
  if (!qword_27CDBB2A8)
  {
    result = swift_getWitnessTable(MEMORY[0x277D83818], MEMORY[0x277D837D0], v0, v1);
    atomic_store(result, &qword_27CDBB2A8);
  }

  return result;
}

uint64_t sub_21BD572E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8568, &unk_21BE3BF70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_21BD57360(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB2C8, &qword_21BE46508);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BD57514();
  sub_21BE29B4C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB2D8, &qword_21BE46510);
    sub_21BD575BC(&qword_27CDBB2E0, sub_21BD57568, MEMORY[0x277D83978]);
    sub_21BE298AC();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v7;
}

unint64_t sub_21BD57514()
{
  result = qword_27CDBB2D0;
  if (!qword_27CDBB2D0)
  {
    result = swift_getWitnessTable(byte_21BE46660, &_s7PresetsV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27CDBB2D0);
  }

  return result;
}

unint64_t sub_21BD57568()
{
  result = qword_27CDBB2E8;
  if (!qword_27CDBB2E8)
  {
    result = swift_getWitnessTable(byte_21BE46638, &_s6SourceVN, v0, v1);
    atomic_store(result, &qword_27CDBB2E8);
  }

  return result;
}

uint64_t sub_21BD575BC(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB2D8, &qword_21BE46510);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BD57634()
{
  result = qword_27CDBB300;
  if (!qword_27CDBB300)
  {
    result = swift_getWitnessTable(byte_21BE46610, &_s6SourceVN, v0, v1);
    atomic_store(result, &qword_27CDBB300);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_21BD576AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 18))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_21BD57708(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_21BD57770()
{
  result = qword_27CDBB308;
  if (!qword_27CDBB308)
  {
    result = swift_getWitnessTable(byte_21BE465E8, &_s7PresetsV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27CDBB308);
  }

  return result;
}

unint64_t sub_21BD577C8()
{
  result = qword_27CDBB310;
  if (!qword_27CDBB310)
  {
    result = swift_getWitnessTable(aIjFh, &_s7PresetsV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27CDBB310);
  }

  return result;
}

unint64_t sub_21BD57820()
{
  result = qword_27CDBB318;
  if (!qword_27CDBB318)
  {
    result = swift_getWitnessTable(aYfF, &_s7PresetsV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27CDBB318);
  }

  return result;
}

uint64_t sub_21BD57874(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365756C6176 && a2 == 0xE600000000000000;
  if (v4 || (sub_21BE2995C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F50746369727473 && a2 == 0xEC0000007963696CLL || (sub_21BE2995C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021BE545B0 == a2 || (sub_21BE2995C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021BE54590 == a2 || (sub_21BE2995C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021BE545D0 == a2 || (sub_21BE2995C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69446E6565726373 && a2 == 0xEE0065636E617473)
  {

    return 5;
  }

  else
  {
    v6 = sub_21BE2995C();

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

uint64_t sub_21BD57A84(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB320, &unk_21BE466B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1Tm(a1, v7);
  sub_21BD57DF0();
  sub_21BE29B4C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57D0, &qword_21BE32858);
    v13 = 0;
    sub_21BD57F94(&qword_27CDBB330, MEMORY[0x277D83808], MEMORY[0x277D83BB8], MEMORY[0x277D83528]);
    sub_21BE2985C();
    v7 = v14;
    LOBYTE(v14) = 1;
    sub_21BE2983C();
    v13 = 2;
    sub_21BD57E44();
    sub_21BE2985C();
    v12 = BYTE2(v14);
    v9 = v14;
    v13 = 3;
    sub_21BD57E98();
    sub_21BE2985C();
    v11 = v9;
    v13 = 4;
    sub_21BD57EEC();
    sub_21BE2985C();
    v10[1] = v14;
    v13 = 5;
    sub_21BD57F40();
    sub_21BE2985C();
    (*(v4 + 8))(v6, v3);

    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v7;
}

unint64_t sub_21BD57DF0()
{
  result = qword_27CDBB328;
  if (!qword_27CDBB328)
  {
    result = swift_getWitnessTable(byte_21BE4694C, &_s6SourceV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27CDBB328);
  }

  return result;
}

unint64_t sub_21BD57E44()
{
  result = qword_27CDBB338;
  if (!qword_27CDBB338)
  {
    result = swift_getWitnessTable(byte_21BE46924, &_s19CommunicationLimitsVN, v0, v1);
    atomic_store(result, &qword_27CDBB338);
  }

  return result;
}

unint64_t sub_21BD57E98()
{
  result = qword_27CDBB340;
  if (!qword_27CDBB340)
  {
    result = swift_getWitnessTable(a9Fp, &_s19CommunicationSafetyVN, v0, v1);
    atomic_store(result, &qword_27CDBB340);
  }

  return result;
}

unint64_t sub_21BD57EEC()
{
  result = qword_27CDBB348;
  if (!qword_27CDBB348)
  {
    result = swift_getWitnessTable(a59Ft, &_s17AppAndWebActivityVN, v0, v1);
    atomic_store(result, &qword_27CDBB348);
  }

  return result;
}

unint64_t sub_21BD57F40()
{
  result = qword_27CDBB350;
  if (!qword_27CDBB350)
  {
    result = swift_getWitnessTable(a9Fx, &_s14ScreenDistanceVN, v0, v1);
    atomic_store(result, &qword_27CDBB350);
  }

  return result;
}

uint64_t sub_21BD57F94(unint64_t *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB57D0, &qword_21BE32858);
    v10[0] = a2;
    v10[1] = a3;
    result = swift_getWitnessTable(a4, v9, v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BD58004()
{
  result = qword_27CDBB368;
  if (!qword_27CDBB368)
  {
    result = swift_getWitnessTable(aU5F, &_s19CommunicationLimitsVN, v0, v1);
    atomic_store(result, &qword_27CDBB368);
  }

  return result;
}

unint64_t sub_21BD58058()
{
  result = qword_27CDBB370;
  if (!qword_27CDBB370)
  {
    result = swift_getWitnessTable(a5F_0, &_s19CommunicationSafetyVN, v0, v1);
    atomic_store(result, &qword_27CDBB370);
  }

  return result;
}

unint64_t sub_21BD580AC()
{
  result = qword_27CDBB378;
  if (!qword_27CDBB378)
  {
    result = swift_getWitnessTable(byte_21BE46834, &_s17AppAndWebActivityVN, v0, v1);
    atomic_store(result, &qword_27CDBB378);
  }

  return result;
}

unint64_t sub_21BD58100()
{
  result = qword_27CDBB380;
  if (!qword_27CDBB380)
  {
    result = swift_getWitnessTable(byte_21BE4680C, &_s14ScreenDistanceVN, v0, v1);
    atomic_store(result, &qword_27CDBB380);
  }

  return result;
}

uint64_t _s6SourceV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6SourceV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21BD582C4(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s19CommunicationLimitsVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = *a1;
  if (v4 >= 2)
  {
    v5 = ((v4 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s19CommunicationLimitsVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_21BD584C4()
{
  result = qword_27CDBB388;
  if (!qword_27CDBB388)
  {
    result = swift_getWitnessTable(byte_21BE467E4, &_s6SourceV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27CDBB388);
  }

  return result;
}

unint64_t sub_21BD5851C()
{
  result = qword_27CDBB390;
  if (!qword_27CDBB390)
  {
    result = swift_getWitnessTable(aMhF, &_s6SourceV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27CDBB390);
  }

  return result;
}

unint64_t sub_21BD58574()
{
  result = qword_27CDBB398;
  if (!qword_27CDBB398)
  {
    result = swift_getWitnessTable(aDFd, &_s6SourceV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27CDBB398);
  }

  return result;
}

unint64_t sub_21BD585C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_21BE2980C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21BD58614(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v4 || (sub_21BE2995C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F50746369727473 && a2 == 0xEC0000007963696CLL || (sub_21BE2995C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x70795474696D696CLL && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_21BE2995C();

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

uint64_t sub_21BD58738(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB3A0, &qword_21BE469A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BD58924();
  sub_21BE29B4C();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v11[15] = 0;
  v7 = sub_21BE2983C();
  v11[14] = 1;
  v8 = sub_21BE2983C();
  v11[12] = 2;
  sub_21BD58978();
  sub_21BE2985C();
  (*(v4 + 8))(v6, v3);
  v9 = v11[13];
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return (v8 << 8) | (v9 << 16) | v7;
}

unint64_t sub_21BD58924()
{
  result = qword_27CDBB3A8;
  if (!qword_27CDBB3A8)
  {
    result = swift_getWitnessTable(aAgF, &_s19CommunicationLimitsV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27CDBB3A8);
  }

  return result;
}

unint64_t sub_21BD58978()
{
  result = qword_27CDBB3B0;
  if (!qword_27CDBB3B0)
  {
    result = swift_getWitnessTable(aI3F, &_s19CommunicationLimitsV9LimitTypeON, v0, v1);
    atomic_store(result, &qword_27CDBB3B0);
  }

  return result;
}

unint64_t sub_21BD589CC()
{
  result = qword_27CDBB3C0;
  if (!qword_27CDBB3C0)
  {
    result = swift_getWitnessTable(byte_21BE46E50, &_s19CommunicationSafetyV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27CDBB3C0);
  }

  return result;
}

uint64_t (*sub_21BD58A20(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5))(void)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v16 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  a4();
  sub_21BE29B4C();
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v11 = v16;
    v18 = 0;
    v12 = sub_21BE2983C();
    v17 = 1;
    v13 = sub_21BE2983C();
    (*(v11 + 8))(v10, v8);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return (v12 | (v13 << 8));
  }

  return a4;
}

unint64_t sub_21BD58BD8()
{
  result = qword_27CDBB3D0;
  if (!qword_27CDBB3D0)
  {
    result = swift_getWitnessTable(aHF, &_s17AppAndWebActivityV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27CDBB3D0);
  }

  return result;
}

unint64_t sub_21BD58C2C()
{
  result = qword_27CDBB3E0;
  if (!qword_27CDBB3E0)
  {
    result = swift_getWitnessTable(aYhF, &_s14ScreenDistanceV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27CDBB3E0);
  }

  return result;
}

unint64_t sub_21BD58C80()
{
  result = qword_27CDBB3F0;
  if (!qword_27CDBB3F0)
  {
    result = swift_getWitnessTable(aQ0Ft, &_s19CommunicationLimitsV9LimitTypeON, v0, v1);
    atomic_store(result, &qword_27CDBB3F0);
  }

  return result;
}

unint64_t sub_21BD58D24(uint64_t a1)
{
  *(a1 + 8) = sub_21BD58978();
  result = sub_21BD58D54();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21BD58D54()
{
  result = qword_27CDBB410;
  if (!qword_27CDBB410)
  {
    result = swift_getWitnessTable(byte_21BE46A08, &_s19CommunicationLimitsV9LimitTypeON, v0, v1);
    atomic_store(result, &qword_27CDBB410);
  }

  return result;
}

unint64_t sub_21BD58DAC()
{
  result = qword_27CDBB418;
  if (!qword_27CDBB418)
  {
    result = swift_getWitnessTable(aI6F, &_s19CommunicationLimitsV9LimitTypeON, v0, v1);
    atomic_store(result, &qword_27CDBB418);
  }

  return result;
}

unint64_t sub_21BD58E04()
{
  result = qword_27CDBB420;
  if (!qword_27CDBB420)
  {
    result = swift_getWitnessTable(byte_21BE46B38, &_s19CommunicationLimitsV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27CDBB420);
  }

  return result;
}

unint64_t sub_21BD58E5C()
{
  result = qword_27CDBB428;
  if (!qword_27CDBB428)
  {
    result = swift_getWitnessTable(byte_21BE46BF0, &_s19CommunicationSafetyV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27CDBB428);
  }

  return result;
}

unint64_t sub_21BD58EB4()
{
  result = qword_27CDBB430;
  if (!qword_27CDBB430)
  {
    result = swift_getWitnessTable("!4?f", &_s17AppAndWebActivityV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27CDBB430);
  }

  return result;
}

unint64_t sub_21BD58F0C()
{
  result = qword_27CDBB438;
  if (!qword_27CDBB438)
  {
    result = swift_getWitnessTable(aI3F_0, &_s14ScreenDistanceV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27CDBB438);
  }

  return result;
}

unint64_t sub_21BD58F64()
{
  result = qword_27CDBB440;
  if (!qword_27CDBB440)
  {
    result = swift_getWitnessTable(byte_21BE46CD0, &_s14ScreenDistanceV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27CDBB440);
  }

  return result;
}

unint64_t sub_21BD58FBC()
{
  result = qword_27CDBB448;
  if (!qword_27CDBB448)
  {
    result = swift_getWitnessTable(byte_21BE46CF8, &_s14ScreenDistanceV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27CDBB448);
  }

  return result;
}

unint64_t sub_21BD59014()
{
  result = qword_27CDBB450;
  if (!qword_27CDBB450)
  {
    result = swift_getWitnessTable(byte_21BE46C18, &_s17AppAndWebActivityV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27CDBB450);
  }

  return result;
}

unint64_t sub_21BD5906C()
{
  result = qword_27CDBB458;
  if (!qword_27CDBB458)
  {
    result = swift_getWitnessTable(byte_21BE46C40, &_s17AppAndWebActivityV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27CDBB458);
  }

  return result;
}

unint64_t sub_21BD590C4()
{
  result = qword_27CDBB460;
  if (!qword_27CDBB460)
  {
    result = swift_getWitnessTable(aAdFd, &_s19CommunicationSafetyV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27CDBB460);
  }

  return result;
}

unint64_t sub_21BD5911C()
{
  result = qword_27CDBB468;
  if (!qword_27CDBB468)
  {
    result = swift_getWitnessTable(aQF_0, &_s19CommunicationSafetyV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27CDBB468);
  }

  return result;
}

unint64_t sub_21BD59174()
{
  result = qword_27CDBB470;
  if (!qword_27CDBB470)
  {
    result = swift_getWitnessTable(byte_21BE46AA8, &_s19CommunicationLimitsV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27CDBB470);
  }

  return result;
}

unint64_t sub_21BD591CC()
{
  result = qword_27CDBB478;
  if (!qword_27CDBB478)
  {
    result = swift_getWitnessTable(aAF, &_s19CommunicationLimitsV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27CDBB478);
  }

  return result;
}

uint64_t sub_21BD59278(uint64_t a1)
{
  v2 = sub_21BE26FEC();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21BE2749C();
}

uint64_t sub_21BD59340()
{
  v1 = sub_21BE2754C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    sub_21BE28FEC();
    v7 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

void sub_21BD59480(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE26A4C();
  v37 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v39 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChecklistStateVars(0);
  sub_21BBEAC94();
  v6 = sub_21BE26E9C();
  *a2 = v6;
  *(a2 + 8) = v7 & 1;
  sub_21BB3A2A4(0, &qword_280BD6980, 0x277D08248);
  sub_21BCA1818();
  v8 = sub_21BE2727C();
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  v10 = type metadata accessor for HomeView(0);
  v11 = v10[6];
  *(a2 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  swift_storeEnumTagMultiPayload();
  v12 = (a2 + v10[7]);
  v42 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB480, &unk_21BE46F48);
  sub_21BE283EC();
  v13 = v40[0];
  *v12 = v40[0];
  v14 = a2 + v10[8];
  v15 = *(a1 + 48);
  *(v14 + 32) = *(a1 + 32);
  *(v14 + 48) = v15;
  *(v14 + 64) = *(a1 + 64);
  v16 = *(a1 + 16);
  *v14 = *a1;
  *(v14 + 16) = v16;
  v17 = *(a1 + 40);
  if (v17)
  {
    *(a2 + v10[10]) = v17;
    v18 = qword_27CDB4E98;
    v19 = v17;
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = [objc_allocWithZone(FAHomeUISoftLinking) initWithHome:v19 notificationName:qword_27CDB7E48];

    if (v20)
    {
      *(a2 + v10[9]) = v20;
      *(a2 + v10[11]) = [v20 getPeopleAddController];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v36 = v13;
    v34 = v6;
    v35 = v8;
    v38 = v4;
    v21 = *(a1 + 48);
    v22 = *(a1 + 56);
    sub_21BD5992C(a1, v40);
    sub_21BE261BC();
    sub_21BD5992C(a1, v40);
    v23 = sub_21BE26A2C();
    v24 = sub_21BE28FDC();
    sub_21BD59988(a1);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v42 = v33;
      *v25 = 136315138;
      *&v40[0] = 0x6D657449656D6F68;
      *(&v40[0] + 1) = 0xE800000000000000;
      v32 = v24;
      MEMORY[0x21CF03CA0](v21, v22);
      sub_21BD59988(a1);
      v26 = sub_21BB3D81C(*&v40[0], *(&v40[0] + 1), &v42);

      *(v25 + 4) = v26;
      _os_log_impl(&dword_21BB35000, v23, v32, "Home is nil in HomeView for item: %s", v25, 0xCu);
      v27 = v33;
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x21CF05C50](v27, -1, -1);
      MEMORY[0x21CF05C50](v25, -1, -1);
    }

    else
    {
      sub_21BD59988(a1);
    }

    (*(v37 + 8))(v39, v38);
    v28 = v35;
    sub_21BD599DC();
    swift_allocError();
    swift_willThrow();

    sub_21BB3A4CC(a2 + v11, &qword_27CDB5EB0, &unk_21BE38920);

    v29 = *(v14 + 48);
    v40[2] = *(v14 + 32);
    v40[3] = v29;
    v41 = *(v14 + 64);
    v30 = *(v14 + 16);
    v40[0] = *v14;
    v40[1] = v30;
    sub_21BD59988(v40);
  }
}

uint64_t type metadata accessor for HomeView(uint64_t a1)
{
  result = qword_27CDBB490;
  if (!qword_27CDBB490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21BD599DC()
{
  result = qword_27CDBB488;
  if (!qword_27CDBB488)
  {
    result = swift_getWitnessTable(byte_21BE46FE0, &type metadata for HomeViewError, v0, v1);
    atomic_store(result, &qword_27CDBB488);
  }

  return result;
}

uint64_t sub_21BD59A30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_21BE33260;
  v2 = *(v0 + *(type metadata accessor for HomeView(0) + 32));
  if (v2 >> 62)
  {
    v3 = sub_21BE2951C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D83B88];
  v5 = MEMORY[0x277D83C10];
  *(v1 + 56) = MEMORY[0x277D83B88];
  *(v1 + 64) = v5;
  *(v1 + 32) = v3;
  v6 = *(v0 + 16);
  if (v6)
  {
    v7 = [v6 members];
    sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
    v8 = sub_21BE28C3C();

    if (v8 >> 62)
    {
      v9 = sub_21BE2951C();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!__OFSUB__(v9, 1))
    {
      *(v1 + 96) = v4;
      *(v1 + 104) = v5;
      *(v1 + 72) = (v9 - 1) & ~((v9 - 1) >> 63);
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v11 = objc_opt_self();

      v12 = [v11 bundleForClass_];
      sub_21BE2599C();

      v13 = sub_21BE289DC();

      return v13;
    }

    __break(1u);
  }

  sub_21BB3A2A4(v6, &qword_280BD6980, 0x277D08248);
  sub_21BCA1818();
  result = sub_21BE2726C();
  __break(1u);
  return result;
}

void sub_21BD59C80(void *a1)
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (v7 = *(v1 + *(type metadata accessor for HomeView(0) + 44))) != 0)
  {
    v8 = objc_allocWithZone(MEMORY[0x277D757A0]);
    v9 = a1;
    v10 = v7;
    v16 = [v8 initWithRootViewController_];
    [v9 presentViewController:v16 animated:1 completion:0];

    v11 = v16;
  }

  else
  {
    sub_21BE261BC();
    v12 = sub_21BE26A2C();
    v13 = sub_21BE28FDC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_21BB35000, v12, v13, "Unable to navigate to home contact picker", v14, 2u);
      MEMORY[0x21CF05C50](v14, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

double sub_21BD59E60@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_21BE2838C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v1 + *(type metadata accessor for HomeView(0) + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB4D0, &qword_21BE47098);
  sub_21BE283FC();
  if (v12)
  {
    (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
    v7 = sub_21BE283CC();
    (*(v4 + 8))(v6, v3);
    sub_21BE2869C();
    sub_21BE26F2C();
    v19 = v21;
    v17 = v23;
    v15 = 0;
    *&v25 = v7;
    *(&v25 + 1) = v20;
    LOBYTE(v26) = v21;
    *(&v26 + 1) = *v18;
    DWORD1(v26) = *&v18[3];
    *(&v26 + 1) = v22;
    v27[0] = v23;
    *&v27[1] = *v16;
    *&v27[4] = *&v16[3];
    *&v27[8] = v24;
    v27[24] = 0;
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8110, &unk_21BE3AE10);
    sub_21BC65EA8();
    sub_21BE2784C();

    v25 = v12;
    v26 = v13;
    *v27 = *v14;
    *&v27[9] = *&v14[9];
  }

  else
  {
    sub_21BE2837C();
    (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
    v8 = sub_21BE283CC();

    (*(v4 + 8))(v6, v3);
    sub_21BE2869C();
    sub_21BE26F2C();
    v19 = v21;
    v17 = v23;
    v15 = 1;
    *&v12 = v8;
    *(&v12 + 1) = v20;
    LOBYTE(v13) = v21;
    *(&v13 + 1) = *v18;
    DWORD1(v13) = *&v18[3];
    *(&v13 + 1) = v22;
    v14[0] = v23;
    *&v14[1] = *v16;
    *&v14[4] = *&v16[3];
    *&v14[8] = v24;
    v14[24] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8110, &unk_21BE3AE10);
    sub_21BC65EA8();
    sub_21BE2784C();
  }

  v9 = v26;
  *a1 = v25;
  a1[1] = v9;
  a1[2] = *v27;
  result = *&v27[9];
  *(a1 + 41) = *&v27[9];
  return result;
}

void sub_21BD5A210()
{
  v1 = v0;
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v7 = sub_21BE289CC();
  v8 = [v6 initWithBundleIdentifier_];

  v9 = [objc_opt_self() imageDescriptorNamed_];
  v10 = [v8 prepareImageForDescriptor_];

  if (v10)
  {
    v11 = [v10 CGImage];
    if (v11)
    {
      v12 = v11;
      [v10 iconSize];
      [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

      v13 = sub_21BE2836C();
      v14 = (v1 + *(type metadata accessor for HomeView(0) + 28));
      v15 = v14[1];
      v24 = *v14;
      v25 = v15;
      v23 = v13;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB4D0, &qword_21BE47098);
      sub_21BE2840C();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_21BE261BC();
    v16 = sub_21BE26A2C();
    v17 = sub_21BE28FDC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_21BB35000, v16, v17, "Failed to load Home app icon, falling back to SF Symbol", v18, 2u);
      MEMORY[0x21CF05C50](v18, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v19 = sub_21BE2837C();
    v20 = (v1 + *(type metadata accessor for HomeView(0) + 28));
    v21 = v20[1];
    v24 = *v20;
    v25 = v21;
    v23 = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB4D0, &qword_21BE47098);
    sub_21BE2840C();
  }
}

id sub_21BD5A570@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HomeView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BD5BA4C(v1, v6);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_21BD5BAB0(v6, v8 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E80, &qword_21BE33960);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v21 = v9;
  sub_21BE283EC();
  v10 = v19;
  v11 = v20;
  sub_21BD5BA4C(v1, v6);
  v12 = swift_allocObject();
  sub_21BD5BAB0(v6, v12 + v7);
  if (qword_27CDB4EA0 != -1)
  {
    swift_once();
  }

  v18 = qword_27CDB7E50;
  v13 = sub_21BD59340();
  swift_getKeyPath();
  v19 = v13;
  sub_21BBEAC94();
  sub_21BE25F1C();

  swift_beginAccess();
  v14 = *(v13 + 22);

  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = sub_21BD5BB14;
  *(a1 + 24) = v8;
  *(a1 + 32) = sub_21BD5BD38;
  *(a1 + 40) = v12;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v15 = v18;
  *(a1 + 64) = v18;
  *(a1 + 72) = v14;

  return v15;
}

uint64_t sub_21BD5A7D8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v94 = a1;
  v96 = a3;
  v4 = 1701670728;
  v5 = type metadata accessor for HomeView(0);
  v93 = *(v5 - 8);
  v6 = *(v93 + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v84 - v10;
  v12 = (a2 + *(v9 + 40));
  v13 = *(v12 + 8);
  v95 = v12;
  if (v13 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21BE32770;
    v15 = *(v12 + 5);
    if (v15)
    {
      v16 = [v15 name];
      v4 = sub_21BE28A0C();
      v18 = v17;
    }

    else
    {
      v18 = 0xE400000000000000;
    }

    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_21BBBEFE8();
    *(v14 + 32) = v4;
    *(v14 + 40) = v18;
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v26 = objc_opt_self();

    v27 = [v26 &selRef:ObjCClassFromMetadata :? launchScreenTimeSetupForUser:? inObjectModel:? isExpressSetup:? withCompletion:? + 3];
    sub_21BE2599C();

    v28 = sub_21BE289DC();
    v91 = v29;
    v92 = v28;

    v90 = sub_21BD59A30();
    v31 = v30;
    v32 = [v26 bundleForClass_];
    v33 = sub_21BE2599C();
    v35 = v34;

    sub_21BD59E60(&v110);
    v107 = v110;
    v108 = v111;
    v109[0] = *v112;
    *(v109 + 9) = *&v112[9];
    sub_21BD5BA4C(a2, v11);
    v36 = (*(v93 + 80) + 16) & ~*(v93 + 80);
    v37 = (v6 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    sub_21BD5BAB0(v11, v38 + v36);
    v40 = v94;
    v39 = v95;
    *(v38 + v37) = v94;
    v41 = v39[3];
    v101 = v39[2];
    v102 = v41;
    v103 = *(v39 + 64);
    v42 = v39[1];
    v99 = *v39;
    v100 = v42;
    v43 = sub_21BD5BE20();
    v44 = swift_allocObject();
    v45 = v39[3];
    *(v44 + 48) = v39[2];
    *(v44 + 64) = v45;
    *(v44 + 80) = *(v39 + 64);
    v46 = v39[1];
    *(v44 + 16) = *v39;
    *(v44 + 32) = v46;
    v104 = v107;
    v105 = v108;
    v106[0] = v109[0];
    *(v106 + 9) = *(v109 + 9);
    v47 = v40;
    sub_21BD5992C(&v99, v97);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB4E0, &qword_21BE470A0);
    sub_21BD5BE74();
    v48 = sub_21BE2852C();
    *&v110 = v92;
    *(&v110 + 1) = v91;
    *&v111 = v90;
    *(&v111 + 1) = v31;
    *v112 = v33;
    *&v112[8] = v35;
    *&v112[16] = 0;
    *&v112[24] = sub_21BD5C0B0;
    v113 = v38;
    v114 = 0;
    v115 = v44;
    v117 = &type metadata for HomeDataItem;
    v118 = v43;
    v119 = v48;
    sub_21BBC7A18(&v110, v97);
    v98 = 0;
    sub_21BBC24D4();
    sub_21BBC2528();
    sub_21BE2784C();
    return sub_21BBC7A74(&v110);
  }

  else
  {
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v19 = swift_allocObject();
    v86 = xmmword_21BE32770;
    *(v19 + 16) = xmmword_21BE32770;
    v20 = *(v12 + 5);
    v84 = v20;
    v85 = v6;
    if (v20)
    {
      v21 = [v20 name];
      v22 = sub_21BE28A0C();
      v24 = v23;
    }

    else
    {
      v24 = 0xE400000000000000;
      v22 = 1701670728;
    }

    *(v19 + 56) = MEMORY[0x277D837D0];
    v87 = sub_21BBBEFE8();
    *(v19 + 64) = v87;
    *(v19 + 32) = v22;
    *(v19 + 40) = v24;
    type metadata accessor for ConfirmChildAgeViewModel();
    v50 = swift_getObjCClassFromMetadata();
    v51 = objc_opt_self();

    v52 = [v51 bundleForClass_];
    sub_21BE2599C();

    v53 = sub_21BE289DC();
    v91 = v54;
    v92 = v53;

    v55 = [v51 bundleForClass_];
    v56 = sub_21BE2599C();
    v89 = v57;
    v90 = v56;

    sub_21BD59E60(&v104);
    v107 = v104;
    v108 = v105;
    v109[0] = v106[0];
    *(v109 + 9) = *(v106 + 9);
    sub_21BD5BA4C(a2, v8);
    v58 = (*(v93 + 80) + 16) & ~*(v93 + 80);
    v59 = (v85 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    sub_21BD5BAB0(v8, v60 + v58);
    v61 = v94;
    *(v60 + v59) = v94;
    v62 = v61;
    v63 = swift_allocObject();
    *(v63 + 16) = v86;
    v64 = v84;
    if (v84)
    {
      v65 = v62;
      v66 = [v64 name];
      v67 = sub_21BE28A0C();
      v69 = v68;
    }

    else
    {
      v70 = v62;
      v69 = 0xE400000000000000;
      v67 = 1701670728;
    }

    v71 = v87;
    *(v63 + 56) = MEMORY[0x277D837D0];
    *(v63 + 64) = v71;
    *(v63 + 32) = v67;
    *(v63 + 40) = v69;

    v72 = [v51 bundleForClass_];
    sub_21BE2599C();

    v73 = sub_21BE289DC();
    v75 = v74;

    v76 = v95;
    v77 = v95[3];
    v101 = v95[2];
    v102 = v77;
    v103 = *(v95 + 64);
    v78 = v95[1];
    v99 = *v95;
    v100 = v78;
    v79 = sub_21BD5BE20();
    v80 = swift_allocObject();
    v81 = v76[3];
    *(v80 + 48) = v76[2];
    *(v80 + 64) = v81;
    *(v80 + 80) = *(v76 + 64);
    v82 = v76[1];
    *(v80 + 16) = *v76;
    *(v80 + 32) = v82;
    v110 = v107;
    v111 = v108;
    *v112 = v109[0];
    *&v112[9] = *(v109 + 9);
    sub_21BD5992C(&v99, v97);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB4E0, &qword_21BE470A0);
    sub_21BD5BE74();
    v83 = sub_21BE2852C();
    *&v110 = v92;
    *(&v110 + 1) = v91;
    *&v111 = v90;
    *(&v111 + 1) = v89;
    *v112 = 0;
    *&v112[8] = sub_21BD5BD98;
    *&v112[16] = v60;
    *&v112[24] = v73;
    v113 = v75;
    v114 = 0;
    v115 = v80;
    v116 = v109[2];
    v117 = &type metadata for HomeDataItem;
    v118 = v79;
    v119 = v83;
    sub_21BBC7968(&v110, v97);
    v98 = 1;
    sub_21BBC24D4();
    sub_21BBC2528();
    sub_21BE2784C();
    return sub_21BBC79C4(&v110);
  }
}

void sub_21BD5B0F8(uint64_t a1, void *a2)
{
  v37 = a2;
  v3 = sub_21BE26FEC();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21BE26A4C();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_21BE2590C();
  v7 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  v13 = sub_21BE25B9C();
  v39 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + *(type metadata accessor for HomeView(0) + 32));
  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = *(a1 + 16);
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_15:
    v9 = *(a1 + 24);
    sub_21BB3A2A4(0, &qword_280BD6980, 0x277D08248);
    sub_21BCA1818();
    sub_21BE2726C();
    __break(1u);
    goto LABEL_16;
  }

  v17 = sub_21BE2951C();
  v18 = *(a1 + 16);
  if (!v18)
  {
    goto LABEL_15;
  }

LABEL_3:
  v19 = v18;
  v20 = sub_21BE2905C();

  if (!(v20 >> 62))
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_5;
  }

LABEL_16:
  v21 = sub_21BE2951C();
LABEL_5:

  if (v17 == v21)
  {
    sub_21BE258FC();
    v22 = [objc_opt_self() getURLScheme];
    if (v22)
    {
      v23 = v22;
      sub_21BE28A0C();
    }

    sub_21BE258DC();
    MEMORY[0x21CF00A60](0x6174654472657375, 0xEB00000000736C69);
    sub_21BE258AC();
    (*(v7 + 8))(v9, v38);
    v24 = v39;
    if ((*(v39 + 48))(v12, 1, v13) == 1)
    {
      sub_21BB3A4CC(v12, &unk_27CDB57F0, &qword_21BE328A0);
      v25 = v34;
      sub_21BE261BC();
      v26 = sub_21BE26A2C();
      v27 = sub_21BE28FDC();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_21BB35000, v26, v27, "Unable to create homeAppURL", v28, 2u);
        MEMORY[0x21CF05C50](v28, -1, -1);
      }

      (*(v35 + 8))(v25, v36);
    }

    else
    {
      (*(v24 + 32))(v15, v12, v13);
      v29 = v31;
      sub_21BD20368(v31);
      sub_21BE26FBC();
      (*(v32 + 8))(v29, v33);
      (*(v24 + 8))(v15, v13);
    }
  }

  else
  {
    sub_21BD59C80(v37);
  }
}

void sub_21BD5B638(uint64_t a1)
{
  type metadata accessor for HomeView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB4D0, &qword_21BE47098);
  sub_21BE283FC();
  if (v1)
  {
  }

  else
  {
    sub_21BD5A210();
  }
}

void sub_21BD5B6E8(uint64_t a1)
{
  sub_21BD5B8B8(319, &qword_27CDB56D8, type metadata accessor for ChecklistStateVars);
  if (v1 <= 0x3F)
  {
    sub_21BD5B844(319);
    if (v2 <= 0x3F)
    {
      sub_21BD5B8B8(319, &qword_27CDB5EC8, MEMORY[0x277CDF708]);
      if (v3 <= 0x3F)
      {
        sub_21BD5B90C(319);
        if (v4 <= 0x3F)
        {
          sub_21BB3A2A4(319, &qword_27CDBB4B0, off_2782F0C38);
          if (v5 <= 0x3F)
          {
            sub_21BB3A2A4(319, &qword_27CDBB4B8, 0x277CD1A60);
            if (v6 <= 0x3F)
            {
              sub_21BD5B970(319);
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

void sub_21BD5B844(uint64_t a1)
{
  if (!qword_27CDBB4A0)
  {
    sub_21BB3A2A4(255, &qword_280BD6980, 0x277D08248);
    sub_21BCA1818();
    v1 = sub_21BE2728C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDBB4A0);
    }
  }
}

void sub_21BD5B8B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21BE26E8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21BD5B90C(uint64_t a1)
{
  if (!qword_27CDBB4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB480, &unk_21BE46F48);
    v1 = sub_21BE2842C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDBB4A8);
    }
  }
}

void sub_21BD5B970(uint64_t a1)
{
  if (!qword_27CDBB4C0)
  {
    sub_21BB3A2A4(255, &qword_27CDB6358, 0x277D75D28);
    v1 = sub_21BE2946C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDBB4C0);
    }
  }
}

unint64_t sub_21BD5B9DC()
{
  result = qword_27CDBB4C8;
  if (!qword_27CDBB4C8)
  {
    result = swift_getWitnessTable(byte_21BE46FB8, &type metadata for HomeViewError, v0, v1);
    atomic_store(result, &qword_27CDBB4C8);
  }

  return result;
}

uint64_t sub_21BD5BA4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD5BAB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD5BB14@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for HomeView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21BD5A7D8(a1, v6, a2);
}

uint64_t objectdestroyTm_24()
{
  v1 = type metadata accessor for HomeView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21BE26FEC();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + v1[8];

  return swift_deallocObject();
}

void sub_21BD5BD38()
{
  v1 = *(type metadata accessor for HomeView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_21BD5B638(v2);
}

unint64_t sub_21BD5BE20()
{
  result = qword_27CDBB4D8;
  if (!qword_27CDBB4D8)
  {
    result = swift_getWitnessTable(aAb, &type metadata for HomeDataItem, v0, v1);
    atomic_store(result, &qword_27CDBB4D8);
  }

  return result;
}

unint64_t sub_21BD5BE74()
{
  result = qword_27CDBB4E8;
  if (!qword_27CDBB4E8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB4E0, &qword_21BE470A0);
    v4[0] = sub_21BC65EA8();
    v4[1] = v4[0];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDBB4E8);
  }

  return result;
}

uint64_t objectdestroy_14Tm()
{
  v1 = type metadata accessor for HomeView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;

  v5 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21BE26FEC();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = v4 + v1[8];

  return swift_deallocObject();
}

void sub_21BD5C0B0()
{
  v1 = *(type metadata accessor for HomeView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_21BD5B0F8(v0 + v2, v3);
}

unint64_t sub_21BD5C13C()
{
  result = qword_27CDBB4F0;
  if (!qword_27CDBB4F0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB4F8, &qword_21BE470A8);
    v4[0] = sub_21BD5C1C8();
    v4[1] = sub_21BCB1380();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBB4F0);
  }

  return result;
}

unint64_t sub_21BD5C1C8()
{
  result = qword_27CDBB500;
  if (!qword_27CDBB500)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB508, &qword_21BE470B0);
    v4[0] = sub_21BCE8D44();
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBB500);
  }

  return result;
}

uint64_t FamilyDeclaredAgeRangeAnalyticsPackage.init(from:)(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = sub_21BE26A4C();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BD5C314, 0, 0);
}

uint64_t sub_21BD5C314()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21BD5C430;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC830, &qword_21BE4B460);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BBB25CC;
  v0[13] = &block_descriptor_44;
  v0[14] = v2;
  [v1 fetchFamilyCircleWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BD5C430()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_21BD5C618;
  }

  else
  {
    v2 = sub_21BD5C540;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21BD5C540()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = [v2 ageCategory] == 2;
  v4 = [v2 ageCategory];
  v5 = sub_21BE2902C();

  v6 = v0[19];
  v7 = v0[24] != 0;
  *v6 = v4;
  *(v6 + 8) = v7;
  *(v6 + 9) = v5 & 1;
  *(v6 + 10) = 4;
  *(v6 + 11) = v3;

  v8 = v0[1];

  return v8();
}

uint64_t sub_21BD5C618(uint64_t a1)
{
  v2 = v1[24];
  swift_willThrow();
  sub_21BE260EC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FDC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[24];
  v8 = v1[20];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_21BB35000, v4, v5, "FamilyDeclaredAgeRangeAnalyticsPackage: Failed to fetch family circle: %@", v9, 0xCu);
    sub_21BB3A4CC(v10, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v10, -1, -1);
    MEMORY[0x21CF05C50](v9, -1, -1);
  }

  else
  {
  }

  (*(v1[22] + 8))(v1[23], v1[21]);
  v13 = v1[19];
  v14 = v1[24] != 0;
  *v13 = 0;
  *(v13 + 8) = v14;
  *(v13 + 9) = 1026;
  *(v13 + 11) = 0;

  v15 = v1[1];

  return v15();
}

uint64_t sub_21BD5C870@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 4)
  {
    type metadata accessor for AgeRangeGlobalState(0);
    result = sub_21BE299DC();
    __break(1u);
  }

  else
  {
    *a2 = 0x2010003u >> (8 * result);
  }

  return result;
}

unint64_t static AgeRangeNavigationEntryPoint.convert(from:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x2030100u >> (8 * result);
  if (result >= 4)
  {
    LOBYTE(v2) = 4;
  }

  *a2 = v2;
  return result;
}

uint64_t FamilyDeclaredAgeRangeAnalyticsPackage.init(ageCategory:isPartOfFamily:onChildDevice:entryPoint:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  *a6 = result;
  *(a6 + 8) = a2 & 1;
  *(a6 + 9) = a3;
  *(a6 + 10) = v6;
  *(a6 + 11) = a4;
  return result;
}

void FamilyDeclaredAgeRangeAnalyticsPackage.init(from:onChildDevice:entryPoint:)(void *a1@<X0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = [a1 ageCategory];
  v9 = sub_21BE2902C();

  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 9) = v9 & 1;
  *(a4 + 10) = v7;
  *(a4 + 11) = a2;
}

void FamilyDeclaredAgeRangeAnalyticsPackage.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_21BD5DFA8();
  sub_21BE25F1C();

  v4 = *(a1 + 88);
  v5 = *(a1 + 96);
  swift_getKeyPath();
  sub_21BE25F1C();

  v6 = *(a1 + 80);
  v7 = [*(a1 + 72) entryPoint];
  if (v7)
  {
    if (v7 == 3)
    {
      v8 = 2;
    }

    else if (v7 == 1)
    {
      v8 = 1;
    }

    else if (v7 == 2)
    {
      v8 = 3;
    }

    else
    {
      v8 = 4;
    }
  }

  else
  {
    v8 = 0;
  }

  swift_getKeyPath();
  sub_21BE25F1C();

  v9 = *(a1 + 88);
  v10 = *(a1 + 96);

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6;
  *(a2 + 10) = v8;
  *(a2 + 11) = (v9 == 2) & ~v10;
}

uint64_t sub_21BD5CB34()
{
  v0 = sub_21BE26A4C();
  __swift_allocate_value_buffer(v0, qword_27CDBB510);
  __swift_project_value_buffer(v0, qword_27CDBB510);
  return sub_21BE26A3C();
}

void sub_21BD5CC68(uint64_t *a1, char a2, const char *a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  v7 = *(a1 + 11);
  v16 = a2;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  sub_21BD5DC44(&v16, &v12);
  if (qword_27CDB4FB8 != -1)
  {
    swift_once();
  }

  v8 = sub_21BE26A4C();
  __swift_project_value_buffer(v8, qword_27CDBB510);
  oslog = sub_21BE26A2C();
  v9 = sub_21BE28FBC();
  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_21BB35000, oslog, v9, a3, v10, 2u);
    MEMORY[0x21CF05C50](v10, -1, -1);
  }
}

id FamilyDeclaredAgeRangeAnalytics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FamilyDeclaredAgeRangeAnalytics.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FamilyDeclaredAgeRangeAnalytics();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FamilyDeclaredAgeRangeAnalytics.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FamilyDeclaredAgeRangeAnalytics();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_21BD5CEB0(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_21BD5CF10(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_21BD5CF84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_21BD572E0((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_21BD5CFD0@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v4 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_21BD572E0(*(v4 + 56) + 40 * v13, &v22);
    v20 = v23;
    v21 = v22;
    v17 = v24;
    *v1 = v4;
    v1[1] = v3;
    v1[2] = v6;
    v1[3] = v8;
    v1[4] = v12;

    if (v15)
    {
      v19 = v1[5];
      *&v22 = v16;
      *(&v22 + 1) = v15;
      v24 = v20;
      v23 = v21;
      v25 = v17;
      v19(&v22);
      return sub_21BB3A4CC(&v22, &qword_27CDBB550, qword_21BE474C8);
    }

    else
    {
LABEL_13:
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v1[3] = v11;
        v1[4] = 0;
        goto LABEL_13;
      }

      v7 = *(v3 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_21BD5D11C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v55 = a1;
  v56 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v57 = v8;
  v58 = 0;
  v59 = v11 & v9;
  v60 = a2;
  v61 = a3;

  sub_21BD5CFD0(&v50);
  v12 = v51;
  if (!v51)
  {
    goto LABEL_25;
  }

  v13 = v50;
  v47 = v52;
  v48 = v53;
  v49 = v54;
  v14 = *a5;
  v15 = sub_21BBB3108(v50, v51);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_21BC7BC58(v20, a4 & 1);
    v15 = sub_21BBB3108(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    v15 = sub_21BE299FC();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = v15;
    sub_21BC80CC4();
    v15 = v25;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = v15;

    sub_21BCA6258(&v47, v23[7] + 40 * v24);
    goto LABEL_15;
  }

LABEL_13:
  v23[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v23[6] + 16 * v15);
  *v26 = v13;
  v26[1] = v12;
  v27 = v23[7] + 40 * v15;
  v28 = v47;
  v29 = v48;
  *(v27 + 32) = v49;
  *v27 = v28;
  *(v27 + 16) = v29;
  v30 = v23[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (!v19)
  {
    v23[2] = v31;
LABEL_15:
    sub_21BD5CFD0(&v50);
    v12 = v51;
    if (v51)
    {
      v21 = 1;
      do
      {
        v13 = v50;
        v47 = v52;
        v48 = v53;
        v49 = v54;
        v33 = *a5;
        v34 = sub_21BBB3108(v50, v12);
        v36 = v33[2];
        v37 = (v35 & 1) == 0;
        v19 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v35;
        if (v33[3] < v38)
        {
          sub_21BC7BC58(v38, 1);
          v34 = sub_21BBB3108(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v32 = v34;

          sub_21BCA6258(&v47, v40[7] + 40 * v32);
        }

        else
        {
          v40[(v34 >> 6) + 8] |= 1 << v34;
          v41 = (v40[6] + 16 * v34);
          *v41 = v13;
          v41[1] = v12;
          v42 = v40[7] + 40 * v34;
          v43 = v47;
          v44 = v48;
          *(v42 + 32) = v49;
          *v42 = v43;
          *(v42 + 16) = v44;
          v45 = v40[2];
          v19 = __OFADD__(v45, 1);
          v46 = v45 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v46;
        }

        sub_21BD5CFD0(&v50);
        v12 = v51;
      }

      while (v51);
    }

LABEL_25:
    sub_21BC50480(v55);

    return;
  }

LABEL_27:
  __break(1u);
}

void sub_21BD5D43C(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 9);
  v8 = *(a2 + 10);
  v9 = *(a2 + 11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE374E0;
  *(inited + 32) = 0x65676E6152656761;
  *(inited + 40) = 0xE800000000000000;
  if (v6)
  {
    goto LABEL_2;
  }

  if (v5 > 0)
  {
    if (v5 == 2)
    {
      v11 = 0xE500000000000000;
      v12 = 0x646C696843;
      goto LABEL_3;
    }

    if (v5 == 1)
    {
      v11 = 0xE400000000000000;
      v12 = 1852138836;
      goto LABEL_3;
    }

    goto LABEL_26;
  }

  if (v5 != -1)
  {
    if (!v5)
    {
      v11 = 0xE500000000000000;
      v12 = 0x746C756441;
      goto LABEL_3;
    }

LABEL_26:
    type metadata accessor for FAMemberType(0);
    sub_21BE299DC();
    __break(1u);
    return;
  }

LABEL_2:
  v11 = 0xE700000000000000;
  v12 = 0x6E776F6E6B6E55;
LABEL_3:
  v13 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 48) = v12;
  *(inited + 56) = v11;
  *(inited + 88) = 0x696D61466E497369;
  *(inited + 96) = 0xEA0000000000796CLL;
  v14 = MEMORY[0x277D839B0];
  if (v7 == 2)
  {
    v15 = 0;
    v16 = 0;
    *(inited + 104) = 0;
    *(inited + 112) = 0;
    *(inited + 120) = 0;
  }

  else
  {
    *(inited + 104) = v7 & 1;
    v16 = &protocol witness table for Bool;
    v15 = MEMORY[0x277D839B0];
  }

  *(inited + 128) = v15;
  *(inited + 136) = v16;
  strcpy((inited + 144), "onChildDevice");
  *(inited + 158) = -4864;
  *(inited + 184) = v14;
  *(inited + 192) = &protocol witness table for Bool;
  *(inited + 160) = v9;
  *(inited + 200) = 0x696F507972746E65;
  *(inited + 208) = 0xEA0000000000746ELL;
  if (v8 <= 1)
  {
    if (v8)
    {
      v17 = 0x800000021BE5FE70;
      v18 = 0xD000000000000016;
    }

    else
    {
      v17 = 0xE300000000000000;
      v18 = 4804673;
    }
  }

  else if (v8 == 2)
  {
    v17 = 0xE300000000000000;
    v18 = 5588547;
  }

  else if (v8 == 3)
  {
    v17 = 0xEF73676E69747465;
    v18 = 0x5320796C696D6146;
  }

  else
  {
    v17 = 0xE700000000000000;
    v18 = 0x6E776F6E6B6E55;
  }

  *(inited + 240) = v13;
  *(inited + 248) = &protocol witness table for String;
  *(inited + 216) = v18;
  *(inited + 224) = v17;
  v19 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E8, &qword_21BE32890);
  swift_arrayDestroy();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v19;
  sub_21BD5D11C(a3, sub_21BD5CF84, 0, isUniquelyReferenced_nonNull_native, &v22);

  v21 = v22;
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  LOBYTE(v22) = v4;

  sub_21BCA55DC(&v22, v21);
}

void _s14FamilyCircleUI0A25DeclaredAgeRangeAnalyticsC33sendOnboardingViewNavigationEvent4with4viewyAA0adefG7PackageV_AA0efgiJ0OtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = 0xEB00000000656741;
  v3 = 0x206D7269666E6F43;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  v7 = *(a1 + 10);
  v28 = *(a1 + 11);
  v8 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F38, &qword_21BE36340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 2003134838;
  v10 = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  if (v8 > 1)
  {
    v12 = 0x206D7269666E6F43;
    v13 = 0xEB00000000656741;
    if (v8 != 2)
    {
      v13 = 0x800000021BE5FEF0;
      v12 = 0xD000000000000026;
    }
  }

  else
  {
    if (v8)
    {
      v11 = "Intro Child/Teen Version";
    }

    else
    {
      v11 = "Intro Adult/Teen Version";
    }

    v13 = (v11 - 32) | 0x8000000000000000;
    v12 = 0xD000000000000018;
  }

  *(inited + 48) = v12;
  *(inited + 56) = v13;
  v14 = sub_21BBB6068(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(v10, &unk_27CDB6F40, qword_21BE36348);
  LOBYTE(v29) = 49;
  v30 = v4;
  v31 = v5;
  v32 = v6;
  v33 = v7;
  v34 = v28;
  v15 = sub_21BCA2F6C(v14);

  sub_21BD5D43C(&v29, &v30, v15);

  if (qword_27CDB4FB8 != -1)
  {
    swift_once();
  }

  v16 = sub_21BE26A4C();
  __swift_project_value_buffer(v16, qword_27CDBB510);
  v17 = sub_21BE26A2C();
  v18 = sub_21BE28FBC();
  if (!os_log_type_enabled(v17, v18))
  {
    goto LABEL_30;
  }

  v19 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  v30 = v20;
  *v19 = 136446978;
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      v2 = 0x800000021BE5FEF0;
      v3 = 0xD000000000000026;
    }
  }

  else
  {
    if (v8)
    {
      v2 = 0x800000021BE5FF20;
    }

    else
    {
      v2 = 0x800000021BE5FF40;
    }

    v3 = 0xD000000000000018;
  }

  v21 = 0x6E776F6E6B6E55;
  v22 = sub_21BB3D81C(v3, v2, &v30);

  *(v19 + 4) = v22;
  *(v19 + 12) = 2082;
  if (v7 <= 1)
  {
    if (v7)
    {
      v23 = 0x800000021BE5FE70;
      v24 = 0xD000000000000016;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 4804673;
    }
  }

  else if (v7 == 2)
  {
    v23 = 0xE300000000000000;
    v24 = 5588547;
  }

  else if (v7 == 3)
  {
    v23 = 0xEF73676E69747465;
    v24 = 0x5320796C696D6146;
  }

  else
  {
    v23 = 0xE700000000000000;
    v24 = 0x6E776F6E6B6E55;
  }

  v25 = sub_21BB3D81C(v24, v23, &v30);

  *(v19 + 14) = v25;
  *(v19 + 22) = 2082;
  if (v5)
  {
    goto LABEL_28;
  }

  if (v4 > 0)
  {
    if (v4 == 1)
    {
      v26 = 0xE400000000000000;
      v21 = 1852138836;
      goto LABEL_29;
    }

    if (v4 == 2)
    {
      v26 = 0xE500000000000000;
      v21 = 0x646C696843;
      goto LABEL_29;
    }
  }

  else
  {
    if (v4 == -1)
    {
LABEL_28:
      v26 = 0xE700000000000000;
LABEL_29:
      v27 = sub_21BB3D81C(v21, v26, &v30);

      *(v19 + 24) = v27;
      *(v19 + 32) = 1026;
      *(v19 + 34) = v28;
      _os_log_impl(&dword_21BB35000, v17, v18, "AgeRange Analytics - Sent onboarding view navigation event: view=%{public}s, entryPoint=%{public}s, ageRange=%{public}s, onChildDevice=%{BOOL,public}d", v19, 0x26u);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v20, -1, -1);
      MEMORY[0x21CF05C50](v19, -1, -1);
LABEL_30:

      return;
    }

    if (!v4)
    {
      v26 = 0xE500000000000000;
      v21 = 0x746C756441;
      goto LABEL_29;
    }
  }

  type metadata accessor for FAMemberType(0);
  v29 = v4;
  sub_21BE299DC();
  __break(1u);
}

void sub_21BD5DC44(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 9);
  v6 = *(a2 + 10);
  v7 = *(a2 + 11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE374E0;
  *(inited + 32) = 0x65676E6152656761;
  *(inited + 40) = 0xE800000000000000;
  if (v4)
  {
    goto LABEL_2;
  }

  if (v3 > 0)
  {
    if (v3 == 2)
    {
      v9 = 0xE500000000000000;
      v10 = 0x646C696843;
      goto LABEL_3;
    }

    if (v3 == 1)
    {
      v9 = 0xE400000000000000;
      v10 = 1852138836;
      goto LABEL_3;
    }

    goto LABEL_26;
  }

  if (v3 != -1)
  {
    if (!v3)
    {
      v9 = 0xE500000000000000;
      v10 = 0x746C756441;
      goto LABEL_3;
    }

LABEL_26:
    type metadata accessor for FAMemberType(0);
    sub_21BE299DC();
    __break(1u);
    return;
  }

LABEL_2:
  v9 = 0xE700000000000000;
  v10 = 0x6E776F6E6B6E55;
LABEL_3:
  v11 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 48) = v10;
  *(inited + 56) = v9;
  *(inited + 88) = 0x696D61466E497369;
  *(inited + 96) = 0xEA0000000000796CLL;
  v12 = MEMORY[0x277D839B0];
  if (v5 == 2)
  {
    v13 = 0;
    v14 = 0;
    *(inited + 104) = 0;
    *(inited + 112) = 0;
    *(inited + 120) = 0;
  }

  else
  {
    *(inited + 104) = v5 & 1;
    v14 = &protocol witness table for Bool;
    v13 = MEMORY[0x277D839B0];
  }

  *(inited + 128) = v13;
  *(inited + 136) = v14;
  strcpy((inited + 144), "onChildDevice");
  *(inited + 158) = -4864;
  *(inited + 184) = v12;
  *(inited + 192) = &protocol witness table for Bool;
  *(inited + 160) = v7;
  *(inited + 200) = 0x696F507972746E65;
  *(inited + 208) = 0xEA0000000000746ELL;
  if (v6 <= 1)
  {
    if (v6)
    {
      v15 = 0x800000021BE5FE70;
      v16 = 0xD000000000000016;
    }

    else
    {
      v15 = 0xE300000000000000;
      v16 = 4804673;
    }
  }

  else if (v6 == 2)
  {
    v15 = 0xE300000000000000;
    v16 = 5588547;
  }

  else if (v6 == 3)
  {
    v15 = 0xEF73676E69747465;
    v16 = 0x5320796C696D6146;
  }

  else
  {
    v15 = 0xE700000000000000;
    v16 = 0x6E776F6E6B6E55;
  }

  *(inited + 240) = v11;
  *(inited + 248) = &protocol witness table for String;
  *(inited + 216) = v16;
  *(inited + 224) = v15;
  v17 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E8, &qword_21BE32890);
  swift_arrayDestroy();
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  LOBYTE(v18) = v2;

  sub_21BCA55DC(&v18, v17);
}

unint64_t sub_21BD5DFA8()
{
  result = qword_27CDB78D0;
  if (!qword_27CDB78D0)
  {
    v3 = type metadata accessor for AgeRangeSharingViewModel(255);
    result = swift_getWitnessTable(protocol conformance descriptor for AgeRangeSharingViewModel, v3, v0, v1);
    atomic_store(result, &qword_27CDB78D0);
  }

  return result;
}

void sub_21BD5E010(uint64_t a1, unsigned __int8 *a2, char a3, const char *a4, ...)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 9);
  v8 = *(a1 + 10);
  v9 = *(a1 + 11);
  v10 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F38, &qword_21BE36340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0x4F676E6972616873;
  v12 = inited + 32;
  *(inited + 40) = 0xED00006E6F697470;
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v13 = 0xE500000000000000;
      v14 = 0x726576654ELL;
    }

    else
    {
      v13 = 0xE700000000000000;
      v14 = 0x6E776F6E6B6E55;
    }
  }

  else if (v10)
  {
    v14 = 0x73726946206B7341;
    v13 = 0xE900000000000074;
  }

  else
  {
    v13 = 0xE600000000000000;
    v14 = 0x737961776C41;
  }

  *(inited + 48) = v14;
  *(inited + 56) = v13;
  v15 = sub_21BBB6068(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(v12, &unk_27CDB6F40, qword_21BE36348);
  LOBYTE(v33) = a3;
  v34 = v5;
  v35 = v6;
  v36 = v7;
  v37 = v8;
  v38 = v9;
  v16 = sub_21BCA2F6C(v15);

  sub_21BD5D43C(&v33, &v34, v16);

  if (qword_27CDB4FB8 != -1)
  {
    swift_once();
  }

  v17 = sub_21BE26A4C();
  __swift_project_value_buffer(v17, qword_27CDBB510);
  v18 = sub_21BE26A2C();
  v19 = sub_21BE28FBC();
  if (!os_log_type_enabled(v18, v19))
  {
    goto LABEL_25;
  }

  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v34 = v21;
  *v20 = 136446722;
  if (v6)
  {
    goto LABEL_12;
  }

  if (v5 > 0)
  {
    if (v5 == 2)
    {
      v22 = 0xE500000000000000;
      v23 = 0x646C696843;
      goto LABEL_13;
    }

    if (v5 == 1)
    {
      v22 = 0xE400000000000000;
      v23 = 1852138836;
      goto LABEL_13;
    }
  }

  else
  {
    if (v5 == -1)
    {
LABEL_12:
      v22 = 0xE700000000000000;
      v23 = 0x6E776F6E6B6E55;
LABEL_13:
      v24 = sub_21BB3D81C(v23, v22, &v34);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      v25 = 0xE600000000000000;
      v26 = 0xE500000000000000;
      v27 = 0x726576654ELL;
      if (v10 != 2)
      {
        v27 = 0x6E776F6E6B6E55;
        v26 = 0xE700000000000000;
      }

      v28 = 0x73726946206B7341;
      if (v10)
      {
        v25 = 0xE900000000000074;
      }

      else
      {
        v28 = 0x737961776C41;
      }

      if (v10 <= 1)
      {
        v29 = v28;
      }

      else
      {
        v29 = v27;
      }

      if (v10 <= 1)
      {
        v30 = v25;
      }

      else
      {
        v30 = v26;
      }

      v31 = sub_21BB3D81C(v29, v30, &v34);

      *(v20 + 14) = v31;
      *(v20 + 22) = 1026;
      *(v20 + 24) = v9;
      _os_log_impl(&dword_21BB35000, v18, v19, a4, v20, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v21, -1, -1);
      MEMORY[0x21CF05C50](v20, -1, -1);
LABEL_25:

      return;
    }

    if (!v5)
    {
      v22 = 0xE500000000000000;
      v23 = 0x746C756441;
      goto LABEL_13;
    }
  }

  type metadata accessor for FAMemberType(0);
  v33 = v5;
  sub_21BE299DC();
  __break(1u);
}

void _s14FamilyCircleUI0A25DeclaredAgeRangeAnalyticsC31sendSettingsViewNavigationEvent4with4view10entryPointyAA0adefG7PackageV_AA0efiJ0OAA0efk5EntryP0OtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = 0xEA00000000006C69;
  v3 = 0x6174654420707041;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  v7 = *(a1 + 10);
  v29 = *(a1 + 11);
  v8 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F38, &qword_21BE36340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 2003134838;
  v10 = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  if (v8)
  {
    v11 = 0x6174654420707041;
    v12 = 0xEA00000000006C69;
    if (v8 != 1)
    {
      goto LABEL_6;
    }

    v13 = "Age Range For Apps Child/Teen Version";
  }

  else
  {
    v13 = "Age Range For Apps Adult/Teen Version";
  }

  v12 = (v13 - 32) | 0x8000000000000000;
  v11 = 0xD000000000000025;
LABEL_6:
  *(inited + 48) = v11;
  *(inited + 56) = v12;
  v14 = sub_21BBB6068(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(v10, &unk_27CDB6F40, qword_21BE36348);
  LOBYTE(v30) = 54;
  v31 = v4;
  v32 = v5;
  v33 = v6;
  v34 = v7;
  v35 = v29;
  v15 = sub_21BCA2F6C(v14);

  sub_21BD5D43C(&v30, &v31, v15);

  if (qword_27CDB4FB8 != -1)
  {
    swift_once();
  }

  v16 = sub_21BE26A4C();
  __swift_project_value_buffer(v16, qword_27CDBB510);
  v17 = sub_21BE26A2C();
  v18 = sub_21BE28FBC();
  if (!os_log_type_enabled(v17, v18))
  {
    goto LABEL_26;
  }

  v19 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  v31 = v20;
  *v19 = 136446978;
  if (v8)
  {
    if (v8 != 1)
    {
      goto LABEL_14;
    }

    v21 = "Age Range For Apps Child/Teen Version";
  }

  else
  {
    v21 = "Age Range For Apps Adult/Teen Version";
  }

  v2 = (v21 - 32) | 0x8000000000000000;
  v3 = 0xD000000000000025;
LABEL_14:
  v22 = 0x6E776F6E6B6E55;
  v23 = sub_21BB3D81C(v3, v2, &v31);

  *(v19 + 4) = v23;
  *(v19 + 12) = 2082;
  if (v7 <= 1)
  {
    if (v7)
    {
      v24 = 0x800000021BE5FE70;
      v25 = 0xD000000000000016;
    }

    else
    {
      v24 = 0xE300000000000000;
      v25 = 4804673;
    }
  }

  else if (v7 == 2)
  {
    v24 = 0xE300000000000000;
    v25 = 5588547;
  }

  else if (v7 == 3)
  {
    v24 = 0xEF73676E69747465;
    v25 = 0x5320796C696D6146;
  }

  else
  {
    v24 = 0xE700000000000000;
    v25 = 0x6E776F6E6B6E55;
  }

  v26 = sub_21BB3D81C(v25, v24, &v31);

  *(v19 + 14) = v26;
  *(v19 + 22) = 2082;
  if (v5)
  {
    goto LABEL_24;
  }

  if (v4 > 0)
  {
    if (v4 == 1)
    {
      v27 = 0xE400000000000000;
      v22 = 1852138836;
      goto LABEL_25;
    }

    if (v4 == 2)
    {
      v27 = 0xE500000000000000;
      v22 = 0x646C696843;
      goto LABEL_25;
    }
  }

  else
  {
    if (v4 == -1)
    {
LABEL_24:
      v27 = 0xE700000000000000;
LABEL_25:
      v28 = sub_21BB3D81C(v22, v27, &v31);

      *(v19 + 24) = v28;
      *(v19 + 32) = 1026;
      *(v19 + 34) = v29;
      _os_log_impl(&dword_21BB35000, v17, v18, "AgeRange Analytics - Sent settings view navigation event: view=%{public}s, entryPoint=%{public}s, ageRange=%{public}s, onChildDevice=%{BOOL,public}d", v19, 0x26u);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v20, -1, -1);
      MEMORY[0x21CF05C50](v19, -1, -1);
LABEL_26:

      return;
    }

    if (!v4)
    {
      v27 = 0xE500000000000000;
      v22 = 0x746C756441;
      goto LABEL_25;
    }
  }

  type metadata accessor for FAMemberType(0);
  v30 = v4;
  sub_21BE299DC();
  __break(1u);
}

void sub_21BD5E850(uint64_t a1, char a2, const char *a3, ...)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  v7 = *(a1 + 11);
  LOBYTE(v16) = a2;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  sub_21BD5DC44(&v16, &v17);
  if (qword_27CDB4FB8 != -1)
  {
    swift_once();
  }

  v8 = sub_21BE26A4C();
  __swift_project_value_buffer(v8, qword_27CDBB510);
  oslog = sub_21BE26A2C();
  v9 = sub_21BE28FBC();
  if (!os_log_type_enabled(oslog, v9))
  {
    goto LABEL_7;
  }

  v10 = 0x6E776F6E6B6E55;
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v17 = v12;
  *v11 = 136446466;
  if (v5)
  {
    goto LABEL_5;
  }

  if (v4 > 0)
  {
    if (v4 == 2)
    {
      v13 = 0xE500000000000000;
      v10 = 0x646C696843;
      goto LABEL_6;
    }

    if (v4 == 1)
    {
      v13 = 0xE400000000000000;
      v10 = 1852138836;
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  if (v4 != -1)
  {
    if (!v4)
    {
      v13 = 0xE500000000000000;
      v10 = 0x746C756441;
      goto LABEL_6;
    }

LABEL_18:
    type metadata accessor for FAMemberType(0);
    v16 = v4;
    sub_21BE299DC();
    __break(1u);
    return;
  }

LABEL_5:
  v13 = 0xE700000000000000;
LABEL_6:
  v14 = sub_21BB3D81C(v10, v13, &v17);

  *(v11 + 4) = v14;
  *(v11 + 12) = 1026;
  *(v11 + 14) = v7;
  _os_log_impl(&dword_21BB35000, oslog, v9, a3, v11, 0x12u);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  MEMORY[0x21CF05C50](v12, -1, -1);
  MEMORY[0x21CF05C50](v11, -1, -1);
LABEL_7:
}

unint64_t sub_21BD5EAC0()
{
  result = qword_27CDBB528;
  if (!qword_27CDBB528)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AgeRangeAnalyticsCategory, &type metadata for AgeRangeAnalyticsCategory, v0, v1);
    atomic_store(result, &qword_27CDBB528);
  }

  return result;
}

unint64_t sub_21BD5EB18()
{
  result = qword_27CDBB530;
  if (!qword_27CDBB530)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AgeRangeSharingAnalyticsOption, &type metadata for AgeRangeSharingAnalyticsOption, v0, v1);
    atomic_store(result, &qword_27CDBB530);
  }

  return result;
}

unint64_t sub_21BD5EB70()
{
  result = qword_27CDBB538;
  if (!qword_27CDBB538)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AgeRangeNavigationEntryPoint, &type metadata for AgeRangeNavigationEntryPoint, v0, v1);
    atomic_store(result, &qword_27CDBB538);
  }

  return result;
}

unint64_t sub_21BD5EBC8()
{
  result = qword_27CDBB540;
  if (!qword_27CDBB540)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AgeRangeAnalyticsOnboardingView, &type metadata for AgeRangeAnalyticsOnboardingView, v0, v1);
    atomic_store(result, &qword_27CDBB540);
  }

  return result;
}

unint64_t sub_21BD5EC20()
{
  result = qword_27CDBB548;
  if (!qword_27CDBB548)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AgeRangeSettingsView, &type metadata for AgeRangeSettingsView, v0, v1);
    atomic_store(result, &qword_27CDBB548);
  }

  return result;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FamilyDeclaredAgeRangeAnalyticsPackage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 12))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 11);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FamilyDeclaredAgeRangeAnalyticsPackage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 11) = a2 + 1;
    }
  }

  return result;
}

void *sub_21BD5EDB8(void *a1, char a2, uint64_t a3)
{
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for SharedFamilyGroceryIntroView(0);
  v14 = (a3 + v13[9]);
  v15 = *v14;
  v16 = *(v14 + 1);
  LOBYTE(v29) = v15;
  *(&v29 + 1) = v16;
  LOBYTE(v28) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  if (a2)
  {
    sub_21BE261BC();
    sub_21BC51D50(a1, 0xD000000000000033, 0x800000021BE5FF60);
    (*(v7 + 8))(v10, v6);
    v17 = (a3 + v13[10]);
    v18 = *v17;
    v19 = *(v17 + 1);
    LOBYTE(v29) = v18;
    *(&v29 + 1) = v19;
    LOBYTE(v28) = 1;
    return sub_21BE2840C();
  }

  else
  {
    v29 = *(a3 + v13[8]);
    v28 = a1;
    v21 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA400, &qword_21BE433A0);
    sub_21BE2840C();
    sub_21BE261BC();
    v22 = sub_21BE26A2C();
    v23 = sub_21BE28FFC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_21BB35000, v22, v23, "Successfully created shared grocery list", v24, 2u);
      MEMORY[0x21CF05C50](v24, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
    v29 = *(a3 + v13[11]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA418, &qword_21BE43418);
    result = sub_21BE283FC();
    v25 = v28;
    if (v28)
    {
      v26 = sub_21BD11324();
      sub_21BDA37EC(v21, v26);
    }
  }

  return result;
}

uint64_t sub_21BD5F090(uint64_t a1)
{
  v2 = type metadata accessor for SharedFamilyGroceryIntroView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_21BE2599C();
  v9 = v8;

  v13[0] = v7;
  v13[1] = v9;
  sub_21BD1613C(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_21BD161A0(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_21BB41FA4();
  return sub_21BE2845C();
}

uint64_t sub_21BD5F234()
{
  v0 = sub_21BE26F5C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BD1269C();
  sub_21BD11124(v3);
  sub_21BE26F4C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21BD5F304()
{
  type metadata accessor for SharedFamilyGroceryIntroView(0);

  return sub_21BD5F234();
}

uint64_t type metadata accessor for MemberDetailsAskToBuyWrapper(uint64_t a1)
{
  result = qword_27CDBB558;
  if (!qword_27CDBB558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BD5F3D8(uint64_t a1)
{
  sub_21BD5F4A8(319);
  if (v1 <= 0x3F)
  {
    sub_21BBF088C(319);
    if (v2 <= 0x3F)
    {
      sub_21BB3A2A4(319, &qword_280BD8A40, 0x277D08268);
      if (v3 <= 0x3F)
      {
        sub_21BD39D4C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21BD5F4A8(uint64_t a1)
{
  if (!qword_27CDB8B60)
  {
    sub_21BB3A2A4(255, &unk_27CDB6550, 0x277D08338);
    v1 = sub_21BE2946C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB8B60);
    }
  }
}

uint64_t sub_21BD5F52C(void *a1)
{
  v2 = v1;
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v8 = a1;
  v9 = sub_21BE26A2C();
  v10 = sub_21BE28FFC();

  v11 = os_log_type_enabled(v9, v10);
  v35 = v8;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v37 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_21BB3D81C(0xD000000000000015, 0x800000021BE5FFE0, &v37);
    *(v12 + 12) = 2080;
    v36 = a1;
    v14 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDBB568, qword_21BE47588);
    v15 = sub_21BE28A5C();
    v17 = sub_21BB3D81C(v15, v16, &v37);
    v34 = v4;
    v18 = a1;
    v19 = v2;
    v20 = v17;

    *(v12 + 14) = v20;
    v2 = v19;
    _os_log_impl(&dword_21BB35000, v9, v10, "%s subscription: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v13, -1, -1);
    MEMORY[0x21CF05C50](v12, -1, -1);

    (*(v5 + 8))(v7, v34);
    if (!v18)
    {
      goto LABEL_10;
    }
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    if (!a1)
    {
LABEL_10:
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v28 = [objc_opt_self() bundleForClass_];
      v32 = 0xE700000000000000;
      v30 = sub_21BE2599C();
      goto LABEL_13;
    }
  }

  v21 = [v35 subscriberDSIDs];
  if (!v21)
  {
    goto LABEL_10;
  }

  v22 = v21;
  sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
  v23 = sub_21BE28C3C();

  v24 = [*(v2 + *(type metadata accessor for MemberDetailsAskToBuyWrapper(0) + 24)) dsid];
  if (!v24)
  {

    goto LABEL_10;
  }

  v25 = v24;
  v37 = v24;
  MEMORY[0x28223BE20](v24);
  v32 = &v37;
  v26 = sub_21BC9DAC4(sub_21BBF0CE4, (&v33 - 4), v23);

  type metadata accessor for ConfirmChildAgeViewModel();
  v27 = swift_getObjCClassFromMetadata();
  v28 = [objc_opt_self() bundleForClass_];
  if (v26)
  {
    v32 = 0x800000021BE5FFC0;
  }

  else
  {
    v32 = 0x800000021BE5FFA0;
  }

  v30 = sub_21BE2599C();

LABEL_13:
  return v30;
}

uint64_t sub_21BD5F9B0@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v50 = sub_21BE27A2C();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v47 = &v39[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_21BE25FCC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39[-v8];
  v10 = type metadata accessor for StaticSelectableCellTemplate(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v39[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for MemberDetailsAskToBuyWrapper(0);
  sub_21BBF0D04(v1 + v13[5], v9);
  Strong = swift_unknownObjectWeakLoadStrong();
  v14 = sub_21BD5F52C(*v1);
  v44 = v15;
  v45 = v14;
  v16 = *(v1 + v13[6]);
  v17 = [v16 dsid];
  v18 = v17;
  if (v17)
  {
    v43 = [v17 integerValue];
  }

  else
  {
    v43 = 0;
  }

  v19 = v1 + v13[8];
  v20 = *v19;
  v21 = *(v19 + 1);
  LOBYTE(v19) = v19[16];
  v54 = v20;
  v55 = v21;
  v56 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  sub_21BE2856C();
  v41 = v52;
  v42 = v51;
  v40 = v53;
  (*(v4 + 104))(v6, *MEMORY[0x277D07F40], v3);
  v22 = MEMORY[0x21CF01150](v6);
  (*(v4 + 8))(v6, v3);
  if (v22 & 1) != 0 && (sub_21BE2916C() & 1) != 0 && ([v16 isMe])
  {
    v23 = 10;
  }

  else
  {
    v23 = 3;
  }

  if (qword_280BD76F0 != -1)
  {
    swift_once();
  }

  *v12 = 0x425F4F545F4B5341;
  v12[1] = 0xEA00000000005955;
  sub_21BC438F8(v9, v12 + v10[5]);
  *(v12 + v10[6]) = 1;
  swift_unknownObjectWeakInit();

  swift_unknownObjectRelease();
  v24 = (v12 + v10[8]);
  v25 = v44;
  *v24 = v45;
  v24[1] = v25;
  v26 = v12 + v10[9];
  v27 = v42;
  *v26 = v43;
  v26[8] = v18 == 0;
  v28 = (v12 + v10[10]);
  *v28 = 0;
  v28[1] = 0;
  v29 = v12 + v10[11];
  v30 = v41;
  *v29 = v27;
  *(v29 + 1) = v30;
  v29[16] = v40;
  v31 = (v12 + v10[12]);
  *v31 = 0;
  v31[1] = 0;
  *(v12 + v10[13]) = 0;
  *(v12 + v10[14]) = v23;
  v32 = (v12 + v10[15]);
  type metadata accessor for ServicesStore(0);
  sub_21BD3A4A4(&qword_27CDB5750, type metadata accessor for ServicesStore, protocol conformance descriptor for AsyncStore<A>);
  *v32 = sub_21BE270CC();
  v32[1] = v33;
  *(v12 + v10[16]) = 0;
  v34 = v12 + v10[17];
  LOBYTE(v51) = 0;
  sub_21BE283EC();
  v35 = v55;
  *v34 = v54;
  *(v34 + 1) = v35;
  sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
  v36 = [swift_getObjCClassFromMetadata() defaultCenter];
  if (qword_27CDB4EE0 != -1)
  {
    swift_once();
  }

  sub_21BE2935C();

  v37 = v47;
  sub_21BE27A0C();
  sub_21BD3A4A4(&qword_27CDB7F90, type metadata accessor for StaticSelectableCellTemplate, aA7F);
  sub_21BE2805C();
  (*(v48 + 8))(v37, v50);
  return sub_21BC5E088(v12);
}

void sub_21BD5FF5C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_21BCB05D4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21BD5FFEC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_21BD60130(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          v19[1] = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_21BD60358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v23 = *(a1 + 16);
  v24 = a1;
  sub_21BE2719C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB5F0, &qword_21BE47618);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB5F8, &qword_21BE47620);
  swift_getTupleTypeMetadata3();
  v2 = sub_21BE286EC();
  swift_getWitnessTable(MEMORY[0x277CE14C0], v2);
  v3 = sub_21BE284FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = sub_21BE2719C();
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = sub_21BE2719C();
  v26 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  v16 = *(v24 + 24);
  v29 = v23;
  v30 = v16;
  v31 = v27;
  sub_21BE2770C();
  sub_21BE284EC();
  sub_21BE27B6C();
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CE1198], v3);
  sub_21BE2816C();
  (*(v4 + 8))(v6, v3);
  sub_21BE27B9C();
  v18 = MEMORY[0x277CDF918];
  v33[0] = WitnessTable;
  v33[1] = MEMORY[0x277CDF918];
  v19 = MEMORY[0x277CDFAD8];
  v20 = swift_getWitnessTable(MEMORY[0x277CDFAD8], v7, v33);
  sub_21BE2816C();
  (*(v25 + 8))(v9, v7);
  v32[0] = v20;
  v32[1] = v18;
  swift_getWitnessTable(v19, v10, v32);
  sub_21BD37338();
  v21 = *(v26 + 8);
  v21(v13, v10);
  sub_21BD37338();
  return (v21)(v15, v10);
}

uint64_t sub_21BD60760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v78 = a4;
  v7 = sub_21BE2719C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v70 - v12;
  sub_21BE27B8C();
  v72 = a1;
  sub_21BE2816C();
  v110[0] = a3;
  v110[1] = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CDFAD8], v7, v110);
  v75 = v13;
  sub_21BD37338();
  v73 = v8;
  v14 = *(v8 + 8);
  v79 = v7;
  v80 = v11;
  v76 = v14;
  v77 = v8 + 8;
  v14(v11, v7);
  v71 = type metadata accessor for OnboardingHeaderView(0, a2, a3, v15);
  v16 = (a1 + *(v71 + 36));
  v17 = v16[1];
  *&v134 = *v16;
  *(&v134 + 1) = v17;
  v18 = sub_21BB41FA4();

  v70[1] = v18;
  v19 = sub_21BE27DBC();
  v21 = v20;
  LOBYTE(v18) = v22;
  *&v134 = sub_21BE2832C();
  v23 = sub_21BE27D5C();
  v25 = v24;
  LOBYTE(v11) = v26;
  sub_21BBC7C7C(v19, v21, v18 & 1);

  sub_21BE27BDC();
  v27 = sub_21BE27D9C();
  v29 = v28;
  LOBYTE(a3) = v30;

  sub_21BBC7C7C(v23, v25, v11 & 1);

  v31 = sub_21BE27D8C();
  v33 = v32;
  LOBYTE(v11) = v34;
  v36 = v35;
  sub_21BBC7C7C(v27, v29, a3 & 1);

  LOBYTE(v27) = sub_21BE27B8C();
  sub_21BE26E0C();
  LOBYTE(v92) = v11 & 1;
  LOBYTE(v111) = 0;
  *&v118 = v31;
  *(&v118 + 1) = v33;
  LOBYTE(v119) = v11 & 1;
  *(&v119 + 1) = v36;
  LOBYTE(v120) = v27;
  *(&v120 + 1) = v37;
  *&v121 = v38;
  *(&v121 + 1) = v39;
  *&v122 = v40;
  BYTE8(v122) = 0;
  sub_21BD60F4C(&v118);
  v107 = v122;
  v108 = v123;
  v109[0] = v124[0];
  *(v109 + 10) = *(v124 + 10);
  v103 = v118;
  v104 = v119;
  v105 = v120;
  v106 = v121;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB600, &qword_21BE47628);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7940, &qword_21BE47630);
  sub_21BD60F58();
  sub_21BC35268();
  sub_21BE2784C();
  v129 = v138;
  v130 = v139;
  v131[0] = v140[0];
  *(v131 + 10) = *(v140 + 10);
  v125 = v134;
  v126 = v135;
  v127 = v136;
  v128 = v137;
  *(v133 + 10) = *(v140 + 10);
  v133[0] = v140[0];
  v132[5] = v139;
  v132[4] = v138;
  v132[3] = v137;
  v132[2] = v136;
  v132[1] = v135;
  v132[0] = v134;
  sub_21BBA3854(&v125, &v103, &qword_27CDBB610, &qword_21BE47638);
  sub_21BB3A4CC(v132, &qword_27CDBB610, &qword_21BE47638);
  KeyPath = swift_getKeyPath();
  v136 = v127;
  v137 = v128;
  *(v140 + 10) = *(v131 + 10);
  v140[0] = v131[0];
  v139 = v130;
  v138 = v129;
  v134 = v125;
  v135 = v126;
  *&v140[2] = KeyPath;
  WORD4(v140[2]) = 1;
  BYTE10(v140[2]) = 1;
  v42 = (v72 + *(v71 + 40));
  v43 = v42[1];
  if (v43)
  {
    *&v103 = *v42;
    *(&v103 + 1) = v43;

    v44 = sub_21BE27DBC();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v51 = sub_21BE27B8C();
    sub_21BE26E0C();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v60 = v48 & 1;
    LOBYTE(v103) = v48 & 1;
    LOBYTE(v92) = 0;
    v61 = sub_21BE2832C();
    v62 = sub_21BE27BFC();
    v63 = swift_getKeyPath();
    v64 = swift_getKeyPath();
    *&v111 = v44;
    *(&v111 + 1) = v46;
    LOBYTE(v112) = v60;
    *(&v112 + 1) = v50;
    LOBYTE(v113) = v51;
    *(&v113 + 1) = v53;
    *&v114 = v55;
    *(&v114 + 1) = v57;
    *&v115 = v59;
    BYTE8(v115) = 0;
    *&v116 = v61;
    *(&v116 + 1) = v63;
    *&v117[0] = v62;
    *(&v117[0] + 1) = v64;
    LOWORD(v117[1]) = 1;
    BYTE2(v117[1]) = 1;
  }

  else
  {
    v116 = 0u;
    memset(v117, 0, 19);
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v111 = 0u;
  }

  v65 = v79;
  v66 = v80;
  v67 = v75;
  (*(v73 + 16))();
  v98 = v140[0];
  v99[0] = v140[1];
  *(v99 + 11) = *(&v140[1] + 11);
  v94 = v136;
  v95 = v137;
  v96 = v138;
  v97 = v139;
  v92 = v134;
  v93 = v135;
  v100[0] = v66;
  v100[1] = &v92;
  v89 = v115;
  v90 = v116;
  v91[0] = v117[0];
  *(v91 + 15) = *(v117 + 15);
  v85 = v111;
  v86 = v112;
  v87 = v113;
  v88 = v114;
  v100[2] = &v85;
  sub_21BBA3854(&v134, &v103, &qword_27CDBB5F0, &qword_21BE47618);
  sub_21BBA3854(&v111, &v103, &qword_27CDBB5F8, &qword_21BE47620);
  v84[0] = v65;
  v84[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB5F0, &qword_21BE47618);
  v84[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB5F8, &qword_21BE47620);
  v81 = WitnessTable;
  v82 = sub_21BD611D8(&qword_27CDBB618, &qword_27CDBB5F0, &qword_21BE47618, sub_21BD60FE4);
  v83 = sub_21BD61128();
  sub_21BDFE148(v100, 3uLL, v84);
  sub_21BB3A4CC(&v111, &qword_27CDBB5F8, &qword_21BE47620);
  sub_21BB3A4CC(&v134, &qword_27CDBB5F0, &qword_21BE47618);
  v68 = v76;
  v76(v67, v65);
  v101[4] = v89;
  v101[5] = v90;
  v102[0] = v91[0];
  *(v102 + 15) = *(v91 + 15);
  v101[0] = v85;
  v101[1] = v86;
  v101[2] = v87;
  v101[3] = v88;
  sub_21BB3A4CC(v101, &qword_27CDBB5F8, &qword_21BE47620);
  v109[0] = v98;
  v109[1] = v99[0];
  *(&v109[1] + 11) = *(v99 + 11);
  v105 = v94;
  v106 = v95;
  v107 = v96;
  v108 = v97;
  v103 = v92;
  v104 = v93;
  sub_21BB3A4CC(&v103, &qword_27CDBB5F0, &qword_21BE47618);
  return v68(v80, v65);
}

unint64_t sub_21BD60F58()
{
  result = qword_27CDBB608;
  if (!qword_27CDBB608)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB600, &qword_21BE47628);
    v4[0] = sub_21BC35268();
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBB608);
  }

  return result;
}

unint64_t sub_21BD60FE4()
{
  result = qword_27CDBB620;
  if (!qword_27CDBB620)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB628, &unk_21BE47670);
    v4[0] = sub_21BD6109C();
    v4[1] = sub_21BB3B038(&qword_27CDB5D40, &qword_27CDB5D48, &unk_21BE33650, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBB620);
  }

  return result;
}

unint64_t sub_21BD6109C()
{
  result = qword_27CDBB630;
  if (!qword_27CDBB630)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB610, &qword_21BE47638);
    v4[0] = sub_21BD60F58();
    v4[1] = sub_21BC35268();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDBB630);
  }

  return result;
}

unint64_t sub_21BD61128()
{
  result = qword_27CDBB638;
  if (!qword_27CDBB638)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB5F8, &qword_21BE47620);
    v4[0] = sub_21BD611D8(&qword_27CDBB640, &qword_27CDBB648, &qword_21BE47680, sub_21BD6125C);
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v3, v4);
    atomic_store(result, &qword_27CDBB638);
  }

  return result;
}

uint64_t sub_21BD611D8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8[0] = a4();
    v8[1] = MEMORY[0x277CDFC48];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BD6125C()
{
  result = qword_27CDBB650;
  if (!qword_27CDBB650)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB658, &qword_21BE47688);
    v4[0] = sub_21BD61314();
    v4[1] = sub_21BB3B038(&qword_27CDB5D40, &qword_27CDB5D48, &unk_21BE33650, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBB650);
  }

  return result;
}

unint64_t sub_21BD61314()
{
  result = qword_27CDBB660;
  if (!qword_27CDBB660)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB668, &qword_21BE47690);
    v4[0] = sub_21BD613CC();
    v4[1] = sub_21BB3B038(&unk_27CDBC3F0, &qword_27CDB5D50, &qword_21BE36430, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBB660);
  }

  return result;
}

unint64_t sub_21BD613CC()
{
  result = qword_27CDBB670;
  if (!qword_27CDBB670)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB678, &qword_21BE47698);
    v4[0] = sub_21BC35268();
    v4[1] = sub_21BB3B038(&qword_27CDBB680, qword_27CDBB688, &unk_21BE476A0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBB670);
  }

  return result;
}

uint64_t sub_21BD614C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E80, &qword_21BE33960);
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  return sub_21BD615D4(v0);
}

uint64_t sub_21BD61540()
{
  MEMORY[0x21CF05D90](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21BD615D4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E80, &qword_21BE33960);
  sub_21BE283EC();
  return v2;
}

uint64_t sub_21BD6161C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *, __n128)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v37 = a6;
  v33 = a4;
  v34 = a3;
  v40 = a7;
  v39 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v11;
  v14 = type metadata accessor for NavigationControllerReader.ReaderRepresentable(255, v11, v13, v12);
  v15 = sub_21BE2719C();
  v31 = v15;
  WitnessTable = swift_getWitnessTable(aQ_9, v14);
  v50[0] = WitnessTable;
  v50[1] = MEMORY[0x277CDF900];
  v38 = MEMORY[0x277CDFAD8];
  v32 = swift_getWitnessTable(MEMORY[0x277CDFAD8], v15, v50);
  v35 = sub_21BE2782C();
  v16 = sub_21BE2719C();
  v36 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v28 - v20;
  v46 = a1;
  v47 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB818, &qword_21BE47848);
  sub_21BE283FC();
  Strong = swift_unknownObjectWeakLoadStrong();

  (v34)(Strong);

  v42 = a1;
  v43 = a2;
  sub_21BE2841C();
  v42 = v46;
  v43 = v47;
  v44 = v48;
  sub_21BE2814C();

  v42 = v46;
  v43 = v47;
  v44 = v48;
  v45 = v49;
  sub_21BE2869C();
  v23 = v30;
  v24 = v37;
  sub_21BE27E9C();

  (*(v39 + 8))(v10, v23);
  v25 = swift_getWitnessTable(MEMORY[0x277CE0328], v35);
  v41[0] = v24;
  v41[1] = v25;
  swift_getWitnessTable(v38, v16, v41);
  sub_21BD37338();
  v26 = *(v36 + 8);
  v26(v19, v16);
  sub_21BD37338();
  return (v26)(v21, v16);
}

uint64_t sub_21BD61A0C()
{
  v1 = *(v0 + qword_27CDBB710);

  return v1;
}

id sub_21BD61AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *MEMORY[0x277D85000];
  v7 = (v4 + qword_27CDBB710);
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  v8 = type metadata accessor for NavigationControllerReader.Reader(0, *((v6 & v5) + 0x50), *((v6 & v5) + 0x58), a4);
  v10.receiver = v4;
  v10.super_class = v8;
  return objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
}

void sub_21BD61B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for NavigationControllerReader.Reader(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v9.receiver = v4;
  v9.super_class = v5;
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v6 = [v4 view];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() clearColor];
    [v7 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_21BD61C1C(void *a1)
{
  v4 = a1;
  sub_21BD61B40(v4, v1, v2, v3);
}

void sub_21BD61CD0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for NavigationControllerReader.Reader(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v8.receiver = v4;
  v8.super_class = v7;
  objc_msgSendSuper2(&v8, sel_viewDidMoveToWindow_shouldAppearOrDisappear_, a1, a2 & 1);
  if (a1)
  {
    sub_21BD61ED0();
  }
}

void sub_21BD61D68(void *a1, uint64_t a2, void *a3, char a4)
{
  v7 = a3;
  v9 = a1;
  sub_21BD61CD0(a3, a4, v9, v8);
}

void sub_21BD61DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for NavigationControllerReader.Reader(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v6;
  objc_msgSendSuper2(&v7, sel_didMoveToParentViewController_, a1);
  if (a1)
  {
    sub_21BD61ED0();
  }
}

void sub_21BD61E64(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = a1;
  sub_21BD61DDC(a3, v8, v6, v7);
}

void sub_21BD61ED0()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = sub_21BD620F4(v1);

    v12 = sub_21BD61A0C();
    v13 = v4;
    v14 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDBB820, &unk_21BE47850);
    MEMORY[0x21CF036E0](&v11);

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      if (v3)
      {

        if (Strong == v3)
        {

          return;
        }
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_9;
    }

    if (v3)
    {
LABEL_9:
      v12 = sub_21BD61A0C();
      v13 = v8;
      v14 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E80, &qword_21BE33960);
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      v11 = v10;
      sub_21BE2854C();
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_21BD62064(void *a1)
{
  v2 = [a1 nextResponder];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  result = [a1 nextResponder];
  if (result)
  {
    v5 = result;
    v6 = sub_21BD62064(result);

    return v6;
  }

  return result;
}

id sub_21BD620F4(void *a1)
{
  v1 = a1;
  while (1)
  {
    v2 = v1;
    v3 = sub_21BD62064(v2);
    if (v3)
    {
      break;
    }

LABEL_3:
    v1 = [v2 superview];

    if (!v1)
    {
      return v1;
    }
  }

  v4 = v3;
  v1 = [v3 navigationController];

  if (!v1)
  {
    goto LABEL_3;
  }

  return v1;
}

void sub_21BD621AC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_21BD62638();
}

id sub_21BD6221C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for NavigationControllerReader.Reader(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

double sub_21BD6228C(uint64_t a1)
{

  return result;
}

uint64_t sub_21BD622F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21BD623A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDBB820, &unk_21BE47850);
  sub_21BE2856C();
  return v4;
}

uint64_t sub_21BD62418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(byte_21BE478D0, a3);

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_21BD62494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(byte_21BE478D0, a3);

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_21BD62510(uint64_t a1)
{
  swift_getWitnessTable(byte_21BE478D0, a1);
  sub_21BE27ABC();
  __break(1u);
}

void sub_21BD62550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + qword_27CDBB710);
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;

  sub_21BD61ED0();
}

uint64_t sub_21BD62668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_21BD626C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for NavigationControllerReader.Reader(0, a4, a5, a4);
  v9 = sub_21BD623A4(a1, a2, a3);
  return sub_21BD61AB4(v9, v10, v11, objc_allocWithZone(v8));
}

double sub_21BD62758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_21BD623A4(a2, a3, a4);
  sub_21BD62550(v4, v5, v6);

  return result;
}

uint64_t sub_21BD62830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a5@<X8>)
{
  v33 = a2;
  v34 = a5;
  v7 = type metadata accessor for CircleStateControllerHostView(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB8C0, &unk_21BE47A80);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8418, &qword_21BE3B9C0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - v15;
  if (!a3)
  {
    goto LABEL_10;
  }

  if (!*(a3 + 40))
  {
    __break(1u);
LABEL_10:
    type metadata accessor for ServicesStore(0);
    sub_21BD63704(&qword_27CDB5750, type metadata accessor for ServicesStore, protocol conformance descriptor for AsyncStore<A>);
    result = sub_21BE2726C();
    __break(1u);
    return result;
  }

  swift_retain_n();

  sub_21BE262BC();

  if ((*(v14 + 88))(v16, v13) == *MEMORY[0x277D07FD8])
  {

    (*(v14 + 8))(v16, v13);
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = [objc_opt_self() bundleForClass_];
    v19 = sub_21BE2599C();
    v21 = v20;

    v35 = v19;
    v36 = v21;
    sub_21BB41FA4();
    *v12 = sub_21BE27DBC();
    *(v12 + 1) = v22;
    v12[16] = v23 & 1;
    *(v12 + 3) = v24;
    swift_storeEnumTagMultiPayload();
    sub_21BD63704(&qword_27CDB7BF8, type metadata accessor for CircleStateControllerHostView, byte_21BE394C0);
    v25 = v34;
    sub_21BE2784C();
    v26 = 0;
  }

  else
  {
    (*(v14 + 8))(v16, v13);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v27 = sub_21BCE6070(a1, v33, v35);

    if (v27)
    {
      v28 = v7[5];
      v29 = @"FACircleEventTypeSharedService";
      sub_21BCE7090(v27, v9 + v28);

      *v9 = v29;
      *(v9 + v7[6]) = 0;
      v30 = (v9 + v7[7]);
      *v30 = &unk_21BE39410;
      v30[1] = 0;
      sub_21BD634F4(v9, v12);
      swift_storeEnumTagMultiPayload();
      sub_21BD63704(&qword_27CDB7BF8, type metadata accessor for CircleStateControllerHostView, byte_21BE394C0);
      v25 = v34;
      sub_21BE2784C();

      sub_21BC77378(v9);
      v26 = 0;
    }

    else
    {

      v26 = 1;
      v25 = v34;
    }
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB8C8, &qword_21BE47AD8);
  return (*(*(v31 - 8) + 56))(v25, v26, 1, v31);
}

uint64_t sub_21BD62D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v4[5] = swift_task_alloc();
  v4[6] = sub_21BE28D7C();
  v4[7] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_21BD62E48, v6, v5);
}

uint64_t sub_21BD62E48()
{
  if (v0[3])
  {

    v0[10] = sub_21BE28D6C();
    v2 = sub_21BE28D0C();
    v0[11] = v2;
    v0[12] = v1;

    return MEMORY[0x2822009F8](sub_21BD62F50, v2, v1);
  }

  else
  {
    type metadata accessor for ServicesStore(0);
    sub_21BD63704(&qword_27CDB5750, type metadata accessor for ServicesStore, protocol conformance descriptor for AsyncStore<A>);

    return sub_21BE2726C();
  }
}

void sub_21BD62F50()
{
  v1 = *(v0[3] + 40);
  v0[13] = v1;
  if (v1)
  {
    v2 = v0[5];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v6 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_21BD63064;
    v5 = v0[5];

    v6(v0 + 2, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BD63064()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 40);
  if (v0)
  {

    sub_21BBDE578(v4);
    v5 = *(v3 + 88);
    v6 = *(v3 + 96);
    v7 = sub_21BD632B8;
  }

  else
  {
    sub_21BBDE578(v4);

    v5 = *(v3 + 88);
    v6 = *(v3 + 96);
    v7 = sub_21BD631D4;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21BD631D4()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return MEMORY[0x2822009F8](sub_21BD6324C, v1, v2);
}

uint64_t sub_21BD6324C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BD632B8()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return MEMORY[0x2822009F8](sub_21BD6374C, v1, v2);
}

uint64_t sub_21BD63328@<X0>(uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  *a2 = sub_21BE2770C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB8A8, &qword_21BE47A50);
  sub_21BD62830(v5, v4, v7, (a2 + *(v8 + 44)));
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v4;
  v9[4] = v7;
  v9[5] = v6;
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB8B0, &qword_21BE47A68) + 36));
  sub_21BE2701C();

  sub_21BE28D8C();
  *v10 = &unk_21BE47A60;
  v10[1] = v9;
  v11 = sub_21BE271CC();
  LOBYTE(v7) = sub_21BE27B7C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB8B8, &unk_21BE47A70);
  v13 = a2 + *(result + 36);
  *v13 = v11;
  *(v13 + 8) = v7;
  return result;
}

uint64_t sub_21BD63448()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21BBA6A64;

  return sub_21BD62D74(v2, v3, v5, v4);
}

uint64_t sub_21BD634F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CircleStateControllerHostView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BD63558()
{
  result = qword_27CDBB8D0;
  if (!qword_27CDBB8D0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB8B8, &unk_21BE47A70);
    v4[0] = sub_21BD635E4();
    v4[1] = MEMORY[0x277CE0880];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBB8D0);
  }

  return result;
}

unint64_t sub_21BD635E4()
{
  result = qword_27CDBB8D8;
  if (!qword_27CDBB8D8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB8B0, &qword_21BE47A68);
    v4[0] = sub_21BD636A0();
    v4[1] = sub_21BD63704(&qword_27CDB5058, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBB8D8);
  }

  return result;
}

unint64_t sub_21BD636A0()
{
  result = qword_27CDBB8E0;
  if (!qword_27CDBB8E0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB8E8, qword_21BE47AE0);
    result = swift_getWitnessTable(MEMORY[0x277CE1198], v3, v0, v1);
    atomic_store(result, &qword_27CDBB8E0);
  }

  return result;
}

uint64_t sub_21BD63704(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BD63750(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_21BD6381C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}