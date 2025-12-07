uint64_t sub_1AC399CF8@<X0>(uint64_t a1@<X8>)
{
  v4 = *MEMORY[0x1E6981630];
  v2 = sub_1AC3B7C94();
  return (*(*(v2 - 8) + 104))(a1, v4);
}

uint64_t sub_1AC399D64(uint64_t a1)
{
  v3 = *(a1 + *(type metadata accessor for ModernPlaceCard(0) + 36));

  v3(v1);
}

uint64_t sub_1AC399E00@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E697F468];
  v1 = sub_1AC3B77E4();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_1AC399EA8()
{
  result = sub_1AC3B7F54();
  qword_1EB555218 = result;
  qword_1EB555220 = v1;
  return result;
}

uint64_t *sub_1AC399EEC()
{
  if (qword_1EB554398 != -1)
  {
    swift_once();
  }

  return &qword_1EB555218;
}

uint64_t static SwiftUIKitCell.swiftUIHostKey.getter()
{
  v1 = *sub_1AC399EEC();

  return v1;
}

id sub_1AC399FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = 0;
  v17 = a1;
  v15 = a2;
  v16 = a3;
  v14 = a4;

  if (a3)
  {
    v8 = sub_1AC3B7EE4();

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v13.receiver = 0;
  v13.super_class = type metadata accessor for SwiftUIKitCell(0, v4);
  v7 = objc_msgSendSuper2(&v13, sel_initWithStyle_reuseIdentifier_specifier_, a1, v9, a4);
  MEMORY[0x1E69E5920](v9);
  if (v7)
  {
    MEMORY[0x1E69E5928](v7);
    v18 = v7;
    [v7 setAccessoryType_];
    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](a4);

    MEMORY[0x1E69E5920](v18);
    return v7;
  }

  else
  {
    MEMORY[0x1E69E5920](0);
    MEMORY[0x1E69E5920](a4);

    return 0;
  }
}

id sub_1AC39A2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v13 = a1;
  v11 = a2;
  v12 = a3;

  if (a3)
  {
    v6 = sub_1AC3B7EE4();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = 0;
  v10.super_class = type metadata accessor for SwiftUIKitCell(0, v3);
  v5 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_, a1, v7);
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5928](v5);
  v14 = v5;
  [v5 setAccessoryType_];
  MEMORY[0x1E69E5920](v5);

  MEMORY[0x1E69E5920](v14);
  return v5;
}

id SwiftUIKitCell.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

void SwiftUIKitCell.init(coder:)()
{
  sub_1AC3B7F54();
  sub_1AC3B84A4();
  __break(1u);
}

uint64_t sub_1AC39A600(void *a1)
{
  v109 = a1;
  v129 = 0;
  v128 = 0;
  v99 = 0;
  v118 = 0;
  v113 = 0;
  v100 = sub_1AC3B7524();
  v101 = *(v100 - 8);
  v102 = v101;
  MEMORY[0x1EEE9AC00](v100 - 8);
  v103 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555318, &qword_1AC3BBAC8);
  v105 = *(v104 - 8);
  v106 = v105;
  v107 = (*(v105 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v30 - v107;
  v129 = v3;
  v128 = v1;
  v4 = v3;
  if (v109)
  {
    v97 = v109;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v95 = v97;
  v96 = [v97 userInfo];
  if (v96)
  {
    v94 = v96;
    v93 = v96;
    v92 = v110;
    sub_1AC3B8384();
    sub_1AC377D20(v92, &v124);
    swift_unknownObjectRelease();
  }

  else
  {
    v124 = 0uLL;
    v125 = 0uLL;
  }

  v127 = v125;
  v126 = v124;

  if (*(&v127 + 1))
  {
    sub_1AC39B678(0, v5);
    if (swift_dynamicCast())
    {
      v91 = v110[4];
    }

    else
    {
      v91 = 0;
    }

    v90 = v91;
  }

  else
  {
    sub_1AC38FF40(&v126);
    v90 = 0;
  }

  v89 = v90;
  if (v90)
  {
    v88 = v89;
    v84 = v89;
    v118 = v89;
    v6 = sub_1AC399EEC();
    v77 = *v6;
    v78 = v6[1];

    v116[3] = MEMORY[0x1E69E6158];
    v116[0] = v77;
    v116[1] = v78;
    v81 = MEMORY[0x1E69E6158];
    __swift_project_boxed_opaque_existential_0(v116, MEMORY[0x1E69E6158]);
    v79 = *(v81 - 8);
    v80 = v79;
    v83 = &v30;
    v7 = MEMORY[0x1EEE9AC00](&v30);
    v82 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v80 + 16))(v7);
    v85 = sub_1AC3B8584();
    (*(v80 + 8))(v82, v81);
    v87 = [v84 __swift_objectForKeyedSubscript_];
    v86 = v87;
    swift_unknownObjectRelease();
    if (v87)
    {
      v76 = v86;
      v75 = v86;
      v74 = v111;
      sub_1AC3B8384();
      sub_1AC377D20(v74, &v114);
      swift_unknownObjectRelease();
    }

    else
    {
      v114 = 0uLL;
      v115 = 0uLL;
    }

    v117[1] = v115;
    v117[0] = v114;
    if (*(&v115 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555328, &qword_1AC3BBAD0);
      if (swift_dynamicCast())
      {
        v73 = v111[4];
      }

      else
      {
        v73 = 0;
      }

      v71 = v73;
      __swift_destroy_boxed_opaque_existential_1(v116);
      v72 = v71;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v116);
      sub_1AC38FF40(v117);
      v72 = 0;
    }

    v70 = v72;
    if (v72)
    {
      v69 = v70;
      v67 = v70;
      v113 = v70;
      v9 = v98;
      v10 = v67;
      v63 = &v30;
      MEMORY[0x1EEE9AC00](&v30);
      sub_1AC3B78D4();

      v64 = sub_1AC3B7914();
      v112[3] = v104;
      v112[4] = sub_1AC39C1D8();
      v65 = v112;
      __swift_allocate_boxed_opaque_existential_1(v112);
      sub_1AC3B78C4();
      (*(v106 + 8))(v108, v104);
      MEMORY[0x1AC5B25D0](v65);

      v11 = v98;
      [v98 setAccessoryType_];

      v12 = v98;
      v66 = [objc_opt_self() clearColor];
      [v98 setBackgroundColor_];

      return v99;
    }
  }

  v13 = v103;
  v14 = sub_1AC394550();
  (*(v102 + 16))(v13, v14, v100);
  v15 = v109;
  v51 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v109;
  sub_1AC38FFE4();

  v62 = sub_1AC3B7504();
  v47 = v62;
  v61 = sub_1AC3B8254();
  v48 = v61;
  v49 = 17;
  v55 = swift_allocObject();
  v50 = v55;
  *(v55 + 16) = 64;
  v56 = swift_allocObject();
  v52 = v56;
  *(v56 + 16) = 8;
  v16 = swift_allocObject();
  v17 = v53;
  v59 = v16;
  v54 = v16;
  *(v16 + 16) = sub_1AC38FFDC;
  *(v16 + 24) = v17;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5549B0, &unk_1AC3BAF60);
  v57 = sub_1AC3B8574();
  v58 = v18;

  v19 = v55;
  v20 = v58;
  *v58 = sub_1AC377AC0;
  v20[1] = v19;

  v21 = v56;
  v22 = v58;
  v58[2] = sub_1AC377AC0;
  v22[3] = v21;

  v23 = v57;
  v24 = v58;
  v25 = v59;
  v26 = v60;
  v58[4] = sub_1AC3936DC;
  v24[5] = v25;
  sub_1AC36EE1C(v23, v26);

  if (os_log_type_enabled(v62, v61))
  {
    v27 = v99;
    v40 = sub_1AC3B8334();
    v37 = v40;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F90, &qword_1AC3BB7E0);
    v43 = 1;
    v41 = sub_1AC374C60(1, v38, v38);
    v39 = v41;
    v42 = sub_1AC374C60(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v123 = v40;
    v122 = v41;
    v121 = v42;
    v44 = &v123;
    sub_1AC374CB4(2, &v123);
    sub_1AC374CB4(v43, v44);
    v119 = sub_1AC377AC0;
    v120 = v50;
    sub_1AC374CC8(&v119, v44, &v122, &v121);
    v45 = v27;
    v46 = v27;
    if (v27)
    {
      v35 = 0;

      __break(1u);
    }

    else
    {
      v119 = sub_1AC377AC0;
      v120 = v52;
      sub_1AC374CC8(&v119, &v123, &v122, &v121);
      v33 = 0;
      v34 = 0;
      v119 = sub_1AC3936DC;
      v120 = v54;
      sub_1AC374CC8(&v119, &v123, &v122, &v121);
      v31 = 0;
      v32 = 0;
      _os_log_impl(&dword_1AC345000, v47, v48, "SwiftUIKitCell refreshCellContents dependencies not meet no host for %@", v37, 0xCu);
      sub_1AC374D14(v39, 1, v38);
      sub_1AC374D14(v42, 0, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC3B8314();

      v36 = v31;
    }
  }

  else
  {
    v28 = v99;

    v36 = v28;
  }

  v30 = v36;

  (*(v102 + 8))(v103, v100);
  return v30;
}

void sub_1AC39B1C4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7[0] = 0;
  v7[1] = a1;
  sub_1AC3B7894();
  v6[0] = v6[1];
  v4 = MEMORY[0x1E6981910];
  sub_1AC35745C(v6, MEMORY[0x1E6981910], v7);
  sub_1AC367428(v6);
  v2 = v7[0];

  v5 = v2;
  sub_1AC35745C(&v5, v4, a2);
  sub_1AC367428(&v5);
  sub_1AC367428(v7);
}

id SwiftUIKitCell.__deallocating_deinit(__n128 a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for SwiftUIKitCell(0, a3);
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_1AC39B388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4[1] = 0;
  v12 = sub_1AC3B76A4();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v11 = v4 - v5;
  v15 = sub_1AC3B77B4();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v15);
  v16 = v4 - v7;
  (*(v13 + 16))(v4 - v7, v2);
  sub_1AC3B7794();
  (*(v8 + 32))(v10, v11, v12);
  return (*(v13 + 8))(v16, v15);
}

uint64_t sub_1AC39B518(uint64_t a1)
{
  v4 = a1;
  v1 = sub_1AC3B76A4();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v7 = &v4 - v5;
  (*(v6 + 16))(v2);
  return sub_1AC3B77A4();
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

unint64_t sub_1AC39B678(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB555230;
  if (!qword_1EB555230)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB555230);
    return ObjCClassMetadata;
  }

  return v4;
}

