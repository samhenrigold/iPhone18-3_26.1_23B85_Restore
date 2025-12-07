void sub_22B1779AC(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v5 = sub_22B36081C();
  v16 = [v4 initWithEntityName_];

  [v16 setPredicate_];
  [v16 setResultType_];
  [v16 setFetchBatchSize_];
  while (1)
  {
    [v16 setFetchOffset_];
    [v16 setFetchLimit_];
    sub_22B35F66C();
    v7 = sub_22B360E9C();
    v8 = v7;
    v9 = v7 >> 62;
    if (v7 >> 62)
    {
      break;
    }

    v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_15;
    }

LABEL_6:
    v11 = MEMORY[0x23188EEB0]();
    if (v10 < 1)
    {
      __break(1u);
      return;
    }

    v12 = v11;
    for (i = 0; i != v10; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x23188EAC0](i, v8);
      }

      else
      {
        v14 = *(v8 + 8 * i + 32);
      }

      v15 = v14;
      [a2 deleteObject_];
    }

    objc_autoreleasePoolPop(v12);
    sub_22B2A534C(2);
    if (v9)
    {
      v6 = sub_22B36109C();
    }

    else
    {
      v6 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    [a2 reset];
    if (v6 <= 9)
    {
      goto LABEL_16;
    }
  }

  v10 = sub_22B36109C();
  if (v10)
  {
    goto LABEL_6;
  }

LABEL_15:

LABEL_16:
  [a2 reset];
}

uint64_t objectdestroy_15Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (((*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v6 + 8, v4 | 7);
}

uint64_t sub_22B177D34(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v2 + v5);
  v7 = *(v2 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a2(v2 + v4, v6, v7);
}

uint64_t sub_22B177E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v7 = sub_22B35DE9C();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8A0, &unk_22B365970);
  v6[13] = swift_task_alloc();
  v8 = type metadata accessor for CDEnergySite(0);
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B177FF4, v5, 0);
}

uint64_t sub_22B177FF4()
{
  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BDD0;
  *(v0 + 136) = qword_28140BDD0;

  return MEMORY[0x2822009F8](sub_22B17808C, v1, 0);
}

uint64_t sub_22B17808C()
{
  v1 = v0[7];
  sub_22B141AE8(v0[2], v0[3], 0, v0[13]);

  return MEMORY[0x2822009F8](sub_22B178104, v1, 0);
}

uint64_t sub_22B178104()
{
  v1 = v0[13];
  if ((*(v0[15] + 48))(v1, 1, v0[14]) == 1)
  {
    sub_22B123284(v1, &qword_27D8BA8A0, &unk_22B365970);
    sub_22B134CDC();
    swift_allocError();
    *v2 = 10;
    swift_willThrow();

    v4 = v0[1];
LABEL_4:

    return v4();
  }

  sub_22B144DC0(v1, v0[16]);
  sub_22B35EAFC();
  v3 = sub_22B35EAEC();
  v0[18] = v3;
  v6 = v3;
  v7 = v0[10];
  v8 = v0[11];
  v9 = v0[9];
  sub_22B35F30C();
  v10 = *(v8 + 48);
  v11 = v10(v9, 1, v7);
  if (v11 == 1)
  {
    v13 = v0[9];
    v12 = v0[10];
    sub_22B35DD1C();
    if (v10(v13, 1, v12) != 1)
    {
      sub_22B123284(v0[9], &qword_27D8BA340, &qword_22B363FB0);
    }
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
  }

  v15 = v0[11];
  v14 = v0[12];
  v16 = v0[10];
  v17 = sub_22B35DDEC();
  (*(v15 + 8))(v14, v16);
  if (v17)
  {
    sub_22B16F530(v0[16]);

    v4 = v0[1];
    goto LABEL_4;
  }

  v18 = v0[10];
  v19 = v0[11];
  v20 = v0[8];
  v21 = v0[5];
  v26 = v0[6];
  v22 = v0[4];
  v23 = *(v19 + 16);
  v23(v20);
  v24 = *(v19 + 56);
  v24(v20, 0, 1, v18);
  sub_22B35F31C();
  sub_22B144B30(v22, v21);
  sub_22B35F25C();
  (v23)(v20, v26, v18);
  v24(v20, 0, 1, v18);
  sub_22B35F20C();
  v25 = swift_task_alloc();
  v0[19] = v25;
  *v25 = v0;
  v25[1] = sub_22B1784F8;

  return EKEnergySite.save(reset:tokenUpdate:)(0, 0);
}

uint64_t sub_22B1784F8()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_22B1786CC;
  }

  else
  {
    v4 = sub_22B178624;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B178624()
{
  v1 = *(v0 + 128);

  sub_22B16F530(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B1786CC()
{
  v1 = *(v0 + 128);

  sub_22B16F530(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B17877C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v7 = sub_22B35DE9C();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8A0, &unk_22B365970);
  v6[13] = swift_task_alloc();
  v8 = type metadata accessor for CDEnergySite(0);
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B17891C, v5, 0);
}

uint64_t sub_22B17891C()
{
  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BDD0;
  *(v0 + 136) = qword_28140BDD0;

  return MEMORY[0x2822009F8](sub_22B1789B4, v1, 0);
}

uint64_t sub_22B1789B4()
{
  v1 = v0[7];
  sub_22B141AE8(v0[2], v0[3], 0, v0[13]);

  return MEMORY[0x2822009F8](sub_22B178A2C, v1, 0);
}

uint64_t sub_22B178A2C()
{
  v1 = v0[13];
  if ((*(v0[15] + 48))(v1, 1, v0[14]) == 1)
  {
    sub_22B123284(v1, &qword_27D8BA8A0, &unk_22B365970);
    sub_22B134CDC();
    swift_allocError();
    *v2 = 10;
    swift_willThrow();

    v4 = v0[1];
LABEL_4:

    return v4();
  }

  sub_22B144DC0(v1, v0[16]);
  sub_22B35EAFC();
  v3 = sub_22B35EAEC();
  v0[18] = v3;
  v6 = v3;
  v7 = v0[10];
  v8 = v0[11];
  v9 = v0[9];
  sub_22B35F34C();
  v10 = *(v8 + 48);
  v11 = v10(v9, 1, v7);
  if (v11 == 1)
  {
    v13 = v0[9];
    v12 = v0[10];
    sub_22B35DD1C();
    if (v10(v13, 1, v12) != 1)
    {
      sub_22B123284(v0[9], &qword_27D8BA340, &qword_22B363FB0);
    }
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
  }

  v15 = v0[11];
  v14 = v0[12];
  v16 = v0[10];
  v17 = sub_22B35DDEC();
  (*(v15 + 8))(v14, v16);
  if (v17)
  {
    sub_22B16F530(v0[16]);

    v4 = v0[1];
    goto LABEL_4;
  }

  v18 = v0[10];
  v19 = v0[11];
  v20 = v0[8];
  v21 = v0[5];
  v26 = v0[6];
  v22 = v0[4];
  v23 = *(v19 + 16);
  v23(v20);
  v24 = *(v19 + 56);
  v24(v20, 0, 1, v18);
  sub_22B35F35C();
  sub_22B144B30(v22, v21);
  sub_22B35F27C();
  (v23)(v20, v26, v18);
  v24(v20, 0, 1, v18);
  sub_22B35F20C();
  v25 = swift_task_alloc();
  v0[19] = v25;
  *v25 = v0;
  v25[1] = sub_22B178E20;

  return EKEnergySite.save(reset:tokenUpdate:)(0, 0);
}

uint64_t sub_22B178E20()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_22B1795F0;
  }

  else
  {
    v4 = sub_22B1795F4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B178F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v7 = sub_22B35DE9C();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8A0, &unk_22B365970);
  v6[13] = swift_task_alloc();
  v8 = type metadata accessor for CDEnergySite(0);
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1790EC, v5, 0);
}

uint64_t sub_22B1790EC()
{
  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BDD0;
  *(v0 + 136) = qword_28140BDD0;

  return MEMORY[0x2822009F8](sub_22B179184, v1, 0);
}

uint64_t sub_22B179184()
{
  v1 = v0[7];
  sub_22B141AE8(v0[2], v0[3], 0, v0[13]);

  return MEMORY[0x2822009F8](sub_22B1791FC, v1, 0);
}

uint64_t sub_22B1791FC()
{
  v1 = v0[13];
  if ((*(v0[15] + 48))(v1, 1, v0[14]) == 1)
  {
    sub_22B123284(v1, &qword_27D8BA8A0, &unk_22B365970);
    sub_22B134CDC();
    swift_allocError();
    *v2 = 10;
    swift_willThrow();

    v4 = v0[1];
LABEL_4:

    return v4();
  }

  sub_22B144DC0(v1, v0[16]);
  sub_22B35EAFC();
  v3 = sub_22B35EAEC();
  v0[18] = v3;
  v6 = v3;
  v7 = v0[10];
  v8 = v0[11];
  v9 = v0[9];
  sub_22B35F36C();
  v10 = *(v8 + 48);
  v11 = v10(v9, 1, v7);
  if (v11 == 1)
  {
    v13 = v0[9];
    v12 = v0[10];
    sub_22B35DD1C();
    if (v10(v13, 1, v12) != 1)
    {
      sub_22B123284(v0[9], &qword_27D8BA340, &qword_22B363FB0);
    }
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
  }

  v15 = v0[11];
  v14 = v0[12];
  v16 = v0[10];
  v17 = sub_22B35DDEC();
  (*(v15 + 8))(v14, v16);
  if (v17)
  {
    sub_22B16F530(v0[16]);

    v4 = v0[1];
    goto LABEL_4;
  }

  v18 = v0[10];
  v19 = v0[11];
  v20 = v0[8];
  v21 = v0[5];
  v26 = v0[6];
  v22 = v0[4];
  v23 = *(v19 + 16);
  v23(v20);
  v24 = *(v19 + 56);
  v24(v20, 0, 1, v18);
  sub_22B35F37C();
  sub_22B144B30(v22, v21);
  sub_22B35F29C();
  (v23)(v20, v26, v18);
  v24(v20, 0, 1, v18);
  sub_22B35F20C();
  v25 = swift_task_alloc();
  v0[19] = v25;
  *v25 = v0;
  v25[1] = sub_22B178E20;

  return EKEnergySite.save(reset:tokenUpdate:)(0, 0);
}

void sub_22B1795F8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v42 - v9;
  v11 = [a1 gridID];
  v12 = sub_22B36084C();
  v14 = v13;

  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = [a1 lastWindowWasClean];
  *(a2 + 17) = [a1 dispatched];
  v15 = [a1 lastCleanWindowStart];
  if (v15)
  {
    v16 = v15;
    sub_22B35DE5C();

    v17 = sub_22B35DE9C();
    (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
  }

  else
  {
    v18 = sub_22B35DE9C();
    (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  }

  v19 = type metadata accessor for CDEnergyWindowNotifications(0);
  sub_22B170CD0(v10, a2 + *(v19 + 32), &qword_27D8BA340, &qword_22B363FB0);
  v20 = [a1 lastCleanWindowEnd];
  if (v20)
  {
    v21 = v20;
    sub_22B35DE5C();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = sub_22B35DE9C();
  (*(*(v23 - 8) + 56))(v6, v22, 1, v23);
  sub_22B170CD0(v6, a2 + *(v19 + 36), &qword_27D8BA340, &qword_22B363FB0);
  v24 = [a1 title];
  v43 = sub_22B36084C();
  v26 = v25;

  v27 = [a1 body];
  v28 = sub_22B36084C();
  v30 = v29;

  v31 = [a1 url];
  if (v31)
  {
    v32 = v31;
    v33 = sub_22B36084C();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  v36 = [a1 homeID];
  if (v36)
  {
    v37 = v36;
    v38 = sub_22B36084C();
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

  v41 = [a1 recurring];

  *(a2 + 24) = v43;
  *(a2 + 32) = v26;
  *(a2 + 40) = v28;
  *(a2 + 48) = v30;
  *(a2 + 56) = v33;
  *(a2 + 64) = v35;
  *(a2 + 72) = v38;
  *(a2 + 80) = v40;
  *(a2 + 88) = v41;
}

uint64_t sub_22B17996C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6)
{
  v56 = a5;
  v57 = a6;
  v11 = sub_22B36052C();
  v53 = *(v11 - 8);
  v54 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[6];
  v16 = a1[7];
  v55 = v15;
  if (v16)
  {
    v17 = MEMORY[0x23188EEB0](v12);
    sub_22B17D438(a3, a4, v15, v16, a2, aBlock);
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_14:
    objc_autoreleasePoolPop(v17);
    __break(1u);
    goto LABEL_15;
  }

  v17 = MEMORY[0x23188EEB0](v12);
  sub_22B17CAE8(a3, a4, 1, a2, aBlock);
  if (v6)
  {
    goto LABEL_14;
  }

LABEL_3:
  v18 = a2;
  objc_autoreleasePoolPop(v17);
  v19 = aBlock[0];
  v59 = aBlock[0];
  if (aBlock[0] >> 62)
  {
    if (sub_22B36109C())
    {
      if (!sub_22B36109C())
      {
      }

      goto LABEL_5;
    }
  }

  else if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x23188EAC0](0, v19);
      goto LABEL_8;
    }

    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v20 = *(v19 + 32);
LABEL_8:
      v21 = v20;
      v15 = [v20 managedObjectContext];

      if (!v15)
      {
      }

      MEMORY[0x28223BE20](v22);
      *(&v53 - 6) = &v59;
      *(&v53 - 5) = a3;
      *(&v53 - 4) = a4;
      *(&v53 - 3) = a1;
      *(&v53 - 16) = v56 & 1;
      *(&v53 - 15) = v57 & 1;
      *(&v53 - 1) = v15;
      sub_22B360E7C();
LABEL_15:
    }

    __break(1u);
    goto LABEL_28;
  }

  v30 = objc_opt_self();
  v31 = sub_22B36081C();
  v32 = [v30 insertNewObjectForEntityForName:v31 inManagedObjectContext:*(v18 + 48)];

  v33 = sub_22B36081C();
  v34 = sub_22B36081C();
  [v32 setValue:v33 forKeyPath:v34];

  v35 = sub_22B360ABC();
  v36 = sub_22B36081C();
  [v32 setValue:v35 forKeyPath:v36];

  v37 = sub_22B360ABC();
  v38 = sub_22B36081C();
  [v32 setValue:v37 forKeyPath:v38];

  v39 = sub_22B360ABC();
  v40 = sub_22B36081C();
  [v32 setValue:v39 forKeyPath:v40];

  v41 = sub_22B36081C();
  v42 = sub_22B36081C();
  v14 = &off_2786FB000;
  [v32 setValue:v41 forKey:v42];

  v43 = sub_22B36081C();
  v44 = sub_22B36081C();
  [v32 setValue:v43 forKey:v44];

  if (a1[5])
  {
    v45 = sub_22B36081C();
    v46 = sub_22B36081C();
    [v32 setValue:v45 forKeyPath:v46];
  }

  if (v16)
  {
    v47 = sub_22B36081C();
    v48 = sub_22B36081C();
    [v32 setValue:v47 forKey:v48];
  }

  v49 = *(v18 + 48);
  v50 = swift_allocObject();
  *(v50 + 16) = sub_22B12823C;
  *(v50 + 24) = v18;
  aBlock[4] = sub_22B128240;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_57;
  v51 = _Block_copy(aBlock);
  v52 = v49;

  [v52 performBlockAndWait_];

  _Block_release(v51);
  LOBYTE(v51) = swift_isEscapingClosureAtFileLocation();

  if (v51)
  {
LABEL_28:
    __break(1u);
    swift_once();
    v23 = v54;
    v24 = __swift_project_value_buffer(v54, qword_28140BD10);
    swift_beginAccess();
    v25 = v53;
    (*(v53 + 16))(v14, v24, v23);
    v26 = sub_22B36050C();
    v27 = sub_22B360D1C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_22B116000, v26, v27, "Error adding entry to notification cache.", v28, 2u);
      MEMORY[0x23188F650](v28, -1, -1);
    }

    return (*(v25 + 8))(v14, v23);
  }

  return result;
}

id sub_22B17A0C0(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v10 = a1;
  v11 = *a1;
  if (*a1 >> 62)
  {
    v12 = &off_2786FB000;
    if (!sub_22B36109C())
    {
      goto LABEL_7;
    }
  }

  else
  {
    v12 = &off_2786FB000;
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }
  }

  if ((v11 & 0xC000000000000001) != 0)
  {

    v13 = MEMORY[0x23188EAC0](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_67;
    }

    v13 = *(v11 + 32);
  }

  v14 = sub_22B36081C();
  v15 = sub_22B36081C();
  [v13 v12[364]];

LABEL_7:
  a3 = *v10;
  if (*v10 >> 62)
  {
    if (!sub_22B36109C())
    {
      goto LABEL_13;
    }
  }

  else if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

  if ((a3 & 0xC000000000000001) != 0)
  {

    v16 = MEMORY[0x23188EAC0](0, a3);
  }

  else
  {
    if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_69;
    }

    v16 = *(a3 + 32);
  }

  v17 = sub_22B360ABC();
  v18 = sub_22B36081C();
  [v16 v12[364]];

LABEL_13:
  a3 = *v10;
  if (!(*v10 >> 62))
  {
    if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_15:
    if ((a3 & 0xC000000000000001) == 0)
    {
      if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_71;
      }

      v19 = *(a3 + 32);
      goto LABEL_18;
    }

LABEL_67:

    v19 = MEMORY[0x23188EAC0](0, a3);

LABEL_18:
    v20 = sub_22B360ABC();
    v21 = sub_22B36081C();
    [v19 v12[364]];

    goto LABEL_19;
  }

  if (sub_22B36109C())
  {
    goto LABEL_15;
  }

LABEL_19:
  a5 = *v10;
  if (!(*v10 >> 62))
  {
    if (!*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

LABEL_21:
    if ((a5 & 0xC000000000000001) == 0)
    {
      if (!*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_73;
      }

      v22 = *(a5 + 32);
      goto LABEL_24;
    }

LABEL_69:

    v22 = MEMORY[0x23188EAC0](0, a5);

LABEL_24:
    v23 = sub_22B360ABC();
    v24 = sub_22B36081C();
    [v22 v12[364]];

    goto LABEL_25;
  }

  if (sub_22B36109C())
  {
    goto LABEL_21;
  }

LABEL_25:
  a6 = *v10;
  if (!(*v10 >> 62))
  {
    v11 = &off_2786FB000;
    if (!*((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

LABEL_27:
    if ((a6 & 0xC000000000000001) == 0)
    {
      if (!*((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_75;
      }

      v25 = *(a6 + 32);
      goto LABEL_30;
    }

LABEL_71:

    v25 = MEMORY[0x23188EAC0](0, a6);

LABEL_30:
    v26 = sub_22B36081C();
    v27 = sub_22B36081C();
    [v25 *(v11 + 3704)];

    goto LABEL_31;
  }

  v11 = 0x2786FB000;
  if (sub_22B36109C())
  {
    goto LABEL_27;
  }

LABEL_31:
  a6 = *v10;
  if (!(*v10 >> 62))
  {
    if (!*((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

LABEL_33:
    if ((a6 & 0xC000000000000001) == 0)
    {
      if (!*((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_78;
      }

      v28 = *(a6 + 32);
      goto LABEL_36;
    }

LABEL_73:

    v28 = MEMORY[0x23188EAC0](0, a6);

LABEL_36:
    v29 = sub_22B36081C();
    v30 = sub_22B36081C();
    [v28 *(v11 + 3704)];

    goto LABEL_37;
  }

  if (sub_22B36109C())
  {
    goto LABEL_33;
  }

LABEL_37:
  if (!*(a4 + 40))
  {
    goto LABEL_44;
  }

  a3 = *v10;
  if (*v10 >> 62)
  {
LABEL_75:
    result = sub_22B36109C();
    if (!result)
    {
      goto LABEL_44;
    }

    goto LABEL_40;
  }

  result = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_44;
  }

LABEL_40:
  if ((a3 & 0xC000000000000001) != 0)
  {

    v32 = MEMORY[0x23188EAC0](0, a3);
  }

  else
  {
    if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_83;
    }

    v32 = *(a3 + 32);
  }

  v33 = sub_22B36081C();
  v34 = sub_22B36081C();
  [v32 v12[364]];

LABEL_44:
  if (!*(a4 + 56))
  {
    return sub_22B2A534C(2);
  }

  v10 = *v10;
  if (v10 >> 62)
  {
LABEL_78:
    result = sub_22B36109C();
    if (!result)
    {
      return sub_22B2A534C(2);
    }

    goto LABEL_47;
  }

  result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    return sub_22B2A534C(2);
  }

LABEL_47:
  if ((v10 & 0xC000000000000001) != 0)
  {

    v35 = MEMORY[0x23188EAC0](0, v10);

    goto LABEL_50;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v35 = *(v10 + 32);
LABEL_50:
    v36 = sub_22B36081C();
    v37 = sub_22B36081C();
    [v35 *(v11 + 3704)];

    return sub_22B2A534C(2);
  }

LABEL_83:
  __break(1u);
  return result;
}

uint64_t sub_22B17A754(char *a1, uint64_t a2, char *a3, char *a4, char *a5)
{
  v86 = a5;
  v10 = sub_22B36052C();
  v78 = *(v10 - 8);
  v79 = v10;
  MEMORY[0x28223BE20](v10);
  v77 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E8, &unk_22B364790);
  MEMORY[0x28223BE20](v12 - 8);
  v82 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v75 - v15;
  v17 = sub_22B35DE9C();
  v80 = *(v17 - 8);
  v81 = v17;
  MEMORY[0x28223BE20](v17);
  v76 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v75 = &v75 - v21;
  v22 = *(a1 + 6);
  v23 = *(a1 + 7);
  v84 = v22;
  v85 = a2;
  v83 = v23;
  if (v23)
  {
    v24 = MEMORY[0x23188EEB0](v20);
    sub_22B17D438(a3, a4, v22, v23, a2, aBlock);
    if (!v5)
    {
      goto LABEL_3;
    }

LABEL_14:
    objc_autoreleasePoolPop(v24);
    __break(1u);
  }

  v24 = MEMORY[0x23188EEB0](v20);
  sub_22B17CAE8(a3, a4, 1, a2, aBlock);
  if (v5)
  {
    goto LABEL_14;
  }

LABEL_3:
  v25 = v5;
  objc_autoreleasePoolPop(v24);
  v26 = aBlock[0];
  v88 = aBlock[0];
  if (aBlock[0] >> 62)
  {
    if (!sub_22B36109C())
    {
      goto LABEL_19;
    }

    if (sub_22B36109C())
    {
      goto LABEL_5;
    }
  }

  if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    if ((v26 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x23188EAC0](0, v26);
LABEL_8:
      v28 = v27;
      v29 = [v27 managedObjectContext];

      if (v29)
      {
        MEMORY[0x28223BE20](v30);
        *(&v75 - 6) = &v88;
        *(&v75 - 5) = a3;
        *(&v75 - 4) = a4;
        *(&v75 - 3) = a1;
        *(&v75 - 2) = v86;
        *(&v75 - 1) = v29;
        sub_22B360E7C();
      }
    }

    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v27 = *(v26 + 32);
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_19:
  v79 = v5;
  v39 = objc_opt_self();
  v40 = sub_22B36081C();
  v41 = [v39 insertNewObjectForEntityForName:v40 inManagedObjectContext:*(v85 + 48)];

  v42 = sub_22B36081C();
  v43 = sub_22B36081C();
  [v41 setValue:v42 forKeyPath:v43];

  v44 = sub_22B360ABC();
  v45 = sub_22B36081C();
  [v41 setValue:v44 forKeyPath:v45];

  v46 = sub_22B360ABC();
  v47 = sub_22B36081C();
  [v41 setValue:v46 forKeyPath:v47];

  sub_22B180C14(v86, v16);
  v48 = sub_22B35D8BC();
  v49 = *(v48 - 8);
  v50 = *(v49 + 48);
  if (v50(v16, 1, v48) == 1)
  {
    sub_22B180D48(v16);
    v51 = 0;
  }

  else
  {
    v78 = v41;
    v52 = v75;
    sub_22B35D89C();
    (*(v49 + 8))(v16, v48);
    v53 = v81;
    v51 = sub_22B36133C();
    v54 = v52;
    v41 = v78;
    (*(v80 + 8))(v54, v53);
  }

  v55 = sub_22B36081C();
  [v41 setValue:v51 forKeyPath:v55];
  swift_unknownObjectRelease();

  v56 = v82;
  sub_22B180C14(v86, v82);
  if (v50(v56, 1, v48) == 1)
  {
    sub_22B180D48(v56);
    v57 = 0;
  }

  else
  {
    v58 = v76;
    sub_22B35D86C();
    (*(v49 + 8))(v56, v48);
    v59 = v81;
    v57 = sub_22B36133C();
    (*(v80 + 8))(v58, v59);
  }

  v60 = sub_22B36081C();
  [v41 setValue:v57 forKeyPath:v60];
  swift_unknownObjectRelease();

  v61 = sub_22B360ABC();
  v62 = sub_22B36081C();
  [v41 setValue:v61 forKeyPath:v62];

  v63 = sub_22B36081C();
  v64 = sub_22B36081C();
  [v41 setValue:v63 forKey:v64];

  v65 = sub_22B36081C();
  v66 = sub_22B36081C();
  [v41 setValue:v65 forKey:v66];

  if (*(a1 + 5))
  {
    v67 = sub_22B36081C();
    v68 = sub_22B36081C();
    [v41 setValue:v67 forKeyPath:v68];
  }

  if (v83)
  {
    v69 = sub_22B36081C();
    v70 = sub_22B36081C();
    [v41 setValue:v69 forKey:v70];
  }

  v71 = v85;
  v72 = *(v85 + 48);
  v73 = swift_allocObject();
  *(v73 + 16) = sub_22B12823C;
  *(v73 + 24) = v71;
  aBlock[4] = sub_22B128240;
  aBlock[5] = v73;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_39;
  v74 = _Block_copy(aBlock);
  v25 = v72;

  [v25 performBlockAndWait_];

  _Block_release(v74);
  LOBYTE(v74) = swift_isEscapingClosureAtFileLocation();

  if (v74)
  {
LABEL_33:
    __break(1u);
    swift_once();
    v31 = v79;
    v32 = __swift_project_value_buffer(v79, qword_28140BD10);
    swift_beginAccess();
    v34 = v77;
    v33 = v78;
    v78[2](v77, v32, v31);
    v35 = sub_22B36050C();
    v36 = sub_22B360D1C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_22B116000, v35, v36, "Error adding entry to notification cache.", v37, 2u);
      MEMORY[0x23188F650](v37, -1, -1);
    }

    return (v33[1])(v34, v31);
  }

  return result;
}

id sub_22B17B1B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v54 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E8, &unk_22B364790);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - v14;
  v16 = sub_22B35DE9C();
  v51 = *(v16 - 8);
  v52 = v16;
  MEMORY[0x28223BE20](v16);
  v50 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  v21 = *a1;
  if (*a1 >> 62)
  {
    if (!sub_22B36109C())
    {
      goto LABEL_7;
    }
  }

  else if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

  if ((v21 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x23188EAC0](0, v21);
  }

  else
  {
    if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_81;
    }

    v6 = *(v21 + 32);
  }

  v22 = sub_22B36081C();
  v23 = sub_22B36081C();
  [v6 setValue:v22 forKeyPath:v23];

LABEL_7:
  v24 = *a1;
  if (*a1 >> 62)
  {
    if (!sub_22B36109C())
    {
      goto LABEL_13;
    }
  }

  else if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

  if ((v24 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x23188EAC0](0, v24);
  }

  else
  {
    if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_83;
    }

    v6 = *(v24 + 32);
  }

  v24 = sub_22B360ABC();
  v25 = sub_22B36081C();
  [v6 setValue:v24 forKeyPath:v25];

LABEL_13:
  a2 = *a1;
  if (*a1 >> 62)
  {
    v26 = sub_22B36109C();
  }

  else
  {
    v26 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v26)
  {
    if ((a2 & 0xC000000000000001) == 0)
    {
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_85;
      }

      v24 = *(a2 + 32);
      goto LABEL_19;
    }

LABEL_81:

    v24 = MEMORY[0x23188EAC0](0, a2);

LABEL_19:
    sub_22B180C14(v54, v15);
    v6 = sub_22B35D8BC();
    v27 = *(v6 - 1);
    if ((*(v27 + 48))(v15, 1, v6) == 1)
    {
      sub_22B180D48(v15);
      v28 = 0;
    }

    else
    {
      sub_22B35D89C();
      (*(v27 + 8))(v15, v6);
      v6 = v52;
      v28 = sub_22B36133C();
      (*(v51 + 8))(v20, v6);
    }

    v20 = sub_22B36081C();
    [v24 setValue:v28 forKeyPath:v20];

    swift_unknownObjectRelease();
  }

  v15 = *a1;
  if (*a1 >> 62)
  {
    if (!sub_22B36109C())
    {
      goto LABEL_32;
    }
  }

  else if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_32;
  }

  if ((v15 & 0xC000000000000001) == 0)
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_87;
    }

    v29 = *(v15 + 32);
    goto LABEL_28;
  }

