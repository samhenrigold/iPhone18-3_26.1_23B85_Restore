uint64_t sub_228542C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2285451A8(0);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  (*(v11 + 16))(&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  (*(v11 + 32))(v14 + v13, &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  (*(a5 + 8))(a3, sub_2285452B8, v14, a4, a5);
}

void sub_228542DE4(uint64_t a1)
{
  if (!qword_280DE96E8)
  {
    sub_22855C5CC();
    sub_22855C80C();
    sub_228544D28(&qword_280DE9F38, MEMORY[0x277D11BA8], MEMORY[0x277D11BB0]);
    v1 = sub_22855D12C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE96E8);
    }
  }
}

uint64_t sub_228542E90(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    sub_2285451A8(0);
    return sub_22855D4AC();
  }

  else
  {
    sub_2285451A8(0);

    return sub_22855D4BC();
  }
}

uint64_t AnchorStorage.store(anchor:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_228542F34, 0, 0);
}

uint64_t sub_228542F34()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_228543034;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000012, 0x8000000228574760, sub_2285432C8, v2, v5);
}

uint64_t sub_228543034()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_228541D6C;
  }

  else
  {

    v2 = sub_22849DAF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_228543150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a5;
  sub_2284A6958(0);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  (*(v12 + 16))(&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v14 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v15 = swift_allocObject();
  (*(v12 + 32))(v15 + v14, &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  (*(a6 + 16))(a3, a4, sub_228545138, v15, v18, a6);
}

uint64_t sub_228543300(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_228543348(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2285433A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v51 = a2;
  v5 = sub_22855CFBC();
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x28223BE20](v5);
  v56 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22855CFEC();
  v57 = *(v7 - 8);
  v58 = v7;
  MEMORY[0x28223BE20](v7);
  v55 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22855C62C();
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x28223BE20](v9);
  v47 = v10;
  v48 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22855C1DC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_228439BBC();
  sub_22840A70C(0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_228560670;
  v17 = a1[2];
  v16 = a1[3];
  v18 = MEMORY[0x277D837D0];
  *(v15 + 56) = MEMORY[0x277D837D0];
  v19 = sub_22840A7C8();
  *(v15 + 64) = v19;
  *(v15 + 32) = v17;
  *(v15 + 40) = v16;
  v20 = a1[1];

  v21 = [v20 identifier];
  sub_22855C1BC();

  v22 = sub_22855C17C();
  v24 = v23;
  (*(v12 + 8))(v14, v11);
  *(v15 + 96) = v18;
  *(v15 + 104) = v19;
  *(v15 + 72) = v22;
  *(v15 + 80) = v24;
  v26 = a1[4];
  v25 = a1[5];
  *(v15 + 136) = v18;
  *(v15 + 144) = v19;
  *(v15 + 112) = v26;
  *(v15 + 120) = v25;

  v27 = sub_22855D62C();
  v28 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v29 = sub_22855D17C();
  v30 = [v28 initWithEntityName_];

  [v30 setPredicate_];
  type metadata accessor for OrchestrationAnchor();
  v31 = sub_22855D97C();
  v32 = sub_228544ED0(v31);

  v34 = v48;
  v33 = v49;
  v35 = v50;
  (*(v49 + 16))(v48, v51, v50);
  v36 = (*(v33 + 80) + 24) & ~*(v33 + 80);
  v37 = (v47 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  *(v38 + 16) = v32;
  (*(v33 + 32))(v38 + v36, v34, v35);
  v39 = (v38 + v37);
  v40 = v54;
  *v39 = v53;
  v39[1] = v40;
  aBlock[4] = sub_228545088;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_37;
  v41 = _Block_copy(aBlock);

  v42 = v55;
  sub_22855CFDC();
  v61 = MEMORY[0x277D84F90];
  sub_228544D28(&qword_280DED2D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_228544D70(0);
  sub_228544D28(&qword_280DED260, sub_228544D70, MEMORY[0x277D83970]);
  v43 = v56;
  v44 = v60;
  sub_22855DA9C();
  MEMORY[0x22AAB98B0](0, v42, v43, v41);
  _Block_release(v41);

  (*(v59 + 8))(v43, v44);
  (*(v57 + 8))(v42, v58);
}

uint64_t sub_228543B24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5[2] = a2;
  sub_2284930D4(MEMORY[0x277D84F98], sub_22854511C, v5, a1);
  a3();
}

uint64_t sub_228543BD0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v20 = a3;
  v19 = a1;
  v4 = sub_22855C62C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22855C5CC();
  v8 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2[2];
  v12 = a2[3];

  sub_22842B3E0(v11, v12);
  sub_22842B38C(v11, v12);
  sub_22855C5DC();
  sub_22855C80C();

  sub_22842B3E0(v11, v12);

  (*(v5 + 16))(v7, v20, v4);
  v13 = v21;
  v14 = sub_22855C7EC();
  if (!v13)
  {
    v15 = v19;
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v15;
    sub_22845B988(v16, v10, isUniquelyReferenced_nonNull_native);
    *v15 = v23;
  }

  return (*(v8 + 8))(v10, v22);
}

id sub_228543E08()
{
  v1 = v0;
  v2 = sub_22855C1DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OrchestrationAnchor();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v7 = sub_22855D17C();
  [v6 setPluginPackage_];

  v8 = [*(v1 + 8) identifier];
  sub_22855C1BC();

  sub_22855C17C();
  (*(v3 + 8))(v5, v2);
  v9 = sub_22855D17C();

  [v6 setProfileIdentifier_];

  v10 = sub_22855D17C();
  [v6 setPlanner_];

  sub_22855C5BC();
  v11 = sub_22855D17C();

  [v6 setCriteria_];

  return v6;
}

uint64_t sub_228543FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  v11 = *(v4 + 16);
  *(v10 + 16) = *v4;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(v4 + 32);
  *(v10 + 64) = *(v4 + 48);
  *(v10 + 72) = sub_2284BACAC;
  *(v10 + 80) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_228544CC4;
  *(v12 + 24) = v10;

  sub_228544CDC(v4, v22);
  v13 = sub_22855C7FC();
  v15 = v14;

  v16 = *v5;
  v17 = swift_allocObject();
  v18 = *(v5 + 16);
  *(v17 + 24) = *v5;
  *(v17 + 16) = a2;
  *(v17 + 40) = v18;
  *(v17 + 56) = *(v5 + 32);
  *(v17 + 72) = *(v5 + 48);
  *(v17 + 80) = v13;
  *(v17 + 88) = v15;
  *(v17 + 96) = sub_228544CD4;
  *(v17 + 104) = v12;
  v21[4] = sub_228544D14;
  v21[5] = v17;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = sub_228401F54;
  v21[3] = &block_descriptor_30;
  v19 = _Block_copy(v21);
  sub_228544CDC(v5, v22);

  sub_22842B3E0(v13, v15);

  [v16 performBlock_];

  _Block_release(v19);
  return sub_22842B38C(v13, v15);
}

void sub_228544260(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, void (*a5)(id), uint64_t a6)
{
  v49[1] = a6;
  v50 = a5;
  v60 = a3;
  v61 = a4;
  v64 = a2;
  v67[2] = *MEMORY[0x277D85DE8];
  v63 = sub_22855C1DC();
  v7 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22855C5CC();
  MEMORY[0x28223BE20](v9);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (v13)
  {
    v66 = 0;
    v15 = *(v10 + 16);
    v14 = v10 + 16;
    v57 = "store(anchor:for:)";
    v58 = v15;
    v55 = "cate. Something is wrong!";
    v56 = (v7 + 8);
    v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v59 = v14;
    v51 = *(v14 + 56);
    v52 = (v14 - 8);
    v54 = xmmword_228561250;
    v53 = v9;
    v17 = v64;
    do
    {
      v65 = v13;
      v58(v12, v16, v9);
      sub_228439BBC();
      sub_22840A70C(0);
      v20 = swift_allocObject();
      *(v20 + 16) = v54;
      v22 = v17[2];
      v21 = v17[3];
      v23 = MEMORY[0x277D837D0];
      *(v20 + 56) = MEMORY[0x277D837D0];
      v24 = sub_22840A7C8();
      *(v20 + 64) = v24;
      *(v20 + 32) = v22;
      *(v20 + 40) = v21;
      v25 = v17[1];

      v26 = [v25 identifier];
      v27 = v62;
      sub_22855C1BC();

      v28 = sub_22855C17C();
      v30 = v29;
      (*v56)(v27, v63);
      *(v20 + 96) = v23;
      *(v20 + 104) = v24;
      *(v20 + 72) = v28;
      *(v20 + 80) = v30;
      v32 = v17[4];
      v31 = v17[5];
      *(v20 + 136) = v23;
      *(v20 + 144) = v24;
      *(v20 + 112) = v32;
      *(v20 + 120) = v31;

      v33 = sub_22855C5BC();
      *(v20 + 176) = v23;
      *(v20 + 184) = v24;
      *(v20 + 152) = v33;
      *(v20 + 160) = v34;
      v35 = sub_22855D62C();
      v36 = objc_allocWithZone(MEMORY[0x277CBE428]);
      v37 = sub_22855D17C();
      v38 = [v36 initWithEntityName_];

      [v38 setPredicate_];
      type metadata accessor for OrchestrationAnchor();
      v39 = v66;
      v40 = sub_22855D97C();
      v66 = v39;
      if (v39)
      {
        (*v52)(v12, v53);

LABEL_19:
        v47 = v66;
        v48 = v66;
        v50(v47);

        return;
      }

      if (v40 >> 62)
      {
        v42 = v40;
        v43 = sub_22855DB4C();
        v40 = v42;
        if (v43)
        {
LABEL_8:
          if ((v40 & 0xC000000000000001) != 0)
          {
            v41 = MEMORY[0x22AAB9D20](0, v40);
          }

          else
          {
            if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
            }

            v41 = *(v40 + 32);
          }

          v18 = v41;

          goto LABEL_4;
        }
      }

      else if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_8;
      }

      v18 = sub_228543E08();
LABEL_4:
      v19 = sub_22855C08C();
      [v18 setEncodedAnchorSet_];

      v9 = v53;
      (*v52)(v12, v53);
      v16 += v51;
      v13 = v65 - 1;
    }

    while (v65 != 1);
  }

  v44 = *v64;
  v67[0] = 0;
  if (([v44 save_] & 1) == 0)
  {
    v46 = v67[0];
    v66 = sub_22855BF3C();

    swift_willThrow();
    goto LABEL_19;
  }

  v45 = v67[0];
  v50(0);
}

uint64_t sub_228544790(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22855CFBC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22855CFEC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a1;
  aBlock[4] = sub_2284A67E8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_19;
  v16 = _Block_copy(aBlock);

  v17 = a1;
  sub_22855CFDC();
  v19[1] = MEMORY[0x277D84F90];
  sub_228544D28(&qword_280DED2D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_228544D70(0);
  sub_228544D28(&qword_280DED260, sub_228544D70, MEMORY[0x277D83970]);
  sub_22855DA9C();
  MEMORY[0x22AAB98B0](0, v14, v10, v16);
  _Block_release(v16);
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
}

void sub_228544A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22855C62C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v3[1];
  v20 = *v3;
  v21 = v10;
  v22 = v3[2];
  v23 = *(v3 + 6);
  v11 = v20;
  (*(v8 + 16))(&v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], a1, v7);
  v12 = (*(v8 + 80) + 72) & ~*(v8 + 80);
  v13 = swift_allocObject();
  v14 = v21;
  *(v13 + 16) = v20;
  *(v13 + 32) = v14;
  *(v13 + 48) = v22;
  *(v13 + 64) = v23;
  (*(v8 + 32))(v13 + v12, &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v7);
  v15 = (v13 + ((v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = a2;
  v15[1] = a3;
  aBlock[4] = sub_228544DC8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_25;
  v16 = _Block_copy(aBlock);
  sub_228544CDC(&v20, v18);

  [v11 performBlock_];
  _Block_release(v16);
}

uint64_t sub_228544D28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_228544D70(uint64_t a1)
{
  if (!qword_280DED270)
  {
    sub_22855CFBC();
    v1 = sub_22855D47C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DED270);
    }
  }
}

uint64_t sub_228544DC8()
{
  v1 = *(sub_22855C62C() - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_2285433A4((v0 + 16), v0 + v2, v4, v5);
}

uint64_t objectdestroy_15Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_228544ED0(unint64_t result)
{
  if (result >> 62)
  {
    goto LABEL_17;
  }

  v1 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = result;
  v24 = MEMORY[0x277D84F90];
  result = sub_228427810(0, v1 & ~(v1 >> 63), 0);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v2 = v24;
    v5 = v3;
    v22 = v3 & 0xFFFFFFFFFFFFFF8;
    v23 = v3 & 0xC000000000000001;
    v6 = v3;
    v7 = v1;
    while (1)
    {
      if (v23)
      {
        v8 = MEMORY[0x22AAB9D20](v4, v5);
      }

      else
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_16:
          __break(1u);
LABEL_17:
          v21 = result;
          v1 = sub_22855DB4C();
          result = v21;
          goto LABEL_3;
        }

        if (v4 >= *(v22 + 16))
        {
          goto LABEL_16;
        }

        v8 = *(v5 + 8 * v4 + 32);
      }

      v9 = v8;
      v10 = [v8 criteria];
      v11 = sub_22855D1AC();
      v13 = v12;

      v14 = [v9 encodedAnchorSet];
      v15 = sub_22855C09C();
      v17 = v16;

      v19 = *(v24 + 16);
      v18 = *(v24 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_228427810((v18 > 1), v19 + 1, 1);
      }

      ++v4;
      *(v24 + 16) = v19 + 1;
      v20 = (v24 + 32 * v19);
      v20[4] = v11;
      v20[5] = v13;
      v20[6] = v15;
      v20[7] = v17;
      v5 = v6;
      if (v7 == v4)
      {
        return v2;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_228545088()
{
  v1 = *(sub_22855C62C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_228543B24(v3, v0 + v2, v4);
}

uint64_t sub_228545138(void *a1)
{
  sub_2284A6958(0);

  return sub_22849E318(a1);
}

void sub_2285451A8(uint64_t a1)
{
  if (!qword_280DE9578)
  {
    sub_228542DE4(255);
    sub_2283F9B94(255, &qword_280DECFE0, MEMORY[0x277D84948]);
    v1 = sub_22855D4CC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9578);
    }
  }
}

uint64_t objectdestroy_39Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_2285452B8(void *a1, char a2)
{
  sub_2285451A8(0);

  return sub_228542E90(a1, a2 & 1);
}

uint64_t UnfairLock.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

id PluginData.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id PluginData.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PluginData();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id PluginData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PluginData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t UNUserNotificationCenter.scheduleNotification(_:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_2285459D0(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228546614(0, &qword_27D840B40, MEMORY[0x277CBCE88]);
  v11 = v10;
  v30 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  v14 = [a1 content];
  v15 = [v14 badge];

  if (v15)
  {

    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v16 = sub_22855CABC();
    __swift_project_value_buffer(v16, qword_280DEEC98);
    v17 = sub_22855CA8C();
    v18 = sub_22855D69C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v31 = v20;
      *v19 = 136315138;
      v21 = sub_22855E34C();
      v23 = sub_2283F8938(v21, v22, &v31);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_2283ED000, v17, v18, "[%s] The Health app does not currently support app badging among all Health processes and clients.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x22AABAD40](v20, -1, -1);
      MEMORY[0x22AABAD40](v19, -1, -1);
    }

    sub_228545A84();
    sub_228418D44();
    sub_22855CDDC();
    sub_2283FECF0(&qword_27D840B50, &qword_27D840B40, MEMORY[0x277CBCE88], MEMORY[0x277CBCE90]);
    v24 = sub_22855CE6C();
    (*(v30 + 8))(v13, v11);
  }

  else
  {
    v25 = swift_allocObject();
    v25[2] = v2;
    v25[3] = a1;
    v25[4] = ObjectType;
    v26 = MEMORY[0x277CBCD88];
    sub_228546614(0, &qword_280DE9898, MEMORY[0x277CBCD88]);
    sub_2283FECF0(&qword_280DE98A0, &qword_280DE9898, v26, MEMORY[0x277CBCD90]);
    v27 = v2;
    v28 = a1;
    sub_22855CE2C();
    sub_228545FB0();
    v24 = sub_22855CE6C();
    (*(v7 + 8))(v9, v6);
  }

  return v24;
}

void sub_2285459D0(uint64_t a1)
{
  if (!qword_27D840B38)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_228546614(255, &qword_280DE9898, MEMORY[0x277CBCD88]);
    sub_2283FECF0(&qword_280DE98A0, &qword_280DE9898, v1, MEMORY[0x277CBCD90]);
    v2 = sub_22855CE3C();
    if (!v3)
    {
      atomic_store(v2, &qword_27D840B38);
    }
  }
}

unint64_t sub_228545A84()
{
  result = qword_280DE92E8;
  if (!qword_280DE92E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DE92E8);
  }

  return result;
}

uint64_t UNNotification.requestContentURL.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2283F6B58(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 request];
  v7 = [v6 content];

  v8 = [v7 userInfo];
  v9 = sub_22855D0EC();

  *&v21 = sub_22855D1AC();
  *(&v21 + 1) = v10;
  sub_22855DBEC();
  if (*(v9 + 16) && (v11 = sub_228443C14(&v19), (v12 & 1) != 0))
  {
    sub_2283F6E48(*(v9 + 56) + 32 * v11, &v21);
    sub_22842D0B4(&v19);
  }

  else
  {

    sub_22842D0B4(&v19);
    v21 = 0u;
    v22 = 0u;
  }

  sub_2285465A4(&v21, &v19);
  if (*(&v20 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_22855C03C();

      return sub_2283F48B8(&v21, sub_228400E48);
    }
  }

  else
  {
    sub_2283F48B8(&v19, sub_228400E48);
  }

  v19 = v21;
  v20 = v22;
  if (!*(&v22 + 1))
  {
    sub_2283F48B8(&v19, sub_228400E48);
    v14 = sub_22855C06C();
    (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
LABEL_13:
    sub_2283F48B8(v5, sub_2283F6B58);
    sub_22855C06C();
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }

  v14 = sub_22855C06C();
  v15 = swift_dynamicCast();
  v16 = *(v14 - 8);
  v17 = *(v16 + 56);
  v17(v5, v15 ^ 1u, 1, v14);
  if ((*(v16 + 48))(v5, 1, v14) == 1)
  {
    goto LABEL_13;
  }

  (*(v16 + 32))(a1, v5, v14);
  return (v17)(a1, 0, 1, v14);
}

uint64_t sub_228545E84@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v9 = MEMORY[0x277CBCEA8];
  sub_228546614(0, &qword_27D840B58, MEMORY[0x277CBCEA8]);
  swift_allocObject();
  v10 = a1;
  v11 = a2;
  sub_22855CE0C();
  sub_2283FECF0(&qword_27D840B60, &qword_27D840B58, v9, MEMORY[0x277CBCEB0]);
  v12 = sub_22855CE6C();

  *a4 = v12;
  return result;
}

unint64_t sub_228545FB0()
{
  result = qword_27D840B48;
  if (!qword_27D840B48)
  {
    sub_2285459D0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840B48);
  }

  return result;
}

void sub_228546008(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = sub_228476D24;
  v11[4] = v10;
  v11[5] = a5;
  v14[4] = sub_22854668C;
  v14[5] = v11;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_228546538;
  v14[3] = &block_descriptor_31;
  v12 = _Block_copy(v14);

  v13 = a4;

  [a3 addNotificationRequest:v13 withCompletionHandler:v12];
  _Block_release(v12);
}