void *sub_1AC39B6DC(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555240, &qword_1AC3BB9F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1AC3B76A4();
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

void *sub_1AC39B7B0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555240, &qword_1AC3BB9F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1AC3B76A4();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

void *sub_1AC39B84C(void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_1AC39B7B0(a2);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555240, &qword_1AC3BB9F0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_1AC3B76A4();
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

uint64_t type metadata accessor for ModernPlaceCard(uint64_t a1)
{
  v2 = qword_1EB555330;
  if (!qword_1EB555330)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void *sub_1AC39B9AC(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555240, &qword_1AC3BB9F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1AC3B76A4();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v24 = *a1;

    *a2 = v24;
  }

  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for ModernPlaceCard(0);
  v9 = v17[5];
  v10 = *(a1 + v9);

  *(a2 + v9) = v10;
  v11 = (a2 + v17[6]);
  v3 = (a1 + v17[6]);
  *v11 = *v3;
  v12 = v3[1];

  v11[1] = v12;
  v13 = (a2 + v17[7]);
  v4 = (a1 + v17[7]);
  *v13 = *v4;
  v14 = v4[1];

  v13[1] = v14;
  v15 = (a2 + v17[8]);
  v5 = (a1 + v17[8]);
  *v15 = *v5;
  v16 = v5[1];

  v15[1] = v16;
  v6 = v17[9];
  v19 = (a2 + v6);
  v18 = *(a1 + v6);
  v20 = *(a1 + v6 + 8);

  *v19 = v18;
  v19[1] = v20;
  v7 = v17[10];
  v22 = (a2 + v7);
  v21 = *(a1 + v7);
  v23 = *(a1 + v7 + 8);

  result = a2;
  *v22 = v21;
  v22[1] = v23;
  return result;
}

void *sub_1AC39BC04(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555240, &qword_1AC3BB9F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1AC3B76A4();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  type metadata accessor for ModernPlaceCard(0);

  return a1;
}

unint64_t sub_1AC39BD3C()
{
  v2 = qword_1EB555268;
  if (!qword_1EB555268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555260, &qword_1AC3BBA40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555268);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39BDC4()
{
  v2 = qword_1EB555270;
  if (!qword_1EB555270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555248, &qword_1AC3BBA28);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555270);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39BE4C()
{
  v2 = qword_1EB5552C0;
  if (!qword_1EB5552C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555250, &qword_1AC3BBA30);
    sub_1AC39BDC4();
    sub_1AC39BEF4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5552C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39BEF4()
{
  v2 = qword_1EB5552C8;
  if (!qword_1EB5552C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5552D0, &qword_1AC3BBA98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5552C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39BF7C(double a1)
{
  v3 = qword_1EB5552D8;
  if (!qword_1EB5552D8)
  {
    sub_1AC3B7754();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5552D8);
    return WitnessTable;
  }

  return v3;
}

uint64_t sub_1AC39BFFC(uint64_t a1, double a2)
{
  v4 = *(sub_1AC3B7754() + 20);
  v2 = sub_1AC3B77E4();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

unint64_t sub_1AC39C078()
{
  v2 = qword_1EB5552E0;
  if (!qword_1EB5552E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555258, &qword_1AC3BBA38);
    sub_1AC39BE4C();
    sub_1AC39C120();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5552E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39C120()
{
  v2 = qword_1EB5552E8;
  if (!qword_1EB5552E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5552F0, &qword_1AC3BBAA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5552E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39C1D8()
{
  v2 = qword_1EB555320;
  if (!qword_1EB555320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555318, &qword_1AC3BBAC8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555320);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39C30C(uint64_t a1)
{
  v4 = sub_1AC39C41C(319);
  if (v1 <= 0x3F)
  {
    v4 = sub_1AC39C4B8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

unint64_t sub_1AC39C41C(uint64_t a1)
{
  v5 = qword_1EB555340;
  if (!qword_1EB555340)
  {
    sub_1AC3B76A4();
    v4 = sub_1AC3B76D4();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EB555340);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1AC39C4B8()
{
  v2 = qword_1EB555348;
  if (!qword_1EB555348)
  {
    FunctionTypeMetadata0 = swift_getFunctionTypeMetadata0();
    atomic_store(FunctionTypeMetadata0, &qword_1EB555348);
    return FunctionTypeMetadata0;
  }

  return v2;
}

unint64_t sub_1AC39C52C()
{
  v2 = qword_1EB555360;
  if (!qword_1EB555360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555358, &qword_1AC3BBC10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555360);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39C5B4()
{
  v2 = qword_1EB555368;
  if (!qword_1EB555368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555350, &qword_1AC3BBC08);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555368);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39C63C()
{
  v2 = qword_1EB555370;
  if (!qword_1EB555370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555310, &qword_1AC3BBAC0);
    sub_1AC39C5B4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555370);
    return WitnessTable;
  }

  return v2;
}

__n128 sub_1AC39C6E0(char *a1, char *a2)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555240, &qword_1AC3BB9F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1AC3B76A4();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v15 - 8) + 64));
  }

  v3 = type metadata accessor for ModernPlaceCard(0);
  *&a2[v3[5]] = *&a1[v3[5]];
  *&a2[v3[6]] = *&a1[v3[6]];
  *&a2[v3[7]] = *&a1[v3[7]];
  result = *&a1[v3[8]];
  *&a2[v3[8]] = result;
  v5 = &a2[v3[9]];
  v6 = &a1[v3[9]];
  v7 = *v6;
  v8 = *(v6 + 1);
  *v5 = v7;
  *(v5 + 1) = v8;
  v9 = &a2[v3[10]];
  v10 = &a1[v3[10]];
  v11 = *v10;
  v12 = *(v10 + 1);
  *v9 = v11;
  *(v9 + 1) = v12;
  return result;
}

uint64_t sub_1AC39C850()
{
  v1 = *(type metadata accessor for ModernPlaceCard(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1AC399D64(v2);
}

unint64_t sub_1AC39C8B4()
{
  v2 = qword_1EB555378;
  if (!qword_1EB555378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EB554BC0, &qword_1AC3BB158);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555378);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39C93C()
{
  v2 = qword_1EB555380;
  if (!qword_1EB555380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5552B8, &qword_1AC3BBA90);
    sub_1AC39C8B4();
    sub_1AC39C9E4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555380);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39C9E4()
{
  v2 = qword_1EB555388;
  if (!qword_1EB555388)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555388);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC39CA5C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB554BC0, &qword_1AC3BB158);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5552B8, &qword_1AC3BBA90);

  return a1;
}

uint64_t sub_1AC39CAEC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB554BC0, &qword_1AC3BB158);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5552B8, &qword_1AC3BBA90) + 36);
  v7 = *(a1 + v6);

  result = a2;
  *(a2 + v6) = v7;
  return result;
}

unint64_t sub_1AC39CB9C()
{
  v2 = qword_1EB555398;
  if (!qword_1EB555398)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555398);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39CC14()
{
  v2 = qword_1EB5553A8;
  if (!qword_1EB5553A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5553A0, &qword_1AC3BBC20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5553A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39CCBC()
{
  v2 = qword_1EB5553B8;
  if (!qword_1EB5553B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5553B0, &qword_1AC3BBC28);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5553B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39CD44()
{
  v2 = qword_1EB5553C8;
  if (!qword_1EB5553C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5553C0, &qword_1AC3BBC30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5553C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC39CDCC(uint64_t a1)
{
  sub_1AC364A88(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  sub_1AC364A88(*(a1 + 56), *(a1 + 64), *(a1 + 72) & 1);

  return a1;
}

unint64_t sub_1AC39CE38()
{
  v2 = qword_1EB5553D8;
  if (!qword_1EB5553D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5553D0, &qword_1AC3BBC38);
    sub_1AC39CD44();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5553D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39CEE4()
{
  v2 = qword_1EB5553E8;
  if (!qword_1EB5553E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5553E0, &qword_1AC3BBC40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5553E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39CF6C()
{
  v2 = qword_1EB5553F0;
  if (!qword_1EB5553F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555390, &qword_1AC3BBC18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5553F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC39CFF4(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5552A0, &qword_1AC3BBA70) + 44);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5552A8, &qword_1AC3BBA78);
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

unint64_t sub_1AC39D080()
{
  v2 = qword_1EB5553F8;
  if (!qword_1EB5553F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555300, &qword_1AC3BBAB0);
    sub_1AC39CF6C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5553F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39D124()
{
  v2 = qword_1EB555400;
  if (!qword_1EB555400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555308, &qword_1AC3BBAB8);
    sub_1AC39D080();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555400);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC39D1C8(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5552A0, &qword_1AC3BBA70) + 44);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5552A8, &qword_1AC3BBA78);
  (*(*(v2 - 8) + 16))();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5552F8, &qword_1AC3BBAA8);
  v4 = a1 + v9 + *(v3 + 48);
  v5 = a2 + v9 + *(v3 + 48);
  *v5 = *v4;
  *(v5 + 8) = *(v4 + 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555300, &qword_1AC3BBAB0);
  memcpy((a2 + *(v6 + 36)), (a1 + *(v6 + 36)), 0x70uLL);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555308, &qword_1AC3BBAB8);
  memcpy((a2 + *(v7 + 36)), (a1 + *(v7 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_1AC39D338()
{
  v1 = *(type metadata accessor for ModernPlaceCard(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1AC39971C(v2);
}

unint64_t sub_1AC39D39C()
{
  v2 = qword_1EB555410;
  if (!qword_1EB555410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555408, &qword_1AC3BBC48);
    sub_1AC388890();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555410);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39D440()
{
  v2 = qword_1EB555418;
  if (!qword_1EB555418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5552A8, &qword_1AC3BBA78);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555418);
    return WitnessTable;
  }

  return v2;
}

void *sub_1AC39D4C8(void *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  a2[1] = v4;
  v5 = a1[2];

  a2[2] = v5;
  v6 = a1[3];

  a2[3] = v6;
  v8 = a1[4];

  a2[4] = v8;
  memcpy(a2 + 5, a1 + 5, 0x30uLL);
  return a2;
}

uint64_t sub_1AC39D590()
{
  v1 = sub_1AC3B7524();
  __swift_allocate_value_buffer(v1, qword_1EB555840);
  __swift_project_value_buffer(v1, qword_1EB555840);
  sub_1AC3B7F54();
  sub_1AC3B7F54();
  return sub_1AC3B7514();
}

uint64_t sub_1AC39D634()
{
  if (qword_1EB5543A0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B7524();
  return __swift_project_value_buffer(v0, qword_1EB555840);
}

uint64_t sub_1AC39D6A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC39D634();
  v1 = sub_1AC3B7524();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t AnyBindable.identity.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t AnyBindable.name.getter()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_1AC39D7BC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 24);
    *(a2 + 24) = v2;
    (**(v2 - 8))();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return a2;
}

uint64_t AnyBindable.getAction.getter()
{
  v2 = *(v0 + 112);
  sub_1AC39D93C(v2, *(v0 + 120));
  return v2;
}

uint64_t sub_1AC39D93C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t AnyBindable.setAction.getter()
{
  v2 = *(v0 + 128);
  sub_1AC39D93C(v2, *(v0 + 136));
  return v2;
}

uint64_t AnyBindable.buttonTapAction.getter()
{
  v2 = *(v0 + 144);
  sub_1AC39D93C(v2, *(v0 + 152));
  return v2;
}

void *AnyBindable.init(identity:name:target:getSelector:setSelector:cell:buttonAction:group:detail:getAction:setAction:buttonTapAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, __int128 a13, __int128 a14, __int128 a15)
{
  *&v18 = a6;
  *(&v18 + 1) = a7;
  memset(__b, 0, sizeof(__b));
  v34 = a1;
  v35 = a2;
  v32 = a3;
  v33 = a4;
  v31 = a5;
  v29 = *(&v18 + 1);
  v30 = v18;
  v28 = a8;
  v27 = a10;
  v26 = a11 & 1;
  v25 = a12;
  v24[4] = a13;
  v24[3] = a14;
  v24[2] = a15;

  *&__b[0] = a1;
  *(&__b[0] + 1) = a2;

  *&__b[1] = a3;
  *(&__b[1] + 1) = a4;
  sub_1AC39D7BC(a5, v24);
  __b[2] = v24[0];
  __b[3] = v24[1];
  __b[4] = v18;
  *&__b[5] = a8;
  *(&__b[5] + 1) = a10;
  LOBYTE(__b[6]) = a11;
  *(&__b[6] + 1) = a12;
  sub_1AC39D93C(a13, *(&a13 + 1));
  __b[7] = a13;
  sub_1AC39D93C(a14, *(&a14 + 1));
  __b[8] = a14;
  sub_1AC39D93C(a15, *(&a15 + 1));
  __b[9] = a15;
  sub_1AC39DC9C(__b, a9);
  sub_1AC39DEAC(a15, *(&a15 + 1));
  sub_1AC39DEAC(a14, *(&a14 + 1));
  sub_1AC39DEAC(a13, *(&a13 + 1));
  sub_1AC38FF40(a5);

  return sub_1AC39DEE0(__b);
}

uint64_t sub_1AC39DC9C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v10 = *(a1 + 8);

  *(a2 + 8) = v10;
  *(a2 + 16) = *(a1 + 16);
  v13 = *(a1 + 24);

  *(a2 + 24) = v13;
  if (*(a1 + 56))
  {
    v2 = *(a1 + 56);
    *(a2 + 56) = v2;
    (**(v2 - 8))(a2 + 32, a1 + 32);
  }

  else
  {
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 48) = *(a1 + 48);
  }

  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 104) = *(a1 + 104);
  if (*(a1 + 112))
  {
    v8 = *(a1 + 112);
    v9 = *(a1 + 120);

    *(a2 + 112) = v8;
    *(a2 + 120) = v9;
  }

  else
  {
    *(a2 + 112) = *(a1 + 112);
  }

  if (*(a1 + 128))
  {
    v6 = *(a1 + 128);
    v7 = *(a1 + 136);

    *(a2 + 128) = v6;
    *(a2 + 136) = v7;
  }

  else
  {
    *(a2 + 128) = *(a1 + 128);
  }

  if (*(a1 + 144))
  {
    v4 = *(a1 + 144);
    v5 = *(a1 + 152);

    *(a2 + 144) = v4;
    *(a2 + 152) = v5;
  }

  else
  {
    *(a2 + 144) = *(a1 + 144);
  }

  return a2;
}

uint64_t sub_1AC39DEAC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void *sub_1AC39DEE0(void *a1)
{

  if (a1[7])
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 4);
  }

  if (a1[14])
  {
  }

  if (a1[16])
  {
  }

  if (a1[18])
  {
  }

  return a1;
}

uint64_t sub_1AC39E0BC()
{
  v2 = *(v0 + 16);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1AC39E118()
{
  swift_beginAccess();
  v2 = *(v0 + 24);

  swift_endAccess();
  return v2;
}

double sub_1AC39E190(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 24) = a1;

  swift_endAccess();

  return result;
}

uint64_t PSSpecifierGroupBuilder.init(_:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AC393AEC(0, a2);
  *(v4 + 24) = sub_1AC3B8574();
  v20 = objc_opt_self();

  if (a2)
  {
    v16 = sub_1AC3B7EE4();

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (a4)
  {
    v14 = sub_1AC3B7EE4();

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v13 = [v20 groupSpecifierWithID:v17 name:?];
  MEMORY[0x1E69E5920](v15);
  MEMORY[0x1E69E5920](v17);
  if (v13)
  {
    v12 = v13;
  }

  else
  {
    LOBYTE(v6) = 2;
    v7 = 64;
    LODWORD(v8) = 0;
    sub_1AC3B8494();
    __break(1u);
  }

  *(v19 + 16) = v12;
  v11 = *(v19 + 16);
  MEMORY[0x1E69E5928](v11);

  if (a2)
  {
    v9 = sub_1AC3B7EE4();

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  [v11 setIdentifier_];
  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5920](v11);
  MEMORY[0x1E69E5928](*(v19 + 16));
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555160, &qword_1AC3BBC60);
  sub_1AC3B80C4();
  swift_endAccess();

  return v19;
}

uint64_t sub_1AC39E698(void (*a1)(uint64_t))
{

  v4 = *(v1 + 16);
  MEMORY[0x1E69E5928](v4);

  a1(v4);
  MEMORY[0x1E69E5920](v4);

  return v1;
}

void *sub_1AC39E760(uint64_t a1, uint64_t a2)
{
  v49 = v2;
  v46 = a1;
  v62 = 0;
  v60 = 0;
  v57 = 0;
  v48 = *v2;
  v62 = a1;
  v50 = *(v48 + 80);
  v47 = v50;
  v61 = v50;
  v60 = v2;
  v51 = objc_opt_self();
  v52 = *(v48 + 88);
  v53 = (*(v52 + 16))(v50);
  v54 = v3;
  if (v3)
  {
    v44 = v53;
    v45 = v54;
    v41 = v54;
    v42 = sub_1AC3B7EE4();

    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  v40 = v43;
  (*(v52 + 24))(&v58, v47);
  if (v59)
  {
    v34 = v59;
    v37 = &v58;
    __swift_project_boxed_opaque_existential_0(&v58, v59);
    v32 = *(v34 - 8);
    v33 = v32;
    v36 = &v10;
    v4 = MEMORY[0x1EEE9AC00](&v10);
    v35 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v33 + 16))(v4);
    v38 = sub_1AC3B8584();
    (*(v33 + 8))(v35, v34);
    __swift_destroy_boxed_opaque_existential_1(v37);
    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  v28 = v39;
  v29 = (*(v52 + 40))(v47);
  v30 = (*(v52 + 32))(v47);
  v31 = (*(v52 + 72))(v47);
  if (v31)
  {
    v27 = v31;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v23 = ObjCClassFromMetadata;
  v6 = (*(v52 + 48))(v47);
  v25 = [v51 preferenceSpecifierNamed:v40 target:v28 set:v29 get:v30 detail:v23 cell:v6 edit:0];
  v24 = v25;
  swift_unknownObjectRelease();

  if (v25)
  {
    v22 = v24;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v19 = v22;
  v57 = v22;
  v20 = (*(v52 + 8))(v47);
  v21 = v7;
  if (v7)
  {
    v17 = v20;
    v18 = v21;
    v14 = v21;
    v15 = sub_1AC3B7EE4();

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v11 = v16;
  [v19 setIdentifier_];

  v8 = v19;
  v56 = v19;
  v12 = &v55;
  v13 = sub_1AC39E224();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555160, &qword_1AC3BBC60);
  sub_1AC3B80C4();
  (v13)(v12, 0);

  return v49;
}

void *sub_1AC39EDA0(uint64_t a1)
{
  v11 = 0;
  v10 = 0;
  v2 = *v1;
  v11 = a1;
  v10 = v1;
  v9 = *(v2 + 80);
  sub_1AC379150(a1, v8);
  sub_1AC393AEC(0, v3);
  if (swift_dynamicCast())
  {
    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    MEMORY[0x1E69E5928](v6);
    v5 = sub_1AC39E224();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555160, &qword_1AC3BBC60);
    sub_1AC3B80C4();
    v5();

    MEMORY[0x1E69E5920](v6);
  }

  return v1;
}

uint64_t sub_1AC39EF44(uint64_t a1)
{

  MEMORY[0x1E69E5928](a1);
  v3 = sub_1AC39E224();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555160, &qword_1AC3BBC60);
  sub_1AC3B80C4();
  v3();

  return v4;
}

uint64_t *sub_1AC39F030(uint64_t a1, uint64_t a2)
{
  v10 = *v2;
  v24 = *(*v2 + 80);
  type metadata accessor for HeadphoneSpecifier(0, a2);
  v11 = *(v10 + 88);
  v20 = v11[1](v24);
  v21 = v3;
  v14 = v11[2](v24);
  v15 = v4;
  v16 = v11[11](v24);
  v17 = v5;
  v18 = v11[10](v24);
  v19 = v6;
  v12 = v11[9](v24);
  v13 = v11[6](v24);
  v7 = v11[12](v24);
  v23 = HeadphoneSpecifier.__allocating_init(identifier:name:setAction:getAction:detail:cell:edit:buttonAction:)(v20, v21, v14, v15, v16, v17, v18, v19, v12, v13, 0, v7, v8);

  MEMORY[0x1E69E5928](v23);
  v22 = sub_1AC39E224();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555160, &qword_1AC3BBC60);
  sub_1AC3B80C4();
  v22();

  MEMORY[0x1E69E5920](v23);
  return v2;
}

uint64_t sub_1AC39F400(void (*a1)(), uint64_t a2)
{

  sub_1AC39E118();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555160, &qword_1AC3BBC60);
  sub_1AC3A19EC();
  sub_1AC3B7EA4();

  if (v5)
  {
    a1();

    (MEMORY[0x1E69E5920])();
  }

  else
  {
  }

  return v4;
}

uint64_t PSSpecifierGroupBuilder.deinit()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  sub_1AC358148((v0 + 24));
  return v2;
}

double PSSpecifier.updateSpecifierLinkedFooter(for:linkString:linkTarget:linkSelector:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v176 = a1;
  v177 = a2;
  v188 = a3;
  v189 = a4;
  v173 = a5;
  v174 = a6;
  v152 = sub_1AC385B94;
  v153 = sub_1AC377AC8;
  v154 = sub_1AC385B94;
  v155 = sub_1AC377AC8;
  v156 = sub_1AC385B94;
  v157 = sub_1AC377AC8;
  v158 = sub_1AC377AC0;
  v159 = sub_1AC377AC0;
  v160 = sub_1AC377AD4;
  v161 = sub_1AC377AC0;
  v162 = sub_1AC377AC0;
  v163 = sub_1AC377AD4;
  v164 = sub_1AC377AC0;
  v165 = sub_1AC377AC0;
  v166 = sub_1AC377AD4;
  v218 = 0;
  v219 = 0;
  v216 = 0;
  v217 = 0;
  v215 = 0;
  v214 = 0;
  v213 = 0;
  v211 = 0;
  v212 = 0;
  v167 = 0;
  v203 = 0;
  v204 = 0;
  v191 = 0;
  v168 = sub_1AC3B7524();
  v169 = *(v168 - 8);
  v170 = v168 - 8;
  v171 = (*(v169 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v168);
  v172 = v83 - v171;
  v175 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555428, &qword_1AC3BBC68) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v176);
  v195 = v83 - v175;
  v218 = v7;
  v219 = v8;
  v216 = v9;
  v217 = v10;
  v215 = v11;
  v214 = v12;
  v213 = v6;
  v192 = 1;
  v13 = sub_1AC3B7F54();
  v178 = v14;
  v179 = MEMORY[0x1AC5B22A0](v176, v177, v13);
  v180 = v15;

  v186 = MEMORY[0x1AC5B22A0](v179, v180, v188, v189);
  v187 = v16;

  v211 = v186;
  v212 = v187;

  v185 = sub_1AC3B7EE4();

  v182 = *MEMORY[0x1E69C5900];
  MEMORY[0x1E69E5928](v182);
  sub_1AC3B7EF4();
  v181 = v17;
  v184 = sub_1AC3B7EE4();

  *&v18 = MEMORY[0x1E69E5920](v182).n128_u64[0];
  [v183 setProperty:v185 forKey:{v184, v18}];
  MEMORY[0x1E69E5920](v184);
  swift_unknownObjectRelease();
  v210[2] = v186;
  v210[3] = v187;
  v194 = v210;
  v210[0] = v188;
  v210[1] = v189;
  v19 = sub_1AC3B72A4();
  (*(*(v19 - 8) + 56))(v195, v192);
  v190 = sub_1AC35FEAC();
  v193 = MEMORY[0x1E69E6158];
  sub_1AC3A0E7C();
  v196 = sub_1AC3B8374();
  v197 = v20;
  v198 = v21;
  sub_1AC3A1A74(v195);
  if (v198)
  {
    v40 = v172;
    v41 = sub_1AC39D634();
    (*(v169 + 16))(v40, v41, v168);

    v99 = 32;
    v100 = 7;
    v42 = swift_allocObject();
    v43 = v187;
    v92 = v42;
    *(v42 + 16) = v186;
    *(v42 + 24) = v43;

    v44 = swift_allocObject();
    v45 = v177;
    v94 = v44;
    *(v44 + 16) = v176;
    *(v44 + 24) = v45;

    v46 = swift_allocObject();
    v47 = v189;
    v101 = v46;
    *(v46 + 16) = v188;
    *(v46 + 24) = v47;
    v115 = sub_1AC3B7504();
    v116 = sub_1AC3B8254();
    v97 = 17;
    v103 = swift_allocObject();
    v96 = 32;
    *(v103 + 16) = 32;
    v104 = swift_allocObject();
    v98 = 8;
    *(v104 + 16) = 8;
    v48 = swift_allocObject();
    v49 = v92;
    v93 = v48;
    *(v48 + 16) = v152;
    *(v48 + 24) = v49;
    v50 = swift_allocObject();
    v51 = v93;
    v105 = v50;
    *(v50 + 16) = v153;
    *(v50 + 24) = v51;
    v106 = swift_allocObject();
    *(v106 + 16) = v96;
    v107 = swift_allocObject();
    *(v107 + 16) = v98;
    v52 = swift_allocObject();
    v53 = v94;
    v95 = v52;
    *(v52 + 16) = v154;
    *(v52 + 24) = v53;
    v54 = swift_allocObject();
    v55 = v95;
    v108 = v54;
    *(v54 + 16) = v155;
    *(v54 + 24) = v55;
    v109 = swift_allocObject();
    *(v109 + 16) = v96;
    v110 = swift_allocObject();
    *(v110 + 16) = v98;
    v56 = swift_allocObject();
    v57 = v101;
    v102 = v56;
    *(v56 + 16) = v156;
    *(v56 + 24) = v57;
    v58 = swift_allocObject();
    v59 = v102;
    v112 = v58;
    *(v58 + 16) = v157;
    *(v58 + 24) = v59;
    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5549B0, &unk_1AC3BAF60);
    v111 = sub_1AC3B8574();
    v113 = v60;

    v61 = v103;
    v62 = v113;
    *v113 = v158;
    v62[1] = v61;

    v63 = v104;
    v64 = v113;
    v113[2] = v159;
    v64[3] = v63;

    v65 = v105;
    v66 = v113;
    v113[4] = v160;
    v66[5] = v65;

    v67 = v106;
    v68 = v113;
    v113[6] = v161;
    v68[7] = v67;

    v69 = v107;
    v70 = v113;
    v113[8] = v162;
    v70[9] = v69;

    v71 = v108;
    v72 = v113;
    v113[10] = v163;
    v72[11] = v71;

    v73 = v109;
    v74 = v113;
    v113[12] = v164;
    v74[13] = v73;

    v75 = v110;
    v76 = v113;
    v113[14] = v165;
    v76[15] = v75;

    v77 = v111;
    v78 = v112;
    v79 = v113;
    v80 = v114;
    v113[16] = v166;
    v79[17] = v78;
    sub_1AC36EE1C(v77, v80);

    if (os_log_type_enabled(v115, v116))
    {
      v81 = v167;
      v85 = sub_1AC3B8334();
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F90, &qword_1AC3BB7E0);
      v86 = sub_1AC374C60(0, v84, v84);
      v87 = sub_1AC374C60(3, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v88 = &v209;
      v209 = v85;
      v89 = &v208;
      v208 = v86;
      v90 = &v207;
      v207 = v87;
      sub_1AC374CB4(2, &v209);
      sub_1AC374CB4(3, v88);
      v205 = v158;
      v206 = v103;
      sub_1AC374CC8(&v205, v88, v89, v90);
      v91 = v81;
      if (v81)
      {

        __break(1u);
      }

      else
      {
        v205 = v159;
        v206 = v104;
        sub_1AC374CC8(&v205, &v209, &v208, &v207);
        v83[7] = 0;
        v205 = v160;
        v206 = v105;
        sub_1AC374CC8(&v205, &v209, &v208, &v207);
        v83[6] = 0;
        v205 = v161;
        v206 = v106;
        sub_1AC374CC8(&v205, &v209, &v208, &v207);
        v83[5] = 0;
        v205 = v162;
        v206 = v107;
        sub_1AC374CC8(&v205, &v209, &v208, &v207);
        v83[4] = 0;
        v205 = v163;
        v206 = v108;
        sub_1AC374CC8(&v205, &v209, &v208, &v207);
        v83[3] = 0;
        v205 = v164;
        v206 = v109;
        sub_1AC374CC8(&v205, &v209, &v208, &v207);
        v83[2] = 0;
        v205 = v165;
        v206 = v110;
        sub_1AC374CC8(&v205, &v209, &v208, &v207);
        v83[1] = 0;
        v205 = v166;
        v206 = v112;
        sub_1AC374CC8(&v205, &v209, &v208, &v207);
        _os_log_impl(&dword_1AC345000, v115, v116, "updateSpecifierLinkedFooter: ERROR: range not found footer.range(of: linkString) %s %s %s", v85, 0x20u);
        sub_1AC374D14(v86, 0, v84);
        sub_1AC374D14(v87, 3, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC3B8314();
      }
    }

    else
    {
    }

    v82 = MEMORY[0x1E69E5920](v115);
    (*(v169 + 8))(v172, v168, v82);
  }

  else
  {
    v150 = v196;
    v151 = v197;
    v128 = v197;
    v127 = v196;
    v203 = v196;
    v204 = v197;
    v138 = 0;
    sub_1AC3A263C(0, v22);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v118 = NSStringFromClass(ObjCClassFromMetadata);
    sub_1AC3B7EF4();
    v117 = v24;
    v122 = sub_1AC3B7EE4();

    MEMORY[0x1E69E5920](v118);
    v120 = *MEMORY[0x1E69C58D8];
    MEMORY[0x1E69E5928](v120);
    sub_1AC3B7EF4();
    v119 = v25;
    v121 = sub_1AC3B7EE4();

    *&v26 = MEMORY[0x1E69E5920](v120).n128_u64[0];
    v147 = 0x1FB10D000uLL;
    [v183 0x1FB10D778];
    MEMORY[0x1E69E5920](v121);
    swift_unknownObjectRelease();

    v126 = sub_1AC3B7EE4();

    v124 = *MEMORY[0x1E69C58F8];
    MEMORY[0x1E69E5928](v124);
    sub_1AC3B7EF4();
    v123 = v27;
    v125 = sub_1AC3B7EE4();

    *&v28 = MEMORY[0x1E69E5920](v124).n128_u64[0];
    [v183 (v147 + 1912)];
    MEMORY[0x1E69E5920](v125);
    swift_unknownObjectRelease();
    v131 = v202;
    v202[0] = v127;
    v202[1] = v128;

    v129 = v201;
    v201[0] = v186;
    v201[1] = v187;
    v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555438, &qword_1AC3BBC70);
    sub_1AC3A26A0();
    v220.location = sub_1AC3B82C4();
    v200 = v220;
    v133 = NSStringFromRange(v220);
    sub_1AC3B7EF4();
    v132 = v29;
    v137 = sub_1AC3B7EE4();

    MEMORY[0x1E69E5920](v133);
    v135 = *MEMORY[0x1E69C58E8];
    MEMORY[0x1E69E5928](v135);
    sub_1AC3B7EF4();
    v134 = v30;
    v136 = sub_1AC3B7EE4();

    *&v31 = MEMORY[0x1E69E5920](v135).n128_u64[0];
    [v183 (v147 + 1912)];
    MEMORY[0x1E69E5920](v136);
    swift_unknownObjectRelease();
    sub_1AC38D4BC(v138, v32);
    ObjectType = swift_getObjectType();
    v139 = v199;
    v199[3] = ObjectType;
    swift_unknownObjectRetain();
    v199[0] = v173;
    v143 = sub_1AC3A0EB4(v139);
    v141 = *MEMORY[0x1E69C58F0];
    MEMORY[0x1E69E5928](v141);
    sub_1AC3B7EF4();
    v140 = v34;
    v142 = sub_1AC3B7EE4();

    *&v35 = MEMORY[0x1E69E5920](v141).n128_u64[0];
    [v183 (v147 + 1912)];
    MEMORY[0x1E69E5920](v142);
    swift_unknownObjectRelease();
    sub_1AC3B72D4();
    v144 = v36;
    v149 = sub_1AC3B7EE4();

    v146 = *MEMORY[0x1E69C58E0];
    MEMORY[0x1E69E5928](v146);
    sub_1AC3B7EF4();
    v145 = v37;
    v148 = sub_1AC3B7EE4();

    *&v38 = MEMORY[0x1E69E5920](v146).n128_u64[0];
    [v183 (v147 + 1912)];
    MEMORY[0x1E69E5920](v148);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AC3A0E7C()
{
  sub_1AC3A2590(0);

  return 0;
}

id sub_1AC3A0EB4(void *a1)
{
  v13 = a1;
  if (a1[3])
  {
    v8 = v13[3];
    __swift_project_boxed_opaque_existential_0(v13, v8);
    v6 = *(v8 - 8);
    v7 = v6;
    v10 = v4;
    v1 = MEMORY[0x1EEE9AC00](v4);
    v9 = v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v1);
    v11 = sub_1AC3B8584();
    (*(v7 + 8))(v9, v8);
    __swift_destroy_boxed_opaque_existential_1(v13);
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v4[1] = v12;
  v5 = [swift_getObjCClassFromMetadata() valueWithNonretainedObject_];
  swift_unknownObjectRelease();
  return v5;
}

uint64_t HeadphoneSpecifier.getAction.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit18HeadphoneSpecifier_getAction);
  sub_1AC39D93C(v2, *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit18HeadphoneSpecifier_getAction + 8));
  return v2;
}

uint64_t HeadphoneSpecifier.setAction.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit18HeadphoneSpecifier_setAction);
  sub_1AC39D93C(v2, *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit18HeadphoneSpecifier_setAction + 8));
  return v2;
}

uint64_t HeadphoneSpecifier.buttonTapAction.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit18HeadphoneSpecifier_buttonTapAction);
  sub_1AC39D93C(v2, *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit18HeadphoneSpecifier_buttonTapAction + 8));
  return v2;
}

