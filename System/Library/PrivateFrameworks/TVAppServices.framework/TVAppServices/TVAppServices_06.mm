void sub_26CCA45EC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v13 = sub_26CD3A07C();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v19 = v33 - v18;
  if (a1)
  {
    swift_beginAccess();
    v20 = *(a2 + 16);
    *(a2 + 16) = a1;
    v21 = a1;
  }

  else
  {
    v35 = a5;
    v36 = v17;
    v34 = a6;
    v37 = a7;
    v22 = [a4 URL];
    sub_26CD39FEC();

    sub_26CD39D8C();
    swift_allocObject();
    sub_26CD39D7C();
    v23 = _s5CacheC5ModelVMa(0);
    sub_26CC16E20(&qword_2804BD228, _s5CacheC5ModelVMa, &unk_26CD44F60);
    v24 = sub_26CD39D6C();
    v26 = v25;
    v33[1] = v23;

    sub_26CD3A0CC();
    v27 = v19;
    v28 = *(v36 + 8);
    v28(v27, v13);
    sub_26CC18C50(v24, v26);
    v29 = [v34 URL];
    sub_26CD39FEC();

    swift_allocObject();
    sub_26CD39D7C();
    v30 = sub_26CD39D6C();
    v32 = v31;

    sub_26CD3A0CC();
    v28(v16, v13);
    sub_26CC18C50(v30, v32);
  }
}

void sub_26CCA4978(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v59 = a7;
  v60 = a3;
  v12 = _s5CacheC5ModelVMa(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v49 - v16;
  v18 = sub_26CD3A07C();
  v19 = MEMORY[0x28223BE20](v18);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v49 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v27 = &v49 - v26;
  if (a1)
  {
    swift_beginAccess();
    v28 = *(a2 + 16);
    *(a2 + 16) = a1;
    v29 = a1;
  }

  else
  {
    v54 = a5;
    v55 = a6;
    v57 = v12;
    v58 = v23;
    v56 = v25;
    v30 = v24;
    v31 = [v60 URL];
    sub_26CD39FEC();

    v53 = sub_26CD3A08C();
    v60 = v32;
    v33 = *(v30 + 8);
    v34 = v27;
    v35 = v58;
    v33(v34, v58);
    v36 = [a4 URL];
    sub_26CD39FEC();

    v37 = sub_26CD3A08C();
    v51 = v38;
    v52 = v37;
    v33(v22, v35);
    sub_26CD39D5C();
    swift_allocObject();
    v50 = v33;
    sub_26CD39D4C();
    sub_26CC16E20(&qword_280BBB440, _s5CacheC5ModelVMa, &unk_26CD45180);
    v39 = v57;
    sub_26CD39D3C();
    v40 = v17;

    swift_allocObject();
    sub_26CD39D4C();
    v41 = v51;
    sub_26CD39D3C();

    if (sub_26CCDE714(*&v17[*(v39 + 20)], *&v15[*(v39 + 20)]))
    {
      v42 = v52;
      v43 = v41;
    }

    else
    {
      v44 = [v54 URL];
      v45 = v56;
      sub_26CD39FEC();

      sub_26CD39D8C();
      swift_allocObject();
      sub_26CD39D7C();
      sub_26CC16E20(&qword_2804BD228, _s5CacheC5ModelVMa, &unk_26CD44F60);
      v46 = sub_26CD39D6C();
      v48 = v47;

      sub_26CD3A0CC();
      v50(v45, v58);
      sub_26CC18C50(v46, v48);
      v43 = v51;
      v42 = v52;
    }

    sub_26CC18C50(v42, v43);
    sub_26CC18C50(v53, v60);
    sub_26CC18318(v15, _s5CacheC5ModelVMa);
    sub_26CC18318(v40, _s5CacheC5ModelVMa);
  }
}

unint64_t sub_26CCA4F50()
{
  result = qword_280BBB1E8;
  if (!qword_280BBB1E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BBB1E8);
  }

  return result;
}

void sub_26CCA4FE8(void *a1)
{
  v3 = *(_s5CacheC5ModelVMa(0) - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v4 + v7 + 8) & ~v4;
  v9 = (v6 + v8) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  v11 = *(v1 + v7);
  v12 = *(v1 + v9);
  v13 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_26CCA45EC(a1, v10, v1 + v5, v11, v1 + v8, v12, v13);
}

uint64_t sub_26CCA50EC(uint64_t a1, uint64_t a2)
{
  v4 = _s5CacheC5ModelVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26CCA5160(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD230, &qword_26CD45200) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC8C0, &qword_26CD447F0) - 8);
  v9 = (*(v8 + 80) + v7 + 96) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_26CCA104C(a1, v1 + v4, *(v1 + v5), *(v1 + v6), (v1 + v7), v1 + v9, *(v1 + v10), *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_26CCA52C8(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD238, &qword_26CD45218) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26CCA0734(a1, v1 + v4, v5);
}

unint64_t sub_26CCA5388()
{
  result = qword_2804BD240;
  if (!qword_2804BD240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD240);
  }

  return result;
}

uint64_t sub_26CCA53E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_26CCA544C(uint64_t a1)
{
  *(v1 + 32) = a1;
  v2 = sub_26CD39D0C();
  *(v1 + 40) = v2;
  *(v1 + 48) = *(v2 - 8);
  *(v1 + 56) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490);
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 16) = 0;
  *(v1 + 24) = 8;
  v3 = swift_task_alloc();
  *(v1 + 80) = v3;
  *v3 = v1;
  v3[1] = sub_26CCA55A4;

  return sub_26CCAA8AC((v1 + 16));
}

uint64_t sub_26CCA55A4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_26CCA59E4;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_26CCA56CC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CCA56CC()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];
  v4 = v0[6];
  sub_26CCA8AA8(v1);

  sub_26CCAE9FC(v1, v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_26CC1B544(v0[8], &qword_2804BC3F8, &qword_26CD45490);
    if (qword_280BB9C18 != -1)
    {
      swift_once();
    }

    v5 = v0[9];
    v6 = qword_280BBCBD0;
    v7 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_26CD3C1E0;
    *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v8 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v8 + 32) = &unk_287DFAD40;
    sub_26CD3A3DC(v7, &dword_26CC14000, v6, "%@", 2, 2, v8);

    sub_26CCAE900();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
    sub_26CC1B544(v5, &qword_2804BC3F8, &qword_26CD45490);

    v10 = v0[1];

    return v10();
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[8], v0[5]);
    if (qword_280BBB0C0 != -1)
    {
      swift_once();
    }

    v12 = swift_task_alloc();
    v0[13] = v12;
    *v12 = v0;
    v12[1] = sub_26CCA5A64;
    v13 = v0[7];

    return sub_26CD2BB90(v13);
  }
}

uint64_t sub_26CCA59E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CCA5A64(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_26CCA5D38;
  }

  else
  {
    v4 = sub_26CCA5B78;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CCA5B78()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 32);
  v3 = [*(v0 + 112) data];
  v4 = sub_26CD3A0BC();
  v6 = v5;

  sub_26CCAE954(v4, v6);
  sub_26CCA655C(v4, v6, v2);
  v7 = *(v0 + 112);
  v8 = *(v0 + 72);
  if (v1)
  {
    v10 = *(v0 + 48);
    v9 = *(v0 + 56);
    v11 = *(v0 + 40);
  }

  else
  {
    v9 = *(v0 + 56);
    v11 = *(v0 + 40);
    v10 = *(v0 + 48);
  }

  sub_26CC18C50(v4, v6);

  sub_26CC18C50(v4, v6);
  (*(v10 + 8))(v9, v11);
  sub_26CC1B544(v8, &qword_2804BC3F8, &qword_26CD45490);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_26CCA5D38()
{
  v1 = v0[9];
  (*(v0[6] + 8))(v0[7], v0[5]);
  sub_26CC1B544(v1, &qword_2804BC3F8, &qword_26CD45490);

  v2 = v0[1];

  return v2();
}

uint64_t sub_26CCA5DEC(uint64_t a1)
{
  *(v1 + 32) = a1;
  v2 = sub_26CD39D0C();
  *(v1 + 40) = v2;
  *(v1 + 48) = *(v2 - 8);
  *(v1 + 56) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490);
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 16) = 1;
  *(v1 + 24) = 8;
  v3 = swift_task_alloc();
  *(v1 + 80) = v3;
  *v3 = v1;
  v3[1] = sub_26CCA5F48;

  return sub_26CCAA8AC((v1 + 16));
}

uint64_t sub_26CCA5F48(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_26CCAF720;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_26CCA6070;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CCA6070()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];
  v4 = v0[6];
  sub_26CCA8AA8(v1);

  sub_26CCAE9FC(v1, v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = v0[9];
    sub_26CC1B544(v0[8], &qword_2804BC3F8, &qword_26CD45490);
    sub_26CCAE900();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    sub_26CC1B544(v5, &qword_2804BC3F8, &qword_26CD45490);

    v7 = v0[1];

    return v7();
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[8], v0[5]);
    if (qword_280BBB0C0 != -1)
    {
      swift_once();
    }

    v9 = swift_task_alloc();
    v0[13] = v9;
    *v9 = v0;
    v9[1] = sub_26CCA6288;
    v10 = v0[7];

    return sub_26CD2BB90(v10);
  }
}

uint64_t sub_26CCA6288(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_26CCAF70C;
  }

  else
  {
    v4 = sub_26CCA639C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CCA639C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 32);
  v3 = [*(v0 + 112) data];
  v4 = sub_26CD3A0BC();
  v6 = v5;

  sub_26CCAE954(v4, v6);
  sub_26CCA69D4(v4, v6, v2);
  v7 = *(v0 + 112);
  v8 = *(v0 + 72);
  if (v1)
  {
    v10 = *(v0 + 48);
    v9 = *(v0 + 56);
    v11 = *(v0 + 40);
  }

  else
  {
    v9 = *(v0 + 56);
    v11 = *(v0 + 40);
    v10 = *(v0 + 48);
  }

  sub_26CC18C50(v4, v6);

  sub_26CC18C50(v4, v6);
  (*(v10 + 8))(v9, v11);
  sub_26CC1B544(v8, &qword_2804BC3F8, &qword_26CD45490);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_26CCA655C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = sub_26CD39D1C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s10NetworkingO19UserConsentResponseVMa(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    v14 = sub_26CD3AC9C();
    swift_allocError();
    v16 = v15;
    sub_26CD3AC8C();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84168], v14);
    return swift_willThrow();
  }

  else
  {
    v33 = a3;
    sub_26CD39D5C();
    swift_allocObject();
    sub_26CCAE954(a1, a2);
    sub_26CD39D4C();
    (*(v8 + 104))(v10, *MEMORY[0x277CC86C0], v7);
    sub_26CD39D2C();
    sub_26CCAF200(&qword_2804BD290, _s10NetworkingO19UserConsentResponseVMa, &unk_26CD456CC);
    sub_26CD39D3C();
    if (v3)
    {
      sub_26CC1D1B8(a1, a2);
    }

    else
    {

      if (qword_280BB9C18 != -1)
      {
        swift_once();
      }

      v30 = qword_280BBCBD0;
      v31 = 0;
      v32 = 0xE000000000000000;
      sub_26CD3AC6C();

      v31 = 0xD00000000000001DLL;
      v32 = 0x800000026CD502B0;
      if (*v13)
      {
        v18 = 0xE800000000000000;
        if (*v13 == 1)
        {
          v19 = 0x6E696C636564;
        }

        else
        {
          v19 = 0x747065636361;
        }

        v20 = v19 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
      }

      else
      {
        v18 = 0xE700000000000000;
        v20 = 0x6E776F6E6B6E75;
      }

      MEMORY[0x26D6AD060](v20, v18);

      v21 = v31;
      v22 = v32;
      v23 = sub_26CD3A99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_26CD3C1E0;
      *(v24 + 56) = MEMORY[0x277D837D0];
      *(v24 + 64) = sub_26CC19E10();
      *(v24 + 32) = v21;
      *(v24 + 40) = v22;
      sub_26CD3A3DC(v23, &dword_26CC14000, v30, "%@", 2, 2, v24);

      sub_26CC1D1B8(a1, a2);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD138, &unk_26CD45540);
      v26 = *(v25 + 48);
      v27 = *(v25 + 64);
      v28 = v33;
      *v33 = *v13;
      sub_26CC16D64(&v13[*(v11 + 20)], &v28[v26], &qword_2804BCA90, &qword_26CD3C200);
      sub_26CC16D64(&v13[*(v11 + 24)], &v28[v27], &qword_2804BCA90, &qword_26CD3C200);
      _s10NetworkingO12FetchedValueOMa(0);
      return swift_storeEnumTagMultiPayload();
    }
  }
}

uint64_t sub_26CCA69D4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_26CD39D1C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    v11 = sub_26CD3AC9C();
    swift_allocError();
    v13 = v12;
    sub_26CD3AC8C();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84168], v11);
    return swift_willThrow();
  }

  else
  {
    sub_26CD39D5C();
    swift_allocObject();
    sub_26CCAE954(a1, a2);
    sub_26CD39D4C();
    (*(v8 + 104))(v10, *MEMORY[0x277CC86C0], v7);
    sub_26CD39D2C();
    sub_26CCAEA6C();
    sub_26CD39D3C();
    if (v3)
    {

      return sub_26CC1D1B8(a1, a2);
    }

    else
    {
      v15 = v26;
      if (qword_280BB9C18 != -1)
      {
        swift_once();
      }

      v25 = qword_280BBCBD0;
      v26 = 0;
      v27 = 0xE000000000000000;
      sub_26CD3AC6C();

      v26 = 0xD000000000000013;
      v27 = 0x800000026CD50290;
      sub_26CC989C4(v15);
      v28 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      v24 = v15;
      sub_26CC1DD84(&qword_2804BBDB8, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277D83958]);
      v17 = sub_26CD3A55C();
      v19 = v18;

      MEMORY[0x26D6AD060](v17, v19);

      MEMORY[0x26D6AD060](93, 0xE100000000000000);
      v20 = v26;
      v21 = v27;
      v22 = sub_26CD3A99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_26CD3C1E0;
      *(v23 + 56) = MEMORY[0x277D837D0];
      *(v23 + 64) = sub_26CC19E10();
      *(v23 + 32) = v20;
      *(v23 + 40) = v21;
      sub_26CD3A3DC(v22, &dword_26CC14000, v25, "%@", 2, 2, v23);

      sub_26CC1D1B8(a1, a2);
      *a3 = v24;
      _s10NetworkingO12FetchedValueOMa(0);
      return swift_storeEnumTagMultiPayload();
    }
  }
}

void sub_26CCA6DD8(BOOL *a3@<X8>)
{
  v4 = sub_26CD3AD9C();

  *a3 = v4 != 0;
}

