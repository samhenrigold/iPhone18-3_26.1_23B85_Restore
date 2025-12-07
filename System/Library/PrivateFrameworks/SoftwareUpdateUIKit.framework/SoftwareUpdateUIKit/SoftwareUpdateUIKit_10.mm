int *sub_26B0010DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  (*(*(a8 - 8) + 32))(a9, a1);
  result = type metadata accessor for EditMenu(0, a8, a10, v10);
  v12 = (a9 + result[9]);
  *v12 = a2;
  v12[1] = a3;
  v13 = (a9 + result[10]);
  *v13 = a4;
  v13[1] = a5;
  v14 = (a9 + result[11]);
  *v14 = a6;
  v14[1] = a7;
  return result;
}

uint64_t sub_26B001270(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 36));

  return v3;
}

uint64_t sub_26B0012B0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v4 = *v2;
  sub_26AEB0BF0(*v2, v2[1]);
  return v4;
}

uint64_t sub_26B0012F0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v4 = *v2;
  sub_26AEB0BF0(*v2, v2[1]);
  return v4;
}

uint64_t sub_26B001330(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  v19 = a1;
  v9 = *(a2 + 16);
  v18 = v9;
  v17 = v2;
  swift_getWitnessTable();
  sub_26B0790D0();
  sub_26B0790C0();
  v11 = sub_26B001990();
  MEMORY[0x277D82BD8](v16[4]);
  if (v11)
  {
    sub_26B0790C0();
    v8 = *(v12 + *((*v12 & *MEMORY[0x277D85000]) + 0x68));
    MEMORY[0x277D82BE0](v8);
    (MEMORY[0x277D82BD8])();
    MEMORY[0x277D82BE0](v11);
    [v8 addInteraction_];
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v11);
  }

  sub_26B001A48();
  v16[3] = type metadata accessor for EditMenu.Coordinator(0, v9, *(a2 + 24), v3);
  sub_26B0790C0();
  v15 = sub_26B00162C(v16, sel_handleLongPress_);
  sub_26B0790C0();
  v6 = MEMORY[0x277D85000];
  v5 = *(v14 + *((*v14 & *MEMORY[0x277D85000]) + 0x68));
  MEMORY[0x277D82BE0](v5);
  [v5 addGestureRecognizer_];
  MEMORY[0x277D82BD8](v5);
  sub_26B0790C0();
  v7 = *(v13 + *((*v13 & *v6) + 0x68));
  MEMORY[0x277D82BE0](v7);
  (MEMORY[0x277D82BD8])();
  MEMORY[0x277D82BD8](v15);
  return v7;
}

void *sub_26B0016A0(int *a1)
{
  v9 = a1;
  v16 = 0;
  v14 = 0;
  v7 = (*(*(a1 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v11 = &v7 - v7;
  v16 = v1;
  v8 = *(v2 + 16);
  v15 = v8;
  v3 = *(v2 + 24);
  v12 = 0;
  type metadata accessor for EditMenu.Coordinator(0, v8, v3, v4);
  sub_26B001AD8(v10, v11, v8, v9);
  v13 = sub_26B00179C(v11);
  v14 = v13;
  sub_26B001C78();
  MEMORY[0x277D82BE0](v13);
  v5 = sub_26B0017D8(v13);
  sub_26B001CDC(v5);
  return v13;
}

uint64_t sub_26B001818@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v7 = *((*v2 & *MEMORY[0x277D85000]) + 0x50);
  v5 = *((*v2 & *MEMORY[0x277D85000]) + 0x60);
  v3 = type metadata accessor for EditMenu(0, v7, *((*v2 & *MEMORY[0x277D85000]) + 0x58), a1);
  return sub_26B001AD8(v2 + v5, a2, v7, v3);
}

uint64_t sub_26B001904()
{
  v2 = *(v0 + *((*v0 & *MEMORY[0x277D85000]) + 0x68));
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_26B001990()
{
  v2 = (v0 + *((*v0 & *MEMORY[0x277D85000]) + 0x70));
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

unint64_t sub_26B001A48()
{
  v2 = qword_2803DE6B0;
  if (!qword_2803DE6B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DE6B0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_26B001AD8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  (*(*(a3 - 8) + 16))();
  v15 = a4[9];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);

  v4 = (a2 + v15);
  *v4 = v16;
  v4[1] = v17;
  v19 = a4[10];
  if (*(a1 + v19))
  {
    v11 = *(a1 + v19);
    v12 = *(a1 + v19 + 8);

    v5 = (a2 + v19);
    *v5 = v11;
    v5[1] = v12;
  }

  else
  {
    *(a2 + v19) = *(a1 + v19);
  }

  v9 = (a2 + a4[11]);
  v10 = (a1 + a4[11]);
  if (*v10)
  {
    v7 = *v10;
    v8 = v10[1];

    *v9 = v7;
    v9[1] = v8;
  }

  else
  {
    *v9 = *v10;
  }

  return a2;
}

unint64_t sub_26B001C78()
{
  v2 = qword_2803DE6B8;
  if (!qword_2803DE6B8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DE6B8);
    return ObjCClassMetadata;
  }

  return v2;
}

double sub_26B001CDC(uint64_t a1)
{
  v4 = MEMORY[0x277D85000];
  MEMORY[0x277D82BE0](a1);
  v5 = (v1 + *((*v1 & *v4) + 0x70));
  swift_beginAccess();
  v2 = *v5;
  *v5 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_26B001EB8()
{
  v2 = v0 + *((*v0 & *MEMORY[0x277D85000]) + 0x78);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_26B001F68(char a1)
{
  v3 = v1 + *((*v1 & *MEMORY[0x277D85000]) + 0x78);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

void *sub_26B002118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a1;
  v35 = 0;
  v34 = 0;
  v5 = *v4;
  v23 = MEMORY[0x277D85000];
  v19 = v5 & *MEMORY[0x277D85000];
  v29 = *(v19 + 80);
  v36 = v29;
  v26 = *(v19 + 88);
  v27 = 0;
  v30 = type metadata accessor for EditMenu(0, v29, v26, a4);
  v20 = (*(*(v30 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v25 = &v18 - v20;
  v34 = v6;
  v35 = v4;
  v22 = v4;
  v21 = *((*v4 & *v23) + 0x68);
  sub_26B00237C();
  v7 = sub_26B0018D4();
  v8 = v23;
  v9 = v25;
  v10 = v27;
  v11 = v29;
  v12 = v30;
  v13 = v7;
  v14 = v31;
  *(v22 + v21) = v13;
  *(v35 + *((*v35 & *v8) + 0x70)) = v10;
  *(v35 + *((*v35 & *v8) + 0x78)) = 0;
  v24 = v35;
  sub_26B001AD8(v14, v9, v11, v12);
  sub_26B0023E0(v25, v24 + *((*v24 & *v23) + 0x60), v29, v30);
  v28 = v35;
  v16 = type metadata accessor for EditMenu.Coordinator(v27, v29, v26, v15);
  v33.receiver = v28;
  v33.super_class = v16;
  v32 = objc_msgSendSuper2(&v33, sel_init);
  MEMORY[0x277D82BE0](v32);
  v35 = v32;
  sub_26B002494(v31, v29, v30);
  MEMORY[0x277D82BD8](v35);
  return v32;
}

unint64_t sub_26B00237C()
{
  v2 = qword_2803DE6C0;
  if (!qword_2803DE6C0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DE6C0);
    return ObjCClassMetadata;
  }

  return v2;
}

__n128 sub_26B0023E0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  (*(*(a3 - 8) + 32))();
  v4 = (a1 + a4[9]);
  v5 = *v4;
  v6 = v4[1];
  v7 = (a2 + a4[9]);
  *v7 = v5;
  v7[1] = v6;
  *(a2 + a4[10]) = *(a1 + a4[10]);
  result = *(a1 + a4[11]);
  *(a2 + a4[11]) = result;
  return result;
}

uint64_t sub_26B002494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a2 - 8) + 8))();

  if (*(a1 + *(a3 + 40)))
  {
  }

  if (*(a1 + *(a3 + 44)))
  {
  }

  return a1;
}

double sub_26B002568(void *a1)
{
  v46 = a1;
  v70 = 0;
  v69 = 0;
  v57 = 0.0;
  v58 = 0.0;
  v54 = 0;
  v2 = *v1 & *MEMORY[0x277D85000];
  v45 = v1;
  v51 = v2;
  v47 = sub_26B0782E0();
  v48 = *(v47 - 8);
  v49 = v47 - 8;
  v50 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46);
  v52 = &v17 - v50;
  v70 = v3;
  v69 = v1;
  v68[1] = *(v51 + 80);
  if ((sub_26B001EB8() & 1) == 0)
  {
    MEMORY[0x277D82BE0](v46);
    v40 = [v46 state];
    MEMORY[0x277D82BD8](v46);
    v43 = v68;
    v68[0] = v40;
    v41 = &v67;
    v67 = 1;
    v42 = type metadata accessor for State(0);
    sub_26B002AE0();
    if (sub_26B07A790())
    {
      v5 = *v44;
      v27 = MEMORY[0x277D85000];
      v22 = *(v44 + *((v5 & *MEMORY[0x277D85000]) + 0x68));
      MEMORY[0x277D82BE0](v22);
      v28 = 0x1FAA53000uLL;
      [v22 0x1FAA53EF8];
      v63 = v6;
      v64 = v7;
      v65 = v8;
      v66 = v9;
      v23 = v6;
      v24 = v7;
      v25 = v8;
      v26 = v9;
      MEMORY[0x277D82BD8](v22);
      v36 = sub_26B002B60(v23, v24, v25, v26);
      v29 = *(v44 + *((*v44 & *v27) + 0x68));
      MEMORY[0x277D82BE0](v29);
      [v29 (v28 + 3832)];
      v59 = v10;
      v60 = v11;
      v61 = v12;
      v62 = v13;
      v30 = v10;
      v31 = v11;
      v32 = v12;
      v33 = v13;
      MEMORY[0x277D82BD8](v29);
      v37 = sub_26B002BA0(v30, v31, v32, v33);
      v57 = v36;
      v58 = v37;
      v34 = sub_26B002BE0();
      sub_26B0782D0();
      v14 = sub_26B0782B0();
      v38 = v55;
      v55[0] = v14;
      v55[1] = v15;
      (*(v48 + 8))(v52, v47);
      v35 = &v56;
      sub_26B07A6A0();
      v39 = sub_26B07A340();
      sub_26AE9BCC0(v38);
      v54 = v39;
      v53 = sub_26B001990();
      if (v53)
      {
        v20 = &v53;
        v21 = v53;
        MEMORY[0x277D82BE0](v53);
        v16 = sub_26B002C44(v20);
        [v21 presentEditMenuWithConfiguration_];
        MEMORY[0x277D82BD8](v21);
      }

      else
      {
        sub_26B002C44(&v53);
      }

      v18 = 0;
      sub_26B002C78();
      v19 = sub_26B002CDC(v18);
      [v19 impactOccurred];
      MEMORY[0x277D82BD8](v19);
      *&result = MEMORY[0x277D82BD8](v39).n128_u64[0];
    }
  }

  return result;
}

unint64_t sub_26B002AE0()
{
  v2 = qword_2803DE6C8;
  if (!qword_2803DE6C8)
  {
    type metadata accessor for State(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE6C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B002BE0()
{
  v2 = qword_2803DE6D0;
  if (!qword_2803DE6D0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DE6D0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_26B002C78()
{
  v2 = qword_2803DE6D8;
  if (!qword_2803DE6D8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DE6D8);
    return ObjCClassMetadata;
  }

  return v2;
}

double sub_26B002D1C(uint64_t a1, uint64_t a2, void *a3)
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a1);
  sub_26B002568(a3);
  MEMORY[0x277D82BD8](a1);
  *&result = MEMORY[0x277D82BD8](a3).n128_u64[0];
  return result;
}

uint64_t sub_26B002D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a1;
  v15[3] = a2;
  v15[2] = a3;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v5 = *v4;
  v17 = MEMORY[0x277D85000];
  v15[0] = v5 & *MEMORY[0x277D85000];
  v19 = *(v15[0] + 80);
  v43 = v19;
  v6 = *(v15[0] + 88);
  v32 = 0;
  v20 = type metadata accessor for EditMenu(0, v19, v6, a4);
  v16 = (*(*(v20 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v18 = v15 - v16;
  v42 = v7;
  v41 = v8;
  v40 = v9;
  v39 = v4;
  v26 = sub_26B003090();
  sub_26B001AD8(v4 + *((*v4 & *v17) + 0x60), v18, v19, v20);
  v10 = v18 + v20[9];
  v21 = *v10;
  v28 = *(v10 + 8);

  v11 = sub_26B002494(v18, v19, v20);
  v27 = v21(v11);
  v22 = sub_26B0030F4();
  v29 = sub_26B003158();
  v23 = sub_26B07A610();
  v25 = sub_26B0031BC();
  v24 = v12;
  sub_26B0031E8();
  v36 = sub_26B07A380();

  v38 = v36;
  v35 = [v36 children];
  v30 = sub_26B07A060();
  v34 = sub_26B0031BC();
  v31 = v13;
  v33 = sub_26B00323C();
  sub_26B0031E8();
  v37 = sub_26B07A380();
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v36);
  return v37;
}

unint64_t sub_26B003090()
{
  v2 = qword_2803DE6E0;
  if (!qword_2803DE6E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DE6E0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_26B0030F4()
{
  v2 = qword_2803DE6E8;
  if (!qword_2803DE6E8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DE6E8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_26B003158()
{
  v2 = qword_2803DE6F0[0];
  if (!qword_2803DE6F0[0])
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, qword_2803DE6F0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_26B0031E8()
{
  if (sub_26B004650(17, 0, 0))
  {
    return -1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_26B00323C()
{
  sub_26B004688(0);

  return 0;
}

id sub_26B00326C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](a5);
  MEMORY[0x277D82BE0](a1);
  sub_26B003158();
  v8 = sub_26B07A060();
  v13 = sub_26B002D94(a3, a4, v8, v6);

  MEMORY[0x277D82BD8](a5);
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](a3);

  return v13;
}

uint64_t sub_26B003370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a1;
  v18 = a2;
  v16 = a3;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v5 = *v4;
  v19 = MEMORY[0x277D85000];
  v15 = v5 & *MEMORY[0x277D85000];
  v22 = *(v15 + 80);
  v29 = v22;
  v23 = type metadata accessor for EditMenu(0, v22, *(v15 + 88), a4);
  MEMORY[0x28223BE20](v17);
  v21 = v14 - v6;
  v28 = v7;
  v27 = v18;
  v26 = v8;
  v25 = v4;
  sub_26B001AD8(v4 + *((*v4 & *v19) + 0x60), v14 - v6, v9, v10);
  v11 = v21 + *(v23 + 40);
  v24 = *v11;
  v20 = *(v11 + 8);
  sub_26AEB0BF0(v24, v20);
  v12 = sub_26B002494(v21, v22, v23);
  if (v24)
  {
    v14[2] = v24;
    v14[3] = v20;
    v14[1] = v20;
    v24(v12);
  }

  return sub_26B001F68(1);
}

double sub_26B003534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](a1);
  sub_26B003370(a3, a4, a5, v6);
  MEMORY[0x277D82BD8](a1);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a4);
  *&result = MEMORY[0x277D82BD8](a3).n128_u64[0];
  return result;
}

uint64_t sub_26B0035EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a1;
  v18 = a2;
  v16 = a3;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v5 = *v4;
  v19 = MEMORY[0x277D85000];
  v15 = v5 & *MEMORY[0x277D85000];
  v22 = *(v15 + 80);
  v29 = v22;
  v23 = type metadata accessor for EditMenu(0, v22, *(v15 + 88), a4);
  MEMORY[0x28223BE20](v17);
  v21 = v14 - v6;
  v28 = v7;
  v27 = v18;
  v26 = v8;
  v25 = v4;
  sub_26B001AD8(v4 + *((*v4 & *v19) + 0x60), v14 - v6, v9, v10);
  v11 = v21 + *(v23 + 44);
  v24 = *v11;
  v20 = *(v11 + 8);
  sub_26AEB0BF0(v24, v20);
  v12 = sub_26B002494(v21, v22, v23);
  if (v24)
  {
    v14[2] = v24;
    v14[3] = v20;
    v14[1] = v20;
    v24(v12);
  }

  return sub_26B001F68(0);
}

double sub_26B0037B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](a1);
  sub_26B0035EC(a3, a4, a5, v6);
  MEMORY[0x277D82BD8](a1);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a4);
  *&result = MEMORY[0x277D82BD8](a3).n128_u64[0];
  return result;
}

id sub_26B003928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = 0;
  v7 = *v4 & *MEMORY[0x277D85000];
  v10 = v4;
  v9 = *(v7 + 80);
  v5 = type metadata accessor for EditMenu.Coordinator(0, v9, *(v7 + 88), a4);
  v8.receiver = v4;
  v8.super_class = v5;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

double sub_26B0039BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x277D85000];
  v9 = *((*a1 & *MEMORY[0x277D85000]) + 0x50);
  v6 = *((*a1 & *MEMORY[0x277D85000]) + 0x60);
  v4 = type metadata accessor for EditMenu(0, v9, *((*a1 & *MEMORY[0x277D85000]) + 0x58), a4);
  sub_26B002494(a1 + v6, v9, v4);
  MEMORY[0x277D82BD8](*(a1 + *((*a1 & *v7) + 0x68)));
  return sub_26B002C44((a1 + *((*a1 & *v7) + 0x70)));
}

void *sub_26B003B44@<X0>(int *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26B0016A0(a1);
  *a2 = result;
  return result;
}

void sub_26B003D3C(uint64_t a1)
{
  swift_getWitnessTable();
  sub_26B078F00();
  __break(1u);
}

unint64_t sub_26B003DAC(uint64_t a1)
{
  v5 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    v5 = sub_26AE96D98();
    if (v2 <= 0x3F)
    {
      v5 = sub_26B004120(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v5;
}

uint64_t sub_26B003EF0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  if (a2 == *(*(v6 - 8) + 84))
  {
    return (*(*(v6 - 8) + 48))(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 36)) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 36));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_26B004030(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (a3 == *(*(v4 - 8) + 84))
  {
    return (*(*(v4 - 8) + 56))(result, a2, a2, v4);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(result + *(a4 + 36)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_26B004120(uint64_t a1)
{
  v5 = qword_2803DE780;
  if (!qword_2803DE780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE788, "@6");
    v4 = sub_26B07A430();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_2803DE780);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_26B0041EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  inited = type metadata accessor for EditMenu(319, *(a1 + 80), *(a1 + 88), a4);
  if (v4 <= 0x3F)
  {
    inited = swift_initClassMetadata2();
    if (!inited)
    {
      return 0;
    }
  }

  return inited;
}

uint64_t sub_26B0042F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EditMenu(255, *a1, a1[1], a4);
  sub_26B078BF0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26B078C40();
  sub_26B078BF0();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

id sub_26B004458(void *a1, uint64_t a2)
{
  v15 = a2;
  v16 = a1;
  if (a1[3])
  {
    v9 = v16[3];
    __swift_project_boxed_opaque_existential_0(v16, v9);
    v7 = *(v9 - 8);
    v8 = v7;
    v11 = &v5;
    v2 = MEMORY[0x28223BE20](&v5);
    v10 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v2);
    v12 = sub_26B07A770();
    (*(v8 + 8))(v10, v9);
    __swift_destroy_boxed_opaque_existential_0(v16);
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v6 = [v14 initWithTarget:v13 action:?];
  swift_unknownObjectRelease();
  return v6;
}

id sub_26B0045BC(uint64_t a1)
{
  v3 = [v1 initWithDelegate_];
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_26B004688(uint64_t result)
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
      return MEMORY[0x277D84F90];
    }

    _s3__C7OptionsVMa_0(0);
    v1 = sub_26B07A080();
    sub_26B078640();
    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t sub_26B004734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a2 - 8) + 8))();

  if (*(a1 + *(a3 + 40)))
  {
  }

  if (*(a1 + *(a3 + 44)))
  {
  }

  return a1;
}

uint64_t sub_26B004808(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  (*(*(a3 - 8) + 16))();
  v17 = a4[9];
  v18 = *(a1 + v17);
  v19 = *(a1 + v17 + 8);

  v5 = (a2 + v17);
  *v5 = v18;
  v5[1] = v19;
  v21 = a4[10];
  if (*(a1 + v21))
  {
    v12 = *(a1 + v21);
    v13 = *(a1 + v21 + 8);

    v6 = (a2 + v21);
    *v6 = v12;
    v6[1] = v13;
  }

  else
  {
    *(a2 + v21) = *(a1 + v21);
  }

  v10 = (a2 + a4[11]);
  v11 = (a1 + a4[11]);
  if (*v11)
  {
    v8 = *v11;
    v9 = v11[1];

    *v10 = v8;
    v10[1] = v9;
  }

  else
  {
    *v10 = *v11;
  }

  memcpy((a2 + *(a5 + 36)), (a1 + *(a5 + 36)), 0x70uLL);
  return a2;
}

uint64_t ReactiveBetaProgram.subscript.getter(void *a1)
{
  v3 = *(v1 + 16);
  MEMORY[0x277D82BE0](v3);

  swift_getAtKeyPath();
  MEMORY[0x277D82BD8](v3);
}

BOOL static ReactiveBetaProgram.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  MEMORY[0x277D82BE0](v3);
  v7 = [v3 0x1FCA74496];
  MEMORY[0x277D82BD8](v3);
  v5 = *(a2 + 16);
  MEMORY[0x277D82BE0](v5);
  v6 = [v5 0x1FCA74496];
  MEMORY[0x277D82BD8](v5);
  return v7 == v6;
}

uint64_t ReactiveBetaProgram.betaProgram.getter()
{
  v2 = *(v0 + 16);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t ReactiveBetaProgram.init(representing:)(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  *(v1 + 16) = a1;
  MEMORY[0x277D82BD8](a1);
  return v4;
}

uint64_t sub_26B004CD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B0788C0();
  *a1 = result;
  return result;
}

uint64_t ReactiveBetaProgram.id.getter()
{
  v2 = *(v0 + 16);
  MEMORY[0x277D82BE0](v2);
  [v2 programID];
  MEMORY[0x277D82BD8](v2);
  return sub_26B079E70();
}

uint64_t sub_26B004DA8@<X0>(uint64_t *a1@<X8>)
{
  result = ReactiveBetaProgram.id.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

Swift::String_optional __swiftcall String.majorVersion()()
{
  v48 = v0;
  v49 = v1;
  v81 = 0;
  v82 = 0;
  v71 = 0u;
  v72 = 0u;
  v61 = 0;
  v62 = 0;
  v43 = sub_26B077F60();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49);
  v47 = &v17 - v46;
  v81 = v2;
  v82 = v3;
  sub_26B078640();
  v78[2] = v48;
  v78[3] = v49;
  v4 = sub_26B079D00("(", 1, 1);
  v54 = v78;
  v78[0] = v4;
  v78[1] = v5;
  v52 = sub_26AF01BE8();
  v51 = MEMORY[0x277D837D0];
  v53 = MEMORY[0x277D835C8];
  v50 = sub_26AF01878();
  sub_26AF0188C();
  v57 = sub_26B07A260();
  sub_26AF01C60(v54);
  v77 = v57;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC830, &qword_26B08A590);
  v56 = sub_26B0053A8();
  sub_26B07A240();
  v58 = v75;
  v59 = v76;

  v73 = v58;
  v74 = v59;
  if (*(&v59 + 1))
  {
    v79 = v73;
    v80 = v74;
  }

  else
  {
    v6 = sub_26B079D00("", 0, 1);
    *&v79 = MEMORY[0x26D66D620](v6);
    *(&v79 + 1) = v7;
    *&v80 = v8;
    *(&v80 + 1) = v9;
    if (*(&v74 + 1))
    {
      sub_26B005430(&v73);
    }
  }

  v28 = *(&v80 + 1);
  v71 = v79;
  v72 = v80;
  v69 = v79;
  v70 = v80;
  sub_26B077F40();
  v29 = sub_26AF01DC8();
  v32 = sub_26B07A470();
  v33 = v10;
  v30 = *(v44 + 8);
  v31 = v44 + 8;
  v30(v47, v43);
  v68[2] = v32;
  v68[3] = v33;
  v11 = sub_26B079D00(".", 1, 1);
  v37 = v68;
  v68[0] = v11;
  v68[1] = v12;
  v35 = MEMORY[0x277D837D0];
  v36 = MEMORY[0x277D835C8];
  v34 = sub_26AF01878();
  sub_26AF0188C();
  v38 = sub_26B07A260();
  sub_26AF01C60(v37);
  v67 = v38;
  sub_26B07A240();
  v39 = v63;
  v40 = v64;
  v41 = v65;
  v42 = v66;

  if (v42)
  {
    v24 = v39;
    v25 = v40;
    v26 = v41;
    v27 = v42;
    v19 = v60;
    v60[0] = v39;
    v60[1] = v40;
    v60[2] = v41;
    v60[3] = v42;
    sub_26B077F40();
    v20 = sub_26B07A470();
    v21 = v13;
    v30(v47, v43);
    sub_26B00545C(v19);
    v22 = v20;
    v23 = v21;
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v18 = v23;
  v17 = v22;
  v61 = v22;
  v62 = v23;

  v14 = v17;
  v15 = v18;
  result.value._object = v15;
  result.value._countAndFlagsBits = v14;
  return result;
}

unint64_t sub_26B0053A8()
{
  v2 = qword_2803DE870[0];
  if (!qword_2803DE870[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC830, &qword_26B08A590);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_2803DE870);
    return WitnessTable;
  }

  return v2;
}

void ProactiveSuggestionView.Icon.init(systemName:fill:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v18 = a4;
  v17 = a5;
  v16 = a6;
  v15 = a7;
  sub_26B078640();
  v12 = a1;
  v13 = a2;

  v14 = a3;
  sub_26B005568(&v12, a8);

  sub_26B0055C8(&v12);
}

void *sub_26B005568(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];
  sub_26B078640();
  a2[1] = v4;
  v6 = a1[2];

  result = a2;
  a2[2] = v6;
  return result;
}

uint64_t ProactiveSuggestionView<>.init(title:description:icon:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v29 = a1;
  v30 = a2;
  v27 = a3;
  v28 = a4;
  v17 = *a5;
  v15 = a5[1];
  v16 = a5[2];
  v24 = v17;
  v25 = v15;
  v26 = v16;
  v23 = a6;
  sub_26B00E524(v17, v15);
  v19 = v17;
  v20 = v15;
  v21 = v16;
  ProactiveSuggestionView<>.init(title:description:icon:actions:)(a1, a2, a3, a4, sub_26B00E564, v18, a6, MEMORY[0x277CE11C8], v22, MEMORY[0x277CE11C0]);
  sub_26B00E574(v17, v15);
  memcpy(__dst, v22, sizeof(__dst));
  memcpy(__b, __dst, sizeof(__b));
  sub_26AFB7D84(__b, a7);
  sub_26B00E574(v17, v15);
  return sub_26AFB7CDC(__b);
}

uint64_t ProactiveSuggestionView.Action.init(label:role:action:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v52 = a9;
  v47 = a1;
  v54 = a3;
  v48 = a4;
  v53 = a5;
  v35 = a6;
  v36 = a7;
  v37 = a8;
  v38 = a10;
  v55 = a11;
  v39 = a12;
  v41 = a13;
  v42 = a14;
  v43 = a15;
  v40 = a16;
  v63 = 0;
  v61 = 0;
  v62 = 0;
  v60 = 0;
  v58 = 0;
  v59 = 0;
  v64[14] = a6;
  v64[13] = a7;
  v64[12] = a8;
  v64[11] = a10;
  v64[10] = a11;
  v49 = *(a11 - 8);
  v50 = a11 - 8;
  v34 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v51 = &v33 - v34;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758, &unk_26B08F810);
  v44 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v46 = &v33 - v44;
  v64[0] = v18;
  v64[1] = v19;
  v64[2] = v20;
  v64[3] = v21;
  v64[4] = v22;
  v64[5] = v23;
  v64[6] = v41;
  v64[7] = v42;
  v64[8] = v43;
  v64[9] = v24;
  v56 = type metadata accessor for ProactiveSuggestionView.Action(0, v64);
  v45 = (*(*(v56 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v47);
  v57 = &v33 - v45;
  v63 = &v33 - v45;
  v61 = v25;
  v62 = a2;
  v60 = v26;
  v58 = v27;
  v59 = v28;
  sub_26B0782D0();
  sub_26B00E5E0(v54, v46);
  sub_26B00E708(v46, (v57 + v56[25]));

  v29 = v47;
  v30 = v53;
  v31 = (v57 + v56[26]);
  *v31 = v48;
  v31[1] = v30;
  v29();
  (*(v49 + 32))(v57 + v56[27], v51, v55);
  sub_26B00E830(v57, v52, v55, v56);

  sub_26B00EA70(v54);
  return sub_26B00EB18(v57, v55, v56);
}

void *sub_26B005B2C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v2 = sub_26B07A430();
  return sub_26B00EC78(v6, a2, v4, v2);
}

void *sub_26B005B98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 84);
  v3 = sub_26B07A430();
  return sub_26B00ED88((v2 + v5), a2, v6, v3);
}

void *sub_26B005C0C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *(a1 + 24);
  v5 = *(a1 + 88);
  v3 = sub_26B07A430();
  return sub_26B00EE98((v2 + v5), a2, v6, v3);
}