char *HeadphoneSpecifier.init(identifier:name:setAction:getAction:detail:cell:edit:buttonAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v64 = 0;
  v43 = 0;
  v42 = 0;
  v62 = a1;
  v63 = a2;
  v60 = a3;
  v61 = a4;
  v58 = a5;
  v59 = a6;
  v56 = a7;
  v57 = a8;
  v55 = a9;
  v54 = a10;
  v53 = a11;
  v51 = a12;
  v52 = a13;
  sub_1AC39D93C(a7, a8);
  v13 = OBJC_IVAR____TtC20HeadphoneCommonUIKit18HeadphoneSpecifier_getAction;
  *OBJC_IVAR____TtC20HeadphoneCommonUIKit18HeadphoneSpecifier_getAction = a7;
  *(v13 + 8) = a8;
  sub_1AC39D93C(a5, a6);
  v14 = &v64[OBJC_IVAR____TtC20HeadphoneCommonUIKit18HeadphoneSpecifier_setAction];
  *v14 = a5;
  *(v14 + 1) = a6;
  sub_1AC39D93C(a12, a13);
  v15 = &v64[OBJC_IVAR____TtC20HeadphoneCommonUIKit18HeadphoneSpecifier_buttonTapAction];
  *v15 = a12;
  *(v15 + 1) = a13;
  v39 = v64;

  if (a4)
  {
    v32 = sub_1AC3B7EE4();

    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  if (a9)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  if (a11)
  {
    v30 = swift_getObjCClassFromMetadata();
  }

  else
  {
    v30 = 0;
  }

  v28 = type metadata accessor for HeadphoneSpecifier(0, v16);
  v46.receiver = v39;
  v46.super_class = v28;
  v29 = objc_msgSendSuper2(&v46, sel_initWithName_target_set_get_detail_cell_edit_, v33, 0, sel_setSepcifierEnabledWithEnabled_sepcifier_, sel_specifierEnabledWithSpecifier_, ObjCClassFromMetadata, a10, v30);
  swift_unknownObjectRelease();

  if (v29)
  {
    v27 = v29;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v17 = v27;
  v64 = v27;
  v18 = v27;

  if (a2)
  {
    v25 = sub_1AC3B7EE4();

    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v45.receiver = v27;
  v45.super_class = v28;
  objc_msgSendSuper2(&v45, sel_setIdentifier_);

  v19 = v27;
  v44.receiver = v27;
  v44.super_class = v28;
  objc_msgSendSuper2(&v44, sel_setTarget_);
  swift_unknownObjectRelease();

  sub_1AC39D93C(a12, a13);
  if (a12)
  {
    v42 = a12;
    v43 = a13;
    v24 = v64;
    v20 = v64;
    v41.receiver = v24;
    v41.super_class = v28;
    objc_msgSendSuper2(&v41, sel_setButtonAction_, sel_buttonTappedWithSender_);
  }

  v23 = v64;
  v21 = v64;
  sub_1AC39DEAC(a12, a13);
  sub_1AC39DEAC(a7, a8);
  sub_1AC39DEAC(a5, a6);

  return v23;
}

unint64_t sub_1AC3A19EC()
{
  v2 = qword_1EB555420;
  if (!qword_1EB555420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555160, &qword_1AC3BBC60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555420);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC3A1A74(uint64_t a1)
{
  v3 = sub_1AC3B72A4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1AC3A1B1C()
{
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit18HeadphoneSpecifier_buttonTapAction);
  result = sub_1AC39D93C(v2, *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit18HeadphoneSpecifier_buttonTapAction + 8));
  if (v2)
  {
    v2(result);
  }

  return result;
}

uint64_t sub_1AC3A1C34(uint64_t a1)
{
  v7 = *(v1 + OBJC_IVAR____TtC20HeadphoneCommonUIKit18HeadphoneSpecifier_getAction);
  sub_1AC39D93C(v7, *(v1 + OBJC_IVAR____TtC20HeadphoneCommonUIKit18HeadphoneSpecifier_getAction + 8));
  if (!v7)
  {
    return 0;
  }

  v2 = MEMORY[0x1E69E5928](a1);
  v4 = v7(a1, v2);
  MEMORY[0x1E69E5920](a1);

  return v4;
}

uint64_t sub_1AC3A1DAC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + OBJC_IVAR____TtC20HeadphoneCommonUIKit18HeadphoneSpecifier_setAction);
  result = sub_1AC39D93C(v7, *(v2 + OBJC_IVAR____TtC20HeadphoneCommonUIKit18HeadphoneSpecifier_setAction + 8));
  if (v7)
  {
    v4 = MEMORY[0x1E69E5928](a2);
    v7(a1, a2, v4);
    MEMORY[0x1E69E5920](a2);
  }

  return result;
}

id HeadphoneSpecifier.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HeadphoneSpecifier(0, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id HeadphoneSpecifier.__allocating_init(name:target:set:get:detail:cell:edit:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a8;
  v32 = a7;
  v33 = a6;
  v34 = a5;
  v35 = a4;
  v36 = a3;
  v39 = a2;
  v38 = a1;
  v40 = objc_allocWithZone(v37);
  if (v39)
  {
    v29 = v38;
    v30 = v39;
    v26 = v39;
    v27 = sub_1AC3B7EE4();

    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  v25 = v28;
  if (v36[3])
  {
    v20 = v36[3];
    __swift_project_boxed_opaque_existential_0(v36, v20);
    v18 = *(v20 - 8);
    v19 = v18;
    v22 = &v11;
    v8 = MEMORY[0x1EEE9AC00](&v11);
    v21 = &v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v8);
    v23 = sub_1AC3B8584();
    (*(v19 + 8))(v21, v20);
    __swift_destroy_boxed_opaque_existential_1(v36);
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v17 = v24;
  if (v33)
  {
    v16 = v33;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v14 = ObjCClassFromMetadata;
  if (v31)
  {
    v13 = v31;
    v12 = swift_getObjCClassFromMetadata();
  }

  else
  {
    v12 = 0;
  }

  v11 = [v40 initWithName:v25 target:v17 set:v35 get:v34 detail:v14 cell:v32 edit:v12];
  swift_unknownObjectRelease();

  return v11;
}

uint64_t sub_1AC3A2590(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for CompareOptions(0);
    v1 = sub_1AC3B80A4();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

unint64_t sub_1AC3A263C(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB555430;
  if (!qword_1EB555430)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB555430);
    return ObjCClassMetadata;
  }

  return v4;
}

unint64_t sub_1AC3A26A0()
{
  v2 = qword_1EB555440;
  if (!qword_1EB555440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555438, &qword_1AC3BBC70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555440);
    return WitnessTable;
  }

  return v2;
}

void *sub_1AC3A2728(void *a1)
{
  if (*a1)
  {
  }

  return a1;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v2 = -1;
  if (*(a1 + 24) < 0x100000000uLL)
  {
    v2 = *(a1 + 24);
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_So11PSSpecifierCSgyXlIeggo_Sg(void *a1)
{
  v2 = -1;
  if (*a1 < 0x100000000uLL)
  {
    v2 = *a1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_yXlSo11PSSpecifierCSgIeggg_Sg(void *a1)
{
  v2 = -1;
  if (*a1 < 0x100000000uLL)
  {
    v2 = *a1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(void *a1)
{
  v2 = -1;
  if (*a1 < 0x100000000uLL)
  {
    v2 = *a1;
  }

  return (v2 + 1);
}

uint64_t sub_1AC3A2E68(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 160))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v4 = *(a1 + 8);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void *sub_1AC3A2F98(void *result, unsigned int a2, unsigned int a3)
{
  v3 = result + 20;
  if (a2 > 0x7FFFFFFE)
  {
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      result[1] = a2;
    }
  }

  return result;
}

uint64_t sub_1AC3A31B4(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

id sub_1AC3A34EC(double a1, double a2, double a3, double a4, double a5)
{
  v5 = [swift_getObjCClassFromMetadata() bezierPathWithRoundedRect:a1 cornerRadius:{a2, a3, a4, a5}];

  return v5;
}

uint64_t sub_1AC3A35BC()
{
  v1 = sub_1AC3B7524();
  __swift_allocate_value_buffer(v1, qword_1EB555858);
  __swift_project_value_buffer(v1, qword_1EB555858);
  sub_1AC3B7F54();
  sub_1AC3B7F54();
  return sub_1AC3B7514();
}

uint64_t sub_1AC3A3660()
{
  if (qword_1EB5543A8 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B7524();
  return __swift_project_value_buffer(v0, qword_1EB555858);
}

uint64_t sub_1AC3A36CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3A3660();
  v1 = sub_1AC3B7524();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t AAAutoANCStrength.description.getter(int a1)
{
  type metadata accessor for AAAutoANCStrength(0);
  if (!a1 || a1 == 1000 || a1 == 1050 || a1 == 1100)
  {
    return sub_1AC3B7F54();
  }

  sub_1AC3B85A4();
  __break(1u);
  return v2;
}

uint64_t sub_1AC3A387C(int a1)
{
  type metadata accessor for AAAutoANCStrength(0);
  switch(a1)
  {
    case 0:
      return 0;
    case 1000:
      return 2;
    case 1050:
      return 1;
    case 1100:
      return 0;
  }

  sub_1AC3B85A4();
  __break(1u);
  return v2;
}

id sub_1AC3A398C()
{
  v7 = (v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell____lazy_storage___slider);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x1E69E5928](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_1AC3A3A98(v6);
  MEMORY[0x1E69E5928](v4);
  v3 = (v6 + OBJC_IVAR____TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell____lazy_storage___slider);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x1E69E5920](v1);
  swift_endAccess();
  return v4;
}

id sub_1AC3A3A98(uint64_t a1)
{
  v33[6] = a1;
  v15 = type metadata accessor for AAAutoANCStrength(0);
  v1 = sub_1AC3B8574();
  *v2 = 1100;
  v2[1] = 1050;
  v2[2] = 1000;
  sub_1AC36EE1C(v1, v15);
  v30 = v3;
  v33[5] = v3;
  v22 = sub_1AC3AFF88(0, v4);
  v31 = sub_1AC3A3F90(0.0, 0.0, 0.0, 0.0);
  v33[4] = v31;
  sub_1AC3AFFEC(0, v5);
  v29 = sub_1AC3A3FE8(3, 1);
  v33[3] = v29;
  [v31 setMinimumValue_];
  LODWORD(v6) = 2.0;
  [v31 setMaximumValue_];
  sub_1AC3B0050(0, v7);
  v28 = sub_1AC3A4030(4, 21.0);
  v33[2] = v28;
  sub_1AC3B00B4(0, v8);
  v17 = sub_1AC3B7F54();
  v16 = v9;
  MEMORY[0x1E69E5928](v28);
  v18 = sub_1AC3A4084(v17, v16, v28);
  [v31 setMinimumValueImage_];
  MEMORY[0x1E69E5920](v18);
  v20 = sub_1AC3B7F54();
  v19 = v10;
  MEMORY[0x1E69E5928](v28);
  v21 = sub_1AC3A4084(v20, v19, v28);
  [v31 setMaximumValueImage_];
  MEMORY[0x1E69E5920](v21);
  [v31 _setSliderConfiguration_];
  swift_unknownObjectRelease();
  [v31 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x1E69E5920](v31);
  v11 = type metadata accessor for Event(0);
  v12 = sub_1AC3B8574();
  *v13 = 64;
  v13[1] = 128;
  sub_1AC36EE1C(v12, v11);
  sub_1AC35CD8C();
  sub_1AC3B8394();
  CombineCompatible<>.publisher(for:)(v32[2], v22, v33);
  v32[0] = v33[0];
  v32[1] = v33[1];
  v24 = swift_allocObject();
  MEMORY[0x1E69E5928](a1);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](a1);
  v23 = swift_allocObject();
  MEMORY[0x1E69E5928](v31);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v31);

  v26 = swift_allocObject();
  v26[2] = v24;
  v26[3] = v23;
  v26[4] = v30;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555738, &qword_1AC3BC058);
  sub_1AC3B0128();
  sub_1AC3B7674();

  sub_1AC35E758(v32);
  v27 = sub_1AC3A52E0();
  sub_1AC3B7624();
  v27();

  MEMORY[0x1E69E5920](v28);
  MEMORY[0x1E69E5920](v29);

  return v31;
}

id sub_1AC3A4030(uint64_t a1, double a2)
{
  v2 = [swift_getObjCClassFromMetadata() configurationWithPointSize:a1 weight:a2];

  return v2;
}

id sub_1AC3A4084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1AC3B7EE4();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v4 = [swift_getObjCClassFromMetadata() _systemImageNamed_withConfiguration_];
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](v6);
  return v4;
}

double sub_1AC3A415C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v104 = a1;
  v103 = a2;
  v100 = a3;
  v101 = a4;
  v102 = 0;
  v83 = sub_1AC3A5030;
  v84 = sub_1AC377AC8;
  v85 = sub_1AC3B01B0;
  v86 = sub_1AC378248;
  v87 = sub_1AC37827C;
  v88 = sub_1AC377AC0;
  v89 = sub_1AC377AC0;
  v90 = sub_1AC377AD4;
  v91 = sub_1AC377AC0;
  v92 = sub_1AC377AC0;
  v93 = sub_1AC3782F4;
  v94 = "Fatal error";
  v95 = "Float value cannot be converted to Int because it is either infinite or NaN";
  v96 = "Swift/IntegerTypes.swift";
  v97 = "Float value cannot be converted to Int because the result would be less than Int.min";
  v98 = "Float value cannot be converted to Int because the result would be greater than Int.max";
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v123 = 0;
  v121 = 0;
  v120 = 0;
  v118 = 0;
  v99 = 0;
  v105 = sub_1AC3B7524();
  v106 = *(v105 - 8);
  v107 = v105 - 8;
  v108 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v104);
  v109 = v39 - v108;
  v126 = *v4;
  v110 = v5 + 16;
  v125 = v5 + 16;
  v124 = v6 + 16;
  v123 = v7;
  v111 = &v122;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v82 = Strong;
    v80 = Strong;
    v121 = Strong;
    v9 = sub_1AC3A534C();
    v81 = v9;
    if (v9)
    {
      v79 = v81;
      v75 = v81;
      v120 = v81;
      v76 = v100 + 16;
      v77 = &v119;
      swift_beginAccess();
      v78 = swift_unknownObjectWeakLoadStrong();
      swift_endAccess();
      if (v78)
      {
        v74 = v78;
        v10 = v109;
        v54 = v78;
        v118 = v78;
        v11 = sub_1AC3A3660();
        (*(v106 + 16))(v10, v11, v105);
        MEMORY[0x1E69E5928](v54);
        v60 = 7;
        v58 = swift_allocObject();
        *(v58 + 16) = v54;
        v72 = sub_1AC3B7504();
        v73 = sub_1AC3B8264();
        v56 = 17;
        v63 = swift_allocObject();
        *(v63 + 16) = 32;
        v64 = swift_allocObject();
        v57 = 8;
        *(v64 + 16) = 8;
        v59 = 32;
        v12 = swift_allocObject();
        v55 = v12;
        *(v12 + 16) = v83;
        *(v12 + 24) = 0;
        v13 = swift_allocObject();
        v14 = v55;
        v65 = v13;
        *(v13 + 16) = v84;
        *(v13 + 24) = v14;
        v66 = swift_allocObject();
        *(v66 + 16) = 0;
        v67 = swift_allocObject();
        *(v67 + 16) = v57;
        v15 = swift_allocObject();
        v16 = v58;
        v61 = v15;
        *(v15 + 16) = v85;
        *(v15 + 24) = v16;
        v17 = swift_allocObject();
        v18 = v61;
        v62 = v17;
        *(v17 + 16) = v86;
        *(v17 + 24) = v18;
        v19 = swift_allocObject();
        v20 = v62;
        v69 = v19;
        *(v19 + 16) = v87;
        *(v19 + 24) = v20;
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5549B0, &unk_1AC3BAF60);
        v68 = sub_1AC3B8574();
        v70 = v21;

        v22 = v63;
        v23 = v70;
        *v70 = v88;
        v23[1] = v22;

        v24 = v64;
        v25 = v70;
        v70[2] = v89;
        v25[3] = v24;

        v26 = v65;
        v27 = v70;
        v70[4] = v90;
        v27[5] = v26;

        v28 = v66;
        v29 = v70;
        v70[6] = v91;
        v29[7] = v28;

        v30 = v67;
        v31 = v70;
        v70[8] = v92;
        v31[9] = v30;

        v32 = v68;
        v33 = v69;
        v34 = v70;
        v35 = v71;
        v70[10] = v93;
        v34[11] = v33;
        sub_1AC36EE1C(v32, v35);

        if (os_log_type_enabled(v72, v73))
        {
          v36 = v99;
          v46 = sub_1AC3B8334();
          v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F90, &qword_1AC3BB7E0);
          v47 = sub_1AC374C60(0, v45, v45);
          v48 = sub_1AC374C60(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v50 = &v117;
          v117 = v46;
          v51 = &v116;
          v116 = v47;
          v52 = &v115;
          v115 = v48;
          v49 = 2;
          sub_1AC374CB4(2, &v117);
          sub_1AC374CB4(v49, v50);
          v113 = v88;
          v114 = v63;
          sub_1AC374CC8(&v113, v50, v51, v52);
          v53 = v36;
          if (v36)
          {

            __break(1u);
          }

          else
          {
            v113 = v89;
            v114 = v64;
            sub_1AC374CC8(&v113, &v117, &v116, &v115);
            v44 = 0;
            v113 = v90;
            v114 = v65;
            sub_1AC374CC8(&v113, &v117, &v116, &v115);
            v43 = 0;
            v113 = v91;
            v114 = v66;
            sub_1AC374CC8(&v113, &v117, &v116, &v115);
            v42 = 0;
            v113 = v92;
            v114 = v67;
            sub_1AC374CC8(&v113, &v117, &v116, &v115);
            v41 = 0;
            v113 = v93;
            v114 = v69;
            sub_1AC374CC8(&v113, &v117, &v116, &v115);
            _os_log_impl(&dword_1AC345000, v72, v73, "%s: HPCUIAdaptiveVolumeSliderCell %f", v46, 0x16u);
            sub_1AC374D14(v47, 0, v45);
            sub_1AC374D14(v48, 1, MEMORY[0x1E69E7CA0] + 8);
            sub_1AC3B8314();
          }
        }

        else
        {
        }

        v37 = MEMORY[0x1E69E5920](v72);
        (*(v106 + 8))(v109, v105, v37);
        v39[2] = sub_1AC3B7424();
        [v54 value];
        v40 = v38;
        if ((LODWORD(v38) >> 23) == 255)
        {
          sub_1AC3B8494();
          __break(1u);
        }

        if (v40 <= -9.2234e18)
        {
          sub_1AC3B8494();
          __break(1u);
        }

        if (v40 >= 9.2234e18)
        {
          sub_1AC3B8494();
          __break(1u);
        }

        v39[1] = v40;
        type metadata accessor for AAAutoANCStrength(0);
        sub_1AC3B80F4();
        sub_1AC3B74A4();

        MEMORY[0x1E69E5920](v54);
        MEMORY[0x1E69E5920](v75);
        *&result = MEMORY[0x1E69E5920](v80).n128_u64[0];
      }

      else
      {
        MEMORY[0x1E69E5920](v75);
        *&result = MEMORY[0x1E69E5920](v80).n128_u64[0];
      }
    }

    else
    {
      *&result = MEMORY[0x1E69E5920](v80).n128_u64[0];
    }
  }

  return result;
}

double sub_1AC3A5080(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell____lazy_storage___slider);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double (*sub_1AC3A5118(id *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1AC3A398C();
  return sub_1AC3A5174;
}

double sub_1AC3A5174(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1AC3A5080(*a1);
  }

  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  sub_1AC3A5080(v3);
  *&result = MEMORY[0x1E69E5920](*a1).n128_u64[0];
  return result;
}

uint64_t sub_1AC3A51F4()
{
  v2 = (v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell_listeners);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

double sub_1AC3A525C(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell_listeners);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();

  return result;
}