LABEL_83:

  v29 = MEMORY[0x23188EAC0](0, v15);

LABEL_28:
  sub_22B180C14(v54, v12);
  v30 = sub_22B35D8BC();
  v6 = *(v30 - 8);
  if ((v6[6])(v12, 1, v30) == 1)
  {
    sub_22B180D48(v12);
    v31 = 0;
  }

  else
  {
    v32 = v50;
    sub_22B35D86C();
    v33 = v6[1];
    ++v6;
    v33(v12, v30);
    v34 = v52;
    v31 = sub_22B36133C();
    (*(v51 + 8))(v32, v34);
  }

  v24 = sub_22B36081C();
  [v29 setValue:v31 forKeyPath:v24];

  swift_unknownObjectRelease();
LABEL_32:
  v20 = *a1;
  if (!(*a1 >> 62))
  {
    if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_38;
    }

LABEL_34:
    if ((v20 & 0xC000000000000001) == 0)
    {
      if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_89;
      }

      v35 = *(v20 + 32);
      goto LABEL_37;
    }

LABEL_85:

    v35 = MEMORY[0x23188EAC0](0, v20);

LABEL_37:
    v36 = sub_22B360ABC();
    v24 = sub_22B36081C();
    [v35 setValue:v36 forKeyPath:v24];

    goto LABEL_38;
  }

  if (sub_22B36109C())
  {
    goto LABEL_34;
  }

LABEL_38:
  v20 = *a1;
  if (!(*a1 >> 62))
  {
    v6 = &off_2786FB000;
    if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_44;
    }

LABEL_40:
    if ((v20 & 0xC000000000000001) == 0)
    {
      if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_91;
      }

      v37 = *(v20 + 32);
      goto LABEL_43;
    }

LABEL_87:

    v37 = MEMORY[0x23188EAC0](0, v20);

LABEL_43:
    v38 = sub_22B36081C();
    v24 = sub_22B36081C();
    [v37 v6[463]];

    goto LABEL_44;
  }

  v6 = &off_2786FB000;
  if (sub_22B36109C())
  {
    goto LABEL_40;
  }

LABEL_44:
  v20 = *a1;
  if (!(*a1 >> 62))
  {
    if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_50;
    }

LABEL_46:
    if ((v20 & 0xC000000000000001) == 0)
    {
      if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_94;
      }

      v39 = *(v20 + 32);
      goto LABEL_49;
    }

LABEL_89:

    v39 = MEMORY[0x23188EAC0](0, v20);

LABEL_49:
    v40 = sub_22B36081C();
    v41 = sub_22B36081C();
    [v39 v6[463]];

    goto LABEL_50;
  }

  if (sub_22B36109C())
  {
    goto LABEL_46;
  }

LABEL_50:
  if (!*(a4 + 40))
  {
    goto LABEL_57;
  }

  v24 = *a1;
  if (*a1 >> 62)
  {
LABEL_91:
    result = sub_22B36109C();
    if (!result)
    {
      goto LABEL_57;
    }

    goto LABEL_53;
  }

  result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_57;
  }

LABEL_53:
  if ((v24 & 0xC000000000000001) != 0)
  {

    v43 = MEMORY[0x23188EAC0](0, v24);
  }

  else
  {
    if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_99;
    }

    v43 = *(v24 + 32);
  }

  v44 = sub_22B36081C();
  v45 = sub_22B36081C();
  [v43 setValue:v44 forKeyPath:v45];

LABEL_57:
  if (!*(a4 + 56))
  {
    return sub_22B2A534C(2);
  }

  v24 = *a1;
  if (*a1 >> 62)
  {
LABEL_94:
    result = sub_22B36109C();
    if (!result)
    {
      return sub_22B2A534C(2);
    }

    goto LABEL_60;
  }

  result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    return sub_22B2A534C(2);
  }

LABEL_60:
  if ((v24 & 0xC000000000000001) != 0)
  {

    v46 = MEMORY[0x23188EAC0](0, v24);

    goto LABEL_63;
  }

  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v46 = *(v24 + 32);
LABEL_63:
    v47 = sub_22B36081C();
    v48 = sub_22B36081C();
    [v46 v6[463]];

    return sub_22B2A534C(2);
  }

LABEL_99:
  __break(1u);
  return result;
}

void sub_22B17BBA8(uint64_t a1@<X0>, uint64_t a2@<X1>, NSObject *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v46 = a6;
  v47 = a3;
  v10 = sub_22B36052C();
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x28223BE20](v10);
  v43 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v13 = sub_22B36081C();
  v14 = [v12 initWithEntityName_];

  [v14 setResultType:0];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22B3634C0;
  v16 = MEMORY[0x277D837D0];
  *(v15 + 56) = MEMORY[0x277D837D0];
  v17 = sub_22B1280E4();
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  *(v15 + 96) = v16;
  *(v15 + 104) = v17;
  v18 = v47;
  *(v15 + 64) = v17;
  *(v15 + 72) = v18;
  *(v15 + 80) = a4;

  v19 = sub_22B360CCC();
  [v14 setPredicate:v19];
  v20 = *(a5 + 48);
  sub_22B35EE2C();
  v21 = v20;
  v22 = v49;
  v23 = sub_22B360E9C();
  if (v22)
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v24 = v45;
    v25 = __swift_project_value_buffer(v45, qword_28140BD10);
    swift_beginAccess();
    v27 = v43;
    v26 = v44;
    (*(v44 + 16))(v43, v25, v24);
    v28 = sub_22B36050C();
    v29 = sub_22B360D1C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_22B116000, v28, v29, "Error deleting entry from notification cache.", v30, 2u);
      MEMORY[0x23188F650](v30, -1, -1);
      v31 = v19;
    }

    else
    {
      v31 = v28;
      v28 = v14;
      v14 = v19;
    }

    (*(v26 + 8))(v27, v24);
    v37 = 0;
    goto LABEL_18;
  }

  v32 = v23;
  v49 = 0;

  if (v32 >> 62)
  {
    v33 = sub_22B36109C();
    v47 = v14;
    if (!v33)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v47 = v14;
    if (!v33)
    {
      goto LABEL_17;
    }
  }

  if (v33 < 1)
  {
    goto LABEL_20;
  }

  for (i = 0; i != v33; ++i)
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      v35 = MEMORY[0x23188EAC0](i, v32);
    }

    else
    {
      v35 = *(v32 + 8 * i + 32);
    }

    v36 = v35;
    [*(a5 + 48) deleteObject_];
  }

LABEL_17:

  v38 = *(a5 + 48);
  v39 = swift_allocObject();
  *(v39 + 16) = sub_22B12823C;
  *(v39 + 24) = a5;
  aBlock[4] = sub_22B128240;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_21;
  v40 = _Block_copy(aBlock);
  v41 = v38;

  [v41 performBlockAndWait_];

  _Block_release(v40);
  v37 = 1;
  LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

  if ((v40 & 1) == 0)
  {
LABEL_18:
    *v46 = v37;
    return;
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_22B17C0D8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v36 = a4;
  v7 = sub_22B36052C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v12 = sub_22B36081C();
  v13 = [v11 initWithEntityName_];

  [v13 setResultType:0];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22B3634B0;
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = sub_22B1280E4();
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;

  v15 = sub_22B360CCC();
  [v13 setPredicate:v15];
  v16 = *(a3 + 48);
  sub_22B35EE2C();
  v17 = v16;
  v18 = v38;
  v19 = sub_22B360E9C();
  if (v18)
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v7, qword_28140BD10);
    swift_beginAccess();
    (*(v8 + 16))(v10, v20, v7);
    v21 = sub_22B36050C();
    v22 = sub_22B360D1C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_22B116000, v21, v22, "Error deleting entry from notification cache.", v23, 2u);
      MEMORY[0x23188F650](v23, -1, -1);
      v24 = v15;
    }

    else
    {
      v24 = v21;
      v21 = v13;
      v13 = v15;
    }

    (*(v8 + 8))(v10, v7);
    v30 = 0;
    goto LABEL_18;
  }

  v25 = v19;
  v38 = 0;

  if (v25 >> 62)
  {
    v26 = sub_22B36109C();
    if (!v26)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      goto LABEL_17;
    }
  }

  if (v26 < 1)
  {
    goto LABEL_20;
  }

  for (i = 0; i != v26; ++i)
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x23188EAC0](i, v25);
    }

    else
    {
      v28 = *(v25 + 8 * i + 32);
    }

    v29 = v28;
    [*(a3 + 48) deleteObject_];
  }

LABEL_17:

  v31 = *(a3 + 48);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_22B12823C;
  *(v32 + 24) = a3;
  aBlock[4] = sub_22B128240;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_13;
  v33 = _Block_copy(aBlock);
  v34 = v31;

  [v34 performBlockAndWait_];

  _Block_release(v33);
  v30 = 1;
  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  if ((v33 & 1) == 0)
  {
LABEL_18:
    *v36 = v30;
    return;
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_22B17C5E0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v36 = a4;
  v7 = sub_22B36052C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v12 = sub_22B36081C();
  v13 = [v11 initWithEntityName_];

  [v13 setResultType:0];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22B3634B0;
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = sub_22B1280E4();
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;

  v15 = sub_22B360CCC();
  [v13 setPredicate:v15];
  v16 = *(a3 + 48);
  sub_22B35EE2C();
  v17 = v16;
  v18 = v38;
  v19 = sub_22B360E9C();
  if (v18)
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v7, qword_28140BD10);
    swift_beginAccess();
    (*(v8 + 16))(v10, v20, v7);
    v21 = sub_22B36050C();
    v22 = sub_22B360D1C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_22B116000, v21, v22, "Error deleting entry from notification cache.", v23, 2u);
      MEMORY[0x23188F650](v23, -1, -1);
      v24 = v15;
    }

    else
    {
      v24 = v21;
      v21 = v13;
      v13 = v15;
    }

    (*(v8 + 8))(v10, v7);
    v30 = 0;
    goto LABEL_18;
  }

  v25 = v19;
  v38 = 0;

  if (v25 >> 62)
  {
    v26 = sub_22B36109C();
    if (!v26)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      goto LABEL_17;
    }
  }

  if (v26 < 1)
  {
    goto LABEL_20;
  }

  for (i = 0; i != v26; ++i)
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x23188EAC0](i, v25);
    }

    else
    {
      v28 = *(v25 + 8 * i + 32);
    }

    v29 = v28;
    [*(a3 + 48) deleteObject_];
  }