void *sub_26B005C80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *(a1 + 40);
  v5 = *(a1 + 92);
  v3 = sub_26B07A430();
  return sub_26B00EFA8((v2 + v5), a2, v6, v3);
}

char *ProactiveSuggestionView.init(title:description:icon:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v61 = a9;
  v46 = a1;
  v53 = a3;
  v51 = a4;
  v50 = a5;
  v48 = a6;
  v56 = a7;
  v54 = a8;
  v62 = a10;
  v66 = a11;
  v64 = a12;
  v58 = a13;
  v42 = a14;
  v43 = a15;
  v44 = a16;
  v40 = a17;
  v77 = 0;
  v75 = 0;
  v76 = 0;
  v73 = 0;
  v74 = 0;
  v71 = 0;
  v72 = 0;
  v69 = 0;
  v70 = 0;
  v78[11] = a10;
  v78[10] = a11;
  v78[9] = a12;
  v78[8] = a13;
  v41 = 0;
  v59 = sub_26B07A430();
  v37 = (*(*(v59 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v57 = &v36 - v37;
  v65 = sub_26B07A430();
  v38 = (*(*(v65 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41);
  v55 = &v36 - v38;
  v67 = sub_26B07A430();
  v39 = (*(*(v67 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41);
  v52 = &v36 - v39;
  v63 = sub_26B07A430();
  v45 = (*(*(v63 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41);
  v49 = &v36 - v45;
  v78[0] = v18;
  v78[1] = v19;
  v78[2] = v20;
  v78[3] = v21;
  v78[4] = v42;
  v78[5] = v43;
  v78[6] = v44;
  v78[7] = v22;
  v60 = type metadata accessor for ProactiveSuggestionView(v23, v78);
  v47 = (*(*(v60 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = MEMORY[0x28223BE20](v46);
  v68 = &v36 - v47;
  v77 = &v36 - v47;
  v75 = v25;
  v76 = a2;
  v73 = v26;
  v74 = v27;
  v71 = v28;
  v72 = v29;
  v69 = v30;
  v70 = v31;
  v25(v24);
  v32 = sub_26B00F0E4(v49, v68, v62, v63);
  v50(v32);
  v33 = sub_26B00F1F4(v52, &v68[v60[22]], v66, v67);
  v53(v33);
  v34 = sub_26B00F304(v55, &v68[v60[21]], v64, v65);
  v56(v34);
  sub_26B00F414(v57, &v68[v60[23]], v58, v59);
  return sub_26B00F524(v68, v61, v62, v63, v64, v65, v66, v67, v58, v59, v60);
}

uint64_t ProactiveSuggestionView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v22 = a1;
  v16[4] = 0;
  v16[6] = MEMORY[0x277CE14C0];
  v17 = MEMORY[0x277CE1198];
  v57 = MEMORY[0x277CDE668];
  v24 = sub_26B00F970;
  v81 = 0;
  v80 = 0;
  v32 = 0;
  v54 = sub_26B078FC0();
  v27 = *(v54 - 8);
  v28 = v54 - 8;
  v16[0] = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v29 = v16 - v16[0];
  v47 = *(v2 + 16);
  v89 = v47;
  v16[5] = 255;
  v16[2] = sub_26B079100();
  v41 = sub_26B078BF0();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE650, &qword_26B08AF68);
  v42 = sub_26B078BF0();
  v43 = v22[3];
  v88 = v43;
  v44 = sub_26B078BF0();
  v16[1] = MEMORY[0x277CE1180];
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v46 = sub_26B079BB0();
  swift_getWitnessTable();
  v50 = sub_26B079950();
  v33 = sub_26B078F50();
  v48 = sub_26B078BF0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v4 = sub_26B079BB0();
  swift_getWitnessTable();
  v5 = sub_26B079950();
  v6 = sub_26B078F50();
  v7 = sub_26B07A430();
  v87 = v22[4];
  v8 = v87;
  v26 = sub_26B078BF0();
  v9 = sub_26B078BF0();
  v34 = sub_26B07A430();
  sub_26B079A30();
  v35 = v22[5];
  v86 = v35;
  v36 = swift_getTupleTypeMetadata2();
  v37 = sub_26B079BB0();
  v38 = sub_26B07A430();
  v39 = swift_getTupleTypeMetadata3();
  v40 = sub_26B079BB0();
  WitnessTable = swift_getWitnessTable();
  v53 = sub_26B079990();
  v18 = (*(*(v53 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v52 = v16 - v18;
  v55 = swift_getWitnessTable();
  v56 = sub_26AEF909C();
  v82 = v53;
  v83 = v54;
  v84 = v55;
  v85 = v56;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v58 = *(OpaqueTypeMetadata2 - 8);
  v59 = OpaqueTypeMetadata2 - 8;
  v20 = *(v58 + 64);
  v19 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v62 = v16 - v19;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16 - v19);
  v63 = v16 - v21;
  v81 = v16 - v21;
  v80 = v10;
  sub_26B078E60();
  v67 = v47;
  v68 = v43;
  v69 = v8;
  v70 = v35;
  v71 = v22[6];
  v72 = v22[7];
  v73 = v22[8];
  v74 = v22[9];
  v75 = v23;
  sub_26B079980();
  sub_26B078FB0();
  sub_26B079400();
  v11 = v26;
  (*(v27 + 8))(v29, v54);
  v31 = MEMORY[0x277CDF740];
  v30 = MEMORY[0x277CDF738];
  v49 = sub_26B078B10();
  v51 = sub_26B078F30();
  v12 = sub_26B078B10();
  v13 = sub_26B078F30();
  v14 = sub_26B078B10();
  sub_26B00F9CC(v52, v47, v41, v42, v43, v44, TupleTypeMetadata3, v46, v49, v50, v51, v33, v48, TupleTypeMetadata2, v4, v12, v5, v13, v6, v7, v8, v11, v9, v34, v35, v36, v37, v38, v39, v40, v14);
  v76 = v53;
  v77 = v54;
  v78 = v55;
  v79 = v56;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26AE9463C(v62, OpaqueTypeMetadata2, v63);
  v66 = *(v58 + 8);
  v65 = v58 + 8;
  v66(v62, OpaqueTypeMetadata2);
  (*(v58 + 16))(v62, v63, OpaqueTypeMetadata2);
  sub_26AE94B4C(v62, OpaqueTypeMetadata2, v60);
  v66(v62, OpaqueTypeMetadata2);
  return (v66)(v63, OpaqueTypeMetadata2);
}

uint64_t sub_26B006D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v196 = a8;
  v197 = a7;
  v198 = a6;
  v216 = a5;
  v246 = a4;
  v307 = a3;
  v340 = a2;
  v332 = a1;
  v199 = a9;
  v200 = a10;
  v328 = 0;
  v394 = 0;
  v393 = 0;
  v392 = 0;
  v391 = 0;
  v390 = 0;
  v389 = 0;
  v388 = 0;
  v387 = 0;
  v386 = 0;
  v385 = 0;
  v384 = 0;
  v383 = 0;
  v382 = 0;
  v381 = 0;
  v380 = 0;
  v379 = 0;
  v378 = 0;
  v364 = 0;
  v363 = 0;
  v356 = 0;
  v355 = 0;
  v346 = 0;
  v398 = a2;
  v397 = a3;
  v396 = a4;
  v395 = a5;
  v320 = 255;
  v204 = sub_26B079A30();
  v201 = v204;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v203 = TupleTypeMetadata2;
  v217 = sub_26B079BB0();
  v205 = v217;
  v206 = *(v217 - 8);
  v207 = v206;
  v208 = (*(v206 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v209 = v113 - v208;
  v394 = v113 - v208;
  v210 = *(v10 - 8);
  v211 = v210;
  v212 = *(v210 + 64);
  MEMORY[0x28223BE20](v11);
  v214 = (v212 + 15) & 0xFFFFFFFFFFFFFFF0;
  v213 = v113 - v214;
  MEMORY[0x28223BE20](v12);
  v215 = v113 - v214;
  v393 = v113 - v214;
  v218 = sub_26B07A430();
  v219 = (*(*(v218 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v328);
  v220 = v113 - v219;
  v221 = *(v13 - 8);
  v222 = v221;
  v224 = *(v221 + 64);
  MEMORY[0x28223BE20](v14);
  v226 = (v224 + 15) & 0xFFFFFFFFFFFFFFF0;
  v223 = v113 - v226;
  MEMORY[0x28223BE20](v15);
  v225 = v113 - v226;
  v392 = v113 - v226;
  MEMORY[0x28223BE20](v16);
  v227 = v113 - v226;
  v391 = v113 - v226;
  v228 = sub_26B07A430();
  v230 = *(*(v228 - 8) + 64);
  MEMORY[0x28223BE20](v320);
  v232 = (v230 + 15) & 0xFFFFFFFFFFFFFFF0;
  v229 = v113 - v232;
  MEMORY[0x28223BE20](v17);
  v231 = v113 - v232;
  MEMORY[0x28223BE20](v18);
  v233 = v113 - v232;
  v390 = v113 - v232;
  v267 = sub_26B079100();
  v237 = sub_26B078BF0();
  v234 = v237;
  v235 = (*(*(v237 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v237 - 8);
  v236 = v113 - v235;
  v274 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE650, &qword_26B08AF68);
  v247 = sub_26B078BF0();
  v238 = v247;
  v239 = *(v247 - 8);
  v240 = v239;
  v242 = *(v239 + 64);
  MEMORY[0x28223BE20](v328);
  v244 = (v242 + 15) & 0xFFFFFFFFFFFFFFF0;
  v241 = v113 - v244;
  MEMORY[0x28223BE20](v19);
  v243 = v113 - v244;
  MEMORY[0x28223BE20](v20);
  v245 = v113 - v244;
  v389 = v113 - v244;
  v248 = sub_26B07A430();
  v249 = (*(*(v248 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v328);
  v250 = v113 - v249;
  v251 = *(v21 - 8);
  v252 = v251;
  MEMORY[0x28223BE20](v22);
  v253 = v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v388 = v253;
  v254 = sub_26B07A430();
  v256 = *(*(v254 - 8) + 64);
  MEMORY[0x28223BE20](v320);
  v258 = (v256 + 15) & 0xFFFFFFFFFFFFFFF0;
  v255 = v113 - v258;
  MEMORY[0x28223BE20](v24);
  v257 = v113 - v258;
  MEMORY[0x28223BE20](v25);
  v259 = v113 - v258;
  v387 = v113 - v258;
  v277 = sub_26B078BF0();
  v260 = v277;
  v261 = sub_26B078BF0();
  v276 = MEMORY[0x277CE1180];
  v262 = swift_getTupleTypeMetadata2();
  v263 = v262;
  v265 = sub_26B079BB0();
  v264 = v265;
  v281 = MEMORY[0x277CE14C0];
  WitnessTable = swift_getWitnessTable();
  v319 = sub_26B079950();
  v268 = v319;
  v270 = *(*(v319 - 8) + 64);
  MEMORY[0x28223BE20](v320);
  v272 = (v270 + 15) & 0xFFFFFFFFFFFFFFF0;
  v269 = v113 - v272;
  MEMORY[0x28223BE20](v26);
  v271 = v113 - v272;
  MEMORY[0x28223BE20](v27);
  v273 = v113 - v272;
  v386 = v113 - v272;
  v285 = sub_26B078BF0();
  v275 = v285;
  v286 = sub_26B078BF0();
  v278 = v286;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v280 = TupleTypeMetadata3;
  v283 = sub_26B079BB0();
  v282 = v283;
  v284 = swift_getWitnessTable();
  v287 = sub_26B079950();
  v288 = v287;
  v290 = *(*(v287 - 8) + 64);
  MEMORY[0x28223BE20](v328);
  v292 = (v290 + 15) & 0xFFFFFFFFFFFFFFF0;
  v289 = v113 - v292;
  MEMORY[0x28223BE20](v28);
  v291 = v113 - v292;
  MEMORY[0x28223BE20](v29);
  v293 = v113 - v292;
  v385 = v113 - v292;
  v294 = (*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v31);
  v295 = v113 - v294;
  v297 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v299 = (v297 + 15) & 0xFFFFFFFFFFFFFFF0;
  v296 = v113 - v299;
  MEMORY[0x28223BE20](v34);
  v298 = v113 - v299;
  MEMORY[0x28223BE20](v35);
  v300 = v113 - v299;
  v384 = v113 - v299;
  v321 = sub_26B078F50();
  v301 = v321;
  v303 = *(*(v321 - 8) + 64);
  MEMORY[0x28223BE20](v328);
  v305 = (v303 + 15) & 0xFFFFFFFFFFFFFFF0;
  v302 = v113 - v305;
  MEMORY[0x28223BE20](v36);
  v304 = v113 - v305;
  MEMORY[0x28223BE20](v37);
  v306 = v113 - v305;
  v383 = v113 - v305;
  v308 = sub_26B07A430();
  v309 = *(*(v308 - 8) + 64);
  MEMORY[0x28223BE20](v328);
  v311 = (v309 + 15) & 0xFFFFFFFFFFFFFFF0;
  v310 = v113 - v311;
  MEMORY[0x28223BE20](v38);
  v312 = v113 - v311;
  v313 = *(v39 - 8);
  v314 = v313;
  v315 = *(v313 + 64);
  MEMORY[0x28223BE20](v40);
  v317 = (v315 + 15) & 0xFFFFFFFFFFFFFFF0;
  v316 = v113 - v317;
  v382 = v113 - v317;
  MEMORY[0x28223BE20](v41);
  v318 = v113 - v317;
  v381 = v113 - v317;
  v331 = sub_26B07A430();
  v322 = v331;
  v323 = (*(*(v331 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v320);
  v341 = v113 - v323;
  v324 = v113 - v323;
  v325 = *(v42 - 8);
  v339 = v325;
  v326 = v325;
  MEMORY[0x28223BE20](v43);
  v327 = v113 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v380 = v327;
  v329 = sub_26B078F50();
  v330 = v329;
  v333 = sub_26B07A430();
  v335 = *(*(v333 - 8) + 64);
  MEMORY[0x28223BE20](v332);
  v337 = (v335 + 15) & 0xFFFFFFFFFFFFFFF0;
  v334 = v113 - v337;
  MEMORY[0x28223BE20](v45);
  v336 = v113 - v337;
  MEMORY[0x28223BE20](v46);
  v338 = v113 - v337;
  v379 = v113 - v337;
  v378 = v47;
  sub_26B00EC78(v47, v48, v49, v50);
  if ((*(v339 + 48))(v341, 1, v340) == 1)
  {
    sub_26B0145CC(v324, v340);
    v377[0] = v340;
    v377[1] = v307;
    v377[2] = v246;
    v377[3] = v216;
    v377[4] = v198;
    v377[5] = v197;
    v377[6] = v196;
    v377[7] = v200;
    v51 = type metadata accessor for ProactiveSuggestionView(0, v377);
    sub_26B00EE98((v332 + *(v51 + 88)), v312, v307, v308);
    if ((*(v314 + 48))(v312, 1, v307) == 1)
    {
      v71 = v268;
      v72 = v330;
      v73 = v333;
      sub_26B014670(v312, v307);
      (*(*(v72 - 8) + 56))(v334, 1, 1, v72);
      v157 = MEMORY[0x277CE1138];
      v156 = swift_getWitnessTable();
      v74 = sub_26AE95850();
      v376[14] = v198;
      v376[15] = v74;
      v155 = MEMORY[0x277CDFAD8];
      v154 = swift_getWitnessTable();
      v75 = sub_26AF1B88C();
      v376[12] = v154;
      v376[13] = v75;
      v76 = swift_getWitnessTable();
      v376[10] = v156;
      v376[11] = v76;
      v159 = MEMORY[0x277CE0340];
      v158 = swift_getWitnessTable();
      v77 = swift_getWitnessTable();
      v376[8] = v158;
      v376[9] = v77;
      swift_getWitnessTable();
      sub_26AF09CCC(v334, v72, v336);
      v161 = MEMORY[0x277CDF740];
      v160 = MEMORY[0x277CDF738];
      v162 = 0;
      v166 = sub_26B078B10();
      v165 = sub_26B078F30();
      v164 = sub_26B078B10();
      v78 = sub_26B078F30();
      v163 = &v102;
      v112 = v73;
      sub_26B014714(v334, v340, v275, v278, v307, v260, v280, v282, v166, v288, v165, v301, v261, v263, v264, v164, v71, v78, v72);
      v167 = &v101;
      sub_26B014A78(v336, v338, v340, v275, v278, v307, v260, v280, v282, v166, v288, v165, v301, v261, v263, v264, v164, v71, v78, v72, v73);
    }

    else
    {
      (*(v314 + 32))(v318, v312, v307);
      v150 = v113;
      MEMORY[0x28223BE20](v264);
      v148 = v113;
      v149 = &v102;
      v103 = v340;
      v104 = v307;
      v105 = v79;
      v106 = v80;
      v107 = v81;
      v108 = v82;
      v109 = v196;
      v110 = v200;
      sub_26B005488();
      v152 = 0;
      sub_26B079940();
      v151 = swift_getWitnessTable();
      sub_26AE9463C(v271, v268, v273);
      v153 = sub_26B078B10();
      sub_26B0161E4(v271, v307, v260, v261, v263, v264, v153);
      v363 = v271;
      v83 = v268;
      v84 = v330;
      v85 = v333;
      v111 = v268;
      sub_26B0162C4(v273, v269, v307, v260, v261, v263, v264, v153);
      sub_26AE94B4C(v269, v83, v271);
      sub_26B0161E4(v269, v307, v260, v261, v263, v264, v153);
      v111 = v83;
      sub_26B0162C4(v271, v269, v307, v260, v261, v263, v264, v153);
      v140 = swift_getWitnessTable();
      v86 = sub_26AE95850();
      v362[14] = v198;
      v362[15] = v86;
      v139 = MEMORY[0x277CDFAD8];
      v138 = swift_getWitnessTable();
      v87 = sub_26AF1B88C();
      v362[12] = v138;
      v362[13] = v87;
      v88 = swift_getWitnessTable();
      v362[10] = v140;
      v362[11] = v88;
      v142 = MEMORY[0x277CE0340];
      v141 = swift_getWitnessTable();
      sub_26AE94CA8(v269, v301, v83, v141, v151, v334);
      sub_26B0161E4(v269, v307, v260, v261, v263, v264, v153);
      (*(*(v84 - 8) + 56))(v334, 0, 1, v84);
      v362[8] = v141;
      v362[9] = v151;
      swift_getWitnessTable();
      sub_26AF09CCC(v334, v84, v336);
      v143 = 0;
      v146 = sub_26B078B10();
      v145 = sub_26B078F30();
      v89 = sub_26B078F30();
      v144 = &v102;
      v112 = v85;
      sub_26B014714(v334, v340, v275, v278, v307, v260, v280, v282, v146, v288, v145, v301, v261, v263, v264, v153, v83, v89, v84);
      v147 = &v101;
      sub_26B014A78(v336, v338, v340, v275, v278, v307, v260, v280, v282, v146, v288, v145, v301, v261, v263, v264, v153, v83, v89, v84, v85);
      sub_26B0161E4(v271, v307, v260, v261, v263, v264, v153);
      sub_26B0161E4(v273, v307, v260, v261, v263, v264, v153);
      (*(v314 + 8))(v318, v307);
    }
  }

  else
  {
    (*(v326 + 32))(v327, v324, v340);
    v362[0] = v340;
    v362[1] = v307;
    v362[2] = v246;
    v362[3] = v216;
    v362[4] = v198;
    v362[5] = v197;
    v362[6] = v196;
    v362[7] = v200;
    v52 = type metadata accessor for ProactiveSuggestionView(0, v362);
    sub_26B00EE98((v332 + *(v52 + 88)), v310, v307, v308);
    if ((*(v314 + 48))(v310, 1, v307) == 1)
    {
      sub_26B014670(v310, v307);
      v361 = 7;
      View.suuiIdentifiable(_:)();
      v192 = sub_26B079230();
      v53 = sub_26AE95850();
      v359 = v198;
      v360 = v53;
      v194 = MEMORY[0x277CDFAD8];
      v193 = swift_getWitnessTable();
      sub_26B0795C0();

      sub_26B0163F0(v295, v340, v275);
      v54 = sub_26AF1B88C();
      v357 = v193;
      v358 = v54;
      v195 = swift_getWitnessTable();
      sub_26AE9463C(v298, v278, v300);
      sub_26B016484(v298, v340, v275);
      v356 = v298;
      sub_26B016544(v300, v296, v340, v275, v278);
      sub_26AE94B4C(v296, v278, v298);
      sub_26B016484(v296, v340, v275);
      sub_26B016544(v298, v296, v340, v275, v278);
      v55 = swift_getWitnessTable();
      sub_26AE94CA8(v296, v288, v278, v55, v195, v304);
      sub_26B016484(v296, v340, v275);
      v190 = 0;
      v191 = sub_26B078B10();
      v56 = sub_26B078F30();
      v111 = v301;
      sub_26B016650(v304, v306, v340, v275, v278, v307, v260, v280, v282, v191, v288, v56);
      sub_26B016484(v298, v340, v275);
      sub_26B016484(v300, v340, v275);
    }

    else
    {
      (*(v314 + 32))(v316, v310, v307);
      v57 = sub_26B078D90();
      v186 = v113;
      MEMORY[0x28223BE20](v57);
      v185 = v113;
      v103 = v58;
      v104 = v59;
      v105 = v246;
      v106 = v216;
      v188 = 0;
      sub_26B079940();
      v187 = swift_getWitnessTable();
      sub_26AE9463C(v291, v288, v293);
      v189 = sub_26B078B10();
      sub_26B016E80(v291, v340, v275, v278, v307, v260, v280, v282, v189);
      v346 = v291;
      sub_26B016FD4(v293, v289, v340, v275, v278, v307, v260, v280, v282, v189);
      sub_26AE94B4C(v289, v288, v291);
      sub_26B016E80(v289, v340, v275, v278, v307, v260, v280, v282, v189);
      sub_26B016FD4(v291, v289, v340, v275, v278, v307, v260, v280, v282, v189);
      v60 = sub_26AE95850();
      v344 = v198;
      v345 = v60;
      v184 = MEMORY[0x277CDFAD8];
      v183 = swift_getWitnessTable();
      v61 = sub_26AF1B88C();
      v342 = v183;
      v343 = v61;
      v62 = swift_getWitnessTable();
      sub_26AE94BB0(v289, v288, v278, v187, v62, v304);
      sub_26B016E80(v289, v340, v275, v278, v307, v260, v280, v282, v189);
      v63 = sub_26B078F30();
      sub_26B016650(v304, v306, v340, v275, v278, v307, v260, v280, v282, v189, v288, v63);
      sub_26B016E80(v291, v340, v275, v278, v307, v260, v280, v282, v189);
      v112 = v288;
      sub_26B016E80(v293, v340, v275, v278, v307, v260, v280, v282, v189);
      (*(v314 + 8))(v316, v307);
    }

    v355 = v304;
    v64 = v268;
    v65 = v330;
    v66 = v333;
    v175 = MEMORY[0x277CDF740];
    v176 = MEMORY[0x277CDF738];
    v177 = 0;
    v182 = sub_26B078B10();
    v181 = sub_26B078F30();
    sub_26B0168E8(v306, v302, v340, v275, v278, v307, v260, v280, v282, v182, v288, v181);
    v171 = MEMORY[0x277CE1138];
    v170 = swift_getWitnessTable();
    v67 = sub_26AE95850();
    v353 = v198;
    v354 = v67;
    v169 = MEMORY[0x277CDFAD8];
    v168 = swift_getWitnessTable();
    v68 = sub_26AF1B88C();
    v351 = v168;
    v352 = v68;
    v69 = swift_getWitnessTable();
    v349 = v170;
    v350 = v69;
    v174 = MEMORY[0x277CE0340];
    v172 = swift_getWitnessTable();
    sub_26AE94B4C(v302, v301, v304);
    sub_26B016C04(v302, v340, v275, v278, v307, v260, v280, v282, v182);
    sub_26B0168E8(v304, v302, v340, v275, v278, v307, v260, v280, v282, v182, v288, v181);
    v173 = swift_getWitnessTable();
    sub_26AE94BB0(v302, v301, v64, v172, v173, v334);
    v112 = v301;
    v111 = v181;
    v110 = v288;
    sub_26B016C04(v302, v340, v275, v278, v307, v260, v280, v282, v182);
    (*(*(v65 - 8) + 56))(v334, 0, 1, v65);
    v347 = v172;
    v348 = v173;
    swift_getWitnessTable();
    sub_26AF09CCC(v334, v65, v336);
    v179 = sub_26B078B10();
    v70 = sub_26B078F30();
    v178 = &v102;
    v112 = v66;
    sub_26B014714(v334, v340, v275, v278, v307, v260, v280, v282, v182, v288, v181, v301, v261, v263, v264, v179, v64, v70, v65);
    v180 = &v101;
    sub_26B014A78(v336, v338, v340, v275, v278, v307, v260, v280, v282, v182, v288, v181, v301, v261, v263, v264, v179, v64, v70, v65, v66);
    v112 = v301;
    v111 = v181;
    v110 = v288;
    sub_26B016C04(v304, v340, v275, v278, v307, v260, v280, v282, v182);
    v112 = v301;
    v111 = v181;
    v110 = v288;
    sub_26B016C04(v306, v340, v275, v278, v307, v260, v280, v282, v182);
    (*(v326 + 8))(v327, v340);
  }

  v376[0] = v340;
  v376[1] = v307;
  v376[2] = v246;
  v376[3] = v216;
  v376[4] = v198;
  v376[5] = v197;
  v376[6] = v196;
  v376[7] = v200;
  v137 = type metadata accessor for ProactiveSuggestionView(0, v376);
  sub_26B00ED88((v332 + *(v137 + 84)), v250, v246, v248);
  if ((*(v252 + 48))(v250, 1, v246) == 1)
  {
    sub_26B014F48(v250, v246);
    (*(v240 + 56))(v255, 1, 1, v238);
    v90 = sub_26AE95850();
    v375[5] = v196;
    v375[6] = v90;
    v136 = MEMORY[0x277CDFAD8];
    v135 = swift_getWitnessTable();
    v91 = sub_26AF1B88C();
    v375[3] = v135;
    v375[4] = v91;
    swift_getWitnessTable();
    sub_26AF09CCC(v255, v238, v257);
    sub_26B014FEC(v255, v246, v234, v238);
    sub_26B0150F0(v257, v259, v246, v234, v238, v254);
  }

  else
  {
    (*(v252 + 32))(v253, v250, v246);
    v369 = 8;
    View.suuiIdentifiable(_:)();
    v131 = sub_26B0791E0();
    v92 = sub_26AE95850();
    v367 = v196;
    v368 = v92;
    v133 = MEMORY[0x277CDFAD8];
    v132 = swift_getWitnessTable();
    sub_26B0795C0();

    sub_26B015F28(v236, v246, v234);
    v93 = sub_26AF1B88C();
    v365 = v132;
    v366 = v93;
    v134 = swift_getWitnessTable();
    sub_26AE9463C(v243, v238, v245);
    sub_26B015FBC(v243, v246, v234);
    v364 = v243;
    sub_26B01607C(v245, v241, v246, v234, v238);
    sub_26AE94B4C(v241, v238, v243);
    sub_26B015FBC(v241, v246, v234);
    sub_26B01607C(v243, v255, v246, v234, v238);
    (*(v240 + 56))(v255, 0, 1, v238);
    sub_26AF09CCC(v255, v238, v257);
    sub_26B014FEC(v255, v246, v234, v238);
    sub_26B0150F0(v257, v259, v246, v234, v238, v254);
    sub_26B015FBC(v243, v246, v234);
    sub_26B015FBC(v245, v246, v234);
    (*(v252 + 8))(v253, v246);
  }

  sub_26B00EFA8((v332 + *(v137 + 92)), v220, v216, v218);
  if ((*(v222 + 48))(v220, 1, v216) == 1)
  {
    sub_26B015268(v220, v216);
    (*(v207 + 56))(v229, 1, 1, v205);
    swift_getWitnessTable();
    sub_26AF09CCC(v229, v205, v231);
    sub_26B01530C(v229, v216, v203, v205);
    sub_26B0153EC(v231, v233, v216, v203, v205, v228);
  }

  else
  {
    (*(v222 + 32))(v227, v220, v216);
    sub_26B079A20();
    v126 = sub_26AFF9978();
    sub_26AE9463C(v213, v201, v215);
    v128 = *(v211 + 8);
    v127 = v211 + 8;
    v128(v213, v201);
    sub_26AE9463C(v227, v216, v225);
    (*(v211 + 16))(v213, v215, v201);
    v373[0] = v213;
    (*(v222 + 16))(v223, v225, v216);
    v373[1] = v223;
    v372[0] = v201;
    v372[1] = v216;
    v370 = v126;
    v371 = v200;
    sub_26AFD49C4(v373, 2uLL, v372, v209);
    v130 = *(v222 + 8);
    v129 = v222 + 8;
    v130(v223, v216);
    v128(v213, v201);
    sub_26B015DCC(v209, v229, v216, v203);
    (*(v207 + 56))(v229, 0, 1, v205);
    swift_getWitnessTable();
    sub_26AF09CCC(v229, v205, v231);
    sub_26B01530C(v229, v216, v203, v205);
    sub_26B0153EC(v231, v233, v216, v203, v205, v228);
    sub_26B015E84(v209, v216, v203);
    v130(v225, v216);
    v128(v215, v201);
    v130(v227, v216);
  }

  v94 = v268;
  v95 = v330;
  v96 = v333;
  v113[2] = MEMORY[0x277CDF740];
  v113[1] = MEMORY[0x277CDF738];
  v113[3] = 0;
  v125 = sub_26B078B10();
  v124 = sub_26B078F30();
  v123 = sub_26B078B10();
  v97 = sub_26B078F30();
  sub_26B015558(v338, v336, v340, v275, v278, v307, v260, v280, v282, v125, v288, v124, v301, v261, v263, v264, v123, v94, v97, v95, v96);
  v375[0] = v336;
  sub_26B015AA4(v259, v257, v246, v234, v238, v254);
  v375[1] = v257;
  sub_26B015C60(v233, v231, v216, v203, v205, v228);
  v375[2] = v231;
  v374[0] = v96;
  v374[1] = v254;
  v374[2] = v228;
  v116 = MEMORY[0x277CE1138];
  v115 = swift_getWitnessTable();
  v119 = sub_26AE95850();
  v373[15] = v198;
  v373[16] = v119;
  v121 = MEMORY[0x277CDFAD8];
  v114 = swift_getWitnessTable();
  v120 = sub_26AF1B88C();
  v373[13] = v114;
  v373[14] = v120;
  v98 = swift_getWitnessTable();
  v373[11] = v115;
  v373[12] = v98;
  v118 = MEMORY[0x277CE0340];
  v117 = swift_getWitnessTable();
  v99 = swift_getWitnessTable();
  v373[9] = v117;
  v373[10] = v99;
  v373[8] = swift_getWitnessTable();
  v122 = MEMORY[0x277CE1550];
  v373[17] = swift_getWitnessTable();
  v373[6] = v196;
  v373[7] = v119;
  v373[4] = swift_getWitnessTable();
  v373[5] = v120;
  v373[3] = swift_getWitnessTable();
  v373[18] = swift_getWitnessTable();
  v373[2] = swift_getWitnessTable();
  v373[19] = swift_getWitnessTable();
  sub_26AFD49C4(v375, 3uLL, v374, v199);
  sub_26B01530C(v231, v216, v203, v205);
  sub_26B014FEC(v257, v246, v234, v238);
  v112 = v96;
  sub_26B014714(v336, v340, v275, v278, v307, v260, v280, v282, v125, v288, v124, v301, v261, v263, v264, v123, v268, v97, v95);
  sub_26B01530C(v233, v216, v203, v205);
  sub_26B014FEC(v259, v246, v234, v238);
  v112 = v96;
  return sub_26B014714(v338, v340, v275, v278, v307, v260, v280, v282, v125, v288, v124, v301, v261, v263, v264, v123, v268, v97, v95);
}

uint64_t sub_26B009C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v36 = a9;
  v23 = a2;
  v43 = a3;
  v40 = a4;
  v22 = a7;
  v29 = a8;
  v31 = MEMORY[0x277CDFAD8];
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v28 = &v57;
  v57 = 0;
  v58 = 0;
  v71 = a3;
  v70 = a4;
  v69 = a5;
  v68 = a6;
  v15[1] = sub_26B079100();
  v27 = 0;
  v41 = sub_26B078BF0();
  v16 = (*(*(v41 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v38 = v15 - v16;
  v17 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v42 = v15 - v17;
  v67 = v15 - v17;
  v44 = sub_26B078BF0();
  v18 = (*(*(v44 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v44);
  v25 = v15 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE650, &qword_26B08AF68);
  v45 = sub_26B078BF0();
  v20 = *(*(v45 - 8) + 64);
  v19 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v39 = v15 - v19;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15 - v19);
  v46 = v15 - v21;
  v66 = v15 - v21;
  v65 = a1;
  v64 = v23;
  v63 = 7;
  View.suuiIdentifiable(_:)();
  v24 = sub_26B079230();
  v30 = sub_26AE95850();
  v61 = v22;
  v62 = v30;
  WitnessTable = swift_getWitnessTable();
  sub_26B0795C0();

  sub_26B0163F0(v25, v43, v44);
  v12 = sub_26AF1B88C();
  v59 = WitnessTable;
  v60 = v12;
  v33 = swift_getWitnessTable();
  sub_26AE9463C(v39, v45, v46);
  sub_26B016484(v39, v43, v44);
  v55 = sub_26B079970();
  v56 = v13 & 1;
  v32 = MEMORY[0x277CE1180];
  v34 = MEMORY[0x277CE1170];
  sub_26AE9463C(&v55, MEMORY[0x277CE1180], v28);
  v54 = 9;
  View.suuiIdentifiable(_:)();
  v53[3] = v29;
  v53[4] = v30;
  v35 = swift_getWitnessTable();
  sub_26AE9463C(v38, v41, v42);
  sub_26B0171C4(v38, v40, v41);
  sub_26B016544(v46, v39, v43, v44, v45);
  v37 = v53;
  v53[0] = v39;
  v51 = v57;
  v52 = v58;
  v53[1] = &v51;
  sub_26B017258(v42, v38, v40, v41);
  v53[2] = v38;
  v50[0] = v45;
  v50[1] = v32;
  v50[2] = v41;
  v47 = v33;
  v48 = v34;
  v49 = v35;
  sub_26AFD49C4(v37, 3uLL, v50, v36);
  sub_26B0171C4(v38, v40, v41);
  sub_26B016484(v39, v43, v44);
  sub_26B0171C4(v42, v40, v41);
  return sub_26B016484(v46, v43, v44);
}

uint64_t sub_26B00A314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v42 = a7;
  v45 = a3;
  v29 = a6;
  v38 = MEMORY[0x277CDFAD8];
  v72 = 0;
  v71 = 0;
  v22 = &v69;
  v69 = 0;
  v70 = 0;
  v76 = a2;
  v75 = a3;
  v74 = a4;
  v73 = a5;
  v18[1] = sub_26B079100();
  v26 = 0;
  v46 = sub_26B078BF0();
  v19 = (*(*(v46 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v35 = v18 - v19;
  v47 = sub_26B078BF0();
  v20 = (*(*(v47 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v44 = v18 - v20;
  v21 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v48 = v18 - v21;
  v72 = v18 - v21;
  v71 = a1;
  *&v30[1] = 1;
  v67 = sub_26B079970();
  v68 = v10 & 1;
  v39 = MEMORY[0x277CE1180];
  v40 = MEMORY[0x277CE1170];
  sub_26AE9463C(&v67, MEMORY[0x277CE1180], v22);
  v66 = 9;
  View.suuiIdentifiable(_:)();
  sub_26B079D00("Suggestion icon", 15, v30[1] & 1);
  v28 = sub_26B078E10();
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v27 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v27);
  v63 = 0;
  v64 = 0;
  v65 = *v30 & 0x100;
  v59 = sub_26B0792C0();
  v60 = v14;
  v61 = v15;
  v62 = v16;
  v31 = v59;
  v32 = v14;
  v33 = v15;
  v34 = v16;
  v37 = sub_26AE95850();
  v57 = v29;
  v58 = v37;
  WitnessTable = swift_getWitnessTable();
  v54[4] = v31;
  v54[5] = v32;
  v55 = v33 & 1 & v30[1];
  v56 = v34;
  sub_26B079520();
  sub_26AE95AFC(v31, v32, v33 & 1);

  sub_26B0171C4(v35, v45, v46);
  v54[2] = WitnessTable;
  v54[3] = v37;
  v41 = swift_getWitnessTable();
  sub_26AE9463C(v44, v47, v48);
  sub_26B017304(v44, v45, v46, v47);
  v52 = v69;
  v53 = v70;
  v43 = v54;
  v54[0] = &v52;
  sub_26B0173D0(v48, v44, v45, v46, v47);
  v54[1] = v44;
  v51[0] = v39;
  v51[1] = v47;
  v49 = v40;
  v50 = v41;
  sub_26AFD49C4(v43, 2uLL, v51, v42);
  sub_26B017304(v44, v45, v46, v47);
  return sub_26B017304(v48, v45, v46, v47);
}

uint64_t sub_26B00A8CC(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 104));

  return v3;
}

uint64_t ProactiveSuggestionView.Action.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v19 = a1;
  v10[1] = MEMORY[0x277CDFAD8];
  v23 = sub_26B00FF68;
  v26 = MEMORY[0x277CDF028];
  v52 = 0;
  v51 = 0;
  v10[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758, &unk_26B08F810) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v13 = v10 - v10[0];
  v18 = *(v3 + 48);
  v55 = v18;
  v24 = sub_26B078BF0();
  v20 = *(v19 + 88);
  v53 = v20;
  v54 = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  v33 = sub_26B079930();
  v27 = *(v33 - 8);
  v28 = v33 - 8;
  v11 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v31 = v10 - v11;
  v12 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v32 = v10 - v12;
  v52 = v10 - v12;
  v51 = v2;
  v14 = *(v6 + 16);
  v50 = v14;
  v15 = *(v6 + 24);
  v49 = v15;
  v16 = *(v6 + 32);
  v48 = v16;
  v17 = *(v6 + 40);
  v47 = v17;
  sub_26B00E5E0((v2 + *(v6 + 100)), v7);
  v8 = (v2 + *(v19 + 104));
  v21 = *v8;
  v22 = v8[1];

  v36 = v14;
  v37 = v15;
  v38 = v16;
  v39 = v17;
  v40 = v18;
  v41 = *(v19 + 56);
  v42 = *(v19 + 64);
  v43 = *(v19 + 72);
  v44 = *(v19 + 80);
  v45 = v20;
  v46 = v2;
  sub_26B0798F0();
  v30 = swift_getWitnessTable();
  sub_26AE9463C(v31, v33, v32);
  v35 = *(v27 + 8);
  v34 = v27 + 8;
  v35(v31, v33);
  (*(v27 + 16))(v31, v32, v33);
  sub_26AE94B4C(v31, v33, v29);
  v35(v31, v33);
  return (v35)(v32, v33);
}

void sub_26B00AE14(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v44 = a9;
  v37 = a1;
  v34 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v47 = a6;
  v30 = a7;
  v31 = a8;
  v35 = a10;
  v36 = a11;
  v42 = a12;
  v43 = MEMORY[0x277CDFAD8];
  v54 = 0;
  v53 = 0;
  v59 = a2;
  v58 = a3;
  v57 = a4;
  v56 = a5;
  v55 = a6;
  v39 = *(a6 - 8);
  v40 = a6 - 8;
  v26 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v12 = &v25 - v26;
  v41 = &v25 - v26;
  v38 = 0;
  v48 = sub_26B078BF0();
  v33 = *(*(v48 - 8) + 64);
  v32 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38);
  v46 = &v25 - v32;
  MEMORY[0x28223BE20](v13);
  v49 = &v25 - v14;
  v54 = &v25 - v14;
  v53 = v15;
  v52[0] = v34;
  v52[1] = v16;
  v52[2] = v17;
  v52[3] = v18;
  v52[4] = v19;
  v52[5] = v20;
  v52[6] = v21;
  v52[7] = v35;
  v52[8] = v36;
  v52[9] = v22;
  v24 = type metadata accessor for ProactiveSuggestionView.Action(v23, v52);
  (*(v39 + 16))(v12, v37 + *(v24 + 108), v47);
  sub_26B079B40();
  sub_26B079600();
  (*(v39 + 8))(v41, v47);
  v50 = v42;
  v51 = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  sub_26AE9463C(v46, v48, v49);
  sub_26B0144EC(v46, v47);
  sub_26B014540(v49, v46, v47, v48);
  sub_26AE94B4C(v46, v48, v44);
  sub_26B0144EC(v46, v47);
  sub_26B0144EC(v49, v47);
}

uint64_t static ProactiveSuggestionView.Action.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a1;
  v14 = a2;
  v26 = 0;
  v25 = 0;
  v31 = a3;
  v30 = a4;
  v29 = a5;
  v28 = a6;
  v27 = a7;
  v21 = sub_26B0782E0();
  v17 = *(v21 - 8);
  v18 = v21 - 8;
  v12 = v17[8];
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21);
  v19 = &v10 - v11;
  v13 = v11;
  v7 = MEMORY[0x28223BE20](&v10 - v11);
  v20 = &v10 - v13;
  v26 = v8;
  v25 = v14;
  v16 = v17[2];
  v15 = v17 + 2;
  v16(v7);
  (v16)(v19, v14, v21);
  v24 = sub_26B0782C0();
  v23 = v17[1];
  v22 = v17 + 1;
  v23(v19, v21);
  v23(v20, v21);
  return v24 & 1;
}

uint64_t ProactiveSuggestionView.Icon.systemName.getter()
{
  v2 = *v0;
  sub_26B078640();
  return v2;
}

uint64_t ProactiveSuggestionView.Icon.fill.getter()
{
  v2 = *(v0 + 16);

  return v2;
}

void ProactiveSuggestionView.Icon.init(stringLiteral:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  v12 = a6;
  v8[3] = a1;
  v8[4] = a2;
  ProactiveSuggestionView.Icon.init(systemName:fill:)(a1, a2, 0, a3, a4, a5, a6, v8);
  v9 = v8[0];
  v10 = v8[1];
  v11 = v8[2];
  sub_26B005568(&v9, a7);
  sub_26B0055C8(&v9);
}

void ProactiveSuggestionView.Icon.init(rawValue:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  v12 = a6;
  v8[3] = a1;
  v8[4] = a2;
  ProactiveSuggestionView.Icon.init(systemName:fill:)(a1, a2, 0, a3, a4, a5, a6, v8);
  v9 = v8[0];
  v10 = v8[1];
  v11 = v8[2];
  sub_26B005568(&v9, a7);
  sub_26B0055C8(&v9);
}

uint64_t ProactiveSuggestionView.Icon.rawValue.getter()
{
  v2 = *v0;
  sub_26B078640();
  return v2;
}

uint64_t sub_26B00B7D4@<X0>(uint64_t *a1@<X8>)
{
  result = ProactiveSuggestionView.Icon.rawValue.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t ProactiveSuggestionView.Action<>.init(label:role:action:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v52 = a9;
  v58 = a1;
  v54 = a2;
  v50 = a3;
  v53 = a4;
  v43[1] = a5;
  v43[2] = a6;
  v43[3] = a7;
  v43[4] = a8;
  v45 = a11;
  v46 = a12;
  v47 = a13;
  v43[5] = a14;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  v70[13] = a5;
  v70[12] = a6;
  v70[11] = a7;
  v70[10] = a8;
  v44 = 0;
  v57 = sub_26B078120();
  v55 = *(v57 - 8);
  v56 = v57 - 8;
  v43[0] = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v57);
  v51 = v43 - v43[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758, &unk_26B08F810);
  MEMORY[0x28223BE20](v44);
  v49 = v43 - v14;
  v70[0] = v15;
  v70[1] = v16;
  v70[2] = v17;
  v70[3] = v18;
  v70[4] = MEMORY[0x277CE0BD8];
  v70[5] = v45;
  v70[6] = v46;
  v70[7] = v47;
  v70[8] = v19;
  v70[9] = MEMORY[0x277CE0BC8];
  v60 = type metadata accessor for ProactiveSuggestionView.Action(v20, v70);
  v48 = (*(*(v60 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v58);
  v59 = v43 - v48;
  v69 = v43 - v48;
  v68 = v21;
  v67 = v22;
  v65 = v23;
  v66 = v24;
  sub_26B0782D0();
  sub_26B00E5E0(v54, v49);
  sub_26B00E708(v49, (v59 + v60[25]));

  v25 = v51;
  v26 = v53;
  v27 = v55;
  v28 = v58;
  v29 = v57;
  v30 = (v59 + v60[26]);
  *v30 = v50;
  v30[1] = v26;
  (*(v27 + 16))(v25, v28, v29);
  v31 = sub_26B0792D0();
  v32 = v59;
  v34 = v33;
  v35 = v52;
  v37 = v36;
  v38 = v60;
  v61 = v31;
  v62 = v34;
  v63 = v37;
  v64 = v39;
  v40 = v34;
  v41 = v59 + v60[27];
  *v41 = v31;
  *(v41 + 8) = v40;
  *(v41 + 16) = v37 & 1;
  *(v41 + 24) = v39;
  sub_26B00FFD8(v32, v35, v38);

  sub_26B00EA70(v54);
  (*(v55 + 8))(v58, v57);
  return sub_26B01024C(v59, v60);
}

uint64_t ProactiveSuggestionView<>.init(title:description:icon:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a11)
{
  v40 = a9;
  v24 = a1;
  v43 = a2;
  v25 = a3;
  v42 = a4;
  v35 = a5;
  v36 = a6;
  v41 = a7;
  v45 = a8;
  v29 = a11;
  v26 = sub_26B01039C;
  v33 = sub_26B0103A8;
  v37 = sub_26B0103B4;
  v62 = 0;
  v60 = 0;
  v61 = 0;
  v58 = 0;
  v59 = 0;
  v56 = 0;
  v57 = 0;
  v55 = 0;
  v63[8] = a8;
  v27 = MEMORY[0x277CE0BD8];
  v63[0] = MEMORY[0x277CE0BD8];
  v63[1] = a8;
  v63[2] = MEMORY[0x277CE0BD8];
  v28 = MEMORY[0x277CE11C8];
  v63[3] = MEMORY[0x277CE11C8];
  v30 = MEMORY[0x277CE0BC8];
  v63[4] = MEMORY[0x277CE0BC8];
  v63[5] = a11;
  v63[6] = MEMORY[0x277CE0BC8];
  v31 = MEMORY[0x277CE11C0];
  v63[7] = MEMORY[0x277CE11C0];
  v38 = 0;
  v47 = type metadata accessor for ProactiveSuggestionView(0, v63);
  v22 = *(*(v47 - 8) + 64);
  v21 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43);
  v39 = &v20 - v21;
  v23 = v21;
  MEMORY[0x28223BE20](v11);
  v44 = &v20 - v23;
  v62 = &v20 - v23;
  v60 = v12;
  v61 = v13;
  v58 = v14;
  v59 = v15;
  v56 = v16;
  v57 = v17;
  v55 = v18;
  sub_26B078640();
  v32 = &v52;
  v53 = v24;
  v54 = v43;
  sub_26B078640();
  v34 = &v49;
  v50 = v25;
  v51 = v42;
  sub_26B078640();
  v48[2] = v45;
  v48[3] = v29;
  v48[4] = v41;
  v48[5] = 6.0;
  v48[6] = 4.0;
  v48[7] = 15.0;
  ProactiveSuggestionView.init(title:description:icon:actions:)(v26, v32, v33, v34, v35, v36, v37, v48, v39, v27, v45, v27, v28, v30, v29, v30, v31);

  v46 = sub_26B07A430();
  sub_26B0103DC(v39, v44, v45, v46, v47);
  sub_26B010560(v44, v40, v45, v46, v47);

  return sub_26B0107E8(v44, v45, v46, v47);
}

uint64_t sub_26B00C054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = 0;
  v54 = 0;
  v51 = 0u;
  v52 = 0u;
  v40 = 0u;
  v41 = 0u;
  v65 = a1;
  v66 = a2;
  sub_26B078640();
  if (a2)
  {
    v53 = a1;
    v54 = a2;
    sub_26B078640();
    v49 = a1;
    v50 = a2;
    sub_26AE95974();
    v45 = sub_26B0792E0();
    v46 = v3;
    v47 = v4;
    v48 = v5;
    v42[0] = v45;
    v42[1] = v3;
    v43 = v4 & 1;
    v44 = v5;
    v14 = MEMORY[0x277CE0BD8];
    sub_26AE9463C(v42, MEMORY[0x277CE0BD8], &v51);
    sub_26AE95B40(v42);
    v8 = v51;
    v9 = v52;
    v10 = *(&v52 + 1);
    sub_26AE95D28(v51, *(&v51 + 1), v52 & 1);
    sub_26B078640();
    v37 = v8;
    v38 = v9 & 1;
    v39 = v10;
    sub_26AE94B4C(&v37, v14, &v40);
    sub_26AE95B40(&v37);
    v12 = v40;
    v11 = v41;
    v13 = *(&v41 + 1);
    sub_26AE95D28(v40, *(&v40 + 1), v41 & 1);
    sub_26B078640();
    v30 = v12;
    v31 = v11 & 1;
    v32 = v13;
    sub_26AF09CCC(&v30, v14, &v33);
    sub_26AF6BCAC(&v30);
    v15 = v33;
    v16 = v34;
    v17 = v35;
    v18 = v36;
    sub_26AF6BAA0(v33, v34, v35, v36);
    v61 = v15;
    v62 = v16;
    v63 = v17;
    v64 = v18;
    sub_26AE95B40(&v40);
    sub_26AE95B40(&v51);

    v23 = v15;
    v24 = v16;
    v25 = v17;
    v26 = v18;
  }

  else
  {
    memset(v56, 0, sizeof(v56));
    sub_26AF09CCC(v56, MEMORY[0x277CE0BD8], &v57);
    v19 = v57;
    v20 = v58;
    v21 = v59;
    v22 = v60;
    sub_26AF6BAA0(v57, v58, v59, v60);
    v61 = v19;
    v62 = v20;
    v63 = v21;
    v64 = v22;
    v23 = v19;
    v24 = v20;
    v25 = v21;
    v26 = v22;
  }

  v55[0] = v23;
  v55[1] = v24;
  v55[2] = v25;
  v55[3] = v26;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD170, &qword_26B08BF30);
  sub_26AF6B948();
  sub_26AE94B4C(v55, v7, a3);
  sub_26AF6BCAC(v55);
  return sub_26AF6BCAC(&v61);
}

uint64_t sub_26B00C400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = 0;
  v54 = 0;
  v51 = 0u;
  v52 = 0u;
  v40 = 0u;
  v41 = 0u;
  v65 = a1;
  v66 = a2;
  sub_26B078640();
  if (a2)
  {
    v53 = a1;
    v54 = a2;
    sub_26B078640();
    v49 = a1;
    v50 = a2;
    sub_26AE95974();
    v45 = sub_26B0792E0();
    v46 = v3;
    v47 = v4;
    v48 = v5;
    v42[0] = v45;
    v42[1] = v3;
    v43 = v4 & 1;
    v44 = v5;
    v14 = MEMORY[0x277CE0BD8];
    sub_26AE9463C(v42, MEMORY[0x277CE0BD8], &v51);
    sub_26AE95B40(v42);
    v8 = v51;
    v9 = v52;
    v10 = *(&v52 + 1);
    sub_26AE95D28(v51, *(&v51 + 1), v52 & 1);
    sub_26B078640();
    v37 = v8;
    v38 = v9 & 1;
    v39 = v10;
    sub_26AE94B4C(&v37, v14, &v40);
    sub_26AE95B40(&v37);
    v12 = v40;
    v11 = v41;
    v13 = *(&v41 + 1);
    sub_26AE95D28(v40, *(&v40 + 1), v41 & 1);
    sub_26B078640();
    v30 = v12;
    v31 = v11 & 1;
    v32 = v13;
    sub_26AF09CCC(&v30, v14, &v33);
    sub_26AF6BCAC(&v30);
    v15 = v33;
    v16 = v34;
    v17 = v35;
    v18 = v36;
    sub_26AF6BAA0(v33, v34, v35, v36);
    v61 = v15;
    v62 = v16;
    v63 = v17;
    v64 = v18;
    sub_26AE95B40(&v40);
    sub_26AE95B40(&v51);

    v23 = v15;
    v24 = v16;
    v25 = v17;
    v26 = v18;
  }

  else
  {
    memset(v56, 0, sizeof(v56));
    sub_26AF09CCC(v56, MEMORY[0x277CE0BD8], &v57);
    v19 = v57;
    v20 = v58;
    v21 = v59;
    v22 = v60;
    sub_26AF6BAA0(v57, v58, v59, v60);
    v61 = v19;
    v62 = v20;
    v63 = v21;
    v64 = v22;
    v23 = v19;
    v24 = v20;
    v25 = v21;
    v26 = v22;
  }

  v55[0] = v23;
  v55[1] = v24;
  v55[2] = v25;
  v55[3] = v26;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD170, &qword_26B08BF30);
  sub_26AF6B948();
  sub_26AE94B4C(v55, v7, a3);
  sub_26AF6BCAC(v55);
  return sub_26AF6BCAC(&v61);
}

void sub_26B00C7AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  v34 = a3;
  v35 = a2;
  v52 = a7;
  v51 = a6;
  v50 = a5;
  v53 = a1;
  v36 = a4;
  v48 = 0;
  v71 = 0;
  v70 = 0.0;
  v69 = 0;
  v68 = 0;
  v63 = 0;
  v61 = 0;
  v82[10] = a2;
  v82[0] = MEMORY[0x277CE0BD8];
  v82[1] = a2;
  v82[2] = MEMORY[0x277CE0BD8];
  v82[3] = MEMORY[0x277CE11C8];
  v82[4] = MEMORY[0x277CE0BD8];
  v82[5] = MEMORY[0x277CE0BC8];
  v82[6] = a3;
  v82[7] = MEMORY[0x277CE0BC8];
  v82[8] = MEMORY[0x277CE11C0];
  v82[9] = MEMORY[0x277CE0BC8];
  v40 = 255;
  v41 = type metadata accessor for ProactiveSuggestionView.Action(255, v82);
  v57 = sub_26B07A0A0();
  v38 = sub_26B0782E0();
  v43 = sub_26B078BF0();
  sub_26B079A30();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v44 = sub_26B079BB0();
  v46 = sub_26B078F50();
  WitnessTable = swift_getWitnessTable();
  v77 = v57;
  v78 = v38;
  v79 = v46;
  v80 = WitnessTable;
  v81 = sub_26AEBBA58();
  v47 = sub_26B079A60();
  v42 = v47;
  v75 = swift_getWitnessTable();
  v76 = MEMORY[0x277CDF918];
  v45 = swift_getWitnessTable();
  v73 = v45;
  v74 = swift_getWitnessTable();
  v72 = swift_getWitnessTable();
  v49 = swift_getWitnessTable();
  v54 = sub_26B079990();
  v55 = (*(*(v54 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v53);
  v56 = v17 - v55;
  v71 = v8;
  v70 = v7;
  v69 = v9;
  v68 = v10;
  v66[1] = v8;
  swift_getWitnessTable();
  if (sub_26B07A250())
  {
    v65 = 0;
    sub_26AF09CCC(&v65, MEMORY[0x277CE11C8], v66);
    v18 = v66[0];
    v19 = v66[0];

    v67 = v18;
    v33 = v19;
  }

  else
  {
    v20 = sub_26B078E60();
    sub_26B078640();
    v21 = v17;
    v11 = MEMORY[0x28223BE20](v20);
    v12 = v34;
    v13 = v53;
    v17[-6] = v14;
    v17[-5] = v12;
    v17[-4] = v13;
    v17[-3] = v15;
    v17[-2] = v16;
    *&v17[-1] = v11;
    sub_26B079980();

    swift_getWitnessTable();
    v62 = sub_26B0799B0();
    v26 = MEMORY[0x277CE11C8];
    v27 = MEMORY[0x277CE11C0];
    v31 = &v63;
    v22 = &v62;
    sub_26AE9463C(&v62, MEMORY[0x277CE11C8], &v63);
    sub_26B0121A8();
    v23 = v63;

    v60 = v23;
    v29 = &v61;
    v24 = &v60;
    sub_26AE94B4C(&v60, v26, &v61);
    sub_26B0121A8();
    v25 = v61;

    v58 = v25;
    v28 = &v58;
    sub_26AF09CCC(&v58, v26, &v59);
    sub_26B012154();
    v30 = v59;
    v32 = v59;

    v67 = v30;
    sub_26B0121A8();
    sub_26B0121A8();
    v33 = v32;
  }

  v64 = v33;
  v17[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEA00, &unk_26B090518);
  sub_26B0120C0();
  v17[1] = &v64;
  sub_26AE94B4C(&v64, v17[0], v36);
  sub_26B012154();
  sub_26B012154();
}

uint64_t sub_26B00CD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  v50 = a4;
  v26 = a1;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v24 = a2;
  v25 = a3;
  v21[0] = 0;
  v21[2] = MEMORY[0x277D83980];
  v30 = &protocol conformance descriptor for ProactiveSuggestionView<A, B, C, D>.Action<A1>;
  v32 = MEMORY[0x277CDFAD8];
  v34 = MEMORY[0x277CE14C0];
  v36 = MEMORY[0x277CE0340];
  v38 = &protocol conformance descriptor for ProactiveSuggestionView<A, B, C, D>.Action<A1>;
  v39 = sub_26B01221C;
  v47 = MEMORY[0x277CE1290];
  v67 = 0;
  v66 = 0;
  v65 = 0.0;
  v64 = 0;
  v63 = 0;
  v73[10] = a2;
  v73[0] = MEMORY[0x277CE0BD8];
  v73[1] = a2;
  v73[2] = MEMORY[0x277CE0BD8];
  v73[3] = MEMORY[0x277CE11C8];
  v73[4] = MEMORY[0x277CE0BD8];
  v73[5] = MEMORY[0x277CE0BC8];
  v73[6] = a3;
  v73[7] = MEMORY[0x277CE0BC8];
  v73[8] = MEMORY[0x277CE11C0];
  v73[9] = MEMORY[0x277CE0BC8];
  v21[1] = 255;
  v37 = type metadata accessor for ProactiveSuggestionView.Action(255, v73);
  v41 = sub_26B07A0A0();
  v42 = sub_26B0782E0();
  v31 = sub_26B078BF0();
  sub_26B079A30();
  swift_getTupleTypeMetadata2();
  v33 = sub_26B079BB0();
  v43 = sub_26B078F50();
  WitnessTable = swift_getWitnessTable();
  v68 = v41;
  v69 = v42;
  v70 = v43;
  v71 = WitnessTable;
  v72 = sub_26AEBBA58();
  v54 = sub_26B079A60();
  v48 = *(v54 - 8);
  v49 = v54 - 8;
  v22 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v52 = v21 - v22;
  v23 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v8);
  v53 = v21 - v23;
  v67 = v21 - v23;
  v66 = v10;
  v65 = v9;
  v64 = v11;
  v63 = v12;
  sub_26B078640();
  v45 = &v62;
  v62 = v26;
  sub_26B078640();
  v13 = swift_allocObject();
  v14 = v25;
  v15 = v26;
  v16 = v27;
  v17 = v28;
  v18 = v29;
  v40 = v13;
  v13[2] = v24;
  v13[3] = v14;
  v13[4] = v15;
  *(v13 + 5) = v16;
  *(v13 + 6) = v17;
  *(v13 + 7) = v18;
  v60 = swift_getWitnessTable();
  v61 = MEMORY[0x277CDF918];
  v35 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v58 = v35;
  v59 = v19;
  v46 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26B079A50();
  v57 = v46;
  v51 = swift_getWitnessTable();
  sub_26AE9463C(v52, v54, v53);
  v56 = *(v48 + 8);
  v55 = v48 + 8;
  v56(v52, v54);
  (*(v48 + 16))(v52, v53, v54);
  sub_26AE94B4C(v52, v54, v50);
  v56(v52, v54);
  return (v56)(v53, v54);
}

uint64_t sub_26B00D3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>)
{
  v71 = a5;
  v112 = a1;
  v119 = a2;
  v109 = a6;
  v110 = a7;
  v111 = a8;
  v72 = a3;
  v73 = a4;
  v101 = 0;
  v121 = MEMORY[0x277D83958];
  v74 = &protocol conformance descriptor for ProactiveSuggestionView<A, B, C, D>.Action<A1>;
  v75 = MEMORY[0x277CDFAD8];
  v76 = MEMORY[0x277CE14C0];
  v77 = MEMORY[0x277CE0340];
  v156 = 0;
  v155 = 0;
  v154 = 0;
  v153 = 0;
  v152 = 0;
  v151 = 0;
  v150 = 0.0;
  v149 = 0;
  v148 = 0;
  v146 = 0;
  v135 = 0;
  v157[10] = a3;
  v157[0] = MEMORY[0x277CE0BD8];
  v157[1] = a3;
  v157[2] = MEMORY[0x277CE0BD8];
  v157[3] = MEMORY[0x277CE11C8];
  v157[4] = MEMORY[0x277CE0BD8];
  v157[5] = MEMORY[0x277CE0BC8];
  v157[6] = a4;
  v157[7] = MEMORY[0x277CE0BC8];
  v157[8] = MEMORY[0x277CE11C0];
  v157[9] = MEMORY[0x277CE0BC8];
  v79 = 255;
  v131 = type metadata accessor for ProactiveSuggestionView.Action(255, v157);
  v103 = sub_26B078BF0();
  v83 = sub_26B079A30();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v120 = 0;
  v102 = sub_26B079BB0();
  v80 = (*(*(v102 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](255);
  v81 = &v50 - v80;
  v82 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v84 = &v50 - v82;
  v156 = &v50 - v82;
  v85 = *(v83 - 8);
  v86 = v83 - 8;
  v87 = (*(v85 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v88 = &v50 - v87;
  v89 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v90 = &v50 - v89;
  v155 = &v50 - v89;
  v91 = (*(*(v103 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v92 = &v50 - v91;
  v93 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v94 = &v50 - v93;
  v95 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v96 = &v50 - v95;
  v154 = &v50 - v95;
  v128 = *(v18 - 8);
  v129 = v18 - 8;
  v97 = (v128[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v98 = &v50 - v97;
  v99 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21);
  v100 = &v50 - v99;
  v126 = sub_26B07A430();
  v123 = swift_getTupleTypeMetadata2();
  v104 = (*(*(v123 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v120);
  v132 = &v50 - v104;
  v105 = (*(*(v126 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v106 = &v50 - v105;
  v107 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24);
  v127 = &v50 - v107;
  v108 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v124 = &v50 - v108;
  v113 = sub_26B078F50();
  v115 = *(*(v113 - 8) + 64);
  v114 = (v115 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v112);
  v116 = &v50 - v114;
  v117 = (v115 + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = MEMORY[0x28223BE20](v27);
  v118 = &v50 - v117;
  v153 = &v50 - v117;
  v152 = v29;
  v151 = v30;
  v150 = v28;
  v149 = v31;
  v148 = v32;
  sub_26B012244(v29, v33, v34);
  v35 = v128[7];
  v130 = 1;
  v35(v124, 0);
  v147 = v119;
  v122 = sub_26B07A0A0();
  swift_getWitnessTable();
  sub_26B079D10();
  v125 = *(v123 + 48);
  sub_26B0124B8(v124, v132, v131, v126);
  sub_26B0124B8(v127, &v132[v125], v131, v126);
  v133 = v128[6];
  v134 = v128 + 6;
  if (v133(v132, v130, v131) == 1)
  {
    if (v133(&v132[v125], 1, v131) == 1)
    {
      sub_26B012AB4(v132, v131);
      v70 = 1;
      goto LABEL_7;
    }
  }

  else
  {
    sub_26B0124B8(v132, v106, v131, v126);
    if (v133(&v132[v125], 1, v131) != 1)
    {
      sub_26B0142FC(v106, v100, v131);
      sub_26B0142FC(&v132[v125], v98, v131);
      v69 = static ProactiveSuggestionView.Action.== infix(_:_:)(v100, v98, MEMORY[0x277CE0BD8], v72, MEMORY[0x277CE0BD8], MEMORY[0x277CE11C8], MEMORY[0x277CE0BD8]);
      sub_26B0141AC(v98, v131);
      sub_26B0141AC(v100, v131);
      sub_26B012AB4(v132, v131);
      v70 = v69;
      goto LABEL_7;
    }

    sub_26B0141AC(v106, v131);
  }

  sub_26B0127C8(v132, v131, v126, v123);
  v70 = 0;
LABEL_7:
  v68 = v70;
  sub_26B012AB4(v127, v131);
  sub_26B012AB4(v124, v131);
  if (v68)
  {
    sub_26B078990();
    v62 = v36;
    v63 = v37;
    v64 = v38;
    v65 = v39;
    WitnessTable = swift_getWitnessTable();
    sub_26B079670();
    v136 = WitnessTable;
    v137 = MEMORY[0x277CDF918];
    v67 = swift_getWitnessTable();
    sub_26AE9463C(v94, v103, v96);
    sub_26B012C38(v94, v131);
    v135 = v94;
    sub_26B012D88(v96, v92, v131, v103);
    sub_26AE94B4C(v92, v103, v94);
    sub_26B012C38(v92, v131);
    sub_26B012D88(v94, v92, v131, v103);
    v40 = swift_getWitnessTable();
    sub_26AE94BB0(v92, v103, v102, v67, v40, v116);
    sub_26B012C38(v92, v131);
    v41 = sub_26B078F30();
    sub_26B0134CC(v116, v118, v131, v103, TupleTypeMetadata2, v102, v41);
    sub_26B012C38(v94, v131);
  }

  else
  {
    v146 = v96;
    sub_26B078990();
    v52 = v42;
    v53 = v43;
    v54 = v44;
    v55 = v45;
    v56 = swift_getWitnessTable();
    sub_26B079670();
    v145[2] = v56;
    v145[3] = MEMORY[0x277CDF918];
    v59 = swift_getWitnessTable();
    sub_26AE9463C(v94, v103, v96);
    sub_26B012C38(v94, v131);
    sub_26B079A20();
    v57 = sub_26AFF9978();
    sub_26AE9463C(v88, v83, v90);
    v61 = *(v85 + 8);
    v60 = v85 + 8;
    v61(v88, v83);
    sub_26B012D88(v96, v94, v131, v103);
    v58 = v145;
    v145[0] = v94;
    (*(v85 + 16))(v88, v90, v83);
    v145[1] = v88;
    v144[0] = v103;
    v144[1] = v83;
    v142 = v59;
    v143 = v57;
    sub_26AFD49C4(v58, 2uLL, v144, v84);
    v61(v88, v83);
    sub_26B012C38(v94, v131);
    sub_26B013028(v84, v81, v131, v103, TupleTypeMetadata2);
    v46 = swift_getWitnessTable();
    sub_26AE94CA8(v81, v103, v102, v59, v46, v116);
    sub_26B01332C(v81, v131, v103, TupleTypeMetadata2);
    v47 = sub_26B078F30();
    sub_26B0134CC(v116, v118, v131, v103, TupleTypeMetadata2, v102, v47);
    sub_26B01332C(v84, v131, v103, TupleTypeMetadata2);
    v61(v90, v83);
  }

  sub_26B012C38(v96, v131);
  v51 = sub_26B078F30();
  sub_26B013940(v118, v116, v131, v103, TupleTypeMetadata2, v102, v51);
  v140 = swift_getWitnessTable();
  v141 = MEMORY[0x277CDF918];
  v50 = swift_getWitnessTable();
  v48 = swift_getWitnessTable();
  v138 = v50;
  v139 = v48;
  swift_getWitnessTable();
  sub_26AE94B4C(v116, v113, v71);
  sub_26B013ED8(v116, v131, v103, TupleTypeMetadata2);
  return sub_26B013ED8(v118, v131, v103, TupleTypeMetadata2);
}

void sub_26B00E218(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v18 = 0;
  v34 = a1;
  v35 = a2;
  v36 = a3;
  sub_26B00E524(a1, a2);
  if (a2)
  {
    v27 = a1;
    v28 = a2;
    v29 = a3;
    sub_26B078640();
    v22 = sub_26B079830();

    v20 = a3;
    if (a3)
    {
      v21 = v20;
    }

    else
    {
      v21 = sub_26B0797C0();
    }

    sub_26B0794D0();

    sub_26AF1FC54();
    v19[1] = v23;
    v19[2] = v24;
    v19[3] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCC28, &unk_26B090CB0);
    sub_26AF1FC80();
    v19[0] = sub_26B0799B0();
    v7 = MEMORY[0x277CE11C8];
    sub_26AE9463C(v19, MEMORY[0x277CE11C8], &v26);
    sub_26B0121A8();
    v5 = v26;

    v17 = v5;
    sub_26AE94B4C(&v17, v7, &v18);
    sub_26B0121A8();
    v6 = v18;

    v15 = v6;
    sub_26AF09CCC(&v15, v7, &v16);
    sub_26B012154();
    v8 = v16;

    v33 = v8;
    sub_26B0121A8();
    sub_26B0121A8();

    v10 = v8;
  }

  else
  {
    v31 = 0;
    sub_26AF09CCC(&v31, MEMORY[0x277CE11C8], &v32);
    v9 = v32;

    v33 = v9;
    v10 = v9;
  }

  v30 = v10;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEA00, &unk_26B090518);
  sub_26B0120C0();
  sub_26AE94B4C(&v30, v4, a4);
  sub_26B012154();
  sub_26B012154();
}

uint64_t sub_26B00E524(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_26B078640();
  }

  return result;
}

uint64_t sub_26B00E574(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void *sub_26B00E5E0(const void *a1, void *a2)
{
  v6 = sub_26B078980();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758, &unk_26B08F810);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_26B00E708(const void *a1, void *a2)
{
  v6 = sub_26B078980();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758, &unk_26B08F810);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_26B00E830(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4 = sub_26B0782E0();
  (*(*(v4 - 8) + 16))(a2, a1);
  v14 = a4[25];
  v16 = sub_26B078980();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(a1 + v14, 1))
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758, &unk_26B08F810);
    memcpy((a2 + v14), (a1 + v14), *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v17 + 16))();
    (*(v17 + 56))(a2 + v14, 0, 1, v16);
  }

  v9 = (a2 + a4[26]);
  v6 = (a1 + a4[26]);
  v8 = *v6;
  v10 = v6[1];

  *v9 = v8;
  v9[1] = v10;
  (*(*(a3 - 8) + 16))(a2 + a4[27], a1 + a4[27]);
  return a2;
}

uint64_t sub_26B00EA70(uint64_t a1)
{
  v3 = sub_26B078980();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_26B00EB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_26B0782E0();
  (*(*(v3 - 8) + 8))(a1);
  v7 = *(a3 + 100);
  v9 = sub_26B078980();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(a1 + v7, 1))
  {
    (*(v10 + 8))(a1 + v7, v9);
  }

  (*(*(a2 - 8) + 8))(a1 + *(a3 + 108));
  return a1;
}

void *sub_26B00EC78(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

void *sub_26B00ED88(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

void *sub_26B00EE98(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

void *sub_26B00EFA8(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

void *sub_26B00F0E4(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

void *sub_26B00F1F4(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

void *sub_26B00F304(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

void *sub_26B00F414(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

char *sub_26B00F524(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int *a11)
{
  v32 = *(a3 - 8);
  if ((*(v32 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v32 + 32))(a2, a1, a3);
    (*(v32 + 56))(a2, 0, 1, a3);
  }

  v11 = a11[21];
  v21 = &a2[v11];
  v22 = &a1[v11];
  v23 = *(a5 - 8);
  if ((*(v23 + 48))())
  {
    memcpy(v21, v22, *(*(a6 - 8) + 64));
  }

  else
  {
    (*(v23 + 32))(v21, v22, a5);
    (*(v23 + 56))(v21, 0, 1, a5);
  }

  v12 = a11[22];
  v18 = &a2[v12];
  v19 = &a1[v12];
  v20 = *(a7 - 8);
  if ((*(v20 + 48))())
  {
    memcpy(v18, v19, *(*(a8 - 8) + 64));
  }

  else
  {
    (*(v20 + 32))(v18, v19, a7);
    (*(v20 + 56))(v18, 0, 1, a7);
  }

  v13 = a11[23];
  v15 = &a2[v13];
  v16 = &a1[v13];
  v17 = *(a9 - 8);
  if ((*(v17 + 48))())
  {
    memcpy(v15, v16, *(*(a10 - 8) + 64));
  }

  else
  {
    (*(v17 + 32))(v15, v16, a9);
    (*(v17 + 56))(v15, 0, 1, a9);
  }

  return a2;
}

uint64_t sub_26B00F9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v48 = *(a31 + 44);
  if (!(*(*(a19 - 8) + 48))(a1 + v48, 1))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = a1 + v48 + *(a16 + 44) + *(a14 + 48);
      (*(*(a5 - 8) + 8))();
      v36 = *(a3 + 24);
      v37 = *(*(v36 - 8) + 8);
      v37(v35 + *(a6 + 36));
      (v37)(v35 + *(a13 + 36), v36);
    }

    else if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(*(a2 - 8) + 8))();
      (*(*(*(a3 + 24) - 8) + 8))(a1 + v48 + *(a3 + 36));
    }

    else
    {
      v38 = a1 + v48 + *(a9 + 44);
      (*(*(a2 - 8) + 8))();
      v40 = *(a3 + 24);
      v41 = *(*(v40 - 8) + 8);
      v41(v38 + *(a3 + 36));

      v39 = v38 + *(a7 + 64);
      (*(*(a5 - 8) + 8))();
      (v41)(v39 + *(a6 + 36), v40);
    }
  }

  v34 = a1 + v48 + *(a29 + 48);
  if (!(*(*(a23 - 8) + 48))())
  {
    (*(*(a21 - 8) + 8))(v34);
    (*(*(*(a3 + 24) - 8) + 8))(v34 + *(a22 + 36));
  }

  v33 = a1 + v48 + *(a29 + 64);
  if (!(*(*(a27 - 8) + 48))())
  {
    v31 = sub_26B079A30();
    (*(*(v31 - 8) + 8))(v33);
    (*(*(a25 - 8) + 8))(v33 + *(a26 + 48));
  }

  return a1;
}

uint64_t sub_26B00FFD8(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = sub_26B0782E0();
  (*(*(v3 - 8) + 16))(a2, a1);
  v18 = a3[25];
  v20 = sub_26B078980();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(a1 + v18, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758, &unk_26B08F810);
    memcpy((a2 + v18), (a1 + v18), *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v21 + 16))();
    (*(v21 + 56))(a2 + v18, 0, 1, v20);
  }

  v5 = a3[26];
  v8 = (a2 + v5);
  v7 = *(a1 + v5);
  v9 = *(a1 + v5 + 8);

  *v8 = v7;
  v8[1] = v9;
  v14 = a2 + a3[27];
  v13 = a1 + a3[27];
  v10 = *v13;
  v11 = *(v13 + 8);
  v12 = *(v13 + 16);
  sub_26AE95D28(*v13, v11, v12 & 1);
  *v14 = v10;
  *(v14 + 8) = v11;
  *(v14 + 16) = v12 & 1;
  v15 = *(v13 + 24);
  sub_26B078640();
  result = a2;
  *(v14 + 24) = v15;
  return result;
}

uint64_t sub_26B01024C(uint64_t a1, uint64_t a2)
{
  v2 = sub_26B0782E0();
  (*(*(v2 - 8) + 8))(a1);
  v5 = *(a2 + 100);
  v7 = sub_26B078980();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a1 + v5, 1))
  {
    (*(v8 + 8))(a1 + v5, v7);
  }

  sub_26AE95AFC(*(a1 + *(a2 + 108)), *(a1 + *(a2 + 108) + 8), *(a1 + *(a2 + 108) + 16) & 1);

  return a1;
}

char *sub_26B0103DC(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  *(a2 + 3) = *(a1 + 3);
  v11 = *(a5 + 88);
  v12 = *(a3 - 8);
  if ((*(v12 + 48))(&a1[v11], 1))
  {
    memcpy(&a2[v11], &a1[v11], *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v12 + 32))();
    (*(v12 + 56))(&a2[v11], 0, 1, a3);
  }

  result = a2;
  *&a2[*(a5 + 92)] = *&a1[*(a5 + 92)];
  return result;
}

uint64_t sub_26B010560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 24))
  {
    v16 = *a1;
    v17 = *(a1 + 8);
    v18 = *(a1 + 16);
    sub_26AE95D28(*a1, v17, v18 & 1);
    *a2 = v16;
    *(a2 + 8) = v17;
    *(a2 + 16) = v18 & 1;
    v19 = *(a1 + 24);
    sub_26B078640();
    *(a2 + 24) = v19;
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  if (*(a1 + 56))
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    sub_26AE95D28(v12, v13, v14 & 1);
    *(a2 + 32) = v12;
    *(a2 + 40) = v13;
    *(a2 + 48) = v14 & 1;
    v15 = *(a1 + 56);
    sub_26B078640();
    *(a2 + 56) = v15;
  }

  else
  {
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 48) = *(a1 + 48);
  }

  v5 = *(a5 + 88);
  __dst = (a2 + v5);
  __src = (a1 + v5);
  v11 = *(a3 - 8);
  if ((*(v11 + 48))())
  {
    memcpy(__dst, __src, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v11 + 16))(__dst, __src, a3);
    (*(v11 + 56))(__dst, 0, 1, a3);
  }

  v7 = *(a5 + 92);
  v8 = *(a1 + v7);

  result = a2;
  *(a2 + v7) = v8;
  return result;
}

uint64_t sub_26B0107E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 24))
  {
    sub_26AE95AFC(*a1, *(a1 + 8), *(a1 + 16) & 1);
  }

  if (*(a1 + 56))
  {
    sub_26AE95AFC(*(a1 + 32), *(a1 + 40), *(a1 + 48) & 1);
  }

  v5 = a1 + *(a4 + 88);
  v6 = *(a2 - 8);
  if (!(*(v6 + 48))())
  {
    (*(v6 + 8))(v5, a2);
  }

  return a1;
}

uint64_t sub_26B010B40(void *a1)
{
  v6 = sub_26B07A430();
  if (v1 <= 0x3F)
  {
    v6 = sub_26B07A430();
    if (v2 <= 0x3F)
    {
      v6 = sub_26B07A430();
      if (v3 <= 0x3F)
      {
        v6 = sub_26B07A430();
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

uint64_t sub_26B010CCC(uint64_t a1, unsigned int a2, int *a3)
{
  v11 = sub_26B07A430();
  if (a2 == *(*(v11 - 8) + 84))
  {
    return (*(*(v11 - 8) + 48))(a1, a2, v11);
  }

  else
  {
    v6 = sub_26B07A430();
    if (a2 == *(*(v6 - 8) + 84))
    {
      return (*(*(v6 - 8) + 48))(a1 + a3[21], a2, v6);
    }

    else
    {
      v5 = sub_26B07A430();
      if (a2 == *(*(v5 - 8) + 84))
      {
        return (*(*(v5 - 8) + 48))(a1 + a3[22], a2, v5);
      }

      else
      {
        v4 = sub_26B07A430();
        if (a2 == *(*(v4 - 8) + 84))
        {
          return (*(*(v4 - 8) + 48))(a1 + a3[23], a2, v4);
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  return v7;
}

uint64_t sub_26B010FA4(uint64_t a1, unsigned int a2, int a3, int *a4)
{
  v11 = sub_26B07A430();
  if (a3 == *(*(v11 - 8) + 84))
  {
    return (*(*(v11 - 8) + 56))(a1, a2, a2, v11);
  }

  v6 = sub_26B07A430();
  if (a3 == *(*(v6 - 8) + 84))
  {
    return (*(*(v6 - 8) + 56))(a1 + a4[21], a2, a2, v6);
  }

  v5 = sub_26B07A430();
  if (a3 == *(*(v5 - 8) + 84))
  {
    return (*(*(v5 - 8) + 56))(a1 + a4[22], a2, a2, v5);
  }

  result = sub_26B07A430();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + a4[23], a2, a2, result);
  }

  __break(1u);
  return result;
}

unint64_t sub_26B0112A4(uint64_t a1)
{
  v6 = sub_26B0782E0();
  if (v1 <= 0x3F)
  {
    v6 = sub_26B0118CC(319);
    if (v2 <= 0x3F)
    {
      v6 = sub_26AE96D98();
      if (v3 <= 0x3F)
      {
        v6 = swift_checkMetadataState();
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

uint64_t sub_26B011414(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v11 = sub_26B0782E0();
  if (a2 == *(*(v11 - 8) + 84))
  {
    return (*(*(v11 - 8) + 48))(a1, a2, v11);
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758, &unk_26B08F810);
    if (a2 == *(*(v6 - 8) + 84))
    {
      return (*(*(v6 - 8) + 48))(a1 + *(a3 + 100), a2, v6);
    }

    else if (a2 == 0x7FFFFFFF)
    {
      v5 = -1;
      if (*(a1 + *(a3 + 104)) < 0x100000000uLL)
      {
        v5 = *(a1 + *(a3 + 104));
      }

      return (v5 + 1);
    }

    else
    {
      v4 = *(a3 + 48);
      if (a2 == *(*(v4 - 8) + 84))
      {
        return (*(*(v4 - 8) + 48))(a1 + *(a3 + 108), a2, v4);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return v7;
}

uint64_t sub_26B011698(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v10 = sub_26B0782E0();
  if (a3 == *(*(v10 - 8) + 84))
  {
    return (*(*(v10 - 8) + 56))(a1, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758, &unk_26B08F810);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + *(a4 + 100), a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 104)) = a2 - 1;
  }

  else
  {
    v5 = *(a4 + 48);
    if (a3 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 56))(a1 + *(a4 + 108), a2, a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_26B0118CC(uint64_t a1)
{
  v5 = qword_2803DE978;
  if (!qword_2803DE978)
  {
    sub_26B078980();
    v4 = sub_26B07A430();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_2803DE978);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_26B011968(uint64_t a1, uint64_t a2)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26B0119D4(uint64_t a1, int a2)
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

uint64_t sub_26B011AEC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26B011CE4(uint64_t *a1)
{
  sub_26B079100();
  sub_26B078BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE650, &qword_26B08AF68);
  sub_26B078BF0();
  sub_26B078BF0();
  swift_getTupleTypeMetadata3();
  sub_26B079BB0();
  swift_getWitnessTable();
  sub_26B079950();
  sub_26B078F50();
  sub_26B078BF0();
  swift_getTupleTypeMetadata2();
  sub_26B079BB0();
  swift_getWitnessTable();
  sub_26B079950();
  sub_26B078F50();
  sub_26B07A430();
  sub_26B078BF0();
  sub_26B078BF0();
  sub_26B07A430();
  sub_26B079A30();
  swift_getTupleTypeMetadata2();
  sub_26B079BB0();
  sub_26B07A430();
  swift_getTupleTypeMetadata3();
  sub_26B079BB0();
  swift_getWitnessTable();
  sub_26B079990();
  sub_26B078FC0();
  swift_getWitnessTable();
  sub_26AEF909C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26B011FEC()
{
  sub_26B078BF0();
  swift_getWitnessTable();
  sub_26B079930();
  return swift_getWitnessTable();
}

unint64_t sub_26B0120C0()
{
  v2 = qword_2803DEA08;
  if (!qword_2803DEA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEA00, &unk_26B090518);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEA08);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B012244(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = sub_26B0782E0();
  (*(*(v3 - 8) + 16))(a2, a1);
  v18 = a3[25];
  v20 = sub_26B078980();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(a1 + v18, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758, &unk_26B08F810);
    memcpy((a2 + v18), (a1 + v18), *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v21 + 16))();
    (*(v21 + 56))(a2 + v18, 0, 1, v20);
  }

  v5 = a3[26];
  v8 = (a2 + v5);
  v7 = *(a1 + v5);
  v9 = *(a1 + v5 + 8);

  *v8 = v7;
  v8[1] = v9;
  v14 = a2 + a3[27];
  v13 = a1 + a3[27];
  v10 = *v13;
  v11 = *(v13 + 8);
  v12 = *(v13 + 16);
  sub_26AE95D28(*v13, v11, v12 & 1);
  *v14 = v10;
  *(v14 + 8) = v11;
  *(v14 + 16) = v12 & 1;
  v15 = *(v13 + 24);
  sub_26B078640();
  result = a2;
  *(v14 + 24) = v15;
  return result;
}

char *sub_26B0124B8(char *a1, char *a2, int *a3, uint64_t a4)
{
  v26 = *(a3 - 1);
  if ((*(v26 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    v4 = sub_26B0782E0();
    (*(*(v4 - 8) + 16))(a2, a1);
    __dst = &a2[a3[25]];
    v19 = &a1[a3[25]];
    v20 = sub_26B078980();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v19, 1))
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758, &unk_26B08F810);
      memcpy(__dst, v19, *(*(v5 - 8) + 64));
    }

    else
    {
      (*(v21 + 16))(__dst, v19, v20);
      (*(v21 + 56))(__dst, 0, 1, v20);
    }

    v6 = a3[26];
    v10 = &a2[v6];
    v9 = *&a1[v6];
    v11 = *&a1[v6 + 8];

    *v10 = v9;
    *(v10 + 1) = v11;
    v7 = a3[27];
    v16 = &a2[v7];
    v15 = &a1[v7];
    v12 = *&a1[v7];
    v13 = *&a1[v7 + 8];
    v14 = a1[v7 + 16];
    sub_26AE95D28(v12, v13, v14 & 1);
    *v16 = v12;
    *(v16 + 1) = v13;
    v16[16] = v14 & 1;
    v17 = *(v15 + 3);
    sub_26B078640();
    *(v16 + 3) = v17;
    (*(v26 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

uint64_t sub_26B0127C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *(*(a2 - 8) + 48);
  if (!(v17)(a1, 1))
  {
    v4 = sub_26B0782E0();
    (*(*(v4 - 8) + 8))(a1);
    v11 = a1 + *(a2 + 100);
    v12 = sub_26B078980();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v11, 1))
    {
      (*(v13 + 8))(v11, v12);
    }

    sub_26AE95AFC(*(a1 + *(a2 + 108)), *(a1 + *(a2 + 108) + 8), *(a1 + *(a2 + 108) + 16) & 1);
  }

  v10 = a1 + *(a4 + 48);
  if (!v17())
  {
    v5 = sub_26B0782E0();
    (*(*(v5 - 8) + 8))(v10);
    v7 = v10 + *(a2 + 100);
    v8 = sub_26B078980();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v7, 1))
    {
      (*(v9 + 8))(v7, v8);
    }

    sub_26AE95AFC(*(v10 + *(a2 + 108)), *(v10 + *(a2 + 108) + 8), *(v10 + *(a2 + 108) + 16) & 1);
  }

  return a1;
}

uint64_t sub_26B012AB4(uint64_t a1, uint64_t a2)
{
  if (!(*(*(a2 - 8) + 48))(a1, 1))
  {
    v2 = sub_26B0782E0();
    (*(*(v2 - 8) + 8))(a1);
    v4 = a1 + *(a2 + 100);
    v5 = sub_26B078980();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v4, 1))
    {
      (*(v6 + 8))(v4, v5);
    }

    sub_26AE95AFC(*(a1 + *(a2 + 108)), *(a1 + *(a2 + 108) + 8), *(a1 + *(a2 + 108) + 16) & 1);
  }

  return a1;
}

uint64_t sub_26B012C38(uint64_t a1, uint64_t a2)
{
  v2 = sub_26B0782E0();
  (*(*(v2 - 8) + 8))(a1);
  v5 = *(a2 + 100);
  v7 = sub_26B078980();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a1 + v5, 1))
  {
    (*(v8 + 8))(a1 + v5, v7);
  }

  sub_26AE95AFC(*(a1 + *(a2 + 108)), *(a1 + *(a2 + 108) + 8), *(a1 + *(a2 + 108) + 16) & 1);

  return a1;
}

uint64_t sub_26B012D88(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v4 = sub_26B0782E0();
  (*(*(v4 - 8) + 16))(a2, a1);
  v20 = a3[25];
  v22 = sub_26B078980();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(a1 + v20, 1))
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758, &unk_26B08F810);
    memcpy((a2 + v20), (a1 + v20), *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v23 + 16))();
    (*(v23 + 56))(a2 + v20, 0, 1, v22);
  }

  v6 = a3[26];
  v9 = (a2 + v6);
  v8 = *(a1 + v6);
  v10 = *(a1 + v6 + 8);

  *v9 = v8;
  v9[1] = v10;
  v15 = a2 + a3[27];
  v14 = a1 + a3[27];
  v11 = *v14;
  v12 = *(v14 + 8);
  v13 = *(v14 + 16);
  sub_26AE95D28(*v14, v12, v13 & 1);
  *v15 = v11;
  *(v15 + 8) = v12;
  *(v15 + 16) = v13 & 1;
  v16 = *(v14 + 24);
  sub_26B078640();
  *(v15 + 24) = v16;
  memcpy((a2 + *(a4 + 36)), (a1 + *(a4 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_26B013028(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_26B0782E0();
  (*(*(v5 - 8) + 16))(a2, a1);
  v25 = a3[25];
  v27 = sub_26B078980();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(a1 + v25, 1))
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758, &unk_26B08F810);
    memcpy((a2 + v25), (a1 + v25), *(*(v6 - 8) + 64));
  }

  else
  {
    (*(v28 + 16))();
    (*(v28 + 56))(a2 + v25, 0, 1, v27);
  }

  v7 = a3[26];
  v11 = (a2 + v7);
  v10 = *(a1 + v7);
  v12 = *(a1 + v7 + 8);

  *v11 = v10;
  v11[1] = v12;
  v17 = a2 + a3[27];
  v16 = a1 + a3[27];
  v13 = *v16;
  v14 = *(v16 + 8);
  v15 = *(v16 + 16);
  sub_26AE95D28(*v16, v14, v15 & 1);
  *v17 = v13;
  *(v17 + 8) = v14;
  *(v17 + 16) = v15 & 1;
  v18 = *(v16 + 24);
  sub_26B078640();
  *(v17 + 24) = v18;
  memcpy((a2 + *(a4 + 36)), (a1 + *(a4 + 36)), 0x29uLL);
  v20 = a2 + *(a5 + 48);
  v19 = a1 + *(a5 + 48);
  v8 = sub_26B079A30();
  (*(*(v8 - 8) + 16))(v20, v19);
  return a2;
}

uint64_t sub_26B01332C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_26B0782E0();
  (*(*(v4 - 8) + 8))(a1);
  v10 = *(a2 + 100);
  v12 = sub_26B078980();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(a1 + v10, 1))
  {
    (*(v13 + 8))(a1 + v10, v12);
  }

  sub_26AE95AFC(*(a1 + *(a2 + 108)), *(a1 + *(a2 + 108) + 8), *(a1 + *(a2 + 108) + 16) & 1);

  v7 = a1 + *(a4 + 48);
  v5 = sub_26B079A30();
  (*(*(v5 - 8) + 8))(v7);
  return a1;
}

uint64_t sub_26B0134CC(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_26B0782E0();
    (*(*(v15 - 8) + 32))(a2, a1);
    v27 = (a2 + a3[25]);
    v28 = (a1 + a3[25]);
    v29 = sub_26B078980();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v28, 1))
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758, &unk_26B08F810);
      memcpy(v27, v28, *(*(v16 - 8) + 64));
    }

    else
    {
      (*(v30 + 32))(v27, v28, v29);
      (*(v30 + 56))(v27, 0, 1, v29);
    }

    v17 = (a2 + a3[26]);
    v18 = (a1 + a3[26]);
    v19 = *v18;
    v20 = v18[1];
    *v17 = v19;
    v17[1] = v20;
    v21 = (a2 + a3[27]);
    v22 = (a1 + a3[27]);
    *v21 = *v22;
    v21[1] = v22[1];
    memcpy((a2 + *(a4 + 36)), (a1 + *(a4 + 36)), 0x29uLL);
    v26 = a2 + *(a5 + 48);
    v25 = a1 + *(a5 + 48);
    v23 = sub_26B079A30();
    (*(*(v23 - 8) + 32))(v26, v25);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v7 = sub_26B0782E0();
    (*(*(v7 - 8) + 32))(a2, a1);
    __dst = (a2 + a3[25]);
    __src = (a1 + a3[25]);
    v33 = sub_26B078980();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(__src, 1))
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758, &unk_26B08F810);
      memcpy(__dst, __src, *(*(v8 - 8) + 64));
    }

    else
    {
      (*(v34 + 32))(__dst, __src, v33);
      (*(v34 + 56))(__dst, 0, 1, v33);
    }

    v9 = (a2 + a3[26]);
    v10 = (a1 + a3[26]);
    v11 = *v10;
    v12 = v10[1];
    *v9 = v11;
    v9[1] = v12;
    v13 = (a2 + a3[27]);
    v14 = (a1 + a3[27]);
    *v13 = *v14;
    v13[1] = v14[1];
    memcpy((a2 + *(a4 + 36)), (a1 + *(a4 + 36)), 0x29uLL);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_26B013940(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_26B0782E0();
    (*(*(v10 - 8) + 16))(a2, a1);
    __dst = (a2 + a3[25]);
    __src = (a1 + a3[25]);
    v29 = sub_26B078980();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(__src, 1))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758, &unk_26B08F810);
      memcpy(__dst, __src, *(*(v11 - 8) + 64));
    }

    else
    {
      (*(v30 + 16))(__dst, __src, v29);
      (*(v30 + 56))(__dst, 0, 1, v29);
    }

    v12 = a3[26];
    v17 = (a2 + v12);
    v16 = *(a1 + v12);
    v18 = *(a1 + v12 + 8);

    *v17 = v16;
    v17[1] = v18;
    v13 = a3[27];
    v23 = a2 + v13;
    v22 = a1 + v13;
    v19 = *(a1 + v13);
    v20 = *(a1 + v13 + 8);
    v21 = *(a1 + v13 + 16);
    sub_26AE95D28(v19, v20, v21 & 1);
    *v23 = v19;
    *(v23 + 8) = v20;
    *(v23 + 16) = v21 & 1;
    v24 = *(v22 + 24);
    sub_26B078640();
    *(v23 + 24) = v24;
    memcpy((a2 + *(a4 + 36)), (a1 + *(a4 + 36)), 0x29uLL);
    v26 = a2 + *(a5 + 48);
    v25 = a1 + *(a5 + 48);
    v14 = sub_26B079A30();
    (*(*(v14 - 8) + 16))(v26, v25);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v7 = sub_26B0782E0();
    (*(*(v7 - 8) + 16))(a2, a1);
    v40 = (a2 + a3[25]);
    v41 = (a1 + a3[25]);
    v42 = sub_26B078980();
    v43 = *(v42 - 8);
    if ((*(v43 + 48))(v41, 1))
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758, &unk_26B08F810);
      memcpy(v40, v41, *(*(v8 - 8) + 64));
    }

    else
    {
      (*(v43 + 16))(v40, v41, v42);
      (*(v43 + 56))(v40, 0, 1, v42);
    }

    v9 = a3[26];
    v32 = (a2 + v9);
    v31 = *(a1 + v9);
    v33 = *(a1 + v9 + 8);

    *v32 = v31;
    v32[1] = v33;
    v38 = a2 + a3[27];
    v37 = a1 + a3[27];
    v34 = *v37;
    v35 = *(v37 + 8);
    v36 = *(v37 + 16);
    sub_26AE95D28(*v37, v35, v36 & 1);
    *v38 = v34;
    *(v38 + 8) = v35;
    *(v38 + 16) = v36 & 1;
    v39 = *(v37 + 24);
    sub_26B078640();
    *(v38 + 24) = v39;
    memcpy((a2 + *(a4 + 36)), (a1 + *(a4 + 36)), 0x29uLL);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_26B013ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26B0782E0();
    (*(*(v5 - 8) + 8))(a1);
    v9 = a1 + *(a2 + 100);
    v10 = sub_26B078980();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v9, 1))
    {
      (*(v11 + 8))(v9, v10);
    }

    sub_26AE95AFC(*(a1 + *(a2 + 108)), *(a1 + *(a2 + 108) + 8), *(a1 + *(a2 + 108) + 16) & 1);

    v8 = a1 + *(a4 + 48);
    v6 = sub_26B079A30();
    (*(*(v6 - 8) + 8))(v8);
  }

  else
  {
    v4 = sub_26B0782E0();
    (*(*(v4 - 8) + 8))(a1);
    v12 = a1 + *(a2 + 100);
    v13 = sub_26B078980();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v12, 1))
    {
      (*(v14 + 8))(v12, v13);
    }

    sub_26AE95AFC(*(a1 + *(a2 + 108)), *(a1 + *(a2 + 108) + 8), *(a1 + *(a2 + 108) + 16) & 1);
  }

  return a1;
}