void sub_228546138(void *a1, void *a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v8 = a1;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v9 = sub_22855CABC();
    __swift_project_value_buffer(v9, qword_280DEEC98);
    v10 = a1;
    v11 = a2;
    v12 = sub_22855CA8C();
    v13 = sub_22855D68C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v43 = v15;
      *v14 = 136315650;
      v16 = sub_22855E34C();
      v18 = sub_2283F8938(v16, v17, &v43);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      v19 = [v11 identifier];
      v20 = sub_22855D1AC();
      v22 = v21;

      v23 = sub_2283F8938(v20, v22, &v43);

      *(v14 + 14) = v23;
      *(v14 + 22) = 2080;
      v24 = a1;
      sub_228418D44();
      v25 = sub_22855D1CC();
      v27 = sub_2283F8938(v25, v26, &v43);

      *(v14 + 24) = v27;
      _os_log_impl(&dword_2283ED000, v12, v13, "[%s] Notification %s Error: %s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v15, -1, -1);
      MEMORY[0x22AABAD40](v14, -1, -1);
    }

    v28 = a1;
    a3(a1, 1);
  }

  else
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v29 = sub_22855CABC();
    __swift_project_value_buffer(v29, qword_280DEEC98);
    v30 = a2;
    v31 = sub_22855CA8C();
    v32 = sub_22855D6AC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v43 = v34;
      *v33 = 136315394;
      v35 = sub_22855E34C();
      v37 = sub_2283F8938(v35, v36, &v43);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v38 = [v30 identifier];
      v39 = sub_22855D1AC();
      v41 = v40;

      v42 = sub_2283F8938(v39, v41, &v43);

      *(v33 + 14) = v42;
      _os_log_impl(&dword_2283ED000, v31, v32, "[%s] Notification Request Added %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v34, -1, -1);
      MEMORY[0x22AABAD40](v33, -1, -1);
    }

    a3(v30, 0);
  }
}

void sub_228546538(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_2285465A4(uint64_t a1, uint64_t a2)
{
  sub_228400E48();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_228546614(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_228545A84();
    v7 = sub_228418D44();
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t Publishers.CombineLatest.bufferForCombineLatestForGeneratorPipeline(size:)(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = sub_22855CB5C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = sub_22855CB4C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, *MEMORY[0x277CBCBD0], v6);
  (*(v3 + 104))(v5, *MEMORY[0x277CBCBE8], v2);
  swift_getWitnessTable();
  sub_22855CEEC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t Publishers.CombineLatest3.bufferForCombineLatestForGeneratorPipeline(size:)(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = sub_22855CB5C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = sub_22855CB4C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, *MEMORY[0x277CBCBD0], v6);
  (*(v3 + 104))(v5, *MEMORY[0x277CBCBE8], v2);
  swift_getWitnessTable();
  sub_22855CEEC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t Publishers.CombineLatest4.bufferForCombineLatestForGeneratorPipeline(size:)(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = sub_22855CB5C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = sub_22855CB4C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, *MEMORY[0x277CBCBD0], v6);
  (*(v3 + 104))(v5, *MEMORY[0x277CBCBE8], v2);
  swift_getWitnessTable();
  sub_22855CEEC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t HKTypesFeatureTag.value.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_228546DC8()
{
  result = swift_getKeyPath();
  qword_280DEBD80 = result;
  return result;
}

uint64_t static HKTypesFeatureTag.keyPath.getter()
{
  if (qword_280DEBD90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static HKTypesFeatureTag.keyPath.setter(uint64_t a1)
{
  if (qword_280DEBD90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280DEBD80 = a1;
}

uint64_t (*static HKTypesFeatureTag.keyPath.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280DEBD90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_228546F70()
{
  if (qword_280DEBD90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t HealthPluginPlanner.workPlan(_:didFail:)(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v42 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - v14;
  v16 = sub_22855CABC();
  v45 = *(v16 - 8);
  v46 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a4 + 16);
  v43 = a3;
  v19(a3, a4);
  v20 = *(v11 + 16);
  v20(v15, a1, AssociatedTypeWitness);
  swift_unknownObjectRetain();
  v21 = a2;
  v22 = sub_22855CA8C();
  v23 = sub_22855D68C();
  swift_unknownObjectRelease();
  v44 = a2;

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v20;
    v25 = v24;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v47 = v5;
    v48 = v41;
    *v25 = 136315650;
    swift_unknownObjectRetain();
    v26 = sub_22855D1BC();
    v28 = sub_2283F8938(v26, v27, &v48);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    v39(v42, v15, AssociatedTypeWitness);
    v29 = sub_22855D1BC();
    v30 = v23;
    v32 = v31;
    (*(v11 + 8))(v15, AssociatedTypeWitness);
    v33 = sub_2283F8938(v29, v32, &v48);

    *(v25 + 14) = v33;
    *(v25 + 22) = 2112;
    v34 = v44;
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 24) = v35;
    v36 = v40;
    *v40 = v35;
    _os_log_impl(&dword_2283ED000, v22, v30, "%s: Work plan %s failed: %@", v25, 0x20u);
    sub_22841DC98(v36);
    MEMORY[0x22AABAD40](v36, -1, -1);
    v37 = v41;
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v37, -1, -1);
    MEMORY[0x22AABAD40](v25, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v15, AssociatedTypeWitness);
  }

  return (*(v45 + 8))(v18, v46);
}

uint64_t HealthPluginPlanner.store(anchor:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_22855CABC();
  MEMORY[0x28223BE20](v9);
  (*(a4 + 24))(v17, a3, a4);
  v11 = v18;
  v10 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  (*(v10 + 8))(v20, v4, *(a4 + 8), v11, v10);
  __swift_destroy_boxed_opaque_existential_0(v17);
  v12 = v21;
  v13 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v4;
  v15 = *(v13 + 16);
  swift_unknownObjectRetain();
  v15(a1, a2, sub_228548208, v14, v12, v13);

  return __swift_destroy_boxed_opaque_existential_0(v20);
}

uint64_t sub_228547728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2285481A4(0, &qword_280DE8F68, MEMORY[0x277D11BA8], MEMORY[0x277D84560]);
  sub_22855C5CC();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_228560580;
  sub_22855C5EC();
  HealthPluginPlanner.store(anchor:for:)(a1, v7, a3, a4);
}

uint64_t sub_228547854(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22855CABC();
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = *(a4 + 16);
    v14 = a1;
    v13(a3, a4);
    v15 = a1;
    swift_unknownObjectRetain();
    v16 = sub_22855CA8C();
    v17 = sub_22855D68C();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v28 = v8;
      v20 = v19;
      v21 = swift_slowAlloc();
      v29 = a2;
      v30 = v21;
      *v18 = 136315394;
      swift_unknownObjectRetain();
      v22 = sub_22855D1BC();
      v24 = sub_2283F8938(v22, v23, &v30);

      *(v18 + 4) = v24;
      *(v18 + 12) = 2112;
      v25 = a1;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v26;
      *v20 = v26;
      _os_log_impl(&dword_2283ED000, v16, v17, "%s: Failed to update anchor: %@", v18, 0x16u);
      sub_22841DC98(v20);
      MEMORY[0x22AABAD40](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x22AABAD40](v21, -1, -1);
      MEMORY[0x22AABAD40](v18, -1, -1);

      return (*(v9 + 8))(v12, v28);
    }

    else
    {

      return (*(v9 + 8))(v12, v8);
    }
  }

  return result;
}

uint64_t HealthPluginPlanner.allStoredAnchors(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v20 = a2;
  v7 = sub_22855CABC();
  v18[1] = *(v7 - 8);
  v18[2] = v7;
  MEMORY[0x28223BE20](v7);
  v8 = sub_22855C62C();
  v18[0] = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a4 + 24))(v21, a3, a4);
  v11 = v22;
  v12 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(v12 + 8))(v24, v4, *(a4 + 8), v11, v12);
  __swift_destroy_boxed_opaque_existential_0(v21);
  v13 = v25;
  v14 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  (*(a4 + 32))(a3, a4);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = v19;
  v15[5] = v20;
  v15[6] = v4;
  v16 = *(v14 + 8);

  swift_unknownObjectRetain();
  v16(v10, sub_228548214, v15, v13, v14);

  (*(v18[0] + 8))(v10, v8);
  return __swift_destroy_boxed_opaque_existential_0(v24);
}

uint64_t sub_228547F00(void *a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_22855CABC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    return (a3)(a1);
  }

  v34 = a4;
  (*(a7 + 16))(a6, a7);
  swift_unknownObjectRetain();
  sub_2284A6588(a1, 1);
  v18 = sub_22855CA8C();
  v19 = sub_22855D68C();
  swift_unknownObjectRelease();
  sub_2284A6534(a1, 1);
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v33 = a3;
    v21 = v20;
    v22 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v35 = a5;
    v36 = v32;
    *v21 = 136315394;
    swift_unknownObjectRetain();
    v23 = sub_22855D1BC();
    v25 = sub_2283F8938(v23, v24, &v36);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2112;
    v26 = a1;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v27;
    *v22 = v27;
    _os_log_impl(&dword_2283ED000, v18, v19, "%s: Failed to retrieve stored anchors; starting criteria from nil anchors: %@", v21, 0x16u);
    sub_22841DC98(v22);
    MEMORY[0x22AABAD40](v22, -1, -1);
    v28 = v32;
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AABAD40](v28, -1, -1);
    v29 = v21;
    a3 = v33;
    MEMORY[0x22AABAD40](v29, -1, -1);
  }

  (*(v15 + 8))(v17, v14);
  sub_22847D43C(MEMORY[0x277D84F90]);
  a3();
}

void sub_2285481A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

HealthPlatform::FeedItemProminence_optional __swiftcall FeedItemProminence.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 10)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (rawValue == 5)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (!rawValue)
  {
    v3 = 0;
  }

  *v1 = v3;
  return rawValue;
}

uint64_t sub_2285482AC()
{
  v1 = *v0;
  sub_22855E22C();
  MEMORY[0x22AABA2B0](5 * v1);
  return sub_22855E27C();
}

uint64_t sub_228548324(uint64_t a1)
{
  v2 = *v1;
  sub_22855E22C();
  MEMORY[0x22AABA2B0](5 * v2);
  return sub_22855E27C();
}

unint64_t sub_228548440()
{
  result = qword_27D840B68;
  if (!qword_27D840B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840B68);
  }

  return result;
}

unint64_t sub_2285484B4()
{
  result = qword_280DEE990;
  if (!qword_280DEE990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEE990);
  }

  return result;
}

id static DataType.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22855D17C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_228548584(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_22855D59C();
  if (!v19)
  {
    return sub_22855D3FC();
  }

  v41 = v19;
  v45 = sub_22855DD8C();
  v32 = sub_22855DD9C();
  sub_22855DD3C();
  result = sub_22855D58C();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_22855D5DC();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_22855DD7C();
      result = sub_22855D5BC();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*Collection<>.asProfiles(in:)(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t)
{
  v10[2] = a1;
  v5 = type metadata accessor for Profile();
  v7 = sub_228548584(sub_228548EA8, v10, a2, v5, MEMORY[0x277D84A98], a3, MEMORY[0x277D84AC0], v6);
  v8 = sub_228429908(v7);

  return v8;
}

uint64_t SourceProfile.userProfiles.getter(void *a1)
{
  if (!a1)
  {
    return MEMORY[0x277D84FA0];
  }

  sub_228548F14(0, &qword_280DED028, MEMORY[0x277D84560]);
  v2 = (type metadata accessor for UserProfile(0) - 8);
  v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_228560580;
  v5 = v4 + v3;
  v6 = a1;
  v7 = [v6 identifier];
  sub_22855C1BC();

  *(v5 + v2[7]) = v6;
  v8 = sub_22845F998(v4);
  swift_setDeallocating();
  sub_22845FC38(v5);
  swift_deallocClassInstance();
  return v8;
}

id Collection<>.sourceProfile.getter(uint64_t a1, uint64_t a2)
{
  sub_228548F14(0, qword_280DEDB30, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  if (sub_22855D59C() > 1)
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  else
  {
    sub_22855D5CC();
    v5 = type metadata accessor for UserProfile(0);
    if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
    {
      sub_2284C38C8(v4);
      return 0;
    }

    else
    {
      v7 = *&v4[*(v5 + 20)];
      sub_22845FC38(v4);
      return v7;
    }
  }

  return result;
}

void SourceProfile.fetchProfiles(in:)(void *a1, void *a2)
{
  if (a2)
  {
    sub_228548F14(0, &qword_280DED028, MEMORY[0x277D84560]);
    v5 = (type metadata accessor for UserProfile(0) - 8);
    v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_228560580;
    v8 = v7 + v6;
    v9 = a2;
    v10 = [v9 identifier];
    sub_22855C1BC();

    *(v8 + v5[7]) = v9;
    v11 = sub_22845F998(v7);
    swift_setDeallocating();
    sub_22845FC38(v8);
    swift_deallocClassInstance();
  }

  else
  {
    v11 = MEMORY[0x277D84FA0];
  }

  v12 = a2;
  v13 = a1;
  v14 = sub_2284A534C(v11, v13, a2);

  if (!v2)
  {
    sub_228429908(v14);
  }
}

id sub_228548EA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  type metadata accessor for Profile();
  v6 = type metadata accessor for UserProfile(0);
  result = static Profile.findOrCreate(_:in:)(*(a1 + *(v6 + 20)), v5);
  *a2 = result;
  return result;
}

void sub_228548F14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for UserProfile(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

id DataType.hkObjectType.getter()
{
  v1 = [objc_opt_self() dataTypeWithCode_];

  return v1;
}

id sub_2285490C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [objc_opt_self() dataTypeWithCode_];
  *a2 = result;
  return result;
}

void sub_22854911C(id *a1, void **a2)
{
  if (*a1)
  {
    v2 = *a2;
    v3 = *a1;
    [v2 setCodeRaw_];
  }
}

void DataType.hkObjectType.setter(void *a1)
{
  if (a1)
  {
    [v1 setCodeRaw_];
  }
}

void (*DataType.hkObjectType.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = [objc_opt_self() dataTypeWithCode_];
  return sub_22854926C;
}

void sub_22854926C(uint64_t a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (!v3)
    {
      v4 = 0;

LABEL_5:

      return;
    }

LABEL_7:
    v5 = *(a1 + 8);
    v6 = v3;
    [v5 setCodeRaw_];

    v4 = v6;

    goto LABEL_5;
  }

  if (v3)
  {
    goto LABEL_7;
  }
}

void *sub_228549318(void *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = [a1 code];
  sub_228439BBC();
  sub_22840A70C(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_228560570;
  v9 = MEMORY[0x277D83C10];
  *(v8 + 56) = MEMORY[0x277D83B88];
  *(v8 + 64) = v9;
  *(v8 + 32) = v7;
  *(v8 + 96) = MEMORY[0x277D837D0];
  *(v8 + 104) = sub_22840A7C8();
  *(v8 + 72) = 0x77615265646F63;
  *(v8 + 80) = 0xE700000000000000;
  v10 = sub_22855D62C();
  v11 = sub_22843A288(a2, v10, a3);
  if (v3)
  {
  }

  else
  {
    v4 = v11;
    if (v11)
    {
    }

    else
    {
      v12 = objc_opt_self();
      v13 = sub_22855D17C();
      v14 = [v12 insertNewObjectForEntityForName:v13 inManagedObjectContext:a2];

      type metadata accessor for DataType();
      v4 = swift_dynamicCastClassUnconditional();
    }

    [v4 setCodeRaw_];
  }

  return v4;
}

uint64_t static DataType.predicate(for:)(uint64_t a1, uint64_t a2)
{
  sub_228439BBC();
  sub_22840A70C(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_228560570;
  v5 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  v6 = sub_22840A7C8();
  *(v4 + 32) = 0x6D65744964656566;
  *(v4 + 40) = 0xE900000000000073;
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 64) = v6;
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;

  return sub_22855D62C();
}

uint64_t static DataType.predicate(for:)()
{
  sub_228439BBC();
  sub_22840A70C(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228560570;
  v1 = MEMORY[0x277D837D0];
  *(v0 + 56) = MEMORY[0x277D837D0];
  v2 = sub_22840A7C8();
  *(v0 + 64) = v2;
  *(v0 + 32) = 0xD00000000000001DLL;
  *(v0 + 40) = 0x80000002285749A0;
  v3 = ContentKind.rawValue.getter();
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 72) = v3;
  *(v0 + 80) = v4;
  return sub_22855D62C();
}

char *static DataType.predicate(isOneOfDataType:)(unint64_t a1)
{
  sub_22840A70C(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228560570;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_22840A7C8();
  *(v2 + 32) = 0x77615265646F63;
  *(v2 + 40) = 0xE700000000000000;
  if (a1 >> 62)
  {
    v3 = sub_22855DB4C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
LABEL_13:
    sub_228439BBC();
    sub_228549850();
    *(v2 + 96) = v12;
    *(v2 + 104) = sub_2285498A0();
    *(v2 + 72) = v4;
    return sub_22855D62C();
  }

  v14 = MEMORY[0x277D84F90];
  result = sub_228427830(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v13 = v2;
    v6 = 0;
    v4 = v14;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AAB9D20](v6, a1);
      }

      else
      {
        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = [v7 code];

      v11 = *(v14 + 16);
      v10 = *(v14 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_228427830((v10 > 1), v11 + 1, 1);
      }

      ++v6;
      *(v14 + 16) = v11 + 1;
      *(v14 + 8 * v11 + 32) = v9;
    }

    while (v3 != v6);
    v2 = v13;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_228549850()
{
  if (!qword_27D840B70)
  {
    v0 = sub_22855D47C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D840B70);
    }
  }
}

unint64_t sub_2285498A0()
{
  result = qword_27D840B78;
  if (!qword_27D840B78)
  {
    sub_228549850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840B78);
  }

  return result;
}

id Keyword.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id Keyword.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for Keyword();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id Keyword.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Keyword();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228549AA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  result = a3(a1, a2, 1);
  if (!result)
  {
    v9 = objc_opt_self();
    v10 = sub_22855D17C();
    [v9 insertNewObjectForEntityForName:v10 inManagedObjectContext:a1];

    a6(0);

    return swift_dynamicCastClassUnconditional();
  }

  return result;
}

unint64_t sub_228549CC4(unint64_t a1, uint64_t a2)
{
  result = sub_22843C2B8(a1, a2, 1u);
  if (!result)
  {
    v4 = objc_opt_self();
    v5 = sub_22855D17C();
    [v4 insertNewObjectForEntityForName:v5 inManagedObjectContext:a1];

    type metadata accessor for FeedSection();

    return swift_dynamicCastClassUnconditional();
  }

  return result;
}