LABEL_17:

  v31 = *(a3 + 48);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_22B1281A4;
  *(v32 + 24) = a3;
  aBlock[4] = sub_22B12819C;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_5;
  v33 = _Block_copy(aBlock);
  v34 = v31;

  [v34 performBlockAndWait_];

  _Block_release(v33);
  v30 = 1;
  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  if ((v33 & 1) == 0)
  {
LABEL_18:
    *v36 = v30;
    return;
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_22B17CAE8(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v77 = a5;
  v85 = sub_22B36052C();
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v11 = v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = MEMORY[0x277D84F90];
  v12 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v13 = sub_22B36081C();
  v14 = [v12 initWithEntityName_];

  [v14 setResultType_];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22B3634B0;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_22B1280E4();
  v82 = a1;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;

  v76 = sub_22B360CCC();
  [v14 setPredicate_];
  v84 = a3;
  if (a3)
  {
    [v14 setFetchLimit_];
  }

  v16 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v17 = sub_22B36081C();
  v78 = v14;
  v18 = v17;
  v19 = [v16 initWithKey:v17 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22B363650;
  *(v20 + 32) = v19;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v21 = v19;
  v22 = sub_22B360A3C();
  v23 = v78;

  [v23 setSortDescriptors_];

  v24 = *(a4 + 48);
  sub_22B35EE2C();
  v25 = v24;
  v26 = sub_22B360E9C();
  if (v5)
  {

    v27 = v21;
    v28 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v29 = sub_22B36081C();
    v21 = [v28 initWithDomain:v29 code:1 userInfo:0];

    swift_willThrow();
    v30 = [objc_opt_self() processInfo];
    v31 = [v30 processName];

    v32 = sub_22B36084C();
    v34 = v33;

    LOWORD(v86[0]) = 513;
    BYTE2(v86[0]) = 10;
    v86[1] = v32;
    v86[2] = v34;
    v86[3] = 0;
    static AutoBugCaptureManager.sendIssue(_:)(v86);

    if (qword_28140A0C8 != -1)
    {
      goto LABEL_47;
    }

    goto LABEL_5;
  }

  v42 = v26;
  v75[1] = 0;

  v87 = MEMORY[0x277D84FA0];
  v88 = MEMORY[0x277D84FA0];
  if (v42 >> 62)
  {
    v43 = sub_22B36109C();
    if (v43)
    {
      goto LABEL_10;
    }

LABEL_49:

    v74 = MEMORY[0x277D84F90];
LABEL_50:

    *v77 = v74;
    return;
  }

  v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v43)
  {
    goto LABEL_49;
  }

LABEL_10:
  a2 = 0;
  v85 = v42 & 0xC000000000000001;
  v79 = v42 + 32;
  v80 = v42 & 0xFFFFFFFFFFFFFF8;
  v81 = MEMORY[0x277D84F90];
  v82 = v42;
  v83 = v21;
  while (1)
  {
    if (v85)
    {
      v44 = MEMORY[0x23188EAC0](a2, v42);
    }

    else
    {
      if (a2 >= *(v80 + 16))
      {
        goto LABEL_46;
      }

      v44 = *(v79 + 8 * a2);
    }

    v45 = v44;
    if (__OFADD__(a2++, 1))
    {
      break;
    }

    v47 = [v44 homeID];
    if (!v47)
    {
      v60 = v88;
      v61 = [v45 gridID];
      v11 = sub_22B36084C();
      v63 = v62;

      if (!*(v60 + 16) || (sub_22B36149C(), sub_22B3608FC(), v64 = sub_22B3614DC(), v65 = -1 << *(v60 + 32), v66 = v64 & ~v65, ((*(v60 + 56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0))
      {
LABEL_39:

        v70 = [v45 gridID];
        v71 = sub_22B36084C();
        v11 = v72;

        v58 = v71;
        v59 = v11;
        goto LABEL_40;
      }

      v67 = ~v65;
      while (1)
      {
        v68 = (*(v60 + 48) + 16 * v66);
        v69 = *v68 == v11 && v68[1] == v63;
        if (v69 || (sub_22B36134C() & 1) != 0)
        {
          goto LABEL_43;
        }

        v66 = (v66 + 1) & v67;
        if (((*(v60 + 56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
        {
          goto LABEL_39;
        }
      }
    }

    v48 = v47;
    v11 = sub_22B36084C();
    v50 = v49;

    if ((v84 & 1) == 0)
    {
      v51 = v87;
      if (!*(v87 + 16) || (sub_22B36149C(), sub_22B3608FC(), v52 = sub_22B3614DC(), v53 = -1 << *(v51 + 32), v54 = v52 & ~v53, ((*(v51 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0))
      {
LABEL_29:
        v58 = v11;
        v59 = v50;
LABEL_40:
        sub_22B32DF50(v86, v58, v59);

        v73 = v45;
        MEMORY[0x23188E350]();
        v42 = v82;
        v21 = v83;
        if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22B360A7C();
        }

        sub_22B360A9C();

        v81 = v89;
        goto LABEL_12;
      }

      v55 = ~v53;
      while (1)
      {
        v56 = (*(v51 + 48) + 16 * v54);
        v57 = *v56 == v11 && v56[1] == v50;
        if (v57 || (sub_22B36134C() & 1) != 0)
        {
          break;
        }

        v54 = (v54 + 1) & v55;
        if (((*(v51 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
        {
          goto LABEL_29;
        }
      }

LABEL_43:

      v42 = v82;
      v21 = v83;
      goto LABEL_12;
    }

LABEL_12:
    if (a2 == v43)
    {

      v74 = v81;
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  swift_once();
LABEL_5:
  v35 = v85;
  v36 = __swift_project_value_buffer(v85, qword_28140BD10);
  swift_beginAccess();
  v37 = v83;
  v83[2](v11, v36, v35);

  v38 = sub_22B36050C();
  v39 = sub_22B360D1C();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v88 = v41;
    *v40 = 136380675;
    *(v40 + 4) = sub_22B1A7B20(v82, a2, &v88);
    _os_log_impl(&dword_22B116000, v38, v39, "Failed to fetch notification cache entry for %{private}s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x23188F650](v41, -1, -1);
    MEMORY[0x23188F650](v40, -1, -1);
  }

  (v37[1])(v11, v35);
  *v77 = MEMORY[0x277D84F90];
}

void sub_22B17D438(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v48 = a5;
  v50 = a6;
  v10 = sub_22B36052C();
  v46 = *(v10 - 8);
  v47 = v10;
  MEMORY[0x28223BE20](v10);
  v45 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v13 = sub_22B36081C();
  v14 = [v12 initWithEntityName_];

  [v14 setResultType_];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22B3634C0;
  v16 = MEMORY[0x277D837D0];
  *(v15 + 56) = MEMORY[0x277D837D0];
  v17 = sub_22B1280E4();
  v44 = a1;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  *(v15 + 96) = v16;
  *(v15 + 104) = v17;
  *(v15 + 64) = v17;
  *(v15 + 72) = a3;
  *(v15 + 80) = a4;

  v18 = sub_22B360CCC();
  [v14 setPredicate_];
  [v14 setFetchLimit_];
  v19 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v20 = sub_22B36081C();
  v21 = [v19 initWithKey:v20 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_22B363650;
  *(v22 + 32) = v21;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v23 = v21;
  v24 = sub_22B360A3C();

  [v14 setSortDescriptors_];

  v25 = *(v48 + 48);
  sub_22B35EE2C();
  v26 = v25;
  v27 = v49;
  v28 = sub_22B360E9C();
  if (v27)
  {

    v29 = [objc_opt_self() processInfo];
    v30 = [v29 processName];

    v31 = sub_22B36084C();
    v33 = v32;

    v51 = 513;
    v52 = 10;
    v53 = v31;
    v54 = v33;
    v55 = 0;
    static AutoBugCaptureManager.sendIssue(_:)(&v51);

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v34 = v47;
    v35 = __swift_project_value_buffer(v47, qword_28140BD10);
    swift_beginAccess();
    v37 = v45;
    v36 = v46;
    (*(v46 + 16))(v45, v35, v34);

    v38 = sub_22B36050C();
    v39 = sub_22B360D1C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v56 = v41;
      *v40 = 136380675;
      *(v40 + 4) = sub_22B1A7B20(v44, a2, &v56);
      _os_log_impl(&dword_22B116000, v38, v39, "Failed to fetch notification cache entry for %{private}s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x23188F650](v41, -1, -1);
      MEMORY[0x23188F650](v40, -1, -1);
    }

    (*(v36 + 8))(v37, v34);
    v42 = MEMORY[0x277D84F90];
  }

  else
  {
    v42 = v28;
  }

  *v50 = v42;
}

void sub_22B17D978(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_22B36052C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v10 = sub_22B36081C();
  v11 = [v9 initWithEntityName_];

  [v11 setResultType_];
  v12 = *(a1 + 48);
  sub_22B35EE2C();
  v13 = v12;
  v14 = sub_22B360E9C();
  if (v2)
  {

    v15 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v16 = sub_22B36081C();
    v17 = [v15 initWithDomain:v16 code:1 userInfo:0];

    swift_willThrow();
    v18 = [objc_opt_self() processInfo];
    v19 = [v18 processName];

    v20 = sub_22B36084C();
    v22 = v21;

    v28 = 513;
    v29 = 10;
    v30 = v20;
    v31 = v22;
    v32 = 0;
    static AutoBugCaptureManager.sendIssue(_:)(&v28);

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v5, qword_28140BD10);
    swift_beginAccess();
    (*(v6 + 16))(v8, v23, v5);
    v24 = sub_22B36050C();
    v25 = sub_22B360D1C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22B116000, v24, v25, "Failed to fetch cache entries", v26, 2u);
      MEMORY[0x23188F650](v26, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    v27 = MEMORY[0x277D84F90];
  }

  else
  {
    v27 = v14;
  }

  *a2 = v27;
}

uint64_t sub_22B17DCE8()
{
  type metadata accessor for EnergyWindowNotificationsManager();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  if (qword_28140AD60 != -1)
  {
    swift_once();
  }

  *(v0 + 112) = sub_22B33AD90(0xD000000000000010, 0x800000022B368B50, 0x6361436C61636F4CLL, 0xEA00000000006568);

  qword_28140BDB8 = v0;
  return result;
}

uint64_t sub_22B17DDA4(uint64_t a1, unint64_t a2, char a3, char a4, __int128 *a5)
{
  v6 = v5;
  v38 = a1;
  v11 = sub_22B36052C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a5[3];
  v43 = a5[2];
  v44 = v15;
  v45 = *(a5 + 64);
  v16 = a5[1];
  v41 = *a5;
  v42 = v16;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v11, qword_28140BD10);
  swift_beginAccess();
  (*(v12 + 16))(v14, v17, v11);

  v18 = sub_22B36050C();
  v19 = sub_22B360D2C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37 = v6;
    v21 = a3;
    v22 = v20;
    v23 = a4;
    v24 = swift_slowAlloc();
    v39[0] = v24;
    *v22 = 136380675;
    *(v22 + 4) = sub_22B1A7B20(v38, a2, v39);
    _os_log_impl(&dword_22B116000, v18, v19, "Add notification to track for %{private}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v25 = v24;
    a4 = v23;
    MEMORY[0x23188F650](v25, -1, -1);
    v26 = v22;
    a3 = v21;
    v6 = v37;
    MEMORY[0x23188F650](v26, -1, -1);
  }

  result = (*(v12 + 8))(v14, v11);
  v28 = *(v6 + 112);
  if (v28)
  {
    v29 = *(v28 + 48);
    v30 = swift_allocObject();
    v31 = v38;
    *(v30 + 16) = v28;
    *(v30 + 24) = v31;
    *(v30 + 32) = a2;
    *(v30 + 40) = a3 & 1;
    *(v30 + 41) = a4 & 1;
    v32 = v44;
    *(v30 + 80) = v43;
    *(v30 + 96) = v32;
    *(v30 + 112) = v45;
    v33 = v42;
    *(v30 + 48) = v41;
    *(v30 + 64) = v33;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_22B180DB0;
    *(v34 + 24) = v30;
    aBlock[4] = sub_22B128240;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B32556C;
    aBlock[3] = &block_descriptor_49;
    v35 = _Block_copy(aBlock);
    swift_retain_n();

    v36 = v29;
    sub_22B1723A4(&v41, v39);

    [v36 performBlockAndWait_];

    _Block_release(v35);
    LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

    if (v36)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_22B17E198(uint64_t a1, uint64_t a2, unint64_t a3, int a4, int a5, void *a6)
{
  v12 = MEMORY[0x23188EEB0]();
  sub_22B17996C(a6, a1, a2, a3, a4, a5);
  objc_autoreleasePoolPop(v12);
  v13 = *(a1 + 48);

  return [v13 refreshAllObjects];
}

uint64_t sub_22B17E238(uint64_t a1, unint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = v4;
  v46 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E8, &unk_22B364790);
  v43 = *(v9 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v41 - v10;
  v12 = sub_22B36052C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a4[3];
  v51 = a4[2];
  v52 = v16;
  v53 = *(a4 + 64);
  v17 = a4[1];
  v49 = *a4;
  v50 = v17;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v12, qword_28140BD10);
  swift_beginAccess();
  (*(v13 + 16))(v15, v18, v12);

  v19 = sub_22B36050C();
  v20 = sub_22B360D2C();

  v21 = os_log_type_enabled(v19, v20);
  v45 = a2;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v42 = v5;
    v24 = v11;
    v25 = a3;
    v26 = v23;
    v47[0] = v23;
    *v22 = 136380675;
    *(v22 + 4) = sub_22B1A7B20(v46, a2, v47);
    _os_log_impl(&dword_22B116000, v19, v20, "Add notification to track for %{private}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    v27 = v26;
    a3 = v25;
    v11 = v24;
    v5 = v42;
    MEMORY[0x23188F650](v27, -1, -1);
    MEMORY[0x23188F650](v22, -1, -1);
  }

  result = (*(v13 + 8))(v15, v12);
  v29 = *(v5 + 112);
  if (v29)
  {
    v30 = *(v29 + 48);
    sub_22B180C14(a3, v11);
    v31 = (*(v43 + 80) + 40) & ~*(v43 + 80);
    v32 = (v44 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    v34 = v46;
    v33[2] = v29;
    v33[3] = v34;
    v33[4] = v45;
    sub_22B170CD0(v11, v33 + v31, &qword_27D8BA3E8, &unk_22B364790);
    v35 = v33 + v32;
    v36 = v52;
    *(v35 + 2) = v51;
    *(v35 + 3) = v36;
    v35[64] = v53;
    v37 = v50;
    *v35 = v49;
    *(v35 + 1) = v37;
    v38 = swift_allocObject();
    *(v38 + 16) = sub_22B180C84;
    *(v38 + 24) = v33;
    aBlock[4] = sub_22B128240;
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B32556C;
    aBlock[3] = &block_descriptor_31;
    v39 = _Block_copy(aBlock);
    swift_retain_n();

    v40 = v30;
    sub_22B1723A4(&v49, v47);

    [v40 performBlockAndWait_];

    _Block_release(v39);
    LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

    if (v40)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_22B17E700(uint64_t a1, char *a2, char *a3, char *a4, char *a5)
{
  v10 = MEMORY[0x23188EEB0]();
  sub_22B17A754(a5, a1, a2, a3, a4);
  objc_autoreleasePoolPop(v10);
  v11 = *(a1 + 48);

  return [v11 refreshAllObjects];
}

uint64_t sub_22B17E790(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v29 = a3;
  v9 = sub_22B36052C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v9, qword_28140BD10);
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);

  v14 = sub_22B36050C();
  v15 = sub_22B360D2C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = a1;
    v17 = a2;
    v18 = v16;
    v19 = swift_slowAlloc();
    v30 = v19;
    *v18 = 136380675;
    *(v18 + 4) = sub_22B1A7B20(v29, a4, &v30);
    _os_log_impl(&dword_22B116000, v14, v15, "Delete notification tracking for %{private}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23188F650](v19, -1, -1);
    v20 = v18;
    a2 = v17;
    a1 = v28;
    MEMORY[0x23188F650](v20, -1, -1);
  }

  v21 = (*(v10 + 8))(v12, v9);
  v22 = *(v5 + 112);
  if (!v22)
  {
    return 0;
  }

  v23 = *(v22 + 48);
  MEMORY[0x28223BE20](v21);
  *(&v27 - 6) = v22;
  *(&v27 - 5) = a1;
  v24 = v29;
  *(&v27 - 4) = a2;
  *(&v27 - 3) = v24;
  *(&v27 - 2) = a4;

  v25 = v23;
  sub_22B360E7C();

  return v30;
}

void sub_22B17EA5C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, NSObject *a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v13 = MEMORY[0x23188EEB0]();
  sub_22B17BBA8(a2, a3, a4, a5, a1, &v15);
  objc_autoreleasePoolPop(v13);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v14 = v15;
    [*(a1 + 48) refreshAllObjects];
    *a6 = v14;
  }
}

uint64_t sub_22B17EB44(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v6 = sub_22B36052C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_28140BD10);
  swift_beginAccess();
  (*(v7 + 16))(v9, v10, v6);

  v11 = sub_22B36050C();
  v12 = sub_22B360D2C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136380675;
    *(v13 + 4) = sub_22B1A7B20(v21, a2, &v22);
    _os_log_impl(&dword_22B116000, v11, v12, "Delete notification tracking for %{private}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);
  }

  v15 = (*(v7 + 8))(v9, v6);
  v16 = *(v4 + 112);
  if (!v16)
  {
    return 0;
  }

  v17 = *(v16 + 48);
  MEMORY[0x28223BE20](v15);
  v18 = v21;
  *(&v21 - 4) = v16;
  *(&v21 - 3) = v18;
  *(&v21 - 2) = a2;

  v19 = v17;
  sub_22B360E7C();

  return v22;
}

void sub_22B17EDF0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t)@<X3>, _BYTE *a5@<X8>)
{
  v11 = MEMORY[0x23188EEB0]();
  a4(&v13, a2, a3, a1);
  objc_autoreleasePoolPop(v11);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v12 = v13;
    [*(a1 + 48) refreshAllObjects];
    *a5 = v12;
  }
}

uint64_t sub_22B17EE98()
{
  v0 = type metadata accessor for CDEnergyWindowNotifications(0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_22B36052C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v35 - v9;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  v12 = *(v5 + 16);
  v40 = v5 + 16;
  v41 = v11;
  v39 = v12;
  v12(v10, v11, v4);
  v13 = sub_22B36050C();
  v14 = sub_22B360D2C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_22B116000, v13, v14, "Delete all notification tracking", v15, 2u);
    MEMORY[0x23188F650](v15, -1, -1);
  }

  v16 = *(v5 + 8);
  v42 = v5 + 8;
  v38 = v16;
  v16(v10, v4);
  v17 = sub_22B1802B0();
  v19 = *(v17 + 16);
  if (v19)
  {
    v20 = *(v1 + 80);
    v35[1] = v17;
    v21 = v17 + ((v20 + 32) & ~v20);
    v37 = *(v1 + 72);
    *&v18 = 136380675;
    v36 = v18;
    v44 = v7;
    v45 = v4;
    do
    {
      sub_22B180AC8(v21, v3);
      v23 = *v3;
      v22 = v3[1];

      sub_22B180B2C(v3);
      v39(v7, v41, v4);

      v24 = sub_22B36050C();
      v25 = sub_22B360D2C();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v46 = v27;
        *v26 = v36;
        *(v26 + 4) = sub_22B1A7B20(v23, v22, &v46);
        _os_log_impl(&dword_22B116000, v24, v25, "Delete notification tracking for %{private}s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        v28 = v27;
        v4 = v45;
        MEMORY[0x23188F650](v28, -1, -1);
        v29 = v26;
        v7 = v44;
        MEMORY[0x23188F650](v29, -1, -1);
      }

      v30 = v38(v7, v4);
      v31 = *(v43 + 112);
      if (v31)
      {
        v32 = *(v31 + 48);
        MEMORY[0x28223BE20](v30);
        v35[-4] = v31;
        v35[-3] = v23;
        v35[-2] = v22;

        v33 = v32;
        sub_22B360E7C();

        v4 = v45;

        v7 = v44;
      }

      else
      {
      }

      v21 += v37;
      --v19;
    }

    while (v19);
  }
}

void *sub_22B17F314(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_22B36052C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_28140BD10);
  swift_beginAccess();
  (*(v7 + 16))(v9, v10, v6);

  v11 = sub_22B36050C();
  v12 = sub_22B360D2C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136380675;
    *(v13 + 4) = sub_22B1A7B20(a1, a2, &v21);
    _os_log_impl(&dword_22B116000, v11, v12, "Get all notifications tracking for %{private}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);
  }

  v15 = (*(v7 + 8))(v9, v6);
  v16 = *(v3 + 112);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v17 = *(v16 + 48);
  MEMORY[0x28223BE20](v15);
  *&v20[-32] = v16;
  *&v20[-24] = a1;
  *&v20[-16] = a2;

  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E0, &unk_22B364780);
  sub_22B360E7C();

  return v21;
}

void sub_22B17F5D4(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v43 = a4;
  v8 = sub_22B36052C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v44 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for CDEnergyWindowNotifications(0);
  v11 = *(v36 - 8);
  v12 = MEMORY[0x28223BE20](v36);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x23188EEB0](v12);
  v38 = a1;
  v39 = a3;
  sub_22B17CAE8(a2, a3, 0, a1, v47);
  if (v4)
  {
    objc_autoreleasePoolPop(v15);
    __break(1u);
  }

  else
  {
    v16 = 0;
    objc_autoreleasePoolPop(v15);
    v17 = v47[0];
    if (v47[0] >> 62)
    {
      goto LABEL_27;
    }

    v18 = *((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v37 = a2;
    v40 = v16;
    v41 = v9;
    v42 = v8;
    if (v18)
    {
      v16 = 0;
      v45 = v17 & 0xFFFFFFFFFFFFFF8;
      v46 = v17 & 0xC000000000000001;
      v19 = MEMORY[0x277D84F90];
      a2 = v17;
      v8 = v18;
      while (1)
      {
        if (v46)
        {
          v17 = MEMORY[0x23188EAC0](v16, v17);
          v9 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v16 >= *(v45 + 16))
          {
            goto LABEL_26;
          }

          v17 = *(v17 + 8 * v16 + 32);
          v9 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            v35 = v17;
            v18 = sub_22B36109C();
            v17 = v35;
            goto LABEL_4;
          }
        }

        sub_22B1795F8(v17, v14);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_22B32D534(0, v19[2] + 1, 1, v19);
        }

        v21 = v19[2];
        v20 = v19[3];
        if (v21 >= v20 >> 1)
        {
          v19 = sub_22B32D534((v20 > 1), v21 + 1, 1, v19);
        }

        v19[2] = v21 + 1;
        sub_22B180A20(v14, v19 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v21);
        ++v16;
        v17 = a2;
        if (v9 == v8)
        {
          goto LABEL_19;
        }
      }
    }

    v19 = MEMORY[0x277D84F90];
LABEL_19:

    [*(v38 + 48) refreshAllObjects];
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v22 = v42;
    v23 = __swift_project_value_buffer(v42, qword_28140BD10);
    swift_beginAccess();
    v24 = v41;
    v25 = v44;
    (*(v41 + 16))(v44, v23, v22);
    v26 = v39;

    v27 = sub_22B36050C();
    v28 = sub_22B360D2C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = v26;
      v31 = swift_slowAlloc();
      v48 = v31;
      *v29 = 136315651;
      *(v29 + 4) = sub_22B1A7B20(0xD000000000000020, 0x800000022B36B0C0, &v48);
      *(v29 + 12) = 2081;
      *(v29 + 14) = sub_22B1A7B20(v37, v30, &v48);
      *(v29 + 22) = 2080;
      v32 = MEMORY[0x23188E390](v19, v36);
      v34 = sub_22B1A7B20(v32, v33, &v48);

      *(v29 + 24) = v34;
      _os_log_impl(&dword_22B116000, v27, v28, "%s %{private}s res: %s", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v31, -1, -1);
      MEMORY[0x23188F650](v29, -1, -1);

      (*(v24 + 8))(v44, v22);
    }

    else
    {

      (*(v24 + 8))(v25, v22);
    }

    *v43 = v19;
  }
}

void *sub_22B17FAD0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = a1;
  v9 = sub_22B36052C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v9, qword_28140BD10);
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);

  v14 = sub_22B36050C();
  v15 = sub_22B360D2C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = a3;
    v17 = a4;
    v18 = v16;
    v19 = swift_slowAlloc();
    v30 = v19;
    *v18 = 136380675;
    *(v18 + 4) = sub_22B1A7B20(v29, a2, &v30);
    _os_log_impl(&dword_22B116000, v14, v15, "Get all notifications tracking for %{private}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23188F650](v19, -1, -1);
    v20 = v18;
    a4 = v17;
    a3 = v28;
    MEMORY[0x23188F650](v20, -1, -1);
  }

  v21 = (*(v10 + 8))(v12, v9);
  v22 = *(v5 + 112);
  if (!v22)
  {
    return MEMORY[0x277D84F90];
  }

  v23 = *(v22 + 48);
  MEMORY[0x28223BE20](v21);
  v24 = v29;
  *(&v27 - 6) = v22;
  *(&v27 - 5) = v24;
  *(&v27 - 4) = a2;
  *(&v27 - 3) = a3;
  *(&v27 - 2) = a4;

  v25 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E0, &unk_22B364780);
  sub_22B360E7C();

  return v30;
}

void sub_22B17FDAC(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v47 = a6;
  v11 = sub_22B36052C();
  v45 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v48 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for CDEnergyWindowNotifications(0);
  v13 = *(v40 - 8);
  v14 = MEMORY[0x28223BE20](v40);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x23188EEB0](v14);
  v41 = a2;
  v42 = a1;
  v43 = a3;
  v18 = v50;
  sub_22B17D438(a2, a3, a4, a5, a1, v51);
  if (v18)
  {
    objc_autoreleasePoolPop(v17);
    __break(1u);
  }

  else
  {
    v19 = 0;
    objc_autoreleasePoolPop(v17);
    v20 = v51[0];
    if (v51[0] >> 62)
    {
      goto LABEL_27;
    }

    v21 = *((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v44 = v19;
    v46 = v11;
    if (v21)
    {
      v19 = 0;
      v49 = v20 & 0xFFFFFFFFFFFFFF8;
      v50 = v20 & 0xC000000000000001;
      v11 = MEMORY[0x277D84F90];
      v22 = v20;
      while (1)
      {
        if (v50)
        {
          v20 = MEMORY[0x23188EAC0](v19, v20);
          v23 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v19 >= *(v49 + 16))
          {
            goto LABEL_26;
          }

          v20 = *(v20 + 8 * v19 + 32);
          v23 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            v39 = v20;
            v21 = sub_22B36109C();
            v20 = v39;
            goto LABEL_4;
          }
        }

        sub_22B1795F8(v20, v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_22B32D534(0, v11[2] + 1, 1, v11);
        }

        v25 = v11[2];
        v24 = v11[3];
        if (v25 >= v24 >> 1)
        {
          v11 = sub_22B32D534((v24 > 1), v25 + 1, 1, v11);
        }

        v11[2] = v25 + 1;
        sub_22B180A20(v16, v11 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v25);
        ++v19;
        v20 = v22;
        if (v23 == v21)
        {
          goto LABEL_19;
        }
      }
    }

    v11 = MEMORY[0x277D84F90];
LABEL_19:

    [*(v42 + 48) refreshAllObjects];
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v26 = v46;
    v27 = __swift_project_value_buffer(v46, qword_28140BD10);
    swift_beginAccess();
    v28 = v45;
    v29 = v48;
    (*(v45 + 16))(v48, v27, v26);
    v30 = v43;

    v31 = sub_22B36050C();
    v32 = sub_22B360D2C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = v30;
      v35 = swift_slowAlloc();
      v52 = v35;
      *v33 = 136315651;
      *(v33 + 4) = sub_22B1A7B20(0xD000000000000027, 0x800000022B36B070, &v52);
      *(v33 + 12) = 2081;
      *(v33 + 14) = sub_22B1A7B20(v41, v34, &v52);
      *(v33 + 22) = 2080;
      v36 = MEMORY[0x23188E390](v11, v40);
      v38 = sub_22B1A7B20(v36, v37, &v52);

      *(v33 + 24) = v38;
      _os_log_impl(&dword_22B116000, v31, v32, "%s %{private}s res: %s", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v35, -1, -1);
      MEMORY[0x23188F650](v33, -1, -1);

      (*(v28 + 8))(v48, v26);
    }

    else
    {

      (*(v28 + 8))(v29, v26);
    }

    *v47 = v11;
  }
}

uint64_t sub_22B1802B0()
{
  v1 = v0;
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_22B36050C();
  v8 = sub_22B360D2C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22B116000, v7, v8, "Get all notifications tracking", v9, 2u);
    MEMORY[0x23188F650](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = *(v1 + 112);
  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

  v11 = *(v10 + 48);

  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E0, &unk_22B364780);
  sub_22B360E7C();

  return v14[2];
}

void sub_22B1804D4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v34 = sub_22B36052C();
  v5 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for CDEnergyWindowNotifications(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x23188EEB0](v10);
  sub_22B17D978(a1, v39);
  if (v2)
  {
    objc_autoreleasePoolPop(v13);
    __break(1u);
  }

  else
  {
    v14 = 0;
    objc_autoreleasePoolPop(v13);
    v15 = v39[0];
    if (v39[0] >> 62)
    {
      goto LABEL_27;
    }

    v16 = *((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v30 = v8;
    v31 = a1;
    v32 = v14;
    v33 = v5;
    v35 = a2;
    v36 = v7;
    if (v16)
    {
      v5 = 0;
      v37 = v15 & 0xFFFFFFFFFFFFFF8;
      v38 = v15 & 0xC000000000000001;
      v7 = MEMORY[0x277D84F90];
      a1 = v15;
      a2 = v16;
      while (1)
      {
        if (v38)
        {
          v15 = MEMORY[0x23188EAC0](v5, v15);
          v14 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v5 >= *(v37 + 16))
          {
            goto LABEL_26;
          }

          v15 = *(v15 + 8 * v5 + 32);
          v14 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            v29 = v15;
            v16 = sub_22B36109C();
            v15 = v29;
            goto LABEL_4;
          }
        }

        sub_22B1795F8(v15, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_22B32D534(0, v7[2] + 1, 1, v7);
        }

        v8 = v7[2];
        v17 = v7[3];
        if (v8 >= v17 >> 1)
        {
          v7 = sub_22B32D534((v17 > 1), v8 + 1, 1, v7);
        }

        v7[2] = v8 + 1;
        sub_22B180A20(v12, v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
        ++v5;
        v15 = a1;
        if (v14 == a2)
        {
          goto LABEL_19;
        }
      }
    }

    v7 = MEMORY[0x277D84F90];
LABEL_19:

    [*(v31 + 48) refreshAllObjects];
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v18 = v34;
    v19 = __swift_project_value_buffer(v34, qword_28140BD10);
    swift_beginAccess();
    v20 = v33;
    v21 = v36;
    (*(v33 + 16))(v36, v19, v18);

    v22 = sub_22B36050C();
    v23 = sub_22B360D2C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v40 = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_22B1A7B20(0xD00000000000001DLL, 0x800000022B36B030, &v40);
      *(v24 + 12) = 2080;
      v26 = MEMORY[0x23188E390](v7, v30);
      v28 = sub_22B1A7B20(v26, v27, &v40);

      *(v24 + 14) = v28;
      _os_log_impl(&dword_22B116000, v22, v23, "%s res: %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v25, -1, -1);
      MEMORY[0x23188F650](v24, -1, -1);

      (*(v20 + 8))(v36, v18);
    }

    else
    {

      (*(v20 + 8))(v21, v18);
    }

    *v35 = v7;
  }
}

uint64_t type metadata accessor for CDEnergyWindowNotifications(uint64_t a1)
{
  result = qword_281408A00;
  if (!qword_281408A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B180A20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CDEnergyWindowNotifications(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B180AC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CDEnergyWindowNotifications(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B180B2C(uint64_t a1)
{
  v2 = type metadata accessor for CDEnergyWindowNotifications(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B180C14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E8, &unk_22B364790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_22B180C84()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E8, &unk_22B364790) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = &v0[(*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8];

  return sub_22B17E700(v3, v4, v5, &v0[v2], v6);
}

uint64_t sub_22B180D48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E8, &unk_22B364790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22B180E1C(uint64_t a1)
{
  sub_22B180EAC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_22B180EAC(uint64_t a1)
{
  if (!qword_2814091D8)
  {
    sub_22B35DE9C();
    v1 = sub_22B360FFC();
    if (!v2)
    {
      atomic_store(v1, &qword_2814091D8);
    }
  }
}

uint64_t sub_22B1810D0(uint64_t a1, const void *a2)
{
  v2[5] = a1;
  v4 = sub_22B35F6FC();
  v2[6] = v4;
  v2[7] = *(v4 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = _Block_copy(a2);

  return MEMORY[0x2822009F8](sub_22B1811A0, 0, 0);
}

uint64_t sub_22B1811A0()
{
  if (qword_27D8B9FF8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = __swift_project_value_buffer(v3, qword_27D8BB230);
  sub_22B35F6DC();
  swift_beginAccess();
  (*(v4 + 40))(v5, v1, v3);
  swift_endAccess();
  v2[2](v2);
  _Block_release(v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_22B181430(const void *a1)
{
  v3 = sub_22B35F6FC();
  v1[5] = v3;
  v1[6] = *(v3 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_22B1814FC, 0, 0);
}

uint64_t sub_22B1814FC()
{
  if (qword_27D8B9FF8 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = __swift_project_value_buffer(v3, qword_27D8BB230);
  swift_beginAccess();
  (*(v4 + 16))(v2, v5, v3);
  v6 = sub_22B35F6EC();
  (*(v4 + 8))(v2, v3);
  v1[2](v1, v6);
  _Block_release(v1);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22B181624()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B119A60;

  return sub_22B181430(v2);
}

uint64_t sub_22B1816D0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_22B124D88;

  return v6();
}

uint64_t sub_22B1817B8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_22B119A60;

  return v7();
}

uint64_t sub_22B1818A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_22B124BA8(a3, v23 - v10);
  v12 = sub_22B360B6C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_22B118DDC(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_22B360B5C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_22B360ACC();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_22B3608CC() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_22B118DDC(a3);

    return v21;
  }

LABEL_8:
  sub_22B118DDC(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_22B181B5C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B124D88;

  return sub_22B1243B8(a1, v4);
}

uint64_t sub_22B181C14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B119A60;

  return sub_22B1243B8(a1, v4);
}

uint64_t sub_22B181CCC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B124D88;

  return sub_22B1810D0(v2, v3);
}

void sub_22B181D80(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 timestamp];
  sub_22B35DE5C();

  v5 = [a1 homeIdentifier];
  Event = type metadata accessor for CDRawLoadEvent(0);
  sub_22B35DEFC();

  v7 = [a1 siteIdentifier];
  sub_22B35DEFC();

  v8 = [a1 sourceIdentifier];
  v9 = sub_22B36084C();
  v11 = v10;

  v12 = (a2 + Event[7]);
  *v12 = v9;
  v12[1] = v11;
  v13 = [a1 deviceIdentifier];
  v14 = sub_22B36084C();
  v16 = v15;

  v17 = (a2 + Event[8]);
  *v17 = v14;
  v17[1] = v16;
  v18 = [a1 loadEventType];
  v19 = sub_22B36084C();
  v21 = v20;

  v22 = (a2 + Event[9]);
  *v22 = v19;
  v22[1] = v21;
  v23 = [a1 loadState];
  v24 = sub_22B36084C();
  v26 = v25;

  v27 = (a2 + Event[10]);
  *v27 = v24;
  v27[1] = v26;
  *(a2 + Event[11]) = [a1 level];
  *(a2 + Event[12]) = [a1 version];
  v28 = [a1 sessionID];
  sub_22B35DEFC();

  v29 = [a1 sessionState];
  v30 = sub_22B36084C();
  v32 = v31;

  v33 = (a2 + Event[14]);
  *v33 = v30;
  v33[1] = v32;
  *(a2 + Event[15]) = [a1 guidanceFollowed];
  v34 = [a1 guidanceGridID];
  v35 = sub_22B36084C();
  v37 = v36;

  v38 = (a2 + Event[16]);
  *v38 = v35;
  v38[1] = v37;
  *(a2 + Event[17]) = [a1 consumptionEnergyMilliwattHours];
  *(a2 + Event[18]) = [a1 consumptionPowerMilliwatts];
  *(a2 + Event[19]) = [a1 productionEnergyMilliwattHours];
  *(a2 + Event[20]) = [a1 productionPowerMilliwatts];
  LOBYTE(v34) = [a1 hasEnergyData];

  *(a2 + Event[21]) = v34;
}

void sub_22B182084(uint64_t a1, void *a2)
{
  v3 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v4 = sub_22B36081C();
  v18 = [v3 initWithEntityName_];

  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22B3634B0;
  v6 = sub_22B35DDDC();
  *(v5 + 56) = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
  *(v5 + 64) = sub_22B176FAC(&qword_281408550, &qword_281408558, 0x277CBEAA8);
  *(v5 + 32) = v6;
  v7 = sub_22B360CCC();
  [v18 setPredicate_];

  [v18 setResultType_];
  [v18 setFetchBatchSize_];
  while (1)
  {
    [v18 setFetchOffset_];
    [v18 setFetchLimit_];
    sub_22B35F46C();
    v9 = sub_22B360E9C();
    v10 = v9;
    v11 = v9 >> 62;
    if (v9 >> 62)
    {
      break;
    }

    v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_15;
    }

LABEL_6:
    v13 = MEMORY[0x23188EEB0]();
    if (v12 < 1)
    {
      __break(1u);
      return;
    }

    v14 = v13;
    for (i = 0; i != v12; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x23188EAC0](i, v10);
      }

      else
      {
        v16 = *(v10 + 8 * i + 32);
      }

      v17 = v16;
      [a2 deleteObject_];
    }

    objc_autoreleasePoolPop(v14);
    sub_22B2A534C(2);
    if (v11)
    {
      v8 = sub_22B36109C();
    }

    else
    {
      v8 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    [a2 reset];
    if (v8 <= 99)
    {
      goto LABEL_16;
    }
  }

  v12 = sub_22B36109C();
  if (v12)
  {
    goto LABEL_6;
  }

LABEL_15:

LABEL_16:
}

void sub_22B182390(uint64_t a1, void *a2)
{
  v3 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v4 = sub_22B36081C();
  v5 = [v3 initWithEntityName_];

  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22B3634B0;
  v7 = sub_22B35DEDC();
  *(v6 + 56) = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
  *(v6 + 64) = sub_22B176FAC(&qword_281408540, &qword_281408548, 0x277CCAD78);
  *(v6 + 32) = v7;
  v18 = sub_22B360CCC();
  [v5 setResultType_];
  [v5 setFetchBatchSize_];
  v19 = v5;
  [v5 setPredicate_];
  while (1)
  {
    [v19 setFetchOffset_];
    [v19 setFetchLimit_];
    sub_22B35F46C();
    v9 = sub_22B360E9C();
    v10 = v9;
    v11 = v9 >> 62;
    if (v9 >> 62)
    {
      break;
    }

    v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_15;
    }

LABEL_6:
    v13 = MEMORY[0x23188EEB0]();
    if (v12 < 1)
    {
      __break(1u);
      return;
    }

    v14 = v13;
    for (i = 0; i != v12; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x23188EAC0](i, v10);
      }

      else
      {
        v16 = *(v10 + 8 * i + 32);
      }

      v17 = v16;
      [a2 deleteObject_];
    }

    objc_autoreleasePoolPop(v14);
    sub_22B2A534C(2);
    if (v11)
    {
      v8 = sub_22B36109C();
    }

    else
    {
      v8 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    [a2 reset];
    if (v8 <= 99)
    {
      goto LABEL_16;
    }
  }

  v12 = sub_22B36109C();
  if (v12)
  {
    goto LABEL_6;
  }

LABEL_15:

LABEL_16:
}

void sub_22B1826A0(uint64_t a1, void *a2)
{
  v3 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v4 = sub_22B36081C();
  v5 = [v3 initWithEntityName_];

  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22B3634B0;
  v7 = sub_22B35DEDC();
  *(v6 + 56) = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
  *(v6 + 64) = sub_22B176FAC(&qword_281408540, &qword_281408548, 0x277CCAD78);
  *(v6 + 32) = v7;
  v18 = sub_22B360CCC();
  [v5 setResultType_];
  [v5 setFetchBatchSize_];
  v19 = v5;
  [v5 setPredicate_];
  while (1)
  {
    [v19 setFetchOffset_];
    [v19 setFetchLimit_];
    sub_22B35F46C();
    v9 = sub_22B360E9C();
    v10 = v9;
    v11 = v9 >> 62;
    if (v9 >> 62)
    {
      break;
    }

    v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_15;
    }

LABEL_6:
    v13 = MEMORY[0x23188EEB0]();
    if (v12 < 1)
    {
      __break(1u);
      return;
    }

    v14 = v13;
    for (i = 0; i != v12; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x23188EAC0](i, v10);
      }

      else
      {
        v16 = *(v10 + 8 * i + 32);
      }

      v17 = v16;
      [a2 deleteObject_];
    }

    objc_autoreleasePoolPop(v14);
    sub_22B2A534C(2);
    if (v11)
    {
      v8 = sub_22B36109C();
    }

    else
    {
      v8 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    [a2 reset];
    if (v8 <= 99)
    {
      goto LABEL_16;
    }
  }

  v12 = sub_22B36109C();
  if (v12)
  {
    goto LABEL_6;
  }

LABEL_15:

LABEL_16:
}

