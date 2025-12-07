void sub_1A4133B84(uint64_t a1@<X8>)
{
  v112 = a1;
  sub_1A3EC2854(0);
  v109 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v96 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v104 = &v95 - v5;
  v114 = sub_1A52486A4();
  v117 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v116 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v115 = &v95 - v8;
  sub_1A3EC1A14(0);
  v110 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v107 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1A524A204();
  v11 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v13 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for LemonadeMapView(0);
  v14 = *(v111 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v111);
  sub_1A41374F8(0);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41374D0(0);
  v118 = v20;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41373C4(0, v21);
  v99 = v24;
  v98 = *(v24 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v97 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A413726C(0, v25);
  v106 = v27;
  v105 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v102 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41371F8(0, &qword_1EB123F90, sub_1A413726C, sub_1A4137910);
  v95 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v101 = &v95 - v30;
  sub_1A4137168(0);
  v100 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v108 = &v95 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4137E80(v1, &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeMapView);
  v33 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v34 = swift_allocObject();
  sub_1A413895C(&v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33, type metadata accessor for LemonadeMapView);
  v103 = v1;
  v119 = v1;
  sub_1A4137648(0);
  sub_1A3C9AD6C(&qword_1EB121580, sub_1A4137648, MEMORY[0x1E6981880]);
  sub_1A524B704();
  sub_1A524A0E4();
  v35 = v113;
  (*(v11 + 104))(v13, *MEMORY[0x1E6980EA8], v113);
  sub_1A524A234();

  v36 = v13;
  v37 = v115;
  (*(v11 + 8))(v36, v35);
  sub_1A524A184();
  v38 = sub_1A524A1F4();

  KeyPath = swift_getKeyPath();
  sub_1A4137520(0);
  v41 = &v19[*(v40 + 36)];
  *v41 = KeyPath;
  v41[1] = v38;
  v42 = v116;
  LOBYTE(v38) = sub_1A524A054();
  sub_1A5247BC4();
  v43 = &v19[*(v17 + 44)];
  *v43 = v38;
  *(v43 + 1) = v44;
  *(v43 + 2) = v45;
  *(v43 + 3) = v46;
  *(v43 + 4) = v47;
  v43[40] = 0;
  sub_1A524BC74();
  sub_1A5248AD4();
  v48 = v19;
  v49 = v117;
  sub_1A413895C(v48, v23, sub_1A41374F8);
  v50 = *(v118 + 36);
  v113 = v23;
  v51 = &v23[v50];
  v52 = v130;
  *(v51 + 4) = v129;
  *(v51 + 5) = v52;
  *(v51 + 6) = v131;
  v53 = v126;
  *v51 = v125;
  *(v51 + 1) = v53;
  v54 = v128;
  *(v51 + 2) = v127;
  *(v51 + 3) = v54;
  v55 = v49[13];
  v56 = v114;
  v55(v37, *MEMORY[0x1E697E718], v114);
  v55(v42, *MEMORY[0x1E697E728], v56);
  sub_1A3C9AD6C(&qword_1EB1288D0, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  if (sub_1A524C544())
  {
    v57 = v49[4];
    v58 = v104;
    v57(v104, v37, v56);
    v59 = v109;
    v57((v58 + *(v109 + 48)), v42, v56);
    v60 = v96;
    sub_1A4137E80(v58, v96, sub_1A3EC2854);
    v61 = *(v59 + 48);
    v62 = v107;
    v57(v107, v60, v56);
    v63 = v49[1];
    v63(v60 + v61, v56);
    sub_1A413895C(v58, v60, sub_1A3EC2854);
    v64 = *(v59 + 48);
    v65 = v110;
    v57((v62 + *(v110 + 36)), (v60 + v64), v56);
    v63(v60, v56);
    v66 = sub_1A41377E0(&qword_1EB1232E8, sub_1A41374D0, sub_1A41377A4);
    v67 = sub_1A3C9AD6C(&qword_1EB126FC0, sub_1A3EC1A14, MEMORY[0x1E69E5FB8]);
    v68 = v97;
    v69 = v118;
    v70 = v113;
    sub_1A524AB84();
    sub_1A4137E18(v62, sub_1A3EC1A14);
    v71 = sub_1A4137E18(v70, sub_1A41374D0);
    MEMORY[0x1EEE9AC00](v71);
    v72 = v103;
    v121 = v69;
    v122 = v65;
    v123 = v66;
    v124 = v67;
    swift_getOpaqueTypeConformance2();
    v73 = v102;
    v74 = v99;
    sub_1A524AF54();
    (*(v98 + 8))(v68, v74);
    v75 = sub_1A524BC74();
    v77 = v76;
    v78 = v101;
    v79 = &v101[*(v95 + 36)];
    PXDisplayCollectionDetailedCountsMake();
    v80 = *MEMORY[0x1E697F468];
    v81 = sub_1A52494A4();
    (*(*(v81 - 8) + 104))(v79, v80, v81);
    sub_1A3F8C700(0);
    *&v79[*(v82 + 36)] = 256;
    sub_1A4137910(0);
    v84 = &v79[*(v83 + 36)];
    *v84 = v75;
    v84[1] = v77;
    (*(v105 + 32))(v78, v73, v106);
    sub_1A524B404();
    v85 = sub_1A524B474();

    v86 = v108;
    sub_1A3CDE03C(v78, v108);
    v87 = v86 + *(v100 + 36);
    *v87 = v85;
    *(v87 + 8) = xmmword_1A531CF00;
    *(v87 + 24) = 0x4000000000000000;
    v88 = (v72 + *(v111 + 60));
    v89 = *v88;
    v90 = v88[1];
    LOBYTE(v88) = *(v88 + 16);
    v121 = v89;
    v122 = v90;
    LOBYTE(v123) = v88;
    sub_1A3CA6BB4(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    MEMORY[0x1A5906C60](&v120);
    LOBYTE(v75) = v120;
    v91 = v112;
    sub_1A4139790(v86, v112, sub_1A4137168);
    sub_1A41370D4(0, v92);
    v94 = v91 + *(v93 + 36);
    *v94 = 0;
    *(v94 + 8) = v75;
  }

  else
  {
    __break(1u);
  }
}

void *sub_1A4134894@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A4729090();
  *a1 = v3;
  return result;
}

uint64_t sub_1A4134910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4137E80(a1, v8, type metadata accessor for LemonadeNavigationDestination);

  return sub_1A487864C(v8, a2, 0, a3);
}

id PXLemonadeMapView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PXLemonadeMapView.init()(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PXLemonadeMapView(a1, a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

void sub_1A4134B30(void *a1)
{
  sub_1A3EC2B6C(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));

  v6 = [a1 dataSourceManager];
  v7 = [v6 dataSource];

  v8 = [v7 containerCollection];
  if (v8)
  {
    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    v9 = a1;
    LemonadePhotosPagingAssetCollectionGridConfiguration.init(collection:defaultSectionBodyStyle:viewConfiguration:assetsFetchResultProvider:selectionCoordinator:)(v5);
  }

  __break(1u);
}

id sub_1A4134E2C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t _s12PhotosUICore24LemonadeMapConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
  if (sub_1A524DBF4())
  {
    sub_1A52465D4();
  }

  return 0;
}

void sub_1A4134F68(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A4135028(uint64_t a1, double a2)
{
  if (!qword_1EB123E08)
  {
    sub_1A41350C8(255);
    sub_1A41381F0(255, &unk_1EB1221A8, sub_1A4135204, &type metadata for LemonadeDismissButtonPreferenceKey, MEMORY[0x1E6980750]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB123E08);
    }
  }
}

void sub_1A41350C8(uint64_t a1)
{
  if (!qword_1EB121D60)
  {
    type metadata accessor for LemonadeMapView(255);
    sub_1A41351AC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121D60);
    }
  }
}

uint64_t type metadata accessor for LemonadeMapView(uint64_t a1)
{
  result = qword_1EB16E060;
  if (!qword_1EB16E060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A41351AC()
{
  result = qword_1EB16E070;
  if (!qword_1EB16E070)
  {
    type metadata accessor for LemonadeMapView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB16E070);
  }

  return result;
}

unint64_t sub_1A4135204()
{
  result = qword_1EB1295D0;
  if (!qword_1EB1295D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1295D0);
  }

  return result;
}

unint64_t sub_1A41352FC()
{
  result = qword_1EB123DF8;
  if (!qword_1EB123DF8)
  {
    sub_1A4134FF0(255);
    sub_1A4135374(v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123DF8);
  }

  return result;
}

unint64_t sub_1A4135374(double a1)
{
  result = qword_1EB123E10;
  if (!qword_1EB123E10)
  {
    sub_1A4135028(255, a1);
    type metadata accessor for LemonadeMapView(255);
    sub_1A41351AC();
    swift_getOpaqueTypeConformance2();
    sub_1A4135438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123E10);
  }

  return result;
}

unint64_t sub_1A4135438()
{
  result = qword_1EB1221B8;
  if (!qword_1EB1221B8)
  {
    sub_1A41381F0(255, &unk_1EB1221A8, sub_1A4135204, &type metadata for LemonadeDismissButtonPreferenceKey, MEMORY[0x1E6980750]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1221B8);
  }

  return result;
}

id _s12PhotosUICore17PXLemonadeMapViewC04makeE012photoLibrary10collection013libraryFilterE4Mode23initialCenterCoordinate18wantsDismissButton0P22NearbyAssetsAffordance010enableGridE0So16UIViewControllerCSo07PHPhotoH0C_So17PHAssetCollectionCSgSo09PXLibrarykeL0VSo22CLLocationCoordinate2DVS3btFZ_0(void *a1, void *a2, uint64_t a3, int a4, char a5, int a6, double a7, double a8)
{
  v46 = a6;
  v45 = a4;
  sub_1A4138EC8(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v44 - v18);
  sub_1A4134F68(0, &unk_1EB12A160, 255, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v44 - v21;
  v23 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v44 - v27;
  v52 = 0u;
  v51 = 0u;
  v29 = *(MEMORY[0x1E696F068] + 16);
  v57 = *MEMORY[0x1E696F068];
  v58 = v29;
  v50 = a1;
  v53 = 0;
  v54 = a2;
  v55 = (a2 != 0) & a5;
  v56 = a3;
  v59 = a7;
  v60 = a8;
  v61 = 0;
  v62 = v45;
  v63 = v46;
  sub_1A3EED680(&v50, &v44 - v27);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for LemonadePhotoLibraryContext(0, v30);
  v31 = a1;
  v32 = a2;
  v33 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v31, 0, 0);
  type metadata accessor for LemonadeNavigationContext(0);
  sub_1A4137E80(v28, v25, type metadata accessor for LemonadeNavigationDestination);
  v34 = type metadata accessor for LemonadeDetailsContext(0);
  (*(*(v34 - 8) + 56))(v22, 1, 1, v34);

  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v49);
  v35 = sub_1A3C799F0(v25, 0, 0, 0, v22, &v49, v33, 2);
  v47 = v28;
  v48 = v35;
  v36 = type metadata accessor for LemonadeNavigationDestinationView(0);
  v37 = sub_1A3C9AD6C(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView, &unk_1A536BD00);

  LemonadeNavigationContainer.init(navigationContext:content:)(v38, sub_1A4138F5C, v36, v37, v19);
  sub_1A4137E80(v19, v16, sub_1A4138EC8);
  sub_1A4138F64(0);
  v40 = objc_allocWithZone(v39);
  v41 = sub_1A5249624();
  [v41 setModalPresentationStyle_];
  v42 = v41;
  sub_1A3C7A150(v41);

  sub_1A4137E18(v19, sub_1A4138EC8);
  sub_1A3EED784(&v50);
  sub_1A4137E18(v28, type metadata accessor for LemonadeNavigationDestination);
  return v42;
}

unint64_t sub_1A4135934()
{
  result = qword_1EB132EE0;
  if (!qword_1EB132EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132EE0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_s12Identifiable_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy123_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 107) = *(a2 + 107);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1A41359E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 123))
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

uint64_t sub_1A4135A30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 122) = 0;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 123) = 1;
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

    *(result + 123) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A4135AA4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A4135AF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1A4135B4C(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1A4135B84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 160);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A4135BCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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
      *(result + 160) = (a2 - 1);
      return result;
    }

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A4135C6C()
{
  result = qword_1EB123A50;
  if (!qword_1EB123A50)
  {
    sub_1A4136200(255, &qword_1EB123A48, sub_1A41352B4, MEMORY[0x1E69805D8]);
    sub_1A3C9AD6C(&qword_1EB1217C8, sub_1A41352B4, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123A50);
  }

  return result;
}

void sub_1A4135D68(uint64_t a1)
{
  sub_1A3C52C70(319, &qword_1EB126AC0, 0x1E6978650);
  if (v1 <= 0x3F)
  {
    sub_1A4134F68(319, &qword_1EB124730, 255, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1A4134F68(319, &unk_1EB1247C0, 255, sub_1A3D639F0, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1A4134F68(319, &unk_1EB1246F0, 255, MEMORY[0x1E697CC88], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1A4135FDC(319, &qword_1EB124770, &unk_1EB125548, &type metadata for LemonadeDetailsNavigationType, MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1A3CA6BB4(319, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
            if (v6 <= 0x3F)
            {
              sub_1A3CA6BB4(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
              if (v7 <= 0x3F)
              {
                sub_1A3CA6BB4(319, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
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

void sub_1A4135FDC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A3CA6BB4(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A41360BC(uint64_t a1)
{
  if (!qword_1EB132F60)
  {
    sub_1A4136150(255);
    sub_1A3C9AD6C(&qword_1EB132FC8, sub_1A4136150, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132F60);
    }
  }
}

void sub_1A4136150(uint64_t a1)
{
  if (!qword_1EB132F68)
  {
    sub_1A4136AB4(255, &unk_1EB132F70, sub_1A41361D8, sub_1A41364F8);
    v1 = sub_1A524BE24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132F68);
    }
  }
}

void sub_1A4136200(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A4136264(uint64_t a1)
{
  if (!qword_1EB1215B0)
  {
    sub_1A41362F8(255);
    sub_1A3C9AD6C(&qword_1EB121358, sub_1A41362F8, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1215B0);
    }
  }
}

void sub_1A41362F8(uint64_t a1)
{
  if (!qword_1EB121348)
  {
    sub_1A4136608(255, &qword_1EB1257E0, sub_1A4136374, &type metadata for PlacesMapFetchResultView);
    v1 = sub_1A524BE24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB121348);
    }
  }
}

void sub_1A4136374(uint64_t a1)
{
  if (!qword_1EB121728)
  {
    sub_1A4136408(255);
    sub_1A3C9AD6C(&qword_1EB1211B0, sub_1A4136408, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB121728);
    }
  }
}

void sub_1A4136440(uint64_t a1)
{
  if (!qword_1EB123928)
  {
    sub_1A41364A8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB123928);
    }
  }
}

void sub_1A41364F8(uint64_t a1)
{
  if (!qword_1EB132F80)
  {
    sub_1A413658C(255);
    sub_1A3C9AD6C(&qword_1EB132FC0, sub_1A413658C, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132F80);
    }
  }
}

void sub_1A413658C(uint64_t a1)
{
  if (!qword_1EB132F88)
  {
    sub_1A4136608(255, &qword_1EB132F90, sub_1A4136674, MEMORY[0x1E6981840]);
    v1 = sub_1A524BE24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132F88);
    }
  }
}

void sub_1A4136608(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A4136674(uint64_t a1)
{
  if (!qword_1EB132F98)
  {
    sub_1A4136708(255);
    sub_1A3C9AD6C(&qword_1EB132FB8, sub_1A4136708, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132F98);
    }
  }
}

void sub_1A4136740(uint64_t a1)
{
  if (!qword_1EB132FA8)
  {
    sub_1A4137ABC(255, &qword_1EB124280, &type metadata for MapOptions, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB132FA8);
    }
  }
}

unint64_t sub_1A4136808()
{
  result = qword_1EB132FE0;
  if (!qword_1EB132FE0)
  {
    sub_1A41367D4(255);
    sub_1A3C9AD6C(&unk_1EB132FE8, sub_1A41360BC, MEMORY[0x1E6981880]);
    sub_1A3C9AD6C(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132FE0);
  }

  return result;
}

void sub_1A41368E8(uint64_t a1, double a2)
{
  if (!qword_1EB132FF8)
  {
    sub_1A4136B78(255, &qword_1EB132FD8, sub_1A41367D4, sub_1A4136808, MEMORY[0x1E697D448]);
    sub_1A4136A2C(255);
    sub_1A41367D4(255);
    sub_1A4136808();
    swift_getOpaqueTypeConformance2();
    sub_1A3C9AD6C(&qword_1EB133060, sub_1A4136A2C, MEMORY[0x1E697C5E0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132FF8);
    }
  }
}

void sub_1A4136A2C(uint64_t a1)
{
  if (!qword_1EB133000)
  {
    sub_1A4136AB4(255, &qword_1EB133008, sub_1A4136B30, sub_1A4136D6C);
    v1 = sub_1A52495C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB133000);
    }
  }
}

void sub_1A4136AB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A4136B78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v8)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A4136C04(uint64_t a1, double a2)
{
  if (!qword_1EB133018)
  {
    sub_1A4136EB8(255, &qword_1EB122320, sub_1A3F1E8D8, &qword_1EB124628, sub_1A3F1E8D8);
    v2 = sub_1A524DF24();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB133018);
    }
  }
}

unint64_t sub_1A4136C94(double a1)
{
  result = qword_1EB133020;
  if (!qword_1EB133020)
  {
    sub_1A4136C04(255, a1);
    sub_1A3F1E8D8(255);
    sub_1A3C9AD6C(&qword_1EB124628, sub_1A3F1E8D8, MEMORY[0x1E697BEF0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133020);
  }

  return result;
}

void sub_1A4136DA4(uint64_t a1, double a2)
{
  if (!qword_1EB133030)
  {
    sub_1A4136EB8(255, &qword_1EB133038, sub_1A4136F6C, &qword_1EB133058, sub_1A4136F6C);
    sub_1A4136F6C(255, v2);
    sub_1A3C9AD6C(&qword_1EB133058, sub_1A4136F6C, MEMORY[0x1E697BEF0]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB133030);
    }
  }
}

void sub_1A4136EB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A3C9AD6C(a4, a5, MEMORY[0x1E697BEF0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A4136F6C(uint64_t a1, double a2)
{
  if (!qword_1EB133040)
  {
    sub_1A413700C(255);
    sub_1A3C9AD6C(&qword_1EB133050, sub_1A413700C, MEMORY[0x1E69817F8]);
    v2 = sub_1A5247F34();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB133040);
    }
  }
}

void sub_1A4137054(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A41370D4(uint64_t a1, double a2)
{
  if (!qword_1EB123400)
  {
    sub_1A4137168(255);
    sub_1A4137ABC(255, &qword_1EB122E00, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB123400);
    }
  }
}

void sub_1A4137168(uint64_t a1)
{
  if (!qword_1EB123808)
  {
    sub_1A41371F8(255, &qword_1EB123F90, sub_1A413726C, sub_1A4137910);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123808);
    }
  }
}

void sub_1A41371F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A413726C(uint64_t a1, double a2)
{
  if (!qword_1EB121DE8)
  {
    sub_1A41373C4(255, a2);
    sub_1A41374D0(255);
    sub_1A3EC1A14(255);
    sub_1A41377E0(&qword_1EB1232E8, sub_1A41374D0, sub_1A41377A4);
    sub_1A3C9AD6C(&qword_1EB126FC0, sub_1A3EC1A14, MEMORY[0x1E69E5FB8]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121DE8);
    }
  }
}

void sub_1A41373C4(uint64_t a1, double a2)
{
  if (!qword_1EB121E50)
  {
    sub_1A41374D0(255);
    sub_1A3EC1A14(255);
    sub_1A41377E0(&qword_1EB1232E8, sub_1A41374D0, sub_1A41377A4);
    sub_1A3C9AD6C(&qword_1EB126FC0, sub_1A3EC1A14, MEMORY[0x1E69E5FB8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121E50);
    }
  }
}

void sub_1A4137520(uint64_t a1)
{
  if (!qword_1EB123C68)
  {
    sub_1A41375B4(255);
    sub_1A4135FDC(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50], MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123C68);
    }
  }
}

void sub_1A41375B4(uint64_t a1)
{
  if (!qword_1EB121A50)
  {
    sub_1A4137648(255);
    sub_1A3C9AD6C(&qword_1EB121580, sub_1A4137648, MEMORY[0x1E6981880]);
    v1 = sub_1A524B764();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB121A50);
    }
  }
}

void sub_1A4137648(uint64_t a1)
{
  if (!qword_1EB121578)
  {
    sub_1A41376DC(255);
    sub_1A3C9AD6C(&qword_1EB121258, sub_1A41376DC, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB121578);
    }
  }
}

void sub_1A4137714(uint64_t a1)
{
  if (!qword_1EB124058)
  {
    sub_1A4137ABC(255, &qword_1EB124060, MEMORY[0x1E6981148], MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB124058);
    }
  }
}

uint64_t sub_1A41377E0(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4137860()
{
  result = qword_1EB123C78;
  if (!qword_1EB123C78)
  {
    sub_1A4137520(255);
    sub_1A3C9AD6C(&qword_1EB121A60, sub_1A41375B4, MEMORY[0x1E697D680]);
    sub_1A3F96350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123C78);
  }

  return result;
}

void sub_1A4137958(uint64_t a1)
{
  if (!qword_1EB1241F0)
  {
    sub_1A3F8C700(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1241F0);
    }
  }
}

unint64_t sub_1A41379B8()
{
  result = qword_1EB1241F8;
  if (!qword_1EB1241F8)
  {
    sub_1A4137958(255);
    sub_1A4137A68();
    sub_1A3C9AD6C(&qword_1EB1245F0, sub_1A3F8C700, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1241F8);
  }

  return result;
}