uint64_t sub_1AC3A534C()
{
  v2 = (v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell_headphoneDevice);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1AC3A53BC(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell_headphoneDevice);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

void sub_1AC3A54C0(void *a1)
{
  v212 = a1;
  v177 = sub_1AC3AF0F4;
  v178 = "Fatal error";
  v179 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v180 = "HeadphoneCommonUIKit/SliderUI.swift";
  v181 = sub_1AC3A6AC0;
  v182 = sub_1AC377AC8;
  v183 = sub_1AC377AC0;
  v184 = sub_1AC377AC0;
  v185 = sub_1AC377AD4;
  v234 = 0;
  v233 = 0;
  v186 = 0;
  v223 = 0;
  v219 = 0;
  v194 = 0;
  v187 = sub_1AC3B7524();
  v188 = *(v187 - 8);
  v189 = v187 - 8;
  v190 = (*(v188 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v187);
  v191 = v62 - v190;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5554F8, &qword_1AC3BBE30);
  v192 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v193 = v62 - v192;
  v195 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555500, &qword_1AC3BBE38) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v194);
  v196 = v62 - v195;
  v197 = sub_1AC3B82F4();
  v198 = *(v197 - 8);
  v199 = v197 - 8;
  v200 = (*(v198 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v197);
  v201 = v62 - v200;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555508, &qword_1AC3BBE40);
  v203 = *(v202 - 8);
  v204 = v202 - 8;
  v205 = (*(v203 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v202);
  v206 = v62 - v205;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555510, &unk_1AC3BBE48);
  v208 = *(v207 - 8);
  v209 = v207 - 8;
  v210 = (*(v208 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v212);
  v211 = v62 - v210;
  v234 = v3;
  v233 = v1;
  *&v4 = MEMORY[0x1E69E5928](v3).n128_u64[0];
  if (v212)
  {
    v175 = v212;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v173 = v175;
  v174 = [v175 userInfo];
  if (v174)
  {
    v172 = v174;
    v171 = v174;
    v170 = v213;
    sub_1AC3B8384();
    sub_1AC377D20(v170, &v229);
    swift_unknownObjectRelease();
  }

  else
  {
    v229 = 0uLL;
    v230 = 0uLL;
  }

  v231 = v229;
  v232 = v230;
  MEMORY[0x1E69E5920](v173);
  if (*(&v232 + 1))
  {
    sub_1AC39B678(0, v5);
    if (swift_dynamicCast())
    {
      v169 = v213[4];
    }

    else
    {
      v169 = 0;
    }

    v168 = v169;
  }

  else
  {
    sub_1AC38FF40(&v231);
    v168 = 0;
  }

  v167 = v168;
  if (v168)
  {
    v166 = v167;
    v163 = v167;
    v223 = v167;
    sub_1AC3B7F54();
    v162 = v6;
    v164 = sub_1AC3B7EE4();

    v165 = [v163 objectForKey_];
    swift_unknownObjectRelease();
    if (v165)
    {
      v161 = v165;
      v160 = v165;
      v159 = v214;
      sub_1AC3B8384();
      sub_1AC377D20(v159, &v220);
      swift_unknownObjectRelease();
    }

    else
    {
      v220 = 0uLL;
      v221 = 0uLL;
    }

    v222[0] = v220;
    v222[1] = v221;
    if (*(&v221 + 1))
    {
      sub_1AC3B7434();
      if (swift_dynamicCast())
      {
        v158 = v214[4];
      }

      else
      {
        v158 = 0;
      }

      v157 = v158;
    }

    else
    {
      sub_1AC38FF40(v222);
      v157 = 0;
    }

    v156 = v157;
    if (v157)
    {
      v155 = v156;
      v153 = v156;
      v219 = v156;
      MEMORY[0x1E69E5928](v156);
      sub_1AC3A53BC(v153);
      v7 = sub_1AC3A534C();
      v154 = v7;
      if (v7)
      {
        v152 = v154;
      }

      else
      {
        sub_1AC3B8494();
        __break(1u);
      }

      v125 = v152;
      v126 = sub_1AC3B7424();
      MEMORY[0x1E69E5920](v125);
      sub_1AC3B74B4();

      sub_1AC3B82E4();
      v8 = *(v198 + 56);
      v127 = 1;
      v8(v196, 1, 1, v197);
      v9 = [objc_opt_self() mainRunLoop];
      v128 = &v218;
      v218 = v9;
      v142 = 0;
      v10 = sub_1AC3B82D4();
      (*(*(v10 - 8) + 56))(v193, v127);
      v129 = sub_1AC3AEE38(v142, v11);
      v130 = sub_1AC3AEE9C();
      sub_1AC3AEF24(v130, v12);
      sub_1AC3B7664();
      v13 = v176;
      sub_1AC3AEFA4(v193);
      *&v14 = MEMORY[0x1E69E5920](v218).n128_u64[0];
      sub_1AC3AF04C(v196, v14);
      (*(v198 + 8))(v201, v197);
      (*(v203 + 8))(v206, v202);
      v132 = 24;
      v135 = 7;
      v137 = swift_allocObject();
      v131 = v137 + 16;
      MEMORY[0x1E69E5928](v13);
      swift_unknownObjectWeakInit();
      MEMORY[0x1E69E5920](v13);
      v136 = swift_allocObject();
      v133 = v136 + 16;
      v134 = sub_1AC3A534C();
      swift_unknownObjectWeakInit();
      MEMORY[0x1E69E5920](v134);

      v15 = swift_allocObject();
      v16 = v136;
      v138 = v15;
      *(v15 + 16) = v137;
      *(v15 + 24) = v16;

      sub_1AC3AF100();
      v141 = sub_1AC3B7674();

      (*(v208 + 8))(v211, v207);
      v139 = &v217;
      v140 = sub_1AC3A52E0();
      sub_1AC3B7624();
      v17 = v176;
      v151 = 0;
      v140();

      v143 = [v17 contentView];
      *&v18 = MEMORY[0x1E69E5920](v17).n128_u64[0];
      v149 = [v143 subviews];
      sub_1AC377BD0(v142, v19);
      v144 = sub_1AC3B8084();
      MEMORY[0x1E69E5920](v143);
      v148 = &v216;
      v216 = v144;
      v20 = sub_1AC3A398C();
      v147 = &v215;
      v215 = v20;
      v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5549D8, &qword_1AC3BAF70);
      v146 = sub_1AC377C34();
      sub_1AC3AF188(v146, v21);
      v150 = sub_1AC3B8034();
      MEMORY[0x1E69E5920](v215);
      sub_1AC358148(v148);
      MEMORY[0x1E69E5920](v149);
      if ((v150 & 1) == (v151 & 1))
      {
        v123 = sub_1AC3A398C();
        v124 = sub_1AC3A534C();
        if (v124)
        {
          v122 = v124;
        }

        else
        {
          sub_1AC3B8494();
          __break(1u);
        }

        v85 = v122;
        v86 = sub_1AC3B7424();
        MEMORY[0x1E69E5920](v85);
        v22 = sub_1AC3B7494();
        v23 = v176;
        v87 = v22;

        *&v24 = sub_1AC3A387C(v87);
        [v123 setValue_];
        MEMORY[0x1E69E5920](v123);
        *&v25 = MEMORY[0x1E69E5928](v23).n128_u64[0];
        v109 = 0x1FB774000uLL;
        v89 = [v23 0x1FB774AF8];
        MEMORY[0x1E69E5920](v23);
        v88 = sub_1AC3A398C();
        [v89 addSubview_];
        MEMORY[0x1E69E5920](v88);
        MEMORY[0x1E69E5920](v89);
        v120 = objc_opt_self();
        v118 = sub_1AC377CBC(0, v26);
        v117 = sub_1AC3B8574();
        v116 = v27;
        v28 = sub_1AC3A398C();
        v29 = v176;
        v90 = v28;
        v91 = 0x1FBBB4000uLL;
        v94 = [v28 0x1FBBB4950];
        MEMORY[0x1E69E5920](v90);
        *&v30 = MEMORY[0x1E69E5928](v29).n128_u64[0];
        v92 = [v29 (v109 + 2808)];
        *&v31 = MEMORY[0x1E69E5920](v29).n128_u64[0];
        v93 = [v92 (v91 + 2384)];
        MEMORY[0x1E69E5920](v92);
        v112 = 0x1FBB28000uLL;
        v95 = [v94 0x1FBB28F7ELL];
        MEMORY[0x1E69E5920](v93);
        MEMORY[0x1E69E5920](v94);
        *v116 = v95;
        v32 = sub_1AC3A398C();
        v33 = v176;
        v96 = v32;
        v97 = 0x1FBB5C000uLL;
        v100 = [v32 0x1FBB5C529];
        MEMORY[0x1E69E5920](v96);
        *&v34 = MEMORY[0x1E69E5928](v33).n128_u64[0];
        v98 = [v33 (v109 + 2808)];
        *&v35 = MEMORY[0x1E69E5920](v33).n128_u64[0];
        v99 = [v98 (v97 + 1321)];
        MEMORY[0x1E69E5920](v98);
        v101 = [v100 (v112 + 3966)];
        MEMORY[0x1E69E5920](v99);
        MEMORY[0x1E69E5920](v100);
        v116[1] = v101;
        v36 = sub_1AC3A398C();
        v37 = v176;
        v102 = v36;
        v103 = 0x1FBBB5000uLL;
        v106 = [v36 0x1FBBB59CCLL];
        MEMORY[0x1E69E5920](v102);
        *&v38 = MEMORY[0x1E69E5928](v37).n128_u64[0];
        v104 = [v37 (v109 + 2808)];
        *&v39 = MEMORY[0x1E69E5920](v37).n128_u64[0];
        v105 = [v104 (v103 + 2508)];
        MEMORY[0x1E69E5920](v104);
        v107 = [v106 (v112 + 3966)];
        MEMORY[0x1E69E5920](v105);
        MEMORY[0x1E69E5920](v106);
        v116[2] = v107;
        v108 = sub_1AC3A398C();
        v110 = 0x1FBB20000uLL;
        v114 = [v108 0x1FBB20D25];
        MEMORY[0x1E69E5920](v108);
        *&v40 = MEMORY[0x1E69E5928](v176).n128_u64[0];
        v111 = [v176 (v109 + 2808)];
        *&v41 = MEMORY[0x1E69E5920](v176).n128_u64[0];
        v113 = [v111 (v110 + 3365)];
        MEMORY[0x1E69E5920](v111);
        v115 = [v114 (v112 + 3966)];
        MEMORY[0x1E69E5920](v113);
        MEMORY[0x1E69E5920](v114);
        v42 = v117;
        v43 = v118;
        v116[3] = v115;
        sub_1AC36EE1C(v42, v43);
        v119 = v44;
        v121 = sub_1AC3B8074();

        [v120 activateConstraints_];
        MEMORY[0x1E69E5920](v121);
        MEMORY[0x1E69E5920](v153);
        MEMORY[0x1E69E5920](v163);
      }

      else
      {
        v83 = sub_1AC3A398C();
        v84 = 0x1FAC9E000uLL;
        [v83 0x1FAC9E0F8];
        *&v45 = MEMORY[0x1E69E5920](v83).n128_u64[0];
        [v176 (v84 + 248)];
        MEMORY[0x1E69E5920](v153);
        MEMORY[0x1E69E5920](v163);
      }

      return;
    }

    MEMORY[0x1E69E5920](v163);
  }

  v46 = v191;
  v47 = sub_1AC3A3660();
  (*(v188 + 16))(v46, v47, v187);
  v81 = sub_1AC3B7504();
  v82 = sub_1AC3B8254();
  v71 = 17;
  v73 = 7;
  v75 = swift_allocObject();
  *(v75 + 16) = 32;
  v76 = swift_allocObject();
  *(v76 + 16) = 8;
  v72 = 32;
  v48 = swift_allocObject();
  v74 = v48;
  *(v48 + 16) = v181;
  *(v48 + 24) = 0;
  v49 = swift_allocObject();
  v50 = v74;
  v78 = v49;
  *(v49 + 16) = v182;
  *(v49 + 24) = v50;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5549B0, &unk_1AC3BAF60);
  v77 = sub_1AC3B8574();
  v79 = v51;

  v52 = v75;
  v53 = v79;
  *v79 = v183;
  v53[1] = v52;

  v54 = v76;
  v55 = v79;
  v79[2] = v184;
  v55[3] = v54;

  v56 = v77;
  v57 = v78;
  v58 = v79;
  v59 = v80;
  v79[4] = v185;
  v58[5] = v57;
  sub_1AC36EE1C(v56, v59);

  if (os_log_type_enabled(v81, v82))
  {
    v60 = v186;
    v64 = sub_1AC3B8334();
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F90, &qword_1AC3BB7E0);
    v65 = sub_1AC374C60(0, v63, v63);
    v66 = sub_1AC374C60(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v67 = &v228;
    v228 = v64;
    v68 = &v227;
    v227 = v65;
    v69 = &v226;
    v226 = v66;
    sub_1AC374CB4(2, &v228);
    sub_1AC374CB4(1, v67);
    v224 = v183;
    v225 = v75;
    sub_1AC374CC8(&v224, v67, v68, v69);
    v70 = v60;
    if (v60)
    {

      __break(1u);
    }

    else
    {
      v224 = v184;
      v225 = v76;
      sub_1AC374CC8(&v224, &v228, &v227, &v226);
      v62[1] = 0;
      v224 = v185;
      v225 = v78;
      sub_1AC374CC8(&v224, &v228, &v227, &v226);
      _os_log_impl(&dword_1AC345000, v81, v82, "%s HPCUIAdaptiveVolumeSliderCell Depedencies not meet, bailing out of HPCUIAdaptiveVolumeSliderCell refresh", v64, 0xCu);
      sub_1AC374D14(v65, 0, v63);
      sub_1AC374D14(v66, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC3B8314();
    }
  }

  else
  {
  }

  v61 = MEMORY[0x1E69E5920](v81);
  (*(v188 + 8))(v191, v187, v61);
}

double sub_1AC3A6AF0(int *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    swift_endAccess();
    if (v7)
    {
      v6 = sub_1AC3A398C();
      sub_1AC3B7424();
      v5 = sub_1AC3B7494();

      *&v4 = sub_1AC3A387C(v5);
      [v6 setValue_];
      MEMORY[0x1E69E5920](v6);
      MEMORY[0x1E69E5920](v7);
    }

    *&result = MEMORY[0x1E69E5920](Strong).n128_u64[0];
  }

  return result;
}

char *sub_1AC3A6D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = 0;
  v18 = a1;
  v16 = a2;
  v17 = a3;
  v15 = a4;
  *OBJC_IVAR____TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell____lazy_storage___slider = 0;
  v12 = OBJC_IVAR____TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell_listeners;
  sub_1AC3B7634();
  sub_1AC3AF208();
  *&v19[v12] = sub_1AC3B7E54();
  *&v19[OBJC_IVAR____TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell_headphoneDevice] = 0;

  if (a3)
  {
    v8 = sub_1AC3B7EE4();

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v14.receiver = v19;
  v14.super_class = type metadata accessor for HPCUIAdaptiveVolumeSliderCell(0, v4);
  v7 = objc_msgSendSuper2(&v14, sel_initWithStyle_reuseIdentifier_specifier_, a1, v9, a4);
  MEMORY[0x1E69E5920](v9);
  if (v7)
  {
    MEMORY[0x1E69E5928](v7);
    v19 = v7;
    MEMORY[0x1E69E5920](a4);

    MEMORY[0x1E69E5920](v19);
    return v7;
  }

  else
  {
    MEMORY[0x1E69E5920](0);
    MEMORY[0x1E69E5920](a4);

    return 0;
  }
}

char *sub_1AC3A6FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  v14 = a1;
  v12 = a2;
  v13 = a3;
  *OBJC_IVAR____TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell____lazy_storage___slider = 0;
  v9 = OBJC_IVAR____TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell_listeners;
  sub_1AC3B7634();
  sub_1AC3AF208();
  *&v15[v9] = sub_1AC3B7E54();
  *&v15[OBJC_IVAR____TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell_headphoneDevice] = 0;

  if (a3)
  {
    v6 = sub_1AC3B7EE4();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v11.receiver = v15;
  v11.super_class = type metadata accessor for HPCUIAdaptiveVolumeSliderCell(0, v3);
  v5 = objc_msgSendSuper2(&v11, sel_initWithStyle_reuseIdentifier_, a1, v7);
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5928](v5);
  v15 = v5;

  MEMORY[0x1E69E5920](v15);
  return v5;
}

char *sub_1AC3A724C(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  *OBJC_IVAR____TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell____lazy_storage___slider = 0;
  v4 = OBJC_IVAR____TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell_listeners;
  sub_1AC3B7634();
  sub_1AC3AF208();
  *&v9[v4] = sub_1AC3B7E54();
  *&v9[OBJC_IVAR____TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell_headphoneDevice] = 0;
  v7.receiver = v9;
  v7.super_class = type metadata accessor for HPCUIAdaptiveVolumeSliderCell(0, v1);
  v6 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);
  if (v6)
  {
    MEMORY[0x1E69E5928](v6);
    v9 = v6;
    MEMORY[0x1E69E5920](a1);
    MEMORY[0x1E69E5920](v9);
    return v6;
  }

  else
  {
    MEMORY[0x1E69E5920](0);
    MEMORY[0x1E69E5920](a1);
    return 0;
  }
}

id sub_1AC3A73D8(__n128 a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for HPCUIAdaptiveVolumeSliderCell(0, a3);
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_1AC3A7484()
{
  v2 = (v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit35HPCUIAdaptiveVolumeDetailController_headphoneDevice);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1AC3A74F4(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC20HeadphoneCommonUIKit35HPCUIAdaptiveVolumeDetailController_headphoneDevice);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1AC3A75F8()
{
  v2 = (v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit35HPCUIAdaptiveVolumeDetailController_listeners);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

double sub_1AC3A7660(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC20HeadphoneCommonUIKit35HPCUIAdaptiveVolumeDetailController_listeners);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();

  return result;
}

id HPCUIAdaptiveVolumeDetailController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = sub_1AC3B7EE4();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v10 initWithNibName_bundle_];
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](v7);
  return v5;
}

char *HPCUIAdaptiveVolumeDetailController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  v13 = a1;
  v14 = a2;
  v12 = a3;
  *OBJC_IVAR____TtC20HeadphoneCommonUIKit35HPCUIAdaptiveVolumeDetailController_headphoneDevice = 0;
  v9 = OBJC_IVAR____TtC20HeadphoneCommonUIKit35HPCUIAdaptiveVolumeDetailController_listeners;
  sub_1AC3B7634();
  sub_1AC3AF208();
  *&v15[v9] = sub_1AC3B7E54();
  *&v15[OBJC_IVAR____TtC20HeadphoneCommonUIKit35HPCUIAdaptiveVolumeDetailController____lazy_storage___sliderSection] = 0;

  v3 = a2;
  if (a2)
  {
    v6 = sub_1AC3B7EE4();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v11.receiver = v15;
  v11.super_class = type metadata accessor for HPCUIAdaptiveVolumeDetailController(0, v3);
  v5 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v7, a3);
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5928](v5);
  v15 = v5;
  MEMORY[0x1E69E5920](a3);

  MEMORY[0x1E69E5920](v15);
  return v5;
}

void sub_1AC3A7A9C()
{
  *OBJC_IVAR____TtC20HeadphoneCommonUIKit35HPCUIAdaptiveVolumeDetailController_headphoneDevice = 0;
  v0 = OBJC_IVAR____TtC20HeadphoneCommonUIKit35HPCUIAdaptiveVolumeDetailController_listeners;
  sub_1AC3B7634();
  sub_1AC3AF208();
  *v0 = sub_1AC3B7E54();
  *OBJC_IVAR____TtC20HeadphoneCommonUIKit35HPCUIAdaptiveVolumeDetailController____lazy_storage___sliderSection = 0;
  sub_1AC3B7F54();
  sub_1AC3B84A4();
  __break(1u);
}

uint64_t sub_1AC3A7BDC()
{
  v6 = (v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit35HPCUIAdaptiveVolumeDetailController____lazy_storage___sliderSection);
  swift_beginAccess();
  v7 = *v6;

  swift_endAccess();
  if (v7)
  {
    return v7;
  }

  v3 = sub_1AC3A7CD0(v5);

  v2 = (v5 + OBJC_IVAR____TtC20HeadphoneCommonUIKit35HPCUIAdaptiveVolumeDetailController____lazy_storage___sliderSection);
  swift_beginAccess();
  *v2 = v3;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC3A7CD0(uint64_t a1)
{
  v27 = a1;
  v18 = sub_1AC3AFF78;
  v26 = sub_1AC3AFF80;
  v35 = 0;
  v23 = 0;
  v15 = sub_1AC3B7ED4();
  v12 = *(v15 - 8);
  v13 = v15 - 8;
  v10 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v14 = &v9 - v10;
  v35 = v1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555700, &qword_1AC3BC040);
  v34 = v27;
  v21 = 1;
  sub_1AC3B7F54();
  sub_1AC3B7EC4();
  v20 = type metadata accessor for HPCUIAdaptiveVolumeDetailController(v23, v2);
  v16 = sub_1AC3873BC(v14, v20);
  v17 = v3;
  (*(v12 + 8))(v14, v15);
  v4 = sub_1AC3A3584();
  v19 = PSSpecifierGroupBuilder.__allocating_init(_:name:)(v4, v5, v16, v17);
  MEMORY[0x1E69E5928](v27);
  v31[6] = v27;
  v25 = sub_1AC39E698(v18);
  MEMORY[0x1E69E5920](v27);

  MEMORY[0x1E69E5928](v27);
  v22 = v32;
  v32[3] = v20;
  v32[0] = v27;
  v6 = sub_1AC3A3578();
  v24 = v33;
  AnyBindable.init(identity:name:target:getSelector:setSelector:cell:buttonAction:group:detail:getAction:setAction:buttonTapAction:)(v23, v23, v23, v23, v22, v23, v23, -1, v33, 0, v6 & v21, 0, 0, 0, 0);
  v28 = sub_1AC39E760(v24, v7);
  sub_1AC39DEE0(v24);

  MEMORY[0x1E69E5928](v27);
  v31[2] = v27;
  v29 = sub_1AC39F400(v26, v31);
  MEMORY[0x1E69E5920](v27);

  v30 = sub_1AC39F548();

  return v30;
}

uint64_t sub_1AC3A7FCC(void *a1, uint64_t a2)
{
  v21 = a1;
  v10[1] = a2;
  v26 = 0;
  v25 = 0;
  v12 = 0;
  v16 = sub_1AC3B7ED4();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v11 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v15 = v10 - v11;
  v26 = v2;
  v25 = v3;
  v24 = v3;
  sub_1AC3B7F54();
  sub_1AC3B7EC4();
  v5 = type metadata accessor for HPCUIAdaptiveVolumeDetailController(v12, v4);
  v17 = sub_1AC3873BC(v15, v5);
  v18 = v6;
  (*(v13 + 8))(v15, v16);
  v23 = sub_1AC3B7EE4();

  v20 = *MEMORY[0x1E69C5900];
  MEMORY[0x1E69E5928](v20);
  sub_1AC3B7EF4();
  v19 = v7;
  v22 = sub_1AC3B7EE4();

  *&v8 = MEMORY[0x1E69E5920](v20).n128_u64[0];
  [v21 setProperty:v23 forKey:{v22, v8}];
  MEMORY[0x1E69E5920](v22);
  return swift_unknownObjectRelease();
}

uint64_t sub_1AC3A819C(void *a1, uint64_t a2, __n128 a3)
{
  type metadata accessor for HPCUIAdaptiveVolumeSliderCell(0, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555708, &qword_1AC3BC048);
  v11 = sub_1AC3B8584();
  v8 = *MEMORY[0x1E69C5860];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C5860]);
  sub_1AC3B7EF4();
  v10 = sub_1AC3B7EE4();

  [a1 setProperty:v11 forKey:{v10, MEMORY[0x1E69E5920](v8).n128_f64[0]}];
  MEMORY[0x1E69E5920](v10);
  swift_unknownObjectRelease();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555710, &qword_1AC3BC050);
  v13 = sub_1AC3B8574();
  v14 = v3;
  *v3 = sub_1AC3B7F54();
  v14[1] = v4;
  v15 = sub_1AC3A7484();
  if (v15)
  {
    v7 = v15;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v14[2] = v7;
  sub_1AC36EE1C(v13, v12);
  sub_1AC3B7434();
  sub_1AC3B7E74();
  v6 = sub_1AC3B7E64();

  [a1 setUserInfo_];
  return swift_unknownObjectRelease();
}

double sub_1AC3A8400(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC20HeadphoneCommonUIKit35HPCUIAdaptiveVolumeDetailController____lazy_storage___sliderSection);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();

  return result;
}

void (*sub_1AC3A8480(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1AC3A7BDC();
  return sub_1AC3A84DC;
}

void sub_1AC3A84DC(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;

    sub_1AC3A8400(v2);
    sub_1AC358148(a1);
  }

  else
  {
    sub_1AC3A8400(*a1);
  }
}