void sub_22B1829B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v5 = sub_22B36081C();
  v6 = [v4 initWithEntityName_];

  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22B3634C0;
  v8 = sub_22B35DEDC();
  *(v7 + 56) = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
  *(v7 + 64) = sub_22B176FAC(&qword_281408540, &qword_281408548, 0x277CCAD78);
  *(v7 + 32) = v8;
  v9 = sub_22B35DDDC();
  *(v7 + 96) = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
  *(v7 + 104) = sub_22B176FAC(&qword_281408550, &qword_281408558, 0x277CBEAA8);
  *(v7 + 72) = v9;
  v20 = sub_22B360CCC();
  [v6 setResultType_];
  [v6 setFetchBatchSize_];
  [v6 setPredicate_];
  while (1)
  {
    [v6 setFetchOffset_];
    [v6 setFetchLimit_];
    sub_22B35F46C();
    v11 = sub_22B360E9C();
    v12 = v11;
    v13 = v11 >> 62;
    if (v11 >> 62)
    {
      break;
    }

    v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_15;
    }

LABEL_6:
    v15 = MEMORY[0x23188EEB0]();
    if (v14 < 1)
    {
      __break(1u);
      return;
    }

    v16 = v15;
    for (i = 0; i != v14; ++i)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x23188EAC0](i, v12);
      }

      else
      {
        v18 = *(v12 + 8 * i + 32);
      }

      v19 = v18;
      [a3 deleteObject_];
    }

    objc_autoreleasePoolPop(v16);
    sub_22B2A534C(2);
    if (v13)
    {
      v10 = sub_22B36109C();
    }

    else
    {
      v10 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    [a3 reset];
    if (v10 <= 99)
    {
      goto LABEL_16;
    }
  }

  v14 = sub_22B36109C();
  if (v14)
  {
    goto LABEL_6;
  }

LABEL_15:

LABEL_16:
}

id sub_22B182D10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = *(sub_22B35E9CC() - 8);
    v6 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    do
    {
      v8 = MEMORY[0x23188EEB0]();
      sub_22B182E1C(v6, a2);
      objc_autoreleasePoolPop(v8);
      v6 += v7;
      --v3;
    }

    while (v3);
  }

  return sub_22B2A534C(2);
}

void sub_22B182E1C(uint64_t a1, uint64_t a2)
{
  v179 = a2;
  v167 = sub_22B35E99C();
  v166 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v165 = &v152 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA450, &qword_22B364948);
  MEMORY[0x28223BE20](v4 - 8);
  v171 = &v152 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v173 = &v152 - v7;
  v8 = sub_22B35E9EC();
  v188 = *(v8 - 8);
  v189 = v8;
  MEMORY[0x28223BE20](v8);
  v187 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22B35E87C();
  v185 = *(v10 - 8);
  v186 = v10;
  MEMORY[0x28223BE20](v10);
  v184 = &v152 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22B35E85C();
  v182 = *(v12 - 8);
  v183 = v12;
  MEMORY[0x28223BE20](v12);
  v181 = &v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22B35DF1C();
  v15 = *(v14 - 8);
  v196 = v14;
  v197 = v15;
  MEMORY[0x28223BE20](v14);
  v195 = &v152 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_22B35DE9C();
  v177 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v176 = &v152 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_22B35E43C();
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v161 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_22B35E4BC();
  v164 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v160 = &v152 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22B35E95C();
  v191 = *(v20 - 8);
  v192 = v20;
  MEMORY[0x28223BE20](v20);
  v159 = &v152 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v158 = &v152 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA458, &qword_22B364950);
  MEMORY[0x28223BE20](v24 - 8);
  v190 = &v152 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v193 = &v152 - v27;
  v28 = sub_22B35E51C();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = (&v152 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v32);
  v34 = &v152 - v33;
  v35 = sub_22B35E94C();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v170 = &v152 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v172 = &v152 - v39;
  MEMORY[0x28223BE20](v40);
  v180 = &v152 - v41;
  MEMORY[0x28223BE20](v42);
  v174 = &v152 - v43;
  MEMORY[0x28223BE20](v44);
  v46 = &v152 - v45;
  MEMORY[0x28223BE20](v47);
  v49 = &v152 - v48;
  v194 = a1;
  sub_22B35E96C();
  sub_22B35E93C();
  v51 = *(v36 + 8);
  v50 = v36 + 8;
  v198 = v35;
  v52 = v35;
  v53 = v51;
  v51(v49, v52);
  (*(v29 + 32))(v31, v34, v28);
  v54 = (*(v29 + 88))(v31, v28);
  if (v54 != *MEMORY[0x277D17530] && v54 != *MEMORY[0x277D17528])
  {
    (*(v29 + 8))(v31, v28);
    return;
  }

  (*(v29 + 96))(v31, v28);
  v55 = *v31;
  v156 = v31[1];
  v155 = v55;
  sub_22B35E96C();
  v56 = v193;
  sub_22B35E8EC();
  v53(v46, v198);
  v58 = v191;
  v57 = v192;
  v157 = *(v191 + 48);
  v59 = v157(v56, 1, v192);
  v60 = MEMORY[0x277D175A0];
  if (v59 == 1)
  {
    sub_22B123284(v56, &qword_27D8BA458, &qword_22B364950);
    v158 = 0;
    v153 = 0;
    v154 = 1;
    v61 = v190;
  }

  else
  {
    v62 = v158;
    (*(v58 + 16))(v158, v56, v57);
    v63 = (*(v58 + 88))(v62, v57);
    v64 = v63 == *v60;
    v154 = v63 != *v60;
    if (v64)
    {
      (*(v58 + 96))(v62, v57);
      v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA460, &qword_22B364958) + 48);
      v67 = v62;
      v68 = v160;
      (*(v164 + 32))(v160, v67, v175);
      v69 = v162;
      v70 = &v67[v66];
      v71 = v161;
      v72 = v163;
      (*(v162 + 32))(v161, v70, v163);
      v158 = sub_22B35E42C();
      v153 = sub_22B35E42C();
      v73 = v69;
      v58 = v191;
      (*(v73 + 8))(v71, v72);
      (*(v164 + 8))(v68, v175);
      v65 = *(v58 + 8);
    }

    else
    {
      v65 = *(v58 + 8);
      v65(v62, v57);
      v158 = 0;
      v153 = 0;
    }

    v61 = v190;
    v65(v193, v57);
  }

  v74 = v174;
  sub_22B35E96C();
  sub_22B35E8DC();
  v53(v74, v198);
  v75 = v157(v61, 1, v57);
  v169 = v50;
  v168 = v53;
  if (v75 == 1)
  {
    sub_22B123284(v61, &qword_27D8BA458, &qword_22B364950);
    v174 = 0;
    v159 = 0;
    LODWORD(v191) = 1;
  }

  else
  {
    v76 = v159;
    (*(v58 + 16))(v159, v61, v57);
    v77 = (*(v58 + 88))(v76, v57);
    v64 = v77 == *MEMORY[0x277D175A0];
    LODWORD(v191) = v77 != *MEMORY[0x277D175A0];
    if (v64)
    {
      (*(v58 + 96))(v76, v57);
      v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA460, &qword_22B364958) + 48);
      v80 = v76;
      v81 = v164;
      v82 = v160;
      (*(v164 + 32))();
      v83 = v162;
      v84 = &v80[v79];
      v85 = v161;
      v86 = v163;
      (*(v162 + 32))(v161, v84, v163);
      v174 = sub_22B35E42C();
      v159 = sub_22B35E42C();
      v87 = v85;
      v88 = v192;
      (*(v83 + 8))(v87, v86);
      v89 = v190;
      (*(v81 + 8))(v82, v175);
      (*(v58 + 8))(v89, v88);
    }

    else
    {
      v78 = *(v58 + 8);
      v78(v76, v57);
      v174 = 0;
      v159 = 0;
      v78(v61, v57);
    }
  }

  v90 = objc_opt_self();
  v91 = sub_22B36081C();
  v92 = [v90 insertNewObjectForEntityForName:v91 inManagedObjectContext:v179];

  v93 = v176;
  sub_22B35E8CC();
  v94 = sub_22B35DDDC();
  (*(v177 + 8))(v93, v178);
  v95 = sub_22B36081C();
  [v92 setValue:v94 forKeyPath:v95];

  v96 = v195;
  sub_22B35E88C();
  v97 = sub_22B35DEDC();
  v98 = v196;
  v100 = v197 + 8;
  v99 = *(v197 + 8);
  v99(v96, v196);
  v101 = sub_22B36081C();
  [v92 setValue:v97 forKeyPath:v101];

  sub_22B35E89C();
  v102 = sub_22B35DEDC();
  v197 = v100;
  v193 = v99;
  v99(v96, v98);
  v103 = sub_22B36081C();
  [v92 setValue:v102 forKeyPath:v103];

  sub_22B35E8BC();
  v104 = sub_22B36081C();

  v105 = sub_22B36081C();
  [v92 setValue:v104 forKeyPath:v105];

  sub_22B35E8AC();
  v106 = sub_22B36081C();

  v107 = sub_22B36081C();
  [v92 setValue:v106 forKeyPath:v107];

  v108 = v180;
  sub_22B35E96C();
  v109 = v181;
  sub_22B35E8FC();
  v110 = v198;
  v111 = v168;
  v168(v108, v198);
  sub_22B35E84C();
  (*(v182 + 8))(v109, v183);
  v112 = sub_22B36081C();

  v113 = sub_22B36081C();
  [v92 setValue:v112 forKeyPath:v113];

  sub_22B35E96C();
  v114 = v184;
  sub_22B35E91C();
  v111(v108, v110);
  sub_22B35E86C();
  (*(v185 + 8))(v114, v186);
  v115 = sub_22B36081C();

  v116 = v110;
  v117 = sub_22B36081C();
  [v92 setValue:v115 forKeyPath:v117];

  sub_22B35E96C();
  v118 = v187;
  sub_22B35E90C();
  v111(v108, v116);
  v119 = sub_22B35E42C();
  (*(v188 + 8))(v118, v189);
  if (v119 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v119 > 0x7FFFFFFF)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v120 = sub_22B36145C();
  v121 = sub_22B36081C();
  [v92 setValue:v120 forKeyPath:v121];

  v122 = sub_22B360C2C();
  v123 = sub_22B36081C();
  [v92 setValue:v122 forKeyPath:v123];

  v124 = v172;
  sub_22B35E96C();
  v125 = v173;
  sub_22B35E92C();
  v111(v124, v116);
  v126 = sub_22B35E9BC();
  v127 = *(v126 - 8);
  v128 = *(v127 + 48);
  if (v128(v125, 1, v126) == 1)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v129 = v195;
  sub_22B35E97C();
  v130 = sub_22B35DEDC();
  (v193)(v129, v196);
  v131 = *(v127 + 8);
  v131(v125, v126);
  v132 = sub_22B36081C();
  [v92 setValue:v130 forKeyPath:v132];

  v133 = v170;
  sub_22B35E96C();
  v134 = v171;
  sub_22B35E92C();
  v168(v133, v198);
  if (v128(v134, 1, v126) != 1)
  {
    LODWORD(v198) = v154 & v191;
    v135 = v165;
    sub_22B35E9AC();
    v131(v134, v126);
    sub_22B35E98C();
    (*(v166 + 8))(v135, v167);
    v136 = sub_22B36081C();

    v137 = sub_22B36081C();
    [v92 setValue:v136 forKeyPath:v137];

    v138 = sub_22B360ABC();
    v139 = sub_22B36081C();
    [v92 setValue:v138 forKeyPath:v139];

    v140 = sub_22B36081C();

    v141 = sub_22B36081C();
    [v92 setValue:v140 forKeyPath:v141];

    v142 = sub_22B36146C();
    v143 = sub_22B36081C();
    [v92 setValue:v142 forKeyPath:v143];

    v144 = sub_22B36146C();
    v145 = sub_22B36081C();
    [v92 setValue:v144 forKeyPath:v145];

    v146 = sub_22B36146C();
    v147 = sub_22B36081C();
    [v92 setValue:v146 forKeyPath:v147];

    v148 = sub_22B36146C();
    v149 = sub_22B36081C();
    [v92 setValue:v148 forKeyPath:v149];

    v150 = sub_22B360ABC();
    v151 = sub_22B36081C();
    [v92 setValue:v150 forKeyPath:v151];

    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_22B184538(void *a1, void *a2)
{
  v89 = a2;
  v87 = type metadata accessor for SessionKey(0);
  MEMORY[0x28223BE20](v87);
  v88 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560);
  MEMORY[0x28223BE20](v4 - 8);
  v91 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v80 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v80 - v10;
  v12 = sub_22B35DF1C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v90 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v80 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v80 - v19;
  strcpy(&v96, "homeIdentifier");
  HIBYTE(v96) = -18;
  v21 = sub_22B36139C();
  v93 = a1;
  v22 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v22)
  {
    sub_22B36102C();
    swift_unknownObjectRelease();
  }

  else
  {
    v96 = 0u;
    v97 = 0u;
  }

  v98 = v96;
  v99 = v97;
  if (!*(&v97 + 1))
  {
    sub_22B123284(&v98, &unk_27D8BA950, &qword_22B364940);
    (*(v13 + 56))(v11, 1, 1, v12);
    goto LABEL_9;
  }

  v86 = v17;
  v92 = v20;
  v23 = swift_dynamicCast();
  v24 = *(v13 + 56);
  v24(v11, v23 ^ 1u, 1, v12);
  v25 = *(v13 + 48);
  if (v25(v11, 1, v12) == 1)
  {
LABEL_9:
    v28 = &qword_27D8BA970;
    v29 = &unk_22B363560;
    v30 = v11;
    return sub_22B123284(v30, v28, v29);
  }

  v26 = *(v13 + 32);
  v84 = v13 + 32;
  v85 = v24;
  v83 = v26;
  v26(v92, v11, v12);
  strcpy(&v96, "siteIdentifier");
  HIBYTE(v96) = -18;
  v27 = [v93 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v27)
  {
    sub_22B36102C();
    swift_unknownObjectRelease();
  }

  else
  {
    v96 = 0u;
    v97 = 0u;
  }

  v98 = v96;
  v99 = v97;
  v31 = v85;
  if (!*(&v97 + 1))
  {
    (*(v13 + 8))(v92, v12);
    sub_22B123284(&v98, &unk_27D8BA950, &qword_22B364940);
    v31(v8, 1, 1, v12);
    goto LABEL_15;
  }

  v32 = swift_dynamicCast();
  v31(v8, v32 ^ 1u, 1, v12);
  if (v25(v8, 1, v12) == 1)
  {
    (*(v13 + 8))(v92, v12);
LABEL_15:
    v28 = &qword_27D8BA970;
    v29 = &unk_22B363560;
    v30 = v8;
    return sub_22B123284(v30, v28, v29);
  }

  v83(v86, v8, v12);
  *&v96 = 0xD000000000000010;
  *(&v96 + 1) = 0x800000022B36AF80;
  v34 = [v93 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v34)
  {
    sub_22B36102C();
    swift_unknownObjectRelease();
  }

  else
  {
    v96 = 0u;
    v97 = 0u;
  }

  v98 = v96;
  v99 = v97;
  if (!*(&v97 + 1))
  {
    goto LABEL_31;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_34:
    v40 = *(v13 + 8);
    v40(v86, v12);
    v41 = v92;
    return (v40)(v41, v12);
  }

  v35 = v94;
  v82 = v95;
  *&v96 = 0xD000000000000010;
  *(&v96 + 1) = 0x800000022B36AFA0;
  v36 = [v93 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v36)
  {
    sub_22B36102C();
    swift_unknownObjectRelease();
  }

  else
  {
    v96 = 0u;
    v97 = 0u;
  }

  v98 = v96;
  v99 = v97;
  if (!*(&v97 + 1))
  {

LABEL_31:
    v38 = *(v13 + 8);
    v38(v86, v12);
    v39 = v92;
LABEL_32:
    v38(v39, v12);
    v28 = &unk_27D8BA950;
    v29 = &qword_22B364940;
    v30 = &v98;
    return sub_22B123284(v30, v28, v29);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_34;
  }

  v80 = v94;
  v81 = v95;
  *&v96 = 0x496E6F6973736573;
  *(&v96 + 1) = 0xE900000000000044;
  v37 = [v93 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v37)
  {
    sub_22B36102C();
    swift_unknownObjectRelease();
  }

  else
  {
    v96 = 0u;
    v97 = 0u;
  }

  v42 = v91;
  v43 = v85;
  v98 = v96;
  v99 = v97;
  if (!*(&v97 + 1))
  {

    v46 = *(v13 + 8);
    v46(v86, v12);
    v46(v92, v12);
    sub_22B123284(&v98, &unk_27D8BA950, &qword_22B364940);
    v43(v42, 1, 1, v12);
    goto LABEL_41;
  }

  v44 = swift_dynamicCast();
  v43(v42, v44 ^ 1u, 1, v12);
  if (v25(v42, 1, v12) == 1)
  {

    v45 = *(v13 + 8);
    v45(v86, v12);
    v45(v92, v12);
LABEL_41:
    v28 = &qword_27D8BA970;
    v29 = &unk_22B363560;
    v30 = v42;
    return sub_22B123284(v30, v28, v29);
  }

  v47 = v90;
  v83(v90, v42, v12);
  strcpy(&v96, "sessionState");
  BYTE13(v96) = 0;
  HIWORD(v96) = -5120;
  v48 = [v93 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  v49 = v92;
  if (v48)
  {
    sub_22B36102C();
    swift_unknownObjectRelease();
  }

  else
  {
    v96 = 0u;
    v97 = 0u;
  }

  v98 = v96;
  v99 = v97;
  if (!*(&v97 + 1))
  {
    goto LABEL_59;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_61:

    v40 = *(v13 + 8);
    v40(v47, v12);
    v40(v86, v12);
    v41 = v49;
    return (v40)(v41, v12);
  }

  v51 = v94;
  v50 = v95;
  strcpy(&v96, "loadEventType");
  HIWORD(v96) = -4864;
  v52 = [v93 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v52)
  {
    sub_22B36102C();
    swift_unknownObjectRelease();
  }

  else
  {
    v96 = 0u;
    v97 = 0u;
  }

  v98 = v96;
  v99 = v97;
  if (!*(&v97 + 1))
  {

LABEL_59:

    v38 = *(v13 + 8);
    v38(v47, v12);
    v38(v86, v12);
    v39 = v49;
    goto LABEL_32;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_61;
  }

  v93 = v51;
  v91 = v50;
  v53 = v95;
  v85 = v94;
  v54 = v47;
  v55 = *(v13 + 16);
  v56 = v88;
  v55(v88, v49, v12);
  v57 = v87;
  v55((v56 + *(v87 + 20)), v86, v12);
  v55((v56 + v57[9]), v54, v12);
  v58 = (v56 + v57[6]);
  v59 = v82;
  *v58 = v35;
  v58[1] = v59;
  v60 = (v56 + v57[7]);
  v61 = v81;
  *v60 = v80;
  v60[1] = v61;
  v62 = (v56 + v57[8]);
  *v62 = v85;
  v62[1] = v53;
  v63 = v89;
  v64 = *v89;
  if (*(*v89 + 16) && (v65 = sub_22B33B830(v56), (v66 & 1) != 0))
  {
    v67 = (*(v64 + 56) + 2 * v65);
    v68 = *v67;
    if (v67[1])
    {
      v69 = 256;
    }

    else
    {
      v69 = 0;
    }

    v70 = v69 | v68;
  }

  else
  {
    v70 = 2;
  }

  v72 = v90;
  v71 = v91;
  if (v70 == 2)
  {
    v73 = 0;
  }

  else
  {
    v73 = HIBYTE(v70);
  }

  if (v93 == 0x6E69676562 && v91 == 0xE500000000000000)
  {

    v74 = 1;
  }

  else
  {
    v75 = v93;
    if (sub_22B36134C())
    {

      v74 = 1;
    }

    else
    {
      v74 = (v70 != 2) & v70;
      if (v75 == 6581861 && v71 == 0xE300000000000000)
      {

        v73 = 1;
      }

      else
      {
        v76 = sub_22B36134C();

        v73 |= v76;
      }
    }

    v72 = v90;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v98 = *v63;
  *v63 = 0x8000000000000000;
  if (v73)
  {
    v78 = 256;
  }

  else
  {
    v78 = 0;
  }

  sub_22B33F72C(v78 | v74, v56, isUniquelyReferenced_nonNull_native);
  sub_22B1912E4(v56, type metadata accessor for SessionKey);
  v79 = *(v13 + 8);
  v79(v72, v12);
  v79(v86, v12);
  v79(v92, v12);
  *v63 = v98;
}

uint64_t sub_22B1852D0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v166 = a1;
  v167 = a3;
  v165 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v5 - 8);
  v160 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v147 - v8;
  v10 = sub_22B35DE9C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v152 = &v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v151 = &v147 - v14;
  MEMORY[0x28223BE20](v15);
  v162 = &v147 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v147 - v18;
  v20 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v21 = sub_22B36081C();
  v22 = [v20 initWithEntityName_];

  v161 = a2;
  sub_22B170BE0(a2, v9, &qword_27D8BA340, &qword_22B363FB0);
  v156 = *(v11 + 48);
  v157 = v11 + 48;
  v23 = v156(v9, 1, v10);
  v168 = v22;
  v163 = v11;
  v164 = v10;
  if (v23 == 1)
  {
    sub_22B123284(v9, &qword_27D8BA340, &qword_22B363FB0);
    v169 = sub_22B128014(0, &qword_281409330, 0x277CCAC30);
    v24 = v166;
    *&v153 = "D == %@ AND timestamp >= %@";
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_22B363660;
    v150 = v22;
    v26 = sub_22B35DEDC();
    v27 = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
    *(v25 + 56) = v27;
    v28 = sub_22B176FAC(&qword_281408540, &qword_281408548, 0x277CCAD78);
    *(v25 + 64) = v28;
    *(v25 + 32) = v26;
    v29 = type metadata accessor for SessionKey(0);
    v30 = sub_22B35DEDC();
    *(v25 + 96) = v27;
    *(v25 + 104) = v28;
    *(v25 + 72) = v30;
    v31 = (v24 + *(v29 + 24));
    v32 = *v31;
    v33 = v31[1];
    v34 = MEMORY[0x277D837D0];
    *(v25 + 136) = MEMORY[0x277D837D0];
    v35 = sub_22B1280E4();
    *(v25 + 144) = v35;
    v158 = v32;
    v159 = v33;
    *(v25 + 112) = v32;
    *(v25 + 120) = v33;
    v36 = (v24 + *(v29 + 28));
    v37 = *v36;
    v38 = v36[1];
    *(v25 + 176) = v34;
    *(v25 + 184) = v35;
    v154 = v37;
    *(v25 + 152) = v37;
    *(v25 + 160) = v38;

    v155 = v38;

    v39 = sub_22B35DEDC();
    *(v25 + 216) = v27;
    *(v25 + 224) = v28;
    *(v25 + 192) = v39;
    *(v25 + 256) = v34;
    *(v25 + 264) = v35;
    *(v25 + 232) = 0x6E69676562;
    *(v25 + 240) = 0xE500000000000000;
    v40 = sub_22B360CCC();
    [v150 setPredicate_];
  }

  else
  {
    v41 = *(v11 + 32);
    v150 = v19;
    v41(v19, v9, v10);
    v169 = sub_22B128014(0, &qword_281409330, 0x277CCAC30);
    *&v153 = "D == %@ AND sessionState == %@";
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_22B364820;
    v149 = v22;
    v43 = v166;
    v44 = sub_22B35DEDC();
    v45 = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
    *(v42 + 56) = v45;
    v46 = sub_22B176FAC(&qword_281408540, &qword_281408548, 0x277CCAD78);
    *(v42 + 64) = v46;
    *(v42 + 32) = v44;
    v47 = type metadata accessor for SessionKey(0);
    v48 = sub_22B35DEDC();
    *(v42 + 96) = v45;
    *(v42 + 104) = v46;
    *(v42 + 72) = v48;
    v49 = (v43 + *(v47 + 24));
    v50 = *v49;
    v51 = v49[1];
    v52 = MEMORY[0x277D837D0];
    *(v42 + 136) = MEMORY[0x277D837D0];
    v53 = v52;
    v54 = sub_22B1280E4();
    *(v42 + 144) = v54;
    v158 = v50;
    v159 = v51;
    *(v42 + 112) = v50;
    *(v42 + 120) = v51;
    v55 = (v43 + *(v47 + 28));
    v56 = *v55;
    v57 = v55[1];
    *(v42 + 176) = v53;
    *(v42 + 184) = v54;
    v154 = v56;
    *(v42 + 152) = v56;
    *(v42 + 160) = v57;

    v155 = v57;

    v58 = sub_22B35DEDC();
    *(v42 + 216) = v45;
    *(v42 + 224) = v46;
    *(v42 + 192) = v58;
    v59 = v150;
    v60 = sub_22B35DDDC();
    *(v42 + 256) = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
    v61 = sub_22B176FAC(&qword_281408550, &qword_281408558, 0x277CBEAA8);
    *(v42 + 232) = v60;
    *(v42 + 296) = v53;
    *(v42 + 304) = v54;
    *(v42 + 264) = v61;
    *(v42 + 272) = 0x6E69676562;
    *(v42 + 280) = 0xE500000000000000;
    v62 = sub_22B360CCC();
    [v149 setPredicate_];

    (*(v163 + 8))(v59, v164);
  }

  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v64 = swift_allocObject();
  v153 = xmmword_22B363650;
  *(v64 + 16) = xmmword_22B363650;
  v65 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v66 = sub_22B36081C();
  v67 = [v65 initWithKey:v66 ascending:0];

  *(v64 + 32) = v67;
  v68 = sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v69 = sub_22B360A3C();

  v70 = v168;
  [v168 setSortDescriptors_];

  [v70 setFetchLimit_];
  v71 = sub_22B35F46C();
  v72 = sub_22B360E9C();

  v150 = v63;
  v149 = v68;
  v148 = v71;
  v147 = 0;
  if (v72 >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22B36109C())
  {
    v74 = 0;
    while ((v72 & 0xC000000000000001) == 0)
    {
      if (v74 >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_46;
      }

      v75 = *(v72 + 8 * v74 + 32);
      v76 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      v169 = v75;
      v77 = [v75 sessionState];
      v78 = sub_22B36084C();
      v80 = v79;

      if (v78 == 0x6E69676562 && v80 == 0xE500000000000000)
      {
        goto LABEL_20;
      }

      v82 = sub_22B36134C();

      if (v82)
      {
        goto LABEL_21;
      }

      ++v74;
      if (v76 == i)
      {
        goto LABEL_52;
      }
    }

    v75 = MEMORY[0x23188EAC0](v74, v72);
    v76 = v74 + 1;
    if (!__OFADD__(v74, 1))
    {
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
LABEL_20:

LABEL_21:

    v83 = v160;
    sub_22B170BE0(v161, v160, &qword_27D8BA340, &qword_22B363FB0);
    v84 = v164;
    v85 = v156(v83, 1, v164);
    v86 = v168;
    if (v85 == 1)
    {
      sub_22B123284(v83, &qword_27D8BA340, &qword_22B363FB0);
      v166 = sub_22B128014(0, &qword_281409330, 0x277CCAC30);
      v162 = "D == %@ AND timestamp >= %@";
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_22B363660;
      v161 = v86;
      v88 = sub_22B35DEDC();
      v89 = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
      *(v87 + 56) = v89;
      v90 = sub_22B176FAC(&qword_281408540, &qword_281408548, 0x277CCAD78);
      *(v87 + 64) = v90;
      *(v87 + 32) = v88;
      type metadata accessor for SessionKey(0);
      v91 = sub_22B35DEDC();
      *(v87 + 96) = v89;
      *(v87 + 104) = v90;
      *(v87 + 72) = v91;
      v92 = MEMORY[0x277D837D0];
      *(v87 + 136) = MEMORY[0x277D837D0];
      v93 = sub_22B1280E4();
      v94 = v159;
      *(v87 + 112) = v158;
      *(v87 + 120) = v94;
      *(v87 + 176) = v92;
      *(v87 + 184) = v93;
      v95 = v154;
      v96 = v155;
      *(v87 + 144) = v93;
      *(v87 + 152) = v95;
      *(v87 + 160) = v96;

      v97 = sub_22B35DEDC();
      *(v87 + 216) = v89;
      *(v87 + 224) = v90;
      *(v87 + 192) = v97;
      *(v87 + 256) = v92;
      *(v87 + 264) = v93;
      *(v87 + 232) = 6581861;
      *(v87 + 240) = 0xE300000000000000;
      v98 = sub_22B360CCC();
      [v161 setPredicate_];
    }

    else
    {
      (*(v163 + 32))(v162, v83, v84);
      v166 = sub_22B128014(0, &qword_281409330, 0x277CCAC30);
      v161 = "D == %@ AND sessionState == %@";
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_22B364820;
      v160 = v86;
      v100 = sub_22B35DEDC();
      v101 = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
      *(v99 + 56) = v101;
      v102 = sub_22B176FAC(&qword_281408540, &qword_281408548, 0x277CCAD78);
      *(v99 + 64) = v102;
      *(v99 + 32) = v100;
      type metadata accessor for SessionKey(0);
      v103 = sub_22B35DEDC();
      *(v99 + 96) = v101;
      *(v99 + 104) = v102;
      *(v99 + 72) = v103;
      v104 = MEMORY[0x277D837D0];
      *(v99 + 136) = MEMORY[0x277D837D0];
      v105 = sub_22B1280E4();
      v106 = v159;
      *(v99 + 112) = v158;
      *(v99 + 120) = v106;
      *(v99 + 176) = v104;
      *(v99 + 184) = v105;
      v107 = v154;
      v108 = v155;
      *(v99 + 144) = v105;
      *(v99 + 152) = v107;
      *(v99 + 160) = v108;

      v109 = sub_22B35DEDC();
      *(v99 + 216) = v101;
      *(v99 + 224) = v102;
      *(v99 + 192) = v109;
      v110 = v162;
      v111 = sub_22B35DDDC();
      *(v99 + 256) = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
      v112 = sub_22B176FAC(&qword_281408550, &qword_281408558, 0x277CBEAA8);
      *(v99 + 232) = v111;
      *(v99 + 296) = v104;
      *(v99 + 304) = v105;
      v113 = v163;
      *(v99 + 264) = v112;
      *(v99 + 272) = 6581861;
      *(v99 + 280) = 0xE300000000000000;
      v114 = sub_22B360CCC();
      [v160 setPredicate_];

      (*(v113 + 8))(v110, v164);
    }

    v115 = swift_allocObject();
    *(v115 + 16) = v153;
    v116 = objc_allocWithZone(MEMORY[0x277CCAC98]);
    v117 = sub_22B36081C();
    v118 = [v116 initWithKey:v117 ascending:1];

    *(v115 + 32) = v118;
    v119 = sub_22B360A3C();

    [v86 setSortDescriptors_];

    [v86 setFetchLimit_];
    v120 = v147;
    v121 = sub_22B360E9C();
    if (v120)
    {

      goto LABEL_53;
    }

    v72 = v121;

    if (v72 >> 62)
    {
      v122 = sub_22B36109C();
      if (v122)
      {
        goto LABEL_28;
      }

LABEL_51:

      break;
    }

    v122 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v122)
    {
      goto LABEL_51;
    }

LABEL_28:
    v123 = 0;
    while (1)
    {
      if ((v72 & 0xC000000000000001) != 0)
      {
        v124 = MEMORY[0x23188EAC0](v123, v72);
      }

      else
      {
        if (v123 >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v124 = *(v72 + 8 * v123 + 32);
      }

      v125 = v124;
      v126 = v123 + 1;
      if (__OFADD__(v123, 1))
      {
        break;
      }

      v127 = [v124 sessionState];
      v128 = sub_22B36084C();
      v130 = v129;

      if (v128 == 6581861 && v130 == 0xE300000000000000)
      {

LABEL_42:

        v133 = v169;
        v134 = [v169 timestamp];
        v135 = v151;
        sub_22B35DE5C();

        v136 = [v125 timestamp];
        v137 = v152;
        sub_22B35DE5C();

        sub_22B18DC68(&qword_28140B490, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v138 = v164;
        LOBYTE(v136) = sub_22B36074C();
        v139 = *(v163 + 8);
        v139(v137, v138);
        v139(v135, v138);
        v140 = v168;
        if (v136)
        {
          v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA078, &unk_22B362BB0);
          v142 = [v133 timestamp];
          v143 = v165;
          sub_22B35DE5C();

          v144 = [v125 timestamp];
          sub_22B35DE5C();

          return (*(*(v141 - 8) + 56))(v143, 0, 1, v141);
        }

        goto LABEL_53;
      }

      v132 = sub_22B36134C();

      if (v132)
      {
        goto LABEL_42;
      }

      ++v123;
      if (v126 == v122)
      {
        goto LABEL_51;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

LABEL_52:

LABEL_53:
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA078, &unk_22B362BB0);
  return (*(*(v146 - 8) + 56))(v165, 1, 1, v146);
}

uint64_t sub_22B186374()
{
  type metadata accessor for RawLoadEventManager();
  v0 = swift_allocObject();
  result = sub_22B17499C();
  qword_27D8BB1B0 = v0;
  return result;
}

uint64_t sub_22B1863B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_22B35E0BC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22B35DF9C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22B35E04C();
  __swift_allocate_value_buffer(v11, qword_27D8BA3F0);
  __swift_project_value_buffer(v11, qword_27D8BA3F0);
  (*(v8 + 104))(v10, *MEMORY[0x277CC9830], v7);
  sub_22B35DFAC();
  (*(v8 + 8))(v10, v7);
  sub_22B35E08C();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    return sub_22B35E01C();
  }

  return result;
}