void *static Keyword.findOrCreate(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_228439BBC();
  sub_22840A70C(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_228560580;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_22840A7C8();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  v7 = sub_22855D62C();
  v8 = sub_228549AA0(a3, v7, sub_22843ABBC, 0x64726F7779654BLL, 0xE700000000000000, type metadata accessor for Keyword);

  v9 = sub_22855D17C();
  [v8 setIdentifier_];

  return v8;
}

id Keyword.__allocating_init(context:identifier:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_self();
  v6 = sub_22855D17C();
  v7 = [v5 entityForName:v6 inManagedObjectContext:a1];

  if (v7)
  {
    v8 = [objc_allocWithZone(v3) initWithEntity:v7 insertIntoManagedObjectContext:a1];
    v9 = sub_22855D17C();

    [v8 setIdentifier_];

    return v8;
  }

  else
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22854A170(void *a1, uint64_t (*a2)(void))
{
  sub_2283F6E48(a1, v7);
  a2(0);
  if (swift_dynamicCast())
  {
    return v6;
  }

  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0xD000000000000038, 0x800000022856EB40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  v5 = sub_22855E34C();
  MEMORY[0x22AAB92A0](v5);

  result = sub_22855DEDC();
  __break(1u);
  return result;
}

void *Feed.addSection(identifier:)(uint64_t a1, uint64_t a2)
{
  v5 = [v2 managedObjectContext];
  if (v5)
  {
    v6 = v5;
    sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
    sub_22840CBD4(0, &qword_280DED008, sub_22840A764, MEMORY[0x277D84560]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_228560570;
    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 64) = sub_22840A7C8();
    *(v7 + 32) = a1;
    *(v7 + 40) = a2;
    *(v7 + 96) = type metadata accessor for Feed();
    *(v7 + 104) = sub_22854C360(&qword_27D840B80, type metadata accessor for Feed, MEMORY[0x277D85388]);
    *(v7 + 72) = v2;

    v8 = v2;
    v9 = sub_22855D62C();
    v10 = sub_228549CC4(v6, v9);
    v11 = sub_22855D17C();
    [v10 setIdentifier_];

    [v10 setFeed_];
    return v10;
  }

  else
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

id Feed.__allocating_init(context:kind:associatedProfileIdentifier:dateUpdated:)(void *a1, unsigned __int8 a2, void *a3, uint64_t a4)
{
  v8 = objc_opt_self();
  v9 = sub_22855D17C();
  v10 = [v8 entityForName:v9 inManagedObjectContext:a1];

  if (v10)
  {
    v11 = [objc_allocWithZone(v4) initWithEntity:v10 insertIntoManagedObjectContext:a1];
    v12 = sub_22855D17C();

    [v11 setKindRawValue_];

    if (a3)
    {
      type metadata accessor for Profile();
      v13 = a3;
      v14 = static Profile.findOrCreate(_:in:)(v13, a1);
      [v11 setAssociatedProfile_];
    }

    v15 = sub_22855C10C();
    [v11 setDateUpdated_];

    v16 = sub_22855C16C();
    (*(*(v16 - 8) + 8))(a4, v16);
    return v11;
  }

  else
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

void Feed.kind.setter(unsigned __int8 a1)
{
  v2 = sub_22855D17C();

  [v1 setKindRawValue_];
}

uint64_t static Feed.feedKeyPathString(feedPrefixKeyPath:feedPropertyKeyPath:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {

    MEMORY[0x22AAB92A0](46, 0xE100000000000000);
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  v9 = v6;

  MEMORY[0x22AAB92A0](a3, a4);

  return v9;
}

double Feed.Kind.contentKinds.getter(char a1)
{
  if (a1 == 3)
  {
    if (qword_280DEE748 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
  }

  return result;
}

uint64_t Feed.Kind.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x48726F4673707061;
  v2 = 0x73656369746F6ELL;
  v3 = 0x73656C6369747261;
  if (a1 != 4)
  {
    v3 = 0x73646E657274;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000011;
  if (a1 != 1)
  {
    v4 = 0x6867696C68676968;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t Feed.Kind.description.getter(unsigned __int8 a1)
{
  v1 = a1;
  v2 = 0xED000068746C6165;
  v3 = 0x48726F4673707061;
  v4 = 0xE700000000000000;
  v5 = 0x73656369746F6ELL;
  v6 = 0xE800000000000000;
  v7 = 0x73656C6369747261;
  if (a1 != 4)
  {
    v7 = 0x73646E657274;
    v6 = 0xE600000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x800000022856D770;
  v9 = 0xD000000000000011;
  if (a1 != 1)
  {
    v9 = 0x6867696C68676968;
    v8 = 0xEA00000000007374;
  }

  if (a1)
  {
    v3 = v9;
    v2 = v8;
  }

  if (a1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (v1 <= 2)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x22AAB92A0](v10, v11);

  return 0x2E646E694BLL;
}

uint64_t sub_22854AC18(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xED000068746C6165;
  v3 = 0x48726F4673707061;
  v4 = *a1;
  v5 = *a2;
  v6 = 0x73656369746F6ELL;
  v7 = 0xE800000000000000;
  v8 = 0x73656C6369747261;
  if (v4 != 4)
  {
    v8 = 0x73646E657274;
    v7 = 0xE600000000000000;
  }

  if (v4 == 3)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v6 = v8;
  }

  v9 = 0xD000000000000011;
  v10 = 0x800000022856D770;
  if (v4 != 1)
  {
    v9 = 0x6867696C68676968;
    v10 = 0xEA00000000007374;
  }

  if (!*a1)
  {
    v9 = 0x48726F4673707061;
    v10 = 0xED000068746C6165;
  }

  if (*a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  if (*a2 > 2u)
  {
    if (v5 == 3)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x73656369746F6ELL)
      {
        goto LABEL_32;
      }
    }

    else if (v5 == 4)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x73656C6369747261)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0xE600000000000000;
      if (v11 != 0x73646E657274)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (*a2)
    {
      if (v5 == 1)
      {
        v2 = 0x800000022856D770;
        if (v11 != 0xD000000000000011)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v3 = 0x6867696C68676968;
      v2 = 0xEA00000000007374;
    }

    if (v11 != v3)
    {
LABEL_32:
      v13 = sub_22855E15C();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v12 != v2)
  {
    goto LABEL_32;
  }

  v13 = 1;
LABEL_33:

  return v13 & 1;
}

uint64_t sub_22854ADF4()
{
  sub_22855E22C();
  sub_22855D20C();

  return sub_22855E27C();
}

uint64_t sub_22854AF08(uint64_t a1)
{
  sub_22855D20C();
}

uint64_t sub_22854B008(uint64_t a1)
{
  sub_22855E22C();
  sub_22855D20C();

  return sub_22855E27C();
}

unint64_t sub_22854B118@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s14HealthPlatform4FeedC4KindO8rawValueAESgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_22854B148(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED000068746C6165;
  v4 = 0x48726F4673707061;
  v5 = 0xE700000000000000;
  v6 = 0x73656369746F6ELL;
  v7 = 0xE800000000000000;
  v8 = 0x73656C6369747261;
  if (v2 != 4)
  {
    v8 = 0x73646E657274;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x800000022856D770;
  v10 = 0xD000000000000011;
  if (v2 != 1)
  {
    v10 = 0x6867696C68676968;
    v9 = 0xEA00000000007374;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t Feed.kind.getter()
{
  v1 = [v0 kindRawValue];
  v2 = sub_22855D1AC();
  v4 = v3;

  result = _s14HealthPlatform4FeedC4KindO8rawValueAESgSS_tcfC_0(v2, v4);
  if (result == 6)
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22854B39C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 kindRawValue];
  v4 = sub_22855D1AC();
  v6 = v5;

  result = _s14HealthPlatform4FeedC4KindO8rawValueAESgSS_tcfC_0(v4, v6);
  if (result == 6)
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

void sub_22854B460(_BYTE *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_22855D17C();

  [v2 setKindRawValue_];
}

void (*Feed.kind.modify(uint64_t a1))(void **a1)
{
  v2 = v1;
  *a1 = v2;
  v4 = [v2 kindRawValue];
  v5 = sub_22855D1AC();
  v7 = v6;

  v8 = _s14HealthPlatform4FeedC4KindO8rawValueAESgSS_tcfC_0(v5, v7);
  if (v8 == 6)
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v8;
    return sub_22854B680;
  }

  return result;
}

void sub_22854B680(void **a1)
{
  v1 = *a1;
  v2 = sub_22855D17C();

  [v1 setKindRawValue_];
}

void *Feed.allFeedItems.getter()
{
  v1 = [v0 sections];
  v2 = sub_22851F98C(v1, sub_22854C26C, 0);

  if ((v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    goto LABEL_51;
  }

  v3 = *(v2 + 16);
  if (v3)
  {
    goto LABEL_4;
  }

  while (2)
  {

    v6 = MEMORY[0x277D84F90];
    v13 = *(MEMORY[0x277D84F90] + 16);
    if (!v13)
    {
      goto LABEL_53;
    }

LABEL_13:
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v38 = v6 + 32;
    v35 = v13;
    v36 = v6;
    while (v14 < *(v6 + 16))
    {
      v16 = *(v38 + 8 * v14);
      v17 = v16 >> 62;
      if (v16 >> 62)
      {
        v18 = sub_22855DB4C();
      }

      else
      {
        v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v2 = v15 >> 62;
      if (v15 >> 62)
      {
        v34 = sub_22855DB4C();
        v20 = v34 + v18;
        if (__OFADD__(v34, v18))
        {
LABEL_45:
          __break(1u);
          break;
        }
      }

      else
      {
        v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v20 = v19 + v18;
        if (__OFADD__(v19, v18))
        {
          goto LABEL_45;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v2)
        {
          v21 = v15 & 0xFFFFFFFFFFFFFF8;
          v40 = v15;
          if (v20 <= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }

LABEL_26:
        sub_22855DB4C();
        goto LABEL_27;
      }

      if (v2)
      {
        goto LABEL_26;
      }

LABEL_27:
      v40 = sub_22855DCBC();
      v21 = v40 & 0xFFFFFFFFFFFFFF8;
LABEL_28:
      v22 = *(v21 + 16);
      v2 = *(v21 + 24);
      if (v17)
      {
        v24 = v21;
        v25 = sub_22855DB4C();
        v21 = v24;
        v23 = v25;
        if (v25)
        {
LABEL_32:
          if (((v2 >> 1) - v22) < v18)
          {
            goto LABEL_48;
          }

          v39 = v14;
          v26 = v21 + 8 * v22 + 32;
          v37 = v21;
          if (v17)
          {
            if (v23 < 1)
            {
              goto LABEL_50;
            }

            sub_22840CBD4(0, &qword_27D83F410, type metadata accessor for FeedItem, MEMORY[0x277D83940]);
            v2 = sub_22854C2F4(&qword_27D840B88, &qword_27D83F410, type metadata accessor for FeedItem, sub_22840CBD4);
            for (i = 0; i != v23; ++i)
            {
              v28 = sub_2284A523C(v41, i, v16);
              v30 = *v29;
              (v28)(v41, 0);
              *(v26 + 8 * i) = v30;
            }

            v13 = v35;
            v6 = v36;
          }

          else
          {
            type metadata accessor for FeedItem();
            swift_arrayInitWithCopy();
          }

          v14 = v39;
          if (v18 > 0)
          {
            v31 = *(v37 + 16);
            v32 = __OFADD__(v31, v18);
            v33 = v31 + v18;
            if (v32)
            {
              goto LABEL_49;
            }

            *(v37 + 16) = v33;
          }

          goto LABEL_15;
        }
      }

      else
      {
        v23 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23)
        {
          goto LABEL_32;
        }
      }

      if (v18 > 0)
      {
        goto LABEL_47;
      }

LABEL_15:
      ++v14;
      v15 = v40;
      if (v14 == v13)
      {
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    v3 = sub_22855DB4C();
    if (!v3)
    {
      continue;
    }

    break;
  }

LABEL_4:
  v41[0] = MEMORY[0x277D84F90];
  result = sub_228427850(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = v41[0];
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AAB9D20](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = [v7 feedItems];
      v10 = sub_22851F96C(v9, sub_22851FE10, 0);

      v41[0] = v6;
      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_228427850((v11 > 1), v12 + 1, 1);
        v6 = v41[0];
      }

      ++v5;
      *(v6 + 16) = v12 + 1;
      *(v6 + 8 * v12 + 32) = v10;
    }

    while (v3 != v5);

    v13 = *(v6 + 16);
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_53:
    v15 = MEMORY[0x277D84F90];
LABEL_54:

    return v15;
  }

  return result;
}

void *Feed.diagnosticDescription.getter()
{
  v1 = v0;
  v2 = sub_22855C16C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22855C06C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45[0] = 0;
  v45[1] = 0xE000000000000000;
  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0x2064656546, 0xE500000000000000);
  v10 = [v0 objectID];
  v11 = [v10 URIRepresentation];

  sub_22855C00C();
  v12 = sub_22855BF7C();
  v14 = v13;
  (*(v7 + 8))(v9, v6);
  MEMORY[0x22AAB92A0](v12, v14);

  MEMORY[0x22AAB92A0](0x646E696B20666F20, 0xE900000000000020);
  v15 = [v1 kindRawValue];
  v16 = sub_22855D1AC();
  v18 = v17;

  v19 = _s14HealthPlatform4FeedC4KindO8rawValueAESgSS_tcfC_0(v16, v18);
  if (v19 == 6 || (v20 = Feed.Kind.description.getter(v19), MEMORY[0x22AAB92A0](v20), , MEMORY[0x22AAB92A0](0xD000000000000012, 0x8000000228574B30), v21 = [v1 dateUpdated], sub_22855C13C(), v21, sub_22854C360(&qword_280DECD88, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]), v22 = sub_22855E11C(), MEMORY[0x22AAB92A0](v22), , (*(v3 + 8))(v5, v2), MEMORY[0x22AAB92A0](0x20646565460A2ELL, 0xE700000000000000), v23 = objc_msgSend(v1, sel_kindRawValue), v24 = sub_22855D1AC(), v26 = v25, v23, v27 = _s14HealthPlatform4FeedC4KindO8rawValueAESgSS_tcfC_0(v24, v26), v27 == 6))
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  else
  {
    v28 = Feed.Kind.description.getter(v27);
    MEMORY[0x22AAB92A0](v28);

    MEMORY[0x22AAB92A0](0x6E6961746E6F6320, 0xEA00000000002073);
    v29 = [v1 sections];
    v30 = [v29 count];

    v44[0] = v30;
    v31 = sub_22855E11C();
    MEMORY[0x22AAB92A0](v31);

    MEMORY[0x22AAB92A0](0x6E6F697463657320, 0xEB000000000A3A73);
    v32 = v45[0];
    v33 = [v1 sections];
    v34 = sub_22851F98C(v33, sub_22854C26C, 0);

    if ((v34 & 0x8000000000000000) != 0 || (v34 & 0x4000000000000000) != 0)
    {
      goto LABEL_17;
    }

    for (i = *(v34 + 16); i; i = sub_22855DB4C())
    {
      v36 = 0;
      while (1)
      {
        if ((v34 & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x22AAB9D20](v36, v34);
        }

        else
        {
          if (v36 >= *(v34 + 16))
          {
            goto LABEL_16;
          }

          v37 = *(v34 + 8 * v36 + 32);
        }

        v38 = v37;
        v39 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        v44[0] = 0;
        v44[1] = 0xE000000000000000;
        sub_22855DC6C();

        v43[1] = v36;
        strcpy(v44, "FeedSection ");
        BYTE5(v44[1]) = 0;
        HIWORD(v44[1]) = -5120;
        v40 = sub_22855E11C();
        MEMORY[0x22AAB92A0](v40);

        MEMORY[0x22AAB92A0](2618, 0xE200000000000000);
        MEMORY[0x22AAB92A0](v44[0], v44[1]);

        v41 = FeedSection.diagnosticDescription.getter();
        v32 = v45;
        MEMORY[0x22AAB92A0](v41);

        ++v36;
        if (v39 == i)
        {
          v32 = v45[0];
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_14:

    return v32;
  }

  return result;
}

uint64_t sub_22854C26C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22854A170(a1, type metadata accessor for FeedSection);
  *a2 = result;
  return result;
}

unint64_t _s14HealthPlatform4FeedC4KindO8rawValueAESgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_22855DFBC();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22854C2F4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  result = *a1;
  if (!result)
  {
    a4(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22854C360(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22854C3AC()
{
  result = qword_280DE9FD0;
  if (!qword_280DE9FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE9FD0);
  }

  return result;
}

unint64_t sub_22854C454()
{
  result = qword_27D840BA0;
  if (!qword_27D840BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840BA0);
  }

  return result;
}

uint64_t Publisher.firstIfNecessary(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22855CBAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = (a1 + *(type metadata accessor for GeneratorContext(0) + 28));
  v9 = v8[3];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v9);
  if ((*(v10 + 16))(v9, v10))
  {

    return sub_22855CE6C();
  }

  else
  {
    sub_22855CEDC();
    swift_getWitnessTable();
    v12 = sub_22855CE6C();
    (*(v5 + 8))(v7, v4);
    return v12;
  }
}

uint64_t sub_22854C648()
{
  v1 = v0;
  sub_22854E3B0(0);
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  v36 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GeneratorContext(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v39 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FeatureStatusFeedItemGeneratorPipeline(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22854E444(0);
  v46 = v11;
  v41 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22854E540(0);
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x28223BE20](v14);
  v43 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22854E650(v1, v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FeatureStatusFeedItemGeneratorPipeline);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  sub_22854ED30(v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for FeatureStatusFeedItemGeneratorPipeline);
  sub_22854E4D8(0);
  v19 = v18;
  v40 = sub_22854E4F8(&qword_280DE9920, sub_22854E4D8, MEMORY[0x277CBCD90]);
  sub_22855CE2C();
  v20 = *(v8 + 28);
  v42 = v1;
  v21 = v1 + v20;
  v22 = v39;
  sub_22854E650(v21, v39, type metadata accessor for GeneratorContext);
  v23 = (v22 + *(v5 + 36));
  v24 = v23[3];
  v25 = v23[4];
  __swift_project_boxed_opaque_existential_1(v23, v24);
  LOBYTE(v5) = (*(v25 + 16))(v24, v25);
  sub_22854E4F8(&qword_280DE9768, sub_22854E444, MEMORY[0x277CBCEB8]);
  if (v5)
  {
    v26 = sub_22855CE6C();
  }

  else
  {
    v35[1] = v19;
    v27 = v36;
    sub_22855CEDC();
    sub_22854E4F8(&qword_280DE9B08, sub_22854E3B0, MEMORY[0x277CBCC58]);
    v28 = v38;
    v26 = sub_22855CE6C();
    (*(v37 + 8))(v27, v28);
  }

  (*(v41 + 8))(v13, v46);
  sub_22854D190(v22);
  v47 = v26;
  sub_22854E650(v42, v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FeatureStatusFeedItemGeneratorPipeline);
  v29 = swift_allocObject();
  sub_22854ED30(v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v16, type metadata accessor for FeatureStatusFeedItemGeneratorPipeline);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_22854E86C;
  *(v30 + 24) = v29;
  sub_22847FFA8();
  v31 = v43;
  sub_22855CE8C();

  sub_22854E4F8(&qword_280DE9BE0, sub_22854E540, MEMORY[0x277CBCC08]);
  v32 = v45;
  v33 = sub_22855CE6C();
  (*(v44 + 8))(v31, v32);
  return v33;
}

uint64_t ChangePublisherFeedItemGeneratorPipeline.publisher.getter(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for GeneratorContext(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v50 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 - 8);
  MEMORY[0x28223BE20](v6);
  v38 = v9;
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a2;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = sub_22855CE3C();
  v45 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v41 = v36 - v11;
  swift_getAssociatedTypeWitness();
  v48 = sub_22855CCCC();
  v47 = sub_22847FFA8();
  WitnessTable = swift_getWitnessTable();
  v49 = sub_22855CB6C();
  v51 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v44 = v36 - v12;
  v39 = *(v8 + 16);
  v36[0] = v10;
  v39(v10, v2, a1);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  v15 = v42;
  *(v14 + 16) = a1;
  *(v14 + 24) = v15;
  v16 = *(v8 + 32);
  v36[1] = v8 + 32;
  v37 = v16;
  v17 = v10;
  v18 = a1;
  v16(v14 + v13, v17, a1);
  v19 = v41;
  sub_22855CE2C();
  v20 = v15;
  v21 = *(v15 + 48);
  v22 = v50;
  v23 = v2;
  v24 = v18;
  v21(v18, v20);
  v25 = v43;
  v26 = swift_getWitnessTable();
  v27 = v19;
  v28 = Publisher.firstIfNecessary(for:)(v22, v25, v26);
  sub_22854D190(v22);
  (*(v45 + 8))(v27, v25);
  v52 = v28;
  v29 = v36[0];
  v39(v36[0], v23, v24);
  v30 = swift_allocObject();
  *(v30 + 16) = v24;
  *(v30 + 24) = v20;
  v37(v30 + v13, v29, v24);
  v31 = swift_allocObject();
  v31[2] = v24;
  v31[3] = v20;
  v31[4] = sub_22854DE88;
  v31[5] = v30;
  v32 = v44;
  sub_22855CE8C();

  v33 = v49;
  swift_getWitnessTable();
  v34 = sub_22855CE6C();
  (*(v51 + 8))(v32, v33);
  return v34;
}

uint64_t sub_22854D190(uint64_t a1)
{
  v2 = type metadata accessor for GeneratorContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22854D1EC@<X0>(uint64_t (*a1)(uint64_t a1)@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v60 = a2;
  v61 = a1;
  v74 = a3;
  sub_22854E958(0);
  v5 = *(v4 - 8);
  v67 = v4;
  v68 = v5;
  MEMORY[0x28223BE20](v4);
  v65 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22854EB04(0);
  v8 = *(v7 - 8);
  v69 = v7;
  v70 = v8;
  MEMORY[0x28223BE20](v7);
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GeneratorContext(0);
  v64 = *(v10 - 8);
  v63 = *(v64 + 64);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v62 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v76 = &v59 - v13;
  v14 = sub_22855C37C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FeatureStatusFeedItemGeneratorPipeline(0);
  v19 = v18 - 8;
  v20 = *(v18 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22854E9EC(0);
  v72 = v23;
  v75 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v71 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v73 = &v59 - v26;
  sub_22854E650(a2, v22, type metadata accessor for FeatureStatusFeedItemGeneratorPipeline);
  (*(v15 + 16))(v17, v61, v14);
  v27 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v28 = (v21 + *(v15 + 80) + v27) & ~*(v15 + 80);
  v29 = swift_allocObject();
  sub_22854ED30(v22, v29 + v27, type metadata accessor for FeatureStatusFeedItemGeneratorPipeline);
  (*(v15 + 32))(v29 + v28, v17, v14);
  sub_22854EA80(0);
  sub_22854E4F8(&qword_280DE98F0, sub_22854EA80, MEMORY[0x277CBCD90]);
  v30 = v73;
  sub_22855CE2C();
  v31 = *(v19 + 28);
  v61 = type metadata accessor for GeneratorContext;
  v32 = v60;
  sub_22854E650(v60 + v31, v76, type metadata accessor for GeneratorContext);
  v33 = v32;
  v34 = *v32;
  v35 = v33[1];
  v36 = v33[2];
  LOBYTE(v28) = *(v33 + 24);
  v37 = v33 + *(v19 + 32);
  v38 = *v37;
  v39 = *(v37 + 1);
  v40 = *(v37 + 2);
  LOBYTE(v22) = v37[24];
  (*(v75 + 16))(v71, v30, v72);
  v41 = v74;
  *v74 = v34;
  v41[1] = v35;
  v41[2] = v36;
  *(v41 + 24) = v28;
  v41[5] = v38;
  v41[6] = v39;
  v41[7] = v40;
  *(v41 + 64) = v22;
  v42 = v34;

  sub_22845063C(v38, v39, v40, v22, v43);
  sub_22854E4F8(&qword_280DE9758, sub_22854E9EC, MEMORY[0x277CBCEB8]);
  v44 = v65;
  sub_22855CEDC();
  v46 = v61;
  v45 = v62;
  sub_22854E650(v76, v62, v61);
  v47 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v48 = (v63 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  sub_22854ED30(v45, v49 + v47, v46);
  v50 = v49 + v48;
  *v50 = v38;
  *(v50 + 8) = v39;
  *(v50 + 16) = v40;
  *(v50 + 24) = v22;
  sub_22845063C(v38, v39, v40, v22, v51);
  sub_2284773B4();
  sub_22854E4F8(&qword_280DE9AF8, sub_22854E958, MEMORY[0x277CBCC58]);
  v53 = v66;
  v52 = v67;
  sub_22855CE8C();

  (*(v68 + 8))(v44, v52);
  sub_22854E4F8(&qword_280DE9B68, sub_22854EB04, MEMORY[0x277CBCC08]);
  v54 = v69;
  v55 = sub_22855CE6C();
  (*(v70 + 8))(v53, v54);
  v56 = *(v75 + 8);
  v57 = v72;
  v56(v71, v72);
  sub_22854D190(v76);
  result = (v56)(v73, v57);
  v74[4] = v55;
  return result;
}

uint64_t sub_22854D934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a2;
  v48 = a1;
  v51 = a5;
  v8 = type metadata accessor for GeneratorContext(0);
  MEMORY[0x28223BE20](v8 - 8);
  v50 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v45 = *(v10 + 64);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v39 - v12;
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v47 = sub_22855CE3C();
  v49 = *(v47 - 8);
  v17 = MEMORY[0x28223BE20](v47);
  v46 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v40 = &v39 - v19;
  (*(v14 + 16))(v16, a2, a3);
  v20 = v13;
  v21 = v13;
  v22 = AssociatedTypeWitness;
  (*(v10 + 16))(v20, v48, AssociatedTypeWitness);
  v23 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v24 = (v15 + v23 + *(v10 + 80)) & ~*(v10 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  *(v25 + 24) = a4;
  (*(v14 + 32))(v25 + v23, v16, a3);
  (*(v10 + 32))(v25 + v24, v21, v22);
  v26 = v40;
  sub_22855CE2C();
  v27 = v50;
  (*(a4 + 48))(a3, a4);
  (*(*(a4 + 8) + 16))(&v55, a3);
  v52 = v55;
  v53 = v56;
  v54 = v57;
  v28 = (*(a4 + 56))(a3, a4);
  v30 = v29;
  v32 = v31;
  LODWORD(a4) = v33;
  v34 = v49;
  v36 = v46;
  v35 = v47;
  (*(v49 + 16))(v46, v26, v47);
  WitnessTable = swift_getWitnessTable();
  FeedItemGenerator.init<A>(context:domain:feedItemPredicate:feedItemsPublisher:)(v27, &v52, v28, v30, v32, a4, v36, v35, v51, WitnessTable);
  return (*(v34 + 8))(v26, v35);
}

uint64_t objectdestroyTm_4()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22854DEC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 32);
  a2[3] = &type metadata for FeedItemGenerator;
  a2[4] = &protocol witness table for FeedItemGenerator;
  *a2 = swift_allocObject();
  return v4(a1);
}

uint64_t SynchronousChangePublisherFeedItemGeneratorPipeline.makeFeedItemsPublisher(change:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v21[0] = a3;
  v21[1] = a4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = v21 - v11;
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, v5, a2);
  (*(v9 + 16))(v12, a1, AssociatedTypeWitness);
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = (v14 + v16 + *(v9 + 80)) & ~*(v9 + 80);
  v18 = swift_allocObject();
  v19 = v21[0];
  *(v18 + 16) = a2;
  *(v18 + 24) = v19;
  (*(v13 + 32))(v18 + v16, v15, a2);
  (*(v9 + 32))(v18 + v17, v12, AssociatedTypeWitness);
  sub_228504C5C(0);
  sub_22854E4F8(&qword_280DE9840, sub_228504C5C, MEMORY[0x277CBCE80]);
  return sub_22855CE2C();
}

uint64_t sub_22854E1E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)) + *(*(v1 - 8) + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  (*(v2 + 16))(v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80)), v1, v2);
  sub_2285030FC(0);
  return sub_22855CDCC();
}

void sub_22854E3B0(uint64_t a1)
{
  if (!qword_280DE9B00)
  {
    sub_22854E444(255);
    sub_22854E4F8(&qword_280DE9768, sub_22854E444, MEMORY[0x277CBCEB8]);
    v1 = sub_22855CBAC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9B00);
    }
  }
}

void sub_22854E444(uint64_t a1)
{
  if (!qword_280DE9760)
  {
    sub_22854E4D8(255);
    sub_22854E4F8(&qword_280DE9920, sub_22854E4D8, MEMORY[0x277CBCD90]);
    v1 = sub_22855CE3C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9760);
    }
  }
}

uint64_t sub_22854E4F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22854E540(uint64_t a1)
{
  if (!qword_280DE9BD8)
  {
    sub_22854E4D8(255);
    sub_22847FFA8();
    sub_22854E4F8(&qword_280DE9920, sub_22854E4D8, MEMORY[0x277CBCD90]);
    v1 = sub_22855CB6C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9BD8);
    }
  }
}

uint64_t sub_22854E5EC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FeatureStatusFeedItemGeneratorPipeline(0);
  result = sub_2284506B8();
  *a1 = result;
  return result;
}

uint64_t sub_22854E650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_11Tm()
{
  v1 = type metadata accessor for FeatureStatusFeedItemGeneratorPipeline(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = (v0 + v3 + *(v1 + 20));

  v6 = type metadata accessor for GeneratorContext(0);
  v7 = (v5 + v6[5]);
  sub_228450F00(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {

    v8 = *(type metadata accessor for CountryRetrievalRecord(0) + 24);
    v9 = sub_22855C16C();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  __swift_destroy_boxed_opaque_existential_0((v5 + v6[7]));
  __swift_destroy_boxed_opaque_existential_0((v5 + v6[8]));
  sub_228451F14(*(v0 + v3 + *(v1 + 24)), *(v0 + v3 + *(v1 + 24) + 8), *(v0 + v3 + *(v1 + 24) + 16), *(v0 + v3 + *(v1 + 24) + 24));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22854E86C@<X0>(uint64_t (*a1)(uint64_t a1)@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for FeatureStatusFeedItemGeneratorPipeline(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_22854D1EC(a1, v6, a2);
}

uint64_t sub_22854E8EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  a2[3] = &type metadata for FeedItemGenerator;
  a2[4] = &protocol witness table for FeedItemGenerator;
  *a2 = swift_allocObject();
  return v4(a1);
}

void sub_22854E958(uint64_t a1)
{
  if (!qword_280DE9AF0)
  {
    sub_22854E9EC(255);
    sub_22854E4F8(&qword_280DE9758, sub_22854E9EC, MEMORY[0x277CBCEB8]);
    v1 = sub_22855CBAC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9AF0);
    }
  }
}

void sub_22854E9EC(uint64_t a1)
{
  if (!qword_280DE9750)
  {
    sub_22854EA80(255);
    sub_22854E4F8(&qword_280DE98F0, sub_22854EA80, MEMORY[0x277CBCD90]);
    v1 = sub_22855CE3C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9750);
    }
  }
}

void sub_22854EAA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22855CCCC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22854EB04(uint64_t a1)
{
  if (!qword_280DE9B60)
  {
    sub_22854E958(255);
    sub_2284773B4();
    sub_22854E4F8(&qword_280DE9AF8, sub_22854E958, MEMORY[0x277CBCC58]);
    v1 = sub_22855CB6C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9B60);
    }
  }
}