uint64_t sub_26B0141AC(uint64_t a1, uint64_t a2)
{
  v2 = sub_26B0782E0();
  (*(*(v2 - 8) + 8))(a1);
  v5 = *(a2 + 100);
  v7 = sub_26B078980();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a1 + v5, 1))
  {
    (*(v8 + 8))(a1 + v5, v7);
  }

  sub_26AE95AFC(*(a1 + *(a2 + 108)), *(a1 + *(a2 + 108) + 8), *(a1 + *(a2 + 108) + 16) & 1);

  return a1;
}

__n128 sub_26B0142FC(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = sub_26B0782E0();
  (*(*(v3 - 8) + 32))(a2, a1);
  v14 = a3[25];
  v16 = sub_26B078980();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(a1 + v14, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758, &unk_26B08F810);
    memcpy((a2 + v14), (a1 + v14), *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v17 + 32))();
    (*(v17 + 56))(a2 + v14, 0, 1, v16);
  }

  v5 = (a2 + a3[26]);
  v6 = (a1 + a3[26]);
  v7 = *v6;
  v8 = v6[1];
  *v5 = v7;
  v5[1] = v8;
  v9 = a2 + a3[27];
  v10 = a1 + a3[27];
  *v9 = *v10;
  result = *(v10 + 16);
  *(v9 + 16) = result;
  return result;
}

