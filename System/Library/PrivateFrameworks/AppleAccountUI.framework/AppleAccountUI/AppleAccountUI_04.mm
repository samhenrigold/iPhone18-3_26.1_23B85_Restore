uint64_t sub_1C546CAAC(uint64_t a1, unsigned int a2, void *a3)
{
  v8 = *(a1 + 32);

  v4 = MEMORY[0x1E69E5928](a3, v3);
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = 0;
  }

  v8(a2, v4);
}

void sub_1C546CB58(_BYTE *a1, uint64_t a2)
{
  v56 = a1;
  v63 = a2;
  v50 = sub_1C5467F9C;
  v51 = sub_1C546FF24;
  v52 = sub_1C545C6D4;
  v53 = sub_1C545C6D4;
  v54 = sub_1C545C6E8;
  v73 = 0;
  v72 = 0;
  v55 = 0;
  v57 = 0;
  v58 = sub_1C5594C74();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  v61 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v63, v2, v3);
  v62 = &v25 - v61;
  v73 = v4;
  v72 = v5;
  v7 = type metadata accessor for ReviewCustodianListView(v6);
  v64 = *(v63 + *(v7 + 24) + 8);

  v65 = *(v64 + 24);
  MEMORY[0x1E69E5928](v65, v8);

  v71 = [v65 repairDelegate];
  if (v71)
  {
    v48 = &v71;
    v49 = v71;
    swift_unknownObjectRetain();
    sub_1C546E12C(v48);
    MEMORY[0x1E69E5920](v65);
    swift_getObjectType();
    [v49 finishingRepair];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C546E12C(&v71);
    MEMORY[0x1E69E5920](v65);
  }

  v70[1] = v56;
  v47 = v56 != 0;
  if (v56)
  {
    v9 = v62;
    v10 = sub_1C54B05F8();
    (*(v59 + 16))(v9, v10, v58);
    v11 = v56;
    v36 = 7;
    v37 = swift_allocObject();
    *(v37 + 16) = v56;
    sub_1C54398B0();

    v45 = sub_1C5594C54();
    v46 = sub_1C5596954();
    v34 = 17;
    v39 = swift_allocObject();
    *(v39 + 16) = 64;
    v40 = swift_allocObject();
    *(v40 + 16) = 8;
    v35 = 32;
    v12 = swift_allocObject();
    v13 = v37;
    v38 = v12;
    *(v12 + 16) = v50;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v38;
    v42 = v14;
    *(v14 + 16) = v51;
    *(v14 + 24) = v15;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v41 = sub_1C5596E04();
    v43 = v16;

    v17 = v39;
    v18 = v43;
    *v43 = v52;
    v18[1] = v17;

    v19 = v40;
    v20 = v43;
    v43[2] = v53;
    v20[3] = v19;

    v21 = v42;
    v22 = v43;
    v43[4] = v54;
    v22[5] = v21;
    sub_1C540FCD8();

    if (os_log_type_enabled(v45, v46))
    {
      v23 = v55;
      v27 = sub_1C5596A74();
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v28 = sub_1C5419DC0(1, v26, v26);
      v29 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v30 = v70;
      v70[0] = v27;
      v31 = &v69;
      v69 = v28;
      v32 = &v68;
      v68 = v29;
      sub_1C5419E14(2, v70);
      sub_1C5419E14(1, v30);
      v66 = v52;
      v67 = v39;
      sub_1C5419E28(&v66, v30, v31, v32);
      v33 = v23;
      if (v23)
      {

        __break(1u);
      }

      else
      {
        v66 = v53;
        v67 = v40;
        sub_1C5419E28(&v66, v70, &v69, &v68);
        v25 = 0;
        v66 = v54;
        v67 = v42;
        sub_1C5419E28(&v66, v70, &v69, &v68);
        _os_log_impl(&dword_1C5355000, v45, v46, "Error occurred while repairing the UUIDs. Error: %@", v27, 0xCu);
        sub_1C5419E74(v28, 1, v26);
        sub_1C5419E74(v29, 0, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();
      }
    }

    else
    {
    }

    v24 = MEMORY[0x1E69E5920](v45);
    (*(v59 + 8))(v62, v58, v24);
  }
}

uint64_t sub_1C546D2EC(uint64_t a1, void *a2)
{
  v6 = *(a1 + 32);

  v3 = MEMORY[0x1E69E5928](a2, v2);
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6(v3);
}

uint64_t sub_1C546D390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a1;
  v123 = sub_1C546DD24();
  v124 = v2;
  sub_1C54141E8();
  v119 = sub_1C5595A04();
  v120 = v3;
  v121 = v4;
  v122 = v5;
  v24 = v3;
  v23 = v4;
  v25 = v5;
  sub_1C5595854();
  v115 = v119;
  v116 = v24;
  v117 = v23 & 1;
  v118 = v25;
  v111 = sub_1C5595974();
  v112 = v6;
  v113 = v7;
  v114 = v8;
  v26 = v6;
  v27 = v7;
  v28 = v8;
  sub_1C5412EA0(v119, v24, v23 & 1);

  sub_1C5595834();
  v107 = v111;
  v108 = v26;
  v109 = v27 & 1;
  v110 = v28;
  v103 = sub_1C55959C4();
  v104 = v9;
  v105 = v10;
  v106 = v11;
  v29 = v9;
  v30 = v10;
  v31 = v11;

  sub_1C5412EA0(v111, v26, v27 & 1);

  v100[0] = v103;
  v100[1] = v29;
  v101 = v30 & 1;
  v102 = v31;
  sub_1C5595C54();
  sub_1C5414260(v100);
  v95[0] = v125;
  v95[1] = v126;
  v96 = v127 & 1;
  v97 = v128;
  v98 = v129;
  v99 = v130;
  sub_1C55957D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CC18, &unk_1C55B0B10);
  sub_1C546FF30();
  sub_1C5595D84();
  sub_1C546FFD4(v95);
  memcpy(__dst, v131, sizeof(__dst));
  memcpy(v94, __dst, 0x59uLL);
  sub_1C55957A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CC28, &qword_1C55B0B20);
  sub_1C5470028();
  sub_1C5595D84();
  sub_1C546FFD4(v94);
  memcpy(v137, v132, sizeof(v137));
  memcpy(v93, v137, 0x89uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CC38, &qword_1C55B0B28);
  sub_1C54700CC();
  sub_1C5595E14();
  sub_1C546FFD4(v93);
  memcpy(v138, v133, sizeof(v138));
  memcpy(v92, v138, 0x8BuLL);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CC48, &qword_1C55B0B30);
  v43 = sub_1C5470170();
  sub_1C540EFD8(v92, v41, v134);
  sub_1C546FFD4(v92);
  v81 = sub_1C546DDF8();
  v82 = v12;
  v77 = sub_1C5595A04();
  v78 = v13;
  v79 = v14;
  v80 = v15;
  v33 = v13;
  v32 = v14;
  v34 = v15;
  sub_1C5595874();
  v73 = v77;
  v74 = v33;
  v75 = v32 & 1;
  v76 = v34;
  v69 = sub_1C5595974();
  v70 = v16;
  v71 = v17;
  v72 = v18;
  v35 = v16;
  v36 = v17;
  v37 = v18;
  sub_1C5412EA0(v77, v33, v32 & 1);

  sub_1C55958E4();
  v65 = v69;
  v66 = v35;
  v67 = v36 & 1;
  v68 = v37;
  v61 = sub_1C55959C4();
  v62 = v19;
  v63 = v20;
  v64 = v21;
  v38 = v19;
  v39 = v20;
  v40 = v21;

  sub_1C5412EA0(v69, v35, v36 & 1);

  v58[0] = v61;
  v58[1] = v38;
  v59 = v39 & 1;
  v60 = v40;
  sub_1C5595C54();
  sub_1C5414260(v58);
  v53[0] = v83;
  v53[1] = v84;
  v54 = v85 & 1;
  v55 = v86;
  v56 = v87;
  v57 = v88;
  sub_1C55957A4();
  sub_1C5595D84();
  sub_1C546FFD4(v53);
  memcpy(v139, v89, sizeof(v139));
  memcpy(v52, v139, 0x59uLL);
  sub_1C5595E14();
  sub_1C546FFD4(v52);
  memcpy(v140, v90, sizeof(v140));
  memcpy(v51, v140, 0x5BuLL);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CC58, &qword_1C55B0B38);
  v44 = sub_1C5470214();
  sub_1C540EFD8(v51, v42, v91);
  sub_1C546FFD4(v51);
  sub_1C54702B8(v134, v49);
  v50[0] = v49;
  sub_1C54703B0(v91, v48);
  v50[1] = v48;
  v47[0] = v41;
  v47[1] = v42;
  v46[0] = v43;
  v46[1] = v44;
  sub_1C540F5A0(v50, 2uLL, v47, v46, a2);
  sub_1C546FFD4(v48);
  sub_1C546FFD4(v49);
  sub_1C546FFD4(v91);
  return sub_1C546FFD4(v134);
}

unint64_t sub_1C546DB90()
{
  v2 = qword_1EC15CB40;
  if (!qword_1EC15CB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CB38, &qword_1C55B0868);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CB40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C546DC18()
{
  v2 = qword_1EC15CB50;
  if (!qword_1EC15CB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CB48, &qword_1C55B0870);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CB50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C546DCA0(uint64_t a1)
{
  sub_1C5412EA0(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  sub_1C5412EA0(*(a1 + 168), *(a1 + 176), *(a1 + 184) & 1);

  return a1;
}

uint64_t sub_1C546DD24()
{
  if (sub_1C546DECC())
  {
    v0 = sub_1C55965F4("REVIEW_RECOVERY_CONTACTS_TITLE", 30, 1);
    v6 = sub_1C54637B4(v0, v1);

    return v6;
  }

  else
  {
    v2 = sub_1C55965F4("REVIEW_RECOVERY_CONTACT_TITLE", 29, 1);
    v5 = sub_1C54637B4(v2, v3);

    return v5;
  }
}

uint64_t sub_1C546DDF8()
{
  if (sub_1C546DECC())
  {
    v0 = sub_1C55965F4("REVIEW_RECOVERY_CONTACTS_INFO", 29, 1);
    v6 = sub_1C54637B4(v0, v1);

    return v6;
  }

  else
  {
    v2 = sub_1C55965F4("REVIEW_RECOVERY_CONTACT_INFO", 28, 1);
    v5 = sub_1C54637B4(v2, v3);

    return v5;
  }
}

BOOL sub_1C546DECC()
{
  v3 = *(v0 + *(type metadata accessor for ReviewCustodianListView(0) + 24) + 8);

  (*(*v3 + 112))(v1);

  type metadata accessor for CustodianListItem(0);
  v4 = sub_1C5596744();

  return v4 > 1;
}

uint64_t sub_1C546DF88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v22 = a2;
  v23 = a1;
  v26 = 0;
  v25 = 0;
  v20 = type metadata accessor for ReviewCustodianListView(0);
  v19[0] = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v23, v2, v3, v4);
  v24 = (v19 - v19[0]);
  v26 = v19 - v19[0];
  v25 = v6;
  v7 = sub_1C55965F4("DismissCustodianReviewCFU", 25, 1, v5);
  v8 = v24;
  v9 = v7;
  v10 = v20;
  *v24 = v9;
  v8[1] = v11;
  v19[2] = *(v10 + 20);
  swift_getKeyPath();
  sub_1C5595024();

  v21 = *(v20 + 24);
  v12 = sub_1C54682E0(v23);
  v13 = v24;
  v15 = v14;
  v16 = v22;
  v17 = (v24 + v21);
  *v17 = v12;
  v17[1] = v15;
  sub_1C542B834(v13, v16);

  return sub_1C542B9AC(v24);
}

uint64_t sub_1C546E0E4(uint64_t a1)
{
  type metadata accessor for CustodianListItem(0);
  sub_1C546EFC0();
  return sub_1C5595184();
}

void sub_1C546E158(_BYTE *a1)
{
  v2 = type metadata accessor for ReviewCustodianListView(0);
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  sub_1C546CB58(a1, v3);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1C546E234()
{
  v2 = qword_1EC15CB58;
  if (!qword_1EC15CB58)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15CB58);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C546E2FC()
{
  v2 = qword_1EC15CB68;
  if (!qword_1EC15CB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CB60, &qword_1C55B0878);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CB68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C546E384(uint64_t a1, uint64_t a2)
{

  return a2;
}

uint64_t sub_1C546E3E0(uint64_t a1)
{

  *(v1 + 8) = a1;
}

uint64_t sub_1C546E464(uint64_t a1, uint64_t a2)
{

  type metadata accessor for CustodianListItem(0);
  sub_1C546EFC0();
  v3 = sub_1C5595194();

  return v3;
}

uint64_t sub_1C546E51C(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_1C546E580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v20 = a1;
  v21 = a2;
  v22 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CB88, &qword_1C55B0890);
  sub_1C546F050();
  sub_1C5412C88();
  sub_1C5596024();

  memcpy(__dst, v15, sizeof(__dst));
  memcpy(v14, __dst, sizeof(v14));
  sub_1C5596244();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CB98, &qword_1C55B0898);
  sub_1C546F0D8();
  sub_1C543F8AC();
  sub_1C543AE1C();
  sub_1C5595B24();
  sub_1C546F160(v14);
  memcpy(v24, v16, sizeof(v24));
  memcpy(v13, v24, 0x79uLL);
  v4 = [objc_opt_self() secondarySystemBackgroundColor];
  v12 = sub_1C5595E44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CBA8, &unk_1C55B08A0);
  sub_1C546F1B0();
  sub_1C5595BF4();
  sub_1C5410D10(&v12);
  sub_1C546F160(v13);
  memcpy(v25, v17, sizeof(v25));
  memcpy(v11, v25, sizeof(v11));
  sub_1C5596214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CBB8, &unk_1C55B08B0);
  sub_1C546F258();
  sub_1C5595D24();
  sub_1C546F300(v11);
  memcpy(v26, v18, sizeof(v26));
  memcpy(v10, v26, sizeof(v10));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CBC8, &qword_1C55B08C0);
  sub_1C546F35C();
  sub_1C540EFD8(v10, v7, v19);
  sub_1C546F300(v10);
  memcpy(v27, v19, sizeof(v27));
  sub_1C546F400(v27, v9);
  memcpy(v8, v27, sizeof(v8));
  sub_1C540EFD8(v8, v7, a3);
  sub_1C546F300(v8);
  return sub_1C546F300(v19);
}

void sub_1C546E96C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v64 = a3;
  v44 = a1;
  v42 = a2;
  v43 = a4;
  v109 = 0;
  v110 = 0;
  v111 = 0.0;
  v68 = v91;
  memset(v91, 0, sizeof(v91));
  v26 = sub_1C5595F04();
  v24 = *(v26 - 8);
  v25 = v26 - 8;
  v18 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v44, v42, v4, v5);
  v27 = &v18 - v18;
  v109 = v7;
  v110 = v8;
  v111 = v6;
  v19 = sub_1C546E384(v7, v8);
  v28 = *(v19 + 48);

  v20 = sub_1C54127B4();
  v21 = v9;
  v22 = v10;
  v23 = v11;
  sub_1C54127C8(v27);
  v29 = sub_1C5595F44();
  (*(v24 + 8))(v27, v26);

  v32 = v101;
  v101[0] = v29;
  v30 = MEMORY[0x1E6981748];
  v31 = MEMORY[0x1E6981710];
  sub_1C5410F68();
  sub_1C5595D14();
  sub_1C5410D10(v32);
  v37 = v95;
  v95[0] = v101[1];
  v95[1] = v101[2];
  v57 = 1;
  v96 = v102 & 1;
  v97 = v103;
  v98 = v104 & 1;
  v99 = v105;
  v100 = v106;
  sub_1C5596014();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CBF0, &unk_1C55B47A0);
  v35 = sub_1C546FB60();
  v36 = sub_1C546FC00();
  v34 = MEMORY[0x1E69817E8];
  v94 = sub_1C546EEB4();
  v93 = v94;
  v38 = &v107;
  sub_1C5595E04();
  sub_1C5410D10(v37);
  v39 = __dst;
  v40 = 58;
  memcpy(__dst, v38, 0x3AuLL);
  v41 = v92;
  memcpy(v92, __dst, 0x3AuLL);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CC00, &unk_1C55B0B00);
  v62 = sub_1C546FC78();
  v69 = v108;
  sub_1C540EFD8(v41, v60, v108);
  sub_1C5410D10(v41);
  v45 = sub_1C546E384(v44, v42);
  v46 = *(v45 + 16);
  v47 = *(v45 + 24);
  sub_1C5594CF4();

  v48 = v90;
  v90[0] = v46;
  v90[1] = v47;
  sub_1C54141E8();
  v86 = sub_1C5595A04();
  v87 = v12;
  v88 = v13;
  v89 = v14;
  v50 = v86;
  v51 = v12;
  v52 = v13;
  v53 = v14;
  v49 = sub_1C55958E4();
  v82 = v50;
  v83 = v51;
  v84 = v52 & 1 & v57;
  v85 = v53;
  v78 = sub_1C55959C4();
  v79 = v15;
  v80 = v16;
  v81 = v17;
  v54 = v78;
  v55 = v15;
  v56 = v16;
  v58 = v17;

  sub_1C5412EA0(v50, v51, v52 & 1);

  v59 = v75;
  v75[0] = v54;
  v75[1] = v55;
  v76 = v56 & 1 & v57;
  v77 = v58;
  v61 = MEMORY[0x1E6981148];
  v63 = MEMORY[0x1E6981138];
  sub_1C540EFD8(v75, MEMORY[0x1E6981148], v68);
  sub_1C5414260(v59);
  v67 = v73;
  sub_1C546FDA8(v69, v73);
  v65 = v74;
  v74[0] = v67;
  v66 = v72;
  sub_1C54142A8(v68, v72);
  v74[1] = v66;
  v71[0] = v60;
  v71[1] = v61;
  v70[0] = v62;
  v70[1] = v63;
  sub_1C540F5A0(v65, 2uLL, v71, v70, v64);
  sub_1C5414260(v66);
  sub_1C5410D10(v67);
  sub_1C5414260(v68);
  sub_1C5410D10(v69);
}

uint64_t sub_1C546EF30()
{
  sub_1C55965F4("AAUICustodianReviewSheetDismissed", 33, 1);
  sub_1C5594CF4();
  v2 = sub_1C5596554();
  MEMORY[0x1E69E5928](v2, v0);

  MEMORY[0x1E69E5920](v2);
  result = v2;
  qword_1EC16B458 = v2;
  return result;
}