uint64_t sub_26CCA6E30(uint64_t a1)
{
  v2 = sub_26CCAF0FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CCA6E6C(uint64_t a1)
{
  v2 = sub_26CCAF0FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26CCA6EA8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "favoritesSyncEnabled";
  v4 = 0xD000000000000022;
  if (v2 == 1)
  {
    v5 = 0xD000000000000022;
  }

  else
  {
    v5 = 0xD000000000000025;
  }

  if (v2 == 1)
  {
    v6 = "favoritesSyncEnabled";
  }

  else
  {
    v6 = "tModifiedTimestamp";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "ed";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000025;
    v3 = "tModifiedTimestamp";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000014;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "ed";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26CD3AFDC();
  }

  return v11 & 1;
}

uint64_t sub_26CCA6F80()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

double sub_26CCA701C(uint64_t a1)
{
  sub_26CD3A54C();

  return result;
}

uint64_t sub_26CCA70A4(uint64_t a1)
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

unint64_t sub_26CCA713C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26CCAED74(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26CCA716C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = "favoritesSyncEnabled";
  v4 = 0xD000000000000022;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000025;
    v3 = "tModifiedTimestamp";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "ed";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

unint64_t sub_26CCA71C8()
{
  v1 = 0xD000000000000022;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000025;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

unint64_t sub_26CCA7220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26CCAED74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26CCA7248(uint64_t a1)
{
  v2 = sub_26CCAF1AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CCA7284(uint64_t a1)
{
  v2 = sub_26CCAF1AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26CCA72C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v59 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v65 = &v48 - v6;
  v7 = sub_26CD3A1EC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v56 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v48 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD2E0, &qword_26CD457B8);
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v66 = &v48 - v12;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD2E8, &qword_26CD457C0);
  v62 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v14 = &v48 - v13;
  v15 = _s10NetworkingO19UserConsentResponseVMa(0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v18 = 0;
  v19 = *(v16 + 28);
  v60 = v8;
  v22 = *(v8 + 56);
  v21 = v8 + 56;
  v20 = v22;
  v22(&v18[v19], 1, 1, v7);
  v23 = *(v16 + 32);
  v69 = v18;
  v64 = v7;
  v22(&v18[v23], 1, 1, v7);
  v24 = a1[3];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_26CCAF0FC();
  v25 = v68;
  sub_26CD3B15C();
  if (v25)
  {
    v26 = v69;
  }

  else
  {
    v53 = v23;
    v54 = v19;
    v68 = v20;
    v28 = v64;
    v27 = v65;
    v55 = v21;
    v29 = v14;
    v31 = v62;
    v30 = v63;
    sub_26CCAF1AC();
    sub_26CD3ADBC();
    v26 = v69;
    v52 = v29;
    v73 = 0;
    v32 = sub_26CD3ADEC();
    if (v32 != 2)
    {
      if (v32)
      {
        v33 = 2;
      }

      else
      {
        v33 = 1;
      }

      *v26 = v33;
    }

    v72 = 1;
    v34 = v27;
    v35 = sub_26CCAF200(&qword_280BBB698, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_26CD3AE2C();
    v37 = v60;
    v38 = *(v60 + 48);
    v50 = v60 + 48;
    v51 = v35;
    v49 = v38;
    if (v38(v34, 1, v28) == 1)
    {
      sub_26CC1B544(v34, &qword_2804BCA90, &qword_26CD3C200);
      v39 = v59;
      v40 = v68;
    }

    else
    {
      v41 = *(v37 + 32);
      v42 = v58;
      v41(v58, v34, v28);
      v43 = v54;
      sub_26CC1B544(&v26[v54], &qword_2804BCA90, &qword_26CD3C200);
      v41(&v26[v43], v42, v28);
      v40 = v68;
      v68(&v26[v43], 0, 1, v28);
      v39 = v59;
    }

    v71 = 2;
    v44 = v66;
    sub_26CD3AE2C();
    (*(v61 + 8))(v44, v30);
    (*(v31 + 8))(v52, v67);
    if (v49(v39, 1, v28) == 1)
    {
      sub_26CC1B544(v39, &qword_2804BCA90, &qword_26CD3C200);
    }

    else
    {
      v45 = *(v60 + 32);
      v46 = v56;
      v45(v56, v39, v28);
      v47 = v53;
      sub_26CC1B544(&v26[v53], &qword_2804BCA90, &qword_26CD3C200);
      v45(&v26[v47], v46, v28);
      v40(&v26[v47], 0, 1, v28);
    }

    sub_26CCAF248(v26, v57);
  }

  __swift_destroy_boxed_opaque_existential_1(v70);
  return sub_26CCAF150(v26);
}

uint64_t sub_26CCA799C()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();
  return sub_26CD3B13C();
}

uint64_t sub_26CCA79E8(uint64_t a1)
{
  sub_26CD3B0FC();
  sub_26CD3A54C();
  return sub_26CD3B13C();
}

void sub_26CCA7A3C(BOOL *a3@<X8>)
{
  v4 = sub_26CD3AD9C();

  *a3 = v4 != 0;
}

void sub_26CCA7A8C(BOOL *a3@<X8>)
{
  v4 = sub_26CD3AD9C();

  *a3 = v4 != 0;
}

uint64_t sub_26CCA7AE4(uint64_t a1)
{
  v2 = sub_26CCAF054();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CCA7B20(uint64_t a1)
{
  v2 = sub_26CCAF054();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26CCA7B68()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

double sub_26CCA7C54(uint64_t a1)
{
  sub_26CD3A54C();

  return result;
}

uint64_t sub_26CCA7D2C(uint64_t a1)
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

unint64_t sub_26CCA7E14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26CCAEDC0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26CCA7E44(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE500000000000000;
  v6 = 0x736D616574;
  v7 = 0xE700000000000000;
  v8 = 0x7365756761656CLL;
  if (v2 != 3)
  {
    v8 = 0x676E6974726F7073;
    v7 = 0xEE0073746E657645;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x657469726F766166;
    v3 = 0xED0000726564724FLL;
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

uint64_t sub_26CCA7EEC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x736D616574;
  v4 = 0x7365756761656CLL;
  if (v1 != 3)
  {
    v4 = 0x676E6974726F7073;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657469726F766166;
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

unint64_t sub_26CCA7F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26CCAEDC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26CCA7FB8(uint64_t a1)
{
  v2 = sub_26CCAF0A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CCA7FF4(uint64_t a1)
{
  v2 = sub_26CCAF0A8();

  return MEMORY[0x2821FE720](a1, v2);
}

ValueMetadata *sub_26CCA8030(void *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD2B8, &qword_26CD457A0);
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *a2;
  v10 = MEMORY[0x277D84FA0];
  v21 = MEMORY[0x277D84FA0];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if ((sub_26CD3AFBC() & 1) == 0)
  {
    v19 = v9 << 8;
    v11 = (v18 + 8);
    v10 = &_s10NetworkingO17FavoritesResponseV8DataKeysON;
    do
    {
      __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_26CCAF0A8();
      sub_26CD3AFAC();
      if (v3)
      {

        return v10;
      }

      v20[0] = 0;
      v13 = sub_26CD3AE3C();
      v15 = v14;
      v20[0] = 1;
      v12 = sub_26CD3AE6C();
      v3 = 0;
      sub_26CCDF54C(v20, v13, v15, v12, v19);

      (*v11)(v8, v6);
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    }

    while ((sub_26CD3AFBC() & 1) == 0);
    return v21;
  }

  return v10;
}

double sub_26CCA8294()
{
  v7[5] = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD2B8, &qword_26CD457A0);
  sub_26CD3ADAC();
  if (v0)
  {

    memset(v5, 0, sizeof(v5));
    v6 = 0;
    sub_26CC1B544(v5, &qword_2804BD2D8, &qword_26CD457B0);
  }

  else
  {
    sub_26CC2524C(v5, v7);
    LOBYTE(v5[0]) = 0;
    v1 = sub_26CCA8030(v7, v5);
    sub_26CC9B030(v1);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  sub_26CD3ADAC();
  sub_26CC2524C(v5, v7);
  LOBYTE(v5[0]) = 1;
  v2 = sub_26CCA8030(v7, v5);
  sub_26CC9B030(v2);
  __swift_destroy_boxed_opaque_existential_1(v7);
  sub_26CD3ADAC();
  sub_26CC2524C(v5, v7);
  LOBYTE(v5[0]) = 2;
  v3 = sub_26CCA8030(v7, v5);
  sub_26CC9B030(v3);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return result;
}

uint64_t sub_26CCA84F4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_26CCAEE0C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_26CCA8520(uint64_t a1)
{
  v3 = 0x657469726F766166;
  v2[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v2[3] = swift_task_alloc();
  v4 = sub_26CD39D0C();
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[6] = v5;
  v6 = *(v1 + 8);
  v7 = 0xEE00736D6165742DLL;
  if (v6 <= 3)
  {
    if (*(v1 + 8) <= 1u)
    {
      if (*(v1 + 8))
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    if (v6 != 2)
    {
      goto LABEL_11;
    }

LABEL_13:
    v7 = 0x800000026CD50270;
    v3 = 0xD000000000000010;
    goto LABEL_16;
  }

  if (*(v1 + 8) <= 5u)
  {
    if (v6 == 4)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (v6 == 6)
  {
    v3 = 0xD000000000000018;
    v8 = "ordered-favorite-leagues";
    goto LABEL_15;
  }

  if (v6 != 7)
  {
    if (*v1)
    {
      v7 = 0xE900000000000073;
      goto LABEL_16;
    }

LABEL_9:
    v7 = 0xED000073676E6974;
    v3 = 0x7465732F72657375;
    goto LABEL_16;
  }

LABEL_11:
  v3 = 0xD000000000000018;
  v8 = "favorite-sporting-events";
LABEL_15:
  v7 = (v8 - 32) | 0x8000000000000000;
LABEL_16:
  v2[7] = v7;
  type metadata accessor for UTSURLRequestFactory();
  v9 = swift_task_alloc();
  v2[8] = v9;
  *v9 = v2;
  v9[1] = sub_26CCA8764;

  return sub_26CD027F0(v5, v3, v7, 0, 0xE000000000000000, 0, 0);
}

uint64_t sub_26CCA8764()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_26CCA8A38;
  }

  else
  {
    v2 = sub_26CCA8894;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CCA8894()
{
  v1 = v0[3];
  sub_26CD39C9C();
  v2 = sub_26CD3A07C();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[4];
    sub_26CC1B544(v0[3], &qword_2804BCA30, &qword_26CD3DA70);
    sub_26CCAE9A8();
    swift_allocError();
    swift_willThrow();
    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v8 = v0[3];
    v9 = v0[2];
    (*(v0[5] + 8))(v0[6], v0[4]);
    (*(v3 + 32))(v9, v8, v2);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_26CCA8A38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CCA8AA8@<X0>(uint64_t a1@<X8>)
{
  v153 = a1;
  v151 = sub_26CD39E2C();
  *&v152 = *(v151 - 8);
  v2 = MEMORY[0x28223BE20](v151);
  v148 = &v144 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v147 = &v144 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v144 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v144 - v9;
  v150 = sub_26CD3A07C();
  v149 = *(v150 - 8);
  v11 = MEMORY[0x28223BE20](v150);
  v146 = &v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v145 = &v144 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v144 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v144 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v144 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v144 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v144 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v144 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490);
  MEMORY[0x28223BE20](v32 - 8);
  v154 = &v144 - v33;
  sub_26CD08B34(&v144 - v33);
  *&v155 = *(v1 + OBJC_IVAR____TtCOV13TVAppServices21SportsFavoriteService10Networking28SportsFavoriteRequestBuilder_type);
  v34 = *(v1 + OBJC_IVAR____TtCOV13TVAppServices21SportsFavoriteService10Networking28SportsFavoriteRequestBuilder_type + 8);
  if (v34 > 3)
  {
    if (*(v1 + OBJC_IVAR____TtCOV13TVAppServices21SportsFavoriteService10Networking28SportsFavoriteRequestBuilder_type + 8) <= 6u)
    {
      v35 = v154;
      if (v34 - 4 >= 2)
      {
        v86 = (v1 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method);
        *v86 = 1414745936;
        v86[1] = 0xE400000000000000;
        v87 = v155;

        sub_26CD39D8C();
        swift_allocObject();
        sub_26CD39D7C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD248, &qword_26CD45498);
        inited = swift_initStackObject();
        v152 = xmmword_26CD3C1E0;
        *(inited + 16) = xmmword_26CD3C1E0;
        *(inited + 32) = 0x644965756761656CLL;
        v89 = inited + 32;
        *(inited + 40) = 0xE900000000000073;
        *(inited + 48) = v87;
        v90 = sub_26CC32494(inited);
        swift_setDeallocating();
        sub_26CC1B544(v89, &qword_2804BD250, &qword_26CD454A0);
        v157 = v90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD258, &unk_26CD454A8);
        sub_26CCAA708();
        v109 = sub_26CD39D6C();
        v111 = v110;

        v112 = sub_26CD39D0C();
        if ((*(*(v112 - 8) + 48))(v35, 1, v112))
        {
          sub_26CC18C50(v109, v111);
        }

        else
        {
          sub_26CD39CDC();
        }
      }

      else
      {
        v36 = sub_26CD39D0C();
        v37 = *(*(v36 - 8) + 48);
        v38 = v37(v35, 1, v36);
        sub_26CCAA810(v155, v34);
        if (!v38)
        {
          sub_26CD39C0C();
        }

        if (v37(v35, 1, v36))
        {
          goto LABEL_9;
        }

        sub_26CD39C9C();
        v39 = v149;
        v40 = v150;
        if ((*(v149 + 48))(v23, 1, v150))
        {
          sub_26CC1B544(v23, &qword_2804BCA30, &qword_26CD3DA70);
          goto LABEL_9;
        }

        v125 = v146;
        (*(v39 + 16))(v146, v23, v40);
        sub_26CC1B544(v23, &qword_2804BCA30, &qword_26CD3DA70);
        v126 = v39;
        v127 = URL.queryParameters.getter();
        (*(v126 + 8))(v125, v40);
        if (!v127)
        {
          goto LABEL_9;
        }

        if (!v127[2])
        {

          goto LABEL_9;
        }

        sub_26CC181C4(25705, 0xE200000000000000);
        v129 = v128;

        if ((v129 & 1) == 0)
        {
LABEL_9:
          v41 = v155;
          v157 = v155;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD268, &qword_26CD454B8);
          sub_26CC1DD84(&qword_2804BD270, &qword_2804BD268, &qword_26CD454B8, MEMORY[0x277D83B68]);
          sub_26CC16DCC();
          sub_26CD3A74C();
          sub_26CCAA6F0(v41, v34);
          v42 = v148;
          sub_26CD39DFC();

          v43 = v37(v35, 1, v36);
          v44 = v153;
          v45 = v151;
          v46 = v152;
          if (!v43)
          {
            v47 = sub_26CD39C8C();
            if (!(*(v149 + 48))(v48, 1, v150))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC630, &unk_26CD454C0);
              v49 = (*(v46 + 80) + 32) & ~*(v46 + 80);
              v50 = swift_allocObject();
              *(v50 + 16) = xmmword_26CD3C1E0;
              (*(v46 + 16))(v50 + v49, v42, v45);
              sub_26CD3A00C();
            }

            v47(&v157, 0);
          }

          (*(v46 + 8))(v42, v45);
          return sub_26CC16D64(v35, v44, &qword_2804BC3F8, &qword_26CD45490);
        }

        sub_26CCAA6F0(v155, v34);
      }

LABEL_74:
      v44 = v153;
      return sub_26CC16D64(v35, v44, &qword_2804BC3F8, &qword_26CD45490);
    }

    v35 = v154;
    if (v34 == 7)
    {
      v71 = sub_26CD39D0C();
      v72 = *(*(v71 - 8) + 48);
      v73 = v72(v35, 1, v71);

      if (!v73)
      {
        sub_26CD39C0C();
      }

      v74 = v72(v35, 1, v71);
      v75 = v152;
      if (!v74)
      {
        sub_26CD39C9C();
        v76 = v149;
        v77 = v150;
        if ((*(v149 + 48))(v26, 1, v150))
        {
          sub_26CC1B544(v26, &qword_2804BCA30, &qword_26CD3DA70);
        }

        else
        {
          v139 = v145;
          (*(v76 + 16))(v145, v26, v77);
          sub_26CC1B544(v26, &qword_2804BCA30, &qword_26CD3DA70);
          v140 = v76;
          v141 = URL.queryParameters.getter();
          (*(v140 + 8))(v139, v77);
          if (v141)
          {
            if (v141[2])
            {
              sub_26CC181C4(7562345, 0xE300000000000000);
              v143 = v142;

              if (v143)
              {
                sub_26CCAA6F0(v155, 7u);
                goto LABEL_74;
              }
            }

            else
            {
            }
          }
        }
      }

      v78 = v155;
      v157 = v155;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD268, &qword_26CD454B8);
      sub_26CC1DD84(&qword_2804BD270, &qword_2804BD268, &qword_26CD454B8, MEMORY[0x277D83B68]);
      sub_26CC16DCC();
      sub_26CD3A74C();
      sub_26CCAA6F0(v78, 7u);
      v79 = v147;
      sub_26CD39DFC();

      v80 = v72(v35, 1, v71);
      v44 = v153;
      v81 = v151;
      if (!v80)
      {
        v82 = sub_26CD39C8C();
        if (!(*(v149 + 48))(v83, 1, v150))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC630, &unk_26CD454C0);
          v84 = (*(v75 + 80) + 32) & ~*(v75 + 80);
          v85 = swift_allocObject();
          *(v85 + 16) = xmmword_26CD3C1E0;
          (*(v75 + 16))(v85 + v84, v79, v81);
          sub_26CD3A00C();
        }

        v82(&v157, 0);
      }

      (*(v75 + 8))(v79, v81);
    }

    else
    {
      v106 = sub_26CD39D0C();
      v107 = *(*(v106 - 8) + 48);
      v108 = v107(v35, 1, v106);
      v44 = v153;
      if (!v108)
      {
        sub_26CD39C0C();
      }

      if (!v107(v35, 1, v106))
      {
        sub_26CD39C1C();
      }
    }

    return sub_26CC16D64(v35, v44, &qword_2804BC3F8, &qword_26CD45490);
  }

  v148 = v10;
  if (v34 - 1 < 2)
  {
    v51 = sub_26CD39D0C();
    v52 = *(*(v51 - 8) + 48);
    v53 = v154;
    v54 = v52(v154, 1, v51);
    sub_26CCAA810(v155, v34);
    if (!v54)
    {
      sub_26CD39C0C();
    }

    if (v52(v53, 1, v51))
    {
      goto LABEL_21;
    }

    sub_26CD39C9C();
    v55 = v149;
    v56 = v150;
    if ((*(v149 + 48))(v31, 1, v150))
    {
      sub_26CC1B544(v31, &qword_2804BCA30, &qword_26CD3DA70);
    }

    else
    {
      (*(v55 + 16))(v19, v31, v56);
      sub_26CC1B544(v31, &qword_2804BCA30, &qword_26CD3DA70);
      v121 = v55;
      v122 = URL.queryParameters.getter();
      (*(v121 + 8))(v19, v56);
      v53 = v154;
      if (!v122)
      {
        goto LABEL_21;
      }

      if (v122[2])
      {
        sub_26CC181C4(25705, 0xE200000000000000);
        v124 = v123;

        v53 = v154;
        if (v124)
        {
          sub_26CCAA6F0(v155, v34);
          v44 = v153;
          v35 = v53;
          return sub_26CC16D64(v35, v44, &qword_2804BC3F8, &qword_26CD45490);
        }

        goto LABEL_21;
      }
    }

    v53 = v154;
LABEL_21:
    v57 = v52;
    v58 = v155;
    v157 = v155;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD268, &qword_26CD454B8);
    sub_26CC1DD84(&qword_2804BD270, &qword_2804BD268, &qword_26CD454B8, MEMORY[0x277D83B68]);
    sub_26CC16DCC();
    sub_26CD3A74C();
    sub_26CCAA6F0(v58, v34);
    v59 = v148;
    sub_26CD39DFC();

    v60 = v57(v53, 1, v51);
    v44 = v153;
    v35 = v53;
    v61 = v151;
    v62 = v152;
    if (!v60)
    {
      v63 = sub_26CD39C8C();
      if (!(*(v149 + 48))(v64, 1, v150))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC630, &unk_26CD454C0);
        v65 = (*(v62 + 80) + 32) & ~*(v62 + 80);
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_26CD3C1E0;
        v67 = v66 + v65;
        v59 = v148;
        (*(v62 + 16))(v67, v148, v61);
        sub_26CD3A00C();
      }

      v63(&v157, 0);
    }

    (*(v62 + 8))(v59, v61);
    return sub_26CC16D64(v35, v44, &qword_2804BC3F8, &qword_26CD45490);
  }

  if (v34)
  {
    v91 = sub_26CD39D0C();
    v92 = *(*(v91 - 8) + 48);
    v35 = v154;
    v93 = v92(v154, 1, v91);

    if (!v93)
    {
      sub_26CD39C0C();
    }

    v94 = v92(v35, 1, v91);
    v95 = v152;
    if (!v94)
    {
      sub_26CD39C9C();
      v96 = v149;
      v97 = v150;
      if ((*(v149 + 48))(v29, 1, v150))
      {
        sub_26CC1B544(v29, &qword_2804BCA30, &qword_26CD3DA70);
      }

      else
      {
        (*(v96 + 16))(v17, v29, v97);
        sub_26CC1B544(v29, &qword_2804BCA30, &qword_26CD3DA70);
        v130 = v96;
        v131 = URL.queryParameters.getter();
        (*(v130 + 8))(v17, v97);
        if (v131)
        {
          if (v131[2])
          {
            sub_26CC181C4(7562345, 0xE300000000000000);
            v133 = v132;

            if (v133)
            {
              sub_26CCAA6F0(v155, 3u);
              goto LABEL_74;
            }
          }

          else
          {
          }
        }
      }
    }

    v98 = v155;
    v157 = v155;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD268, &qword_26CD454B8);
    sub_26CC1DD84(&qword_2804BD270, &qword_2804BD268, &qword_26CD454B8, MEMORY[0x277D83B68]);
    sub_26CC16DCC();
    sub_26CD3A74C();
    sub_26CCAA6F0(v98, 3u);
    v99 = v8;
    sub_26CD39DFC();

    v100 = v92(v35, 1, v91);
    v44 = v153;
    v101 = v151;
    if (!v100)
    {
      v102 = sub_26CD39C8C();
      if (!(*(v149 + 48))(v103, 1, v150))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC630, &unk_26CD454C0);
        v104 = (*(v95 + 80) + 32) & ~*(v95 + 80);
        v105 = swift_allocObject();
        *(v105 + 16) = xmmword_26CD3C1E0;
        (*(v95 + 16))(v105 + v104, v99, v101);
        sub_26CD3A00C();
      }

      v102(&v157, 0);
    }

    (*(v95 + 8))(v99, v101);
  }

  else
  {
    v69 = sub_26CD39D0C();
    v70 = *(*(v69 - 8) + 48);
    v35 = v154;
    if (!v70(v154, 1, v69))
    {
      sub_26CD39C0C();
    }

    if (v155 && v155 != 1)
    {
      v114 = 1;
    }

    else
    {
      v114 = sub_26CD3AFDC();
    }

    sub_26CD39D8C();
    swift_allocObject();
    sub_26CD39D7C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC350, &unk_26CD40010);
    v115 = swift_initStackObject();
    v155 = xmmword_26CD3C1E0;
    *(v115 + 16) = xmmword_26CD3C1E0;
    *(v115 + 32) = 0xD000000000000014;
    v116 = v115 + 32;
    *(v115 + 40) = 0x800000026CD4CB30;
    *(v115 + 48) = v114 & 1;
    v117 = sub_26CC32398(v115);
    swift_setDeallocating();
    sub_26CC1B544(v116, &qword_2804BC358, &unk_26CD454D0);
    v157 = v117;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC830, &qword_26CD41D10);
    sub_26CCAA828();
    v118 = sub_26CD39D6C();
    v120 = v119;

    if (v70(v35, 1, v69))
    {
      sub_26CC18C50(v118, v120);
    }

    else
    {
      sub_26CD39CDC();
    }

    v134 = v70(v35, 1, v69);
    v44 = v153;
    if (!v134)
    {
      v136 = sub_26CD39C5C();
      if (*v135)
      {
        v137 = v135;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v156 = *v137;
        *v137 = 0x8000000000000000;
        sub_26CD38A70(0xD000000000000010, 0x800000026CD4BD10, 0x2D746E65746E6F43, 0xEC00000065707954, isUniquelyReferenced_nonNull_native);
        *v137 = v156;
      }

      v136(&v157, 0);
    }
  }

  return sub_26CC16D64(v35, v44, &qword_2804BC3F8, &qword_26CD45490);
}

uint64_t sub_26CCAA528()
{
  v0 = sub_26CD09390();
  sub_26CCAA6F0(*(v0 + OBJC_IVAR____TtCOV13TVAppServices21SportsFavoriteService10Networking28SportsFavoriteRequestBuilder_type), *(v0 + OBJC_IVAR____TtCOV13TVAppServices21SportsFavoriteService10Networking28SportsFavoriteRequestBuilder_type + 8));

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_13TVAppServices21SportsFavoriteServiceV10NetworkingO0cD14RequestBuilderC4TypeO(uint64_t a1)
{
  if ((*(a1 + 8) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 8) & 0xF;
  }
}

uint64_t sub_26CCAA63C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 9))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 8);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26CCAA684(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 8) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_26CCAA6C8(uint64_t result, unsigned int a2)
{
  if (a2 >= 8)
  {
    *result = a2 - 8;
    LOBYTE(a2) = 8;
  }

  *(result + 8) = a2;
  return result;
}

double sub_26CCAA6F0(uint64_t a1, unsigned __int8 a2)
{
  if (a2 - 1 <= 6)
  {
  }

  return result;
}

unint64_t sub_26CCAA708()
{
  result = qword_2804BD260;
  if (!qword_2804BD260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BD258, &unk_26CD454A8);
    sub_26CCAA794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD260);
  }

  return result;
}

unint64_t sub_26CCAA794()
{
  result = qword_280BB9BE0;
  if (!qword_280BB9BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2804BCA20, &unk_26CD3D4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BB9BE0);
  }

  return result;
}

uint64_t sub_26CCAA810(uint64_t result, unsigned __int8 a2)
{
  if (a2 - 1 <= 6)
  {
  }

  return v2;
}

unint64_t sub_26CCAA828()
{
  result = qword_2804BC838;
  if (!qword_2804BC838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BC830, &qword_26CD41D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC838);
  }

  return result;
}

uint64_t sub_26CCAA8AC(uint64_t *a1)
{
  v3 = sub_26CD39E2C();
  *(v1 + 288) = v3;
  *(v1 + 296) = *(v3 - 8);
  *(v1 + 304) = swift_task_alloc();
  *(v1 + 312) = swift_task_alloc();
  *(v1 + 320) = swift_task_alloc();
  sub_26CD3A07C();
  v4 = swift_task_alloc();
  *(v1 + 328) = v4;
  v5 = sub_26CD39D0C();
  *(v1 + 336) = v5;
  *(v1 + 344) = *(v5 - 8);
  *(v1 + 352) = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *a1;
  *(v1 + 360) = v6;
  *(v1 + 368) = v7;
  v8 = *(a1 + 8);
  *(v1 + 233) = v8;
  *(v1 + 224) = v7;
  *(v1 + 232) = v8;
  v9 = swift_task_alloc();
  *(v1 + 376) = v9;
  *v9 = v1;
  v9[1] = sub_26CCAAA70;

  return sub_26CCA8520(v4);
}

uint64_t sub_26CCAAA70()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_26CCAB7AC;
  }

  else
  {
    v2 = sub_26CCAAB84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CCAAB84()
{
  v1 = *(v0 + 233);
  v3 = *(v0 + 360);
  v2 = *(v0 + 368);
  v5 = *(v0 + 344);
  v4 = *(v0 + 352);
  v6 = *(v0 + 336);
  sub_26CD39C7C();
  _s10NetworkingO28SportsFavoriteRequestBuilderCMa(0);
  v7 = swift_allocObject() + OBJC_IVAR____TtCOV13TVAppServices21SportsFavoriteService10Networking28SportsFavoriteRequestBuilder_type;
  *v7 = 0;
  *(v7 + 8) = 8;
  (*(v5 + 16))(v4, v3, v6);
  v8 = sub_26CD0881C(v4);
  (*(v5 + 8))(v3, v6);
  v9 = v8 + OBJC_IVAR____TtCOV13TVAppServices21SportsFavoriteService10Networking28SportsFavoriteRequestBuilder_type;
  v10 = *(v8 + OBJC_IVAR____TtCOV13TVAppServices21SportsFavoriteService10Networking28SportsFavoriteRequestBuilder_type);
  *v9 = v2;
  LOBYTE(v3) = *(v9 + 8);
  *(v9 + 8) = v1;

  sub_26CCAA810(v2, v1);
  sub_26CCAA6F0(v10, v3);

  if (v1 <= 3)
  {
    if ((v1 - 1) < 2)
    {
      v19 = *(v0 + 368);
      v12 = *(v0 + 320);
      v20 = *(v0 + 296);
      v21 = *(v0 + 304);
      v71 = *(v0 + 312);
      v73 = *(v0 + 288);
      v22 = (v8 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method);
      v23 = *(v0 + 233);
      *v22 = 1414745936;
      v22[1] = 0xE400000000000000;

      *(v0 + 272) = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD268, &qword_26CD454B8);
      sub_26CC1DD84(&qword_2804BD270, &qword_2804BD268, &qword_26CD454B8, MEMORY[0x277D83B68]);
      sub_26CC16DCC();
      sub_26CD3A74C();
      sub_26CCAA6F0(v19, v23);
      sub_26CD39DFC();

      sub_26CD39E0C();
      sub_26CD39E1C();
      sub_26CD39DFC();

      swift_beginAccess();
      sub_26CCDEE64(v71, v21);
      v17 = *(v20 + 8);
      v18 = v73;
      v17(v71, v73);
      goto LABEL_7;
    }

    if (v1)
    {
      v44 = *(v0 + 368);
      v46 = *(v0 + 312);
      v45 = *(v0 + 320);
      v47 = *(v0 + 296);
      v48 = *(v0 + 304);
      v49 = *(v0 + 288);
      v50 = (v8 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method);
      *v50 = 1414745936;
      v50[1] = 0xE400000000000000;

      *(v0 + 256) = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD268, &qword_26CD454B8);
      sub_26CC1DD84(&qword_2804BD270, &qword_2804BD268, &qword_26CD454B8, MEMORY[0x277D83B68]);
      sub_26CC16DCC();
      sub_26CD3A74C();
      sub_26CD39DFC();

      sub_26CD39E0C();
      sub_26CD39E1C();
      sub_26CD39DFC();

      swift_beginAccess();
      sub_26CCDEE64(v46, v48);
      v51 = *(v47 + 8);
      v51(v46, v49);
      swift_endAccess();
      v51(v45, v49);
      sub_26CCAA6F0(v44, 3u);
      goto LABEL_8;
    }

    v26 = *(v0 + 368);
    v27 = (v8 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method);
    *v27 = 0x4843544150;
    v27[1] = 0xE500000000000000;

    if (v26 > 1)
    {
      v56 = 1;
    }

    else
    {
      v56 = sub_26CD3AFDC();
    }

    v57 = *(v0 + 384);

    sub_26CD39D8C();
    swift_allocObject();
    sub_26CD39D7C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC350, &unk_26CD40010);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26CD3C1E0;
    *(inited + 32) = 0xD000000000000014;
    v59 = inited + 32;
    *(inited + 40) = 0x800000026CD4CB30;
    *(inited + 48) = v56 & 1;
    v60 = sub_26CC32398(inited);
    swift_setDeallocating();
    sub_26CC1B544(v59, &qword_2804BC358, &unk_26CD454D0);
    *(v0 + 280) = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC830, &qword_26CD41D10);
    sub_26CCAA828();
    v61 = sub_26CD39D6C();
    v63 = v62;

    if (!v57)
    {
      v65 = (v8 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody);
      v66 = *(v8 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody);
      v67 = *(v8 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody + 8);
      *v65 = v61;
      v65[1] = v63;
      sub_26CCAE954(v61, v63);
      sub_26CCAE954(v61, v63);
      sub_26CC1D1B8(v66, v67);
      sub_26CC18C50(v61, v63);
      v68 = sub_26CC31D94(&unk_287DFAC70);
      sub_26CC1B544(&unk_287DFAC90, &qword_2804BBB68, &qword_26CD3C678);
      sub_26CC18C50(v61, v63);
      *(v8 + 16) = v68;

      goto LABEL_8;
    }
  }

  else
  {
    if (v1 > 6)
    {
      if (v1 == 7)
      {
        v28 = *(v0 + 368);
        v29 = *(v0 + 320);
        v69 = *(v0 + 312);
        v30 = *(v0 + 296);
        v31 = *(v0 + 304);
        v74 = *(v0 + 288);
        v32 = (v8 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method);
        *v32 = 0x4554454C4544;
        v32[1] = 0xE600000000000000;

        *(v0 + 248) = v28;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD268, &qword_26CD454B8);
        sub_26CC1DD84(&qword_2804BD270, &qword_2804BD268, &qword_26CD454B8, MEMORY[0x277D83B68]);
        sub_26CC16DCC();
        sub_26CD3A74C();
        sub_26CD39DFC();

        sub_26CD39E0C();
        sub_26CD39E1C();
        sub_26CD39DFC();

        swift_beginAccess();
        sub_26CCDEE64(v69, v31);
        v33 = *(v30 + 8);
        v33(v69, v74);
        swift_endAccess();
        v33(v29, v74);
        sub_26CCAA6F0(v28, 7u);
      }

      else
      {
        v52 = (v8 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method);
        *v52 = 5522759;
        v52[1] = 0xE300000000000000;

        *(v8 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_cachePolicy) = 4;
      }

LABEL_8:

      v24 = *(v0 + 8);

      return v24(v8);
    }

    if ((v1 - 4) < 2)
    {
      v11 = *(v0 + 368);
      v12 = *(v0 + 320);
      v13 = *(v0 + 296);
      v14 = *(v0 + 304);
      v70 = *(v0 + 312);
      v72 = *(v0 + 288);
      v15 = (v8 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method);
      v16 = *(v0 + 233);
      *v15 = 0x4554454C4544;
      v15[1] = 0xE600000000000000;

      *(v0 + 264) = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD268, &qword_26CD454B8);
      sub_26CC1DD84(&qword_2804BD270, &qword_2804BD268, &qword_26CD454B8, MEMORY[0x277D83B68]);
      sub_26CC16DCC();
      sub_26CD3A74C();
      sub_26CCAA6F0(v11, v16);
      sub_26CD39DFC();

      sub_26CD39E0C();
      sub_26CD39E1C();
      sub_26CD39DFC();

      swift_beginAccess();
      sub_26CCDEE64(v70, v14);
      v17 = *(v13 + 8);
      v18 = v72;
      v17(v70, v72);
LABEL_7:
      swift_endAccess();
      v17(v12, v18);
      goto LABEL_8;
    }

    v34 = *(v0 + 384);
    v35 = *(v0 + 368);
    v36 = (v8 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method);
    *v36 = 1414745936;
    v36[1] = 0xE400000000000000;

    sub_26CD39D8C();
    swift_allocObject();
    sub_26CD39D7C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD248, &qword_26CD45498);
    v37 = swift_initStackObject();
    *(v37 + 16) = xmmword_26CD3C1E0;
    *(v37 + 32) = 0x644965756761656CLL;
    v38 = v37 + 32;
    *(v37 + 40) = 0xE900000000000073;
    *(v37 + 48) = v35;
    v39 = sub_26CC32494(v37);
    swift_setDeallocating();
    sub_26CC1B544(v38, &qword_2804BD250, &qword_26CD454A0);
    *(v0 + 240) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD258, &unk_26CD454A8);
    sub_26CCAA708();
    v40 = sub_26CD39D6C();
    v42 = v41;
    v43 = *(v0 + 368);

    if (!v34)
    {
      v53 = (v8 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody);
      v54 = *(v8 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody);
      v55 = *(v8 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody + 8);
      *v53 = v40;
      v53[1] = v42;
      sub_26CCAE954(v40, v42);
      sub_26CC1D1B8(v54, v55);
      sub_26CCAA6F0(v43, 6u);
      sub_26CC18C50(v40, v42);
      goto LABEL_8;
    }

    sub_26CCAA6F0(v43, 6u);
  }

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_26CCAB7AC()
{
  sub_26CCAA6F0(*(v0 + 368), *(v0 + 233));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CCAB85C(unsigned __int8 *a1)
{
  v3 = sub_26CD39D0C();
  *(v1 + 32) = v3;
  *(v1 + 40) = *(v3 - 8);
  *(v1 + 48) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490);
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 16) = *a1;
  *(v1 + 24) = 0;
  v4 = swift_task_alloc();
  *(v1 + 72) = v4;
  *v4 = v1;
  v4[1] = sub_26CCAB9B8;

  return sub_26CCAA8AC((v1 + 16));
}