unint64_t sub_1A4137A68()
{
  result = qword_1EB1255F0;
  if (!qword_1EB1255F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1255F0);
  }

  return result;
}

void sub_1A4137ABC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A4137B10(double a1)
{
  result = qword_1EB123408;
  if (!qword_1EB123408)
  {
    sub_1A41370D4(255, a1);
    sub_1A41377E0(&qword_1EB123810, sub_1A4137168, sub_1A4137BC8);
    sub_1A3E734D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123408);
  }

  return result;
}

unint64_t sub_1A4137BC8()
{
  result = qword_1EB123F98;
  if (!qword_1EB123F98)
  {
    sub_1A41371F8(255, &qword_1EB123F90, sub_1A413726C, sub_1A4137910);
    sub_1A41373C4(255, v1);
    sub_1A41374D0(255);
    sub_1A3EC1A14(255);
    sub_1A41377E0(&qword_1EB1232E8, sub_1A41374D0, sub_1A41377A4);
    sub_1A3C9AD6C(&qword_1EB126FC0, sub_1A3EC1A14, MEMORY[0x1E69E5FB8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3C9AD6C(&qword_1EB122D70, sub_1A4137910, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123F98);
  }

  return result;
}

void sub_1A4137DAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1A52483B4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A4137E18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4137E80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4137F20(void *a1)
{
  type metadata accessor for LemonadeMapView(0);
  sub_1A3CA6BB4(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

void sub_1A4137FDC(uint64_t a1, double a2)
{
  if (!qword_1EB133070)
  {
    sub_1A413807C(255, a2);
    sub_1A41381F0(255, &qword_1EB127B40, sub_1A3E75420, MEMORY[0x1E69E7DE0], MEMORY[0x1E69802D8]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB133070);
    }
  }
}

void sub_1A413807C(uint64_t a1, double a2)
{
  if (!qword_1EB133078)
  {
    sub_1A41368E8(255, a2);
    sub_1A4136B78(255, &qword_1EB132FD8, sub_1A41367D4, sub_1A4136808, MEMORY[0x1E697D448]);
    sub_1A4136A2C(255);
    sub_1A41367D4(255);
    sub_1A4136808();
    swift_getOpaqueTypeConformance2();
    sub_1A3C9AD6C(&qword_1EB133060, sub_1A4136A2C, MEMORY[0x1E697C5E0]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB133078);
    }
  }
}

void sub_1A41381F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A4138258(uint64_t a2@<X8>)
{
  *a2 = sub_1A5249314();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_1A4137DAC(0, &unk_1EB133080, sub_1A41370D4, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  sub_1A4133B84(a2 + *(v3 + 44));
}

uint64_t objectdestroy_43Tm_0()
{
  v1 = type metadata accessor for LemonadeMapView(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  swift_unknownObjectRelease();
  v3 = v1[9];
  sub_1A4137EE8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5248284();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  j__swift_release(*(v2 + v1[10]));
  v5 = v1[11];
  sub_1A4134F68(0, &qword_1EB124898, 255, MEMORY[0x1E697CC88], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5249FB4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v2 + v1[12]), *(v2 + v1[12] + 8));

  return swift_deallocObject();
}

double sub_1A4138500()
{
  type metadata accessor for LemonadeMapView(0);
  sub_1A3CA6BB4(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  v1 = v0;

  MEMORY[0x1A5906C60](&v3, v1);
  sub_1A524B904();

  return result;
}

void sub_1A4138610()
{
  v3 = *(v2 + 16);
  sub_1A524BC74();
  v4 = sub_1A524C634();
  v5 = PXLocalizedString(v4);

  v6 = sub_1A524C674();
  v8 = v7;

  v27 = v6;
  v28 = v8;
  sub_1A3D5F9DC();
  v9 = sub_1A524A464();
  v24 = v10;
  v25 = v9;
  v23 = v11;
  v12 = v3 + *(type metadata accessor for LemonadeMapView(0) + 60);
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  v27 = *v12;
  v13 = v27;
  v28 = v14;
  v29 = v15;
  sub_1A3CA6BB4(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  v17 = v16;
  MEMORY[0x1A5906C60](&v26);
  v18 = sub_1A524C634();
  v19 = PXLocalizedString(v18);

  v20 = sub_1A524C674();
  v22 = v21;

  v27 = v20;
  v28 = v22;
  sub_1A524A464();
  v27 = v13;
  v28 = v14;
  v29 = v15;
  MEMORY[0x1A5906C60](&v26, v17);
  LOBYTE(v27) = v23 & 1;
  LOBYTE(v26) = v23 & 1;
  sub_1A3E75E68(v25, v24, v23 & 1);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A413895C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A41389C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3 + *(type metadata accessor for LemonadeMapView(0) + 60);
  v5 = *v4;
  v6 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 16);
  v17 = v5;
  v18 = v6;
  v19 = v4;
  sub_1A3CA6BB4(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](&v16);
  v7 = sub_1A524C634();

  v8 = PXLocalizedString(v7);

  v9 = sub_1A524C674();
  v11 = v10;

  v17 = v9;
  v18 = v11;
  sub_1A3D5F9DC();
  result = sub_1A524A464();
  *a1 = result;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v15;
  return result;
}

uint64_t sub_1A4138AE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4138B50()
{
  v1 = *(type metadata accessor for LemonadeMapView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A4133904(v2);
}

uint64_t sub_1A4138C60(uint64_t a1, uint64_t a2)
{
  sub_1A4137ABC(0, &qword_1EB124280, &type metadata for MapOptions, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4138CF0(uint64_t a1)
{
  sub_1A4137ABC(0, &qword_1EB124280, &type metadata for MapOptions, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A4138D78(uint64_t a1)
{
  if (!qword_1EB127568)
  {
    sub_1A524BD64();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB127568);
    }
  }
}

uint64_t objectdestroyTm_29()
{
  j__swift_release(*(v0 + 16));

  if (*(v0 + 208))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 184));
  }

  return swift_deallocObject();
}

void sub_1A4138EC8(uint64_t a1)
{
  if (!qword_1EB129B18)
  {
    v2 = type metadata accessor for LemonadeNavigationDestinationView(255);
    v3 = sub_1A3C9AD6C(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView, &unk_1A536BD00);
    v5 = type metadata accessor for LemonadeNavigationContainer(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB129B18);
    }
  }
}

void sub_1A4138F64(uint64_t a1)
{
  if (!qword_1EB133090)
  {
    sub_1A4138EC8(255);
    sub_1A3C9AD6C(&qword_1EB129B28, sub_1A4138EC8, &protocol conformance descriptor for LemonadeNavigationContainer<A>);
    v1 = sub_1A5249654();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB133090);
    }
  }
}

void sub_1A4138FF8(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  if (!*a2)
  {
    sub_1A3C4B7E8(255, a3, a4, a5);
    v6 = sub_1A524B6D4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A4139054(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  PHPhotoLibrary.fetcher.getter(a1, a2);
  v10 = *(v2 + 112);
  sub_1A4138FF8(0, &qword_1EB121BC0, &qword_1EB120A30, &qword_1EB126AC0, 0x1E6978650);
  sub_1A524B6A4();
  if (v15)
  {
    v5 = PhotoKitFetcher.fetchAssetsWithLocation(inCollection:libraryFilterViewMode:)(v15, *(v2 + 312));

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = swift_allocObject();
      *(v8 + 16) = v3;
      *(v8 + 24) = v4;
      v13 = sub_1A41391EC;
      v14 = v8;
      *&v10 = MEMORY[0x1E69E9820];
      *(&v10 + 1) = 1107296256;
      v11 = sub_1A3C2E0D0;
      v12 = &block_descriptor_69_0;
      v9 = _Block_copy(&v10);

      [v7 loadFetchResult:v5 withCompletion:v9];

      _Block_release(v9);
      v5 = v7;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1A41391EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = v2;
    aBlock[4] = sub_1A41392F8;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_75_0;
    v6 = _Block_copy(aBlock);

    [v4 reloadContentModeWithCompletion_];
    _Block_release(v6);
  }
}

void sub_1A41392F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = v1;
    aBlock[4] = sub_1A4139404;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_81;
    v6 = _Block_copy(aBlock);

    [v4 resumeWithCompletion_];
    _Block_release(v6);
  }
}

void sub_1A4139410()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong focusOnProvidedAssetsAnimated_];
  }
}

void sub_1A413946C()
{
  sub_1A3CA6BB4(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v2 == 1)
  {
    sub_1A524B6A4();
    sub_1A524B6A4();
    if ((v2 & 1) != 0 || (sub_1A4138FF8(0, &qword_1EB121BC0, &qword_1EB120A30, &qword_1EB126AC0, 0x1E6978650), sub_1A524B6A4(), !v2))
    {
      sub_1A4138FF8(0, &qword_1EB121BC0, &qword_1EB120A30, &qword_1EB126AC0, 0x1E6978650);
      sub_1A524B6A4();
      sub_1A524B6B4();
      sub_1A4138FF8(0, &qword_1EB121B90, &qword_1EB1206A0, &qword_1EB1206A8, off_1E771F310);
      sub_1A524B6A4();
      v1 = v2;
      if (!v2)
      {
        __break(1u);
        __break(1u);
        return;
      }

      [v2 setContentMode_];
    }

    else
    {
      v0 = v2;
      sub_1A524B6B4();
      sub_1A4138FF8(0, &qword_1EB121B90, &qword_1EB1206A0, &qword_1EB1206A8, off_1E771F310);
      sub_1A524B6A4();
      v1 = v2;
      [v2 setContentMode_];
    }

    sub_1A41305C8(0);
  }
}

uint64_t sub_1A4139790(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A41397F8(double a1)
{
  result = qword_1EB1330A0;
  if (!qword_1EB1330A0)
  {
    sub_1A4137FDC(255, a1);
    sub_1A41368E8(255, v2);
    sub_1A4136B78(255, &qword_1EB132FD8, sub_1A41367D4, sub_1A4136808, MEMORY[0x1E697D448]);
    sub_1A4136A2C(255);
    sub_1A41367D4(255);
    sub_1A4136808();
    swift_getOpaqueTypeConformance2();
    sub_1A3C9AD6C(&qword_1EB133060, sub_1A4136A2C, MEMORY[0x1E697C5E0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3E754D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1330A0);
  }

  return result;
}

uint64_t AssetEntity.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1A4139E58(0);
  swift_getKeyPath();
  sub_1A3F58824();
  sub_1A413AF64();
  a2[1] = sub_1A523FE14();
  sub_1A413AFB8(0, &qword_1EB1260E0, &qword_1EB12AFE0, MEMORY[0x1E6969530], sub_1A413B040);
  swift_getKeyPath();
  a2[2] = sub_1A523FE24();
  sub_1A4142D60(0, &qword_1EB1260C0, sub_1A40D7C08, MEMORY[0x1E69E6370], MEMORY[0x1E695A088]);
  swift_getKeyPath();
  a2[3] = sub_1A523FE54();
  swift_getKeyPath();
  a2[4] = sub_1A523FE54();
  sub_1A413AFB8(0, &qword_1EB1330A8, &qword_1EB1330B0, MEMORY[0x1E696B1F0], sub_1A413B310);
  swift_getKeyPath();
  v4 = MEMORY[0x1E696B1F0];
  sub_1A413CDA0(&qword_1EB1330C8, MEMORY[0x1E696B1F0], MEMORY[0x1E696B200]);
  sub_1A413CDA0(&qword_1EB1330D0, v4, MEMORY[0x1E696B1F8]);
  a2[5] = sub_1A523FE74();
  a2[6] = sub_1A523FE44();
  sub_1A413B7F0(0);
  a2[7] = sub_1A523FE64();
  a2[8] = sub_1A523FE64();
  sub_1A413BEA0(0);
  sub_1A413C238();
  a2[9] = sub_1A523FE04();
  sub_1A413C28C(0);
  a2[10] = sub_1A523FE44();
  a2[11] = sub_1A523FE64();
  result = sub_1A523FE64();
  a2[12] = result;
  *a2 = a1;
  return result;
}

void sub_1A4139E58(uint64_t a1)
{
  if (!qword_1EB1260D0)
  {
    sub_1A4143DA0(255, &qword_1EB125CE8, &type metadata for AssetEntity.MediaType, MEMORY[0x1E69E6720]);
    sub_1A413B8AC(&qword_1EB125CE0, &qword_1EB125CE8, &type metadata for AssetEntity.MediaType, sub_1A4139F14);
    v1 = sub_1A523FE84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1260D0);
    }
  }
}

unint64_t sub_1A4139F14()
{
  result = qword_1EB125D30;
  if (!qword_1EB125D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125D30);
  }

  return result;
}

id AssetEntity.id.getter()
{
  result = [*v0 uuid];
  if (result)
  {
    v2 = result;
    v3 = sub_1A524C674();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AssetEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = sub_1A5240214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5246E54();
  v19 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1[5];
  v27 = v1[4];
  v28 = v10;
  v29 = *(v1 + 12);
  v11 = v1[1];
  v23 = *v1;
  v24 = v11;
  v12 = v1[3];
  v25 = v1[2];
  v26 = v12;
  sub_1A524D654();
  v20 = sub_1A4895DCC();
  v13 = *v20;
  sub_1A5246E44();
  sub_1A5246E04();

  v14 = *(v7 + 8);
  v14(v9, v6);
  v15 = MEMORY[0x1E695A3C0];
  sub_1A3C7CFAC(0, &qword_1EB131A00, MEMORY[0x1E695A3C0], MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1A52FC9F0;
  sub_1A52401F4();
  sub_1A5240204();
  v22 = v16;
  sub_1A413CDA0(&qword_1EB1260B8, MEMORY[0x1E695A3C0], MEMORY[0x1E695A3C8]);
  sub_1A3C7CFAC(0, &qword_1EB131A08, v15, MEMORY[0x1E69E62F8]);
  sub_1A40D8DE4();
  sub_1A524E224();
  sub_1A413A330(v5, v21);
  (*(v3 + 8))(v5, v2);
  sub_1A524D644();
  v17 = *v20;
  sub_1A5246E44();
  sub_1A5246E04();

  return (v14)(v9, v19);
}

uint64_t sub_1A413A330@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a1;
  v24 = a2;
  v3 = MEMORY[0x1E69E6720];
  sub_1A3C7CFAC(0, &qword_1EB12B008, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v23 = v20 - v5;
  v6 = sub_1A5240BB4();
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1A5240214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C7CFAC(0, &qword_1EB12B0F0, MEMORY[0x1E695A3E8], v3);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v20 - v15;
  v20[0] = *v2;
  v17 = sub_1A5240244();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_1A5240204();
  sub_1A413CDA0(&qword_1EB1260B8, MEMORY[0x1E695A3C0], MEMORY[0x1E695A3C8]);
  v18 = sub_1A524E114();
  (*(v8 + 8))(v10, v7);
  if (v18)
  {
    sub_1A413A930(v20[0]);
  }

  sub_1A5240B94();
  (*(v21 + 56))(v23, 1, 1, v22);
  sub_1A4143C08(v16, v13);
  sub_1A5240264();
  return sub_1A4143C9C(v16, &qword_1EB12B0F0, MEMORY[0x1E695A3E8]);
}

uint64_t AssetEntity.displayRepresentation(with:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 120) = a1;
  *(v3 + 128) = a2;
  v4 = sub_1A5246E54();
  *(v3 + 136) = v4;
  *(v3 + 144) = *(v4 - 8);
  *(v3 + 152) = swift_task_alloc();
  v5 = *(v2 + 80);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v5;
  *(v3 + 112) = *(v2 + 96);
  v6 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v6;
  v7 = *(v2 + 48);
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A413A7D0, 0, 0);
}

uint64_t sub_1A413A7D0(double a1)
{
  v3 = v1[18];
  v2 = v1[19];
  v5 = v1[16];
  v4 = v1[17];
  v6 = v1[15];
  sub_1A524D654();
  v7 = sub_1A4895DCC();
  v8 = *v7;
  sub_1A5246E44();
  sub_1A5246E04();

  v9 = *(v3 + 8);
  v9(v2, v4);
  sub_1A413A330(v5, v6);
  sub_1A524D644();
  v10 = *v7;
  sub_1A5246E44();
  sub_1A5246E04();

  v9(v2, v4);

  v11 = v1[1];

  return v11();
}

void sub_1A413A930(void *a1)
{
  v3 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v3);
  sub_1A3C7CFAC(0, &qword_1EB12B0F0, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  PXDisplayRepresentationImage(for:badgeName:)(a1);
}

uint64_t static AssetEntity.entities(for:)(void *a1)
{
  result = [a1 count];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (!result)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v6 = [a1 objectAtIndexedSubscript_];
      AssetEntity.init(_:)(v6, v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1A4140FB0(0, *(v5 + 2) + 1, 1, v5);
      }

      v8 = *(v5 + 2);
      v7 = *(v5 + 3);
      if (v8 >= v7 >> 1)
      {
        v5 = sub_1A4140FB0((v7 > 1), v8 + 1, 1, v5);
      }

      ++v4;

      *(v5 + 2) = v8 + 1;
      v9 = &v5[104 * v8];
      v10 = v15[0];
      v11 = v15[2];
      *(v9 + 3) = v15[1];
      *(v9 + 4) = v11;
      *(v9 + 2) = v10;
      v12 = v15[3];
      v13 = v15[4];
      v14 = v15[5];
      *(v9 + 16) = v16;
      *(v9 + 6) = v13;
      *(v9 + 7) = v14;
      *(v9 + 5) = v12;
    }

    while (v3 != v4);
    return v5;
  }

  return result;
}

id AssetEntity.assetType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = [*v1 mediaType];
  if (result >= 4)
  {
    sub_1A524E404();
    MEMORY[0x1A5907B60](0xD000000000000018, 0x80000001A53C8C80);
    type metadata accessor for PHAssetMediaType(0);
    sub_1A524E624();
    result = sub_1A524E6E4();
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

id sub_1A413AF28@<X0>(_BYTE *a1@<X8>)
{
  result = AssetEntity.assetType.getter(&v3);
  *a1 = v3;
  return result;
}

unint64_t sub_1A413AF64()
{
  result = qword_1EB125D40;
  if (!qword_1EB125D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125D40);
  }

  return result;
}

void sub_1A413AFB8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (!*a2)
  {
    sub_1A3C7CFAC(255, a3, a4, MEMORY[0x1E69E6720]);
    a5();
    v7 = sub_1A523FE84();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1A413B040()
{
  result = qword_1EB126028;
  if (!qword_1EB126028)
  {
    sub_1A3C7CFAC(255, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    sub_1A413CDA0(&qword_1EB126030, MEMORY[0x1E6969530], MEMORY[0x1E695A750]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126028);
  }

  return result;
}

uint64_t AssetEntity.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 creationDate];
  if (v3)
  {
    v4 = v3;
    sub_1A52410F4();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1A5241144();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_1A413B1BC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 creationDate];
  if (v3)
  {
    v4 = v3;
    sub_1A52410F4();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1A5241144();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

id sub_1A413B284@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isFavorite];
  *a2 = result;
  return result;
}

id sub_1A413B2DC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isHidden];
  *a2 = result;
  return result;
}

unint64_t sub_1A413B310()
{
  result = qword_1EB1330B8;
  if (!qword_1EB1330B8)
  {
    sub_1A3C7CFAC(255, &qword_1EB1330B0, MEMORY[0x1E696B1F0], MEMORY[0x1E69E6720]);
    sub_1A413CDA0(&qword_1EB1330C0, MEMORY[0x1E696B1F0], MEMORY[0x1E6985C28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1330B8);
  }

  return result;
}

uint64_t AssetEntity.location.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 location];
  if (v3)
  {
    v4 = v3;
    sub_1A3C7CFAC(0, &qword_1EB133128, MEMORY[0x1E696B1E8], MEMORY[0x1E69E6F90]);
    v5 = sub_1A5241584();
    v6 = *(v5 - 8);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1A52F8E10;
    v9 = (v8 + v7);
    v10 = v4;
    [v10 coordinate];
    *v9 = v11;
    v9[1] = v12;
    (*(v6 + 104))(v9, *MEMORY[0x1E696B1E0], v5);
    sub_1A5241594();

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = sub_1A52415A4();
  v15 = *(*(v14 - 8) + 56);

  return v15(a1, v13, 1, v14);
}

uint64_t sub_1A413B5D0(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  type metadata accessor for PXAssetEntityEditResourceLoader(0);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1A413B67C;

  return sub_1A4A4EB70(v3);
}

uint64_t sub_1A413B67C(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1A413B7C8, 0, 0);
  }
}

void sub_1A413B7F0(uint64_t a1)
{
  if (!qword_1EB1330D8)
  {
    v1 = MEMORY[0x1E69E63B0];
    sub_1A4143DA0(255, &qword_1EB126D90, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    sub_1A413B8AC(&qword_1EB1330E0, &qword_1EB126D90, v1, sub_1A413B938);
    v2 = sub_1A523FE84();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB1330D8);
    }
  }
}