unint64_t sub_1C546EFC0()
{
  v2 = qword_1EC15CB80;
  if (!qword_1EC15CB80)
  {
    type metadata accessor for CustodianListItem(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CB80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C546F050()
{
  v2 = qword_1EC15CB90;
  if (!qword_1EC15CB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CB88, &qword_1C55B0890);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CB90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C546F0D8()
{
  v2 = qword_1EC15CBA0;
  if (!qword_1EC15CBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CB98, &qword_1C55B0898);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CBA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C546F160(uint64_t a1)
{

  sub_1C5412EA0(*(a1 + 88), *(a1 + 96), *(a1 + 104) & 1);

  return a1;
}

unint64_t sub_1C546F1B0()
{
  v2 = qword_1EC15CBB0;
  if (!qword_1EC15CBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CBA8, &unk_1C55B08A0);
    sub_1C546F0D8();
    sub_1C543093C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CBB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C546F258()
{
  v2 = qword_1EC15CBC0;
  if (!qword_1EC15CBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CBB8, &unk_1C55B08B0);
    sub_1C546F1B0();
    sub_1C54145A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CBC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C546F300(uint64_t a1)
{

  sub_1C5412EA0(*(a1 + 88), *(a1 + 96), *(a1 + 104) & 1);

  return a1;
}

unint64_t sub_1C546F35C()
{
  v2 = qword_1EC15CBD0;
  if (!qword_1EC15CBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CBC8, &qword_1C55B08C0);
    sub_1C546F258();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CBD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C546F400(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);

  *(a2 + 24) = v3;
  memcpy((a2 + 32), (a1 + 32), 0x32uLL);
  v4 = *(a1 + 88);
  v5 = *(a1 + 96);
  v6 = *(a1 + 104);
  sub_1C54130AC(v4, v5, v6 & 1);
  *(a2 + 88) = v4;
  *(a2 + 96) = v5;
  *(a2 + 104) = v6 & 1;
  v7 = *(a1 + 112);
  sub_1C5594CF4();
  *(a2 + 112) = v7;
  *(a2 + 120) = *(a1 + 120);
  v9 = *(a1 + 128);

  *(a2 + 128) = v9;
  memcpy((a2 + 136), (a1 + 136), 0x70uLL);
  return a2;
}

uint64_t sub_1C546F514()
{
  v0 = sub_1C546C3F4();
  v3 = *v0;
  MEMORY[0x1E69E5928](*v0, v1);
  return v3;
}

unint64_t sub_1C546F604(uint64_t a1)
{
  v4 = sub_1C543D8C0(319);
  if (v1 <= 0x3F)
  {
    v4 = sub_1C546F6E0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

unint64_t sub_1C546F6E0(uint64_t a1)
{
  v5 = qword_1EC15CBD8;
  if (!qword_1EC15CBD8)
  {
    type metadata accessor for ReviewCustodianListViewModel(255);
    sub_1C5468328();
    v4 = sub_1C55951B4();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EC15CBD8);
      return v2;
    }
  }

  return v5;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

uint64_t sub_1C546F79C(uint64_t a1, int a2)
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
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
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

uint64_t sub_1C546F8B4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1C546FABC()
{
  v2 = qword_1EC15CBE0;
  if (!qword_1EC15CBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CBE8, qword_1C55B0AC0);
    sub_1C546DC18();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CBE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C546FB60()
{
  v2 = qword_1EC15CBF8;
  if (!qword_1EC15CBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CBF0, &unk_1C55B47A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CBF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C546FC00()
{
  v2 = qword_1EC159FD0;
  if (!qword_1EC159FD0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159FD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C546FC78()
{
  v2 = qword_1EC15CC08;
  if (!qword_1EC15CC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CC00, &unk_1C55B0B00);
    sub_1C546FB60();
    sub_1C546FD20();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CC08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C546FD20()
{
  v2 = qword_1EC15A030;
  if (!qword_1EC15A030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CC10, &qword_1C55B47B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15A030);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C546FDA8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *a2 = v3;
  memcpy((a2 + 8), a1 + 1, 0x30uLL);
  result = a2;
  *(a2 + 56) = *(a1 + 28);
  return result;
}

uint64_t sub_1C546FE0C(uint64_t (*a1)(void))
{
  v3 = a1();
  if (v3)
  {
    v1 = v3;
    v4 = v3;
    sub_1C546FEC4(&v4, &v5);
  }

  else
  {

    return 0;
  }

  return v5;
}

uint64_t sub_1C546FEC4@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v6 = _swift_stdlib_bridgeErrorToNSError();
  MEMORY[0x1E69E5928](v6, v3);
  *a2 = v6;
  return swift_unknownObjectRelease();
}

unint64_t sub_1C546FF30()
{
  v2 = qword_1EC15CC20;
  if (!qword_1EC15CC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CC18, &unk_1C55B0B10);
    sub_1C543DC9C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CC20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C546FFD4(uint64_t a1)
{
  sub_1C5412EA0(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

unint64_t sub_1C5470028()
{
  v2 = qword_1EC15CC30;
  if (!qword_1EC15CC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CC28, &qword_1C55B0B20);
    sub_1C546FF30();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CC30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54700CC()
{
  v2 = qword_1EC15CC40;
  if (!qword_1EC15CC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CC38, &qword_1C55B0B28);
    sub_1C5470028();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CC40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5470170()
{
  v2 = qword_1EC15CC50;
  if (!qword_1EC15CC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CC48, &qword_1C55B0B30);
    sub_1C54700CC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CC50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5470214()
{
  v2 = qword_1EC15CC60;
  if (!qword_1EC15CC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CC58, &qword_1C55B0B38);
    sub_1C5470028();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CC60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54702B8(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_1C54130AC(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v6 = *(a1 + 24);
  sub_1C5594CF4();
  *(a2 + 24) = v6;
  v7 = *(a1 + 32);

  *(a2 + 32) = v7;
  *(a2 + 40) = *(a1 + 40);
  memcpy((a2 + 48), (a1 + 48), 0x29uLL);
  memcpy((a2 + 96), (a1 + 96), 0x29uLL);
  result = a2;
  *(a2 + 137) = *(a1 + 137);
  return result;
}

uint64_t sub_1C54703B0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_1C54130AC(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v6 = *(a1 + 24);
  sub_1C5594CF4();
  *(a2 + 24) = v6;
  v7 = *(a1 + 32);

  *(a2 + 32) = v7;
  *(a2 + 40) = *(a1 + 40);
  memcpy((a2 + 48), (a1 + 48), 0x29uLL);
  result = a2;
  *(a2 + 89) = *(a1 + 89);
  return result;
}

unint64_t sub_1C5470494()
{
  v2 = qword_1EC15CC80;
  if (!qword_1EC15CC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CC70, &qword_1C55B0B48);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CC80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C547051C()
{
  v2 = qword_1EC15CC90;
  if (!qword_1EC15CC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CC88, &qword_1C55B0B58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CC90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54705A4()
{
  v1 = *(type metadata accessor for ReviewCustodianListView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1C546BDA0(v2);
}

uint64_t sub_1C5470608()
{
  type metadata accessor for ReviewCustodianListView(0);

  return sub_1C546BF04();
}

unint64_t sub_1C5470674()
{
  v2 = qword_1EC15CCA0;
  if (!qword_1EC15CCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CC98, &qword_1C55B0B60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CCA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C547070C()
{
  v2 = qword_1EC159FD8;
  if (!qword_1EC159FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CCC8, &qword_1C55B0E10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159FD8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5470794()
{
  v1 = *(type metadata accessor for ReviewCustodianListView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1C546BCD0(v2);
}

unint64_t sub_1C5470800()
{
  v2 = qword_1EC15CCE8;
  if (!qword_1EC15CCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CCE0, &qword_1C55B0BA0);
    sub_1C5470898();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CCE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5470898()
{
  v2 = qword_1EC15CCF0;
  if (!qword_1EC15CCF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CCF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5470914()
{
  v2 = qword_1EC15CCF8;
  if (!qword_1EC15CCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CCD8, &qword_1C55B0B98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CCF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54709A4()
{
  v2 = qword_1EC15CD08;
  if (!qword_1EC15CD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CD00, &qword_1C55B0BA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5470A2C()
{
  v2 = qword_1EC15CD10;
  if (!qword_1EC15CD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CCC0, &unk_1C55B0B80);
    sub_1C54709A4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5470AD8()
{
  v2 = qword_1EC15CD18;
  if (!qword_1EC15CD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CCD0, &qword_1C55B0B90);
    sub_1C5470A2C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD18);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5470B7C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC0, &unk_1C55B0B80);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_1C5470BE4(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1C54130AC(v3, v4, v5 & 1);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5 & 1;
  v6 = *(a1 + 48);
  sub_1C5594CF4();
  *(a2 + 48) = v6;
  v7 = *(a1 + 56);

  *(a2 + 56) = v7;
  *(a2 + 64) = *(a1 + 64);
  memcpy((a2 + 72), (a1 + 72), 0x29uLL);
  memcpy((a2 + 120), (a1 + 120), 0x2BuLL);
  v8 = *(a1 + 168);
  v9 = *(a1 + 176);
  v10 = *(a1 + 184);
  sub_1C54130AC(v8, v9, v10 & 1);
  *(a2 + 168) = v8;
  *(a2 + 176) = v9;
  *(a2 + 184) = v10 & 1;
  v11 = *(a1 + 192);
  sub_1C5594CF4();
  *(a2 + 192) = v11;
  v12 = *(a1 + 200);

  *(a2 + 200) = v12;
  *(a2 + 208) = *(a1 + 208);
  memcpy((a2 + 216), (a1 + 216), 0x2BuLL);
  memcpy((a2 + 264), (a1 + 264), 0x29uLL);
  return a2;
}

uint64_t sub_1C5470DBC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC0, &unk_1C55B0B80);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCD0, &qword_1C55B0B90);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_1C5470E68()
{
  v4 = *(type metadata accessor for ReviewCustodianListView(0) - 8);
  v1 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v2 = *(v0 + ((v1 + *(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C546AF38(v0 + v1, v2);
}

unint64_t sub_1C5470F04()
{
  v2 = qword_1EC15CD20;
  if (!qword_1EC15CD20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5470FB4(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = *(a1 + 8);
  sub_1C5594CF4();
  *(a2 + 8) = v4;
  *(a2 + 16) = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);

  result = a2;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

unint64_t sub_1C547102C()
{
  v2 = qword_1EC15CD28;
  if (!qword_1EC15CD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CB60, &qword_1C55B0878);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54710B4()
{
  v2 = qword_1EC15CD30;
  if (!qword_1EC15CD30)
  {
    type metadata accessor for CustodianListItem(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5471180()
{
  v2[3] = &unk_1F4478658;
  v2[4] = sub_1C54711E0();
  v1 = sub_1C5594B34();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v1 & 1;
}

unint64_t sub_1C54711E0()
{
  v2 = qword_1EC15CD38;
  if (!qword_1EC15CD38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5471294()
{
  v2 = qword_1EC15CD40;
  if (!qword_1EC15CD40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54713DC()
{
  v2 = qword_1EC15CD48;
  if (!qword_1EC15CD48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54714B8()
{
  v2 = qword_1EC15CD50;
  if (!qword_1EC15CD50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C547154C()
{
  v2 = qword_1EC15CD58;
  if (!qword_1EC15CD58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD58);
    return WitnessTable;
  }

  return v2;
}

double static CustomComponentFactory.registerRemoteUISwiftViews()()
{
  sub_1C5596334();
  v6 = sub_1C5596324();
  type metadata accessor for LockDownModeRowElement(0);
  sub_1C5471A24();
  sub_1C55965F4("LockDownModeRow", 15, 1);
  sub_1C5596314();

  MEMORY[0x1E69E5920](v6);
  v7 = sub_1C5596324();
  type metadata accessor for AnalyticsDataSharingRowElement(0);
  sub_1C5471AA4();
  sub_1C55965F4("AnalyticsDataSharingRow", 23, 1);
  sub_1C5596314();

  MEMORY[0x1E69E5920](v7);
  v8 = sub_1C5596324();
  type metadata accessor for SoftwareUpdateRowElement(0);
  sub_1C5471B24();
  sub_1C55965F4("SoftwareUpdateRow");
  sub_1C5596314();

  MEMORY[0x1E69E5920](v8);
  v9 = sub_1C5596324();
  type metadata accessor for AgeAttestationRowElement(0);
  sub_1C5471BA4();
  sub_1C55965F4("ageAttestationRow", 17, 1);
  sub_1C5596314();

  MEMORY[0x1E69E5920](v9);
  if (sub_1C5471180())
  {
    v3 = sub_1C5596324();
    sub_1C5471D1C();
    sub_1C55965F4("AppleAccountNameAndPhotoSharingView", 35, 1);
    sub_1C5596314();

    MEMORY[0x1E69E5920](v3);
    v4 = sub_1C5596324();
    type metadata accessor for SharedNameRowView(0);
    sub_1C5471D94();
    sub_1C55965F4("SharedNameRowView", 17, 1);
    sub_1C5596314();

    MEMORY[0x1E69E5920](v4);
    v5 = sub_1C5596324();
    sub_1C5471E14();
    sub_1C55965F4("ShareAutomaticallyPickerRowView", 31, 1);
    sub_1C5596314();

    MEMORY[0x1E69E5920](v5);
  }

  v1 = sub_1C5596324();
  type metadata accessor for AppleAccountBirthdayPickerRow(0);
  sub_1C5471C24();
  sub_1C55965F4("AppleAccountBirthdayPickerRow", 29, 1);
  sub_1C5596314();

  MEMORY[0x1E69E5920](v1);
  v2 = sub_1C5596324();
  sub_1C5471CA4();
  sub_1C55965F4("AppleAccountPendingBirthdayConnect", 34, 1);
  sub_1C5596314();

  *&result = MEMORY[0x1E69E5920](v2).n128_u64[0];
  return result;
}

unint64_t sub_1C5471A24()
{
  v2 = qword_1EC15CD60;
  if (!qword_1EC15CD60)
  {
    type metadata accessor for LockDownModeRowElement(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5471AA4()
{
  v2 = qword_1EC15CD68;
  if (!qword_1EC15CD68)
  {
    type metadata accessor for AnalyticsDataSharingRowElement(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5471B24()
{
  v2 = qword_1EC15CD70;
  if (!qword_1EC15CD70)
  {
    type metadata accessor for SoftwareUpdateRowElement(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5471BA4()
{
  v2 = qword_1EC15CD78;
  if (!qword_1EC15CD78)
  {
    type metadata accessor for AgeAttestationRowElement(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5471C24()
{
  v2 = qword_1EC15CD80;
  if (!qword_1EC15CD80)
  {
    type metadata accessor for AppleAccountBirthdayPickerRow(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5471CA4()
{
  v2 = qword_1EC15CD88;
  if (!qword_1EC15CD88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5471D1C()
{
  v2 = qword_1EC15CD90;
  if (!qword_1EC15CD90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5471D94()
{
  v2 = qword_1EC15CD98;
  if (!qword_1EC15CD98)
  {
    type metadata accessor for SharedNameRowView(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5471E14()
{
  v2 = qword_1EC15CDA0;
  if (!qword_1EC15CDA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CDA0);
    return WitnessTable;
  }

  return v2;
}

id CustomComponentFactory.init()()
{
  v4 = 0;
  v3.receiver = 0;
  v3.super_class = type metadata accessor for CustomComponentFactory();
  v2 = objc_msgSendSuper2(&v3, sel_init);
  MEMORY[0x1E69E5928](v2, v0);
  v4 = v2;
  MEMORY[0x1E69E5920](v2);
  return v2;
}

id CustomComponentFactory.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomComponentFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C5472008(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 32))();
  v4 = *MEMORY[0x1E698C218];
  v6 = [v5 aidaAccountForService_];
  MEMORY[0x1E69E5920](v4);
  MEMORY[0x1E69E5920](v5);
  return v6;
}

id sub_1C54720B4(uint64_t a1, uint64_t a2)
{
  v12 = sub_1C5472008(a1, a2);
  if (!v12)
  {
    return 0;
  }

  v10 = [objc_opt_self() sharedInstance];
  v2 = [v12 aa_altDSID];
  v11 = v2;
  if (v2)
  {
    sub_1C5596574();
    v8 = v3;
    MEMORY[0x1E69E5920](v11);
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    sub_1C5596C94();
    __break(1u);
  }

  v6 = sub_1C5596554();

  v7 = [v10 authKitAccountWithAltDSID_];
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v10);
  if (!v7)
  {
    MEMORY[0x1E69E5920](v12);
    return 0;
  }

  MEMORY[0x1E69E5920](v12);
  return v7;
}

BOOL sub_1C547232C(uint64_t a1, uint64_t a2)
{
  (*(a2 + 80))();
  sub_1C5403328();
  v7 = sub_1C5596744();

  swift_unknownObjectRetain();
  if (v7)
  {
    v4 = 0;
  }

  else
  {
    (*(a2 + 88))(a1);
    v3 = sub_1C5596744();

    v4 = v3 == 0;
  }

  swift_unknownObjectRelease();
  return v4;
}

double sub_1C5472438(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  v18 = a1;
  sub_1C5404B78();
  v8 = sub_1C5404B48();
  v16 = v8;
  v6 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();

  v2 = swift_allocObject();
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = v6;
  v14 = sub_1C5472CD4;
  v15 = v2;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = 0;
  v12 = sub_1C546D2EC;
  v13 = &block_descriptor_7;
  v7 = _Block_copy(&aBlock);

  [v8 pullTrustedContactsFromCloudKitWithCompletion_];
  _Block_release(v7);
  *&result = MEMORY[0x1E69E5920](v8).n128_u64[0];
  return result;
}

uint64_t sub_1C54725CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a1;
  v39 = a2;
  v36 = a3;
  v37 = a4;
  v47 = sub_1C5467F9C;
  v51 = sub_1C546FF24;
  v53 = sub_1C545C6D4;
  v55 = sub_1C545C6D4;
  v58 = sub_1C545C6E8;
  v72 = 0;
  v71 = 0;
  v69 = 0;
  v38 = 0;
  v73 = a3;
  v44 = sub_1C5594C74();
  v42 = *(v44 - 8);
  v43 = v44 - 8;
  v40 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v45, v39, v4, v5);
  v6 = v25 - v40;
  v41 = v25 - v40;
  v72 = v7;
  v71 = v8 + 16;
  v9 = sub_1C54B05F8();
  (*(v42 + 16))(v6, v9, v44);
  v10 = v45;
  v49 = 7;
  v50 = swift_allocObject();
  *(v50 + 16) = v45;
  sub_1C54398B0();

  v62 = sub_1C5594C54();
  v63 = sub_1C5596954();
  v46 = 17;
  v54 = swift_allocObject();
  *(v54 + 16) = 64;
  v56 = swift_allocObject();
  *(v56 + 16) = 8;
  v48 = 32;
  v11 = swift_allocObject();
  v12 = v50;
  v52 = v11;
  *(v11 + 16) = v47;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v52;
  v59 = v13;
  *(v13 + 16) = v51;
  *(v13 + 24) = v14;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v57 = sub_1C5596E04();
  v60 = v15;

  v16 = v54;
  v17 = v60;
  *v60 = v53;
  v17[1] = v16;

  v18 = v56;
  v19 = v60;
  v60[2] = v55;
  v19[3] = v18;

  v20 = v59;
  v21 = v60;
  v60[4] = v58;
  v21[5] = v20;
  sub_1C540FCD8();

  if (os_log_type_enabled(v62, v63))
  {
    v22 = v38;
    v29 = sub_1C5596A74();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v30 = sub_1C5419DC0(1, v28, v28);
    v31 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v32 = &v68;
    v68 = v29;
    v33 = &v67;
    v67 = v30;
    v34 = &v66;
    v66 = v31;
    sub_1C5419E14(2, &v68);
    sub_1C5419E14(1, v32);
    v64 = v53;
    v65 = v54;
    sub_1C5419E28(&v64, v32, v33, v34);
    v35 = v22;
    if (v22)
    {

      __break(1u);
    }

    else
    {
      v64 = v55;
      v65 = v56;
      sub_1C5419E28(&v64, &v68, &v67, &v66);
      v27 = 0;
      v64 = v58;
      v65 = v59;
      sub_1C5419E28(&v64, &v68, &v67, &v66);
      _os_log_impl(&dword_1C5355000, v62, v63, "Completed sync of trusted contacts from CloudKit with error: %@", v29, 0xCu);
      sub_1C5419E74(v30, 1, v28);
      sub_1C5419E74(v31, 0, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v23 = MEMORY[0x1E69E5920](v62);
  (*(v42 + 8))(v41, v44, v23);
  v25[3] = v39 + 16;
  v25[4] = &v70;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  result = Strong;
  if (Strong)
  {
    v25[2] = Strong;
    v25[1] = Strong;
    v69 = Strong;
    (*(v37 + 224))(v36);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1C5472D54(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  v41 = a2;
  v44 = sub_1C54733B0;
  v48 = sub_1C5473EFC;
  v50 = sub_1C545C6D4;
  v52 = sub_1C545C6D4;
  v55 = sub_1C5473FA4;
  v66 = 0;
  v34 = 0;
  v67 = a1;
  v39 = sub_1C5594C74();
  v37 = *(v39 - 8);
  v38 = v39 - 8;
  v35 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39, v2, v3, v4);
  v5 = v25 - v35;
  v36 = v25 - v35;
  v66 = v6;
  v7 = sub_1C54B05F8();
  (*(v37 + 16))(v5, v7, v39);
  swift_unknownObjectRetain();
  v46 = 7;
  v8 = swift_allocObject();
  v9 = v41;
  v10 = v42;
  v47 = v8;
  v8[2] = v40;
  v8[3] = v9;
  v8[4] = v10;
  v59 = sub_1C5594C54();
  v60 = sub_1C5596944();
  v43 = 17;
  v51 = swift_allocObject();
  *(v51 + 16) = 32;
  v53 = swift_allocObject();
  *(v53 + 16) = 8;
  v45 = 32;
  v11 = swift_allocObject();
  v12 = v47;
  v49 = v11;
  *(v11 + 16) = v44;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v49;
  v56 = v13;
  *(v13 + 16) = v48;
  *(v13 + 24) = v14;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v54 = sub_1C5596E04();
  v57 = v15;

  v16 = v51;
  v17 = v57;
  *v57 = v50;
  v17[1] = v16;

  v18 = v53;
  v19 = v57;
  v57[2] = v52;
  v19[3] = v18;

  v20 = v56;
  v21 = v57;
  v57[4] = v55;
  v21[5] = v20;
  sub_1C540FCD8();

  if (os_log_type_enabled(v59, v60))
  {
    v22 = v34;
    v27 = sub_1C5596A74();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v28 = sub_1C5419DC0(0, v26, v26);
    v29 = sub_1C5419DC0(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v30 = &v65;
    v65 = v27;
    v31 = &v64;
    v64 = v28;
    v32 = &v63;
    v63 = v29;
    sub_1C5419E14(2, &v65);
    sub_1C5419E14(1, v30);
    v61 = v50;
    v62 = v51;
    sub_1C5419E28(&v61, v30, v31, v32);
    v33 = v22;
    if (v22)
    {

      __break(1u);
    }

    else
    {
      v61 = v52;
      v62 = v53;
      sub_1C5419E28(&v61, &v65, &v64, &v63);
      v25[0] = 0;
      v61 = v55;
      v62 = v56;
      sub_1C5419E28(&v61, &v65, &v64, &v63);
      _os_log_impl(&dword_1C5355000, v59, v60, "%s contacts changed. Fetching latest...", v27, 0xCu);
      sub_1C5419E74(v28, 0, v26);
      sub_1C5419E74(v29, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v23 = MEMORY[0x1E69E5920](v59);
  (*(v37 + 8))(v36, v39, v23);
  return (*(v41 + 224))(v40);
}

uint64_t sub_1C54733CC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ReviewCustodianListViewModel(0);
  v7 = (*(a2 + 32))(a1);
  sub_1C5404BDC();
  v8 = sub_1C5404B48();
  v2 = (*(a2 + 72))(a1);
  return sub_1C55823FC(v7, v8, v2, v3);
}

uint64_t sub_1C5473494(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 64))())
  {
    return sub_1C55965F4("recovery_contact_shield_icon", 28, 1);
  }

  else
  {
    return sub_1C55965F4("legacy_contact_header", 21, 1);
  }
}

uint64_t sub_1C5473538(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 64))())
  {
    return sub_1C55965F4("id-recovery_contact_header_icon", 31, 1);
  }

  else
  {
    return sub_1C55965F4("id-legacy_contact_header_icon", 29, 1);
  }
}

uint64_t sub_1C54735DC(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 64))())
  {
    v4 = sub_1C55965F4("RECOVERY_CONTACTS_VIEW_HEADER_TEXT", 34, 1);
    v7 = sub_1C54637B4(v4, v5);

    return v7;
  }

  else
  {
    v2 = sub_1C55965F4("LEGACY_CONTACTS_VIEW_HEADER_TEXT", 32, 1);
    v8 = sub_1C54637B4(v2, v3);

    return v8;
  }
}

uint64_t sub_1C54736C8(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 64))())
  {
    return sub_1C55965F4("id-RECOVERY_CONTACTS_VIEW_HEADER_TEXT", 37, 1);
  }

  else
  {
    return sub_1C55965F4("id-LEGACY_CONTACTS_VIEW_HEADER_TEXT", 35, 1);
  }
}

uint64_t sub_1C547376C(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 64))())
  {
    v4 = sub_1C55965F4("RECOVERY_CONTACTS_VIEW_DESCRIPTION_TEXT", 39, 1);
    v7 = sub_1C54637B4(v4, v5);

    return v7;
  }

  else
  {
    v2 = sub_1C55965F4("LEGACY_CONTACTS_VIEW_DESCRIPTION_TEXT", 37, 1);
    v8 = sub_1C54637B4(v2, v3);

    return v8;
  }
}

uint64_t sub_1C5473858(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 64))())
  {
    return sub_1C55965F4("id-RECOVERY_CONTACTS_VIEW_DESCRIPTION_TEXT", 42, 1);
  }

  else
  {
    return sub_1C55965F4("id-LEGACY_CONTACTS_VIEW_DESCRIPTION_TEXT", 40, 1);
  }
}

uint64_t sub_1C5473994(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 64))())
  {
    v4 = sub_1C55965F4("RECOVERY_CONTACTS_VIEW_OWNER_SECTION_HEADER", 43, 1);
    v7 = sub_1C54637B4(v4, v5);

    return v7;
  }

  else
  {
    v2 = sub_1C55965F4("LEGACY_CONTACTS_VIEW_BENEFACTOR_SECTION_HEADER", 46, 1);
    v8 = sub_1C54637B4(v2, v3);

    return v8;
  }
}

uint64_t sub_1C5473A80(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 64))())
  {
    return sub_1C55965F4("id-RECOVERY_CONTACTS_VIEW_OWNER_SECTION_HEADER", 46, 1);
  }

  else
  {
    return sub_1C55965F4("id-LEGACY_CONTACTS_VIEW_BENEFACTOR_SECTION_HEADER", 49, 1);
  }
}

uint64_t sub_1C5473B24(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 64))())
  {
    v4 = sub_1C55965F4("RECOVERY_CONTACTS_VIEW_ADD_RECOVERY_CONTACT_BUTTON_TITLE", 56, 1);
    v7 = sub_1C54637B4(v4, v5);

    return v7;
  }

  else
  {
    v2 = sub_1C55965F4("LEGACY_CONTACTS_VIEW_ADD_LEGACY_CONTACT_BUTTON_TITLE", 52, 1);
    v8 = sub_1C54637B4(v2, v3);

    return v8;
  }
}

uint64_t sub_1C5473C10(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 64))())
  {
    return sub_1C55965F4("id-add-recovery-contact-button", 30, 1);
  }

  else
  {
    return sub_1C55965F4("id-add-legacy-contact-button", 28, 1);
  }
}

uint64_t sub_1C5473CB4(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 64))())
  {
    v4 = sub_1C55965F4("RECOVERY_CONTACTS_VIEW_FOOTER_TEXT", 34, 1);
    v7 = sub_1C54637B4(v4, v5);

    return v7;
  }

  else
  {
    v2 = sub_1C55965F4("LEGACY_CONTACTS_VIEW_FOOTER_TEXT", 32, 1);
    v8 = sub_1C54637B4(v2, v3);

    return v8;
  }
}

uint64_t sub_1C5473DA0(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 64))())
  {
    v4 = sub_1C55965F4("RECOVERY_CONTACTS_VIEW_FOOTER_LEARN_MORE_LINK", 45, 1);
    v7 = sub_1C54637B4(v4, v5);

    return v7;
  }

  else
  {
    v2 = sub_1C55965F4("LEGACY_CONTACTS_VIEW_FOOTER_LEARN_MORE_LINK", 43, 1);
    v8 = sub_1C54637B4(v2, v3);

    return v8;
  }
}

uint64_t sub_1C5473E8C@<X0>(uint64_t *a2@<X8>)
{
  sub_1C5403328();
  result = sub_1C5596BB4();
  *a2 = result;
  return result;
}

void *sub_1C5473F08(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = (a4)(a1, a2);
  sub_1C5474440(v4, v5, a3);
  v8 = *a1;

  sub_1C5596AA4();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t sub_1C5474440(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1C5594CF4();
  v14 = sub_1C54745E4(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_1C5409260(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v13[3] = MEMORY[0x1E69E6A18];
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_1C5409260(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  return v11;
}

void *sub_1C54745E4(void *result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          sub_1C5596C94();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        sub_1C547499C(v22, v17, v16);
        sub_1C5596AB4();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = sub_1C5474B18(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = sub_1C5596BE4();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = sub_1C5596C94();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *sub_1C547499C(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = sub_1C5596CC4();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    sub_1C5596CC4();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_1C5474B18(uint64_t a1, uint64_t a2)
{
  v7 = sub_1C5474BD4(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E3D0, &unk_1C55B3DD0);
  inited = swift_initStackObject();
  sub_1C54753E4(inited, 1);
  *v3 = 0;
  sub_1C5475430();
  sub_1C5475464(v4);

  v8 = sub_1C547580C(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *sub_1C5474BD4(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = sub_1C5596624();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_1C5475D2C();
  }

  v10 = sub_1C5475824(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    sub_1C5596CC4();
    __break(1u);
    return sub_1C5475D2C();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_1C5475968(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = sub_1C5596BE4();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_1C5475968(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = sub_1C5596BA4();
  if (v2)
  {
LABEL_29:
    sub_1C5596C94();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;
  sub_1C5594CF4();
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    sub_1C5596C94();
    __break(1u);
  }

  sub_1C5401ECC(v17);
  return v10;
}

uint64_t sub_1C54753E4(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void sub_1C5475464(uint64_t a1)
{
  v18 = sub_1C547580C(a1);
  v2 = sub_1C547580C(*v1);
  v19 = v2 + v18;
  if (__OFADD__(v2, v18))
  {
    goto LABEL_31;
  }

  v14 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v19 > *(*v17 + 24) >> 1)
  {
    if (*(*v17 + 16) < v19)
    {
      v13 = v19;
    }

    else
    {
      v13 = *(*v17 + 16);
    }

    v12 = *v17;
    sub_1C5594CF4();
    *v17 = sub_1C5475D5C(isUniquelyReferenced_nonNull_native, v13, 1, v12);
  }

  v4 = *(*v17 + 16);
  v10 = (*v17 + 32 + v4);
  v5 = *(*v17 + 24) >> 1;
  v11 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    goto LABEL_32;
  }

  if (v11 < 0)
  {
LABEL_30:
    sub_1C5596CC4();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_1C5475EC8(a1))
  {
LABEL_21:

    if (v18 <= 0)
    {
      goto LABEL_28;
    }

    sub_1C5596C94();
    __break(1u);
    goto LABEL_30;
  }

  if (v11 < v18)
  {
    sub_1C5596C94();
    __break(1u);
    goto LABEL_21;
  }

  sub_1C5475968((a1 + 32), v18, v10);
  sub_1C5594CF4();

  swift_unknownObjectRelease();
  if (v18 <= 0)
  {
    goto LABEL_28;
  }

  v7 = *(*v17 + 16);
  v9 = v7 + v18;
  if (!__OFADD__(v7, v18))
  {
    *(*v17 + 16) = v9;
LABEL_28:
    sub_1C5418EAC();
    return;
  }

LABEL_33:
  __break(1u);
}

void *sub_1C5475824(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E3D0, &unk_1C55B3DD0);
    v6 = swift_allocObject();

    if (_swift_stdlib_has_malloc_size())
    {
      v4 = _swift_stdlib_malloc_size(v6) - 32;
      v6[2] = a1;
      v6[3] = 2 * v4;
    }

    else
    {
      v6[2] = a1;
      v6[3] = 2 * v7;
    }

    return v6;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];

    return v3;
  }
}

void *sub_1C5475968(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    sub_1C5596CC4();
    __break(1u);
  }

  result = sub_1C5596CC4();
  __break(1u);
  return result;
}

unint64_t sub_1C5475AB8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = MEMORY[0x1C69471E0](15, v10, a2, a3);
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    sub_1C5596C94();
    __break(1u);
  }

  v5 = sub_1C5596664();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

uint64_t sub_1C5475D2C()
{
  v1 = MEMORY[0x1E69E7CC0];

  return v1;
}

char *sub_1C5475D5C(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_1C5475824(v4, v6);
  if (v7)
  {
    sub_1C5475ED0((a4 + 32), v4, v5 + 32);
    sub_1C5594CF4();

    *(a4 + 16) = 0;
  }

  else
  {
    sub_1C5594CF4();

    sub_1C5475968((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *sub_1C5475ED0(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_1C5596CC4();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

uint64_t sub_1C5476020()
{
  result = sub_1C55965F4("com.apple.appleaccount.custodian.ui.openAccountRecovery", 55, 1);
  qword_1EC16B460 = result;
  qword_1EC16B468 = v1;
  return result;
}

uint64_t *sub_1C5476064()
{
  if (qword_1EC1628E0 != -1)
  {
    swift_once();
  }

  return &qword_1EC16B460;
}

uint64_t sub_1C547611C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();

  return v1 & 1;
}

uint64_t sub_1C547619C(char a1)
{
  v3 = *v1;
  v4 = *(v1 + 1);

  v5[0] = v3;
  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F94();
  sub_1C5373718(v5);
}

uint64_t sub_1C5476238()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C54762D0()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();

  return v1 & 1;
}

uint64_t sub_1C5476350(char a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  v5[0] = v3;
  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F94();
  sub_1C5373718(v5);
}

uint64_t sub_1C54763EC()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C5476484()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();

  return v1 & 1;
}

uint64_t sub_1C5476504(char a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);

  v5[0] = v3;
  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F94();
  sub_1C5373718(v5);
}

uint64_t sub_1C54765A0()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C5476638()
{
  v2 = *(v0 + 32);

  return v2 & 1;
}

uint64_t sub_1C5476674(char a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_1C54766F8()
{
  v2 = *(v0 + 56);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_1C5476738(uint64_t a1)
{
  swift_unknownObjectRetain();
  *(v1 + 56) = a1;
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C54767CC(uint64_t a1)
{
  swift_unknownObjectRetain();
  v2 = sub_1C5595194();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1C5476848()
{
  v2 = *(v0 + 48);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_1C5476880(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

void *sub_1C54768EC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  memset(__b, 0, 0x68uLL);
  __b[13] = a3;
  v15[6] = a1;
  v15[5] = a2;
  LOBYTE(__b[0]) = sub_1C54760C4(0, a3) & 1;
  __b[1] = v5;
  LOBYTE(__b[2]) = sub_1C54760C4(0, a3) & 1;
  __b[3] = v6;
  LOBYTE(__b[4]) = sub_1C54760C4(0, a3) & 1;
  __b[5] = v7;
  sub_1C5444FC0(a2, v15);
  memcpy(&__b[8], v15, 0x28uLL);
  swift_unknownObjectRetain();
  __b[6] = sub_1C54766C0(a1, a3, a4);
  __b[7] = v8;
  sub_1C5476A54(__b, a5);
  sub_1C544435C(a2);
  swift_unknownObjectRelease();
  return sub_1C5476B88(__b);
}

uint64_t sub_1C5476A54(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = *(a1 + 8);

  *(a2 + 8) = v4;
  *(a2 + 16) = *(a1 + 16);
  v5 = *(a1 + 24);

  *(a2 + 24) = v5;
  *(a2 + 32) = *(a1 + 32);
  v6 = *(a1 + 40);

  *(a2 + 40) = v6;
  *(a2 + 48) = *(a1 + 48);
  v9 = *(a1 + 56);
  swift_unknownObjectRetain();
  *(a2 + 56) = v9;
  if (*(a1 + 88))
  {
    v2 = *(a1 + 88);
    *(a2 + 88) = v2;
    *(a2 + 96) = *(a1 + 96);
    (**(v2 - 8))(a2 + 64, a1 + 64);
  }

  else
  {
    memcpy((a2 + 64), (a1 + 64), 0x28uLL);
  }

  return a2;
}

void *sub_1C5476B88(void *a1)
{

  swift_unknownObjectRelease();
  if (a1[11])
  {
    __swift_destroy_boxed_opaque_existential_0(a1 + 8);
  }

  return a1;
}

uint64_t sub_1C5476BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  v102 = a1;
  v47 = 0;
  v54 = MEMORY[0x1E697D510];
  v49 = MEMORY[0x1E6981F48];
  v51 = MEMORY[0x1E697CCF0];
  v56 = MEMORY[0x1E697E858];
  v62 = sub_1C5477D8C;
  v70 = sub_1C5478FE8;
  v86 = sub_1C547923C;
  v97 = sub_1C54792A0;
  v115 = sub_1C5479904;
  v124 = MEMORY[0x1E697C278];
  v146 = 0;
  v145 = 0;
  v105 = 0;
  v122 = sub_1C5596A04();
  v119 = *(v122 - 8);
  v120 = v122 - 8;
  v40 = (*(v119 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v122, v3, v4, v5);
  v121 = &v39 - v40;
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDA8, &qword_1C55B0DF8);
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDB0, &qword_1C55B0E00);
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDB8, &qword_1C55B0E08);
  v112 = *(v102 + 24);
  v111 = *(v102 + 16);
  v173 = v111;
  v48 = 255;
  v41 = &unk_1C55C9F3C;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = sub_1C5477800();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v169 = v42;
  v170 = AssociatedTypeWitness;
  v171 = v43;
  v172 = AssociatedConformanceWitness;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C5596264();
  sub_1C5596184();
  v46 = sub_1C5596A94();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDD0, &qword_1C55B0E18);
  swift_getTupleTypeMetadata3();
  v60 = sub_1C5596264();
  WitnessTable = swift_getWitnessTable();
  v77 = sub_1C5595954();
  v74 = *(v77 - 8);
  v75 = v77 - 8;
  v50 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v77, v6, v7, v8);
  v76 = &v39 - v50;
  v66 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDD8, &qword_1C55B0E20);
  v67 = swift_getWitnessTable();
  v68 = sub_1C5477928();
  v165 = v77;
  v166 = v66;
  v167 = v67;
  v168 = v68;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v90 = *(OpaqueTypeMetadata2 - 8);
  v91 = OpaqueTypeMetadata2 - 8;
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v54, v9, v10);
  v92 = &v39 - v11;
  v161 = v77;
  v162 = v66;
  v163 = v67;
  v164 = v12;
  v55 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v157 = OpaqueTypeMetadata2;
  v158 = AssociatedTypeWitness;
  v159 = OpaqueTypeConformance2;
  v160 = AssociatedConformanceWitness;
  v128 = swift_getOpaqueTypeMetadata2();
  v99 = *(v128 - 8);
  v100 = v128 - 8;
  v52 = (*(v99 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v105, v128, v13, v14);
  v101 = &v39 - v52;
  v129 = sub_1C5595214();
  v53 = (*(*(v129 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v129, v15, v16, v17);
  v123 = &v39 - v53;
  v117 = sub_1C5443C8C();
  v153 = OpaqueTypeMetadata2;
  v154 = AssociatedTypeWitness;
  v155 = OpaqueTypeConformance2;
  v156 = AssociatedConformanceWitness;
  v96 = swift_getOpaqueTypeConformance2();
  v151 = v96;
  v152 = MEMORY[0x1E69805D0];
  v116 = swift_getWitnessTable();
  v147 = v122;
  v148 = v129;
  v149 = v117;
  v150 = v116;
  v130 = sub_1C5595254();
  v59 = *(*(v130 - 8) + 64);
  v58 = (v59 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v105, AssociatedTypeWitness, v18, v19);
  v127 = &v39 - v58;
  v82 = swift_checkMetadataState();
  MEMORY[0x1EEE9AC00](v62, v82, v60, WitnessTable);
  v131 = &v39 - v20;
  v146 = &v39 - v20;
  v145 = v2;
  v132 = v111;
  v133 = v112;
  v134 = v2;
  sub_1C5595944();
  v63 = *(v2 + 32);
  v64 = *(v2 + 40);

  v143 = v63;
  v144 = v64;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595FA4();
  v72 = v141[13];
  v73 = v141[14];
  v69 = v142;

  v65 = v141;
  sub_1C5476A54(v108, v141);
  v109 = 136;
  v110 = 7;
  v21 = swift_allocObject();
  v22 = v65;
  v23 = v112;
  v71 = v21;
  v21[2] = v111;
  v21[3] = v23;
  v114 = 104;
  memcpy(v21 + 4, v22, 0x68uLL);
  sub_1C5595D34();
  v24 = v108;

  (*(v74 + 8))(v76, v77);
  v79 = *v24;
  v80 = *(v24 + 1);

  v139 = v79;
  v140 = v80;
  sub_1C5595FA4();
  v88 = v137[13];
  v89 = v137[14];
  v85 = v138;

  v81 = v137;
  sub_1C5476A54(v108, v137);
  v25 = swift_allocObject();
  v26 = v81;
  v27 = v112;
  v28 = v114;
  v87 = v25;
  v25[2] = v111;
  v25[3] = v27;
  memcpy(v25 + 4, v26, v28);
  sub_1C5595D34();

  (*(v90 + 8))(v92, OpaqueTypeMetadata2);
  v94 = v136;
  sub_1C5476A54(v108, v136);
  v29 = swift_allocObject();
  v30 = v94;
  v31 = v112;
  v32 = v114;
  v95 = v29;
  v29[2] = v111;
  v29[3] = v31;
  memcpy(v29 + 4, v30, v32);
  v98 = v95;
  sub_1C5595DC4();
  sub_1C5411348(v97, v98);
  (*(v99 + 8))(v101, v128);
  sub_1C5406B78();
  v107 = [swift_getObjCClassFromMetadata() defaultCenter];
  v103 = sub_1C54766F8();
  v104 = (*(v112 + 64))(v111);
  swift_unknownObjectRelease();
  v106 = sub_1C5527698(v104 & 1, v33);
  sub_1C5596A14();
  MEMORY[0x1E69E5920](v106);
  MEMORY[0x1E69E5920](v107);
  v113 = v135;
  sub_1C5476A54(v108, v135);
  v34 = swift_allocObject();
  v35 = v112;
  v36 = v113;
  v37 = v114;
  v118 = v34;
  v34[2] = v111;
  v34[3] = v35;
  memcpy(v34 + 4, v36, v37);
  sub_1C5595E34();

  (*(v119 + 8))(v121, v122);
  sub_1C53602B4(v123, v128, v129);
  v126 = swift_getWitnessTable();
  sub_1C540EFD8(v127, v130, v131);
  sub_1C5360368(v127, v128, v129, v130);
  sub_1C5360474(v131, v127, v128, v129, v130);
  sub_1C540EFD8(v127, v130, v125);
  sub_1C5360368(v127, v128, v129, v130);
  return sub_1C5360368(v131, v128, v129, v130);
}

unint64_t sub_1C5477800()
{
  v2 = qword_1EC15CDC0;
  if (!qword_1EC15CDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDB8, &qword_1C55B0E08);
    sub_1C547070C();
    sub_1C54778A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CDC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54778A8()
{
  v2 = qword_1EC15CDC8;
  if (!qword_1EC15CDC8)
  {
    sub_1C5595754();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CDC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5477928()
{
  v2 = qword_1EC15CDE0;
  if (!qword_1EC15CDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDD8, &qword_1C55B0E20);
    sub_1C54779C0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CDE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54779C0()
{
  v2 = qword_1EC15CDE8;
  if (!qword_1EC15CDE8)
  {
    type metadata accessor for ReviewCustodianListView(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CDE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5477A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  v26 = a2;
  v25 = a3;
  v20 = 0;
  v17 = MEMORY[0x1E697D510];
  v29 = MEMORY[0x1E6981F48];
  v39 = 0;
  v38 = 0;
  v44 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDA8, &qword_1C55B0DF8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDB0, &qword_1C55B0E00);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDB8, &qword_1C55B0E08);
  v21 = 255;
  v14 = &unk_1C55C9F3C;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_1C5477800();
  v40 = v15;
  v41 = AssociatedTypeWitness;
  v42 = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = 0;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C5596264();
  v33 = sub_1C5596184();
  v34 = sub_1C5596A94();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDD0, &qword_1C55B0E18);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v36 = sub_1C5596264();
  v24 = *(*(v36 - 8) + 64);
  v23 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, AssociatedTypeWitness, v5, v6);
  v32 = &v14 - v23;
  swift_checkMetadataState();
  v28 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27, v26, v25, v7);
  v37 = &v14 - v28;
  v39 = &v14 - v28;
  v38 = a1;
  v12 = type metadata accessor for TrustedContactsView(v8, v9, v10, v11);
  sub_1C5477DA8(v12, v32);
  WitnessTable = swift_getWitnessTable();
  sub_1C540EFD8(v32, v36, v37);
  sub_1C5361400(v32, v33, v34, TupleTypeMetadata3);
  sub_1C53617F4(v37, v32, v33, v34, TupleTypeMetadata3);
  sub_1C540EFD8(v32, v36, v30);
  sub_1C5361400(v32, v33, v34, TupleTypeMetadata3);
  return sub_1C5361400(v37, v33, v34, TupleTypeMetadata3);
}

uint64_t sub_1C5477DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v144 = a1;
  v131 = 0;
  v101 = MEMORY[0x1E697D510];
  v127 = sub_1C547A5E4;
  v79 = MEMORY[0x1E6981F48];
  v80 = MEMORY[0x1E697D6F0];
  v81 = MEMORY[0x1E6982090];
  v173 = 0;
  v172 = 0;
  v166 = 0;
  v165 = 0;
  v164 = 0;
  v163 = 0;
  v154 = 0;
  v150 = 0;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDF0, &qword_1C55B0E28);
  v83 = *(v82 - 8);
  v84 = v82 - 8;
  v85 = (*(v83 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v82, v2, v3, v4);
  v86 = &v59 - v85;
  v87 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v59 - v85, v6, v7, v8);
  v88 = &v59 - v87;
  v89 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v59 - v87, v10, v11, v12);
  v90 = &v59 - v89;
  v173 = &v59 - v89;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDD0, &qword_1C55B0E18);
  v92 = (*(*(v91 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v91, v13, v14, v15);
  v93 = &v59 - v92;
  v94 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v59 - v92, v17, v18, v19);
  v95 = &v59 - v94;
  v96 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v59 - v94, v21, v22, v23);
  v97 = &v59 - v96;
  v172 = &v59 - v96;
  v102 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDB0, &qword_1C55B0E00);
  v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDB8, &qword_1C55B0E08);
  v145 = *(v144 + 24);
  v146 = *(v144 + 16);
  v171 = v146;
  v103 = 255;
  v98 = &unk_1C55C9F3C;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v100 = sub_1C5477800();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v167 = v99;
  v168 = AssociatedTypeWitness;
  v169 = v100;
  v170 = AssociatedConformanceWitness;
  v126 = 0;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v104 = sub_1C5596264();
  v113 = sub_1C5596184();
  v106 = *(v113 - 8);
  v107 = v113 - 8;
  v112 = *(v106 + 64);
  v108 = (v112 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v126, AssociatedTypeWitness, v25, v26);
  v109 = &v59 - v108;
  v110 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28, v29, &v59 - v108, v30);
  v111 = &v59 - v110;
  swift_checkMetadataState();
  v114 = (v112 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v126, v113, v31, v32);
  v115 = &v59 - v114;
  v166 = &v59 - v114;
  v116 = sub_1C5596A94();
  v117 = (*(*(v116 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v116, v33, v34, v35);
  v118 = &v59 - v117;
  v119 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v59 - v117, v37, v38, v39);
  v120 = &v59 - v119;
  v121 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v59 - v119, v41, v42, v43);
  v122 = &v59 - v121;
  v165 = &v59 - v121;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDF8, &qword_1C55B0E30);
  v123 = (*(*(v138 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v138, v44, v45, v46);
  v139 = &v59 - v123;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDA8, &qword_1C55B0DF8);
  v125 = *(*(v141 - 8) + 64);
  v124 = (v125 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v141, v47, v48, v49);
  v143 = &v59 - v124;
  MEMORY[0x1EEE9AC00](&v59 - v124, v50, v51, v52);
  v140 = &v59 - v53;
  v164 = &v59 - v53;
  v163 = v54;
  v128 = v149;
  v149[2] = v146;
  v149[3] = v145;
  v149[4] = v54;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE00, &qword_1C55B0E38);
  v130 = sub_1C547A600();
  sub_1C544B78C();
  sub_1C5596064();
  v132 = sub_1C547A688();
  v133 = &v162;
  swift_beginAccess();
  v134 = *v132;
  v135 = v132[1];
  v136 = v132[2];
  v137 = v132[3];
  swift_endAccess();
  sub_1C547A6E8();
  sub_1C5595D74();
  sub_1C547A770(v139);
  v142 = sub_1C547AA20();
  sub_1C540EFD8(v143, v141, v140);
  sub_1C547A770(v143);
  v147 = sub_1C54766F8();
  v148 = (*(v145 + 48))(v146);
  swift_unknownObjectRelease();
  if (v148)
  {
    sub_1C547B640(v144, v111);
    WitnessTable = swift_getWitnessTable();
    v55 = sub_1C547AAC4();
    v151 = MEMORY[0x1E6981E60];
    v152 = WitnessTable;
    v153 = v55;
    v75 = swift_getWitnessTable();
    sub_1C540EFD8(v111, v113, v115);
    v76 = *(v106 + 8);
    v77 = v106 + 8;
    v76(v111, v113);
    v150 = v111;
    v73 = *(v106 + 16);
    v72 = v106 + 16;
    v73(v109, v115, v113);
    sub_1C540EFD8(v109, v113, v111);
    v76(v109, v113);
    v73(v118, v111, v113);
    (*(v106 + 56))(v118, 0, 1, v113);
    sub_1C540F554(v118, v113, v120);
    sub_1C536066C(v118, v113);
    sub_1C5360708(v120, v122, v113, v116);
    v76(v111, v113);
    v76(v115, v113);
  }

  else
  {
    (*(v106 + 56))(v118, 1, 1, v113);
    v71 = swift_getWitnessTable();
    v56 = sub_1C547AAC4();
    v161[3] = MEMORY[0x1E6981E60];
    v161[4] = v71;
    v161[5] = v56;
    swift_getWitnessTable();
    sub_1C540F554(v118, v113, v120);
    sub_1C536066C(v118, v113);
    sub_1C5360708(v120, v122, v113, v116);
  }

  v69 = sub_1C54766F8();
  v70 = (*(v145 + 40))(v146);
  swift_unknownObjectRelease();
  if (v70)
  {
    sub_1C547BB1C(v144, v88);
    v66 = sub_1C547AB3C();
    sub_1C540EFD8(v88, v82, v90);
    v67 = *(v83 + 8);
    v68 = v83 + 8;
    v67(v88, v82);
    v154 = v88;
    v65 = *(v83 + 16);
    v64 = v83 + 16;
    v65(v86, v90, v82);
    sub_1C540EFD8(v86, v82, v88);
    v67(v86, v82);
    v65(v93, v88, v82);
    (*(v83 + 56))(v93, 0, 1, v82);
    sub_1C540F554(v93, v82, v95);
    sub_1C547ADB4(v93);
    sub_1C547AE68(v95, v97);
    v67(v88, v82);
    v67(v90, v82);
  }

  else
  {
    (*(v83 + 56))(v93, 1, 1, v82);
    sub_1C547AB3C();
    sub_1C540F554(v93, v82, v95);
    sub_1C547ADB4(v93);
    sub_1C547AE68(v95, v97);
  }

  sub_1C547AF9C(v140, v143);
  v63 = v161;
  v161[0] = v143;
  sub_1C5360810(v122, v120, v113, v116);
  v161[1] = v120;
  sub_1C547B474(v97, v95);
  v161[2] = v95;
  v61 = v160;
  v160[0] = v141;
  v160[1] = v116;
  v160[2] = v91;
  v62 = v159;
  v159[0] = v142;
  v60 = swift_getWitnessTable();
  v57 = sub_1C547AAC4();
  v156 = MEMORY[0x1E6981E60];
  v157 = v60;
  v158 = v57;
  v155 = swift_getWitnessTable();
  v159[1] = swift_getWitnessTable();
  v159[2] = sub_1C547B5A8();
  sub_1C540F5A0(v63, 3uLL, v61, v62, v78);
  sub_1C547ADB4(v95);
  sub_1C536066C(v120, v113);
  sub_1C547A770(v143);
  sub_1C547ADB4(v97);
  sub_1C536066C(v122, v113);
  return sub_1C547A770(v140);
}

uint64_t sub_1C5478B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v34 = a1;
  v54 = a2;
  v53 = a3;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v59 = 0;
  v65 = a2;
  v44 = 0;
  v35 = type metadata accessor for ReviewCustodianListView(0);
  v36 = *(v35 - 8);
  v37 = v35 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v35, v5, v6, v7);
  v39 = (v30 - v38);
  v40 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v30 - v38, v9, v10, v11);
  v41 = (v30 - v40);
  v42 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v30 - v40, v13, v14, v15);
  v43 = (v30 - v42);
  v64 = v30 - v42;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDD8, &qword_1C55B0E20);
  v46 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44, v54, v53, v16);
  v47 = (v30 - v46);
  v48 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18, v19, v20, v30 - v46);
  v49 = (v30 - v48);
  v50 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22, v23, v24, v30 - v48);
  v51 = (v30 - v50);
  v63 = v30 - v50;
  v62 = a1;
  v52 = type metadata accessor for TrustedContactsView(v25, v26, v27, v28);
  v55 = sub_1C54766F8();
  v56 = (*(v53 + 64))(v54);
  swift_unknownObjectRelease();
  v58 = &v61;
  v61 = v56 & 1;
  v57 = &v60;
  v60 = 1;
  sub_1C547FC10();
  if (sub_1C5596E24())
  {
    v30[1] = sub_1C54766F8();
    v31 = (*(v53 + 248))(v54);
    swift_unknownObjectRelease();
    sub_1C546DF88(v31, v41);
    v32 = sub_1C54779C0();
    sub_1C540EFD8(v41, v35, v43);
    sub_1C542B9AC(v41);
    v59 = v41;
    sub_1C542B834(v43, v39);
    sub_1C540EFD8(v39, v35, v41);
    sub_1C542B9AC(v39);
    sub_1C542B834(v41, v47);
    (*(v36 + 56))(v47, 0, 1, v35);
    sub_1C540F554(v47, v35, v49);
    sub_1C547FC88(v47);
    sub_1C547FDA8(v49, v51);
    sub_1C542B9AC(v41);
    sub_1C542B9AC(v43);
  }

  else
  {
    (*(v36 + 56))(v47, 1, 1, v35);
    sub_1C54779C0();
    sub_1C540F554(v47, v35, v49);
    sub_1C547FC88(v47);
    sub_1C547FDA8(v49, v51);
  }

  sub_1C547FF88(v51, v49);
  sub_1C5477928();
  sub_1C540EFD8(v49, v45, v33);
  sub_1C547FC88(v49);
  return sub_1C547FC88(v51);
}

uint64_t sub_1C5479004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v20 = a2;
  v19 = a3;
  v32 = 0;
  v31 = 0;
  v33 = a2;
  v15[1] = 0;
  v21 = &unk_1C55C9F3C;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  v23 = AssociatedTypeWitness - 8;
  v16 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v20, v19, v5);
  v26 = v15 - v16;
  v17 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7, v8, v9, v15 - v16);
  v27 = v15 - v17;
  v32 = v15 - v17;
  v31 = a1;
  type metadata accessor for TrustedContactsView(v10, v11, v12, v13);
  v18 = sub_1C54766F8();
  (*(v19 + 216))(v20);
  swift_unknownObjectRelease();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1C540EFD8(v26, AssociatedTypeWitness, v27);
  v30 = *(v22 + 8);
  v29 = v22 + 8;
  v30(v26, AssociatedTypeWitness);
  (*(v22 + 16))(v26, v27, AssociatedTypeWitness);
  sub_1C540EFD8(v26, AssociatedTypeWitness, v24);
  v30(v26, AssociatedTypeWitness);
  return (v30)(v27, AssociatedTypeWitness);
}

uint64_t sub_1C54792BC(uint64_t a1)
{
  v49 = 0;
  v48 = *(a1 + 16);
  v33 = v48;
  sub_1C546E234();
  v30 = sub_1C5404B48();
  sub_1C55965F4("com.apple.AAFollowUpIdentifier.custodianReview", 46, 1);
  sub_1C5594CF4();
  v29 = sub_1C5596554();
  MEMORY[0x1E69E5928](v29, v1);

  MEMORY[0x1E69E5920](v29);
  sub_1C5476A54(v26, v47);
  v27 = swift_allocObject();
  v27[2] = v33;
  v32 = *(a1 + 24);
  v27[3] = v32;
  memcpy(v27 + 4, v47, 0x68uLL);
  v45 = sub_1C547DB58;
  v46 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = 0;
  v43 = sub_1C547DB74;
  v44 = &block_descriptor_8;
  v28 = _Block_copy(&aBlock);

  [v30 pendingFollowUpItemUserInfosWithIdentifier:v29 completion:v28];
  _Block_release(v28);
  MEMORY[0x1E69E5920](v29);
  MEMORY[0x1E69E5920](v30);
  sub_1C54766F8();
  v34 = (*(v32 + 96))(v33);
  swift_unknownObjectRelease();
  if (v34)
  {
    sub_1C54766F8();
    v24 = (*(v32 + 48))(v33);
    swift_unknownObjectRelease();
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v17 = *v26;
  v18 = *(v26 + 8);

  v38[0] = v17;
  v39 = v18;
  v37 = v25 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F94();
  sub_1C5373718(v38);

  v19 = *(v26 + 16);
  v20 = *(v26 + 24);

  v35[0] = v19;
  v36 = v20;
  sub_1C5595F94();
  sub_1C5373718(v35);

  v2 = sub_1C5476064();
  v21 = *v2;
  v22 = v2[1];
  sub_1C5594CF4();
  sub_1C547DCBC();
  sub_1C5594CF4();
  sub_1C54766F8();
  v23 = sub_1C54720B4(v33, v32);
  swift_unknownObjectRelease();
  if (v23)
  {
    v16 = [v23 aa_altDSID];
    if (v16)
    {
      v12 = sub_1C5596574();
      v13 = v3;
      MEMORY[0x1E69E5920](v16);
      v14 = v12;
      v15 = v13;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    MEMORY[0x1E69E5920](v23);
    v10 = v14;
    v11 = v15;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  sub_1C54766F8();
  v7 = (*(v32 + 72))(v33);
  v8 = v4;
  swift_unknownObjectRelease();
  v9 = sub_1C547DD20(v21, v22, v10, v11, v7, v8);
  if (v9)
  {
    v6 = [objc_opt_self() reporter];
    swift_getObjectType();
    [v6 sendEvent_];
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](v9);
  }
}

uint64_t sub_1C5479878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TrustedContactsView(0, a3, a4, a4);
  sub_1C54766F8();
  (*(a4 + 232))(a3);
  return swift_unknownObjectRelease();
}

char *sub_1C5479920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v149 = a4;
  v131 = a1;
  v136 = a2;
  v135 = a3;
  v221 = 0;
  v220 = 0;
  v219 = 0;
  v218 = 0;
  v223 = a2;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE48, &qword_1C55B0E78);
  v64 = (*(*(v145 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v145, v5, v6, v7);
  v151 = &v63 - v64;
  v65 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v63 - v64, v9, v10, v11);
  v154 = &v63 - v65;
  v221 = &v63 - v65;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE40, &qword_1C55B0E70);
  v66 = (*(*(v144 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v144, v12, v13, v14);
  v152 = &v63 - v66;
  v67 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v63 - v66, v16, v17, v18);
  v155 = &v63 - v67;
  v220 = &v63 - v67;
  v128 = 0;
  v87 = sub_1C55951E4();
  v84 = *(v87 - 8);
  v85 = v87 - 8;
  v68 = (*(v84 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v128, v19, v20, v21);
  v86 = &v63 - v68;
  v81 = sub_1C5595F34();
  v78 = *(v81 - 8);
  v79 = v81 - 8;
  v69 = (*(v78 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v81, v22, v23, v24);
  v80 = &v63 - v69;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE20, &unk_1C55B1820);
  v70 = (*(*(v83 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v83, v25, v26, v27);
  v88 = (&v63 - v70);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE28, &qword_1C55B0E58);
  v71 = (*(*(v89 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v89, v28, v29, v30);
  v91 = &v63 - v71;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE90, qword_1C55B0E90);
  v72 = (*(*(v93 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v93, v31, v32, v33);
  v96 = &v63 - v72;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE30, &qword_1C55B0E60);
  v73 = (*(*(v143 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v128, v136, v135, v34);
  v153 = &v63 - v73;
  v74 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36, v37, v38, &v63 - v73);
  v156 = &v63 - v74;
  v219 = &v63 - v74;
  v218 = a1;
  v134 = type metadata accessor for TrustedContactsView(v39, v40, v41, v42);
  v75 = sub_1C54766F8();
  v77 = v135[13](v136);
  v76 = v43;
  swift_unknownObjectRelease();
  sub_1C5439370();
  sub_1C5576C44();
  v44 = sub_1C5595F54();
  v82 = &v217;
  v217 = v44;
  (*(v78 + 104))(v80, *MEMORY[0x1E69816C0], v81);
  sub_1C5595AA4();
  (*(v78 + 8))(v80, v81);
  sub_1C5410D10(v82);
  sub_1C5454F40();
  sub_1C547EEF0();
  sub_1C5595BA4();
  (*(v84 + 8))(v86, v87);
  sub_1C547EF94(v88);
  v90 = sub_1C55957D4();
  sub_1C547F04C();
  v133 = 1;
  sub_1C5595D84();
  sub_1C547F0F4(v91);
  v92 = sub_1C54766F8();
  v94 = v135[14](v136);
  v95 = v45;
  swift_unknownObjectRelease();
  sub_1C547F210();
  sub_1C5595C84();

  sub_1C547F0F4(v96);
  v146 = sub_1C547F2B4();
  sub_1C540EFD8(v153, v143, v156);
  sub_1C547F35C(v153);
  v97 = sub_1C54766F8();
  v98 = v135[15](v136);
  v99 = v46;
  swift_unknownObjectRelease();
  v100 = v211;
  v211[0] = v98;
  v211[1] = v99;
  sub_1C54141E8();
  v207 = sub_1C5595A04();
  v208 = v47;
  v209 = v48;
  v210 = v49;
  v102 = v207;
  v103 = v47;
  v104 = v48;
  v105 = v49;
  v101 = sub_1C55958B4();
  v203 = v102;
  v204 = v103;
  v205 = v104 & 1;
  v206 = v105;
  v199 = sub_1C55959C4();
  v200 = v50;
  v201 = v51;
  v202 = v52;
  v107 = v199;
  v108 = v50;
  v106 = v51;
  v109 = v52;

  sub_1C5412EA0(v102, v103, v104 & 1);

  sub_1C5595854();
  v195 = v107;
  v196 = v108;
  v197 = v106 & 1 & v133;
  v198 = v109;
  v191 = sub_1C5595974();
  v192 = v53;
  v193 = v54;
  v194 = v55;
  v110 = v191;
  v111 = v53;
  v112 = v54;
  v113 = v55;
  sub_1C5412EA0(v107, v108, v106 & 1);

  v114 = v188;
  v188[0] = v110;
  v188[1] = v111;
  v189 = v112 & 1 & v133;
  v190 = v113;
  v129 = MEMORY[0x1E6981148];
  v130 = MEMORY[0x1E6981138];
  sub_1C5595C54();
  sub_1C5414260(v114);
  v116 = v183;
  v183[0] = v211[2];
  v183[1] = v211[3];
  v184 = v212 & 1 & v133;
  v185 = v213;
  v186 = v214;
  v187 = v215;
  v115 = sub_1C55957D4();
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CC18, &unk_1C55B0B10);
  v140 = sub_1C546FF30();
  v117 = &v216;
  sub_1C5595D84();
  sub_1C546FFD4(v116);
  v118 = __dst;
  v119 = 89;
  memcpy(__dst, v117, 0x59uLL);
  v124 = v182;
  memcpy(v182, __dst, 0x59uLL);
  v120 = sub_1C54766F8();
  v122 = v135[16](v136);
  v123 = v56;
  swift_unknownObjectRelease();
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CC28, &qword_1C55B0B20);
  sub_1C5470028();
  sub_1C5595C84();

  sub_1C546FFD4(v124);
  v147 = sub_1C547F4D8();
  sub_1C540EFD8(v152, v144, v155);
  sub_1C547F580(v152);
  v125 = sub_1C54766F8();
  v126 = v135[17](v136);
  v127 = v57;
  swift_unknownObjectRelease();
  sub_1C55953C4();
  v172 = 0;
  v173 = 0;
  v174 = 0;
  v175 = v133 & 1;
  v168 = sub_1C55959E4();
  v169 = v58;
  v170 = v59;
  v171 = v60;
  v132 = v165;
  v165[0] = v168;
  v165[1] = v58;
  v166 = v59 & 1 & v133;
  v167 = v60;
  sub_1C5595C54();
  sub_1C5414260(v132);
  v142 = v160;
  v160[0] = v176;
  v160[1] = v177;
  v161 = v178 & 1 & v133;
  v162 = v179;
  v163 = v180;
  v164 = v181;
  v137 = sub_1C54766F8();
  v138 = v135[18](v136);
  v141 = v61;
  swift_unknownObjectRelease();
  sub_1C5595C84();

  sub_1C546FFD4(v142);
  v148 = sub_1C547F630();
  sub_1C540EFD8(v151, v145, v154);
  sub_1C547F6D8(v151);
  sub_1C547F788(v156, v153);
  v150 = v159;
  v159[0] = v153;
  sub_1C547F9B4(v155, v152);
  v159[1] = v152;
  sub_1C547FAEC(v154, v151);
  v159[2] = v151;
  v158[0] = v143;
  v158[1] = v144;
  v158[2] = v145;
  v157[0] = v146;
  v157[1] = v147;
  v157[2] = v148;
  sub_1C540F5A0(v150, 3uLL, v158, v157, v149);
  sub_1C547F6D8(v151);
  sub_1C547F580(v152);
  sub_1C547F35C(v153);
  sub_1C547F6D8(v154);
  sub_1C547F580(v155);
  return sub_1C547F35C(v156);
}

unint64_t sub_1C547A600()
{
  v2 = qword_1EC15CE08;
  if (!qword_1EC15CE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CE00, &qword_1C55B0E38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CE08);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1C547A688()
{
  if (qword_1EC1628E8 != -1)
  {
    swift_once();
  }

  return &qword_1EC1628F0;
}

unint64_t sub_1C547A6E8()
{
  v2 = qword_1EC15CE10;
  if (!qword_1EC15CE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDF8, &qword_1C55B0E30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CE10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C547A770(uint64_t a1)
{
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE18, &unk_1C55B0E40) + 44);

  v6 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE20, &unk_1C55B1820) + 36);

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360, &qword_1C55B0E50) + 28);
  v1 = sub_1C5595F34();
  (*(*(v1 - 8) + 8))(v6 + v7);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE28, &qword_1C55B0E58) + 36);
  v2 = sub_1C55951E4();
  (*(*(v2 - 8) + 8))(v12 + v8);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE30, &qword_1C55B0E60) + 36);
  v14 = sub_1C5595754();
  v15 = *(*(v14 - 8) + 8);
  v15(v12 + v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE38, &qword_1C55B0E68);
  v10 = v12 + *(v11 + 48);
  sub_1C5412EA0(*v10, *(v10 + 8), *(v10 + 16) & 1);

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE40, &qword_1C55B0E70);
  (v15)(v10 + *(v3 + 36), v14);
  v13 = v12 + *(v11 + 64);
  sub_1C5412EA0(*v13, *(v13 + 8), *(v13 + 16) & 1);

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE48, &qword_1C55B0E78);
  (v15)(v13 + *(v4 + 36), v14);
  return a1;
}

unint64_t sub_1C547AA20()
{
  v2 = qword_1EC15CE50;
  if (!qword_1EC15CE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDA8, &qword_1C55B0DF8);
    sub_1C547A6E8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CE50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C547AAC4()
{
  v2 = qword_1EC15CE58;
  if (!qword_1EC15CE58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CE58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C547AB3C()
{
  v2 = qword_1EC15CE60;
  if (!qword_1EC15CE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDF0, &qword_1C55B0E28);
    sub_1C547ABF0();
    sub_1C547AD2C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CE60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C547ABF0()
{
  v2 = qword_1EC15CE68;
  if (!qword_1EC15CE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CE70, &unk_1C55B0E80);
    sub_1C547AC88();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CE68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C547AC88()
{
  v2 = qword_1EC15CE78;
  if (!qword_1EC15CE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CE80, &qword_1C55B3E80);
    sub_1C54778A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CE78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C547AD2C()
{
  v2 = qword_1EC15CE88;
  if (!qword_1EC15CE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDB0, &qword_1C55B0E00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CE88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C547ADB4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDF0, &qword_1C55B0E28);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_1C547AE68(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDF0, &qword_1C55B0E28);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDD0, &qword_1C55B0E18);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1C547AF9C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE18, &unk_1C55B0E40) + 44);
  v10 = *(a1 + v9);

  *(a2 + v9) = v10;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE20, &unk_1C55B1820) + 36);
  v14 = (a1 + v9 + v11);
  v12 = *v14;

  *(a2 + v9 + v11) = v12;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360, &qword_1C55B0E50) + 28);
  v2 = sub_1C5595F34();
  (*(*(v2 - 8) + 16))(a2 + v9 + v11 + v13, &v14[v13]);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE28, &qword_1C55B0E58) + 36);
  v3 = sub_1C55951E4();
  (*(*(v3 - 8) + 16))(a2 + v9 + v15, a1 + v9 + v15);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE90, qword_1C55B0E90);
  memcpy((a2 + v9 + *(v4 + 36)), (a1 + v9 + *(v4 + 36)), 0x29uLL);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE30, &qword_1C55B0E60) + 36);
  v34 = sub_1C5595754();
  v35 = *(*(v34 - 8) + 16);
  v35(a2 + v9 + v16, a1 + v9 + v16);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE38, &qword_1C55B0E68);
  v17 = *(v25 + 48);
  v24 = a1 + v9 + v17;
  v18 = *v24;
  v19 = *(v24 + 8);
  v20 = *(v24 + 16);
  sub_1C54130AC(*v24, v19, v20 & 1);
  v23 = a2 + v9 + v17;
  *v23 = v18;
  *(v23 + 8) = v19;
  *(v23 + 16) = v20 & 1;
  v21 = *(v24 + 24);
  sub_1C5594CF4();
  *(v23 + 24) = v21;
  v22 = *(v24 + 32);

  *(v23 + 32) = v22;
  *(v23 + 40) = *(v24 + 40);
  memcpy((v23 + 48), (v24 + 48), 0x29uLL);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE40, &qword_1C55B0E70);
  (v35)(v23 + *(v5 + 36), v24 + *(v5 + 36), v34);
  v26 = *(v25 + 64);
  v33 = a1 + v9 + v26;
  v27 = *v33;
  v28 = *(v33 + 8);
  v29 = *(v33 + 16);
  sub_1C54130AC(*v33, v28, v29 & 1);
  v32 = a2 + v9 + v26;
  *v32 = v27;
  *(v32 + 8) = v28;
  *(v32 + 16) = v29 & 1;
  v30 = *(v33 + 24);
  sub_1C5594CF4();
  *(v32 + 24) = v30;
  v31 = *(v33 + 32);

  *(v32 + 32) = v31;
  *(v32 + 40) = *(v33 + 40);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE48, &qword_1C55B0E78);
  (v35)(v32 + *(v6 + 36), v33 + *(v6 + 36), v34);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDA8, &qword_1C55B0DF8);
  memcpy((a2 + *(v7 + 36)), (a1 + *(v7 + 36)), 0x29uLL);
  return a2;
}

void *sub_1C547B474(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDF0, &qword_1C55B0E28);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDD0, &qword_1C55B0E18);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_1C547B5A8()
{
  v2 = qword_1EC15CE98;
  if (!qword_1EC15CE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDD0, &qword_1C55B0E18);
    sub_1C547AB3C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CE98);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C547B640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v9 = a1;
  v14 = 0;
  v13 = MEMORY[0x1E697D510];
  v23 = MEMORY[0x1E6981F48];
  v31 = sub_1C547DEE4;
  v27 = sub_1C547DF00;
  v34 = MEMORY[0x1E697D6F0];
  v56 = 0;
  v55 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDB0, &qword_1C55B0E00);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDB8, &qword_1C55B0E08);
  v21 = *(v9 + 24);
  v25 = *(v9 + 16);
  v61 = v25;
  v16 = 255;
  v10 = &unk_1C55C9F3C;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1C5477800();
  v57 = v11;
  v58 = AssociatedTypeWitness;
  v59 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = 0;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v29 = sub_1C5596264();
  v30 = &type metadata for InformationLabelView;
  v41 = sub_1C5596184();
  v35 = *(v41 - 8);
  v36 = v41 - 8;
  v20 = *(v35 + 64);
  v19 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, AssociatedTypeWitness, v3, v4);
  v39 = &v8 - v19;
  swift_checkMetadataState();
  v24 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23, v29, v22, v5);
  v40 = &v8 - v24;
  v56 = &v8 - v24;
  v55 = v2;
  v26 = &v48;
  v49 = v25;
  v50 = v6;
  v51 = v2;
  v28 = &v44;
  v45 = v25;
  v46 = v6;
  v47 = v2;
  WitnessTable = swift_getWitnessTable();
  v33 = sub_1C547AAC4();
  sub_1C543B364(v31, v26, v27, v28, v29, v30, WitnessTable, v33, v39);
  v52 = MEMORY[0x1E6981E60];
  v53 = WitnessTable;
  v54 = v33;
  v38 = swift_getWitnessTable();
  sub_1C540EFD8(v39, v41, v40);
  v43 = *(v35 + 8);
  v42 = v35 + 8;
  v43(v39, v41);
  (*(v35 + 16))(v39, v40, v41);
  sub_1C540EFD8(v39, v41, v37);
  v43(v39, v41);
  return (v43)(v40, v41);
}

uint64_t sub_1C547BB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v14 = a1;
  v23 = sub_1C547DF1C;
  v18 = sub_1C547DF38;
  v43 = 0;
  v42 = 0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDF0, &qword_1C55B0E28);
  v24 = *(v30 - 8);
  v25 = v30 - 8;
  v15 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14, v3, v4, v5);
  v28 = &v13 - v15;
  v16 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7, &v13 - v15, v8, v9);
  v29 = &v13 - v16;
  v43 = &v13 - v16;
  v42 = v2;
  v41 = *(v10 + 16);
  v17 = &v37;
  v38 = v41;
  v39 = *(v10 + 24);
  v40 = v2;
  v19 = &v33;
  v34 = v41;
  v35 = v39;
  v36 = v2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE70, &unk_1C55B0E80);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDB0, &qword_1C55B0E00);
  v22 = sub_1C547ABF0();
  v11 = sub_1C547AD2C();
  sub_1C547D540(v23, v17, v18, v19, v20, v21, v22, v11, v28);
  v27 = sub_1C547AB3C();
  sub_1C540EFD8(v28, v30, v29);
  v32 = *(v24 + 8);
  v31 = v24 + 8;
  v32(v28, v30);
  (*(v24 + 16))(v28, v29, v30);
  sub_1C540EFD8(v28, v30, v26);
  v32(v28, v30);
  return (v32)(v29, v30);
}