uint64_t sub_22B186604(uint64_t result)
{
  if (*(v1 + 120))
  {
    v2 = result;
    v3 = *(v1 + 112);

    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v5 = sub_22B2A632C();
      v4 = [v5 newBackgroundContext];
      v6 = sub_22B36081C();
      [v4 setTransactionAuthor_];

      [v4 setMergePolicy_];
      [v4 setUndoManager_];
      [v4 setShouldRefreshAfterSave_];
      [v4 setStalenessInterval_];
      [v4 setShouldDeleteInaccessibleFaults_];
    }

    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    *(v7 + 24) = v4;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_22B191698;
    *(v8 + 24) = v7;
    v13[4] = sub_22B128240;
    v13[5] = v8;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_22B32556C;
    v13[3] = &block_descriptor_78;
    v9 = _Block_copy(v13);
    v10 = v4;
    v11 = v3;

    [v10 performBlockAndWait_];
    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22B18687C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22B35DE9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v36 = v6;
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B36052C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_28140BD10);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_22B36050C();
  v14 = sub_22B360D2C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v35 = v2;
    v16 = v5;
    v17 = a1;
    v18 = v7;
    v19 = v4;
    v20 = v15;
    *v15 = 0;
    _os_log_impl(&dword_22B116000, v13, v14, "Delete all raw load events", v15, 2u);
    v21 = v20;
    v4 = v19;
    v7 = v18;
    a1 = v17;
    v5 = v16;
    v2 = v35;
    MEMORY[0x23188F650](v21, -1, -1);
  }

  result = (*(v9 + 8))(v11, v8);
  if (*(v2 + 120))
  {
    v23 = *(v2 + 112);

    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v25 = sub_22B2A632C();
      v24 = [v25 newBackgroundContext];
      v26 = sub_22B36081C();
      [v24 setTransactionAuthor_];

      [v24 setMergePolicy_];
      [v24 setUndoManager_];
      [v24 setShouldRefreshAfterSave_];
      [v24 setStalenessInterval_];
      [v24 setShouldDeleteInaccessibleFaults_];

      v23 = 0;
    }

    (*(v5 + 16))(v7, a1, v4);
    v27 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v28 = (v36 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    (*(v5 + 32))(v29 + v27, v7, v4);
    *(v29 + v28) = v24;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_22B1915C4;
    *(v30 + 24) = v29;
    aBlock[4] = sub_22B128240;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B32556C;
    aBlock[3] = &block_descriptor_68;
    v31 = _Block_copy(aBlock);
    v32 = v24;
    v33 = v23;

    [v32 performBlockAndWait_];
    _Block_release(v31);
    LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

    if (v31)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_22B186D64()
{
  v1 = v0;
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_22B36050C();
  v8 = sub_22B360D2C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22B116000, v7, v8, "Delete all raw load events", v9, 2u);
    MEMORY[0x23188F650](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  if (*(v1 + 120))
  {
    v10 = *(v1 + 112);

    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v12 = sub_22B2A632C();
      v13 = [v12 newBackgroundContext];
      v14 = sub_22B36081C();
      [v13 setTransactionAuthor_];

      [v13 setMergePolicy_];
      [v13 setUndoManager_];
      [v13 setShouldRefreshAfterSave_];
      [v13 setStalenessInterval_];
      [v13 setShouldDeleteInaccessibleFaults_];

      v11 = v13;
    }

    v22 = v11;
    v15 = swift_allocObject();
    *(v15 + 16) = &v22;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_22B191518;
    *(v16 + 24) = v15;
    aBlock[4] = sub_22B128240;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B32556C;
    aBlock[3] = &block_descriptor_58;
    v17 = _Block_copy(aBlock);
    v18 = v10;

    [v11 performBlockAndWait_];

    _Block_release(v17);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v20 = v22;
    }
  }
}

void sub_22B18714C(id *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v3 = sub_22B36081C();
  v16 = [v2 initWithEntityName_];

  [v16 setResultType_];
  [v16 setFetchBatchSize_];
  while (1)
  {
    [v16 setFetchOffset_];
    [v16 setFetchLimit_];
    v5 = *a1;
    sub_22B35F46C();
    v6 = v5;
    v7 = sub_22B360E9C();

    if (v7 >> 62)
    {
      break;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_15;
    }

LABEL_6:
    v9 = MEMORY[0x23188EEB0]();
    if (v8 < 1)
    {
      __break(1u);
      return;
    }

    v10 = v9;
    for (i = 0; i != v8; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x23188EAC0](i, v7);
      }

      else
      {
        v12 = *(v7 + 8 * i + 32);
      }

      v13 = v12;
      [*a1 deleteObject_];
    }

    objc_autoreleasePoolPop(v10);
    v14 = *a1;
    sub_22B2A534C(2);

    if (v7 >> 62)
    {
      v4 = sub_22B36109C();
    }

    else
    {
      v4 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    [*a1 reset];
    if (v4 <= 99)
    {
      goto LABEL_16;
    }
  }

  v8 = sub_22B36109C();
  if (v8)
  {
    goto LABEL_6;
  }

LABEL_15:

LABEL_16:
  v15 = *a1;
  [v15 reset];
}

uint64_t sub_22B1873B4(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_22B35DF1C();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v2[15] = *(v4 + 64);
  v2[16] = swift_task_alloc();
  v5 = sub_22B36052C();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1874D8, v1, 0);
}

uint64_t sub_22B1874D8()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v5, v6, "Delete all raw load events for home", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[17];
  v11 = v0[12];

  (*(v9 + 8))(v8, v10);
  if (!*(v11 + 120))
  {
    goto LABEL_10;
  }

  aBlock = v0 + 2;
  v12 = *(v0[12] + 112);

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v14 = sub_22B2A632C();
    v13 = [v14 newBackgroundContext];
    v15 = sub_22B36081C();
    [v13 setTransactionAuthor_];

    [v13 setMergePolicy_];
    [v13 setUndoManager_];
    [v13 setShouldRefreshAfterSave_];
    [v13 setStalenessInterval_];
    [v13 setShouldDeleteInaccessibleFaults_];
  }

  v16 = v0[15];
  v17 = v0[16];
  v18 = v0[13];
  v19 = v0[14];
  (*(v19 + 16))(v17, v0[11], v18);
  v20 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v19 + 32))(v22 + v20, v17, v18);
  *(v22 + v21) = v13;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_22B1914EC;
  *(v23 + 24) = v22;
  v0[6] = sub_22B128240;
  v0[7] = v23;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22B32556C;
  v0[5] = &block_descriptor_48;
  v24 = _Block_copy(aBlock);
  v25 = v13;
  v26 = v12;

  [v25 performBlockAndWait_];
  _Block_release(v24);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if (v24)
  {
    __break(1u);
  }

  else
  {
LABEL_10:

    v28 = v0[1];

    return v28();
  }

  return result;
}

uint64_t sub_22B1878FC(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_22B35DF1C();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v2[15] = *(v4 + 64);
  v2[16] = swift_task_alloc();
  v5 = sub_22B36052C();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B187A20, v1, 0);
}

uint64_t sub_22B187A20()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v5, v6, "Delete all raw load events for site", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[17];
  v11 = v0[12];

  (*(v9 + 8))(v8, v10);
  if (!*(v11 + 120))
  {
    goto LABEL_10;
  }

  aBlock = v0 + 2;
  v12 = *(v0[12] + 112);

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v14 = sub_22B2A632C();
    v13 = [v14 newBackgroundContext];
    v15 = sub_22B36081C();
    [v13 setTransactionAuthor_];

    [v13 setMergePolicy_];
    [v13 setUndoManager_];
    [v13 setShouldRefreshAfterSave_];
    [v13 setStalenessInterval_];
    [v13 setShouldDeleteInaccessibleFaults_];
  }

  v16 = v0[15];
  v17 = v0[16];
  v18 = v0[13];
  v19 = v0[14];
  (*(v19 + 16))(v17, v0[11], v18);
  v20 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v19 + 32))(v22 + v20, v17, v18);
  *(v22 + v21) = v13;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_22B1914C0;
  *(v23 + 24) = v22;
  v0[6] = sub_22B128240;
  v0[7] = v23;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22B32556C;
  v0[5] = &block_descriptor_38;
  v24 = _Block_copy(aBlock);
  v25 = v13;
  v26 = v12;

  [v25 performBlockAndWait_];
  _Block_release(v24);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if (v24)
  {
    __break(1u);
  }

  else
  {
LABEL_10:

    v28 = v0[1];

    return v28();
  }

  return result;
}

uint64_t sub_22B187E44(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_22B35DE9C();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_22B35DF1C();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v6 = sub_22B36052C();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B187FC0, v2, 0);
}

uint64_t sub_22B187FC0()
{
  v51 = v0;
  if (qword_28140A0C8[0] != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[9];
  v46 = v0[8];
  loga = v0[10];
  v8 = v0[5];
  v44 = v0[6];
  v9 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v9, v3);
  (*(v6 + 16))(v4, v8, v5);
  (*(v7 + 16))(loga, v44, v46);
  v10 = sub_22B36050C();
  v47 = sub_22B360D2C();
  log = v10;
  v11 = os_log_type_enabled(v10, v47);
  v12 = v0[15];
  v13 = v0[16];
  v14 = v0[13];
  v15 = v0[14];
  v16 = v0[11];
  v17 = v0[12];
  v18 = v0[9];
  v19 = v0[10];
  v20 = v0[8];
  if (v11)
  {
    v45 = v0[16];
    v21 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v50 = v43;
    *v21 = 136315394;
    sub_22B18DC68(&qword_2814091D0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v41 = v12;
    v42 = v15;
    v22 = sub_22B36131C();
    v24 = v23;
    (*(v17 + 8))(v14, v16);
    v25 = sub_22B1A7B20(v22, v24, &v50);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    sub_22B18DC68(&qword_28140B488, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v26 = sub_22B36131C();
    v28 = v27;
    (*(v18 + 8))(v19, v20);
    v29 = sub_22B1A7B20(v26, v28, &v50);

    *(v21 + 14) = v29;
    _os_log_impl(&dword_22B116000, log, v47, "Delete raw load events for home %s before %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v43, -1, -1);
    MEMORY[0x23188F650](v21, -1, -1);

    (*(v41 + 8))(v45, v42);
  }

  else
  {

    (*(v18 + 8))(v19, v20);
    (*(v17 + 8))(v14, v16);
    (*(v12 + 8))(v13, v15);
  }

  v30 = v0[7];
  if (*(v30 + 120))
  {
    v31 = *(v30 + 112);

    if (v31)
    {
      v32 = v31;
    }

    else
    {
      v33 = sub_22B2A632C();
      v32 = [v33 newBackgroundContext];
      v34 = sub_22B36081C();
      [v32 setTransactionAuthor_];

      [v32 setMergePolicy_];
      [v32 setUndoManager_];
      [v32 setShouldRefreshAfterSave_];
      [v32 setStalenessInterval_];
      [v32 setShouldDeleteInaccessibleFaults_];
    }

    v36 = v0[5];
    v35 = v0[6];
    v37 = v31;
    v38 = v32;
    sub_22B18B9D8(v36, v35, v38);
  }

  v39 = v0[1];

  return v39();
}

uint64_t sub_22B1884A0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v28 = a4;
  v27 = a2;
  v6 = type metadata accessor for SessionKey(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v26 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA408, &unk_22B3648E8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25 - v15;
  v17 = sub_22B360B6C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v10 + 16))(v13, a1, v9);
  sub_22B18B868(a3, &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SessionKey);
  v19 = sub_22B18DC68(&qword_27D8BA410, v18, type metadata accessor for RawLoadEventManager, &unk_22B3648C0);
  v20 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v21 = (v11 + *(v7 + 80) + v20) & ~*(v7 + 80);
  v22 = swift_allocObject();
  v23 = v27;
  *(v22 + 2) = v27;
  *(v22 + 3) = v19;
  *(v22 + 4) = v23;
  (*(v10 + 32))(&v22[v20], v13, v9);
  sub_22B19127C(v26, &v22[v21], type metadata accessor for SessionKey);
  v22[v21 + v8] = v28;
  swift_retain_n();
  sub_22B123DF0(0, 0, v16, &unk_22B364900, v22);
}

uint64_t sub_22B1887AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 152) = a7;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 40) = a4;
  *(v7 + 64) = *(type metadata accessor for SessionHalfHourlySummary(0) - 8);
  *(v7 + 72) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA418, &qword_22B364908);
  *(v7 + 80) = v9;
  *(v7 + 88) = *(v9 - 8);
  *(v7 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  *(v7 + 104) = swift_task_alloc();
  v10 = sub_22B36052C();
  *(v7 + 112) = v10;
  *(v7 + 120) = *(v10 - 8);
  *(v7 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B188970, a4, 0);
}