void sub_1AC3A8548()
{
  v90 = sub_1AC3A9298;
  v91 = sub_1AC3A9268;
  v92 = sub_1AC377AC8;
  v93 = sub_1AC3AF2B0;
  v94 = sub_1AC377AC8;
  v95 = sub_1AC377AC0;
  v96 = sub_1AC377AC0;
  v97 = sub_1AC377AD4;
  v98 = sub_1AC377AC0;
  v99 = sub_1AC377AC0;
  v100 = sub_1AC377AD4;
  v101 = "Fatal error";
  v102 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v103 = "HeadphoneCommonUIKit/SliderUI.swift";
  v135 = 0;
  v104 = 0;
  v125 = 0;
  v121 = 0;
  v105 = 0;
  v106 = sub_1AC3B7524();
  v107 = *(v106 - 8);
  v108 = v106 - 8;
  v109 = (*(v107 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v110 = v34 - v109;
  v112 = sub_1AC3B7ED4();
  v113 = *(v112 - 8);
  v114 = v112 - 8;
  v115 = (*(v113 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x1EEE9AC00](v111);
  v116 = v34 - v115;
  v135 = v1;
  v117 = [v1 specifier];
  if (v117)
  {
    v89 = v117;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v87 = v89;
  v88 = [v89 userInfo];
  if (v88)
  {
    v86 = v88;
    v85 = v88;
    v84 = v118;
    sub_1AC3B8384();
    sub_1AC377D20(v84, &v131);
    swift_unknownObjectRelease();
  }

  else
  {
    v131 = 0uLL;
    v132 = 0uLL;
  }

  v133 = v131;
  v134 = v132;
  MEMORY[0x1E69E5920](v87);
  if (*(&v134 + 1))
  {
    sub_1AC39B678(0, v2);
    if (swift_dynamicCast())
    {
      v83 = v118[4];
    }

    else
    {
      v83 = 0;
    }

    v82 = v83;
  }

  else
  {
    sub_1AC38FF40(&v133);
    v82 = 0;
  }

  v81 = v82;
  if (v82)
  {
    v80 = v81;
    v77 = v81;
    v125 = v81;
    sub_1AC3B7F54();
    v76 = v3;
    v78 = sub_1AC3B7EE4();

    v79 = [v77 objectForKey_];
    swift_unknownObjectRelease();
    if (v79)
    {
      v75 = v79;
      v74 = v79;
      v73 = v119;
      sub_1AC3B8384();
      sub_1AC377D20(v73, &v122);
      swift_unknownObjectRelease();
    }

    else
    {
      v122 = 0uLL;
      v123 = 0uLL;
    }

    v124[0] = v122;
    v124[1] = v123;
    if (*(&v123 + 1))
    {
      sub_1AC3B7434();
      if (swift_dynamicCast())
      {
        v72 = v119[4];
      }

      else
      {
        v72 = 0;
      }

      v71 = v72;
    }

    else
    {
      sub_1AC38FF40(v124);
      v71 = 0;
    }

    v70 = v71;
    if (v71)
    {
      v69 = v70;
      v68 = v70;
      v121 = v70;
      MEMORY[0x1E69E5928](v70);
      sub_1AC3A74F4(v68);
      MEMORY[0x1E69E5928](v111);
      v63 = type metadata accessor for HPCUIAdaptiveVolumeDetailController(0, v4);
      v120.receiver = v111;
      v120.super_class = v63;
      objc_msgSendSuper2(&v120, sel_viewDidLoad);
      MEMORY[0x1E69E5920](v111);
      *&v5 = MEMORY[0x1E69E5928](v111).n128_u64[0];
      v67 = [v111 navigationItem];
      MEMORY[0x1E69E5920](v111);
      v119[5] = v111;
      sub_1AC3B7F54();
      sub_1AC3B7EC4();
      v64 = sub_1AC3873BC(v116, v63);
      v65 = v6;
      (*(v113 + 8))(v116, v112);
      v66 = sub_1AC3B7EE4();

      [v67 setTitle_];
      MEMORY[0x1E69E5920](v66);
      MEMORY[0x1E69E5920](v67);
      MEMORY[0x1E69E5920](v68);
      MEMORY[0x1E69E5920](v77);
      return;
    }

    MEMORY[0x1E69E5920](v77);
  }

  v7 = v110;
  v8 = sub_1AC3A3660();
  (*(v107 + 16))(v7, v8, v106);
  v48 = 32;
  v49 = 7;
  v9 = swift_allocObject();
  v50 = v9;
  *(v9 + 16) = v90;
  *(v9 + 24) = 0;
  v61 = sub_1AC3B7504();
  v62 = sub_1AC3B8254();
  v46 = 17;
  v52 = swift_allocObject();
  v45 = 32;
  *(v52 + 16) = 32;
  v53 = swift_allocObject();
  v47 = 8;
  *(v53 + 16) = 8;
  v10 = swift_allocObject();
  v44 = v10;
  *(v10 + 16) = v91;
  *(v10 + 24) = 0;
  v11 = swift_allocObject();
  v12 = v44;
  v54 = v11;
  *(v11 + 16) = v92;
  *(v11 + 24) = v12;
  v55 = swift_allocObject();
  *(v55 + 16) = v45;
  v56 = swift_allocObject();
  *(v56 + 16) = v47;
  v13 = swift_allocObject();
  v14 = v50;
  v51 = v13;
  *(v13 + 16) = v93;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v51;
  v58 = v15;
  *(v15 + 16) = v94;
  *(v15 + 24) = v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5549B0, &unk_1AC3BAF60);
  v57 = sub_1AC3B8574();
  v59 = v17;

  v18 = v52;
  v19 = v59;
  *v59 = v95;
  v19[1] = v18;

  v20 = v53;
  v21 = v59;
  v59[2] = v96;
  v21[3] = v20;

  v22 = v54;
  v23 = v59;
  v59[4] = v97;
  v23[5] = v22;

  v24 = v55;
  v25 = v59;
  v59[6] = v98;
  v25[7] = v24;

  v26 = v56;
  v27 = v59;
  v59[8] = v99;
  v27[9] = v26;

  v28 = v57;
  v29 = v58;
  v30 = v59;
  v31 = v60;
  v59[10] = v100;
  v30[11] = v29;
  sub_1AC36EE1C(v28, v31);

  if (os_log_type_enabled(v61, v62))
  {
    v32 = v104;
    v36 = sub_1AC3B8334();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F90, &qword_1AC3BB7E0);
    v37 = sub_1AC374C60(0, v35, v35);
    v38 = sub_1AC374C60(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v40 = &v130;
    v130 = v36;
    v41 = &v129;
    v129 = v37;
    v42 = &v128;
    v128 = v38;
    v39 = 2;
    sub_1AC374CB4(2, &v130);
    sub_1AC374CB4(v39, v40);
    v126 = v95;
    v127 = v52;
    sub_1AC374CC8(&v126, v40, v41, v42);
    v43 = v32;
    if (v32)
    {

      __break(1u);
    }

    else
    {
      v126 = v96;
      v127 = v53;
      sub_1AC374CC8(&v126, &v130, &v129, &v128);
      v34[3] = 0;
      v126 = v97;
      v127 = v54;
      sub_1AC374CC8(&v126, &v130, &v129, &v128);
      v34[2] = 0;
      v126 = v98;
      v127 = v55;
      sub_1AC374CC8(&v126, &v130, &v129, &v128);
      v34[1] = 0;
      v126 = v99;
      v127 = v56;
      sub_1AC374CC8(&v126, &v130, &v129, &v128);
      v34[0] = 0;
      v126 = v100;
      v127 = v58;
      sub_1AC374CC8(&v126, &v130, &v129, &v128);
      _os_log_impl(&dword_1AC345000, v61, v62, "%s: HPCUIAdaptiveVolumeDetailController Depedencies not meet! %s", v36, 0x16u);
      sub_1AC374D14(v37, 0, v35);
      sub_1AC374D14(v38, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC3B8314();
    }
  }

  else
  {
  }

  v33 = MEMORY[0x1E69E5920](v61);
  (*(v107 + 8))(v110, v106, v33);
}

double sub_1AC3A9298@<D0>(uint64_t *a1@<X8>)
{
  sub_1AC3B7464();
  v3 = sub_1AC3B7454();
  sub_1AC3B7444();
  sub_1AC3B7434();
  *a1 = sub_1AC3B7E84();
  MEMORY[0x1E69E5920](v3);

  return result;
}

uint64_t sub_1AC3A9380()
{
  v92 = sub_1AC3A9298;
  v93 = sub_1AC3AA0B0;
  v94 = sub_1AC377AC8;
  v95 = sub_1AC3AF2B0;
  v96 = sub_1AC377AC8;
  v97 = sub_1AC377AC0;
  v98 = sub_1AC377AC0;
  v99 = sub_1AC377AD4;
  v100 = sub_1AC377AC0;
  v101 = sub_1AC377AC0;
  v102 = sub_1AC377AD4;
  v103 = sub_1AC3AA0E0;
  v118 = 0;
  v117 = 0;
  v104 = 0;
  v105 = sub_1AC3B7524();
  v106 = *(v105 - 8);
  v107 = v105 - 8;
  v108 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v105);
  v109 = v40 - v108;
  v118 = v0;
  v116 = sub_1AC3A7484();
  v90 = v116 != 0;
  v89 = v90;
  sub_1AC35E758(&v116);
  if (!v89)
  {
    v12 = v109;
    v50 = 0;
    v51 = sub_1AC393AEC(0, v1);
    v52 = sub_1AC3B8574();

    v117 = v52;
    v55 = sub_1AC3B8074();

    sub_1AC3B7F54();
    v53 = v13;
    v54 = sub_1AC3B7EE4();

    [v91 setValue:v55 forKey:v54];
    MEMORY[0x1E69E5920](v54);
    swift_unknownObjectRelease();
    v14 = sub_1AC3A3660();
    (*(v106 + 16))(v12, v14, v105);
    v60 = 32;
    v61 = 7;
    v15 = swift_allocObject();
    v62 = v15;
    *(v15 + 16) = v92;
    *(v15 + 24) = 0;
    v73 = sub_1AC3B7504();
    v74 = sub_1AC3B8254();
    v58 = 17;
    v64 = swift_allocObject();
    v57 = 32;
    *(v64 + 16) = 32;
    v65 = swift_allocObject();
    v59 = 8;
    *(v65 + 16) = 8;
    v16 = swift_allocObject();
    v56 = v16;
    *(v16 + 16) = v93;
    *(v16 + 24) = 0;
    v17 = swift_allocObject();
    v18 = v56;
    v66 = v17;
    *(v17 + 16) = v94;
    *(v17 + 24) = v18;
    v67 = swift_allocObject();
    *(v67 + 16) = v57;
    v68 = swift_allocObject();
    *(v68 + 16) = v59;
    v19 = swift_allocObject();
    v20 = v62;
    v63 = v19;
    *(v19 + 16) = v95;
    *(v19 + 24) = v20;
    v21 = swift_allocObject();
    v22 = v63;
    v70 = v21;
    *(v21 + 16) = v96;
    *(v21 + 24) = v22;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5549B0, &unk_1AC3BAF60);
    v69 = sub_1AC3B8574();
    v71 = v23;

    v24 = v64;
    v25 = v71;
    *v71 = v97;
    v25[1] = v24;

    v26 = v65;
    v27 = v71;
    v71[2] = v98;
    v27[3] = v26;

    v28 = v66;
    v29 = v71;
    v71[4] = v99;
    v29[5] = v28;

    v30 = v67;
    v31 = v71;
    v71[6] = v100;
    v31[7] = v30;

    v32 = v68;
    v33 = v71;
    v71[8] = v101;
    v33[9] = v32;

    v34 = v69;
    v35 = v70;
    v36 = v71;
    v37 = v72;
    v71[10] = v102;
    v36[11] = v35;
    sub_1AC36EE1C(v34, v37);

    if (os_log_type_enabled(v73, v74))
    {
      v38 = v104;
      v42 = sub_1AC3B8334();
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F90, &qword_1AC3BB7E0);
      v43 = sub_1AC374C60(0, v41, v41);
      v44 = sub_1AC374C60(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v46 = &v115;
      v115 = v42;
      v47 = &v114;
      v114 = v43;
      v48 = &v113;
      v113 = v44;
      v45 = 2;
      sub_1AC374CB4(2, &v115);
      sub_1AC374CB4(v45, v46);
      v111 = v97;
      v112 = v64;
      sub_1AC374CC8(&v111, v46, v47, v48);
      v49 = v38;
      if (v38)
      {

        __break(1u);
      }

      else
      {
        v111 = v98;
        v112 = v65;
        sub_1AC374CC8(&v111, &v115, &v114, &v113);
        v40[3] = 0;
        v111 = v99;
        v112 = v66;
        sub_1AC374CC8(&v111, &v115, &v114, &v113);
        v40[2] = 0;
        v111 = v100;
        v112 = v67;
        sub_1AC374CC8(&v111, &v115, &v114, &v113);
        v40[1] = 0;
        v111 = v101;
        v112 = v68;
        sub_1AC374CC8(&v111, &v115, &v114, &v113);
        v40[0] = 0;
        v111 = v102;
        v112 = v70;
        sub_1AC374CC8(&v111, &v115, &v114, &v113);
        _os_log_impl(&dword_1AC345000, v73, v74, "%s: HPCUIAdaptiveVolumeDetailController Depedencies not meet! %s", v42, 0x16u);
        sub_1AC374D14(v43, 0, v41);
        sub_1AC374D14(v44, 2, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC3B8314();
      }
    }

    else
    {
    }

    v39 = MEMORY[0x1E69E5920](v73);
    (*(v106 + 8))(v109, v105, v39);
    sub_1AC358148(&v117);
    return 0;
  }

  v2 = v104;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555160, &qword_1AC3BBC60);
  v84 = sub_1AC3B8574();
  v83 = v3;
  v4 = sub_1AC3A7BDC();
  v5 = v86;
  v6 = v4;
  v7 = v84;
  *v83 = v6;
  sub_1AC36EE1C(v7, v5);
  v110 = v8;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555570, &unk_1AC3BBE68);
  v87 = sub_1AC3AF3A0();
  sub_1AC3941C8();
  result = sub_1AC3B8004();
  v88 = result;
  if (!v2)
  {
    v79 = v88;
    sub_1AC358148(&v110);

    v80 = &v117;
    v117 = v79;
    v78 = sub_1AC393AEC(0, v10);
    v77 = sub_1AC3B8074();
    sub_1AC3B7F54();
    v75 = v11;
    v76 = sub_1AC3B7EE4();

    [v91 setValue:v77 forKey:v76];
    MEMORY[0x1E69E5920](v76);
    swift_unknownObjectRelease();
    v81 = sub_1AC3B8474();

    sub_1AC358148(v80);
    return v81;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC3AA0E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = v4;
  return result;
}

id HPCUIAdaptiveVolumeDetailController.__deallocating_deinit(__n128 a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for HPCUIAdaptiveVolumeDetailController(0, a3);
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_1AC3AA290()
{
  v2 = *(v0 + qword_1EB555580);

  return v2;
}

uint64_t sub_1AC3AA2FC()
{
  v2 = *(v0 + qword_1EB555588);

  return v2;
}

uint64_t sub_1AC3AA368()
{
  v2 = (v0 + qword_1EB555590);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

double sub_1AC3AA400(uint64_t a1)
{

  v3 = (v1 + qword_1EB555590);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();

  return result;
}

id sub_1AC3AA550()
{
  [v0 bounds];
  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  MEMORY[0x1E69E5920](v0);
  return [v0 trackRectForBounds_];
}

uint64_t sub_1AC3AA670()
{
  [v0 maximumValue];
  MEMORY[0x1E69E5920](v0);

  v3 = sub_1AC3B80B4();

  result = v3;
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
  }

  return result;
}

void sub_1AC3AA7F8()
{
  v22 = 0;
  v15 = 0;
  v21 = *((*v0 & *MEMORY[0x1E69E7D40]) + 0x50);
  v16 = *(v0 + qword_1EB555580);

  v18 = sub_1AC3B80B4();
  v17 = v18;

  if (v18 < 0)
  {
    LODWORD(v7) = 0;
    v6 = 760;
    LOBYTE(v5) = 2;
    sub_1AC3B8494();
    __break(1u);
  }

  v9 = 0;
  v19 = 0;
  v20 = v17;
  v1 = v14;
  v8[2] = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v5;
  v7 = v2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554750, &unk_1AC3BAB60);
  v12 = type metadata accessor for CGRect(v9);
  v3 = sub_1AC3AF454();
  v13 = sub_1AC3904D8(sub_1AC3AF428, v10, v11, v12, MEMORY[0x1E69E73E0], v3, MEMORY[0x1E69E7410], v4);
  v8[1] = v13;
}

void sub_1AC3AA9F8(uint64_t a1@<X8>, uint64_t *a2@<X0>)
{
  v2 = sub_1AC3ADEF4(*a2);
  *a1 = sub_1AC3AE47C(v2);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

uint64_t sub_1AC3AAA94()
{
  [v0 value];
  v3 = v1;
  MEMORY[0x1E69E5920](v0);
  return sub_1AC3ADF68(v3);
}

void (*sub_1AC3AABA8(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1AC3AAA94();
  return sub_1AC3AAC30;
}

double sub_1AC3AAC88()
{

  sub_1AC3AAA94();
  sub_1AC3B80F4();

  return result;
}

uint64_t sub_1AC3AAD14(uint64_t a1)
{
  v5 = *((*v1 & *MEMORY[0x1E69E7D40]) + 0x50);
  v2 = (*(*((*v1 & *MEMORY[0x1E69E7D40]) + 0x58) + 8))();
  sub_1AC3AAB24(v2);
  return (*(*(v5 - 8) + 8))(a1);
}

uint64_t (*sub_1AC3AADFC(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 47689);
  *a1 = v6;
  *v6 = v1;
  v2 = *((*v1 & *MEMORY[0x1E69E7D40]) + 0x50);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 47689);
  v6[4] = __swift_coroFrameAllocStub(v5, 47689);
  sub_1AC3AAC88();
  return sub_1AC3AAF38;
}

void sub_1AC3AAF38(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_1AC3AAD14(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_1AC3AAD14(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

double sub_1AC3AB034(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = sub_1AC3AB0A4();
  MEMORY[0x1E69E5920](a1);
  return v3;
}

double sub_1AC3AB0A4()
{
  v20 = 0;
  v14 = 0;
  v15 = 0;
  v10 = *v0 & *MEMORY[0x1E69E7D40];
  v20 = v0;
  v19 = *(v10 + 80);
  MEMORY[0x1E69E5928](v0);
  v2 = type metadata accessor for HeadphoneAccessoryLabeledSlider(0, v19, *(v10 + 88), v1);
  v18.receiver = v0;
  v18.super_class = v2;
  objc_msgSendSuper2(&v18, sel_intrinsicContentSize);
  v16 = v3;
  v17 = v4;
  v14 = v3;
  v15 = v4;
  MEMORY[0x1E69E5920](v0);
  [v0 bounds];
  v13[2] = v5;
  v13[3] = v6;
  *&v13[4] = v7;
  v13[5] = v8;
  v11 = v7;
  MEMORY[0x1E69E5920](v0);
  v12 = *(v0 + qword_1EB555588);

  v13[0] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5555B8, &qword_1AC3BBE78);
  sub_1AC3AF524();
  sub_1AC3B7FF4();
  sub_1AC358148(v13);
  return v11;
}

uint64_t sub_1AC3AB298(uint64_t *a1, id *a2)
{
  v11 = *a2;
  [v11 frame];
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  MEMORY[0x1E69E5920](v11);
  sub_1AC3AB384(v7, v8, v9, v10);
  sub_1AC3AFF00();
  return sub_1AC3B85B4();
}

uint64_t sub_1AC3AB3C4()
{
  v2 = *(v0 + qword_1EB5555B0);

  return v2;
}

void sub_1AC3AB474(uint64_t a1, uint64_t a2)
{
  v102 = a2;
  v110 = a1;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v103 = 0;
  v122 = 0;
  v104 = *v2 & *MEMORY[0x1E69E7D40];
  v105 = v104;
  v106 = *(v104 + 80);
  v132 = v106;
  v130 = a1;
  v129 = a2;
  v131 = v2;
  v109 = v2;
  v108 = qword_1EB555590;
  v107 = sub_1AC377CBC(0, a2);
  *&v2[v108] = sub_1AC3B7E44();
  *&v131[qword_1EB555598] = 0x4024000000000000;
  *&v131[qword_1EB5555A0] = 0x403B000000000000;

  if (sub_1AC3B80B4() <= 2)
  {
    sub_1AC3B7F54();
    LODWORD(v30) = 0;
    v29 = 240;
    sub_1AC3B84A4();
    __break(1u);
  }

  v3 = v103;

  v91 = v131;

  *&v131[qword_1EB5555B0] = v102;
  v95 = [objc_opt_self() sharedApplication];
  v94 = [v95 connectedScenes];
  v92 = v94;
  v97 = 0;
  v93 = sub_1AC3AF5AC(0, v4);
  sub_1AC3AF610(v93, v5);
  v96 = sub_1AC3B81A4();

  v127 = v96;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5555D8, &qword_1AC3BBE80);
  v99 = sub_1AC3AF690(0, v98);
  sub_1AC3AF6F4();
  v100 = v3;
  v101 = sub_1AC3B7FC4();
  if (v3)
  {
    __break(1u);
    __break(1u);
    __break(1u);
    goto LABEL_24;
  }

  v88 = v101;
  sub_1AC358148(&v127);

  v126 = v101;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5555F0, &unk_1AC3BBE88);
  sub_1AC3AF77C();
  sub_1AC3B8214();
  v90 = v125;
  v89 = v125;

  if (!v125)
  {
    v85 = v100;
LABEL_22:
    v72 = 0;
    v73 = 1;
    v74 = v85;
    goto LABEL_10;
  }

  v86 = v89;
  v80 = v89;
  v78 = [v89 windows];
  v77 = v78;
  v82 = 0;
  v79 = sub_1AC3AF958(0, v6);
  v81 = sub_1AC3B8084();

  v111[0] = v81;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555618, &qword_1AC3BBE98);
  sub_1AC3AF9BC();
  sub_1AC3B7FE4();
  v84 = v100;
  sub_1AC358148(v111);

  v76 = v128;
  if (!v128)
  {
    v85 = v84;
    goto LABEL_22;
  }

  v75 = v76;
  v69 = v76;
  v70 = [v76 traitCollection];

  v71 = [v70 layoutDirection];
  v72 = v71;
  v73 = 0;
  v74 = v84;
LABEL_10:
  v68 = v74;
  v123 = v72;
  v124 = v73 & 1;
  if (v73)
  {
    v67 = 0;
  }

  else
  {
    v67 = v123;
  }

  v122 = v67;
  v65 = v131;
  v121[2] = v67;
  v121[1] = 1;
  v66 = type metadata accessor for UITraitEnvironmentLayoutDirection(0);
  sub_1AC37A2D8();
  if (sub_1AC3B8594())
  {

    v111[1] = v110;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554AA8, &qword_1AC3BB040);
    sub_1AC3938E0();
    v64 = sub_1AC3B8024();
  }

  else
  {

    v64 = v110;
  }

  v7 = v68;
  *&v65[qword_1EB555580] = v64;
  v54 = v131;
  v55 = *&v131[qword_1EB555580];

  v121[0] = v55;
  v56 = &v31;
  MEMORY[0x1EEE9AC00](&v31);
  v58 = v28;
  v29 = v106;
  v57 = *(v8 + 88);
  v30 = v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554AA8, &qword_1AC3BB040);
  v60 = sub_1AC3AF840(0, v9);
  v10 = sub_1AC37A1D0();
  v12 = sub_1AC3904D8(sub_1AC3AF804, v58, v59, v60, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  v61 = v7;
  v62 = v12;
  v47 = v12;
  sub_1AC358148(v121);
  v13 = v106;
  v14 = v57;
  *&v54[qword_1EB555588] = v47;
  v48 = v131;
  v49 = 0.0;
  v51 = type metadata accessor for HeadphoneAccessoryLabeledSlider(0, v13, v14, v15);
  v120.receiver = v48;
  v120.super_class = v51;
  v116 = v49;
  v117 = v49;
  v118 = v49;
  v119 = v49;
  v52 = objc_msgSendSuper2(&v120, sel_initWithFrame_, v49, v49, v49, v49);
  v50 = v52;
  v16 = v52;
  v131 = v52;
  v17 = v52;
  v115.receiver = v52;
  v115.super_class = v51;
  objc_msgSendSuper2(&v115, sel__setTrackEnabled_, 1);

  v18 = v52;
  [v52 setMinimumValue_];

  v19 = v52;
  v20 = sub_1AC3B80B4();
  v22 = __OFSUB__(v20, 1);
  v53 = v20 - 1;
  if (v22)
  {
    goto LABEL_25;
  }

  v23 = v61;
  *&v21 = v53;
  [v50 setMaximumValue_];

  v41 = v131;
  v42 = *&v131[qword_1EB555588];

  v114 = v42;
  v24 = v50;
  v43 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v44 = &v28[-32];
  *&v28[-16] = v25;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5555B8, &qword_1AC3BBE78);
  v26 = sub_1AC3AF8D0();
  v46 = sub_1AC3904D8(sub_1AC3AF8A4, v44, v45, v107, MEMORY[0x1E69E73E0], v26, MEMORY[0x1E69E7410], v27);
  if (!v23)
  {
    v32 = v46;

    sub_1AC358148(&v114);
    v34 = &qword_1EB555000;
    v31 = &v41[qword_1EB555590];
    v33 = &v113;
    v35 = 0;
    swift_beginAccess();
    *v31 = v32;

    swift_endAccess();
    v39 = objc_opt_self();
    v36 = &v131[v34[178]];
    v37 = &v112;
    swift_beginAccess();
    v38 = *v36;

    swift_endAccess();
    v40 = sub_1AC3B8074();

    [v39 activateConstraints_];

    return;
  }

LABEL_24:

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1AC3ABE80(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    MEMORY[0x1E69E5920](v3);
    *a2 = 0;
  }
}