void *sub_22854EBB0@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = sub_22854E4F8(&qword_280DEA1E0, type metadata accessor for FeatureStatusFeedItemGeneratorPipeline, &protocol conformance descriptor for FeatureStatusFeedItemGeneratorPipeline);
  v5 = *(v4 + 72);
  v6 = type metadata accessor for FeatureStatusFeedItemGeneratorPipeline(0);
  result = v5(&v8, a1, v6, v4);
  *a2 = v8;
  return result;
}

void *sub_22854EC5C@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for FeatureStatusFeedItemGeneratorPipeline(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_22855C37C() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_22854EBB0(v7, a1);
}

uint64_t sub_22854ED30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22854ED98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)) + *(*(v1 - 8) + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  return (*(v2 + 72))(v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80)), v1, v2);
}

void sub_22854EEE0()
{
  v1 = v0;
  v50[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22855C06C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v46[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v46[-v7];
  v9 = [v0 URL];
  if (v9)
  {
    v10 = v9;
    sub_22855C00C();

    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v11 = sub_22855CABC();
    __swift_project_value_buffer(v11, qword_280DEEC98);
    v12 = sub_22855CA8C();
    v13 = sub_22855D66C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2283ED000, v12, v13, "Destroying Core Data persistent store", v14, 2u);
      MEMORY[0x22AABAD40](v14, -1, -1);
    }

    v15 = [objc_allocWithZone(MEMORY[0x277CBE450]) init];
    v16 = [objc_allocWithZone(MEMORY[0x277CBE4D8]) initWithManagedObjectModel_];

    v17 = sub_22855BFBC();
    v18 = [v1 type];
    if (!v18)
    {
      sub_22855D1AC();
      v18 = sub_22855D17C();
    }

    v50[0] = 0;
    v19 = [v16 destroyPersistentStoreAtURL:v17 withType:v18 options:0 error:v50];

    if (v19)
    {
      v20 = *(v3 + 8);
      v21 = v50[0];
      v20(v8, v2);
    }

    else
    {
      v29 = v50[0];
      v30 = sub_22855BF3C();

      swift_willThrow();
      (*(v3 + 16))(v6, v8, v2);
      v31 = v30;
      v32 = sub_22855CA8C();
      v33 = sub_22855D68C();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v50[0] = v48;
        *v34 = 136315394;
        v47 = v33;
        v35 = sub_22855BF7C();
        v37 = v36;
        v38 = *(v3 + 8);
        v38(v6, v2);
        v39 = sub_2283F8938(v35, v37, v50);

        *(v34 + 4) = v39;
        *(v34 + 12) = 2080;
        v49 = v30;
        v40 = v30;
        sub_228418D44();
        v41 = sub_22855D1BC();
        v43 = sub_2283F8938(v41, v42, v50);

        *(v34 + 14) = v43;
        _os_log_impl(&dword_2283ED000, v32, v47, "Could not destroy Core Data persistent store at %s Error: %s", v34, 0x16u);
        v44 = v48;
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v44, -1, -1);
        MEMORY[0x22AABAD40](v34, -1, -1);

        v38(v8, v2);
      }

      else
      {

        v45 = *(v3 + 8);
        v45(v6, v2);
        v45(v8, v2);
      }
    }
  }

  else
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v22 = sub_22855CABC();
    __swift_project_value_buffer(v22, qword_280DEEC98);
    v23 = v0;
    v48 = sub_22855CA8C();
    v24 = sub_22855D68C();

    if (os_log_type_enabled(v48, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v23;
      *v26 = v23;
      v27 = v23;
      _os_log_impl(&dword_2283ED000, v48, v24, "Can't destroy store at description because description has no URL: %@", v25, 0xCu);
      sub_22841DC98(v26);
      MEMORY[0x22AABAD40](v26, -1, -1);
      MEMORY[0x22AABAD40](v25, -1, -1);
    }

    v28 = v48;
  }
}

uint64_t SharableModelContext.sharableModelChangePublisher(for:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (*(a1 + 16))
  {
    v4 = a3;
    v5 = a2;

    a2 = v5;
    a3 = v4;
  }

  else
  {
    v6 = 0;
  }

  v9[0] = v6;
  v9[1] = 0;
  v7 = (*(a3 + 48))(v9, a2);

  return v7;
}

{
  v6 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (!sub_22855DB4C())
  {
    goto LABEL_5;
  }

LABEL_3:

LABEL_6:
  v9[0] = 0;
  v9[1] = v6;
  v7 = (*(a3 + 48))(v9, a2, a3);

  return v7;
}

uint64_t PluginSharableModelQueryPredicate.init(identifiers:objectTypes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double static PluginSharableModelQueryPredicate.unspecified.getter@<D0>(void *a1@<X8>)
{
  if (qword_280DEA768 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = unk_280DEA778;
  *a1 = qword_280DEA770;
  a1[1] = v1;

  return result;
}

uint64_t dispatch thunk of SharableModelContext.previousSharableModelPublisher(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 32))(a1, a2);
}

{
  return (*(a3 + 40))(a1, a2);
}