uint64_t sub_1C547BDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v45 = a4;
  v31 = a1;
  v24 = a2;
  v23 = a3;
  v39 = MEMORY[0x1E697D510];
  v66 = 0;
  v65 = 0;
  v61 = 0;
  v53 = v60;
  v60[0] = 0;
  v60[1] = 0;
  v71 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDB8, &qword_1C55B0E08);
  v14[1] = &unk_1C55C9F3C;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = sub_1C5477800();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v67 = v35;
  v68 = AssociatedTypeWitness;
  v69 = v37;
  v70 = AssociatedConformanceWitness;
  v19 = 0;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v40 = *(OpaqueTypeMetadata2 - 8);
  v41 = OpaqueTypeMetadata2 - 8;
  v17 = *(v40 + 64);
  v16 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, AssociatedTypeWitness, v5, v6);
  v47 = v14 - v16;
  v36 = swift_checkMetadataState();
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19, v36, v7, v8);
  v52 = v14 - v18;
  v66 = v14 - v18;
  v65 = a1;
  v32 = type metadata accessor for TrustedContactListViewModel();
  v34 = type metadata accessor for TrustedContactsView(v19, v24, v23, v32);
  v20 = sub_1C54766F8();
  v26 = v23[4](v24);
  swift_unknownObjectRelease();
  v21 = sub_1C54766F8();
  v27 = v23[10](v24);
  swift_unknownObjectRelease();
  v22 = sub_1C54766F8();
  v28 = v23[22](v24);
  swift_unknownObjectRelease();
  v25 = sub_1C54766F8();
  v29 = v23[9](v24);
  v30 = v9;
  swift_unknownObjectRelease();
  memset(v64, 0, sizeof(v64));
  memset(v62, 0, sizeof(v62));
  v63 = 0;
  v54 = sub_1C54ED2A4(v26, v27, v28, v29, v30, v64, v62);
  v61 = v54;

  v10 = sub_1C547EE30();
  v11 = sub_1C54F0494(v54, v32, v10);
  v33 = v59;
  v59[0] = v11;
  v59[1] = v12;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDB0, &qword_1C55B0E00);
  v43 = sub_1C547AD2C();
  sub_1C540EFD8(v33, v42, v53);
  sub_1C5373718(v33);
  sub_1C547C2E8(v34, v47);
  v58[2] = v35;
  v58[3] = v36;
  v58[4] = v37;
  v58[5] = AssociatedConformanceWitness;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v47, OpaqueTypeMetadata2, v52);
  v51 = *(v40 + 8);
  v50 = v40 + 8;
  v51(v47, OpaqueTypeMetadata2);
  v48 = v57;
  sub_1C547EEB0(v53, v57);
  v46 = v58;
  v58[0] = v48;
  (*(v40 + 16))(v47, v52, OpaqueTypeMetadata2);
  v58[1] = v47;
  v56[0] = v42;
  v56[1] = OpaqueTypeMetadata2;
  v55[0] = v43;
  v55[1] = OpaqueTypeConformance2;
  sub_1C540F5A0(v46, 2uLL, v56, v55, v45);
  v51(v47, OpaqueTypeMetadata2);
  sub_1C5373718(v48);
  v51(v52, OpaqueTypeMetadata2);
  sub_1C5373718(v53);
}

