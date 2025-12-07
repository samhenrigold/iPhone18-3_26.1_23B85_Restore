uint64_t sub_251F58700()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_251F63894();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v10 | 7);
}

uint64_t sub_251F58860()
{
  v1 = sub_251F63894();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_251F63834();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v10 | 7);
}

uint64_t sub_251F589D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251F63924();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_251F58A8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_251F63924();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_251F58B44()
{
  v1 = *(type metadata accessor for TopicRegistryListEvaluator(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_251F63924();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_251F58C44()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251F58C7C()
{
  v1 = *(v0 + 16);
  v2 = sub_251F63894();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (((*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 16) & ~v7;
  v9 = *(v6 + 64);
  v10 = v4 | v7;

  (*(v3 + 8))(v0 + v5, v2);

  (*(v6 + 8))(v0 + v8, v1);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_251F58DDC()
{
  v1 = sub_251F63894();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_251F58EE0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251F58F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v73 = a6;
  v75 = a3;
  v76 = a4;
  v71 = a1;
  v10 = sub_251F63964();
  v81 = *(v10 - 8);
  v82 = v10;
  MEMORY[0x28223BE20](v10);
  v80 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_251F63984();
  v78 = *(v12 - 8);
  v79 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v77 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a5;
  v70 = *(a5 - 8);
  MEMORY[0x28223BE20](v13);
  v68 = v15;
  v69 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_251F63894();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v83 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v61 - v20;
  v22 = sub_251F63954();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251F63934();
  v26 = *(v17 + 16);
  v72 = a2;
  v84 = v16;
  v65 = v26;
  v26(v21, a2, v16);

  v27 = sub_251F63944();
  v28 = sub_251F63A54();

  v29 = os_log_type_enabled(v27, v28);
  v67 = v17;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v62 = v28;
    v31 = v30;
    v64 = swift_slowAlloc();
    v85 = v7;
    aBlock[0] = v64;
    *v31 = 136315394;

    v32 = sub_251F639D4();
    v61 = v27;
    v34 = sub_251F5C368(v32, v33, aBlock);
    v63 = v22;
    v35 = v34;

    *(v31 + 4) = v35;
    *(v31 + 12) = 2082;
    sub_251F5A744(&qword_27F4C5278, MEMORY[0x277D125D0], MEMORY[0x277D125E8]);
    v36 = v23;
    v37 = v84;
    v38 = sub_251F63B84();
    v40 = v39;
    (*(v17 + 8))(v21, v37);
    v41 = sub_251F5C368(v38, v40, aBlock);

    *(v31 + 14) = v41;
    v42 = v61;
    _os_log_impl(&dword_251F57000, v61, v62, "%s: Execute request for %{public}s", v31, 0x16u);
    v43 = v64;
    swift_arrayDestroy();
    MEMORY[0x253094780](v43, -1, -1);
    MEMORY[0x253094780](v31, -1, -1);

    (*(v36 + 8))(v25, v63);
  }

  else
  {

    (*(v17 + 8))(v21, v84);
    (*(v23 + 8))(v25, v22);
  }

  v64 = *(v7 + 40);
  v44 = v70;
  v45 = v69;
  v46 = v74;
  (*(v70 + 16))(v69, v71, v74);
  v47 = v84;
  v65(v83, v72, v84);
  v48 = (*(v44 + 80) + 40) & ~*(v44 + 80);
  v49 = v67;
  v50 = (v68 + *(v67 + 80) + v48) & ~*(v67 + 80);
  v51 = (v66 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v53 = v73;
  *(v52 + 2) = v46;
  *(v52 + 3) = v53;
  *(v52 + 4) = v7;
  (*(v44 + 32))(&v52[v48], v45, v46);
  (*(v49 + 32))(&v52[v50], v83, v47);
  v54 = &v52[v51];
  v55 = v76;
  *v54 = v75;
  v54[1] = v55;
  aBlock[4] = sub_251F5A5C8;
  aBlock[5] = v52;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251F59854;
  aBlock[3] = &block_descriptor;
  v56 = _Block_copy(aBlock);

  v57 = v77;
  sub_251F63974();
  v85 = MEMORY[0x277D84F90];
  sub_251F5A744(&qword_27F4C5260, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_251F5A6EC(0);
  sub_251F5A744(&qword_27F4C5270, sub_251F5A6EC, MEMORY[0x277D83970]);
  v58 = v80;
  v59 = v82;
  sub_251F63AB4();
  MEMORY[0x253094140](0, v57, v58, v56);
  _Block_release(v56);
  (*(v81 + 8))(v58, v59);
  (*(v78 + 8))(v57, v79);
}

uint64_t sub_251F59718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12[1] = a7;
  v7 = sub_251F63834();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, *MEMORY[0x277D125B0], v7);
  sub_251F63864();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_251F59854(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_251F59898(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v69 = a4;
  v70 = a5;
  v68 = a3;
  v80 = a1;
  v8 = sub_251F63964();
  v75 = *(v8 - 8);
  v76 = v8;
  MEMORY[0x28223BE20](v8);
  v74 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_251F63984();
  v72 = *(v10 - 8);
  v73 = v10;
  MEMORY[0x28223BE20](v10);
  v71 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_251F63834();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = v12;
  v79 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_251F63894();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v62 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v57 - v17;
  v19 = sub_251F63954();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251F63934();
  v23 = *(v14 + 16);
  v67 = a2;
  v78 = v13;
  v60 = v23;
  v23(v18, a2, v13);

  v24 = v6;
  v25 = sub_251F63944();
  v26 = sub_251F63A54();

  v27 = os_log_type_enabled(v25, v26);
  v77 = v24;
  v63 = v14;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v59 = v20;
    v29 = v28;
    v58 = swift_slowAlloc();
    v81 = v24;
    aBlock[0] = v58;
    *v29 = 136315394;

    v30 = sub_251F639D4();
    v32 = sub_251F5C368(v30, v31, aBlock);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2082;
    sub_251F5A744(&qword_27F4C5278, MEMORY[0x277D125D0], MEMORY[0x277D125E8]);
    v57 = v19;
    v33 = v78;
    v34 = sub_251F63B84();
    v36 = v35;
    (*(v14 + 8))(v18, v33);
    v37 = sub_251F5C368(v34, v36, aBlock);

    *(v29 + 14) = v37;
    v24 = v77;
    _os_log_impl(&dword_251F57000, v25, v26, "%s: Execute remote request for %{public}s", v29, 0x16u);
    v38 = v58;
    swift_arrayDestroy();
    MEMORY[0x253094780](v38, -1, -1);
    MEMORY[0x253094780](v29, -1, -1);

    (*(v59 + 8))(v22, v57);
  }

  else
  {

    (*(v14 + 8))(v18, v78);
    (*(v20 + 8))(v22, v19);
  }

  v59 = *(v24 + 40);
  v39 = v62;
  v40 = v78;
  v60(v62, v67, v78);
  v41 = v65;
  v42 = v66;
  (*(v65 + 16))(v79, v68, v66);
  v43 = v63;
  v44 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v45 = (v61 + *(v41 + 80) + v44) & ~*(v41 + 80);
  v46 = (v64 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  v48 = v80;
  *(v47 + 16) = v24;
  *(v47 + 24) = v48;
  (*(v43 + 32))(v47 + v44, v39, v40);
  (*(v41 + 32))(v47 + v45, v79, v42);
  v49 = (v47 + v46);
  v50 = v70;
  *v49 = v69;
  v49[1] = v50;
  aBlock[4] = sub_251F5A78C;
  aBlock[5] = v47;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251F59854;
  aBlock[3] = &block_descriptor_9;
  v51 = _Block_copy(aBlock);

  v52 = v80;

  v53 = v71;
  sub_251F63974();
  v81 = MEMORY[0x277D84F90];
  sub_251F5A744(&qword_27F4C5260, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_251F5A6EC(0);
  sub_251F5A744(&qword_27F4C5270, sub_251F5A6EC, MEMORY[0x277D83970]);
  v54 = v74;
  v55 = v76;
  sub_251F63AB4();
  MEMORY[0x253094140](0, v53, v54, v51);
  _Block_release(v51);
  (*(v75 + 8))(v54, v55);
  (*(v72 + 8))(v53, v73);
}

uint64_t sub_251F5A0A8()
{
  v0 = sub_251F63794();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - v5;
  sub_251F5AA88(&v23 - v5);
  sub_251F5A888();
  (*(v1 + 16))(v4, v6, v0);
  v7 = sub_251F63A74();
  v8 = sub_251F63844();
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_251F63B24();
  MEMORY[0x2530940B0](0xD000000000000013, 0x8000000251F649C0);
  v9 = *(sub_251F63784() + 16);

  v24 = v9;
  v10 = sub_251F63B84();
  MEMORY[0x2530940B0](v10);

  MEMORY[0x2530940B0](657961, 0xE300000000000000);
  v11 = [v7 formattedTable];
  v12 = sub_251F639C4();
  v14 = v13;

  MEMORY[0x2530940B0](v12, v14);

  MEMORY[0x2530940B0](0xD000000000000013, 0x8000000251F649E0);
  v24 = *(v8 + 16);
  v15 = sub_251F63B84();
  MEMORY[0x2530940B0](v15);

  MEMORY[0x2530940B0](657961, 0xE300000000000000);
  v16 = sub_251F63A64();
  v17 = [v16 formattedTable];

  v18 = sub_251F639C4();
  v20 = v19;

  MEMORY[0x2530940B0](v18, v20);

  v21 = v25;
  (*(v1 + 8))(v6, v0);
  return v21;
}

uint64_t sub_251F5A388()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

id sub_251F5A55C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_251F5A5C8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  v4 = *(*(v1 - 8) + 64);
  v5 = *(sub_251F63894() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0[4];
  v8 = (v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_251F59718(v7, v0 + v3, v0 + v6, v9, v10, v1, v2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_251F5A6EC(uint64_t a1)
{
  if (!qword_27F4C5268)
  {
    sub_251F63964();
    v1 = sub_251F63A34();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4C5268);
    }
  }
}

uint64_t sub_251F5A744(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251F5A78C()
{
  sub_251F63894();
  sub_251F63834();
  return sub_251F638B4();
}

unint64_t sub_251F5A888()
{
  result = qword_27F4C52E0;
  if (!qword_27F4C52E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4C52E0);
  }

  return result;
}

void *sub_251F5A8D4(uint64_t a1)
{
  v2 = v1;
  v1[2] = a1;
  sub_251F63874();
  swift_allocObject();
  swift_retain_n();
  v1[3] = sub_251F63824();
  sub_251F638C4();
  swift_allocObject();

  v1[4] = sub_251F638A4();
  v3 = sub_251F639B4();
  v4 = HKCreateSerialDispatchQueue();

  v2[5] = v4;
  v2[6] = [objc_allocWithZone(type metadata accessor for HealthTopicsDiagnostics()) init];
  swift_weakAssign();
  return v2;
}

uint64_t sub_251F5A9E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_251F5AA08(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_2813DD578[0])
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, qword_2813DD578);
    }
  }
}

uint64_t sub_251F5AA88@<X0>(uint64_t a1@<X8>)
{
  sub_251F5AF34(0);
  v53 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v52 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v51 = v42 - v5;
  v50 = sub_251F63764();
  v6 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_251F637D4();
  v10 = *(v9 + 16);
  if (v10)
  {
    v42[1] = a1;
    v56 = MEMORY[0x277D84F90];
    sub_251F5B580(0, v10, 0);
    v11 = v56;
    v12 = v9 + 64;
    result = sub_251F63AC4();
    v14 = result;
    v15 = 0;
    v16 = *(v9 + 36);
    v48 = v6 + 32;
    v49 = v6;
    v43 = v9 + 72;
    v44 = v10;
    v45 = v16;
    v46 = v9 + 64;
    v47 = v9;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(v9 + 32))
    {
      v18 = v14 >> 6;
      if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_22;
      }

      if (v16 != *(v9 + 36))
      {
        goto LABEL_23;
      }

      v54 = v15;
      v55 = 1 << v14;
      v19 = v53;
      v20 = *(v53 + 48);
      v21 = *(v9 + 48);
      v22 = sub_251F63924();
      v23 = *(v22 - 8);
      v24 = v11;
      v25 = v8;
      v26 = v23;
      v27 = v21 + *(v23 + 72) * v14;
      v28 = v51;
      (*(v23 + 16))(v51, v27, v22);
      sub_251F5B76C(*(v9 + 56) + 40 * v14, &v28[v20]);
      v29 = v52;
      (*(v26 + 32))(v52, v28, v22);
      v8 = v25;
      v11 = v24;
      v30 = (v29 + *(v19 + 48));
      sub_251F5B7D0(&v28[v20], v30);
      v32 = v30[3];
      v31 = v30[4];
      __swift_project_boxed_opaque_existential_1(v30, v32);
      sub_251F5B14C(v32, v31);
      sub_251F5BCE4(v29, sub_251F5AF34);
      v56 = v24;
      v34 = *(v24 + 16);
      v33 = *(v24 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_251F5B580((v33 > 1), v34 + 1, 1);
        v11 = v56;
      }

      *(v11 + 16) = v34 + 1;
      result = (*(v49 + 32))(v11 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v34, v8, v50);
      v9 = v47;
      v17 = 1 << *(v47 + 32);
      if (v14 >= v17)
      {
        goto LABEL_24;
      }

      v12 = v46;
      v35 = *(v46 + 8 * v18);
      if ((v35 & v55) == 0)
      {
        goto LABEL_25;
      }

      LODWORD(v16) = v45;
      if (v45 != *(v47 + 36))
      {
        goto LABEL_26;
      }

      v36 = v35 & (-2 << (v14 & 0x3F));
      if (v36)
      {
        v17 = __clz(__rbit64(v36)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v37 = v18 << 6;
        v38 = v18 + 1;
        v39 = (v43 + 8 * v18);
        while (v38 < (v17 + 63) >> 6)
        {
          v41 = *v39++;
          v40 = v41;
          v37 += 64;
          ++v38;
          if (v41)
          {
            result = sub_251F5B82C(v14, v45, 0);
            v17 = __clz(__rbit64(v40)) + v37;
            goto LABEL_4;
          }
        }

        result = sub_251F5B82C(v14, v45, 0);
      }

LABEL_4:
      v15 = v54 + 1;
      v14 = v17;
      if (v54 + 1 == v44)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_20:

    return sub_251F63774();
  }

  return result;
}

void sub_251F5AF34(uint64_t a1)
{
  if (!qword_27F4C5350)
  {
    sub_251F63924();
    sub_251F5BC88(255, &unk_2813DD7A0, MEMORY[0x277D12598]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4C5350);
    }
  }
}

uint64_t sub_251F5AFB8(uint64_t a1, void (*a2)(char *, uint64_t))
{
  sub_251F5BC08(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_251F63794();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TopicRegistryListEvaluator(0);
  sub_251F5AA88(v9);
  (*(v7 + 16))(v5, v9, v6);
  swift_storeEnumTagMultiPayload();
  a2(v5, 1);
  sub_251F5BCE4(v5, sub_251F5BC08);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_251F5B14C(uint64_t a1, uint64_t a2)
{
  v2 = sub_251F63924();
  MEMORY[0x28223BE20](v2 - 8);
  sub_251F63814();
  swift_getAssociatedTypeWitness();
  swift_getMetatypeMetadata();
  sub_251F639E4();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getMetatypeMetadata();
  sub_251F639E4();
  swift_getMetatypeMetadata();
  sub_251F639E4();
  return sub_251F63754();
}

uint64_t sub_251F5B304@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_251F63924();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_251F5B36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_251F63744();
  MEMORY[0x28223BE20](v12);
  (*(v14 + 16))(&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  sub_251F5BAB0(v5, v11);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = (v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_251F5BB14(v11, v17 + v15);
  v18 = (v17 + v16);
  *v18 = a2;
  v18[1] = a3;
  sub_251F5BA68(&qword_27F4C5370, MEMORY[0x277D12558], MEMORY[0x277D12550]);

  return sub_251F638D4();
}

void *sub_251F5B580(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251F5B5A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_251F5B5A0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_251F5B838(0);
  v10 = *(sub_251F63764() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_251F63764() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_251F5B76C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_251F5B7D0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_251F5B82C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_251F5B838(uint64_t a1)
{
  if (!qword_27F4C5358)
  {
    sub_251F63764();
    v1 = sub_251F63B94();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4C5358);
    }
  }
}

uint64_t type metadata accessor for TopicRegistryListEvaluator(uint64_t a1)
{
  result = qword_2813DD600;
  if (!qword_2813DD600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251F5B908(uint64_t a1)
{
  result = sub_251F63924();
  if (v2 <= 0x3F)
  {
    result = sub_251F63804();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_251F5B9D4(uint64_t a1)
{
  if (!qword_27F4C5368)
  {
    sub_251F63744();
    sub_251F5BA68(&qword_27F4C5370, MEMORY[0x277D12558], MEMORY[0x277D12550]);
    v1 = sub_251F638E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4C5368);
    }
  }
}

uint64_t sub_251F5BA68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251F5BAB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicRegistryListEvaluator(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251F5BB14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicRegistryListEvaluator(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251F5BB78()
{
  v1 = *(type metadata accessor for TopicRegistryListEvaluator(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_251F5AFB8(v0 + v2, v3);
}

void sub_251F5BC08(uint64_t a1)
{
  if (!qword_27F4C5378)
  {
    sub_251F63794();
    sub_251F5BC88(255, &qword_27F4C5380, MEMORY[0x277D84948]);
    v1 = sub_251F63BC4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4C5378);
    }
  }
}

uint64_t sub_251F5BC88(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_251F5BCE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_251F5BDF8(void *a1, uint64_t a2)
{
  swift_getObjectType();
  v3 = sub_251F63954();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  sub_251F63934();
  v10 = sub_251F63944();
  v11 = sub_251F63A54();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v34 = v4;
    v35 = v3;
    v14 = v13;
    v36 = v13;
    *v12 = 136446210;
    v15 = sub_251F63BD4();
    v17 = sub_251F5C368(v15, v16, &v36);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_251F57000, v10, v11, "[%{public}s] returning extension for profile", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    v18 = v14;
    v4 = v34;
    v3 = v35;
    MEMORY[0x253094780](v18, -1, -1);
    MEMORY[0x253094780](v12, -1, -1);
  }

  v19 = *(v4 + 8);
  v19(v9, v3);
  v20 = [a1 profileIdentifier];
  v21 = [v20 type];

  if (v21 == 1 && (objc_opt_self(), (v22 = swift_dynamicCastObjCClass()) != 0))
  {
    v23 = v22;
    objc_allocWithZone(type metadata accessor for DaemonTopicsProfileExtension());
    v24 = a1;
    return sub_251F61DDC(v23);
  }

  else
  {
    sub_251F63934();
    v26 = sub_251F63944();
    v27 = sub_251F63A54();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36 = v29;
      *v28 = 136446210;
      v30 = sub_251F63BD4();
      v32 = sub_251F5C368(v30, v31, &v36);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_251F57000, v26, v27, "[%{public}s] profile extension not supported for non-primary profile", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x253094780](v29, -1, -1);
      MEMORY[0x253094780](v28, -1, -1);
    }

    v19(v7, v3);
    return 0;
  }
}

id HealthTopicsDaemonPluginObject.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HealthTopicsDaemonPluginObject.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthTopicsDaemonPluginObject();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HealthTopicsDaemonPluginObject.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HealthTopicsDaemonPluginObject();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t HealthTopicsDaemonPluginObject.taskServerClasses()()
{
  sub_251F5CB1C(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_251F64670;
  *(v0 + 32) = type metadata accessor for HealthTopicsTaskServer();
  return v0;
}

unint64_t sub_251F5C368(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_251F5C434(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_251F5CC74(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_251F5C434(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_251F5C540(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_251F63B54();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_251F5C540(uint64_t a1, unint64_t a2)
{
  v3 = sub_251F5C58C(a1, a2);
  sub_251F5C6BC(&unk_286432198);
  return v3;
}

void *sub_251F5C58C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_251F5C7A8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_251F63B54();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_251F63A04();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_251F5C7A8(v10, 0);
        result = sub_251F63B14();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_251F5C6BC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_251F5C810(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_251F5C7A8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_251F5CCD0();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_251F5C810(char *result, int64_t a2, char a3, char *a4)
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
    sub_251F5CCD0();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_251F5C8F8(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v2 = sub_251F63954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251F63934();
  v6 = sub_251F63944();
  v7 = sub_251F63A54();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    v10 = sub_251F63BD4();
    v12 = sub_251F5C368(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_251F57000, v6, v7, "[%{public}s] returning extension for healthd", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x253094780](v9, -1, -1);
    MEMORY[0x253094780](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_251F5CB1C(uint64_t a1)
{
  if (!qword_2813DD540)
  {
    sub_251F5CB74();
    v1 = sub_251F63B94();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DD540);
    }
  }
}

unint64_t sub_251F5CB74()
{
  result = qword_2813DD538;
  if (!qword_2813DD538)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2813DD538);
  }

  return result;
}

uint64_t dispatch thunk of HealthTopicsDaemonPluginObject.extension(for:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x58))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x60))();
}

uint64_t sub_251F5CC74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_251F5CCD0()
{
  if (!qword_27F4C5448)
  {
    v0 = sub_251F63B94();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4C5448);
    }
  }
}

uint64_t sub_251F5CD20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v65 = a2;
  v66 = a3;
  v59 = *v7;
  v12 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v63 = v13;
  v73 = &v55[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_251F63894();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v69 = &v55[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v55[-v18];
  v20 = sub_251F63954();
  v60 = *(v20 - 8);
  v61 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v55[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v76[3] = a4;
  v76[4] = a5;
  v68 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v76);
  v64 = v12;
  v24 = *(v12 + 16);
  v72 = a1;
  v67 = a4;
  v24(boxed_opaque_existential_1, a1, a4);
  sub_251F63884();
  sub_251F63934();
  v70 = v15;
  v71 = v14;
  v25 = *(v15 + 16);
  v74 = a6;
  v25(v19, a6, v14);

  v26 = sub_251F63944();
  v27 = sub_251F63A54();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v58 = v25;
    v29 = v28;
    v57 = swift_slowAlloc();
    v75 = v7;
    v76[0] = v57;
    *v29 = 136446466;

    v30 = sub_251F639D4();
    v56 = v27;
    v32 = sub_251F5C368(v30, v31, v76);
    v59 = v24;
    v33 = v32;

    *(v29 + 4) = v33;
    *(v29 + 12) = 2082;
    sub_251F5DDB8();
    v34 = v71;
    v35 = sub_251F63B84();
    v37 = v36;
    (*(v70 + 8))(v19, v34);
    v38 = sub_251F5C368(v35, v37, v76);

    *(v29 + 14) = v38;
    v24 = v59;
    _os_log_impl(&dword_251F57000, v26, v56, "%{public}s: start request for %{public}s", v29, 0x16u);
    v39 = v57;
    swift_arrayDestroy();
    MEMORY[0x253094780](v39, -1, -1);
    v40 = v29;
    v25 = v58;
    MEMORY[0x253094780](v40, -1, -1);
  }

  else
  {

    (*(v70 + 8))(v19, v71);
  }

  (*(v60 + 8))(v22, v61);
  v61 = v7[2];
  v41 = v71;
  v25(v69, v74, v71);
  v42 = v67;
  v24(v73, v72, v67);
  v43 = v70;
  v44 = (*(v70 + 80) + 40) & ~*(v70 + 80);
  v45 = (v62 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = v7;
  v47 = v64;
  v48 = (*(v64 + 80) + v45 + 16) & ~*(v64 + 80);
  v49 = swift_allocObject();
  v51 = v68;
  v50 = v69;
  *(v49 + 2) = v42;
  *(v49 + 3) = v51;
  *(v49 + 4) = v46;
  (*(v43 + 32))(&v49[v44], v50, v41);
  v52 = &v49[v45];
  v53 = v66;
  *v52 = v65;
  v52[1] = v53;
  (*(v47 + 32))(&v49[v48], v73, v42);

  sub_251F58F18(v72, v74, sub_251F5DEAC, v49, v42, v51);
}

uint64_t sub_251F5D294(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v58 = a2;
  v57 = *v5;
  v62 = sub_251F63894();
  v8 = *(v62 - 8);
  v9 = MEMORY[0x28223BE20](v62);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v55 - v12;
  v14 = sub_251F63954();
  v60 = *(v14 - 8);
  v61 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v59 = (&v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v18 = &v55 - v17;
  sub_251F5DFEC();
  v19 = sub_251F63BC4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = (&v55 - v21);
  (*(v20 + 16))(&v55 - v21, a1, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    sub_251F63934();
    (*(v8 + 16))(v11, a3, v62);

    v24 = v23;
    v25 = sub_251F63944();
    v26 = sub_251F63A44();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v63 = v5;
      v64 = v56;
      *v27 = 136446978;

      v29 = sub_251F639D4();
      v31 = sub_251F5C368(v29, v30, &v64);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2082;
      sub_251F5DDB8();
      v32 = v62;
      v33 = sub_251F63B84();
      v35 = v34;
      (*(v8 + 8))(v11, v32);
      v36 = sub_251F5C368(v33, v35, &v64);

      *(v27 + 14) = v36;
      *(v27 + 22) = 1026;
      *(v27 + 24) = v58 & 1;
      *(v27 + 28) = 2114;
      v37 = v23;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 30) = v38;
      *v28 = v38;
      _os_log_impl(&dword_251F57000, v25, v26, "%{public}s: Deliver failure response for %{public}s, finished = %{BOOL,public}d: %{public}@", v27, 0x26u);
      sub_251F5E050(v28);
      MEMORY[0x253094780](v28, -1, -1);
      v39 = v56;
      swift_arrayDestroy();
      MEMORY[0x253094780](v39, -1, -1);
      MEMORY[0x253094780](v27, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v11, v62);
    }

    return (*(v60 + 8))(v59, v61);
  }

  else
  {
    sub_251F63934();
    (*(v8 + 16))(v13, a3, v62);

    v40 = sub_251F63944();
    v41 = sub_251F63A54();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v56 = v40;
      v43 = v42;
      v59 = swift_slowAlloc();
      v63 = v5;
      v64 = v59;
      *v43 = 136446722;

      v44 = sub_251F639D4();
      LODWORD(v57) = v41;
      v46 = sub_251F5C368(v44, v45, &v64);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      sub_251F5DDB8();
      v47 = v62;
      v48 = sub_251F63B84();
      v50 = v49;
      (*(v8 + 8))(v13, v47);
      v51 = sub_251F5C368(v48, v50, &v64);

      *(v43 + 14) = v51;
      *(v43 + 22) = 1026;
      *(v43 + 24) = v58 & 1;
      v52 = v56;
      _os_log_impl(&dword_251F57000, v56, v57, "%{public}s: Deliver sucess response for %{public}s, finished = %{BOOL,public}d", v43, 0x1Cu);
      v53 = v59;
      swift_arrayDestroy();
      MEMORY[0x253094780](v53, -1, -1);
      MEMORY[0x253094780](v43, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v13, v62);
    }

    (*(v60 + 8))(v18, v61);
    return (*(v20 + 8))(v22, v19);
  }
}

uint64_t sub_251F5D938(uint64_t a1)
{
  v26 = *v1;
  v3 = sub_251F63894();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_251F63954();
  v27 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251F63934();
  (*(v4 + 16))(v6, a1, v3);

  v10 = sub_251F63944();
  v11 = sub_251F63A54();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v25 = v7;
    v13 = v12;
    v24 = swift_slowAlloc();
    v28 = v1;
    v29 = v24;
    *v13 = 136446466;

    v14 = sub_251F639D4();
    v16 = sub_251F5C368(v14, v15, &v29);
    v26 = a1;
    v17 = v16;

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    sub_251F5DDB8();
    v18 = sub_251F63B84();
    v20 = v19;
    (*(v4 + 8))(v6, v3);
    v21 = sub_251F5C368(v18, v20, &v29);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_251F57000, v10, v11, "%{public}s: cancel request for token %{public}s", v13, 0x16u);
    v22 = v24;
    swift_arrayDestroy();
    MEMORY[0x253094780](v22, -1, -1);
    MEMORY[0x253094780](v13, -1, -1);

    (*(v27 + 8))(v9, v25);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
    (*(v27 + 8))(v9, v7);
  }

  return sub_251F63854();
}

uint64_t sub_251F5DC80()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_251F5DCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a2;
  v12[5] = a3;

  sub_251F5CD20(a1, sub_251F5DE10, v12, a4, a5, a6);
}

unint64_t sub_251F5DDB8()
{
  result = qword_27F4C5278;
  if (!qword_27F4C5278)
  {
    sub_251F63894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C5278);
  }

  return result;
}

uint64_t sub_251F5DE10(uint64_t a1)
{
  v2 = *(v1 + 32);
  v4 = a1;
  return v2(&v4);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_251F5DEAC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = *(v3 + 16);
  v7 = *(sub_251F63894() - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + *(*(v6 - 8) + 80) + 16) & ~*(*(v6 - 8) + 80);
  v11 = *(v3 + 32);
  v12 = *(v3 + v9);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_251F5D294(a1, a2, v3 + v8, AssociatedTypeWitness);
  return v12(v11, v3 + v8, v3 + v10, a1);
}

unint64_t sub_251F5DFEC()
{
  result = qword_27F4C5380;
  if (!qword_27F4C5380)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F4C5380);
  }

  return result;
}

uint64_t sub_251F5E050(uint64_t a1)
{
  sub_251F5E0AC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_251F5E0AC(uint64_t a1)
{
  if (!qword_27F4C5450)
  {
    sub_251F5E104();
    v1 = sub_251F63A94();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4C5450);
    }
  }
}

