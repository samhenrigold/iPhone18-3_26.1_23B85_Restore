void sub_21D40C3C8(int a1)
{
  v2 = v1;
  v49 = *v1;
  v54 = sub_21DBF9D2C();
  v4 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v43[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = sub_21DBF9D5C();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v50 = &v43[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1D8, &unk_21DC15CF0);
  v48 = *(v7 - 8);
  v8 = *(v48 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v43[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v43[-v11];
  v13 = sub_21DBF9D8C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v43[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v2[2];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13, v15);
  v19 = v18;
  LOBYTE(v18) = sub_21DBF9DAC();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v47 = v4;
  v20 = *(*v2 + 208);
  swift_beginAccess();
  v55 = v12;
  sub_21D0D3954(v2 + v20, v12, &qword_27CE5C1D8, &unk_21DC15CF0);
  swift_beginAccess();
  v21 = v2[5];
  v22 = 3;
  if (a1)
  {
    v22 = 4;
  }

  v23 = v2[v22];
  v24 = swift_allocObject();
  *(v24 + 16) = 1;
  if ((a1 & 1) == 0)
  {
    v26 = *(v2 + *(*v2 + 216));

    v27 = v23;
    os_unfair_lock_lock(v26);
    v28 = *(*v2 + 224);
    v29 = *(v2 + v28);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      *(v24 + 16) = v31;
      *(v2 + v28) = v31;
      os_unfair_lock_unlock(v26);
      if (*(v24 + 16) > 1)
      {
        sub_21D0CF7E0(v55, &qword_27CE5C1D8, &unk_21DC15CF0);

        return;
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v25 = v23;
LABEL_9:
  v45 = v21;
  v44 = a1;
  v46 = v23;
  v32 = v2[9];
  if (v32)
  {
    v33 = v2[10];

    v32(v34);
    sub_21D0D0E88(v32, v33);
  }

  sub_21D0D3954(v55, v9, &qword_27CE5C1D8, &unk_21DC15CF0);
  v35 = (*(v48 + 80) + 40) & ~*(v48 + 80);
  v36 = (v8 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = v24;
  *(v37 + 24) = v44 & 1;
  *(v37 + 32) = v45;
  sub_21D0D523C(v9, v37 + v35, &qword_27CE5C1D8, &unk_21DC15CF0);
  *(v37 + v36) = v2;
  *(v37 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8)) = v49;
  aBlock[4] = sub_21D436E50;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_117;
  v38 = _Block_copy(aBlock);

  v39 = v50;
  sub_21DBF9D4C();
  v56 = MEMORY[0x277D84F90];
  sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
  v40 = v52;
  v41 = v54;
  sub_21DBFBCBC();
  v42 = v46;
  MEMORY[0x223D438F0](0, v39, v40, v38);

  _Block_release(v38);

  (*(v47 + 8))(v40, v41);
  (*(v51 + 8))(v39, v53);
  sub_21D0CF7E0(v55, &qword_27CE5C1D8, &unk_21DC15CF0);
}

void sub_21D40CA9C(int a1)
{
  v2 = v1;
  v49 = *v1;
  v54 = sub_21DBF9D2C();
  v4 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v43[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = sub_21DBF9D5C();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v50 = &v43[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3D0, &qword_21DC15EF0);
  v48 = *(v7 - 8);
  v8 = *(v48 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v43[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v43[-v11];
  v13 = sub_21DBF9D8C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v43[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v2[2];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13, v15);
  v19 = v18;
  LOBYTE(v18) = sub_21DBF9DAC();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v47 = v4;
  v20 = *(*v2 + 208);
  swift_beginAccess();
  v55 = v12;
  sub_21D0D3954(v2 + v20, v12, &qword_27CE5C3D0, &qword_21DC15EF0);
  swift_beginAccess();
  v21 = v2[5];
  v22 = 3;
  if (a1)
  {
    v22 = 4;
  }

  v23 = v2[v22];
  v24 = swift_allocObject();
  *(v24 + 16) = 1;
  if ((a1 & 1) == 0)
  {
    v26 = *(v2 + *(*v2 + 216));

    v27 = v23;
    os_unfair_lock_lock(v26);
    v28 = *(*v2 + 224);
    v29 = *(v2 + v28);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      *(v24 + 16) = v31;
      *(v2 + v28) = v31;
      os_unfair_lock_unlock(v26);
      if (*(v24 + 16) > 1)
      {
        sub_21D0CF7E0(v55, &qword_27CE5C3D0, &qword_21DC15EF0);

        return;
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v25 = v23;
LABEL_9:
  v45 = v21;
  v44 = a1;
  v46 = v23;
  v32 = v2[9];
  if (v32)
  {
    v33 = v2[10];

    v32(v34);
    sub_21D0D0E88(v32, v33);
  }

  sub_21D0D3954(v55, v9, &qword_27CE5C3D0, &qword_21DC15EF0);
  v35 = (*(v48 + 80) + 40) & ~*(v48 + 80);
  v36 = (v8 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = v24;
  *(v37 + 24) = v44 & 1;
  *(v37 + 32) = v45;
  sub_21D0D523C(v9, v37 + v35, &qword_27CE5C3D0, &qword_21DC15EF0);
  *(v37 + v36) = v2;
  *(v37 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8)) = v49;
  aBlock[4] = sub_21D43DBCC;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_1539;
  v38 = _Block_copy(aBlock);

  v39 = v50;
  sub_21DBF9D4C();
  v56 = MEMORY[0x277D84F90];
  sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
  v40 = v52;
  v41 = v54;
  sub_21DBFBCBC();
  v42 = v46;
  MEMORY[0x223D438F0](0, v39, v40, v38);

  _Block_release(v38);

  (*(v47 + 8))(v40, v41);
  (*(v51 + 8))(v39, v53);
  sub_21D0CF7E0(v55, &qword_27CE5C3D0, &qword_21DC15EF0);
}

void sub_21D40D170(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v51 = a3;
  v52 = a4;
  v5 = v4;
  v7 = *v4;
  v49 = a2;
  v50 = v7;
  v54 = sub_21DBF9D2C();
  v8 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF9D5C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v53 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21DBF9D8C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = v5[2];
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x277D85200], v14, v16);
  v20 = v19;
  LOBYTE(v19) = sub_21DBF9DAC();
  (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v45 = v12;
  v46 = v10;
  v47 = v11;
  v48 = v8;
  swift_beginAccess();
  v21 = v5[17];
  v22 = *(v5 + 144);
  swift_beginAccess();
  v23 = v5[5];
  v24 = 3;
  if (a1)
  {
    v24 = 4;
  }

  v25 = v5[v24];
  v26 = swift_allocObject();
  *(v26 + 16) = 1;
  if ((a1 & 1) == 0)
  {
    v28 = v5[19];
    sub_21D43DE58(v21, v22);

    v29 = v25;
    os_unfair_lock_lock(v28);
    v30 = v5[20];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (!v31)
    {
      *(v26 + 16) = v32;
      v5[20] = v32;
      os_unfair_lock_unlock(v28);
      if (*(v26 + 16) > 1)
      {

        sub_21D43DEB8(v21, v22);

        return;
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

  sub_21D43DE58(v21, v22);

  v27 = v25;
LABEL_9:
  v44 = v25;
  v33 = v5[9];
  if (v33)
  {
    v34 = v5[10];

    v33(v35);
    sub_21D0D0E88(v33, v34);
  }

  v57 = v22;
  v36 = swift_allocObject();
  *(v36 + 16) = v26;
  *(v36 + 24) = a1 & 1;
  *(v36 + 32) = v23;
  *(v36 + 40) = v21;
  *(v36 + 48) = v57;
  v38 = v50;
  v37 = v51;
  *(v36 + 56) = v5;
  *(v36 + 64) = v38;
  aBlock[4] = v37;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = v52;
  v39 = _Block_copy(aBlock);
  sub_21D43DE58(v21, v22);

  v52 = v21;
  v40 = v53;
  sub_21DBF9D4C();
  v55 = MEMORY[0x277D84F90];
  sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
  v41 = v46;
  v42 = v54;
  sub_21DBFBCBC();
  v43 = v44;
  MEMORY[0x223D438F0](0, v40, v41, v39);

  _Block_release(v39);
  sub_21D43DEB8(v52, v22);

  (*(v48 + 8))(v41, v42);
  (*(v45 + 8))(v40, v47);
}

void sub_21D40D6EC(int a1)
{
  v2 = v1;
  v49 = *v1;
  v54 = sub_21DBF9D2C();
  v4 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v43[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = sub_21DBF9D5C();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v50 = &v43[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DE0, &unk_21DC1A860);
  v48 = *(v7 - 8);
  v8 = *(v48 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v43[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v43[-v11];
  v13 = sub_21DBF9D8C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v43[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v2[2];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13, v15);
  v19 = v18;
  LOBYTE(v18) = sub_21DBF9DAC();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v47 = v4;
  v20 = *(*v2 + 208);
  swift_beginAccess();
  v55 = v12;
  sub_21D0D3954(v2 + v20, v12, &qword_27CE60DE0, &unk_21DC1A860);
  swift_beginAccess();
  v21 = v2[5];
  v22 = 3;
  if (a1)
  {
    v22 = 4;
  }

  v23 = v2[v22];
  v24 = swift_allocObject();
  *(v24 + 16) = 1;
  if ((a1 & 1) == 0)
  {
    v26 = *(v2 + *(*v2 + 216));

    v27 = v23;
    os_unfair_lock_lock(v26);
    v28 = *(*v2 + 224);
    v29 = *(v2 + v28);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      *(v24 + 16) = v31;
      *(v2 + v28) = v31;
      os_unfair_lock_unlock(v26);
      if (*(v24 + 16) > 1)
      {
        sub_21D0CF7E0(v55, &qword_27CE60DE0, &unk_21DC1A860);

        return;
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v25 = v23;
LABEL_9:
  v45 = v21;
  v44 = a1;
  v46 = v23;
  v32 = v2[9];
  if (v32)
  {
    v33 = v2[10];

    v32(v34);
    sub_21D0D0E88(v32, v33);
  }

  sub_21D0D3954(v55, v9, &qword_27CE60DE0, &unk_21DC1A860);
  v35 = (*(v48 + 80) + 40) & ~*(v48 + 80);
  v36 = (v8 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = v24;
  *(v37 + 24) = v44 & 1;
  *(v37 + 32) = v45;
  sub_21D0D523C(v9, v37 + v35, &qword_27CE60DE0, &unk_21DC1A860);
  *(v37 + v36) = v2;
  *(v37 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8)) = v49;
  aBlock[4] = sub_21D0D7DC8;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_1041;
  v38 = _Block_copy(aBlock);

  v39 = v50;
  sub_21DBF9D4C();
  v56 = MEMORY[0x277D84F90];
  sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
  v40 = v52;
  v41 = v54;
  sub_21DBFBCBC();
  v42 = v46;
  MEMORY[0x223D438F0](0, v39, v40, v38);

  _Block_release(v38);

  (*(v47 + 8))(v40, v41);
  (*(v51 + 8))(v39, v53);
  sub_21D0CF7E0(v55, &qword_27CE60DE0, &unk_21DC1A860);
}

void sub_21D40DDC0(int a1)
{
  v2 = v1;
  v49 = *v1;
  v54 = sub_21DBF9D2C();
  v4 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v43[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = sub_21DBF9D5C();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v50 = &v43[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2F0, &qword_21DC15E18);
  v48 = *(v7 - 8);
  v8 = *(v48 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v43[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v43[-v11];
  v13 = sub_21DBF9D8C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v43[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v2[2];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13, v15);
  v19 = v18;
  LOBYTE(v18) = sub_21DBF9DAC();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v47 = v4;
  v20 = *(*v2 + 208);
  swift_beginAccess();
  v55 = v12;
  sub_21D0D3954(v2 + v20, v12, &qword_27CE5C2F0, &qword_21DC15E18);
  swift_beginAccess();
  v21 = v2[5];
  v22 = 3;
  if (a1)
  {
    v22 = 4;
  }

  v23 = v2[v22];
  v24 = swift_allocObject();
  *(v24 + 16) = 1;
  if ((a1 & 1) == 0)
  {
    v26 = *(v2 + *(*v2 + 216));

    v27 = v23;
    os_unfair_lock_lock(v26);
    v28 = *(*v2 + 224);
    v29 = *(v2 + v28);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      *(v24 + 16) = v31;
      *(v2 + v28) = v31;
      os_unfair_lock_unlock(v26);
      if (*(v24 + 16) > 1)
      {
        sub_21D0CF7E0(v55, &qword_27CE5C2F0, &qword_21DC15E18);

        return;
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v25 = v23;
LABEL_9:
  v45 = v21;
  v44 = a1;
  v46 = v23;
  v32 = v2[9];
  if (v32)
  {
    v33 = v2[10];

    v32(v34);
    sub_21D0D0E88(v32, v33);
  }

  sub_21D0D3954(v55, v9, &qword_27CE5C2F0, &qword_21DC15E18);
  v35 = (*(v48 + 80) + 40) & ~*(v48 + 80);
  v36 = (v8 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = v24;
  *(v37 + 24) = v44 & 1;
  *(v37 + 32) = v45;
  sub_21D0D523C(v9, v37 + v35, &qword_27CE5C2F0, &qword_21DC15E18);
  *(v37 + v36) = v2;
  *(v37 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8)) = v49;
  aBlock[4] = sub_21D43CFD8;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_869;
  v38 = _Block_copy(aBlock);

  v39 = v50;
  sub_21DBF9D4C();
  v56 = MEMORY[0x277D84F90];
  sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
  v40 = v52;
  v41 = v54;
  sub_21DBFBCBC();
  v42 = v46;
  MEMORY[0x223D438F0](0, v39, v40, v38);

  _Block_release(v38);

  (*(v47 + 8))(v40, v41);
  (*(v51 + 8))(v39, v53);
  sub_21D0CF7E0(v55, &qword_27CE5C2F0, &qword_21DC15E18);
}

void sub_21D40E494(int a1)
{
  v2 = v1;
  v49 = *v1;
  v54 = sub_21DBF9D2C();
  v4 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v43[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = sub_21DBF9D5C();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v50 = &v43[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C298, &qword_21DC196B0);
  v48 = *(v7 - 8);
  v8 = *(v48 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v43[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v43[-v11];
  v13 = sub_21DBF9D8C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v43[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v2[2];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13, v15);
  v19 = v18;
  LOBYTE(v18) = sub_21DBF9DAC();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v47 = v4;
  v20 = *(*v2 + 208);
  swift_beginAccess();
  v55 = v12;
  sub_21D0D3954(v2 + v20, v12, &qword_27CE5C298, &qword_21DC196B0);
  swift_beginAccess();
  v21 = v2[5];
  v22 = 3;
  if (a1)
  {
    v22 = 4;
  }

  v23 = v2[v22];
  v24 = swift_allocObject();
  *(v24 + 16) = 1;
  if ((a1 & 1) == 0)
  {
    v26 = *(v2 + *(*v2 + 216));

    v27 = v23;
    os_unfair_lock_lock(v26);
    v28 = *(*v2 + 224);
    v29 = *(v2 + v28);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      *(v24 + 16) = v31;
      *(v2 + v28) = v31;
      os_unfair_lock_unlock(v26);
      if (*(v24 + 16) > 1)
      {
        sub_21D0CF7E0(v55, &qword_27CE5C298, &qword_21DC196B0);

        return;
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v25 = v23;
LABEL_9:
  v45 = v21;
  v44 = a1;
  v46 = v23;
  v32 = v2[9];
  if (v32)
  {
    v33 = v2[10];

    v32(v34);
    sub_21D0D0E88(v32, v33);
  }

  sub_21D0D3954(v55, v9, &qword_27CE5C298, &qword_21DC196B0);
  v35 = (*(v48 + 80) + 40) & ~*(v48 + 80);
  v36 = (v8 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = v24;
  *(v37 + 24) = v44 & 1;
  *(v37 + 32) = v45;
  sub_21D0D523C(v9, v37 + v35, &qword_27CE5C298, &qword_21DC196B0);
  *(v37 + v36) = v2;
  *(v37 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8)) = v49;
  aBlock[4] = sub_21D43A648;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_709;
  v38 = _Block_copy(aBlock);

  v39 = v50;
  sub_21DBF9D4C();
  v56 = MEMORY[0x277D84F90];
  sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
  v40 = v52;
  v41 = v54;
  sub_21DBFBCBC();
  v42 = v46;
  MEMORY[0x223D438F0](0, v39, v40, v38);

  _Block_release(v38);

  (*(v47 + 8))(v40, v41);
  (*(v51 + 8))(v39, v53);
  sub_21D0CF7E0(v55, &qword_27CE5C298, &qword_21DC196B0);
}

void sub_21D40EB68()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D43E13C;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1730;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D43E188;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1736;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D40EE74()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D439C70;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_227;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D439CBC;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_233;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D40F180()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D439FB0;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_393;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D439FFC;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_399;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D40F48C()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D43A358;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_559;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D43A3A4;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_565;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D40F798()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D43D408;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1140;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D43D454;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1146;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D40FAA4()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D439E10;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_310;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D439E5C;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_316;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D40FDB0()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D43CEA0;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_808;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D43CEEC;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_814;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D4100BC()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D43D1E0;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_974;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D43D22C;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_980;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D4103C8()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D43D5A8;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1223;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D43D5F4;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1229;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D4106D4()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D43A4F8;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_642;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D43A544;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_648;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D4109E0()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D43DA7C;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1472;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D43DAC8;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1478;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D410CEC()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D436D18;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_57_0;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D436D64;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_63_1;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D410FF8()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D43D748;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1306;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D43D794;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1312;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D411304()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D43DF68;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1647;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D43DFB4;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1653;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D411610()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D43A1DC;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_476;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D43A228;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_482;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D41191C()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D439A40;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_139;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D439A8C;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_145;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D411C28()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D43DC84;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1555;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D43DCD0;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1561;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D411F34()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D43D8F0;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1389;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D43D93C;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1395;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D412240()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D43D040;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_891;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D43D08C;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_897;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D41254C()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D43CD00;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_725;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D43CD4C;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_731;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

uint64_t sub_21D412858(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD000000000000033, 0x800000021DC5C390, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeMustRefresh notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43E210;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1775;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D412CEC(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD00000000000003ALL, 0x800000021DC5BE90, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeMustRefresh notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D439D44;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_272;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D413180(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5BF10, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeMustRefresh notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43A084;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_438;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D413614(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD000000000000034, 0x800000021DC5BFB0, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeMustRefresh notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43A42C;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_604;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D413AA8(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD000000000000035, 0x800000021DC5C170, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeMustRefresh notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43D4DC;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1185;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D413F3C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD000000000000036, 0x800000021DC5BED0, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeMustRefresh notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D439EE4;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_355;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D4143D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD000000000000037, 0x800000021DC5C070, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeMustRefresh notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43CF74;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_853;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D414864(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD000000000000039, 0x800000021DC5C0F0, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeMustRefresh notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43D2B4;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1019;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D414CF8(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD00000000000003ALL, 0x800000021DC5C1B0, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeMustRefresh notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43D67C;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1268;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D41518C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5BFF0, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeMustRefresh notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43A5CC;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_687;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D415620(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD000000000000044, 0x800000021DC5C280, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeMustRefresh notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43DB50;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1517;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D415AB4(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD000000000000036, 0x800000021DC5BD70, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeMustRefresh notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D436DEC;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_101;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D415F48(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5C1F0, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeMustRefresh notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43D81C;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1351;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D4163DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD000000000000037, 0x800000021DC5C350, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeMustRefresh notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43E04C;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1692;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D416870(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD000000000000059, 0x800000021DC5BF50, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeMustRefresh notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43A2B0;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_521;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D416D04(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD000000000000044, 0x800000021DC5BE40, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeMustRefresh notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D439B14;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_184;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D417198(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD00000000000003BLL, 0x800000021DC5C2D0, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeMustRefresh notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43DD58;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1600;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D41762C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD000000000000040, 0x800000021DC5C230, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeMustRefresh notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43D9D4;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1434;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D417AC0(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD000000000000036, 0x800000021DC5C130, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeMustRefresh notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43D360;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1102;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D417F54(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD00000000000003CLL, 0x800000021DC5C0B0, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeMustRefresh notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43D114;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_936;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D4183E8(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5C030, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeMustRefresh notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43CDD4;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_770;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D41887C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF9D2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21DBF9D5C();
  v10 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(a1 + 16);
  aBlock[4] = a2;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = a3;
  v13 = _Block_copy(aBlock);

  sub_21DBF9D4C();
  v17 = MEMORY[0x277D84F90];
  sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
  sub_21DBFBCBC();
  MEMORY[0x223D438F0](0, v12, v9, v13);
  _Block_release(v13);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v16);
}

void sub_21D418B10(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD000000000000033, 0x800000021DC5C390, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D40656C(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D418DA4(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD00000000000003ALL, 0x800000021DC5BE90, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D406C40(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D419038(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5BF10, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D407314(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D4192CC(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD000000000000034, 0x800000021DC5BFB0, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D4079E8(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D419560(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD000000000000035, 0x800000021DC5C170, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D4080BC(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D4197F4(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD000000000000036, 0x800000021DC5BED0, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D408790(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D419A88(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD000000000000037, 0x800000021DC5C070, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D408E64(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D419D1C(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD000000000000039, 0x800000021DC5C0F0, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D409538(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D419FB0(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD00000000000003ALL, 0x800000021DC5C1B0, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D409C0C(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D41A244(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5BFF0, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D40A2E0(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D41A4D8(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD000000000000044, 0x800000021DC5C280, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D40A9B4(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D41A76C(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD000000000000036, 0x800000021DC5BD70, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D40B088(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D41AA00(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5C1F0, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D40B75C(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D41AC94(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD000000000000037, 0x800000021DC5C350, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D40D170(1, &unk_282EBC4C0, sub_21D43DEC4, &block_descriptor_1631);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D41AF4C(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD000000000000059, 0x800000021DC5BF50, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D40BE30(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D41B1E0(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD000000000000044, 0x800000021DC5BE40, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D40C3C8(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D41B474(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD00000000000003BLL, 0x800000021DC5C2D0, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D40CA9C(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D41B708(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD000000000000040, 0x800000021DC5C230, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D40D170(1, &unk_282EBB890, sub_21D43D8AC, &block_descriptor_1373);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D41B9C0(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD000000000000036, 0x800000021DC5C130, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D40D6EC(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D41BC54(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD00000000000003CLL, 0x800000021DC5C0B0, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D40DDC0(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D41BEE8(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5C030, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D40E494(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21D41C17C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD000000000000033, 0x800000021DC5C390, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeDidChange notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43E1D8;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1764;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D41C610(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD00000000000003ALL, 0x800000021DC5BE90, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeDidChange notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D439D0C;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_261;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D41CAA4(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5BF10, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeDidChange notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43A04C;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_427;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D41CF38(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD000000000000034, 0x800000021DC5BFB0, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeDidChange notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43A3F4;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_593;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D41D3CC(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD000000000000035, 0x800000021DC5C170, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeDidChange notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43D4A4;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1174;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D41D860(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD000000000000036, 0x800000021DC5BED0, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeDidChange notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D439EAC;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_344;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D41DCF4(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD000000000000037, 0x800000021DC5C070, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeDidChange notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43CF3C;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_842;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D41E188(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD000000000000039, 0x800000021DC5C0F0, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeDidChange notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43D27C;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1008;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D41E61C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD00000000000003ALL, 0x800000021DC5C1B0, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeDidChange notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43D644;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1257;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D41EAB0(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5BFF0, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeDidChange notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43A594;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_676;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D41EF44(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD000000000000044, 0x800000021DC5C280, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeDidChange notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43DB18;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1506;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D41F3D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD000000000000036, 0x800000021DC5BD70, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeDidChange notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D436DB4;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_90_0;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D41F86C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5C1F0, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeDidChange notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43D7E4;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1340;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D41FD00(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD000000000000037, 0x800000021DC5C350, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeDidChange notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43E004;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1681;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D420194(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD000000000000059, 0x800000021DC5BF50, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeDidChange notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43A278;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_510;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D420628(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD000000000000044, 0x800000021DC5BE40, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeDidChange notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D439ADC;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_173;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D420ABC(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD00000000000003BLL, 0x800000021DC5C2D0, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeDidChange notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43DD20;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1589;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D420F50(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD000000000000040, 0x800000021DC5C230, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeDidChange notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43D98C;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1423;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D4213E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD00000000000003CLL, 0x800000021DC5C0B0, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeDidChange notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43D0DC;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_925;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D421878(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 16);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F298);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5C030, aBlock);
    _os_log_impl(&dword_21D0C9000, v15, v16, "%s: Received storeDidChange notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D43CD9C;
  *(v19 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_759;
  v20 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v22 = v21;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
}

void sub_21D421D0C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_21DBF9D8C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + 16);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8, v10);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D40D170(0, a2, a3, a4);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21D421E58(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD000000000000033, 0x800000021DC5C390, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E730;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_1753;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D4223A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD00000000000003ALL, 0x800000021DC5BE90, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E6E8;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_250;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D4228F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5BF10, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E6F0;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_416_0;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D422E48(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD000000000000034, 0x800000021DC5BFB0, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E6F8;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_582;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D423398(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD000000000000035, 0x800000021DC5C170, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E714;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_1163;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D4238E8(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD000000000000036, 0x800000021DC5BED0, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E6EC;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_333;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D423E38(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD000000000000037, 0x800000021DC5C070, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E704;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_831;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D424388(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD000000000000039, 0x800000021DC5C0F0, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E70C;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_997;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D4248D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD00000000000003ALL, 0x800000021DC5C1B0, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E718;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_1246;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D424E28(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5BFF0, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E6FC;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_665;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D425378(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD000000000000044, 0x800000021DC5C280, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E724;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_1495;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D4258C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD000000000000036, 0x800000021DC5BD70, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E6E0;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E6070;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_79;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D425E18(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5C1F0, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E71C;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_1329;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D426368(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD000000000000037, 0x800000021DC5C350, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E72C;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_1670;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D4268B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD000000000000059, 0x800000021DC5BF50, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E6F4;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_499;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D426E08(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD000000000000044, 0x800000021DC5BE40, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E6E4;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_162;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D427358(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD00000000000003BLL, 0x800000021DC5C2D0, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E728;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_1578;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D4278A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD000000000000040, 0x800000021DC5C230, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E720;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_1412;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D427DF8(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD00000000000003CLL, 0x800000021DC5C0B0, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E708;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_914;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D428348(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5C030, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E700;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_748;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D428898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a2;
  v8 = sub_21DBF9D2C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21DBF9D5C();
  v12 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = a4;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = a5;
  v15 = _Block_copy(aBlock);

  sub_21DBF9D4C();
  v20 = MEMORY[0x277D84F90];
  sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
  sub_21DBFBCBC();
  MEMORY[0x223D438F0](0, v14, v11, v15);
  _Block_release(v15);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v18);
}

void sub_21D428B28(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD000000000000033, 0x800000021DC5C390, v7);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  swift_beginAccess();
  *(a1 + 16) = 1;
}

void sub_21D428C88(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD00000000000003ALL, 0x800000021DC5BE90, v7);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  swift_beginAccess();
  *(a1 + 16) = 1;
}

void sub_21D428DE8(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5BF10, v7);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  swift_beginAccess();
  *(a1 + 16) = 1;
}

void sub_21D428F48(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD000000000000034, 0x800000021DC5BFB0, v7);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  swift_beginAccess();
  *(a1 + 16) = 1;
}

void sub_21D4290A8(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD000000000000035, 0x800000021DC5C170, v7);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  swift_beginAccess();
  *(a1 + 16) = 1;
}

void sub_21D429208(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD000000000000036, 0x800000021DC5BED0, v7);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  swift_beginAccess();
  *(a1 + 16) = 1;
}

void sub_21D429368(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD000000000000037, 0x800000021DC5C070, v7);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  swift_beginAccess();
  *(a1 + 16) = 1;
}

void sub_21D4294C8(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD000000000000039, 0x800000021DC5C0F0, v7);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  swift_beginAccess();
  *(a1 + 16) = 1;
}

void sub_21D429628(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD00000000000003ALL, 0x800000021DC5C1B0, v7);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  swift_beginAccess();
  *(a1 + 16) = 1;
}

void sub_21D429788(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5BFF0, v7);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  swift_beginAccess();
  *(a1 + 16) = 1;
}

void sub_21D4298E8(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD000000000000044, 0x800000021DC5C280, v7);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  swift_beginAccess();
  *(a1 + 16) = 1;
}

void sub_21D429A48(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD000000000000036, 0x800000021DC5BD70, v7);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  swift_beginAccess();
  *(a1 + 16) = 1;
}

void sub_21D429BA8(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5C1F0, v7);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  swift_beginAccess();
  *(a1 + 16) = 1;
}

void sub_21D429D08(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD000000000000037, 0x800000021DC5C350, v7);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  swift_beginAccess();
  *(a1 + 16) = 1;
}

void sub_21D429E68(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD000000000000059, 0x800000021DC5BF50, v7);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  swift_beginAccess();
  *(a1 + 16) = 1;
}

void sub_21D429FC8(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD000000000000044, 0x800000021DC5BE40, v7);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  swift_beginAccess();
  *(a1 + 16) = 1;
}

void sub_21D42A128(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD00000000000003BLL, 0x800000021DC5C2D0, v7);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  swift_beginAccess();
  *(a1 + 16) = 1;
}

void sub_21D42A288(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD000000000000040, 0x800000021DC5C230, v7);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  swift_beginAccess();
  *(a1 + 16) = 1;
}

void sub_21D42A3E8(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD000000000000036, 0x800000021DC5C130, v7);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  swift_beginAccess();
  *(a1 + 16) = 1;
}

void sub_21D42A548(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD00000000000003CLL, 0x800000021DC5C0B0, v7);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  swift_beginAccess();
  *(a1 + 16) = 1;
}

void sub_21D42A6A8(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5C030, v7);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  swift_beginAccess();
  *(a1 + 16) = 1;
}

uint64_t sub_21D42A808(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3F0, &unk_21DC15F20);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585D0, &unk_21DC15F10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17[-v11];
  v13 = *(*a1 + 208);
  swift_beginAccess();
  sub_21D0D3954(a1 + v13, v12, &qword_27CE585D0, &unk_21DC15F10);
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v13, &qword_27CE585D0, &unk_21DC15F10);
  swift_endAccess();
  sub_21D0D3954(v12, v9, &qword_27CE585D0, &unk_21DC15F10);
  sub_21D0D3954(a2, &v9[*(v7 + 44)], &qword_27CE585D0, &unk_21DC15F10);
  result = sub_21D0D3954(a3, &v9[*(v7 + 48)], &qword_27CE5C1C8, &unk_21DC15CD0);
  v15 = a1[11];
  if (v15)
  {
    v16 = a1[12];

    v15(v9);
    sub_21D0D0E88(v15, v16);
    sub_21D0CF7E0(v9, &qword_27CE5C3F0, &unk_21DC15F20);
    return sub_21D0CF7E0(v12, &qword_27CE585D0, &unk_21DC15F10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D42AA14(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C218, &qword_21DC15D38);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C208, &qword_21DC19560);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17[-v11];
  v13 = *(*a1 + 208);
  swift_beginAccess();
  sub_21D0D3954(a1 + v13, v12, &qword_27CE5C208, &qword_21DC19560);
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v13, &qword_27CE5C208, &qword_21DC19560);
  swift_endAccess();
  sub_21D0D3954(v12, v9, &qword_27CE5C208, &qword_21DC19560);
  sub_21D0D3954(a2, &v9[*(v7 + 44)], &qword_27CE5C208, &qword_21DC19560);
  result = sub_21D0D3954(a3, &v9[*(v7 + 48)], &qword_27CE5C1C8, &unk_21DC15CD0);
  v15 = a1[11];
  if (v15)
  {
    v16 = a1[12];

    v15(v9);
    sub_21D0D0E88(v15, v16);
    sub_21D0CF7E0(v9, &qword_27CE5C218, &qword_21DC15D38);
    return sub_21D0CF7E0(v12, &qword_27CE5C208, &qword_21DC19560);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D42AC20(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C260, &unk_21DC15D80);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C250, &unk_21DC15D70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17[-v11];
  v13 = *(*a1 + 208);
  swift_beginAccess();
  sub_21D0D3954(a1 + v13, v12, &qword_27CE5C250, &unk_21DC15D70);
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v13, &qword_27CE5C250, &unk_21DC15D70);
  swift_endAccess();
  sub_21D0D3954(v12, v9, &qword_27CE5C250, &unk_21DC15D70);
  sub_21D0D3954(a2, &v9[*(v7 + 44)], &qword_27CE5C250, &unk_21DC15D70);
  result = sub_21D0D3954(a3, &v9[*(v7 + 48)], &qword_27CE5C1C8, &unk_21DC15CD0);
  v15 = a1[11];
  if (v15)
  {
    v16 = a1[12];

    v15(v9);
    sub_21D0D0E88(v15, v16);
    sub_21D0CF7E0(v9, &qword_27CE5C260, &unk_21DC15D80);
    return sub_21D0CF7E0(v12, &qword_27CE5C250, &unk_21DC15D70);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D42AE2C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C278, &unk_21DC1A800);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C268, &qword_21DC195E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17[-v11];
  v13 = *(*a1 + 208);
  swift_beginAccess();
  sub_21D0D3954(a1 + v13, v12, &qword_27CE5C268, &qword_21DC195E0);
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v13, &qword_27CE5C268, &qword_21DC195E0);
  swift_endAccess();
  sub_21D0D3954(v12, v9, &qword_27CE5C268, &qword_21DC195E0);
  sub_21D0D3954(a2, &v9[*(v7 + 44)], &qword_27CE5C268, &qword_21DC195E0);
  result = sub_21D0D3954(a3, &v9[*(v7 + 48)], &qword_27CE5C1C8, &unk_21DC15CD0);
  v15 = a1[11];
  if (v15)
  {
    v16 = a1[12];

    v15(v9);
    sub_21D0D0E88(v15, v16);
    sub_21D0CF7E0(v9, &qword_27CE5C278, &unk_21DC1A800);
    return sub_21D0CF7E0(v12, &qword_27CE5C268, &qword_21DC195E0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D42B038(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C368, &qword_21DC15E90);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C340, &unk_21DC1A870);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17[-v11];
  v13 = *(*a1 + 208);
  swift_beginAccess();
  sub_21D0D3954(a1 + v13, v12, &qword_27CE5C340, &unk_21DC1A870);
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v13, &qword_27CE5C340, &unk_21DC1A870);
  swift_endAccess();
  sub_21D0D3954(v12, v9, &qword_27CE5C340, &unk_21DC1A870);
  sub_21D0D3954(a2, &v9[*(v7 + 44)], &qword_27CE5C340, &unk_21DC1A870);
  result = sub_21D0D3954(a3, &v9[*(v7 + 48)], &qword_27CE5C1C8, &unk_21DC15CD0);
  v15 = a1[11];
  if (v15)
  {
    v16 = a1[12];

    v15(v9);
    sub_21D0D0E88(v15, v16);
    sub_21D0CF7E0(v9, &qword_27CE5C368, &qword_21DC15E90);
    return sub_21D0CF7E0(v12, &qword_27CE5C340, &unk_21DC1A870);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D42B244(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C248, &qword_21DC15D68);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C220, &qword_21DC15D40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17[-v11];
  v13 = *(*a1 + 208);
  swift_beginAccess();
  sub_21D0D3954(a1 + v13, v12, &qword_27CE5C220, &qword_21DC15D40);
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v13, &qword_27CE5C220, &qword_21DC15D40);
  swift_endAccess();
  sub_21D0D3954(v12, v9, &qword_27CE5C220, &qword_21DC15D40);
  sub_21D0D3954(a2, &v9[*(v7 + 44)], &qword_27CE5C220, &qword_21DC15D40);
  result = sub_21D0D3954(a3, &v9[*(v7 + 48)], &qword_27CE5C1C8, &unk_21DC15CD0);
  v15 = a1[11];
  if (v15)
  {
    v16 = a1[12];

    v15(v9);
    sub_21D0D0E88(v15, v16);
    sub_21D0CF7E0(v9, &qword_27CE5C248, &qword_21DC15D68);
    return sub_21D0CF7E0(v12, &qword_27CE5C220, &qword_21DC15D40);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D42B450(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2E8, &qword_21DC15E10);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2C0, &qword_21DC19620);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17[-v11];
  v13 = *(*a1 + 208);
  swift_beginAccess();
  sub_21D0D3954(a1 + v13, v12, &qword_27CE5C2C0, &qword_21DC19620);
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v13, &qword_27CE5C2C0, &qword_21DC19620);
  swift_endAccess();
  sub_21D0D3954(v12, v9, &qword_27CE5C2C0, &qword_21DC19620);
  sub_21D0D3954(a2, &v9[*(v7 + 44)], &qword_27CE5C2C0, &qword_21DC19620);
  result = sub_21D0D3954(a3, &v9[*(v7 + 48)], &qword_27CE5C1C8, &unk_21DC15CD0);
  v15 = a1[11];
  if (v15)
  {
    v16 = a1[12];

    v15(v9);
    sub_21D0D0E88(v15, v16);
    sub_21D0CF7E0(v9, &qword_27CE5C2E8, &qword_21DC15E10);
    return sub_21D0CF7E0(v12, &qword_27CE5C2C0, &qword_21DC19620);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D42B65C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C320, &unk_21DC15E40);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C310, &unk_21DC15E30);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17[-v11];
  v13 = *(*a1 + 208);
  swift_beginAccess();
  sub_21D0D3954(a1 + v13, v12, &qword_27CE5C310, &unk_21DC15E30);
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v13, &qword_27CE5C310, &unk_21DC15E30);
  swift_endAccess();
  sub_21D0D3954(v12, v9, &qword_27CE5C310, &unk_21DC15E30);
  sub_21D0D3954(a2, &v9[*(v7 + 44)], &qword_27CE5C310, &unk_21DC15E30);
  result = sub_21D0D3954(a3, &v9[*(v7 + 48)], &qword_27CE5C1C8, &unk_21DC15CD0);
  v15 = a1[11];
  if (v15)
  {
    v16 = a1[12];

    v15(v9);
    sub_21D0D0E88(v15, v16);
    sub_21D0CF7E0(v9, &qword_27CE5C320, &unk_21DC15E40);
    return sub_21D0CF7E0(v12, &qword_27CE5C310, &unk_21DC15E30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D42B868(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C390, &qword_21DC15EB0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C370, &qword_21DC15E98);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17[-v11];
  v13 = *(*a1 + 208);
  swift_beginAccess();
  sub_21D0D3954(a1 + v13, v12, &qword_27CE5C370, &qword_21DC15E98);
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v13, &qword_27CE5C370, &qword_21DC15E98);
  swift_endAccess();
  sub_21D0D3954(v12, v9, &qword_27CE5C370, &qword_21DC15E98);
  sub_21D0D3954(a2, &v9[*(v7 + 44)], &qword_27CE5C370, &qword_21DC15E98);
  result = sub_21D0D3954(a3, &v9[*(v7 + 48)], &qword_27CE5C1C8, &unk_21DC15CD0);
  v15 = a1[11];
  if (v15)
  {
    v16 = a1[12];

    v15(v9);
    sub_21D0D0E88(v15, v16);
    sub_21D0CF7E0(v9, &qword_27CE5C390, &qword_21DC15EB0);
    return sub_21D0CF7E0(v12, &qword_27CE5C370, &qword_21DC15E98);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D42BA74(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C290, &unk_21DC15DB0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C280, &unk_21DC15DA0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17[-v11];
  v13 = *(*a1 + 208);
  swift_beginAccess();
  sub_21D0D3954(a1 + v13, v12, &qword_27CE5C280, &unk_21DC15DA0);
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v13, &qword_27CE5C280, &unk_21DC15DA0);
  swift_endAccess();
  sub_21D0D3954(v12, v9, &qword_27CE5C280, &unk_21DC15DA0);
  sub_21D0D3954(a2, &v9[*(v7 + 44)], &qword_27CE5C280, &unk_21DC15DA0);
  result = sub_21D0D3954(a3, &v9[*(v7 + 48)], &qword_27CE5C1C8, &unk_21DC15CD0);
  v15 = a1[11];
  if (v15)
  {
    v16 = a1[12];

    v15(v9);
    sub_21D0D0E88(v15, v16);
    sub_21D0CF7E0(v9, &qword_27CE5C290, &unk_21DC15DB0);
    return sub_21D0CF7E0(v12, &qword_27CE5C280, &unk_21DC15DA0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D42BC80(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3C8, &qword_21DC15EE8);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3A0, &unk_21DC15EC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17[-v11];
  v13 = *(*a1 + 208);
  swift_beginAccess();
  sub_21D0D3954(a1 + v13, v12, &qword_27CE5C3A0, &unk_21DC15EC0);
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v13, &qword_27CE5C3A0, &unk_21DC15EC0);
  swift_endAccess();
  sub_21D0D3954(v12, v9, &qword_27CE5C3A0, &unk_21DC15EC0);
  sub_21D0D3954(a2, &v9[*(v7 + 44)], &qword_27CE5C3A0, &unk_21DC15EC0);
  result = sub_21D0D3954(a3, &v9[*(v7 + 48)], &qword_27CE5C1C8, &unk_21DC15CD0);
  v15 = a1[11];
  if (v15)
  {
    v16 = a1[12];

    v15(v9);
    sub_21D0D0E88(v15, v16);
    sub_21D0CF7E0(v9, &qword_27CE5C3C8, &qword_21DC15EE8);
    return sub_21D0CF7E0(v12, &qword_27CE5C3A0, &unk_21DC15EC0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D42BE8C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1D0, &unk_21DC1A7D0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1B8, &unk_21DC15CC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17[-v11];
  v13 = *(*a1 + 208);
  swift_beginAccess();
  sub_21D0D3954(a1 + v13, v12, &qword_27CE5C1B8, &unk_21DC15CC0);
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v13, &qword_27CE5C1B8, &unk_21DC15CC0);
  swift_endAccess();
  sub_21D0D3954(v12, v9, &qword_27CE5C1B8, &unk_21DC15CC0);
  sub_21D0D3954(a2, &v9[*(v7 + 44)], &qword_27CE5C1B8, &unk_21DC15CC0);
  result = sub_21D0D3954(a3, &v9[*(v7 + 48)], &qword_27CE5C1C8, &unk_21DC15CD0);
  v15 = a1[11];
  if (v15)
  {
    v16 = a1[12];

    v15(v9);
    sub_21D0D0E88(v15, v16);
    sub_21D0CF7E0(v9, &qword_27CE5C1D0, &unk_21DC1A7D0);
    return sub_21D0CF7E0(v12, &qword_27CE5C1B8, &unk_21DC15CC0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D42C098(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C398, &qword_21DC15EB8);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C298, &qword_21DC196B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17[-v11];
  v13 = *(*a1 + 208);
  swift_beginAccess();
  sub_21D0D3954(a1 + v13, v12, &qword_27CE5C298, &qword_21DC196B0);
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v13, &qword_27CE5C298, &qword_21DC196B0);
  swift_endAccess();
  sub_21D0D3954(v12, v9, &qword_27CE5C298, &qword_21DC196B0);
  sub_21D0D3954(a2, &v9[*(v7 + 44)], &qword_27CE5C298, &qword_21DC196B0);
  result = sub_21D0D3954(a3, &v9[*(v7 + 48)], &qword_27CE5C1C8, &unk_21DC15CD0);
  v15 = a1[11];
  if (v15)
  {
    v16 = a1[12];

    v15(v9);
    sub_21D0D0E88(v15, v16);
    sub_21D0CF7E0(v9, &qword_27CE5C398, &qword_21DC15EB8);
    return sub_21D0CF7E0(v12, &qword_27CE5C298, &qword_21DC196B0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21D42C2A4(uint64_t a1, void *a2, void *a3, char a4, char a5)
{
  swift_beginAccess();
  v10 = *(a1 + 136);
  v11 = *(a1 + 144);
  v12 = *(a1 + 152);
  *(a1 + 136) = a2;
  *(a1 + 144) = a3;
  v13 = a4 & 1;
  *(a1 + 152) = v13;
  v16[0] = v10;
  v16[1] = v11;
  v17 = v12;
  v18 = a2;
  v19 = a3;
  v20 = v13;
  v21 = a5 & 1;
  v14 = *(a1 + 88);
  if (v14)
  {
    v15 = *(a1 + 96);
    sub_21D43A0E8(a2, a3, v13);
    sub_21D43A0E8(a2, a3, v13);
    sub_21D0D0E78(v14, v15);
    v14(v16);
    sub_21D0D0E88(v14, v15);
    sub_21D43A134(v10, v11, v12);
    sub_21D43A134(a2, a3, v13);
  }

  else
  {
    __break(1u);
  }
}