uint64_t sub_1C547C2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v41 = a1;
  v69 = MEMORY[0x1E697D510];
  v38 = sub_1C547DF54;
  v60 = sub_1C547923C;
  v90 = 0;
  v89 = 0;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8, &qword_1C55B0E10);
  v45 = *(v48 - 8);
  v46 = v48 - 8;
  v27 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v48, v3, v4, v5);
  v47 = &v27 - v27;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDB8, &qword_1C55B0E08);
  v28 = (*(*(v65 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41, v6, v7, v8);
  v64 = &v27 - v28;
  v55 = *(v9 + 24);
  v54 = *(v9 + 16);
  v95 = v54;
  v29 = &unk_1C55C9F3C;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67 = sub_1C5477800();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v91 = v65;
  v92 = AssociatedTypeWitness;
  v93 = v67;
  v94 = AssociatedConformanceWitness;
  v59 = 0;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v70 = *(OpaqueTypeMetadata2 - 8);
  v71 = OpaqueTypeMetadata2 - 8;
  v32 = *(v70 + 64);
  v31 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v59, AssociatedTypeWitness, v10, v11);
  v74 = &v27 - v31;
  v66 = swift_checkMetadataState();
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41, v66, v12, v13);
  v75 = &v27 - v33;
  v90 = &v27 - v33;
  v89 = v2;
  v34 = sub_1C54766F8();
  v14 = (*(v55 + 184))(v54);
  v15 = v51;
  v35 = v14;
  v36 = v16;
  swift_unknownObjectRelease();
  v40 = v88;
  v88[0] = v35;
  v88[1] = v36;
  v37 = v87;
  sub_1C5476A54(v15, v87);
  v52 = 136;
  v53 = 7;
  v17 = swift_allocObject();
  v18 = v37;
  v19 = v55;
  v39 = v17;
  v17[2] = v54;
  v17[3] = v19;
  v57 = 104;
  memcpy(v17 + 4, v18, 0x68uLL);
  sub_1C54141E8();
  sub_1C5596004();
  v42 = sub_1C54766F8();
  v43 = (*(v55 + 192))(v54);
  v44 = v20;
  swift_unknownObjectRelease();
  sub_1C547070C();
  sub_1C5595C84();
  v21 = v51;

  (*(v45 + 8))(v47, v48);
  v49 = *(v21 + 16);
  v50 = *(v21 + 24);

  v85 = v49;
  v86 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595FA4();
  v62 = v83[13];
  v63 = v83[14];
  v58 = v84;

  v56 = v83;
  sub_1C5476A54(v51, v83);
  v22 = swift_allocObject();
  v23 = v55;
  v24 = v56;
  v25 = v57;
  v61 = v22;
  v22[2] = v54;
  v22[3] = v23;
  memcpy(v22 + 4, v24, v25);
  sub_1C5595D34();

  sub_1C547DF70(v64);
  v79 = v65;
  v80 = v66;
  v81 = v67;
  v82 = AssociatedConformanceWitness;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v74, OpaqueTypeMetadata2, v75);
  v78 = *(v70 + 8);
  v77 = v70 + 8;
  v78(v74, OpaqueTypeMetadata2);
  (*(v70 + 16))(v74, v75, OpaqueTypeMetadata2);
  sub_1C540EFD8(v74, OpaqueTypeMetadata2, v72);
  v78(v74, OpaqueTypeMetadata2);
  return (v78)(v75, OpaqueTypeMetadata2);
}

void *sub_1C547C938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>)
{
  memset(__b, 0, 0x32uLL);
  v18 = a2;
  __b[7] = a1;
  v6 = type metadata accessor for TrustedContactsView(0, a2, a4, v5);
  sub_1C547CA64(v6, v14);
  memcpy(__dst, v14, sizeof(__dst));
  memcpy(v13, __dst, 0x32uLL);
  sub_1C547AAC4();
  sub_1C540EFD8(v13, &type metadata for InformationLabelView, __b);
  sub_1C547E034(v13);
  memcpy(v17, __b, 0x32uLL);
  sub_1C547E08C(v17, v12);
  memcpy(v11, v17, 0x32uLL);
  sub_1C540EFD8(v11, &type metadata for InformationLabelView, a3);
  sub_1C547E034(v11);
  return sub_1C547E034(__b);
}

void *sub_1C547CA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, 0x32uLL);
  v24 = v2;
  v23 = *(a1 + 16);
  v11 = v23;
  sub_1C54766F8();
  v10 = *(a1 + 24);
  v14 = (*(v10 + 200))(v11);
  v15 = v3;
  swift_unknownObjectRelease();
  v4 = sub_1C55965F4("LEARN_MORE_ELLIPSIS", 19, 1);
  text._countAndFlagsBits = sub_1C54637B4(v4, v5);
  text._object = v6;

  sub_1C54766F8();
  url.value._countAndFlagsBits = (*(v10 + 208))(v11);
  url.value._object = v7;
  swift_unknownObjectRelease();
  InformationLabelView.Link.init(text:url:)(text, url);
  v20[0] = v20[4];
  v20[1] = v20[5];
  v20[2] = v20[6];
  v20[3] = v20[7];
  InformationLabelView.init(text:link:isLinkOnNewLine:textAlignment:)(v14, v15, v20, 1, 0, v21);
  memcpy(__dst, v21, sizeof(__dst));
  memcpy(v19, __dst, 0x32uLL);
  sub_1C547AAC4();
  sub_1C540EFD8(v19, &type metadata for InformationLabelView, __b);
  sub_1C547E034(v19);
  memcpy(v26, __b, 0x32uLL);
  sub_1C547E08C(v26, v18);
  memcpy(v17, v26, 0x32uLL);
  sub_1C540EFD8(v17, &type metadata for InformationLabelView, a2);
  sub_1C547E034(v17);
  return sub_1C547E034(__b);
}

uint64_t sub_1C547CC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v28[6] = a2;
  v28[5] = a1;
  v15 = type metadata accessor for TrustedContactListViewModel();
  type metadata accessor for TrustedContactsView(0, a2, a3, v15);
  sub_1C54766F8();
  v10 = a3[4](a2);
  swift_unknownObjectRelease();
  sub_1C54766F8();
  v11 = a3[11](a2);
  swift_unknownObjectRelease();
  sub_1C54766F8();
  v12 = a3[21](a2);
  swift_unknownObjectRelease();
  sub_1C54766F8();
  v13 = a3[9](a2);
  v14 = v4;
  swift_unknownObjectRelease();
  memset(v28, 0, 40);
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  v20 = sub_1C54ED2A4(v10, v11, v12, v13, v14, v28, v26);
  v25 = v20;

  v5 = sub_1C547EE30();
  v22[0] = sub_1C54F0494(v20, v15, v5);
  v22[1] = v6;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDB0, &qword_1C55B0E00);
  sub_1C547AD2C();
  sub_1C540EFD8(v22, v19, &v23);
  sub_1C5373718(v22);
  v16 = v23;
  v17 = v24;

  v21[0] = v16;
  v21[1] = v17;
  sub_1C540EFD8(v21, v19, a4);
  sub_1C5373718(v21);
  sub_1C5373718(&v23);
}

uint64_t sub_1C547CF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v43 = a4;
  v44 = a1;
  v63 = a2;
  v62 = a3;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v68 = 0;
  v80 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE80, &qword_1C55B3E80);
  v46 = *(v45 - 8);
  v47 = v45 - 8;
  v48 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v45, v5, v6, v7);
  v49 = v34 - v48;
  v50 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34 - v48, v9, v10, v11);
  v51 = v34 - v50;
  v52 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34 - v50, v13, v14, v15);
  v53 = v34 - v52;
  v79 = v34 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE70, &unk_1C55B0E80);
  v55 = (*(*(v54 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v54, v63, v62, v16);
  v56 = v34 - v55;
  v57 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34 - v55, v18, v19, v20);
  v58 = (v34 - v57);
  v59 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34 - v57, v22, v23, v24);
  v60 = (v34 - v59);
  v78 = v34 - v59;
  v77 = a1;
  v67 = 0;
  v61 = type metadata accessor for TrustedContactsView(0, v25, v26, v27);
  v64 = sub_1C54766F8();
  v65 = v62[11](v63);
  swift_unknownObjectRelease();
  sub_1C5403328();
  v66 = sub_1C5596744();

  if (v67 < v66)
  {
    v34[1] = sub_1C54766F8();
    v35 = v62[19](v63);
    v36 = v28;
    swift_unknownObjectRelease();
    v37 = v76;
    v76[0] = v35;
    v76[1] = v36;
    sub_1C54141E8();
    v72 = sub_1C5595A04();
    v73 = v29;
    v74 = v30;
    v75 = v31;
    v41 = v69;
    v69[0] = v72;
    v69[1] = v29;
    v70 = v30 & 1;
    v71 = v31;
    v38 = sub_1C54766F8();
    v39 = v62[20](v63);
    v40 = v32;
    swift_unknownObjectRelease();
    sub_1C5595C84();

    sub_1C5414260(v41);
    v42 = sub_1C547AC88();
    sub_1C540EFD8(v51, v45, v53);
    sub_1C547EC90(v51);
    v68 = v51;
    sub_1C547ED34(v53, v49);
    sub_1C540EFD8(v49, v45, v51);
    sub_1C547EC90(v49);
    sub_1C547ED34(v51, v56);
    (*(v46 + 56))(v56, 0, 1, v45);
    sub_1C540F554(v56, v45, v58);
    sub_1C547E868(v56);
    sub_1C547E954(v58, v60);
    sub_1C547EC90(v51);
    sub_1C547EC90(v53);
  }

  else
  {
    (*(v46 + 56))(v56, 1, 1, v45);
    sub_1C547AC88();
    sub_1C540F554(v56, v45, v58);
    sub_1C547E868(v56);
    sub_1C547E954(v58, v60);
  }

  sub_1C547EAC4(v60, v58);
  sub_1C547ABF0();
  sub_1C540EFD8(v58, v54, v43);
  sub_1C547E868(v58);
  return sub_1C547E868(v60);
}