uint64_t sub_22B188970()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v5, v6, "Generating half-hourly summaries", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  v9 = *(v0 + 120);
  v8 = *(v0 + 128);
  v10 = *(v0 + 112);
  v11 = *(v0 + 40);

  (*(v9 + 8))(v8, v10);
  if (*(v11 + 120))
  {
    v12 = *(v0 + 104);
    v13 = sub_22B35DE9C();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    v14 = swift_task_alloc();
    *(v0 + 136) = v14;
    *v14 = v0;
    v14[1] = sub_22B188BF4;
    v15 = *(v0 + 104);
    v16 = *(v0 + 152);
    v17 = *(v0 + 56);

    return sub_22B1891D8(v17, v16, v15);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA408, &unk_22B3648E8);
    sub_22B360B8C();

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_22B188BF4(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 40);
  *(*v1 + 144) = a1;

  sub_22B123284(v2, &qword_27D8BA340, &qword_22B363FB0);

  return MEMORY[0x2822009F8](sub_22B188D38, v3, 0);
}

uint64_t sub_22B188D38()
{
  v1 = v0[18];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[8];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v6 = (v0[11] + 8);
    do
    {
      v7 = v0[12];
      v8 = v0[10];
      sub_22B18B868(v4, v0[9], type metadata accessor for SessionHalfHourlySummary);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA408, &unk_22B3648E8);
      sub_22B360B7C();
      (*v6)(v7, v8);
      v4 += v5;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA408, &unk_22B3648E8);
  sub_22B360B8C();

  v9 = v0[1];

  return v9();
}

uint64_t sub_22B188EA4(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_22B188EC8, v2, 0);
}

uint64_t sub_22B188EC8()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 120);
  if (v2)
  {
    v3 = *(v1 + 112);

    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v6 = sub_22B2A632C();
      v7 = [v6 newBackgroundContext];
      v8 = sub_22B36081C();
      [v7 setTransactionAuthor_];

      [v7 setMergePolicy_];
      [v7 setUndoManager_];
      [v7 setShouldRefreshAfterSave_];
      [v7 setStalenessInterval_];
      [v7 setShouldDeleteInaccessibleFaults_];

      v4 = v7;
      v3 = 0;
    }

    *(v0 + 16) = v4;
    v9 = swift_task_alloc();
    v10 = *(v0 + 32);
    *(v9 + 16) = v2;
    *(v9 + 24) = v10;
    *(v9 + 40) = v0 + 16;
    v11 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA440, &qword_22B364930);
    sub_22B360E7C();

    v5 = *(v0 + 24);
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  v12 = *(v0 + 8);

  return v12(v5);
}

id sub_22B1890CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, id *a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = *a3;
  v9 = sub_22B18BCE0(a1, a2, v8);

  result = [*a3 reset];
  *a4 = v9;
  return result;
}

id sub_22B189148@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, id *a4@<X4>, _BYTE *a5@<X8>)
{
  v6 = a3;
  v10 = *a4;
  v11 = sub_22B18D174(a1, a2, v6, v10);

  result = [*a4 reset];
  *a5 = v11 & 1;
  return result;
}

uint64_t sub_22B1891D8(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 88) = a3;
  *(v4 + 96) = v3;
  *(v4 + 152) = a2;
  *(v4 + 80) = a1;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8);
  *(v4 + 104) = v5;
  *(v4 + 112) = *(v5 + 64);
  *(v4 + 120) = swift_task_alloc();
  v6 = *(type metadata accessor for SessionKey(0) - 8);
  *(v4 + 128) = v6;
  *(v4 + 136) = *(v6 + 64);
  *(v4 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B189310, v3, 0);
}

uint64_t sub_22B189310()
{
  v1 = *(v0 + 96);
  v2 = MEMORY[0x277D84F90];
  if (*(v1 + 120))
  {
    v32 = (v0 + 64);
    v33 = *(v1 + 120);
    v31 = (v0 + 72);
    v3 = *(v1 + 112);
    if (v3)
    {
      v30 = *(v0 + 96);

      v29 = v3;
      v4 = v3;
    }

    else
    {

      v5 = sub_22B2A632C();
      v6 = [v5 newBackgroundContext];
      v7 = sub_22B36081C();
      [v6 setTransactionAuthor_];

      [v6 setMergePolicy_];
      [v6 setUndoManager_];
      [v6 setShouldRefreshAfterSave_];
      [v6 setStalenessInterval_];
      [v6 setShouldDeleteInaccessibleFaults_];

      v4 = v6;
      v29 = 0;
      v30 = *(v0 + 96);
    }

    v28 = v4;
    v9 = *(v0 + 136);
    v8 = *(v0 + 144);
    v11 = *(v0 + 120);
    v10 = *(v0 + 128);
    v12 = *(v0 + 104);
    v13 = *(v0 + 112);
    v27 = *(v0 + 152);
    v14 = *(v0 + 80);
    v15 = *(v0 + 88);
    *(v0 + 64) = v4;
    *(v0 + 72) = v2;
    sub_22B18B868(v14, v8, type metadata accessor for SessionKey);
    sub_22B170BE0(v15, v11, &qword_27D8BA340, &qword_22B363FB0);
    v16 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v17 = (v9 + *(v12 + 80) + v16) & ~*(v12 + 80);
    v18 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    *(v19 + 16) = v33;
    sub_22B19127C(v8, v19 + v16, type metadata accessor for SessionKey);
    sub_22B170CD0(v11, v19 + v17, &qword_27D8BA340, &qword_22B363FB0);
    *(v19 + v18) = v32;
    v20 = v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v19 + ((v18 + 31) & 0xFFFFFFFFFFFFFFF8)) = v31;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_22B18DAE8;
    *(v21 + 24) = v19;
    *(v0 + 48) = sub_22B12819C;
    *(v0 + 56) = v21;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_22B32556C;
    *(v0 + 40) = &block_descriptor_6;
    v22 = _Block_copy((v0 + 16));
    v23 = v29;

    v24 = v23;

    [v28 performBlockAndWait_];

    _Block_release(v22);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if (v17)
    {
      __break(1u);
      return result;
    }

    v2 = *v31;
  }

  v26 = *(v0 + 8);

  return v26(v2);
}

unint64_t sub_22B189710(char *a1, uint64_t a2, char *a3, id *a4, uint64_t a5, int a6, uint64_t *a7)
{
  v171 = a7;
  v173 = a6;
  v199 = a5;
  v212 = a2;
  v213 = a3;
  v206 = a1;
  Event = type metadata accessor for CDRawLoadEvent(0);
  v8 = *(Event - 8);
  MEMORY[0x28223BE20](Event);
  v209 = &v166 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v188 = &v166 - v11;
  v170 = type metadata accessor for SessionHalfHourlySummary(0);
  v169 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v187 = &v166 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v168 = &v166 - v14;
  MEMORY[0x28223BE20](v15);
  v186 = &v166 - v16;
  v189 = sub_22B35D8BC();
  v193 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v198 = &v166 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22B35DE9C();
  v205 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v167 = &v166 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v185 = &v166 - v21;
  MEMORY[0x28223BE20](v22);
  v172 = &v166 - v23;
  MEMORY[0x28223BE20](v24);
  v195 = &v166 - v25;
  MEMORY[0x28223BE20](v26);
  v190 = &v166 - v27;
  MEMORY[0x28223BE20](v28);
  v196 = &v166 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v166 - v31;
  MEMORY[0x28223BE20](v33);
  v192 = &v166 - v34;
  MEMORY[0x28223BE20](v35);
  v207 = &v166 - v36;
  MEMORY[0x28223BE20](v37);
  v191 = &v166 - v38;
  MEMORY[0x28223BE20](v39);
  v197 = &v166 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = &v166 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA420, &unk_22B364910);
  MEMORY[0x28223BE20](v44 - 8);
  v46 = &v166 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA078, &unk_22B362BB0);
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v50 = &v166 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v53 = &v166 - v52;
  v194 = a4;
  v54 = *a4;
  sub_22B1852D0(v212, v213, v54, v46);

  if ((*(v48 + 48))(v46, 1, v47) == 1)
  {
    v55 = &qword_27D8BA420;
    v56 = &unk_22B364910;
    v57 = v46;
    return sub_22B123284(v57, v55, v56);
  }

  v211 = v32;
  sub_22B170CD0(v46, v53, &qword_27D8BA078, &unk_22B362BB0);
  sub_22B170BE0(v53, v50, &qword_27D8BA078, &unk_22B362BB0);
  v206 = *(v47 + 48);
  v58 = v205;
  v60 = v205 + 32;
  v59 = *(v205 + 4);
  v59(v43, v50, v18);
  v61 = *(v58 + 1);
  v61(&v206[v50], v18);
  v166 = v53;
  sub_22B170BE0(v53, v50, &qword_27D8BA078, &unk_22B362BB0);
  v62 = (v50 + *(v47 + 48));
  v63 = v197;
  v200 = v59;
  v201 = v60;
  v59(v197, v62, v18);
  v202 = v58 + 8;
  v204 = v61;
  v61(v50, v18);
  v64 = *v194;
  sub_22B18C8B8(v212, v213, v64);
  v212 = v65;

  v66 = v191;
  v203 = v43;
  sub_22B18ABB4(v43, v191);
  v67 = sub_22B35DDFC();
  v68 = v192;
  v69 = v63;
  if ((v67 & 1) == 0)
  {
LABEL_83:

    v165 = v204;
    v204(v66, v18);
    v165(v69, v18);
    v165(v203, v18);
    v55 = &qword_27D8BA078;
    v56 = &unk_22B362BB0;
    v57 = v166;
    return sub_22B123284(v57, v55, v56);
  }

  v213 = sub_22B18DC68(&qword_28140B490, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v70 = 0;
  v206 = v205 + 16;
  v184 = (v193 + 8);
  v208 = v8;
  while (1)
  {
    v73 = v203;
    v74 = sub_22B36075C();
    v75 = *v206;
    if (v74)
    {
      v76 = v73;
    }

    else
    {
      v76 = v66;
    }

    v77 = v207;
    v75(v207, v76, v18);
    sub_22B35DDCC();
    if (sub_22B36074C())
    {
      v78 = v69;
    }

    else
    {
      v78 = v68;
    }

    v79 = v211;
    v205 = v75;
    v75(v211, v78, v18);
    v80 = v77;
    result = sub_22B35DDEC();
    if ((result & 1) == 0)
    {
      v71 = v204;
      v204(v79, v18);
      v71(v80, v18);
      v71(v66, v18);
      v72 = v70;
      goto LABEL_6;
    }

    v82 = *(v212 + 16);
    if (v82)
    {
      break;
    }

    v86 = 0;
    v72 = 0;
    v194 = *(v208 + 80);
    v193 = MEMORY[0x277D84F90] + ((v194 + 32) & ~v194);
    v199 = MEMORY[0x277D84F90];
    v87 = 1;
LABEL_50:
    v98 = v207;
    v99 = v205;
    (v205)(v196, v207, v18);
    v100 = v211;
    v99(v190, v211, v18);
    v101 = v198;
    result = sub_22B35D88C();
    if (v87 >> 1 == v86)
    {
      swift_unknownObjectRelease();
      (*v184)(v101, v189);
      v102 = v204;
      v204(v100, v18);
      v102(v98, v18);
      v66 = v191;
      v102(v191, v18);
    }

    else
    {
      if (v87 >> 1 <= v86)
      {
        goto LABEL_91;
      }

      v183 = v87;
      v103 = *(v208 + 72);
      v104 = v193;
      sub_22B18B868(v193 + v103 * v86, v188, type metadata accessor for CDRawLoadEvent);
      sub_22B36135C();
      v105 = v199;
      swift_unknownObjectRetain_n();
      v106 = swift_dynamicCastClass();
      if (!v106)
      {
        swift_unknownObjectRelease();
        v106 = MEMORY[0x277D84F90];
      }

      v107 = *(v106 + 16);

      if (v107 == (v87 >> 1) - v86)
      {
        v108 = swift_dynamicCastClass();
        if (!v108)
        {
          swift_unknownObjectRelease();
          v108 = MEMORY[0x277D84F90];
        }
      }

      else
      {
        swift_unknownObjectRelease();
        sub_22B1FB240(v105, v104, v86, v183);
        v108 = v164;
      }

      result = v108 + ((v194 + 32) & ~v194);
      v109 = -*(v108 + 16);
      v110 = -1;
      do
      {
        v111 = v109 + v110;
        if (v109 + v110 == -1)
        {
          break;
        }

        if (++v110 >= *(v108 + 16))
        {
          __break(1u);
          goto LABEL_86;
        }

        v112 = result + v103;
        v113 = v209;
        sub_22B18B868(result, v209, type metadata accessor for CDRawLoadEvent);
        v114 = *(v113 + *(Event + 84));
        sub_22B1912E4(v113, type metadata accessor for CDRawLoadEvent);
        result = v112;
      }

      while ((v114 & 1) == 0);
      if (v173)
      {
        v214 = 0;
        v115 = v196;
        sub_22B35D89C();
        v116 = sub_22B18DCB0(v108, v115, &v214);
        v117 = v204;
        v204(v115, v18);
        sub_22B35D86C();
        v118 = sub_22B18DCB0(v108, v115, &v214);
        result = v117(v115, v18);
        v119 = v172;
        if (__OFSUB__(v118, v116))
        {
          goto LABEL_93;
        }

        v183 = v118 - v116;
        v194 = sub_22B18E3FC(v108);
        v179 = sub_22B18F110(v108);
        v180 = v120;

        v193 = 0;
        v182 = 0;
        v121 = &v213;
      }

      else
      {
        v214 = 0;
        v122 = v196;
        sub_22B35D89C();
        v123 = sub_22B190B30(v108, v122, &v214);
        v117 = v204;
        v204(v122, v18);
        sub_22B35D86C();
        v124 = sub_22B190B30(v108, v122, &v214);
        result = v117(v122, v18);
        v119 = v172;
        if (__OFSUB__(v124, v123))
        {
          goto LABEL_92;
        }

        v193 = v124 - v123;
        v194 = sub_22B18E3FC(v108);
        v181 = sub_22B18FE20(v108);
        v182 = v125;

        v183 = 0;
        v180 = 0;
        v121 = &v211;
      }

      *(v121 - 32) = 0;
      sub_22B35D89C();
      v126 = v203;
      v127 = sub_22B36075C();
      v128 = v167;
      if (v127)
      {
        v117(v119, v18);
        (v205)(v195, v126, v18);
      }

      else
      {
        v200(v195, v119, v18);
      }

      v178 = HIDWORD(v194);
      sub_22B35D86C();
      v129 = v197;
      if (sub_22B36074C())
      {
        v117(v128, v18);
        (v205)(v185, v129, v18);
      }

      else
      {
        v200(v185, v128, v18);
      }

      LODWORD(v205) = v111 != -1;
      sub_22B35DD3C();
      v131 = v130 / 60.0;
      if (v131 < 0.0)
      {
        v132 = 0.0;
      }

      else
      {
        v132 = v131;
      }

      v133 = Event;
      v134 = *(Event + 20);
      v135 = sub_22B35DF1C();
      v136 = *(*(v135 - 8) + 16);
      v137 = v188;
      v138 = v168;
      v136(v168, v188 + v134, v135);
      v139 = v170;
      v136((v138 + *(v170 + 20)), v137 + v133[6], v135);
      v140 = v136;
      v141 = v133[8];
      v142 = (v137 + v133[7]);
      v143 = v142[1];
      v176 = *v142;
      v174 = v143;
      v144 = *(v137 + v141 + 8);
      v177 = *(v137 + v141);
      v175 = v144;
      v140(v138 + v139[8], v137 + v133[13], v135);

      v145 = v198;
      sub_22B35D89C();
      sub_22B35D86C();
      v146 = v204;
      v204(v185, v18);
      v146(v195, v18);
      v147 = v133[16];
      LOBYTE(v146) = *(v137 + v133[15]);
      v148 = *(v137 + v147);
      v149 = *(v137 + v147 + 8);

      sub_22B1912E4(v137, type metadata accessor for CDRawLoadEvent);
      v150 = (v138 + v139[6]);
      v151 = v174;
      *v150 = v176;
      v150[1] = v151;
      v152 = (v138 + v139[7]);
      v153 = v175;
      *v152 = v177;
      v152[1] = v153;
      v154 = (v138 + v139[11]);
      LODWORD(v153) = v178;
      *v154 = v194;
      v154[1] = v153;
      *(v138 + v139[12]) = v179;
      *(v138 + v139[13]) = v180;
      *(v138 + v139[14]) = v181;
      *(v138 + v139[15]) = v182;
      *(v138 + v139[16]) = v183;
      *(v138 + v139[17]) = v193;
      *(v138 + v139[18]) = v132;
      *(v138 + v139[19]) = v146;
      v155 = (v138 + v139[20]);
      *v155 = v148;
      v155[1] = v149;
      *(v138 + v139[21]) = v205;
      v156 = v186;
      sub_22B19127C(v138, v186, type metadata accessor for SessionHalfHourlySummary);
      sub_22B18B868(v156, v187, type metadata accessor for SessionHalfHourlySummary);
      v157 = v171;
      v158 = *v171;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v157 = v158;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v158 = sub_22B32D4E4(0, v158[2] + 1, 1, v158);
        *v157 = v158;
      }

      v161 = v158[2];
      v160 = v158[3];
      if (v161 >= v160 >> 1)
      {
        *v157 = sub_22B32D4E4((v160 > 1), v161 + 1, 1, v158);
      }

      swift_unknownObjectRelease();
      sub_22B1912E4(v186, type metadata accessor for SessionHalfHourlySummary);
      (*v184)(v145, v189);
      v162 = v204;
      v204(v211, v18);
      v162(v207, v18);
      v66 = v191;
      v162(v191, v18);
      v163 = *v157;
      *(v163 + 16) = v161 + 1;
      sub_22B19127C(v187, v163 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v161, type metadata accessor for SessionHalfHourlySummary);
    }

    v68 = v192;
    v69 = v197;
LABEL_6:
    v200(v66, v68, v18);
    v70 = v72;
    if ((sub_22B35DDFC() & 1) == 0)
    {
      goto LABEL_83;
    }
  }

  v83 = v208;
  if (v82 < v70)
  {
    goto LABEL_88;
  }

  v84 = v70;
  v72 = v70;
  if (v70 == v82)
  {
    v72 = v70;
  }

  else
  {
    while (1)
    {
      if (v70 < 0)
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      result = sub_22B36074C();
      if ((result & 1) == 0)
      {
        break;
      }

      v85 = v84 + 1;
      result = sub_22B35DDFC();
      if (result)
      {
        v72 = v84;
      }

      ++v84;
      if (v82 == v85)
      {
        goto LABEL_28;
      }
    }

    if (v84)
    {
      v70 = v84 - 1;
    }

    else
    {
      v70 = 0;
    }
  }

LABEL_28:
  if (v82 < v70)
  {
    goto LABEL_89;
  }

  v88 = v82 - 1;
  if (v70 == v82)
  {
    v89 = v82 - 1;
LABEL_40:
    if (v88 >= v70)
    {
      v93 = v70;
    }

    else
    {
      v93 = v82 - 1;
    }

    v86 = v93 & ~(v93 >> 63);
    if (v88 >= v89)
    {
      v94 = v89;
    }

    else
    {
      v94 = v82 - 1;
    }

    if (v94 <= v86)
    {
      v94 = v86;
    }

    v95 = v94 + 1;
    if (v82 < v95)
    {
      goto LABEL_90;
    }

    v96 = *(v83 + 80);
    v193 = v212 + ((v96 + 32) & ~v96);
    v87 = (2 * v95) | 1;

    v194 = v96;
    v199 = v97;
    goto LABEL_50;
  }

  v90 = v70;
  v89 = v82 - 1;
  while ((v70 & 0x8000000000000000) == 0)
  {
    result = sub_22B35DDEC();
    if (result)
    {
      v89 = v90;
      goto LABEL_40;
    }

    v91 = v90 + 1;
    result = sub_22B36074C();
    if ((result & 1) == 0)
    {
      v89 = v90;
    }

    ++v90;
    v92 = v82 == v91;
    v83 = v208;
    if (v92)
    {
      goto LABEL_40;
    }
  }

LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
  return result;
}