uint64_t sub_26CCAB9B8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_26CCABCC0;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_26CCABAE0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CCABAE0()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[4];
  v4 = v0[5];
  sub_26CCA8AA8(v1);

  sub_26CCAE9FC(v1, v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_26CC1B544(v0[8], &qword_2804BC3F8, &qword_26CD45490);
    sub_26CC1B544(v0[7], &qword_2804BC3F8, &qword_26CD45490);

    v5 = v0[1];

    return v5();
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v0[7], v0[4]);
    if (qword_280BBB0C0 != -1)
    {
      swift_once();
    }

    v7 = swift_task_alloc();
    v0[12] = v7;
    *v7 = v0;
    v7[1] = sub_26CCABD40;
    v8 = v0[6];

    return sub_26CD2BB90(v8);
  }
}

uint64_t sub_26CCABCC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CCABD40(void *a1)
{
  *(*v2 + 104) = v1;

  if (v1)
  {
    v4 = sub_26CCABF10;
  }

  else
  {

    v4 = sub_26CCABE5C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CCABE5C()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  sub_26CC1B544(v0[8], &qword_2804BC3F8, &qword_26CD45490);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26CCABF10()
{
  v1 = v0[8];
  (*(v0[5] + 8))(v0[6], v0[4]);
  sub_26CC1B544(v1, &qword_2804BC3F8, &qword_26CD45490);

  v2 = v0[1];

  return v2();
}

uint64_t sub_26CCABFC4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490);
  *(v1 + 32) = swift_task_alloc();
  v3 = sub_26CD39D0C();
  *(v1 + 40) = v3;
  *(v1 + 48) = *(v3 - 8);
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 16) = a1;
  *(v1 + 24) = 1;

  v4 = swift_task_alloc();
  *(v1 + 64) = v4;
  *v4 = v1;
  v4[1] = sub_26CCAC124;

  return sub_26CCAA8AC((v1 + 16));
}

uint64_t sub_26CCAC124(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_26CCAC520;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_26CCAC24C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CCAC24C()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_26CCA8AA8(v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26CC1B544(v0[4], &qword_2804BC3F8, &qword_26CD45490);
    if (qword_280BB9C18 != -1)
    {
      swift_once();
    }

    v4 = qword_280BBCBD0;
    v5 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_26CD3C1E0;
    *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v6 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v6 + 32) = &unk_287DFAD70;
    sub_26CD3A3DC(v5, &dword_26CC14000, v4, "%@", 2, 2, v6);

    sub_26CCAE900();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[4], v0[5]);
    if (qword_280BBB0C0 != -1)
    {
      swift_once();
    }

    v10 = swift_task_alloc();
    v0[11] = v10;
    *v10 = v0;
    v10[1] = sub_26CCAC590;
    v11 = v0[7];

    return sub_26CD2BB90(v11);
  }
}

uint64_t sub_26CCAC520()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CCAC590(void *a1)
{
  *(*v2 + 96) = v1;

  if (v1)
  {
    v4 = sub_26CCAC734;
  }

  else
  {

    v4 = sub_26CCAC6AC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CCAC6AC()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26CCAC734()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26CCAC7BC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490);
  *(v1 + 32) = swift_task_alloc();
  v3 = sub_26CD39D0C();
  *(v1 + 40) = v3;
  *(v1 + 48) = *(v3 - 8);
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 16) = a1;
  *(v1 + 24) = 2;

  v4 = swift_task_alloc();
  *(v1 + 64) = v4;
  *v4 = v1;
  v4[1] = sub_26CCAC91C;

  return sub_26CCAA8AC((v1 + 16));
}

uint64_t sub_26CCAC91C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_26CCAF71C;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_26CCACA44;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CCACA44()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_26CCA8AA8(v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26CC1B544(v0[4], &qword_2804BC3F8, &qword_26CD45490);
    if (qword_280BB9C18 != -1)
    {
      swift_once();
    }

    v4 = qword_280BBCBD0;
    v5 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_26CD3C1E0;
    *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v6 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v6 + 32) = &unk_287DFADA0;
    sub_26CD3A3DC(v5, &dword_26CC14000, v4, "%@", 2, 2, v6);

    sub_26CCAE900();
    swift_allocError();
    *v7 = 3;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[4], v0[5]);
    if (qword_280BBB0C0 != -1)
    {
      swift_once();
    }

    v10 = swift_task_alloc();
    v0[11] = v10;
    *v10 = v0;
    v10[1] = sub_26CCACD18;
    v11 = v0[7];

    return sub_26CD2BB90(v11);
  }
}

uint64_t sub_26CCACD18(void *a1)
{
  *(*v2 + 96) = v1;

  if (v1)
  {
    v4 = sub_26CCAF72C;
  }

  else
  {

    v4 = sub_26CCAF728;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CCACE34(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490);
  *(v1 + 32) = swift_task_alloc();
  v3 = sub_26CD39D0C();
  *(v1 + 40) = v3;
  *(v1 + 48) = *(v3 - 8);
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 16) = a1;
  *(v1 + 24) = 3;

  v4 = swift_task_alloc();
  *(v1 + 64) = v4;
  *v4 = v1;
  v4[1] = sub_26CCACF94;

  return sub_26CCAA8AC((v1 + 16));
}

uint64_t sub_26CCACF94(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_26CCAF71C;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_26CCAD0BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CCAD0BC()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_26CCA8AA8(v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26CC1B544(v0[4], &qword_2804BC3F8, &qword_26CD45490);
    if (qword_280BB9C18 != -1)
    {
      swift_once();
    }

    v4 = qword_280BBCBD0;
    v5 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_26CD3C1E0;
    *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v6 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v6 + 32) = &unk_287DFADD0;
    sub_26CD3A3DC(v5, &dword_26CC14000, v4, "%@", 2, 2, v6);

    sub_26CCAE900();
    swift_allocError();
    *v7 = 5;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[4], v0[5]);
    if (qword_280BBB0C0 != -1)
    {
      swift_once();
    }

    v10 = swift_task_alloc();
    v0[11] = v10;
    *v10 = v0;
    v10[1] = sub_26CCACD18;
    v11 = v0[7];

    return sub_26CD2BB90(v11);
  }
}

uint64_t sub_26CCAD390(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490);
  *(v1 + 32) = swift_task_alloc();
  v3 = sub_26CD39D0C();
  *(v1 + 40) = v3;
  *(v1 + 48) = *(v3 - 8);
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 16) = a1;
  *(v1 + 24) = 4;

  v4 = swift_task_alloc();
  *(v1 + 64) = v4;
  *v4 = v1;
  v4[1] = sub_26CCAD4F0;

  return sub_26CCAA8AC((v1 + 16));
}

uint64_t sub_26CCAD4F0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_26CCAF71C;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_26CCAD618;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CCAD618()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_26CCA8AA8(v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26CC1B544(v0[4], &qword_2804BC3F8, &qword_26CD45490);
    if (qword_280BB9C18 != -1)
    {
      swift_once();
    }

    v4 = qword_280BBCBD0;
    v5 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_26CD3C1E0;
    *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v6 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v6 + 32) = &unk_287DFAE00;
    sub_26CD3A3DC(v5, &dword_26CC14000, v4, "%@", 2, 2, v6);

    sub_26CCAE900();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[4], v0[5]);
    if (qword_280BBB0C0 != -1)
    {
      swift_once();
    }

    v10 = swift_task_alloc();
    v0[11] = v10;
    *v10 = v0;
    v10[1] = sub_26CCACD18;
    v11 = v0[7];

    return sub_26CD2BB90(v11);
  }
}

uint64_t sub_26CCAD8EC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490);
  *(v1 + 32) = swift_task_alloc();
  v3 = sub_26CD39D0C();
  *(v1 + 40) = v3;
  *(v1 + 48) = *(v3 - 8);
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 16) = a1;
  *(v1 + 24) = 5;

  v4 = swift_task_alloc();
  *(v1 + 64) = v4;
  *v4 = v1;
  v4[1] = sub_26CCADA4C;

  return sub_26CCAA8AC((v1 + 16));
}

uint64_t sub_26CCADA4C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_26CCAF71C;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_26CCADB74;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CCADB74()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_26CCA8AA8(v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26CC1B544(v0[4], &qword_2804BC3F8, &qword_26CD45490);
    if (qword_280BB9C18 != -1)
    {
      swift_once();
    }

    v4 = qword_280BBCBD0;
    v5 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_26CD3C1E0;
    *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v6 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v6 + 32) = &unk_287DFAE30;
    sub_26CD3A3DC(v5, &dword_26CC14000, v4, "%@", 2, 2, v6);

    sub_26CCAE900();
    swift_allocError();
    *v7 = 3;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[4], v0[5]);
    if (qword_280BBB0C0 != -1)
    {
      swift_once();
    }

    v10 = swift_task_alloc();
    v0[11] = v10;
    *v10 = v0;
    v10[1] = sub_26CCACD18;
    v11 = v0[7];

    return sub_26CD2BB90(v11);
  }
}

uint64_t sub_26CCADE48(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490);
  *(v1 + 32) = swift_task_alloc();
  v3 = sub_26CD39D0C();
  *(v1 + 40) = v3;
  *(v1 + 48) = *(v3 - 8);
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 16) = a1;
  *(v1 + 24) = 7;

  v4 = swift_task_alloc();
  *(v1 + 64) = v4;
  *v4 = v1;
  v4[1] = sub_26CCADFA8;

  return sub_26CCAA8AC((v1 + 16));
}

uint64_t sub_26CCADFA8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_26CCAF71C;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_26CCAE0D0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CCAE0D0()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_26CCA8AA8(v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26CC1B544(v0[4], &qword_2804BC3F8, &qword_26CD45490);
    if (qword_280BB9C18 != -1)
    {
      swift_once();
    }

    v4 = qword_280BBCBD0;
    v5 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_26CD3C1E0;
    *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v6 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v6 + 32) = &unk_287DFAE60;
    sub_26CD3A3DC(v5, &dword_26CC14000, v4, "%@", 2, 2, v6);

    sub_26CCAE900();
    swift_allocError();
    *v7 = 5;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[4], v0[5]);
    if (qword_280BBB0C0 != -1)
    {
      swift_once();
    }

    v10 = swift_task_alloc();
    v0[11] = v10;
    *v10 = v0;
    v10[1] = sub_26CCACD18;
    v11 = v0[7];

    return sub_26CD2BB90(v11);
  }
}

uint64_t sub_26CCAE3A4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490);
  *(v1 + 32) = swift_task_alloc();
  v3 = sub_26CD39D0C();
  *(v1 + 40) = v3;
  *(v1 + 48) = *(v3 - 8);
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 16) = a1;
  *(v1 + 24) = 6;

  v4 = swift_task_alloc();
  *(v1 + 64) = v4;
  *v4 = v1;
  v4[1] = sub_26CCAE504;

  return sub_26CCAA8AC((v1 + 16));
}

uint64_t sub_26CCAE504(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_26CCAF71C;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_26CCAE62C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CCAE62C()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_26CCA8AA8(v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26CC1B544(v0[4], &qword_2804BC3F8, &qword_26CD45490);
    if (qword_280BB9C18 != -1)
    {
      swift_once();
    }

    v4 = qword_280BBCBD0;
    v5 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_26CD3C1E0;
    *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v6 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v6 + 32) = &unk_287DFAE90;
    sub_26CD3A3DC(v5, &dword_26CC14000, v4, "%@", 2, 2, v6);

    sub_26CCAE900();
    swift_allocError();
    *v7 = 4;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[4], v0[5]);
    if (qword_280BBB0C0 != -1)
    {
      swift_once();
    }

    v10 = swift_task_alloc();
    v0[11] = v10;
    *v10 = v0;
    v10[1] = sub_26CCACD18;
    v11 = v0[7];

    return sub_26CD2BB90(v11);
  }
}

unint64_t sub_26CCAE900()
{
  result = qword_2804BD278;
  if (!qword_2804BD278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD278);
  }

  return result;
}

uint64_t sub_26CCAE954(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_26CCAE9A8()
{
  result = qword_2804BD280;
  if (!qword_2804BD280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD280);
  }

  return result;
}

uint64_t sub_26CCAE9FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26CCAEA6C()
{
  result = qword_2804BD288;
  if (!qword_2804BD288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD288);
  }

  return result;
}

void sub_26CCAEB28(uint64_t a1)
{
  sub_26CC16358(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26CCAEBB4(uint64_t a1)
{
  sub_26CCAEC28(319);
  if (v1 <= 0x3F)
  {
    sub_26CC16488(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_26CCAEC28(uint64_t a1)
{
  if (!qword_280BBA258[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BCA90, &qword_26CD3C200);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, qword_280BBA258);
    }
  }
}

unint64_t sub_26CCAECC8()
{
  result = qword_2804BD2A8;
  if (!qword_2804BD2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD2A8);
  }

  return result;
}

unint64_t sub_26CCAED20()
{
  result = qword_2804BD2B0;
  if (!qword_2804BD2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD2B0);
  }

  return result;
}

unint64_t sub_26CCAED74(uint64_t a1, uint64_t a2)
{
  v2 = sub_26CD3AD9C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26CCAEDC0(uint64_t a1, uint64_t a2)
{
  v2 = sub_26CD3AD9C();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26CCAEE0C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD2B8, &qword_26CD457A0);
  v16 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD2C0, &qword_26CD457A8);
  v15 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CCAF054();
  sub_26CD3B15C();
  v8 = v15;
  v9 = v16;
  sub_26CCAF0A8();
  sub_26CD3ADBC();
  v10 = sub_26CCA8294();
  v12 = v11;
  (*(v9 + 8))(v4, v2, v10);
  (*(v8 + 8))(v7, v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

unint64_t sub_26CCAF054()
{
  result = qword_2804BD2C8;
  if (!qword_2804BD2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD2C8);
  }

  return result;
}

unint64_t sub_26CCAF0A8()
{
  result = qword_2804BD2D0;
  if (!qword_2804BD2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD2D0);
  }

  return result;
}

unint64_t sub_26CCAF0FC()
{
  result = qword_2804BD2F0;
  if (!qword_2804BD2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD2F0);
  }

  return result;
}

uint64_t sub_26CCAF150(uint64_t a1)
{
  v2 = _s10NetworkingO19UserConsentResponseVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26CCAF1AC()
{
  result = qword_2804BD2F8;
  if (!qword_2804BD2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD2F8);
  }

  return result;
}

uint64_t sub_26CCAF200(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26CCAF248(uint64_t a1, uint64_t a2)
{
  v4 = _s10NetworkingO19UserConsentResponseVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26CCAF2F0()
{
  result = qword_2804BD300;
  if (!qword_2804BD300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD300);
  }

  return result;
}

unint64_t sub_26CCAF348()
{
  result = qword_2804BD308;
  if (!qword_2804BD308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD308);
  }

  return result;
}

unint64_t sub_26CCAF3A0()
{
  result = qword_2804BD310;
  if (!qword_2804BD310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD310);
  }

  return result;
}

unint64_t sub_26CCAF3F8()
{
  result = qword_2804BD318;
  if (!qword_2804BD318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD318);
  }

  return result;
}

unint64_t sub_26CCAF450()
{
  result = qword_2804BD320;
  if (!qword_2804BD320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD320);
  }

  return result;
}

unint64_t sub_26CCAF4A8()
{
  result = qword_2804BD328;
  if (!qword_2804BD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD328);
  }

  return result;
}

unint64_t sub_26CCAF500()
{
  result = qword_2804BD330;
  if (!qword_2804BD330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD330);
  }

  return result;
}

unint64_t sub_26CCAF558()
{
  result = qword_2804BD338;
  if (!qword_2804BD338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD338);
  }

  return result;
}

unint64_t sub_26CCAF5B0()
{
  result = qword_2804BD340;
  if (!qword_2804BD340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD340);
  }

  return result;
}

unint64_t sub_26CCAF608()
{
  result = qword_2804BD348;
  if (!qword_2804BD348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD348);
  }

  return result;
}

unint64_t sub_26CCAF660()
{
  result = qword_2804BD350;
  if (!qword_2804BD350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD350);
  }

  return result;
}

unint64_t sub_26CCAF6B8()
{
  result = qword_2804BD358;
  if (!qword_2804BD358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD358);
  }

  return result;
}