uint64_t sub_26B014540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a3 - 8) + 16))();
  memcpy((a2 + *(a4 + 36)), (a1 + *(a4 + 36)), 0x70uLL);
  return a2;
}

uint64_t sub_26B0145CC(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

uint64_t sub_26B014670(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

uint64_t sub_26B014714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (!(*(*(a19 - 8) + 48))(a1, 1))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = a1 + *(a16 + 44) + *(a14 + 48);
      (*(*(a5 - 8) + 8))();
      v21 = *(a3 + 24);
      v22 = *(*(v21 - 8) + 8);
      v22(v20 + *(a6 + 36));
      (v22)(v20 + *(a13 + 36), v21);
    }

    else if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(*(a2 - 8) + 8))(a1);
      (*(*(*(a3 + 24) - 8) + 8))(a1 + *(a3 + 36));
    }

    else
    {
      v23 = a1 + *(a9 + 44);
      (*(*(a2 - 8) + 8))();
      v25 = *(a3 + 24);
      v26 = *(*(v25 - 8) + 8);
      v26(v23 + *(a3 + 36));

      v24 = v23 + *(a7 + 64);
      (*(*(a5 - 8) + 8))();
      (v26)(v24 + *(a6 + 36), v25);
    }
  }

  return a1;
}

_BYTE *sub_26B014A78(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v47 = *(a20 - 8);
  if ((*(v47 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a21 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a2 = *a1;
      a2[16] = a1[16];
      v25 = *(a17 + 44);
      v26 = &a2[v25];
      *v26 = *&a1[v25];
      v26[8] = a1[v25 + 8];
      v27 = *(a15 + 48);
      v29 = &a2[v25 + v27];
      v30 = &a1[v25 + v27];
      (*(*(a6 - 8) + 32))();
      v31 = *(a4 + 24);
      v32 = *(*(v31 - 8) + 32);
      v32(&v29[*(a7 + 36)], &v30[*(a7 + 36)]);
      (v32)(&v29[*(a14 + 36)], &v30[*(a14 + 36)], v31);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(*(a3 - 8) + 32))(a2, a1);
        (*(*(*(a4 + 24) - 8) + 32))(&a2[*(a4 + 36)], &a1[*(a4 + 36)]);
        *&a2[*(a5 + 36)] = *&a1[*(a5 + 36)];
      }

      else
      {
        *a2 = *a1;
        a2[16] = a1[16];
        v21 = *(a10 + 44);
        v33 = &a2[v21];
        v34 = &a1[v21];
        (*(*(a3 - 8) + 32))();
        v37 = *(a4 + 24);
        v38 = *(*(v37 - 8) + 32);
        v38(&v33[*(a4 + 36)], &v34[*(a4 + 36)]);
        *&v33[*(a5 + 36)] = *&v34[*(a5 + 36)];
        v22 = &v33[*(a8 + 48)];
        v23 = &v34[*(a8 + 48)];
        *v22 = *v23;
        v22[8] = v23[8];
        v24 = *(a8 + 64);
        v35 = &v33[v24];
        v36 = &v34[v24];
        (*(*(a6 - 8) + 32))();
        (v38)(&v35[*(a7 + 36)], &v36[*(a7 + 36)], v37);
      }

      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
    }

    (*(v47 + 56))(a2, 0, 1, a20);
  }

  return a2;
}