unint64_t sub_251F5E104()
{
  result = qword_27F4C5458;
  if (!qword_27F4C5458)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4C5458);
  }

  return result;
}

id sub_251F5E33C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [objc_opt_self() interfaceWithProtocol_];

  return v3;
}

void sub_251F5E390()
{
  v1 = sub_251F63894();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v29 = v28 - v6;
  v30 = v0;
  v7 = *&v0[OBJC_IVAR___HDHealthTopicsTaskServer_protectedState];
  os_unfair_lock_lock((v7 + 24));
  v8 = *(v7 + 16);
  *(v7 + 16) = MEMORY[0x277D84FA0];
  os_unfair_lock_unlock((v7 + 24));
  v9 = 0;
  v11 = v8 + 56;
  v10 = *(v8 + 56);
  v31 = v8;
  v12 = 1 << *(v8 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v10;
  v15 = (v12 + 63) >> 6;
  v28[1] = v2 + 32;
  v28[2] = v2 + 16;
  v28[0] = v2 + 8;
  while (v14)
  {
LABEL_10:
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v18 = v29;
    (*(v2 + 16))(v29, *(v31 + 48) + *(v2 + 72) * (v17 | (v9 << 6)), v1);
    (*(v2 + 32))(v5, v18, v1);
    v19 = [v30 profile];
    if (!v19)
    {
      goto LABEL_4;
    }

    v20 = v19;
    sub_251F637A4();
    v21 = sub_251F639B4();

    v22 = [v20 profileExtensionWithIdentifier_];

    if (v22)
    {
      sub_251F63AA4();
      swift_unknownObjectRelease();
    }

    else
    {

      v33 = 0u;
      v34 = 0u;
    }

    v35[0] = v33;
    v35[1] = v34;
    if (*(&v34 + 1))
    {
      sub_251F61C08();
      if (swift_dynamicCast())
      {
        v23 = v32;
        v24 = *(v32 + OBJC_IVAR____TtC24HealthTopicsDaemonPlugin28DaemonTopicsProfileExtension_protectedState);
        os_unfair_lock_lock((v24 + 20));
        v25 = *(v24 + 16);
        *(v24 + 16) = 0;
        os_unfair_lock_unlock((v24 + 20));
        if (v25 == 1)
        {
          Strong = swift_unknownObjectUnownedLoadStrong();
          v27 = *(*(*(v23 + OBJC_IVAR____TtC24HealthTopicsDaemonPlugin28DaemonTopicsProfileExtension_topicStoreImplementation) + 16) + 16);

          sub_251F61FBC(Strong, v27);
        }

        swift_unknownObjectRelease();
        sub_251F63854();
        (*v28[0])(v5, v1);
      }

      else
      {
LABEL_4:
        (*v28[0])(v5, v1);
      }
    }

    else
    {
      (*v28[0])(v5, v1);
      sub_251F61B58(v35);
    }
  }

  while (1)
  {
    v16 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v16 >= v15)
    {

      return;
    }

    v14 = *(v11 + 8 * v16);
    ++v9;
    if (v14)
    {
      v9 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_251F5E7B8(uint64_t (*a1)(void), const char *a2, ...)
{
  v5 = sub_251F63954();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251F63934();
  v9 = v2;
  v10 = sub_251F63944();
  v11 = a1();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23 = a2;
    v13 = v12;
    v22 = swift_slowAlloc();
    v24 = v22;
    *v13 = 136446210;
    v14 = v9;
    v15 = [v14 description];
    v16 = sub_251F639C4();
    v21 = v5;
    v18 = v17;

    v19 = sub_251F5C368(v16, v18, &v24);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_251F57000, v10, v11, v23, v13, 0xCu);
    v20 = v22;
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x253094780](v20, -1, -1);
    MEMORY[0x253094780](v13, -1, -1);

    (*(v6 + 8))(v8, v21);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  sub_251F5E390();
}

uint64_t sub_251F5EA38()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v14 = sub_251F61AD4;
  v15 = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251F5EF98;
  v13 = &block_descriptor_0;
  v2 = _Block_copy(aBlock);
  v3 = v0;

  v4 = [v3 remoteObjectProxyWithErrorHandler_];
  _Block_release(v2);
  sub_251F63AA4();
  swift_unknownObjectRelease();
  sub_251F5CC74(aBlock, v11);
  sub_251F61AF4();
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(aBlock);
    return v10;
  }

  else
  {
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    sub_251F63B24();
    v6 = [v3 description];
    v7 = sub_251F639C4();
    v9 = v8;

    MEMORY[0x2530940B0](v7, v9);

    MEMORY[0x2530940B0](0xD000000000000010, 0x8000000251F64D30);
    __swift_project_boxed_opaque_existential_1(aBlock, v13);
    sub_251F63BA4();
    MEMORY[0x2530940B0](0xD00000000000002ALL, 0x8000000251F64D50);
    MEMORY[0x2530940B0](0xD00000000000001ELL, 0x8000000251F64D80);
    MEMORY[0x2530940B0](0xD00000000000004ALL, 0x8000000251F64DA0);
    result = sub_251F63B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_251F5ECA8(void *a1, void *a2)
{
  v4 = sub_251F63954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251F63934();
  v8 = a2;
  v9 = a1;
  v10 = sub_251F63944();
  v11 = sub_251F63A44();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v12 = 136446466;
    v13 = v8;
    v14 = [v13 description];
    v15 = sub_251F639C4();
    v28 = v4;
    v17 = v16;

    v18 = sub_251F5C368(v15, v17, &v30);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2082;
    ErrorValue = swift_getErrorValue();
    MEMORY[0x28223BE20](ErrorValue);
    (*(v21 + 16))(&v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = sub_251F639D4();
    v24 = sub_251F5C368(v22, v23, &v30);

    *(v12 + 14) = v24;
    _os_log_impl(&dword_251F57000, v10, v11, "%{public}s: remoteObjectProxyWithErrorHandler error: %{public}s", v12, 0x16u);
    v25 = v29;
    swift_arrayDestroy();
    MEMORY[0x253094780](v25, -1, -1);
    MEMORY[0x253094780](v12, -1, -1);

    return (*(v5 + 8))(v7, v28);
  }

  else
  {

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_251F5EF98(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_251F5F000(uint64_t a1, uint64_t a2)
{
  v3 = sub_251F63894();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  (*(v4 + 16))(v7, a2, v3);
  sub_251F60484(v9, v7);
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_251F5F128(void *a1, void *a2, uint64_t a3)
{
  v73 = a3;
  v77 = a1;
  v83 = sub_251F63834();
  v80 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v79 = (&v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = sub_251F63954();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251F63894();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v76 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v62 - v13;
  v75 = v15;
  MEMORY[0x28223BE20](v12);
  v17 = &v62 - v16;
  v18 = v3;
  v19 = [v18 description];
  v20 = sub_251F639C4();
  v22 = v21;

  v74 = sub_251F5EA38();
  v78 = a2;
  sub_251F63904();
  v63 = v18;
  v23 = *&v18[OBJC_IVAR___HDHealthTopicsTaskServer_protectedState];
  v84 = v17;
  os_unfair_lock_lock(v23 + 6);
  sub_251F618D4(&v23[4]);
  v70 = v23;
  os_unfair_lock_unlock(v23 + 6);
  sub_251F63934();
  v81 = v17;
  v82 = v9;
  v68 = *(v9 + 16);
  v69 = v9 + 16;
  v68(v14, v17, v8);

  v64 = v7;
  v24 = v22;
  v25 = sub_251F63944();
  v26 = sub_251F63A54();

  v27 = os_log_type_enabled(v25, v26);
  v71 = v22;
  v72 = v20;
  if (v27)
  {
    v28 = v8;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v85[0] = v30;
    *v29 = 136315394;
    *(v29 + 4) = sub_251F5C368(v20, v24, v85);
    *(v29 + 12) = 2082;
    sub_251F619C4(&qword_27F4C5278, MEMORY[0x277D125D0], MEMORY[0x277D125E8]);
    v31 = sub_251F63B84();
    v33 = v32;
    v34 = v14;
    v35 = v28;
    v67 = *(v82 + 8);
    v67(v34, v28);
    v36 = sub_251F5C368(v31, v33, v85);

    *(v29 + 14) = v36;
    _os_log_impl(&dword_251F57000, v25, v26, "%s: Execute request for %{public}s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253094780](v30, -1, -1);
    MEMORY[0x253094780](v29, -1, -1);
  }

  else
  {

    v37 = v14;
    v35 = v8;
    v67 = *(v82 + 8);
    v67(v37, v8);
  }

  (*(v65 + 8))(v64, v66);
  v38 = v73;
  v39 = *(v73 + OBJC_IVAR____TtC24HealthTopicsDaemonPlugin28DaemonTopicsProfileExtension_protectedState);
  os_unfair_lock_lock((v39 + 20));
  v40 = *(v39 + 16);
  *(v39 + 16) = 0;
  os_unfair_lock_unlock((v39 + 20));
  if (v40 == 1)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v42 = *(*(*(v38 + OBJC_IVAR____TtC24HealthTopicsDaemonPlugin28DaemonTopicsProfileExtension_topicStoreImplementation) + 16) + 16);

    sub_251F61FBC(Strong, v42);
  }

  v73 = *(*(v38 + OBJC_IVAR____TtC24HealthTopicsDaemonPlugin28DaemonTopicsProfileExtension_topicStoreImplementation) + 16);

  v43 = [v63 client];
  v44 = [v43 process];

  v45 = [v44 name];
  v46 = sub_251F639C4();
  v48 = v47;

  v49 = v79;
  *v79 = v46;
  *(v49 + 8) = v48;
  (*(v80 + 104))(v49, *MEMORY[0x277D125B8], v83);
  v50 = v76;
  v68(v76, v81, v35);
  v51 = v82;
  v52 = (*(v82 + 80) + 24) & ~*(v82 + 80);
  v53 = (v75 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v53 + 23) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  *(v55 + 16) = v70;
  (*(v51 + 32))(v55 + v52, v50, v35);
  v56 = (v55 + v53);
  v57 = v71;
  *v56 = v72;
  v56[1] = v57;
  *(v55 + v54) = v74;
  v58 = v78;
  *(v55 + ((v54 + 15) & 0xFFFFFFFFFFFFFFF8)) = v78;

  swift_unknownObjectRetain();
  v59 = v58;
  v60 = v81;
  sub_251F59898(v77, v81, v49, sub_251F618F0, v55);
  swift_unknownObjectRelease();

  (*(v80 + 8))(v49, v83);
  return (v67)(v60, v35);
}

void sub_251F5F83C(void *a1, int a2, int a3, os_unfair_lock_s *a4, char *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v63 = a7;
  v60 = a6;
  LODWORD(v62) = a2;
  v64 = a9;
  v65 = a8;
  v13 = sub_251F63894();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v59 - v18;
  v20 = sub_251F63954();
  v66 = *(v20 - 8);
  v67 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v59 - v25;
  v68 = a1;
  v61 = a3;
  if (a3)
  {
    v59 = v19;
    v27 = v17;
    v28 = &v59 - v25;
    MEMORY[0x28223BE20](v24);
    *(&v59 - 2) = a5;
    os_unfair_lock_lock(a4 + 6);
    sub_251F61CC8(&a4[4]);
    os_unfair_lock_unlock(a4 + 6);
    v26 = v28;
    v17 = v27;
    v19 = v59;
    a1 = v68;
  }

  v29 = (v14 + 16);
  if (v62)
  {
    sub_251F63934();
    (*v29)(v17, a5, v13);
    v30 = v63;

    sub_251F61A0C(a1);
    v31 = sub_251F63944();
    v32 = sub_251F63A54();

    sub_251F61A18(a1);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v62 = v23;
      v34 = v33;
      v35 = v17;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v69 = v37;
      *v34 = 136315906;
      *(v34 + 4) = sub_251F5C368(v60, v30, &v69);
      *(v34 + 12) = 2082;
      sub_251F619C4(&qword_27F4C5278, MEMORY[0x277D125D0], MEMORY[0x277D125E8]);
      v38 = sub_251F63B84();
      v40 = v39;
      (*(v14 + 8))(v35, v13);
      v41 = sub_251F5C368(v38, v40, &v69);

      *(v34 + 14) = v41;
      v42 = v68;
      *(v34 + 22) = 1026;
      *(v34 + 24) = v61 & 1;
      *(v34 + 28) = 2114;
      v43 = v42;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 30) = v44;
      *v36 = v44;
      _os_log_impl(&dword_251F57000, v31, v32, "%s: Deliver failure response for %{public}s, finished = %{BOOL,public}d: %{public}@", v34, 0x26u);
      sub_251F61A24(v36, &qword_27F4C5450, sub_251F5E104);
      MEMORY[0x253094780](v36, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x253094780](v37, -1, -1);
      MEMORY[0x253094780](v34, -1, -1);

      (*(v66 + 8))(v62, v67);
    }

    else
    {

      (*(v14 + 8))(v17, v13);
      (*(v66 + 8))(v23, v67);
    }

    v57 = sub_251F63704();
    v58 = sub_251F63704();

    [v65 client:v58 deliverWithError:v64 for:?];
  }

  else
  {
    sub_251F63934();
    (*v29)(v19, a5, v13);
    v45 = v63;

    v46 = sub_251F63944();
    v47 = sub_251F63A54();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v62 = v26;
      v49 = v13;
      v50 = v48;
      v51 = swift_slowAlloc();
      v69 = v51;
      *v50 = 136315650;
      *(v50 + 4) = sub_251F5C368(v60, v45, &v69);
      *(v50 + 12) = 2082;
      sub_251F619C4(&qword_27F4C5278, MEMORY[0x277D125D0], MEMORY[0x277D125E8]);
      v52 = sub_251F63B84();
      v54 = v53;
      (*(v14 + 8))(v19, v49);
      v55 = sub_251F5C368(v52, v54, &v69);

      *(v50 + 14) = v55;
      *(v50 + 22) = 1026;
      v56 = v61;
      *(v50 + 24) = v61 & 1;
      _os_log_impl(&dword_251F57000, v46, v47, "%s: Deliver sucess response for %{public}s, finished = %{BOOL,public}d", v50, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x253094780](v51, -1, -1);
      MEMORY[0x253094780](v50, -1, -1);

      (*(v66 + 8))(v62, v67);
    }

    else
    {

      (*(v14 + 8))(v19, v13);
      (*(v66 + 8))(v26, v67);
      v56 = v61;
    }

    [v65 client:v68 deliverWithResponse:v56 & 1 finished:v64 for:?];
  }
}

uint64_t sub_251F5FF18(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D125D0];
  sub_251F61A80(0, &qword_27F4C5468, MEMORY[0x277D125D0]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  sub_251F61290(a2, &v8 - v5);
  return sub_251F61A24(v6, &qword_27F4C5468, v3);
}

uint64_t sub_251F5FFDC()
{
  v1 = sub_251F63894();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_251F63904();
  v5 = *&v0[OBJC_IVAR___HDHealthTopicsTaskServer_protectedState];
  v16 = v4;
  os_unfair_lock_lock(v5 + 6);
  sub_251F60468(&v5[4]);
  os_unfair_lock_unlock(v5 + 6);
  v6 = [v0 profile];
  if (v6)
  {
    v8 = v6;
    v9 = sub_251F61CE0(v6, v7);

    if (v9)
    {
      v10 = *(v9 + OBJC_IVAR____TtC24HealthTopicsDaemonPlugin28DaemonTopicsProfileExtension_protectedState);
      os_unfair_lock_lock((v10 + 20));
      v11 = *(v10 + 16);
      *(v10 + 16) = 0;
      os_unfair_lock_unlock((v10 + 20));
      if (v11 == 1)
      {
        Strong = swift_unknownObjectUnownedLoadStrong();
        v13 = *(*(*(v9 + OBJC_IVAR____TtC24HealthTopicsDaemonPlugin28DaemonTopicsProfileExtension_topicStoreImplementation) + 16) + 16);

        sub_251F61FBC(Strong, v13);
      }

      swift_unknownObjectRelease();
      sub_251F63854();
    }
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_251F60484(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_251F63894();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_251F619C4(&qword_27F4C5470, MEMORY[0x277D125D0], MEMORY[0x277D125D8]);
  v33 = a2;
  v11 = sub_251F63994();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_251F619C4(&qword_27F4C5478, MEMORY[0x277D125D0], MEMORY[0x277D125E0]);
      v21 = sub_251F639A4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_251F60AB4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_251F60764(uint64_t a1)
{
  v2 = v1;
  v36 = sub_251F63894();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_251F61840(0);
  result = sub_251F63AF4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_251F619C4(&qword_27F4C5470, MEMORY[0x277D125D0], MEMORY[0x277D125D8]);
      result = sub_251F63994();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_251F60AB4(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_251F63894();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_251F60764(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_251F60D58();
      goto LABEL_12;
    }

    sub_251F60F80(v10 + 1);
  }

  v12 = *v3;
  sub_251F619C4(&qword_27F4C5470, MEMORY[0x277D125D0], MEMORY[0x277D125D8]);
  v13 = sub_251F63994();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_251F619C4(&qword_27F4C5478, MEMORY[0x277D125D0], MEMORY[0x277D125E0]);
      v21 = sub_251F639A4();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_251F63BB4();
  __break(1u);
  return result;
}

void *sub_251F60D58()
{
  v1 = v0;
  v2 = sub_251F63894();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251F61840(0);
  v6 = *v0;
  v7 = sub_251F63AE4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_251F60F80(uint64_t a1)
{
  v2 = v1;
  v33 = sub_251F63894();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_251F61840(0);
  v7 = sub_251F63AF4();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_251F619C4(&qword_27F4C5470, MEMORY[0x277D125D0], MEMORY[0x277D125D8]);
      result = sub_251F63994();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_251F61290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_251F63894();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_251F619C4(&qword_27F4C5470, MEMORY[0x277D125D0], MEMORY[0x277D125D8]);
  v31 = a1;
  v10 = sub_251F63994();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_251F619C4(&qword_27F4C5478, MEMORY[0x277D125D0], MEMORY[0x277D125E0]);
      v19 = sub_251F639A4();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_251F60D58();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_251F61538(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_251F61538(int64_t a1)
{
  v3 = sub_251F63894();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_251F63AD4();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_251F619C4(&qword_27F4C5470, MEMORY[0x277D125D0], MEMORY[0x277D125D8]);
        v24 = sub_251F63994();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

void sub_251F61840(uint64_t a1)
{
  if (!qword_27F4C5480)
  {
    sub_251F63894();
    sub_251F619C4(&qword_27F4C5470, MEMORY[0x277D125D0], MEMORY[0x277D125D8]);
    v1 = sub_251F63B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4C5480);
    }
  }
}

void sub_251F618F0(void *a1, char a2, int a3)
{
  v7 = *(sub_251F63894() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_251F5F83C(a1, a2 & 1, a3, *(v3 + 16), (v3 + v8), *(v3 + v9), *(v3 + v9 + 8), *(v3 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_251F619C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251F61A24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251F61A80(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_251F61A80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251F63A94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_251F61AF4()
{
  result = qword_27F4C5490;
  if (!qword_27F4C5490)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F4C5490);
  }

  return result;
}

uint64_t sub_251F61B58(uint64_t a1)
{
  sub_251F61BB4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_251F61BB4()
{
  if (!qword_27F4C5498)
  {
    v0 = sub_251F63A94();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4C5498);
    }
  }
}

unint64_t sub_251F61C08()
{
  result = qword_27F4C5540;
  if (!qword_27F4C5540)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F4C5540);
  }

  return result;
}

void sub_251F61C68(uint64_t a1)
{
  if (!qword_27F4C54A0)
  {
    type metadata accessor for os_unfair_lock_s();
    v1 = sub_251F63B44();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4C54A0);
    }
  }
}

uint64_t sub_251F61CE0(uint64_t a1, uint64_t a2)
{
  sub_251F637A4();
  v3 = sub_251F639B4();

  v4 = [v2 profileExtensionWithIdentifier_];

  if (v4)
  {
    sub_251F63AA4();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    sub_251F63648(0, &qword_27F4C5540, &protocol descriptor for HealthTopicsProfileExtension, 0);
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_251F61B58(v9);
    return 0;
  }
}

id sub_251F61DDC(void *a1)
{
  v2 = v1;
  swift_unknownObjectUnownedInit();
  sub_251F63804();
  swift_allocObject();
  v4 = sub_251F637F4();
  type metadata accessor for TopicExecutionEngine();
  swift_allocObject();
  v5 = sub_251F5A8D4(v4);

  type metadata accessor for DaemonTopicStore();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *&v2[OBJC_IVAR____TtC24HealthTopicsDaemonPlugin28DaemonTopicsProfileExtension_topicStoreImplementation] = v6;
  sub_251F636A4(0);
  v7 = swift_allocObject();
  *(v7 + 20) = 0;
  *(v7 + 16) = 1;
  *&v2[OBJC_IVAR____TtC24HealthTopicsDaemonPlugin28DaemonTopicsProfileExtension_protectedState] = v7;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for DaemonTopicsProfileExtension();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  [a1 registerProfileReadyObserver:v8 queue:0];

  return v8;
}

void sub_251F61F08()
{
  v1 = *(v0 + OBJC_IVAR____TtC24HealthTopicsDaemonPlugin28DaemonTopicsProfileExtension_protectedState);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
  os_unfair_lock_unlock((v1 + 20));
  if (v2 == 1)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v4 = *(*(*(v0 + OBJC_IVAR____TtC24HealthTopicsDaemonPlugin28DaemonTopicsProfileExtension_topicStoreImplementation) + 16) + 16);

    sub_251F61FBC(Strong, v4);
  }
}

uint64_t sub_251F61FBC(void *a1, uint64_t a2)
{
  v72 = a2;
  v66 = sub_251F63924();
  v69 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_251F63954();
  v70 = *(v71 - 8);
  v4 = MEMORY[0x28223BE20](v71);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v56 - v7;
  v9 = [a1 allProfileExtensions];
  sub_251F634A8();
  v10 = sub_251F63A24();

  if (v10 >> 62)
  {
    goto LABEL_38;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v67 = v6;
  v68 = v8;
  if (v11)
  {
    v12 = 0;
    v6 = (v10 & 0xFFFFFFFFFFFFFF8);
    v13 = MEMORY[0x277D84F90];
    v14 = MEMORY[0x277D12610];
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x2530941F0](v12, v10);
        v8 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v16 = swift_unknownObjectRetain();
        v8 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          v11 = sub_251F63B74();
          goto LABEL_3;
        }
      }

      *&v81 = v16;
      sub_251F63648(0, &qword_2813DD798, v14, 1);
      if (swift_dynamicCast())
      {
        if (*(&v79 + 1))
        {
          sub_251F5B7D0(&v78, &v81);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_251F63338(0, v13[2] + 1, 1, v13);
          }

          v18 = v13[2];
          v17 = v13[3];
          v19 = v13;
          if (v18 >= v17 >> 1)
          {
            v19 = sub_251F63338((v17 > 1), v18 + 1, 1, v13);
          }

          v19[2] = v18 + 1;
          v13 = v19;
          sub_251F5B7D0(&v81, &v19[5 * v18 + 4]);
          v14 = MEMORY[0x277D12610];
          goto LABEL_7;
        }
      }

      else
      {
        v80 = 0;
        v78 = 0u;
        v79 = 0u;
      }

      sub_251F6350C(&v78);
LABEL_7:
      ++v12;
      v15 = v8 == v11;
      v8 = v68;
      if (v15)
      {
        goto LABEL_22;
      }
    }
  }

  v13 = MEMORY[0x277D84F90];
LABEL_22:

  v59 = v13[2];
  if (v59)
  {
    v21 = 0;
    v10 = 0;
    v58 = v13 + 4;
    ++v70;
    v64 = (v69 + 8);
    *&v20 = 136446978;
    v62 = v20;
    *&v20 = 136447234;
    v63 = v20;
    v57 = v13;
    while (v21 < v13[2])
    {
      sub_251F5B76C(&v58[5 * v21], &v81);
      v6 = __swift_project_boxed_opaque_existential_1(&v81, v82);
      v22 = sub_251F638F4();
      v23 = *(v22 + 16);
      if (v23)
      {
        v61 = v21;
        v60 = v22;
        v24 = v22 + 32;
        do
        {
          sub_251F5B76C(v24, &v78);
          __swift_project_boxed_opaque_existential_1(&v78, *(&v79 + 1));
          sub_251F637E4();
          sub_251F63934();
          sub_251F5B76C(&v78, v77);
          sub_251F5B76C(&v78, v76);
          sub_251F5B76C(&v81, v75);
          v25 = v73;
          v6 = v8;
          v26 = sub_251F63944();
          v27 = sub_251F63A54();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            v74 = v69;
            *v28 = v62;
            v29 = v25;
            v30 = [v29 description];
            v31 = sub_251F639C4();
            v33 = v32;

            v34 = sub_251F5C368(v31, v33, &v74);

            *(v28 + 4) = v34;
            *(v28 + 12) = 2082;
            v35 = __swift_project_boxed_opaque_existential_1(v77, v77[3]);
            MEMORY[0x28223BE20](v35);
            (*(v37 + 16))(&v56 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
            v38 = sub_251F639D4();
            v40 = v39;
            __swift_destroy_boxed_opaque_existential_0(v77);
            v41 = sub_251F5C368(v38, v40, &v74);

            *(v28 + 14) = v41;
            *(v28 + 22) = 2082;
            __swift_project_boxed_opaque_existential_1(v76, v76[3]);
            v42 = v65;
            sub_251F63814();
            sub_251F63600(&qword_2813DD788, MEMORY[0x277D12628], MEMORY[0x277D12648]);
            v43 = v66;
            v44 = sub_251F63B84();
            v46 = v45;
            (*v64)(v42, v43);
            __swift_destroy_boxed_opaque_existential_0(v76);
            v47 = sub_251F5C368(v44, v46, &v74);

            *(v28 + 24) = v47;
            *(v28 + 32) = 2082;
            v48 = __swift_project_boxed_opaque_existential_1(v75, v75[3]);
            MEMORY[0x28223BE20](v48);
            (*(v50 + 16))(&v56 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
            v51 = sub_251F639D4();
            v53 = v52;
            __swift_destroy_boxed_opaque_existential_0(v75);
            v54 = sub_251F5C368(v51, v53, &v74);
            v8 = v68;

            *(v28 + 34) = v54;
            _os_log_impl(&dword_251F57000, v26, v27, "%{public}s: registered %{public}s for topic=%{public}s provided by %{public}s", v28, 0x2Au);
            v6 = v69;
            swift_arrayDestroy();
            MEMORY[0x253094780](v6, -1, -1);
            MEMORY[0x253094780](v28, -1, -1);

            (*v70)(v8, v71);
          }

          else
          {

            (*v70)(v8, v71);
            __swift_destroy_boxed_opaque_existential_0(v76);
            __swift_destroy_boxed_opaque_existential_0(v77);
            __swift_destroy_boxed_opaque_existential_0(v75);
          }

          __swift_destroy_boxed_opaque_existential_0(&v78);
          v24 += 40;
          --v23;
        }

        while (v23);

        v13 = v57;
        v21 = v61;
      }

      else
      {
      }

      ++v21;
      __swift_destroy_boxed_opaque_existential_0(&v81);
      if (v21 == v59)
      {
      }
    }

    goto LABEL_37;
  }
}

uint64_t sub_251F62E7C()
{
  sub_251F63594(0, &unk_2813DD558, &unk_2813DD7A0, MEMORY[0x277D12598], MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_251F64670;
  v2 = *(v0 + OBJC_IVAR____TtC24HealthTopicsDaemonPlugin28DaemonTopicsProfileExtension_protectedState);
  os_unfair_lock_lock((v2 + 20));
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
  os_unfair_lock_unlock((v2 + 20));
  if (v3 == 1)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v5 = *(*(*(v0 + OBJC_IVAR____TtC24HealthTopicsDaemonPlugin28DaemonTopicsProfileExtension_topicStoreImplementation) + 16) + 16);

    sub_251F61FBC(Strong, v5);
  }

  v6 = *(*(*(v0 + OBJC_IVAR____TtC24HealthTopicsDaemonPlugin28DaemonTopicsProfileExtension_topicStoreImplementation) + 16) + 16);
  v7 = type metadata accessor for TopicRegistryListEvaluator(0);
  *(v1 + 56) = v7;
  *(v1 + 64) = sub_251F63600(qword_2813DD618, type metadata accessor for TopicRegistryListEvaluator, &unk_251F6461C);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 32));

  sub_251F63914();
  *(boxed_opaque_existential_1 + *(v7 + 20)) = v6;
  return v1;
}