uint64_t sub_1A413B8AC(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A4143DA0(255, a2, a3, MEMORY[0x1E69E6720]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A413B938()
{
  result = qword_1EB1330E8;
  if (!qword_1EB1330E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1330E8);
  }

  return result;
}

uint64_t AssetEntity.hasSuggestedEdits.getter()
{
  v2 = *v0;
  type metadata accessor for PXAssetEntityEditResourceLoader(0);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A413BA34;

  return sub_1A4A4EB70(v2);
}

uint64_t sub_1A413BA34(char a1)
{
  v4 = *v2;

  v5 = *(v4 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_1A413BB40(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  type metadata accessor for PXAssetEntityEditResourceLoader(0);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1A413BBEC;

  return sub_1A4A4EDD4(v3);
}

uint64_t sub_1A413BBEC(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 40) = a2;
    *(v6 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1A4143DF4, 0, 0);
  }
}

uint64_t AssetEntity.aperture.getter()
{
  v2 = *v0;
  type metadata accessor for PXAssetEntityEditResourceLoader(0);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A4143DF0;

  return sub_1A4A4EDD4(v2);
}

uint64_t sub_1A413BDF4(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  type metadata accessor for PXAssetEntityEditResourceLoader(0);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1A413BBEC;

  return sub_1A4A4F42C(v3);
}

void sub_1A413BEA0(uint64_t a1)
{
  if (!qword_1EB1330F0)
  {
    sub_1A4143DA0(255, &qword_1EB1330F8, &type metadata for AssetEntity.FilterEffect, MEMORY[0x1E69E6720]);
    sub_1A413B8AC(&qword_1EB133100, &qword_1EB1330F8, &type metadata for AssetEntity.FilterEffect, sub_1A413BF5C);
    v1 = sub_1A523FE84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1330F0);
    }
  }
}

unint64_t sub_1A413BF5C()
{
  result = qword_1EB133108;
  if (!qword_1EB133108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133108);
  }

  return result;
}

uint64_t AssetEntity.exposure.getter()
{
  v2 = *v0;
  type metadata accessor for PXAssetEntityEditResourceLoader(0);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A4143DF0;

  return sub_1A4A4F42C(v2);
}

uint64_t sub_1A413C058(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  type metadata accessor for PXAssetEntityEditResourceLoader(0);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1A413C104;

  return sub_1A4A4F0AC(v3);
}

uint64_t sub_1A413C104(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[4] = a1;
  v4[5] = a2;

  if (v2)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1A4143E1C, 0, 0);
  }
}

unint64_t sub_1A413C238()
{
  result = qword_1EB133110;
  if (!qword_1EB133110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133110);
  }

  return result;
}

void sub_1A413C28C(uint64_t a1)
{
  if (!qword_1EB133118)
  {
    v1 = MEMORY[0x1E69E6370];
    sub_1A4143DA0(255, &qword_1EB126DF0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    sub_1A413B8AC(&qword_1EB133120, &qword_1EB126DF0, v1, sub_1A40D7C08);
    v2 = sub_1A523FE84();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB133118);
    }
  }
}

uint64_t AssetEntity.filter.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  type metadata accessor for PXAssetEntityEditResourceLoader(0);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1A413C3F4;

  return sub_1A4A4F0AC(v3);
}

uint64_t sub_1A413C3F4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[4] = a1;
  v4[5] = a2;

  if (v2)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1A413C528, 0, 0);
  }
}

uint64_t sub_1A413C528()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 32);
    AssetEntity.FilterEffect.init(rawValue:)(*(&v1 - 1));
    v3 = v6;
  }

  else
  {
    v3 = 10;
  }

  **(v0 + 16) = v3;
  v4 = *(v0 + 8);

  return v4();
}

PhotosUICore::AssetEntity::FilterEffect_optional __swiftcall AssetEntity.FilterEffect.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A524E824();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1A413C608(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  type metadata accessor for PXAssetEntityEditResourceLoader(0);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1A413C6B4;

  return sub_1A4A4F710(v3);
}

uint64_t sub_1A413C6B4(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1A413C800, 0, 0);
  }
}

uint64_t AssetEntity.isPortraitModeEnabled.getter()
{
  v2 = *v0;
  type metadata accessor for PXAssetEntityEditResourceLoader(0);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3FBB594;

  return sub_1A4A4F710(v2);
}

uint64_t sub_1A413C8CC(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  type metadata accessor for PXAssetEntityEditResourceLoader(0);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1A413C978;

  return sub_1A4A4F9D4(v3);
}

uint64_t sub_1A413C978(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 40) = a2;
    *(v6 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1A413CAD8, 0, 0);
  }
}

uint64_t sub_1A413CAD8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 32);
  *(v2 + 8) = v1 & 1;
  return (*(v0 + 8))();
}

uint64_t AssetEntity.saturation.getter()
{
  v2 = *v0;
  type metadata accessor for PXAssetEntityEditResourceLoader(0);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A413CBB0;

  return sub_1A4A4F9D4(v2);
}

uint64_t sub_1A413CBB0(uint64_t a1, char a2)
{
  v6 = *v3;

  if (v2)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v6 + 8);

    return v9(a1, a2 & 1);
  }
}

uint64_t sub_1A413CCF4(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  type metadata accessor for PXAssetEntityEditResourceLoader(0);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1A413BBEC;

  return sub_1A4A4FCB8(v3);
}

uint64_t sub_1A413CDA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AssetEntity.warmth.getter()
{
  v2 = *v0;
  type metadata accessor for PXAssetEntityEditResourceLoader(0);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A4143DF0;

  return sub_1A4A4FCB8(v2);
}