uint64_t sub_26B014F48(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

uint64_t sub_26B014FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(*(*(a4 - 8) + 48))(a1, 1))
  {
    (*(*(a2 - 8) + 8))(a1);
    (*(*(*(a3 + 24) - 8) + 8))(a1 + *(a3 + 36));
  }

  return a1;
}

char *sub_26B0150F0(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a5 - 8);
  if ((*(v13 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a6 - 8) + 64));
  }

  else
  {
    (*(*(a3 - 8) + 32))(a2, a1);
    (*(*(*(a4 + 24) - 8) + 32))(&a2[*(a4 + 36)], &a1[*(a4 + 36)]);
    *&a2[*(a5 + 36)] = *&a1[*(a5 + 36)];
    (*(v13 + 56))();
  }

  return a2;
}

uint64_t sub_26B015268(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

uint64_t sub_26B01530C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(*(*(a4 - 8) + 48))(a1, 1))
  {
    v4 = sub_26B079A30();
    (*(*(v4 - 8) + 8))(a1);
    (*(*(a2 - 8) + 8))(a1 + *(a3 + 48));
  }

  return a1;
}

char *sub_26B0153EC(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(a5 - 8);
  if ((*(v14 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a6 - 8) + 64));
  }

  else
  {
    v6 = sub_26B079A30();
    (*(*(v6 - 8) + 32))(a2, a1);
    (*(*(a3 - 8) + 32))(&a2[*(a4 + 48)], &a1[*(a4 + 48)]);
    (*(v14 + 56))(a2, 0, 1, a5);
  }

  return a2;
}

_BYTE *sub_26B015558(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v55 = *(a20 - 8);
  if ((*(v55 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a21 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a2 = *a1;
      a2[16] = a1[16];
      v25 = *(a17 + 44);
      v26 = &a2[v25];
      *v26 = *&a1[v25];
      v26[8] = a1[v25 + 8];
      v27 = *(a15 + 48);
      v29 = &a2[v25 + v27];
      v30 = &a1[v25 + v27];
      (*(*(a6 - 8) + 16))();
      v31 = *(a4 + 24);
      v32 = *(*(v31 - 8) + 16);
      v32(&v29[*(a7 + 36)], &v30[*(a7 + 36)]);
      (v32)(&v29[*(a14 + 36)], &v30[*(a14 + 36)], v31);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(*(a3 - 8) + 16))(a2, a1);
        (*(*(*(a4 + 24) - 8) + 16))(&a2[*(a4 + 36)], &a1[*(a4 + 36)]);
        v35 = &a2[*(a5 + 36)];
        v34 = &a1[*(a5 + 36)];
        v33 = *v34;

        *v35 = v33;
        v36 = v34[1];

        v35[1] = v36;
      }

      else
      {
        *a2 = *a1;
        a2[16] = a1[16];
        v21 = *(a10 + 44);
        v41 = &a2[v21];
        v42 = &a1[v21];
        (*(*(a3 - 8) + 16))();
        v45 = *(a4 + 24);
        v46 = *(*(v45 - 8) + 16);
        v46(&v41[*(a4 + 36)], &v42[*(a4 + 36)]);
        v39 = &v41[*(a5 + 36)];
        v38 = &v42[*(a5 + 36)];
        v37 = *v38;

        *v39 = v37;
        v40 = v38[1];

        v39[1] = v40;
        v22 = &v41[*(a8 + 48)];
        v23 = &v42[*(a8 + 48)];
        *v22 = *v23;
        v22[8] = v23[8];
        v24 = *(a8 + 64);
        v43 = &v41[v24];
        v44 = &v42[v24];
        (*(*(a6 - 8) + 16))();
        (v46)(&v43[*(a7 + 36)], &v44[*(a7 + 36)], v45);
      }

      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
    }

    (*(v55 + 56))(a2, 0, 1, a20);
  }

  return a2;
}

char *sub_26B015AA4(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = *(a5 - 8);
  if ((*(v17 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a6 - 8) + 64));
  }

  else
  {
    (*(*(a3 - 8) + 16))(a2, a1);
    (*(*(*(a4 + 24) - 8) + 16))(&a2[*(a4 + 36)], &a1[*(a4 + 36)]);
    v9 = &a2[*(a5 + 36)];
    v8 = &a1[*(a5 + 36)];
    v7 = *v8;

    *v9 = v7;
    v10 = *(v8 + 1);

    *(v9 + 1) = v10;
    (*(v17 + 56))(a2, 0, 1, a5);
  }

  return a2;
}

char *sub_26B015C60(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(a5 - 8);
  if ((*(v14 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a6 - 8) + 64));
  }

  else
  {
    v6 = sub_26B079A30();
    (*(*(v6 - 8) + 16))(a2, a1);
    (*(*(a3 - 8) + 16))(&a2[*(a4 + 48)], &a1[*(a4 + 48)]);
    (*(v14 + 56))(a2, 0, 1, a5);
  }

  return a2;
}

uint64_t sub_26B015DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_26B079A30();
  (*(*(v4 - 8) + 16))(a2, a1);
  (*(*(a3 - 8) + 16))(a2 + *(a4 + 48), a1 + *(a4 + 48));
  return a2;
}

uint64_t sub_26B015E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_26B079A30();
  (*(*(v3 - 8) + 8))(a1);
  (*(*(a2 - 8) + 8))(a1 + *(a3 + 48));
  return a1;
}

uint64_t sub_26B015F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a2 - 8) + 8))();
  (*(*(*(a3 + 24) - 8) + 8))(a1 + *(a3 + 36));
  return a1;
}

uint64_t sub_26B015FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a2 - 8) + 8))();
  (*(*(*(a3 + 24) - 8) + 8))(a1 + *(a3 + 36));

  return a1;
}

uint64_t sub_26B01607C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(*(a3 - 8) + 16))();
  (*(*(*(a4 + 24) - 8) + 16))(a2 + *(a4 + 36), a1 + *(a4 + 36));
  v9 = *(a5 + 36);
  v10 = *(a1 + v9);

  *(a2 + v9) = v10;
  v12 = *(a1 + v9 + 8);

  result = a2;
  *(a2 + v9 + 8) = v12;
  return result;
}

uint64_t sub_26B0161E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a1 + *(a7 + 44) + *(a5 + 48);
  (*(*(a2 - 8) + 8))();
  v11 = *(a3 + 24);
  v12 = *(*(v11 - 8) + 8);
  v12(v10 + *(a3 + 36));
  (v12)(v10 + *(a4 + 36), v11);
  return a1;
}

uint64_t sub_26B0162C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v8 = a1 + *(a8 + 44);
  v9 = a2 + *(a8 + 44);
  *v9 = *v8;
  *(v9 + 8) = *(v8 + 8);
  v13 = v9 + *(a6 + 48);
  v14 = v8 + *(a6 + 48);
  (*(*(a3 - 8) + 16))();
  v15 = *(a4 + 24);
  v16 = *(*(v15 - 8) + 16);
  v16(v13 + *(a4 + 36), v14 + *(a4 + 36));
  (v16)(v13 + *(a5 + 36), v14 + *(a5 + 36), v15);
  return a2;
}

uint64_t sub_26B0163F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a2 - 8) + 8))();
  (*(*(*(a3 + 24) - 8) + 8))(a1 + *(a3 + 36));
  return a1;
}

uint64_t sub_26B016484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a2 - 8) + 8))();
  (*(*(*(a3 + 24) - 8) + 8))(a1 + *(a3 + 36));

  return a1;
}

uint64_t sub_26B016544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(*(a3 - 8) + 16))();
  (*(*(*(a4 + 24) - 8) + 16))(a2 + *(a4 + 36), a1 + *(a4 + 36));
  v9 = *(a5 + 36);
  v10 = *(a1 + v9);

  *(a2 + v9) = v10;
  v12 = *(a1 + v9 + 8);

  result = a2;
  *(a2 + v9 + 8) = v12;
  return result;
}

uint64_t sub_26B016650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a3 - 8) + 32))(a2, a1);
    (*(*(*(a4 + 24) - 8) + 32))(a2 + *(a4 + 36), a1 + *(a4 + 36));
    *(a2 + *(a5 + 36)) = *(a1 + *(a5 + 36));
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v12 = *(a10 + 44);
    v17 = a2 + v12;
    v18 = a1 + v12;
    (*(*(a3 - 8) + 32))();
    v21 = *(a4 + 24);
    v22 = *(*(v21 - 8) + 32);
    v22(v17 + *(a4 + 36), v18 + *(a4 + 36));
    *(v17 + *(a5 + 36)) = *(v18 + *(a5 + 36));
    v13 = v17 + *(a8 + 48);
    v14 = v18 + *(a8 + 48);
    *v13 = *v14;
    *(v13 + 8) = *(v14 + 8);
    v15 = *(a8 + 64);
    v19 = v17 + v15;
    v20 = v18 + v15;
    (*(*(a6 - 8) + 32))();
    (v22)(v19 + *(a7 + 36), v20 + *(a7 + 36), v21);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_26B0168E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a3 - 8) + 16))(a2, a1);
    (*(*(*(a4 + 24) - 8) + 16))(a2 + *(a4 + 36), a1 + *(a4 + 36));
    v19 = (a2 + *(a5 + 36));
    v18 = (a1 + *(a5 + 36));
    v17 = *v18;

    *v19 = v17;
    v20 = v18[1];

    v19[1] = v20;
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v12 = *(a10 + 44);
    v25 = a2 + v12;
    v26 = a1 + v12;
    (*(*(a3 - 8) + 16))();
    v29 = *(a4 + 24);
    v30 = *(*(v29 - 8) + 16);
    v30(v25 + *(a4 + 36), v26 + *(a4 + 36));
    v23 = (v25 + *(a5 + 36));
    v22 = (v26 + *(a5 + 36));
    v21 = *v22;

    *v23 = v21;
    v24 = v22[1];

    v23[1] = v24;
    v13 = v25 + *(a8 + 48);
    v14 = v26 + *(a8 + 48);
    *v13 = *v14;
    *(v13 + 8) = *(v14 + 8);
    v15 = *(a8 + 64);
    v27 = v25 + v15;
    v28 = v26 + v15;
    (*(*(a6 - 8) + 16))();
    (v30)(v27 + *(a7 + 36), v28 + *(a7 + 36), v29);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_26B016C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2 - 8) + 8))(a1);
    (*(*(*(a3 + 24) - 8) + 8))(a1 + *(a3 + 36));
  }

  else
  {
    v10 = a1 + *(a9 + 44);
    (*(*(a2 - 8) + 8))();
    v12 = *(a3 + 24);
    v13 = *(*(v12 - 8) + 8);
    v13(v10 + *(a3 + 36));

    v11 = v10 + *(a7 + 64);
    (*(*(a5 - 8) + 8))();
    (v13)(v11 + *(a6 + 36), v12);
  }

  return a1;
}

uint64_t sub_26B016E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = a1 + *(a9 + 44);
  (*(*(a2 - 8) + 8))();
  v16 = *(a3 + 24);
  v17 = *(*(v16 - 8) + 8);
  v17(v12 + *(a3 + 36));

  v15 = v12 + *(a7 + 64);
  (*(*(a5 - 8) + 8))();
  (v17)(v15 + *(a6 + 36), v16);
  return a1;
}

uint64_t sub_26B016FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v19 = a2 + *(a10 + 44);
  v20 = a1 + *(a10 + 44);
  (*(*(a3 - 8) + 16))();
  v25 = *(a4 + 24);
  v26 = *(*(v25 - 8) + 16);
  v26(v19 + *(a4 + 36), v20 + *(a4 + 36));
  v15 = *(a5 + 36);
  v16 = *(v20 + v15);

  *(v19 + v15) = v16;
  v17 = *(v20 + v15 + 8);

  *(v19 + v15 + 8) = v17;
  v10 = v20 + *(a8 + 48);
  v11 = v19 + *(a8 + 48);
  *v11 = *v10;
  *(v11 + 8) = *(v10 + 8);
  v23 = v19 + *(a8 + 64);
  v24 = v20 + *(a8 + 64);
  (*(*(a6 - 8) + 16))();
  (v26)(v23 + *(a7 + 36), v24 + *(a7 + 36), v25);
  return a2;
}

uint64_t sub_26B0171C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a2 - 8) + 8))();
  (*(*(*(a3 + 24) - 8) + 8))(a1 + *(a3 + 36));
  return a1;
}

uint64_t sub_26B017258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a3 - 8) + 16))();
  (*(*(*(a4 + 24) - 8) + 16))(a2 + *(a4 + 36), a1 + *(a4 + 36));
  return a2;
}

uint64_t sub_26B017304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a2 - 8) + 8))();
  v7 = *(a3 + 24);
  v8 = *(*(v7 - 8) + 8);
  v8(a1 + *(a3 + 36));
  (v8)(a1 + *(a4 + 36), v7);
  return a1;
}

uint64_t sub_26B0173D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(*(a3 - 8) + 16))();
  v9 = *(a4 + 24);
  v10 = *(*(v9 - 8) + 16);
  v10(a2 + *(a4 + 36), a1 + *(a4 + 36));
  (v10)(a2 + *(a5 + 36), a1 + *(a5 + 36), v9);
  return a2;
}

uint64_t sub_26B0174C0()
{
  swift_getKeyPath();
  sub_26B078A30();

  sub_26AF1AED8();
  return v1;
}

uint64_t sub_26B017540(uint64_t a1, char a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();

  return v3;
}

uint64_t sub_26B0175F0(uint64_t a1, char a2)
{

  *v2 = a1;
  *(v2 + 8) = a2 & 1;
}

uint64_t sub_26B017640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v52 = a4;
  v23 = a1;
  v37 = a2;
  v30 = a3;
  v26 = MEMORY[0x277D85700];
  v29 = sub_26B0186AC;
  v28 = sub_26B018724;
  v33 = sub_26B018F1C;
  v35 = sub_26B01AA5C;
  v49 = MEMORY[0x277CDEDF8];
  v80 = 0;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEA10, &qword_26B090528);
  v50 = *(v56 - 8);
  v51 = v56 - 8;
  v19 = *(v50 + 64);
  v18 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37);
  v54 = &v18 - v18;
  v20 = v18;
  MEMORY[0x28223BE20](v4);
  v55 = &v18 - v20;
  v80 = &v18 - v20;
  v79 = v5;
  v77 = v6;
  v31 = 1;
  v78 = v7 & 1;
  v8 = sub_26B017CF8(v6, v7 & 1);
  v40 = v76;
  v76[0] = v8;
  v76[1] = v9;

  v21 = sub_26B07A130();
  v22 = sub_26B07A120();
  v24 = 7;
  v10 = swift_allocObject();
  v11 = v26;
  v12 = v30;
  v13 = v31;
  v14 = v37;
  v27 = v10;
  *(v10 + 16) = v22;
  *(v10 + 24) = v11;
  *(v10 + 32) = v14;
  *(v10 + 40) = v12 & 1 & v13;
  v25 = sub_26B07A120();
  v15 = swift_allocObject();
  v16 = v26;
  *(v15 + 16) = v25;
  *(v15 + 24) = v16;
  sub_26B0799F0();
  v38 = v73;
  v39 = v74;
  v32 = v75;

  v34 = &v62;
  v63 = v37;
  v64 = v30 & 1 & v31;

  v36 = &v59;
  v60 = v37;
  v61 = v30 & 1 & v31;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEA18, &unk_26B090530);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC748, &qword_26B08A188);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB50, &unk_26B090540);
  v45 = sub_26B01AA6C();
  v46 = sub_26AE95974();
  v47 = sub_26AEFDA40();
  v48 = sub_26AF7DC04();
  v42 = MEMORY[0x277D837D0];
  sub_26B0795E0();

  sub_26AE9BCC0(v40);
  v65 = v41;
  v66 = v42;
  v67 = v43;
  v68 = v44;
  v69 = v45;
  v70 = v46;
  v71 = v47;
  v72 = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26AE9463C(v54, v56, v55);
  v58 = *(v50 + 8);
  v57 = v50 + 8;
  v58(v54, v56);
  (*(v50 + 16))(v54, v55, v56);
  sub_26AE94B4C(v54, v56, v52);
  v58(v54, v56);
  return (v58)(v55, v56);
}