uint64_t HealthKitProvider.environmentalStateComponents(observer:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_22855CFAC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22840CB74(0, &qword_280DE8F48, &qword_280DE9E48, MEMORY[0x277D11C88], 0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_228560580;
  *v6 = 1;
  (*(v4 + 104))(v6, *MEMORY[0x277D85188], v3);
  type metadata accessor for SummaryPinnedContentStateComponent(0);
  swift_allocObject();
  v8 = swift_unknownObjectRetain();
  v9 = sub_2284B1700(v8, a2, sub_2284B1668, 0, sub_2284B16F8, 0, v6);
  v10 = sub_228550884(&qword_280DEA6B8, type metadata accessor for SummaryPinnedContentStateComponent, &protocol conformance descriptor for SummaryPinnedContentStateComponent);
  *(v7 + 32) = v9;
  *(v7 + 40) = v10;
  return v7;
}

uint64_t sub_22854F938(uint64_t a1, uint64_t a2)
{
  v3 = sub_22855CFAC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22840CB74(0, &qword_280DE8F48, &qword_280DE9E48, MEMORY[0x277D11C88], 0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_228560580;
  *v6 = 1;
  (*(v4 + 104))(v6, *MEMORY[0x277D85188], v3);
  type metadata accessor for SummaryPinnedContentStateComponent(0);
  swift_allocObject();
  v8 = swift_unknownObjectRetain();
  v9 = sub_2284B1700(v8, a2, sub_2284B1668, 0, sub_2284B16F8, 0, v6);
  v10 = sub_228550884(&qword_280DEA6B8, type metadata accessor for SummaryPinnedContentStateComponent, &protocol conformance descriptor for SummaryPinnedContentStateComponent);
  *(v7 + 32) = v9;
  *(v7 + 40) = v10;
  return v7;
}

void _s14HealthPlatform0A11KitProviderC12inputSignals3for8observerSay0A13Orchestration11InputSignal_pGAG11WorkContext_p_AG0jK8Observer_ptF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22855CABC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v11 = swift_conformsToProtocol2();
  if (!v11 || !a1)
  {
    return;
  }

  v12 = v11;
  v121 = MEMORY[0x277D84F90];
  ObjectType = swift_getObjectType();
  v115 = a1;
  v14 = ObjectType;
  v113 = v10;
  v15 = v7;
  v16 = v8;
  v17 = *(v12 + 16);
  swift_unknownObjectRetain();
  v116 = v14;
  v114 = v12;
  v18 = v17(v14, v12);
  v19 = a4;
  v20 = v16;
  v21 = v15;
  v22 = a3;
  if (v18)
  {
    v23 = v18;
    v110 = v20;
    v107[1] = v21;
    sub_22840CB74(0, &qword_280DE8F78, &qword_280DE9F60, MEMORY[0x277D11B90], 1);
    v111 = v24;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22856C680;
    type metadata accessor for CloudSyncStatusInputSignal.ObserverShim();
    v26 = swift_allocObject();
    *(v26 + 16) = v23;
    *(v26 + 24) = 0;
    v27 = type metadata accessor for CloudSyncStatusInputSignal();
    v28 = a4;
    v29 = objc_allocWithZone(v27);
    v30 = v23;
    v31 = swift_unknownObjectRetain();
    v32 = sub_22853D0AC(v31, a4, v26, v29);
    swift_unknownObjectRelease();
    *(inited + 56) = v27;
    *(inited + 64) = sub_228550884(qword_280DEAF50, type metadata accessor for CloudSyncStatusInputSignal, &protocol conformance descriptor for CloudSyncStatusInputSignal);
    *(inited + 32) = v32;
    InputSignal = type metadata accessor for DatabaseChangesQueryInputSignal();
    v34 = v115;
    v35 = *(v114 + 8);
    v36 = v116;
    v37 = sub_22844AA9C(v115, v22, v28, v30, InputSignal, v116, v35);
    *(inited + 96) = InputSignal;
    *(inited + 104) = sub_228550884(&qword_280DEAA08, type metadata accessor for DatabaseChangesQueryInputSignal, &protocol conformance descriptor for DatabaseChangesQueryInputSignal);
    *(inited + 72) = v37;
    v38 = type metadata accessor for FeatureStatusInputSignal();
    swift_unknownObjectRetain_n();
    v39 = v30;
    swift_unknownObjectRetain_n();
    v40 = v39;
    v41 = sub_22844F228(v34, v22, v28, v40, v38, v36, v35);
    *(inited + 136) = v38;
    *(inited + 144) = sub_228550884(&unk_280DEB9D0, type metadata accessor for FeatureStatusInputSignal, &protocol conformance descriptor for FeatureStatusInputSignal);
    *(inited + 112) = v41;
    v42 = type metadata accessor for HealthKitUnitPreferencesInputSignal();
    v43 = sub_2284C5B20(v34, v22, v28, v40, v42, v36, v35);
    *(inited + 176) = v42;
    *(inited + 184) = sub_228550884(&qword_280DEC680, type metadata accessor for HealthKitUnitPreferencesInputSignal, &protocol conformance descriptor for HealthKitUnitPreferencesInputSignal);
    *(inited + 152) = v43;
    v44 = type metadata accessor for MedicalIDChangesInputSignal();
    swift_unknownObjectRetain_n();
    v45 = v40;
    swift_unknownObjectRetain();
    v46 = sub_2284F0C40(v34, v22, v28, v45, 0, v44, v36, v35);
    *(inited + 216) = v44;
    *(inited + 224) = sub_228550884(&qword_280DEAE78, type metadata accessor for MedicalIDChangesInputSignal, &protocol conformance descriptor for MedicalIDChangesInputSignal);
    *(inited + 192) = v46;
    v47 = type metadata accessor for ObjectTypeAnchorQueryInputSignal();
    v112 = v28;
    v109 = v35;
    v48 = sub_228534EA0(v34, v22, v28, v45, v47, v36, v35);
    *(inited + 256) = v47;
    *(inited + 264) = sub_228550884(&qword_280DEA848, type metadata accessor for ObjectTypeAnchorQueryInputSignal, &protocol conformance descriptor for ObjectTypeAnchorQueryInputSignal);
    *(inited + 232) = v48;
    v49 = qword_280DED1C0;
    v50 = v45;
    swift_unknownObjectRetain();
    v51 = v50;
    swift_unknownObjectRetain();
    if (v49 != -1)
    {
      swift_once();
    }

    v52 = qword_280DED1C8;
    v53 = type metadata accessor for DefaultProfileNotificationSettingsSource();
    v54 = objc_allocWithZone(v53);
    *&v54[OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_healthStore] = v51;
    sub_2284BF424(0);
    v55 = swift_allocObject();
    *(v55 + 40) = 0;
    *(v55 + 24) = 0;
    *(v55 + 32) = 0;
    *(v55 + 16) = v52;
    *&v54[OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_protectedState] = v55;
    v117.receiver = v54;
    v117.super_class = v53;
    v56 = v52;
    v57 = objc_msgSendSuper2(&v117, sel_init);

    v58 = type metadata accessor for ProfileNotificationSettingsInputSignal();
    v59 = swift_allocObject();
    v59[7] = v53;
    v59[8] = &protocol witness table for DefaultProfileNotificationSettingsSource;
    v59[2] = v22;
    v59[3] = v112;
    v59[4] = v57;
    *(inited + 296) = v58;
    *(inited + 304) = sub_228550884(qword_280DEA138, type metadata accessor for ProfileNotificationSettingsInputSignal, &protocol conformance descriptor for ProfileNotificationSettingsInputSignal);
    *(inited + 272) = v59;
    v60 = type metadata accessor for SummarySharingInputSignal(0);
    v61 = v114;
    v62 = *(v114 + 24);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v108 = v51;
    v63 = v116;
    v64 = v62(v116, v61);
    swift_unknownObjectRetain();
    v65 = v112;
    v66 = v109;
    v67 = sub_22846EE9C(v34, v22, v112, v64, v60, v63, v109);
    *(inited + 336) = v60;
    *(inited + 344) = sub_228550884(&qword_280DEB2B0, type metadata accessor for SummarySharingInputSignal, &protocol conformance descriptor for SummarySharingInputSignal);
    *(inited + 312) = v67;
    v68 = type metadata accessor for SummaryTransactionInputSignal(0);
    swift_unknownObjectRetain();
    v69 = v108;
    swift_unknownObjectRetain();
    v70 = v34;
    v19 = v65;
    v71 = sub_22850D89C(v70, v22, v65, v69, v68, v63, v66);
    *(inited + 376) = v68;
    *(inited + 384) = sub_228550884(qword_280DEAC68, type metadata accessor for SummaryTransactionInputSignal, &protocol conformance descriptor for SummaryTransactionInputSignal);
    *(inited + 352) = v71;
    sub_2284A7E3C(inited);
    v72 = [v69 profileIdentifier];
    v73 = [v72 type];

    if (v73 == 2)
    {
      v74 = swift_initStackObject();
      *(v74 + 16) = xmmword_228560570;
      v75 = type metadata accessor for PreferredSummaryTransactionInputSignal(0);
      v76 = swift_allocObject();
      v77 = swift_unknownObjectRetain();
      v78 = sub_2284E153C(v77, v65, sub_2284EEB70, 0, v76);
      *(v74 + 56) = v75;
      *(v74 + 64) = sub_228550884(&qword_27D840018, type metadata accessor for PreferredSummaryTransactionInputSignal, &protocol conformance descriptor for PreferredSummaryTransactionInputSignal);
      *(v74 + 32) = v78;
      v79 = type metadata accessor for SummarySharingProfileDisplayNameInputSignal();
      swift_allocObject();
      v80 = v66;
      v81 = v69;
      v82 = swift_unknownObjectRetain();
      v83 = v81;
      v66 = v80;
      v63 = v116;
      SummarySharingProfileDisplayNameInputSignal.init(observer:healthStore:)(v82, v65, v83);
      v85 = v84;
      *(v74 + 96) = v79;
      *(v74 + 104) = sub_228550884(&qword_27D8406D8, type metadata accessor for SummarySharingProfileDisplayNameInputSignal, &protocol conformance descriptor for SummarySharingProfileDisplayNameInputSignal);
      *(v74 + 72) = v85;
      sub_2284A7E3C(v74);
    }

    v86 = [v69 profileIdentifier];
    v87 = [v86 type];

    if (v87 == 1)
    {
      v88 = swift_initStackObject();
      *(v88 + 16) = xmmword_228560580;
      v89 = type metadata accessor for PregnancyStateInputSignal();
      v90 = v66;
      v91 = v115;
      swift_unknownObjectRetain();
      v92 = v69;
      swift_unknownObjectRetain();
      v93 = sub_22848EFC4(v91, v22, v19, v92, v89, v63, v90);
      *(v88 + 56) = v89;
      *(v88 + 64) = sub_228550884(&unk_280DEB2D0, type metadata accessor for PregnancyStateInputSignal, &protocol conformance descriptor for PregnancyStateInputSignal);
      *(v88 + 32) = v93;
      sub_2284A7E3C(v88);
    }

    v94 = [objc_opt_self() sharedBehavior];
    if (v94)
    {
      v95 = v94;
      v96 = [v94 features];

      if (v96)
      {
        v97 = [v96 simplifiedLogging];

        if (v97)
        {
          v98 = swift_initStackObject();
          *(v98 + 16) = xmmword_228560580;
          v69 = v69;
          v99 = swift_unknownObjectRetain();
          v100 = sub_22841D408(v99, v19, v69);
          *(v98 + 56) = type metadata accessor for LoggingPinnedContentEmptyInputSignal(0);
          *(v98 + 64) = sub_228550884(&qword_27D83F3E0, type metadata accessor for LoggingPinnedContentEmptyInputSignal, &protocol conformance descriptor for LoggingPinnedContentEmptyInputSignal);
          *(v98 + 32) = v100;
          sub_2284A7E3C(v98);
        }

        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_15:
  v101 = type metadata accessor for HealthAppBuddyCompleteInputSignal(0);
  swift_allocObject();
  v102 = swift_unknownObjectRetain();
  v103 = HealthAppBuddyCompleteInputSignal.init(observer:)(v102, v19);
  v104 = v121;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v104 = sub_228427160(0, v104[2] + 1, 1, v104);
  }

  v106 = v104[2];
  v105 = v104[3];
  if (v106 >= v105 >> 1)
  {
    v104 = sub_228427160((v105 > 1), v106 + 1, 1, v104);
  }

  swift_unknownObjectRelease();
  v119 = v101;
  v120 = sub_228550884(qword_280DEC9A8, type metadata accessor for HealthAppBuddyCompleteInputSignal, &protocol conformance descriptor for HealthAppBuddyCompleteInputSignal);
  *&v118 = v103;
  v104[2] = v106 + 1;
  sub_2283FAB3C(&v118, &v104[5 * v106 + 4]);
}

uint64_t sub_228550884(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2285508CC(uint64_t a1)
{
  v3 = type metadata accessor for UserProfile(0);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_22855DB4C();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v39 = v5;
  v48 = MEMORY[0x277D84F90];
  sub_228427360(0, v6 & ~(v6 >> 63), 0);
  v7 = v48;
  if (v42)
  {
    result = sub_22855DAEC();
  }

  else
  {
    result = sub_22855DAAC();
    v9 = *(a1 + 36);
  }

  v45 = result;
  v46 = v9;
  v47 = v42 != 0;
  if ((v6 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v11 = a1;
    }

    v36 = a1 + 56;
    v37 = v11;
    v34[1] = v1;
    v35 = a1 + 64;
    v38 = v6;
    while (v10 < v6)
    {
      if (__OFADD__(v10++, 1))
      {
        goto LABEL_37;
      }

      v14 = v45;
      v15 = v47;
      v43 = v46;
      v16 = a1;
      sub_22845F898(v45, v46, v47, a1);
      v18 = v17;
      v19 = Profile.hkProfileIdentifier.getter();
      v20 = [v19 identifier];
      v21 = v39;
      sub_22855C1BC();

      *(v21 + *(v41 + 20)) = v19;
      v48 = v7;
      v23 = *(v7 + 16);
      v22 = *(v7 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_228427360((v22 > 1), v23 + 1, 1);
        v21 = v39;
        v7 = v48;
      }

      *(v7 + 16) = v23 + 1;
      result = sub_2284602F8(v21, v7 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v23);
      if (v42)
      {
        if (!v15)
        {
          goto LABEL_42;
        }

        a1 = v16;
        if (sub_22855DB0C())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v6 = v38;
        sub_22842C0E0(0);
        v12 = sub_22855D54C();
        sub_22855DBBC();
        result = v12(v44, 0);
        if (v10 == v6)
        {
LABEL_34:
          sub_228416CB8(v45, v46, v47);
          return v7;
        }
      }

      else
      {
        if (v15)
        {
          goto LABEL_43;
        }

        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        a1 = v16;
        v24 = 1 << *(v16 + 32);
        if (v14 >= v24)
        {
          goto LABEL_38;
        }

        v25 = v14 >> 6;
        v26 = *(v36 + 8 * (v14 >> 6));
        if (((v26 >> v14) & 1) == 0)
        {
          goto LABEL_39;
        }

        if (*(v16 + 36) != v43)
        {
          goto LABEL_40;
        }

        v27 = v26 & (-2 << (v14 & 0x3F));
        if (v27)
        {
          v24 = __clz(__rbit64(v27)) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v28 = v25 << 6;
          v29 = v25 + 1;
          v30 = (v35 + 8 * v25);
          while (v29 < (v24 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              result = sub_228416CB8(v14, v43, 0);
              v24 = __clz(__rbit64(v31)) + v28;
              goto LABEL_33;
            }
          }

          result = sub_228416CB8(v14, v43, 0);
        }

LABEL_33:
        v33 = *(v16 + 36);
        v45 = v24;
        v46 = v33;
        v47 = 0;
        v6 = v38;
        if (v10 == v38)
        {
          goto LABEL_34;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t UserProfile.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = Profile.hkProfileIdentifier.getter();
  v5 = [v4 identifier];
  sub_22855C1BC();

  result = type metadata accessor for UserProfile(0);
  *(a2 + *(result + 20)) = v4;
  return result;
}

void PluginStorage.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 uniqueIdentifier];
  v5 = sub_22855D1AC();
  v7 = v6;

  v8 = [a1 profiles];
  type metadata accessor for Profile();
  sub_2284D7530();
  v9 = sub_22855D51C();

  v10 = sub_2285508CC(v9);

  v11 = sub_2284C2CD4(v10);

  v12 = [a1 data];
  if (v12)
  {
    v13 = v12;
    v14 = sub_22855C09C();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xF000000000000000;
  }

  sub_22842B378(0, 0xF000000000000000);
  v17 = [a1 plugin];
  v18 = [v17 package];

  v19 = sub_22855D1AC();
  v21 = v20;

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v11;
  a2[3] = v14;
  a2[4] = v16;
  a2[5] = v19;
  a2[6] = v21;
}

uint64_t sub_228550EC8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 7954788;
    }

    else
    {
      v4 = 1920298856;
    }

    if (v2)
    {
      v3 = 0xE300000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1801807223;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x68746E6F6DLL;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1918985593;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 7954788;
    }

    else
    {
      v9 = 1920298856;
    }

    if (a2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x68746E6F6DLL;
    if (a2 != 3)
    {
      v6 = 1918985593;
      v5 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1801807223;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_22855E15C();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

HealthPlatform::FeedItemTimeScope_optional __swiftcall FeedItemTimeScope.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22855DFBC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FeedItemTimeScope.rawValue.getter()
{
  v1 = *v0;
  v2 = 1920298856;
  v3 = 1801807223;
  v4 = 0x68746E6F6DLL;
  if (v1 != 3)
  {
    v4 = 1918985593;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7954788;
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

uint64_t sub_2285510F4()
{
  sub_22855E22C();
  sub_22855D20C();

  return sub_22855E27C();
}

uint64_t sub_2285511B4(uint64_t a1)
{
  sub_22855D20C();
}

uint64_t sub_228551260(uint64_t a1)
{
  sub_22855E22C();
  sub_22855D20C();

  return sub_22855E27C();
}

void sub_228551328(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1920298856;
  v5 = 0xE400000000000000;
  v6 = 1801807223;
  v7 = 0xE500000000000000;
  v8 = 0x68746E6F6DLL;
  if (v2 != 3)
  {
    v8 = 1918985593;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 7954788;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_22855148C()
{
  result = qword_27D840BA8;
  if (!qword_27D840BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840BA8);
  }

  return result;
}

unint64_t sub_2285514E4()
{
  result = qword_27D840BB0;
  if (!qword_27D840BB0)
  {
    sub_22855153C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840BB0);
  }

  return result;
}

void sub_22855153C()
{
  if (!qword_27D840BB8)
  {
    v0 = sub_22855D47C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D840BB8);
    }
  }
}

unint64_t sub_2285515AC()
{
  result = qword_280DEE5B8;
  if (!qword_280DEE5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEE5B8);
  }

  return result;
}

uint64_t RelevantDateInterval.init(interval:rampUpTime:rampDownTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = sub_22855BE1C();
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  result = type metadata accessor for RelevantDateInterval(0);
  *(a2 + *(result + 20)) = a3;
  *(a2 + *(result + 24)) = a4;
  return result;
}

uint64_t RelevantDateInterval.init(interval:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22855BE1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RelevantDateInterval(0);
  v15 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v5 + 48))(a1, 1, v4) == 1)
  {
    sub_228552958(a1, sub_228501D8C);
    v11 = *(v15 + 56);

    return v11(a2, 1, 1, v8);
  }

  else
  {
    v13 = *(v5 + 32);
    v13(v7, a1, v4);
    v13(v10, v7, v4);
    *&v10[*(v8 + 20)] = 0;
    *&v10[*(v8 + 24)] = 0;
    sub_22845CCB4(v10, a2);
    return (*(v15 + 56))(a2, 0, 1, v8);
  }
}

uint64_t RelevantDateInterval.interval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22855BE1C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RelevantDateInterval.interval.setter(uint64_t a1)
{
  v3 = sub_22855BE1C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RelevantDateInterval.rampUpTime.setter(double a1)
{
  result = type metadata accessor for RelevantDateInterval(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t RelevantDateInterval.rampDownTime.setter(double a1)
{
  result = type metadata accessor for RelevantDateInterval(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t RelevantDateInterval.dateOfInitialRelevance.getter()
{
  v0 = sub_22855C16C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22855BE0C();
  type metadata accessor for RelevantDateInterval(0);
  sub_22855C0FC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t RelevantDateInterval.dateOfFinalRelevance.getter()
{
  v0 = sub_22855C16C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22855BDEC();
  type metadata accessor for RelevantDateInterval(0);
  sub_22855C0FC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t RelevantDateInterval.init(date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22855C16C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = *(v5 + 16);
  v9(&v12 - v10, a1, v4);
  v9(v8, a1, v4);
  sub_22855BDFC();
  (*(v5 + 8))(a1, v4);
  result = type metadata accessor for RelevantDateInterval(0);
  *(a2 + *(result + 20)) = 0;
  *(a2 + *(result + 24)) = 0;
  return result;
}

BOOL static RelevantDateInterval.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_22855BDDC() & 1) != 0 && (v4 = type metadata accessor for RelevantDateInterval(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_228551E78()
{
  v1 = 0x69547055706D6172;
  if (*v0 != 1)
  {
    v1 = 0x6E776F44706D6172;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C61767265746E69;
  }
}

uint64_t sub_228551EE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_228552B74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_228551F08(uint64_t a1)
{
  v2 = sub_228552178();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228551F44(uint64_t a1)
{
  v2 = sub_228552178();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RelevantDateInterval.encode(to:)(void *a1)
{
  sub_228552890(0, &qword_280DE9010, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228552178();
  sub_22855E31C();
  v9[15] = 0;
  sub_22855BE1C();
  sub_228552A00(&qword_280DECDD8, MEMORY[0x277CC88A8], MEMORY[0x277CC88B0]);
  sub_22855E0CC();
  if (!v1)
  {
    type metadata accessor for RelevantDateInterval(0);
    v9[14] = 1;
    sub_22855E0AC();
    v9[13] = 2;
    sub_22855E0AC();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_228552178()
{
  result = qword_280DED708[0];
  if (!qword_280DED708[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DED708);
  }

  return result;
}

uint64_t RelevantDateInterval.hash(into:)(uint64_t a1)
{
  sub_22855BE1C();
  sub_228552A00(&qword_280DECDD0, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
  sub_22855D14C();
  v2 = type metadata accessor for RelevantDateInterval(0);
  v3 = *(v1 + *(v2 + 20));
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x22AABA2E0](*&v3);
  v4 = *(v1 + *(v2 + 24));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x22AABA2E0](*&v4);
}

uint64_t RelevantDateInterval.hashValue.getter()
{
  sub_22855E22C();
  sub_22855BE1C();
  sub_228552A00(&qword_280DECDD0, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
  sub_22855D14C();
  v1 = type metadata accessor for RelevantDateInterval(0);
  v2 = *(v0 + *(v1 + 20));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x22AABA2E0](*&v2);
  v3 = *(v0 + *(v1 + 24));
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x22AABA2E0](*&v3);
  return sub_22855E27C();
}

uint64_t RelevantDateInterval.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_22855BE1C();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v25 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228552890(0, &qword_280DE9048, MEMORY[0x277D844C8]);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for RelevantDateInterval(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228552178();
  sub_22855E30C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v11;
  v13 = v22;
  v28 = 0;
  sub_228552A00(&qword_280DECDC8, MEMORY[0x277CC88A8], MEMORY[0x277CC88D0]);
  v14 = v24;
  sub_22855E03C();
  v15 = *(v13 + 32);
  v16 = v25;
  v25 = v4;
  v15(v12, v16, v4);
  v27 = 1;
  sub_22855E01C();
  *(v12 + *(v9 + 20)) = v17;
  v26 = 2;
  sub_22855E01C();
  v19 = v18;
  (*(v23 + 8))(v8, v14);
  *(v12 + *(v9 + 24)) = v19;
  sub_2285528F4(v12, v21);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_228552958(v12, type metadata accessor for RelevantDateInterval);
}

uint64_t sub_2285527B8(uint64_t a1, uint64_t a2)
{
  sub_22855E22C();
  sub_22855BE1C();
  sub_228552A00(&qword_280DECDD0, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
  sub_22855D14C();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x22AABA2E0](*&v4);
  v5 = *(v2 + *(a2 + 24));
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x22AABA2E0](*&v5);
  return sub_22855E27C();
}

void sub_228552890(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_228552178();
    v7 = a3(a1, &type metadata for RelevantDateInterval.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2285528F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelevantDateInterval(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228552958(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_228552A00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_228552A70()
{
  result = qword_27D840BC8;
  if (!qword_27D840BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840BC8);
  }

  return result;
}

unint64_t sub_228552AC8()
{
  result = qword_280DED6F8;
  if (!qword_280DED6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DED6F8);
  }

  return result;
}

unint64_t sub_228552B20()
{
  result = qword_280DED700;
  if (!qword_280DED700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DED700);
  }

  return result;
}

uint64_t sub_228552B74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000;
  if (v4 || (sub_22855E15C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69547055706D6172 && a2 == 0xEA0000000000656DLL || (sub_22855E15C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E776F44706D6172 && a2 == 0xEC000000656D6954)
  {

    return 2;
  }

  else
  {
    v6 = sub_22855E15C();

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

uint64_t HealthAppBuddyCompleteInputSignal.__allocating_init(observer:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  HealthAppBuddyCompleteInputSignal.init(observer:)(a1, a2);
  return v4;
}

uint64_t static InputSignalSet.LookupKey.healthAppBuddyComplete.getter()
{
  v0 = sub_22855C85C();
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  type metadata accessor for HealthAppBuddyCompleteInputSignal(0);
  return sub_22855C61C();
}

uint64_t sub_228552DAC(void *a1)
{
  v1 = a1;
  v2 = sub_228552E24(MEMORY[0x277CCE358]);

  return v2 & 1;
}

uint64_t sub_228552DE8(void *a1)
{
  v1 = a1;
  v2 = sub_228552E24(MEMORY[0x277CCE350]);

  return v2 & 1;
}

id sub_228552E24(void *a1)
{
  if ([v1 valueForKey_])
  {
    sub_22855DA7C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_2283EF310(0, &qword_280DED090, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v2 = [v4 BOOLValue];

      return v2;
    }
  }

  else
  {
    sub_22843D15C(v7);
  }

  return 0;
}

uint64_t sub_228552F04(void *a1)
{
  v1 = a1;
  v2 = sub_228552E24(MEMORY[0x277CCE368]);

  return v2 & 1;
}

uint64_t HealthAppBuddyCompleteInputSignal.Errors.hashValue.getter()
{
  sub_22855E22C();
  MEMORY[0x22AABA2B0](0);
  return sub_22855E27C();
}

uint64_t *HealthAppBuddyCompleteInputSignal.init(observer:)(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  v16 = a1;
  v14 = *v2;
  sub_22855327C(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2285532E4(0);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = 0;
  v2[4] = v8;
  sub_22855D1AC();
  v9 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v10 = sub_22855D17C();

  v11 = [v9 initWithSuiteName_];

  if (v11)
  {
    v12 = v15;
    v2[2] = v16;
    v2[3] = v12;
    v17 = v11;
    sub_2283EF310(0, &qword_280DED1B8, 0x277CBEBD0);
    sub_22855C6AC();
    (*(v5 + 32))(v2 + OBJC_IVAR____TtC14HealthPlatform33HealthAppBuddyCompleteInputSignal_defaults, v7, v4);
  }

  else
  {
    sub_228553344();
    swift_allocError();
    swift_willThrow();
    swift_unknownObjectRelease();

    swift_deallocPartialClassInstance();
  }

  return v2;
}

uint64_t type metadata accessor for HealthAppBuddyCompleteInputSignal(uint64_t a1)
{
  result = qword_280DEC990;
  if (!qword_280DEC990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22855327C(uint64_t a1)
{
  if (!qword_280DE9F20)
  {
    sub_2283EF310(255, &qword_280DED1B8, 0x277CBEBD0);
    v1 = sub_22855C69C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9F20);
    }
  }
}

void sub_2285532E4(uint64_t a1)
{
  if (!qword_280DE91A0)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22855DCFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE91A0);
    }
  }
}

unint64_t sub_228553344()
{
  result = qword_27D840BD0;
  if (!qword_27D840BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840BD0);
  }

  return result;
}

Swift::Void __swiftcall HealthAppBuddyCompleteInputSignal.stopObservation()()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  sub_2285540FC((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_228553414(id **a1, uint64_t a2)
{
  v3 = type metadata accessor for HealthAppBuddyCompleteInputSignal.Observer();
  v4 = objc_allocWithZone(v3);
  swift_weakInit();
  swift_weakAssign();
  v14.receiver = v4;
  v14.super_class = v3;
  v5 = objc_msgSendSuper2(&v14, sel_init);
  *a1 = v5;
  sub_22855D1AC();
  sub_22855D1AC();
  sub_22855D1AC();
  sub_22855327C(0);
  v6 = v5;

  sub_22855C68C();
  v7 = v15;
  v8 = sub_22855D17C();

  [v7 addObserver:v6 forKeyPath:v8 options:0 context:0];

  sub_22855C68C();
  v9 = v15;
  v10 = sub_22855D17C();

  [v9 addObserver:v6 forKeyPath:v10 options:0 context:0];

  sub_22855C68C();
  v11 = v15;
  v12 = sub_22855D17C();

  [v11 addObserver:v6 forKeyPath:v12 options:0 context:0];

  return swift_arrayDestroy();
}

void sub_228553658(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    *a1 = 0;
    sub_22855D1AC();
    sub_22855D1AC();
    sub_22855D1AC();
    sub_22855327C(0);

    sub_22855C68C();
    v2 = sub_22855D17C();

    [v5 removeObserver:v1 forKeyPath:v2];

    sub_22855C68C();
    v3 = sub_22855D17C();

    [v5 removeObserver:v1 forKeyPath:v3];

    swift_arrayDestroy();
    sub_22855C68C();
    v4 = sub_22855D17C();

    [v5 removeObserver:v1 forKeyPath:v4];
  }
}

uint64_t sub_228553830()
{
  v1 = sub_22855C85C();
  MEMORY[0x28223BE20](v1 - 8);
  sub_22841D9D4();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22855C84C();
  v9 = [objc_opt_self() hasCompletedBuddyWithVersion_];
  sub_22855C57C();
  v8 = v0;
  sub_2285544DC(qword_280DEC9A8, type metadata accessor for HealthAppBuddyCompleteInputSignal, &protocol conformance descriptor for HealthAppBuddyCompleteInputSignal);
  sub_22855C78C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t HealthAppBuddyCompleteInputSignal.deinit()
{
  v1 = v0;
  v2 = *(v0 + 32);
  os_unfair_lock_lock((v2 + 24));
  sub_228554540((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));

  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC14HealthPlatform33HealthAppBuddyCompleteInputSignal_defaults;
  sub_22855327C(0);
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  return v1;
}

uint64_t HealthAppBuddyCompleteInputSignal.__deallocating_deinit()
{
  v1 = v0;
  v2 = *(v0 + 32);
  os_unfair_lock_lock((v2 + 24));
  sub_228554540((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));

  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC14HealthPlatform33HealthAppBuddyCompleteInputSignal_defaults;
  sub_22855327C(0);
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  return swift_deallocClassInstance();
}

id sub_228553D78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthAppBuddyCompleteInputSignal.Observer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228553E20(uint64_t a1)
{
  v2 = sub_2285544DC(qword_280DEC9A8, type metadata accessor for HealthAppBuddyCompleteInputSignal, &protocol conformance descriptor for HealthAppBuddyCompleteInputSignal);

  return MEMORY[0x28216B080](a1, v2);
}

uint64_t _s14HealthPlatform0A27AppBuddyCompleteInputSignalC16beginObservation4from14configurationsy0A13Orchestration11ValueAnchorVySbGSg_SayAG21IdentityConfigurationVGtF_0()
{
  v1 = *v0;
  v2 = sub_22855C85C();
  MEMORY[0x28223BE20](v2 - 8);
  sub_22841D9D4();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v0[4];
  v13 = v0;
  v14 = v1;
  os_unfair_lock_lock((v8 + 24));
  sub_228554540((v8 + 16));
  os_unfair_lock_unlock((v8 + 24));
  v11 = v0;
  v12 = v1;
  os_unfair_lock_lock((v8 + 24));
  sub_228554524((v8 + 16));
  os_unfair_lock_unlock((v8 + 24));
  swift_getObjectType();
  sub_22855C84C();
  LOBYTE(v15) = [objc_opt_self() hasCompletedBuddyWithVersion_];
  sub_22855C57C();
  v15 = v0;
  sub_2285544DC(qword_280DEC9A8, type metadata accessor for HealthAppBuddyCompleteInputSignal, &protocol conformance descriptor for HealthAppBuddyCompleteInputSignal);
  sub_22855C78C();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_22855411C()
{
  result = qword_27D840BD8;
  if (!qword_27D840BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840BD8);
  }

  return result;
}

void sub_228554208(uint64_t a1)
{
  sub_22855327C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_228554334()
{
  v0 = sub_22855C85C();
  MEMORY[0x28223BE20](v0 - 8);
  sub_22841D9D4();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22855C84C();
    v7[15] = [objc_opt_self() hasCompletedBuddyWithVersion_];
    sub_22855C57C();
    sub_228553830();

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_2285544DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_228554618(uint64_t a1)
{
  if (!qword_280DEEC28)
  {
    type metadata accessor for RelevantDateInterval(255);
    v1 = sub_22855DA2C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DEEC28);
    }
  }
}

uint64_t sub_228554678(uint64_t a1, uint64_t a2)
{
  sub_228554618(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2285546F0()
{
  result = swift_getKeyPath();
  qword_280DEBD08 = result;
  return result;
}

uint64_t static DateRangeFeatureTag.keyPath.getter()
{
  if (qword_280DEBD10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static DateRangeFeatureTag.keyPath.setter(uint64_t a1)
{
  if (qword_280DEBD10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280DEBD08 = a1;
}

uint64_t (*static DateRangeFeatureTag.keyPath.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280DEBD10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_228554898()
{
  if (qword_280DEBD10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t type metadata accessor for DateRangeFeatureTag(uint64_t a1)
{
  result = qword_280DEE978;
  if (!qword_280DEE978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_228554984(uint64_t a1)
{
  sub_228554618(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_2285549F0()
{
  sub_22842D108(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228560570;
  *(inited + 32) = 0xD000000000000032;
  *(inited + 40) = 0x800000022856F950;
  *(inited + 72) = sub_22855C16C();
  __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_22855C15C();
  *(inited + 80) = 0xD000000000000038;
  *(inited + 88) = 0x800000022856FA10;
  v1 = objc_opt_self();
  v2 = [v1 hasPairedWatch];
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = v2;
  v3 = sub_22847C614(inited);
  swift_setDeallocating();
  sub_22842D160();
  swift_arrayDestroy();
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 infoDictionary];

  if (v5)
  {
    v6 = sub_22855D0EC();

    result = *MEMORY[0x277CBED58];
    if (!*MEMORY[0x277CBED58])
    {
      __break(1u);
      return result;
    }

    v8 = sub_22855D1AC();
    if (*(v6 + 16))
    {
      v10 = sub_2283F6D18(v8, v9);
      v12 = v11;

      if (v12)
      {
        sub_2283F6E48(*(v6 + 56) + 32 * v10, &v34);

        v13 = MEMORY[0x277D837D0];
        if (swift_dynamicCast())
        {
          v14 = v33[0];
          if (v33[0] == __PAIR128__(0xE400000000000000, 960051513) || (sub_22855E15C() & 1) != 0)
          {
            if (qword_280DEEBE8 != -1)
            {
              swift_once();
            }

            v15 = sub_22855CABC();
            __swift_project_value_buffer(v15, qword_280DEEBF0);

            v16 = sub_22855CA8C();
            v17 = sub_22855D6AC();

            if (os_log_type_enabled(v16, v17))
            {
              log = v16;
              v18 = swift_slowAlloc();
              v32 = swift_slowAlloc();
              *&v34 = v32;
              *v18 = 136315394;
              v19 = sub_22855E34C();
              v21 = sub_2283F8938(v19, v20, &v34);

              *(v18 + 4) = v21;
              *(v18 + 12) = 2080;
              v22 = sub_2283F8938(v14, *(&v14 + 1), &v34);

              *(v18 + 14) = v22;
              _os_log_impl(&dword_2283ED000, log, v17, "[%s] Skipping adding bundle version because it doesn't seem sane: %s", v18, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x22AABAD40](v32, -1, -1);
              MEMORY[0x22AABAD40](v18, -1, -1);
            }

            else
            {
            }
          }

          else
          {
            v35 = v13;
            v34 = v33[0];
            sub_228400400(&v34, v33);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            sub_22845AC64(v33, 0xD000000000000032, 0x800000022856F990, isUniquelyReferenced_nonNull_native);
          }
        }

        goto LABEL_14;
      }
    }

    else
    {
    }
  }

LABEL_14:
  v23 = [v1 currentOSBuild];
  if (v23)
  {
    v24 = MEMORY[0x277D837D0];
    v25 = v23;
    v26 = sub_22855D1AC();
    v28 = v27;

    v35 = v24;
    *&v34 = v26;
    *(&v34 + 1) = v28;
    sub_228400400(&v34, v33);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_22845AC64(v33, 0xD000000000000031, 0x800000022856F9D0, v29);
  }

  return v3;
}

uint64_t sub_228554E94(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 > 0xC)
  {
    if (v2 == 13)
    {
      return 3;
    }

    if (v2 == 20)
    {
      return 1;
    }
  }

  else
  {
    if (v2 == 4)
    {
      if (sub_228409270(0xD000000000000028, 0x800000022856D500, a2))
      {
        return 5;
      }

      if (sub_228409270(0xD00000000000002CLL, 0x800000022856D350, a2))
      {
        return 5;
      }

      return 4;
    }

    if (v2 == 5)
    {
      v4 = sub_228409270(0xD000000000000028, 0x800000022856D500, a2);
      result = 2;
      if ((v4 & 1) == 0)
      {
        if (sub_228409270(0xD00000000000002CLL, 0x800000022856D350, a2))
        {
          return 2;
        }

        else
        {
          return 0;
        }
      }

      return result;
    }
  }

  if (qword_280DEEC60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = qword_280DEEC78;

  v7 = sub_228425D94(v2, v6);

  if (v7)
  {
    return 3;
  }

  if (v2 == 3)
  {
    v8 = 11;
  }

  else
  {
    v8 = 12;
  }

  if (v2 == 15)
  {
    return 9;
  }

  else
  {
    return v8;
  }
}

void *HealthAppPluginNotificationManager.__allocating_init(healthStore:bundleIdentifier:notificationManager:primaryHealthStore:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  v11 = a1;

  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0xD00000000000003BLL, 0x8000000228570E40);
  MEMORY[0x22AAB92A0](a2, a3);

  v12 = type metadata accessor for HealthAppNotificationContentStateManager();
  v13 = v11;
  v14 = HealthAppNotificationContentStateManager.__allocating_init(healthStore:domain:)(v13, 0, 0xE000000000000000);
  v10[10] = v12;
  v10[11] = sub_22855BB24(qword_280DEC5B8, type metadata accessor for HealthAppNotificationContentStateManager, &protocol conformance descriptor for HealthAppNotificationContentStateManager);

  v10[7] = v14;

  return v10;
}

uint64_t HealthAppPluginNotificationManager.init(healthStore:bundleIdentifier:notificationManager:primaryHealthStore:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *&v14 = 0;
  *(&v14 + 1) = 0xE000000000000000;
  v10 = a1;

  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0xD00000000000003BLL, 0x8000000228570E40);
  MEMORY[0x22AAB92A0](a2, a3);

  v11 = type metadata accessor for HealthAppNotificationContentStateManager();
  v12 = HealthAppNotificationContentStateManager.__allocating_init(healthStore:domain:)(*(v5 + 24), 0, 0xE000000000000000);
  v15 = v11;
  v16 = sub_22855BB24(qword_280DEC5B8, type metadata accessor for HealthAppNotificationContentStateManager, &protocol conformance descriptor for HealthAppNotificationContentStateManager);

  *&v14 = v12;

  sub_2283FAB3C(&v14, v6 + 56);
  return v6;
}

uint64_t sub_22855535C(__int128 *a1)
{
  v2 = v1;
  v68 = *v1;
  sub_22855B870(0, &qword_27D83FC90, &type metadata for PluginFeedItem.NotificationRequest, MEMORY[0x277CBCE78]);
  v5 = *(v4 - 8);
  v55 = v4;
  v56 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v51 - v6;
  sub_22855B508(0, &qword_27D83FC98, &type metadata for PluginFeedItem.NotificationRequest, MEMORY[0x277CBCF38]);
  v9 = *(v8 - 8);
  v57 = v8;
  v58 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - v10;
  sub_228555BE8(0);
  v59 = *(v12 - 8);
  v60 = v12;
  MEMORY[0x28223BE20](v12);
  v67 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228555E00(0);
  v65 = v14;
  v63 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v61 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228556054(0);
  v66 = v16;
  v64 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v62 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[1];
  v71 = *a1;
  v72 = v18;
  v19 = a1[3];
  v73 = a1[2];
  v74 = v19;
  v20 = v18;
  v21 = v2[2];

  v22 = [v21 profileIdentifier];
  v23 = v2[4];
  v24 = v2[5];
  v79 = *a1;
  v76 = v79;
  v75[0] = v22;
  v75[1] = v23;
  v75[2] = v24;
  v77 = v20;
  v78 = a1[3];
  v25 = *(&v78 + 1);
  v54 = v20;
  if (*(&v78 + 1))
  {
    if (*(&v78 + 1) == 1)
    {
      v25 = 0xEB00000000796C6ELL;
      v26 = 0x4F656D6954656E6FLL;
    }

    else
    {
      v26 = v78;
    }
  }

  else
  {
    v25 = 0xE400000000000000;
    v26 = 1701736302;
  }

  v53 = v26;
  v27 = a1[1];
  v70[0] = *a1;
  v70[1] = v27;
  v28 = a1[3];
  v70[2] = a1[2];
  v70[3] = v28;

  sub_228556154(&v78, v69);

  sub_2284AE2B0(&v79, v69);
  sub_2284B89A0(&v71, v69);
  v29 = sub_22855CDCC();
  MEMORY[0x28223BE20](v29);
  *(&v51 - 4) = v2;
  *(&v51 - 3) = v75;
  *(&v51 - 2) = v68;
  v52 = *(&v20 + 1);
  v30 = v55;
  sub_22855CDAC();
  (*(v56 + 8))(v7, v30);
  v31 = swift_allocObject();
  v32 = v53;
  v31[2] = v2;
  v31[3] = v32;
  v31[4] = v25;

  sub_22855CCBC();
  sub_228555CC8(0);
  sub_228555D84();
  sub_22855BB24(&qword_27D840BF8, sub_228555CC8, MEMORY[0x277CBCC08]);
  v33 = v57;
  sub_22855CF2C();

  (*(v58 + 8))(v11, v33);
  v34 = swift_allocObject();
  v35 = v72;
  *(v34 + 16) = v71;
  *(v34 + 32) = v35;
  v36 = v74;
  *(v34 + 48) = v73;
  *(v34 + 64) = v36;
  v37 = v52;
  *(v34 + 80) = v54;
  *(v34 + 88) = v37;
  *(v34 + 96) = v32;
  *(v34 + 104) = v25;
  v38 = v68;
  *(v34 + 112) = v2;
  *(v34 + 120) = v38;
  sub_2284B89A0(&v71, v70);

  sub_22855CCBC();
  sub_228555F88(0);
  sub_228555F0C(0, &qword_27D840C08, sub_228555F88, MEMORY[0x277CBCD88]);
  v58 = MEMORY[0x277CBCCE0];
  sub_22855BB24(&qword_27D840C20, sub_228555BE8, MEMORY[0x277CBCCE0]);
  sub_228555FF0(&qword_27D840C18, &qword_27D840C08, sub_228555F88);
  v40 = v60;
  v39 = v61;
  v41 = v67;
  sub_22855CF2C();

  (*(v59 + 8))(v41, v40);
  v42 = swift_allocObject();
  v43 = v68;
  *(v42 + 16) = v2;
  *(v42 + 24) = v43;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_228558140;
  *(v44 + 24) = v42;

  sub_22855CCBC();
  sub_22855B508(0, &qword_27D840C30, &type metadata for PluginFeedItem.NotificationRequest, MEMORY[0x277CBCD88]);
  v45 = v58;
  sub_22855BB24(&qword_27D840C40, sub_228555E00, v58);
  sub_2283FEF68(&qword_27D840C38, &qword_27D840C30, &type metadata for PluginFeedItem.NotificationRequest);
  v46 = v62;
  v47 = v65;
  sub_22855CF2C();

  (*(v63 + 8))(v39, v47);
  sub_22855BB24(&qword_27D840C48, sub_228556054, v45);
  v48 = v66;
  v49 = sub_22855CE6C();
  sub_22848CF64(v75);
  (*(v64 + 8))(v46, v48);
  return v49;
}

void sub_228555BE8(uint64_t a1)
{
  if (!qword_27D840BE8)
  {
    sub_228555CC8(255);
    sub_22855B508(255, &qword_27D83FC98, &type metadata for PluginFeedItem.NotificationRequest, MEMORY[0x277CBCF38]);
    sub_22855BB24(&qword_27D840BF8, sub_228555CC8, MEMORY[0x277CBCC08]);
    sub_228555D84();
    v1 = sub_22855CBEC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D840BE8);
    }
  }
}

void sub_228555CC8(uint64_t a1)
{
  if (!qword_27D840BF0)
  {
    sub_228555F0C(255, &qword_280DE9938, sub_2284B7804, MEMORY[0x277CBCD88]);
    sub_228555FF0(&qword_280DE9940, &qword_280DE9938, sub_2284B7804);
    v1 = sub_22855CB6C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D840BF0);
    }
  }
}

unint64_t sub_228555D84()
{
  result = qword_27D83FCA8;
  if (!qword_27D83FCA8)
  {
    sub_22855B508(255, &qword_27D83FC98, &type metadata for PluginFeedItem.NotificationRequest, MEMORY[0x277CBCF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FCA8);
  }

  return result;
}

void sub_228555E00(uint64_t a1)
{
  if (!qword_27D840C00)
  {
    sub_228555F0C(255, &qword_27D840C08, sub_228555F88, MEMORY[0x277CBCD88]);
    sub_228555BE8(255);
    sub_228555FF0(&qword_27D840C18, &qword_27D840C08, sub_228555F88);
    sub_22855BB24(&qword_27D840C20, sub_228555BE8, MEMORY[0x277CBCCE0]);
    v1 = sub_22855CBEC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D840C00);
    }
  }
}

void sub_228555F0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_228418D44();
    v9 = a4(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_228555F88(uint64_t a1)
{
  if (!qword_27D840C10)
  {
    type metadata accessor for NotificationContentState(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D840C10);
    }
  }
}

uint64_t sub_228555FF0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_228555F0C(255, a2, a3, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_228556054(uint64_t a1)
{
  if (!qword_27D840C28)
  {
    sub_22855B508(255, &qword_27D840C30, &type metadata for PluginFeedItem.NotificationRequest, MEMORY[0x277CBCD88]);
    sub_228555E00(255);
    sub_2283FEF68(&qword_27D840C38, &qword_27D840C30, &type metadata for PluginFeedItem.NotificationRequest);
    sub_22855BB24(&qword_27D840C40, sub_228555E00, MEMORY[0x277CBCCE0]);
    v1 = sub_22855CBEC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D840C28);
    }
  }
}

uint64_t sub_2285561B0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v6 = v5;
  v46 = a4;
  v11 = sub_22855CABC();
  v58 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v56 = a1[2];
  v57 = v14;
  v15 = a1[1];
  v54 = *a1;
  v55 = v15;
  v16 = *(a2 + 48);
  v17 = v16[4];
  v19 = v16[5];
  v18 = v16[6];
  v20 = v16[7];
  v51[0] = v16[3];
  v51[1] = v17;
  v51[2] = v19;
  v52 = v18;
  v53 = v20;
  v21 = a3[1];
  v47 = *a3;
  v22 = a3[2];
  v48 = v21;
  v49 = v22;
  v50 = *(a3 + 6);

  v23 = v18;
  v24 = v20;
  FeedItemNotificationManagerStore.addOrUpdate(_:)(&v47);
  v25 = v52;

  if (!v6)
  {
    v45 = v11;
    sub_22855CA7C();
    sub_22842B9BC(a3, &v47);
    v27 = sub_22855CA8C();
    v28 = sub_22855D66C();
    sub_22848CF64(a3);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v44 = a5;
      v30 = v29;
      v31 = swift_slowAlloc();
      v51[0] = v31;
      *v30 = 136446467;
      v32 = sub_22855E34C();
      v34 = sub_2283F8938(v32, v33, v51);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2081;
      v35 = a3[1];
      v47 = *a3;
      v36 = a3[2];
      v48 = v35;
      v49 = v36;
      v50 = *(a3 + 6);
      v37 = PluginFeedItem.NotificationIdentifier.description.getter();
      v39 = sub_2283F8938(v37, v38, v51);

      *(v30 + 14) = v39;
      _os_log_impl(&dword_2283ED000, v27, v28, "%{public}s Updated plugin notification request metadata: %{private}s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v31, -1, -1);
      v40 = v30;
      a5 = v44;
      MEMORY[0x22AABAD40](v40, -1, -1);
    }

    (*(v58 + 8))(v13, v45);
    v41 = v55;
    *a5 = v54;
    a5[1] = v41;
    v42 = v57;
    a5[2] = v56;
    a5[3] = v42;
    return sub_2284B89A0(&v54, &v47);
  }

  return result;
}

uint64_t sub_2285564F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_228559F08(a1);
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_228555F0C(0, &qword_280DE9938, sub_2284B7804, MEMORY[0x277CBCD88]);
  sub_228555FF0(&qword_280DE9940, &qword_280DE9938, sub_2284B7804);

  sub_22855CE8C();
}

uint64_t sub_228556618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  sub_2284B7804(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22855B578(a1, v10, sub_2284B7804);
  v11 = type metadata accessor for NotificationContentState(0);
  if ((*(*(v11 - 1) + 48))(v10, 1, v11) == 1)
  {
    result = sub_22855BB74(v10, sub_2284B7804);
    v13 = 1;
  }

  else
  {
    v14 = &v10[v11[6]];
    v15 = *v14 == a2 && *(v14 + 1) == a3;
    if (v15 || (sub_22855E15C() & 1) != 0)
    {
      if (v10[v11[8]])
      {
        v16 = 0;
      }

      else
      {
        v16 = v10[v11[7]] ^ 1;
      }
    }

    else
    {
      v16 = 1;
    }

    result = sub_22855BB74(v10, type metadata accessor for NotificationContentState);
    v13 = v16 & 1;
  }

  *a4 = v13;
  return result;
}

uint64_t sub_2285567A0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(char *, uint64_t)@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v169 = a8;
  v168 = a7;
  v164 = a6;
  v163 = a5;
  v170 = a3;
  sub_22855B5E0(0);
  v156 = v13;
  v154 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v150 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22855B648(0);
  v171 = v16;
  v155 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v150 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22855B704(0);
  v20 = v19;
  v153 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v152 = &v150 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22855B7C4(0);
  v160 = v22;
  v159 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v158 = &v150 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for NotificationContentState(0);
  v165 = *(v24 - 1);
  v25 = MEMORY[0x28223BE20](v24);
  v167 = &v150 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = v26;
  MEMORY[0x28223BE20](v25);
  v172 = (&v150 - v27);
  v28 = sub_22855CABC();
  v29 = *(v28 - 8);
  v173 = v28;
  v174 = v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v150 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30);
  v151 = &v150 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v161 = &v150 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v162 = &v150 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = &v150 - v39;
  if ((*a1 & 1) == 0)
  {
    v41 = *(a2 + 48);
    v42 = *(a2 + 56);
    if (v42)
    {
      v43 = *(a2 + 48);
      sub_2284C7554(v41, *(a2 + 56));
      sub_2284C776C(v43, v42);
      sub_2284C776C(0, 0);
      sub_22855CA7C();

      v44 = sub_22855CA8C();
      v45 = sub_22855D6AC();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v172 = swift_slowAlloc();
        v176[0] = v172;
        *v46 = 136446466;
        v47 = sub_22855E34C();
        v49 = a9;
        v50 = sub_2283F8938(v47, v48, v176);

        *(v46 + 4) = v50;
        a9 = v49;
        *(v46 + 12) = 2080;
        *(v46 + 14) = sub_2283F8938(v170, a4, v176);
        _os_log_impl(&dword_2283ED000, v44, v45, "%{public}s Not proceeding with %s", v46, 0x16u);
        v51 = v172;
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v51, -1, -1);
        MEMORY[0x22AABAD40](v46, -1, -1);
      }

      (*(v174 + 8))(v32, v173);
      sub_228555F88(0);
      sub_22855CDDC();
      sub_228418D44();
      sub_22855BB24(&qword_27D840C78, sub_22855B5E0, MEMORY[0x277CBCE90]);
      v52 = v156;
      sub_22855CF7C();
      (*(v154 + 8))(v15, v52);
      sub_22855BB24(&qword_27D840C90, sub_22855B648, MEMORY[0x277CBCBA0]);
      v53 = v171;
      v54 = sub_22855CE6C();
      result = (*(v155 + 8))(v18, v53);
      goto LABEL_28;
    }

    sub_2284C776C(v41, 0);
    sub_2284C776C(0, 0);
  }

  v156 = v20;
  v171 = a2;
  sub_22855CA7C();

  v56 = sub_22855CA8C();
  v57 = sub_22855D6AC();

  v58 = os_log_type_enabled(v56, v57);
  v157 = a9;
  if (v58)
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v176[0] = v60;
    *v59 = 136446466;
    v61 = sub_22855E34C();
    v63 = sub_2283F8938(v61, v62, v176);

    *(v59 + 4) = v63;
    *(v59 + 12) = 2080;
    v64 = v170;
    *(v59 + 14) = sub_2283F8938(v170, a4, v176);
    _os_log_impl(&dword_2283ED000, v56, v57, "%{public}s Proceeding with %s", v59, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v60, -1, -1);
    MEMORY[0x22AABAD40](v59, -1, -1);

    v65 = v173;
    v66 = *(v174 + 8);
    v66(v40, v173);
    v67 = v172;
  }

  else
  {

    v65 = v173;
    v66 = *(v174 + 8);
    v66(v40, v173);
    v67 = v172;
    v64 = v170;
  }

  v68 = v24[5];
  sub_22855C1CC();
  *v67 = v64;
  v67[1] = a4;
  v69 = (v67 + v24[6]);
  v70 = v164;
  *v69 = v163;
  v69[1] = v70;
  *(v67 + v24[7]) = 1;
  *(v67 + v24[8]) = 0;
  v71 = *(v171 + 32);

  v73 = v71(v72);
  if (v73)
  {
    v74 = v73;
    v75 = v162;
    sub_22855CA7C();

    v76 = sub_22855CA8C();
    v77 = sub_22855D6AC();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v170 = v68;
      v80 = v66;
      v81 = v64;
      v82 = v79;
      v176[0] = v79;
      *v78 = 136446466;
      v83 = sub_22855E34C();
      v85 = sub_2283F8938(v83, v84, v176);
      v65 = v173;

      *(v78 + 4) = v85;
      v67 = v172;
      *(v78 + 12) = 2080;
      v86 = v81;
      v66 = v80;
      *(v78 + 14) = sub_2283F8938(v86, a4, v176);
      _os_log_impl(&dword_2283ED000, v76, v77, "%{public}s Scheduling %s", v78, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v82, -1, -1);
      MEMORY[0x22AABAD40](v78, -1, -1);

      v87 = v162;
    }

    else
    {

      v87 = v75;
    }

    v66(v87, v65);
    v99 = v161;
    v100 = v74;
    v101 = [v100 content];
    [v101 mutableCopy];

    sub_22855DA7C();
    swift_unknownObjectRelease();
    sub_2283EF310(0, &qword_27D840CA0, 0x277CE1F60);
    if (swift_dynamicCast())
    {
      v102 = v178;
      *&v178 = sub_22855D1AC();
      *(&v178 + 1) = v103;
      v104 = MEMORY[0x277D837D0];
      sub_22855DBEC();
      v105 = sub_22855C17C();
      v179 = v104;
      *&v178 = v105;
      *(&v178 + 1) = v106;
      v107 = [v102 userInfo];
      v108 = sub_22855D0EC();

      sub_228400400(&v178, v175);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v177 = v108;
      sub_22845BB54(v175, v176, isUniquelyReferenced_nonNull_native);
      sub_22842D0B4(v176);
      v110 = sub_22855D0DC();

      [v102 setUserInfo_];

      v111 = [v100 identifier];
      if (!v111)
      {
        sub_22855D1AC();
        v111 = sub_22855D17C();
      }

      v112 = v102;
      v113 = [v100 trigger];
      v114 = [objc_opt_self() requestWithIdentifier:v111 content:v112 trigger:v113];

      v115 = v171;
    }

    else
    {
      v170 = v66;
      sub_22855CA7C();
      v115 = v171;
      sub_2284B89A0(v171, v176);
      v116 = sub_22855CA8C();
      v117 = sub_22855D69C();
      sub_22855B9A8(v115);
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v176[0] = v119;
        *v118 = 136446466;
        v120 = sub_22855E34C();
        v122 = sub_2283F8938(v120, v121, v176);

        *(v118 + 4) = v122;
        *(v118 + 12) = 2080;
        *(v118 + 14) = sub_2283F8938(*(v115 + 16), *(v115 + 24), v176);
        _os_log_impl(&dword_2283ED000, v116, v117, "%{public}s Unable to create mutable content copy of notification %s", v118, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v119, -1, -1);
        MEMORY[0x22AABAD40](v118, -1, -1);

        v123 = v173;
        v124 = v161;
      }

      else
      {

        v124 = v99;
        v123 = v65;
      }

      v170(v124, v123);
      v114 = v100;
    }

    *&v178 = UNUserNotificationCenter.scheduleNotification(_:)(v114);
    v143 = v167;
    sub_22855B578(v67, v167, type metadata accessor for NotificationContentState);
    v144 = (*(v165 + 80) + 80) & ~*(v165 + 80);
    v145 = swift_allocObject();
    v146 = *(v115 + 16);
    v145[1] = *v115;
    v145[2] = v146;
    v147 = *(v115 + 48);
    v145[3] = *(v115 + 32);
    v145[4] = v147;
    sub_22855B8C0(v143, v145 + v144);
    sub_2284B89A0(v115, v176);
    sub_2283FEE20(0);
    sub_228555F88(0);
    sub_22855BB24(&qword_280DE98A0, sub_2283FEE20, MEMORY[0x277CBCD90]);
    v148 = v158;
    sub_22855CE8C();

    sub_22855BB24(&qword_27D840CA8, sub_22855B7C4, MEMORY[0x277CBCC08]);
    v149 = v160;
    v54 = sub_22855CE6C();

    (*(v159 + 8))(v148, v149);
    v142 = v67;
  }

  else
  {
    v88 = v66;
    v89 = v151;
    sub_22855CA7C();

    v90 = sub_22855CA8C();
    v91 = sub_22855D6AC();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = v89;
      v94 = swift_slowAlloc();
      v176[0] = v94;
      *v92 = 136446466;
      v95 = sub_22855E34C();
      v97 = sub_2283F8938(v95, v96, v176);

      *(v92 + 4) = v97;
      v64 = v170;
      *(v92 + 12) = 2080;
      *(v92 + 14) = sub_2283F8938(v64, a4, v176);
      _os_log_impl(&dword_2283ED000, v90, v91, "%{public}s Removing %s", v92, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v94, -1, -1);
      MEMORY[0x22AABAD40](v92, -1, -1);

      v98 = v93;
    }

    else
    {

      v98 = v89;
    }

    v88(v98, v65);
    v125 = v171;
    v126 = v168;
    sub_22855B870(0, &qword_280DEE7A0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v127 = swift_allocObject();
    *(v127 + 16) = xmmword_228560580;
    *(v127 + 32) = v64;
    *(v127 + 40) = a4;
    v128 = v64;
    v129 = off_283B84840[0];
    v130 = type metadata accessor for HealthAppNotificationManager();

    v129(v127, v130, &protocol witness table for HealthAppNotificationManager);
    (off_283B84848[0])(v127, v130, &protocol witness table for HealthAppNotificationManager);

    swift_beginAccess();
    sub_2283F9B10(v126 + 56, &v178);
    v131 = v179;
    v132 = v180;
    __swift_project_boxed_opaque_existential_1(&v178, v179);
    v177 = (*(*(v132 + 8) + 72))(v128, a4, v131);
    v133 = v172;
    v134 = v167;
    sub_22855B578(v172, v167, type metadata accessor for NotificationContentState);
    v135 = (*(v165 + 80) + 80) & ~*(v165 + 80);
    v136 = swift_allocObject();
    v137 = v125[1];
    v136[1] = *v125;
    v136[2] = v137;
    v138 = v125[3];
    v136[3] = v125[2];
    v136[4] = v138;
    sub_22855B8C0(v134, v136 + v135);
    sub_2284B89A0(v125, v176);
    v139 = MEMORY[0x277D84F78];
    sub_22855B508(0, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
    sub_228555F88(0);
    sub_2283FEF68(&qword_280DE9890, &qword_280DE9888, v139 + 8);
    v140 = v152;
    sub_22855CE8C();

    __swift_destroy_boxed_opaque_existential_0(&v178);
    sub_22855BB24(&qword_27D840C98, sub_22855B704, MEMORY[0x277CBCC08]);
    v141 = v156;
    v54 = sub_22855CE6C();
    (*(v153 + 8))(v140, v141);
    v142 = v133;
  }

  result = sub_22855BB74(v142, type metadata accessor for NotificationContentState);
  a9 = v157;
LABEL_28:
  *a9 = v54;
  return result;
}

uint64_t sub_228557BAC@<X0>(_OWORD *a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  sub_228555F88(0);
  v7 = *(v6 + 48);
  v8 = a1[1];
  *a3 = *a1;
  a3[1] = v8;
  v9 = a1[3];
  a3[2] = a1[2];
  a3[3] = v9;
  sub_22855B578(a2, a3 + v7, type metadata accessor for NotificationContentState);
  return sub_2284B89A0(a1, &v11);
}

uint64_t sub_228557C2C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a4;
  v47 = a3;
  sub_22855B458(0);
  v7 = v6;
  v49 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NotificationContentState(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22855CABC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[1];
  v54 = *a1;
  v55 = v16;
  v17 = a1[3];
  v56 = a1[2];
  v57 = v17;
  sub_22855CA7C();
  sub_22855B578(a2, v11, type metadata accessor for NotificationContentState);
  v18 = sub_22855CA8C();
  v19 = sub_22855D6AC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v45 = v7;
    v21 = v20;
    v22 = swift_slowAlloc();
    v44 = a2;
    v23 = v22;
    v50[0] = v22;
    *v21 = 136446466;
    v24 = sub_22855E34C();
    v26 = sub_2283F8938(v24, v25, v50);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    v27 = NotificationContentState.description.getter();
    v29 = v28;
    sub_22855BB74(v11, type metadata accessor for NotificationContentState);
    v30 = sub_2283F8938(v27, v29, v50);

    *(v21 + 14) = v30;
    _os_log_impl(&dword_2283ED000, v18, v19, "%{public}s Updating content state %s", v21, 0x16u);
    swift_arrayDestroy();
    v31 = v23;
    a2 = v44;
    MEMORY[0x22AABAD40](v31, -1, -1);
    v32 = v21;
    v7 = v45;
    MEMORY[0x22AABAD40](v32, -1, -1);
  }

  else
  {

    sub_22855BB74(v11, type metadata accessor for NotificationContentState);
  }

  (*(v13 + 8))(v15, v12);
  v33 = v47;
  swift_beginAccess();
  sub_2283F9B10(v33 + 56, v51);
  v34 = v52;
  v35 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  v50[8] = (*(*(v35 + 8) + 64))(a2, v34);
  v36 = swift_allocObject();
  v37 = v55;
  v36[1] = v54;
  v36[2] = v37;
  v38 = v57;
  v36[3] = v56;
  v36[4] = v38;
  sub_2284B89A0(&v54, v50);
  v39 = MEMORY[0x277D84F78];
  sub_22855B508(0, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
  sub_2283FEF68(&qword_280DE9890, &qword_280DE9888, v39 + 8);
  v40 = v48;
  sub_22855CE8C();

  __swift_destroy_boxed_opaque_existential_0(v51);
  sub_22855BB24(&qword_27D840C60, sub_22855B458, MEMORY[0x277CBCC08]);
  v41 = sub_22855CE6C();
  (*(v49 + 8))(v40, v7);
  return v41;
}

uint64_t sub_228558148@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  sub_228555F88(0);
  result = v5(a1, a1 + *(v6 + 48));
  *a2 = result;
  return result;
}

uint64_t sub_228558198(uint64_t a1)
{
  sub_2284ACE50(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  v10[2] = sub_2284AD0DC;
  v10[3] = v8;
  v10[4] = sub_2284AD0E4;
  v10[5] = v9;
  sub_2284ACEE4(0);
  sub_22855BB24(&qword_27D83FB98, sub_2284ACEE4, MEMORY[0x277CBCC08]);
  swift_retain_n();

  sub_22855CE2C();
  sub_22855BB24(&qword_27D83FBA0, sub_2284ACE50, MEMORY[0x277CBCEB8]);
  v11 = sub_22855CE6C();

  (*(v5 + 8))(v7, v4);
  return v11;
}

uint64_t sub_2285583B0(uint64_t a1)
{
  sub_2284AD0F8(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  v10[2] = sub_2284AD2C0;
  v10[3] = v8;
  v10[4] = sub_2284AD2C8;
  v10[5] = v9;
  sub_2284AD18C(0);
  sub_22855BB24(&qword_27D83FBD0, sub_2284AD18C, MEMORY[0x277CBCC08]);
  swift_retain_n();

  sub_22855CE2C();
  sub_22855BB24(&qword_27D83FBD8, sub_2284AD0F8, MEMORY[0x277CBCEB8]);
  v11 = sub_22855CE6C();

  (*(v5 + 8))(v7, v4);
  return v11;
}

void sub_2285585E0(uint64_t a1, SEL *a2)
{
  v4 = *(*(v2 + 48) + 16);
  v5 = sub_22855D39C();
  [v4 *a2];
}

uint64_t sub_228558644()
{
  v80 = *v0;
  sub_2284ADB00(0);
  v74 = v1;
  v71 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v68 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284ADB7C(0);
  v75 = v3;
  v72 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v69 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284ADD48(0);
  v76 = v5;
  v73 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v70 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228558F10(0);
  v78 = *(v7 - 8);
  v79 = v7;
  MEMORY[0x28223BE20](v7);
  v77 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[2];
  v12 = v0[4];
  v88 = 0;
  v89 = 0xE000000000000000;
  v81 = v0;

  sub_22855DC6C();

  v88 = 0xD00000000000002FLL;
  v89 = 0x8000000228570E10;
  MEMORY[0x22AAB92A0](v12, v10);
  v65 = v88;
  v64 = v89;
  v88 = 0;
  v89 = 0xE000000000000000;
  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0xD00000000000003BLL, 0x8000000228570E40);
  v84 = v10;
  v85 = v12;
  MEMORY[0x22AAB92A0](v12, v10);
  v63 = v88;
  v62 = v89;
  v13 = v9[3];
  v14 = v9[4];
  v16 = v9[5];
  v15 = v9[6];
  v67 = v9;
  v17 = v9[7];
  v88 = v13;
  v89 = v14;
  v90 = v16;
  v91 = v15;
  v92 = v17;

  v18 = v15;
  v19 = v17;
  v66 = v11;
  v20 = [v11 profileIdentifier];
  v21 = sub_2284816C0(v20);

  v22 = v91;

  v24 = 0;
  v25 = v21 + 80;
  v86 = -*(v21 + 16);
  v87 = v21;
  v82 = v21 + 80;
  v83 = MEMORY[0x277D84F90];
LABEL_2:
  v26 = v24 + 1;
  v27 = (v25 + 56 * v24);
  while (1)
  {
    if (v86 + v26 == 1)
    {

      v42 = v83;
      v43 = v67;
      sub_2284ABA00(v83);
      v88 = v42;
      sub_22855B870(0, &qword_280DE9638, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D83940]);
      v44 = v68;
      sub_22855CDCC();
      v45 = swift_allocObject();
      v46 = v64;
      v45[2] = v65;
      v45[3] = v46;
      v47 = v66;
      v48 = v63;
      v45[4] = v66;
      v45[5] = v48;
      v45[6] = v62;
      v45[7] = v43;
      v49 = v47;

      sub_22855CCBC();
      sub_22855B508(0, &qword_280DE9958, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277CBCD88]);
      sub_22855BB24(&qword_280DE9850, sub_2284ADB00, MEMORY[0x277CBCE80]);
      sub_2283FEF68(&qword_280DE9960, &qword_280DE9958, &type metadata for PluginFeedItem.NotificationIdentifier);
      v50 = v69;
      v51 = v74;
      sub_22855CF9C();

      (*(v71 + 8))(v44, v51);
      sub_22855BB24(&qword_280DE9A58, sub_2284ADB7C, MEMORY[0x277CBCCE0]);
      v52 = v70;
      v53 = v75;
      sub_22855CF1C();
      (*(v72 + 8))(v50, v53);
      sub_22855BB24(&qword_280DE9A88, sub_2284ADD48, MEMORY[0x277CBCCD0]);
      v54 = v76;
      v55 = sub_22855CE6C();
      v56 = v81;

      (*(v73 + 8))(v52, v54);
      v88 = v55;
      v57 = swift_allocObject();
      v58 = v80;
      *(v57 + 16) = v56;
      *(v57 + 24) = v58;
      sub_2284AD530(0);
      sub_22855BB24(&qword_280DE9900, sub_2284AD530, MEMORY[0x277CBCD90]);

      v59 = v77;
      sub_22855CE8C();

      sub_22855BB24(&qword_280DE9BD0, sub_228558F10, MEMORY[0x277CBCC08]);
      v60 = v79;
      v61 = sub_22855CE6C();
      (*(v78 + 8))(v59, v60);
      return v61;
    }

    v24 = v26;
    if ((v26 - 1) >= *(v87 + 16))
    {
      break;
    }

    v28 = *(v27 - 6);
    v29 = *(v27 - 5);
    v31 = *(v27 - 4);
    v30 = *(v27 - 3);
    v32 = *(v27 - 2);
    v33 = *(v27 - 1);
    v34 = *v27;
    if (v29 == v85 && v31 == v84)
    {
      v29 = v85;
LABEL_12:
      v36 = v28;

      v37 = v83;
      result = swift_isUniquelyReferenced_nonNull_native();
      v88 = v37;
      if ((result & 1) == 0)
      {
        result = sub_2284276B0(0, *(v37 + 16) + 1, 1);
        v37 = v88;
      }

      v39 = *(v37 + 16);
      v38 = *(v37 + 24);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        v83 = v39 + 1;
        result = sub_2284276B0((v38 > 1), v39 + 1, 1);
        v40 = v83;
        v37 = v88;
      }

      *(v37 + 16) = v40;
      v83 = v37;
      v41 = (v37 + 56 * v39);
      v41[4] = v28;
      v41[5] = v29;
      v41[6] = v31;
      v41[7] = v30;
      v41[8] = v32;
      v41[9] = v33;
      v41[10] = v34;
      v25 = v82;
      goto LABEL_2;
    }

    ++v26;
    v27 += 7;
    result = sub_22855E15C();
    if (result)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_228558F10(uint64_t a1)
{
  if (!qword_280DE9BC8)
  {
    sub_2284AD530(255);
    sub_22855BB24(&qword_280DE9900, sub_2284AD530, MEMORY[0x277CBCD90]);
    v1 = sub_22855CB6C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9BC8);
    }
  }
}

void sub_228558FB0(uint64_t a1)
{
  v84 = *v1;
  sub_2284ADB00(0);
  v77 = v3;
  v75 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v72 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284ADB7C(0);
  v78 = v5;
  v76 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v73 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284ADD48(0);
  v80 = v7;
  v79 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v74 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228558F10(0);
  v82 = *(v9 - 8);
  v83 = v9;
  MEMORY[0x28223BE20](v9);
  v81 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1[5];
  v12 = v1[6];
  v13 = v1[2];
  v14 = v1[4];
  v85 = v1;
  v95 = 0;
  v96 = 0xE000000000000000;
  v92 = a1;

  sub_22855DC6C();

  v95 = 0xD00000000000002FLL;
  v96 = 0x8000000228570E10;
  MEMORY[0x22AAB92A0](v14, v11);
  v69 = v95;
  v68 = v96;
  v95 = 0;
  v96 = 0xE000000000000000;
  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0xD00000000000003BLL, 0x8000000228570E40);
  MEMORY[0x22AAB92A0](v14, v11);
  v67 = v95;
  v66 = v96;
  v15 = v12[3];
  v16 = v12[4];
  v17 = v12[5];
  v18 = v12[6];
  v71 = v12;
  v19 = v12[7];
  v95 = v15;
  v96 = v16;
  v97 = v17;
  v98 = v18;
  v99 = v19;

  v20 = v18;
  v21 = v19;
  v70 = v13;
  v22 = [v13 profileIdentifier];
  v23 = sub_2284816C0(v22);

  v24 = v98;

  v26 = *(v23 + 16);
  if (v26)
  {
    v27 = 0;
    v28 = v23 + 80;
    v87 = *(v23 + 16);
    v64 = v26 - 1;
    v29 = MEMORY[0x277D84F90];
    v91 = v23;
    v65 = v23 + 80;
    do
    {
      v86 = v29;
      v30 = (v28 + 56 * v27);
      v31 = v27;
      while (1)
      {
        if (v31 >= *(v23 + 16))
        {
          __break(1u);
          return;
        }

        v93 = &v64;
        v33 = *(v30 - 6);
        v32 = *(v30 - 5);
        v35 = *(v30 - 4);
        v34 = *(v30 - 3);
        v36 = *(v30 - 2);
        v89 = *(v30 - 1);
        v90 = v32;
        v37 = *v30;
        v27 = v31 + 1;
        v95 = v34;
        v96 = v36;
        v88 = v31;
        MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
        *(&v64 - 2) = &v95;
        v38 = v33;

        if (sub_2284C6D9C(sub_228434EDC, (&v64 - 4), v92))
        {
          break;
        }

        v30 += 7;
        v31 = v27;
        v23 = v91;
        if (v87 == v27)
        {
          v29 = v86;
          goto LABEL_15;
        }
      }

      v93 = v36;
      v29 = v86;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v94 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_2284276B0(0, *(v29 + 16) + 1, 1);
        v29 = v94;
      }

      v39 = v33;
      v41 = v89;
      v40 = v90;
      v42 = v34;
      v43 = v93;
      v45 = *(v29 + 16);
      v44 = *(v29 + 24);
      if (v45 >= v44 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_2284276B0((v44 > 1), v45 + 1, 1);
        v41 = v89;
        v40 = v90;
        v43 = v93;
        v42 = v34;
        v39 = v33;
        v29 = v94;
      }

      *(v29 + 16) = v45 + 1;
      v46 = (v29 + 56 * v45);
      v46[4] = v39;
      v46[5] = v40;
      v46[6] = v35;
      v46[7] = v42;
      v46[8] = v43;
      v46[9] = v41;
      v46[10] = v37;
      v23 = v91;
      v28 = v65;
    }

    while (v64 != v88);
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

LABEL_15:

  v47 = v71;
  sub_2284ABA00(v29);
  v95 = v29;
  sub_22855B870(0, &qword_280DE9638, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D83940]);
  v48 = v72;
  sub_22855CDCC();
  v49 = swift_allocObject();
  v50 = v68;
  v49[2] = v69;
  v49[3] = v50;
  v51 = v70;
  v52 = v67;
  v49[4] = v70;
  v49[5] = v52;
  v49[6] = v66;
  v49[7] = v47;
  v53 = v51;

  sub_22855CCBC();
  sub_22855B508(0, &qword_280DE9958, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277CBCD88]);
  sub_22855BB24(&qword_280DE9850, sub_2284ADB00, MEMORY[0x277CBCE80]);
  sub_2283FEF68(&qword_280DE9960, &qword_280DE9958, &type metadata for PluginFeedItem.NotificationIdentifier);
  v54 = v73;
  v55 = v77;
  sub_22855CF9C();

  (*(v75 + 8))(v48, v55);
  sub_22855BB24(&qword_280DE9A58, sub_2284ADB7C, MEMORY[0x277CBCCE0]);
  v56 = v74;
  v57 = v78;
  sub_22855CF1C();
  (*(v76 + 8))(v54, v57);
  sub_22855BB24(&qword_280DE9A88, sub_2284ADD48, MEMORY[0x277CBCCD0]);
  v58 = v80;
  v59 = sub_22855CE6C();

  (*(v79 + 8))(v56, v58);
  v95 = v59;
  v60 = swift_allocObject();
  v61 = v84;
  *(v60 + 16) = v85;
  *(v60 + 24) = v61;
  sub_2284AD530(0);
  sub_22855BB24(&qword_280DE9900, sub_2284AD530, MEMORY[0x277CBCD90]);

  v62 = v81;
  sub_22855CE8C();

  sub_22855BB24(&qword_280DE9BD0, sub_228558F10, MEMORY[0x277CBCC08]);
  v63 = v83;
  sub_22855CE6C();
  (*(v82 + 8))(v62, v63);
}

uint64_t sub_228559958(uint64_t *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v38 = a3;
  v7 = sub_22855C1DC();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22855CABC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  sub_22855CA7C();

  v15 = sub_22855CA8C();
  v16 = sub_22855D6AC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v36 = a4;
    v18 = v17;
    v37 = swift_slowAlloc();
    v41 = v37;
    *v18 = 136315906;
    v19 = sub_22855E34C();
    v21 = sub_2283F8938(v19, v20, &v41);
    LODWORD(v38) = v16;
    v22 = v21;

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = [*(a2 + 16) profileIdentifier];
    v24 = [v23 identifier];
    sub_22855C1BC();

    v25 = sub_22855C17C();
    v35 = v10;
    v27 = v26;

    (*(v39 + 8))(v9, v40);
    v28 = sub_2283F8938(v25, v27, &v41);

    *(v18 + 14) = v28;
    *(v18 + 22) = 2080;
    *(v18 + 24) = sub_2283F8938(*(a2 + 32), *(a2 + 40), &v41);
    *(v18 + 32) = 2080;
    v29 = MEMORY[0x22AAB9430](v14, &type metadata for PluginFeedItem.NotificationIdentifier);
    v31 = sub_2283F8938(v29, v30, &v41);

    *(v18 + 34) = v31;
    _os_log_impl(&dword_2283ED000, v15, v38, v36, v18, 0x2Au);
    v32 = v37;
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v32, -1, -1);
    MEMORY[0x22AABAD40](v18, -1, -1);

    return (*(v11 + 8))(v13, v35);
  }

  else
  {

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_228559CB8(uint64_t a1, uint64_t *a2)
{
  sub_2283F9B10(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v3 + 56));
  sub_2283FAB3C(v5, v3 + 56);
  return swift_endAccess();
}

uint64_t sub_228559D64(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + 56));
  sub_2283FAB3C(a1, v1 + 56);
  return swift_endAccess();
}

unint64_t sub_228559E0C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_22855DC6C();

  MEMORY[0x22AAB92A0](v1, v2);
  return 0xD00000000000002FLL;
}

uint64_t sub_228559E88()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0xD00000000000003BLL, 0x8000000228570E40);
  MEMORY[0x22AAB92A0](v1, v2);
  return 0;
}