double sub_1AC3ABF54@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_1AC3AF840(0, a2);
  v12 = sub_1AC3A3F90(0.0, 0.0, 0.0, 0.0);
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x1E69E5920](v12);
  type metadata accessor for HeadphoneAccessoryLabeledSlider(0, a2, a3, v4);
  v8 = *MEMORY[0x1E69DDD28];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69DDD28]);
  v9 = sub_1AC3AC110(v8, 0, 1);
  [v12 setFont_];
  MEMORY[0x1E69E5920](v9);

  v10 = sub_1AC3B7EE4();

  [v12 setText_];
  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5928](v12);
  *a4 = v12;
  *&result = MEMORY[0x1E69E5920](v12).n128_u64[0];
  return result;
}

id sub_1AC3AC110(uint64_t a1, uint64_t a2, char a3)
{
  v41[0] = 0;
  v45 = a1;
  v43 = a2;
  v44 = a3 & 1;
  v42 = v3;
  v41[1] = *(v3 + 80);
  v32 = [objc_opt_self() sharedApplication];
  v34 = [v32 preferredContentSizeCategory];
  MEMORY[0x1E69E5920](v32);
  MEMORY[0x1E69E5928](v34);
  v33 = *MEMORY[0x1E69DDC68];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69DDC68]);
  v40 = v33;
  v39[1] = v34;
  type metadata accessor for UIContentSizeCategory(0);
  sub_1AC35CA5C();
  v35 = sub_1AC3B7EB4();
  sub_1AC35E758(&v40);
  if (v35)
  {
    MEMORY[0x1E69E5920](v34);
    MEMORY[0x1E69E5920](v34);
LABEL_9:
    v21 = [objc_opt_self() sharedApplication];
    v22 = [v21 preferredContentSizeCategory];
    MEMORY[0x1E69E5920](v21);
    MEMORY[0x1E69E5928](v22);
    v41[0] = v22;
    v23 = v22;
    goto LABEL_11;
  }

  MEMORY[0x1E69E5920](v34);
  MEMORY[0x1E69E5928](v34);
  v28 = *MEMORY[0x1E69DDC88];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69DDC88]);
  v39[0] = v28;
  v38[1] = v34;
  v29 = sub_1AC3B7EB4();
  sub_1AC35E758(v39);
  if (v29)
  {
    MEMORY[0x1E69E5920](v34);
    MEMORY[0x1E69E5920](v34);
    goto LABEL_9;
  }

  MEMORY[0x1E69E5920](v34);
  MEMORY[0x1E69E5928](v34);
  v26 = *MEMORY[0x1E69DDC78];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69DDC78]);
  v38[0] = v26;
  v37[1] = v34;
  v27 = sub_1AC3B7EB4();
  sub_1AC35E758(v38);
  if (v27)
  {
    MEMORY[0x1E69E5920](v34);
    MEMORY[0x1E69E5920](v34);
    goto LABEL_9;
  }

  MEMORY[0x1E69E5920](v34);
  MEMORY[0x1E69E5928](v34);
  v24 = *MEMORY[0x1E69DDC70];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69DDC70]);
  v37[0] = v24;
  v25 = sub_1AC3B7EB4();
  sub_1AC35E758(v37);
  if (v25)
  {
    MEMORY[0x1E69E5920](v34);
    MEMORY[0x1E69E5920](v34);
    goto LABEL_9;
  }

  MEMORY[0x1E69E5920](v34);
  v20 = *MEMORY[0x1E69DDC70];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69DDC70]);
  MEMORY[0x1E69E5928](v20);
  v41[0] = v20;
  MEMORY[0x1E69E5920](v34);
  v23 = v20;
LABEL_11:
  sub_1AC3AFA44(0, v4);
  v17 = sub_1AC3AE970(v23);
  v16 = objc_opt_self();
  v18 = [v16 preferredFontDescriptorWithTextStyle:a1 compatibleWithTraitCollection:{v17, MEMORY[0x1E69E5928](v17).n128_f64[0]}];
  MEMORY[0x1E69E5920](v17);
  sub_1AC3AFAA8(0, v5);
  MEMORY[0x1E69E5928](a1);
  v19 = sub_1AC3AEA84(a1);
  if (a3)
  {
    v11 = objc_opt_self();
    [v18 pointSize];
    v12 = [v11 systemFontOfSize_];
    v6 = MEMORY[0x1E69E5928](v12).n128_u64[0];
    v36 = v12;
    v15 = v12;
  }

  else
  {
    v13 = objc_opt_self();
    [v18 pointSize];
    v14 = [v13 systemFontOfSize_weight_];
    v6 = MEMORY[0x1E69E5928](v14).n128_u64[0];
    v36 = v14;
    v15 = v14;
  }

  [v18 pointSize];
  v9 = v7;
  MEMORY[0x1E69E5928](v17);
  v10 = [v19 scaledFontForFont:v15 maximumPointSize:v17 compatibleWithTraitCollection:v9];
  MEMORY[0x1E69E5920](v17);
  MEMORY[0x1E69E5920](v15);
  MEMORY[0x1E69E5920](v36);
  MEMORY[0x1E69E5920](v19);
  MEMORY[0x1E69E5920](v18);
  MEMORY[0x1E69E5920](v17);
  sub_1AC35E758(v41);
  return v10;
}

id sub_1AC3AC7C8@<X0>(char *a1@<X1>, id *a2@<X0>, void *a3@<X8>)
{
  v12 = *a2;
  [a1 addSubview_];
  v7 = [v12 0x1FBBB4950];
  MEMORY[0x1E69E5920](v12);
  v6 = [a1 0x1FBBB4950];
  MEMORY[0x1E69E5920](a1);
  v8 = [v7 0x1FBB28F7ELL];
  MEMORY[0x1E69E5920](v6);
  [v8 0x1FB853878];
  MEMORY[0x1E69E5920](v8);
  v10 = [v12 0x1FBB20D25];
  MEMORY[0x1E69E5920](v12);
  v9 = [a1 0x1FBB20D25];
  v11 = [v10 constraintEqualToAnchor_];
  MEMORY[0x1E69E5920](v9);
  [v11 0x1FB853878];
  MEMORY[0x1E69E5920](v11);
  v15 = [v12 centerXAnchor];
  MEMORY[0x1E69E5920](v12);
  v14 = [a1 leftAnchor];
  MEMORY[0x1E69E5920](a1);
  [a1 value];
  v13 = v4;
  MEMORY[0x1E69E5920](a1);
  v16 = [v15 0x1FBB28F7ELL];
  MEMORY[0x1E69E5920](v14);
  MEMORY[0x1E69E5920](v15);
  result = v16;
  *a3 = v16;
  return result;
}

id sub_1AC3ACB5C(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

void sub_1AC3ACBB0(uint64_t a1, uint64_t a2)
{
  v2 = qword_1EB555590;
  sub_1AC377CBC(0, a2);
  *v2 = sub_1AC3B7E44();
  *qword_1EB555598 = 10.0;
  *qword_1EB5555A0 = 27.0;
  sub_1AC3B7F54();
  sub_1AC3B84A4();
  __break(1u);
}

void sub_1AC3ACD0C(double a1, double a2, double a3, double a4)
{
  v30 = 0u;
  v31 = 0u;
  v29 = 0;
  v5 = *v4 & *MEMORY[0x1E69E7D40];
  *&v30 = a1;
  *(&v30 + 1) = a2;
  *&v31 = a3;
  *(&v31 + 1) = a4;
  v29 = v4;
  v28[1] = *(v5 + 80);
  sub_1AC3ADD9C();
  v18 = [objc_opt_self() systemFillColor];
  [v18 0x1FAA3E978];
  MEMORY[0x1E69E5920](v18);
  sub_1AC37B1F0(0, v6);
  sub_1AC3AA550();
  v22 = v7;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  sub_1AC3AA550();
  v15 = sub_1AC3ACFA4(v11, v12, v13, v14);
  v23 = sub_1AC3A34EC(v22, v19, v20, v21, v15 / 2.0);
  [v23 fill];
  MEMORY[0x1E69E5920](v23);
  v24 = [objc_opt_self() systemGray4Color];
  [v24 0x1FAA3E978];
  MEMORY[0x1E69E5920](v24);
  sub_1AC3AA7F8();
  v27 = v16;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555638, &qword_1AC3BBEA0);
  v17 = sub_1AC3AFB0C();
  MEMORY[0x1AC5B2330](v28, v25, v17);
  sub_1AC358148(&v27);
  v26 = v28[0];
  (MEMORY[0x1E69E5928])();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555648, &qword_1AC3BBEA8);
  sub_1AC3AFBC8();
  sub_1AC3B8014();
  (MEMORY[0x1E69E5920])();
  sub_1AC358148(&v26);
}

double sub_1AC3ACFE4(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v6 = sub_1AC3ADEF4(a1);
  v30 = sub_1AC3AE558(v6);
  if (a1)
  {
    v23 = v30;
  }

  else
  {

    sub_1AC3AF840(0, v7);
    sub_1AC3B80F4();

    [v31 bounds];
    v22 = v8;
    (MEMORY[0x1E69E5920])();
    v23 = v22 / 2.0;
  }

  [a2 maximumValue];
  v21 = v9;
  MEMORY[0x1E69E5920](a2);
  if ((LODWORD(v21) >> 23) == 255)
  {
    sub_1AC3B8494();
    __break(1u);
  }

  if (v21 <= -9.2234e18)
  {
    sub_1AC3B8494();
    __break(1u);
  }

  if (v21 >= 9.2234e18)
  {
    sub_1AC3B8494();
    __break(1u);
  }

  if (a1 == v21)
  {
    sub_1AC3AA550();
    v19 = v10;

    sub_1AC3AF840(0, v11);
    sub_1AC3B80F4();

    [v32 bounds];
    v18 = v12;
    (MEMORY[0x1E69E5920])();
    v20 = v19 - v18 / 2.0;
  }

  else
  {
    v20 = v23;
  }

  sub_1AC3AA368();
  sub_1AC377CBC(0, v13);
  sub_1AC3B80F4();
  [v33 setConstant_];
  (MEMORY[0x1E69E5920])();

  sub_1AC37B1F0(0, v14);
  v15 = sub_1AC3AD488(a3, a4, a5, a6);
  v17 = sub_1AC3A34EC(a3, a4, a5, a6, v15 / 2.0);
  [v17 fill];
  *&result = MEMORY[0x1E69E5920](v17).n128_u64[0];
  return result;
}

double sub_1AC3AD518(uint64_t a1, double a2, double a3, double a4, double a5)
{
  MEMORY[0x1E69E5928](a1);
  sub_1AC3ACD0C(a2, a3, a4, a5);
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double sub_1AC3AD5A8()
{
  v14 = 0;
  v5 = *v0 & *MEMORY[0x1E69E7D40];
  v14 = v0;
  v13 = *(v5 + 80);
  v6 = v13;
  v11 = sub_1AC3AA368();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555658, &qword_1AC3BBEB0);
  v1 = sub_1AC3AFC50();
  MEMORY[0x1AC5B2330](&v12, v7, v1);
  sub_1AC358148(&v11);
  v10 = v12;
  (MEMORY[0x1E69E5928])();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555668, qword_1AC3BBEB8);
  sub_1AC3AFD0C();
  sub_1AC3B8014();
  (MEMORY[0x1E69E5920])();
  sub_1AC358148(&v10);
  (MEMORY[0x1E69E5928])();
  v3 = type metadata accessor for HeadphoneAccessoryLabeledSlider(0, v6, *(v5 + 88), v2);
  v9.receiver = v8;
  v9.super_class = v3;
  objc_msgSendSuper2(&v9, sel_updateConstraints);
  *&result = (MEMORY[0x1E69E5920])().n128_u64[0];
  return result;
}

double sub_1AC3AD86C(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  sub_1AC3AD5A8();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double sub_1AC3AD8BC(double a1, double a2, double a3, double a4)
{
  v23 = 0u;
  v24 = 0u;
  v22 = 0;
  v19 = 0u;
  v20 = 0u;
  v12 = *v4 & *MEMORY[0x1E69E7D40];
  *&v23 = a1;
  *(&v23 + 1) = a2;
  *&v24 = a3;
  *(&v24 + 1) = a4;
  v22 = v4;
  v21 = *(v12 + 80);
  MEMORY[0x1E69E5928](v4);
  v6 = type metadata accessor for HeadphoneAccessoryLabeledSlider(0, v21, *(v12 + 88), v5);
  v18.receiver = v4;
  v18.super_class = v6;
  objc_msgSendSuper2(&v18, sel_trackRectForBounds_, a1, a2, a3, a4);
  v17 = v7;
  *&v19 = v7;
  *(&v19 + 1) = v8;
  *&v20 = v9;
  *(&v20 + 1) = v10;
  MEMORY[0x1E69E5920](v4);
  return v17;
}

double sub_1AC3ADA58(uint64_t a1, double a2, double a3, double a4, double a5)
{
  MEMORY[0x1E69E5928](a1);
  v11 = sub_1AC3AD8BC(a2, a3, a4, a5);
  MEMORY[0x1E69E5920](a1);
  return v11;
}

double sub_1AC3ADBA4(uint64_t a1, uint64_t a2, unsigned int a3, float a4)
{
  MEMORY[0x1E69E5928](a1);
  sub_1AC3B72C4();
  sub_1AC3ADB28(a4);
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

void sub_1AC3ADC0C(char a1, char a2, float a3)
{
  v18 = 0.0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v13 = 0;
  v12 = 0.0;
  v7 = *v3 & *MEMORY[0x1E69E7D40];
  v18 = a3;
  v17 = a1 & 1;
  v16 = a2 & 1;
  v15 = v3;
  v14 = *(v7 + 80);
  v13 = sub_1AC3ADF68(a3);
  v12 = sub_1AC3ADEF4(v13);
  (MEMORY[0x1E69E5928])();
  v5 = type metadata accessor for HeadphoneAccessoryLabeledSlider(0, v14, *(v7 + 88), v4);
  *&v6 = v12;
  v11.receiver = v9;
  v11.super_class = v5;
  objc_msgSendSuper2(&v11, sel_setValue_animated_, a1 & 1, v6);
  (MEMORY[0x1E69E5920])();
  if (a2)
  {
    swift_getWitnessTable();
    sub_1AC3B7644();
    sub_1AC3B7654();
  }
}

double sub_1AC3ADD9C()
{
  v4 = [v0 _minTrackView];
  if (v4)
  {
    v2 = [v0 _maxTrackView];
    v3 = v2;
    if (v2)
    {
      [v4 0x1FB81B678];
      [v3 0x1FB81B678];
      MEMORY[0x1E69E5920](v3);
    }

    *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  }

  return result;
}

float sub_1AC3ADEF4(uint64_t a1)
{
  v3 = a1;
  sub_1AC3AA670();
  return v3 * v1;
}

uint64_t sub_1AC3ADF68(float a1)
{
  v18 = a1;
  v8 = "Fatal error";
  v9 = "Float value cannot be converted to Int because it is either infinite or NaN";
  v10 = "Swift/IntegerTypes.swift";
  v11 = "Float value cannot be converted to Int because the result would be less than Int.min";
  v12 = "Float value cannot be converted to Int because the result would be greater than Int.max";
  v30 = 0;
  v29 = 0;
  v2 = *v1 & *MEMORY[0x1E69E7D40];
  v13 = v1;
  v17 = v2;
  v23 = sub_1AC3B8564();
  v21 = *(v23 - 8);
  v22 = v23 - 8;
  v15 = *(v21 + 64);
  v14 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v24 = &v6[-v14];
  v16 = v14;
  v3 = MEMORY[0x1EEE9AC00](&v6[-v14]);
  v20 = &v6[-v16];
  v30 = LODWORD(v3);
  v29 = v1;
  v28 = *(v17 + 80);
  sub_1AC3AA670();
  v19 = v18 / v4;
  v25 = MEMORY[0x1E69E7038];
  (*(v21 + 104))(v20, *MEMORY[0x1E69E7038], v23);
  v27 = v19;
  (*(v21 + 16))(v24, v20, v23);
  v26 = (*(v21 + 88))(v24, v23);
  if (v26 == *v25)
  {
    v27 = roundf(v19);
    goto LABEL_15;
  }

  if (v26 == *MEMORY[0x1E69E7030])
  {
    v27 = rintf(v19);
    goto LABEL_15;
  }

  if (v26 == *MEMORY[0x1E69E7040])
  {
    goto LABEL_12;
  }

  if (v26 == *MEMORY[0x1E69E7048])
  {
    goto LABEL_14;
  }

  if (v26 == *MEMORY[0x1E69E7020])
  {
    v27 = truncf(v19);
    goto LABEL_15;
  }

  if (v26 != *MEMORY[0x1E69E7028])
  {
    sub_1AC3B8174();
    (*(v21 + 8))(v24, v23);
    goto LABEL_15;
  }

  if ((sub_1AC3B8184() & 1) == 1)
  {
LABEL_14:
    v27 = floorf(v19);
  }

  else
  {
LABEL_12:
    v27 = ceilf(v19);
  }

LABEL_15:
  v7 = v27;
  (*(v21 + 8))(v20, v23);
  if ((LODWORD(v7) >> 23) == 255)
  {
    sub_1AC3B8494();
    __break(1u);
  }

  if (v7 <= -9.2234e18)
  {
    sub_1AC3B8494();
    __break(1u);
  }

  if (v7 >= 9.2234e18)
  {
    sub_1AC3B8494();
    __break(1u);
  }

  return v7;
}

double sub_1AC3AE47C(float a1)
{
  v6 = sub_1AC3AE558(a1) - 1.0;
  sub_1AC3AA550();
  sub_1AC3AE518(v1, v2, v3, v4);
  return v6;
}

double sub_1AC3AE558(float a1)
{
  [v1 maximumValue];
  v11 = v2;
  MEMORY[0x1E69E5920](v1);
  [v1 minimumValue];
  v10 = v3;
  MEMORY[0x1E69E5920](v1);
  sub_1AC3AA550();
  v13 = a1 * ((sub_1AC3AD488(v4, v5, v6, v7) - 16.0) / (v11 - v10));
  sub_1AC3AA550();
  return v8 + 8.0 + v13;
}

id sub_1AC3AE6AC(uint64_t a1)
{
  v13 = 0;
  v12 = 0;
  v6 = *v1 & *MEMORY[0x1E69E7D40];
  v13 = a1;
  v12 = v1;
  v11 = *(v6 + 80);
  MEMORY[0x1E69E5928](v1);
  v3 = type metadata accessor for HeadphoneAccessoryLabeledSlider(0, v11, *(v6 + 88), v2);
  v10.receiver = v1;
  v10.super_class = v3;
  objc_msgSendSuper2(&v10, sel_traitCollectionDidChange_, a1);
  MEMORY[0x1E69E5920](v1);
  v8 = *(v1 + qword_1EB555588);

  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5555B8, &qword_1AC3BBE78);
  sub_1AC3AF524();
  sub_1AC3B8014();
  sub_1AC358148(&v9);
  return [v5 setNeedsDisplay];
}

double sub_1AC3AE83C(id *a1, uint64_t a2, uint64_t a3, __n128 a4, uint64_t a5)
{
  v7 = *a1;
  type metadata accessor for HeadphoneAccessoryLabeledSlider(0, a2, a3, a5);
  v6 = *MEMORY[0x1E69DDD28];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69DDD28]);
  v8 = sub_1AC3AC110(v6, 0, 1);
  [v7 setFont_];
  *&result = MEMORY[0x1E69E5920](v8).n128_u64[0];
  return result;
}

double sub_1AC3AE8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a1);
  sub_1AC3AE6AC(a3);
  MEMORY[0x1E69E5920](a1);
  *&result = MEMORY[0x1E69E5920](a3).n128_u64[0];
  return result;
}

id sub_1AC3AE970(uint64_t a1)
{
  v3 = [swift_getObjCClassFromMetadata() traitCollectionWithPreferredContentSizeCategory_];
  MEMORY[0x1E69E5920](a1);
  return v3;
}

id sub_1AC3AEB10(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 0;
  v8 = *v5 & *MEMORY[0x1E69E7D40];
  v11 = v5;
  v10 = *(v8 + 80);
  v6 = type metadata accessor for HeadphoneAccessoryLabeledSlider(0, v10, *(v8 + 88), a5);
  v9.receiver = v5;
  v9.super_class = v6;
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

void sub_1AC3AEBA4(uint64_t a1)
{
  sub_1AC358148((a1 + qword_1EB555580));
  sub_1AC358148((a1 + qword_1EB555588));
  sub_1AC358148((a1 + qword_1EB555590));
  sub_1AC358148((a1 + qword_1EB5555B0));
}

uint64_t sub_1AC3AEC48@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>, uint64_t x3_0@<X3>)
{
  type metadata accessor for HeadphoneAccessoryLabeledSlider(0, *(a1 + 80), *(a1 + 88), x3_0);
  result = sub_1AC3B7644();
  *a3 = result;
  return result;
}