uint64_t sub_22B18ABB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v57 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v2 - 8);
  v56 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v54 = &v51 - v5;
  MEMORY[0x28223BE20](v6);
  v51 = &v51 - v7;
  v8 = sub_22B35DA4C();
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x28223BE20](v8);
  v55 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = &v51 - v11;
  MEMORY[0x28223BE20](v12);
  v52 = &v51 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v51 - v15;
  if (qword_27D8B9F90 != -1)
  {
    swift_once();
  }

  v17 = sub_22B35E04C();
  __swift_project_value_buffer(v17, qword_27D8BA3F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA438, &qword_22B364928);
  v18 = sub_22B35E02C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_22B363640;
  v23 = v22 + v21;
  v24 = *(v19 + 104);
  v24(v23, *MEMORY[0x277CC9988], v18);
  v24(v23 + v20, *MEMORY[0x277CC9998], v18);
  v24(v23 + 2 * v20, *MEMORY[0x277CC9968], v18);
  v24(v23 + 3 * v20, *MEMORY[0x277CC9980], v18);
  v24(v23 + 4 * v20, *MEMORY[0x277CC99A0], v18);
  sub_22B310E30(v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v25 = v60;
  sub_22B35DFCC();

  v26 = sub_22B35D9CC();
  if (v27 & 1) != 0 || (v28 = v26, result = sub_22B35DA0C(), (v30))
  {
    (*(v58 + 8))(v16, v59);
    v31 = sub_22B35DE9C();
    return (*(*(v31 - 8) + 16))(v57, v25, v31);
  }

  if (result > 29)
  {
    v41 = v58;
    v40 = v59;
    v42 = v55;
    (*(v58 + 16))(v55, v16, v59);
    sub_22B35DA1C();
    sub_22B35D9DC();
    sub_22B35DA2C();
    sub_22B35D96C();
    v43 = v56;
  }

  else
  {
    if (v28)
    {
      if (!__OFSUB__(v28, 1))
      {
        v33 = v58;
        v32 = v59;
        v34 = v53;
        (*(v58 + 16))(v53, v16, v59);
        sub_22B35DA1C();
        sub_22B35D9DC();
        sub_22B35DA2C();
        sub_22B35D96C();
        v35 = v54;
        sub_22B35DFDC();
        v36 = *(v33 + 8);
        v36(v34, v32);
        v36(v16, v32);
        v37 = sub_22B35DE9C();
        v38 = *(v37 - 8);
        v39 = *(v38 + 48);
        if (v39(v35, 1, v37) != 1)
        {
          return (*(v38 + 32))(v57, v35, v37);
        }

        (*(v38 + 16))(v57, v25, v37);
        result = (v39)(v35, 1, v37);
        if (result != 1)
        {
          return sub_22B123284(v35, &qword_27D8BA340, &qword_22B363FB0);
        }

        return result;
      }

      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

    v41 = v58;
    v40 = v59;
    v42 = v52;
    (*(v58 + 16))(v52, v16, v59);
    sub_22B35DA1C();
    sub_22B35D9DC();
    sub_22B35DA2C();
    sub_22B35D96C();
    v44 = sub_22B35D9AC();
    if (v45)
    {
      v46 = 1;
    }

    else
    {
      v46 = v44;
    }

    result = v46 - 1;
    if (__OFSUB__(v46, 1))
    {
      goto LABEL_25;
    }

    sub_22B35D9BC();
    v43 = v51;
  }

  sub_22B35DFDC();
  v47 = *(v41 + 8);
  v47(v42, v40);
  v47(v16, v40);
  v48 = sub_22B35DE9C();
  v49 = *(v48 - 8);
  v50 = *(v49 + 48);
  if (v50(v43, 1, v48) != 1)
  {
    return (*(v49 + 32))(v57, v43, v48);
  }

  (*(v49 + 16))(v57, v25, v48);
  result = (v50)(v43, 1, v48);
  if (result != 1)
  {
    return sub_22B123284(v43, &qword_27D8BA340, &qword_22B363FB0);
  }

  return result;
}

uint64_t sub_22B18B370(int *a1)
{
  sub_22B36149C();
  sub_22B35DF1C();
  sub_22B18DC68(&unk_27D8BA320, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22B36072C();
  sub_22B36072C();
  sub_22B3608FC();
  sub_22B3608FC();
  sub_22B3608FC();
  sub_22B36072C();
  return sub_22B3614DC();
}

uint64_t sub_22B18B484(uint64_t a1, int *a2)
{
  sub_22B35DF1C();
  sub_22B18DC68(&unk_27D8BA320, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22B36072C();
  sub_22B36072C();
  sub_22B3608FC();
  sub_22B3608FC();
  sub_22B3608FC();
  return sub_22B36072C();
}

uint64_t sub_22B18B580(uint64_t a1, int *a2)
{
  sub_22B36149C();
  sub_22B35DF1C();
  sub_22B18DC68(&unk_27D8BA320, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22B36072C();
  sub_22B36072C();
  sub_22B3608FC();
  sub_22B3608FC();
  sub_22B3608FC();
  sub_22B36072C();
  return sub_22B3614DC();
}

uint64_t sub_22B18B6B4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA408, &unk_22B3648E8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SessionKey(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1 + v9;
  v14 = *(v1 + v9 + *(v8 + 64));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_22B119A60;

  return sub_22B1887AC(a1, v10, v11, v12, v1 + v6, v13, v14);
}

uint64_t sub_22B18B868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B18B8D0(uint64_t a1, uint64_t a2)
{
  if ((sub_22B35DEEC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SessionKey(0);
  if ((sub_22B35DEEC() & 1) == 0)
  {
    return 0;
  }

  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_22B36134C() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[7];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v11 == *v13 && v12 == v13[1];
  if (!v14 && (sub_22B36134C() & 1) == 0)
  {
    return 0;
  }

  v15 = v4[8];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (sub_22B36134C() & 1) == 0)
  {
    return 0;
  }

  return sub_22B35DEEC();
}

uint64_t sub_22B18B9D8(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = a3;
  v5 = sub_22B35DE9C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_22B35DF1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v11);
  (*(v6 + 16))(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = (v10 + *(v6 + 80) + v13) & ~*(v6 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v13, v12, v8);
  (*(v6 + 32))(v15 + v14, &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v16 = v22;
  *(v15 + ((v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_22B1913C8;
  *(v17 + 24) = v15;
  aBlock[4] = sub_22B128240;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_28;
  v18 = _Block_copy(aBlock);
  v19 = v16;

  [v19 performBlockAndWait_];
  _Block_release(v18);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22B18BCE0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v82 = a2;
  v4 = type metadata accessor for SessionKey(0);
  v77 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v72 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA448, &qword_22B364938);
  MEMORY[0x28223BE20](v79);
  v74 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v76 = &v71 - v8;
  MEMORY[0x28223BE20](v9);
  v75 = &v71 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v71 - v12;
  v14 = sub_22B35DF1C();
  v80 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v73 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v17 = sub_22B36081C();
  v81 = [v16 initWithEntityName_];

  v85 = MEMORY[0x277D84F90];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22B364620;
  v19 = sub_22B35DDDC();
  *(v18 + 56) = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
  *(v18 + 64) = sub_22B176FAC(&qword_281408550, &qword_281408558, 0x277CBEAA8);
  *(v18 + 32) = v19;
  v20 = MEMORY[0x277D837D0];
  *(v18 + 96) = MEMORY[0x277D837D0];
  v21 = sub_22B1280E4();
  *(v18 + 72) = 0x6E69676562;
  *(v18 + 80) = 0xE500000000000000;
  *(v18 + 136) = v20;
  *(v18 + 144) = v21;
  *(v18 + 104) = v21;
  *(v18 + 112) = 6581861;
  *(v18 + 120) = 0xE300000000000000;
  v22 = sub_22B360CCC();
  MEMORY[0x23188E350]();
  v23 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v24 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18);
  v78 = v22;
  if (v23 >= v24 >> 1)
  {
LABEL_44:
    sub_22B360A7C();
  }

  sub_22B360A9C();
  v25 = v85;
  sub_22B170BE0(v82, v13, &qword_27D8BA970, &unk_22B363560);
  v26 = v80;
  if ((v80[6])(v13, 1, v14) == 1)
  {
    sub_22B123284(v13, &qword_27D8BA970, &unk_22B363560);
  }

  else
  {
    v27 = v73;
    (v26[4])(v73, v13, v14);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_22B3634B0;
    v82 = v14;
    v29 = v26;
    v30 = sub_22B35DEDC();
    *(v28 + 56) = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
    *(v28 + 64) = sub_22B176FAC(&qword_281408540, &qword_281408548, 0x277CCAD78);
    *(v28 + 32) = v30;
    v31 = sub_22B360CCC();
    MEMORY[0x23188E350]();
    if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22B360A7C();
    }

    sub_22B360A9C();

    v32 = v29[1];
    v14 = (v29 + 1);
    v32(v27, v82);
    v25 = v85;
  }

  v33 = objc_allocWithZone(MEMORY[0x277CCA920]);
  v73 = v25;
  v34 = sub_22B360A3C();
  v35 = [v33 initWithType:1 subpredicates:v34];

  v13 = v81;
  v71 = v35;
  [v81 setPredicate_];
  [v13 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD10, &qword_22B363A30);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_22B364830;
  *(v36 + 32) = 0x44497463656A626FLL;
  *(v36 + 40) = 0xE800000000000000;
  *(v36 + 56) = v20;
  strcpy((v36 + 64), "homeIdentifier");
  *(v36 + 79) = -18;
  *(v36 + 88) = v20;
  strcpy((v36 + 96), "siteIdentifier");
  *(v36 + 111) = -18;
  *(v36 + 120) = v20;
  *(v36 + 128) = 0xD000000000000010;
  *(v36 + 136) = 0x800000022B36AF80;
  *(v36 + 152) = v20;
  *(v36 + 160) = 0xD000000000000010;
  *(v36 + 168) = 0x800000022B36AFA0;
  *(v36 + 184) = v20;
  *(v36 + 192) = 0x496E6F6973736573;
  *(v36 + 200) = 0xE900000000000044;
  *(v36 + 216) = v20;
  strcpy((v36 + 224), "sessionState");
  *(v36 + 237) = 0;
  *(v36 + 238) = -5120;
  *(v36 + 280) = v20;
  *(v36 + 248) = v20;
  strcpy((v36 + 256), "loadEventType");
  *(v36 + 270) = -4864;
  v37 = sub_22B360A3C();

  [v13 setPropertiesToFetch_];

  [v13 setFetchBatchSize_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_22B363650;
  v39 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v40 = sub_22B36081C();
  v41 = [v39 initWithKey:v40 ascending:1];

  *(v38 + 32) = v41;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v42 = sub_22B360A3C();

  [v13 setSortDescriptors_];

  v43 = 0;
  v84 = sub_22B3223E8(MEMORY[0x277D84F90]);
  v80 = a3;
  while (2)
  {
    v44 = v81;
    [v81 setFetchOffset_];
    [v44 setFetchLimit_];
    sub_22B128014(0, &qword_27D8BA3D8, 0x277CBEAC0);
    v45 = sub_22B360E9C();
    v46 = v45;
    v47 = v45 >> 62;
    if (v45 >> 62)
    {
      v48 = sub_22B36109C();
      if (v48)
      {
        goto LABEL_10;
      }

LABEL_25:

      a3 = v80;
      break;
    }

    v48 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v48)
    {
      goto LABEL_25;
    }

LABEL_10:
    v82 = v47;
    v20 = 0;
    a3 = (v46 & 0xC000000000000001);
    do
    {
      if (a3)
      {
        v49 = MEMORY[0x23188EAC0](v20, v46);
      }

      else
      {
        if (v20 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v49 = *(v46 + 8 * v20 + 32);
      }

      v50 = v49;
      v13 = (v20 + 1);
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v14 = MEMORY[0x23188EEB0]();
      sub_22B184538(v50, &v84);
      objc_autoreleasePoolPop(v14);

      ++v20;
    }

    while (v13 != v48);
    v51 = __OFADD__(v43, 100);
    v43 += 100;
    if (v51)
    {
      goto LABEL_43;
    }

    if (v82)
    {
      v52 = sub_22B36109C();
    }

    else
    {
      v52 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a3 = v80;

    if (v52 >= 100)
    {
      [a3 reset];
      continue;
    }

    break;
  }

  [a3 reset];
  v54 = (v84 + 64);
  v53 = *(v84 + 64);
  v82 = v84;
  v83 = MEMORY[0x277D84FA0];
  v55 = 1 << *(v84 + 32);
  v56 = -1;
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  v57 = v56 & v53;
  v73 = v74 + 1;
  v20 = (v55 + 63) >> 6;

  v14 = 0;
  v58 = v78;
  v80 = v54;
  while (v57)
  {
LABEL_35:
    v60 = __clz(__rbit64(v57)) | (v14 << 6);
    v61 = v82;
    v62 = v75;
    sub_22B18B868(*(v82 + 48) + *(v77 + 72) * v60, v75, type metadata accessor for SessionKey);
    v63 = (*(v61 + 56) + 2 * v60);
    LODWORD(v60) = *v63;
    v64 = v63[1];
    v65 = v76;
    v13 = (v76 + *(v79 + 48));
    sub_22B19127C(v62, v76, type metadata accessor for SessionKey);
    *v13 = v60;
    v13[1] = v64;
    v66 = v60 == 1;
    a3 = &qword_22B364938;
    if (v66)
    {
      v67 = v74;
      sub_22B170BE0(v65, v74, &qword_27D8BA448, &qword_22B364938);
      v68 = v73[*(v79 + 48)];
      sub_22B1912E4(v67, type metadata accessor for SessionKey);
      if (v68)
      {
        v13 = v74;
        sub_22B170BE0(v65, v74, &qword_27D8BA448, &qword_22B364938);
        v69 = v72;
        sub_22B32E908(v72, v13);
        sub_22B1912E4(v69, type metadata accessor for SessionKey);
      }
    }

    v57 &= v57 - 1;
    sub_22B123284(v65, &qword_27D8BA448, &qword_22B364938);
    v58 = v78;
    v54 = v80;
  }

  while (1)
  {
    v59 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_42;
    }

    if (v59 >= v20)
    {
      break;
    }

    v57 = v54[v59];
    ++v14;
    if (v57)
    {
      v14 = v59;
      goto LABEL_35;
    }
  }

  return v83;
}

void sub_22B18C8B8(uint64_t a1, uint64_t a2, void *a3)
{
  v77 = a3;
  Event = type metadata accessor for CDRawLoadEvent(0);
  v75 = *(Event - 8);
  MEMORY[0x28223BE20](Event - 8);
  v82 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v75 - v8;
  v10 = sub_22B35DE9C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v15 = sub_22B36081C();
  v76 = [v14 initWithEntityName_];

  sub_22B170BE0(a2, v9, &qword_27D8BA340, &qword_22B363FB0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_22B123284(v9, &qword_27D8BA340, &qword_22B363FB0);
    v81 = sub_22B128014(0, &qword_281409330, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_22B363640;
    v17 = sub_22B35DEDC();
    v18 = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
    *(v16 + 56) = v18;
    v19 = sub_22B176FAC(&qword_281408540, &qword_281408548, 0x277CCAD78);
    *(v16 + 64) = v19;
    *(v16 + 32) = v17;
    v20 = type metadata accessor for SessionKey(0);
    v21 = sub_22B35DEDC();
    *(v16 + 96) = v18;
    *(v16 + 104) = v19;
    *(v16 + 72) = v21;
    v22 = (a1 + *(v20 + 24));
    v24 = *v22;
    v23 = v22[1];
    v25 = MEMORY[0x277D837D0];
    *(v16 + 136) = MEMORY[0x277D837D0];
    v26 = sub_22B1280E4();
    *(v16 + 144) = v26;
    *(v16 + 112) = v24;
    *(v16 + 120) = v23;
    v27 = (a1 + *(v20 + 28));
    v28 = *v27;
    v29 = v27[1];
    *(v16 + 176) = v25;
    *(v16 + 184) = v26;
    *(v16 + 152) = v28;
    *(v16 + 160) = v29;

    v30 = sub_22B35DEDC();
    *(v16 + 216) = v18;
    *(v16 + 224) = v19;
    *(v16 + 192) = v30;
    v31 = sub_22B360CCC();
    v32 = v76;
    [v76 setPredicate_];
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v33 = sub_22B128014(0, &qword_281409330, 0x277CCAC30);
    v80 = " %@ AND sessionID == %@";
    v81 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_22B363660;
    v35 = sub_22B35DEDC();
    v36 = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
    *(v34 + 56) = v36;
    v37 = sub_22B176FAC(&qword_281408540, &qword_281408548, 0x277CCAD78);
    *(v34 + 64) = v37;
    *(v34 + 32) = v35;
    v38 = type metadata accessor for SessionKey(0);
    v39 = sub_22B35DEDC();
    *(v34 + 96) = v36;
    *(v34 + 104) = v37;
    *(v34 + 72) = v39;
    v40 = (a1 + *(v38 + 24));
    v78 = v13;
    v79 = v10;
    v42 = *v40;
    v41 = v40[1];
    v43 = MEMORY[0x277D837D0];
    *(v34 + 136) = MEMORY[0x277D837D0];
    v44 = sub_22B1280E4();
    *(v34 + 144) = v44;
    *(v34 + 112) = v42;
    *(v34 + 120) = v41;
    v45 = (a1 + *(v38 + 28));
    v46 = *v45;
    v47 = v45[1];
    *(v34 + 176) = v43;
    *(v34 + 184) = v44;
    *(v34 + 152) = v46;
    *(v34 + 160) = v47;

    v48 = sub_22B35DEDC();
    *(v34 + 216) = v36;
    *(v34 + 224) = v37;
    *(v34 + 192) = v48;
    v49 = v78;
    v50 = sub_22B35DDDC();
    *(v34 + 256) = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
    *(v34 + 264) = sub_22B176FAC(&qword_281408550, &qword_281408558, 0x277CBEAA8);
    *(v34 + 232) = v50;
    v51 = sub_22B360CCC();
    v32 = v76;
    [v76 setPredicate_];

    (*(v11 + 8))(v49, v79);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_22B363650;
  v53 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v54 = sub_22B36081C();
  v55 = [v53 initWithKey:v54 ascending:1];

  *(v52 + 32) = v55;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v56 = sub_22B360A3C();

  [v32 setSortDescriptors_];

  [v32 setResultType_];
  [v32 setFetchBatchSize_];
  v57 = 0;
  v58 = 0;
  v83 = MEMORY[0x277D84F90];
  v59 = v77;
  while (2)
  {
    [v32 setFetchOffset_];
    [v32 setFetchLimit_];
    sub_22B35F46C();
    v60 = sub_22B360E9C();
    if (v58)
    {

      break;
    }

    v61 = v60;
    v62 = v60 >> 62;
    if (!(v60 >> 62))
    {
      v63 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v63)
      {
        goto LABEL_8;
      }

LABEL_28:

      break;
    }

    v63 = sub_22B36109C();
    if (!v63)
    {
      goto LABEL_28;
    }

LABEL_8:
    v78 = 0;
    v79 = v62;
    v81 = v57;
    v80 = MEMORY[0x23188EEB0]();
    v64 = 0;
    v65 = v61 & 0xC000000000000001;
    v66 = v61 & 0xFFFFFFFFFFFFFF8;
    v67 = MEMORY[0x277D84F90];
    v68 = v75;
    v69 = v61;
    do
    {
      if (v65)
      {
        v70 = MEMORY[0x23188EAC0](v64, v61);
        v71 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v64 >= *(v66 + 16))
        {
          goto LABEL_32;
        }

        v70 = *(v61 + 8 * v64 + 32);
        v71 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          return;
        }
      }

      sub_22B181D80(v70, v82);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_22B32D55C(0, v67[2] + 1, 1, v67);
      }

      v73 = v67[2];
      v72 = v67[3];
      if (v73 >= v72 >> 1)
      {
        v67 = sub_22B32D55C((v72 > 1), v73 + 1, 1, v67);
      }

      v67[2] = v73 + 1;
      sub_22B19127C(v82, v67 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v73, type metadata accessor for CDRawLoadEvent);
      ++v64;
      v61 = v69;
    }

    while (v71 != v63);
    objc_autoreleasePoolPop(v80);
    sub_22B35515C(v67);
    v57 = v81 + 50;
    if (__OFADD__(v81, 50))
    {
      goto LABEL_33;
    }

    if (v79)
    {
      v74 = sub_22B36109C();
    }

    else
    {
      v74 = *(v66 + 16);
    }

    v32 = v76;
    v59 = v77;

    if (v74 >= 50)
    {
      [v59 reset];
      v58 = v78;
      continue;
    }

    break;
  }

  [v59 reset];
}

unint64_t sub_22B18D174(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v5 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v6 = sub_22B36081C();
  v7 = [v5 initWithEntityName_];

  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22B364620;
  v9 = sub_22B35DEDC();
  v10 = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
  *(v8 + 56) = v10;
  v11 = sub_22B176FAC(&qword_281408540, &qword_281408548, 0x277CCAD78);
  *(v8 + 64) = v11;
  *(v8 + 32) = v9;
  v68 = a2;
  v12 = sub_22B35DEDC();
  *(v8 + 96) = v10;
  *(v8 + 104) = v11;
  *(v8 + 72) = v12;
  *(v8 + 136) = MEMORY[0x277D837D0];
  v13 = sub_22B1280E4();
  *(v8 + 144) = v13;
  *(v8 + 112) = 0x6E69676562;
  *(v8 + 120) = 0xE500000000000000;
  v14 = v7;
  v15 = sub_22B360CCC();
  [v7 setPredicate_];

  [v7 setResultType_];
  sub_22B128014(0, &qword_281409278, 0x277CCABB0);
  v16 = sub_22B360E9C();
  v66 = v10;
  if (v16 >> 62)
  {
    v56 = v16;
    v17 = sub_22B36109C();
    v16 = v56;
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = v11;
  if (!v17)
  {

    return 0;
  }

  v65 = v14;
  if ((v16 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x23188EAC0](0);
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_35:
      sub_22B360A7C();
      goto LABEL_12;
    }

    v19 = *(v16 + 32);
  }

  v20 = v19;

  v21 = [v20 integerValue];

  if (v21)
  {
    v22 = v65;
LABEL_9:

    return 0;
  }

  v23 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v24 = sub_22B36081C();
  v64 = [v23 initWithEntityName_];

  v69 = MEMORY[0x277D84F90];
  v25 = swift_allocObject();
  v62 = xmmword_22B3634C0;
  *(v25 + 16) = xmmword_22B3634C0;
  v26 = sub_22B35DEDC();
  *(v25 + 56) = v10;
  *(v25 + 64) = v11;
  *(v25 + 32) = v26;
  v27 = sub_22B35DEDC();
  *(v25 + 96) = v10;
  *(v25 + 104) = v11;
  *(v25 + 72) = v27;
  v10 = sub_22B360CCC();
  MEMORY[0x23188E350]();
  if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_35;
  }

LABEL_12:
  v28 = 6581861;
  sub_22B360A9C();
  v29 = swift_allocObject();
  *(v29 + 16) = v62;
  v30 = MEMORY[0x277D837D0];
  *(v29 + 56) = MEMORY[0x277D837D0];
  *(v29 + 64) = v13;
  *(v29 + 32) = 0x657669746361;
  *(v29 + 40) = 0xE600000000000000;
  *(v29 + 96) = v30;
  *(v29 + 104) = v13;
  *(v29 + 72) = 6581861;
  *(v29 + 80) = 0xE300000000000000;
  v31 = sub_22B360CCC();
  MEMORY[0x23188E350]();
  if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22B360A7C();
  }

  v61 = v31;
  v63 = v10;
  sub_22B360A9C();
  v32 = sub_22B360CCC();
  MEMORY[0x23188E350]();
  v33 = v66;
  if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22B360A7C();
  }

  sub_22B360A9C();
  v34 = objc_allocWithZone(MEMORY[0x277CCA920]);
  v35 = sub_22B360A3C();

  v36 = [v34 initWithType:1 subpredicates:v35];

  v37 = v64;
  [v64 setPredicate_];
  [v64 setResultType_];
  result = sub_22B360E9C();
  v39 = v32;
  v40 = v68;
  v60 = v36;
  v67 = v39;
  v41 = v65;
  if (result >> 62)
  {
    v57 = result;
    v42 = sub_22B36109C();
    result = v57;
  }

  else
  {
    v42 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v42)
  {

    return 0;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v43 = MEMORY[0x23188EAC0](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_39;
    }

    v43 = *(result + 32);
  }

  v44 = v43;

  v28 = [v44 integerValue];

  v45 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v46 = sub_22B36081C();
  v47 = [v45 initWithEntityName_];

  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_22B364840;
  v49 = sub_22B35DEDC();
  *(v48 + 56) = v66;
  *(v48 + 64) = v18;
  *(v48 + 32) = v49;
  v40 = v47;
  v50 = sub_22B35DEDC();
  *(v48 + 96) = v66;
  *(v48 + 104) = v18;
  *(v48 + 72) = v50;
  v51 = MEMORY[0x277D837D0];
  *(v48 + 136) = MEMORY[0x277D837D0];
  *(v48 + 144) = v13;
  *(v48 + 112) = 0x657669746361;
  *(v48 + 120) = 0xE600000000000000;
  *(v48 + 176) = v51;
  *(v48 + 184) = v13;
  *(v48 + 152) = 6581861;
  *(v48 + 160) = 0xE300000000000000;
  v52 = sub_22B360CCC();
  [v47 setPredicate_];

  [v47 setResultType_];
  result = sub_22B360E9C();
  v33 = v65;
  v37 = v64;
  v13 = v63;
  v41 = v67;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

LABEL_40:

    v22 = v61;
    goto LABEL_9;
  }

LABEL_39:
  v58 = result;
  v59 = sub_22B36109C();
  result = v58;
  if (!v59)
  {
    goto LABEL_40;
  }

LABEL_28:
  if ((result & 0xC000000000000001) != 0)
  {
    v53 = MEMORY[0x23188EAC0](0);
    goto LABEL_31;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v53 = *(result + 32);
LABEL_31:
    v54 = v53;

    v55 = [v54 integerValue];

    return v28 == v55;
  }

  __break(1u);
  return result;
}

unint64_t sub_22B18DAE8()
{
  v1 = *(type metadata accessor for SessionKey(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 31) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  v9 = *(v0 + v6);
  v10 = v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v0 + v7);

  return sub_22B189710(v8, v0 + v2, (v0 + v5), v9, v11, v12, v13);
}

uint64_t sub_22B18DC30(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B18DC68(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22B18DCB0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  Event = type metadata accessor for CDRawLoadEvent(0);
  v7 = *(Event - 8);
  MEMORY[0x28223BE20](Event);
  v50 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = &v49 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA428, &qword_22B364920);
  MEMORY[0x28223BE20](v14 - 8);
  v51 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v53 = &v49 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v49 - v23;
  v25 = *(v7 + 56);
  v25(&v49 - v23, 1, 1, Event, v22);
  v55 = v20;
  v56 = v25;
  v57 = v7 + 56;
  result = (v25)(v20, 1, 1, Event);
  v54 = a3;
  v27 = *a3;
  v28 = Event;
  if (v27 >= 1)
  {
    while (v27 < *(a1 + 16))
    {
      result = sub_22B35DDEC();
      if ((result & 1) == 0)
      {
        goto LABEL_7;
      }

      if (v27-- <= 1)
      {
        v27 = 0;
        v30 = *(a1 + 16);
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_7:
  v30 = *(a1 + 16);
  if (v30 < v27)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_8:
  v58 = a2;
  if (v27 != v30)
  {
    v32 = v27;
    v31 = v27;
    while ((v27 & 0x8000000000000000) == 0)
    {
      v33 = v32;
      sub_22B18B868(a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v32, v13, type metadata accessor for CDRawLoadEvent);
      sub_22B35DE9C();
      sub_22B18DC68(&qword_28140B490, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      if (sub_22B36074C())
      {
        v34 = v55;
        sub_22B123284(v55, &qword_27D8BA428, &qword_22B364920);
        sub_22B19127C(v13, v34, type metadata accessor for CDRawLoadEvent);
        (v56)(v34, 0, 1, v28);
        goto LABEL_17;
      }

      ++v32;
      sub_22B123284(v24, &qword_27D8BA428, &qword_22B364920);
      sub_22B19127C(v13, v24, type metadata accessor for CDRawLoadEvent);
      result = (v56)(v24, 0, 1, v28);
      v31 = v33;
      if (v30 == v33 + 1)
      {
        v31 = v33;
        goto LABEL_15;
      }
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v31 = v27;
LABEL_15:
  v34 = v55;
LABEL_17:
  v35 = v53;
  *v54 = v31;
  sub_22B170BE0(v24, v35, &qword_27D8BA428, &qword_22B364920);
  v36 = *(v7 + 48);
  if (v36(v35, 1, v28) == 1)
  {
    sub_22B123284(v34, &qword_27D8BA428, &qword_22B364920);
    sub_22B123284(v24, &qword_27D8BA428, &qword_22B364920);
    sub_22B123284(v35, &qword_27D8BA428, &qword_22B364920);
    return 0;
  }

  v38 = v52;
  sub_22B19127C(v35, v52, type metadata accessor for CDRawLoadEvent);
  v39 = v51;
  sub_22B170BE0(v34, v51, &qword_27D8BA428, &qword_22B364920);
  if (v36(v39, 1, v28) == 1)
  {
    sub_22B123284(v34, &qword_27D8BA428, &qword_22B364920);
    sub_22B123284(v24, &qword_27D8BA428, &qword_22B364920);
    sub_22B123284(v39, &qword_27D8BA428, &qword_22B364920);
    v37 = *(v38 + *(v28 + 68));
    sub_22B1912E4(v38, type metadata accessor for CDRawLoadEvent);
    return v37;
  }

  v40 = v50;
  sub_22B19127C(v39, v50, type metadata accessor for CDRawLoadEvent);
  sub_22B35DE9C();
  sub_22B18DC68(&qword_27D8BA430, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  if (sub_22B36078C())
  {
    sub_22B1912E4(v40, type metadata accessor for CDRawLoadEvent);
    sub_22B123284(v34, &qword_27D8BA428, &qword_22B364920);
    sub_22B123284(v24, &qword_27D8BA428, &qword_22B364920);
    v37 = *(v38 + *(v28 + 68));
    sub_22B1912E4(v38, type metadata accessor for CDRawLoadEvent);
    return v37;
  }

  sub_22B35DD3C();
  v42 = v41;
  sub_22B35DD3C();
  v44 = v43;
  sub_22B123284(v34, &qword_27D8BA428, &qword_22B364920);
  sub_22B123284(v24, &qword_27D8BA428, &qword_22B364920);
  v45 = *(v40 + *(v28 + 68));
  sub_22B1912E4(v40, type metadata accessor for CDRawLoadEvent);
  v46 = *(v38 + *(v28 + 68));
  result = sub_22B1912E4(v38, type metadata accessor for CDRawLoadEvent);
  if (__OFSUB__(v45, v46))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v47 = v44 / v42 * (v45 - v46);
  if (COERCE__INT64(fabs(v47)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v47 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v47 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v48 = __OFADD__(v46, v47);
  v37 = v46 + v47;
  if (!v48)
  {
    return v37;
  }

LABEL_36:
  __break(1u);
  return result;
}

unint64_t sub_22B18E3FC(uint64_t a1)
{
  v2 = sub_22B35DE9C();
  v111 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v93[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Event = type metadata accessor for CDRawLoadEvent(0);
  v6 = *(Event - 8);
  MEMORY[0x28223BE20](Event);
  v100 = &v93[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v99 = &v93[-v9];
  MEMORY[0x28223BE20](v10);
  v12 = &v93[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA428, &qword_22B364920);
  MEMORY[0x28223BE20](v13 - 8);
  v102 = &v93[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v101 = &v93[-v16];
  MEMORY[0x28223BE20](v17);
  v97 = &v93[-v18];
  MEMORY[0x28223BE20](v19);
  v21 = &v93[-v20];
  v23 = MEMORY[0x28223BE20](v22);
  v24 = *(v6 + 56);
  v110 = &v93[-v25];
  v24(v23);
  v103 = v21;
  v113 = Event;
  v108 = v24;
  v109 = v6 + 56;
  (v24)(v21, 1, 1, Event);
  v26 = *(a1 + 16);
  v105 = v6;
  if (!v26)
  {
    LOBYTE(v31) = 0;
    LOBYTE(v28) = 0;
    v30 = MEMORY[0x277D84F90];
    goto LABEL_47;
  }

  v112 = v2;
  v27 = 0;
  v28 = 0;
  v107 = 0;
  v29 = 0;
  v104 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  ++v111;
  v95 = (v6 + 48);
  v30 = MEMORY[0x277D84F90];
LABEL_3:
  v31 = v27;
  v96 = v27;
  do
  {
    v98 = v31;
    while (1)
    {
      v106 = v30;
      if (v29 >= v26)
      {
        goto LABEL_92;
      }

      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_93;
      }

      Event = *(v105 + 72);
      sub_22B18B868(v104 + Event * v29, v12, type metadata accessor for CDRawLoadEvent);
      sub_22B35D89C();
      v32 = sub_22B35DDFC();
      v33 = *v111;
      (*v111)(v4, v112);
      if (!(v107 & 1 | ((v32 & 1) == 0)))
      {
        v35 = v110;
        sub_22B123284(v110, &qword_27D8BA428, &qword_22B364920);
        sub_22B19127C(v12, v35, type metadata accessor for CDRawLoadEvent);
        (v108)(v35, 0, 1, v113);
        if (v30 == v26)
        {
LABEL_45:
          LOBYTE(v28) = 0;
          v30 = v106;
          LOBYTE(v31) = v98;
          goto LABEL_47;
        }

        v36 = v104 + Event * v30;
        while (v30 < v26)
        {
          v29 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            goto LABEL_93;
          }

          sub_22B18B868(v36, v12, type metadata accessor for CDRawLoadEvent);
          sub_22B35D89C();
          v37 = sub_22B35DDFC();
          v33(v4, v112);
          if ((v37 & 1) == 0)
          {
            v32 = 0;
            v34 = 0;
            v107 = 0;
            goto LABEL_17;
          }

          v38 = v110;
          sub_22B123284(v110, &qword_27D8BA428, &qword_22B364920);
          sub_22B19127C(v12, v38, type metadata accessor for CDRawLoadEvent);
          (v108)(v38, 0, 1, v113);
          ++v30;
          v36 += Event;
          if (v29 == v26)
          {
            goto LABEL_45;
          }
        }

LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        v92 = v103;
        sub_22B123284(v103, &qword_27D8BA428, &qword_22B364920);
        sub_22B19127C(v12, v92, type metadata accessor for CDRawLoadEvent);
        (v108)(v92, 0, 1, v113);
        LOBYTE(v31) = 0;
        LOBYTE(v28) = Event;
        goto LABEL_47;
      }

      v34 = v28;
      ++v29;
LABEL_17:
      sub_22B35D89C();
      v39 = sub_22B35DE4C();
      v33(v4, v112);
      v30 = v106;
      if ((v39 & 1) == 0)
      {
        break;
      }

      v40 = *&v12[*(v113 + 44)];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_22B32D584(0, *(v30 + 2) + 1, 1, v30);
      }

      Event = *(v30 + 2);
      v41 = *(v30 + 3);
      if (Event >= v41 >> 1)
      {
        v30 = sub_22B32D584((v41 > 1), Event + 1, 1, v30);
      }

      sub_22B1912E4(v12, type metadata accessor for CDRawLoadEvent);
      *(v30 + 2) = Event + 1;
      *&v30[4 * Event + 32] = v40;
      v28 = 1;
      v107 = 1;
      if (v29 == v26)
      {
        LOBYTE(v31) = v98;
        goto LABEL_47;
      }
    }

    LODWORD(Event) = v32 | v34;
    sub_22B35D86C();
    v94 = sub_22B35DE4C();
    v42 = v112;
    v33(v4, v112);
    if (v94)
    {
      v52 = *&v12[*(v113 + 44)];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_22B32D584(0, *(v30 + 2) + 1, 1, v30);
      }

      v28 = Event;
      Event = *(v30 + 2);
      v53 = *(v30 + 3);
      if (Event >= v53 >> 1)
      {
        v30 = sub_22B32D584((v53 > 1), Event + 1, 1, v30);
      }

      sub_22B1912E4(v12, type metadata accessor for CDRawLoadEvent);
      *(v30 + 2) = Event + 1;
      *&v30[4 * Event + 32] = v52;
      v27 = 1;
      LOBYTE(v31) = 1;
      if (v29 == v26)
      {
        break;
      }

      goto LABEL_3;
    }

    sub_22B35D86C();
    v94 = sub_22B35DDEC();
    v33(v4, v42);
    if ((v94 & 1) == 0)
    {
      v31 = v98;
      goto LABEL_29;
    }

    v43 = v97;
    sub_22B170BE0(v103, v97, &qword_27D8BA428, &qword_22B364920);
    v44 = (*v95)(v43, 1, v113);
    v45 = v44 == 1;
    v94 = v44 != 1;
    sub_22B123284(v43, &qword_27D8BA428, &qword_22B364920);
    if (((v94 | v96) & 1) == 0)
    {
      goto LABEL_94;
    }

    v31 = v45 | v98;
LABEL_29:
    sub_22B35D89C();
    v46 = sub_22B35DDEC();
    v33(v4, v112);
    if (v46 & 1) != 0 && (sub_22B35D86C(), v47 = sub_22B35DDFC(), v33(v4, v112), (v47))
    {
      v48 = *&v12[*(v113 + 44)];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_22B32D584(0, *(v30 + 2) + 1, 1, v30);
      }

      v51 = *(v30 + 2);
      v50 = *(v30 + 3);
      if (v51 >= v50 >> 1)
      {
        v30 = sub_22B32D584((v50 > 1), v51 + 1, 1, v30);
      }

      sub_22B1912E4(v12, type metadata accessor for CDRawLoadEvent);
      *(v30 + 2) = v51 + 1;
      *&v30[4 * v51 + 32] = v48;
      v31 = v98;
    }

    else
    {
      sub_22B1912E4(v12, type metadata accessor for CDRawLoadEvent);
    }

    v28 = Event;
  }

  while (v29 != v26);
LABEL_47:
  v54 = v101;
  sub_22B170BE0(v110, v101, &qword_27D8BA428, &qword_22B364920);
  v55 = *(v105 + 48);
  if ((v55)(v54, 1, v113) == 1)
  {
    sub_22B123284(v54, &qword_27D8BA428, &qword_22B364920);
  }

  else
  {
    v12 = v99;
    sub_22B19127C(v54, v99, type metadata accessor for CDRawLoadEvent);
    if ((v28 & 1) == 0)
    {
      v57 = *&v12[*(v113 + 44)];
      v58 = swift_isUniquelyReferenced_nonNull_native();
      v56 = v103;
      if (v58)
      {
        goto LABEL_53;
      }

      goto LABEL_96;
    }

    sub_22B1912E4(v12, type metadata accessor for CDRawLoadEvent);
  }

  v56 = v103;
  while (2)
  {
    v61 = v102;
    sub_22B170BE0(v56, v102, &qword_27D8BA428, &qword_22B364920);
    if ((v55)(v61, 1, v113) == 1)
    {
      sub_22B123284(v61, &qword_27D8BA428, &qword_22B364920);
      v62 = *(v30 + 2);
      if (!v62)
      {
        goto LABEL_70;
      }

LABEL_61:
      v65 = *(v30 + 8);
      v66 = v62 - 1;
      if (v62 == 1)
      {
        v57 = *(v30 + 8);
        v67 = v57;
        goto LABEL_87;
      }

      if (v62 > 8)
      {
        v68 = v66 & 0xFFFFFFFFFFFFFFF8 | 1;
        v72 = vdupq_n_s32(v65);
        v73 = (v30 + 52);
        v74 = v66 & 0xFFFFFFFFFFFFFFF8;
        v75 = v72;
        do
        {
          v72 = vminq_s32(v73[-1], v72);
          v75 = vminq_s32(*v73, v75);
          v73 += 2;
          v74 -= 8;
        }

        while (v74);
        v65 = vminvq_s32(vminq_s32(v72, v75));
        if (v66 != (v66 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_74;
        }
      }

      else
      {
        v68 = 1;
LABEL_74:
        v76 = v62 - v68;
        v77 = &v30[4 * v68 + 32];
        do
        {
          v79 = *v77;
          v77 += 4;
          v78 = v79;
          if (v79 < v65)
          {
            v65 = v78;
          }

          --v76;
        }

        while (v76);
      }

      v57 = v65;
      v67 = *(v30 + 8);
      if (v62 >= 9)
      {
        v80 = v66 & 0xFFFFFFFFFFFFFFF8 | 1;
        v81 = vdupq_n_s32(v67);
        v82 = (v30 + 52);
        v83 = v66 & 0xFFFFFFFFFFFFFFF8;
        v84 = v81;
        do
        {
          v81 = vmaxq_s32(v81, v82[-1]);
          v84 = vmaxq_s32(v84, *v82);
          v82 += 2;
          v83 -= 8;
        }

        while (v83);
        v67 = vmaxvq_s32(vmaxq_s32(v81, v84));
        if (v66 == (v66 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_87;
        }
      }

      else
      {
        v80 = 1;
      }

      v85 = v62 - v80;
      v86 = &v30[4 * v80 + 32];
      do
      {
        v88 = *v86;
        v86 += 4;
        v87 = v88;
        if (v67 <= v88)
        {
          v67 = v87;
        }

        --v85;
      }

      while (v85);
    }

    else
    {
      v63 = v61;
      v64 = v100;
      sub_22B19127C(v63, v100, type metadata accessor for CDRawLoadEvent);
      if (v31)
      {
        sub_22B1912E4(v64, type metadata accessor for CDRawLoadEvent);
        v62 = *(v30 + 2);
        if (!v62)
        {
          goto LABEL_70;
        }

        goto LABEL_61;
      }

      v69 = *&v64[*(v113 + 44)];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_22B32D584(0, *(v30 + 2) + 1, 1, v30);
      }

      v71 = *(v30 + 2);
      v70 = *(v30 + 3);
      if (v71 >= v70 >> 1)
      {
        v30 = sub_22B32D584((v70 > 1), v71 + 1, 1, v30);
      }

      sub_22B1912E4(v100, type metadata accessor for CDRawLoadEvent);
      *(v30 + 2) = v71 + 1;
      *&v30[4 * v71 + 32] = v69;
      v62 = *(v30 + 2);
      if (v62)
      {
        goto LABEL_61;
      }

LABEL_70:
      v57 = 0;
      v67 = 0;
    }

LABEL_87:
    v89 = v62 == 0;

    v55 = &qword_22B364920;
    sub_22B123284(v56, &qword_27D8BA428, &qword_22B364920);
    sub_22B123284(v110, &qword_27D8BA428, &qword_22B364920);
    if (v89)
    {
      v90 = 0;
    }

    else
    {
      v90 = v67;
    }

    if (v90 < v57)
    {
      __break(1u);
LABEL_96:
      v30 = sub_22B32D584(0, *(v30 + 2) + 1, 1, v30);
LABEL_53:
      v60 = *(v30 + 2);
      v59 = *(v30 + 3);
      if (v60 >= v59 >> 1)
      {
        v30 = sub_22B32D584((v59 > 1), v60 + 1, 1, v30);
      }

      sub_22B1912E4(v12, type metadata accessor for CDRawLoadEvent);
      *(v30 + 2) = v60 + 1;
      *&v30[4 * v60 + 32] = v57;
      continue;
    }

    return v57 | (v90 << 32);
  }
}

uint64_t sub_22B18F110(uint64_t a1)
{
  v2 = sub_22B35DE9C();
  v114 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v96[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Event = type metadata accessor for CDRawLoadEvent(0);
  v6 = *(Event - 8);
  MEMORY[0x28223BE20](Event);
  v103 = &v96[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v102 = &v96[-v9];
  MEMORY[0x28223BE20](v10);
  v12 = &v96[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA428, &qword_22B364920);
  MEMORY[0x28223BE20](v13 - 8);
  v105 = &v96[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v104 = &v96[-v16];
  MEMORY[0x28223BE20](v17);
  v100 = &v96[-v18];
  MEMORY[0x28223BE20](v19);
  v21 = &v96[-v20];
  v23 = MEMORY[0x28223BE20](v22);
  v24 = *(v6 + 56);
  v113 = &v96[-v25];
  v24(v23);
  v106 = v21;
  v116 = Event;
  v111 = v24;
  v112 = v6 + 56;
  (v24)(v21, 1, 1, Event);
  v26 = *(a1 + 16);
  v108 = v6;
  if (!v26)
  {
    LOBYTE(v31) = 0;
    LOBYTE(v28) = 0;
    v30 = MEMORY[0x277D84F90];
    goto LABEL_47;
  }

  v115 = v2;
  v27 = 0;
  v28 = 0;
  v110 = 0;
  v29 = 0;
  v107 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  ++v114;
  v98 = (v6 + 48);
  v30 = MEMORY[0x277D84F90];
LABEL_3:
  v31 = v27;
  v99 = v27;
  do
  {
    v101 = v31;
    while (1)
    {
      v109 = v30;
      if (v29 >= v26)
      {
        goto LABEL_89;
      }

      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_90;
      }

      Event = *(v108 + 72);
      sub_22B18B868(v107 + Event * v29, v12, type metadata accessor for CDRawLoadEvent);
      sub_22B35D89C();
      v32 = sub_22B35DDFC();
      v33 = *v114;
      (*v114)(v4, v115);
      if (!(v110 & 1 | ((v32 & 1) == 0)))
      {
        v35 = v113;
        sub_22B123284(v113, &qword_27D8BA428, &qword_22B364920);
        sub_22B19127C(v12, v35, type metadata accessor for CDRawLoadEvent);
        (v111)(v35, 0, 1, v116);
        if (v30 == v26)
        {
LABEL_45:
          LOBYTE(v28) = 0;
          v30 = v109;
          LOBYTE(v31) = v101;
          goto LABEL_47;
        }

        v36 = v107 + Event * v30;
        while (v30 < v26)
        {
          v29 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            goto LABEL_90;
          }

          sub_22B18B868(v36, v12, type metadata accessor for CDRawLoadEvent);
          sub_22B35D89C();
          v37 = sub_22B35DDFC();
          v33(v4, v115);
          if ((v37 & 1) == 0)
          {
            v32 = 0;
            v34 = 0;
            v110 = 0;
            goto LABEL_17;
          }

          v38 = v113;
          sub_22B123284(v113, &qword_27D8BA428, &qword_22B364920);
          sub_22B19127C(v12, v38, type metadata accessor for CDRawLoadEvent);
          (v111)(v38, 0, 1, v116);
          ++v30;
          v36 += Event;
          if (v29 == v26)
          {
            goto LABEL_45;
          }
        }

LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        v95 = v106;
        sub_22B123284(v106, &qword_27D8BA428, &qword_22B364920);
        sub_22B19127C(v12, v95, type metadata accessor for CDRawLoadEvent);
        (v111)(v95, 0, 1, v116);
        LOBYTE(v31) = 0;
        LOBYTE(v28) = Event;
        goto LABEL_47;
      }

      v34 = v28;
      ++v29;
LABEL_17:
      sub_22B35D89C();
      v39 = sub_22B35DE4C();
      v33(v4, v115);
      v30 = v109;
      if ((v39 & 1) == 0)
      {
        break;
      }

      v40 = *&v12[*(v116 + 72)];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_22B32D688(0, *(v30 + 2) + 1, 1, v30);
      }

      Event = *(v30 + 2);
      v41 = *(v30 + 3);
      if (Event >= v41 >> 1)
      {
        v30 = sub_22B32D688((v41 > 1), Event + 1, 1, v30);
      }

      sub_22B1912E4(v12, type metadata accessor for CDRawLoadEvent);
      *(v30 + 2) = Event + 1;
      *&v30[8 * Event + 32] = v40;
      v28 = 1;
      v110 = 1;
      if (v29 == v26)
      {
        LOBYTE(v31) = v101;
        goto LABEL_47;
      }
    }

    LODWORD(Event) = v32 | v34;
    sub_22B35D86C();
    v97 = sub_22B35DE4C();
    v42 = v115;
    v33(v4, v115);
    if (v97)
    {
      v52 = *&v12[*(v116 + 72)];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_22B32D688(0, *(v30 + 2) + 1, 1, v30);
      }

      v28 = Event;
      Event = *(v30 + 2);
      v53 = *(v30 + 3);
      if (Event >= v53 >> 1)
      {
        v30 = sub_22B32D688((v53 > 1), Event + 1, 1, v30);
      }

      sub_22B1912E4(v12, type metadata accessor for CDRawLoadEvent);
      *(v30 + 2) = Event + 1;
      *&v30[8 * Event + 32] = v52;
      v27 = 1;
      LOBYTE(v31) = 1;
      if (v29 == v26)
      {
        break;
      }

      goto LABEL_3;
    }

    sub_22B35D86C();
    v97 = sub_22B35DDEC();
    v33(v4, v42);
    if ((v97 & 1) == 0)
    {
      v31 = v101;
      goto LABEL_29;
    }

    v43 = v100;
    sub_22B170BE0(v106, v100, &qword_27D8BA428, &qword_22B364920);
    v44 = (*v98)(v43, 1, v116);
    v45 = v44 == 1;
    v97 = v44 != 1;
    sub_22B123284(v43, &qword_27D8BA428, &qword_22B364920);
    if (((v97 | v99) & 1) == 0)
    {
      goto LABEL_91;
    }

    v31 = v45 | v101;
LABEL_29:
    sub_22B35D89C();
    v46 = sub_22B35DDEC();
    v33(v4, v115);
    if (v46 & 1) != 0 && (sub_22B35D86C(), v47 = sub_22B35DDFC(), v33(v4, v115), (v47))
    {
      v48 = *&v12[*(v116 + 72)];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_22B32D688(0, *(v30 + 2) + 1, 1, v30);
      }

      v51 = *(v30 + 2);
      v50 = *(v30 + 3);
      if (v51 >= v50 >> 1)
      {
        v30 = sub_22B32D688((v50 > 1), v51 + 1, 1, v30);
      }

      sub_22B1912E4(v12, type metadata accessor for CDRawLoadEvent);
      *(v30 + 2) = v51 + 1;
      *&v30[8 * v51 + 32] = v48;
      v31 = v101;
    }

    else
    {
      sub_22B1912E4(v12, type metadata accessor for CDRawLoadEvent);
    }

    v28 = Event;
  }

  while (v29 != v26);
LABEL_47:
  v54 = v104;
  sub_22B170BE0(v113, v104, &qword_27D8BA428, &qword_22B364920);
  v55 = *(v108 + 48);
  if (v55(v54, 1, v116) == 1)
  {
    sub_22B123284(v54, &qword_27D8BA428, &qword_22B364920);
    goto LABEL_51;
  }

  v56 = v102;
  sub_22B19127C(v54, v102, type metadata accessor for CDRawLoadEvent);
  if (v28)
  {
    sub_22B1912E4(v56, type metadata accessor for CDRawLoadEvent);
LABEL_51:
    v57 = v106;
  }

  else
  {
    v58 = *&v56[*(v116 + 72)];
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v106;
    if ((v59 & 1) == 0)
    {
      v30 = sub_22B32D688(0, *(v30 + 2) + 1, 1, v30);
    }

    v61 = *(v30 + 2);
    v60 = *(v30 + 3);
    if (v61 >= v60 >> 1)
    {
      v30 = sub_22B32D688((v60 > 1), v61 + 1, 1, v30);
    }

    sub_22B1912E4(v56, type metadata accessor for CDRawLoadEvent);
    *(v30 + 2) = v61 + 1;
    *&v30[8 * v61 + 32] = v58;
  }

  v62 = v105;
  sub_22B170BE0(v57, v105, &qword_27D8BA428, &qword_22B364920);
  if (v55(v62, 1, v116) == 1)
  {
    sub_22B123284(v62, &qword_27D8BA428, &qword_22B364920);
    v63 = *(v30 + 2);
    if (!v63)
    {
      goto LABEL_71;
    }

LABEL_62:
    v66 = *(v30 + 4);
    v67 = v63 - 1;
    if (v63 == 1)
    {
      v68 = *(v30 + 32);
      goto LABEL_88;
    }

    if (v63 >= 5)
    {
      v73 = vdupq_n_s64(v66);
      v69 = v67 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v74 = (v30 + 56);
      v75 = v67 & 0xFFFFFFFFFFFFFFFCLL;
      v76 = v73;
      do
      {
        v73 = vbslq_s8(vcgtq_s64(v73, v74[-1]), v74[-1], v73);
        v76 = vbslq_s8(vcgtq_s64(v76, *v74), *v74, v76);
        v74 += 2;
        v75 -= 4;
      }

      while (v75);
      v77 = vbslq_s8(vcgtq_s64(v76, v73), v73, v76);
      v78 = vextq_s8(v77, v77, 8uLL).u64[0];
      v68 = vbsl_s8(vcgtd_s64(v78, v77.i64[0]), *v77.i8, v78);
      if (v67 != (v67 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_75;
      }
    }

    else
    {
      v69 = 1;
      v68 = *(v30 + 32);
LABEL_75:
      v79 = v63 - v69;
      v80 = &v30[8 * v69 + 32];
      do
      {
        v82 = *v80;
        v80 += 8;
        v81 = v82;
        if (*&v82 < *&v68)
        {
          v68 = v81;
        }

        --v79;
      }

      while (v79);
    }

    if (v63 >= 5)
    {
      v83 = v67 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v84 = vdupq_n_s64(v66);
      v85 = (v30 + 56);
      v86 = v67 & 0xFFFFFFFFFFFFFFFCLL;
      v87 = v84;
      do
      {
        v84 = vbslq_s8(vcgtq_s64(v84, v85[-1]), v84, v85[-1]);
        v87 = vbslq_s8(vcgtq_s64(v87, *v85), v87, *v85);
        v85 += 2;
        v86 -= 4;
      }

      while (v86);
      v88 = vbslq_s8(vcgtq_s64(v84, v87), v84, v87);
      v89 = vextq_s8(v88, v88, 8uLL).u64[0];
      v66 = vbsl_s8(vcgtd_s64(v88.i64[0], v89), *v88.i8, v89);
      if (v67 != (v67 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_84;
      }
    }

    else
    {
      v83 = 1;
LABEL_84:
      v90 = v63 - v83;
      v91 = &v30[8 * v83 + 32];
      do
      {
        v93 = *v91++;
        v92 = v93;
        if (v66 <= v93)
        {
          v66 = v92;
        }

        --v90;
      }

      while (v90);
    }
  }

  else
  {
    v64 = v62;
    v65 = v103;
    sub_22B19127C(v64, v103, type metadata accessor for CDRawLoadEvent);
    if (v31)
    {
      sub_22B1912E4(v65, type metadata accessor for CDRawLoadEvent);
      v63 = *(v30 + 2);
      if (!v63)
      {
        goto LABEL_71;
      }

      goto LABEL_62;
    }

    v70 = *&v65[*(v116 + 72)];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_22B32D688(0, *(v30 + 2) + 1, 1, v30);
    }

    v72 = *(v30 + 2);
    v71 = *(v30 + 3);
    if (v72 >= v71 >> 1)
    {
      v30 = sub_22B32D688((v71 > 1), v72 + 1, 1, v30);
    }

    sub_22B1912E4(v103, type metadata accessor for CDRawLoadEvent);
    *(v30 + 2) = v72 + 1;
    *&v30[8 * v72 + 32] = v70;
    v63 = *(v30 + 2);
    if (v63)
    {
      goto LABEL_62;
    }

LABEL_71:
    v68 = 0;
  }

LABEL_88:

  sub_22B123284(v57, &qword_27D8BA428, &qword_22B364920);
  sub_22B123284(v113, &qword_27D8BA428, &qword_22B364920);
  return v68;
}