uint64_t sub_1C547D540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = a9;
  v16 = a1;
  v17 = a2;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v23 = a5;
  v22 = a6;
  v13 = (*(*(a5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v15 = &v12 - v13;
  v10(v9);
  return sub_1C5596154();
}

uint64_t sub_1C547D608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a1;
  v18 = a2;
  v19 = a3;
  v17 = MEMORY[0x1E69E85E0];
  v23 = &unk_1C55B11A0;
  v26 = 0;
  v27 = a2;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860, &qword_1C55AE2A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15, v3, v4, v5);
  v22 = &v14 - v14;
  v26 = v6;
  v21 = 0;
  v7 = sub_1C5596814();
  (*(*(v7 - 8) + 56))(v22, 1);
  v20 = v25;
  sub_1C5476A54(v15, v25);
  sub_1C55967E4();
  v16 = sub_1C55967D4();
  v8 = swift_allocObject();
  v9 = v17;
  v10 = v18;
  v11 = v19;
  v12 = v20;
  v24 = v8;
  v8[2] = v16;
  v8[3] = v9;
  v8[4] = v10;
  v8[5] = v11;
  memcpy(v8 + 6, v12, 0x68uLL);
  sub_1C54061EC(v21, v21, v22, v23, v24, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1C547D7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v4[6] = v4;
  v4[7] = 0;
  v4[7] = a4;
  sub_1C55967E4();
  v4[9] = sub_1C55967D4();
  sub_1C55967A4();

  return MEMORY[0x1EEE6DFA0](sub_1C547D86C);
}

uint64_t sub_1C547D86C()
{
  v1 = *(v0 + 64);
  *(v0 + 48) = v0;
  v4 = *(v1 + 16);
  v6 = *(v1 + 24);

  *(v0 + 16) = v4;
  *(v0 + 24) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();
  sub_1C5596794();
  v5 = *(v0 + 80);

  *(v0 + 32) = v4;
  *(v0 + 40) = v6;
  *(v0 + 81) = v5;
  sub_1C5595F94();
  sub_1C5373718(v0 + 32);

  v2 = *(*(v0 + 48) + 8);

  return v2();
}

uint64_t sub_1C547D9A4(uint64_t a1, char *a2, uint64_t a3)
{
  v21 = a3;
  v20 = a1;
  v19 = a2;
  sub_1C5594CF4();
  if (a1)
  {

    v4 = a2[32];
    v5 = *(a2 + 5);

    v15[0] = v4;
    v16 = v5;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
    sub_1C5595F94();
    sub_1C5373718(v15);

    v6 = *a2;
    v7 = *(a2 + 1);

    v12[0] = v6;
    v13 = v7;
    sub_1C5595F94();
    sub_1C5373718(v12);
  }

  else
  {
    v8 = a2[32];
    v9 = *(a2 + 5);

    v17[0] = v8;
    v18 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
    sub_1C5595F94();
    sub_1C5373718(v17);
  }
}

uint64_t sub_1C547DB74(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);

  v3 = MEMORY[0x1E69E5928](a2, v2);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEB0, &unk_1C55B11C0);
    sub_1C5596714();
    v3 = MEMORY[0x1E69E5920](a2);
  }

  v5(v3);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1C547DCBC()
{
  v2 = qword_1EC15CEA0;
  if (!qword_1EC15CEA0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15CEA0);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_1C547DD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = sub_1C5596554();
  if (a4)
  {
    v10 = sub_1C5596554();

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (a6)
  {
    v8 = sub_1C5596554();

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v7 = [swift_getObjCClassFromMetadata() analyticsEventWithName:v14 altDSID:v11 flowID:v9];
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v11);
  MEMORY[0x1E69E5920](v14);

  return v7;
}

void sub_1C547DEA0()
{
  sub_1C5594F54();
  qword_1EC1628F0 = v0;
  qword_1EC1628F8 = v1;
  qword_1EC162900 = v2;
  qword_1EC162908 = v3;
}

uint64_t sub_1C547DF70(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8, &qword_1C55B0E10);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDB8, &qword_1C55B0E08) + 36);
  v2 = sub_1C5595754();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

void *sub_1C547E034(void *a1)
{

  if (a1[3])
  {
  }

  return a1;
}

uint64_t sub_1C547E08C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v7 = *(a1 + 8);
  sub_1C5594CF4();
  *(a2 + 8) = v7;
  if (*(a1 + 24))
  {
    *(a2 + 16) = *(a1 + 16);
    v3 = *(a1 + 24);
    sub_1C5594CF4();
    *(a2 + 24) = v3;
    *(a2 + 32) = *(a1 + 32);
    v4 = *(a1 + 40);
    sub_1C5594CF4();
    *(a2 + 40) = v4;
  }

  else
  {
    *(a2 + 16) = *(a1 + 16);
    *(a2 + 32) = *(a1 + 32);
  }

  result = a2;
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 49) = *(a1 + 49);
  return result;
}

double sub_1C547E164()
{
  v1 = sub_1C547A688();
  swift_beginAccess();
  v2 = *v1;
  swift_endAccess();
  return v2;
}

uint64_t sub_1C547E1DC(double a1, double a2, double a3, double a4)
{
  v8 = sub_1C547A688();
  swift_beginAccess();
  *v8 = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  return swift_endAccess();
}

uint64_t sub_1C547E2AC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_14AppleAccountUI38TrustedContactDetailsViewAOSUIProtocol_pSg(uint64_t a1)
{
  v2 = -1;
  if (!HIDWORD(*(a1 + 24)))
  {
    v2 = *(a1 + 24);
  }

  return (v2 + 1);
}

uint64_t sub_1C547E448(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 56)))
      {
        v3 = *(a1 + 56);
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

uint64_t sub_1C547E560(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1C547E780(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5405B1C;

  return sub_1C547D7B4(a1, v6, v7, v1 + 48);
}

uint64_t sub_1C547E868(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE80, &qword_1C55B3E80);
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {
    sub_1C5412EA0(*a1, *(a1 + 8), *(a1 + 16) & 1);

    v3 = a1 + *(v5 + 36);
    v1 = sub_1C5595754();
    (*(*(v1 - 8) + 8))(v3);
  }

  return a1;
}

_OWORD *sub_1C547E954(_OWORD *a1, _OWORD *a2)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE80, &qword_1C55B3E80);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE70, &unk_1C55B0E80);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    a2[1] = a1[1];
    v6 = a2 + *(v9 + 36);
    v5 = a1 + *(v9 + 36);
    v2 = sub_1C5595754();
    (*(*(v2 - 8) + 32))(v6, v5);
    (*(v10 + 56))(a2, 0, 1, v9);
  }

  return a2;
}

void *sub_1C547EAC4(uint64_t *a1, void *a2)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE80, &qword_1C55B3E80);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE70, &unk_1C55B0E80);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v5 = *a1;
    v6 = a1[1];
    v7 = *(a1 + 16);
    sub_1C54130AC(*a1, v6, v7 & 1);
    *a2 = v5;
    a2[1] = v6;
    *(a2 + 16) = v7 & 1;
    v8 = a1[3];
    sub_1C5594CF4();
    a2[3] = v8;
    v10 = a2 + *(v13 + 36);
    v9 = a1 + *(v13 + 36);
    v2 = sub_1C5595754();
    (*(*(v2 - 8) + 16))(v10, v9);
    (*(v14 + 56))(a2, 0, 1, v13);
  }

  return a2;
}

uint64_t sub_1C547EC90(uint64_t a1)
{
  sub_1C5412EA0(*a1, *(a1 + 8), *(a1 + 16) & 1);

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE80, &qword_1C55B3E80) + 36);
  v1 = sub_1C5595754();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_1C547ED34(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  sub_1C54130AC(*a1, v5, v6 & 1);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  v7 = *(a1 + 24);
  sub_1C5594CF4();
  *(a2 + 24) = v7;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE80, &qword_1C55B3E80) + 36);
  v2 = sub_1C5595754();
  (*(*(v2 - 8) + 16))(a2 + v8, a1 + v8);
  return a2;
}

unint64_t sub_1C547EE30()
{
  v2 = qword_1EC15CEA8;
  if (!qword_1EC15CEA8)
  {
    type metadata accessor for TrustedContactListViewModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CEA8);
    return WitnessTable;
  }

  return v2;
}

void *sub_1C547EEB0(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

unint64_t sub_1C547EEF0()
{
  v2 = qword_1EC15CEB8;
  if (!qword_1EC15CEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CE20, &unk_1C55B1820);
    sub_1C5452168();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CEB8);
    return WitnessTable;
  }

  return v2;
}

void *sub_1C547EF94(void *a1)
{

  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE20, &unk_1C55B1820) + 36);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360, &qword_1C55B0E50) + 28);
  v1 = sub_1C5595F34();
  (*(*(v1 - 8) + 8))(&v3[v4]);
  return a1;
}

unint64_t sub_1C547F04C()
{
  v2 = qword_1EC15CEC0;
  if (!qword_1EC15CEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CE28, &qword_1C55B0E58);
    sub_1C547EEF0();
    sub_1C5457498();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CEC0);
    return WitnessTable;
  }

  return v2;
}

char *sub_1C547F0F4(char *a1)
{

  v4 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE20, &unk_1C55B1820) + 36)];

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360, &qword_1C55B0E50) + 28);
  v1 = sub_1C5595F34();
  (*(*(v1 - 8) + 8))(&v4[v5]);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE28, &qword_1C55B0E58) + 36);
  v2 = sub_1C55951E4();
  (*(*(v2 - 8) + 8))(&a1[v6]);
  return a1;
}

unint64_t sub_1C547F210()
{
  v2 = qword_1EC15CEC8;
  if (!qword_1EC15CEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CE90, qword_1C55B0E90);
    sub_1C547F04C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CEC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C547F2B4()
{
  v2 = qword_1EC15CED0;
  if (!qword_1EC15CED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CE30, &qword_1C55B0E60);
    sub_1C547F210();
    sub_1C54778A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CED0);
    return WitnessTable;
  }

  return v2;
}

char *sub_1C547F35C(char *a1)
{

  v5 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE20, &unk_1C55B1820) + 36)];

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360, &qword_1C55B0E50) + 28);
  v1 = sub_1C5595F34();
  (*(*(v1 - 8) + 8))(&v5[v6]);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE28, &qword_1C55B0E58) + 36);
  v2 = sub_1C55951E4();
  (*(*(v2 - 8) + 8))(&a1[v7]);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE30, &qword_1C55B0E60) + 36);
  v3 = sub_1C5595754();
  (*(*(v3 - 8) + 8))(&a1[v8]);
  return a1;
}

unint64_t sub_1C547F4D8()
{
  v2 = qword_1EC15CED8;
  if (!qword_1EC15CED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CE40, &qword_1C55B0E70);
    sub_1C5470028();
    sub_1C54778A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CED8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C547F580(uint64_t a1)
{
  sub_1C5412EA0(*a1, *(a1 + 8), *(a1 + 16) & 1);

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE40, &qword_1C55B0E70) + 36);
  v1 = sub_1C5595754();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

unint64_t sub_1C547F630()
{
  v2 = qword_1EC15CEE0;
  if (!qword_1EC15CEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CE48, &qword_1C55B0E78);
    sub_1C546FF30();
    sub_1C54778A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CEE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C547F6D8(uint64_t a1)
{
  sub_1C5412EA0(*a1, *(a1 + 8), *(a1 + 16) & 1);

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE48, &qword_1C55B0E78) + 36);
  v1 = sub_1C5595754();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

char *sub_1C547F788(char *a1, char *a2)
{
  v7 = *a1;

  *a2 = v7;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE20, &unk_1C55B1820) + 36);
  v9 = *&a1[v8];

  *&a2[v8] = v9;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360, &qword_1C55B0E50) + 28);
  v2 = sub_1C5595F34();
  (*(*(v2 - 8) + 16))(&a2[v8 + v10], &a1[v8 + v10]);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE28, &qword_1C55B0E58) + 36);
  v3 = sub_1C55951E4();
  (*(*(v3 - 8) + 16))(&a2[v11], &a1[v11]);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE90, qword_1C55B0E90);
  memcpy(&a2[*(v4 + 36)], &a1[*(v4 + 36)], 0x29uLL);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE30, &qword_1C55B0E60) + 36);
  v5 = sub_1C5595754();
  (*(*(v5 - 8) + 16))(&a2[v12], &a1[v12]);
  return a2;
}

uint64_t sub_1C547F9B4(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  sub_1C54130AC(*a1, v5, v6 & 1);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  v7 = *(a1 + 24);
  sub_1C5594CF4();
  *(a2 + 24) = v7;
  v8 = *(a1 + 32);

  *(a2 + 32) = v8;
  *(a2 + 40) = *(a1 + 40);
  memcpy((a2 + 48), (a1 + 48), 0x29uLL);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE40, &qword_1C55B0E70) + 36);
  v2 = sub_1C5595754();
  (*(*(v2 - 8) + 16))(a2 + v9, a1 + v9);
  return a2;
}

uint64_t sub_1C547FAEC(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  sub_1C54130AC(*a1, v5, v6 & 1);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  v7 = *(a1 + 24);
  sub_1C5594CF4();
  *(a2 + 24) = v7;
  v8 = *(a1 + 32);

  *(a2 + 32) = v8;
  *(a2 + 40) = *(a1 + 40);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE48, &qword_1C55B0E78) + 36);
  v2 = sub_1C5595754();
  (*(*(v2 - 8) + 16))(a2 + v9, a1 + v9);
  return a2;
}

unint64_t sub_1C547FC10()
{
  v2 = qword_1EC15CEE8;
  if (!qword_1EC15CEE8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CEE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C547FC88(uint64_t a1)
{
  v5 = type metadata accessor for ReviewCustodianListView(0);
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {

    v3 = a1 + *(v5 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8, qword_1C55AE480);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v1 = sub_1C5595104();
      (*(*(v1 - 8) + 8))(v3);
    }

    else
    {
    }
  }

  return a1;
}

_OWORD *sub_1C547FDA8(_OWORD *a1, _OWORD *a2)
{
  v10 = type metadata accessor for ReviewCustodianListView(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDD8, &qword_1C55B0E20);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    __dst = a2 + *(v10 + 20);
    __src = a1 + *(v10 + 20);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8, qword_1C55AE480);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_1C5595104();
      (*(*(v2 - 8) + 32))(__dst, __src);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(__dst, __src, *(*(v7 - 8) + 64));
    }

    *(a2 + *(v10 + 24)) = *(a1 + *(v10 + 24));
    (*(v11 + 56))();
  }

  return a2;
}

void *sub_1C547FF88(void *a1, void *a2)
{
  v14 = type metadata accessor for ReviewCustodianListView(0);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(a1, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDD8, &qword_1C55B0E20);
    memcpy(a2, a1, *(*(v4 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v9 = a1[1];
    sub_1C5594CF4();
    a2[1] = v9;
    v10 = (a2 + *(v14 + 20));
    v11 = (a1 + *(v14 + 20));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8, qword_1C55AE480);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_1C5595104();
      (*(*(v2 - 8) + 16))(v10, v11);
    }

    else
    {
      v8 = *v11;

      *v10 = v8;
    }

    swift_storeEnumTagMultiPayload();
    v3 = *(v14 + 24);
    v6 = a2 + v3;
    *(a2 + v3) = *(a1 + v3);
    v7 = *(a1 + v3 + 8);

    *(v6 + 1) = v7;
    (*(v15 + 56))(a2, 0, 1, v14);
  }

  return a2;
}

void *sub_1C54801EC@<X0>(uint64_t a1@<X8>)
{
  v8[2] = a1;
  v11 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF0, &unk_1C55B26E0);
  v8[0] = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9, v1, v2, v3);
  v4 = (v8 - v8[0]);
  v10 = (v8 - v8[0]);
  v11 = v5;
  v6 = type metadata accessor for AgeAttestationRowElement(0);
  sub_1C548032C((v8[1] + *(v6 + 20)), v4);
  sub_1C5595004();
  return sub_1C5480400(v10);
}

uint64_t type metadata accessor for AgeAttestationRowElement(uint64_t a1)
{
  v2 = qword_1EC162E20;
  if (!qword_1EC162E20)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void *sub_1C548032C(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF8, &qword_1C55B11E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1C5594BE4();
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

void *sub_1C5480400(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF8, &qword_1C55B11E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5594BE4();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1C54804D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v10 = a1;
  v8[1] = 0;
  v16 = sub_1C5594BE4();
  v12 = *(v16 - 8);
  v13 = v16 - 8;
  v9 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v2, v3, v4);
  v15 = v8 - v9;
  v19 = sub_1C5595324();
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v11 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v19, v10, v19, v5);
  v20 = v8 - v11;
  (*(v17 + 16))(v8 - v11, v6);
  sub_1C5595304();
  (*(v12 + 32))(v14, v15, v16);
  return (*(v17 + 8))(v20, v19);
}

void *sub_1C5480698(void *a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF0, &unk_1C55B26E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11, v2, v3, v4);
  v10 = (&v8 - v9);
  sub_1C548032C(v5, (&v8 - v9));
  v6 = type metadata accessor for AgeAttestationRowElement(0);
  sub_1C5480748(v10, (v1 + *(v6 + 20)));
  return sub_1C5480400(v11);
}

void *sub_1C5480748(void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_1C5480400(a2);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF8, &qword_1C55B11E0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_1C5594BE4();
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

uint64_t sub_1C5480834(uint64_t a1)
{

  type metadata accessor for AgeRangeRowViewModel(0);
  sub_1C5595F74();

  return v2;
}

uint64_t sub_1C54808AC()
{
  type metadata accessor for AgeAttestationRowElement(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF00, &unk_1C55B1218);
  sub_1C5595F84();

  return v1;
}

uint64_t sub_1C5480950(uint64_t a1)
{
  v6[2] = 0;
  v6[3] = a1;
  v2 = (v1 + *(type metadata accessor for AgeAttestationRowElement(0) + 24));
  v4 = *v2;
  v5 = v2[1];

  v6[0] = v4;
  v6[1] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF00, &unk_1C55B1218);
  sub_1C5595F94();
  sub_1C5436F54(v6);
}

void (*sub_1C5480A34(void *a1))(void **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x60uLL, 16524);
  *a1 = v1;
  v2 = (v4 + *(type metadata accessor for AgeAttestationRowElement(0) + 24));
  v5 = *v2;
  v1[9] = *v2;
  v6 = v2[1];
  v1[10] = v6;

  *v1 = v5;
  v1[1] = v6;
  v1[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF00, &unk_1C55B1218);
  sub_1C5595F84();
  return sub_1C5437078;
}

uint64_t sub_1C5480B20()
{
  type metadata accessor for AgeAttestationRowElement(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF00, &unk_1C55B1218);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C5480BDC()
{
  v2 = *(v0 + *(type metadata accessor for AgeAttestationRowElement(0) + 24));

  return v2;
}

uint64_t sub_1C5480C2C(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for AgeAttestationRowElement(0) + 24));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1C5480CA4()
{
  type metadata accessor for AgeAttestationRowElement(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();

  return v1 & 1;
}

uint64_t sub_1C5480D34(char a1)
{
  v2 = (v1 + *(type metadata accessor for AgeAttestationRowElement(0) + 28));
  v4 = *v2;
  v5 = *(v2 + 1);

  v6[0] = v4;
  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F94();
  sub_1C5373718(v6);
}

uint64_t sub_1C5480DE0()
{
  type metadata accessor for AgeAttestationRowElement(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C5480E88()
{
  v2 = *(v0 + *(type metadata accessor for AgeAttestationRowElement(0) + 28));

  return v2 & 1;
}

uint64_t sub_1C5480ED4(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for AgeAttestationRowElement(0) + 28);
  *v3 = a1;
  *(v3 + 8) = a2;
}

id sub_1C5480F30()
{
  v0 = [objc_opt_self() sharedInstance];

  return v0;
}

uint64_t sub_1C5480F70()
{
  v3 = *(v0 + *(type metadata accessor for AgeAttestationRowElement(0) + 32));
  MEMORY[0x1E69E5928](v3, v1);
  return v3;
}

uint64_t sub_1C5480FB0@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF08, &qword_1C55B1228);
  v40 = (*(*(v39 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39, v2, v3, v4);
  v41 = &v23 - v40;
  v42 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v23 - v40, v6, v7, v8);
  v43 = &v23 - v42;
  v44 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v23 - v42, v10, v11, v12);
  v45 = &v23 - v44;
  v65 = &v23 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF10, &qword_1C55B1230);
  v47 = (*(*(v46 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v46, v13, v14, v15);
  v48 = &v23 - v47;
  v49 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v23 - v47, v17, v18, v19);
  v50 = &v23 - v49;
  v64 = &v23 - v49;
  v63 = v1;
  if (sub_1C54813CC())
  {
    v26 = &v57;
    sub_1C5481550();
    v27 = v59;
    v32 = 145;
    memcpy(v59, v26, 0x91uLL);
    v28 = v56;
    memcpy(v56, v59, 0x91uLL);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF40, &qword_1C55B1248);
    v34 = sub_1C5481CCC();
    v37 = v58;
    sub_1C540EFD8(v28, v33, v58);
    sub_1C5481EA0(v28);
    v29 = v60;
    memcpy(v60, v37, v32);
    sub_1C5481F0C(v29, &v54);
    v30 = v53;
    memcpy(v53, v29, v32);
    v36 = v55;
    sub_1C540EFD8(v30, v33, v55);
    sub_1C5481EA0(v30);
    v31 = __dst;
    memcpy(__dst, v36, v32);
    sub_1C5481F0C(v31, &v52);
    v35 = v51;
    memcpy(v51, v31, v32);
    v20 = sub_1C5481AB4();
    sub_1C540FD1C(v35, v33, v39, v34, v20, v48);
    sub_1C5481EA0(v35);
    sub_1C5362194(v48, v50);
    sub_1C5481EA0(v36);
    sub_1C5481EA0(v37);
  }

  else
  {
    sub_1C5481670(v43);
    v25 = sub_1C5481AB4();
    sub_1C540EFD8(v43, v39, v45);
    sub_1C5361F28(v43);
    v62 = v43;
    sub_1C5362008(v45, v41);
    sub_1C540EFD8(v41, v39, v43);
    sub_1C5361F28(v41);
    sub_1C5362008(v43, v41);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF40, &qword_1C55B1248);
    v21 = sub_1C5481CCC();
    sub_1C54108A0(v41, v24, v39, v21, v25, v48);
    sub_1C5361F28(v41);
    sub_1C5362194(v48, v50);
    sub_1C5361F28(v43);
    sub_1C5361F28(v45);
  }

  sub_1C53622B0(v50, v48);
  sub_1C5481DF8();
  sub_1C540EFD8(v48, v46, v38);
  sub_1C5362560(v48);
  return sub_1C5362560(v50);
}

uint64_t sub_1C54813CC()
{
  v11 = type metadata accessor for AgeAttestationRowElement(0);
  v12 = *(v0 + *(v11 + 32));
  v13 = [v12 shieldSignInOrCreateFlows];
  MEMORY[0x1E69E5920](v12);
  if (v13)
  {
    v9 = 1;
  }

  else
  {
    v7 = *(v10 + *(v11 + 32));
    v8 = [v7 primaryAuthKitAccount];
    MEMORY[0x1E69E5920](v7);
    if (v8)
    {
      v5 = *(v10 + *(v11 + 32));
      v6 = [v5 isManagedAppleIDForAccount_];
      MEMORY[0x1E69E5920](v5);
      MEMORY[0x1E69E5920](v8);
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9 & 1;
}

uint64_t sub_1C5481550()
{
  v3 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF70, &qword_1C55B1260);
  sub_1C5482408();
  sub_1C5412C88();
  sub_1C5596024();
  memcpy(__dst, v2, sizeof(__dst));
  memcpy(v1, __dst, sizeof(v1));
  sub_1C55957A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF58, &qword_1C55B1250);
  sub_1C5481D70();
  sub_1C5595D84();
  return sub_1C5481EA0(v1);
}

uint64_t sub_1C5481670@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v24 = sub_1C54829B8;
  v21 = sub_1C5482D54;
  v38 = MEMORY[0x1E697CDC0];
  v40 = sub_1C548367C;
  v52 = 0;
  v1 = type metadata accessor for AgeAttestationRowElement(0);
  v14 = *(v1 - 8);
  v18 = v14;
  v30 = *(v14 + 64);
  v15 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1, v2, v3, v4);
  v33 = (&v13 - v15);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF20, &qword_1C55B1238);
  v25 = *(v34 - 8);
  v26 = v34 - 8;
  v16 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34, v5, v6, v7);
  v27 = &v13 - v16;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF38, &qword_1C55B1240);
  v42 = *(v45 - 8);
  v43 = v45 - 8;
  v17 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28, v33, v8, v9);
  v44 = &v13 - v17;
  v52 = v10;
  sub_1C5482658(v10, v11);
  v29 = *(v18 + 80);
  v19 = (v29 + 16) & ~v29;
  v31 = 7;
  v20 = swift_allocObject();
  sub_1C548285C(v33, (v20 + v19));
  v22 = &v46;
  v47 = v28;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF80, &qword_1C55B1268);
  sub_1C5482D5C();
  sub_1C5595FD4();
  nullsub_1();
  v36 = sub_1C5481BC8();
  v37 = sub_1C5481C50();
  v35 = &unk_1F4478B98;
  sub_1C5595AD4();
  (*(v25 + 8))(v27, v34);
  sub_1C5482658(v28, v33);
  v32 = (v29 + 16) & ~v29;
  v41 = swift_allocObject();
  sub_1C548285C(v33, (v41 + v32));
  v48 = v34;
  v49 = v35;
  v50 = v36;
  v51 = v37;
  swift_getOpaqueTypeConformance2();
  sub_1C5595DC4();
  sub_1C5411348(v40, v41);
  return (*(v42 + 8))(v44, v45);
}