uint64_t sub_26B017CF8(uint64_t a1, int a2)
{
  v59 = a1;
  v57 = a2;
  v78 = 0;
  v79 = 0;
  v72 = 0;
  v70 = 0;
  v71 = 0;
  v45 = 0;
  v43 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v44 = v14 - v43;
  v46 = (*(*(sub_26B079DE0() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v47 = v14 - v46;
  v48 = sub_26B079DC0();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59);
  v52 = v14 - v51;
  v53 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v54 = v14 - v53;
  v55 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v56 = v14 - v55;
  v78 = v6;
  v58 = 1;
  v79 = v7 & 1;

  v76 = v59;
  v77 = v57 & 1 & v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();
  v60 = v75;

  ReactiveUIManager.presentedDialog.getter(v73);
  v61 = v73[0];
  v62 = v73[1];
  v63 = v73[2];
  v64 = v73[3];
  v65 = v73[4];
  v66 = v74;
  if (v74 == 255)
  {

LABEL_7:
    v25 = sub_26B079D00("", 0, 1);
    v26 = v12;
    return v25;
  }

  v37 = v61;
  v38 = v62;
  v39 = v63;
  v40 = v64;
  v41 = v65;
  v42 = v66;
  v31 = v42;
  v32 = v41;
  v33 = v40;
  v34 = v39;
  v35 = v38;
  v36 = v37;
  if (v42 != 5)
  {
    sub_26AEA00D4(v36, v35, v34, v33, v32, v31);

    goto LABEL_7;
  }

  v27 = v36;
  v28 = v35;
  v29 = v34;
  v30 = v32;
  v14[0] = v34;
  v14[1] = v35;
  v22 = v36;
  v72 = v36;

  swift_unknownObjectRelease();

  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = [v22 productVersion];
  v17 = sub_26B079E00();
  v21 = v8;
  v70 = v17;
  v71 = v8;
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v15);
  sub_26B079DB0();
  *&v19[1] = 1;
  sub_26B079D00("OSName ", 7, 1);
  v16 = v9;
  sub_26B079DA0();

  sub_26B079D90();
  sub_26B079D00(" Download Will Be Deleted", 25, v19[1] & 1);
  v18 = v10;
  sub_26B079DA0();

  (*(v49 + 16))(v54, v56, v48);
  (*(v49 + 32))(v52, v54, v48);
  (*(v49 + 8))(v56, v48);
  sub_26B079DD0();
  v20 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v20);
  sub_26AEFB5C4();
  v67 = 0;
  v68 = 0;
  v69 = *v19 & 0x100;
  v23 = sub_26B079E40();
  v24 = v11;

  swift_unknownObjectRelease();
  v25 = v23;
  v26 = v24;
  return v25;
}

uint64_t sub_26B018454@<X0>(uint64_t a1@<X2>, char a2@<W3>, _BYTE *a3@<X8>)
{
  v11 = a1;
  v12 = a2 & 1;

  v9 = a1;
  v10 = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();

  ReactiveUIManager.presentedDialog.getter(v7);
  if (v8 == 255)
  {
  }

  else
  {
    if (v8 == 5)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      *a3 = 1;
      return result;
    }

    sub_26AEA00D4(v7[0], v7[1], v7[2], v7[3], v7[4], v8);
  }

  *a3 = 0;
  return result;
}

uint64_t sub_26B018664()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_26B018730@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v49 = a1;
  LODWORD(v50) = a2;
  v52 = sub_26B01AFB0;
  v35 = sub_26B01B000;
  v75 = 0;
  v73 = 0;
  v74 = 0;
  v70 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758, &unk_26B08F810);
  v36 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v51 = &v26 - v36;
  v48 = 0;
  v37 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48);
  v47 = &v26 - v37;
  v4 = sub_26B079DE0();
  v38 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v45 = &v26 - v38;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDD20, &qword_26B0881A0);
  v58 = *(v60 - 8);
  v59 = v60 - 8;
  v39 = (v58[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49);
  v40 = &v26 - v39;
  v41 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v42 = &v26 - v41;
  v43 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v63 = &v26 - v43;
  v44 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x28223BE20](v10);
  v56 = &v26 - v44;
  v75 = &v26 - v44;
  v73 = v12;
  HIDWORD(v50) = 1;
  v74 = v13 & 1;
  sub_26B079D00("Cancel", 6, 1, v11);
  sub_26B079D80();
  v46 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v46);
  sub_26AEFB5C4();
  v71[2] = 0;
  v71[3] = 0;
  v72 = *(&v50 + 3) & 0x100;
  v14 = sub_26B079E40();
  v54 = v71;
  v71[0] = v14;
  v71[1] = v15;
  sub_26B078970();
  v16 = sub_26B078980();
  (*(*(v16 - 8) + 56))(v51, 0, HIDWORD(v50));

  v17 = swift_allocObject();
  v18 = v50;
  v19 = BYTE4(v50);
  v53 = v17;
  *(v17 + 16) = v49;
  *(v17 + 24) = v18 & 1 & v19;
  v55 = sub_26AE95974();
  sub_26B079910();
  v57 = sub_26AE9C224();
  sub_26AE9463C(v63, v60, v56);
  v61 = v58[1];
  v62 = v58 + 1;
  v61(v63, v60);
  v70 = v63;
  v32 = 2;
  *&v28[1] = 1;
  sub_26B079D00("OK");
  sub_26B079D80();
  v27 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v27);
  sub_26AEFB5C4();
  v68[2] = 0;
  v68[3] = 0;
  v69 = *v28 & 0x100;
  v20 = sub_26B079E40();
  v29 = v68;
  v68[0] = v20;
  v68[1] = v21;

  v22 = swift_allocObject();
  v23 = v50;
  v24 = v28[1];
  *(v22 + 16) = v49;
  *(v22 + 24) = v23 & 1 & v24;
  sub_26B079920();
  sub_26AE9463C(v42, v60, v63);
  v61(v42, v60);
  v31 = v58[2];
  v30 = v58 + 2;
  v31(v42, v56, v60);
  v33 = v67;
  v67[0] = v42;
  v31(v40, v63, v60);
  v67[1] = v40;
  v66[0] = v60;
  v66[1] = v60;
  v64 = v57;
  v65 = v57;
  sub_26AFD49C4(v33, v32, v66, v34);
  v61(v40, v60);
  v61(v42, v60);
  v61(v63, v60);
  return (v61)(v56, v60);
}

uint64_t sub_26B018F2C(uint64_t a1, int a2)
{
  v54 = a2;
  v53 = a1;
  v85 = 0;
  v61 = 0;
  v84 = 0;
  v70 = 0;
  v69 = 0;
  v51 = 0;
  v52 = a2;
  v55 = sub_26B078580();
  v56 = *(v55 - 8);
  v57 = v56;
  MEMORY[0x28223BE20](v53);
  v58 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v3;
  v85 = v4 & 1;
  sub_26B078550();
  v63 = sub_26B078570();
  v59 = v63;
  v62 = sub_26B07A2A0();
  v60 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v64 = sub_26B07A760();
  if (os_log_type_enabled(v63, v62))
  {
    v5 = v51;
    v42 = sub_26B07A420();
    v38 = v42;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v40 = 0;
    v43 = sub_26AEA3B70(0, v39, v39);
    v41 = v43;
    v44 = sub_26AEA3B70(v40, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v68 = v42;
    v67 = v43;
    v66 = v44;
    v45 = 0;
    v46 = &v68;
    sub_26AEA3BC4(0, &v68);
    sub_26AEA3BC4(v45, v46);
    v65 = v64;
    v47 = v8;
    MEMORY[0x28223BE20](v8);
    v48 = &v8[-6];
    v8[-4] = v6;
    v8[-3] = &v67;
    v8[-2] = &v66;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10, &qword_26B088A50);
    sub_26AE9CC18();
    sub_26B079FF0();
    v50 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v59, v60, "User Action: Clicked 'Cancel' on the Beta Program Purge Dialog", v38, 2u);
      v36 = 0;
      sub_26AEA3C24(v41, 0, v39);
      sub_26AEA3C24(v44, v36, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();

      v37 = v50;
    }
  }

  else
  {

    v37 = v51;
  }

  (*(v57 + 8))(v58, v55);

  v82 = v53;
  v83 = v52 & 1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();
  v29 = v81;

  ReactiveUIManager.presentedDialog.getter(v79);
  v30 = v79[0];
  v31 = v79[1];
  v32 = v79[2];
  v33 = v79[3];
  v34 = v79[4];
  v35 = v80;
  if (v80 != 255)
  {
    v22 = v30;
    v23 = v31;
    v24 = v32;
    v25 = v33;
    v26 = v34;
    v27 = v35;
    v16 = v27;
    v17 = v26;
    v18 = v25;
    v19 = v24;
    v20 = v23;
    v21 = v22;
    if (v27 == 5)
    {
      v11 = v21;
      v12 = v20;
      v13 = v19;
      v14 = v18;
      v15 = v17;
      v10 = v17;
      v9 = v18;
      v8[1] = v20;
      v8[2] = v21;
      v69 = v18;
      v70 = v17;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v9(2);
    }

    else
    {
      sub_26AEA00D4(v21, v20, v19, v18, v17, v16);
    }
  }

  v77 = v53;
  v78 = v52 & 1;
  sub_26B078A10();
  v8[0] = v76;

  v71 = 0uLL;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = -1;
  ReactiveUIManager.presentedDialog.setter(&v71);
}

uint64_t sub_26B019714(uint64_t a1, int a2)
{
  v54 = a2;
  v53 = a1;
  v85 = 0;
  v61 = 0;
  v84 = 0;
  v70 = 0;
  v69 = 0;
  v51 = 0;
  v52 = a2;
  v55 = sub_26B078580();
  v56 = *(v55 - 8);
  v57 = v56;
  MEMORY[0x28223BE20](v53);
  v58 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v3;
  v85 = v4 & 1;
  sub_26B078550();
  v63 = sub_26B078570();
  v59 = v63;
  v62 = sub_26B07A2A0();
  v60 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v64 = sub_26B07A760();
  if (os_log_type_enabled(v63, v62))
  {
    v5 = v51;
    v42 = sub_26B07A420();
    v38 = v42;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v40 = 0;
    v43 = sub_26AEA3B70(0, v39, v39);
    v41 = v43;
    v44 = sub_26AEA3B70(v40, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v68 = v42;
    v67 = v43;
    v66 = v44;
    v45 = 0;
    v46 = &v68;
    sub_26AEA3BC4(0, &v68);
    sub_26AEA3BC4(v45, v46);
    v65 = v64;
    v47 = v8;
    MEMORY[0x28223BE20](v8);
    v48 = &v8[-6];
    v8[-4] = v6;
    v8[-3] = &v67;
    v8[-2] = &v66;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10, &qword_26B088A50);
    sub_26AE9CC18();
    sub_26B079FF0();
    v50 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v59, v60, "User Action: Clicked 'OK' on the Beta Program Purge Dialog", v38, 2u);
      v36 = 0;
      sub_26AEA3C24(v41, 0, v39);
      sub_26AEA3C24(v44, v36, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();

      v37 = v50;
    }
  }

  else
  {

    v37 = v51;
  }

  (*(v57 + 8))(v58, v55);

  v82 = v53;
  v83 = v52 & 1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();
  v29 = v81;

  ReactiveUIManager.presentedDialog.getter(v79);
  v30 = v79[0];
  v31 = v79[1];
  v32 = v79[2];
  v33 = v79[3];
  v34 = v79[4];
  v35 = v80;
  if (v80 != 255)
  {
    v22 = v30;
    v23 = v31;
    v24 = v32;
    v25 = v33;
    v26 = v34;
    v27 = v35;
    v16 = v27;
    v17 = v26;
    v18 = v25;
    v19 = v24;
    v20 = v23;
    v21 = v22;
    if (v27 == 5)
    {
      v11 = v21;
      v12 = v20;
      v13 = v19;
      v14 = v18;
      v15 = v17;
      v10 = v17;
      v9 = v18;
      v8[1] = v20;
      v8[2] = v21;
      v69 = v18;
      v70 = v17;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v9(0);
    }

    else
    {
      sub_26AEA00D4(v21, v20, v19, v18, v17, v16);
    }
  }

  v77 = v53;
  v78 = v52 & 1;
  sub_26B078A10();
  v8[0] = v76;

  v71 = 0uLL;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = -1;
  ReactiveUIManager.presentedDialog.setter(&v71);
}

uint64_t sub_26B019EF8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v137 = 0;
  memset(__b, 0, 0x21uLL);
  v134 = 0u;
  v135 = 0u;
  v122 = 0u;
  v123 = 0u;
  memset(v110, 0, 0x21uLL);
  v100 = 0;
  v98 = 0u;
  v99 = 0u;
  v86 = 0u;
  v87 = 0u;
  v160 = a1;
  v161 = a2 & 1;

  v153 = a1;
  v154 = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();

  ReactiveUIManager.presentedDialog.getter(&v147);
  if (v152 == 255)
  {

LABEL_15:
    memset(v140, 0, sizeof(v140));
    v141 = -1;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB40, &unk_26B08AC20);
    sub_26AEB349C();
    sub_26AF09CCC(v140, v13, &v142);
    v14 = v142;
    v15 = v143;
    v16 = v144;
    v17 = v145;
    v18 = v146;
    sub_26AF7E500(v142, v143, v144, v145, v146);
    v155 = v14;
    v156 = v15;
    v157 = v16;
    v158 = v17;
    v159 = v18;
    v30 = v14;
    v31 = v15;
    v32 = v16;
    v33 = v17;
    v34 = v18;
    goto LABEL_16;
  }

  v71 = v148;
  if (v152 != 5)
  {
    sub_26AEA00D4(v147, v148, v149, v150, v151, v152);

    goto LABEL_15;
  }

  v137 = v148;

  swift_unknownObjectRelease();

  swift_getObjectType();
  swift_unknownObjectRetain();
  v70 = [v71 progress];
  swift_unknownObjectRelease();
  if (v70)
  {
    swift_getObjectType();
    v68 = [v70 isDone];
    swift_unknownObjectRelease();
    v69 = v68;
  }

  else
  {
    v69 = 2;
  }

  if (v69 == 2 || (v100 = v69 & 1, (v69 & 1) == 0))
  {
    HIBYTE(v43) = 1;
    sub_26B079D00("An update has already started downloading. Configuring beta updates will delete the existing update.", 100, 1);
    sub_26B078E10();
    v7 = sub_26B02D0D0();
    MEMORY[0x277D82BE0](*v7);
    v131 = 0;
    v132 = 0;
    v133 = v43 & 0x100;
    v127 = sub_26B0792C0();
    v128 = v8;
    v129 = v9;
    v130 = v10;
    v124[0] = v127;
    v124[1] = v8;
    v125 = v9 & 1;
    v126 = v10;
    v41 = MEMORY[0x277CE0BD8];
    v42 = MEMORY[0x277CE0BC8];
    sub_26AE9463C(v124, MEMORY[0x277CE0BD8], &v134);
    sub_26AE95B40(v124);
    v35 = v134;
    v36 = v135;
    v37 = *(&v135 + 1);
    sub_26AE95D28(v134, *(&v134 + 1), v135 & 1);
    sub_26B078640();
    v119 = v35;
    v120 = v36 & 1;
    v121 = v37;
    sub_26AE94B4C(&v119, v41, &v122);
    sub_26AE95B40(&v119);
    v38 = v122;
    v39 = v123;
    v40 = *(&v123 + 1);
    sub_26AE95D28(v122, *(&v122 + 1), v123 & 1);
    sub_26B078640();
    v111 = v38;
    v112 = v39 & 1;
    v113 = v40;
    sub_26AE94CA8(&v111, v41, v41, v42, v42, &v114);
    sub_26AE95B40(&v111);
    v45 = v114;
    v46 = v115;
    v47 = v116;
    v48 = v117;
    v44 = v118;
    sub_26AEB4364(v114, v115, v116, v117);
    __b[0] = v45;
    __b[1] = v46;
    __b[2] = v47;
    __b[3] = v48;
    LOBYTE(__b[4]) = v44 & 1;
    sub_26AE95B40(&v122);
    sub_26AE95B40(&v134);
    v63 = v45;
    v64 = v46;
    v65 = v47;
    v66 = v48;
    v67 = v44;
  }

  else
  {
    HIBYTE(v57) = 1;
    sub_26B079D00("An update has already been downloaded. Configuring beta updates will delete the existing update.", 96, 1);
    sub_26B078E10();
    v3 = sub_26B02D0D0();
    MEMORY[0x277D82BE0](*v3);
    v95 = 0;
    v96 = 0;
    v97 = v57 & 0x100;
    v91 = sub_26B0792C0();
    v92 = v4;
    v93 = v5;
    v94 = v6;
    v88[0] = v91;
    v88[1] = v4;
    v89 = v5 & 1;
    v90 = v6;
    v55 = MEMORY[0x277CE0BD8];
    v56 = MEMORY[0x277CE0BC8];
    sub_26AE9463C(v88, MEMORY[0x277CE0BD8], &v98);
    sub_26AE95B40(v88);
    v49 = v98;
    v50 = v99;
    v51 = *(&v99 + 1);
    sub_26AE95D28(v98, *(&v98 + 1), v99 & 1);
    sub_26B078640();
    v83 = v49;
    v84 = v50 & 1;
    v85 = v51;
    sub_26AE94B4C(&v83, v55, &v86);
    sub_26AE95B40(&v83);
    v52 = v86;
    v53 = v87;
    v54 = *(&v87 + 1);
    sub_26AE95D28(v86, *(&v86 + 1), v87 & 1);
    sub_26B078640();
    v75 = v52;
    v76 = v53 & 1;
    v77 = v54;
    sub_26AE94BB0(&v75, v55, v55, v56, v56, &v78);
    sub_26AE95B40(&v75);
    v59 = v78;
    v60 = v79;
    v61 = v80;
    v62 = v81;
    v58 = v82;
    sub_26AEB4364(v78, v79, v80, v81);
    __b[0] = v59;
    __b[1] = v60;
    __b[2] = v61;
    __b[3] = v62;
    LOBYTE(__b[4]) = v58 & 1;
    sub_26AE95B40(&v86);
    sub_26AE95B40(&v98);
    v63 = v59;
    v64 = v60;
    v65 = v61;
    v66 = v62;
    v67 = v58;
  }

  v108[0] = v63;
  v108[1] = v64;
  v108[2] = v65;
  v108[3] = v66;
  v109 = v67 & 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB40, &unk_26B08AC20);
  sub_26AEB349C();
  sub_26AE94B4C(v108, v24, v110);
  sub_26AEB450C(v108);
  v19 = v110[0];
  v20 = v110[1];
  v21 = v110[2];
  v22 = v110[3];
  v23 = v110[4];
  sub_26AEB4364(v110[0], v110[1], v110[2], v110[3]);
  v101[0] = v19;
  v101[1] = v20;
  v101[2] = v21;
  v101[3] = v22;
  v102 = v23;
  sub_26AF09CCC(v101, v24, &v103);
  sub_26AF7E608(v101);
  v25 = v103;
  v26 = v104;
  v27 = v105;
  v28 = v106;
  v29 = v107;
  sub_26AF7E500(v103, v104, v105, v106, v107);
  v155 = v25;
  v156 = v26;
  v157 = v27;
  v158 = v28;
  v159 = v29;
  sub_26AEB450C(v110);
  sub_26AEB450C(__b);
  swift_unknownObjectRelease();
  v30 = v25;
  v31 = v26;
  v32 = v27;
  v33 = v28;
  v34 = v29;
LABEL_16:
  v138[0] = v30;
  v138[1] = v31;
  v138[2] = v32;
  v138[3] = v33;
  v139 = v34;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB50, &unk_26B090540);
  sub_26AF7DC04();
  sub_26AE94B4C(v138, v12, a3);
  sub_26AF7E608(v138);
  return sub_26AF7E608(&v155);
}

unint64_t sub_26B01AA6C()
{
  v2 = qword_2803DEA20;
  if (!qword_2803DEA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEA18, &unk_26B090530);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEA20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B01AB64(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 9))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v2 = 255 - *(a1 + 8);
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

uint64_t sub_26B01AC88(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = result;
  v4 = (result + 9);
  if (a2 > 0xFE)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = a2 - 255;
    if (a3 >= 0xFF)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_26B01AE50()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEA18, &unk_26B090530);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC748, &qword_26B08A188);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEB50, &unk_26B090540);
  sub_26B01AA6C();
  sub_26AE95974();
  sub_26AEFDA40();
  sub_26AF7DC04();
  return swift_getOpaqueTypeConformance2();
}

uint64_t ReactiveDownload.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v18 = a1;
  v25 = 0;
  v23 = 0;
  v7 = *a1;
  v15 = sub_26B078360();
  v12 = *(v15 - 8);
  v13 = v15 - 8;
  v2 = MEMORY[0x28223BE20](v18);
  v14 = &v7 - v3;
  v25 = v4;
  v8 = *(v7 + *MEMORY[0x277D84DE8] + 8);
  v24 = v8;
  v23 = v10;
  (*(v12 + 16))(&v7 - v3, v10 + OBJC_IVAR____TtC19SoftwareUpdateUIKit16ReactiveDownload_registrar, v2);
  v9 = &v22;
  v22 = v10;

  v19 = v8;
  v20 = v18;
  KeyPath = swift_getKeyPath();
  sub_26B01D6EC();
  sub_26B078320();
  v5 = v10;

  (*(v12 + 8))(v14, v15);
  v16 = *(v5 + 16);
  MEMORY[0x277D82BE0](v16);
  swift_getObjectType();

  v21 = v16;
  swift_getAtKeyPath();
  swift_unknownObjectRelease();
}

{
  v16 = a2;
  v19 = a1;
  v27 = 0;
  v25 = 0;
  v7[0] = *a1;
  v13 = sub_26B078360();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v2 = MEMORY[0x28223BE20](v19);
  v12 = v7 - v3;
  v27 = v4;
  v15 = *(v7[0] + *MEMORY[0x277D84568] + 8);
  v26 = v15;
  v25 = v8;
  (*(v10 + 16))(v7 - v3, v8 + OBJC_IVAR____TtC19SoftwareUpdateUIKit16ReactiveDownload_registrar, v2);
  v7[1] = &v24;
  v24 = v8;

  v20 = v15;
  v21 = v19;
  KeyPath = swift_getKeyPath();
  sub_26B01D6EC();
  sub_26B078320();
  v5 = v8;

  (*(v10 + 8))(v12, v13);
  v14 = *(v5 + 16);
  MEMORY[0x277D82BE0](v14);
  swift_getObjectType();

  v23 = v14;
  v18 = &v22;
  v17 = swift_readAtKeyPath();
  (*(*(v15 - 8) + 16))(v16);
  v17();
  swift_unknownObjectRelease();
}

id ReactiveDownload.phase.getter()
{
  v19 = 0;
  v15 = sub_26B078360();
  v12 = *(v15 - 8);
  v13 = v15 - 8;
  v8 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v15);
  v14 = &v3 - v8;
  v19 = v10;
  (*(v12 + 16))(&v3 - v8, v10 + OBJC_IVAR____TtC19SoftwareUpdateUIKit16ReactiveDownload_registrar, v0);
  v9 = &v18;
  v18 = v10;
  KeyPath = swift_getKeyPath();
  sub_26B01D6EC();
  sub_26B078320();
  v1 = v10;

  (*(v12 + 8))(v14, v15);
  v16 = *(v1 + 16);
  MEMORY[0x277D82BE0](v16);
  swift_getObjectType();
  v17 = [v16 progress];
  MEMORY[0x277D82BD8](v16);
  if (v17)
  {
    v7 = v17;
    v3 = v17;
    swift_getObjectType();
    v4 = [v3 phase];
    swift_unknownObjectRelease();
    v5 = v4;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  return v5;
}

uint64_t ReactiveDownload.download.getter()
{
  v2 = *(v0 + 16);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_26B01B4E8@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC19SoftwareUpdateUIKit16ReactiveDownload_registrar;
  v2 = sub_26B078360();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_26B01B55C()
{
  v2 = (v0 + OBJC_IVAR____TtC19SoftwareUpdateUIKit16ReactiveDownload_observations);
  swift_beginAccess();
  v3 = *v2;
  sub_26B078640();
  swift_endAccess();
  return v3;
}

uint64_t sub_26B01B5C4(uint64_t a1)
{
  sub_26B078640();
  v3 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit16ReactiveDownload_observations);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t ReactiveDownload.init(representing:)(uint64_t a1)
{
  v53 = a1;
  v69 = 0;
  v68 = 0;
  v38 = 0;
  v40 = sub_26B078360();
  v8 = *(v40 - 8);
  v9 = v40 - 8;
  v6[0] = (v8[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53);
  v43 = v6 - v6[0];
  v69 = v2;
  v68 = v1;
  v35 = &qword_2803DE000;
  sub_26B078350();
  v47 = &qword_2803DE000;
  v7 = OBJC_IVAR____TtC19SoftwareUpdateUIKit16ReactiveDownload_observations;
  v6[1] = sub_26B078070();
  v6[2] = sub_26B07A760();
  sub_26AEECE8C();
  *(v1 + v7) = sub_26B07A1B0();
  sub_26B078350();
  MEMORY[0x277D82BE0](v53);
  v3 = v54;
  *(v54 + 16) = v53;
  v67[1] = v3;
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  v4 = v35[326];
  v37 = v8[2];
  v36 = v8 + 2;
  v37(v43, v54 + v4, v40);
  v39 = sub_26B01D6EC();
  v12 = Observable<>.observe<A, B, C>(_:of:at:using:sink:)(v11, v53, v10, v43, v38, v38, v39);
  v42 = v8[1];
  v41 = v8 + 1;
  v42(v43, v40);

  v13 = v67;
  v67[0] = v12;
  v14 = &v66;
  v48 = 33;
  v49 = 0;
  swift_beginAccess();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DC540, qword_26B0907E0);
  sub_26B07A1D0();
  swift_endAccess();
  MEMORY[0x277D82BD8](v67[2]);
  v65[1] = v54;
  v16 = swift_getKeyPath();
  v15 = swift_getKeyPath();
  v37(v43, v54 + v35[326], v40);
  v17 = Observable<>.observe<A, B, C>(_:of:at:using:sink:)(v16, v53, v15, v43, v38, v38, v39);
  v42(v43, v40);

  v18 = v65;
  v65[0] = v17;
  v19 = &v64;
  swift_beginAccess();
  sub_26B07A1D0();
  swift_endAccess();
  MEMORY[0x277D82BD8](v65[2]);
  v63[1] = v54;
  v21 = swift_getKeyPath();
  v20 = swift_getKeyPath();
  v37(v43, v54 + v35[326], v40);
  v22 = Observable<>.observe<A, B, C>(_:of:at:using:sink:)(v21, v53, v20, v43, v38, v38, v39);
  v42(v43, v40);

  v23 = v63;
  v63[0] = v22;
  v24 = &v62;
  swift_beginAccess();
  sub_26B07A1D0();
  swift_endAccess();
  MEMORY[0x277D82BD8](v63[2]);
  v61[1] = v54;
  v26 = swift_getKeyPath();
  v25 = swift_getKeyPath();
  v37(v43, v54 + v35[326], v40);
  v27 = Observable<>.observe<A, B, C>(_:of:at:using:sink:)(v26, v53, v25, v43, v38, v38, v39);
  v42(v43, v40);

  v28 = v61;
  v61[0] = v27;
  v29 = &v60;
  swift_beginAccess();
  sub_26B07A1D0();
  swift_endAccess();
  MEMORY[0x277D82BD8](v61[2]);
  v59[1] = v54;
  v31 = swift_getKeyPath();
  v30 = swift_getKeyPath();
  v37(v43, v54 + v35[326], v40);
  v32 = Observable<>.observe<A, B, C>(_:of:at:using:sink:)(v31, v53, v30, v43, v38, v38, v39);
  v42(v43, v40);

  v33 = v59;
  v59[0] = v32;
  v34 = &v58;
  swift_beginAccess();
  sub_26B07A1D0();
  swift_endAccess();
  MEMORY[0x277D82BD8](v59[2]);
  v57[1] = v54;
  v45 = swift_getKeyPath();
  v44 = swift_getKeyPath();
  v37(v43, v54 + v35[326], v40);
  v46 = Observable<>.observe<A, B, C>(_:of:at:using:sink:)(v45, v53, v44, v43, v38, v38, v39);
  v42(v43, v40);

  v50 = v57;
  v57[0] = v46;
  v52 = &v56;
  swift_beginAccess();
  sub_26B07A1D0();
  swift_endAccess();
  MEMORY[0x277D82BD8](v57[2]);
  MEMORY[0x277D82BD8](v53);
  return v54;
}

BOOL sub_26B01BEF0(uint64_t *a1, uint64_t *a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEA98, &qword_26B090C68);
  v3 = sub_26B079D70();

  return (v3 & 1) != 0;
}

uint64_t sub_26B01C014@<X0>(uint64_t *a1@<X0>, void **a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;

  v9 = v4;
  v7 = *a2;

  ReactiveDownload.subscript.getter(v7, &v8);
  *a3 = v8;
}

double sub_26B01C094@<D0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  swift_getObjectType();
  *a2 = [v3 isAutoDownload];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

uint64_t sub_26B01C108@<X0>(uint64_t a1@<X8>)
{

  *a1 = ReactiveDownload.phase.getter();
  *(a1 + 8) = v1 & 1;
}

double sub_26B01C170@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  swift_getObjectType();
  *a2 = [v3 progress];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