uint64_t sub_1A413CE90()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1A3C7CFAC(0, &qword_1EB12B0F0, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v59 = v41 - v2;
  sub_1A3C7CFAC(0, &qword_1EB12B008, MEMORY[0x1E6968E10], v0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v52 = v41 - v4;
  v58 = sub_1A5240BA4();
  v5 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5240BB4();
  v47 = v14;
  v60 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4143A60(0, &qword_1EB133200, &qword_1EB133208, &type metadata for AssetEntity.MediaType);
  sub_1A4143AB8(0, &qword_1EB133208, &type metadata for AssetEntity.MediaType);
  v18 = v17;
  v56 = v17;
  v19 = *(v17 - 8);
  v50 = *(v19 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1A531D3E0;
  v54 = v21 + v20;
  v42 = *(v18 + 48);
  v43 = v21;
  *(v21 + v20) = 0;
  sub_1A524C5B4();
  v44 = v10;
  sub_1A5241244();
  v57 = *MEMORY[0x1E6968DF0];
  v55 = *(v5 + 104);
  v49 = v5 + 104;
  v46 = v7;
  v22 = v58;
  v55(v7);
  v23 = v16;
  sub_1A5240BC4();
  v48 = *(v60 + 56);
  v60 += 56;
  v24 = v52;
  v48(v52, 1, 1, v14);
  v53 = sub_1A5240244();
  v25 = *(v53 - 8);
  v45 = *(v25 + 56);
  v51 = v25 + 56;
  v45(v59, 1, 1, v53);
  v26 = v54;
  v27 = v23;
  v28 = v24;
  sub_1A5240264();
  v29 = v50;
  v30 = v56;
  v42 = *(v56 + 48);
  *(v26 + v50) = 1;
  v41[1] = v13;
  sub_1A524C5B4();
  sub_1A5241244();
  (v55)(v46, v57, v22);
  v41[0] = v27;
  sub_1A5240BC4();
  v31 = v47;
  v32 = v48;
  v48(v28, 1, 1, v47);
  v33 = v45;
  v45(v59, 1, 1, v53);
  sub_1A5240264();
  v41[2] = *(v30 + 48);
  v42 = 2 * v29;
  *(v54 + 2 * v29) = 2;
  sub_1A524C5B4();
  sub_1A5241244();
  v34 = v46;
  (v55)(v46, v57, v58);
  sub_1A5240BC4();
  v35 = v52;
  v32(v52, 1, 1, v31);
  v36 = v59;
  v33(v59, 1, 1, v53);
  v37 = v35;
  sub_1A5240264();
  v38 = (v54 + v42 + v50);
  v50 = *(v56 + 48);
  *v38 = 3;
  sub_1A524C5B4();
  sub_1A5241244();
  (v55)(v34, v57, v58);
  sub_1A5240BC4();
  v48(v37, 1, 1, v47);
  v45(v36, 1, 1, v53);
  sub_1A5240264();
  v39 = sub_1A41416BC(v43);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EB1AA6A8 = v39;
  return result;
}

void static AssetEntity.MediaType.caseDisplayRepresentations.getter()
{
  if (qword_1EB1AA6A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double static AssetEntity.MediaType.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_1EB1AA6A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB1AA6A8 = a1;

  return result;
}

uint64_t (*static AssetEntity.MediaType.caseDisplayRepresentations.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EB1AA6A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void sub_1A413D828(void *a1@<X8>)
{
  if (qword_1EB1AA6A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EB1AA6A8;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

PhotosUICore::AssetEntity::MediaType_optional __swiftcall AssetEntity.MediaType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A524E824();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AssetEntity.MediaType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6F65646976;
  if (*v0 != 2)
  {
    v2 = 0x6F69647561;
  }

  if (*v0)
  {
    v1 = 0x6567616D69;
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

uint64_t sub_1A413DA04(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6F65646976;
    }

    else
    {
      v4 = 0x6F69647561;
    }

    v5 = 0xE500000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x6567616D69;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x6F65646976;
  if (a2 != 2)
  {
    v7 = 0x6F69647561;
  }

  if (a2)
  {
    v2 = 0x6567616D69;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1A524EAB4();
  }

  return v10 & 1;
}

uint64_t sub_1A413DB28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C616E696769726FLL;
  v3 = a1;
  if (a1 > 4u)
  {
    v11 = 0xE500000000000000;
    v12 = 0x6469766976;
    v13 = 0x7261576469766976;
    v14 = 0xE90000000000006DLL;
    if (a1 != 8)
    {
      v13 = 0x6F6F436469766976;
      v14 = 0xE90000000000006CLL;
    }

    if (a1 != 7)
    {
      v12 = v13;
      v11 = v14;
    }

    v15 = 0xE400000000000000;
    v16 = 1919512430;
    if (a1 != 5)
    {
      v16 = 0x6F747265766C6973;
      v15 = 0xEA0000000000656ELL;
    }

    if (a1 <= 6u)
    {
      v9 = v16;
    }

    else
    {
      v9 = v12;
    }

    if (v3 <= 6)
    {
      v10 = v15;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v4 = 0x636974616D617264;
    v5 = 0xEC0000006C6F6F43;
    v6 = 0x636974616D617264;
    v7 = 0xEC0000006D726157;
    if (a1 != 3)
    {
      v6 = 1869508461;
      v7 = 0xE400000000000000;
    }

    if (a1 != 2)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0x636974616D617264;
    if (!a1)
    {
      v8 = 0x6C616E696769726FLL;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v3 <= 1)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v18 = 0xE400000000000000;
        if (v9 != 1919512430)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v18 = 0xEA0000000000656ELL;
        if (v9 != 0x6F747265766C6973)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_51;
    }

    if (a2 == 7)
    {
      v18 = 0xE500000000000000;
      if (v9 != 0x6469766976)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    if (a2 == 8)
    {
      v18 = 0xE90000000000006DLL;
      if (v9 != 0x7261576469766976)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    v2 = 0x6F6F436469766976;
    v18 = 0xE90000000000006CLL;
    goto LABEL_50;
  }

  if (a2 <= 1u)
  {
    v18 = 0xE800000000000000;
    if (a2)
    {
      if (v9 != 0x636974616D617264)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

LABEL_50:
    if (v9 != v2)
    {
LABEL_54:
      v19 = sub_1A524EAB4();
      goto LABEL_55;
    }

    goto LABEL_51;
  }

  if (a2 == 2)
  {
    v17 = 1819242307;
  }

  else
  {
    if (a2 != 3)
    {
      v18 = 0xE400000000000000;
      if (v9 != 1869508461)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    v17 = 1836212567;
  }

  v18 = v17 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  if (v9 != 0x636974616D617264)
  {
    goto LABEL_54;
  }

LABEL_51:
  if (v10 != v18)
  {
    goto LABEL_54;
  }

  v19 = 1;
LABEL_55:

  return v19 & 1;
}

uint64_t sub_1A413DE28()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

double sub_1A413DEDC(uint64_t a1)
{
  sub_1A524C794();

  return result;
}

double sub_1A413DF7C(uint64_t a1, unsigned __int8 a2)
{
  sub_1A524C794();

  return result;
}

uint64_t sub_1A413E0F8(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

void sub_1A413E1B4(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0x6F65646976;
  if (*v1 != 2)
  {
    v4 = 0x6F69647561;
  }

  if (*v1)
  {
    v3 = 0x6567616D69;
    v2 = 0xE500000000000000;
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
    v2 = 0xE500000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t AssetEntity.FilterEffect.identifier.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x64697669564433;
    v7 = 0x5764697669564433;
    if (v1 != 8)
    {
      v7 = 0x4364697669564433;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x72696F4E4433;
    if (v1 != 5)
    {
      v8 = 0x7265766C69534433;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 1701736270;
    v3 = 0x74616D6172444433;
    v4 = 0x74616D6172444433;
    if (v1 != 3)
    {
      v4 = 1869508429;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x74616D6172444433;
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

uint64_t AssetEntity.FilterEffect.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x6469766976;
    v7 = 0x7261576469766976;
    if (v1 != 8)
    {
      v7 = 0x6F6F436469766976;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 1919512430;
    if (v1 != 5)
    {
      v8 = 0x6F747265766C6973;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6C616E696769726FLL;
    v3 = 0x636974616D617264;
    v4 = 0x636974616D617264;
    if (v1 != 3)
    {
      v4 = 1869508461;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x636974616D617264;
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

uint64_t sub_1A413E4DC()
{
  v1 = *v0;
  sub_1A524EC94();
  sub_1A413DF7C(v3, v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A413E52C(uint64_t a1)
{
  v2 = *v1;
  sub_1A524EC94();
  sub_1A413DF7C(v4, v2);
  return sub_1A524ECE4();
}

uint64_t sub_1A413E57C@<X0>(uint64_t *a1@<X8>)
{
  result = AssetEntity.FilterEffect.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A413E5AC(uint64_t a1)
{
  v2 = sub_1A4143A0C();

  return MEMORY[0x1EEDB39B0](a1, v2);
}

uint64_t sub_1A413E5F8(uint64_t a1)
{
  v2 = sub_1A3F58824();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_1A413E648(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3D60150;

  return AssetEntity.displayRepresentation(with:)(a1, a2);
}

uint64_t sub_1A413E6F0(uint64_t a1)
{
  v2 = sub_1A4142C78();

  return MEMORY[0x1EEDB3F68](a1, v2);
}

uint64_t AssetEntityQuery.entities(for:)(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1A5246F24();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = sub_1A5246E54();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A413E864, 0, 0);
}

uint64_t sub_1A413E864(double a1)
{
  v3 = v1[8];
  v2 = v1[9];
  v4 = v1[7];
  v1[10] = *(v1[2] + 16);
  sub_1A524D654();
  v5 = sub_1A4895DCC();
  v1[11] = v5;
  v6 = *v5;
  sub_1A5246E44();
  sub_1A5246E04();

  v7 = *(v3 + 8);
  v1[12] = v7;
  v1[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v4);
  type metadata accessor for PXAppDependencyManager();
  v8 = swift_task_alloc();
  v1[14] = v8;
  *v8 = v1;
  v8[1] = sub_1A413E9C0;

  return sub_1A4896234();
}

uint64_t sub_1A413E9C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 120) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1A413EB20, 0, 0);
  }
}

id sub_1A413EB20()
{
  v1 = v0[15];
  v2 = [v1 librarySpecificFetchOptions];
  [v2 setIncludeGuestAssets_];

  v3 = objc_opt_self();
  v4 = sub_1A524CA14();
  v5 = [v3 fetchAssetsWithLocalIdentifiers:v4 options:v2];

  if ([v5 count] < 1)
  {
    v10 = v0[4];
    v9 = v0[5];
    v11 = v0[3];
    v12 = sub_1A3CB648C();
    (*(v10 + 16))(v9, v12, v11);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  result = [v5 fetchedObjects];
  if (result)
  {
    v7 = result;
    sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
    v8 = sub_1A524CA34();

    if (!(v8 >> 62))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3C52C70(0, &qword_1EB1265D0, 0x1E6978958);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

uint64_t AssetEntityQuery.displayRepresentations(for:requestedComponents:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = sub_1A5246E54();
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = sub_1A413F1AC;

  return AssetEntityQuery.entities(for:)(a1);
}

uint64_t sub_1A413F1AC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_1A413F4AC;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_1A413F2D4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A413F2D4(double a1)
{
  v2 = v1[8];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[3];
  v16 = v5;
  v15 = v1[2];
  sub_1A524D654();
  v6 = sub_1A4895DCC();
  v7 = *v6;
  sub_1A5246E44();
  sub_1A5246E04();

  v8 = *(v3 + 8);
  v8(v4, v5);
  v9 = swift_task_alloc();
  *(v9 + 16) = v15;
  sub_1A413F720(MEMORY[0x1E69E7CC8], sub_1A41429D8, v9, v2);
  v11 = v10;

  sub_1A524D644();
  v12 = *v6;
  sub_1A5246E44();
  sub_1A5246E04();

  v8(v4, v16);

  v13 = v1[1];

  return v13(v11);
}

uint64_t sub_1A413F4AC()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1A413F510(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1A3C7CFAC(0, &qword_1EB1260B0, MEMORY[0x1E695A3F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v21 - v6;
  v8 = sub_1A5240274();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = *(a2 + 56);
  v24 = *(a2 + 40);
  v25 = v13;
  v14 = *(a2 + 88);
  v26 = *(a2 + 72);
  v27 = v14;
  v15 = *(a2 + 24);
  v22 = *(a2 + 8);
  v23 = v15;
  v21[1] = v12;
  sub_1A413A330(a3, v11);
  result = [v12 uuid];
  if (result)
  {
    v17 = result;
    v18 = sub_1A524C674();
    v20 = v19;

    (*(v9 + 16))(v7, v11, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    sub_1A40DA2B0(v7, v18, v20);
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A413F720(uint64_t a1, void (*a2)(uint64_t *, __int128 *), uint64_t a3, uint64_t a4)
{
  v35 = a1;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 32); ; i = (i + 104))
    {
      v8 = i[3];
      v9 = i[5];
      v32 = i[4];
      v33 = v9;
      v10 = i[1];
      v29[0] = *i;
      v29[1] = v10;
      v11 = i[3];
      v13 = *i;
      v12 = i[1];
      v30 = i[2];
      v31 = v11;
      v14 = i[5];
      v26 = v32;
      v27 = v14;
      v22 = v13;
      v23 = v12;
      v34 = *(i + 12);
      v28 = *(i + 12);
      v24 = v30;
      v25 = v8;
      sub_1A3F67450(v29, &v15);
      a2(&v35, &v22);
      if (v4)
      {
        break;
      }

      v19 = v26;
      v20 = v27;
      v21 = v28;
      v15 = v22;
      v16 = v23;
      v17 = v24;
      v18 = v25;
      sub_1A3F678A8(&v15);
      if (!--v5)
      {
        return;
      }
    }

    v19 = v26;
    v20 = v27;
    v21 = v28;
    v15 = v22;
    v16 = v23;
    v17 = v24;
    v18 = v25;
    sub_1A3F678A8(&v15);
  }
}

uint64_t AssetEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1A5246F24();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A413F930, 0, 0);
}

uint64_t sub_1A413F930(uint64_t a1, uint64_t a2)
{
  if ((sub_1A3DEFE6C(a1, a2) & 1) == 0)
  {
    v6 = v2[5];
    v5 = v2[6];
    v7 = v2[4];
    v8 = sub_1A3CB648C();
    (*(v6 + 16))(v5, v8, v7);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  type metadata accessor for PXAppDependencyManager();
  v3 = swift_task_alloc();
  v2[10] = v3;
  *v3 = v2;
  v3[1] = sub_1A413FB98;

  return sub_1A4896234();
}

uint64_t sub_1A413FB98(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 88) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1A413FD00, 0, 0);
  }
}

void sub_1A413FD00()
{
  v1 = v0[11];
  v3 = v0[2];
  v2 = v0[3];
  [objc_msgSend(v1 librarySpecificFetchOptions)];

  objc_opt_self();
  sub_1A4143DA0(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A52F8E10;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4140598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1A40DB798;

  return AssetEntityQuery.entities(matching:)(a2, a3);
}

uint64_t sub_1A4140638(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3FBBB04;

  return AssetEntityQuery.entities(for:)(a1);
}

uint64_t sub_1A41406CC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3FBB594;

  return AssetEntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2);
}

uint64_t sub_1A4140768(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1A4142B68();
  *v5 = v2;
  v5[1] = sub_1A3CA8098;

  return MEMORY[0x1EEDB2ED8](a1, a2, v6);
}

uint64_t sub_1A4140820()
{
  v0 = sub_1A523FEB4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  v5 = sub_1A523FEF4();
  __swift_allocate_value_buffer(v5, qword_1EB1AA6B8);
  __swift_project_value_buffer(v5, qword_1EB1AA6B8);
  sub_1A523FEC4();
  sub_1A523FEC4();
  (*(v1 + 8))(v4, v0);
  return sub_1A523FF14();
}

uint64_t sub_1A41409A0()
{
  v0 = sub_1A523FE94();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  v5 = sub_1A523FEF4();
  __swift_allocate_value_buffer(v5, qword_1EB16F498);
  __swift_project_value_buffer(v5, qword_1EB16F498);
  sub_1A523FEA4();
  sub_1A523FEA4();
  (*(v1 + 8))(v4, v0);
  return sub_1A523FF04();
}

uint64_t sub_1A4140B2C(uint64_t a1)
{
  v2 = sub_1A41439B8();

  return MEMORY[0x1EEDB3868](a1, v2);
}

uint64_t sub_1A4140B78(uint64_t a1)
{
  v2 = sub_1A413AF64();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

void sub_1A4140BC4()
{
  if (qword_1EB1AA6A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4140C3C(uint64_t a1)
{
  v2 = sub_1A414323C();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

uint64_t sub_1A4140C98()
{
  v0 = sub_1A523FE94();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  v5 = sub_1A523FEF4();
  __swift_allocate_value_buffer(v5, qword_1EB1AA6E8);
  __swift_project_value_buffer(v5, qword_1EB1AA6E8);
  sub_1A523FEA4();
  sub_1A523FEA4();
  (*(v1 + 8))(v4, v0);
  return sub_1A523FF04();
}

uint64_t sub_1A4140E10@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = sub_1A523FEF4();
  v8 = __swift_project_value_buffer(v7, a2);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1A4140EB8(uint64_t a1)
{
  v2 = sub_1A4143964();

  return MEMORY[0x1EEDB3868](a1, v2);
}

uint64_t sub_1A4140F04(uint64_t a1)
{
  v2 = sub_1A413C238();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

uint64_t sub_1A4140F54(uint64_t a1)
{
  v2 = sub_1A4143660();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

char *sub_1A4140FB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A4143DA0(0, &qword_1EB120398, &type metadata for AssetEntity, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1A41410F0(uint64_t a1)
{
  v1 = a1;
  sub_1A524EC94();
  sub_1A524C794();

  v2 = sub_1A524ECE4();

  return sub_1A4141238(v1, v2);
}

unint64_t sub_1A41411CC(uint64_t a1)
{
  v1 = a1;
  sub_1A524EC94();
  sub_1A413DF7C(v4, v1);
  v2 = sub_1A524ECE4();

  return sub_1A41413C8(v1, v2);
}

unint64_t sub_1A4141238(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v18 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v20 + 48) + v4) == 2 ? 0x6F65646976 : 0x6F69647561;
      v7 = *(*(v20 + 48) + v4) ? 0x6567616D69 : 0x6E776F6E6B6E75;
      v8 = *(*(v20 + 48) + v4) ? 0xE500000000000000 : 0xE700000000000000;
      v9 = *(*(v20 + 48) + v4) <= 1u ? v7 : v6;
      v10 = *(*(v20 + 48) + v4) <= 1u ? v8 : 0xE500000000000000;
      v11 = v5 == 2 ? 0x6F65646976 : 0x6F69647561;
      v12 = v5 ? 0x6567616D69 : 0x6E776F6E6B6E75;
      v13 = v5 ? 0xE500000000000000 : 0xE700000000000000;
      v14 = v5 <= 1 ? v12 : v11;
      v15 = v5 <= 1 ? v13 : 0xE500000000000000;
      if (v9 == v14 && v10 == v15)
      {
        break;
      }

      v16 = sub_1A524EAB4();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v18;
        if ((*(v19 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1A41413C8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v23 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v25 + 48) + v4);
      if (v6 > 4)
      {
        if (*(*(v25 + 48) + v4) <= 6u)
        {
          if (v6 == 5)
          {
            v11 = 0xE400000000000000;
            v10 = 1919512430;
          }

          else
          {
            v10 = 0x6F747265766C6973;
            v11 = 0xEA0000000000656ELL;
          }
        }

        else if (v6 == 7)
        {
          v11 = 0xE500000000000000;
          v10 = 0x6469766976;
        }

        else if (v6 == 8)
        {
          v11 = 0xE90000000000006DLL;
          v10 = 0x7261576469766976;
        }

        else
        {
          v10 = 0x6F6F436469766976;
          v11 = 0xE90000000000006CLL;
        }
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0x636974616D617264;
        }

        else
        {
          v7 = 1869508461;
        }

        if (v6 == 3)
        {
          v8 = 0xEC0000006D726157;
        }

        else
        {
          v8 = 0xE400000000000000;
        }

        if (v6 == 2)
        {
          v7 = 0x636974616D617264;
          v8 = 0xEC0000006C6F6F43;
        }

        v9 = *(*(v25 + 48) + v4) ? 0x636974616D617264 : 0x6C616E696769726FLL;
        v10 = *(*(v25 + 48) + v4) <= 1u ? v9 : v7;
        v11 = *(*(v25 + 48) + v4) <= 1u ? 0xE800000000000000 : v8;
      }

      v12 = 0x7261576469766976;
      if (v5 != 8)
      {
        v12 = 0x6F6F436469766976;
      }

      v13 = 0xE90000000000006CLL;
      if (v5 == 8)
      {
        v13 = 0xE90000000000006DLL;
      }

      if (v5 == 7)
      {
        v12 = 0x6469766976;
        v13 = 0xE500000000000000;
      }

      v14 = 0x6F747265766C6973;
      if (v5 == 5)
      {
        v14 = 1919512430;
      }

      v15 = 0xEA0000000000656ELL;
      if (v5 == 5)
      {
        v15 = 0xE400000000000000;
      }

      if (v5 <= 6)
      {
        v12 = v14;
        v13 = v15;
      }

      if (v5 == 3)
      {
        v16 = 0x636974616D617264;
      }

      else
      {
        v16 = 1869508461;
      }

      if (v5 == 3)
      {
        v17 = 0xEC0000006D726157;
      }

      else
      {
        v17 = 0xE400000000000000;
      }

      if (v5 == 2)
      {
        v16 = 0x636974616D617264;
        v17 = 0xEC0000006C6F6F43;
      }

      if (v5)
      {
        v18 = 0x636974616D617264;
      }

      else
      {
        v18 = 0x6C616E696769726FLL;
      }

      if (v5 <= 1)
      {
        v16 = v18;
        v17 = 0xE800000000000000;
      }

      v19 = v5 <= 4 ? v16 : v12;
      v20 = v5 <= 4 ? v17 : v13;
      if (v10 == v19 && v11 == v20)
      {
        break;
      }

      v21 = sub_1A524EAB4();

      if ((v21 & 1) == 0)
      {
        v4 = (v4 + 1) & v23;
        if ((*(v24 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1A41416BC(uint64_t a1)
{
  sub_1A4143AB8(0, &qword_1EB133208, &type metadata for AssetEntity.MediaType);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A4143B20(0, &unk_1EB133210, sub_1A414335C, &type metadata for AssetEntity.MediaType);
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1A4143B9C(v10, v6, &qword_1EB133208, &type metadata for AssetEntity.MediaType);
      result = sub_1A41410F0(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_1A5240274();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A41418C0(uint64_t a1)
{
  sub_1A4143AB8(0, &qword_1EB1331F0, &type metadata for AssetEntity.FilterEffect);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A4143B20(0, &qword_1EB1331F8, sub_1A41437D4, &type metadata for AssetEntity.FilterEffect);
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1A4143B9C(v10, v6, &qword_1EB1331F0, &type metadata for AssetEntity.FilterEffect);
      result = sub_1A41411CC(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_1A5240274();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _s12PhotosUICore11AssetEntityV12FilterEffectO26caseDisplayRepresentationsSDyAE10AppIntents0H14RepresentationVGvgZ_0()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1A3C7CFAC(0, &qword_1EB12B0F0, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v79 = &v58 - v2;
  sub_1A3C7CFAC(0, &qword_1EB12B008, MEMORY[0x1E6968E10], v0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v63 = &v58 - v4;
  v77 = sub_1A5240BA4();
  v80 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1A5240BB4();
  v76 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4143A60(0, &qword_1EB1331E8, &qword_1EB1331F0, &type metadata for AssetEntity.FilterEffect);
  sub_1A4143AB8(0, &qword_1EB1331F0, &type metadata for AssetEntity.FilterEffect);
  v15 = v14;
  v17 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
  v69 = *(*(v14 - 8) + 72);
  v16 = v69;
  v18 = swift_allocObject();
  v60 = v18;
  *(v18 + 16) = xmmword_1A531D3F0;
  v19 = v18 + v17;
  v59 = *(v15 + 48);
  v64 = v11;
  v65 = v15;
  *(v18 + v17) = 0;
  v62 = 0xD000000000000020;
  sub_1A524C5B4();
  sub_1A5241244();
  v74 = *MEMORY[0x1E6968DF0];
  v20 = *(v80 + 104);
  v80 += 104;
  v68 = v20;
  v20(v78);
  v21 = v8;
  sub_1A5240BC4();
  v73 = *(v76 + 56);
  v76 += 56;
  v22 = v63;
  v23 = v67;
  v73(v63, 1, 1, v67);
  v71 = sub_1A5240244();
  v24 = *(v71 - 8);
  v72 = *(v24 + 56);
  v70 = v24 + 56;
  v25 = v79;
  v72(v79, 1, 1, v71);
  v75 = v19;
  sub_1A5240264();
  v59 = *(v15 + 48);
  *(v19 + v16) = 1;
  sub_1A524C5B4();
  v66 = v21;
  sub_1A5241244();
  v26 = v68;
  v68(v78, v74, v77);
  sub_1A5240BC4();
  v73(v22, 1, 1, v23);
  v27 = v71;
  v72(v25, 1, 1, v71);
  v61 = v13;
  sub_1A5240264();
  v62 = 2 * v69;
  v28 = v65;
  v59 = *(v65 + 48);
  *(v75 + 2 * v69) = 2;
  sub_1A524C5B4();
  sub_1A5241244();
  v26(v78, v74, v77);
  sub_1A5240BC4();
  v29 = v67;
  v73(v22, 1, 1, v67);
  v72(v79, 1, 1, v27);
  sub_1A5240264();
  v30 = v69;
  v59 = v75 + v62 + v69;
  v62 = *(v28 + 48);
  *v59 = 3;
  sub_1A524C5B4();
  sub_1A5241244();
  v31 = v78;
  v32 = v68;
  v68(v78, v74, v77);
  sub_1A5240BC4();
  v33 = v63;
  v73(v63, 1, 1, v29);
  v34 = v72;
  v72(v79, 1, 1, v71);
  sub_1A5240264();
  v59 = 4 * v30;
  v35 = v65;
  v58 = *(v65 + 48);
  *(v75 + 4 * v30) = 4;
  v62 = 0xD00000000000001CLL;
  sub_1A524C5B4();
  sub_1A5241244();
  v32(v31, v74, v77);
  sub_1A5240BC4();
  v36 = v67;
  v73(v33, 1, 1, v67);
  v37 = v71;
  v34(v79, 1, 1, v71);
  sub_1A5240264();
  v58 = v75 + v59 + v69;
  v59 = *(v35 + 48);
  *v58 = 5;
  sub_1A524C5B4();
  sub_1A5241244();
  v38 = v77;
  v39 = v74;
  v68(v78, v74, v77);
  sub_1A5240BC4();
  v40 = v36;
  v41 = v73;
  v73(v33, 1, 1, v40);
  v42 = v72;
  v72(v79, 1, 1, v37);
  sub_1A5240264();
  v59 = v75 + 6 * v69;
  v62 = *(v65 + 48);
  *v59 = 6;
  sub_1A524C5B4();
  sub_1A5241244();
  v43 = v38;
  v44 = v68;
  v68(v78, v39, v43);
  sub_1A5240BC4();
  v45 = v63;
  v46 = v67;
  v41(v63, 1, 1, v67);
  v42(v79, 1, 1, v71);
  sub_1A5240264();
  v62 = 8 * v69;
  v58 = v75 + 7 * v69;
  v47 = v65;
  v59 = *(v65 + 48);
  *v58 = 7;
  sub_1A524C5B4();
  sub_1A5241244();
  v48 = v74;
  v44(v78, v74, v77);
  sub_1A5240BC4();
  v49 = v46;
  v50 = v73;
  v73(v45, 1, 1, v49);
  v51 = v71;
  v52 = v72;
  v72(v79, 1, 1, v71);
  sub_1A5240264();
  v58 = v75 + v62;
  v59 = *(v47 + 48);
  *v58 = 8;
  sub_1A524C5B4();
  sub_1A5241244();
  v53 = v78;
  v68(v78, v48, v77);
  sub_1A5240BC4();
  v54 = v63;
  v50(v63, 1, 1, v67);
  v55 = v79;
  v52(v79, 1, 1, v51);
  sub_1A5240264();
  *(v75 + v62 + v69) = 9;
  sub_1A524C5B4();
  sub_1A5241244();
  v68(v53, v74, v77);
  sub_1A5240BC4();
  v73(v54, 1, 1, v67);
  v72(v55, 1, 1, v71);
  sub_1A5240264();
  v56 = sub_1A41418C0(v60);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v56;
}

unint64_t sub_1A4142A08()
{
  result = qword_1EB125D00;
  if (!qword_1EB125D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125D00);
  }

  return result;
}

unint64_t sub_1A4142A60()
{
  result = qword_1EB133130;
  if (!qword_1EB133130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133130);
  }

  return result;
}

unint64_t sub_1A4142AB8()
{
  result = qword_1EB125CC0;
  if (!qword_1EB125CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125CC0);
  }

  return result;
}

unint64_t sub_1A4142B10()
{
  result = qword_1EB125C98;
  if (!qword_1EB125C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125C98);
  }

  return result;
}

unint64_t sub_1A4142B68()
{
  result = qword_1EB125B68;
  if (!qword_1EB125B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125B68);
  }

  return result;
}

unint64_t sub_1A4142BC4()
{
  result = qword_1EB125CB8;
  if (!qword_1EB125CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125CB8);
  }

  return result;
}

unint64_t sub_1A4142C1C()
{
  result = qword_1EB125CB0;
  if (!qword_1EB125CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125CB0);
  }

  return result;
}

unint64_t sub_1A4142C78()
{
  result = qword_1EB125CA8;
  if (!qword_1EB125CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125CA8);
  }

  return result;
}

unint64_t sub_1A4142CD0()
{
  result = qword_1EB133138;
  if (!qword_1EB133138)
  {
    sub_1A4142D60(255, &qword_1EB133140, sub_1A3F57FA8, &type metadata for AssetEntity, MEMORY[0x1E695A570]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133138);
  }

  return result;
}

void sub_1A4142D60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1A4142DCC()
{
  result = qword_1EB125CA0;
  if (!qword_1EB125CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125CA0);
  }

  return result;
}

unint64_t sub_1A4142E24()
{
  result = qword_1EB125B60;
  if (!qword_1EB125B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125B60);
  }

  return result;
}

unint64_t sub_1A4142E7C()
{
  result = qword_1EB125B58;
  if (!qword_1EB125B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125B58);
  }

  return result;
}

unint64_t sub_1A4142ED4()
{
  result = qword_1EB125B70;
  if (!qword_1EB125B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125B70);
  }

  return result;
}

unint64_t sub_1A4142F2C()
{
  result = qword_1EB133148;
  if (!qword_1EB133148)
  {
    sub_1A4143DA0(255, &qword_1EB12EEB8, &type metadata for AssetEntity, MEMORY[0x1E69E62F8]);
    sub_1A3F57FA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133148);
  }

  return result;
}

unint64_t sub_1A4142FCC()
{
  result = qword_1EB133150;
  if (!qword_1EB133150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133150);
  }

  return result;
}

unint64_t sub_1A4143024()
{
  result = qword_1EB133158;
  if (!qword_1EB133158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133158);
  }

  return result;
}

unint64_t sub_1A4143080()
{
  result = qword_1EB125D38;
  if (!qword_1EB125D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125D38);
  }

  return result;
}

unint64_t sub_1A41430D8()
{
  result = qword_1EB125D18;
  if (!qword_1EB125D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125D18);
  }

  return result;
}

unint64_t sub_1A4143130()
{
  result = qword_1EB125CF8;
  if (!qword_1EB125CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125CF8);
  }

  return result;
}

unint64_t sub_1A4143188()
{
  result = qword_1EB125D20;
  if (!qword_1EB125D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125D20);
  }

  return result;
}

unint64_t sub_1A41431E0()
{
  result = qword_1EB125D48;
  if (!qword_1EB125D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125D48);
  }

  return result;
}

unint64_t sub_1A414323C()
{
  result = qword_1EB125D28;
  if (!qword_1EB125D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125D28);
  }

  return result;
}

unint64_t sub_1A41432AC()
{
  result = qword_1EB125D10;
  if (!qword_1EB125D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125D10);
  }

  return result;
}

unint64_t sub_1A4143304()
{
  result = qword_1EB125CF0;
  if (!qword_1EB125CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125CF0);
  }

  return result;
}

unint64_t sub_1A414335C()
{
  result = qword_1EB125D08;
  if (!qword_1EB125D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125D08);
  }

  return result;
}

uint64_t sub_1A41433E0(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A4143DA0(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4143448()
{
  result = qword_1EB133170;
  if (!qword_1EB133170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133170);
  }

  return result;
}

unint64_t sub_1A41434A4()
{
  result = qword_1EB133178;
  if (!qword_1EB133178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133178);
  }

  return result;
}

unint64_t sub_1A41434FC()
{
  result = qword_1EB133180;
  if (!qword_1EB133180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133180);
  }

  return result;
}

unint64_t sub_1A4143554()
{
  result = qword_1EB133188;
  if (!qword_1EB133188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133188);
  }

  return result;
}

unint64_t sub_1A41435AC()
{
  result = qword_1EB133190;
  if (!qword_1EB133190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133190);
  }

  return result;
}

unint64_t sub_1A4143604()
{
  result = qword_1EB133198;
  if (!qword_1EB133198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133198);
  }

  return result;
}

unint64_t sub_1A4143660()
{
  result = qword_1EB1331A0;
  if (!qword_1EB1331A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1331A0);
  }

  return result;
}

unint64_t sub_1A4143724()
{
  result = qword_1EB1331A8;
  if (!qword_1EB1331A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1331A8);
  }

  return result;
}

unint64_t sub_1A414377C()
{
  result = qword_1EB1331B0;
  if (!qword_1EB1331B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1331B0);
  }

  return result;
}

unint64_t sub_1A41437D4()
{
  result = qword_1EB1331B8;
  if (!qword_1EB1331B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1331B8);
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1A4143884(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1A41438CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A4143964()
{
  result = qword_1EB1331D0;
  if (!qword_1EB1331D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1331D0);
  }

  return result;
}

unint64_t sub_1A41439B8()
{
  result = qword_1EB1331D8;
  if (!qword_1EB1331D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1331D8);
  }

  return result;
}

unint64_t sub_1A4143A0C()
{
  result = qword_1EB1331E0;
  if (!qword_1EB1331E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1331E0);
  }

  return result;
}