id sub_1AC3AED04(uint64_t a1)
{
  v4 = [v1 initForTextStyle_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

uint64_t sub_1AC3AED54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v8[1] = a4;
  v9 = *(a3 - 8);
  v10 = a3 - 8;
  v8[0] = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](a1);
  v11 = v8 - v8[0];
  v5(v4);
  v13 = sub_1AC3B8554();
  v14 = v6;
  (*(v9 + 8))(v11, v12);
  return v13;
}

unint64_t sub_1AC3AEE38(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB555518;
  if (!qword_1EB555518)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB555518);
    return ObjCClassMetadata;
  }

  return v4;
}

unint64_t sub_1AC3AEE9C()
{
  v2 = qword_1EB555520;
  if (!qword_1EB555520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555508, &qword_1AC3BBE40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555520);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3AEF24(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB555528;
  if (!qword_1EB555528)
  {
    sub_1AC3AEE38(255, a2);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555528);
    return WitnessTable;
  }

  return v4;
}

uint64_t sub_1AC3AEFA4(uint64_t a1)
{
  v3 = sub_1AC3B82D4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1AC3AF04C(uint64_t a1, double a2)
{
  v4 = sub_1AC3B82F4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  return a1;
}

unint64_t sub_1AC3AF100()
{
  v2 = qword_1EB555530;
  if (!qword_1EB555530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555510, &unk_1AC3BBE48);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555530);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3AF188(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB555538;
  if (!qword_1EB555538)
  {
    sub_1AC377BD0(255, a2);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555538);
    return WitnessTable;
  }

  return v4;
}

unint64_t sub_1AC3AF208()
{
  v2 = qword_1EB555550;
  if (!qword_1EB555550)
  {
    sub_1AC3B7634();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555550);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC3AF2B0()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555560, &unk_1AC3BBE58);
  v1 = sub_1AC3AF318();

  return sub_1AC3AED54(v5, v3, v4, v1);
}

unint64_t sub_1AC3AF318()
{
  v2 = qword_1EB555568;
  if (!qword_1EB555568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555560, &unk_1AC3BBE58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555568);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3AF3A0()
{
  v2 = qword_1EB555578;
  if (!qword_1EB555578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555570, &unk_1AC3BBE68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555578);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3AF454()
{
  v2 = qword_1EB5555A8;
  if (!qword_1EB5555A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB554750, &unk_1AC3BAB60);
    sub_1AC35FE34();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5555A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3AF524()
{
  v2 = qword_1EB5555C0;
  if (!qword_1EB5555C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5555B8, &qword_1AC3BBE78);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5555C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3AF5AC(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB5555C8;
  if (!qword_1EB5555C8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB5555C8);
    return ObjCClassMetadata;
  }

  return v4;
}

unint64_t sub_1AC3AF610(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB5555D0;
  if (!qword_1EB5555D0)
  {
    sub_1AC3AF5AC(255, a2);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5555D0);
    return WitnessTable;
  }

  return v4;
}

unint64_t sub_1AC3AF690(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB5555E0;
  if (!qword_1EB5555E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB5555E0);
    return ObjCClassMetadata;
  }

  return v4;
}

unint64_t sub_1AC3AF6F4()
{
  v2 = qword_1EB5555E8;
  if (!qword_1EB5555E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5555D8, &qword_1AC3BBE80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5555E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3AF77C()
{
  v2 = qword_1EB5555F8;
  if (!qword_1EB5555F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5555F0, &unk_1AC3BBE88);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5555F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3AF840(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB555600;
  if (!qword_1EB555600)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB555600);
    return ObjCClassMetadata;
  }

  return v4;
}

unint64_t sub_1AC3AF8D0()
{
  v2 = qword_1EB555608;
  if (!qword_1EB555608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5555B8, &qword_1AC3BBE78);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555608);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3AF958(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB555610;
  if (!qword_1EB555610)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB555610);
    return ObjCClassMetadata;
  }

  return v4;
}

unint64_t sub_1AC3AF9BC()
{
  v2 = qword_1EB555620;
  if (!qword_1EB555620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555618, &qword_1AC3BBE98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555620);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3AFA44(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB555628;
  if (!qword_1EB555628)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB555628);
    return ObjCClassMetadata;
  }

  return v4;
}

unint64_t sub_1AC3AFAA8(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB555630;
  if (!qword_1EB555630)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB555630);
    return ObjCClassMetadata;
  }

  return v4;
}

unint64_t sub_1AC3AFB0C()
{
  v2 = qword_1EB555640;
  if (!qword_1EB555640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555638, &qword_1AC3BBEA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555640);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3AFBC8()
{
  v2 = qword_1EB555650;
  if (!qword_1EB555650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555648, &qword_1AC3BBEA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555650);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3AFC50()
{
  v2 = qword_1EB555660;
  if (!qword_1EB555660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555658, &qword_1AC3BBEB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555660);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3AFD0C()
{
  v2 = qword_1EB555670[0];
  if (!qword_1EB555670[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555668, qword_1AC3BBEB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EB555670);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC3AFE48(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

unint64_t sub_1AC3AFF00()
{
  v2 = qword_1EB5556F8;
  if (!qword_1EB5556F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5556F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3AFF88(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB555718;
  if (!qword_1EB555718)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB555718);
    return ObjCClassMetadata;
  }

  return v4;
}

unint64_t sub_1AC3AFFEC(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB555720;
  if (!qword_1EB555720)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB555720);
    return ObjCClassMetadata;
  }

  return v4;
}

unint64_t sub_1AC3B0050(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB555728;
  if (!qword_1EB555728)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB555728);
    return ObjCClassMetadata;
  }

  return v4;
}

unint64_t sub_1AC3B00B4(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB555730;
  if (!qword_1EB555730)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB555730);
    return ObjCClassMetadata;
  }

  return v4;
}

unint64_t sub_1AC3B0128()
{
  v2 = qword_1EB555740;
  if (!qword_1EB555740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555738, &qword_1AC3BC058);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555740);
    return WitnessTable;
  }

  return v2;
}

void View.solariumOvalTintedButton(_:)(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v7 = a1;
  v6 = v2;

  sub_1AC3B1030(a1, &v5);
  v4 = v5;
  MEMORY[0x1AC5B1F50]();
  sub_1AC367428(&v4);
}

Swift::Void __swiftcall UIView.pinToOther(_:)(UIView *a1)
{
  v23 = objc_opt_self();
  v22 = sub_1AC377CBC(0, v1);
  v21 = sub_1AC3B8574();
  v20 = v2;
  v7 = [v15 0x1FBB5C529];
  v6 = [a1 0x1FBB5C529];
  v8 = [v7 0x1FBB28F65];
  MEMORY[0x1E69E5920](v6);
  *&v3 = MEMORY[0x1E69E5920](v7).n128_u64[0];
  *v20 = v8;
  v10 = [v15 0x1FBBB59CCLL];
  v9 = [a1 0x1FBBB59CCLL];
  v11 = [v10 0x1FBB28F65];
  MEMORY[0x1E69E5920](v9);
  *&v4 = MEMORY[0x1E69E5920](v10).n128_u64[0];
  v20[1] = v11;
  v13 = [v15 0x1FBBB4950];
  v12 = [a1 0x1FBBB4950];
  v14 = [v13 0x1FBB28F65];
  MEMORY[0x1E69E5920](v12);
  *&v5 = MEMORY[0x1E69E5920](v13).n128_u64[0];
  v20[2] = v14;
  v18 = [v15 0x1FBB20D25];
  v17 = [a1 0x1FBB20D25];
  v19 = [v18 0x1FBB28F65];
  MEMORY[0x1E69E5920](v17);
  MEMORY[0x1E69E5920](v18);
  v20[3] = v19;
  sub_1AC36EE1C(v21, v22);
  v24 = sub_1AC3B8074();

  [v23 activateConstraints_];
  MEMORY[0x1E69E5920](v24);
}

double sub_1AC3B0540(uint64_t a1, uint64_t a2, UIView *a3)
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a1);
  UIView.pinToOther(_:)(a3);
  MEMORY[0x1E69E5920](a1);
  *&result = MEMORY[0x1E69E5920](a3).n128_u64[0];
  return result;
}

uint64_t ==? infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1;
  v13 = a2;
  v17 = a3;
  v14 = a4;
  v21 = 0;
  v20 = 0;
  v22 = a3;
  v15 = *(a3 - 8);
  v16 = a3 - 8;
  v10 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](a2);
  v18 = &v7 - v10;
  v21 = v5;
  v20 = v13;
  v11 = *(v15 + 16);
  v12 = v15 + 16;
  v11(v4);
  v19 = sub_1AC3B7EB4();
  (*(v15 + 8))(v18, v17);
  if (v19)
  {
    v8 = 0;
  }

  else
  {
    (v11)(v18, v13, v17);
    (*(v15 + 40))(v9, v18, v17);
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t sub_1AC3B076C()
{
  v2 = *v0;

  return v2;
}

uint64_t SolariumOvalTintedButton.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v13[1] = a1;
  v3 = v2;
  v20 = v3;
  v36 = MEMORY[0x1E697CDB0];
  v55 = MEMORY[0x1E697CEC0];
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v13[2] = 0;
  v46 = sub_1AC3B76B4();
  v43 = *(v46 - 8);
  v44 = v46 - 8;
  v14 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v45 = v13 - v14;
  v33 = sub_1AC3B7824();
  v27 = *(v33 - 8);
  v28 = v33 - 8;
  v15 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v33);
  v29 = v13 - v15;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555768, &qword_1AC3BC060);
  v16 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32);
  v30 = v13 - v16;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555770, &qword_1AC3BC068);
  v38 = *(v40 - 8);
  v39 = v40 - 8;
  v17 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40);
  v41 = v13 - v17;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555778, &qword_1AC3BC070);
  v18 = (*(*(v42 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v42);
  v47 = v13 - v18;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555780, &qword_1AC3BC078);
  v19 = (*(*(v53 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v53);
  v52 = v13 - v19;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555788, &qword_1AC3BC080);
  v57 = *(v63 - 8);
  v58 = v63 - 8;
  v22 = *(v57 + 64);
  v21 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v63);
  v61 = v13 - v21;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13 - v21);
  v62 = v13 - v23;
  v76 = v13 - v23;
  v75 = a1;
  v31 = *v5;
  v74 = v5;
  v24 = sub_1AC3B79D4();
  sub_1AC3B7984();
  v26 = sub_1AC3B79C4();

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555790, &unk_1AC3BC088);
  sub_1AC3B1038();
  sub_1AC3B7B84();

  sub_1AC3B1018();
  v34 = sub_1AC3B10C0();
  v35 = sub_1AC3B1168(v6);
  sub_1AC3B7AC4();
  (*(v27 + 8))(v29, v33);
  sub_1AC3B11E8(v30);

  v37 = &v73;
  v73 = v31;
  v69 = v32;
  v70 = v33;
  v71 = v34;
  v72 = v35;
  v56 = 1;
  swift_getOpaqueTypeConformance2();
  sub_1AC3B7BA4();
  sub_1AC367428(v37);
  (*(v38 + 8))(v41, v40);
  (*(v43 + 104))(v45, *MEMORY[0x1E697DC10], v46);
  sub_1AC3B128C();
  sub_1AC3B7AD4();
  (*(v43 + 8))(v45, v46);
  sub_1AC34D5D0(v47);
  v7 = MEMORY[0x1E6980D50];
  v49 = sub_1AC3B8574();
  v48 = v8;
  v9 = sub_1AC3B7934();
  v10 = v49;
  *v48 = v9;
  sub_1AC36EE1C(v10, v7);
  v50 = v11;
  sub_1AC39CB9C();
  sub_1AC3B8394();
  v51 = v68;
  v54 = sub_1AC3B1434();
  sub_1AC3B7B04();
  sub_1AC34D674(v52);
  v66 = v53;
  v67 = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1AC35745C(v61, v63, v62);
  v65 = *(v57 + 8);
  v64 = v57 + 8;
  v65(v61, v63);
  (*(v57 + 16))(v61, v62, v63);
  sub_1AC35745C(v61, v63, v59);
  v65(v61, v63);
  return (v65)(v62, v63);
}

unint64_t sub_1AC3B1038()
{
  v2 = qword_1EB555798;
  if (!qword_1EB555798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555790, &unk_1AC3BC088);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555798);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3B10C0()
{
  v2 = qword_1EB5557A0;
  if (!qword_1EB5557A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555768, &qword_1AC3BC060);
    sub_1AC3B1038();
    sub_1AC367AF4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5557A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3B1168(double a1)
{
  v3 = qword_1EB5557A8;
  if (!qword_1EB5557A8)
  {
    sub_1AC3B7824();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5557A8);
    return WitnessTable;
  }

  return v3;
}

uint64_t sub_1AC3B11E8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555790, &unk_1AC3BC088);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555768, &qword_1AC3BC060);

  return a1;
}

unint64_t sub_1AC3B128C()
{
  v3 = qword_1EB5557B0;
  if (!qword_1EB5557B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555778, &qword_1AC3BC070);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555768, &qword_1AC3BC060);
    sub_1AC3B7824();
    sub_1AC3B10C0();
    sub_1AC3B1168(v0);
    swift_getOpaqueTypeConformance2();
    sub_1AC3B13AC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5557B0);
    return WitnessTable;
  }

  return v3;
}

unint64_t sub_1AC3B13AC()
{
  v2 = qword_1EB5557B8;
  if (!qword_1EB5557B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5557C0, &qword_1AC3BC098);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5557B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3B1434()
{
  v2 = qword_1EB5557C8;
  if (!qword_1EB5557C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555780, &qword_1AC3BC078);
    sub_1AC3B128C();
    sub_1AC3B14DC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5557C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3B14DC()
{
  v2 = qword_1EB5557D0;
  if (!qword_1EB5557D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5557D8, &qword_1AC3BC0A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5557D0);
    return WitnessTable;
  }

  return v2;
}

Swift::Void __swiftcall UIView.applyMatrixBias(matrixBias:)(Swift::tuple_matrix_Float_bias_Float matrixBias)
{
  matrix = matrixBias.matrix;
  bias = matrixBias.bias;
  v28 = 0;
  v27 = 0;
  v23 = 0;
  memset(__b, 0, sizeof(__b));
  v30 = matrix;
  v31 = bias;
  v29 = v1;
  v28 = sub_1AC3B7E44();
  if (matrix != 0.0)
  {
    sub_1AC3B19B8();
    v15 = *MEMORY[0x1E6979880];
    MEMORY[0x1E69E5928](*MEMORY[0x1E6979880]);
    v3 = sub_1AC3B7EF4();
    v18 = sub_1AC3B1A1C(v3, v4);
    MEMORY[0x1E69E5920](v15);
    v23 = v18;
    memcpy(__dst, MEMORY[0x1E6979280], sizeof(__dst));
    memcpy(__b, __dst, sizeof(__b));
    *__b = matrix;
    *&__b[6] = matrix;
    *&__b[12] = matrix;
    sub_1AC38D4BC(0, v5);
    memcpy(v32, __b, sizeof(v32));
    v17 = sub_1AC3B1A64(v32);
    sub_1AC3B7F54();
    v16 = sub_1AC3B7EE4();

    [v18 setValue:v17 forKey:v16];
    MEMORY[0x1E69E5920](v16);
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5928](v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5557E8, &qword_1AC3BC0A8);
    sub_1AC3B80C4();
    v2 = MEMORY[0x1E69E5920](v18);
  }

  v2.n128_f32[0] = bias;
  if (bias != 0.0)
  {
    v13 = sub_1AC3B19B8();
    v10 = *MEMORY[0x1E6979818];
    MEMORY[0x1E69E5928](*MEMORY[0x1E6979818]);
    v6 = sub_1AC3B7EF4();
    v14 = sub_1AC3B1A1C(v6, v7);
    MEMORY[0x1E69E5920](v10);
    v27 = v14;
    v12 = sub_1AC3B8164();
    sub_1AC3B7F54();
    v11 = sub_1AC3B7EE4();

    [v14 setValue:v12 forKey:v11];
    MEMORY[0x1E69E5920](v11);
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5928](v14);
    v26 = v13;
    v25 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5557E8, &qword_1AC3BC0A8);
    sub_1AC3B80C4();
    v2.n128_u64[0] = MEMORY[0x1E69E5920](v14).n128_u64[0];
  }

  v9 = [v19 layer];

  v8 = sub_1AC3B8074();

  [v9 setFilters_];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  sub_1AC358148(&v28);
}

unint64_t sub_1AC3B19B8()
{
  v2 = qword_1EB5557E0;
  if (!qword_1EB5557E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB5557E0);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_1AC3B1A64(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v6, __dst, sizeof(v6));
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  memcpy(v4, v6, sizeof(v4));
  v1 = [ObjCClassFromMetadata valueWithCAColorMatrix_];

  return v1;
}

uint64_t sub_1AC3B1B0C()
{
  result = sub_1AC3B7F54();
  qword_1EB555748 = result;
  qword_1EB555750 = v1;
  return result;
}

uint64_t *sub_1AC3B1B50()
{
  if (qword_1EB5543B0 != -1)
  {
    swift_once();
  }

  return &qword_1EB555748;
}

uint64_t static BadgedTitleCell.titleKey.getter()
{
  v1 = *sub_1AC3B1B50();

  return v1;
}

uint64_t sub_1AC3B1BF4()
{
  result = sub_1AC3B7F54();
  qword_1EB555758 = result;
  qword_1EB555760 = v1;
  return result;
}

uint64_t *sub_1AC3B1C38()
{
  if (qword_1EB5543B8 != -1)
  {
    swift_once();
  }

  return &qword_1EB555758;
}

uint64_t static BadgedTitleCell.badgeKey.getter()
{
  v1 = *sub_1AC3B1C38();

  return v1;
}

id sub_1AC3B1CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = 0;
  v16 = a1;
  v14 = a2;
  v15 = a3;
  v13 = a4;

  if (a3)
  {
    v7 = sub_1AC3B7EE4();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v12.receiver = 0;
  v12.super_class = type metadata accessor for BadgedTitleCell();
  v6 = objc_msgSendSuper2(&v12, sel_initWithStyle_reuseIdentifier_specifier_, a1, v8, a4);
  MEMORY[0x1E69E5920](v8);
  if (v6)
  {
    MEMORY[0x1E69E5928](v6);
    v17 = v6;
    [v6 setAccessoryType_];
    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5920](a4);

    MEMORY[0x1E69E5920](v17);
    return v6;
  }

  else
  {
    MEMORY[0x1E69E5920](0);
    MEMORY[0x1E69E5920](a4);

    return 0;
  }
}

id sub_1AC3B1FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v12 = a1;
  v10 = a2;
  v11 = a3;

  if (a3)
  {
    v5 = sub_1AC3B7EE4();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = 0;
  v9.super_class = type metadata accessor for BadgedTitleCell();
  v4 = objc_msgSendSuper2(&v9, sel_initWithStyle_reuseIdentifier_, a1, v6);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5928](v4);
  v13 = v4;
  [v4 setAccessoryType_];
  MEMORY[0x1E69E5920](v4);

  MEMORY[0x1E69E5920](v13);
  return v4;
}

id BadgedTitleCell.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

void BadgedTitleCell.init(coder:)()
{
  sub_1AC3B7F54();
  sub_1AC3B84A4();
  __break(1u);
}