uint64_t sub_26B01C1EC@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_unknownObjectRetain();
  swift_getObjectType();
  *a2 = [v3 phase];
  return swift_unknownObjectRelease();
}

uint64_t ReactiveDownload.isDone.getter()
{
  v21 = 0;
  v16 = sub_26B078360();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v9 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v16);
  v15 = &v3[-v9];
  v21 = v11;
  (*(v13 + 16))(&v3[-v9], v11 + OBJC_IVAR____TtC19SoftwareUpdateUIKit16ReactiveDownload_registrar, v0);
  v10 = &v20;
  v20 = v11;
  KeyPath = swift_getKeyPath();
  sub_26B01D6EC();
  sub_26B078320();
  v1 = v11;

  (*(v13 + 8))(v15, v16);
  v17 = *(v1 + 16);
  MEMORY[0x277D82BE0](v17);
  swift_getObjectType();
  v18 = [v17 progress];
  MEMORY[0x277D82BD8](v17);
  if (v18)
  {
    v8 = v18;
    v5 = v18;
    swift_getObjectType();
    v6 = [v5 isDone];
    swift_unknownObjectRelease();
    v7 = v6;
  }

  else
  {
    v7 = 2;
  }

  v19 = v7;
  if (v7 == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = v19;
  }

  return v4 & 1;
}

uint64_t sub_26B01C490@<X0>(_BYTE *a1@<X8>)
{

  *a1 = ReactiveDownload.isDone.getter() & 1;
}

uint64_t sub_26B01C4F0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_unknownObjectRetain();
  swift_getObjectType();
  *a2 = [v3 isDone];
  return swift_unknownObjectRelease();
}

float ReactiveDownload.percentComplete.getter()
{
  v24 = 0;
  v18 = sub_26B078360();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v11 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v18);
  v17 = &v4[-v11];
  v24 = v13;
  (*(v15 + 16))(&v4[-v11], v13 + OBJC_IVAR____TtC19SoftwareUpdateUIKit16ReactiveDownload_registrar, v0);
  v12 = &v23;
  v23 = v13;
  KeyPath = swift_getKeyPath();
  sub_26B01D6EC();
  sub_26B078320();
  v1 = v13;

  (*(v15 + 8))(v17, v18);
  v19 = *(v1 + 16);
  MEMORY[0x277D82BE0](v19);
  swift_getObjectType();
  v20 = [v19 progress];
  MEMORY[0x277D82BD8](v19);
  if (v20)
  {
    v10 = v20;
    v6 = v20;
    swift_getObjectType();
    [v6 percentComplete];
    v7 = v2;
    swift_unknownObjectRelease();
    v8 = v7;
    v9 = 0;
  }

  else
  {
    v8 = 0.0;
    v9 = 1;
  }

  v21 = v8;
  v22 = v9 & 1;
  if (v9)
  {
    return 0.0;
  }

  else
  {
    return v21;
  }
}

uint64_t sub_26B01C7A8@<X0>(float *a1@<X8>)
{

  *a1 = ReactiveDownload.percentComplete.getter();
}

uint64_t sub_26B01C800@<X0>(void **a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;
  swift_unknownObjectRetain();
  swift_getObjectType();
  [v4 percentComplete];
  *a2 = v2;
  return swift_unknownObjectRelease();
}

float ReactiveDownload.normalizedPercentComplete.getter()
{
  v24 = 0;
  v18 = sub_26B078360();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v11 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v18);
  v17 = &v4[-v11];
  v24 = v13;
  (*(v15 + 16))(&v4[-v11], v13 + OBJC_IVAR____TtC19SoftwareUpdateUIKit16ReactiveDownload_registrar, v0);
  v12 = &v23;
  v23 = v13;
  KeyPath = swift_getKeyPath();
  sub_26B01D6EC();
  sub_26B078320();
  v1 = v13;

  (*(v15 + 8))(v17, v18);
  v19 = *(v1 + 16);
  MEMORY[0x277D82BE0](v19);
  swift_getObjectType();
  v20 = [v19 progress];
  MEMORY[0x277D82BD8](v19);
  if (v20)
  {
    v10 = v20;
    v6 = v20;
    swift_getObjectType();
    [v6 normalizedPercentComplete];
    v7 = v2;
    swift_unknownObjectRelease();
    v8 = v7;
    v9 = 0;
  }

  else
  {
    v8 = 0.0;
    v9 = 1;
  }

  v21 = v8;
  v22 = v9 & 1;
  if (v9)
  {
    return 0.0;
  }

  else
  {
    return v21;
  }
}

uint64_t sub_26B01CAB4@<X0>(float *a1@<X8>)
{

  *a1 = ReactiveDownload.normalizedPercentComplete.getter();
}

uint64_t sub_26B01CB0C@<X0>(void **a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;
  swift_unknownObjectRetain();
  swift_getObjectType();
  [v4 normalizedPercentComplete];
  *a2 = v2;
  return swift_unknownObjectRelease();
}

double ReactiveDownload.timeRemaining.getter()
{
  v24 = 0;
  v18 = sub_26B078360();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v11 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v18);
  v17 = &v4 - v11;
  v24 = v13;
  (*(v15 + 16))(&v4 - v11, v13 + OBJC_IVAR____TtC19SoftwareUpdateUIKit16ReactiveDownload_registrar, v0);
  v12 = &v23;
  v23 = v13;
  KeyPath = swift_getKeyPath();
  sub_26B01D6EC();
  sub_26B078320();
  v1 = v13;

  (*(v15 + 8))(v17, v18);
  v19 = *(v1 + 16);
  MEMORY[0x277D82BE0](v19);
  swift_getObjectType();
  v20 = [v19 progress];
  MEMORY[0x277D82BD8](v19);
  if (v20)
  {
    v10 = v20;
    v6 = v20;
    swift_getObjectType();
    [v6 timeRemaining];
    v7 = v2;
    swift_unknownObjectRelease();
    v8 = v7;
    v9 = 0;
  }

  else
  {
    v8 = 0.0;
    v9 = 1;
  }

  v21 = v8;
  v22 = v9 & 1;
  if (v9)
  {
    return 0.0;
  }

  else
  {
    return v21;
  }
}

uint64_t sub_26B01CDC0@<X0>(double *a1@<X8>)
{

  *a1 = ReactiveDownload.timeRemaining.getter();
}

uint64_t sub_26B01CE18@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_unknownObjectRetain();
  swift_getObjectType();
  [v4 timeRemaining];
  *a2 = v2;
  return swift_unknownObjectRelease();
}

uint64_t ReactiveDownload.deinit()
{
  memset(__b, 0, sizeof(__b));
  v8 = v0;
  swift_beginAccess();
  sub_26B078640();
  swift_endAccess();
  sub_26B078070();
  sub_26AEECE8C();
  sub_26B07A1C0();
  memcpy(__b, v9, sizeof(__b));
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEA60, &qword_26B089A60);
    sub_26B07A1E0();
    if (!v6)
    {
      break;
    }

    sub_26B078060();
    (MEMORY[0x277D82BD8])();
  }

  sub_26AEECFFC(__b);
  MEMORY[0x277D82BD8](*(v5 + 16));
  v2 = v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit16ReactiveDownload_registrar;
  v3 = sub_26B078360();
  v4 = *(*(v3 - 8) + 8);
  (v4)(v2);
  sub_26AEED080((v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit16ReactiveDownload_observations));
  v4(v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit16ReactiveDownload___observationRegistrar, v3);
  return v5;
}

uint64_t ReactiveDownload.isStalled.getter()
{
  v21 = 0;
  v16 = sub_26B078360();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v9 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v16);
  v15 = &v3[-v9];
  v21 = v11;
  (*(v13 + 16))(&v3[-v9], v11 + OBJC_IVAR____TtC19SoftwareUpdateUIKit16ReactiveDownload_registrar, v0);
  v10 = &v20;
  v20 = v11;
  KeyPath = swift_getKeyPath();
  sub_26B01D6EC();
  sub_26B078320();
  v1 = v11;

  (*(v13 + 8))(v15, v16);
  v17 = *(v1 + 16);
  MEMORY[0x277D82BE0](v17);
  swift_getObjectType();
  v18 = [v17 progress];
  MEMORY[0x277D82BD8](v17);
  if (v18)
  {
    v8 = v18;
    v5 = v18;
    swift_getObjectType();
    v6 = [v5 isStalled];
    swift_unknownObjectRelease();
    v7 = v6;
  }

  else
  {
    v7 = 2;
  }

  v19 = v7;
  if (v7 == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = v19;
  }

  return v4 & 1;
}

uint64_t sub_26B01D300@<X0>(_BYTE *a1@<X8>)
{

  *a1 = ReactiveDownload.isStalled.getter() & 1;
}

BOOL sub_26B01D360(uint64_t *a1, uint64_t *a2, uint64_t a3)
{

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEA90, &qword_26B090C60);
  sub_26B07A930();
  v4 = sub_26B079D70();

  return (v4 & 1) != 0;
}

uint64_t sub_26B01D454(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEA90, &qword_26B090C60);
  sub_26B07A930();
  return sub_26B079CE0();
}

uint64_t sub_26B01D4C4@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = a4;
  v8 = a2;
  v13 = *(a2 + a3 - 8);
  v17 = v13;
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v12 = &v6 - v6;
  v7 = *v4;

  v16 = v7;
  v15 = v7;
  v14 = *v8;

  ReactiveDownload.subscript.getter(v14, v12);
  (*(v9 + 32))(v11, v12, v13);
}

void *sub_26B01D640(void *a1, void *a2)
{
  v4 = *a1;

  result = a1;
  *a2 = v4;
  a2[1] = a1[1];
  return result;
}

void *sub_26B01D6C8(void *result, void *a2)
{
  *a2 = result[1];
  a2[1] = *result;
  return result;
}

unint64_t sub_26B01D6EC()
{
  v2 = qword_2803DEA38;
  if (!qword_2803DEA38)
  {
    type metadata accessor for ReactiveDownload(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEA38);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for ReactiveDownload(uint64_t a1)
{
  v2 = qword_2803DEA80;
  if (!qword_2803DEA80)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_26B01D858(uint64_t *a1, void *a2)
{
  v4 = *a1;

  *a2 = v4;
  return result;
}

uint64_t sub_26B01DC88@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = a4;
  v8 = a2;
  v13 = *(a2 + a3 - 8);
  v17 = v13;
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v12 = &v6 - v6;
  v7 = *v4;

  v16 = v7;
  v15 = v7;
  v14 = *v8;

  ReactiveDownload.subscript.getter(v14, v12);
  (*(v9 + 32))(v11, v12, v13);
}

uint64_t sub_26B01DDB0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v9 = a1;
  v11 = a2;
  v10 = *(a3 + a4 - 8);
  v17 = v10;
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v12 = &v6 - v6;
  v14 = *v4;

  (*(v7 + 16))(v12, v9, v10);
  v13 = *v11;

  v16 = v13;
  v15 = v13;
  ReactiveDownload.subscript.setter(v12, v14);
}

void *sub_26B01DF24(void *a1, void *a2)
{
  v4 = *a1;

  result = a1;
  *a2 = v4;
  a2[1] = a1[1];
  return result;
}

uint64_t ReactiveDownload.subscript.setter(uint64_t a1, void *a2)
{
  v13 = a1;
  v10 = a2;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v14 = *(*a2 + *MEMORY[0x277D84568] + 8);
  v19 = v14;
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v7 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v9 = &v6 - v7;
  v18 = v3;
  v17 = v4;
  v16 = v2;
  v8 = *(v2 + 16);
  MEMORY[0x277D82BE0](v8);
  swift_getObjectType();

  (*(v11 + 16))(v9, v13, v14);
  v15 = v8;
  swift_setAtReferenceWritableKeyPath();
  swift_unknownObjectRelease();

  return (*(v11 + 8))(v13, v14);
}

BOOL sub_26B01E108(uint64_t *a1, uint64_t *a2, uint64_t a3)
{

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEA90, &qword_26B090C60);
  sub_26B07A6E0();
  v4 = sub_26B079D70();

  return (v4 & 1) != 0;
}

uint64_t sub_26B01E218(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEA90, &qword_26B090C60);
  sub_26B07A6E0();
  return sub_26B079CE0();
}

void *sub_26B01E2A0(void *result, void *a2)
{
  *a2 = result[1];
  a2[1] = *result;
  return result;
}

void (*ReactiveDownload.subscript.modify(void *a1, void *a2))(void **a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x30uLL, 46968);
  *a1 = v7;
  v7[1] = v2;
  *v7 = a2;
  v3 = *(*a2 + *MEMORY[0x277D84568] + 8);
  v7[2] = v3;
  v5 = *(v3 - 8);
  v7[3] = v5;
  v6 = *(v5 + 64);
  v7[4] = __swift_coroFrameAllocStub(v6, 46968);
  v10 = __swift_coroFrameAllocStub(v6, 46968);
  v7[5] = v10;

  ReactiveDownload.subscript.getter(a2, v10);
  return sub_26B01E438;
}

void sub_26B01E438(void **a1, char a2)
{
  v9 = *a1;
  if (a2)
  {
    v5 = v9[5];
    v6 = v9[4];
    v3 = v9[2];
    v4 = *v9;
    v2 = v9[3];
    (*(v2 + 16))();
    ReactiveDownload.subscript.setter(v6, v4);
    (*(v2 + 8))(v5, v3);

    free(v5);
    free(v6);
  }

  else
  {
    v7 = v9[5];
    v8 = v9[4];
    ReactiveDownload.subscript.setter(v7, *v9);

    free(v7);
    free(v8);
  }

  free(v9);
}

uint64_t sub_26B01E558@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC19SoftwareUpdateUIKit16ReactiveDownload___observationRegistrar;
  v2 = sub_26B078360();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_26B01E5CC(void *a1)
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
  (*(v9 + 16))(&v5 - v2, v6 + OBJC_IVAR____TtC19SoftwareUpdateUIKit16ReactiveDownload___observationRegistrar, v1);
  v8 = &v13;
  v13 = v6;
  sub_26B01D6EC();
  sub_26B078320();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_26B01E73C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
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
  (*(v15 + 16))(v11 - v6, v17 + OBJC_IVAR____TtC19SoftwareUpdateUIKit16ReactiveDownload___observationRegistrar, v5);
  v24 = &v27;
  v27 = v17;
  sub_26B01D6EC();
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

uint64_t sub_26B01E9E0(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v3 = sub_26B07A820();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3 & 1;
}

uint64_t ReactiveDownload.id.getter()
{
  v21 = 0;
  v23 = v0;
  v17 = *(v0 + 16);
  MEMORY[0x277D82BE0](v17);
  swift_getObjectType();
  v18 = [v17 descriptor];
  if (v18)
  {
    v21 = v18;
    MEMORY[0x277D82BD8](v17);
    v20[0] = sub_26B07A740();
    v20[1] = v1;
    v2 = sub_26B079D00("");
    MEMORY[0x26D66D910](v2);

    swift_getObjectType();
    swift_unknownObjectRetain();
    v12 = [v18 updateName];
    v10 = sub_26B079E00();
    v11 = v3;
    swift_unknownObjectRelease();
    v19[0] = v10;
    v19[1] = v11;
    sub_26B07A720();
    sub_26AE9BCC0(v19);
    *&v4 = MEMORY[0x277D82BD8](v12).n128_u64[0];
    v5 = sub_26B079D00(":", 1, 1, v4);
    MEMORY[0x26D66D910](v5);

    v13 = *(v16 + 16);
    MEMORY[0x277D82BE0](v13);
    swift_getObjectType();
    [v13 hash];
    MEMORY[0x277D82BD8](v13);
    sub_26B07A710();
    v6 = sub_26B079D00("", 0, 1);
    MEMORY[0x26D66D910](v6);

    sub_26B078640();
    sub_26AEB9F6C(v20);
    v14 = sub_26B079EB0();
    swift_unknownObjectRelease();
    return v14;
  }

  else
  {
    MEMORY[0x277D82BD8](v17);
    v8 = *(v16 + 16);
    MEMORY[0x277D82BE0](v8);
    swift_getObjectType();
    v9 = [v8 hash];
    MEMORY[0x277D82BD8](v8);
    v22 = v9;
    return sub_26B079E70();
  }
}

uint64_t sub_26B01EDF8@<X0>(uint64_t *a1@<X8>)
{
  result = ReactiveDownload.id.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t ReactiveDownload.hash(into:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  MEMORY[0x277D82BE0](v4);
  swift_getObjectType();
  [v4 hash];
  MEMORY[0x277D82BD8](v4);
  return sub_26B07A8F0();
}

unint64_t sub_26B01EF50()
{
  v2 = qword_2803DEA68;
  if (!qword_2803DEA68)
  {
    type metadata accessor for ReactiveDownload(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEA68);
    return WitnessTable;
  }

  return v2;
}

uint64_t static ReactiveDownload.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 16);
  MEMORY[0x277D82BE0](v5);
  swift_getObjectType();
  v4 = *(a2 + 16);
  MEMORY[0x277D82BE0](v4);
  swift_getObjectType();
  v6 = [v5 isEqual_];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v5);
  return v6;
}

uint64_t ReactiveDownload.description.getter()
{
  v2 = *(v0 + 16);
  MEMORY[0x277D82BE0](v2);
  swift_getObjectType();
  v3 = [v2 description];
  v4 = sub_26B079E00();
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  return v4;
}

uint64_t ReactiveDownload.debugDescription.getter()
{
  v2 = *(v0 + 16);
  MEMORY[0x277D82BE0](v2);
  swift_getObjectType();
  v3 = [v2 description];
  v4 = sub_26B079E00();
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  return v4;
}

unint64_t sub_26B01F2A0()
{
  v2 = qword_2803DEA70;
  if (!qword_2803DEA70)
  {
    type metadata accessor for ReactiveDownload(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEA70);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B01F37C(uint64_t a1)
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

double sub_26B01F4CC@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v9 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v10 = [v9 title];
  if (v10)
  {
    v4 = sub_26B079E00();
    v5 = v2;
    MEMORY[0x277D82BD8](v10);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *a2 = v6;
  a2[1] = v7;
  *&result = MEMORY[0x277D82BD8](v9).n128_u64[0];
  return result;
}

void BetaProgramView.init(program:status:action:)(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = 0u;
  v11 = 0u;
  v5 = *a2;

  *&v10 = a1;
  BYTE8(v10) = v5;

  *&v11 = a3;
  *(&v11 + 1) = a4;
  sub_26B01F668(&v10, a5);

  sub_26AF1CFC8();
}

uint64_t sub_26B01F668(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  *a2 = v4;
  *(a2 + 8) = *(a1 + 8);
  v6 = a1[2];
  v7 = a1[3];

  result = a2;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  return result;
}

BOOL static BetaProgramView.Status.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    if (*a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_26B01F8B8()
{
  v2 = qword_2803DEAA0;
  if (!qword_2803DEAA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEAA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B01F998()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_26B01F9EC()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t BetaProgramView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v9 = sub_26B02015C;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEAA8, &qword_26B090C70);
  v16 = *(v19 - 8);
  v17 = v19 - 8;
  v3 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v18 = &v3 - v3;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEAB0, &qword_26B090C78);
  v4 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20);
  v24 = &v3 - v4;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEAB8, &qword_26B090C80);
  v5 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v28 = &v3 - v5;
  v6 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v3 - v5);
  v29 = &v3 - v6;
  v37 = &v3 - v6;
  v13 = *v7;
  v8 = *(v7 + 8);
  v12 = v7[2];
  v14 = v7[3];
  *&v35 = v13;
  BYTE8(v35) = v8;
  *&v36 = v12;
  *(&v36 + 1) = v14;

  v10 = &v30;
  v31 = v13;
  v32 = v8;
  v33 = v12;
  v34 = v14;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEAC0, &unk_26B090C88);
  sub_26B020170();
  sub_26B079900();

  v15 = sub_26B0797C0();
  sub_26B020364();
  sub_26B0794D0();

  (*(v16 + 8))(v18, v19);
  sub_26B079BA0();
  v22 = sub_26B0213AC();
  v23 = sub_26B021454();
  v21 = MEMORY[0x277CE14A8];
  sub_26B021390();
  sub_26B079460();
  sub_26B0214CC(v24);
  v27 = sub_26B021570();
  sub_26AE9463C(v28, v26, v29);
  sub_26B0216A0(v28);
  sub_26B021744(v29, v28);
  sub_26AE94B4C(v28, v26, v25);
  sub_26B0216A0(v28);
  return sub_26B0216A0(v29);
}

uint64_t sub_26B01FE04@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a5;
  v23 = a1;
  v14 = a2;
  v15 = a3;
  v24 = a4;
  v22 = sub_26B02204C;
  v17 = sub_26B022060;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEAC0, &unk_26B090C88);
  v25 = *(v31 - 8);
  v26 = v31 - 8;
  v12 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23);
  v29 = &v12 - v12;
  v13 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v30 = &v12 - v13;
  v46 = &v12 - v13;
  *&v44 = v7;
  BYTE8(v44) = v8;
  *&v45 = v9;
  *(&v45 + 1) = v10;

  v16 = &v39;
  v40 = v23;
  v41 = v14;
  v42 = v15;
  v43 = v24;

  v18 = &v34;
  v35 = v23;
  v36 = v14;
  v37 = v15;
  v38 = v24;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB40, &unk_26B08AC20);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEAD8, &qword_26B090C98);
  v21 = sub_26AEB349C();
  sub_26B020218();
  sub_26B078B70();

  v28 = sub_26B020170();
  sub_26AE9463C(v29, v31, v30);
  v33 = *(v25 + 8);
  v32 = v25 + 8;
  v33(v29, v31);
  (*(v25 + 16))(v29, v30, v31);
  sub_26AE94B4C(v29, v31, v27);
  v33(v29, v31);
  return (v33)(v30, v31);
}

unint64_t sub_26B020170()
{
  v2 = qword_2803DEAC8;
  if (!qword_2803DEAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEAC0, &unk_26B090C88);
    sub_26AEB349C();
    sub_26B020218();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEAC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B020218()
{
  v2 = qword_2803DEAD0;
  if (!qword_2803DEAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEAD8, &qword_26B090C98);
    sub_26B0202BC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEAD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B0202BC()
{
  v2 = qword_2803DEAE0;
  if (!qword_2803DEAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEAE8, &unk_26B090CA0);
    sub_26AFE3FB8();
    sub_26AF1FC80();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEAE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B020364()
{
  v2 = qword_2803DEAF0;
  if (!qword_2803DEAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEAA8, &qword_26B090C70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEAF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B0203EC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45 = a5;
  v61 = a1;
  v60 = a2;
  v58 = a3;
  v59 = a4;
  v77 = 0;
  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  v67 = 0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEAE8, &unk_26B090CA0);
  v47 = (*(*(v46 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46);
  v48 = &v21 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A0, &qword_26B08FE70);
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  v52 = (v50[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49);
  v53 = &v21 - v52;
  v54 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v21 - v52);
  v55 = &v21 - v54;
  v56 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v21 - v54);
  v57 = &v21 - v56;
  v77 = &v21 - v56;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEAD8, &qword_26B090C98);
  v63 = (*(*(v62 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v61);
  v64 = (&v21 - v63);
  v65 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v8);
  v66 = &v21 - v65;
  v76 = &v21 - v65;
  *&v74 = v10;
  BYTE8(v74) = v11;
  *&v75 = v12;
  *(&v75 + 1) = v13;
  if (v11)
  {
    if (v60 == 1)
    {
      sub_26B079D00("checkmark", 9, 1, v9);
      v16 = sub_26B079830();
      v25 = v72;
      v72[0] = v16;
      v24 = sub_26B079770();
      sub_26B0794D0();

      sub_26AF1FC54();
      v26 = v71;
      v71[0] = v72[1];
      v71[1] = v72[2];
      v71[2] = v72[3];
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCC28, &unk_26B090CB0);
      v35 = sub_26AF1FC80();
      v38 = v73;
      sub_26AE9463C(v26, v34, v73);
      sub_26AF1FD24();
      v27 = v73[0];
      v28 = v73[1];
      v29 = v73[2];

      v30 = v69;
      v69[0] = v27;
      v69[1] = v28;
      v69[2] = v29;
      v37 = v70;
      sub_26AE94B4C(v69, v34, v70);
      sub_26AF1FD24();
      v31 = v70[0];
      v32 = v70[1];
      v33 = v70[2];

      v36 = v68;
      v68[0] = v31;
      v68[1] = v32;
      v68[2] = v33;
      v17 = sub_26AFE3FB8();
      sub_26AE94CA8(v36, v49, v34, v17, v35, v48);
      sub_26AF1FD24();
      v18 = sub_26B0202BC();
      sub_26AE94BB0(v48, v46, MEMORY[0x277CE1428], v18, MEMORY[0x277CE1410], v64);
      sub_26B022444(v48);
      sub_26B02208C(v64, v66);
      sub_26AF1FD24();
      sub_26AF1FD24();
    }

    else
    {
      sub_26B079B90();
      v21 = MEMORY[0x277CE1428];
      v22 = MEMORY[0x277CE1410];
      sub_26AE9463C(v23, MEMORY[0x277CE1428], v23);
      sub_26AE94B4C(v23, v21, v23);
      v19 = sub_26B0202BC();
      sub_26AE94CA8(v23, v46, v21, v19, v22, v64);
      sub_26B02208C(v64, v66);
    }
  }

  else
  {
    sub_26B078A60();
    v42 = sub_26AFE3FB8();
    sub_26AE9463C(v55, v49, v57);
    v43 = v50[1];
    v44 = v50 + 1;
    v43(v55, v49);
    v67 = v55;
    v40 = v50[2];
    v39 = v50 + 2;
    v40(v53, v57, v49);
    sub_26AE94B4C(v53, v49, v55);
    v43(v53, v49);
    v40(v53, v55, v49);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCC28, &unk_26B090CB0);
    v14 = sub_26AF1FC80();
    sub_26AE94BB0(v53, v49, v41, v42, v14, v48);
    v43(v53, v49);
    v15 = sub_26B0202BC();
    sub_26AE94BB0(v48, v46, MEMORY[0x277CE1428], v15, MEMORY[0x277CE1410], v64);
    sub_26B022444(v48);
    sub_26B02208C(v64, v66);
    v43(v55, v49);
    v43(v57, v49);
  }

  sub_26B0221D4(v66, v64);
  sub_26B020218();
  sub_26AE94B4C(v64, v62, v45);
  sub_26B022358(v64);
  return sub_26B022358(v66);
}

uint64_t *sub_26B020CC4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v109 = 0u;
  memset(__b, 0, 0x21uLL);
  v106 = 0u;
  v107 = 0u;
  v94 = 0u;
  v95 = 0u;
  v80 = 0;
  v78 = 0u;
  v79 = 0u;
  v65 = 0u;
  v66 = 0u;
  *&v109 = a1;
  BYTE8(v109) = a2;
  v110 = a3;
  v111 = a4;

  if (a1)
  {
    v80 = a1;
    KeyPath = swift_getKeyPath();
    ReactiveBetaProgram.subscript.getter(KeyPath);
    v74 = v76;
    v75 = v77;
    sub_26AE95974();
    v70 = sub_26B0792E0();
    v71 = v5;
    v72 = v6;
    v73 = v7;
    v28 = v5;
    v29 = v6;
    v30 = v7;

    v67[0] = v70;
    v67[1] = v28;
    v68 = v29 & 1;
    v69 = v30;
    v37 = MEMORY[0x277CE0BD8];
    v38 = MEMORY[0x277CE0BC8];
    sub_26AE9463C(v67, MEMORY[0x277CE0BD8], &v78);
    sub_26AE95B40(v67);
    v31 = v78;
    v32 = v79;
    v33 = *(&v79 + 1);
    sub_26AE95D28(v78, *(&v78 + 1), v79 & 1);
    sub_26B078640();
    v62 = v31;
    v63 = v32 & 1;
    v64 = v33;
    sub_26AE94B4C(&v62, v37, &v65);
    sub_26AE95B40(&v62);
    v34 = v65;
    v35 = v66;
    v36 = *(&v66 + 1);
    sub_26AE95D28(v65, *(&v65 + 1), v66 & 1);
    sub_26B078640();
    v54 = v34;
    v55 = v35 & 1;
    v56 = v36;
    sub_26AE94BB0(&v54, v37, v37, v38, v38, &v57);
    sub_26AE95B40(&v54);
    v40 = v57;
    v41 = v58;
    v42 = v59;
    v43 = v60;
    v39 = v61;
    sub_26AEB4364(v57, v58, v59, v60);
    __b[0] = v40;
    __b[1] = v41;
    __b[2] = v42;
    __b[3] = v43;
    LOBYTE(__b[4]) = v39 & 1;
    sub_26AE95B40(&v65);
    sub_26AE95B40(&v78);

    v44 = v40;
    v45 = v41;
    v46 = v42;
    v47 = v43;
    v48 = v39;
  }

  else
  {
    sub_26B079D00("Off", 3, 1);
    sub_26B078E10();
    v8 = sub_26B02D0D0();
    MEMORY[0x277D82BE0](*v8);
    v103 = "Beta Updates are Off";
    v104 = 20;
    v105 = 2;
    v99 = sub_26B0792C0();
    v100 = v9;
    v101 = v10;
    v102 = v11;
    v96[0] = v99;
    v96[1] = v9;
    v97 = v10 & 1;
    v98 = v11;
    v20 = MEMORY[0x277CE0BD8];
    v21 = MEMORY[0x277CE0BC8];
    sub_26AE9463C(v96, MEMORY[0x277CE0BD8], &v106);
    sub_26AE95B40(v96);
    v14 = v106;
    v15 = v107;
    v16 = *(&v107 + 1);
    sub_26AE95D28(v106, *(&v106 + 1), v107 & 1);
    sub_26B078640();
    v91 = v14;
    v92 = v15 & 1;
    v93 = v16;
    sub_26AE94B4C(&v91, v20, &v94);
    sub_26AE95B40(&v91);
    v17 = v94;
    v18 = v95;
    v19 = *(&v95 + 1);
    sub_26AE95D28(v94, *(&v94 + 1), v95 & 1);
    sub_26B078640();
    v83 = v17;
    v84 = v18 & 1;
    v85 = v19;
    sub_26AE94CA8(&v83, v20, v20, v21, v21, &v86);
    sub_26AE95B40(&v83);
    v23 = v86;
    v24 = v87;
    v25 = v88;
    v26 = v89;
    v22 = v90;
    sub_26AEB4364(v86, v87, v88, v89);
    __b[0] = v23;
    __b[1] = v24;
    __b[2] = v25;
    __b[3] = v26;
    LOBYTE(__b[4]) = v22 & 1;
    sub_26AE95B40(&v94);
    sub_26AE95B40(&v106);
    v44 = v23;
    v45 = v24;
    v46 = v25;
    v47 = v26;
    v48 = v22;
  }

  v81[0] = v44;
  v81[1] = v45;
  v81[2] = v46;
  v81[3] = v47;
  v82 = v48 & 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB40, &unk_26B08AC20);
  sub_26AEB349C();
  sub_26AE94B4C(v81, v13, a5);
  sub_26AEB450C(v81);
  return sub_26AEB450C(__b);
}