void sub_1A4143A60(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A4143AB8(255, a3, a4);
    v5 = sub_1A524EA54();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A4143AB8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_1A5240274();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A4143B20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    sub_1A5240274();
    a3();
    v6 = sub_1A524E7A4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A4143B9C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1A4143AB8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A4143C08(uint64_t a1, uint64_t a2)
{
  sub_1A3C7CFAC(0, &qword_1EB12B0F0, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4143C9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C7CFAC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A4143D0C(uint64_t a1, uint64_t a2)
{
  sub_1A3C7CFAC(0, &qword_1EB12B0F0, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A4143DA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void *sub_1A4143E20()
{
  swift_getKeyPath();
  v5 = v0;
  sub_1A414648C(&qword_1EB133228, type metadata accessor for SharedWithYouItemObserver, &unk_1A531E0C8);
  sub_1A52415D4();

  v1 = OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__highlight;
  swift_beginAccess();
  v2 = *(v5 + v1);
  v3 = v2;
  return v2;
}

id sub_1A4143EE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A414648C(&qword_1EB133228, type metadata accessor for SharedWithYouItemObserver, &unk_1A531E0C8);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__highlight;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1A4143FB8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A4144034(v1);
}

uint64_t type metadata accessor for SharedWithYouItemObserver(uint64_t a1)
{
  result = qword_1EB1AB200;
  if (!qword_1EB1AB200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4144034(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__highlight;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A414648C(&qword_1EB133228, type metadata accessor for SharedWithYouItemObserver, &unk_1A531E0C8);
    sub_1A52415C4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &qword_1EB126D00, 0x1E69D3810);
  v6 = v5;
  v7 = a1;
  v8 = sub_1A524DBF4();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1A41441C0(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__highlight;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;
}

uint64_t sub_1A414424C()
{
  swift_getKeyPath();
  sub_1A414648C(&qword_1EB133228, type metadata accessor for SharedWithYouItemObserver, &unk_1A531E0C8);
  sub_1A52415D4();

  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_1A414430C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A414648C(&qword_1EB133228, type metadata accessor for SharedWithYouItemObserver, &unk_1A531E0C8);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__assetCollection;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_1A41443F4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__assetCollection;
  swift_beginAccess();
  *(a1 + v4) = a2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void sub_1A4144488(uint64_t a1)
{
  swift_getKeyPath();
  sub_1A414648C(&qword_1EB133228, type metadata accessor for SharedWithYouItemObserver, &unk_1A531E0C8);
  sub_1A52415D4();

  v3 = OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__asset;
  v4 = *(v1 + OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__asset);
  if (!a1)
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v4)
  {
    v5 = v4 == a1;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
LABEL_9:
    swift_getKeyPath();
    sub_1A52415D4();

    if (*(v1 + v3))
    {
      v6 = *(v1 + OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver_highlightProvider);
      swift_getKeyPath();
      sub_1A52415D4();

      if (*(v1 + v3))
      {
        [v6 unregisterChangeObserver:v1 forAsset:?];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1A4144608(uint64_t a1)
{
  swift_getKeyPath();
  v10[0] = v1;
  sub_1A414648C(&qword_1EB133228, type metadata accessor for SharedWithYouItemObserver, &unk_1A531E0C8);
  sub_1A52415D4();

  v3 = OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__asset;
  v4 = *(v1 + OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__asset);
  if (!a1)
  {
    if (!v4)
    {
      return;
    }

LABEL_9:
    swift_getKeyPath();
    v10[0] = v1;
    sub_1A52415D4();

    if (!*(v1 + v3))
    {
      return;
    }

    v6 = *(v1 + OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver_highlightProvider);
    swift_getKeyPath();
    v10[0] = v1;
    sub_1A52415D4();

    if (*(v1 + v3))
    {
      [v6 registerChangeObserver:v1 forAsset:v10[0]];
      swift_getKeyPath();
      v10[0] = v1;
      sub_1A52415D4();

      v7 = *(v1 + v3);
      if (v7)
      {
        v8 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v10[4] = sub_1A4146518;
        v10[5] = v8;
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 1107296256;
        v10[2] = sub_1A3F287DC;
        v10[3] = &block_descriptor_29_1;
        v9 = _Block_copy(v10);
        swift_unknownObjectRetain();

        [v6 fetchSocialLayerHighlightForAsset:v7 completion:v9];
        _Block_release(v9);
        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  if (v4)
  {
    v5 = v4 == a1;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    goto LABEL_9;
  }
}

void sub_1A4144874(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__highlight;
    swift_beginAccess();
    v6 = *&v4[v5];
    if (v6)
    {
      if (a1)
      {
        sub_1A3C52C70(0, &qword_1EB126D00, 0x1E69D3810);
        v7 = a1;
        v8 = v6;
        v9 = sub_1A524DBF4();

        if (v9)
        {
          v10 = *&v4[v5];
LABEL_11:
          *&v4[v5] = a1;

          return;
        }
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      if (!a1)
      {
        v10 = 0;
        goto LABEL_11;
      }

      v7 = a1;
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A414648C(&qword_1EB133228, type metadata accessor for SharedWithYouItemObserver, &unk_1A531E0C8);
    sub_1A52415C4();
  }
}

double sub_1A4144A70(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1A414648C(&qword_1EB133228, type metadata accessor for SharedWithYouItemObserver, &unk_1A531E0C8);
  sub_1A52415C4();

  return result;
}

uint64_t sub_1A4144B2C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__asset;
  v5 = *(a1 + OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__asset);
  swift_unknownObjectRetain();
  sub_1A4144488(a2);
  *(a1 + v4) = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_1A4144608(v5);

  return swift_unknownObjectRelease();
}

uint64_t sub_1A4144BF0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1A414648C(&qword_1EB133228, type metadata accessor for SharedWithYouItemObserver, &unk_1A531E0C8);
  sub_1A52415D4();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A4144CA8@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1A414648C(&qword_1EB133228, type metadata accessor for SharedWithYouItemObserver, &unk_1A531E0C8);
  sub_1A52415D4();

  *a4 = *(v6 + *a3);
  return swift_unknownObjectRetain();
}

char *sub_1A4144DCC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__highlight] = 0;
  *&v4[OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__assetCollection] = 0;
  *&v4[OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__asset] = 0;
  *&v4[OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__assetFetchResult] = 0;
  sub_1A5241604();
  *&v4[OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver_item] = a1;
  *&v4[OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver_assetFetchResultProvider] = a2;
  *&v4[OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver_highlightProvider] = a3;
  v14.receiver = v4;
  v14.super_class = ObjectType;
  v9 = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10 = objc_msgSendSuper2(&v14, sel_init);
  v11 = *&v10[OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver_assetFetchResultProvider];
  v12 = v10;
  swift_unknownObjectRetain();
  [v11 registerChangeObserver:v12 forAssetCollection:{objc_msgSend(v9, sel_assetCollection, v14.receiver, v14.super_class)}];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v12;
}

void sub_1A4144F30()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1AB138);
  __swift_project_value_buffer(v0, qword_1EB1AB138);
  sub_1A5246EF4();
}

uint64_t sub_1A4144FA0()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v9 = type metadata accessor for SharedWithYouItemObserver(0);
  sub_1A4146444();
  v7[0] = sub_1A524C714();
  sub_1A524BF14();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A414648C(&qword_1EB126AD0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v5 = MEMORY[0x1E69E8030];
  sub_1A3C29F88(0, &qword_1EB126E40, MEMORY[0x1E69E8030]);
  sub_1A3C2A728(&qword_1EB126E30, &qword_1EB126E40, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1A524D4B4();
  qword_1EB1AB158 = result;
  return result;
}

void sub_1A4145224()
{
  v1 = v0;
  v2 = sub_1A524BEE4();
  v36 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BF64();
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  aBlock[0] = v0;
  sub_1A414648C(&qword_1EB133228, type metadata accessor for SharedWithYouItemObserver, &unk_1A531E0C8);
  sub_1A52415D4();

  v8 = *&v0[OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__assetFetchResult];
  swift_getKeyPath();
  aBlock[0] = v0;
  swift_unknownObjectRetain();
  sub_1A52415D4();

  v9 = OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__assetCollection;
  swift_beginAccess();
  if (*&v1[v9])
  {
    goto LABEL_2;
  }

  v34 = v7;
  v35 = v4;
  if (v8)
  {
    if ([v8 count] <= 0)
    {
LABEL_2:
      swift_unknownObjectRelease();
      return;
    }

    v10 = [v8 firstObject];
    if (v10)
    {
      v11 = v10;
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        v13 = v12;
        v33 = v11;
        if (qword_1EB1AB130 != -1)
        {
          swift_once();
        }

        v14 = sub_1A5246F24();
        __swift_project_value_buffer(v14, qword_1EB1AB138);
        v15 = v1;
        v16 = sub_1A5246F04();
        v17 = sub_1A524D264();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          *v18 = 138412290;
          *(v18 + 4) = v15;
          *v19 = v15;
          v20 = v15;
          _os_log_impl(&dword_1A3C1C000, v16, v17, "%@: Queueing real asset collection fetch, in background", v18, 0xCu);
          sub_1A3CB65E4(v19);
          MEMORY[0x1A590EEC0](v19, -1, -1);
          MEMORY[0x1A590EEC0](v18, -1, -1);
        }

        v32 = v5;
        v21 = v34;
        if (qword_1EB1AB150 != -1)
        {
          swift_once();
        }

        v31[1] = qword_1EB1AB158;
        v22 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v23 = swift_allocObject();
        *(v23 + 16) = v22;
        *(v23 + 24) = v13;
        aBlock[4] = sub_1A4146434;
        aBlock[5] = v23;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1A3C2E0D0;
        aBlock[3] = &block_descriptor_107;
        v31[0] = _Block_copy(aBlock);

        swift_unknownObjectRetain();
        sub_1A524BF14();
        v38 = MEMORY[0x1E69E7CC0];
        sub_1A414648C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        v24 = v21;
        v25 = MEMORY[0x1E69E7F60];
        sub_1A3C29F88(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60]);
        sub_1A3C2A728(&qword_1EB12B1B0, &qword_1EB12B1C0, v25);
        v26 = v35;
        v27 = v2;
        sub_1A524E224();
        v28 = v31[0];
        MEMORY[0x1A5908800](0, v24, v26, v31[0]);
        _Block_release(v28);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        (*(v36 + 8))(v26, v27);
        (*(v37 + 8))(v24, v32);

        return;
      }

      swift_unknownObjectRelease();
    }

    v29 = [*&v1[OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver_item] assetCollection];
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v31[-2] = v1;
    v31[-1] = v29;
    aBlock[0] = v1;
    sub_1A52415C4();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

void *sub_1A4145890(uint64_t a1, void *a2)
{
  v3 = sub_1A524BEE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v31 = v8;
    v32 = v7;
    v33 = v4;
    v13 = PXContentSyndicationAssetsFetchResultMatchingSyndicationGroupingOfAsset(a2);
    if (qword_1EB1AB130 != -1)
    {
      swift_once();
    }

    v34 = v3;
    v14 = sub_1A5246F24();
    __swift_project_value_buffer(v14, qword_1EB1AB138);
    v15 = v12;
    v16 = v13;
    v17 = sub_1A5246F04();
    v18 = sub_1A524D264();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412546;
      *(v19 + 4) = v15;
      *(v19 + 12) = 2112;
      *(v19 + 14) = v16;
      *v20 = v12;
      v20[1] = v13;
      v21 = v15;
      v22 = v16;
      _os_log_impl(&dword_1A3C1C000, v17, v18, "%@: Real asset collection retrieved: %@", v19, 0x16u);
      sub_1A3D3F118(0);
      swift_arrayDestroy();
      MEMORY[0x1A590EEC0](v20, -1, -1);
      MEMORY[0x1A590EEC0](v19, -1, -1);
    }

    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v23 = sub_1A524D474();
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = v13;
    aBlock[4] = sub_1A414643C;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_22;
    v26 = _Block_copy(aBlock);
    v27 = v16;

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A414648C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v28 = MEMORY[0x1E69E7F60];
    sub_1A3C29F88(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60]);
    sub_1A3C2A728(&qword_1EB12B1B0, &qword_1EB12B1C0, v28);
    v29 = v34;
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v10, v6, v26);
    _Block_release(v26);

    (*(v33 + 8))(v6, v29);
    return (*(v31 + 8))(v10, v32);
  }

  return result;
}

void sub_1A4145D24(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2)
    {
      v5 = objc_opt_self();
      v6 = a2;
      v7 = [v5 transientAssetCollectionWithAssetFetchResult:v6 subtype:1000000501];
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A414648C(&qword_1EB133228, type metadata accessor for SharedWithYouItemObserver, &unk_1A531E0C8);
      sub_1A52415C4();
    }

    else
    {
      [*(Strong + OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver_item) assetCollection];
      v9 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v9);
      sub_1A414648C(&qword_1EB133228, type metadata accessor for SharedWithYouItemObserver, &unk_1A531E0C8);
      sub_1A52415C4();

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1A414618C(id a1)
{
  if (a1)
  {
    [a1 firstObject];
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1A414648C(&qword_1EB133228, type metadata accessor for SharedWithYouItemObserver, &unk_1A531E0C8);
  swift_unknownObjectRetain();
  sub_1A52415C4();

  swift_unknownObjectRelease();
  v2 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v2);
  sub_1A52415C4();

  sub_1A4145224();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A4146360(uint64_t a1)
{
  result = sub_1A5241614();
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

unint64_t sub_1A4146444()
{
  result = qword_1EB1333F0;
  if (!qword_1EB1333F0)
  {
    type metadata accessor for SharedWithYouItemObserver(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EB1333F0);
  }

  return result;
}

uint64_t sub_1A414648C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A41464D4()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__assetFetchResult) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t PhotoKitFetcher.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 32) = xmmword_1A5309A20;
  *(v2 + 16) = a1;
  *(v2 + 24) = [objc_opt_self() sharedFetcherForPhotoLibrary_];
  return v2;
}

uint64_t PhotoKitFetcher.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = xmmword_1A5309A20;
  *(v2 + 16) = a1;
  *(v2 + 24) = [objc_opt_self() sharedFetcherForPhotoLibrary_];
  return v2;
}

id sub_1A414665C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  v7 = *a3;
  v6 = *(a3 + 8);
  v8 = *(a3 + 16);
  v9 = *(a3 + 24);
  v10 = *(a3 + 32);
  v11 = *(a3 + 40);
  if (*(a1 + 8) != 1)
  {
    if ((v5 & 0xFFFFFFFFFFFFFFFELL) != 4)
    {
      v46 = *(a3 + 40);
      v47 = v5;
      v48 = 0;
      v41 = v7;
      v42 = v6;
      v43 = v8;
      v44 = v9;
      v45 = v10;
      return sub_1A3CB2F0C(&v47, a2, &v41);
    }

    v13 = [objc_allocWithZone(PXPhotosAssetsFetcherConfiguration) init];
    [v13 setCurationKind_];
    [v13 setFetchLimit_];
    v14 = PXPhotosDataSourceOptionsAdjustedForCurationContext(0, v9);
    [v13 setOptions_];
    if (v8)
    {
      sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980);
      v15 = sub_1A524CA14();
    }

    else
    {
      v15 = 0;
    }

    [v13 setReferencePersons_];

    [v13 setReverseSortOrder_];
    [v13 setLibraryFilter_];
    [v13 setFilterPredicate_];
    v20 = [*(v3 + 24) fetchAssetsInContainer:a2 configuration:v13];
    if (!v20)
    {

      return 0;
    }

    v40 = a2;
    v21 = v20;
    v22 = v20;
    v23 = [v22 count];

    if (v23)
    {
    }

    else
    {
      v46 = v11;
      v47 = 1;
      v48 = 0;
      v41 = 1;
      v42 = v6;
      v43 = v8;
      v44 = v9;
      v45 = v10;
      swift_bridgeObjectRetain_n();
      v25 = v11;
      v21 = sub_1A3CB2F0C(&v47, v40, &v41);

      swift_bridgeObjectRelease_n();
    }

    return v21;
  }

  if ((v5 - 2) < 3)
  {
    v46 = *(a3 + 40);
    v47 = 0;
    v48 = 0;
    v41 = v7;
    v42 = v6;
    v43 = v8;
    v44 = v9;
    v45 = v10;
    return sub_1A414665C(&v47, a2, &v41);
  }

  if (v5)
  {
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_1A524E404();
    MEMORY[0x1A5907B60](0xD000000000000010, 0x80000001A53C9470);
    v47 = 1;
    v48 = 1;
    sub_1A524E624();
    MEMORY[0x1A5907B60](0x20726F6620, 0xE500000000000000);
    v36 = [a2 description];
    v37 = sub_1A524C674();
    v39 = v38;

    MEMORY[0x1A5907B60](v37, v39);
  }

  else
  {
    v16 = [*(v3 + 16) px_standardLibrarySpecificFetchOptions];
    [v16 setFetchLimit_];
    [v16 setSharingFilter_];
    v17 = [a2 kind];
    if ((v17 - 1) < 2)
    {
      v19 = [objc_opt_self() fetchChildHighlightsForHighlight:a2 options:v16];
LABEL_21:
      v24 = v19;
      goto LABEL_22;
    }

    if (!v17)
    {
      v24 = sub_1A3FEE024(v17, v18);
LABEL_22:
      v21 = v24;

      return v21;
    }

    if (v17 == 3)
    {
      sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
      sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1A52F8E10;
      sub_1A3C52C70(0, &qword_1EB1333F8, off_1E771D910);
      v27 = [swift_getObjCClassFromMetadata() sharedInstance];
      [v27 nonInterestingPromotionScore];
      v29 = v28;

      v30 = MEMORY[0x1E69E6438];
      *(v26 + 56) = MEMORY[0x1E69E63B0];
      *(v26 + 64) = v30;
      *(v26 + 32) = v29;
      v31 = sub_1A524D134();
      [v16 setInternalPredicate_];

      v32 = PXInternalSortDescriptorsForAssetCollectionSubtype([a2 assetCollectionSubtype]);
      sub_1A3C52C70(0, &qword_1EB126B60, 0x1E696AEB0);
      v33 = sub_1A524CA34();

      sub_1A3D64B88(v33, &qword_1EB126B60, 0x1E696AEB0, v34);

      v35 = sub_1A524CA14();

      [v16 setInternalSortDescriptors_];

      v19 = [objc_opt_self() fetchChildDayGroupHighlightsForHighlight:a2 options:v16];
      goto LABEL_21;
    }

    v41 = 0;
    v42 = 0xE000000000000000;
    MEMORY[0x1A5907B60](0x7463657078656E55, 0xEB00000000206465);
    LOWORD(v47) = [a2 kind];
    type metadata accessor for PHPhotosHighlightKind(0);
    sub_1A524E624();
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

id sub_1A4146CF0(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = *a3;
  v7 = *(a3 + 1);
  if (*(a1 + 8) != 1)
  {
    v40 = *(a3 + 1);
    if ((v5 - 4) >= 2)
    {
      if (!v5)
      {
        v23 = objc_opt_self();
        v24 = sub_1A524CA14();
        v9 = [*(v3 + 16) px_standardLibrarySpecificFetchOptions];
        [v9 setFetchLimit_];
        [v9 setSharingFilter_];
        v22 = [v23 fetchAssetsWithLocalIdentifiers:v24 options:v9];

        goto LABEL_21;
      }
    }

    else
    {
      if (([a2 collectionListType] & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v9 = [*(v3 + 16) px_standardLibrarySpecificFetchOptions];
        [v9 setFetchLimit_];
        [v9 setSharingFilter_];
        v12 = [objc_opt_self() fetchKeyAssetsForCollectionList:a2 options:v9];
        if (!v12)
        {
          v12 = [objc_allocWithZone(MEMORY[0x1E6978840]) init];
        }

        goto LABEL_20;
      }

      sub_1A3D64B88(MEMORY[0x1E69E7CC0], &qword_1EB126660, 0x1E6978630, v11);
      v18 = [a2 photoLibrary];
      if (v18)
      {
        v19 = v18;
        sub_1A524C674();
        v20 = objc_allocWithZone(MEMORY[0x1E69788E0]);
        v21 = sub_1A524CA14();

        v9 = sub_1A524C634();

        v22 = [v20 initWithObjects:v21 photoLibrary:v19 fetchType:v9 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

LABEL_21:
        return v22;
      }

      __break(1u);
    }

    v42 = 0;
    v43.n128_u64[0] = 0xE000000000000000;
    if ((v5 - 1) >= 3)
    {
      MEMORY[0x1A5907B60](0x7463657078656E55, 0xEB00000000206465, v7);
      v47 = v5;
      type metadata accessor for PXDisplayAssetCollectionCurationKind(0);
      sub_1A524E624();
    }

    else
    {
      sub_1A524E404();
      MEMORY[0x1A5907B60](0xD000000000000010, 0x80000001A53C9470);
      v47 = v5;
      type metadata accessor for PXDisplayAssetCollectionCurationKind(0);
      sub_1A524E624();
      MEMORY[0x1A5907B60](0x20726F6620, 0xE500000000000000);
      v31 = [a2 description];
      v32 = sub_1A524C674();
      v34 = v33;

      MEMORY[0x1A5907B60](v32, v34);
    }

    goto LABEL_28;
  }

  if (v5 > 2)
  {
    v41 = *(a3 + 1);
    sub_1A3C69A7C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    if (v5 == 3)
    {
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1A52F9790;
      sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
      sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1A52F8E10;
      v15 = MEMORY[0x1E69E76D0];
      *(v14 + 56) = MEMORY[0x1E69E7668];
      *(v14 + 64) = v15;
      *(v14 + 32) = 2;
    }

    else
    {
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1A52F9790;
      sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
      sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1A52F8E10;
      v29 = MEMORY[0x1E69E76D0];
      *(v28 + 56) = MEMORY[0x1E69E7668];
      *(v28 + 64) = v29;
      *(v28 + 32) = 4000;
    }

    *(v13 + 32) = sub_1A524D134();
    v9 = [*(v3 + 16) px_standardLibrarySpecificFetchOptions];
    [v9 setFetchLimit_];
    [v9 setSharingFilter_];
    v16 = sub_1A524CA14();

    v17 = [objc_opt_self() orPredicateWithSubpredicates_];

    [v9 setInternalPredicate_];
    v10 = [objc_opt_self() fetchCollectionsInCollectionList:a2 options:v9];
    goto LABEL_19;
  }

  if (!v5)
  {
    v39 = *(a3 + 1);
    v8 = objc_opt_self();
    v9 = [*(v3 + 16) px_standardLibrarySpecificFetchOptions];
    [v9 setFetchLimit_];
    [v9 setSharingFilter_];
    v10 = [v8 fetchCollectionsInCollectionList:a2 options:v9];
LABEL_19:
    v12 = v10;
LABEL_20:
    v22 = v12;
    goto LABEL_21;
  }

  if (v5 == 2)
  {
    v25 = a3[3];
    v26 = *(a3 + 32);
    v27 = a3[5];
    v47 = 0;
    v48 = 1;
    v42 = v6;
    v43 = v7;
    v44 = v25;
    v45 = v26;
    v46 = v27;
    return sub_1A4146CF0(&v47, a2, &v42);
  }

  v42 = 0;
  v43.n128_u64[0] = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD000000000000010, 0x80000001A53C9470);
  v47 = 1;
  v48 = 1;
  sub_1A524E624();
  MEMORY[0x1A5907B60](0x20726F6620, 0xE500000000000000);
  v35 = [a2 description];
  v36 = sub_1A524C674();
  v38 = v37;

  MEMORY[0x1A5907B60](v36, v38);

LABEL_28:
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

id sub_1A4147644(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *a1;
  v6 = *a3;
  v5 = a3[1];
  v7 = a3[2];
  v8 = a3[3];
  v9 = *(a3 + 32);
  v10 = a3[5];
  if (*(a1 + 8) == 1)
  {
    if (v4 < 2)
    {
      sub_1A524E404();
      MEMORY[0x1A5907B60](0xD000000000000010, 0x80000001A53C9470);
      sub_1A524E624();
      MEMORY[0x1A5907B60](0x20726F6620, 0xE500000000000000);
      v17 = [a2 description];
      v18 = sub_1A524C674();
      v20 = v19;

      MEMORY[0x1A5907B60](v18, v20);

      result = sub_1A524E6E4();
      __break(1u);
    }

    else
    {
      v23 = a3[5];
      v24 = 0;
      v25 = 0;
      v21[0] = v6;
      v21[1] = v5;
      v21[2] = v7;
      v21[3] = v8;
      v22 = v9;
      return sub_1A4147644(&v24, a2, v21);
    }
  }

  else
  {
    v13 = [objc_allocWithZone(PXPhotosAssetsFetcherConfiguration) init];
    [v13 setCurationKind_];
    [v13 setFetchLimit_];
    v14 = PXPhotosDataSourceOptionsAdjustedForCurationContext(0, v8);
    [v13 setOptions_];
    if (v7)
    {
      sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980);
      v7 = sub_1A524CA14();
    }

    [v13 setReferencePersons_];

    [v13 setReverseSortOrder_];
    [v13 setLibraryFilter_];
    [v13 setFilterPredicate_];
    v15 = [*(v3 + 24) fetchAssetsInContainer:a2 configuration:v13];

    return v15;
  }

  return result;
}

id sub_1A41478EC(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *a1;
  v7 = *a3;
  v6 = a3[1];
  v8 = a3[2];
  v9 = a3[3];
  v10 = *(a3 + 32);
  v11 = a3[5];
  if (*(a1 + 8) != 1)
  {
    v15 = [objc_allocWithZone(PXPhotosAssetsFetcherConfiguration) init];
    [v15 setCurationKind_];
    [v15 setFetchLimit_];
    v16 = PXPhotosDataSourceOptionsAdjustedForCurationContext(0, v9);
    [v15 setOptions_];
    if (v8)
    {
      sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980);
      v8 = sub_1A524CA14();
    }

    [v15 setReferencePersons_];

    [v15 setReverseSortOrder_];
    [v15 setLibraryFilter_];
    [v15 setFilterPredicate_];
    v14 = [*(v3 + 24) fetchAssetsInContainer:a2 configuration:v15];

    return v14;
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v24 = a3[5];
      v25 = 1;
      v26 = 1;
      v22[0] = v7;
      v22[1] = v6;
      v22[2] = v8;
      v22[3] = v9;
      v23 = v10;
      return sub_1A41478EC(&v25, a2, v22);
    }
  }

  else if (v5 == 1)
  {
    v12 = [*(v3 + 16) px_standardLibrarySpecificFetchOptions];
    [v12 setFetchLimit_];
    [v12 setSharingFilter_];
    v13 = [objc_opt_self() px_defaultDetectionTypes];
    if (!v13)
    {
      sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
      sub_1A524CA34();
      v13 = sub_1A524CA14();
    }

    [v12 setIncludedDetectionTypes_];

    v14 = [objc_opt_self() fetchPersonsInSocialGroup:a2 option:v12];
    return v14;
  }

  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD000000000000010, 0x80000001A53C9470);
  sub_1A524E624();
  MEMORY[0x1A5907B60](0x20726F6620, 0xE500000000000000);
  v18 = [a2 description];
  v19 = sub_1A524C674();
  v21 = v20;

  MEMORY[0x1A5907B60](v19, v21);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t static PhotoKitFetcher.hasAnyRelationship(for:)(void *a1)
{
  sub_1A414C234();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A531D3E0;
  *(inited + 32) = sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
  *(inited + 40) = sub_1A3C52C70(0, &qword_1EB120A70, 0x1E6978760);
  *(inited + 48) = sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980);
  *(inited + 56) = sub_1A3C52C70(0, &unk_1EB12B198, 0x1E6978AE8);
  if ([a1 isKindOfClass_] & 1) != 0 || (objc_msgSend(a1, sel_isKindOfClass_, swift_getObjCClassFromMetadata()) & 1) != 0 || (objc_msgSend(a1, sel_isKindOfClass_, swift_getObjCClassFromMetadata()))
  {
    v3 = 1;
  }

  else
  {
    v3 = [a1 isKindOfClass_];
  }

  return v3;
}