id sub_251F6301C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DaemonTopicsProfileExtension();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for DaemonTopicsProfileExtension.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DaemonTopicsProfileExtension.State(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_251F632A8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  sub_251F61F08();
  v4 = *(v3 + OBJC_IVAR____TtC24HealthTopicsDaemonPlugin28DaemonTopicsProfileExtension_topicStoreImplementation);
  a1[3] = type metadata accessor for DaemonTopicStore();
  a1[4] = sub_251F63600(&unk_27F4C5530, type metadata accessor for DaemonTopicStore, &unk_251F64724);
  *a1 = v4;
}

void *sub_251F63338(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_251F63594(0, &qword_2813DD550, &qword_2813DD798, MEMORY[0x277D12610], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_251F63648(0, &qword_2813DD798, MEMORY[0x277D12610], 1);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_251F634A8()
{
  result = qword_2813DD570;
  if (!qword_2813DD570)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813DD570);
  }

  return result;
}

uint64_t sub_251F6350C(uint64_t a1)
{
  sub_251F63594(0, &qword_2813DD790, &qword_2813DD798, MEMORY[0x277D12610], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_251F63594(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_251F63648(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_251F63600(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251F63648(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_251F636A4(uint64_t a1)
{
  if (!qword_2813DD568)
  {
    type metadata accessor for os_unfair_lock_s();
    v1 = sub_251F63B44();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DD568);
    }
  }
}