unint64_t sub_26B0213AC()
{
  v2 = qword_2803DEAF8;
  if (!qword_2803DEAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEAB0, &qword_26B090C78);
    sub_26B020364();
    sub_26AEF8D88();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEAF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B021454()
{
  v2 = qword_2803DEB00;
  if (!qword_2803DEB00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEB00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B0214CC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEAA8, &qword_26B090C70);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEAB0, &qword_26B090C78);

  return a1;
}

unint64_t sub_26B021570()
{
  v2 = qword_2803DEB08;
  if (!qword_2803DEB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEAB8, &qword_26B090C80);
    sub_26B0213AC();
    sub_26B021618();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEB08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B021618()
{
  v2 = qword_2803DEB10;
  if (!qword_2803DEB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEB18, &qword_26B090CC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEB10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B0216A0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEAA8, &qword_26B090C70);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEAB0, &qword_26B090C78);

  return a1;
}

uint64_t sub_26B021744(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEAA8, &qword_26B090C70);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEAB0, &qword_26B090C78) + 36);
  v6 = *(a1 + v5);

  *(a2 + v5) = v6;
  v7 = *(a1 + v5 + 8);

  *(a2 + v5 + 8) = v7;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEAB8, &qword_26B090C80);
  result = a2;
  *(a2 + *(v3 + 36)) = *(a1 + *(v3 + 36));
  return result;
}

unint64_t sub_26B0218D4()
{
  v2 = qword_2803DEB20;
  if (!qword_2803DEB20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEB20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B021984(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 32))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 16) < 0x100000000uLL)
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

uint64_t sub_26B021AC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 - 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BetaProgramView.Status(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for BetaProgramView.Status(_BYTE *result, unsigned int a2, unsigned int a3)
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

void *sub_26B02208C(const void *a1, void *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB28, &qword_26B090E60);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v7 - 8) + 64));
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB30, &qword_26B090E68);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }

    else
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A0, &qword_26B08FE70);
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

void *sub_26B0221D4(uint64_t *a1, void *a2)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB28, &qword_26B090E60);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v9 - 8) + 64));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB30, &qword_26B090E68);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = *a1;

      *a2 = v4;
      v5 = a1[1];

      a2[1] = v5;
      v6 = a1[2];

      a2[2] = v6;
    }

    else
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A0, &qword_26B08FE70);
      (*(*(v2 - 8) + 16))(a2, a1);
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_26B022358(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB28, &qword_26B090E60);
  if (!swift_getEnumCaseMultiPayload())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB30, &qword_26B090E68);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A0, &qword_26B08FE70);
      (*(*(v1 - 8) + 8))(a1);
    }
  }

  return a1;
}

uint64_t sub_26B022444(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB30, &qword_26B090E68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A0, &qword_26B08FE70);
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_26B022504(uint64_t a1)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  swift_getKeyPath();
  sub_26B078A30();

  v5 = v3;
  LOBYTE(v6) = v4 & 1;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = a1;
  swift_unknownObjectRelease();
  sub_26AFE7744(&v5);
  return v3;
}

uint64_t sub_26B022610(uint64_t a1, char a2, uint64_t a3)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();

  return v4;
}

uint64_t sub_26B0226E8(uint64_t a1, char a2)
{

  *v2 = a1;
  *(v2 + 8) = a2 & 1;
}

uint64_t sub_26B022770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v54 = a5;
  v24 = a1;
  v27 = MEMORY[0x277D85700];
  v30 = sub_26B02390C;
  v29 = sub_26B0239AC;
  v34 = sub_26B024240;
  v36 = sub_26B025E04;
  v51 = MEMORY[0x277CDEDF8];
  v85 = 0;
  v84 = 0;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v86 = a2;
  v87 = a3;
  v88 = a4;
  v38 = a2;
  v31 = a3;
  v39 = a4;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB38, &qword_26B090EA8);
  v52 = *(v58 - 8);
  v53 = v58 - 8;
  v21 = *(v52 + 64);
  v20 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24);
  v56 = &v20 - v20;
  MEMORY[0x28223BE20](v5);
  v57 = &v20 - v6;
  v85 = &v20 - v6;
  v84 = v7;
  v81 = v38;
  v32 = 1;
  LOBYTE(v82) = v31 & 1;
  v83 = v8;
  v78[2] = v38;
  v79 = v31 & 1;
  v80 = v8;
  v9 = sub_26B022D14(v38, v31 & 1, v8);
  v42 = v78;
  v78[0] = v9;
  v78[1] = v10;

  swift_unknownObjectRetain();
  v22 = sub_26B07A130();
  v23 = sub_26B07A120();
  v25 = 7;
  v11 = swift_allocObject();
  v12 = v27;
  v13 = v31;
  v14 = v32;
  v15 = v38;
  v16 = v39;
  v28 = v11;
  *(v11 + 16) = v23;
  *(v11 + 24) = v12;
  *(v11 + 32) = v15;
  *(v11 + 40) = v13 & 1 & v14;
  *(v11 + 48) = v16;
  v26 = sub_26B07A120();
  v17 = swift_allocObject();
  v18 = v27;
  *(v17 + 16) = v26;
  *(v17 + 24) = v18;
  sub_26B0799F0();
  v40 = v75;
  v41 = v76;
  v33 = v77;

  swift_unknownObjectRetain();
  v35 = v64;
  v64[2] = v38;
  v65 = v31 & 1 & v32;
  v66 = v39;

  swift_unknownObjectRetain();
  v37 = v61;
  v61[2] = v38;
  v62 = v31 & 1 & v32;
  v63 = v39;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DEB40, &unk_26B090EB0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC748, &qword_26B08A188);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB50, &unk_26B090540);
  v47 = sub_26B025E3C();
  v48 = sub_26AE95974();
  v49 = sub_26AEFDA40();
  v50 = sub_26AF7DC04();
  v44 = MEMORY[0x277D837D0];
  sub_26B0795E0();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  sub_26AE9BCC0(v42);
  v67 = v43;
  v68 = v44;
  v69 = v45;
  v70 = v46;
  v71 = v47;
  v72 = v48;
  v73 = v49;
  v74 = v50;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26AE9463C(v56, v58, v57);
  v60 = *(v52 + 8);
  v59 = v52 + 8;
  v60(v56, v58);
  (*(v52 + 16))(v56, v57, v58);
  sub_26AE94B4C(v56, v58, v54);
  v60(v56, v58);
  return (v60)(v57, v58);
}

uint64_t sub_26B022D14(uint64_t a1, int a2, uint64_t a3)
{
  v41 = a1;
  v42 = a2;
  v43 = a3;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  memset(__b, 0, 0x29uLL);
  v73 = 0;
  v83 = v41;
  v84 = v42;
  v85 = v43;
  v62 = v41;
  v60 = v42;
  v49 = v43;
  v46 = 0;
  v44 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v45 = v14 - v44;
  v47 = (*(*(sub_26B079DE0() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46);
  v48 = v14 - v47;
  v50 = sub_26B079DC0();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  v56 = *(v51 + 64);
  v53 = (v56 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62);
  v54 = v14 - v53;
  v55 = (v56 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v57 = v14 - v55;
  v58 = (v56 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v59 = v14 - v58;
  v80 = v5;
  v61 = 1;
  LOBYTE(v81) = v60 & 1;
  v82 = v6;

  v78 = v62;
  v79 = v60 & 1 & v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();
  v63 = v77;

  ReactiveUIManager.presentedDialog.getter(v75);
  v64 = v75[0];
  v65 = v75[1];
  v66 = v75[2];
  v67 = v75[3];
  v68 = v75[4];
  v69 = v76;
  if (v76 == 255)
  {

LABEL_11:
    v21 = sub_26B079D00("", 0, 1);
    v22 = v12;
    return v21;
  }

  v35 = v64;
  v36 = v65;
  v37 = v66;
  v38 = v67;
  v39 = v68;
  v40 = v69;
  v34 = v69;
  v33 = v68;
  v32 = v67;
  v31 = v66;
  v30 = v65;
  v29 = v64;
  __b[0] = v64;
  __b[1] = v65;
  __b[2] = v66;
  __b[3] = v67;
  __b[4] = v68;
  LOBYTE(__b[5]) = v69;

  sub_26AE9FC2C(v29, v30, v31, v32, v33, v34);
  if (v34)
  {
    sub_26AEA00D4(v29, v30, v31, v32, v33, v34);
LABEL_10:
    sub_26AEA00D4(v29, v30, v31, v32, v33, v34);
    goto LABEL_11;
  }

  v26 = v29;
  v27 = v30;
  v28 = v32;
  v23 = v30;
  v24 = v29;
  v73 = v29;

  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_getObjectType();
  v25 = [v24 isEqual_];
  swift_unknownObjectRelease();
  if (v25)
  {
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  sub_26B079DB0();
  *&v17[1] = 1;
  sub_26B079D00("OSName ", 7, 1);
  v14[0] = v7;
  sub_26B079DA0();

  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = [v24 productVersion];
  v14[1] = sub_26B079E00();
  v14[2] = v8;
  swift_unknownObjectRelease();
  sub_26B079D90();

  *&v9 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  sub_26B079D00(" Download Will Be Deleted", 25, v17[1] & 1, v9);
  v16 = v10;
  sub_26B079DA0();

  (*(v51 + 16))(v57, v59, v50);
  (*(v51 + 32))(v54, v57, v50);
  (*(v51 + 8))(v59, v50);
  sub_26B079DD0();
  v18 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v18);
  sub_26AEFB5C4();
  v70 = 0;
  v71 = 0;
  v72 = *v17 & 0x100;
  v19 = sub_26B079E40();
  v20 = v11;
  swift_unknownObjectRelease();
  sub_26AEA00D4(v29, v30, v31, v32, v33, v34);
  v21 = v19;
  v22 = v20;
  return v21;
}

uint64_t sub_26B023658@<X0>(uint64_t a1@<X2>, char a2@<W3>, uint64_t a3@<X4>, _BYTE *a4@<X8>)
{
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v15 = a1;
  v16 = a2 & 1;
  v17 = a3;

  v13 = a1;
  v14 = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();

  ReactiveUIManager.presentedDialog.getter(v11);
  if (v12 == 255)
  {
  }

  else
  {
    v6 = v11[0];
    if (!v12)
    {

      swift_unknownObjectRelease();

      swift_getObjectType();
      swift_unknownObjectRetain();
      swift_getObjectType();
      v5 = [v6 isEqual_];
      swift_unknownObjectRelease();
      *a4 = (v5 ^ 1) & 1;
      return swift_unknownObjectRelease();
    }

    sub_26AEA00D4(v11[0], v11[1], v11[2], v11[3], v11[4], v12);
  }

  *a4 = 0;
  return result;
}

uint64_t sub_26B0238BC()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_26B0239B8@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  v49 = sub_26B0263BC;
  v31 = sub_26B02643C;
  v73 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v67 = 0;
  v74 = a1;
  v75 = a2;
  v76 = a3;
  v45 = a1;
  LODWORD(v46) = a2;
  v47 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758, &unk_26B08F810);
  v32 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v48 = &v24[-v32 - 5];
  v44 = 0;
  v33 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v44);
  v43 = &v24[-v33 - 5];
  v5 = sub_26B079DE0();
  v34 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v41 = &v24[-v34 - 5];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDD20, &qword_26B0881A0);
  v55 = *(v57 - 8);
  v56 = v57 - 8;
  v40 = v55[8];
  v35 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v57);
  v36 = &v24[-v35 - 5];
  v37 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v24[-v35 - 5]);
  v38 = &v24[-v37 - 5];
  v39 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v24[-v37 - 5]);
  v60 = &v24[-v39 - 5];
  v6 = MEMORY[0x28223BE20](&v24[-v39 - 5]);
  v53 = &v24[-v7 - 5];
  v73 = &v24[-v7 - 5];
  v70 = v8;
  HIDWORD(v46) = 1;
  LOBYTE(v71) = v46 & 1;
  v72 = v47;
  sub_26B079D00("Cancel", 6, 1, v6);
  sub_26B079D80();
  v42 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v42);
  sub_26AEFB5C4();
  v68[2] = 0;
  v68[3] = 0;
  v69 = *(&v46 + 3) & 0x100;
  v9 = sub_26B079E40();
  v51 = v68;
  v68[0] = v9;
  v68[1] = v10;
  sub_26B078970();
  v11 = sub_26B078980();
  (*(*(v11 - 8) + 56))(v48, 0, HIDWORD(v46));

  swift_unknownObjectRetain();
  v12 = swift_allocObject();
  v13 = v46;
  v14 = BYTE4(v46);
  v15 = v47;
  v50 = v12;
  *(v12 + 16) = v45;
  *(v12 + 24) = v13 & 1 & v14;
  *(v12 + 32) = v15;
  v52 = sub_26AE95974();
  sub_26B079910();
  v54 = sub_26AE9C224();
  sub_26AE9463C(v60, v57, v53);
  v58 = v55[1];
  v59 = v55 + 1;
  v58(v60, v57);
  v67 = v60;
  v28 = 2;
  *&v24[1] = 1;
  sub_26B079D00("OK");
  sub_26B079D80();
  v23 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v23);
  sub_26AEFB5C4();
  v65[2] = 0;
  v65[3] = 0;
  v66 = *v24 & 0x100;
  v16 = sub_26B079E40();
  v25 = v65;
  v65[0] = v16;
  v65[1] = v17;

  swift_unknownObjectRetain();
  v18 = swift_allocObject();
  v19 = v46;
  v20 = v24[1];
  v21 = v47;
  *(v18 + 16) = v45;
  *(v18 + 24) = v19 & 1 & v20;
  *(v18 + 32) = v21;
  sub_26B079920();
  sub_26AE9463C(v38, v57, v60);
  v58(v38, v57);
  v27 = v55[2];
  v26 = v55 + 2;
  v27(v38, v53, v57);
  v29 = v64;
  v64[0] = v38;
  v27(v36, v60, v57);
  v64[1] = v36;
  v63[0] = v57;
  v63[1] = v57;
  v61 = v54;
  v62 = v54;
  sub_26AFD49C4(v29, v28, v63, v30);
  v58(v36, v57);
  v58(v38, v57);
  v58(v60, v57);
  return (v58)(v53, v57);
}

uint64_t sub_26B024278(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v62 = 0;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v71 = 0;
  v70 = 0;
  v49 = 0;
  v88 = a1;
  v89 = a2;
  v90 = a3;
  v57 = a1;
  v50 = a1;
  v58 = a2;
  v51 = a2;
  v52 = a3;
  v53 = sub_26B078580();
  v54 = *(v53 - 8);
  v55 = v54;
  v56 = *(v54 + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v59 = v7 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v57;
  LOBYTE(v86) = v58;
  v87 = v3;
  sub_26B078550();
  v64 = sub_26B078570();
  v60 = v64;
  v63 = sub_26B07A2A0();
  v61 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v65 = sub_26B07A760();
  if (os_log_type_enabled(v64, v63))
  {
    v4 = v49;
    v40 = sub_26B07A420();
    v36 = v40;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v38 = 0;
    v41 = sub_26AEA3B70(0, v37, v37);
    v39 = v41;
    v42 = sub_26AEA3B70(v38, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v69 = v40;
    v68 = v41;
    v67 = v42;
    v43 = 0;
    v44 = &v69;
    sub_26AEA3BC4(0, &v69);
    sub_26AEA3BC4(v43, v44);
    v66 = v65;
    v45 = v7;
    MEMORY[0x28223BE20](v7);
    v46 = &v7[-6];
    v7[-4] = v5;
    v7[-3] = &v68;
    v7[-2] = &v67;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10, &qword_26B088A50);
    sub_26AE9CC18();
    sub_26B079FF0();
    v48 = v4;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v60, v61, "User Action: Clicked 'Cancel' on the purge confirmation dialog.", v36, 2u);
      v34 = 0;
      sub_26AEA3C24(v39, 0, v37);
      sub_26AEA3C24(v42, v34, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();

      v35 = v48;
    }
  }

  else
  {

    v35 = v49;
  }

  (*(v55 + 8))(v59, v53);

  v83 = v50;
  v84 = v51 & 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();
  v27 = v82;

  ReactiveUIManager.presentedDialog.getter(v80);
  v28 = v80[0];
  v29 = v80[1];
  v30 = v80[2];
  v31 = v80[3];
  v32 = v80[4];
  v33 = v81;
  if (v81 != 255)
  {
    v20 = v28;
    v21 = v29;
    v22 = v30;
    v23 = v31;
    v24 = v32;
    v25 = v33;
    v14 = v25;
    v15 = v24;
    v16 = v23;
    v17 = v22;
    v18 = v21;
    v19 = v20;
    if (v25)
    {
      sub_26AEA00D4(v19, v18, v17, v16, v15, v14);
    }

    else
    {
      v10 = v19;
      v11 = v18;
      v12 = v17;
      v13 = v16;
      v9 = v16;
      v8 = v17;
      v7[2] = v19;
      v70 = v17;
      v71 = v16;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v8(2);
    }
  }

  v78 = v50;
  v79 = v51 & 1;
  sub_26B078A10();
  v7[1] = v77;

  v72 = 0uLL;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = -1;
  ReactiveUIManager.presentedDialog.setter(&v72);
}

uint64_t sub_26B024A84(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v62 = 0;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v71 = 0;
  v70 = 0;
  v49 = 0;
  v88 = a1;
  v89 = a2;
  v90 = a3;
  v57 = a1;
  v50 = a1;
  v58 = a2;
  v51 = a2;
  v52 = a3;
  v53 = sub_26B078580();
  v54 = *(v53 - 8);
  v55 = v54;
  v56 = *(v54 + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v59 = v7 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v57;
  LOBYTE(v86) = v58;
  v87 = v3;
  sub_26B078550();
  v64 = sub_26B078570();
  v60 = v64;
  v63 = sub_26B07A2A0();
  v61 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v65 = sub_26B07A760();
  if (os_log_type_enabled(v64, v63))
  {
    v4 = v49;
    v40 = sub_26B07A420();
    v36 = v40;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v38 = 0;
    v41 = sub_26AEA3B70(0, v37, v37);
    v39 = v41;
    v42 = sub_26AEA3B70(v38, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v69 = v40;
    v68 = v41;
    v67 = v42;
    v43 = 0;
    v44 = &v69;
    sub_26AEA3BC4(0, &v69);
    sub_26AEA3BC4(v43, v44);
    v66 = v65;
    v45 = v7;
    MEMORY[0x28223BE20](v7);
    v46 = &v7[-6];
    v7[-4] = v5;
    v7[-3] = &v68;
    v7[-2] = &v67;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10, &qword_26B088A50);
    sub_26AE9CC18();
    sub_26B079FF0();
    v48 = v4;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v60, v61, "User Action: Clicked 'OK' on the purge confirmation dialog.", v36, 2u);
      v34 = 0;
      sub_26AEA3C24(v39, 0, v37);
      sub_26AEA3C24(v42, v34, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();

      v35 = v48;
    }
  }

  else
  {

    v35 = v49;
  }

  (*(v55 + 8))(v59, v53);

  v83 = v50;
  v84 = v51 & 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();
  v27 = v82;

  ReactiveUIManager.presentedDialog.getter(v80);
  v28 = v80[0];
  v29 = v80[1];
  v30 = v80[2];
  v31 = v80[3];
  v32 = v80[4];
  v33 = v81;
  if (v81 != 255)
  {
    v20 = v28;
    v21 = v29;
    v22 = v30;
    v23 = v31;
    v24 = v32;
    v25 = v33;
    v14 = v25;
    v15 = v24;
    v16 = v23;
    v17 = v22;
    v18 = v21;
    v19 = v20;
    if (v25)
    {
      sub_26AEA00D4(v19, v18, v17, v16, v15, v14);
    }

    else
    {
      v10 = v19;
      v11 = v18;
      v12 = v17;
      v13 = v16;
      v9 = v16;
      v8 = v17;
      v7[2] = v19;
      v70 = v17;
      v71 = v16;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v8(0);
    }
  }

  v78 = v50;
  v79 = v51 & 1;
  sub_26B078A10();
  v7[1] = v77;

  v72 = 0uLL;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = -1;
  ReactiveUIManager.presentedDialog.setter(&v72);
}

uint64_t sub_26B02528C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v139 = 0;
  memset(__b, 0, 0x21uLL);
  v136 = 0u;
  v137 = 0u;
  v124 = 0u;
  v125 = 0u;
  memset(v112, 0, 0x21uLL);
  v102 = 0;
  v100 = 0u;
  v101 = 0u;
  v88 = 0u;
  v89 = 0u;
  v165 = a1;
  v166 = a2;
  v167 = a3;
  v162 = a1;
  v163 = a2 & 1;
  v164 = a3;

  v155 = a1;
  v156 = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();

  ReactiveUIManager.presentedDialog.getter(&v149);
  if (v154 == 255)
  {

LABEL_15:
    memset(v142, 0, sizeof(v142));
    v143 = -1;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB40, &unk_26B08AC20);
    sub_26AEB349C();
    sub_26AF09CCC(v142, v14, &v144);
    v15 = v144;
    v16 = v145;
    v17 = v146;
    v18 = v147;
    v19 = v148;
    sub_26AF7E500(v144, v145, v146, v147, v148);
    v157 = v15;
    v158 = v16;
    v159 = v17;
    v160 = v18;
    v161 = v19;
    v31 = v15;
    v32 = v16;
    v33 = v17;
    v34 = v18;
    v35 = v19;
    goto LABEL_16;
  }

  v72 = v150;
  if (v154)
  {
    sub_26AEA00D4(v149, v150, v151, v152, v153, v154);

    goto LABEL_15;
  }

  v139 = v150;

  swift_unknownObjectRelease();

  swift_getObjectType();
  swift_unknownObjectRetain();
  v71 = [v72 progress];
  swift_unknownObjectRelease();
  if (v71)
  {
    swift_getObjectType();
    v69 = [v71 isDone];
    swift_unknownObjectRelease();
    v70 = v69;
  }

  else
  {
    v70 = 2;
  }

  if (v70 == 2 || (v102 = v70 & 1, (v70 & 1) == 0))
  {
    HIBYTE(v44) = 1;
    sub_26B079D00("An update has already started downloading automatically. Choosing to download this update will delete the existing update.", 122, 1);
    sub_26B078E10();
    v8 = sub_26B02D0D0();
    MEMORY[0x277D82BE0](*v8);
    v133 = 0;
    v134 = 0;
    v135 = v44 & 0x100;
    v129 = sub_26B0792C0();
    v130 = v9;
    v131 = v10;
    v132 = v11;
    v126[0] = v129;
    v126[1] = v9;
    v127 = v10 & 1;
    v128 = v11;
    v42 = MEMORY[0x277CE0BD8];
    v43 = MEMORY[0x277CE0BC8];
    sub_26AE9463C(v126, MEMORY[0x277CE0BD8], &v136);
    sub_26AE95B40(v126);
    v36 = v136;
    v37 = v137;
    v38 = *(&v137 + 1);
    sub_26AE95D28(v136, *(&v136 + 1), v137 & 1);
    sub_26B078640();
    v121 = v36;
    v122 = v37 & 1;
    v123 = v38;
    sub_26AE94B4C(&v121, v42, &v124);
    sub_26AE95B40(&v121);
    v39 = v124;
    v40 = v125;
    v41 = *(&v125 + 1);
    sub_26AE95D28(v124, *(&v124 + 1), v125 & 1);
    sub_26B078640();
    v113 = v39;
    v114 = v40 & 1;
    v115 = v41;
    sub_26AE94CA8(&v113, v42, v42, v43, v43, &v116);
    sub_26AE95B40(&v113);
    v46 = v116;
    v47 = v117;
    v48 = v118;
    v49 = v119;
    v45 = v120;
    sub_26AEB4364(v116, v117, v118, v119);
    __b[0] = v46;
    __b[1] = v47;
    __b[2] = v48;
    __b[3] = v49;
    LOBYTE(__b[4]) = v45 & 1;
    sub_26AE95B40(&v124);
    sub_26AE95B40(&v136);
    v64 = v46;
    v65 = v47;
    v66 = v48;
    v67 = v49;
    v68 = v45;
  }

  else
  {
    HIBYTE(v58) = 1;
    sub_26B079D00("An update has already been downloaded automatically. Choosing to download this update will delete the existing update.", 118, 1);
    sub_26B078E10();
    v4 = sub_26B02D0D0();
    MEMORY[0x277D82BE0](*v4);
    v97 = 0;
    v98 = 0;
    v99 = v58 & 0x100;
    v93 = sub_26B0792C0();
    v94 = v5;
    v95 = v6;
    v96 = v7;
    v90[0] = v93;
    v90[1] = v5;
    v91 = v6 & 1;
    v92 = v7;
    v56 = MEMORY[0x277CE0BD8];
    v57 = MEMORY[0x277CE0BC8];
    sub_26AE9463C(v90, MEMORY[0x277CE0BD8], &v100);
    sub_26AE95B40(v90);
    v50 = v100;
    v51 = v101;
    v52 = *(&v101 + 1);
    sub_26AE95D28(v100, *(&v100 + 1), v101 & 1);
    sub_26B078640();
    v85 = v50;
    v86 = v51 & 1;
    v87 = v52;
    sub_26AE94B4C(&v85, v56, &v88);
    sub_26AE95B40(&v85);
    v53 = v88;
    v54 = v89;
    v55 = *(&v89 + 1);
    sub_26AE95D28(v88, *(&v88 + 1), v89 & 1);
    sub_26B078640();
    v77 = v53;
    v78 = v54 & 1;
    v79 = v55;
    sub_26AE94BB0(&v77, v56, v56, v57, v57, &v80);
    sub_26AE95B40(&v77);
    v60 = v80;
    v61 = v81;
    v62 = v82;
    v63 = v83;
    v59 = v84;
    sub_26AEB4364(v80, v81, v82, v83);
    __b[0] = v60;
    __b[1] = v61;
    __b[2] = v62;
    __b[3] = v63;
    LOBYTE(__b[4]) = v59 & 1;
    sub_26AE95B40(&v88);
    sub_26AE95B40(&v100);
    v64 = v60;
    v65 = v61;
    v66 = v62;
    v67 = v63;
    v68 = v59;
  }

  v110[0] = v64;
  v110[1] = v65;
  v110[2] = v66;
  v110[3] = v67;
  v111 = v68 & 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB40, &unk_26B08AC20);
  sub_26AEB349C();
  sub_26AE94B4C(v110, v25, v112);
  sub_26AEB450C(v110);
  v20 = v112[0];
  v21 = v112[1];
  v22 = v112[2];
  v23 = v112[3];
  v24 = v112[4];
  sub_26AEB4364(v112[0], v112[1], v112[2], v112[3]);
  v103[0] = v20;
  v103[1] = v21;
  v103[2] = v22;
  v103[3] = v23;
  v104 = v24;
  sub_26AF09CCC(v103, v25, &v105);
  sub_26AF7E608(v103);
  v26 = v105;
  v27 = v106;
  v28 = v107;
  v29 = v108;
  v30 = v109;
  sub_26AF7E500(v105, v106, v107, v108, v109);
  v157 = v26;
  v158 = v27;
  v159 = v28;
  v160 = v29;
  v161 = v30;
  sub_26AEB450C(v112);
  sub_26AEB450C(__b);
  swift_unknownObjectRelease();
  v31 = v26;
  v32 = v27;
  v33 = v28;
  v34 = v29;
  v35 = v30;
LABEL_16:
  v140[0] = v31;
  v140[1] = v32;
  v140[2] = v33;
  v140[3] = v34;
  v141 = v35;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB50, &unk_26B090540);
  sub_26AF7DC04();
  sub_26AE94B4C(v140, v13, a4);
  sub_26AF7E608(v140);
  return sub_26AF7E608(&v157);
}

unint64_t sub_26B025E3C()
{
  v2 = qword_2803DEB58;
  if (!qword_2803DEB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DEB40, &unk_26B090EB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEB58);
    return WitnessTable;
  }

  return v2;
}