double sub_1A4147DF0@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 40) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return result;
}

id PhotoKitFetcher.fetchPlacesAlbum(for:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = [*(v1 + 16) px_standardLibrarySpecificFetchOptions];
  [v4 setFetchLimit_];
  [v4 setSharingFilter_];
  [v4 copy];

  sub_1A524E0B4();
  swift_unknownObjectRelease();
  sub_1A3C52C70(0, &unk_1EB126C00, 0x1E6978830);
  swift_dynamicCast();
  [v11 setIncludePlacesSmartAlbum_];
  v5 = v11;
  v6 = static PHFetchOptions.px_placesFetchOptions(with:)(v5);

  v7 = v11;
  v12 = v6;
  v8 = v6;

  v9 = [objc_opt_self() fetchAssetCollectionsWithType:2 subtype:1000000203 options:v8];
  return v9;
}

id PhotoKitFetcher.fetchAssetsWithLocation(inCollection:libraryFilterViewMode:)(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + 16) px_standardLibrarySpecificFetchOptions];
  [v5 setFetchLimit_];
  [v5 setSharingFilter_];
  [v5 copy];

  sub_1A524E0B4();
  swift_unknownObjectRelease();
  sub_1A3C52C70(0, &unk_1EB126C00, 0x1E6978830);
  swift_dynamicCast();
  v6 = v12;
  v7 = static PHFetchOptions.px_placesFetchOptions(with:)(v6);

  v8 = v12;
  v13 = v7;
  v9 = v7;

  v10 = [objc_opt_self() px:a1 fetchPlacesAssetsInAssetCollection:v9 options:?];

  return v10;
}

uint64_t PhotoKitFetcher.PeopleCategory.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

id PhotoKitFetcher.fetchPeople(for:libraryFilterViewMode:fetchLimit:type:detectionTypes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v10 = [*(v6 + 16) px_standardLibrarySpecificFetchOptions];
  [v10 setFetchLimit_];
  [v10 setSharingFilter_];
  [v10 copy];

  sub_1A524E0B4();
  swift_unknownObjectRelease();
  sub_1A3C52C70(0, &unk_1EB126C00, 0x1E6978830);
  swift_dynamicCast();
  [v31 setPersonContext_];
  v11 = MEMORY[0x1E69E6F90];
  sub_1A3C69A7C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A52F9790;
  v13 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v14 = sub_1A524C634();
  v15 = [v13 initWithKey:v14 ascending:0];

  *(v12 + 32) = v15;
  v16 = [objc_opt_self() sortDescriptorsForManualSort];
  sub_1A3C52C70(0, &qword_1EB126B60, 0x1E696AEB0);
  v17 = sub_1A524CA34();

  sub_1A414C64C(v17, sub_1A414C744, v18);
  v19 = sub_1A524CA14();

  [v31 setSortDescriptors_];

  [v31 setFetchLimit_];
  sub_1A3C69A7C(0, &qword_1EB12B260, MEMORY[0x1E69E6158], v11);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1A52F8E10;
  *(v20 + 32) = sub_1A524C674();
  *(v20 + 40) = v21;
  v22 = sub_1A524CA14();

  [v31 setFetchPropertySets_];

  sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
  v23 = sub_1A524CA14();
  [v31 setIncludedDetectionTypes_];

  if ((a5 & 1) == 0)
  {
    sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
    sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v24 = swift_allocObject();
    v25 = MEMORY[0x1E69E6530];
    *(v24 + 16) = xmmword_1A52F8E10;
    v26 = MEMORY[0x1E69E65A8];
    *(v24 + 56) = v25;
    *(v24 + 64) = v26;
    *(v24 + 32) = a4;
    v27 = sub_1A524D134();
    [v31 setPredicate_];
  }

  v28 = [objc_opt_self() fetchPersonsWithOptions_];

  return v28;
}

id PhotoKitFetcher.peopleFetchOptions(for:libraryFilterViewMode:fetchLimit:type:detectionTypes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v10 = [*(v6 + 16) px_standardLibrarySpecificFetchOptions];
  [v10 setFetchLimit_];
  [v10 setSharingFilter_];
  [v10 copy];

  sub_1A524E0B4();
  swift_unknownObjectRelease();
  sub_1A3C52C70(0, &unk_1EB126C00, 0x1E6978830);
  swift_dynamicCast();
  [v30 setPersonContext_];
  v11 = MEMORY[0x1E69E6F90];
  sub_1A3C69A7C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A52F9790;
  v13 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v14 = sub_1A524C634();
  v15 = [v13 initWithKey:v14 ascending:0];

  *(v12 + 32) = v15;
  v16 = [objc_opt_self() sortDescriptorsForManualSort];
  sub_1A3C52C70(0, &qword_1EB126B60, 0x1E696AEB0);
  v17 = sub_1A524CA34();

  sub_1A414C64C(v17, sub_1A414C744, v18);
  v19 = sub_1A524CA14();

  [v30 setSortDescriptors_];

  [v30 setFetchLimit_];
  sub_1A3C69A7C(0, &qword_1EB12B260, MEMORY[0x1E69E6158], v11);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1A52F8E10;
  *(v20 + 32) = sub_1A524C674();
  *(v20 + 40) = v21;
  v22 = sub_1A524CA14();

  [v30 setFetchPropertySets_];

  sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
  v23 = sub_1A524CA14();
  [v30 setIncludedDetectionTypes_];

  if ((a5 & 1) == 0)
  {
    sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
    sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v24 = swift_allocObject();
    v25 = MEMORY[0x1E69E6530];
    *(v24 + 16) = xmmword_1A52F8E10;
    v26 = MEMORY[0x1E69E65A8];
    *(v24 + 56) = v25;
    *(v24 + 64) = v26;
    *(v24 + 32) = a4;
    v27 = sub_1A524D134();
    [v30 setPredicate_];
  }

  return v30;
}

id PhotoKitFetcher.fetchTrips(withFavoriteState:limit:)(unsigned __int8 a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = a1;
  sub_1A3C69A7C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1A52F9DE0;
  sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
  sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E75F8];
  *(v9 + 16) = xmmword_1A52FC9F0;
  v11 = MEMORY[0x1E69E7660];
  *(v9 + 56) = v10;
  *(v9 + 64) = v11;
  *(v9 + 32) = 1;
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 72) = 2;
  *(v8 + 32) = sub_1A524D134();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A52F8E10;
  sub_1A3C52C70(0, &qword_1EB1333F8, off_1E771D910);
  v13 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v13 nonInterestingPromotionScore];
  v15 = v14;

  v16 = MEMORY[0x1E69E6438];
  *(v12 + 56) = MEMORY[0x1E69E63B0];
  *(v12 + 64) = v16;
  *(v12 + 32) = v15;
  *(v8 + 40) = sub_1A524D134();
  if (v7 != 2)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1A52F8E10;
    v18 = MEMORY[0x1E69E63A8];
    *(v17 + 56) = MEMORY[0x1E69E6370];
    *(v17 + 64) = v18;
    *(v17 + 32) = a1 & 1;
    sub_1A524D134();
    MEMORY[0x1A5907D70]();
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
  }

  v19 = [*(v4 + 16) px_standardLibrarySpecificFetchOptions];
  [v19 setFetchLimit_];
  [v19 setSharingFilter_];
  [v19 copy];

  sub_1A524E0B4();
  swift_unknownObjectRelease();
  sub_1A3C52C70(0, &unk_1EB126C00, 0x1E6978830);
  v20 = MEMORY[0x1E69E7CA0];
  swift_dynamicCast();
  if ((a3 & 1) == 0)
  {
    [v35 setFetchLimit_];
  }

  v21 = sub_1A524CA14();

  v22 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v35 setInternalPredicate_];
  sub_1A3C69A7C(0, &unk_1EB126170, v20 + 8, MEMORY[0x1E69E6F90]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1A52FC9F0;
  v24 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v25 = sub_1A524C634();
  v26 = [v24 initWithKey:v25 ascending:0];

  v27 = sub_1A3C52C70(0, &qword_1EB126B60, 0x1E696AEB0);
  *(v23 + 56) = v27;
  *(v23 + 32) = v26;
  v28 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v29 = sub_1A524C634();
  v30 = [v28 initWithKey:v29 ascending:0];

  *(v23 + 88) = v27;
  *(v23 + 64) = v30;
  v31 = sub_1A524CA14();

  [v35 setInternalSortDescriptors_];

  v32 = [objc_opt_self() fetchAssetCollectionsWithType:6 subtype:0x7FFFFFFFFFFFFFFFLL options:v35];

  return v32;
}

id PhotoKitFetcher.fetchMemories(featuredOnly:favoritesOnly:limit:libraryFilterViewMode:)(char a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = [*(v5 + 16) px_standardLibrarySpecificFetchOptions];
  [v11 setFetchLimit_];
  [v11 setSharingFilter_];
  [v11 copy];

  sub_1A524E0B4();
  swift_unknownObjectRelease();
  sub_1A3C52C70(0, &unk_1EB126C00, 0x1E6978830);
  swift_dynamicCast();
  if ((a4 & 1) == 0)
  {
    [v35 setFetchLimit_];
  }

  [v35 setIncludePendingMemories_];
  sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
  sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A52F8E10;
  v13 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1A3D710E8();
  *(v12 + 64) = v14;
  *(v12 + 32) = 0x64657463656A6572;
  *(v12 + 40) = 0xE800000000000000;
  v15 = sub_1A524D134();
  sub_1A41493F8(v15, v35);

  if (a1 != 2 && (a1 & 1) != 0)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1A52FC9F0;
    *(v16 + 56) = v13;
    *(v16 + 64) = v14;
    strcpy((v16 + 32), "featuredState");
    *(v16 + 46) = -4864;
    v17 = MEMORY[0x1E69E65A8];
    *(v16 + 96) = MEMORY[0x1E69E6530];
    *(v16 + 104) = v17;
    *(v16 + 72) = -1;
    v18 = sub_1A524D134();
    sub_1A41493F8(v18, v35);
  }

  if (a2 != 2 && (a2 & 1) != 0)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1A52F8E10;
    *(v19 + 56) = v13;
    *(v19 + 64) = v14;
    *(v19 + 32) = 0x657469726F766166;
    *(v19 + 40) = 0xE800000000000000;
    v20 = sub_1A524D134();
    sub_1A41493F8(v20, v35);
  }

  v21 = MEMORY[0x1E69E6F90];
  sub_1A3C69A7C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1A52F9DE0;
  v23 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v24 = sub_1A524C634();
  v25 = [v23 initWithKey:v24 ascending:0];

  *(v22 + 32) = v25;
  v26 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v27 = sub_1A524C634();
  v28 = [v26 initWithKey:v27 ascending:0];

  *(v22 + 40) = v28;
  sub_1A3C52C70(0, &qword_1EB126B60, 0x1E696AEB0);
  v29 = sub_1A524CA14();

  [v35 setSortDescriptors_];

  sub_1A3C69A7C(0, &qword_1EB12B260, MEMORY[0x1E69E6158], v21);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1A52F8E10;
  *(v30 + 32) = sub_1A524C674();
  *(v30 + 40) = v31;
  v32 = sub_1A524CA14();

  [v35 setFetchPropertySets_];

  v33 = [objc_opt_self() fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v35];

  return v33;
}

void sub_1A41493F8(void *a1, id a2)
{
  v4 = [a2 predicate];
  if (v4)
  {
    v5 = v4;
    sub_1A3C69A7C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1A52F9DE0;
    *(v6 + 32) = v5;
    *(v6 + 40) = a1;
    sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
    v7 = v5;
    v8 = a1;
    v9 = sub_1A524CA14();

    v10 = [objc_opt_self() andPredicateWithSubpredicates_];

    [a2 setPredicate_];
  }

  else
  {

    [a2 setPredicate_];
  }
}

id PhotoKitFetcher.fetchFeaturedSuggestions(type:limit:options:)(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v7 = *a4;
  v8 = a4[1];
  v36 = *(v4 + 16);
  v9 = [v36 px_standardLibrarySpecificFetchOptions];
  [v9 setFetchLimit_];
  v37 = v8;
  [v9 setSharingFilter_];
  [v9 copy];

  sub_1A524E0B4();
  swift_unknownObjectRelease();
  sub_1A3C52C70(0, &unk_1EB126C00, 0x1E6978830);
  swift_dynamicCast();
  if ((a3 & 1) == 0)
  {
    [v38 setFetchLimit_];
  }

  sub_1A3C69A7C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A52F9DE0;
  sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
  sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A531D3F0;
  v12 = MEMORY[0x1E69E6158];
  *(v11 + 56) = MEMORY[0x1E69E6158];
  v13 = sub_1A3D710E8();
  *(v11 + 64) = v13;
  v14 = MEMORY[0x1E69E75F8];
  v15 = MEMORY[0x1E69E7660];
  *(v11 + 32) = 0x6574617473;
  *(v11 + 40) = 0xE500000000000000;
  *(v11 + 96) = v14;
  *(v11 + 104) = v15;
  *(v11 + 72) = 1;
  *(v11 + 136) = v12;
  *(v11 + 144) = v13;
  *(v11 + 112) = 0x6574617473;
  *(v11 + 120) = 0xE500000000000000;
  *(v11 + 176) = v14;
  *(v11 + 184) = v15;
  *(v11 + 152) = 0;
  *(v11 + 216) = v12;
  *(v11 + 224) = v13;
  *(v11 + 192) = 0x6574617473;
  *(v11 + 200) = 0xE500000000000000;
  *(v11 + 256) = v14;
  *(v11 + 264) = v15;
  *(v11 + 232) = 3;
  *(v11 + 296) = v12;
  *(v11 + 304) = v13;
  *(v11 + 272) = 0x6E6F6973726576;
  *(v11 + 280) = 0xE700000000000000;
  v16 = MEMORY[0x1E69E7358];
  *(v11 + 336) = MEMORY[0x1E69E72F0];
  *(v11 + 344) = v16;
  *(v11 + 312) = 3;
  *(v11 + 376) = v12;
  *(v11 + 384) = v13;
  strcpy((v11 + 352), "featuredState");
  *(v11 + 366) = -4864;
  *(v11 + 416) = v14;
  *(v11 + 424) = v15;
  *(v11 + 392) = 1;
  *(v10 + 32) = sub_1A524D134();
  v35 = objc_opt_self();
  *(v10 + 40) = [v35 predicateForAllFeaturedStateEnabledSuggestionTypesForWidget];
  v17 = sub_1A524CA14();

  v18 = objc_opt_self();
  v19 = [v18 andPredicateWithSubpredicates_];

  v20 = [objc_opt_self() contentSyndicationConfigurationProviderWithPhotoLibrary_];
  if (([v20 showUnsavedSyndicatedContentInFeaturedPhotos] & 1) == 0)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1A52F9DE0;
    *(v21 + 32) = v19;
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1A52FC9F0;
    *(v22 + 56) = v12;
    *(v22 + 64) = v13;
    *(v22 + 32) = 0x65707974627573;
    *(v22 + 40) = 0xE700000000000000;
    *(v22 + 96) = v14;
    *(v22 + 104) = v15;
    *(v22 + 72) = 306;
    v23 = v19;
    *(v21 + 40) = sub_1A524D134();
    v24 = sub_1A524CA14();

    v19 = [v18 andPredicateWithSubpredicates_];
  }

  [v38 setPredicate_];
  [v38 setSharingFilter_];
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1A52F9DE0;
  v26 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v27 = sub_1A524C634();
  v28 = [v26 initWithKey:v27 ascending:0];

  *(v25 + 32) = v28;
  v29 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v30 = sub_1A524C634();
  v31 = [v29 initWithKey:v30 ascending:1];

  *(v25 + 40) = v31;
  sub_1A3C52C70(0, &qword_1EB126B60, 0x1E696AEB0);
  v32 = sub_1A524CA14();

  [v38 setSortDescriptors_];

  v33 = [v35 fetchSuggestionsWithOptions_];
  return v33;
}