uint64_t sub_228559F08(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = v1[4];
  v6 = v1[5];
  sub_22855DC6C();

  v15[0] = 0xD00000000000002FLL;
  v15[1] = 0x8000000228570E10;
  MEMORY[0x22AAB92A0](v5, v6);
  v7 = v1[2];
  v8 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v9 = sub_22855D17C();

  v10 = [v8 initWithCategory:1 domainName:v9 healthStore:v7];

  swift_beginAccess();
  sub_2283F9B10((v2 + 7), v15);
  v11 = v16;
  v12 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v13 = NotificationContentStateManager.getContentState(for:legacyStringIdentifier:legacyKeyValueDomain:)(v3, v4, v3, v4, v10, v11, v12);

  __swift_destroy_boxed_opaque_existential_0(v15);
  return v13;
}

uint64_t sub_22855A058(uint64_t a1, _OWORD *a2)
{
  *(v3 + 80) = a1;
  *(v3 + 88) = v2;
  *(v3 + 96) = *v2;
  v4 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  v5 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v5;
  return MEMORY[0x2822009F8](sub_22855A0B0, 0, 0);
}

uint64_t sub_22855A0B0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = swift_task_alloc();
  v0[13] = v3;
  v3[2] = v2;
  v3[3] = v0 + 2;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[14] = v4;
  sub_2284B7804(0);
  v6 = v5;
  *v4 = v0;
  v4[1] = sub_22855A1BC;
  v7 = v0[10];

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000015, 0x8000000228574CD0, sub_22855AF44, v3, v6);
}