unint64_t sub_1C5481AB4()
{
  v2 = qword_1EC15CF18;
  if (!qword_1EC15CF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CF08, &qword_1C55B1228);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CF20, &qword_1C55B1238);
    sub_1C5481BC8();
    sub_1C5481C50();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CF18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5481BC8()
{
  v2 = qword_1EC15CF28;
  if (!qword_1EC15CF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CF20, &qword_1C55B1238);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CF28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5481C50()
{
  v2 = qword_1EC15CF30;
  if (!qword_1EC15CF30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CF30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5481CCC()
{
  v2 = qword_1EC15CF48;
  if (!qword_1EC15CF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CF40, &qword_1C55B1248);
    sub_1C5481D70();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CF48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5481D70()
{
  v2 = qword_1EC15CF50;
  if (!qword_1EC15CF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CF58, &qword_1C55B1250);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CF50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5481DF8()
{
  v2 = qword_1EC15CF68;
  if (!qword_1EC15CF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CF10, &qword_1C55B1230);
    sub_1C5481CCC();
    sub_1C5481AB4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CF68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5481EA0(uint64_t a1)
{
  sub_1C5412EA0(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  sub_1C5412EA0(*(a1 + 72), *(a1 + 80), *(a1 + 88) & 1);

  return a1;
}

uint64_t sub_1C5481F0C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1C54130AC(v3, v4, v5 & 1);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5 & 1;
  v6 = *(a1 + 48);
  sub_1C5594CF4();
  *(a2 + 48) = v6;
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 64) = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  sub_1C54130AC(v7, v8, v9 & 1);
  *(a2 + 72) = v7;
  *(a2 + 80) = v8;
  *(a2 + 88) = v9 & 1;
  v11 = *(a1 + 96);
  sub_1C5594CF4();
  *(a2 + 96) = v11;
  memcpy((a2 + 104), (a1 + 104), 0x29uLL);
  return a2;
}

uint64_t sub_1C5482040@<X0>(uint64_t a1@<X8>)
{
  memset(v72, 0, sizeof(v72));
  v61 = 0;
  v62 = 0;
  memset(v58, 0, sizeof(v58));
  v1 = sub_1C55965F4("AGE_RANGE_SHARING_TITLE", 23, 1);
  v18 = sub_1C54637B4(v1, v2);
  v19 = v3;

  v70 = v18;
  v71 = v19;
  sub_1C54141E8();
  v66 = sub_1C5595A04();
  v67 = v4;
  v68 = v5;
  v69 = v6;
  v63[0] = v66;
  v63[1] = v4;
  v64 = v5 & 1;
  v65 = v6;
  v29 = MEMORY[0x1E6981148];
  v31 = MEMORY[0x1E6981138];
  sub_1C540EFD8(v63, MEMORY[0x1E6981148], v72);
  sub_1C5414260(v63);
  v59 = sub_1C5596044();
  v60 = v7 & 1;
  v28 = MEMORY[0x1E6981840];
  v30 = MEMORY[0x1E6981838];
  sub_1C540EFD8(&v59, MEMORY[0x1E6981840], &v61);
  v8 = sub_1C55965F4("AGE_RANGE_SHARING_OPTION_NOT_AVAILABLE", 38, 1);
  v20 = sub_1C54637B4(v8, v9);
  v21 = v10;

  v56 = v20;
  v57 = v21;
  v52 = sub_1C5595A04();
  v53 = v11;
  v54 = v12;
  v55 = v13;
  v23 = v11;
  v22 = v12;
  v24 = v13;
  v51 = sub_1C5430454();
  v47 = v52;
  v48 = v23;
  v49 = v22 & 1;
  v50 = v24;
  v43 = sub_1C5595994();
  v44 = v14;
  v45 = v15;
  v46 = v16;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  sub_1C5412EA0(v52, v23, v22 & 1);

  v40[0] = v43;
  v40[1] = v25;
  v41 = v26 & 1;
  v42 = v27;
  sub_1C540EFD8(v40, v29, v58);
  sub_1C5414260(v40);
  sub_1C54142A8(v72, v38);
  v39[0] = v38;
  v36 = v61;
  v37 = v62;
  v39[1] = &v36;
  sub_1C54142A8(v58, v35);
  v39[2] = v35;
  v34[0] = v29;
  v34[1] = v28;
  v34[2] = v29;
  v33[0] = v31;
  v33[1] = v30;
  v33[2] = v31;
  sub_1C540F5A0(v39, 3uLL, v34, v33, a1);
  sub_1C5414260(v35);
  sub_1C5414260(v38);
  sub_1C5414260(v58);
  return sub_1C5414260(v72);
}

unint64_t sub_1C5482408()
{
  v2 = qword_1EC15CF78;
  if (!qword_1EC15CF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CF70, &qword_1C55B1260);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CF78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5482490(uint64_t a1)
{
  v12 = 0;
  v14 = sub_1C5482A1C;
  v23 = 0;
  v9[1] = 0;
  v18 = sub_1C5594BB4();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v10 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v2, v3, v4);
  v17 = v9 - v10;
  v22 = sub_1C5594BE4();
  v19 = *(v22 - 8);
  v20 = v22 - 8;
  v11 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22, v5, v6, v7);
  v21 = v9 - v11;
  v23 = a1;
  sub_1C54801EC(v9 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D178, &qword_1C55B1878);
  sub_1C5489A40();
  sub_1C5594BA4();
  sub_1C5489AE4();
  sub_1C5594BD4();
  (*(v15 + 8))(v17, v18);
  return (*(v19 + 8))(v21, v22);
}

void *sub_1C5482658(void *a1, void *a2)
{
  *a2 = *a1;
  v16 = a1[1];
  sub_1C5594CF4();
  a2[1] = v16;
  v17 = type metadata accessor for AgeAttestationRowElement(0);
  v18 = v17[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF8, &qword_1C55B11E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1C5594BE4();
    (*(*(v2 - 8) + 16))();
  }

  else
  {
    v14 = *(a1 + v18);

    *(a2 + v18) = v14;
  }

  swift_storeEnumTagMultiPayload();
  v8 = (a2 + v17[6]);
  v7 = (a1 + v17[6]);
  v6 = *v7;

  *v8 = v6;
  v9 = v7[1];

  v8[1] = v9;
  v3 = v17[7];
  v10 = a2 + v3;
  *(a2 + v3) = *(a1 + v3);
  v11 = *(a1 + v3 + 8);

  *(v10 + 1) = v11;
  v12 = v17[8];
  v13 = *(a1 + v12);
  MEMORY[0x1E69E5928](v13, v4);
  result = a2;
  *(a2 + v12) = v13;
  return result;
}

__n128 sub_1C548285C(_OWORD *a1, _OWORD *a2)
{
  *a2 = *a1;
  v5 = type metadata accessor for AgeAttestationRowElement(0);
  v6 = v5[5];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF8, &qword_1C55B11E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1C5594BE4();
    (*(*(v2 - 8) + 32))();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2 + v6, a1 + v6, *(*(v8 - 8) + 64));
  }

  *(a2 + v5[6]) = *(a1 + v5[6]);
  result = *(a1 + v5[7]);
  *(a2 + v5[7]) = result;
  *(a2 + v5[8]) = *(a1 + v5[8]);
  return result;
}

uint64_t sub_1C54829B8()
{
  v1 = *(type metadata accessor for AgeAttestationRowElement(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1C5482490(v2);
}

void sub_1C5482A1C(uint64_t a1@<X8>)
{
  v12[0] = sub_1C5482B6C();
  v2 = sub_1C5488BB0();
  sub_1C5411080();
  sub_1C5411148(&unk_1F4478C40, v2);
  sub_1C5595BB4();
  sub_1C5401EF8(v12);
  v10[0] = v12[1];
  v10[1] = v12[2];
  v11 = v13;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D178, &qword_1C55B1878);
  sub_1C5489A40();
  sub_1C540EFD8(v10, v7, v14);
  sub_1C5401EF8(v10);
  v3 = v14[0];
  v4 = v14[1];
  v5 = v15;
  MEMORY[0x1E69E5928](v14[0], v1);
  v8[0] = v3;
  v8[1] = v4;
  v9 = v5;
  sub_1C540EFD8(v8, v7, a1);
  sub_1C5401EF8(v8);
  sub_1C5401EF8(v14);
}

id sub_1C5482B6C()
{
  v3 = 0;
  sub_1C54836E0();
  v2 = sub_1C5404B48();
  MEMORY[0x1E69E5928](v2, v0);
  v3 = v2;
  sub_1C5401EF8(&v3);
  return v2;
}

uint64_t sub_1C5482BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D140, &qword_1C55B1860);
  sub_1C54896F8();
  sub_1C5412C88();
  sub_1C5596024();
  memcpy(__dst, v9, sizeof(__dst));
  memcpy(v8, __dst, sizeof(v8));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF80, &qword_1C55B1268);
  sub_1C5482D5C();
  sub_1C540EFD8(v8, v5, __b);
  sub_1C5489780(v8);
  memcpy(v13, __b, sizeof(v13));
  sub_1C54897C8(v13, v7);
  memcpy(v6, v13, sizeof(v6));
  sub_1C540EFD8(v6, v5, a2);
  sub_1C5489780(v6);
  return sub_1C5489780(__b);
}

unint64_t sub_1C5482D5C()
{
  v2 = qword_1EC15CF88;
  if (!qword_1EC15CF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CF80, &qword_1C55B1268);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CF88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5482DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(v86, 0, sizeof(v86));
  v75 = 0;
  v76 = 0;
  v57 = 0;
  v87 = a1;
  v2 = sub_1C55965F4("AGE_RANGE_SHARING_TITLE", 23, 1);
  v22 = sub_1C54637B4(v2, v3);
  v23 = v4;

  v84 = v22;
  v85 = v23;
  sub_1C54141E8();
  v80 = sub_1C5595A04();
  v81 = v5;
  v82 = v6;
  v83 = v7;
  v77[0] = v80;
  v77[1] = v5;
  v78 = v6 & 1;
  v79 = v7;
  sub_1C540EFD8(v77, MEMORY[0x1E6981148], v86);
  sub_1C5414260(v77);
  v73 = sub_1C5596044();
  v74 = v8 & 1;
  sub_1C540EFD8(&v73, MEMORY[0x1E6981840], &v75);
  v24 = sub_1C54808AC();
  v70 = (*(*v24 + 192))(v24);
  v25 = v70;
  if ((v70 & 0x100000000) != 0)
  {

    v66 = 0x200000000;
    v67 = 0;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D150, &qword_1C55B1868);
    sub_1C5489884();
    sub_1C540F554(&v66, v17, &v68);
    v11 = v68;
    v12 = v69;
    v71 = v68;
  }

  else
  {
    v57 = v70;

    v9 = (a1 + *(type metadata accessor for AgeAttestationRowElement(0) + 28));
    v14 = *v9;
    v15 = *(v9 + 1);

    v47 = v14;
    v48 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
    sub_1C5595F84();

    v10 = sub_1C5483304();
    v45 = sub_1C5483434(v25, v46 & 1, v10 & 1);
    v43 = v45;
    v44 = WORD2(v45);
    v42 = sub_1C5430454();
    sub_1C548992C();
    sub_1C5595BA4();
    v38 = v49;
    v39 = v50;
    v40 = v51;
    v41 = v52;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D150, &qword_1C55B1868);
    sub_1C5489884();
    sub_1C540EFD8(&v38, v16, &v53);
    v30 = v53;
    v31 = v54;
    v32 = v55;
    v33 = v56;
    sub_1C540EFD8(&v30, v16, &v34);
    v26 = v34 | ((v35 & 1) << 32) | ((v36 & 1) << 40);
    v27 = v37;
    sub_1C540F554(&v26, v16, &v28);
    v11 = v28;
    v12 = v29;
    v71 = v28;
  }

  v72 = v12;
  v18 = v11;
  v19 = v12;
  sub_1C54142A8(v86, v64);
  v65[0] = v64;
  v62 = v75;
  v63 = v76;
  v65[1] = &v62;
  v60 = v18;
  v61 = v19;
  v65[2] = &v60;
  v59[0] = MEMORY[0x1E6981148];
  v59[1] = MEMORY[0x1E6981840];
  v59[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D168, &qword_1C55B1870);
  v58[0] = MEMORY[0x1E6981138];
  v58[1] = MEMORY[0x1E6981838];
  v58[2] = sub_1C54899A8();
  sub_1C540F5A0(v65, 3uLL, v59, v58, a2);
  sub_1C5414260(v64);
  return sub_1C5414260(v86);
}

uint64_t sub_1C5483304()
{
  v8 = type metadata accessor for AgeAttestationRowElement(0);
  v9 = *(v0 + *(v8 + 32));
  v10 = [v9 primaryAuthKitAccount];
  MEMORY[0x1E69E5920](v9);
  if (v10)
  {
    v4 = *(v7 + *(v8 + 32));
    v5 = [v4 userUnderAgeForAccount_];
    MEMORY[0x1E69E5920](v4);
    MEMORY[0x1E69E5920](v10);
    v6 = v5 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C5483434(int a1, char a2, char a3)
{
  LODWORD(v4) = a1;
  BYTE4(v4) = a2;
  BYTE5(v4) = a3;
  return v4;
}

uint64_t sub_1C5483450(void *a1)
{
  v20 = a1;
  v24 = MEMORY[0x1E69E85E0];
  v29 = &unk_1C55B1840;
  v31 = 0;
  v27 = 0;
  v1 = type metadata accessor for AgeAttestationRowElement(0);
  v17 = *(v1 - 8);
  v21 = v17;
  v22 = *(v17 + 64);
  v18 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1, v2, v3, v4);
  v26 = (&v16 - v18);
  v19 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860, &qword_1C55AE2A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27, v5, v6, v7);
  v28 = &v16 - v19;
  v31 = v8;
  v9 = sub_1C5596814();
  (*(*(v9 - 8) + 56))(v28, 1);
  sub_1C5482658(v20, v26);
  sub_1C55967E4();
  v23 = sub_1C55967D4();
  v25 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v10 = swift_allocObject();
  v11 = v24;
  v12 = v25;
  v13 = v10;
  v14 = v26;
  v30 = v13;
  *(v13 + 16) = v23;
  *(v13 + 24) = v11;
  sub_1C548285C(v14, (v13 + v12));
  sub_1C54061EC(v27, v27, v28, v29, v30, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1C548367C()
{
  v1 = *(type metadata accessor for AgeAttestationRowElement(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1C5483450(v2);
}

unint64_t sub_1C54836E0()
{
  v2 = qword_1EC15CF90;
  if (!qword_1EC15CF90)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15CF90);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C5483744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v4[4] = v4;
  v4[5] = 0;
  v4[5] = a4;
  sub_1C55967E4();
  v4[7] = sub_1C55967D4();
  v4[8] = sub_1C55967A4();
  v4[9] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C5483800);
}

uint64_t sub_1C5483800()
{
  *(v0 + 32) = v0;
  v1 = sub_1C54808AC();
  *(v0 + 80) = v1;
  v5 = (*(*v1 + 272) + **(*v1 + 272));
  v2 = swift_task_alloc();
  *(v4 + 88) = v2;
  *v2 = *(v4 + 32);
  v2[1] = sub_1C548394C;

  return v5();
}

uint64_t sub_1C548394C()
{
  v3 = *v0;
  *(v3 + 32) = *v0;

  v1 = swift_task_alloc();
  *(v3 + 96) = v1;
  *v1 = *(v3 + 32);
  v1[1] = sub_1C5483AD0;

  return sub_1C5483D40();
}

uint64_t sub_1C5483AD0(char a1)
{
  v3 = *v1;
  *(v3 + 32) = *v1;
  *(v3 + 105) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1C5483C14);
}

uint64_t sub_1C5483C14()
{
  v6 = *(v0 + 105);
  v4 = *(v0 + 48);
  *(v0 + 32) = v0;
  v1 = (v4 + *(type metadata accessor for AgeAttestationRowElement(0) + 28));
  v5 = *v1;
  v7 = *(v1 + 1);

  *(v0 + 16) = v5;
  *(v0 + 24) = v7;
  *(v0 + 104) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F94();
  sub_1C5373718(v0 + 16);

  v2 = *(*(v0 + 32) + 8);

  return v2();
}

uint64_t sub_1C5483D40()
{
  v1[44] = v0;
  v1[34] = v1;
  v1[35] = 0;
  v1[36] = 0;
  v1[22] = 0;
  v1[23] = 0;
  v1[37] = 0;
  v1[39] = 0;
  v1[40] = 0;
  v1[24] = 0;
  v1[25] = 0;
  v1[43] = 0;
  v1[35] = v0;
  sub_1C55967E4();
  v1[45] = sub_1C55967D4();
  v1[46] = sub_1C55967A4();
  v1[47] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1C5483E20);
}

uint64_t sub_1C5483E20()
{
  v16 = v0[44];
  v0[34] = v0;
  v17 = type metadata accessor for AgeAttestationRowElement(0);
  v18 = *(v16 + *(v17 + 32));
  v19 = [v18 primaryAuthKitAccount];
  v0[48] = v19;
  MEMORY[0x1E69E5920](v18);
  if (v19)
  {
    v3 = *(v15 + 352);
    *(v15 + 288) = v19;
    v13 = *(v3 + *(v17 + 32));
    v14 = [v13 altDSIDForAccount_];
    MEMORY[0x1E69E5920](v13);
    if (v14)
    {
      v9 = sub_1C5596574();
      v10 = v4;
      MEMORY[0x1E69E5920](v14);
      v11 = v9;
      v12 = v10;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    *(v15 + 400) = v12;
    *(v15 + 392) = v11;
    *(v15 + 176) = v11;
    *(v15 + 184) = v12;
    sub_1C5487548();
    v8 = sub_1C5404B48();
    *(v15 + 408) = v8;
    *(v15 + 296) = v8;
    *(v15 + 16) = *(v15 + 272);
    *(v15 + 56) = v15 + 304;
    *(v15 + 24) = sub_1C5484180;
    v7 = swift_continuation_init();
    *(v15 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CFA0, &qword_1C55B1278);
    *(v15 + 112) = v7;
    *(v15 + 80) = MEMORY[0x1E69E9820];
    *(v15 + 88) = 1107296256;
    *(v15 + 92) = 0;
    *(v15 + 96) = sub_1C5484A88;
    *(v15 + 104) = &block_descriptor_9;
    [v8 startRequestWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v15 + 16);
  }

  else
  {

    v5 = *(*(v15 + 272) + 8);

    return v5(0);
  }
}

uint64_t sub_1C5484180()
{
  v4 = *v0;
  v5 = *v0;
  *(v5 + 272) = *v0;
  v1 = *(v4 + 48);
  *(v5 + 416) = v1;
  if (v1)
  {
    v2 = sub_1C5484964;
  }

  else
  {
    v2 = sub_1C54842F8;
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1C54842F8()
{
  v0[34] = v0;
  v19 = v0[38];
  v0[40] = v19;
  v20 = [v19 members];
  sub_1C54875EC();
  v0[41] = sub_1C5596714();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CFB0, &qword_1C55B1280);
  sub_1C5487650();
  sub_1C5596914();
  MEMORY[0x1E69E5920](v20);
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CFC0, &qword_1C55B1288);
    sub_1C5596C74();
    v17 = *(v18 + 336);
    if (!v17)
    {
      break;
    }

    *(v18 + 344) = v17;
    v16 = [v17 altDSID];
    if (v16)
    {
      v12 = sub_1C5596574();
      v13 = v1;
      MEMORY[0x1E69E5920](v16);
      v14 = v12;
      v15 = v13;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    v11 = *(v18 + 400);
    v10 = *(v18 + 392);
    sub_1C5594CF4();
    *(v18 + 208) = v10;
    *(v18 + 216) = v11;
    *(v18 + 144) = v14;
    *(v18 + 152) = v15;
    sub_1C5402BDC((v18 + 208), (v18 + 160));
    if (!*(v18 + 152))
    {
      if (!*(v18 + 168))
      {
        sub_1C5401ECC(v18 + 144);

LABEL_17:
        v6 = *(v18 + 408);
        v7 = *(v18 + 384);
        MEMORY[0x1E69E5920](v17);
        sub_1C541439C((v18 + 192));
        MEMORY[0x1E69E5920](v19);
        MEMORY[0x1E69E5920](v6);

        MEMORY[0x1E69E5920](v7);
        v8 = 1;
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    sub_1C5402BDC((v18 + 144), (v18 + 224));
    if (!*(v18 + 168))
    {
      sub_1C5401ECC(v18 + 224);
LABEL_14:
      sub_1C54876D8(v18 + 144);

      goto LABEL_16;
    }

    *(v18 + 240) = *(v18 + 224);
    *(v18 + 256) = *(v18 + 160);
    v9 = MEMORY[0x1C69471A0](*(v18 + 240), *(v18 + 248), *(v18 + 256), *(v18 + 264));
    sub_1C5401ECC(v18 + 256);
    sub_1C5401ECC(v18 + 240);
    sub_1C5401ECC(v18 + 144);

    if (v9)
    {
      goto LABEL_17;
    }

LABEL_16:
    MEMORY[0x1E69E5920](v17);
  }

  v4 = *(v18 + 408);
  v5 = *(v18 + 384);
  sub_1C541439C((v18 + 192));
  MEMORY[0x1E69E5920](v19);
  MEMORY[0x1E69E5920](v4);

  MEMORY[0x1E69E5920](v5);
  v8 = 0;
LABEL_19:

  v2 = *(*(v18 + 272) + 8);

  return v2(v8 & 1);
}

uint64_t sub_1C5484964()
{
  v5 = v0[52];
  v4 = v0[51];
  v6 = v0[48];
  v0[34] = v0;
  swift_willThrow();
  MEMORY[0x1E69E5920](v4);
  v1 = v5;
  v0[39] = v5;

  MEMORY[0x1E69E5920](v6);

  v2 = *(v0[34] + 8);

  return v2(0);
}

double sub_1C5484A88(uint64_t a1, uint64_t a2, void *a3)
{
  MEMORY[0x1E69E5928](a2, a2);
  MEMORY[0x1E69E5928](a3, v3);
  v13 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v7 = a3;
    v8 = sub_1C5489578();
    sub_1C542501C(v13, a3, v8);
  }

  else
  {
    MEMORY[0x1E69E5928](a2, v4);
    if (a2)
    {
      v9 = a2;
    }

    else
    {
      sub_1C5596E44();
      __break(1u);
    }

    v14 = v9;
    v5 = sub_1C5489578();
    sub_1C5425080(v13, &v14, v5);
  }

  MEMORY[0x1E69E5920](a3);
  *&result = MEMORY[0x1E69E5920](a2).n128_u64[0];
  return result;
}

double sub_1C5484BC0@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v39 = a2;
  v55 = a1;
  v40 = &unk_1C55B1298;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v41 = 0;
  v42 = sub_1C55962E4();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  v45 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v2, v3, v4);
  v46 = &v28 - v45;
  v52 = type metadata accessor for AgeAttestationRowElement(v5);
  v48 = (*(*(v52 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v52, v47, v6, v7);
  v54 = (&v28 - v48);
  v66 = &v28 - v48;
  v65 = v8;
  v49 = *(v9 + 20);
  swift_getKeyPath();
  sub_1C5595024();
  v51 = v52[7];
  v50 = 1;
  v10 = sub_1C5409594(0);
  v11 = v52;
  v12 = v54 + v51;
  *v12 = v10 & v50;
  *(v12 + 1) = v13;
  v53 = v11[8];
  v14 = [objc_opt_self() sharedInstance];
  v15 = v55;
  *(v54 + v53) = v14;
  v58 = v15[3];
  v56 = v15[4];
  __swift_project_boxed_opaque_existential_0(v15, v58);
  v16 = v57;
  v17 = sub_1C5596F04();
  v59 = v16;
  v60 = v17;
  v61 = v18;
  v62 = v16;
  if (v16)
  {
    v28 = v62;
    __swift_destroy_boxed_opaque_existential_0(v55);
    sub_1C5480400((v54 + v52[5]));
    sub_1C5373718(v54 + v52[7]);
    *&result = MEMORY[0x1E69E5920](*(v54 + v52[8])).n128_u64[0];
  }

  else
  {
    v35 = v61;
    v34 = v60;
    sub_1C5594CF4();
    v19 = v35;
    v20 = v54;
    *v54 = v34;
    v20[1] = v19;
    type metadata accessor for AgeRangeRowViewModel(0);
    v29 = sub_1C54BF6D8();
    v30 = sub_1C54BF704();
    v38 = sub_1C54BF854(v29, v30, v21);
    v64 = v38;

    v31 = (v54 + v52[6]);
    v22 = sub_1C5480834(v38);
    v23 = v31;
    v24 = v22;
    v25 = v55;
    *v31 = v24;
    v23[1] = v26;
    v33 = v25[3];
    v32 = v25[4];
    __swift_project_boxed_opaque_existential_0(v25, v33);
    sub_1C5596F14();
    v37 = sub_1C55962C4();
    (*(v43 + 8))(v46, v42);
    v36 = v63;
    v63[0] = v34;
    v63[1] = v35;

    sub_1C55962B4();

    sub_1C5401ECC(v36);

    sub_1C5482658(v54, v39);
    __swift_destroy_boxed_opaque_existential_0(v55);
    sub_1C5487D54(v54);
  }

  return result;
}

uint64_t sub_1C5485018(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = v2;
  *(v2 + 24) = 0;
  *(v2 + 24) = a2;
  v6 = (*(*a2 + 272) + **(*a2 + 272));
  v3 = swift_task_alloc();
  *(v5 + 32) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5485164;

  return v6();
}

uint64_t sub_1C5485164()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1C5485308@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C545D014();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1C5485338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v20 = a1;
  v23 = sub_1C5487E7C;
  v45 = 0;
  v44 = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CFC8, &qword_1C55B12A0);
  v18 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29, v2, v3, v4);
  v31 = &v17 - v18;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CFD0, &qword_1C55B12A8);
  v19 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32, v5, v6, v7);
  v36 = &v17 - v19;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CFD8, &qword_1C55B12B0);
  v21 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20, v8, v9, v10);
  v40 = &v17 - v21;
  v22 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12, &v17 - v21, v13, v14);
  v41 = &v17 - v22;
  v45 = &v17 - v22;
  v44 = v15;
  v24 = &v42;
  v43 = v15;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CFE0, &qword_1C55B12B8);
  v26 = sub_1C5487E84();
  sub_1C5412C88();
  v27 = 0;
  v28 = 1;
  sub_1C5596024();
  v30 = sub_1C55957A4();
  sub_1C5487F0C();
  sub_1C5595D84();
  sub_1C5362A34(v31);
  sub_1C5596244();
  v34 = sub_1C5487F94();
  v35 = sub_1C543F8AC();
  v33 = MEMORY[0x1E6981EF8];
  sub_1C543AE1C();
  sub_1C5595B24();
  sub_1C5362A34(v36);
  v39 = sub_1C5488038();
  sub_1C540EFD8(v40, v38, v41);
  sub_1C5362A34(v40);
  sub_1C5362B20(v41, v40);
  sub_1C540EFD8(v40, v38, v37);
  sub_1C5362A34(v40);
  return sub_1C5362A34(v41);
}