id PhotoKitFetcher.fetchFeedSuggestions(queryStartDate:queryEndDate:options:)(void *a1, void *a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  if ([a1 compare_] == -1)
  {
    v38 = *(v3 + 16);
    v6 = [v38 px_standardLibrarySpecificFetchOptions];
    [v6 setFetchLimit_];
    v39 = v5;
    [v6 setSharingFilter_];
    [v6 copy];

    sub_1A524E0B4();
    swift_unknownObjectRelease();
    sub_1A3C52C70(0, &unk_1EB126C00, 0x1E6978830);
    swift_dynamicCast();
    sub_1A3C69A7C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1A52F9DE0;
    sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
    sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1A531E180;
    v9 = MEMORY[0x1E69E6158];
    *(v8 + 56) = MEMORY[0x1E69E6158];
    v10 = sub_1A3D710E8();
    *(v8 + 64) = v10;
    *(v8 + 32) = 0x6574617473;
    *(v8 + 40) = 0xE500000000000000;
    v11 = MEMORY[0x1E69E75F8];
    v12 = MEMORY[0x1E69E7660];
    *(v8 + 96) = MEMORY[0x1E69E75F8];
    *(v8 + 104) = v12;
    *(v8 + 72) = 1;
    *(v8 + 136) = v9;
    *(v8 + 144) = v10;
    *(v8 + 112) = 0x6574617473;
    *(v8 + 120) = 0xE500000000000000;
    *(v8 + 176) = v11;
    *(v8 + 184) = v12;
    *(v8 + 152) = 0;
    *(v8 + 216) = v9;
    *(v8 + 224) = v10;
    *(v8 + 192) = 0x6574617473;
    *(v8 + 200) = 0xE500000000000000;
    *(v8 + 256) = v11;
    *(v8 + 264) = v12;
    *(v8 + 232) = 3;
    *(v8 + 296) = v9;
    *(v8 + 304) = v10;
    *(v8 + 272) = 0x6574617473;
    *(v8 + 280) = 0xE500000000000000;
    *(v8 + 336) = v11;
    *(v8 + 344) = v12;
    *(v8 + 312) = 4;
    *(v8 + 376) = v9;
    *(v8 + 384) = v10;
    strcpy((v8 + 352), "creationDate");
    *(v8 + 365) = 0;
    *(v8 + 366) = -5120;
    v13 = sub_1A3C52C70(0, &qword_1EB1266C8, 0x1E695DF00);
    *(v8 + 416) = v13;
    v14 = sub_1A3C3A220(&qword_1EB1266C0, &qword_1EB1266C8, 0x1E695DF00, MEMORY[0x1E69E81C8]);
    *(v8 + 392) = a1;
    *(v8 + 456) = v9;
    *(v8 + 464) = v10;
    *(v8 + 424) = v14;
    strcpy((v8 + 432), "creationDate");
    *(v8 + 445) = 0;
    *(v8 + 446) = -5120;
    *(v8 + 496) = v13;
    *(v8 + 504) = v14;
    *(v8 + 472) = a2;
    v15 = a1;
    v16 = a2;
    *(v7 + 32) = sub_1A524D134();
    v17 = objc_opt_self();
    *(v7 + 40) = [v17 predicateForAllFeaturedStateEnabledSuggestionTypesForWidget];
    v18 = sub_1A524CA14();

    v19 = objc_opt_self();
    v20 = [v19 andPredicateWithSubpredicates_];

    v21 = [objc_opt_self() contentSyndicationConfigurationProviderWithPhotoLibrary_];
    if (([v21 showUnsavedSyndicatedContentInFeaturedPhotos] & 1) == 0)
    {
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1A52F9DE0;
      *(v22 + 32) = v20;
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1A52FC9F0;
      *(v23 + 56) = v9;
      *(v23 + 64) = v10;
      *(v23 + 32) = 0x65707974627573;
      *(v23 + 40) = 0xE700000000000000;
      *(v23 + 96) = MEMORY[0x1E69E75F8];
      *(v23 + 104) = MEMORY[0x1E69E7660];
      *(v23 + 72) = 306;
      v24 = v20;
      *(v22 + 40) = sub_1A524D134();
      v25 = sub_1A524CA14();

      v20 = [v19 &selRef:v25 assetCollectionForSection:?];
    }

    [v40 setPredicate_];
    [v40 setSharingFilter_];
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1A52F9DE0;
    v27 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v28 = sub_1A524C634();
    v29 = [v27 initWithKey:v28 ascending:0];

    *(v26 + 32) = v29;
    v30 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v31 = sub_1A524C634();
    v32 = [v30 initWithKey:v31 ascending:1];

    *(v26 + 40) = v32;
    sub_1A3C52C70(0, &qword_1EB126B60, 0x1E696AEB0);
    v33 = sub_1A524CA14();

    [v40 setSortDescriptors_];

    v34 = [v17 fetchSuggestionsWithOptions_];
    return v34;
  }

  else
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t PhotoKitFetcher.CollectionKind.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

id PhotoKitFetcher.fetch(_:limit:ascending:includeChapterHeaders:additionalPredicate:options:)(unsigned __int8 *a1, uint64_t a2, char a3, char a4, void *a5, uint64_t a6)
{
  v8 = *a1;
  v9 = *(a6 + 8);
  v131 = MEMORY[0x1E69E7CC0];
  sub_1A3C69A7C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F9DE0;
  v11 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v12 = sub_1A524C634();

  v13 = v11;
  v14 = v9;
  v15 = [v13 initWithKey:v12 ascending:a3 & 1];

  *(inited + 32) = v15;
  v16 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v17 = sub_1A524C634();
  v18 = [v16 initWithKey:v17 ascending:a3 & 1];

  v130 = inited;
  *(inited + 40) = v18;
  v19 = *(v6 + 16);
  v20 = PXInternalHighlightVisibilityPropertyForLibraryFilter(v19, v9);
  v21 = sub_1A524C674();
  v23 = v22;

  if (v8 <= 4)
  {
    if (v8 <= 1)
    {
      v122 = v21;
      v123 = v14;
      v125 = v19;
      if (!v8)
      {
        sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
        sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_1A52FC9F0;
        v36 = MEMORY[0x1E69E75F8];
        v37 = MEMORY[0x1E69E7660];
        *(v35 + 56) = MEMORY[0x1E69E75F8];
        *(v35 + 64) = v37;
        *(v35 + 32) = 0;
        *(v35 + 96) = v36;
        *(v35 + 104) = v37;
        *(v35 + 72) = 3;
        sub_1A524D134();
        MEMORY[0x1A5907D70]();
        if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_1A531D3E0;
        v39 = MEMORY[0x1E69E6158];
        *(v38 + 56) = MEMORY[0x1E69E6158];
        v40 = sub_1A3D710E8();
        *(v38 + 64) = v40;
        *(v38 + 32) = v21;
        *(v38 + 40) = v23;
        *(v38 + 96) = v36;
        *(v38 + 104) = v37;
        *(v38 + 72) = 1;
        *(v38 + 136) = v39;
        *(v38 + 144) = v40;
        *(v38 + 112) = v21;
        *(v38 + 120) = v23;
        *(v38 + 176) = v36;
        *(v38 + 184) = v37;
        *(v38 + 152) = 3;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
      v83 = [swift_getObjCClassFromMetadata() sharedInstance];
      v84 = [v83 eventsAlgorithm];

      if (v84)
      {
        v85 = swift_allocObject();
        *(v85 + 16) = xmmword_1A52FF960;
        sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
        sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
        v86 = swift_allocObject();
        *(v86 + 16) = xmmword_1A52FC9F0;
        v87 = MEMORY[0x1E69E75F8];
        v88 = MEMORY[0x1E69E7660];
        *(v86 + 56) = MEMORY[0x1E69E75F8];
        *(v86 + 64) = v88;
        *(v86 + 32) = 0;
        *(v86 + 96) = v87;
        *(v86 + 104) = v88;
        *(v86 + 72) = 3;
        *(v85 + 32) = sub_1A524D134();
        v89 = swift_allocObject();
        *(v89 + 16) = xmmword_1A531D3E0;
        v90 = MEMORY[0x1E69E6158];
        *(v89 + 56) = MEMORY[0x1E69E6158];
        v91 = sub_1A3D710E8();
        *(v89 + 64) = v91;
        *(v89 + 32) = v122;
        *(v89 + 40) = v23;
        *(v89 + 96) = v87;
        *(v89 + 104) = v88;
        *(v89 + 72) = 1;
        *(v89 + 136) = v90;
        *(v89 + 144) = v91;
        *(v89 + 112) = v122;
        *(v89 + 120) = v23;
        *(v89 + 176) = v87;
        *(v89 + 184) = v88;
        *(v89 + 152) = 3;
        swift_bridgeObjectRetain_n();
        *(v85 + 40) = sub_1A524D134();
        v92 = swift_allocObject();
        *(v92 + 16) = xmmword_1A52F8E10;
        v93 = 0.25;
        if (v84 <= 0xD)
        {
          v93 = dbl_1A531E458[v84 - 1];
        }

        v94 = MEMORY[0x1E69E6438];
        *(v92 + 56) = MEMORY[0x1E69E63B0];
        *(v92 + 64) = v94;
        *(v92 + 32) = v93;
        *(v85 + 48) = sub_1A524D134();
        v14 = v123;
      }

      else
      {
        v108 = swift_allocObject();
        *(v108 + 16) = xmmword_1A52F9DE0;
        sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
        sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
        v110 = v109;
        v111 = swift_allocObject();
        *(v111 + 16) = xmmword_1A52FCA00;
        v112 = MEMORY[0x1E69E75F8];
        v113 = MEMORY[0x1E69E7660];
        *(v111 + 56) = MEMORY[0x1E69E75F8];
        *(v111 + 64) = v113;
        *(v111 + 32) = 3;
        v114 = MEMORY[0x1E69E6158];
        *(v111 + 96) = MEMORY[0x1E69E6158];
        v115 = sub_1A3D710E8();
        *(v111 + 104) = v115;
        *(v111 + 72) = v122;
        *(v111 + 80) = v23;
        *(v111 + 136) = v112;
        *(v111 + 144) = v113;
        *(v111 + 112) = 2;
        *(v111 + 176) = v114;
        *(v111 + 184) = v115;
        *(v111 + 152) = v122;
        *(v111 + 160) = v23;
        *(v111 + 216) = v112;
        *(v111 + 224) = v113;
        *(v111 + 192) = 3;
        swift_bridgeObjectRetain_n();
        *(v108 + 32) = sub_1A524D134();
        v121 = v110;
        v116 = swift_allocObject();
        *(v116 + 16) = xmmword_1A52FCA00;
        *(v116 + 56) = v112;
        *(v116 + 64) = v113;
        *(v116 + 32) = 0;
        *(v116 + 96) = v114;
        *(v116 + 104) = v115;
        *(v116 + 72) = v122;
        *(v116 + 80) = v23;
        *(v116 + 136) = v112;
        *(v116 + 144) = v113;
        *(v116 + 112) = 2;
        *(v116 + 176) = v114;
        *(v116 + 184) = v115;
        *(v116 + 152) = v122;
        *(v116 + 160) = v23;
        *(v116 + 216) = v112;
        *(v116 + 224) = v113;
        *(v116 + 192) = 3;
        swift_bridgeObjectRetain_n();
        *(v108 + 40) = sub_1A524D134();
        if (a4)
        {
          v117 = swift_allocObject();
          *(v117 + 16) = xmmword_1A52FF950;
          *(v117 + 56) = v112;
          *(v117 + 64) = v113;
          *(v117 + 32) = 1;
          *(v117 + 96) = MEMORY[0x1E69E6158];
          *(v117 + 104) = v115;
          *(v117 + 72) = v122;
          *(v117 + 80) = v23;
          *(v117 + 136) = v112;
          *(v117 + 144) = v113;
          *(v117 + 112) = 2;
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        v85 = swift_allocObject();
        *(v85 + 16) = xmmword_1A52F9790;
        v118 = sub_1A524CA14();

        v119 = [objc_opt_self() orPredicateWithSubpredicates_];

        *(v85 + 32) = v119;
        v14 = v123;
      }

      v19 = v125;
      v28 = v130;

      sub_1A414C64C(v85, sub_1A414C90C, v120);
      goto LABEL_19;
    }

    if (v8 != 2)
    {
      if (v8 == 3)
      {

        sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
        sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
        v24 = swift_allocObject();
        v25 = MEMORY[0x1E69E75F8];
        *(v24 + 16) = xmmword_1A52F8E10;
        v26 = MEMORY[0x1E69E7660];
        *(v24 + 56) = v25;
        *(v24 + 64) = v26;
        *(v24 + 32) = 0;
        sub_1A524D134();
        MEMORY[0x1A5907D70]();
        v27 = a5;
        if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();
        v28 = v130;
      }

      else
      {
        v70 = v19;
        sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
        sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
        v71 = swift_allocObject();
        *(v71 + 16) = xmmword_1A52FF950;
        v72 = v21;
        v73 = MEMORY[0x1E69E75F8];
        v74 = MEMORY[0x1E69E7660];
        *(v71 + 56) = MEMORY[0x1E69E75F8];
        *(v71 + 64) = v74;
        *(v71 + 32) = 2;
        *(v71 + 96) = MEMORY[0x1E69E6158];
        *(v71 + 104) = sub_1A3D710E8();
        *(v71 + 72) = v72;
        *(v71 + 80) = v23;
        *(v71 + 136) = v73;
        *(v71 + 144) = v74;
        *(v71 + 112) = 4;
        sub_1A524D134();
        MEMORY[0x1A5907D70]();
        if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();
        v19 = v70;
        v27 = a5;
        v28 = v130;
      }

      goto LABEL_20;
    }

    sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
    sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1A52FC9F0;
    v54 = MEMORY[0x1E69E75F8];
    v55 = MEMORY[0x1E69E7660];
    *(v53 + 56) = MEMORY[0x1E69E75F8];
    *(v53 + 64) = v55;
    *(v53 + 32) = 1;
    *(v53 + 96) = v54;
    *(v53 + 104) = v55;
    *(v53 + 72) = 2;
    sub_1A524D134();
    MEMORY[0x1A5907D70]();
    v28 = v130;
    if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
      v28 = v130;
    }

    sub_1A524CAE4();
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1A52F8E10;
    sub_1A3C52C70(0, &qword_1EB1333F8, off_1E771D910);
    v57 = [swift_getObjCClassFromMetadata() sharedInstance];
    [v57 nonInterestingPromotionScore];
    v59 = v58;

    v60 = MEMORY[0x1E69E6438];
    *(v56 + 56) = MEMORY[0x1E69E63B0];
    *(v56 + 64) = v60;
    *(v56 + 32) = v59;
    sub_1A524D134();
    MEMORY[0x1A5907D70]();
    if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_55;
    }

    goto LABEL_18;
  }

  if (v8 > 6)
  {
    if (v8 != 7)
    {
      if (v8 == 8)
      {
        sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
        sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1A52FC9F0;
        v30 = MEMORY[0x1E69E75F8];
        v31 = MEMORY[0x1E69E7660];
        *(v29 + 56) = MEMORY[0x1E69E75F8];
        *(v29 + 64) = v31;
        *(v29 + 32) = 0;
        *(v29 + 96) = v30;
        *(v29 + 104) = v31;
        *(v29 + 72) = 3;
        sub_1A524D134();
        MEMORY[0x1A5907D70]();
        if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1A531D3E0;
        v33 = MEMORY[0x1E69E6158];
        *(v32 + 56) = MEMORY[0x1E69E6158];
        v34 = sub_1A3D710E8();
        *(v32 + 64) = v34;
        *(v32 + 32) = v21;
        *(v32 + 40) = v23;
        *(v32 + 96) = v30;
        *(v32 + 104) = v31;
        *(v32 + 72) = 1;
        *(v32 + 136) = v33;
        *(v32 + 144) = v34;
        *(v32 + 112) = v21;
        *(v32 + 120) = v23;
        *(v32 + 176) = v30;
        *(v32 + 184) = v31;
        *(v32 + 152) = 3;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_1A52F9DE0;
      sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
      sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_1A52FCA00;
      v77 = MEMORY[0x1E69E75F8];
      v78 = MEMORY[0x1E69E7660];
      *(v76 + 56) = MEMORY[0x1E69E75F8];
      *(v76 + 64) = v78;
      *(v76 + 32) = 3;
      v79 = MEMORY[0x1E69E6158];
      *(v76 + 96) = MEMORY[0x1E69E6158];
      v80 = sub_1A3D710E8();
      *(v76 + 104) = v80;
      *(v76 + 72) = v21;
      *(v76 + 80) = v23;
      *(v76 + 136) = v77;
      *(v76 + 144) = v78;
      *(v76 + 112) = 2;
      *(v76 + 176) = v79;
      *(v76 + 184) = v80;
      *(v76 + 152) = v21;
      *(v76 + 160) = v23;
      *(v76 + 216) = v77;
      *(v76 + 224) = v78;
      *(v76 + 192) = 3;
      swift_bridgeObjectRetain_n();
      *(v75 + 32) = sub_1A524D134();
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_1A52FCA00;
      *(v81 + 56) = v77;
      *(v81 + 64) = v78;
      *(v81 + 32) = 0;
      v82 = MEMORY[0x1E69E6158];
      *(v81 + 96) = MEMORY[0x1E69E6158];
      *(v81 + 104) = v80;
      *(v81 + 72) = v21;
      *(v81 + 80) = v23;
      *(v81 + 136) = v77;
      *(v81 + 144) = v78;
      *(v81 + 112) = 2;
      *(v81 + 176) = v82;
      *(v81 + 184) = v80;
      *(v81 + 152) = v21;
      *(v81 + 160) = v23;
      *(v81 + 216) = v77;
      *(v81 + 224) = v78;
      *(v81 + 192) = 3;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v61 = v19;
    sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
    sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_1A52FC9F0;
    v63 = MEMORY[0x1E69E75F8];
    v64 = MEMORY[0x1E69E7660];
    *(v62 + 56) = MEMORY[0x1E69E75F8];
    *(v62 + 64) = v64;
    *(v62 + 32) = 0;
    *(v62 + 96) = v63;
    *(v62 + 104) = v64;
    *(v62 + 72) = 3;
    sub_1A524D134();
    MEMORY[0x1A5907D70]();
    if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_1A52FC9F0;
    *(v65 + 56) = MEMORY[0x1E69E6158];
    *(v65 + 64) = sub_1A3D710E8();
    *(v65 + 32) = v21;
    *(v65 + 40) = v23;
    *(v65 + 96) = v63;
    *(v65 + 104) = v64;
    *(v65 + 72) = 0;
    sub_1A524D134();
    MEMORY[0x1A5907D70]();
    if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
    v66 = swift_allocObject();
    v127 = xmmword_1A52F8E10;
    *(v66 + 16) = xmmword_1A52F8E10;
    v67 = MEMORY[0x1E69E75F8];
    sub_1A3C69A7C(0, &qword_1EB133400, MEMORY[0x1E69E75F8], MEMORY[0x1E69E6F90]);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1A531D3E0;
    *(v68 + 32) = 0x5000300070000;
    sub_1A3C69A7C(0, &qword_1EB133408, v67, MEMORY[0x1E69E62F8]);
    *(v66 + 56) = v69;
    *(v66 + 64) = sub_1A414CB54();
    *(v66 + 32) = v68;
    sub_1A524D134();
    MEMORY[0x1A5907D70]();
    v19 = v61;
    v28 = v130;
    if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
      v19 = v61;
    }

    goto LABEL_54;
  }

  v49 = v21;
  v126 = v19;
  if (v8 != 5)
  {
    sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
    sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_1A52FC9F0;
    v96 = MEMORY[0x1E69E75F8];
    v97 = MEMORY[0x1E69E7660];
    *(v95 + 56) = MEMORY[0x1E69E75F8];
    *(v95 + 64) = v97;
    *(v95 + 32) = 0;
    *(v95 + 96) = v96;
    *(v95 + 104) = v97;
    *(v95 + 72) = 3;
    sub_1A524D134();
    MEMORY[0x1A5907D70]();
    if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_1A52FC9F0;
    *(v98 + 56) = MEMORY[0x1E69E6158];
    *(v98 + 64) = sub_1A3D710E8();
    *(v98 + 32) = v21;
    *(v98 + 40) = v23;
    *(v98 + 96) = v96;
    *(v98 + 104) = v97;
    *(v98 + 72) = 0;
    sub_1A524D134();
    MEMORY[0x1A5907D70]();
    if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
    v99 = swift_allocObject();
    v127 = xmmword_1A52F8E10;
    *(v99 + 16) = xmmword_1A52F8E10;
    v100 = MEMORY[0x1E69E75F8];
    sub_1A3C69A7C(0, &qword_1EB133400, MEMORY[0x1E69E75F8], MEMORY[0x1E69E6F90]);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_1A531E1A0;
    *(v101 + 32) = 0x1000300070000;
    *(v101 + 40) = 262146;
    sub_1A3C69A7C(0, &qword_1EB133408, v100, MEMORY[0x1E69E62F8]);
    *(v99 + 56) = v102;
    *(v99 + 64) = sub_1A414CB54();
    *(v99 + 32) = v101;
    sub_1A524D134();
    MEMORY[0x1A5907D70]();
    v19 = v126;
    v28 = v130;
    if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
      v19 = v126;
    }

LABEL_54:
    sub_1A524CAE4();
    v103 = swift_allocObject();
    *(v103 + 16) = v127;
    sub_1A3C52C70(0, &qword_1EB1333F8, off_1E771D910);
    v104 = [swift_getObjCClassFromMetadata() sharedInstance];
    [v104 nonInterestingPromotionScore];
    v106 = v105;

    v107 = MEMORY[0x1E69E6438];
    *(v103 + 56) = MEMORY[0x1E69E63B0];
    *(v103 + 64) = v107;
    *(v103 + 32) = v106;
    sub_1A524D134();
    MEMORY[0x1A5907D70]();
    if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_55:
      sub_1A524CA74();
    }

LABEL_18:
    sub_1A524CAE4();
LABEL_19:
    v27 = a5;
    goto LABEL_20;
  }

  sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
  sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1A52FF950;
  v51 = MEMORY[0x1E69E75F8];
  v52 = MEMORY[0x1E69E7660];
  *(v50 + 56) = MEMORY[0x1E69E75F8];
  *(v50 + 64) = v52;
  *(v50 + 32) = 1;
  *(v50 + 96) = MEMORY[0x1E69E6158];
  *(v50 + 104) = sub_1A3D710E8();
  *(v50 + 72) = v49;
  *(v50 + 80) = v23;
  *(v50 + 136) = v51;
  *(v50 + 144) = v52;
  *(v50 + 112) = 2;
  sub_1A524D134();
  MEMORY[0x1A5907D70]();
  if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1A524CA74();
  }

  sub_1A524CAE4();
  v27 = a5;
  v28 = v130;
  v19 = v126;
LABEL_20:
  if (v27)
  {
    v41 = v27;
    MEMORY[0x1A5907D70]();
    if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
  }

  v42 = [v19 librarySpecificFetchOptions];
  sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
  v43 = sub_1A524CA14();

  v44 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v42 setInternalPredicate_];
  sub_1A3D64B88(v28, &qword_1EB126B60, 0x1E696AEB0, v45);

  v46 = sub_1A524CA14();

  [v42 setInternalSortDescriptors_];

  [v42 setSharingFilter_];
  [v42 setFetchLimit_];
  v47 = [objc_opt_self() fetchAssetCollectionsWithType:6 subtype:0x7FFFFFFFFFFFFFFFLL options:v42];

  return v47;
}