uint64_t _sSo8TVAppBagC0A8ServicesE3url3for10Foundation3URLVSgSS_tF_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v37 = a3;
  v7 = sub_26CD3A41C();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v10 = qword_280BBCC98;
  sub_26CD3A40C();
  v11 = sub_26CD3AA2C();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v13 = swift_allocObject();
  v40 = xmmword_26CD3C1E0;
  *(v13 + 16) = xmmword_26CD3C1E0;
  *(v13 + 56) = MEMORY[0x277D837D0];
  v14 = sub_26CC19E10();
  *(v13 + 64) = v14;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;

  v36 = v9;
  sub_26CD3A3EC(v11, &dword_26CC14000, v10, "TVAppBag.valueForKey", 20, 2, v9, "key:%s", 6);

  v41 = 0;
  v42 = 0xE000000000000000;
  sub_26CD3AC6C();

  v41 = sub_26CC19D14();
  v42 = v15;
  MEMORY[0x26D6AD060](0xD000000000000011, 0x800000026CD50320);
  MEMORY[0x26D6AD060](a1, a2);
  v35 = a1;
  v16 = v41;
  v17 = v42;
  v18 = sub_26CD3A99C();
  v34 = v12;
  v19 = v10;
  v20 = swift_allocObject();
  *(v20 + 16) = v40;
  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = v14;
  *(v20 + 32) = v16;
  *(v20 + 40) = v17;
  sub_26CD3A3DC(v18, &dword_26CC14000, v10, "%@", 2, 2, v20);

  v21 = OBJC_IVAR___TVAppBag_snapshotBagAccessLock;
  swift_beginAccess();
  os_unfair_lock_lock((v4 + v21));
  v22 = *(v4 + OBJC_IVAR___TVAppBag_snapshotBag);
  v23 = v22;
  os_unfair_lock_unlock((v4 + v21));
  swift_endAccess();
  if (v22)
  {
    v24 = v23;
    v25 = v35;
    sub_26CCB65D8(v35, a2, v24, 0, v37);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v26 = swift_allocObject();
    *(v26 + 16) = v40;
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_26CD3AC6C();
    v27 = *(v4 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
    v28 = *(v4 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

    MEMORY[0x26D6AD060](v27, v28);

    MEMORY[0x26D6AD060](0xD00000000000002FLL, 0x800000026CD50340);
    v25 = v35;
    MEMORY[0x26D6AD060](v35, a2);
    v29 = v42;
    *(v26 + 32) = v41;
    *(v26 + 40) = v29;
    v30 = sub_26CD3A98C();
    v31 = swift_allocObject();
    *(v31 + 16) = v40;
    *(v31 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v31 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v31 + 32) = v26;
    sub_26CD3A3DC(v30, &dword_26CC14000, v19, "%@", 2, 2, v31);

    sub_26CCB65D8(v25, a2, *(v4 + OBJC_IVAR___TVAppBag_amsBag), 0, v37);
  }

  sub_26CC1D5F8(v25, a2, nullsub_1, 0, &unk_287E02D58, sub_26CC2175C, &block_descriptor_52);
  sub_26CD3AA1C();
  v32 = v36;
  sub_26CD3A3FC();
  return (*(v38 + 8))(v32, v39);
}

uint64_t _sSo8TVAppBagC0A8ServicesE10dictionary3forSDys11AnyHashableVypGSgSS_tF_0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_26CD3A41C();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v9 = qword_280BBCC98;
  sub_26CD3A40C();
  v10 = sub_26CD3AA2C();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v12 = swift_allocObject();
  v39 = xmmword_26CD3C1E0;
  *(v12 + 16) = xmmword_26CD3C1E0;
  *(v12 + 56) = MEMORY[0x277D837D0];
  v13 = sub_26CC19E10();
  *(v12 + 64) = v13;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;

  v35 = v8;
  sub_26CD3A3EC(v10, &dword_26CC14000, v9, "TVAppBag.valueForKey", 20, 2, v8, "key:%s", 6);

  v40 = 0;
  v41 = 0xE000000000000000;
  sub_26CD3AC6C();

  v40 = sub_26CC19D14();
  v41 = v14;
  MEMORY[0x26D6AD060](0xD000000000000011, 0x800000026CD50320);
  MEMORY[0x26D6AD060](a1, a2);
  v36 = a1;
  v15 = v40;
  v16 = v41;
  v17 = sub_26CD3A99C();
  v34[1] = v11;
  v18 = swift_allocObject();
  *(v18 + 16) = v39;
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = v13;
  *(v18 + 32) = v15;
  *(v18 + 40) = v16;
  sub_26CD3A3DC(v17, &dword_26CC14000, v9, "%@", 2, 2, v18);

  v19 = OBJC_IVAR___TVAppBag_snapshotBagAccessLock;
  swift_beginAccess();
  os_unfair_lock_lock((v3 + v19));
  v20 = *(v3 + OBJC_IVAR___TVAppBag_snapshotBag);
  v21 = v20;
  os_unfair_lock_unlock((v3 + v19));
  swift_endAccess();
  if (v20)
  {
    v22 = v21;
    v23 = v36;
    v24 = sub_26CC22DEC(v36, a2, v22, 0, v3, &unk_2804BD450, &unk_26CD47370);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v25 = swift_allocObject();
    *(v25 + 16) = v39;
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_26CD3AC6C();
    v26 = *(v3 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
    v27 = *(v3 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

    MEMORY[0x26D6AD060](v26, v27);

    MEMORY[0x26D6AD060](0xD00000000000002FLL, 0x800000026CD50340);
    v28 = v36;
    MEMORY[0x26D6AD060](v36, a2);
    v29 = v41;
    *(v25 + 32) = v40;
    *(v25 + 40) = v29;
    v30 = sub_26CD3A98C();
    v31 = swift_allocObject();
    *(v31 + 16) = v39;
    *(v31 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v31 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v31 + 32) = v25;
    sub_26CD3A3DC(v30, &dword_26CC14000, v9, "%@", 2, 2, v31);

    v22 = *(v3 + OBJC_IVAR___TVAppBag_amsBag);
    v24 = sub_26CC22DEC(v28, a2, v22, 0, v3, &unk_2804BD450, &unk_26CD47370);
    v23 = v28;
  }

  sub_26CC1D5F8(v23, a2, nullsub_1, 0, &unk_287E02D08, sub_26CCBC444, &block_descriptor_45);
  sub_26CD3AA1C();
  v32 = v35;
  sub_26CD3A3FC();
  (*(v37 + 8))(v32, v38);
  return v24;
}

uint64_t sub_26CCB019C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_26CD3A41C();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v9 = qword_280BBCC98;
  sub_26CD3A40C();
  v10 = sub_26CD3AA2C();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v12 = swift_allocObject();
  v40 = xmmword_26CD3C1E0;
  *(v12 + 16) = xmmword_26CD3C1E0;
  *(v12 + 56) = MEMORY[0x277D837D0];
  v13 = sub_26CC19E10();
  *(v12 + 64) = v13;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;

  v37 = v8;
  sub_26CD3A3EC(v10, &dword_26CC14000, v9, "TVAppBag.valueForKey", 20, 2, v8, "key:%s", 6);

  v41 = 0;
  v42 = 0xE000000000000000;
  sub_26CD3AC6C();

  v41 = sub_26CC19D14();
  v42 = v14;
  MEMORY[0x26D6AD060](0xD000000000000011, 0x800000026CD50320);
  MEMORY[0x26D6AD060](a1, a2);
  v36 = a1;
  v15 = v41;
  v16 = v42;
  v17 = sub_26CD3A99C();
  v35[1] = v11;
  v18 = v9;
  v19 = swift_allocObject();
  *(v19 + 16) = v40;
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = v13;
  *(v19 + 32) = v15;
  *(v19 + 40) = v16;
  sub_26CD3A3DC(v17, &dword_26CC14000, v9, "%@", 2, 2, v19);

  v20 = OBJC_IVAR___TVAppBag_snapshotBagAccessLock;
  swift_beginAccess();
  os_unfair_lock_lock((v3 + v20));
  v21 = *(v3 + OBJC_IVAR___TVAppBag_snapshotBag);
  v22 = v21;
  os_unfair_lock_unlock((v3 + v20));
  swift_endAccess();
  if (v21)
  {
    v23 = v22;
    v24 = v36;
    v25 = sub_26CCBB014(v36, a2, v23, 0, v3);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v26 = swift_allocObject();
    *(v26 + 16) = v40;
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_26CD3AC6C();
    v27 = *(v3 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
    v28 = *(v3 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

    MEMORY[0x26D6AD060](v27, v28);

    MEMORY[0x26D6AD060](0xD00000000000002FLL, 0x800000026CD50340);
    v29 = v36;
    MEMORY[0x26D6AD060](v36, a2);
    v30 = v42;
    *(v26 + 32) = v41;
    *(v26 + 40) = v30;
    v31 = sub_26CD3A98C();
    v32 = swift_allocObject();
    *(v32 + 16) = v40;
    *(v32 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v32 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v32 + 32) = v26;
    sub_26CD3A3DC(v31, &dword_26CC14000, v18, "%@", 2, 2, v32);

    v23 = *(v3 + OBJC_IVAR___TVAppBag_amsBag);
    v25 = sub_26CCBB014(v29, a2, v23, 0, v3);
    v24 = v29;
  }

  sub_26CC1D5F8(v24, a2, nullsub_1, 0, &unk_287E02C68, sub_26CC21730, &block_descriptor_31);
  sub_26CD3AA1C();
  v33 = v37;
  sub_26CD3A3FC();
  (*(v38 + 8))(v33, v39);
  return v25;
}

uint64_t sub_26CCB06C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_26CD3A41C();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v9 = qword_280BBCC98;
  sub_26CD3A40C();
  v10 = sub_26CD3AA2C();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v12 = swift_allocObject();
  v39 = xmmword_26CD3C1E0;
  *(v12 + 16) = xmmword_26CD3C1E0;
  *(v12 + 56) = MEMORY[0x277D837D0];
  v13 = sub_26CC19E10();
  *(v12 + 64) = v13;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;

  v35 = v8;
  sub_26CD3A3EC(v10, &dword_26CC14000, v9, "TVAppBag.valueForKey", 20, 2, v8, "key:%s", 6);

  v40 = 0;
  v41 = 0xE000000000000000;
  sub_26CD3AC6C();

  v40 = sub_26CC19D14();
  v41 = v14;
  MEMORY[0x26D6AD060](0xD000000000000011, 0x800000026CD50320);
  MEMORY[0x26D6AD060](a1, a2);
  v36 = a1;
  v15 = v40;
  v16 = v41;
  v17 = sub_26CD3A99C();
  v34[1] = v11;
  v18 = swift_allocObject();
  *(v18 + 16) = v39;
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = v13;
  *(v18 + 32) = v15;
  *(v18 + 40) = v16;
  sub_26CD3A3DC(v17, &dword_26CC14000, v9, "%@", 2, 2, v18);

  v19 = OBJC_IVAR___TVAppBag_snapshotBagAccessLock;
  swift_beginAccess();
  os_unfair_lock_lock((v3 + v19));
  v20 = *(v3 + OBJC_IVAR___TVAppBag_snapshotBag);
  v21 = v20;
  os_unfair_lock_unlock((v3 + v19));
  swift_endAccess();
  if (v20)
  {
    v22 = v21;
    v23 = v36;
    v24 = sub_26CCBB644(v36, a2, v22, 0, v3, MEMORY[0x277D83B88]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v25 = swift_allocObject();
    *(v25 + 16) = v39;
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_26CD3AC6C();
    v26 = *(v3 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
    v27 = *(v3 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

    MEMORY[0x26D6AD060](v26, v27);

    MEMORY[0x26D6AD060](0xD00000000000002FLL, 0x800000026CD50340);
    v28 = v36;
    MEMORY[0x26D6AD060](v36, a2);
    v29 = v41;
    *(v25 + 32) = v40;
    *(v25 + 40) = v29;
    v30 = sub_26CD3A98C();
    v31 = swift_allocObject();
    *(v31 + 16) = v39;
    *(v31 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v31 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v31 + 32) = v25;
    sub_26CD3A3DC(v30, &dword_26CC14000, v9, "%@", 2, 2, v31);

    v22 = *(v3 + OBJC_IVAR___TVAppBag_amsBag);
    v24 = sub_26CCBB644(v28, a2, v22, 0, v3, MEMORY[0x277D83B88]);
    v23 = v28;
  }

  sub_26CC1D5F8(v23, a2, nullsub_1, 0, &unk_287E02C18, sub_26CC211C0, &block_descriptor_24);
  sub_26CD3AA1C();
  v32 = v35;
  sub_26CD3A3FC();
  (*(v37 + 8))(v32, v38);
  return v24;
}

uint64_t sub_26CCB0C04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_26CD3A41C();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v9 = qword_280BBCC98;
  sub_26CD3A40C();
  v10 = sub_26CD3AA2C();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v12 = swift_allocObject();
  v39 = xmmword_26CD3C1E0;
  *(v12 + 16) = xmmword_26CD3C1E0;
  *(v12 + 56) = MEMORY[0x277D837D0];
  v13 = sub_26CC19E10();
  *(v12 + 64) = v13;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;

  v35 = v8;
  sub_26CD3A3EC(v10, &dword_26CC14000, v9, "TVAppBag.valueForKey", 20, 2, v8, "key:%s", 6);

  v40 = 0;
  v41 = 0xE000000000000000;
  sub_26CD3AC6C();

  v40 = sub_26CC19D14();
  v41 = v14;
  MEMORY[0x26D6AD060](0xD000000000000011, 0x800000026CD50320);
  MEMORY[0x26D6AD060](a1, a2);
  v36 = a1;
  v15 = v40;
  v16 = v41;
  v17 = sub_26CD3A99C();
  v34[1] = v11;
  v18 = swift_allocObject();
  *(v18 + 16) = v39;
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = v13;
  *(v18 + 32) = v15;
  *(v18 + 40) = v16;
  sub_26CD3A3DC(v17, &dword_26CC14000, v9, "%@", 2, 2, v18);

  v19 = OBJC_IVAR___TVAppBag_snapshotBagAccessLock;
  swift_beginAccess();
  os_unfair_lock_lock((v3 + v19));
  v20 = *(v3 + OBJC_IVAR___TVAppBag_snapshotBag);
  v21 = v20;
  os_unfair_lock_unlock((v3 + v19));
  swift_endAccess();
  if (v20)
  {
    v22 = v21;
    v23 = v36;
    v24 = sub_26CCBB644(v36, a2, v22, 0, v3, MEMORY[0x277D839F8]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v25 = swift_allocObject();
    *(v25 + 16) = v39;
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_26CD3AC6C();
    v26 = *(v3 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
    v27 = *(v3 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

    MEMORY[0x26D6AD060](v26, v27);

    MEMORY[0x26D6AD060](0xD00000000000002FLL, 0x800000026CD50340);
    v28 = v36;
    MEMORY[0x26D6AD060](v36, a2);
    v29 = v41;
    *(v25 + 32) = v40;
    *(v25 + 40) = v29;
    v30 = sub_26CD3A98C();
    v31 = swift_allocObject();
    *(v31 + 16) = v39;
    *(v31 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v31 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v31 + 32) = v25;
    sub_26CD3A3DC(v30, &dword_26CC14000, v9, "%@", 2, 2, v31);

    v22 = *(v3 + OBJC_IVAR___TVAppBag_amsBag);
    v24 = sub_26CCBB644(v28, a2, v22, 0, v3, MEMORY[0x277D839F8]);
    v23 = v28;
  }

  sub_26CC1D5F8(v23, a2, nullsub_1, 0, &unk_287E02B78, sub_26CCBC414, &block_descriptor_7);
  sub_26CD3AA1C();
  v32 = v35;
  sub_26CD3A3FC();
  (*(v37 + 8))(v32, v38);
  return v24;
}

uint64_t TVAppBag.value<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v41 = a4;
  v42 = a3;
  v8 = sub_26CD3A41C();
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v11 = qword_280BBCC98;
  sub_26CD3A40C();
  v12 = sub_26CD3AA2C();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v14 = swift_allocObject();
  v45 = xmmword_26CD3C1E0;
  *(v14 + 16) = xmmword_26CD3C1E0;
  *(v14 + 56) = MEMORY[0x277D837D0];
  v15 = sub_26CC19E10();
  *(v14 + 64) = v15;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;

  v40 = v10;
  sub_26CD3A3EC(v12, &dword_26CC14000, v11, "TVAppBag.valueForKey", 20, 2, v10, "key:%s", 6);

  v46 = 0;
  v47 = 0xE000000000000000;
  sub_26CD3AC6C();
  v16 = sub_26CC19D14();
  v18 = v17;

  v46 = v16;
  v47 = v18;
  MEMORY[0x26D6AD060](0xD000000000000011, 0x800000026CD50320);
  MEMORY[0x26D6AD060](a1, a2);
  v39 = a1;
  v19 = v46;
  v20 = v47;
  v21 = sub_26CD3A99C();
  v38[1] = v13;
  v22 = v11;
  v23 = swift_allocObject();
  *(v23 + 16) = v45;
  *(v23 + 56) = MEMORY[0x277D837D0];
  *(v23 + 64) = v15;
  *(v23 + 32) = v19;
  *(v23 + 40) = v20;
  sub_26CD3A3DC(v21, &dword_26CC14000, v11, "%@", 2, 2, v23);

  v24 = OBJC_IVAR___TVAppBag_snapshotBagAccessLock;
  swift_beginAccess();
  os_unfair_lock_lock((v5 + v24));
  v25 = *(v5 + OBJC_IVAR___TVAppBag_snapshotBag);
  v26 = v25;
  os_unfair_lock_unlock((v5 + v24));
  swift_endAccess();
  if (v25)
  {
    v27 = v26;
    v28 = v42;
    v29 = v39;
    sub_26CCB6CD4(v39, a2, v27, 0, v42, v41);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v30 = swift_allocObject();
    *(v30 + 16) = v45;
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_26CD3AC6C();
    v31 = *(v5 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
    v32 = *(v5 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

    MEMORY[0x26D6AD060](v31, v32);

    MEMORY[0x26D6AD060](0xD00000000000002FLL, 0x800000026CD50340);
    v29 = v39;
    MEMORY[0x26D6AD060](v39, a2);
    v33 = v47;
    *(v30 + 32) = v46;
    *(v30 + 40) = v33;
    v34 = sub_26CD3A98C();
    v35 = swift_allocObject();
    *(v35 + 16) = v45;
    *(v35 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v35 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v35 + 32) = v30;
    sub_26CD3A3DC(v34, &dword_26CC14000, v22, "%@", 2, 2, v35);

    v28 = v42;
    sub_26CCB6CD4(v29, a2, *(v5 + OBJC_IVAR___TVAppBag_amsBag), 0, v42, v41);
  }

  sub_26CCB77D0(v5, v29, a2, v28, &unk_287E02EC0, nullsub_1);
  sub_26CD3AA1C();
  v36 = v40;
  sub_26CD3A3FC();
  return (*(v43 + 8))(v36, v44);
}

uint64_t sub_26CCB1654()
{
  v7 = sub_26CD3A9CC();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26CD3A9BC();
  MEMORY[0x28223BE20](v3);
  v4 = sub_26CD3A4CC();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_26CC18080(0, &qword_280BBB790, 0x277D85C78);
  sub_26CD3A4BC();
  v8 = MEMORY[0x277D84F90];
  sub_26CC1A360(&unk_280BBB798, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC80, &unk_26CD45D70);
  sub_26CC1DD84(&qword_280BBB7B8, &unk_2804BCC80, &unk_26CD45D70, MEMORY[0x277D83970]);
  sub_26CD3AB5C();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_26CD3AA0C();
  qword_280BBB738 = result;
  return result;
}

id static TVAppBag.app.getter()
{
  if (qword_280BBB718 != -1)
  {
    swift_once();
  }

  v1 = qword_280BBB720;

  return v1;
}

uint64_t sub_26CCB1924(uint64_t a1, uint64_t a2)
{
  sub_26CD3AA1C();
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  return sub_26CD3A3FC();
}

void sub_26CCB19B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a5;
  v34 = a3;
  v35 = a4;
  v8 = sub_26CD3A49C();
  v38 = *(v8 - 8);
  v39 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26CD3A4CC();
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [*(v5 + OBJC_IVAR___TVAppBag_amsBag) isExpired];
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v15 = qword_280BBCC98;
  aBlock = 0;
  v42 = 0xE000000000000000;
  sub_26CD3AC6C();
  v16 = sub_26CC19D14();
  v18 = v17;

  aBlock = v16;
  v42 = v18;
  MEMORY[0x26D6AD060](0xD00000000000001DLL, 0x800000026CD506E0);
  v32 = a1;
  MEMORY[0x26D6AD060](a1, a2);
  MEMORY[0x26D6AD060](0x697078457369202CLL, 0xEC0000003D646572);
  if (v14)
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (v14)
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  MEMORY[0x26D6AD060](v19, v20);

  v22 = aBlock;
  v21 = v42;
  v23 = sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26CD3C1E0;
  *(v24 + 56) = MEMORY[0x277D837D0];
  *(v24 + 64) = sub_26CC19E10();
  *(v24 + 32) = v22;
  *(v24 + 40) = v21;
  sub_26CD3A3DC(v23, &dword_26CC14000, v15, "%@", 2, 2, v24);

  if (v14)
  {
    if (qword_280BBB6A8 != -1)
    {
      swift_once();
    }

    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    v27 = v32;
    v26[2] = v33;
    v26[3] = v25;
    v26[4] = v27;
    v26[5] = a2;
    v28 = v35;
    v26[6] = v34;
    v26[7] = v28;
    v45 = sub_26CCBC434;
    v46 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_26CC1DDD0;
    v44 = &block_descriptor_17;
    v29 = _Block_copy(&aBlock);

    sub_26CD3A4AC();
    v40 = MEMORY[0x277D84F90];
    sub_26CC1A360(&qword_280BBB7F0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC40, &unk_26CD45D50);
    sub_26CC1DD84(&qword_280BBB7D0, &unk_2804BCC40, &unk_26CD45D50, MEMORY[0x277D83970]);
    v30 = v39;
    sub_26CD3AB5C();
    MEMORY[0x26D6AD3E0](0, v13, v10, v29);
    _Block_release(v29);
    (*(v38 + 8))(v10, v30);
    (*(v36 + 8))(v13, v37);
  }
}

NSNumber_optional __swiftcall TVAppBag.BOOLean(for:)(Swift::String a1)
{
  v1 = sub_26CCB61CC(a1._countAndFlagsBits, a1._object, sub_26CCB019C);
  result.value.super.super.isa = v1;
  result.is_nil = v2;
  return result;
}

NSNumber_optional __swiftcall TVAppBag.integer(for:)(Swift::String a1)
{
  v1 = sub_26CCB623C(a1._countAndFlagsBits, a1._object, sub_26CCB06C4);
  result.value.super.super.isa = v1;
  result.is_nil = v2;
  return result;
}

NSNumber_optional __swiftcall TVAppBag.double(for:)(Swift::String a1)
{
  v1 = sub_26CCB634C(a1._countAndFlagsBits, a1._object, sub_26CCB0C04);
  result.value.super.super.isa = v1;
  result.is_nil = v2;
  return result;
}

uint64_t sub_26CCB1F84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_26CD3A41C();
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v9 = qword_280BBCC98;
  sub_26CD3A40C();
  v10 = sub_26CD3AA2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v11 = swift_allocObject();
  v58 = xmmword_26CD3C1E0;
  *(v11 + 16) = xmmword_26CD3C1E0;
  v12 = MEMORY[0x277D837D0];
  *(v11 + 56) = MEMORY[0x277D837D0];
  v13 = sub_26CC19E10();
  *(v11 + 64) = v13;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;

  v54 = v8;
  sub_26CD3A3EC(v10, &dword_26CC14000, v9, "TVAppBag.cachedValueForKey", 26, 2, v8, "key:%s", 6);

  *&v63 = 0;
  *(&v63 + 1) = 0xE000000000000000;
  sub_26CD3AC6C();

  *&v63 = sub_26CC19D14();
  *(&v63 + 1) = v14;
  MEMORY[0x26D6AD060](0xD000000000000017, 0x800000026CD503D0);
  MEMORY[0x26D6AD060](a1, a2);
  v57 = v3;
  v15 = v63;
  v16 = sub_26CD3A99C();
  v17 = swift_allocObject();
  *(v17 + 16) = v58;
  *(v17 + 56) = v12;
  *(v17 + 64) = v13;
  v53 = v13;
  *(v17 + 32) = v15;
  v18 = v57;
  v19 = v9;
  sub_26CD3A3DC(v16, &dword_26CC14000, v9, "%@", 2, 2, v17);

  if (sub_26CC2016C(a1, a2, *(v18 + OBJC_IVAR___TVAppBag_diskCachedKeys)))
  {
    v20 = OBJC_IVAR___TVAppBag_cachedBagAccessLock;
    swift_beginAccess();
    os_unfair_lock_lock((v18 + v20));
    v21 = *(v18 + OBJC_IVAR___TVAppBag_cachedBags);

    os_unfair_lock_unlock((v18 + v20));
    swift_endAccess();
    if (*(v21 + 16))
    {
      v22 = sub_26CC181C4(a1, a2);
      v23 = v54;
      if (v24)
      {
        sub_26CC168C0(*(v21 + 56) + 32 * v22, &v63);
      }

      else
      {

        v63 = 0u;
        v64 = 0u;
      }
    }

    else
    {

      v63 = 0u;
      v64 = 0u;
      v23 = v54;
    }

    sub_26CC200FC(&v63, &v61);
    if (v62)
    {
      sub_26CC18080(0, &unk_280BBB760, 0x277CBEB68);
      if (swift_dynamicCast())
      {

        *&v61 = 0;
        *(&v61 + 1) = 0xE000000000000000;
        sub_26CD3AC6C();
        v32 = *(v57 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
        v33 = *(v57 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

        MEMORY[0x26D6AD060](v32, v33);

        MEMORY[0x26D6AD060](0xD000000000000038, 0x800000026CD504B0);
        v34 = v61;
        v35 = sub_26CD3A99C();
        v36 = swift_allocObject();
        *(v36 + 16) = v58;
        v37 = v53;
        *(v36 + 56) = MEMORY[0x277D837D0];
        *(v36 + 64) = v37;
        *(v36 + 32) = v34;
        sub_26CD3A3DC(v35, &dword_26CC14000, v9, "%@", 2, 2, v36);

        sub_26CC1D5F8(a1, a2, nullsub_1, 0, &unk_287E02DF8, sub_26CC1DE14, &block_descriptor_65);
        sub_26CC1B544(&v63, &qword_2804BBDA8, &qword_26CD3D5F0);
        v31 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      sub_26CC1B544(&v61, &qword_2804BBDA8, &qword_26CD3D5F0);
    }

    v38 = sub_26CCBBC88(&v63);
    if (v39)
    {
      v31 = v38;

      sub_26CC1D5F8(a1, a2, nullsub_1, 0, &unk_287E02DF8, sub_26CC1DE14, &block_descriptor_65);
    }

    else
    {
      sub_26CC200FC(&v63, &v59);
      v52 = v9;
      if (v60)
      {
        sub_26CC331CC(&v59, &v61);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
        v40 = swift_allocObject();
        *(v40 + 16) = v58;
        *&v59 = 0;
        *(&v59 + 1) = 0xE000000000000000;
        sub_26CD3AC6C();
        MEMORY[0x26D6AD060](0xD000000000000027, 0x800000026CD50460);
        MEMORY[0x26D6AD060](a1, a2);
        MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD50490);
        __swift_project_boxed_opaque_existential_1(&v61, v62);
        swift_getDynamicType();
        v41 = sub_26CD3B1AC();
        MEMORY[0x26D6AD060](v41);

        MEMORY[0x26D6AD060](0x2065756C6176202CLL, 0xEA0000000000203DLL);
        sub_26CD3AD1C();
        v42 = *(&v59 + 1);
        *(v40 + 32) = v59;
        *(v40 + 40) = v42;
        LODWORD(v54) = sub_26CD3A98C();
        v43 = swift_allocObject();
        *(v43 + 16) = v58;
        *(v43 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
        *(v43 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
        *(v43 + 32) = v40;
        sub_26CD3A3DC(v54, &dword_26CC14000, v9, "%@", 2, 2, v43);

        __swift_destroy_boxed_opaque_existential_1(&v61);
      }

      else
      {
        sub_26CC1B544(&v59, &qword_2804BBDA8, &qword_26CD3D5F0);
      }

      *&v61 = 0;
      *(&v61 + 1) = 0xE000000000000000;
      sub_26CD3AC6C();
      v44 = v57;
      v45 = *(v57 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
      v46 = *(v57 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

      MEMORY[0x26D6AD060](v45, v46);

      MEMORY[0x26D6AD060](0xD00000000000003ALL, 0x800000026CD50420);
      MEMORY[0x26D6AD060](a1, a2);
      v47 = v61;
      v48 = sub_26CD3A99C();
      v49 = swift_allocObject();
      *(v49 + 16) = v58;
      v50 = v53;
      *(v49 + 56) = MEMORY[0x277D837D0];
      *(v49 + 64) = v50;
      *(v49 + 32) = v47;
      sub_26CD3A3DC(v48, &dword_26CC14000, v52, "%@", 2, 2, v49);

      v31 = sub_26CC227C4(a1, a2, *(v44 + OBJC_IVAR___TVAppBag_amsBag), 1, v44);
    }

    sub_26CC1B544(&v63, &qword_2804BBDA8, &qword_26CD3D5F0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v25 = swift_allocObject();
    *(v25 + 16) = v58;
    *&v63 = 0;
    *(&v63 + 1) = 0xE000000000000000;
    sub_26CD3AC6C();

    v26 = *(v18 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);
    *&v63 = *(v18 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
    *(&v63 + 1) = v26;

    MEMORY[0x26D6AD060](0xD000000000000028, 0x800000026CD503F0);
    MEMORY[0x26D6AD060](a1, a2);
    v27 = *(&v63 + 1);
    *(v25 + 32) = v63;
    *(v25 + 40) = v27;
    v28 = sub_26CD3A98C();
    v29 = a1;
    v30 = swift_allocObject();
    *(v30 + 16) = v58;
    *(v30 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v30 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v30 + 32) = v25;
    sub_26CD3A3DC(v28, &dword_26CC14000, v19, "%@", 2, 2, v30);

    v31 = _sSo8TVAppBagC0A8ServicesE6string3forSSSgSS_tF_0(v29, a2);
    v23 = v54;
  }

LABEL_21:
  sub_26CD3AA1C();
  sub_26CD3A3FC();
  (*(v55 + 8))(v23, v56);
  return v31;
}

uint64_t _sSo8TVAppBagC0A8ServicesE16cachedDictionary3forSDys11AnyHashableVypGSgSS_tF_0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_26CD3A41C();
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v9 = qword_280BBCC98;
  sub_26CD3A40C();
  v10 = sub_26CD3AA2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v11 = swift_allocObject();
  v58 = xmmword_26CD3C1E0;
  *(v11 + 16) = xmmword_26CD3C1E0;
  v12 = MEMORY[0x277D837D0];
  *(v11 + 56) = MEMORY[0x277D837D0];
  v13 = sub_26CC19E10();
  *(v11 + 64) = v13;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;

  v54 = v8;
  sub_26CD3A3EC(v10, &dword_26CC14000, v9, "TVAppBag.cachedValueForKey", 26, 2, v8, "key:%s", 6);

  *&v63 = 0;
  *(&v63 + 1) = 0xE000000000000000;
  sub_26CD3AC6C();

  *&v63 = sub_26CC19D14();
  *(&v63 + 1) = v14;
  MEMORY[0x26D6AD060](0xD000000000000017, 0x800000026CD503D0);
  MEMORY[0x26D6AD060](a1, a2);
  v57 = v3;
  v15 = v63;
  v16 = sub_26CD3A99C();
  v17 = swift_allocObject();
  *(v17 + 16) = v58;
  *(v17 + 56) = v12;
  *(v17 + 64) = v13;
  v53 = v13;
  *(v17 + 32) = v15;
  v18 = v57;
  v19 = v9;
  sub_26CD3A3DC(v16, &dword_26CC14000, v9, "%@", 2, 2, v17);

  v20 = a1;
  if (sub_26CC2016C(a1, a2, *(v18 + OBJC_IVAR___TVAppBag_diskCachedKeys)))
  {
    v21 = OBJC_IVAR___TVAppBag_cachedBagAccessLock;
    swift_beginAccess();
    os_unfair_lock_lock((v18 + v21));
    v22 = *(v18 + OBJC_IVAR___TVAppBag_cachedBags);

    os_unfair_lock_unlock((v18 + v21));
    swift_endAccess();
    if (*(v22 + 16))
    {
      v23 = sub_26CC181C4(a1, a2);
      v24 = v54;
      if (v25)
      {
        sub_26CC168C0(*(v22 + 56) + 32 * v23, &v63);
      }

      else
      {

        v63 = 0u;
        v64 = 0u;
      }
    }

    else
    {

      v63 = 0u;
      v64 = 0u;
      v24 = v54;
    }

    sub_26CC200FC(&v63, &v61);
    if (v62)
    {
      sub_26CC18080(0, &unk_280BBB760, 0x277CBEB68);
      if (swift_dynamicCast())
      {

        *&v61 = 0;
        *(&v61 + 1) = 0xE000000000000000;
        sub_26CD3AC6C();
        v33 = *(v57 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
        v34 = *(v57 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

        MEMORY[0x26D6AD060](v33, v34);

        MEMORY[0x26D6AD060](0xD000000000000038, 0x800000026CD504B0);
        v35 = v61;
        v36 = sub_26CD3A99C();
        v37 = swift_allocObject();
        *(v37 + 16) = v58;
        v38 = v53;
        *(v37 + 56) = MEMORY[0x277D837D0];
        *(v37 + 64) = v38;
        *(v37 + 32) = v35;
        sub_26CD3A3DC(v36, &dword_26CC14000, v19, "%@", 2, 2, v37);

        sub_26CC1D5F8(a1, a2, nullsub_1, 0, &unk_287E02D08, sub_26CCBC444, &block_descriptor_45);
        sub_26CC1B544(&v63, &qword_2804BBDA8, &qword_26CD3D5F0);
        v32 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      sub_26CC1B544(&v61, &qword_2804BBDA8, &qword_26CD3D5F0);
    }

    v39 = sub_26CCBBE08(&v63, &unk_2804BD450, &unk_26CD47370);
    if (v39)
    {
      v32 = v39;

      sub_26CC1D5F8(a1, a2, nullsub_1, 0, &unk_287E02D08, sub_26CCBC444, &block_descriptor_45);
    }

    else
    {
      sub_26CC200FC(&v63, &v59);
      v52 = v19;
      if (v60)
      {
        sub_26CC331CC(&v59, &v61);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
        v40 = swift_allocObject();
        *(v40 + 16) = v58;
        *&v59 = 0;
        *(&v59 + 1) = 0xE000000000000000;
        sub_26CD3AC6C();
        MEMORY[0x26D6AD060](0xD000000000000027, 0x800000026CD50460);
        MEMORY[0x26D6AD060](a1, a2);
        MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD50490);
        __swift_project_boxed_opaque_existential_1(&v61, v62);
        swift_getDynamicType();
        v41 = sub_26CD3B1AC();
        MEMORY[0x26D6AD060](v41);

        MEMORY[0x26D6AD060](0x2065756C6176202CLL, 0xEA0000000000203DLL);
        sub_26CD3AD1C();
        v42 = *(&v59 + 1);
        *(v40 + 32) = v59;
        *(v40 + 40) = v42;
        LODWORD(v54) = sub_26CD3A98C();
        v43 = swift_allocObject();
        *(v43 + 16) = v58;
        *(v43 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
        *(v43 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
        *(v43 + 32) = v40;
        sub_26CD3A3DC(v54, &dword_26CC14000, v19, "%@", 2, 2, v43);

        __swift_destroy_boxed_opaque_existential_1(&v61);
      }

      else
      {
        sub_26CC1B544(&v59, &qword_2804BBDA8, &qword_26CD3D5F0);
      }

      *&v61 = 0;
      *(&v61 + 1) = 0xE000000000000000;
      sub_26CD3AC6C();
      v44 = v57;
      v45 = *(v57 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
      v46 = *(v57 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

      MEMORY[0x26D6AD060](v45, v46);

      MEMORY[0x26D6AD060](0xD00000000000003ALL, 0x800000026CD50420);
      MEMORY[0x26D6AD060](v20, a2);
      v47 = v61;
      v48 = sub_26CD3A99C();
      v49 = swift_allocObject();
      *(v49 + 16) = v58;
      v50 = v53;
      *(v49 + 56) = MEMORY[0x277D837D0];
      *(v49 + 64) = v50;
      *(v49 + 32) = v47;
      sub_26CD3A3DC(v48, &dword_26CC14000, v52, "%@", 2, 2, v49);

      v32 = sub_26CC22DEC(v20, a2, *(v44 + OBJC_IVAR___TVAppBag_amsBag), 1, v44, &unk_2804BD450, &unk_26CD47370);
    }

    sub_26CC1B544(&v63, &qword_2804BBDA8, &qword_26CD3D5F0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v26 = v18;
    v27 = swift_allocObject();
    *(v27 + 16) = v58;
    *&v63 = 0;
    *(&v63 + 1) = 0xE000000000000000;
    sub_26CD3AC6C();

    v28 = *(v26 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);
    *&v63 = *(v26 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
    *(&v63 + 1) = v28;

    MEMORY[0x26D6AD060](0xD000000000000028, 0x800000026CD503F0);
    MEMORY[0x26D6AD060](v20, a2);
    v29 = *(&v63 + 1);
    *(v27 + 32) = v63;
    *(v27 + 40) = v29;
    v30 = sub_26CD3A98C();
    v31 = swift_allocObject();
    *(v31 + 16) = v58;
    *(v31 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v31 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v31 + 32) = v27;
    sub_26CD3A3DC(v30, &dword_26CC14000, v19, "%@", 2, 2, v31);

    v32 = _sSo8TVAppBagC0A8ServicesE10dictionary3forSDys11AnyHashableVypGSgSS_tF_0(v20, a2);
    v24 = v54;
  }

LABEL_21:
  sub_26CD3AA1C();
  sub_26CD3A3FC();
  (*(v55 + 8))(v24, v56);
  return v32;
}

uint64_t _sSo8TVAppBagC0A8ServicesE11cachedArray3forSayypGSgSS_tF_0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_26CD3A41C();
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v9 = qword_280BBCC98;
  sub_26CD3A40C();
  v10 = sub_26CD3AA2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v11 = swift_allocObject();
  v58 = xmmword_26CD3C1E0;
  *(v11 + 16) = xmmword_26CD3C1E0;
  v12 = MEMORY[0x277D837D0];
  *(v11 + 56) = MEMORY[0x277D837D0];
  v13 = sub_26CC19E10();
  *(v11 + 64) = v13;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;

  v54 = v8;
  sub_26CD3A3EC(v10, &dword_26CC14000, v9, "TVAppBag.cachedValueForKey", 26, 2, v8, "key:%s", 6);

  *&v63 = 0;
  *(&v63 + 1) = 0xE000000000000000;
  sub_26CD3AC6C();

  *&v63 = sub_26CC19D14();
  *(&v63 + 1) = v14;
  MEMORY[0x26D6AD060](0xD000000000000017, 0x800000026CD503D0);
  MEMORY[0x26D6AD060](a1, a2);
  v57 = v3;
  v15 = v63;
  v16 = sub_26CD3A99C();
  v17 = swift_allocObject();
  *(v17 + 16) = v58;
  *(v17 + 56) = v12;
  *(v17 + 64) = v13;
  v53 = v13;
  *(v17 + 32) = v15;
  v18 = v57;
  v19 = v9;
  sub_26CD3A3DC(v16, &dword_26CC14000, v9, "%@", 2, 2, v17);

  v20 = a1;
  if (sub_26CC2016C(a1, a2, *(v18 + OBJC_IVAR___TVAppBag_diskCachedKeys)))
  {
    v21 = OBJC_IVAR___TVAppBag_cachedBagAccessLock;
    swift_beginAccess();
    os_unfair_lock_lock((v18 + v21));
    v22 = *(v18 + OBJC_IVAR___TVAppBag_cachedBags);

    os_unfair_lock_unlock((v18 + v21));
    swift_endAccess();
    if (*(v22 + 16))
    {
      v23 = sub_26CC181C4(a1, a2);
      v24 = v54;
      if (v25)
      {
        sub_26CC168C0(*(v22 + 56) + 32 * v23, &v63);
      }

      else
      {

        v63 = 0u;
        v64 = 0u;
      }
    }

    else
    {

      v63 = 0u;
      v64 = 0u;
      v24 = v54;
    }

    sub_26CC200FC(&v63, &v61);
    if (v62)
    {
      sub_26CC18080(0, &unk_280BBB760, 0x277CBEB68);
      if (swift_dynamicCast())
      {

        *&v61 = 0;
        *(&v61 + 1) = 0xE000000000000000;
        sub_26CD3AC6C();
        v33 = *(v57 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
        v34 = *(v57 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

        MEMORY[0x26D6AD060](v33, v34);

        MEMORY[0x26D6AD060](0xD000000000000038, 0x800000026CD504B0);
        v35 = v61;
        v36 = sub_26CD3A99C();
        v37 = swift_allocObject();
        *(v37 + 16) = v58;
        v38 = v53;
        *(v37 + 56) = MEMORY[0x277D837D0];
        *(v37 + 64) = v38;
        *(v37 + 32) = v35;
        sub_26CD3A3DC(v36, &dword_26CC14000, v19, "%@", 2, 2, v37);

        sub_26CC1D5F8(a1, a2, nullsub_1, 0, &unk_287E02CB8, sub_26CC23F40, &block_descriptor_38);
        sub_26CC1B544(&v63, &qword_2804BBDA8, &qword_26CD3D5F0);
        v32 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      sub_26CC1B544(&v61, &qword_2804BBDA8, &qword_26CD3D5F0);
    }

    v39 = sub_26CCBBE08(&v63, &unk_2804BD460, &unk_26CD45D60);
    if (v39)
    {
      v32 = v39;

      sub_26CC1D5F8(a1, a2, nullsub_1, 0, &unk_287E02CB8, sub_26CC23F40, &block_descriptor_38);
    }

    else
    {
      sub_26CC200FC(&v63, &v59);
      v52 = v19;
      if (v60)
      {
        sub_26CC331CC(&v59, &v61);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
        v40 = swift_allocObject();
        *(v40 + 16) = v58;
        *&v59 = 0;
        *(&v59 + 1) = 0xE000000000000000;
        sub_26CD3AC6C();
        MEMORY[0x26D6AD060](0xD000000000000027, 0x800000026CD50460);
        MEMORY[0x26D6AD060](a1, a2);
        MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD50490);
        __swift_project_boxed_opaque_existential_1(&v61, v62);
        swift_getDynamicType();
        v41 = sub_26CD3B1AC();
        MEMORY[0x26D6AD060](v41);

        MEMORY[0x26D6AD060](0x2065756C6176202CLL, 0xEA0000000000203DLL);
        sub_26CD3AD1C();
        v42 = *(&v59 + 1);
        *(v40 + 32) = v59;
        *(v40 + 40) = v42;
        LODWORD(v54) = sub_26CD3A98C();
        v43 = swift_allocObject();
        *(v43 + 16) = v58;
        *(v43 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
        *(v43 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
        *(v43 + 32) = v40;
        sub_26CD3A3DC(v54, &dword_26CC14000, v19, "%@", 2, 2, v43);

        __swift_destroy_boxed_opaque_existential_1(&v61);
      }

      else
      {
        sub_26CC1B544(&v59, &qword_2804BBDA8, &qword_26CD3D5F0);
      }

      *&v61 = 0;
      *(&v61 + 1) = 0xE000000000000000;
      sub_26CD3AC6C();
      v44 = v57;
      v45 = *(v57 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
      v46 = *(v57 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

      MEMORY[0x26D6AD060](v45, v46);

      MEMORY[0x26D6AD060](0xD00000000000003ALL, 0x800000026CD50420);
      MEMORY[0x26D6AD060](v20, a2);
      v47 = v61;
      v48 = sub_26CD3A99C();
      v49 = swift_allocObject();
      *(v49 + 16) = v58;
      v50 = v53;
      *(v49 + 56) = MEMORY[0x277D837D0];
      *(v49 + 64) = v50;
      *(v49 + 32) = v47;
      sub_26CD3A3DC(v48, &dword_26CC14000, v52, "%@", 2, 2, v49);

      v32 = sub_26CC22DEC(v20, a2, *(v44 + OBJC_IVAR___TVAppBag_amsBag), 1, v44, &unk_2804BD460, &unk_26CD45D60);
    }

    sub_26CC1B544(&v63, &qword_2804BBDA8, &qword_26CD3D5F0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v26 = v18;
    v27 = swift_allocObject();
    *(v27 + 16) = v58;
    *&v63 = 0;
    *(&v63 + 1) = 0xE000000000000000;
    sub_26CD3AC6C();

    v28 = *(v26 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);
    *&v63 = *(v26 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
    *(&v63 + 1) = v28;

    MEMORY[0x26D6AD060](0xD000000000000028, 0x800000026CD503F0);
    MEMORY[0x26D6AD060](v20, a2);
    v29 = *(&v63 + 1);
    *(v27 + 32) = v63;
    *(v27 + 40) = v29;
    v30 = sub_26CD3A98C();
    v31 = swift_allocObject();
    *(v31 + 16) = v58;
    *(v31 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v31 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v31 + 32) = v27;
    sub_26CD3A3DC(v30, &dword_26CC14000, v19, "%@", 2, 2, v31);

    v32 = _sSo8TVAppBagC0A8ServicesE5array3forSayypGSgSS_tF_0(v20, a2);
    v24 = v54;
  }

LABEL_21:
  sub_26CD3AA1C();
  sub_26CD3A3FC();
  (*(v55 + 8))(v24, v56);
  return v32;
}

uint64_t sub_26CCB3EA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_26CD3A41C();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v9 = qword_280BBCC98;
  sub_26CD3A40C();
  v10 = sub_26CD3AA2C();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v12 = swift_allocObject();
  v61 = xmmword_26CD3C1E0;
  *(v12 + 16) = xmmword_26CD3C1E0;
  *(v12 + 56) = MEMORY[0x277D837D0];
  v13 = sub_26CC19E10();
  *(v12 + 64) = v13;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;

  v60 = a2;
  v57 = v8;
  sub_26CD3A3EC(v10, &dword_26CC14000, v9, "TVAppBag.cachedValueForKey", 26, 2, v8, "key:%s", 6);

  *&v66 = 0;
  *(&v66 + 1) = 0xE000000000000000;
  sub_26CD3AC6C();

  *&v66 = sub_26CC19D14();
  *(&v66 + 1) = v14;
  MEMORY[0x26D6AD060](0xD000000000000017, 0x800000026CD503D0);
  MEMORY[0x26D6AD060](a1, v60);
  v15 = v66;
  v16 = sub_26CD3A99C();
  v56 = v11;
  v17 = swift_allocObject();
  *(v17 + 16) = v61;
  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = v13;
  v55 = v13;
  *(v17 + 32) = v15;
  v18 = v60;
  sub_26CD3A3DC(v16, &dword_26CC14000, v9, "%@", 2, 2, v17);

  if (sub_26CC2016C(a1, v18, *(v3 + OBJC_IVAR___TVAppBag_diskCachedKeys)))
  {
    v19 = OBJC_IVAR___TVAppBag_cachedBagAccessLock;
    swift_beginAccess();
    os_unfair_lock_lock((v3 + v19));
    v20 = *(v3 + OBJC_IVAR___TVAppBag_cachedBags);

    v54 = v3;
    os_unfair_lock_unlock((v3 + v19));
    swift_endAccess();
    if (*(v20 + 16))
    {
      v21 = a1;
      v22 = sub_26CC181C4(a1, v18);
      v23 = v57;
      if (v24)
      {
        sub_26CC168C0(*(v20 + 56) + 32 * v22, &v66);
      }

      else
      {

        v66 = 0u;
        v67 = 0u;
      }
    }

    else
    {

      v66 = 0u;
      v67 = 0u;
      v23 = v57;
      v21 = a1;
    }

    sub_26CC200FC(&v66, &v64);
    if (v65)
    {
      sub_26CC18080(0, &unk_280BBB760, 0x277CBEB68);
      if (swift_dynamicCast())
      {

        *&v64 = 0;
        *(&v64 + 1) = 0xE000000000000000;
        sub_26CD3AC6C();
        v31 = *(v54 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
        v32 = *(v54 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

        MEMORY[0x26D6AD060](v31, v32);

        MEMORY[0x26D6AD060](0xD000000000000038, 0x800000026CD504B0);
        v33 = v64;
        v34 = sub_26CD3A99C();
        v35 = swift_allocObject();
        *(v35 + 16) = v61;
        v36 = v55;
        *(v35 + 56) = MEMORY[0x277D837D0];
        *(v35 + 64) = v36;
        *(v35 + 32) = v33;
        sub_26CD3A3DC(v34, &dword_26CC14000, v9, "%@", 2, 2, v35);

        sub_26CC1D5F8(v21, v18, nullsub_1, 0, &unk_287E02C18, sub_26CC211C0, &block_descriptor_24);
        sub_26CC1B544(&v66, &qword_2804BBDA8, &qword_26CD3D5F0);
        v30 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      sub_26CC1B544(&v64, &qword_2804BBDA8, &qword_26CD3D5F0);
    }

    v37 = sub_26CCBC114(&v66);
    if (v38)
    {
      sub_26CC200FC(&v66, &v62);
      if (v63)
      {
        sub_26CC331CC(&v62, &v64);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
        v39 = swift_allocObject();
        *(v39 + 16) = v61;
        *&v62 = 0;
        *(&v62 + 1) = 0xE000000000000000;
        sub_26CD3AC6C();
        MEMORY[0x26D6AD060](0xD000000000000027, 0x800000026CD50460);
        MEMORY[0x26D6AD060](v21, v60);
        MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD50490);
        __swift_project_boxed_opaque_existential_1(&v64, v65);
        swift_getDynamicType();
        v40 = sub_26CD3B1AC();
        MEMORY[0x26D6AD060](v40);

        MEMORY[0x26D6AD060](0x2065756C6176202CLL, 0xEA0000000000203DLL);
        sub_26CD3AD1C();
        v41 = *(&v62 + 1);
        *(v39 + 32) = v62;
        *(v39 + 40) = v41;
        v42 = sub_26CD3A98C();
        v43 = swift_allocObject();
        *(v43 + 16) = v61;
        *(v43 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
        *(v43 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
        *(v43 + 32) = v39;
        sub_26CD3A3DC(v42, &dword_26CC14000, v9, "%@", 2, 2, v43);

        __swift_destroy_boxed_opaque_existential_1(&v64);
      }

      else
      {
        sub_26CC1B544(&v62, &qword_2804BBDA8, &qword_26CD3D5F0);
      }

      *&v64 = 0;
      *(&v64 + 1) = 0xE000000000000000;
      sub_26CD3AC6C();
      v44 = v54;
      v45 = *(v54 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
      v46 = *(v54 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

      MEMORY[0x26D6AD060](v45, v46);

      MEMORY[0x26D6AD060](0xD00000000000003ALL, 0x800000026CD50420);
      v47 = v60;
      MEMORY[0x26D6AD060](v21, v60);
      v48 = v64;
      v49 = sub_26CD3A99C();
      v50 = swift_allocObject();
      *(v50 + 16) = v61;
      v51 = v55;
      *(v50 + 56) = MEMORY[0x277D837D0];
      *(v50 + 64) = v51;
      *(v50 + 32) = v48;
      sub_26CD3A3DC(v49, &dword_26CC14000, v9, "%@", 2, 2, v50);

      v30 = sub_26CCBB644(v21, v47, *(v44 + OBJC_IVAR___TVAppBag_amsBag), 1, v44, MEMORY[0x277D83B88]);
      sub_26CC1B544(&v66, &qword_2804BBDA8, &qword_26CD3D5F0);
    }

    else
    {
      v30 = v37;
      sub_26CC1D5F8(v21, v60, nullsub_1, 0, &unk_287E02C18, sub_26CC211C0, &block_descriptor_24);
      sub_26CC1B544(&v66, &qword_2804BBDA8, &qword_26CD3D5F0);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v25 = swift_allocObject();
    *(v25 + 16) = v61;
    *&v66 = 0;
    *(&v66 + 1) = 0xE000000000000000;
    sub_26CD3AC6C();

    v26 = *(v3 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);
    *&v66 = *(v3 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
    *(&v66 + 1) = v26;

    MEMORY[0x26D6AD060](0xD000000000000028, 0x800000026CD503F0);
    MEMORY[0x26D6AD060](a1, v18);
    v27 = *(&v66 + 1);
    *(v25 + 32) = v66;
    *(v25 + 40) = v27;
    v28 = sub_26CD3A98C();
    v29 = swift_allocObject();
    *(v29 + 16) = v61;
    *(v29 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v29 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v29 + 32) = v25;
    sub_26CD3A3DC(v28, &dword_26CC14000, v9, "%@", 2, 2, v29);

    v30 = sub_26CCB06C4(a1, v18);
    v23 = v57;
  }

LABEL_20:
  sub_26CD3AA1C();
  sub_26CD3A3FC();
  (*(v58 + 8))(v23, v59);
  return v30;
}

uint64_t sub_26CCB4930(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_26CD3A41C();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v9 = qword_280BBCC98;
  sub_26CD3A40C();
  v10 = sub_26CD3AA2C();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v12 = swift_allocObject();
  v61 = xmmword_26CD3C1E0;
  *(v12 + 16) = xmmword_26CD3C1E0;
  *(v12 + 56) = MEMORY[0x277D837D0];
  v13 = sub_26CC19E10();
  *(v12 + 64) = v13;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;

  v60 = a2;
  v57 = v8;
  sub_26CD3A3EC(v10, &dword_26CC14000, v9, "TVAppBag.cachedValueForKey", 26, 2, v8, "key:%s", 6);

  *&v66 = 0;
  *(&v66 + 1) = 0xE000000000000000;
  sub_26CD3AC6C();

  *&v66 = sub_26CC19D14();
  *(&v66 + 1) = v14;
  MEMORY[0x26D6AD060](0xD000000000000017, 0x800000026CD503D0);
  MEMORY[0x26D6AD060](a1, v60);
  v15 = v66;
  v16 = sub_26CD3A99C();
  v56 = v11;
  v17 = swift_allocObject();
  *(v17 + 16) = v61;
  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = v13;
  v55 = v13;
  *(v17 + 32) = v15;
  v18 = v60;
  sub_26CD3A3DC(v16, &dword_26CC14000, v9, "%@", 2, 2, v17);

  if (sub_26CC2016C(a1, v18, *(v3 + OBJC_IVAR___TVAppBag_diskCachedKeys)))
  {
    v19 = OBJC_IVAR___TVAppBag_cachedBagAccessLock;
    swift_beginAccess();
    os_unfair_lock_lock((v3 + v19));
    v20 = *(v3 + OBJC_IVAR___TVAppBag_cachedBags);

    v54 = v3;
    os_unfair_lock_unlock((v3 + v19));
    swift_endAccess();
    if (*(v20 + 16))
    {
      v21 = a1;
      v22 = sub_26CC181C4(a1, v18);
      v23 = v57;
      if (v24)
      {
        sub_26CC168C0(*(v20 + 56) + 32 * v22, &v66);
      }

      else
      {

        v66 = 0u;
        v67 = 0u;
      }
    }

    else
    {

      v66 = 0u;
      v67 = 0u;
      v23 = v57;
      v21 = a1;
    }

    sub_26CC200FC(&v66, &v64);
    if (v65)
    {
      sub_26CC18080(0, &unk_280BBB760, 0x277CBEB68);
      if (swift_dynamicCast())
      {

        *&v64 = 0;
        *(&v64 + 1) = 0xE000000000000000;
        sub_26CD3AC6C();
        v31 = *(v54 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
        v32 = *(v54 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

        MEMORY[0x26D6AD060](v31, v32);

        MEMORY[0x26D6AD060](0xD000000000000038, 0x800000026CD504B0);
        v33 = v64;
        v34 = sub_26CD3A99C();
        v35 = swift_allocObject();
        *(v35 + 16) = v61;
        v36 = v55;
        *(v35 + 56) = MEMORY[0x277D837D0];
        *(v35 + 64) = v36;
        *(v35 + 32) = v33;
        sub_26CD3A3DC(v34, &dword_26CC14000, v9, "%@", 2, 2, v35);

        sub_26CC1D5F8(v21, v18, nullsub_1, 0, &unk_287E02B78, sub_26CCBC414, &block_descriptor_7);
        sub_26CC1B544(&v66, &qword_2804BBDA8, &qword_26CD3D5F0);
        v30 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      sub_26CC1B544(&v64, &qword_2804BBDA8, &qword_26CD3D5F0);
    }

    v37 = sub_26CCBC294(&v66);
    if (v38)
    {
      sub_26CC200FC(&v66, &v62);
      if (v63)
      {
        sub_26CC331CC(&v62, &v64);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
        v39 = swift_allocObject();
        *(v39 + 16) = v61;
        *&v62 = 0;
        *(&v62 + 1) = 0xE000000000000000;
        sub_26CD3AC6C();
        MEMORY[0x26D6AD060](0xD000000000000027, 0x800000026CD50460);
        MEMORY[0x26D6AD060](v21, v60);
        MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD50490);
        __swift_project_boxed_opaque_existential_1(&v64, v65);
        swift_getDynamicType();
        v40 = sub_26CD3B1AC();
        MEMORY[0x26D6AD060](v40);

        MEMORY[0x26D6AD060](0x2065756C6176202CLL, 0xEA0000000000203DLL);
        sub_26CD3AD1C();
        v41 = *(&v62 + 1);
        *(v39 + 32) = v62;
        *(v39 + 40) = v41;
        v42 = sub_26CD3A98C();
        v43 = swift_allocObject();
        *(v43 + 16) = v61;
        *(v43 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
        *(v43 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
        *(v43 + 32) = v39;
        sub_26CD3A3DC(v42, &dword_26CC14000, v9, "%@", 2, 2, v43);

        __swift_destroy_boxed_opaque_existential_1(&v64);
      }

      else
      {
        sub_26CC1B544(&v62, &qword_2804BBDA8, &qword_26CD3D5F0);
      }

      *&v64 = 0;
      *(&v64 + 1) = 0xE000000000000000;
      sub_26CD3AC6C();
      v44 = v54;
      v45 = *(v54 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
      v46 = *(v54 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

      MEMORY[0x26D6AD060](v45, v46);

      MEMORY[0x26D6AD060](0xD00000000000003ALL, 0x800000026CD50420);
      v47 = v60;
      MEMORY[0x26D6AD060](v21, v60);
      v48 = v64;
      v49 = sub_26CD3A99C();
      v50 = swift_allocObject();
      *(v50 + 16) = v61;
      v51 = v55;
      *(v50 + 56) = MEMORY[0x277D837D0];
      *(v50 + 64) = v51;
      *(v50 + 32) = v48;
      sub_26CD3A3DC(v49, &dword_26CC14000, v9, "%@", 2, 2, v50);

      v30 = sub_26CCBB644(v21, v47, *(v44 + OBJC_IVAR___TVAppBag_amsBag), 1, v44, MEMORY[0x277D839F8]);
      sub_26CC1B544(&v66, &qword_2804BBDA8, &qword_26CD3D5F0);
    }

    else
    {
      v30 = v37;
      sub_26CC1D5F8(v21, v60, nullsub_1, 0, &unk_287E02B78, sub_26CCBC414, &block_descriptor_7);
      sub_26CC1B544(&v66, &qword_2804BBDA8, &qword_26CD3D5F0);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v25 = swift_allocObject();
    *(v25 + 16) = v61;
    *&v66 = 0;
    *(&v66 + 1) = 0xE000000000000000;
    sub_26CD3AC6C();

    v26 = *(v3 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);
    *&v66 = *(v3 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
    *(&v66 + 1) = v26;

    MEMORY[0x26D6AD060](0xD000000000000028, 0x800000026CD503F0);
    MEMORY[0x26D6AD060](a1, v18);
    v27 = *(&v66 + 1);
    *(v25 + 32) = v66;
    *(v25 + 40) = v27;
    v28 = sub_26CD3A98C();
    v29 = swift_allocObject();
    *(v29 + 16) = v61;
    *(v29 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v29 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v29 + 32) = v25;
    sub_26CD3A3DC(v28, &dword_26CC14000, v9, "%@", 2, 2, v29);

    v30 = sub_26CCB0C04(a1, v18);
    v23 = v57;
  }

LABEL_20:
  sub_26CD3AA1C();
  sub_26CD3A3FC();
  (*(v58 + 8))(v23, v59);
  return v30;
}

uint64_t TVAppBag.cachedValue<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v73 = a4;
  v68 = sub_26CD3AADC();
  v67 = *(v68 - 8);
  v9 = MEMORY[0x28223BE20](v68);
  v71 = &v66 - v10;
  v75 = a3;
  v72 = *(a3 - 8);
  MEMORY[0x28223BE20](v9);
  v69 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26CD3A41C();
  v76 = *(v12 - 8);
  v77 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v15 = qword_280BBCC98;
  sub_26CD3A40C();
  v16 = sub_26CD3AA2C();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v18 = swift_allocObject();
  v80 = xmmword_26CD3C1E0;
  *(v18 + 16) = xmmword_26CD3C1E0;
  v19 = MEMORY[0x277D837D0];
  *(v18 + 56) = MEMORY[0x277D837D0];
  v20 = sub_26CC19E10();
  *(v18 + 64) = v20;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;

  v79 = a1;
  v74 = v14;
  sub_26CD3A3EC(v16, &dword_26CC14000, v15, "TVAppBag.cachedValueForKey", 26, 2, v14, "key:%s", 6);

  *&v85 = 0;
  *(&v85 + 1) = 0xE000000000000000;
  sub_26CD3AC6C();
  v21 = sub_26CC19D14();
  v23 = v22;

  *&v85 = v21;
  *(&v85 + 1) = v23;
  MEMORY[0x26D6AD060](0xD000000000000017, 0x800000026CD503D0);
  MEMORY[0x26D6AD060](v79, a2);
  v78 = a2;
  v24 = v85;
  v25 = sub_26CD3A99C();
  v26 = swift_allocObject();
  *(v26 + 16) = v80;
  *(v26 + 56) = v19;
  *(v26 + 64) = v20;
  v70 = v20;
  *(v26 + 32) = v24;
  v27 = v78;
  v28 = v79;
  sub_26CD3A3DC(v25, &dword_26CC14000, v15, "%@", 2, 2, v26);

  v29 = v5;
  if (sub_26CC2016C(v28, v27, *(v5 + OBJC_IVAR___TVAppBag_diskCachedKeys)))
  {
    v66 = v17;
    v30 = OBJC_IVAR___TVAppBag_cachedBagAccessLock;
    swift_beginAccess();
    os_unfair_lock_lock((v5 + v30));
    v31 = *(v5 + OBJC_IVAR___TVAppBag_cachedBags);

    os_unfair_lock_unlock((v5 + v30));
    swift_endAccess();
    v32 = v75;
    if (*(v31 + 16))
    {
      v33 = sub_26CC181C4(v28, v78);
      v34 = v71;
      if (v35)
      {
        sub_26CC168C0(*(v31 + 56) + 32 * v33, &v85);
      }

      else
      {

        v85 = 0u;
        v86 = 0u;
      }
    }

    else
    {

      v85 = 0u;
      v86 = 0u;
      v34 = v71;
    }

    sub_26CC200FC(&v85, &v83);
    if (v84)
    {
      sub_26CC18080(0, &unk_280BBB760, 0x277CBEB68);
      if (swift_dynamicCast())
      {

        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        sub_26CD3AC6C();
        v42 = *(v5 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
        v43 = *(v5 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

        MEMORY[0x26D6AD060](v42, v43);

        MEMORY[0x26D6AD060](0xD000000000000038, 0x800000026CD504B0);
        v44 = v83;
        v45 = sub_26CD3A99C();
        v46 = swift_allocObject();
        *(v46 + 16) = v80;
        v47 = v70;
        *(v46 + 56) = MEMORY[0x277D837D0];
        *(v46 + 64) = v47;
        *(v46 + 32) = v44;
        sub_26CD3A3DC(v45, &dword_26CC14000, v15, "%@", 2, 2, v46);

        (*(v72 + 56))(v73, 1, 1, v32);
        sub_26CCB77D0(v5, v28, v78, v32, &unk_287E02DA8, nullsub_1);
LABEL_20:
        sub_26CC1B544(&v85, &qword_2804BBDA8, &qword_26CD3D5F0);
        goto LABEL_21;
      }
    }

    else
    {
      sub_26CC1B544(&v83, &qword_2804BBDA8, &qword_26CD3D5F0);
    }

    sub_26CCB7498(&v85, v32, v34);
    v48 = v72;
    if ((*(v72 + 48))(v34, 1, v32) == 1)
    {
      (*(v67 + 8))(v34, v68);
      sub_26CC200FC(&v85, &v81);
      if (v82)
      {
        sub_26CC331CC(&v81, &v83);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
        v49 = swift_allocObject();
        *(v49 + 16) = v80;
        *&v81 = 0;
        *(&v81 + 1) = 0xE000000000000000;
        sub_26CD3AC6C();
        MEMORY[0x26D6AD060](0xD000000000000027, 0x800000026CD50460);
        v50 = v78;
        MEMORY[0x26D6AD060](v28, v78);
        MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD50490);
        __swift_project_boxed_opaque_existential_1(&v83, v84);
        swift_getDynamicType();
        v51 = sub_26CD3B1AC();
        MEMORY[0x26D6AD060](v51);

        MEMORY[0x26D6AD060](0x2065756C6176202CLL, 0xEA0000000000203DLL);
        sub_26CD3AD1C();
        v52 = *(&v81 + 1);
        *(v49 + 32) = v81;
        *(v49 + 40) = v52;
        v53 = sub_26CD3A98C();
        v54 = swift_allocObject();
        *(v54 + 16) = v80;
        *(v54 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
        v55 = v50;
        v28 = v79;
        *(v54 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
        *(v54 + 32) = v49;
        sub_26CD3A3DC(v53, &dword_26CC14000, v15, "%@", 2, 2, v54);

        __swift_destroy_boxed_opaque_existential_1(&v83);
      }

      else
      {
        sub_26CC1B544(&v81, &qword_2804BBDA8, &qword_26CD3D5F0);
        v55 = v78;
      }

      *&v83 = 0;
      *(&v83 + 1) = 0xE000000000000000;
      sub_26CD3AC6C();
      v58 = *(v29 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
      v59 = *(v29 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

      MEMORY[0x26D6AD060](v58, v59);

      MEMORY[0x26D6AD060](0xD00000000000003ALL, 0x800000026CD50420);
      MEMORY[0x26D6AD060](v28, v55);
      v60 = v83;
      v61 = sub_26CD3A99C();
      v62 = swift_allocObject();
      *(v62 + 16) = v80;
      v63 = v70;
      *(v62 + 56) = MEMORY[0x277D837D0];
      *(v62 + 64) = v63;
      *(v62 + 32) = v60;
      sub_26CD3A3DC(v61, &dword_26CC14000, v15, "%@", 2, 2, v62);

      sub_26CCB6CD4(v28, v55, *(v29 + OBJC_IVAR___TVAppBag_amsBag), 1, v32, v73);
    }

    else
    {
      v56 = v69;
      (*(v48 + 32))(v69, v34, v32);
      v57 = v73;
      (*(v48 + 16))(v73, v56, v32);
      (*(v48 + 56))(v57, 0, 1, v32);
      sub_26CCB77D0(v5, v28, v78, v32, &unk_287E02DD0, nullsub_1);
      (*(v48 + 8))(v56, v32);
    }

    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v36 = swift_allocObject();
  *(v36 + 16) = v80;
  *&v85 = 0;
  *(&v85 + 1) = 0xE000000000000000;
  sub_26CD3AC6C();
  v38 = *(v5 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
  v37 = *(v5 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

  *&v85 = v38;
  *(&v85 + 1) = v37;
  MEMORY[0x26D6AD060](0xD000000000000028, 0x800000026CD503F0);
  MEMORY[0x26D6AD060](v28, v27);
  v39 = *(&v85 + 1);
  *(v36 + 32) = v85;
  *(v36 + 40) = v39;
  v40 = sub_26CD3A98C();
  v41 = swift_allocObject();
  *(v41 + 16) = v80;
  *(v41 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v41 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
  *(v41 + 32) = v36;
  sub_26CD3A3DC(v40, &dword_26CC14000, v15, "%@", 2, 2, v41);

  TVAppBag.value<A>(for:)(v28, v27, v75, v73);
LABEL_21:
  sub_26CD3AA1C();
  v64 = v74;
  sub_26CD3A3FC();
  return (*(v76 + 8))(v64, v77);
}

id sub_26CCB6040(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_26CD3A5CC();
  v8 = v7;
  v9 = a1;
  v10 = a4(v6, v8);

  if (v10)
  {
    v11 = sub_26CD3A4DC();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id sub_26CCB6110(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_26CD3A5CC();
  v8 = v7;
  v9 = a1;
  v10 = a4(v6, v8);

  if (v10)
  {
    v11 = sub_26CD3A79C();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

NSNumber_optional __swiftcall TVAppBag.cachedBoolean(for:)(Swift::String a1)
{
  v1 = sub_26CCB61CC(a1._countAndFlagsBits, a1._object, sub_26CC20728);
  result.value.super.super.isa = v1;
  result.is_nil = v2;
  return result;
}

id sub_26CCB61CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = a3(a1, a2);
  if (v3 == 2)
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  }
}

NSNumber_optional __swiftcall TVAppBag.cachedInteger(for:)(Swift::String a1)
{
  v1 = sub_26CCB623C(a1._countAndFlagsBits, a1._object, sub_26CCB3EA4);
  result.value.super.super.isa = v1;
  result.is_nil = v2;
  return result;
}

id sub_26CCB623C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = a3(a1, a2);
  if (v4)
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }
}

id sub_26CCB628C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_26CD3A5CC();
  v8 = v7;
  v9 = a1;
  v10 = a4(v6, v8);
  LOBYTE(v6) = v11;

  if (v6)
  {
    v12 = 0;
  }

  else
  {
    v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  return v12;
}

NSNumber_optional __swiftcall TVAppBag.cachedDouble(for:)(Swift::String a1)
{
  v1 = sub_26CCB634C(a1._countAndFlagsBits, a1._object, sub_26CCB4930);
  result.value.super.super.isa = v1;
  result.is_nil = v2;
  return result;
}

id sub_26CCB634C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = COERCE_DOUBLE(a3(a1, a2));
  if (v4)
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }
}

id sub_26CCB63B4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_26CD3A5CC();
  v8 = v7;
  v9 = a1;
  v10 = COERCE_DOUBLE(a4(v6, v8));
  LOBYTE(v6) = v11;

  if (v6)
  {
    v12 = 0;
  }

  else
  {
    v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  return v12;
}

void __swiftcall TVAppBag.init()(TVAppBag *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_26CCB65D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v50 = a3;
  v55 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  MEMORY[0x28223BE20](v10 - 8);
  v51 = v47 - v11;
  v12 = sub_26CD3A41C();
  v53 = *(v12 - 8);
  v54 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v15 = qword_280BBCC98;
  sub_26CD3A40C();
  v16 = sub_26CD3AA2C();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v18 = swift_allocObject();
  v56 = xmmword_26CD3C1E0;
  *(v18 + 16) = xmmword_26CD3C1E0;
  *(v18 + 56) = MEMORY[0x277D837D0];
  v49 = sub_26CC19E10();
  *(v18 + 64) = v49;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;

  v52 = v14;
  sub_26CD3A3EC(v16, &dword_26CC14000, v15, "TVAppBag.retrieveValueForKey", 28, 2, v14, "key:%s", 6);

  v60 = 0;
  v61 = 0xE000000000000000;
  sub_26CD3AC6C();
  v19 = sub_26CC19D14();
  MEMORY[0x26D6AD060](v19);

  MEMORY[0x26D6AD060](0xD000000000000019, 0x800000026CD508C0);
  MEMORY[0x26D6AD060](a1, a2);
  MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD508E0);
  v20 = (a4 & 1) == 0;
  v48 = a4 & 1;
  if (a4)
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  v22 = v6;
  v23 = a2;
  if (v20)
  {
    v24 = 0xE500000000000000;
  }

  else
  {
    v24 = 0xE400000000000000;
  }

  MEMORY[0x26D6AD060](v21, v24);

  MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD50900);
  v25 = v50;
  *&v59[0] = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD4D0, &qword_26CD45D80);
  sub_26CD3AD1C();
  v26 = a1;
  v28 = v60;
  v27 = v61;
  v29 = sub_26CD3A99C();
  v47[1] = v17;
  v30 = swift_allocObject();
  *(v30 + 16) = v56;
  v31 = v49;
  *(v30 + 56) = MEMORY[0x277D837D0];
  *(v30 + 64) = v31;
  *(v30 + 32) = v28;
  *(v30 + 40) = v27;
  v32 = v26;
  v33 = v15;
  sub_26CD3A3DC(v29, &dword_26CC14000, v15, "%@", 2, 2, v30);

  v34 = sub_26CD3A07C();
  sub_26CC23428(v32, v23, v34, v25, &v60, v48);
  sub_26CC200FC(&v60, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  v35 = v51;
  v36 = swift_dynamicCast();
  v37 = *(v34 - 8);
  (*(v37 + 56))(v35, v36 ^ 1u, 1, v34);
  sub_26CC200FC(&v60, &v57);
  if (v58)
  {
    sub_26CC331CC(&v57, v59);
    if ((*(v37 + 48))(v35, 1, v34) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
      v38 = swift_allocObject();
      *(v38 + 16) = v56;
      *&v57 = 0;
      *(&v57 + 1) = 0xE000000000000000;
      sub_26CD3AC6C();
      v39 = *(v22 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
      v40 = *(v22 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

      MEMORY[0x26D6AD060](v39, v40);

      MEMORY[0x26D6AD060](0xD00000000000001DLL, 0x800000026CD50920);
      MEMORY[0x26D6AD060](v32, v23);
      MEMORY[0x26D6AD060](0x2065756C6176202CLL, 0xEA0000000000203DLL);
      sub_26CD3AD1C();
      v41 = *(&v57 + 1);
      *(v38 + 32) = v57;
      *(v38 + 40) = v41;
      v42 = sub_26CD3A98C();
      v43 = swift_allocObject();
      *(v43 + 16) = v56;
      *(v43 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v43 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
      *(v43 + 32) = v38;
      sub_26CD3A3DC(v42, &dword_26CC14000, v33, "%@", 2, 2, v43);
    }

    __swift_destroy_boxed_opaque_existential_1(v59);
    v44 = &v60;
  }

  else
  {
    sub_26CC1B544(&v60, &qword_2804BBDA8, &qword_26CD3D5F0);
    v44 = &v57;
  }

  sub_26CC1B544(v44, &qword_2804BBDA8, &qword_26CD3D5F0);
  sub_26CC6FFD0(v35, v55);
  sub_26CD3AA1C();
  v45 = v52;
  sub_26CD3A3FC();
  return (*(v53 + 8))(v45, v54);
}

uint64_t sub_26CCB6CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v50 = a3;
  v57 = a6;
  v55 = sub_26CD3AADC();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v51 = &v46 - v12;
  v56 = sub_26CD3A41C();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v15 = qword_280BBCC98;
  v48 = v15;
  sub_26CD3A40C();
  v16 = sub_26CD3AA2C();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v18 = swift_allocObject();
  v58 = xmmword_26CD3C1E0;
  *(v18 + 16) = xmmword_26CD3C1E0;
  *(v18 + 56) = MEMORY[0x277D837D0];
  v49 = sub_26CC19E10();
  *(v18 + 64) = v49;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;

  v52 = v14;
  sub_26CD3A3EC(v16, &dword_26CC14000, v15, "TVAppBag.retrieveValueForKey", 28, 2, v14, "key:%s", 6);

  v62 = 0;
  v63 = 0xE000000000000000;
  sub_26CD3AC6C();
  v19 = sub_26CC19D14();
  MEMORY[0x26D6AD060](v19);

  MEMORY[0x26D6AD060](0xD000000000000019, 0x800000026CD508C0);
  MEMORY[0x26D6AD060](a1, a2);
  MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD508E0);
  v20 = (a4 & 1) == 0;
  v47 = a4 & 1;
  if (a4)
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  v22 = a1;
  v23 = a2;
  if (v20)
  {
    v24 = 0xE500000000000000;
  }

  else
  {
    v24 = 0xE400000000000000;
  }

  MEMORY[0x26D6AD060](v21, v24);

  MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD50900);
  v25 = v50;
  *&v61[0] = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD4D0, &qword_26CD45D80);
  sub_26CD3AD1C();
  v26 = v62;
  v27 = v63;
  v28 = sub_26CD3A99C();
  v46 = v17;
  v29 = swift_allocObject();
  *(v29 + 16) = v58;
  v30 = v49;
  *(v29 + 56) = MEMORY[0x277D837D0];
  *(v29 + 64) = v30;
  *(v29 + 32) = v26;
  *(v29 + 40) = v27;
  v31 = v48;
  sub_26CD3A3DC(v28, &dword_26CC14000, v48, "%@", 2, 2, v29);
  v32 = v22;

  v33 = v7;
  sub_26CC23428(v22, v23, a5, v25, &v62, v47);
  sub_26CC200FC(&v62, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  v34 = v51;
  v35 = swift_dynamicCast();
  v36 = *(a5 - 8);
  (*(v36 + 56))(v34, v35 ^ 1u, 1, a5);
  sub_26CC200FC(&v62, &v59);
  if (v60)
  {
    sub_26CC331CC(&v59, v61);
    if ((*(v36 + 48))(v34, 1, a5) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
      v37 = swift_allocObject();
      *(v37 + 16) = v58;
      *&v59 = 0;
      *(&v59 + 1) = 0xE000000000000000;
      sub_26CD3AC6C();
      v38 = *(v33 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
      v39 = *(v33 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

      MEMORY[0x26D6AD060](v38, v39);

      MEMORY[0x26D6AD060](0xD00000000000001DLL, 0x800000026CD50920);
      MEMORY[0x26D6AD060](v32, v23);
      MEMORY[0x26D6AD060](0x2065756C6176202CLL, 0xEA0000000000203DLL);
      sub_26CD3AD1C();
      v40 = *(&v59 + 1);
      *(v37 + 32) = v59;
      *(v37 + 40) = v40;
      v41 = sub_26CD3A98C();
      v42 = swift_allocObject();
      *(v42 + 16) = v58;
      *(v42 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v42 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
      *(v42 + 32) = v37;
      sub_26CD3A3DC(v41, &dword_26CC14000, v31, "%@", 2, 2, v42);
    }

    __swift_destroy_boxed_opaque_existential_1(v61);
    v43 = &v62;
  }

  else
  {
    sub_26CC1B544(&v62, &qword_2804BBDA8, &qword_26CD3D5F0);
    v43 = &v59;
  }

  sub_26CC1B544(v43, &qword_2804BBDA8, &qword_26CD3D5F0);
  v44 = v52;
  (*(v53 + 32))(v57, v34, v55);
  sub_26CD3AA1C();
  sub_26CD3A3FC();
  return (*(v54 + 8))(v44, v56);
}

uint64_t sub_26CCB7428(uint64_t a1)
{
  v3 = *(sub_26CD3A41C() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26CCB1924(a1, v4);
}

uint64_t sub_26CCB7498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  MEMORY[0x28223BE20](v21);
  v20 = &v20 - v6;
  v7 = sub_26CD3AADC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = *(a2 - 8);
  MEMORY[0x28223BE20](v9);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26CC200FC(a1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  v15 = swift_dynamicCast();
  v16 = *(v12 + 56);
  if (!v15)
  {
    v16(v11, 1, 1, a2);
    (*(v8 + 8))(v11, v7);
    if (sub_26CD3A07C() == a2 || sub_26CC18080(0, &unk_280BBB770, 0x277CBEBC0) == a2)
    {
      sub_26CC200FC(a1, v22);
      if (v23)
      {
        if (swift_dynamicCast())
        {
          sub_26CD3A03C();

          v18 = swift_dynamicCast() ^ 1;
          return (v16)(a3, v18, 1, a2);
        }
      }

      else
      {
        sub_26CC1B544(v22, &qword_2804BBDA8, &qword_26CD3D5F0);
      }
    }

    v18 = 1;
    return (v16)(a3, v18, 1, a2);
  }

  v16(v11, 0, 1, a2);
  v17 = *(v12 + 32);
  v17(v14, v11, a2);
  v17(a3, v14, a2);
  v18 = 0;
  return (v16)(a3, v18, 1, a2);
}

uint64_t sub_26CCB77D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  sub_26CCB19B8(a2, a3, a6, v10, a4);
}

double sub_26CCB7858(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (a1)
    {
      v8 = qword_280BBB6B8;
      v9 = a1;
      if (v8 != -1)
      {
        swift_once();
      }

      v10 = qword_280BBCC98;
      sub_26CD3AC6C();
      v11 = sub_26CC19D14();
      v13 = v12;

      v30 = v11;
      MEMORY[0x26D6AD060](0xD000000000000020, 0x800000026CD50C10);
      v14 = [v9 isExpired];
      v15 = v14 == 0;
      if (v14)
      {
        v16 = 1702195828;
      }

      else
      {
        v16 = 0x65736C6166;
      }

      if (v15)
      {
        v17 = 0xE500000000000000;
      }

      else
      {
        v17 = 0xE400000000000000;
      }

      MEMORY[0x26D6AD060](v16, v17);

      v18 = sub_26CD3A99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_26CD3C1E0;
      *(v19 + 56) = MEMORY[0x277D837D0];
      *(v19 + 64) = sub_26CC19E10();
      *(v19 + 32) = v30;
      *(v19 + 40) = v13;
      sub_26CD3A3DC(v18, &dword_26CC14000, v10, "%@", 2, 2, v19);

      sub_26CCB7C2C(v9);
    }

    else
    {
      if (a2)
      {
        swift_getErrorValue();
        v20 = sub_26CD3B08C();
        v22 = v21;
      }

      else
      {
        v22 = 0xED0000726F727265;
        v20 = 0x206E776F6E6B6E55;
      }

      if (qword_280BBB6B8 != -1)
      {
        swift_once();
      }

      v23 = qword_280BBCC98;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_26CD3C1E0;
      sub_26CD3AC6C();
      v25 = sub_26CC19D14();
      v27 = v26;

      MEMORY[0x26D6AD060](0xD00000000000001FLL, 0x800000026CD50BF0);
      MEMORY[0x26D6AD060](v20, v22);

      *(v24 + 32) = v25;
      *(v24 + 40) = v27;
      v28 = sub_26CD3A98C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_26CD3C1E0;
      *(v29 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v29 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
      *(v29 + 32) = v24;
      sub_26CD3A3DC(v28, &dword_26CC14000, v23, "%@", 2, 2, v29);
    }
  }

  return result;
}

uint64_t sub_26CCB7C2C(void *a1)
{
  v2 = v1;
  v4 = sub_26CD3A1EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v8 = qword_280BBCC98;
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_26CD3AC6C();
  v9 = sub_26CC19D14();
  v11 = v10;

  v23 = v9;
  v24 = v11;
  MEMORY[0x26D6AD060](0xD000000000000020, 0x800000026CD50C40);
  v12 = [a1 creationDate];
  sub_26CD3A1BC();

  sub_26CC1A360(&qword_280BBB8B8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v13 = sub_26CD3AF8C();
  MEMORY[0x26D6AD060](v13);

  (*(v5 + 8))(v7, v4);
  v14 = v23;
  v15 = v24;
  v16 = sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_26CD3C1E0;
  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = sub_26CC19E10();
  *(v17 + 32) = v14;
  *(v17 + 40) = v15;
  sub_26CD3A3DC(v16, &dword_26CC14000, v8, "%@", 2, 2, v17);

  v18 = OBJC_IVAR___TVAppBag_snapshotBagAccessLock;
  swift_beginAccess();
  os_unfair_lock_lock((v2 + v18));
  swift_endAccess();
  v19 = *(v2 + OBJC_IVAR___TVAppBag_snapshotBag);
  *(v2 + OBJC_IVAR___TVAppBag_snapshotBag) = a1;

  swift_beginAccess();
  v20 = a1;
  os_unfair_lock_unlock((v2 + v18));
  swift_endAccess();
  return sub_26CCB7F9C(v20);
}

void sub_26CCB7F10(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_26CCB7F9C(void *a1)
{
  v2 = v1;
  v77 = a1;
  v3 = sub_26CD3A41C();
  v73 = *(v3 - 8);
  v74 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
LABEL_47:
    swift_once();
  }

  v6 = qword_280BBCC98;
  sub_26CD3A40C();
  sub_26CD3AA2C();
  v72 = v5;
  sub_26CD3A3FC();
  *&v83 = sub_26CC19D14();
  *(&v83 + 1) = v7;
  MEMORY[0x26D6AD060](0x4365746164707520, 0xEC00000065686361);
  v8 = v83;
  v5 = sub_26CD3A99C();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v9 = swift_allocObject();
  v70 = xmmword_26CD3C1E0;
  *(v9 + 16) = xmmword_26CD3C1E0;
  *(v9 + 56) = MEMORY[0x277D837D0];
  v69 = sub_26CC19E10();
  *(v9 + 64) = v69;
  *(v9 + 32) = v8;
  v75 = v6;
  sub_26CD3A3DC(v5, &dword_26CC14000, v6, "%@", 2, 2, v9);

  v10 = sub_26CC194BC(MEMORY[0x277D84F90]);
  v11 = *(v2 + OBJC_IVAR___TVAppBag_diskCachedKeyTypes);
  v12 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 64);
  v16 = (v13 + 63) >> 6;
  v78 = v2;
  v79 = v11;

  v76 = 0;
  v17 = 0;
  while (1)
  {
    v20 = v17;
    if (!v15)
    {
      break;
    }

LABEL_10:
    v21 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v22 = v21 | (v17 << 6);
    v23 = (*(v79 + 48) + 16 * v22);
    v24 = *v23;
    v2 = v23[1];
    v25 = *(*(v79 + 56) + 8 * v22);

    sub_26CC23428(v24, v2, v25, v77, &v81, 0);
    if (v82)
    {
      sub_26CC331CC(&v81, &v83);
      sub_26CC168C0(&v83, &v81);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v80 = v10;
      v5 = v10;
      v41 = sub_26CC181C4(v24, v2);
      v42 = *(v10 + 2);
      v43 = (v40 & 1) == 0;
      v44 = v42 + v43;
      if (__OFADD__(v42, v43))
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        result = sub_26CD3B02C();
        __break(1u);
        return result;
      }

      if (*(v10 + 3) >= v44)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v40)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v5 = &v80;
          v50 = v40;
          sub_26CD36B88();
          if (v50)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        v45 = v40;
        sub_26CD34624(v44, isUniquelyReferenced_nonNull_native);
        v5 = v80;
        v46 = sub_26CC181C4(v24, v2);
        if ((v45 & 1) != (v47 & 1))
        {
          goto LABEL_51;
        }

        v41 = v46;
        if (v45)
        {
LABEL_26:

          v10 = v80;
          v48 = (*(v80 + 7) + 32 * v41);
          __swift_destroy_boxed_opaque_existential_1(v48);
          sub_26CC331CC(&v81, v48);
          __swift_destroy_boxed_opaque_existential_1(&v83);
          goto LABEL_32;
        }
      }

      v10 = v80;
      *&v80[8 * (v41 >> 6) + 64] |= 1 << v41;
      v51 = (*(v10 + 6) + 16 * v41);
      *v51 = v24;
      v51[1] = v2;
      sub_26CC331CC(&v81, (*(v10 + 7) + 32 * v41));
      __swift_destroy_boxed_opaque_existential_1(&v83);
      v52 = *(v10 + 2);
      v32 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v32)
      {
        goto LABEL_50;
      }

      *(v10 + 2) = v53;
LABEL_32:
      if (__OFADD__(v76, 1))
      {
        goto LABEL_49;
      }

      ++v76;
    }

    else
    {
      sub_26CC1B544(&v81, &qword_2804BBDA8, &qword_26CD3D5F0);
      v26 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
      v84 = sub_26CC18080(0, &unk_280BBB760, 0x277CBEB68);
      *&v83 = v26;
      sub_26CC331CC(&v83, &v81);
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v80 = v10;
      v5 = v10;
      v28 = sub_26CC181C4(v24, v2);
      v30 = *(v10 + 2);
      v31 = (v29 & 1) == 0;
      v32 = __OFADD__(v30, v31);
      v33 = v30 + v31;
      if (v32)
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v34 = v29;
      if (*(v10 + 3) >= v33)
      {
        if (v27)
        {
          goto LABEL_16;
        }

        v5 = &v80;
        v49 = v28;
        sub_26CD36B88();
        v28 = v49;
        if (v34)
        {
          goto LABEL_5;
        }

LABEL_17:
        v10 = v80;
        *&v80[8 * (v28 >> 6) + 64] |= 1 << v28;
        v36 = (*(v10 + 6) + 16 * v28);
        *v36 = v24;
        v36[1] = v2;
        sub_26CC331CC(&v81, (*(v10 + 7) + 32 * v28));
        v37 = *(v10 + 2);
        v32 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v32)
        {
          goto LABEL_46;
        }

        *(v10 + 2) = v38;
      }

      else
      {
        sub_26CD34624(v33, v27);
        v5 = v80;
        v28 = sub_26CC181C4(v24, v2);
        if ((v34 & 1) != (v35 & 1))
        {
          goto LABEL_51;
        }

LABEL_16:
        if ((v34 & 1) == 0)
        {
          goto LABEL_17;
        }

LABEL_5:
        v18 = v28;

        v10 = v80;
        v19 = (*(v80 + 7) + 32 * v18);
        __swift_destroy_boxed_opaque_existential_1(v19);
        sub_26CC331CC(&v81, v19);
      }
    }
  }

  while (1)
  {
    v17 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v17 >= v16)
    {
      break;
    }

    v15 = *(v12 + 8 * v17);
    ++v20;
    if (v15)
    {
      goto LABEL_10;
    }
  }

  if (v76)
  {
    v54 = OBJC_IVAR___TVAppBag_cachedBagAccessLock;
    v55 = v78;
    swift_beginAccess();
    os_unfair_lock_lock((v55 + v54));
    swift_endAccess();
    *(v55 + OBJC_IVAR___TVAppBag_cachedBags) = v10;

    swift_beginAccess();

    os_unfair_lock_unlock((v55 + v54));
    swift_endAccess();
    sub_26CCB8768(v10);
  }

  else
  {

    *&v83 = 0;
    *(&v83 + 1) = 0xE000000000000000;
    sub_26CD3AC6C();
    v56 = *(v78 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
    v57 = *(v78 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

    MEMORY[0x26D6AD060](v56, v57);

    MEMORY[0x26D6AD060](0xD000000000000043, 0x800000026CD50C90);
    v58 = [v77 isExpired];
    v59 = v58 == 0;
    if (v58)
    {
      v60 = 1702195828;
    }

    else
    {
      v60 = 0x65736C6166;
    }

    if (v59)
    {
      v61 = 0xE500000000000000;
    }

    else
    {
      v61 = 0xE400000000000000;
    }

    MEMORY[0x26D6AD060](v60, v61);

    v62 = v83;
    v63 = sub_26CD3A99C();
    v64 = swift_allocObject();
    *(v64 + 16) = v70;
    v65 = v69;
    *(v64 + 56) = MEMORY[0x277D837D0];
    *(v64 + 64) = v65;
    *(v64 + 32) = v62;
    sub_26CD3A3DC(v63, &dword_26CC14000, v75, "%@", 2, 2, v64);
  }

  sub_26CD3AA1C();
  v66 = v72;
  sub_26CD3A3FC();
  return (*(v73 + 8))(v66, v74);
}

uint64_t sub_26CCB8768(uint64_t a1)
{
  v2 = sub_26CD3A49C();
  v22 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26CD3A4CC();
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v8 = qword_280BBCC98;
  aBlock = 0;
  v25 = 0xE000000000000000;
  sub_26CD3AC6C();
  v9 = sub_26CC19D14();
  v11 = v10;

  aBlock = v9;
  v25 = v11;
  MEMORY[0x26D6AD060](0x6361436576617320, 0xEE00676142646568);
  v13 = aBlock;
  v12 = v25;
  v14 = sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_26CD3C1E0;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_26CC19E10();
  *(v15 + 32) = v13;
  *(v15 + 40) = v12;
  sub_26CD3A3DC(v14, &dword_26CC14000, v8, "%@", 2, 2, v15);

  if (qword_280BBB728 != -1)
  {
    swift_once();
  }

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a1;
  v28 = sub_26CCBC494;
  v29 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_26CC1DDD0;
  v27 = &block_descriptor_77;
  v18 = _Block_copy(&aBlock);

  sub_26CD3A4AC();
  v23 = MEMORY[0x277D84F90];
  sub_26CC1A360(&qword_280BBB7F0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC40, &unk_26CD45D50);
  sub_26CC1DD84(&qword_280BBB7D0, &unk_2804BCC40, &unk_26CD45D50, MEMORY[0x277D83970]);
  sub_26CD3AB5C();
  MEMORY[0x26D6AD3E0](0, v7, v4, v18);
  _Block_release(v18);
  (*(v22 + 8))(v4, v2);
  (*(v20 + 8))(v7, v21);
}

void sub_26CCB8BBC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v4 = qword_280BBCC98;
    sub_26CD3AC6C();
    v5 = sub_26CC19D14();
    v7 = v6;

    v11 = v7;
    MEMORY[0x26D6AD060](0xD000000000000027, 0x800000026CD50B70);
    v8 = v5;
    v9 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_26CD3C1E0;
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_26CC19E10();
    *(v10 + 32) = v8;
    *(v10 + 40) = v11;
    sub_26CD3A3DC(v9, &dword_26CC14000, v4, "%@", 2, 2, v10);

    sub_26CC19E64();
  }
}

void sub_26CCB8D34(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_26CCB8D90(a2);
  }
}

uint64_t sub_26CCB8D90(uint64_t isUniquelyReferenced_nonNull_native)
{
  v106 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v81 - v3;
  v5 = sub_26CD3A07C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v92 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_26CD3A41C();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v10 = qword_280BBCC98;
    sub_26CD3A40C();
    sub_26CD3AA2C();
    v82 = v10;
    v83 = v9;
    sub_26CD3A3FC();
    v11 = sub_26CC194BC(MEMORY[0x277D84F90]);
    v12 = isUniquelyReferenced_nonNull_native + 64;
    v13 = 1 << *(isUniquelyReferenced_nonNull_native + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(isUniquelyReferenced_nonNull_native + 64);
    v16 = (v13 + 63) >> 6;
    v93 = (v6 + 56);
    v89 = (v6 + 32);
    v88 = (v6 + 8);

    v17 = 0;
    v90 = v4;
    v94 = v5;
    v87 = isUniquelyReferenced_nonNull_native + 64;
    v91 = v16;
    if (v15)
    {
      break;
    }

LABEL_9:
    if (v16 <= v17 + 1)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = v16;
    }

    v19 = v18 - 1;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        v15 = 0;
        v101 = 0u;
        v102 = 0u;
        v100 = 0u;
        goto LABEL_17;
      }

      v15 = *(v12 + 8 * v9);
      ++v17;
      if (v15)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }

  while (1)
  {
    v9 = v17;
LABEL_16:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = v20 | (v9 << 6);
    v22 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v21);
    v24 = *v22;
    v23 = v22[1];
    sub_26CC168C0(*(isUniquelyReferenced_nonNull_native + 56) + 32 * v21, &v98);
    *&v100 = v24;
    *(&v100 + 1) = v23;
    sub_26CC331CC(&v98, &v101);

    v19 = v9;
    v5 = v94;
LABEL_17:
    v103 = v100;
    v104 = v101;
    v105 = v102;
    v25 = *(&v100 + 1);
    if (!*(&v100 + 1))
    {
      break;
    }

    *&v95 = v19;
    v26 = v103;
    sub_26CC331CC(&v104, &v100);
    sub_26CC168C0(&v100, &v98);
    v27 = swift_dynamicCast();
    v28 = *v93;
    if (v27)
    {
      v6 = v5;
      v5 = isUniquelyReferenced_nonNull_native;
      v28(v4, 0, 1, v6);
      v29 = v26;
      (*v89)(v92, v4, v6);
      v30 = sub_26CD39FAC();
      v99 = MEMORY[0x277D837D0];
      *&v98 = v30;
      *(&v98 + 1) = v31;
      sub_26CC331CC(&v98, v97);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v96 = v11;
      v32 = v26;
      v9 = v11;
      v4 = sub_26CC181C4(v32, v25);
      v34 = v11[2];
      v35 = (v33 & 1) == 0;
      v36 = v34 + v35;
      if (__OFADD__(v34, v35))
      {
        goto LABEL_46;
      }

      v6 = v33;
      if (v11[3] >= v36)
      {
        v16 = v91;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v9 = &v96;
          sub_26CD36B88();
        }
      }

      else
      {
        sub_26CD34624(v36, isUniquelyReferenced_nonNull_native);
        v9 = v96;
        v37 = sub_26CC181C4(v29, v25);
        v16 = v91;
        if ((v6 & 1) != (v38 & 1))
        {
          goto LABEL_51;
        }

        v4 = v37;
      }

      isUniquelyReferenced_nonNull_native = v5;
      v5 = v94;
      if (v6)
      {

        v11 = v96;
        v6 = v96[7] + 32 * v4;
        __swift_destroy_boxed_opaque_existential_1(v6);
        sub_26CC331CC(v97, v6);
        (*v88)(v92, v5);
        __swift_destroy_boxed_opaque_existential_1(&v100);
      }

      else
      {
        v11 = v96;
        v96[(v4 >> 6) + 8] |= 1 << v4;
        v48 = (v11[6] + 16 * v4);
        *v48 = v32;
        v48[1] = v25;
        sub_26CC331CC(v97, (v11[7] + 32 * v4));
        (*v88)(v92, v5);
        __swift_destroy_boxed_opaque_existential_1(&v100);
        v49 = v11[2];
        v45 = __OFADD__(v49, 1);
        v50 = v49 + 1;
        if (v45)
        {
          goto LABEL_48;
        }

        v11[2] = v50;
      }

      v17 = v95;
      v4 = v90;
      v12 = v87;
      if (!v15)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v28(v4, 1, 1, v5);
      sub_26CC1B544(v4, &qword_2804BCA30, &qword_26CD3DA70);
      sub_26CC168C0(&v100, &v98);
      v6 = swift_isUniquelyReferenced_nonNull_native();
      *&v97[0] = v11;
      v39 = v26;
      v40 = v26;
      v9 = v11;
      v41 = sub_26CC181C4(v40, v25);
      v43 = v11[2];
      v44 = (v42 & 1) == 0;
      v45 = __OFADD__(v43, v44);
      v46 = v43 + v44;
      if (v45)
      {
        goto LABEL_47;
      }

      v4 = v42;
      if (v11[3] < v46)
      {
        sub_26CD34624(v46, v6);
        v9 = *&v97[0];
        v41 = sub_26CC181C4(v39, v25);
        if ((v4 & 1) != (v47 & 1))
        {
LABEL_51:
          result = sub_26CD3B02C();
          __break(1u);
          return result;
        }

LABEL_33:
        if ((v4 & 1) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_34;
      }

      if (v6)
      {
        goto LABEL_33;
      }

      v9 = v97;
      v6 = v41;
      sub_26CD36B88();
      v41 = v6;
      if ((v4 & 1) == 0)
      {
LABEL_37:
        v11 = *&v97[0];
        *(*&v97[0] + 8 * (v41 >> 6) + 64) |= 1 << v41;
        v52 = (v11[6] + 16 * v41);
        *v52 = v39;
        v52[1] = v25;
        sub_26CC331CC(&v98, (v11[7] + 32 * v41));
        __swift_destroy_boxed_opaque_existential_1(&v100);
        v53 = v11[2];
        v45 = __OFADD__(v53, 1);
        v54 = v53 + 1;
        if (v45)
        {
          goto LABEL_49;
        }

        v11[2] = v54;
        goto LABEL_39;
      }

LABEL_34:
      v51 = v41;

      v11 = *&v97[0];
      v6 = *(*&v97[0] + 56) + 32 * v51;
      __swift_destroy_boxed_opaque_existential_1(v6);
      sub_26CC331CC(&v98, v6);
      __swift_destroy_boxed_opaque_existential_1(&v100);
LABEL_39:
      v17 = v95;
      v4 = v90;
      v16 = v91;
      if (!v15)
      {
        goto LABEL_9;
      }
    }
  }

  v55 = v86;
  v56 = sub_26CC1C330();
  v58 = v57;
  v59 = _s13TVAppServices0A12AccountStoreC10storefrontSSSgvgZ_0();
  *&v103 = v11;
  *(&v103 + 1) = v56;
  *&v104 = v58;
  *(&v104 + 1) = v59;
  *&v105 = v60;
  v61 = objc_opt_self();
  sub_26CCB98B8();

  v62 = sub_26CD3A4DC();

  *&v100 = 0;
  v63 = [v61 dataWithJSONObject:v62 options:0 error:&v100];

  v64 = v100;
  if (v63)
  {
    v65 = sub_26CD3A0BC();
    v67 = v66;

    v68 = *(v55 + OBJC_IVAR___TVAppBag_cacheStorage + 24);
    v69 = *(v55 + OBJC_IVAR___TVAppBag_cacheStorage + 32);
    __swift_project_boxed_opaque_existential_1((v55 + OBJC_IVAR___TVAppBag_cacheStorage), v68);
    (*(v69 + 16))(v65, v67, v68, v69);
    v70 = v85;
    v71 = v84;
    sub_26CC18C50(v65, v67);
  }

  else
  {
    v72 = v64;
    v73 = sub_26CD39F8C();

    swift_willThrow();
    v70 = v85;
    v71 = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v74 = swift_allocObject();
    v95 = xmmword_26CD3C1E0;
    *(v74 + 16) = xmmword_26CD3C1E0;
    *&v100 = 0;
    *(&v100 + 1) = 0xE000000000000000;
    sub_26CD3AC6C();
    v75 = sub_26CC19D14();
    MEMORY[0x26D6AD060](v75);

    MEMORY[0x26D6AD060](0xD000000000000024, 0x800000026CD509A0);
    *&v98 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
    sub_26CD3AD1C();
    v76 = *(&v100 + 1);
    *(v74 + 32) = v100;
    *(v74 + 40) = v76;
    v77 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v78 = swift_allocObject();
    *(v78 + 16) = v95;
    *(v78 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v78 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v78 + 32) = v74;
    sub_26CD3A3DC(v77, &dword_26CC14000, v82, "%@", 2, 2, v78);
  }

  sub_26CD3AA1C();
  v79 = v83;
  sub_26CD3A3FC();
  return (*(v71 + 8))(v79, v70);
}

unint64_t sub_26CCB98B8()
{
  v1 = v0;
  v2 = sub_26CC194BC(MEMORY[0x277D84F90]);
  v3 = *v0;
  if (v3)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
    *&v10 = v3;
    sub_26CC331CC(&v10, v9);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26CD38DDC(v9, 0x74636944676162, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  }

  v5 = v1[2];
  if (v5 != 1)
  {
    v6 = sub_26CCBA4A8(v1[1], v5, v1[3], v1[4]);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
    *&v10 = v6;
    sub_26CC331CC(&v10, v9);
    v7 = swift_isUniquelyReferenced_nonNull_native();
    sub_26CD38DDC(v9, 0x6D6E6F7269766E65, 0xEF6F666E49746E65, v7);
  }

  return v2;
}

id sub_26CCB99EC(void *a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v23 = sub_26CD3A41C();
  v6 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v9 = qword_280BBCC98;
  sub_26CD3A40C();
  v10 = sub_26CD3AA2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v11 = swift_allocObject();
  v22 = xmmword_26CD3C1E0;
  *(v11 + 16) = xmmword_26CD3C1E0;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_26CC19E10();
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;

  sub_26CD3A3EC(v10, &dword_26CC14000, v9, "TVAppBag.fetchValue", 19, 2, v8, "key:%s", 6);

  v25 = 0;
  v12 = [a1 valueWithError_];
  v13 = v25;
  if (!v12)
  {
    v14 = v13;
    v15 = sub_26CD39F8C();

    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v16 = swift_allocObject();
    *(v16 + 16) = v22;
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_26CD3AC6C();
    v17 = sub_26CC19D14();
    MEMORY[0x26D6AD060](v17);

    MEMORY[0x26D6AD060](0xD000000000000028, 0x800000026CD50830);
    MEMORY[0x26D6AD060](a2, a3);
    MEMORY[0x26D6AD060](0x20726F727265202CLL, 0xEA0000000000203DLL);
    v24 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
    sub_26CD3AD1C();
    v18 = v26;
    *(v16 + 32) = v25;
    *(v16 + 40) = v18;
    v19 = sub_26CD3A98C();
    v20 = swift_allocObject();
    *(v20 + 16) = v22;
    *(v20 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v20 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v20 + 32) = v16;
    sub_26CD3A3DC(v19, &dword_26CC14000, v9, "%@", 2, 2, v20);

    v12 = 0;
  }

  sub_26CD3AA1C();
  sub_26CD3A3FC();
  (*(v6 + 8))(v8, v23);
  return v12;
}

void sub_26CCB9E04(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_26CC23F54(a2, a3, a4, a5, a6, a7);
  }
}

void sub_26CCB9EA4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, double), uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_26CCB9F34(a2, a3, a4, a5, a6);
  }
}

double sub_26CCB9F34(uint64_t a1, uint64_t a2, void (*a3)(char *, double), uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_26CD3AADC();
  v48 = *(v12 - 8);
  v49 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  v15 = sub_26CD3A41C();
  v16 = MEMORY[0x28223BE20](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR___TVAppBag_isSilentFetching;
  if (*(v6 + OBJC_IVAR___TVAppBag_isSilentFetching) == 1)
  {
    v44 = v17;
    v45 = v16;
    v46 = a4;
    v47 = a3;
    *(v6 + OBJC_IVAR___TVAppBag_isSilentFetching) = 1;
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v21 = qword_280BBCC98;
    sub_26CD3A40C();
    v22 = sub_26CD3AA2C();
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v23 = swift_allocObject();
    v42 = xmmword_26CD3C1E0;
    *(v23 + 16) = xmmword_26CD3C1E0;
    *(v23 + 56) = MEMORY[0x277D837D0];
    v41 = sub_26CC19E10();
    *(v23 + 64) = v41;
    *(v23 + 32) = a1;
    *(v23 + 40) = a2;

    sub_26CD3A3EC(v22, &dword_26CC14000, v21, "TVAppBag.silentFetchBag", 23, 2, v19, "key:%s", 6);

    sub_26CC23428(a1, a2, a5, *(v6 + OBJC_IVAR___TVAppBag_amsBag), &v50, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
    v24 = swift_dynamicCast();
    (*(*(a5 - 8) + 56))(v14, v24 ^ 1u, 1, a5);
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_26CD3AC6C();
    v25 = sub_26CC19D14();
    v27 = v26;

    v50 = v25;
    v51 = v27;
    MEMORY[0x26D6AD060](0xD00000000000001DLL, 0x800000026CD50760);
    MEMORY[0x26D6AD060](a1, a2);
    v28 = v50;
    v29 = v51;
    v30 = sub_26CD3A99C();
    v31 = swift_allocObject();
    *(v31 + 16) = v42;
    v32 = v41;
    *(v31 + 56) = MEMORY[0x277D837D0];
    *(v31 + 64) = v32;
    *(v31 + 32) = v28;
    *(v31 + 40) = v29;
    sub_26CD3A3DC(v30, &dword_26CC14000, v21, "%@", 2, 2, v31);

    (v47)(v14);
    (*(v48 + 8))(v14, v49);
    sub_26CD3AA1C();
    sub_26CD3A3FC();
    (*(v44 + 8))(v19, v45);
    *(v6 + v20) = 0;
  }

  else
  {
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v34 = qword_280BBCC98;
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_26CD3AC6C();
    v35 = sub_26CC19D14();
    MEMORY[0x26D6AD060](v35);

    MEMORY[0x26D6AD060](0xD000000000000037, 0x800000026CD50700);
    MEMORY[0x26D6AD060](a1, a2);
    v36 = v50;
    v37 = v51;
    v38 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_26CD3C1E0;
    *(v39 + 56) = MEMORY[0x277D837D0];
    *(v39 + 64) = sub_26CC19E10();
    *(v39 + 32) = v36;
    *(v39 + 40) = v37;
    sub_26CD3A3DC(v38, &dword_26CC14000, v34, "%@", 2, 2, v39);
  }

  return result;
}

unint64_t sub_26CCBA4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26CC194BC(MEMORY[0x277D84F90]);
  v9 = MEMORY[0x277D837D0];
  if (a2)
  {
    v15 = MEMORY[0x277D837D0];
    *&v14 = a1;
    *(&v14 + 1) = a2;
    sub_26CC331CC(&v14, v13);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26CD38DDC(v13, 0x65566D6574737973, 0xED00006E6F697372, isUniquelyReferenced_nonNull_native);
  }

  if (a4)
  {
    v15 = v9;
    *&v14 = a3;
    *(&v14 + 1) = a4;
    sub_26CC331CC(&v14, v13);

    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_26CD38DDC(v13, 0x6F724665726F7473, 0xEC0000006449746ELL, v11);
  }

  return v8;
}

void sub_26CCBA608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = a1;
  v68 = a2;
  v69 = a3;
  v70 = a4;
  sub_26CC86DC0();

  v6 = sub_26CD3A72C();
  v8 = v6;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_26CCBABA0(v6, v7);
    v38 = v37;

    v7 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      v9 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = sub_26CD3ACCC();
      v10 = v66;
    }

    v11 = *v9;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v21 = v10 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (v9)
          {
            v25 = 0;
            v26 = v9 + 1;
            while (1)
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v22)
              {
                if (v27 < 0x41 || v27 >= v23)
                {
                  if (v27 < 0x61 || v27 >= v24)
                  {
                    goto LABEL_125;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v25 * a5;
              if ((v25 * a5) >> 64 == (v25 * a5) >> 63)
              {
                v25 = v29 + (v27 + v28);
                if (!__OFADD__(v29, (v27 + v28)))
                {
                  ++v26;
                  if (--v21)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (v9)
        {
          v33 = 0;
          while (1)
          {
            v34 = *v9;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_125;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 == (v33 * a5) >> 63)
            {
              v33 = v36 + (v34 + v35);
              if (!__OFADD__(v36, (v34 + v35)))
              {
                ++v9;
                if (--v10)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v12)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (v9)
        {
          v16 = 0;
          v17 = v9 + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                if (v18 < 0x61 || v18 >= v15)
                {
                  break;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v20 = v16 * a5;
            if ((v16 * a5) >> 64 == (v16 * a5) >> 63)
            {
              v16 = v20 - (v18 + v19);
              if (!__OFSUB__(v20, (v18 + v19)))
              {
                ++v17;
                if (--v12)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v39 = HIBYTE(v7) & 0xF;
  v67 = v8;
  v68 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v58 = 0;
        v59 = a5 + 48;
        v60 = a5 + 55;
        v61 = a5 + 87;
        if (a5 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v67;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_125;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          v65 = v58 * a5;
          if ((v58 * a5) >> 64 == (v58 * a5) >> 63)
          {
            v58 = v65 + (v63 + v64);
            if (!__OFADD__(v65, (v63 + v64)))
            {
              v62 = (v62 + 1);
              if (--v39)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v67 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_125;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 == (v41 * a5) >> 63)
          {
            v41 = v48 - (v46 + v47);
            if (!__OFSUB__(v48, (v46 + v47)))
            {
              ++v45;
              if (--v40)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v50 = 0;
      v51 = a5 + 48;
      v52 = a5 + 55;
      v53 = a5 + 87;
      if (a5 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v67 + 1;
      while (1)
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_125;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        v57 = v50 * a5;
        if ((v50 * a5) >> 64 == (v50 * a5) >> 63)
        {
          v50 = v57 + (v55 + v56);
          if (!__OFADD__(v57, (v55 + v56)))
          {
            ++v54;
            if (--v49)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_26CCBABA0(uint64_t a1, unint64_t a2)
{
  v2 = sub_26CD3A73C();
  v6 = sub_26CCBAC20(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_26CCBAC20(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_26CD3AAEC();
    if (!v9 || (v10 = v9, v11 = sub_26CCF1CCC(v9, 0), v12 = sub_26CCBAD78(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_26CD3A63C();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_26CD3A63C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_26CD3ACCC();
LABEL_4:

  return sub_26CD3A63C();
}

unint64_t sub_26CCBAD78(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_26CCBAF98(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_26CD3A6DC();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_26CD3ACCC();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_26CCBAF98(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_26CD3A6AC();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_26CCBAF98(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_26CD3A6EC();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26D6AD0A0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_26CCBB014(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5)
{
  v10 = sub_26CD3A41C();
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v13 = qword_280BBCC98;
  sub_26CD3A40C();
  v14 = sub_26CD3AA2C();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v16 = swift_allocObject();
  v49 = xmmword_26CD3C1E0;
  *(v16 + 16) = xmmword_26CD3C1E0;
  *(v16 + 56) = MEMORY[0x277D837D0];
  v45 = sub_26CC19E10();
  *(v16 + 64) = v45;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;

  v46 = v12;
  sub_26CD3A3EC(v14, &dword_26CC14000, v13, "TVAppBag.retrieveValueForKey", 28, 2, v12, "key:%s", 6);

  v54 = 0;
  v55 = 0xE000000000000000;
  sub_26CD3AC6C();
  v17 = sub_26CC19D14();
  MEMORY[0x26D6AD060](v17);

  MEMORY[0x26D6AD060](0xD000000000000019, 0x800000026CD508C0);
  MEMORY[0x26D6AD060](a1, a2);
  MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD508E0);
  v44 = a4 & 1;
  if (a4)
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (a4)
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x26D6AD060](v18, v19);

  MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD50900);
  v20 = a3;
  *&v52[0] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD4D0, &qword_26CD45D80);
  sub_26CD3AD1C();
  v21 = a1;
  v22 = a5;
  v23 = a2;
  v24 = v54;
  v25 = v55;
  v26 = sub_26CD3A99C();
  v43 = v15;
  v27 = swift_allocObject();
  *(v27 + 16) = v49;
  v28 = v45;
  *(v27 + 56) = MEMORY[0x277D837D0];
  *(v27 + 64) = v28;
  *(v27 + 32) = v24;
  *(v27 + 40) = v25;
  v29 = v22;
  v30 = v21;
  v31 = v13;
  sub_26CD3A3DC(v26, &dword_26CC14000, v13, "%@", 2, 2, v27);

  sub_26CC23428(v30, v23, MEMORY[0x277D839B0], v20, &v54, v44);
  sub_26CC200FC(&v54, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v53 = 2;
  }

  sub_26CC200FC(&v54, &v50);
  if (v51)
  {
    sub_26CC331CC(&v50, v52);
    if (v53 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
      v32 = swift_allocObject();
      *(v32 + 16) = v49;
      *&v50 = 0;
      *(&v50 + 1) = 0xE000000000000000;
      sub_26CD3AC6C();
      v33 = v29 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix;
      v34 = *(v29 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
      v35 = *(v33 + 8);

      MEMORY[0x26D6AD060](v34, v35);

      MEMORY[0x26D6AD060](0xD00000000000001DLL, 0x800000026CD50920);
      MEMORY[0x26D6AD060](v30, v23);
      MEMORY[0x26D6AD060](0x2065756C6176202CLL, 0xEA0000000000203DLL);
      sub_26CD3AD1C();
      v36 = *(&v50 + 1);
      *(v32 + 32) = v50;
      *(v32 + 40) = v36;
      v37 = sub_26CD3A98C();
      v38 = swift_allocObject();
      *(v38 + 16) = v49;
      *(v38 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v38 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
      *(v38 + 32) = v32;
      sub_26CD3A3DC(v37, &dword_26CC14000, v31, "%@", 2, 2, v38);
    }

    __swift_destroy_boxed_opaque_existential_1(v52);
    v39 = &v54;
  }

  else
  {
    sub_26CC1B544(&v54, &qword_2804BBDA8, &qword_26CD3D5F0);
    v39 = &v50;
  }

  sub_26CC1B544(v39, &qword_2804BBDA8, &qword_26CD3D5F0);
  v40 = v53;
  sub_26CD3AA1C();
  v41 = v46;
  sub_26CD3A3FC();
  (*(v47 + 8))(v41, v48);
  return v40;
}

uint64_t sub_26CCBB644(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v45 = a6;
  v11 = sub_26CD3A41C();
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v14 = qword_280BBCC98;
  sub_26CD3A40C();
  v15 = sub_26CD3AA2C();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v17 = swift_allocObject();
  v49 = xmmword_26CD3C1E0;
  *(v17 + 16) = xmmword_26CD3C1E0;
  *(v17 + 56) = MEMORY[0x277D837D0];
  v44 = sub_26CC19E10();
  *(v17 + 64) = v44;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;

  v46 = v13;
  sub_26CD3A3EC(v15, &dword_26CC14000, v14, "TVAppBag.retrieveValueForKey", 28, 2, v13, "key:%s", 6);

  v55 = 0;
  v56 = 0xE000000000000000;
  sub_26CD3AC6C();
  v18 = sub_26CC19D14();
  MEMORY[0x26D6AD060](v18);

  MEMORY[0x26D6AD060](0xD000000000000019, 0x800000026CD508C0);
  MEMORY[0x26D6AD060](a1, a2);
  MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD508E0);
  v43 = a4 & 1;
  if (a4)
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (a4)
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  MEMORY[0x26D6AD060](v19, v20);

  MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD50900);
  v21 = a3;
  *&v52[0] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD4D0, &qword_26CD45D80);
  sub_26CD3AD1C();
  v22 = a5;
  v23 = a2;
  v24 = a1;
  v26 = v55;
  v25 = v56;
  v27 = sub_26CD3A99C();
  v42[1] = v16;
  v28 = swift_allocObject();
  *(v28 + 16) = v49;
  v29 = v44;
  *(v28 + 56) = MEMORY[0x277D837D0];
  *(v28 + 64) = v29;
  *(v28 + 32) = v26;
  *(v28 + 40) = v25;
  sub_26CD3A3DC(v27, &dword_26CC14000, v14, "%@", 2, 2, v28);

  sub_26CC23428(v24, v23, v45, v21, &v55, v43);
  sub_26CC200FC(&v55, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  v30 = swift_dynamicCast();
  if ((v30 & 1) == 0)
  {
    v53 = 0;
  }

  v54 = v30 ^ 1;
  sub_26CC200FC(&v55, &v50);
  if (v51)
  {
    sub_26CC331CC(&v50, v52);
    if (v54)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
      v31 = swift_allocObject();
      *(v31 + 16) = v49;
      *&v50 = 0;
      *(&v50 + 1) = 0xE000000000000000;
      sub_26CD3AC6C();
      v32 = v22 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix;
      v33 = *(v22 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
      v34 = *(v32 + 8);

      MEMORY[0x26D6AD060](v33, v34);

      MEMORY[0x26D6AD060](0xD00000000000001DLL, 0x800000026CD50920);
      MEMORY[0x26D6AD060](v24, v23);
      MEMORY[0x26D6AD060](0x2065756C6176202CLL, 0xEA0000000000203DLL);
      sub_26CD3AD1C();
      v35 = *(&v50 + 1);
      *(v31 + 32) = v50;
      *(v31 + 40) = v35;
      v36 = sub_26CD3A98C();
      v37 = swift_allocObject();
      *(v37 + 16) = v49;
      *(v37 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v37 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
      *(v37 + 32) = v31;
      sub_26CD3A3DC(v36, &dword_26CC14000, v14, "%@", 2, 2, v37);
    }

    __swift_destroy_boxed_opaque_existential_1(v52);
    v38 = &v55;
  }

  else
  {
    sub_26CC1B544(&v55, &qword_2804BBDA8, &qword_26CD3D5F0);
    v38 = &v50;
  }

  sub_26CC1B544(v38, &qword_2804BBDA8, &qword_26CD3D5F0);
  v39 = v53;
  sub_26CD3AA1C();
  v40 = v46;
  sub_26CD3A3FC();
  (*(v47 + 8))(v40, v48);
  return v39;
}

uint64_t sub_26CCBBC88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-v3];
  sub_26CC200FC(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  v5 = MEMORY[0x277D837D0];
  if (swift_dynamicCast())
  {
    return v11;
  }

  v7 = sub_26CC18080(0, &unk_280BBB770, 0x277CBEBC0);
  result = 0;
  if (v7 == v5)
  {
    sub_26CC200FC(a1, v12);
    if (v13)
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        return 0;
      }

      sub_26CD3A03C();

      v8 = &qword_2804BCA30;
      v9 = &qword_26CD3DA70;
      v10 = v4;
    }

    else
    {
      v8 = &qword_2804BBDA8;
      v9 = &qword_26CD3D5F0;
      v10 = v12;
    }

    sub_26CC1B544(v10, v8, v9);
    return 0;
  }

  return result;
}

uint64_t sub_26CCBBE08(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16[-v7];
  sub_26CC200FC(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  if (swift_dynamicCast())
  {
    return v15;
  }

  v11 = sub_26CC18080(0, &unk_280BBB770, 0x277CBEBC0);
  result = 0;
  if (v9 == v11)
  {
    sub_26CC200FC(a1, v16);
    if (v17)
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        return 0;
      }

      sub_26CD3A03C();

      v12 = &qword_2804BCA30;
      v13 = &qword_26CD3DA70;
      v14 = v8;
    }

    else
    {
      v12 = &qword_2804BBDA8;
      v13 = &qword_26CD3D5F0;
      v14 = v16;
    }

    sub_26CC1B544(v14, v12, v13);
    return 0;
  }

  return result;
}

uint64_t sub_26CCBBF9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8[-v3];
  sub_26CC200FC(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  v5 = MEMORY[0x277D839B0];
  if (swift_dynamicCast())
  {
    return v7;
  }

  if (sub_26CC18080(0, &unk_280BBB770, 0x277CBEBC0) == v5)
  {
    sub_26CC200FC(a1, v8);
    if (v9)
    {
      if (swift_dynamicCast())
      {
        sub_26CD3A03C();

        sub_26CC1B544(v4, &qword_2804BCA30, &qword_26CD3DA70);
      }
    }

    else
    {
      sub_26CC1B544(v8, &qword_2804BBDA8, &qword_26CD3D5F0);
    }
  }

  return 2;
}

uint64_t sub_26CCBC114(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-v3];
  sub_26CC200FC(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  v5 = MEMORY[0x277D83B88];
  if (swift_dynamicCast())
  {
    return v11;
  }

  v7 = sub_26CC18080(0, &unk_280BBB770, 0x277CBEBC0);
  result = 0;
  if (v7 == v5)
  {
    sub_26CC200FC(a1, v12);
    if (v13)
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        return 0;
      }

      sub_26CD3A03C();

      v8 = &qword_2804BCA30;
      v9 = &qword_26CD3DA70;
      v10 = v4;
    }

    else
    {
      v8 = &qword_2804BBDA8;
      v9 = &qword_26CD3D5F0;
      v10 = v12;
    }

    sub_26CC1B544(v10, v8, v9);
    return 0;
  }

  return result;
}

uint64_t sub_26CCBC294(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-v3];
  sub_26CC200FC(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  v5 = MEMORY[0x277D839F8];
  if (swift_dynamicCast())
  {
    return v11;
  }

  v7 = sub_26CC18080(0, &unk_280BBB770, 0x277CBEBC0);
  result = 0;
  if (v7 == v5)
  {
    sub_26CC200FC(a1, v12);
    if (v13)
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        return 0;
      }

      sub_26CD3A03C();

      v8 = &qword_2804BCA30;
      v9 = &qword_26CD3DA70;
      v10 = v4;
    }

    else
    {
      v8 = &qword_2804BBDA8;
      v9 = &qword_26CD3D5F0;
      v10 = v12;
    }

    sub_26CC1B544(v10, v8, v9);
    return 0;
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26CCBC4C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_26CCBC508(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26CCBC634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26CCC79F8(40, a1);
  if (v4 == 2)
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v5 = qword_280BBCBE0;
    v6 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_26CD3C1E0;
    *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v7 + 64) = sub_26CC2E6E8();
    *(v7 + 32) = &unk_287DF95D0;
    sub_26CD3A3DC(v6, &dword_26CC14000, v5, "%@", 2, 2, v7);

    sub_26CC2E794();
    swift_allocError();
    *v8 = 6;
    return swift_willThrow();
  }

  else
  {
    v10 = v4;
    v11 = sub_26CCC79F8(41, a1);
    v12 = sub_26CCC79F8(37, a1);
    v13 = sub_26CCC79F8(31, a1);
    v23 = sub_26CCC7724(27, a1);
    v15 = v14;
    if (v12)
    {
      v16 = 1;
    }

    else
    {
      v16 = 3;
    }

    if (v11)
    {
      v16 = 5;
    }

    if (((v11 | v12) | v13))
    {
      v17 = v16;
    }

    else
    {
      v17 = 2 * (v14 != 0);
    }

    v18 = sub_26CCC7724(88, a1);
    if (v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0xE000000000000000;
    }

    v22 = sub_26CCC79F8(36, a1);
    result = sub_26CCC79F8(32, a1);
    *a2 = v23;
    *(a2 + 8) = v15;
    *(a2 + 16) = v20;
    *(a2 + 24) = v21;
    *(a2 + 32) = v17;
    *(a2 + 33) = v22 & 1;
    *(a2 + 34) = result & 1;
    *(a2 + 35) = v10 & 1;
  }

  return result;
}

unint64_t BagKey.rawValue.getter()
{
  result = 0x65676175676E616CLL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
    case 5:
      return result;
    case 6:
      result = 0xD000000000000027;
      break;
    case 7:
      result = 0x7363697274656DLL;
      break;
    case 8:
      result = 0x6F724665726F7473;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 0xA:
    case 0xC:
      result = 0xD000000000000023;
      break;
    case 0xB:
      result = 0xD000000000000019;
      break;
    case 0xD:
      result = 0xD00000000000001BLL;
      break;
    case 0xE:
      result = 0xD000000000000019;
      break;
    default:
      result = 0xD000000000000026;
      break;
  }

  return result;
}

TVAppServices::BagKey_optional __swiftcall BagKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26CD3AD9C();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26CCBCA8C()
{
  v0 = BagKey.rawValue.getter();
  v2 = v1;
  if (v0 == BagKey.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_26CD3AFDC();
  }

  return v5 & 1;
}

unint64_t sub_26CCBCB2C()
{
  result = qword_2804BD4E8;
  if (!qword_2804BD4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD4E8);
  }

  return result;
}

uint64_t sub_26CCBCB80()
{
  sub_26CD3B0FC();
  BagKey.rawValue.getter();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

double sub_26CCBCBE8(uint64_t a1)
{
  BagKey.rawValue.getter();
  sub_26CD3A54C();

  return result;
}

uint64_t sub_26CCBCC4C(uint64_t a1)
{
  sub_26CD3B0FC();
  BagKey.rawValue.getter();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

unint64_t sub_26CCBCCBC@<X0>(unint64_t *a1@<X8>)
{
  result = BagKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t BadgingStoreError.hashValue.getter()
{
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](0);
  return sub_26CD3B13C();
}

uint64_t sub_26CCBCDBC()
{
  if (qword_2804BBA98 != -1)
  {
    swift_once();
  }

  v0 = qword_2804BDBA0;
  qword_2804D1510 = type metadata accessor for NotificationService();
  unk_2804D1518 = &off_287E05160;
  qword_2804D14F8[0] = v0;
}

uint64_t static BadgingStore.add(identifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return MEMORY[0x2822009F8](sub_26CCBCE64, 0, 0);
}

uint64_t sub_26CCBCE64()
{
  if (qword_2804BBA48 != -1)
  {
    swift_once();
  }

  sub_26CC19A84(&unk_2804D14D0, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 16))(v1, v2);
  v3 = v0[27];
  if (v3)
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v4 = v3 + 40;
    v5 = *(v3 + 2) + 1;
    while (--v5)
    {
      if (*(v4 - 1) != v0[30] || *v4 != v0[31])
      {
        v4 += 2;
        if ((sub_26CD3AFDC() & 1) == 0)
        {
          continue;
        }
      }

      swift_bridgeObjectRelease_n();
      if (qword_280BB9C20 != -1)
      {
        swift_once();
      }

      v7 = qword_280BBCBE0;
      v8 = sub_26CD3A99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_26CD3C1E0;
      *(v9 + 56) = MEMORY[0x277D837D0];
      *(v9 + 64) = sub_26CC19E10();
      *(v9 + 32) = 0xD000000000000038;
      *(v9 + 40) = 0x800000026CD50D70;
      sub_26CD3A3DC(v8, &dword_26CC14000, v7, "%@", 2, 2, v9);

      v10 = v0[1];

      return v10();
    }

    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v24 = qword_280BBCBE0;
    v25 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_26CD3C1E0;
    *(v26 + 56) = MEMORY[0x277D837D0];
    *(v26 + 64) = sub_26CC19E10();
    *(v26 + 32) = 0xD000000000000027;
    *(v26 + 40) = 0x800000026CD50DB0;
    sub_26CD3A3DC(v25, &dword_26CC14000, v24, "%@", 2, 2, v26);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_26CCBE3BC(0, *(v3 + 2) + 1, 1, v3);
    }

    v28 = *(v3 + 2);
    v27 = *(v3 + 3);
    if (v28 >= v27 >> 1)
    {
      v3 = sub_26CCBE3BC((v27 > 1), v28 + 1, 1, v3);
    }

    v30 = v0[30];
    v29 = v0[31];
    *(v3 + 2) = v28 + 1;
    v31 = &v3[16 * v28];
    *(v31 + 4) = v30;
    *(v31 + 5) = v29;
    sub_26CC19A84(&unk_2804D14D0, (v0 + 17));
    v32 = v0[20];
    v33 = v0[21];
    __swift_project_boxed_opaque_existential_1(v0 + 17, v32);
    v0[29] = v3;
    (*(v33 + 24))(v0 + 29, v32, v33);
    __swift_destroy_boxed_opaque_existential_1(v0 + 17);
    if (qword_2804BBA50 != -1)
    {
      swift_once();
    }

    sub_26CC19A84(qword_2804D14F8, (v0 + 22));
    __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
    v21 = *(v3 + 2);

    v22 = swift_task_alloc();
    v0[32] = v22;
    *v22 = v0;
    v23 = sub_26CCBD4F0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v13 = v0[30];
    v12 = v0[31];
    v14 = qword_280BBCBE0;
    v15 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_26CD3C1E0;
    *(v16 + 56) = MEMORY[0x277D837D0];
    *(v16 + 64) = sub_26CC19E10();
    *(v16 + 32) = 0xD00000000000002FLL;
    *(v16 + 40) = 0x800000026CD50D40;
    sub_26CD3A3DC(v15, &dword_26CC14000, v14, "%@", 2, 2, v16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_26CD3C1E0;
    *(v17 + 32) = v13;
    *(v17 + 40) = v12;
    sub_26CC19A84(&unk_2804D14D0, (v0 + 7));
    v18 = v0[10];
    v19 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v18);
    v0[28] = v17;
    v20 = *(v19 + 24);

    v20(v0 + 28, v18, v19);
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    if (qword_2804BBA50 != -1)
    {
      swift_once();
    }

    sub_26CC19A84(qword_2804D14F8, (v0 + 12));
    __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
    v21 = *(v17 + 16);

    v22 = swift_task_alloc();
    v0[34] = v22;
    *v22 = v0;
    v23 = sub_26CCBD6CC;
  }

  v22[1] = v23;

  return sub_26CD0F0D0(v21);
}

uint64_t sub_26CCBD4F0()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_26CCBD668;
  }

  else
  {
    v2 = sub_26CCBD604;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CCBD604()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CCBD668()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CCBD6CC()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_26CCBD844;
  }

  else
  {
    v2 = sub_26CCBD7E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CCBD7E0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CCBD844()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t static BadgingStore.clear()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26CC246B8;

  return sub_26CCBF758();
}

uint64_t static BadgingStore.remove(identifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
  return MEMORY[0x2822009F8](sub_26CCBD968, 0, 0);
}

uint64_t sub_26CCBD968()
{
  if (qword_2804BBA48 != -1)
  {
    swift_once();
  }

  sub_26CC19A84(&unk_2804D14D0, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 16))(v1, v2);
  v3 = v0[23];
  if (!v3)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    goto LABEL_15;
  }

  v0[22] = v3;

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = *(v3 + 16);

  if (!v4 || (v5 = *(v3 + 16)) == 0)
  {
LABEL_13:

LABEL_15:
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v11 = v0[25];
    v10 = v0[26];
    v12 = qword_280BBCBE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_26CD3C1E0;
    sub_26CD3AC6C();

    MEMORY[0x26D6AD060](v11, v10);
    MEMORY[0x26D6AD060](46, 0xE100000000000000);
    *(v13 + 32) = 0xD00000000000002ALL;
    *(v13 + 40) = 0x800000026CD50DE0;
    v14 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_26CD3C1E0;
    *(v15 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v15 + 64) = sub_26CC2E6E8();
    *(v15 + 32) = v13;
    sub_26CD3A3DC(v14, &dword_26CC14000, v12, "%@", 2, 2, v15);

    sub_26CCBFA08();
    swift_allocError();
    swift_willThrow();
    v16 = v0[1];

    return v16();
  }

  v6 = 0;
  v7 = v0 + 7;
  v8 = (v3 + 40);
  while (1)
  {
    v9 = *(v8 - 1) == v0[25] && *v8 == v0[26];
    if (v9 || (sub_26CD3AFDC() & 1) != 0)
    {
      break;
    }

    ++v6;
    v8 += 2;
    if (v5 == v6)
    {
      goto LABEL_13;
    }
  }

  sub_26CCBE050(v6);

  v18 = v0[22];
  if (*(v18 + 16))
  {
    sub_26CC19A84(&unk_2804D14D0, (v0 + 7));
    v19 = v0[10];
    v20 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v19);
    v0[24] = v18;
    (*(v20 + 24))(v0 + 24, v19, v20);
  }

  else
  {
    sub_26CC19A84(&unk_2804D14D0, (v0 + 17));
    v26 = v0[20];
    v27 = v0[21];
    __swift_project_boxed_opaque_existential_1(v0 + 17, v26);
    (*(v27 + 32))(v26, v27);
    v7 = v0 + 17;
  }

  __swift_destroy_boxed_opaque_existential_1(v7);
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v21 = qword_280BBCBE0;
  v22 = sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_26CD3C1E0;
  *(v23 + 56) = MEMORY[0x277D837D0];
  *(v23 + 64) = sub_26CC19E10();
  *(v23 + 32) = 0xD00000000000002FLL;
  *(v23 + 40) = 0x800000026CD50E10;
  sub_26CD3A3DC(v22, &dword_26CC14000, v21, "%@", 2, 2, v23);

  if (qword_2804BBA50 != -1)
  {
    swift_once();
  }

  sub_26CC19A84(qword_2804D14F8, (v0 + 12));
  __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  v24 = *(v18 + 16);

  v25 = swift_task_alloc();
  v0[27] = v25;
  *v25 = v0;
  v25[1] = sub_26CCBDED8;

  return sub_26CD0F0D0(v24);
}

uint64_t sub_26CCBDED8()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_26CCBDFEC;
  }

  else
  {
    v2 = sub_26CCBD7E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CCBDFEC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CCBE050(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26CCF21B0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_26CCBE0DC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26CCF23F4(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 5, 8 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_26CCBE164()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26CC37110;

  return sub_26CCBF758();
}

uint64_t sub_26CCBE204@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26CCBF63C();
  *a1 = result;
  return result;
}

void sub_26CCBE22C(uint64_t *a1)
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_26CD3A79C();
  v3 = sub_26CD3A59C();
  [v1 setObject:v2 forKey:v3];
}

void sub_26CCBE2E0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_26CD3A59C();
  [v0 removeObjectForKey_];
}

char *sub_26CCBE3BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}