uint64_t sub_22855A1BC()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22855A2F8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22855A2F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22855A35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a1;
  v21 = a4;
  v22 = sub_2284B7804;
  sub_228555F0C(0, &qword_27D840C50, sub_2284B7804, MEMORY[0x277D85670]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  v23 = sub_228559F08(a3);
  v24 = v23;
  v19 = *(v8 + 16);
  v19(v11, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  v14 = *(v8 + 32);
  v14(v13 + v12, v11, v7);
  v15 = v20;
  *(v13 + ((v12 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;
  v19(v11, v15, v7);
  v16 = swift_allocObject();
  v14(v16 + v12, v11, v7);
  v17 = v22;
  sub_228555F0C(0, &qword_280DE9938, v22, MEMORY[0x277CBCD88]);
  sub_228555FF0(&qword_280DE9940, &qword_280DE9938, v17);
  sub_22855CE5C();
}

uint64_t sub_22855A5D8(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22855CABC();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (v10)
  {
    sub_22855CA7C();
    v11 = v10;
    v12 = sub_22855CA8C();
    v13 = sub_22855D68C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v25[1] = a2;
      v15 = v14;
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 136315650;
      v17 = sub_22855E34C();
      v19 = sub_2283F8938(v17, v18, &v26);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_2283F8938(0xD000000000000015, 0x8000000228574CD0, &v26);
      *(v15 + 22) = 2080;
      v25[2] = v10;
      v20 = v10;
      sub_228418D44();
      v21 = sub_22855D1CC();
      v23 = sub_2283F8938(v21, v22, &v26);

      *(v15 + 24) = v23;
      _os_log_impl(&dword_2283ED000, v12, v13, "[%s] %s finished with error: %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v16, -1, -1);
      MEMORY[0x22AABAD40](v15, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    v26 = v10;
    v24 = v10;
    sub_228555F0C(0, &qword_27D840C50, sub_2284B7804, MEMORY[0x277D85670]);
    return sub_22855D4AC();
  }

  return result;
}

uint64_t sub_22855A878(uint64_t a1)
{
  sub_2284B7804(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_22855B578(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), sub_2284B7804);
  sub_228555F0C(0, &qword_27D840C50, sub_2284B7804, MEMORY[0x277D85670]);
  return sub_22855D4BC();
}

uint64_t HealthAppPluginNotificationManager.deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  return v0;
}

uint64_t HealthAppPluginNotificationManager.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_22855A9E8(uint64_t a1)
{
  sub_2284ACE50(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  v10[2] = sub_2284AEB84;
  v10[3] = v8;
  v10[4] = sub_2284AEB90;
  v10[5] = v9;
  sub_2284ACEE4(0);
  sub_22855BB24(&qword_27D83FB98, sub_2284ACEE4, MEMORY[0x277CBCC08]);
  swift_retain_n();

  sub_22855CE2C();
  sub_22855BB24(&qword_27D83FBA0, sub_2284ACE50, MEMORY[0x277CBCEB8]);
  v11 = sub_22855CE6C();

  (*(v5 + 8))(v7, v4);
  return v11;
}

uint64_t sub_22855AC00(uint64_t a1)
{
  sub_2284AD0F8(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  v10[2] = sub_2284AEB80;
  v10[3] = v8;
  v10[4] = sub_2284AEB8C;
  v10[5] = v9;
  sub_2284AD18C(0);
  sub_22855BB24(&qword_27D83FBD0, sub_2284AD18C, MEMORY[0x277CBCC08]);
  swift_retain_n();

  sub_22855CE2C();
  sub_22855BB24(&qword_27D83FBD8, sub_2284AD0F8, MEMORY[0x277CBCEB8]);
  v11 = sub_22855CE6C();

  (*(v5 + 8))(v7, v4);
  return v11;
}

void sub_22855AE30(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = *(*(v4 + 48) + 16);
  v7 = sub_22855D39C();
  [v6 *a4];
}

uint64_t objectdestroy_23Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t dispatch thunk of HealthAppPluginNotificationManager.getContentState(for:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 248) + **(*v2 + 248));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_228468A14;

  return v8(a1, a2);
}

uint64_t sub_22855B2EC(void **a1)
{
  sub_228555F0C(0, &qword_27D840C50, sub_2284B7804, MEMORY[0x277D85670]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_22855A5D8(a1, v1 + v5, v6);
}

uint64_t sub_22855B3B8(uint64_t a1)
{
  sub_228555F0C(0, &qword_27D840C50, sub_2284B7804, MEMORY[0x277D85670]);

  return sub_22855A878(a1);
}

void sub_22855B458(uint64_t a1)
{
  if (!qword_27D840C58)
  {
    v1 = MEMORY[0x277D84F78];
    sub_22855B508(255, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
    sub_2283FEF68(&qword_280DE9890, &qword_280DE9888, v1 + 8);
    v2 = sub_22855CB6C();
    if (!v3)
    {
      atomic_store(v2, &qword_27D840C58);
    }
  }
}

void sub_22855B508(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_228418D44();
    v9 = a4(a1, a3, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_22855B578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_22855B5E0(uint64_t a1)
{
  if (!qword_27D840C68)
  {
    sub_228555F88(255);
    v1 = sub_22855CDEC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D840C68);
    }
  }
}

void sub_22855B648(uint64_t a1)
{
  if (!qword_27D840C70)
  {
    sub_22855B5E0(255);
    sub_228418D44();
    sub_22855BB24(&qword_27D840C78, sub_22855B5E0, MEMORY[0x277CBCE90]);
    v1 = sub_22855CB3C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D840C70);
    }
  }
}

void sub_22855B704(uint64_t a1)
{
  if (!qword_27D840C80)
  {
    v1 = MEMORY[0x277D84F78];
    sub_22855B508(255, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
    sub_228555F88(255);
    sub_2283FEF68(&qword_280DE9890, &qword_280DE9888, v1 + 8);
    v2 = sub_22855CB6C();
    if (!v3)
    {
      atomic_store(v2, &qword_27D840C80);
    }
  }
}

void sub_22855B7C4(uint64_t a1)
{
  if (!qword_27D840C88)
  {
    sub_2283FEE20(255);
    sub_228555F88(255);
    sub_22855BB24(&qword_280DE98A0, sub_2283FEE20, MEMORY[0x277CBCD90]);
    v1 = sub_22855CB6C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D840C88);
    }
  }
}

void sub_22855B870(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_22855B8C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationContentState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22855B924@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationContentState(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 80) & ~*(v3 + 80));

  return sub_228557BAC((v1 + 16), v4, a1);
}

uint64_t objectdestroy_68Tm()
{
  v1 = type metadata accessor for NotificationContentState(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);

  if (*(v0 + 72) >= 2uLL)
  {
  }

  v4 = (v2 + 80) & ~v2;

  v5 = *(v1 + 20);
  v6 = sub_22855C1DC();
  (*(*(v6 - 8) + 8))(v0 + v4 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_22855BB24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22855BB74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void NoveltyFeatureTag.init(for:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 uniqueIdentifier];
  v5 = sub_22855D1AC();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
}

uint64_t NoveltyFeatureTag.value.getter()
{
  v1 = *v0;

  return v1;
}

double sub_22855BC74@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

void *sub_22855BC80@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}