uint64_t sub_1AC3B230C(void *a1)
{
  v161 = a1;
  v155 = 0;
  v191 = 0;
  v190 = 0;
  v156 = 0;
  v180 = 0;
  v175 = 0;
  v174 = 0;
  v169 = 0;
  v168 = 0;
  v165 = 0;
  v157 = sub_1AC3B7524();
  v158 = *(v157 - 8);
  v159 = v158;
  MEMORY[0x1EEE9AC00](v161);
  v160 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = v3;
  v190 = v1;
  v4 = v3;
  if (v161)
  {
    v153 = v161;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v151 = v153;
  v152 = [v153 userInfo];
  if (v152)
  {
    v150 = v152;
    v149 = v152;
    v148 = v162;
    sub_1AC3B8384();
    sub_1AC377D20(v148, &v186);
    swift_unknownObjectRelease();
  }

  else
  {
    v186 = 0uLL;
    v187 = 0uLL;
  }

  v189 = v187;
  v188 = v186;

  if (*(&v189 + 1))
  {
    sub_1AC39B678(0, v5);
    if (swift_dynamicCast())
    {
      v147 = v162[4];
    }

    else
    {
      v147 = 0;
    }

    v146 = v147;
  }

  else
  {
    sub_1AC38FF40(&v188);
    v146 = 0;
  }

  v145 = v146;
  if (!v146)
  {
    goto LABEL_44;
  }

  v144 = v145;
  v140 = v145;
  v180 = v145;
  v6 = sub_1AC3B1B50();
  v133 = *v6;
  v134 = v6[1];

  v178[3] = MEMORY[0x1E69E6158];
  v178[0] = v133;
  v178[1] = v134;
  v137 = MEMORY[0x1E69E6158];
  __swift_project_boxed_opaque_existential_0(v178, MEMORY[0x1E69E6158]);
  v135 = *(v137 - 8);
  v136 = v135;
  v139 = &v42;
  v7 = MEMORY[0x1EEE9AC00](&v42);
  v138 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v136 + 16))(v7);
  v141 = sub_1AC3B8584();
  (*(v136 + 8))(v138, v137);
  v143 = [v140 __swift_objectForKeyedSubscript_];
  v142 = v143;
  swift_unknownObjectRelease();
  if (v143)
  {
    v132 = v142;
    v131 = v142;
    v130 = v163;
    sub_1AC3B8384();
    sub_1AC377D20(v130, &v176);
    swift_unknownObjectRelease();
  }

  else
  {
    v176 = 0uLL;
    v177 = 0uLL;
  }

  v179[1] = v177;
  v179[0] = v176;
  if (*(&v177 + 1))
  {
    if (swift_dynamicCast())
    {
      v128 = v163[4];
      v129 = v163[5];
    }

    else
    {
      v128 = 0;
      v129 = 0;
    }

    v125 = v129;
    v124 = v128;
    __swift_destroy_boxed_opaque_existential_1(v178);
    v126 = v124;
    v127 = v125;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v178);
    sub_1AC38FF40(v179);
    v126 = 0;
    v127 = 0;
  }

  v122 = v127;
  v123 = v126;
  if (!v127)
  {

LABEL_44:
    v25 = v160;
    v26 = sub_1AC394550();
    (*(v159 + 16))(v25, v26, v157);
    v27 = v161;
    v63 = 7;
    v65 = swift_allocObject();
    *(v65 + 16) = v161;
    sub_1AC38FFE4();

    v74 = sub_1AC3B7504();
    v59 = v74;
    v73 = sub_1AC3B8254();
    v60 = v73;
    v61 = 17;
    v67 = swift_allocObject();
    v62 = v67;
    *(v67 + 16) = 64;
    v68 = swift_allocObject();
    v64 = v68;
    *(v68 + 16) = 8;
    v28 = swift_allocObject();
    v29 = v65;
    v71 = v28;
    v66 = v28;
    *(v28 + 16) = sub_1AC38FFDC;
    *(v28 + 24) = v29;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5549B0, &unk_1AC3BAF60);
    v69 = sub_1AC3B8574();
    v70 = v30;

    v31 = v67;
    v32 = v70;
    *v70 = sub_1AC377AC0;
    v32[1] = v31;

    v33 = v68;
    v34 = v70;
    v70[2] = sub_1AC377AC0;
    v34[3] = v33;

    v35 = v69;
    v36 = v70;
    v37 = v71;
    v38 = v72;
    v70[4] = sub_1AC3936DC;
    v36[5] = v37;
    sub_1AC36EE1C(v35, v38);

    if (os_log_type_enabled(v74, v73))
    {
      v39 = v156;
      v52 = sub_1AC3B8334();
      v49 = v52;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F90, &qword_1AC3BB7E0);
      v55 = 1;
      v53 = sub_1AC374C60(1, v50, v50);
      v51 = v53;
      v54 = sub_1AC374C60(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v185 = v52;
      v184 = v53;
      v183 = v54;
      v56 = &v185;
      sub_1AC374CB4(2, &v185);
      sub_1AC374CB4(v55, v56);
      v181 = sub_1AC377AC0;
      v182 = v62;
      sub_1AC374CC8(&v181, v56, &v184, &v183);
      v57 = v39;
      v58 = v39;
      if (v39)
      {
        v47 = 0;

        __break(1u);
      }

      else
      {
        v181 = sub_1AC377AC0;
        v182 = v64;
        sub_1AC374CC8(&v181, &v185, &v184, &v183);
        v45 = 0;
        v46 = 0;
        v181 = sub_1AC3936DC;
        v182 = v66;
        sub_1AC374CC8(&v181, &v185, &v184, &v183);
        v43 = 0;
        v44 = 0;
        _os_log_impl(&dword_1AC345000, v59, v60, "HearingTopLevelCell refreshCellContents dependencies not meet %@", v49, 0xCu);
        sub_1AC374D14(v51, 1, v50);
        sub_1AC374D14(v54, 0, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC3B8314();

        v48 = v43;
      }
    }

    else
    {
      v40 = v156;

      v48 = v40;
    }

    v42 = v48;

    (*(v159 + 8))(v160, v157);
    return v42;
  }

  v120 = v123;
  v121 = v122;
  v108 = v122;
  v109 = v123;
  v174 = v123;
  v175 = v122;
  v9 = sub_1AC3B1C38();
  v110 = *v9;
  v111 = v9[1];

  v172[3] = MEMORY[0x1E69E6158];
  v172[0] = v110;
  v172[1] = v111;
  v114 = MEMORY[0x1E69E6158];
  __swift_project_boxed_opaque_existential_0(v172, MEMORY[0x1E69E6158]);
  v112 = *(v114 - 8);
  v113 = v112;
  v116 = &v42;
  v10 = MEMORY[0x1EEE9AC00](&v42);
  v115 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v113 + 16))(v10);
  v117 = sub_1AC3B8584();
  (*(v113 + 8))(v115, v114);
  v119 = [v140 __swift_objectForKeyedSubscript_];
  v118 = v119;
  swift_unknownObjectRelease();
  if (v119)
  {
    v107 = v118;
    v106 = v118;
    v105 = v164;
    sub_1AC3B8384();
    sub_1AC377D20(v105, &v170);
    swift_unknownObjectRelease();
  }

  else
  {
    v170 = 0uLL;
    v171 = 0uLL;
  }

  v173[1] = v171;
  v173[0] = v170;
  if (*(&v171 + 1))
  {
    if (swift_dynamicCast())
    {
      v103 = v164[4];
      v104 = v164[5];
    }

    else
    {
      v103 = 0;
      v104 = 0;
    }

    v100 = v104;
    v99 = v103;
    __swift_destroy_boxed_opaque_existential_1(v172);
    v101 = v99;
    v102 = v100;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v172);
    sub_1AC38FF40(v173);
    v101 = 0;
    v102 = 0;
  }

  v97 = v102;
  v98 = v101;
  if (!v102)
  {

    goto LABEL_44;
  }

  v95 = v98;
  v96 = v97;
  v87 = v97;
  v88 = v98;
  v168 = v98;
  v169 = v97;
  v12 = v154;
  v89 = [v154 traitCollection];

  v90 = [v89 userInterfaceStyle];
  v167 = v90;
  v166 = 2;
  v91 = type metadata accessor for UIUserInterfaceStyle(0);
  sub_1AC3784C8();
  v92 = sub_1AC3B8594();
  v165 = v92 & 1;
  v13 = v154;
  [v154 setAccessoryType_];

  v14 = v154;
  v94 = [v154 textLabel];
  v93 = v94;

  if (v94)
  {
    v86 = v93;
    v85 = v93;
    type metadata accessor for PillBadgeTextAttachment(0, v15);

    v76 = sub_1AC3793AC(v16, v17);
    v77 = sub_1AC3793FC(v76, v18);
    v78 = sub_1AC37943C(v77, v19);
    v79 = sub_1AC37948C(v78, v20);
    v80 = sub_1AC3794D4(v79, v21);
    v81 = sub_1AC379528();
    v82 = v22;
    v83 = sub_1AC37953C(v88, v87, v76, v92 & 1, v77, v78, v79, v80, 0.0, 0.0, v81, v22, v23, v24);
    v84 = sub_1AC3795E4(v109, v108, v83);

    [v85 setAttributedText_];
  }

  return v156;
}

id BadgedTitleCell.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BadgedTitleCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1AC3B32B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AC3B7EE4();
  v5 = [v3 initWithType_];
  MEMORY[0x1E69E5920](v4);

  return v5;
}

void *__swift_initWithCopy_strong(void *a1, uint64_t *a2)
{
  v4 = *a2;

  result = a1;
  *a1 = v4;
  return result;
}

void *__swift_assignWithCopy_strong(void *a1, uint64_t *a2)
{
  v3 = *a2;

  *a1 = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for SolariumOvalTintedButton(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 8))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
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

uint64_t storeEnumTagSinglePayload for SolariumOvalTintedButton(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

id sub_1AC3B37DC(uint64_t a1, uint64_t a2)
{
  sub_1AC377B44(0, a2);
  type metadata accessor for ResourceBundleClass();
  result = sub_1AC36A3A8();
  qword_1EB5557F0 = result;
  return result;
}

uint64_t *sub_1AC3B3824()
{
  if (qword_1EB5543C0 != -1)
  {
    swift_once();
  }

  return &qword_1EB5557F0;
}

uint64_t sub_1AC3B3884()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB555870);
  __swift_project_value_buffer(v2, qword_1EB555870);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B391C()
{
  if (qword_1EB5543C8 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB555870);
}

uint64_t sub_1AC3B3988@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B391C();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B39EC()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB555888);
  __swift_project_value_buffer(v2, qword_1EB555888);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B3A84()
{
  if (qword_1EB5543D0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB555888);
}

uint64_t sub_1AC3B3AF0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B3A84();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B3B54()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB5558A0);
  __swift_project_value_buffer(v2, qword_1EB5558A0);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B3BEC()
{
  if (qword_1EB5543D8 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB5558A0);
}

uint64_t sub_1AC3B3C58@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B3BEC();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B3CBC()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB5558B8);
  __swift_project_value_buffer(v2, qword_1EB5558B8);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B3D54()
{
  if (qword_1EB5543E0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB5558B8);
}

uint64_t sub_1AC3B3DC0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B3D54();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B3E24()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB5558D0);
  __swift_project_value_buffer(v2, qword_1EB5558D0);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B3EBC()
{
  if (qword_1EB5543E8 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB5558D0);
}

uint64_t sub_1AC3B3F28@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B3EBC();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B3F8C()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB5558E8);
  __swift_project_value_buffer(v2, qword_1EB5558E8);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B4024()
{
  if (qword_1EB5543F0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB5558E8);
}

uint64_t sub_1AC3B4090@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B4024();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B40F4()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB555900);
  __swift_project_value_buffer(v2, qword_1EB555900);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B418C()
{
  if (qword_1EB5543F8 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB555900);
}

uint64_t sub_1AC3B41F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B418C();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B425C()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB555918);
  __swift_project_value_buffer(v2, qword_1EB555918);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B42F4()
{
  if (qword_1EB554400 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB555918);
}

uint64_t sub_1AC3B4360@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B42F4();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B43C4()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB555930);
  __swift_project_value_buffer(v2, qword_1EB555930);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B445C()
{
  if (qword_1EB554408 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB555930);
}

uint64_t sub_1AC3B44C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B445C();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B452C()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB555948);
  __swift_project_value_buffer(v2, qword_1EB555948);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B45C4()
{
  if (qword_1EB554410 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB555948);
}

uint64_t sub_1AC3B4630@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B45C4();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B4694()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB555960);
  __swift_project_value_buffer(v2, qword_1EB555960);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B472C()
{
  if (qword_1EB554418 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB555960);
}

uint64_t sub_1AC3B4798@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B472C();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B47FC()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB555978);
  __swift_project_value_buffer(v2, qword_1EB555978);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B4894()
{
  if (qword_1EB554420 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB555978);
}

uint64_t sub_1AC3B4900@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B4894();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B4964()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB555990);
  __swift_project_value_buffer(v2, qword_1EB555990);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B49FC()
{
  if (qword_1EB554428 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB555990);
}

uint64_t sub_1AC3B4A68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B49FC();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B4ACC()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB5559A8);
  __swift_project_value_buffer(v2, qword_1EB5559A8);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B4B64()
{
  if (qword_1EB554430 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB5559A8);
}

uint64_t sub_1AC3B4BD0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B4B64();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B4C34()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB5559C0);
  __swift_project_value_buffer(v2, qword_1EB5559C0);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B4CCC()
{
  if (qword_1EB554438 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB5559C0);
}

uint64_t sub_1AC3B4D38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B4CCC();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B4D9C()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB5559D8);
  __swift_project_value_buffer(v2, qword_1EB5559D8);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B4E34()
{
  if (qword_1EB554440 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB5559D8);
}

uint64_t sub_1AC3B4EA0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B4E34();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B4F04()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB5559F0);
  __swift_project_value_buffer(v2, qword_1EB5559F0);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B4F9C()
{
  if (qword_1EB554448 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB5559F0);
}

uint64_t sub_1AC3B5008@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B4F9C();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B506C()
{
  v10 = 0;
  v4[1] = 0;
  v8 = sub_1AC3B74F4();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v9 = v4 - v5;
  v10 = v0;
  sub_1AC3B00B4(v1, v4 - v5);
  v2 = sub_1AC3B391C();
  (*(v6 + 16))(v9, v2, v8);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B514C()
{
  v10 = 0;
  v4[1] = 0;
  v8 = sub_1AC3B74F4();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v9 = v4 - v5;
  v10 = v0;
  sub_1AC3B00B4(v1, v4 - v5);
  v2 = sub_1AC3B3A84();
  (*(v6 + 16))(v9, v2, v8);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B522C()
{
  v10 = 0;
  v4[1] = 0;
  v8 = sub_1AC3B74F4();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v9 = v4 - v5;
  v10 = v0;
  sub_1AC3B00B4(v1, v4 - v5);
  v2 = sub_1AC3B3BEC();
  (*(v6 + 16))(v9, v2, v8);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B530C()
{
  v10 = 0;
  v4[1] = 0;
  v8 = sub_1AC3B74F4();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v9 = v4 - v5;
  v10 = v0;
  sub_1AC3B00B4(v1, v4 - v5);
  v2 = sub_1AC3B3D54();
  (*(v6 + 16))(v9, v2, v8);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B53EC()
{
  v10 = 0;
  v4[1] = 0;
  v8 = sub_1AC3B74F4();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v9 = v4 - v5;
  v10 = v0;
  sub_1AC3B00B4(v1, v4 - v5);
  v2 = sub_1AC3B3EBC();
  (*(v6 + 16))(v9, v2, v8);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B54CC()
{
  v10 = 0;
  v4[1] = 0;
  v8 = sub_1AC3B74F4();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v9 = v4 - v5;
  v10 = v0;
  sub_1AC3B00B4(v1, v4 - v5);
  v2 = sub_1AC3B4024();
  (*(v6 + 16))(v9, v2, v8);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B55AC()
{
  v10 = 0;
  v4[1] = 0;
  v8 = sub_1AC3B74F4();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v9 = v4 - v5;
  v10 = v0;
  sub_1AC3B00B4(v1, v4 - v5);
  v2 = sub_1AC3B418C();
  (*(v6 + 16))(v9, v2, v8);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B568C()
{
  v10 = 0;
  v4[1] = 0;
  v8 = sub_1AC3B74F4();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v9 = v4 - v5;
  v10 = v0;
  sub_1AC3B00B4(v1, v4 - v5);
  v2 = sub_1AC3B42F4();
  (*(v6 + 16))(v9, v2, v8);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B576C()
{
  v10 = 0;
  v4[1] = 0;
  v8 = sub_1AC3B74F4();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v9 = v4 - v5;
  v10 = v0;
  sub_1AC3B00B4(v1, v4 - v5);
  v2 = sub_1AC3B445C();
  (*(v6 + 16))(v9, v2, v8);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B584C()
{
  v10 = 0;
  v4[1] = 0;
  v8 = sub_1AC3B74F4();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v9 = v4 - v5;
  v10 = v0;
  sub_1AC3B00B4(v1, v4 - v5);
  v2 = sub_1AC3B45C4();
  (*(v6 + 16))(v9, v2, v8);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B592C()
{
  v10 = 0;
  v4[1] = 0;
  v8 = sub_1AC3B74F4();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v9 = v4 - v5;
  v10 = v0;
  sub_1AC3B00B4(v1, v4 - v5);
  v2 = sub_1AC3B472C();
  (*(v6 + 16))(v9, v2, v8);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B5A0C()
{
  v10 = 0;
  v4[1] = 0;
  v8 = sub_1AC3B74F4();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v9 = v4 - v5;
  v10 = v0;
  sub_1AC3B00B4(v1, v4 - v5);
  v2 = sub_1AC3B4894();
  (*(v6 + 16))(v9, v2, v8);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B5AEC()
{
  v10 = 0;
  v4[1] = 0;
  v8 = sub_1AC3B74F4();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v9 = v4 - v5;
  v10 = v0;
  sub_1AC3B00B4(v1, v4 - v5);
  v2 = sub_1AC3B49FC();
  (*(v6 + 16))(v9, v2, v8);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B5BCC()
{
  v10 = 0;
  v4[1] = 0;
  v8 = sub_1AC3B74F4();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v9 = v4 - v5;
  v10 = v0;
  sub_1AC3B00B4(v1, v4 - v5);
  v2 = sub_1AC3B4B64();
  (*(v6 + 16))(v9, v2, v8);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B5CAC()
{
  v10 = 0;
  v4[1] = 0;
  v8 = sub_1AC3B74F4();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v9 = v4 - v5;
  v10 = v0;
  sub_1AC3B00B4(v1, v4 - v5);
  v2 = sub_1AC3B4CCC();
  (*(v6 + 16))(v9, v2, v8);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B5D8C()
{
  v10 = 0;
  v4[1] = 0;
  v8 = sub_1AC3B74F4();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v9 = v4 - v5;
  v10 = v0;
  sub_1AC3B00B4(v1, v4 - v5);
  v2 = sub_1AC3B4E34();
  (*(v6 + 16))(v9, v2, v8);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B5E6C()
{
  v10 = 0;
  v4[1] = 0;
  v8 = sub_1AC3B74F4();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v9 = v4 - v5;
  v10 = v0;
  sub_1AC3B00B4(v1, v4 - v5);
  v2 = sub_1AC3B4F9C();
  (*(v6 + 16))(v9, v2, v8);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B5F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v13 = a4;
  v25 = a1;
  v22 = a2;
  v23 = a3;
  v30 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v24 = 0;
  v14 = sub_1AC3B74D4();
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  v18 = *(v15 + 64);
  v17 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v19 = &v10 - v17;
  v20 = v17;
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v10 - v20;
  v30 = &v10 - v20;
  v28 = v5;
  v29 = v6;
  v27 = v7;
  sub_1AC37B254(v8, v6);

  MEMORY[0x1E69E5928](v23);
  v26 = sub_1AC3B6208(v25, v22, v23, v24);
  v12 = v26 != 0;
  v11 = v12;
  sub_1AC35E758(&v26);
  if (v11)
  {
    sub_1AC3B74C4();
    (*(v15 + 32))(v21, v19, v14);
    (*(v15 + 16))(v13, v21, v14);
    (*(v15 + 56))(v13, 0, 1, v14);
    return (*(v15 + 8))(v21, v14);
  }

  else
  {
    MEMORY[0x1E69E5920](v23);

    return (*(v15 + 56))(v13, 1, 1, v14);
  }
}

id sub_1AC3B6208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1AC3B7EE4();
  v8 = [swift_getObjCClassFromMetadata() colorNamed:v7 inBundle:a3 compatibleWithTraitCollection:a4];
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](v7);

  return v8;
}

uint64_t sub_1AC3B62AC(uint64_t a1)
{
  v15 = a1;
  v26 = 0;
  v24 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5557F8, &qword_1AC3BC250);
  v14 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v23 = &v12 - v14;
  v22 = sub_1AC3B74D4();
  v20 = *(v22 - 8);
  v21 = v22 - 8;
  v16 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v12 - v16;
  v18 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v19 = &v12 - v18;
  v26 = &v12 - v18;
  v24 = v5;
  sub_1AC3B6530(v5, v6, v4);
  if ((*(v20 + 48))(v23, 1, v22) == 1)
  {
    sub_1AC3B6658(v23, v7);
    sub_1AC3B6658(v15, v8);
    return 0;
  }

  else
  {
    (*(v20 + 32))(v19, v23, v22);
    (*(v20 + 16))(v17, v19, v22);
    v12 = sub_1AC3B8284();
    v9 = MEMORY[0x1E69E5928](v12);
    v25 = v12;
    v10 = (*(v20 + 8))(v19, v22, v9);
    sub_1AC3B6658(v15, v10);
    MEMORY[0x1E69E5920](v25);
    return v12;
  }
}

void *sub_1AC3B6530(const void *a1, void *a2, double a3)
{
  v7 = sub_1AC3B74D4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5557F8, &qword_1AC3BC250);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(a2, a1, v7);
    (*(v8 + 56))(a2, 0, 1, v7);
  }

  return a2;
}

uint64_t sub_1AC3B6658(uint64_t a1, double a2)
{
  v4 = sub_1AC3B74D4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  return a1;
}

uint64_t sub_1AC3B6700(uint64_t a1)
{
  v15 = a1;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5557F8, &qword_1AC3BC250);
  v14 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v23 = &v11 - v14;
  v22 = sub_1AC3B74D4();
  v20 = *(v22 - 8);
  v21 = v22 - 8;
  v16 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v11 - v16;
  v18 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v19 = &v11 - v18;
  v26 = &v11 - v18;
  v24 = v5;
  sub_1AC3B6530(v5, v6, v4);
  if ((*(v20 + 48))(v23, 1, v22) == 1)
  {
    sub_1AC3B6658(v23, v7);
    sub_1AC3B6658(v15, v8);
    return 0;
  }

  else
  {
    (*(v20 + 32))(v19, v23, v22);
    (*(v20 + 16))(v17, v19, v22);
    v12 = sub_1AC3B7C64();

    v11 = &v25;
    v25 = v12;
    v9 = (*(v20 + 8))(v19, v22);
    sub_1AC3B6658(v15, v9);
    sub_1AC367428(v11);
    return v12;
  }
}

uint64_t sub_1AC3B6970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v13 = a4;
  v25 = a1;
  v22 = a2;
  v23 = a3;
  v30 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v24 = 0;
  v14 = sub_1AC3B74F4();
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  v18 = *(v15 + 64);
  v17 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v19 = &v10 - v17;
  v20 = v17;
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v10 - v20;
  v30 = &v10 - v20;
  v28 = v5;
  v29 = v6;
  v27 = v7;
  sub_1AC3B00B4(v8, v6);

  MEMORY[0x1E69E5928](v23);
  v26 = sub_1AC3B6C2C(v25, v22, v23, v24);
  v12 = v26 != 0;
  v11 = v12;
  sub_1AC35E758(&v26);
  if (v11)
  {
    sub_1AC3B74C4();
    (*(v15 + 32))(v21, v19, v14);
    (*(v15 + 16))(v13, v21, v14);
    (*(v15 + 56))(v13, 0, 1, v14);
    return (*(v15 + 8))(v21, v14);
  }

  else
  {
    MEMORY[0x1E69E5920](v23);

    return (*(v15 + 56))(v13, 1, 1, v14);
  }
}

id sub_1AC3B6C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1AC3B7EE4();
  v8 = [swift_getObjCClassFromMetadata() imageNamed:v7 inBundle:a3 compatibleWithTraitCollection:a4];
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](v7);

  return v8;
}

uint64_t sub_1AC3B6CD0(uint64_t a1)
{
  v11 = a1;
  v22 = 0;
  v20 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555800, qword_1AC3BC258);
  v10 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v19 = &v8 - v10;
  v18 = sub_1AC3B74F4();
  v16 = *(v18 - 8);
  v17 = v18 - 8;
  v12 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v8 - v12;
  v14 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v15 = &v8 - v14;
  v22 = &v8 - v14;
  v20 = v4;
  sub_1AC3B6F54(v4, v5);
  if ((*(v16 + 48))(v19, 1, v18) == 1)
  {
    sub_1AC3B707C(v19);
    sub_1AC3B707C(v11);
    return 0;
  }

  else
  {
    (*(v16 + 32))(v15, v19, v18);
    (*(v16 + 16))(v13, v15, v18);
    v8 = sub_1AC3B8294();
    v6 = MEMORY[0x1E69E5928](v8);
    v21 = v8;
    (*(v16 + 8))(v15, v18, v6);
    sub_1AC3B707C(v11);
    MEMORY[0x1E69E5920](v21);
    return v8;
  }
}

void *sub_1AC3B6F54(const void *a1, void *a2)
{
  v6 = sub_1AC3B74F4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555800, qword_1AC3BC258);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1AC3B707C(uint64_t a1)
{
  v3 = sub_1AC3B74F4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

NSRange NSRangeFromString(NSString *aString)
{
  v1 = MEMORY[0x1EEDC70A0](aString);
  result.length = v2;
  result.location = v1;
  return result;
}