uint64_t sub_1C5485640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v51 = MEMORY[0x1E6981198];
  v86 = 0;
  v85 = 0;
  v84 = 0;
  v40 = &v82;
  v82 = 0;
  v83 = 0;
  v39 = 0;
  v45 = sub_1C5595F34();
  v42 = *(v45 - 8);
  v43 = v45 - 8;
  v31 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v45, v3, v4, v5);
  v44 = &v31 - v31;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE20, &unk_1C55B1820);
  v32 = (*(*(v49 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v49, v6, v7, v8);
  v48 = (&v31 - v32);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D008, &unk_1C55B12D0);
  v53 = *(v56 - 8);
  v54 = v56 - 8;
  v33 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v56, v9, v10, v11);
  v55 = &v31 - v33;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D020, &qword_1C55B12E0);
  v34 = (*(*(v60 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39, v12, v13, v14);
  v66 = &v31 - v34;
  v35 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16, &v31 - v34, v17, v18);
  v68 = &v31 - v35;
  v86 = &v31 - v35;
  v69 = sub_1C5595654();
  v57 = *(v69 - 8);
  v58 = v69 - 8;
  v37 = *(v57 + 64);
  v36 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v69, v19, v20, v21);
  v67 = &v31 - v36;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22, v23, v24, v25);
  v72 = &v31 - v38;
  v85 = &v31 - v38;
  v84 = a1;
  sub_1C5595664();
  v61 = sub_1C5489378();
  sub_1C540EFD8(v67, v69, v72);
  v71 = *(v57 + 8);
  v70 = v57 + 8;
  v71(v67, v69);
  v41 = 1;
  v80 = sub_1C5596044();
  v81 = v26 & 1;
  v59 = MEMORY[0x1E6981840];
  v62 = MEMORY[0x1E6981838];
  sub_1C540EFD8(&v80, MEMORY[0x1E6981840], v40);
  sub_1C55965F4("chevron.forward", 15, v41 & 1);
  v27 = sub_1C5595EF4();
  v46 = &v79;
  v79 = v27;
  (*(v42 + 104))(v44, *MEMORY[0x1E69816C8], v45);
  sub_1C5595AA4();
  (*(v42 + 8))(v44, v45);
  sub_1C5410D10(v46);
  sub_1C5595864();
  v47 = v28;
  v50 = sub_1C547EEF0();
  sub_1C5595A94();
  sub_1C547EF94(v48);
  v29 = sub_1C5485DB0();
  v52 = &v78;
  v78 = v29;
  v77[3] = v49;
  v77[4] = v50;
  swift_getOpaqueTypeConformance2();
  sub_1C5595BA4();
  (*(v53 + 8))(v55, v56);
  v63 = sub_1C54893F8();
  sub_1C540EFD8(v66, v60, v68);
  sub_1C5362FB4(v66);
  (*(v57 + 16))(v67, v72, v69);
  v65 = v77;
  v77[0] = v67;
  v75 = v82;
  v76 = v83;
  v77[1] = &v75;
  sub_1C536301C(v68, v66);
  v77[2] = v66;
  v74[0] = v69;
  v74[1] = v59;
  v74[2] = v60;
  v73[0] = v61;
  v73[1] = v62;
  v73[2] = v63;
  sub_1C540F5A0(v65, 3uLL, v74, v73, v64);
  sub_1C5362FB4(v66);
  v71(v67, v69);
  sub_1C5362FB4(v68);
  return (v71)(v72, v69);
}

uint64_t sub_1C5485E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, 0x24uLL);
  memset(v354, 0, 0x21uLL);
  v352 = 0u;
  v353 = 0u;
  v341 = 0u;
  v342 = 0u;
  memset(v329, 0, 0x21uLL);
  v304 = 0u;
  v305 = 0u;
  v293 = 0u;
  v294 = 0u;
  v280 = 0u;
  v281 = 0u;
  v269 = 0u;
  v270 = 0u;
  v242 = 0u;
  v243 = 0u;
  v231 = 0u;
  v232 = 0u;
  v206 = 0u;
  v207 = 0u;
  v195 = 0u;
  v196 = 0u;
  v369 = a1;
  v367 = a1;
  v368 = WORD2(a1);
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v10 = sub_1C55965F4("AGE_RANGE_SHARING_OPTION_ALWAYS", 31, 1);
        v124 = sub_1C54637B4(v10, v11);
        v125 = v12;

        v240 = v124;
        v241 = v125;
        sub_1C54141E8();
        v236 = sub_1C5595A04();
        v237 = v13;
        v238 = v14;
        v239 = v15;
        v233[0] = v236;
        v233[1] = v13;
        v234 = v14 & 1;
        v235 = v15;
        v132 = MEMORY[0x1E6981148];
        v133 = MEMORY[0x1E6981138];
        sub_1C540EFD8(v233, MEMORY[0x1E6981148], &v242);
        sub_1C5414260(v233);
        v126 = v242;
        v127 = v243;
        v128 = *(&v243 + 1);
        sub_1C54130AC(v242, *(&v242 + 1), v243 & 1);
        sub_1C5594CF4();
        v228 = v126;
        v229 = v127 & 1;
        v230 = v128;
        sub_1C540EFD8(&v228, v132, &v231);
        sub_1C5414260(&v228);
        v129 = v231;
        v130 = v232;
        v131 = *(&v232 + 1);
        sub_1C54130AC(v231, *(&v231 + 1), v232 & 1);
        sub_1C5594CF4();
        v213 = v129;
        v214 = v130 & 1;
        v215 = v131;
        sub_1C54108A0(&v213, v132, v132, v133, v133, v216);
        sub_1C5414260(&v213);
        v211[0] = v216[0];
        v211[1] = v216[1];
        v211[2] = v216[2];
        v211[3] = v216[3];
        v212 = v217 & 1;
        v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D040, &qword_1C55B12F0);
        v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D050, &qword_1C55B12F8);
        v136 = sub_1C5488188();
        v16 = sub_1C5488224();
        sub_1C540FD1C(v211, v134, v135, v136, v16, v218);
        sub_1C5488758(v211);
        v208[0] = v218[0];
        v208[1] = v218[1];
        v208[2] = v218[2];
        v208[3] = v218[3];
        v209 = v219;
        v210 = v220 & 1;
        v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D028, &qword_1C55B12E8);
        v17 = sub_1C54880E0();
        sub_1C540FD1C(v208, v137, MEMORY[0x1E6981E70], v17, MEMORY[0x1E6981E60], &v221);
        sub_1C54887E4(v208);
        v139 = v221;
        v140 = v222;
        v141 = v223;
        v142 = v224;
        v143 = v225 | (v226 << 16);
        v138 = v227;
        sub_1C54882C8(v221, v222, v223, v224, v143, v227 & 1);
        __b[0] = v139;
        __b[1] = v140;
        __b[2] = v141;
        __b[3] = v142;
        LOWORD(__b[4]) = v143;
        BYTE2(__b[4]) = BYTE2(v143);
        BYTE3(__b[4]) = v138 & 1;
        sub_1C5414260(&v231);
        sub_1C5414260(&v242);
        v164 = v139;
        v165 = v140;
        v166 = v141;
        v167 = v142;
        v168 = v143;
        v169 = v138;
        break;
      case 2:
        v2 = sub_1C55965F4("AGE_RANGE_SHARING_OPTION_ASK_FIRST", 34, 1);
        v144 = sub_1C54637B4(v2, v3);
        v145 = v4;

        v204 = v144;
        v205 = v145;
        sub_1C54141E8();
        v200 = sub_1C5595A04();
        v201 = v5;
        v202 = v6;
        v203 = v7;
        v197[0] = v200;
        v197[1] = v5;
        v198 = v6 & 1;
        v199 = v7;
        v152 = MEMORY[0x1E6981148];
        v153 = MEMORY[0x1E6981138];
        sub_1C540EFD8(v197, MEMORY[0x1E6981148], &v206);
        sub_1C5414260(v197);
        v146 = v206;
        v147 = v207;
        v148 = *(&v207 + 1);
        sub_1C54130AC(v206, *(&v206 + 1), v207 & 1);
        sub_1C5594CF4();
        v192 = v146;
        v193 = v147 & 1;
        v194 = v148;
        sub_1C540EFD8(&v192, v152, &v195);
        sub_1C5414260(&v192);
        v149 = v195;
        v150 = v196;
        v151 = *(&v196 + 1);
        sub_1C54130AC(v195, *(&v195 + 1), v196 & 1);
        sub_1C5594CF4();
        v177 = v149;
        v178 = v150 & 1;
        v179 = v151;
        sub_1C540FD1C(&v177, v152, v152, v153, v153, v180);
        sub_1C5414260(&v177);
        v175[0] = v180[0];
        v175[1] = v180[1];
        v175[2] = v180[2];
        v175[3] = v180[3];
        v176 = v181 & 1;
        v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D040, &qword_1C55B12F0);
        v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D050, &qword_1C55B12F8);
        v156 = sub_1C5488188();
        v8 = sub_1C5488224();
        sub_1C540FD1C(v175, v154, v155, v156, v8, v182);
        sub_1C5488758(v175);
        v172[0] = v182[0];
        v172[1] = v182[1];
        v172[2] = v182[2];
        v172[3] = v182[3];
        v173 = v183;
        v174 = v184 & 1;
        v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D028, &qword_1C55B12E8);
        v9 = sub_1C54880E0();
        sub_1C540FD1C(v172, v157, MEMORY[0x1E6981E70], v9, MEMORY[0x1E6981E60], &v185);
        sub_1C54887E4(v172);
        v159 = v185;
        v160 = v186;
        v161 = v187;
        v162 = v188;
        v163 = v189 | (v190 << 16);
        v158 = v191;
        sub_1C54882C8(v185, v186, v187, v188, v163, v191 & 1);
        __b[0] = v159;
        __b[1] = v160;
        __b[2] = v161;
        __b[3] = v162;
        LOWORD(__b[4]) = v163;
        BYTE2(__b[4]) = BYTE2(v163);
        BYTE3(__b[4]) = v158 & 1;
        sub_1C5414260(&v195);
        sub_1C5414260(&v206);
        v164 = v159;
        v165 = v160;
        v166 = v161;
        v167 = v162;
        v168 = v163;
        v169 = v158;
        break;
      case 3:
        v18 = sub_1C55965F4("AGE_RANGE_SHARING_OPTION_NEVER", 30, 1);
        v104 = sub_1C54637B4(v18, v19);
        v105 = v20;

        v278 = v104;
        v279 = v105;
        sub_1C54141E8();
        v274 = sub_1C5595A04();
        v275 = v21;
        v276 = v22;
        v277 = v23;
        v271[0] = v274;
        v271[1] = v21;
        v272 = v22 & 1;
        v273 = v23;
        v112 = MEMORY[0x1E6981148];
        v113 = MEMORY[0x1E6981138];
        sub_1C540EFD8(v271, MEMORY[0x1E6981148], &v280);
        sub_1C5414260(v271);
        v106 = v280;
        v107 = v281;
        v108 = *(&v281 + 1);
        sub_1C54130AC(v280, *(&v280 + 1), v281 & 1);
        sub_1C5594CF4();
        v266 = v106;
        v267 = v107 & 1;
        v268 = v108;
        sub_1C540EFD8(&v266, v112, &v269);
        sub_1C5414260(&v266);
        v109 = v269;
        v110 = v270;
        v111 = *(&v270 + 1);
        sub_1C54130AC(v269, *(&v269 + 1), v270 & 1);
        sub_1C5594CF4();
        v250 = v109;
        v251 = v110 & 1;
        v252 = v111;
        v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D040, &qword_1C55B12F0);
        v116 = sub_1C5488188();
        sub_1C540FD1C(&v250, v112, v114, v113, v116, v253);
        sub_1C5414260(&v250);
        v247[0] = v253[0];
        v247[1] = v253[1];
        v247[2] = v253[2];
        v247[3] = v253[3];
        v248 = v254;
        v249 = v255 & 1;
        v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D050, &qword_1C55B12F8);
        v24 = sub_1C5488224();
        sub_1C54108A0(v247, v114, v115, v116, v24, v256);
        sub_1C548879C(v247);
        v244[0] = v256[0];
        v244[1] = v256[1];
        v244[2] = v256[2];
        v244[3] = v256[3];
        v245 = v257;
        v246 = v258 & 1;
        v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D028, &qword_1C55B12E8);
        v25 = sub_1C54880E0();
        sub_1C540FD1C(v244, v117, MEMORY[0x1E6981E70], v25, MEMORY[0x1E6981E60], &v259);
        sub_1C54887E4(v244);
        v119 = v259;
        v120 = v260;
        v121 = v261;
        v122 = v262;
        v123 = v263 | (v264 << 16);
        v118 = v265;
        sub_1C54882C8(v259, v260, v261, v262, v123, v265 & 1);
        __b[0] = v119;
        __b[1] = v120;
        __b[2] = v121;
        __b[3] = v122;
        LOWORD(__b[4]) = v123;
        BYTE2(__b[4]) = BYTE2(v123);
        BYTE3(__b[4]) = v118 & 1;
        sub_1C5414260(&v269);
        sub_1C5414260(&v280);
        v164 = v119;
        v165 = v120;
        v166 = v121;
        v167 = v122;
        v168 = v123;
        v169 = v118;
        break;
      default:
        sub_1C5596234();
        v44 = MEMORY[0x1E6981E70];
        v45 = MEMORY[0x1E6981E60];
        sub_1C540EFD8(v46, MEMORY[0x1E6981E70], v46);
        sub_1C540EFD8(v46, v44, v46);
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D028, &qword_1C55B12E8);
        v40 = sub_1C54880E0();
        sub_1C54108A0(v46, v43, v44, v40, v45, &v359);
        v48 = v359;
        v49 = v360;
        v50 = v361;
        v51 = v362;
        v52 = v363 | (v364 << 16);
        v47 = v365;
        sub_1C54882C8(v359, v360, v361, v362, v52, v365 & 1);
        __b[0] = v48;
        __b[1] = v49;
        __b[2] = v50;
        __b[3] = v51;
        LOWORD(__b[4]) = v52;
        BYTE2(__b[4]) = BYTE2(v52);
        BYTE3(__b[4]) = v47 & 1;
        v164 = v48;
        v165 = v49;
        v166 = v50;
        v167 = v51;
        v168 = v52;
        v169 = v47;
        break;
    }
  }

  else
  {
    if ((a1 & 0x10000000000) != 0)
    {
      v103 = BYTE4(a1) ^ 1;
    }

    else
    {
      v103 = 0;
    }

    if (v103)
    {
      v26 = sub_1C55965F4("AGE_RANGE_SHARING_OPTION_ASK_FIRST", 34, 1);
      v83 = sub_1C54637B4(v26, v27);
      v84 = v28;

      v302 = v83;
      v303 = v84;
      sub_1C54141E8();
      v298 = sub_1C5595A04();
      v299 = v29;
      v300 = v30;
      v301 = v31;
      v295[0] = v298;
      v295[1] = v29;
      v296 = v30 & 1;
      v297 = v31;
      v91 = MEMORY[0x1E6981148];
      v92 = MEMORY[0x1E6981138];
      sub_1C540EFD8(v295, MEMORY[0x1E6981148], &v304);
      sub_1C5414260(v295);
      v85 = v304;
      v86 = v305;
      v87 = *(&v305 + 1);
      sub_1C54130AC(v304, *(&v304 + 1), v305 & 1);
      sub_1C5594CF4();
      v290 = v85;
      v291 = v86 & 1;
      v292 = v87;
      sub_1C540EFD8(&v290, v91, &v293);
      sub_1C5414260(&v290);
      v88 = v293;
      v89 = v294;
      v90 = *(&v294 + 1);
      sub_1C54130AC(v293, *(&v293 + 1), v294 & 1);
      sub_1C5594CF4();
      v282 = v88;
      v283 = v89 & 1;
      v284 = v90;
      sub_1C540FD1C(&v282, v91, v91, v92, v92, &v285);
      sub_1C5414260(&v282);
      v94 = v285;
      v95 = v286;
      v96 = v287;
      v97 = v288;
      v93 = v289;
      sub_1C54883A8(v285, v286, v287, v288);
      v354[0] = v94;
      v354[1] = v95;
      v354[2] = v96;
      v354[3] = v97;
      LOBYTE(v354[4]) = v93 & 1;
      sub_1C5414260(&v293);
      sub_1C5414260(&v304);
      v98 = v94;
      v99 = v95;
      v100 = v96;
      v101 = v97;
      v102 = v93;
    }

    else
    {
      v32 = sub_1C55965F4("AGE_RANGE_SHARING_OPTION_UNKNOWN", 32, 1);
      v68 = sub_1C54637B4(v32, v33);
      v69 = v34;

      v350 = v68;
      v351 = v69;
      sub_1C54141E8();
      v346 = sub_1C5595A04();
      v347 = v35;
      v348 = v36;
      v349 = v37;
      v343[0] = v346;
      v343[1] = v35;
      v344 = v36 & 1;
      v345 = v37;
      v76 = MEMORY[0x1E6981148];
      v77 = MEMORY[0x1E6981138];
      sub_1C540EFD8(v343, MEMORY[0x1E6981148], &v352);
      sub_1C5414260(v343);
      v70 = v352;
      v71 = v353;
      v72 = *(&v353 + 1);
      sub_1C54130AC(v352, *(&v352 + 1), v353 & 1);
      sub_1C5594CF4();
      v338 = v70;
      v339 = v71 & 1;
      v340 = v72;
      sub_1C540EFD8(&v338, v76, &v341);
      sub_1C5414260(&v338);
      v73 = v341;
      v74 = v342;
      v75 = *(&v342 + 1);
      sub_1C54130AC(v341, *(&v341 + 1), v342 & 1);
      sub_1C5594CF4();
      v330 = v73;
      v331 = v74 & 1;
      v332 = v75;
      sub_1C54108A0(&v330, v76, v76, v77, v77, &v333);
      sub_1C5414260(&v330);
      v79 = v333;
      v80 = v334;
      v81 = v335;
      v82 = v336;
      v78 = v337;
      sub_1C54883A8(v333, v334, v335, v336);
      v354[0] = v79;
      v354[1] = v80;
      v354[2] = v81;
      v354[3] = v82;
      LOBYTE(v354[4]) = v78 & 1;
      sub_1C5414260(&v341);
      sub_1C5414260(&v352);
      v98 = v79;
      v99 = v80;
      v100 = v81;
      v101 = v82;
      v102 = v78;
    }

    v327[0] = v98;
    v327[1] = v99;
    v327[2] = v100;
    v327[3] = v101;
    v328 = v102 & 1;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D040, &qword_1C55B12F0);
    v60 = sub_1C5488188();
    sub_1C540EFD8(v327, v58, v329);
    sub_1C5488758(v327);
    v53 = v329[0];
    v54 = v329[1];
    v55 = v329[2];
    v56 = v329[3];
    v57 = v329[4];
    sub_1C54883A8(v329[0], v329[1], v329[2], v329[3]);
    v312[0] = v53;
    v312[1] = v54;
    v312[2] = v55;
    v312[3] = v56;
    v313 = v57 & 1;
    sub_1C54108A0(v312, MEMORY[0x1E6981148], v58, MEMORY[0x1E6981138], v60, v314);
    sub_1C5488758(v312);
    v309[0] = v314[0];
    v309[1] = v314[1];
    v309[2] = v314[2];
    v309[3] = v314[3];
    v310 = v315;
    v311 = v316 & 1;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D050, &qword_1C55B12F8);
    v38 = sub_1C5488224();
    sub_1C54108A0(v309, v58, v59, v60, v38, v317);
    sub_1C548879C(v309);
    v306[0] = v317[0];
    v306[1] = v317[1];
    v306[2] = v317[2];
    v306[3] = v317[3];
    v307 = v318;
    v308 = v319 & 1;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D028, &qword_1C55B12E8);
    v39 = sub_1C54880E0();
    sub_1C540FD1C(v306, v61, MEMORY[0x1E6981E70], v39, MEMORY[0x1E6981E60], &v320);
    sub_1C54887E4(v306);
    v63 = v320;
    v64 = v321;
    v65 = v322;
    v66 = v323;
    v67 = v324 | (v325 << 16);
    v62 = v326;
    sub_1C54882C8(v320, v321, v322, v323, v67, v326 & 1);
    __b[0] = v63;
    __b[1] = v64;
    __b[2] = v65;
    __b[3] = v66;
    LOWORD(__b[4]) = v67;
    BYTE2(__b[4]) = BYTE2(v67);
    BYTE3(__b[4]) = v62 & 1;
    sub_1C5488758(v329);
    sub_1C5488758(v354);
    v164 = v63;
    v165 = v64;
    v166 = v65;
    v167 = v66;
    v168 = v67;
    v169 = v62;
  }

  v355[0] = v164;
  v355[1] = v165;
  v355[2] = v166;
  v355[3] = v167;
  v356 = v168;
  v357 = BYTE2(v168);
  v358 = v169 & 1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D058, &qword_1C55B1300);
  sub_1C5488494();
  sub_1C540EFD8(v355, v42, a2);
  sub_1C5488538(v355);
  return sub_1C5488538(__b);
}

uint64_t sub_1C548750C@<X0>(uint64_t a1@<X8>)
{
  LODWORD(v3) = *v1;
  BYTE4(v3) = *(v1 + 4);
  BYTE5(v3) = *(v1 + 5);
  return sub_1C5485E24(v3, a1);
}

unint64_t sub_1C5487548()
{
  v2 = qword_1EC15CF98;
  if (!qword_1EC15CF98)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15CF98);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C54875EC()
{
  v2 = qword_1EC15CFA8;
  if (!qword_1EC15CFA8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15CFA8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C5487650()
{
  v2 = qword_1EC15CFB8;
  if (!qword_1EC15CFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CFB0, &qword_1C55B1280);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CFB8);
    return WitnessTable;
  }

  return v2;
}

id sub_1C5487710(uint64_t a1, void *a2)
{
  MEMORY[0x1E69E5928](a2, a2);
  type metadata accessor for AgeRangeAccount();
  sub_1C548783C();
  v5 = [a2 ageRangeViewControllerForAccount_];
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](a2);
  if (v5)
  {
    return v5;
  }

  sub_1C5596C94();
  __break(1u);
  return v3;
}

void sub_1C5487964(uint64_t a1)
{
  sub_1C5488854();
  sub_1C5595724();
  __break(1u);
}

uint64_t sub_1C5487A2C()
{
  v17 = 0;
  sub_1C54888D0();
  v11 = sub_1C5404B48();
  v12 = [v11 aa_primaryAppleAccount];
  v0 = MEMORY[0x1E69E5920](v11).n128_u64[0];
  if (v12)
  {
    v10 = [v12 aa_altDSID];
    if (v10)
    {
      v6 = sub_1C5596574();
      v7 = v1;
      MEMORY[0x1E69E5920](v10);
      v8 = v6;
      v9 = v7;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    v0 = MEMORY[0x1E69E5920](v12).n128_u64[0];
    v4 = v8;
    v5 = v9;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v13 = v4;
  v14 = v5;
  if (v5)
  {
    v15 = v13;
    v16 = v14;
  }

  else
  {
    v15 = sub_1C55965F4("", 0, 1, *&v0);
    v16 = v2;
  }

  return v15;
}

uint64_t sub_1C5487C98(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_1C5405B1C;

  return sub_1C5485018(a1, v5);
}

uint64_t sub_1C5487D54(uint64_t a1)
{

  v3 = type metadata accessor for AgeAttestationRowElement(0);
  v4 = *(v3 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF8, &qword_1C55B11E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5594BE4();
    (*(*(v1 - 8) + 8))(a1 + v4);
  }

  else
  {
  }

  MEMORY[0x1E69E5920](*(a1 + *(v3 + 32)));
  return a1;
}

unint64_t sub_1C5487E84()
{
  v2 = qword_1EC15CFE8;
  if (!qword_1EC15CFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CFE0, &qword_1C55B12B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CFE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5487F0C()
{
  v2 = qword_1EC15CFF0;
  if (!qword_1EC15CFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CFC8, &qword_1C55B12A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CFF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5487F94()
{
  v2 = qword_1EC15D010;
  if (!qword_1EC15D010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CFD0, &qword_1C55B12A8);
    sub_1C5487F0C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D010);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5488038()
{
  v2 = qword_1EC15D018;
  if (!qword_1EC15D018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CFD8, &qword_1C55B12B0);
    sub_1C5487F94();
    sub_1C543093C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D018);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54880E0()
{
  v2 = qword_1EC15D030;
  if (!qword_1EC15D030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D028, &qword_1C55B12E8);
    sub_1C5488188();
    sub_1C5488224();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D030);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5488188()
{
  v2 = qword_1EC15D038;
  if (!qword_1EC15D038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D040, &qword_1C55B12F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D038);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5488224()
{
  v2 = qword_1EC15D048;
  if (!qword_1EC15D048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D050, &qword_1C55B12F8);
    sub_1C5488188();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D048);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54882C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    return sub_1C5488328(result, a2, a3, a4, a5, ((a5 & 0xFFFFFF) >> 16) & 1);
  }

  return result;
}

uint64_t sub_1C5488328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, char a6)
{
  if (a6)
  {
    return sub_1C548841C(a1, a2, a3, a4, a5, BYTE1(a5) & 1);
  }

  else
  {
    return sub_1C54883A8(a1, a2, a3, a4);
  }
}

uint64_t sub_1C548841C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return sub_1C54883A8(a1, a2, a3, a4);
  }

  sub_1C54130AC(a1, a2, a3 & 1);
  return sub_1C5594CF4();
}

unint64_t sub_1C5488494()
{
  v2 = qword_1EC15D060;
  if (!qword_1EC15D060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D058, &qword_1C55B1300);
    sub_1C54880E0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D060);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C548858C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    return sub_1C54885EC(result, a2, a3, a4, a5, ((a5 & 0xFFFFFF) >> 16) & 1);
  }

  return result;
}

uint64_t sub_1C54885EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, char a6)
{
  if (a6)
  {
    return sub_1C54886E0(a1, a2, a3, a4, a5, BYTE1(a5) & 1);
  }

  else
  {
    return sub_1C548866C(a1, a2, a3, a4);
  }
}

uint64_t sub_1C54886E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return sub_1C548866C(a1, a2, a3, a4);
  }

  sub_1C5412EA0(a1, a2, a3 & 1);
}