uint64_t PhotoKitFetcher.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id PXPhotoKitFetcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PXPhotoKitFetcher.init()(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PXPhotoKitFetcher(a1, a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

id PXPhotoKitFetcher.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PXPhotoKitFetcher(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1A414C234()
{
  v0 = sub_1A414CF3C();
  if (swift_isClassType() && v0)
  {
    sub_1A3C69A7C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  }

  else
  {
    sub_1A3C711A0(0, &qword_1EB133440, sub_1A414CF3C, MEMORY[0x1E69E6F90]);
  }
}

uint64_t sub_1A414C2D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1A3C71A44(0);
    v2 = sub_1A524E784();
    v21 = v2;
    sub_1A524E694();
    v3 = sub_1A524E6C4();
    if (v3)
    {
      v4 = v3;
      sub_1A3C52C70(0, &qword_1EB126BF0, 0x1E69789A8);
      v5 = v4;
      do
      {
        v19 = v5;
        v12 = swift_dynamicCast();
        type metadata accessor for PhotoKitFetcher(v12, v13);
        swift_dynamicCast();
        v14 = *(v2 + 16);
        if (*(v2 + 24) <= v14)
        {
          sub_1A3C71B00(v14 + 1, 1);
        }

        v2 = v21;
        result = sub_1A524DBE4();
        v7 = v21 + 64;
        v8 = -1 << *(v21 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v21 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v21 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v10 == v16;
            if (v10 == v16)
            {
              v10 = 0;
            }

            v15 |= v17;
            v18 = *(v7 + 8 * v10);
          }

          while (v18 == -1);
          v11 = __clz(__rbit64(~v18)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v21 + 48) + 8 * v11) = v20;
        *(*(v21 + 56) + 8 * v11) = v19;
        ++*(v21 + 16);
        v5 = sub_1A524E6C4();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

void sub_1A414C4F4()
{
  v1 = v0;
  sub_1A3C71A44(0);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_1A414C64C(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t), __n128 a3)
{
  if (a1 >> 62)
  {
    v6 = sub_1A524E2B4();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v7 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v6);
    v9 = v7 + v6;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = sub_1A524E2B4();
  v8 = __OFADD__(v16, v6);
  v9 = v16 + v6;
  if (v8)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1A3D5C1C8(v9, 1);
  v10 = *v3;
  v11 = *v3 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v3 = v10;
    return;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1A414C744(uint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = sub_1A524E2B4();
    a2 = v13;
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    if (v6)
    {
      v8 = a2;
      result = sub_1A524E2B4();
      if (result <= v8)
      {
        if (v7 >= 1)
        {
          sub_1A3CB6988(0, &qword_1EB126E50, &qword_1EB126B60, 0x1E696AEB0, MEMORY[0x1E69E62F8]);
          sub_1A414CED8(&qword_1EB126E48, &qword_1EB126E50, &qword_1EB126B60, 0x1E696AEB0);
          for (i = 0; i != v7; ++i)
          {
            v10 = sub_1A414CAD4(v14, i, a3);
            v12 = *v11;
            (v10)(v14, 0);
            *(v5 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1A3C52C70(0, &qword_1EB126B60, 0x1E696AEB0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A414C90C(uint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = sub_1A524E2B4();
    a2 = v13;
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    if (v6)
    {
      v8 = a2;
      result = sub_1A524E2B4();
      if (result <= v8)
      {
        if (v7 >= 1)
        {
          sub_1A3CB6988(0, &qword_1EB133430, &qword_1EB126D20, 0x1E696AE18, MEMORY[0x1E69E62F8]);
          sub_1A414CED8(&qword_1EB133438, &qword_1EB133430, &qword_1EB126D20, 0x1E696AE18);
          for (i = 0; i != v7; ++i)
          {
            v10 = sub_1A3D5C268(v14, i, a3);
            v12 = *v11;
            (v10)(v14, 0);
            *(v5 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1A414CAD4(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1A59097F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1A414CFBC;
  }

  __break(1u);
  return result;
}

unint64_t sub_1A414CB54()
{
  result = qword_1EB133410;
  if (!qword_1EB133410)
  {
    sub_1A3C69A7C(255, &qword_1EB133408, MEMORY[0x1E69E75F8], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133410);
  }

  return result;
}

id sub_1A414CBD0(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  result = [a2 photoLibrary];
  if (result)
  {
    v10 = result;
    type metadata accessor for PhotoKitFetcher(result, v9);
    sub_1A3C70B14(v10);

    v14 = 0;
    v15 = a1;
    v16 = 0;
    v12[0] = 0;
    v12[1] = a3;
    v12[2] = 0;
    v12[3] = a4;
    v13 = 0;
    v11 = PhotoKitFetcher.fetch(_:for:options:)(&v15, a2, v12);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A414CCB4()
{
  result = qword_1EB133418;
  if (!qword_1EB133418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133418);
  }

  return result;
}

unint64_t sub_1A414CD0C()
{
  result = qword_1EB133420;
  if (!qword_1EB133420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133420);
  }

  return result;
}

uint64_t sub_1A414CD8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1A414CDE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1A414CED8(unint64_t *a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A3CB6988(255, a2, a3, a4, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A414CF3C()
{
  result = qword_1EB120570;
  if (!qword_1EB120570)
  {
    sub_1A3C52C70(255, &qword_1EB1265D0, 0x1E6978958);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EB120570);
  }

  return result;
}

double sub_1A414CFC0(char a1)
{
  result = 1.33333333;
  if (a1)
  {
    return 1.5;
  }

  return result;
}

id sub_1A414CFDC()
{
  v1 = [*(v0 + 16) px_virtualCollections];
  v2 = [v1 peopleCollection];

  return v2;
}

id sub_1A414D034()
{
  v1 = [*(*v0 + 16) px_virtualCollections];
  v2 = [v1 peopleCollection];

  return v2;
}

BOOL sub_1A414D090(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  type metadata accessor for LemonadePhotoLibraryContext(0, a2);
  if (static LemonadePhotoLibraryContext.== infix(_:_:)(v3, v7) & 1) != 0 && (v2 == v6 ? (v10 = v4 == v8) : (v10 = 0), v10 || (sub_1A524EAB4()))
  {
    v14 = v5;
    v13 = v9;
    return static PeopleUnifiedManagerSourceType.== infix(_:_:)(&v14, &v13);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A414D14C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LemonadePhotoLibraryContext(0, a2);
  sub_1A414E920(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext, &protocol conformance descriptor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  sub_1A524C794();
  sub_1A414D218();
  return sub_1A524C4B4();
}

unint64_t sub_1A414D218()
{
  result = qword_1EB125488;
  if (!qword_1EB125488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125488);
  }

  return result;
}

uint64_t sub_1A414D26C()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  sub_1A524EC94();
  sub_1A414D14C(v5, v3);
  return sub_1A524ECE4();
}

uint64_t sub_1A414D2C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = v5;
  return result;
}

uint64_t sub_1A414D2E4(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A414D14C(v3, v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A414D324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v10 = sub_1A5243624();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  (*(v15 + 16))(v13, a2, v11);
  v16 = v14;
  v17 = 0;
  if (a3)
  {
    v17 = PhotoKitItem.keyAsset.getter();
  }

  return sub_1A4308C80(v13, v17, a4 & 1, a5);
}

uint64_t sub_1A414D430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  sub_1A5243004();
  *&v11[0] = v13;
  sub_1A5243014();
  v5 = *(v10 + 16);

  sub_1A5243014();
  v6 = PhotoKitItem.keyAsset.getter();

  v7 = MEMORY[0x1E69E5FE0];
  v8 = MEMORY[0x1E69E5FE8];
  sub_1A46A8D68(v11, v5, v6, a2, v3, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8], v18);
  v15 = v18[2];
  v16 = v18[3];
  v17 = v19;
  v13 = v18[0];
  v14 = v18[1];
  sub_1A5243024();
  sub_1A414F214(0, &qword_1EB125B98, v7, v8, type metadata accessor for SocialGroupView);
  sub_1A414D5D0();
  sub_1A3D5F9DC();
  sub_1A524AC94();

  v11[2] = v15;
  v11[3] = v16;
  v12 = v17;
  v11[0] = v13;
  v11[1] = v14;
  return sub_1A414D654(v11);
}

unint64_t sub_1A414D5D0()
{
  result = qword_1EB125BA0;
  if (!qword_1EB125BA0)
  {
    sub_1A414F214(255, &qword_1EB125B98, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8], type metadata accessor for SocialGroupView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125BA0);
  }

  return result;
}

uint64_t sub_1A414D654(uint64_t a1)
{
  sub_1A414F214(0, &qword_1EB125B98, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8], type metadata accessor for SocialGroupView);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A414D6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A5242944();
  *&v10[0] = v12;
  v5 = *(a2 + 16);
  v6 = PhotoKitItem.keyAsset.getter();
  v7 = MEMORY[0x1E69E5FE0];
  v8 = MEMORY[0x1E69E5FE8];
  sub_1A46A8D68(v10, v5, v6, a3, 0, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8], v17);
  v14 = v17[2];
  v15 = v17[3];
  v16 = v18;
  v12 = v17[0];
  v13 = v17[1];
  sub_1A5242964();
  sub_1A414F214(0, &qword_1EB125B98, v7, v8, type metadata accessor for SocialGroupView);
  sub_1A414D5D0();
  sub_1A3D5F9DC();
  sub_1A524AC94();

  v10[2] = v14;
  v10[3] = v15;
  v11 = v16;
  v10[0] = v12;
  v10[1] = v13;
  return sub_1A414D654(v10);
}

void sub_1A414D84C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = sub_1A524CA14();
  v8 = sub_1A524C634();
  v9 = [v6 transientCollectionListWithCollections:v7 title:v8 identifier:0 photoLibrary:a1[2]];

  v10 = a1[3];
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v30 = 2;
  v11 = a1[5];
  if (v11)
  {
    v12 = (*((*MEMORY[0x1E69E7D40] & *v11) + 0x258))(v10);
  }

  else
  {
    v13 = v10;
    v12 = 0;
  }

  sub_1A414E218(0, &qword_1EB129FC0, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for PhotoKitItemListManager);
  sub_1A3C6C180(&v20);
  v28 = v20;
  v29 = v21;
  sub_1A3C6C18C(&v26);
  v24 = v26;
  v25 = v27;
  v14 = sub_1A3C5A374();
  v15 = sub_1A3C30368();
  v16 = sub_1A3C5A374();
  v17 = sub_1A3C5A374();
  v18 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v28, 0, &unk_1F16F9268, 0, 1, &v24, v14 & 1, &v30, v23, v15, v16 & 1, v17 & 1, v18 & 1, v12);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v9, v10, v31, v23, &v20, sub_1A414DAB8, v19);
}

id sub_1A414DACC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_1A3C52C70(0, &qword_1EB126C28, 0x1E6978AD8);
  result = sub_1A414E0D4();
  if (!result)
  {
    result = sub_1A414E16C(a1, v8);
    if (!result)
    {
      sub_1A414E218(0, &qword_1EB12A010, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
      ResultProvider = PhotoKitItemListManager.FetchResultProviderInput.photoLibrary.getter();
      v11 = sub_1A414E6C8(ResultProvider, a2, a3 & 1, a4, 0);

      return v11;
    }
  }

  return result;
}

void sub_1A414DB94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v11 = objc_opt_self();
  v12 = sub_1A524CA14();
  v13 = sub_1A524C634();
  v14 = [v11 transientCollectionListWithCollections:v12 title:v13 identifier:0 photoLibrary:a1[2]];

  v15 = a1[3];
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v38 = 2;
  v16 = a1[5];
  if (v16)
  {
    v17 = (*((*MEMORY[0x1E69E7D40] & *v16) + 0x258))(v15);
  }

  else
  {
    v18 = v15;
    v17 = 0;
  }

  sub_1A414E218(0, &qword_1EB129F78, &qword_1EB1265C0, 0x1E6978980, type metadata accessor for PhotoKitItemListManager);
  sub_1A3C6C180(&v28);
  v36 = v28;
  v37 = v29;
  sub_1A3C6C18C(&v34);
  v32 = v34;
  v33 = v35;
  v19 = sub_1A3C5A374();
  v20 = sub_1A3C30368();
  v21 = sub_1A3C5A374();
  v22 = sub_1A3C5A374();
  v23 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v36, 0, &unk_1F16F9290, 0, 1, &v32, v19 & 1, &v38, v31, v20, v21 & 1, v22 & 1, v23 & 1, v17);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v24 = swift_allocObject();
  *(v24 + 16) = a7;
  *(v24 + 24) = a8;
  *(v24 + 32) = a4;
  *(v24 + 40) = a5;
  *(v24 + 48) = a6 & 1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A414DEC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_1A5244EE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980);
  result = sub_1A414E0D4();
  if (!result)
  {
    result = sub_1A414E16C(a1, v12);
    if (!result)
    {
      sub_1A414E218(0, &qword_1EB129FE8, &qword_1EB1265C0, 0x1E6978980, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
      ResultProvider = PhotoKitItemListManager.FetchResultProviderInput.photoLibrary.getter();
      (*(v9 + 104))(v11, *MEMORY[0x1E69C12A8], v8);
      v15 = sub_1A414E968(ResultProvider, v11, a2, a3, a4 & 1);

      (*(v9 + 8))(v11, v8);
      return v15;
    }
  }

  return result;
}

void sub_1A414E050(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = *a3;
  type metadata accessor for PeopleUnifiedItemListManager(0, a2);
  v4 = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A414E0D4()
{
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = [v0 simulateEmptyShelves];

  result = 0;
  if (v1)
  {
    sub_1A3C52C70(0, &qword_1EB126C40, 0x1E6978840);
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  return result;
}

id sub_1A414E16C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) || (type metadata accessor for LemonadePeopleProgressStatus(0), type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput(0, a2, v3, v4), ResultProvider = PhotoKitItemListManager.FetchResultProviderInput.photoLibrary.getter(), sub_1A3F53C40(ResultProvider), ResultProvider, v6 = sub_1A3F546F4(), , result = 0, v6 != 4))
  {
    sub_1A3C52C70(0, &qword_1EB126C40, 0x1E6978840);
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  return result;
}

void sub_1A414E218(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

id sub_1A414E280(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5244684();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && *(a2 + 16))
  {
    v9 = objc_allocWithZone(MEMORY[0x1E6978840]);

    return [v9 init];
  }

  else
  {
    v11 = v6;
    v12 = sub_1A3C52C70(0, &unk_1EB12B198, 0x1E6978AE8);
    result = sub_1A414E0D4();
    if (!result)
    {
      result = sub_1A414E16C(a1, v12);
      if (!result)
      {
        sub_1A414E218(0, &qword_1EB12A018, &unk_1EB12B198, 0x1E6978AE8, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
        ResultProvider = PhotoKitItemListManager.FetchResultProviderInput.photoLibrary.getter();
        v32 = [ResultProvider librarySpecificFetchOptions];

        sub_1A3CB8F68();
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1A52FF960;
        sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
        sub_1A3E072BC(0);
        v15 = swift_allocObject();
        v33 = xmmword_1A52FC9F0;
        *(v15 + 16) = xmmword_1A52FC9F0;
        v16 = MEMORY[0x1E69E6158];
        *(v15 + 56) = MEMORY[0x1E69E6158];
        v17 = v16;
        v18 = sub_1A3D710E8();
        *(v15 + 64) = v18;
        *(v15 + 32) = 1701869940;
        *(v15 + 40) = 0xE400000000000000;
        v19 = MEMORY[0x1E69E7660];
        *(v15 + 96) = MEMORY[0x1E69E75F8];
        *(v15 + 104) = v19;
        *(v15 + 72) = 10;
        *(v14 + 32) = sub_1A524D134();
        v20 = swift_allocObject();
        *(v20 + 16) = v33;
        *(v20 + 56) = v17;
        *(v20 + 64) = v18;
        *(v20 + 32) = 0x747865746E6F63;
        *(v20 + 40) = 0xE700000000000000;
        (*(v5 + 104))(v8, *MEMORY[0x1E69C0F78], v11);
        v21 = sub_1A5244674();
        v23 = v22;
        (*(v5 + 8))(v8, v11);
        v24 = MEMORY[0x1E69E6158];
        *(v20 + 96) = MEMORY[0x1E69E6158];
        *(v20 + 104) = v18;
        *(v20 + 72) = v21;
        *(v20 + 80) = v23;
        *(v14 + 40) = sub_1A524D134();
        v25 = swift_allocObject();
        *(v25 + 16) = v33;
        *(v25 + 56) = v24;
        *(v25 + 64) = v18;
        strcpy((v25 + 32), "featuredState");
        *(v25 + 46) = -4864;
        *(v25 + 96) = MEMORY[0x1E69E75F8];
        *(v25 + 104) = MEMORY[0x1E69E7660];
        *(v25 + 72) = 1;
        *(v14 + 48) = sub_1A524D134();
        v26 = sub_1A524CA14();

        v27 = [objc_opt_self() andPredicateWithSubpredicates_];

        v28 = v32;
        [v32 setPredicate_];

        v29 = v28;
        v30 = [objc_opt_self() fetchSuggestionsWithOptions_];

        return v30;
      }
    }
  }

  return result;
}

uint64_t sub_1A414E6C8(void *a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v10 = sub_1A5244EE4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 librarySpecificFetchOptions];
  v16 = v15;
  if ((a3 & 1) == 0)
  {
    [v15 setFetchLimit_];
  }

  if (a5)
  {
    [v16 setSocialGroupContext_];
  }

  v17 = *MEMORY[0x1E69C12A8];
  if (a4)
  {
    (*(v11 + 104))(v14, v17, v10);
    sub_1A5244EF4();
    swift_allocObject();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  (*(v11 + 104))(v14, v17, v10);
  sub_1A5244EF4();
  swift_allocObject();
  v18 = v16;
  v19 = a1;
  sub_1A5244ED4();
  sub_1A5244BF4();
  v20 = sub_1A5244BE4();

  return v20;
}

uint64_t sub_1A414E920(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A414E968(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = sub_1A5244EE4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 librarySpecificFetchOptions];
  if (a5)
  {
    v16 = [objc_opt_self() px_defaultDetectionTypes];
    if (!v16)
    {
      sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
      sub_1A524CA34();
      v16 = sub_1A524CA14();
    }

    [v15 setIncludedDetectionTypes_];
  }

  if (a4 && *(a4 + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  [v15 setFetchLimit_];
  (*(v11 + 16))(v14, a2, v10);
  sub_1A5244EF4();
  swift_allocObject();
  v17 = v15;
  v18 = a1;
  sub_1A5244ED4();
  sub_1A52446A4();
  v19 = sub_1A5244694();

  return v19;
}

uint64_t sub_1A414EC60(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1A414EDEC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 24) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
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
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_1A414F044(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1A414F08C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A414F0D0()
{
  result = qword_1EB124248;
  if (!qword_1EB124248)
  {
    sub_1A414F180(255);
    sub_1A414D5D0();
    sub_1A414E920(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124248);
  }

  return result;
}

void sub_1A414F180(uint64_t a1)
{
  if (!qword_1EB124240)
  {
    sub_1A414F214(255, &qword_1EB125B98, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8], type metadata accessor for SocialGroupView);
    sub_1A5249F54();
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB124240);
    }
  }
}

void sub_1A414F214(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A414F2B0()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for AssetsRecoveryNotificationItem(0);
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v9 = sub_1A5241144();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - v15;
  v17 = v1[2];
  if (![v17 shouldShowBanner] || (v18 = objc_msgSend(v17, sel_lastRecoveredAsset)) == 0)
  {
    swift_beginAccess();

    sub_1A52458B4();
  }

  v38 = v9;
  v39 = v2;
  v37 = v18;
  v19 = [v18 uuid];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1A524C674();
    v35 = v22;
    v36 = v21;

    sub_1A5241104();
    v23 = [v17 bannerTitle];
    v24 = sub_1A524C674();
    v33 = v25;
    v34 = v24;

    v26 = [v17 bannerSubtitle];
    v27 = sub_1A524C674();
    v29 = v28;

    (*(v10 + 16))(v12, v16, v38);
    v41[3] = v39;
    v41[4] = &off_1F16F9360;
    v41[0] = v1;

    sub_1A4424DA0(v36, v35, v12, v34, v33, v27, v29, v41, v8);
    v41[0] = v1;
    sub_1A4150524(v8, v5);
    v30 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v31 = swift_allocObject();
    sub_1A4150588(v5, v31 + v30);
    sub_1A4150488(&qword_1EB133460, v32, type metadata accessor for AssetsRecoveryNotificationListManager, &unk_1A531E6A8);
    sub_1A5245F44();
  }

  __break(1u);
}

double sub_1A414FAD8()
{
  swift_beginAccess();

  return result;
}

void (*sub_1A414FC58(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 16);
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + 48);

  return sub_1A414FCF0;
}

void sub_1A414FCF0(uint64_t a1, char a2)
{
  v2 = *(*a1 + 24);
  if (a2)
  {

    sub_1A414F9A0(v3);
  }

  sub_1A414F9A0(v2);
}

void sub_1A414FD54(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  sub_1A5246184();
}

uint64_t sub_1A414FDCC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A414FE04()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

double sub_1A414FE5C@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 48);

  return result;
}

double sub_1A414FEA4()
{
  swift_beginAccess();

  return result;
}

double sub_1A414FEDC@<D0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  v5 = *v3;
  type metadata accessor for AssetsRecoveryNotificationListManager.Mutator(a2, a3);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *a1 = v6;

  return result;
}

void sub_1A414FF40(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  sub_1A4150488(&qword_1EB129548, a2, type metadata accessor for AssetsRecoveryNotificationListManager, &unk_1A531E77C);

  sub_1A5245C54();
}

void sub_1A414FFC4(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  sub_1A4150488(&qword_1EB133460, a2, type metadata accessor for AssetsRecoveryNotificationListManager, &unk_1A531E6A8);

  sub_1A5245F44();
}

id sub_1A4150048@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 56);
  *a1 = v2;
  return v2;
}

uint64_t sub_1A4150488(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double sub_1A41504D0()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A414F2B0();
  }

  return result;
}

uint64_t sub_1A4150524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetsRecoveryNotificationItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4150588(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetsRecoveryNotificationItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A41505EC(uint64_t *a1)
{
  v3 = *(type metadata accessor for AssetsRecoveryNotificationItem(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1A414F6D0(a1, v4);
}

uint64_t sub_1A415065C(uint64_t a1)
{
  v2 = type metadata accessor for AssetsRecoveryNotificationItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A41506B8(uint64_t a1)
{
  if (!qword_1EB133468)
  {
    type metadata accessor for AssetsRecoveryNotificationItem(255);
    v1 = sub_1A524EA54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB133468);
    }
  }
}

uint64_t sub_1A4150714()
{
  sub_1A3CB4D08();
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EB1EADC8);
  __swift_project_value_buffer(v1, qword_1EB1EADC8);
  sub_1A41533A4(0, &qword_1EB12B120, MEMORY[0x1E6982AA0], MEMORY[0x1E69E6F90]);
  sub_1A52475B4();
  *(swift_allocObject() + 16) = xmmword_1A52F8E10;
  sub_1A52475A4();
  return sub_1A52477C4();
}