unint64_t sub_1C5488854()
{
  v2 = qword_1EC15D068;
  if (!qword_1EC15D068)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D068);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54888D0()
{
  v2 = qword_1EC15D070;
  if (!qword_1EC15D070)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15D070);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C548894C()
{
  v2 = qword_1EC15D078;
  if (!qword_1EC15D078)
  {
    type metadata accessor for AgeAttestationRowElement(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D078);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54889E4()
{
  v2 = qword_1EC15D080;
  if (!qword_1EC15D080)
  {
    type metadata accessor for AgeAttestationRowElement(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D080);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5488A7C()
{
  v2 = qword_1EC15D088;
  if (!qword_1EC15D088)
  {
    type metadata accessor for AgeAttestationRowElement(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D088);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5488BB0()
{
  v2 = qword_1EC15D090;
  if (!qword_1EC15D090)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D090);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5488C7C(uint64_t a1)
{
  v6 = sub_1C5488DC4(319);
  if (v1 <= 0x3F)
  {
    v6 = sub_1C5488E60(319);
    if (v2 <= 0x3F)
    {
      v6 = sub_1C5433F94(319);
      if (v3 <= 0x3F)
      {
        v6 = sub_1C5488EFC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v6;
}

unint64_t sub_1C5488DC4(uint64_t a1)
{
  v5 = qword_1EC15D098;
  if (!qword_1EC15D098)
  {
    sub_1C5594BE4();
    v4 = sub_1C5595014();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EC15D098);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1C5488E60(uint64_t a1)
{
  v5 = qword_1EC15D0A0;
  if (!qword_1EC15D0A0)
  {
    type metadata accessor for AgeRangeRowViewModel(255);
    v4 = sub_1C5595FB4();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EC15D0A0);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1C5488EFC()
{
  v2 = qword_1EC15D0A8;
  if (!qword_1EC15D0A8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15D0A8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t __swift_memcpy6_4(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 4) = *(a2 + 4);
  return result;
}

uint64_t sub_1C5488F88(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 6))
    {
      v5 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 4);
      v4 = -1;
      if ((v3 & 0xFFFFFFFE) != 0)
      {
        v4 = v3 & 1 | ((v3 & 0xFE) - 2) & 0x7FFFFFFF;
      }

      v5 = v4;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C54890DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 4) = 0;
    if (a3 > 0xFE)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *(result + 4) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

unint64_t type metadata accessor for AgeRangeGlobalState(uint64_t a1)
{
  v5 = qword_1EC15D110;
  if (!qword_1EC15D110)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15D110);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1C5489378()
{
  v2 = qword_1EC15D118;
  if (!qword_1EC15D118)
  {
    sub_1C5595654();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D118);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54893F8()
{
  v2 = qword_1EC15D120;
  if (!qword_1EC15D120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D020, &qword_1C55B12E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CE20, &unk_1C55B1820);
    sub_1C547EEF0();
    swift_getOpaqueTypeConformance2();
    sub_1C54894F0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D120);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54894F0()
{
  v2 = qword_1EC15D128;
  if (!qword_1EC15D128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D130, &qword_1C55B1830);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D128);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5489578()
{
  v2 = qword_1EC15D138;
  if (!qword_1EC15D138)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15D138);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C54895DC(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for AgeAttestationRowElement(0) - 8);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1C5405B1C;

  return sub_1C5483744(a1, v7, v8, v1 + v9);
}

unint64_t sub_1C54896F8()
{
  v2 = qword_1EC15D148;
  if (!qword_1EC15D148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D140, &qword_1C55B1860);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D148);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5489780(uint64_t a1)
{
  sub_1C5412EA0(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  return a1;
}

uint64_t sub_1C54897C8(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1C54130AC(v3, v4, v5 & 1);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5 & 1;
  v7 = *(a1 + 48);
  sub_1C5594CF4();
  result = a2;
  *(a2 + 48) = v7;
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 68) = *(a1 + 68);
  *(a2 + 76) = *(a1 + 76);
  return result;
}

unint64_t sub_1C5489884()
{
  v2 = qword_1EC15D158;
  if (!qword_1EC15D158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D150, &qword_1C55B1868);
    sub_1C548992C();
    sub_1C54894F0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D158);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C548992C()
{
  v2 = qword_1EC15D160;
  if (!qword_1EC15D160)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D160);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54899A8()
{
  v2 = qword_1EC15D170;
  if (!qword_1EC15D170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D168, &qword_1C55B1870);
    sub_1C5489884();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D170);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5489A40()
{
  v2 = qword_1EC15D180;
  if (!qword_1EC15D180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D178, &qword_1C55B1878);
    sub_1C5488BB0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D180);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5489AE4()
{
  v2 = qword_1EC15D188;
  if (!qword_1EC15D188)
  {
    sub_1C5594BB4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D188);
    return WitnessTable;
  }

  return v2;
}

double sub_1C5489B64@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  v8 = v5;
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x60))(v3);
  sub_1C5458604(v7, a3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C5489C0C(uint64_t a1, void *a2)
{
  sub_1C5432498(a1, v6);
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x68))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5489CB4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___AAUISignInDataclassActionInvokingOBWelcomeController_flowDirector;
  swift_beginAccess();
  sub_1C5432498(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1C5489D18(void *a1)
{
  v6 = 0;
  v7 = a1;
  sub_1C5432498(a1, v5);
  __dst = (v1 + OBJC_IVAR___AAUISignInDataclassActionInvokingOBWelcomeController_flowDirector);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(__dst);
  sub_1C5458604(v5, __dst);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t SignInDataclassActionInvokingOBWelcomeController.stage.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR___AAUISignInDataclassActionInvokingOBWelcomeController_stage);
  MEMORY[0x1E69E5928](v4, a2);
  return v4;
}

char *SignInDataclassActionInvokingOBWelcomeController.init(model:flowDirector:)(uint64_t a1, void *a2)
{
  v15 = 0;
  v14 = a1;
  v13 = a2;
  sub_1C5432498(a2, v12);
  sub_1C5458604(v12, OBJC_IVAR___AAUISignInDataclassActionInvokingOBWelcomeController_flowDirector);
  v6 = v15;
  v11 = 0;
  AAUISignInDataclassActionFlowStage.rawValue.getter();
  sub_1C5594CF4();
  v5 = sub_1C5596554();
  MEMORY[0x1E69E5928](v5, v2);

  MEMORY[0x1E69E5920](v5);
  *&v6[OBJC_IVAR___AAUISignInDataclassActionInvokingOBWelcomeController_stage] = v5;
  v10.receiver = v15;
  v10.super_class = type metadata accessor for SignInDataclassActionInvokingOBWelcomeController();
  v9 = objc_msgSendSuper2(&v10, sel_initWithViewModel_, a1);
  MEMORY[0x1E69E5928](v9, v3);
  v15 = v9;
  SignInDataclassActionInvokingOBWelcomeController.setupInvokingActions()();
  SignInDataclassActionInvokingOBWelcomeController.setupNavigationBarButton()();
  __swift_destroy_boxed_opaque_existential_0(a2);
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v15);
  return v9;
}

Swift::Void __swiftcall SignInDataclassActionInvokingOBWelcomeController.setupInvokingActions()()
{
  v73 = sub_1C548C82C;
  v74 = sub_1C548C838;
  v75 = sub_1C545AE98;
  v76 = sub_1C545C6DC;
  v77 = sub_1C545C6D4;
  v78 = sub_1C545C6D4;
  v79 = sub_1C545C6E8;
  v97 = 0;
  v80 = 0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v81 = sub_1C5594C74();
  v82 = *(v81 - 8);
  v83 = v81 - 8;
  v84 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v86, v0, v1, v2);
  v85 = v31 - v84;
  v97 = v3;
  *&v4 = MEMORY[0x1E69E5928](v3, v31 - v84).n128_u64[0];
  v87 = [v86 primaryButton];
  if (v87)
  {
    v72 = v87;
    v70 = v87;
    v91 = v87;
    MEMORY[0x1E69E5920](v86);
    *&v6 = MEMORY[0x1E69E5928](v86, v5).n128_u64[0];
    v7 = [v86 secondaryButton];
    v71 = v7;
    if (v7)
    {
      v69 = v71;
      v68 = v71;
      v90 = v71;
      MEMORY[0x1E69E5920](v86);
      v62 = 0;
      v57 = sub_1C545C6F4();
      MEMORY[0x1E69E5928](v70, v8);
      MEMORY[0x1E69E5928](v86, v9);
      v58 = 7;
      v10 = swift_allocObject();
      v11 = v86;
      v54 = v10;
      *(v10 + 16) = v70;
      *(v10 + 24) = v11;
      v56 = sub_1C54398B0();
      v55 = v12;
      v53 = sub_1C545B878();
      sub_1C53FE664();
      v67 = sub_1C5596A44();
      v89 = v67;
      MEMORY[0x1E69E5928](v86, v13);
      v60 = swift_allocObject();
      *(v60 + 16) = v86;
      v63 = sub_1C54398B0();
      v61 = v14;
      v59 = sub_1C545B878();
      sub_1C53FE664();
      v66 = sub_1C5596A44();
      v88 = v66;
      v64 = 0x1FB0D4000uLL;
      v65 = 64;
      [v70 0x1FB0D4EF8];
      [v68 (v64 + 3832)];
      MEMORY[0x1E69E5920](v66);
      MEMORY[0x1E69E5920](v67);
      MEMORY[0x1E69E5920](v68);
      MEMORY[0x1E69E5920](v70);
      return;
    }

    MEMORY[0x1E69E5920](v86);
    MEMORY[0x1E69E5920](v70);
  }

  else
  {
    MEMORY[0x1E69E5920](v86);
  }

  v15 = v85;
  v16 = sub_1C54B0910();
  (*(v82 + 16))(v15, v16, v81);
  MEMORY[0x1E69E5928](v86, v17);
  v42 = 7;
  v43 = swift_allocObject();
  *(v43 + 16) = v86;
  v51 = sub_1C5594C54();
  v52 = sub_1C5596954();
  v40 = 17;
  v45 = swift_allocObject();
  *(v45 + 16) = 64;
  v46 = swift_allocObject();
  *(v46 + 16) = 8;
  v41 = 32;
  v18 = swift_allocObject();
  v19 = v43;
  v44 = v18;
  *(v18 + 16) = v75;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v44;
  v48 = v20;
  *(v20 + 16) = v76;
  *(v20 + 24) = v21;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v47 = sub_1C5596E04();
  v49 = v22;

  v23 = v45;
  v24 = v49;
  *v49 = v77;
  v24[1] = v23;

  v25 = v46;
  v26 = v49;
  v49[2] = v78;
  v26[3] = v25;

  v27 = v48;
  v28 = v49;
  v49[4] = v79;
  v28[5] = v27;
  sub_1C540FCD8();

  if (os_log_type_enabled(v51, v52))
  {
    v29 = v80;
    v33 = sub_1C5596A74();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v34 = sub_1C5419DC0(1, v32, v32);
    v35 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v36 = &v96;
    v96 = v33;
    v37 = &v95;
    v95 = v34;
    v38 = &v94;
    v94 = v35;
    sub_1C5419E14(2, &v96);
    sub_1C5419E14(1, v36);
    v92 = v77;
    v93 = v45;
    sub_1C5419E28(&v92, v36, v37, v38);
    v39 = v29;
    if (v29)
    {

      __break(1u);
    }

    else
    {
      v92 = v78;
      v93 = v46;
      sub_1C5419E28(&v92, &v96, &v95, &v94);
      v31[0] = 0;
      v92 = v79;
      v93 = v48;
      sub_1C5419E28(&v92, &v96, &v95, &v94);
      _os_log_impl(&dword_1C5355000, v51, v52, "%@: Failed to create buttons.", v33, 0xCu);
      sub_1C5419E74(v34, 1, v32);
      sub_1C5419E74(v35, 0, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v30 = MEMORY[0x1E69E5920](v51);
  (*(v82 + 8))(v85, v81, v30);
}

Swift::Void __swiftcall SignInDataclassActionInvokingOBWelcomeController.setupNavigationBarButton()()
{
  v11[4] = 0;
  if ([objc_opt_self() isSolariumEnabled])
  {
    v6 = [v9 0x1FBB6308ALL];
    [v6 setHidesBackButton_];
    MEMORY[0x1E69E5920](v6);
    v8 = [v9 0x1FBB6308ALL];
    (MEMORY[0x1E69E5920])();
    sub_1C548C840();
    MEMORY[0x1E69E5928](v9, v2);
    v10[3] = type metadata accessor for SignInDataclassActionInvokingOBWelcomeController();
    v10[0] = v9;
    v7 = sub_1C548BF04(24, v10, sel_cancelFlow);
    [v8 setRightBarButtonItem_];
    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](v8);
  }

  else
  {
    v5 = [v9 navigationItem];
    (MEMORY[0x1E69E5920])();
    sub_1C548C840();
    MEMORY[0x1E69E5928](v9, v3);
    v11[3] = type metadata accessor for SignInDataclassActionInvokingOBWelcomeController();
    v11[0] = v9;
    v4 = sub_1C548BF04(1, v11, sel_cancelFlow);
    [v5 setLeftBarButtonItem_];
    MEMORY[0x1E69E5920](v4);
    MEMORY[0x1E69E5920](v5);
  }
}

id SignInDataclassActionInvokingOBWelcomeController.__allocating_init(viewModel:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(v1) initWithViewModel_];
  swift_unknownObjectRelease();
  return v3;
}

id SignInDataclassActionInvokingOBWelcomeController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = objc_allocWithZone(v6);
  v17 = sub_1C5596554();
  if (a4)
  {
    v12 = sub_1C5596554();

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a6)
  {
    v11 = sub_1C5596554();

    v7 = [v15 initWithTitle:v17 detailText:v13 symbolName:v11 contentLayout:?];
  }

  else
  {
    v7 = [v15 initWithTitle:v17 detailText:v13 symbolName:0 contentLayout:?];
  }

  v10 = v7;
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v13);
  MEMORY[0x1E69E5920](v17);

  return v10;
}

id SignInDataclassActionInvokingOBWelcomeController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v13 = sub_1C5596554();
  if (a4)
  {
    v8 = sub_1C5596554();

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v7 = [v11 initWithTitle:v13 detailText:? icon:? contentLayout:?];
  MEMORY[0x1E69E5920](a5);
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v13);

  return v7;
}

id SignInDataclassActionInvokingOBWelcomeController.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignInDataclassActionInvokingOBWelcomeController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1C548B5C8(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL, 19644);
  *a1 = v3;
  v3[4] = (*((**v1 & *MEMORY[0x1E69E7D40]) + 0x70))();
  return sub_1C545A074;
}

Swift::Void __swiftcall SignInDataclassActionInvokingOBWelcomeController.viewWillAppear(_:)(Swift::Bool a1)
{
  v10 = a1;
  v9 = v1;
  (MEMORY[0x1E69E5928])();
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SignInDataclassActionInvokingOBWelcomeController();
  objc_msgSendSuper2(&v8, sel_viewWillAppear_, a1);
  (MEMORY[0x1E69E5920])();
  v7 = [v6 primaryButton];
  if (v7)
  {
    v4 = v7;
    MEMORY[0x1E69E5928](v7, v3);
    sub_1C5401EF8(&v7);
    [v4 hidesBusyIndicator];
    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    sub_1C5401EF8(&v7);
    (MEMORY[0x1E69E5920])();
  }
}

uint64_t sub_1C548B834(uint64_t a1, id a2, void *a3)
{
  v15[8] = a1;
  v15[7] = a2;
  v15[6] = a3;
  [a2 showsBusyIndicator];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C998, &qword_1C55AFD80);
  sub_1C5596E04();
  v8 = v3;
  *v3 = sub_1C55965F4("userSelectedDataclassAction", 27, 1);
  v8[1] = v4;
  sub_1C545CF40();
  v8[2] = sub_1C545B838(1);
  sub_1C540FCD8();
  v15[5] = sub_1C5596454();
  (*((*a3 & *MEMORY[0x1E69E7D40]) + 0x60))();
  v12 = v15[4];
  __swift_project_boxed_opaque_existential_0(v15, v15[3]);
  sub_1C5594CF4();
  v10 = sub_1C5596CB4();
  v11 = *(a3 + OBJC_IVAR___AAUISignInDataclassActionInvokingOBWelcomeController_stage);
  v6 = MEMORY[0x1E69E5928](v11, v5);
  v13[0] = v10;
  v13[1] = v11;
  v14 = 0;
  (*(v12 + 32))(v6);
  sub_1C545CDC0(v13);

  __swift_destroy_boxed_opaque_existential_0(v15);
}

double sub_1C548BA50(uint64_t a1, void *a2)
{
  v30 = a1;
  v37 = a2;
  v34 = sub_1C548C9DC;
  v26 = "Fatal error";
  v27 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v28 = "AppleAccountUI/SignInDataclassActionInvokingOBWelcomeController.swift";
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E830, &unk_1C55AEA50);
  v29 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2, v3, v4, v5);
  v33 = &v20 - v29;
  v31 = (*(*(type metadata accessor for SignInDataclassActionConfirmationAlert(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v30, v37, v6, v7);
  v35 = (&v20 - v31);
  v41 = v8;
  v40 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D1A8, &unk_1C55B1938);
  MEMORY[0x1E69E5928](v37, v10);
  v32 = swift_allocObject();
  *(v32 + 16) = v37;
  sub_1C5554BF4();
  has_malloc_size = _swift_stdlib_has_malloc_size();
  sub_1C55578BC(v34, v32, v33, has_malloc_size & 1, v35);
  v36 = sub_1C5595484();
  v39 = v36;
  [v37 addChildViewController_];
  *&v13 = MEMORY[0x1E69E5928](v37, v12).n128_u64[0];
  v38 = [v37 view];
  MEMORY[0x1E69E5920](v37);
  if (v38)
  {
    v25 = v38;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v23 = v25;
  *&v15 = MEMORY[0x1E69E5928](v36, v14).n128_u64[0];
  v24 = [v36 view];
  *&v16 = MEMORY[0x1E69E5920](v36).n128_u64[0];
  if (v24)
  {
    v22 = v24;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v21 = v22;
  [v23 addSubview_];
  MEMORY[0x1E69E5920](v21);
  MEMORY[0x1E69E5920](v23);
  *&v18 = MEMORY[0x1E69E5928](v37, v17).n128_u64[0];
  [v36 didMoveToParentViewController_];
  MEMORY[0x1E69E5920](v37);
  *&result = MEMORY[0x1E69E5920](v36).n128_u64[0];
  return result;
}

uint64_t sub_1C548BE08(void *a1)
{
  v9[5] = a1;
  (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x60))();
  v6 = v9[4];
  __swift_project_boxed_opaque_existential_0(v9, v9[3]);
  v5 = *(a1 + OBJC_IVAR___AAUISignInDataclassActionInvokingOBWelcomeController_stage);
  v2 = MEMORY[0x1E69E5928](v5, v1);
  v7[0] = 0;
  v7[1] = v5;
  v8 = 1;
  (*(v6 + 32))(v2);
  sub_1C545CDC0(v7);
  return __swift_destroy_boxed_opaque_existential_0(v9);
}

uint64_t sub_1C548BF54()
{
  v47 = sub_1C545AE98;
  v51 = sub_1C545C6DC;
  v53 = sub_1C545C6D4;
  v55 = sub_1C545C6D4;
  v58 = sub_1C545C6E8;
  v74 = 0;
  v39 = 0;
  v44 = sub_1C5594C74();
  v42 = *(v44 - 8);
  v43 = v44 - 8;
  v40 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44, v0, v1, v2);
  v3 = v26 - v40;
  v41 = v26 - v40;
  v74 = v4;
  v5 = sub_1C54B0910();
  (*(v42 + 16))(v3, v5, v44);
  MEMORY[0x1E69E5928](v45, v6);
  v49 = 7;
  v50 = swift_allocObject();
  *(v50 + 16) = v45;
  v62 = sub_1C5594C54();
  v63 = sub_1C5596974();
  v46 = 17;
  v54 = swift_allocObject();
  *(v54 + 16) = 64;
  v56 = swift_allocObject();
  *(v56 + 16) = 8;
  v48 = 32;
  v7 = swift_allocObject();
  v8 = v50;
  v52 = v7;
  *(v7 + 16) = v47;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v52;
  v59 = v9;
  *(v9 + 16) = v51;
  *(v9 + 24) = v10;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v57 = sub_1C5596E04();
  v60 = v11;

  v12 = v54;
  v13 = v60;
  *v60 = v53;
  v13[1] = v12;

  v14 = v56;
  v15 = v60;
  v60[2] = v55;
  v15[3] = v14;

  v16 = v59;
  v17 = v60;
  v60[4] = v58;
  v17[5] = v16;
  sub_1C540FCD8();

  if (os_log_type_enabled(v62, v63))
  {
    v18 = v39;
    v32 = sub_1C5596A74();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v33 = sub_1C5419DC0(1, v31, v31);
    v34 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v35 = &v68;
    v68 = v32;
    v36 = &v67;
    v67 = v33;
    v37 = &v66;
    v66 = v34;
    sub_1C5419E14(2, &v68);
    sub_1C5419E14(1, v35);
    v64 = v53;
    v65 = v54;
    sub_1C5419E28(&v64, v35, v36, v37);
    v38 = v18;
    if (v18)
    {

      __break(1u);
    }

    else
    {
      v64 = v55;
      v65 = v56;
      sub_1C5419E28(&v64, &v68, &v67, &v66);
      v30 = 0;
      v64 = v58;
      v65 = v59;
      sub_1C5419E28(&v64, &v68, &v67, &v66);
      _os_log_impl(&dword_1C5355000, v62, v63, "%@: Deferring action.", v32, 0xCu);
      sub_1C5419E74(v33, 1, v31);
      sub_1C5419E74(v34, 0, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v19 = v45;
  v20 = MEMORY[0x1E69E5920](v62);
  v21 = (*(v42 + 8))(v41, v44, v20);
  v22 = *((*v19 & *MEMORY[0x1E69E7D40]) + 0x60);
  v29 = &v71;
  v22(v21);
  v26[1] = v72;
  v27 = v73;
  __swift_project_boxed_opaque_existential_0(v29, v72);
  v26[0] = *(v45 + OBJC_IVAR___AAUISignInDataclassActionInvokingOBWelcomeController_stage);
  v24 = MEMORY[0x1E69E5928](v26[0], v23);
  v28 = v69;
  v69[0] = 0;
  v69[1] = v26[0];
  v70 = 2;
  (*(v27 + 32))(v24);
  sub_1C545CDC0(v28);
  return __swift_destroy_boxed_opaque_existential_0(v29);
}

id sub_1C548C6C0(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = a3;
  v19 = a2;
  v20 = a1;
  if (a2[3])
  {
    v12 = v19[3];
    v3 = __swift_project_boxed_opaque_existential_0(v19, v12);
    v10 = *(v12 - 8);
    v11 = v10;
    v14 = v8;
    v5 = MEMORY[0x1EEE9AC00](v8, v3, v12, v4);
    v13 = v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v5);
    v15 = sub_1C5596E14();
    (*(v11 + 8))(v13, v12);
    __swift_destroy_boxed_opaque_existential_0(v19);
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v8[1] = v16;
  v9 = [v17 initWithBarButtonSystemItem:v20 target:? action:?];
  swift_unknownObjectRelease();
  return v9;
}

unint64_t sub_1C548C840()
{
  v2 = qword_1EC15D1A0;
  if (!qword_1EC15D1A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15D1A0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C548C9E4()
{
  v2 = *(v0 + 16);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_1C548CA1C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 24);
  MEMORY[0x1E69E5928](v4, a2);
  return v4;
}

uint64_t sub_1C548CA5C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 32);
  MEMORY[0x1E69E5928](v4, a2);
  return v4;
}

uint64_t sub_1C548CA9C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 40);
  MEMORY[0x1E69E5928](v4, a2);
  return v4;
}

uint64_t sub_1C548CADC()
{
  swift_beginAccess();
  v2 = *(v0 + 48);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1C548CB38(char a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
  return swift_endAccess();
}

uint64_t sub_1C548CC04()
{
  swift_getKeyPath();
  (*(*v0 + 648))();

  return sub_1C548CADC() & 1;
}

uint64_t sub_1C548CC8C(int a1)
{
  v16 = a1;
  v13 = a1;
  v19 = 0;
  v14 = 0;
  v20 = a1;
  v18 = sub_1C548CADC() & 1;
  v17 = v16;
  if (sub_1C542908C(&v18, &v17))
  {
    v1 = v15;
    v2 = v14;
    KeyPath = swift_getKeyPath();
    v9 = KeyPath;

    v11 = &v7;
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath, &v7, v3, v4);
    (*(*v1 + 656))(v5);
    v12 = v2;

    return v12;
  }

  else
  {
    sub_1C548CB38(v13 & 1);
    return v14;
  }
}

void (*sub_1C548CE98(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL, 61335);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64), 61335);
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 648))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5498AE0();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C548CBA0();
  return sub_1C548D078;
}

void sub_1C548D078(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C548D134(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C548D134(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C548D134(uint64_t a1)
{
  v7 = a1;
  v15 = 0;
  v13 = sub_1C5594B24();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13, v1, v13, v2);
  v12 = &v5 - v6;
  v15 = v7;
  (*(v10 + 16))(&v5 - v6, v7 + OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar, v3);
  v8 = &v14;
  v14 = v7;
  KeyPath = swift_getKeyPath();
  sub_1C5498AE0();
  sub_1C5594AF4();

  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C548D270()
{
  swift_beginAccess();
  v2 = *(v0 + 56);
  swift_endAccess();
  return v2;
}

uint64_t sub_1C548D2C8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
  return swift_endAccess();
}

uint64_t sub_1C548D3A4()
{
  swift_getKeyPath();
  (*(*v0 + 648))();

  return sub_1C548D270();
}

uint64_t sub_1C548D428@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 248))(v2);
}

uint64_t sub_1C548D4A8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 256))(v3);
}

uint64_t sub_1C548D52C(uint64_t a1)
{
  v15 = a1;
  v16 = 0;
  v19[1] = 0;
  v13 = 0;
  v19[2] = a1;
  v19[0] = sub_1C548D270();
  v18 = v15;
  v17 = type metadata accessor for CNMeCardSharingAudience(0);
  sub_1C5498C6C();
  if (sub_1C542908C(v19, &v18))
  {
    v1 = v14;
    v2 = v13;
    KeyPath = swift_getKeyPath();
    v9 = KeyPath;

    v11 = &v7;
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath, &v7, v3, v4);
    (*(*v1 + 656))(v5);
    v12 = v2;

    return v12;
  }

  else
  {
    sub_1C548D2C8(v15);
    return v13;
  }
}

void (*sub_1C548D724(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL, 29914);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64), 29914);
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 648))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5498AE0();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C548D328();
  return sub_1C548D904;
}

void sub_1C548D904(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C548D9C0(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C548D9C0(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C548D9C0(uint64_t a1)
{
  v7 = a1;
  v15 = 0;
  v13 = sub_1C5594B24();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13, v1, v13, v2);
  v12 = &v5 - v6;
  v15 = v7;
  (*(v10 + 16))(&v5 - v6, v7 + OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar, v3);
  v8 = &v14;
  v14 = v7;
  KeyPath = swift_getKeyPath();
  sub_1C5498AE0();
  sub_1C5594AF4();

  return (*(v10 + 8))(v12, v13);
}