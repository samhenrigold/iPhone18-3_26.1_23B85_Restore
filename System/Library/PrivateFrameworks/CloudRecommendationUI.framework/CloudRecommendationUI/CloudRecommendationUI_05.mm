uint64_t sub_243A98D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = sub_243AC1528();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A0F0, &qword_243AC98C8);
  v4[15] = swift_task_alloc();
  sub_243AC2A58();
  v4[16] = sub_243AC2A48();
  v7 = sub_243AC2A28();
  v4[17] = v7;
  v4[18] = v6;

  return MEMORY[0x2822009F8](sub_243A98EC8, v7, v6);
}

uint64_t sub_243A98EC8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 80);
  v3 = type metadata accessor for InnerContextualRecommendation(0);
  sub_243A224B4(v2 + *(v3 + 40), v1, &qword_27ED9A0F0, &qword_243AC98C8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D40, &qword_243AC7200);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    v6 = *(v0 + 120);

    sub_243A2251C(v6, &qword_27ED9A0F0, &qword_243AC98C8);
LABEL_10:

    v13 = *(v0 + 8);

    return v13();
  }

  if (*(*(v0 + 80) + *(v3 + 48)))
  {
    sub_243A9BFFC();

    sub_243AC14D8();
    v8 = *(v0 + 120);
    v9 = *(v0 + 80);

    (*(v5 + 8))(v8, v4);
    v10 = *(v0 + 64);
    v11 = *(v9 + 16);
    *(v0 + 186) = v11;
    v12 = *(v9 + 24);
    *(v0 + 152) = v12;
    *(v0 + 16) = v11;
    *(v0 + 24) = v12;
    *(v0 + 160) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D28, &qword_243AC8810);
    sub_243AC2068();
    if (*(v0 + 184))
    {

      goto LABEL_10;
    }

    v14 = *(v10 + 16);
    if (v14)
    {
      v15 = *(v0 + 96);
      v17 = *(v15 + 16);
      v16 = v15 + 16;
      v18 = v10 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
      v60 = *(v16 + 56);
      v61 = v17;
      v59 = *MEMORY[0x277D232A0];
      v56 = *MEMORY[0x277D23288];
      v57 = *MEMORY[0x277D23248];
      v55 = *MEMORY[0x277D23258];
      v53 = *MEMORY[0x277D23278];
      v52 = *MEMORY[0x277D23270];
      v19 = (v16 - 8);
      v20 = MEMORY[0x277D84F90];
      v58 = (v16 + 80);
      while (1)
      {
        v22 = *(v0 + 104);
        v21 = *(v0 + 112);
        v23 = *(v0 + 88);
        v61(v21, v18, v23);
        v61(v22, v21, v23);
        v24 = (*(v16 + 72))(v22, v23);
        if (v24 == v59)
        {
          break;
        }

        if (v24 == v57)
        {
          v29 = *(v0 + 104);
          (*v58)(v29, *(v0 + 88));
          *(v0 + 72) = *(*v29 + 16);
          v27 = sub_243AC2EB8();
          v28 = v30;
          goto LABEL_19;
        }

        if (v24 == v56)
        {
          (*v58)(*(v0 + 104), *(v0 + 88));
          *(v0 + 48) = 0;
          *(v0 + 56) = 0xE000000000000000;
          sub_243AC2AC8();

          v27 = *(v0 + 48);
          v28 = *(v0 + 56);
          goto LABEL_20;
        }

        if (v24 == v55)
        {
          v34 = *(v0 + 104);
          (*v58)(v34, *(v0 + 88));
          if (*(*v34 + 16))
          {
            v35 = 1702195828;
          }

          else
          {
            v35 = 0x65736C6166;
          }

          if (*(*v34 + 16))
          {
            v36 = 0xE400000000000000;
          }

          else
          {
            v36 = 0xE500000000000000;
          }

          MEMORY[0x245D46C90](v35, v36);

          v27 = 0;
          v28 = 0xE000000000000000;
          goto LABEL_20;
        }

        v37 = *(v0 + 88);
        v38 = v24 == v53 || v24 == v52;
        v54 = *(v0 + 112);
        if (v38)
        {
          v50 = *v19;
          (*v19)(*(v0 + 104), v37);
          type metadata accessor for DecodableStateError(0);
          sub_243A9A9CC(&qword_27ED98D50, type metadata accessor for DecodableStateError, &unk_243AC6B78);
          v42 = swift_allocError();
          v40 = v39;
          v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0) + 48);
          v61(v40, v54, v37);
          *(v40 + v41) = MEMORY[0x277D837D0];
          v46 = v50;
          swift_willThrow();
        }

        else
        {
          v51 = *(v0 + 104);
          type metadata accessor for DecodableStateError(0);
          sub_243A9A9CC(&qword_27ED98D50, type metadata accessor for DecodableStateError, &unk_243AC6B78);
          v42 = swift_allocError();
          v44 = v43;
          v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0) + 48);
          v61(v44, v54, v37);
          *(v44 + v45) = MEMORY[0x277D837D0];
          swift_willThrow();
          v46 = *v19;
          (*v19)(v51, v37);
        }

        v47 = *(v0 + 112);
        v48 = *(v0 + 88);

        v46(v47, v48);
LABEL_25:
        v18 += v60;
        if (!--v14)
        {

          goto LABEL_45;
        }
      }

      v25 = *(v0 + 104);
      (*v58)(v25, *(v0 + 88));
      v26 = *v25;
      v27 = *(*v25 + 16);
      v28 = *(v26 + 24);

LABEL_19:

LABEL_20:
      (*v19)(*(v0 + 112), *(v0 + 88));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_243AA0D1C(0, *(v20 + 2) + 1, 1, v20);
      }

      v32 = *(v20 + 2);
      v31 = *(v20 + 3);
      if (v32 >= v31 >> 1)
      {
        v20 = sub_243AA0D1C((v31 > 1), v32 + 1, 1, v20);
      }

      *(v20 + 2) = v32 + 1;
      v33 = &v20[16 * v32];
      *(v33 + 4) = v27;
      *(v33 + 5) = v28;
      goto LABEL_25;
    }

    v20 = MEMORY[0x277D84F90];
LABEL_45:
    *(v0 + 168) = v20;
    v49 = swift_task_alloc();
    *(v0 + 176) = v49;
    *v49 = v0;
    v49[1] = sub_243A99724;

    return sub_243A42228(v20);
  }

  else
  {
    sub_243AC15F8();
    sub_243A9A9CC(&qword_27ED99F38, MEMORY[0x277D23330], MEMORY[0x277D233A0]);

    return sub_243AC18F8();
  }
}

uint64_t sub_243A99724()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_243A99868, v3, v2);
}

uint64_t sub_243A99868()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 186);

  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  *(v0 + 185) = 1;
  sub_243AC2078();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_243A99914(uint64_t a1)
{
  v2 = type metadata accessor for InnerContextualRecommendation(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  swift_getKeyPath();
  sub_243A9AA14(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InnerContextualRecommendation);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_243A9BEA8(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F40, &qword_243AC52E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A1F8, &qword_243AC9CA0);
  sub_243A491E8(&qword_27ED991A0, &qword_27ED98F40, &qword_243AC52E0, MEMORY[0x277D83980]);
  sub_243A9BB20(&qword_27ED9A230, MEMORY[0x277D85378]);
  sub_243A9B8F4();
  return sub_243AC20E8();
}

uint64_t sub_243A99B44@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v5 = type metadata accessor for InnerContextualRecommendation(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A200, &qword_243AC9CA8);
  v38 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = *a1;
  v35 = type metadata accessor for InnerContextualRecommendation;
  sub_243A9AA14(a2, v8, type metadata accessor for InnerContextualRecommendation);
  v13 = *(v6 + 80);
  v14 = (v13 + 16) & ~v13;
  v39 = v14;
  v37 = v13;
  v34 = v14 + v7;
  v15 = swift_allocObject();
  sub_243A9BEA8(v8, v15 + v14);
  *&v46 = v12;
  v40 = sub_243A2CFF0(0, &qword_27ED98F70, 0x277CFB1B0);
  v41 = v12;
  sub_243AC2058();
  v16 = v44;
  *v11 = v43;
  *(v11 + 1) = v16;
  *(v11 + 4) = 65792;
  LOBYTE(v46) = 0;
  sub_243AC2058();
  v17 = v44;
  v11[24] = v43;
  *(v11 + 4) = v17;
  *(v11 + 5) = sub_243A9C304;
  *(v11 + 6) = v15;
  *(v11 + 7) = sub_243A9A190;
  *(v11 + 8) = 0;
  v18 = *(type metadata accessor for Card(0) + 48);
  *&v11[v18] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991C0, &unk_243AC5EE0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v18) = sub_243AC1C38();
  sub_243AC1718();
  v19 = &v11[*(v9 + 36)];
  *v19 = v18;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  v36 = a2;
  v46 = *(a2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A238, &qword_243AC9D30);
  sub_243AC2088();
  v24 = v45;
  sub_243A9AA14(a2, v8, type metadata accessor for InnerContextualRecommendation);
  v25 = swift_allocObject();
  v26 = v39;
  sub_243A9BEA8(v8, v25 + v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A208, &qword_243AC9CB0);
  sub_243A9BA64();
  sub_243A9BB20(&qword_27ED991A8, MEMORY[0x277CFB100]);
  sub_243A9BB74();
  v27 = v42;
  sub_243AC1F38();

  sub_243A2251C(v11, &qword_27ED9A200, &qword_243AC9CA8);
  sub_243A9AA14(v36, v8, v35);
  v28 = (v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  sub_243A9BEA8(v8, v29 + v26);
  v30 = v41;
  *(v29 + v28) = v41;
  v31 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A1F8, &qword_243AC9CA0) + 36));
  sub_243AC17E8();
  v32 = v30;
  result = sub_243AC2A78();
  *v31 = &unk_243AC9D40;
  v31[1] = v29;
  return result;
}

uint64_t sub_243A99FA8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v20 - v6;
  v21 = *(a3 + 32);
  v20[1] = a1;
  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A238, &qword_243AC9D30);
  sub_243AC2078();
  v9 = *(a3 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED999C0, &unk_243AC4C40);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_243AC51B0;
  v11 = [v8 identifier];
  v12 = sub_243AC2858();
  v14 = v13;

  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  v15 = sub_243AC2A98();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  sub_243AC2A58();

  v16 = sub_243AC2A48();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  *(v17 + 32) = v10;
  *(v17 + 40) = 3;
  *(v17 + 56) = 0;
  *(v17 + 64) = 0;
  *(v17 + 48) = v9;
  *(v17 + 72) = 1537;
  sub_243A3306C(0, 0, v7, &unk_243AC5220, v17);
}

uint64_t sub_243A9A190()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99408, &qword_243AC67D8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_243AC51B0;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0xD000000000000014;
  *(v0 + 40) = 0x8000000243ACE1B0;
  sub_243AC2FA8();
}

void **sub_243A9A22C@<X0>(void **result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    v5 = *result;
    v6 = *(a2 + 56);

    sub_243AB8A60(v6, v5, v3, v9);
    v7 = sub_243AC18A8();
    result = sub_243AC1C68();
    v8 = v9[1];
    *a3 = v9[0];
    *(a3 + 16) = v8;
    *(a3 + 32) = v9[2];
    *(a3 + 48) = v7;
    *(a3 + 56) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_243A9A2BC(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v2[9] = swift_task_alloc();
  sub_243AC2A58();
  v2[10] = sub_243AC2A48();
  v4 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243A9A38C, v4, v3);
}

uint64_t sub_243A9A38C()
{
  v17 = v0;
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];

  v4 = *(v2 + 56);
  v5 = *MEMORY[0x277CFB158];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98EE8, &unk_243AC8050);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_243AC51A0;
  *(inited + 32) = v3;
  v16 = 3;
  v7 = v3;
  sub_243A3D620(v5, inited, 0, &v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  v8 = [v7 identifier];
  v9 = sub_243AC2858();
  v11 = v10;

  v12 = sub_243AC2A98();
  (*(*(v12 - 8) + 56))(v1, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = v4;
  *(v13 + 40) = v9;
  *(v13 + 48) = v11;
  *(v13 + 56) = 3;

  sub_243A3306C(0, 0, v1, &unk_243AC87F0, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_243A9A560@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A40, &qword_243AC4850);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v19 - v5;
  v7 = type metadata accessor for InnerContextualRecommendation(0);
  sub_243A224B4(a1 + *(v7 + 44), v6, &qword_27ED98A40, &qword_243AC4850);
  v8 = sub_243AC1618();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_243A2251C(v6, &qword_27ED98A40, &qword_243AC4850);
    goto LABEL_5;
  }

  if (*(a1 + *(v7 + 48)))
  {

    v14 = sub_243AC1608();
    v16 = v15;

    (*(v9 + 8))(v6, v8);
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      v19[1] = v14;
      v19[2] = v16;
      sub_243A4FC18();
      result = sub_243AC1D88();
      v12 = v18 & 1;
      goto LABEL_6;
    }

LABEL_5:
    result = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
LABEL_6:
    *a2 = result;
    a2[1] = v11;
    a2[2] = v12;
    a2[3] = v13;
    return result;
  }

  sub_243AC15F8();
  sub_243A9A9CC(&qword_27ED99F38, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
  result = sub_243AC18F8();
  __break(1u);
  return result;
}

uint64_t sub_243A9A7E8(uint64_t a1)
{
  v2 = sub_243AC1738();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_243AC1968();
}

uint64_t sub_243A9A8B0@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  *a2 = v4;
  return result;
}

uint64_t sub_243A9A930(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243AC16B8();
}

uint64_t sub_243A9A9CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_243A9AA14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_243A9AA7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_243A9AADC(uint64_t a1, uint64_t a2)
{
  sub_243A9A9CC(&qword_27ED992E0, type metadata accessor for ContextualRecommendationView, protocol conformance descriptor for ContextualRecommendationView);
  sub_243A9A9CC(&qword_27ED9A118, type metadata accessor for ContextualRecommendationView, &protocol conformance descriptor for ContextualRecommendationView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_243A9AC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A0F0, &qword_243AC98C8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A40, &qword_243AC4850);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_243A9ADA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A0F0, &qword_243AC98C8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A40, &qword_243AC4850);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_243A9AEE0(uint64_t a1)
{
  sub_243A9B5AC(319, &qword_27ED9A140, &qword_27ED98D40, &qword_243AC7200, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_243A9B610(319, &qword_27ED98A80, MEMORY[0x277D23340]);
    if (v2 <= 0x3F)
    {
      sub_243A9AFD4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_243A9AFD4(uint64_t a1)
{
  if (!qword_27ED9A148)
  {
    sub_243A2CFF0(255, &qword_27ED9A150, 0x277CB8F30);
    v1 = sub_243AC2C38();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED9A148);
    }
  }
}

unint64_t sub_243A9B040()
{
  result = qword_27ED9A158;
  if (!qword_27ED9A158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A160, &unk_243AC9A50);
    sub_243A9A9CC(&qword_27ED9A110, type metadata accessor for InnerContextualRecommendation, "5yt>do");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A158);
  }

  return result;
}

uint64_t sub_243A9B110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A0F0, &qword_243AC98C8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A40, &qword_243AC4850);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_243A9B260(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A0F0, &qword_243AC98C8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A40, &qword_243AC4850);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_243A9B39C(uint64_t a1)
{
  sub_243A9B55C();
  if (v1 <= 0x3F)
  {
    sub_243A9B5AC(319, &qword_27ED9A180, &qword_27ED9A188, &qword_243AC9A80, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_243A7EF94(319);
      if (v3 <= 0x3F)
      {
        sub_243A9B610(319, &qword_27ED9A190, type metadata accessor for ActionsController);
        if (v4 <= 0x3F)
        {
          sub_243A9B610(319, &qword_27ED9A198, type metadata accessor for RecommendationsLiftUIPresenter);
          if (v5 <= 0x3F)
          {
            sub_243A9B5AC(319, &qword_27ED9A140, &qword_27ED98D40, &qword_243AC7200, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_243A9B610(319, &qword_27ED98A80, MEMORY[0x277D23340]);
              if (v7 <= 0x3F)
              {
                sub_243A90E60(319);
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

void sub_243A9B55C()
{
  if (!qword_27ED9A178)
  {
    v0 = sub_243AC2098();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED9A178);
    }
  }
}

void sub_243A9B5AC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_243A9B610(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_243AC2C38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_243A9B678()
{
  result = qword_27ED9A1A0;
  if (!qword_27ED9A1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A1A0);
  }

  return result;
}

unint64_t sub_243A9B6EC()
{
  result = qword_27ED9A1A8;
  if (!qword_27ED9A1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A1A8);
  }

  return result;
}

unint64_t sub_243A9B744()
{
  result = qword_27ED9A1B0;
  if (!qword_27ED9A1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A1B0);
  }

  return result;
}

unint64_t sub_243A9B798(uint64_t a1, uint64_t a2)
{
  v2 = sub_243AC2E58();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_243A9B7F4()
{
  result = qword_27ED9A1E0;
  if (!qword_27ED9A1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A1D0, &qword_243AC9C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A1E0);
  }

  return result;
}

unint64_t sub_243A9B870()
{
  result = qword_27ED9A1E8;
  if (!qword_27ED9A1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A1D8, &qword_243AC9C98);
    sub_243A9B8F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A1E8);
  }

  return result;
}

unint64_t sub_243A9B8F4()
{
  result = qword_27ED9A1F0;
  if (!qword_27ED9A1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A1F8, &qword_243AC9CA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A200, &qword_243AC9CA8);
    sub_243A2CFF0(255, &qword_27ED98F70, 0x277CFB1B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A208, &qword_243AC9CB0);
    sub_243A9BA64();
    sub_243A9BB20(&qword_27ED991A8, MEMORY[0x277CFB100]);
    sub_243A9BB74();
    swift_getOpaqueTypeConformance2();
    sub_243A9A9CC(&qword_27ED9A220, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A1F0);
  }

  return result;
}

unint64_t sub_243A9BA64()
{
  result = qword_27ED9A210;
  if (!qword_27ED9A210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A200, &qword_243AC9CA8);
    sub_243A9A9CC(&qword_27ED99148, type metadata accessor for Card, &protocol conformance descriptor for Card);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A210);
  }

  return result;
}

uint64_t sub_243A9BB20(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_243A2CFF0(255, &qword_27ED98F70, 0x277CFB1B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_243A9BB74()
{
  result = qword_27ED9A218;
  if (!qword_27ED9A218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A208, &qword_243AC9CB0);
    sub_243A93AF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A218);
  }

  return result;
}

unint64_t sub_243A9BC00()
{
  result = qword_27ED9A228;
  if (!qword_27ED9A228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A1B8, &qword_243AC9C28);
    sub_243A9B7F4();
    sub_243A9B870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A228);
  }

  return result;
}

uint64_t sub_243A9BC98()
{
  v1 = type metadata accessor for InnerContextualRecommendation(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = *(v1 + 40);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D40, &qword_243AC7200);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = *(v1 + 44);
  v10 = sub_243AC1618();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_243A9BEA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InnerContextualRecommendation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A9BF0C(uint64_t a1)
{
  v4 = *(type metadata accessor for InnerContextualRecommendation(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_243A33068;

  return sub_243A98D90(a1, v6, v7, v1 + v5);
}

unint64_t sub_243A9BFFC()
{
  result = qword_27ED98D48;
  if (!qword_27ED98D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED98D18, &unk_243AC4ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED98D48);
  }

  return result;
}

uint64_t sub_243A9C07C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for InnerContextualRecommendation(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_243A99B44(a1, v6, a2);
}

uint64_t objectdestroy_26Tm()
{
  v1 = type metadata accessor for InnerContextualRecommendation(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 40);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D40, &qword_243AC7200);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = *(v1 + 44);
  v10 = sub_243AC1618();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_243A9C304(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for InnerContextualRecommendation(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_243A99FA8(a1, a2, v6);
}

void **sub_243A9C3AC@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for InnerContextualRecommendation(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_243A9A22C(a1, v6, a2);
}

uint64_t sub_243A9C42C()
{
  v1 = type metadata accessor for InnerContextualRecommendation(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 40);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D40, &qword_243AC7200);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = *(v1 + 44);
  v10 = sub_243AC1618();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v2 | 7);
}

uint64_t sub_243A9C648()
{
  v2 = *(type metadata accessor for InnerContextualRecommendation(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_243A1FEA8;

  return sub_243A9A2BC(v0 + v3, v4);
}

uint64_t sub_243A9C74C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_243A9C794()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 74, 7);
}

uint64_t sub_243A9C7E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

unint64_t sub_243A9C850()
{
  result = qword_27ED9A248;
  if (!qword_27ED9A248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A250, qword_243AC9D50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A1B8, &qword_243AC9C28);
    sub_243A9BC00();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A248);
  }

  return result;
}

BOOL sub_243A9C980()
{
  v0 = sub_243AC1208();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() systemPhotoLibraryURL];
  sub_243AC11D8();

  v5 = objc_allocWithZone(MEMORY[0x277CD9948]);
  v6 = sub_243AC11C8();
  v7 = [v5 initWithPhotoLibraryURL_];

  v8 = [objc_allocWithZone(MEMORY[0x277CD9880]) init];
  [v8 setPhotoLibrary_];
  v9 = [objc_opt_self() fetchActiveLibraryScopeWithOptions_];
  v10 = [v9 firstObject];

  (*(v1 + 8))(v3, v0);
  if (v10)
  {
  }

  return v10 != 0;
}

uint64_t sub_243A9CB30(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x245D46EC0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_243A585B0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_243A9CBC8(void *a1, uint64_t a2)
{

  sub_243A9CB30(a2);

  v4 = [a1 provisionedDataclasses];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for Dataclass(0);
    sub_243A750D8();
    sub_243AC2AE8();
  }
}

uint64_t sub_243A9CEB0(void *a1)
{
  v2 = a1[2];
  if (v2 == 3)
  {
    v18 = objc_opt_self();
    v19 = [v18 localizedTextForDataclass_];
    v20 = sub_243AC2858();
    v22 = v21;

    v23 = [v18 localizedTextForDataclass_];
    v24 = sub_243AC2858();
    v26 = v25;

    v27 = [v18 localizedTextForDataclass_];
    v28 = sub_243AC2858();
    v30 = v29;

    type metadata accessor for RecommendationsViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v32 = [objc_opt_self() bundleForClass_];
    sub_243AC1188();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99228, &qword_243AC6168);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_243AC4AC0;
    v34 = MEMORY[0x277D837D0];
    *(v33 + 56) = MEMORY[0x277D837D0];
    v35 = sub_243A570EC();
    *(v33 + 32) = v20;
    *(v33 + 40) = v22;
    *(v33 + 96) = v34;
    *(v33 + 104) = v35;
    *(v33 + 64) = v35;
    *(v33 + 72) = v24;
    *(v33 + 80) = v26;
    *(v33 + 136) = v34;
    *(v33 + 144) = v35;
    *(v33 + 112) = v28;
    *(v33 + 120) = v30;
    v17 = sub_243AC2828();
  }

  else if (v2 == 2)
  {
    v3 = objc_opt_self();
    v4 = [v3 localizedTextForDataclass_];
    v5 = sub_243AC2858();
    v7 = v6;

    v8 = [v3 localizedTextForDataclass_];
    v9 = sub_243AC2858();
    v11 = v10;

    type metadata accessor for RecommendationsViewController();
    v12 = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass_];
    sub_243AC1188();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99228, &qword_243AC6168);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_243AC5F30;
    v15 = MEMORY[0x277D837D0];
    *(v14 + 56) = MEMORY[0x277D837D0];
    v16 = sub_243A570EC();
    *(v14 + 32) = v5;
    *(v14 + 40) = v7;
    *(v14 + 96) = v15;
    *(v14 + 104) = v16;
    *(v14 + 64) = v16;
    *(v14 + 72) = v9;
    *(v14 + 80) = v11;
    v17 = sub_243AC2828();
  }

  else
  {
    if (v2 < 4)
    {
      return 0;
    }

    v36 = objc_opt_self();
    v37 = [v36 localizedTextForDataclass_];
    v38 = sub_243AC2858();
    v40 = v39;

    v41 = [v36 localizedTextForDataclass_];
    v42 = sub_243AC2858();
    v44 = v43;

    type metadata accessor for RecommendationsViewController();
    v45 = swift_getObjCClassFromMetadata();
    v46 = [objc_opt_self() bundleForClass_];
    sub_243AC1188();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99228, &qword_243AC6168);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_243AC4AC0;
    v48 = MEMORY[0x277D837D0];
    *(v47 + 56) = MEMORY[0x277D837D0];
    v49 = sub_243A570EC();
    *(v47 + 32) = v38;
    *(v47 + 40) = v40;
    *(v47 + 96) = v48;
    *(v47 + 104) = v49;
    *(v47 + 64) = v49;
    *(v47 + 72) = v42;
    *(v47 + 80) = v44;
    v50 = sub_243AC2EB8();
    *(v47 + 136) = v48;
    *(v47 + 144) = v49;
    *(v47 + 112) = v50;
    *(v47 + 120) = v51;
    v17 = sub_243AC2828();
  }

  return v17;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_243A9D3FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_243A9D444(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_243A9D4BC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A2B8, &qword_243AC9EB0);
  MEMORY[0x28223BE20](v56);
  v4 = &v55 - v3;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A2F0, &qword_243AC9ED0);
  v59 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v55 = &v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A2B0, &qword_243AC9EA8);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v57 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A2A0, &qword_243AC9EA0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v61 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A290, &qword_243AC9E98);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v60 = &v55 - v14;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A280, &qword_243AC9E90) - 8;
  MEMORY[0x28223BE20](v65);
  v63 = &v55 - v15;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A268, &qword_243AC9E88);
  MEMORY[0x28223BE20](v66);
  v64 = &v55 - v16;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A2F8, &unk_243AC9ED8);
  v69 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = &v55 - v17;
  v82 = *a1;
  v19 = *(a1 + 5);
  v58 = *(a1 + 6);
  v18 = v58;
  sub_243A224B4(&v82, &v74, &qword_27ED99D50, "̦");
  type metadata accessor for RecommendationsController(0);
  sub_243A9E5D4(&qword_27ED98FB0, type metadata accessor for RecommendationsController, &protocol conformance descriptor for RecommendationsController);

  *&v74 = sub_243AC1828();
  *(&v74 + 1) = v20;
  *&v75 = v19;
  *(&v75 + 1) = v18;
  v81 = a1[1];
  v73 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D28, &qword_243AC8810);
  sub_243AC2088();
  v71 = a1;
  sub_243A9E624();
  sub_243AC1818();
  v21 = sub_243AC1C48();
  v22 = &v4[*(v56 + 36)];
  *v22 = v21;
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  v22[40] = 1;
  sub_243AC1788();
  sub_243A9E51C();
  v23 = v55;
  sub_243AC1EC8();
  sub_243A9E678(v4);
  sub_243AC2138();
  sub_243AC18E8();
  v24 = v57;
  (*(v59 + 32))(v57, v23, v62);
  v25 = &v24[*(v7 + 44)];
  v26 = v24;
  v27 = v79;
  *(v25 + 4) = v78;
  *(v25 + 5) = v27;
  *(v25 + 6) = v80;
  v28 = v75;
  *v25 = v74;
  *(v25 + 1) = v28;
  v29 = v77;
  *(v25 + 2) = v76;
  *(v25 + 3) = v29;
  v30 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v31 = sub_243AC1F78();
  LOBYTE(v24) = sub_243AC1C48();
  v32 = v26;
  v33 = v61;
  sub_243A22814(v32, v61, &qword_27ED9A2B0, &qword_243AC9EA8);
  v34 = v33 + *(v10 + 44);
  v35 = v33;
  *v34 = v31;
  *(v34 + 8) = v24;
  if (sub_243AC2128())
  {
    v36 = 22.0;
  }

  else
  {
    v36 = 12.0;
  }

  v37 = *(v13 + 44);
  v38 = v60;
  v39 = &v60[v37];
  v40 = *(sub_243AC18D8() + 20);
  v41 = *MEMORY[0x277CE0118];
  v42 = sub_243AC1A98();
  (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
  *v39 = v36;
  v39[1] = v36;
  *(v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A2E0, &qword_243AC9EC8) + 36)) = 256;
  sub_243A22814(v35, v38, &qword_27ED9A2A0, &qword_243AC9EA0);
  v43 = v63;
  sub_243A22814(v38, v63, &qword_27ED9A290, &qword_243AC9E98);
  v44 = v43 + *(v65 + 44);
  *(v44 + 32) = 0;
  *v44 = 0u;
  *(v44 + 16) = 0u;
  v72[0] = sub_243AC1F98();
  v45 = sub_243AC20C8();
  v46 = v43;
  v47 = v64;
  sub_243A22814(v46, v64, &qword_27ED9A280, &qword_243AC9E90);
  v48 = v66;
  *(v47 + *(v66 + 36)) = v45;
  v49 = swift_allocObject();
  v50 = a1[1];
  *(v49 + 16) = *a1;
  *(v49 + 32) = v50;
  *(v49 + 48) = a1[2];
  *(v49 + 64) = *(a1 + 6);
  sub_243A224B4(&v82, v72, &qword_27ED99D50, "̦");

  sub_243A224B4(&v81, v72, &qword_27ED99D28, &qword_243AC8810);
  v51 = sub_243A9E174();

  v52 = v67;
  sub_243AC1E98();

  sub_243A9E738(v47);
  v72[0] = v48;
  v72[1] = v51;
  swift_getOpaqueTypeConformance2();
  v53 = v68;
  sub_243AC1EE8();
  return (*(v69 + 8))(v52, v53);
}

uint64_t sub_243A9DDB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*(*(a1 + 32) + OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationSectionViewModel_sectionModel) sectionHeader];
  sub_243AC2858();

  sub_243A4FC18();
  result = sub_243AC1D88();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_243A9DE44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9[-v3];
  v5 = *(a1 + 8);
  v6 = sub_243AC2A98();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;

  sub_243A3306C(0, 0, v4, &unk_243AC9EE8, v7);

  v10 = *(a1 + 16);
  v9[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D28, &qword_243AC8810);
  return sub_243AC2078();
}

uint64_t sub_243A9DF94()
{
  sub_243AC1A88();
  sub_243AC1D78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A258, &qword_243AC9E80);
  sub_243A9E07C();
  return sub_243AC2108();
}

unint64_t sub_243A9E07C()
{
  result = qword_27ED9A260;
  if (!qword_27ED9A260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A258, &qword_243AC9E80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A268, &qword_243AC9E88);
    sub_243A9E174();
    swift_getOpaqueTypeConformance2();
    sub_243A9E5D4(&qword_27ED9A2E8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A260);
  }

  return result;
}

unint64_t sub_243A9E174()
{
  result = qword_27ED9A270;
  if (!qword_27ED9A270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A268, &qword_243AC9E88);
    sub_243A9E22C();
    sub_243A491E8(&qword_27ED99C48, &qword_27ED99C50, &qword_243AC8690, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A270);
  }

  return result;
}

unint64_t sub_243A9E22C()
{
  result = qword_27ED9A278;
  if (!qword_27ED9A278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A280, &qword_243AC9E90);
    sub_243A9E2E4();
    sub_243A491E8(&qword_27ED99150, &qword_27ED99158, &qword_243AC7ED0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A278);
  }

  return result;
}

unint64_t sub_243A9E2E4()
{
  result = qword_27ED9A288;
  if (!qword_27ED9A288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A290, &qword_243AC9E98);
    sub_243A9E39C();
    sub_243A491E8(&qword_27ED9A2D8, &qword_27ED9A2E0, &qword_243AC9EC8, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A288);
  }

  return result;
}

unint64_t sub_243A9E39C()
{
  result = qword_27ED9A298;
  if (!qword_27ED9A298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A2A0, &qword_243AC9EA0);
    sub_243A9E454();
    sub_243A491E8(&qword_27ED99B70, &qword_27ED99B78, &qword_243AC8530, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A298);
  }

  return result;
}

unint64_t sub_243A9E454()
{
  result = qword_27ED9A2A8;
  if (!qword_27ED9A2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A2B0, &qword_243AC9EA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A2B8, &qword_243AC9EB0);
    sub_243A9E51C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A2A8);
  }

  return result;
}

unint64_t sub_243A9E51C()
{
  result = qword_27ED9A2C0;
  if (!qword_27ED9A2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A2B8, &qword_243AC9EB0);
    sub_243A491E8(&qword_27ED9A2C8, &qword_27ED9A2D0, &unk_243AC9EB8, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A2C0);
  }

  return result;
}

uint64_t sub_243A9E5D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_243A9E624()
{
  result = qword_27ED9A300;
  if (!qword_27ED9A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A300);
  }

  return result;
}

uint64_t sub_243A9E678(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A2B8, &qword_243AC9EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243A9E6E0()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_243A9E738(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A268, &qword_243AC9E88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243A9E7A0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_243A9E7E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243A1FEA8;

  return sub_243A40520(a1, v4, v5, v6);
}

unint64_t sub_243A9E898()
{
  result = qword_27ED9A308;
  if (!qword_27ED9A308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A310, &qword_243AC9EF0);
    sub_243A9E07C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A308);
  }

  return result;
}

uint64_t sub_243A9E930(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x73746E756F636361;
  v5 = 0x8000000243ACBA40;
  if (v2 != 1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x8000000243ACBA40;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 25705;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  v8 = 0x73746E756F636361;
  if (*a2 == 1)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_243AC2EE8();
  }

  return v11 & 1;
}

uint64_t sub_243A9EA24()
{
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

uint64_t sub_243A9EAC0(uint64_t a1)
{
  sub_243AC28A8();
}

uint64_t sub_243A9EB48(uint64_t a1)
{
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

unint64_t sub_243A9EBE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_243AA0E28(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_243A9EC10(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x73746E756F636361;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x8000000243ACBA40;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_243A9EC68()
{
  v1 = 0x73746E756F636361;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

unint64_t sub_243A9ECBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_243AA0E28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_243A9ECE4(uint64_t a1)
{
  v2 = sub_243A9F7BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243A9ED20(uint64_t a1)
{
  v2 = sub_243A9F7BC();

  return MEMORY[0x2821FE720](a1, v2);
}

void EmailAddressInjector.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99010, &qword_243AC59B0);
  v82 = *(v84 - 1);
  v3 = MEMORY[0x28223BE20](v84);
  v81 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v83 = &v73 - v5;
  v86 = sub_243AC1298();
  v80 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A318, &qword_243AC9EF8);
  v87 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v73 - v9;
  v11 = type metadata accessor for EmailAddressInjector(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v14[*(v12 + 36)];
  sub_243AC15F8();
  sub_243AA107C(&qword_27ED99F38, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
  v88 = sub_243AC1908();
  *v15 = v88;
  v15[1] = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243A9F7BC();
  v17 = v89;
  sub_243AC2FE8();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    return;
  }

  v75 = v7;
  v76 = v11;
  v18 = v86;
  v89 = v10;
  v77 = v8;
  v78 = a1;
  v79 = v14;
  v74 = objc_opt_self();
  v19 = [v74 defaultStore];
  if (!v19)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v20 = v19;
  v21 = [v19 aa_primaryAppleAccount];

  v22 = v79;
  if (!v21)
  {
    goto LABEL_57;
  }

  v79[2] = v21;
  v93 = 0;
  v23 = sub_243AC2E68();
  if (!v24)
  {
    v25 = v75;
    sub_243AC1288();
    v26 = sub_243AC1278();
    v28 = v27;
    (*(v80 + 1))(v25, v18);
    v24 = v28;
    v23 = v26;
  }

  v29 = v83;
  v30 = v84;
  *v22 = v23;
  v22[1] = v24;
  v86 = v24;
  v92 = 1;
  sub_243A9F810();
  sub_243AC2E88();
  v31 = v22 + *(v76 + 28);
  v84 = *(v82 + 32);
  (v84)(v31, v29, v30);
  v91 = 2;
  v32 = v81;
  sub_243AC2E88();
  v75 = 0;
  (v84)(v22 + *(v76 + 32), v32, v30);
  v33 = [v74 defaultStore];
  if (!v33)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v34 = v33;
  v35 = [v33 accounts];

  v36 = v85;
  if (!v35)
  {
    sub_243A2CFF0(0, &qword_27ED9A328, 0x277CBEA60);
    v35 = MEMORY[0x245D46FD0](MEMORY[0x277D84F90]);
  }

  v90 = 0;
  sub_243A2CFF0(0, &qword_27ED9A150, 0x277CB8F30);
  sub_243AC2988();
  v37 = v90;
  v38 = v79;
  if (v90)
  {

    *(v38 + 24) = MEMORY[0x277D84F90];
    if (v37 >> 62)
    {
LABEL_54:
      v88 = sub_243AC2DF8();
    }

    else
    {
      v88 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = 0;
    v40 = 0;
    v86 = v37 & 0xC000000000000001;
    v84 = *MEMORY[0x277CB8CF8];
    v83 = *MEMORY[0x277CB8C40];
    v82 = *MEMORY[0x277CB8C50];
    v81 = *MEMORY[0x277CB8BA0];
    v80 = MEMORY[0x277D84F90];
LABEL_14:
    v76 = v39;
    if (v40 == v88)
    {
LABEL_50:

      (*(v87 + 8))(v89, v77);
      v72 = v79;
      sub_243AA0534(v79, v36);
      __swift_destroy_boxed_opaque_existential_1(v78);
      sub_243AA0598(v72);
      return;
    }

    while (1)
    {
      if (v86)
      {
        v41 = MEMORY[0x245D470F0](v40, v37);
      }

      else
      {
        if (v40 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v41 = *(v37 + 8 * v40 + 32);
      }

      v42 = v41;
      v43 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v44 = [v41 accountType];
      if (!v44)
      {
        __break(1u);
        goto LABEL_56;
      }

      v45 = v44;
      v46 = [v44 identifier];

      if (!v46)
      {
        break;
      }

      v47 = sub_243AC2858();
      v49 = v48;

      v50 = sub_243AC2858();
      if (!v49)
      {
        goto LABEL_17;
      }

      if (v50 == v47 && v49 == v51)
      {
        goto LABEL_40;
      }

      v52 = sub_243AC2EE8();

      if (v52)
      {
        goto LABEL_41;
      }

      if (sub_243AC2858() == v47 && v49 == v53)
      {
        goto LABEL_40;
      }

      v54 = sub_243AC2EE8();

      if (v54)
      {
        goto LABEL_41;
      }

      if (sub_243AC2858() == v47 && v49 == v55)
      {
        goto LABEL_40;
      }

      v56 = sub_243AC2EE8();

      if (v56)
      {
        goto LABEL_41;
      }

      if (sub_243AC2858() == v47 && v49 == v57)
      {
LABEL_40:

LABEL_41:

LABEL_42:
        v59 = [v42 username];
        if (!v59)
        {
          goto LABEL_58;
        }

        v60 = v59;
        v61 = sub_243AC2858();
        v63 = v62;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = v76;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v80 = sub_243AA0428(0, *(v80 + 2) + 1, 1, v80);
        }

        v67 = *(v80 + 2);
        v66 = *(v80 + 3);
        if (v67 >= v66 >> 1)
        {
          v80 = sub_243AA0428((v66 > 1), v67 + 1, 1, v80);
        }

        v68 = v80;
        *(v80 + 2) = v67 + 1;
        v69 = &v68[32 * v67];
        *(v69 + 4) = v61;
        *(v69 + 5) = v63;
        *(v69 + 6) = v65;
        v69[56] = 0;
        v79[3] = v68;
        v70 = v65;
        v40 = v43;
        v71 = __OFADD__(v70, 1);
        v39 = v70 + 1;
        v36 = v85;
        if (v71)
        {
          goto LABEL_53;
        }

        goto LABEL_14;
      }

      v58 = sub_243AC2EE8();

      v36 = v85;
      if (v58)
      {
        goto LABEL_42;
      }

LABEL_18:
      ++v40;
      if (v43 == v88)
      {
        goto LABEL_50;
      }
    }

    sub_243AC2858();
LABEL_17:

    sub_243AC2858();

    sub_243AC2858();

    sub_243AC2858();

    goto LABEL_18;
  }

LABEL_60:
  __break(1u);
}

uint64_t type metadata accessor for EmailAddressInjector(uint64_t a1)
{
  result = qword_27ED9A350;
  if (!qword_27ED9A350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_243A9F7BC()
{
  result = qword_27ED9A320;
  if (!qword_27ED9A320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A320);
  }

  return result;
}

unint64_t sub_243A9F810()
{
  result = qword_27ED99028;
  if (!qword_27ED99028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99010, &qword_243AC59B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99028);
  }

  return result;
}

uint64_t EmailAddressInjector.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EmailAddressInjector.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t EmailAddressInjector.unmodifiedBody.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for EmailAddressInjector(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = sub_243AC1F98();
  sub_243AA0534(v1, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_243AA05F8(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A330, &qword_243AC9F10) + 36));
  sub_243AC17E8();
  result = sub_243AC2A78();
  *v9 = &unk_243AC9F08;
  v9[1] = v8;
  *a1 = v6;
  return result;
}

uint64_t sub_243A9FA2C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_243AC1528();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  sub_243AC2A58();
  v1[7] = sub_243AC2A48();
  v4 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243A9FB2C, v4, v3);
}

uint64_t sub_243A9FB2C()
{
  v1 = v0[2];

  v2 = *(v1 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    v19 = MEMORY[0x277D84F90];
    sub_243A64F14(0, v3, 0);
    v4 = *(v19 + 16);
    v5 = 16 * v4;
    v18 = v2;
    v6 = (v2 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v9 = *(v19 + 24);

      if (v4 >= v9 >> 1)
      {
        sub_243A64F14((v9 > 1), v4 + 1, 1);
      }

      *(v19 + 16) = v4 + 1;
      v10 = v19 + v5;
      *(v10 + 32) = v8;
      *(v10 + 40) = v7;
      v5 += 16;
      v6 += 4;
      ++v4;
      --v3;
    }

    while (v3);

    v11 = *(v18 + 16);
    if (v11)
    {
      v20 = MEMORY[0x277D84F90];
      sub_243A64F74(0, v11, 0);
      v12 = *(v20 + 16);
      do
      {
        v13 = *(v20 + 24);
        if (v12 >= v13 >> 1)
        {
          sub_243A64F74((v13 > 1), v12 + 1, 1);
        }

        *(v20 + 16) = v12 + 1;
        *(v20 + v12++ + 32) = 0;
        --v11;
      }

      while (v11);
    }
  }

  v14 = v0[2];
  if (*(v14 + *(type metadata accessor for EmailAddressInjector(0) + 36)))
  {
    sub_243A4C480();

    sub_243AC29E8();
    sub_243AC15D8();
    v16 = *(v0[4] + 8);
    v16(v0[6], v0[3]);

    sub_243AC29E8();

    sub_243AC15D8();
    v16(v0[5], v0[3]);

    v17 = v0[1];

    return v17();
  }

  else
  {
    sub_243AC15F8();
    sub_243AA107C(&qword_27ED99F38, MEMORY[0x277D23330], MEMORY[0x277D233A0]);

    return sub_243AC18F8();
  }
}

uint64_t sub_243A9FECC(uint64_t a1, uint64_t a2)
{
  v4 = sub_243AA107C(&qword_27ED992E8, type metadata accessor for EmailAddressInjector, protocol conformance descriptor for EmailAddressInjector);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_243A9FF50(uint64_t a1, uint64_t a2)
{
  v4 = sub_243AA107C(&qword_27ED9A338, type metadata accessor for EmailAddressInjector, &protocol conformance descriptor for EmailAddressInjector);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_243A9FFCC(uint64_t a1)
{
  v2 = sub_243AA107C(&qword_27ED9A338, type metadata accessor for EmailAddressInjector, &protocol conformance descriptor for EmailAddressInjector);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_243AA0048(uint64_t a1, uint64_t a2)
{
  v4 = sub_243AA107C(&qword_27ED9A388, type metadata accessor for EmailAddressInjector, &protocol conformance descriptor for EmailAddressInjector);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_243AA00CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v6 = sub_243AC1F98();
  sub_243AA0534(v2, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_243AA05F8(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A330, &qword_243AC9F10) + 36));
  sub_243AC17E8();
  result = sub_243AC2A78();
  *v9 = &unk_243ACA1C0;
  v9[1] = v8;
  *a2 = v6;
  return result;
}

char *sub_243AA020C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED995E0, &unk_243AC6B20);
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

char *sub_243AA0300(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99618, &qword_243AC6BC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_243AA0428(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED995E8, &qword_243AC6B30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_243AA0534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmailAddressInjector(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243AA0598(uint64_t a1)
{
  v2 = type metadata accessor for EmailAddressInjector(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243AA05F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmailAddressInjector(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243AA065C()
{
  v2 = *(type metadata accessor for EmailAddressInjector(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_243A33068;

  return sub_243A9FA2C(v0 + v3);
}

uint64_t sub_243AA0728(uint64_t a1, uint64_t a2)
{
  sub_243AA107C(&qword_27ED992E8, type metadata accessor for EmailAddressInjector, protocol conformance descriptor for EmailAddressInjector);
  sub_243AA107C(&qword_27ED9A338, type metadata accessor for EmailAddressInjector, &protocol conformance descriptor for EmailAddressInjector);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_243AA08A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99010, &qword_243AC59B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_243AA0970(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99010, &qword_243AC59B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_243AA0A20(uint64_t a1)
{
  sub_243A2CFF0(319, &qword_27ED9A150, 0x277CB8F30);
  if (v1 <= 0x3F)
  {
    sub_243AA0AF4();
    if (v2 <= 0x3F)
    {
      sub_243A4C288(319);
      if (v3 <= 0x3F)
      {
        sub_243A90E60(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_243AA0AF4()
{
  if (!qword_27ED9A360)
  {
    v0 = sub_243AC29F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED9A360);
    }
  }
}

unint64_t sub_243AA0B48()
{
  result = qword_27ED9A368;
  if (!qword_27ED9A368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A330, &qword_243AC9F10);
    sub_243AA107C(&qword_27ED9A220, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A368);
  }

  return result;
}

unint64_t sub_243AA0C18()
{
  result = qword_27ED9A370;
  if (!qword_27ED9A370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A370);
  }

  return result;
}

unint64_t sub_243AA0C70()
{
  result = qword_27ED9A378;
  if (!qword_27ED9A378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A378);
  }

  return result;
}

unint64_t sub_243AA0CC8()
{
  result = qword_27ED9A380;
  if (!qword_27ED9A380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A380);
  }

  return result;
}

char *sub_243AA0D1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED999C0, &unk_243AC4C40);
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

unint64_t sub_243AA0E28(uint64_t a1, uint64_t a2)
{
  v2 = sub_243AC2E58();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t objectdestroyTm_10()
{
  v1 = (type metadata accessor for EmailAddressInjector(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99010, &qword_243AC59B0);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v7(v0 + v3 + v1[10], v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_243AA0FB0()
{
  v2 = *(type metadata accessor for EmailAddressInjector(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_243A1FEA8;

  return sub_243A9FA2C(v0 + v3);
}

uint64_t sub_243AA107C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_243AA10C8(void *a1)
{
  v3 = *(v1 + 64);
  if (v3 || (v4 = [*(v1 + 24) accountStore], v5 = objc_msgSend(objc_allocWithZone(MEMORY[0x277D7F1F0]), sel_initWithAccountStore_appleAccount_presenter_, v4, *(v1 + 16), *(v1 + 40)), v4, v6 = *(v1 + 64), *(v1 + 64) = v5, v6, (v3 = *(v1 + 64)) != 0))
  {
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = a1;
    v12[4] = sub_243AA14E4;
    v12[5] = v8;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_243A71700;
    v12[3] = &block_descriptor_12;
    v9 = _Block_copy(v12);
    v10 = v3;
    v11 = a1;

    [v10 presentWithAlert:0 completionHandler:v9];
    _Block_release(v9);
  }
}

void sub_243AA1248(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v4 = *(Strong + 16), , v5 = [v4 aa_needsEmailConfiguration], v4, (v5 & 1) == 0))
  {
    swift_beginAccess();
    v10 = swift_weakLoadStrong();
    if (v10)
    {
      v11 = *(v10 + 48);
      swift_unknownObjectRetain();

      if (v11)
      {
        v12 = *(v11 + 136);
        sub_243A3CF58(a2, 0, &v12);
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v6 = sub_243AC1468();
    __swift_project_value_buffer(v6, qword_27EDA14A8);
    v7 = sub_243AC1448();
    v8 = sub_243AC2B58();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_243A1B000, v7, v8, "Could not setup email for user.", v9, 2u);
      MEMORY[0x245D47D20](v9, -1, -1);
    }
  }
}

uint64_t sub_243AA13E8()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_243AA146C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243AA14A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_243AA1504(void *a1, uint64_t a2, void *a3)
{
  v3[6] = 0;
  v3[7] = 0;
  v3[8] = 0;
  v3[2] = a1;
  v3[4] = a2;
  v3[5] = a3;
  v6 = objc_opt_self();
  v7 = a1;

  v8 = a3;
  result = [v6 defaultStore];
  if (result)
  {
    v10 = result;
    v11 = [objc_allocWithZone(MEMORY[0x277CED1D0]) initWithAccountStore_];

    v3[3] = v11;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_243AA15BC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = *(a2 + 16);
  if (result)
  {
    if (!v4)
    {
      return result;
    }

    if (a3)
    {
      v5 = v4;
      v3 = sub_243A724E8(v3);
    }

    else
    {
      v5 = v4;
    }

    sub_243A1EED8(v3);
  }

  else
  {
    if (!v4)
    {
      return result;
    }

    if (a3)
    {
      v5 = v4;
      sub_243A724E8(v3);
    }

    else
    {
      v5 = v4;
    }

    sub_243A1FBF8();
  }
}

uint64_t sub_243AA1668(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F666E4972657375;
  }

  else
  {
    v3 = 0x73696E6946646964;
  }

  if (v2)
  {
    v4 = 0xE900000000000068;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6F666E4972657375;
  }

  else
  {
    v5 = 0x73696E6946646964;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE900000000000068;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_243AC2EE8();
  }

  return v8 & 1;
}

uint64_t sub_243AA1714()
{
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

uint64_t sub_243AA179C(uint64_t a1)
{
  sub_243AC28A8();
}

uint64_t sub_243AA1810(uint64_t a1)
{
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

uint64_t sub_243AA1894@<X0>(char *a2@<X8>)
{
  v3 = sub_243AC2E58();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_243AA18F4(uint64_t *a1@<X8>)
{
  v2 = 0x73696E6946646964;
  if (*v1)
  {
    v2 = 0x6F666E4972657375;
  }

  v3 = 0xE900000000000068;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_243AA1938()
{
  if (*v0)
  {
    return 0x6F666E4972657375;
  }

  else
  {
    return 0x73696E6946646964;
  }
}

uint64_t sub_243AA1978@<X0>(char *a3@<X8>)
{
  v4 = sub_243AC2E58();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_243AA19DC(uint64_t a1)
{
  v2 = sub_243AA2D44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243AA1A18(uint64_t a1)
{
  v2 = sub_243AA2D44();

  return MEMORY[0x2821FE720](a1, v2);
}

id *sub_243AA1A54(void *a1)
{
  v3 = v1;
  v22 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D60, &unk_243AC4FF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A3C0, &unk_243ACA390);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A3C8, &qword_243ACA3E0);
  v11 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v13 = &v18 - v12;
  v3[2] = 0;
  v14 = a1[3];
  v23 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_243AA2D44();
  sub_243AC2FE8();
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = v7;
    v20 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A3A8, &unk_243ACA2A0);
    v25 = 0;
    sub_243A491E8(&qword_27ED9A3D8, &qword_27ED9A3A8, &unk_243ACA2A0, MEMORY[0x277D23238]);
    v15 = v21;
    sub_243AC2E78();
    sub_243A22814(v10, v3 + OBJC_IVAR____TtC21CloudRecommendationUI20ICQOnDisappearAction_didFinish, &qword_27ED9A3C0, &unk_243ACA390);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A38, qword_243AC7210);
    v24 = 1;
    sub_243A491E8(&qword_27ED98AC0, &qword_27ED98A38, qword_243AC7210, MEMORY[0x277D23238]);
    v17 = v19;
    sub_243AC2E78();
    (*(v20 + 8))(v13, v15);
    sub_243A22814(v17, v3 + OBJC_IVAR____TtC21CloudRecommendationUI20ICQOnDisappearAction_userInfo, &qword_27ED98D60, &unk_243AC4FF0);
  }

  __swift_destroy_boxed_opaque_existential_1(v23);
  return v3;
}

uint64_t sub_243AA1E2C()
{
  sub_243A2251C(v0 + OBJC_IVAR____TtC21CloudRecommendationUI20ICQOnDisappearAction_didFinish, &qword_27ED9A3C0, &unk_243ACA390);
  sub_243A2251C(v0 + OBJC_IVAR____TtC21CloudRecommendationUI20ICQOnDisappearAction_userInfo, &qword_27ED98D60, &unk_243AC4FF0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ICQOnDisappearAction(uint64_t a1)
{
  result = qword_27ED9A390;
  if (!qword_27ED9A390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243AA1F1C(uint64_t a1)
{
  sub_243AA2020(319, &qword_27ED9A3A0, &qword_27ED9A3A8, &unk_243ACA2A0);
  if (v1 <= 0x3F)
  {
    sub_243AA2020(319, &qword_27ED98D28, &qword_27ED98A38, qword_243AC7210);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_243AA2020(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_243AC2C38();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_243AA2074(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243A1FEA8;

  return sub_243AA23D0(a1);
}

uint64_t sub_243AA2124@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED98D88, &qword_243AC5030);
  sub_243A32C74();
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_243AC1ED8();
}

id *sub_243AA22E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_243AA1A54(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_243AA23D0(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_243AC2178();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v4 = sub_243AC21A8();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v5 = sub_243AC1528();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D60, &unk_243AC4FF0);
  v2[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A3C0, &unk_243ACA390);
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243AA25B8, 0, 0);
}

_OWORD *sub_243AA25B8()
{
  v1 = v0[26];
  sub_243A224B4(v0[15] + OBJC_IVAR____TtC21CloudRecommendationUI20ICQOnDisappearAction_didFinish, v1, &qword_27ED9A3C0, &unk_243ACA390);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A3A8, &unk_243ACA2A0);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_243A2251C(v0[26], &qword_27ED9A3C0, &unk_243ACA390);
    v4 = 0;
  }

  else
  {
    sub_243AC14D8();
    (*(v3 + 8))(v0[26], v2);
    v4 = *(v0 + 216);
  }

  v5 = v0[25];
  sub_243A224B4(v0[15] + OBJC_IVAR____TtC21CloudRecommendationUI20ICQOnDisappearAction_userInfo, v5, &qword_27ED98D60, &unk_243AC4FF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A38, qword_243AC7210);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_243A2251C(v0[25], &qword_27ED98D60, &unk_243AC4FF0);
    v8 = 0;
LABEL_19:
    v29 = v0[21];
    v30 = v0[18];
    v40 = v0[20];
    v42 = v0[19];
    v31 = v0[16];
    v39 = v0[17];
    v32 = v0[15];
    sub_243A4C4D4();
    v37 = sub_243AC2BC8();
    v33 = swift_allocObject();
    *(v33 + 16) = v4;
    *(v33 + 24) = v32;
    *(v33 + 32) = v8;
    v0[6] = sub_243AA2CD0;
    v0[7] = v33;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_243A71700;
    v0[5] = &block_descriptor_13;
    v34 = _Block_copy(v0 + 2);

    sub_243AC2198();
    v0[13] = MEMORY[0x277D84F90];
    sub_243AA2CFC(&qword_27ED99860, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F90, &qword_243AC5C20);
    sub_243A491E8(&qword_27ED99870, &qword_27ED98F90, &qword_243AC5C20, MEMORY[0x277D83970]);
    sub_243AC2C78();
    MEMORY[0x245D46FA0](0, v29, v30, v34);
    _Block_release(v34);

    (*(v39 + 8))(v30, v31);
    (*(v40 + 8))(v29, v42);

    v35 = v0[1];

    return v35();
  }

  else
  {
    sub_243A22438();
    sub_243AC14D8();
    v36 = v4;
    v9 = v0[23];
    (*(v7 + 8))(v0[25], v6);
    v10 = v0[12];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A20, &qword_243AC4830);
    result = sub_243AC2E08();
    v8 = result;
    v12 = 0;
    v13 = *(v10 + 64);
    v44 = result;
    v14 = 1 << *(v10 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v13;
    v17 = (v14 + 63) >> 6;
    v43 = v9;
    v41 = (v9 + 8);
    v38 = result + 4;
    if ((v15 & v13) != 0)
    {
      while (1)
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_15:
        v21 = v18 | (v12 << 6);
        v22 = (*(v10 + 48) + 16 * v21);
        v23 = *v22;
        v24 = v22[1];
        (*(v43 + 16))(v0[24], *(v10 + 56) + *(v43 + 72) * v21, v0[22]);

        sub_243A64778(v0 + 8);
        (*v41)(v0[24], v0[22]);
        *(v38 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v25 = (v44[6] + 16 * v21);
        *v25 = v23;
        v25[1] = v24;
        v8 = v44;
        result = sub_243A21C48(v0 + 4, (v44[7] + 32 * v21));
        v26 = v44[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          break;
        }

        v44[2] = v28;
        if (!v16)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v19 = v12;
      while (1)
      {
        v12 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v4 = v36;
          goto LABEL_19;
        }

        v20 = *(v10 + 64 + 8 * v12);
        ++v19;
        if (v20)
        {
          v18 = __clz(__rbit64(v20));
          v16 = (v20 - 1) & v20;
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_243AA2C90()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243AA2CFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_243AA2D44()
{
  result = qword_27ED9A3D0;
  if (!qword_27ED9A3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A3D0);
  }

  return result;
}

unint64_t sub_243AA2DAC()
{
  result = qword_27ED9A3E0;
  if (!qword_27ED9A3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A3E0);
  }

  return result;
}

unint64_t sub_243AA2E04()
{
  result = qword_27ED9A3E8;
  if (!qword_27ED9A3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A3E8);
  }

  return result;
}

unint64_t sub_243AA2E5C()
{
  result = qword_27ED9A3F0;
  if (!qword_27ED9A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A3F0);
  }

  return result;
}

uint64_t sub_243AA2EB0@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  *a2 = v4;
  return result;
}

uint64_t sub_243AA2F30(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243AC16B8();
}

uint64_t sub_243AA2FAC(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2 + 32;
  while (1)
  {
    v6 = 0xD000000000000023;
    v7 = "nter";
    switch(*(v5 + v4))
    {
      case 1:
        v6 = 0xD000000000000024;
        v7 = "Quota-turnOnAllApps";
        break;
      case 2:
        v6 = 0xD000000000000027;
        v7 = "Quota-upgradeStorage";
        break;
      case 3:
        v6 = 0xD00000000000002CLL;
        v7 = "Sharing-shareWithFamily";
        break;
      case 4:
        v6 = 0xD00000000000002DLL;
        v7 = "slideshow-turnOniCloudPhotos";
        break;
      case 5:
        v6 = 0xD000000000000021;
        v7 = "eRelay-protectBrowsingHistory";
        break;
      case 6:
        v6 = 0xD00000000000002FLL;
        v7 = "SMS-setupMessages";
        break;
      case 7:
        v6 = 0xD000000000000025;
        v7 = "slideshow-reviewPhotosAndVideos";
        break;
      case 8:
        v6 = 0xD000000000000020;
        v7 = "backup-deleteInactive";
        break;
      case 9:
        v6 = 0xD000000000000020;
        v7 = "reviewLargeFiles";
        break;
      case 0xA:
        v6 = 0xD000000000000031;
        v7 = "Quota-installApp";
        break;
      case 0xB:
        v6 = 0xD00000000000001ELL;
        v7 = "haredPhotoLibrary";
        break;
      case 0xC:
        v6 = 0xD00000000000001ELL;
        v7 = "com.apple.mobilemail-setupMail";
        break;
      case 0xD:
        v6 = 0xD000000000000029;
        v7 = "com.apple.iCloudQuota-appleOne";
        break;
      case 0xE:
        v6 = 0xD00000000000002BLL;
        v7 = "backup-turnOniCloudBackup";
        break;
      case 0xF:
        v6 = 0xD000000000000024;
        v7 = "inSync-turnOniCloudKeychain";
        break;
      case 0x10:
        v6 = 0xD000000000000025;
        v7 = "Sharing-createFamily";
        break;
      case 0x11:
        v6 = 0xD000000000000021;
        v7 = "Sharing-inviteMembers";
        break;
      case 0x12:
        v6 = 0xD00000000000001DLL;
        v7 = "-iCloudForWindows";
        break;
      case 0x13:
        v6 = 0xD000000000000014;
        v7 = "com.apple.iCloud-useiCloudWeb";
        break;
      case 0x14:
        v6 = 0xD000000000000021;
        v7 = "com.apple.iCloud-FAQ";
        break;
      default:
        break;
    }

    v8 = v7 | 0x8000000000000000;
    v9 = 0xD000000000000023;
    v10 = "nter";
    switch(a1)
    {
      case 1:
        v9 = 0xD000000000000024;
        v10 = "Quota-turnOnAllApps";
        break;
      case 2:
        v9 = 0xD000000000000027;
        v10 = "Quota-upgradeStorage";
        break;
      case 3:
        v9 = 0xD00000000000002CLL;
        v10 = "Sharing-shareWithFamily";
        break;
      case 4:
        v9 = 0xD00000000000002DLL;
        v10 = "slideshow-turnOniCloudPhotos";
        break;
      case 5:
        v9 = 0xD000000000000021;
        v10 = "eRelay-protectBrowsingHistory";
        break;
      case 6:
        v9 = 0xD00000000000002FLL;
        v10 = "SMS-setupMessages";
        break;
      case 7:
        v9 = 0xD000000000000025;
        v10 = "slideshow-reviewPhotosAndVideos";
        break;
      case 8:
        v9 = 0xD000000000000020;
        v10 = "backup-deleteInactive";
        break;
      case 9:
        v9 = 0xD000000000000020;
        v10 = "reviewLargeFiles";
        break;
      case 10:
        v9 = 0xD000000000000031;
        v10 = "Quota-installApp";
        break;
      case 11:
        v9 = 0xD00000000000001ELL;
        v10 = "haredPhotoLibrary";
        break;
      case 12:
        v9 = 0xD00000000000001ELL;
        v10 = "com.apple.mobilemail-setupMail";
        break;
      case 13:
        v9 = 0xD000000000000029;
        v10 = "com.apple.iCloudQuota-appleOne";
        break;
      case 14:
        v9 = 0xD00000000000002BLL;
        v10 = "backup-turnOniCloudBackup";
        break;
      case 15:
        v9 = 0xD000000000000024;
        v10 = "inSync-turnOniCloudKeychain";
        break;
      case 16:
        v9 = 0xD000000000000025;
        v10 = "Sharing-createFamily";
        break;
      case 17:
        v9 = 0xD000000000000021;
        v10 = "Sharing-inviteMembers";
        break;
      case 18:
        v9 = 0xD00000000000001DLL;
        v10 = "-iCloudForWindows";
        break;
      case 19:
        v9 = 0xD000000000000014;
        v10 = "com.apple.iCloud-useiCloudWeb";
        break;
      case 20:
        v9 = 0xD000000000000021;
        v10 = "com.apple.iCloud-FAQ";
        break;
      default:
        break;
    }

    if (v6 == v9 && v8 == (v10 | 0x8000000000000000))
    {
      break;
    }

    v11 = sub_243AC2EE8();

    if (v11)
    {
      return v4;
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_243AA34D0(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_243AC2DF8();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_243AC2DF8();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_243AA6B14(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

BOOL sub_243AA35C8()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(*(v1 + 16) + 16);
  os_unfair_lock_unlock((v1 + 24));

  v3 = *(v0 + 32);

  os_unfair_lock_lock((v3 + 24));
  v4 = v2 | *(*(v3 + 16) + 16);
  os_unfair_lock_unlock((v3 + 24));

  return v4 == 0;
}

uint64_t sub_243AA3650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  v13 = sub_243AC2A98();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = v5;
  v14[6] = a2;
  v14[7] = a3;
  v14[8] = a4;

  sub_243AA47C8(a3, a4);
  sub_243A3306C(0, 0, v12, &unk_243ACA540, v14);
}

uint64_t sub_243AA37A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243AA3850, 0, 0);
}

uint64_t sub_243AA3850()
{
  v1 = v0[8];
  if (v1 >> 62)
  {
    result = sub_243AC2DF8();
    v0[15] = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_11:
    v8 = v0[11];
    if (v8)
    {
      v8();
    }

    v9 = v0[1];

    return v9();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[15] = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  v3 = v0[8];
  v4 = *MEMORY[0x277CFB120];
  v0[16] = *MEMORY[0x277CFB150];
  v0[17] = v4;
  v0[18] = 0;
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x245D470F0](0);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;
  v0[19] = v5;
  v0[20] = 1;
  v0[21] = *(v0[9] + 48);

  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_243AA39E8;

  return sub_243A26C8C(v6);
}

uint64_t sub_243AA39E8(char a1)
{
  *(*v1 + 200) = a1;

  return MEMORY[0x2822009F8](sub_243AA3B08, 0, 0);
}

void sub_243AA3B08()
{
  v49 = v0;
  if (*(v0 + 200))
  {
    v1 = *(v0 + 144);
    v2 = *(v0 + 152);
    v3 = *(v0 + 72);
    [v2 setStatus_];
    [v2 setCompleted_];
    v4 = *(v3 + 24);
    *(swift_task_alloc() + 16) = v2;

    os_unfair_lock_lock((v4 + 24));
    sub_243A49930((v4 + 16));
    if (v1)
    {

      os_unfair_lock_unlock((v4 + 24));
    }

    else
    {
      v7 = *(v0 + 152);
      v8 = *(v0 + 80);
      os_unfair_lock_unlock((v4 + 24));

      *(swift_task_alloc() + 16) = v7;
      os_unfair_lock_lock((v8 + 24));
      sub_243A2CFD4((v8 + 16), (v0 + 56));
      os_unfair_lock_unlock((v8 + 24));
      v9 = *(v0 + 56);

      if (!v9)
      {
        if (qword_27ED98910 == -1)
        {
          goto LABEL_13;
        }

        goto LABEL_38;
      }

      v10 = *(v0 + 152);
      v11 = *(v0 + 104);
      v12 = *(v0 + 112);
      v13 = *(v0 + 72);
      v47 = v9;
      v14 = [v10 storageRecoverable];
      v15 = [v14 integerValue];

      v16 = sub_243AC2A98();
      v17 = *(v16 - 8);
      (*(v17 + 56))(v12, 1, 1, v16);
      v18 = swift_allocObject();
      v18[2] = 0;
      v18[3] = 0;
      v18[4] = v10;
      v18[5] = v13;
      v18[6] = v9;
      v18[7] = v15;
      v18[8] = 0;
      v18[9] = 0;
      sub_243A47650(v12, v11);
      LODWORD(v11) = (*(v17 + 48))(v11, 1, v16);

      v19 = *(v0 + 104);
      if (v11 == 1)
      {
        sub_243A2251C(*(v0 + 104), &qword_27ED98998, &qword_243AC4FD0);
      }

      else
      {
        sub_243AC2A88();
        (*(v17 + 8))(v19, v16);
      }

      v35 = v18[2];
      swift_unknownObjectRetain();

      if (v35)
      {
        swift_getObjectType();
        v36 = sub_243AC2A28();
        v38 = v37;
        swift_unknownObjectRelease();
      }

      else
      {
        v36 = 0;
        v38 = 0;
      }

      sub_243A2251C(*(v0 + 112), &qword_27ED98998, &qword_243AC4FD0);
      v39 = swift_allocObject();
      *(v39 + 16) = &unk_243AC58C8;
      *(v39 + 24) = v18;
      if (v38 | v36)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v36;
        *(v0 + 40) = v38;
      }

      swift_task_create();

      while (1)
      {
        v40 = *(v0 + 160);
        if (v40 == *(v0 + 120))
        {
          v41 = *(v0 + 88);
          if (v41)
          {
            v41(v34);
          }

          v42 = *(v0 + 8);

          v42();
          return;
        }

        *(v0 + 144) = 0;
        v43 = *(v0 + 64);
        if ((v43 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x245D470F0](v40);
        }

        else
        {
          if (v40 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v44 = *(v43 + 8 * v40 + 32);
        }

        v45 = v44;
        *(v0 + 152) = v44;
        *(v0 + 160) = v40 + 1;
        if (!__OFADD__(v40, 1))
        {
          break;
        }

        __break(1u);
LABEL_38:
        swift_once();
LABEL_13:
        v20 = *(v0 + 152);
        v21 = sub_243AC1468();
        __swift_project_value_buffer(v21, qword_27EDA14A8);
        v22 = v20;
        v23 = sub_243AC1448();
        v24 = sub_243AC2B58();

        v25 = os_log_type_enabled(v23, v24);
        v26 = *(v0 + 152);
        if (v25)
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v48 = v28;
          *v27 = 136315138;
          v29 = [v26 identifier];
          v30 = sub_243AC2858();
          v32 = v31;

          v33 = sub_243AB73D8(v30, v32, &v48);

          *(v27 + 4) = v33;
          _os_log_impl(&dword_243A1B000, v23, v24, "No rule found for %s. Cannot update template.", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v28);
          MEMORY[0x245D47D20](v28, -1, -1);
          MEMORY[0x245D47D20](v27, -1, -1);
        }
      }

      *(v0 + 168) = *(*(v0 + 72) + 48);

      v46 = swift_task_alloc();
      *(v0 + 176) = v46;
      *v46 = v0;
      v46[1] = sub_243AA39E8;

      sub_243A26C8C(v45);
    }
  }

  else
  {
    *(v0 + 184) = *(*(v0 + 72) + 48);

    v5 = swift_task_alloc();
    *(v0 + 192) = v5;
    *v5 = v0;
    v5[1] = sub_243AA41D4;
    v6 = *(v0 + 152);

    sub_243A2685C(v6);
  }
}

uint64_t sub_243AA41D4(char a1)
{
  *(*v1 + 201) = a1;

  return MEMORY[0x2822009F8](sub_243AA42F4, 0, 0);
}

void sub_243AA42F4()
{
  v1 = *(v0 + 152);
  if (*(v0 + 201))
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 72);
    [*(v0 + 152) setStatus_];
    v4 = *(v3 + 32);
    *(swift_task_alloc() + 16) = v1;
    v5 = (v4 + 24);

    os_unfair_lock_lock((v4 + 24));
    sub_243A49930((v4 + 16));
    if (v2)
    {
LABEL_3:

      os_unfair_lock_unlock(v5);
      return;
    }

    goto LABEL_13;
  }

  v6 = [*(v0 + 152) status];
  if (!v6)
  {
    v27 = *(v0 + 144);
    v26 = *(v0 + 152);
    v28 = *(*(v0 + 72) + 16);
    *(swift_task_alloc() + 16) = v26;
    v5 = (v28 + 24);

    os_unfair_lock_lock((v28 + 24));
    sub_243A49930((v28 + 16));
    if (v27)
    {
      goto LABEL_3;
    }

LABEL_13:
    v29 = *(v0 + 152);
    os_unfair_lock_unlock(v5);

    v31 = 0;
    goto LABEL_18;
  }

  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 152);
  v8 = sub_243AC1468();
  __swift_project_value_buffer(v8, qword_27EDA14A8);
  v9 = v7;
  v10 = sub_243AC1448();
  v11 = sub_243AC2B48();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 152);
  if (v12)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *(v0 + 48) = v15;
    *v14 = 136315394;
    v16 = [v13 identifier];
    v17 = sub_243AC2858();
    v19 = v18;

    v20 = sub_243AB73D8(v17, v19, (v0 + 48));

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v13 status];
    if (v21)
    {
      v22 = v21;
      v23 = sub_243AC2858();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0xE000000000000000;
    }

    v32 = *(v0 + 152);
    v33 = sub_243AB73D8(v23, v25, (v0 + 48));

    *(v14 + 14) = v33;
    _os_log_impl(&dword_243A1B000, v10, v11, "Unknow status when filtering completed recommendations for id: %s status: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D47D20](v15, -1, -1);
    MEMORY[0x245D47D20](v14, -1, -1);
  }

  else
  {
  }

  v31 = *(v0 + 144);
LABEL_18:
  v34 = *(v0 + 160);
  if (v34 == *(v0 + 120))
  {
    v35 = *(v0 + 88);
    if (v35)
    {
      v35(v30);
    }

    v36 = *(v0 + 8);

    v36();
    return;
  }

  *(v0 + 144) = v31;
  v37 = *(v0 + 64);
  if ((v37 & 0xC000000000000001) != 0)
  {
    v38 = MEMORY[0x245D470F0](v34);
  }

  else
  {
    if (v34 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_33:
      __break(1u);
      return;
    }

    v38 = *(v37 + 8 * v34 + 32);
  }

  v39 = v38;
  *(v0 + 152) = v38;
  *(v0 + 160) = v34 + 1;
  if (__OFADD__(v34, 1))
  {
    __break(1u);
    goto LABEL_33;
  }

  *(v0 + 168) = *(*(v0 + 72) + 48);

  v40 = swift_task_alloc();
  *(v0 + 176) = v40;
  *v40 = v0;
  v40[1] = sub_243AA39E8;

  sub_243A26C8C(v39);
}

uint64_t sub_243AA4768()
{
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_243AA47C8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_243AA47D8()
{
  v1 = v0[2];

  os_unfair_lock_lock((v1 + 24));

  v2 = MEMORY[0x277D84F90];
  *(v1 + 16) = sub_243A2E2A0(MEMORY[0x277D84F90]);
  os_unfair_lock_unlock((v1 + 24));

  v3 = v0[3];

  os_unfair_lock_lock((v3 + 24));

  *(v3 + 16) = sub_243A2E2A0(v2);
  os_unfair_lock_unlock((v3 + 24));

  v4 = v0[4];

  os_unfair_lock_lock((v4 + 24));

  *(v4 + 16) = sub_243A2E2A0(v2);
  os_unfair_lock_unlock((v4 + 24));
}

id sub_243AA48B8(void *a1)
{
  [a1 setStatus_];

  return [a1 setCompleted_];
}

uint64_t sub_243AA4910(void *a1)
{
  type metadata accessor for RecommendationSectionViewModel(0);
  v3 = swift_allocObject();
  v25 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F40, &qword_243AC52E0);
  sub_243AC1688();
  *(v3 + OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationSectionViewModel_sectionModel) = a1;
  v24 = v3;
  *(v3 + OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationSectionViewModel_totalSectionScore) = 0;
  v4 = *(v1 + 24);
  v5 = a1;

  os_unfair_lock_lock((v4 + 24));
  v6 = *(v4 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    v22 = v1;
    v8 = sub_243AA6A88(v7, 0);
    v9 = sub_243AA8424(&v25, v8 + 4, v7, v6);
    v10 = v25;

    sub_243A48354(v10);
    if (v9 != v7)
    {
      __break(1u);
      goto LABEL_8;
    }

    v1 = v22;
  }

  v25 = sub_243AA7C90(v11, sub_243AA7D2C);
  sub_243AA6BB4(&v25);

  v23 = v25;
  os_unfair_lock_unlock((v4 + 24));

  v12 = *(v1 + 32);

  os_unfair_lock_lock((v12 + 24));
  v13 = *(v12 + 16);
  v14 = *(v13 + 16);
  if (!v14 || (v15 = sub_243AA6A88(v14, 0), v7 = sub_243AA8424(&v25, v15 + 4, v14, v13), v16 = v25, , sub_243A48354(v16), v7 == v14))
  {

    v25 = sub_243AA7C90(v17, sub_243AA7D2C);
    sub_243AA6BB4(&v25);

    v18 = v25;
    os_unfair_lock_unlock((v12 + 24));

    swift_getKeyPath();
    swift_getKeyPath();
    v19 = sub_243AC1698();
    sub_243AA34D0(v23, sub_243AA7D2C);
    v19(&v25, 0);

    swift_getKeyPath();
    swift_getKeyPath();
    v20 = sub_243AC1698();
    sub_243AA34D0(v18, sub_243AA7D2C);
    v20(&v25, 0);

    return v24;
  }

LABEL_8:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_243AA4C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v12;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = sub_243AC1268();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243AA4D70, 0, 0);
}

uint64_t sub_243AA4D70()
{
  v1 = [*(v0 + 16) category];
  v2 = sub_243AC2858();
  v4 = v3;

  if (sub_243AC2858() == v2 && v5 == v4)
  {

LABEL_8:
    v8 = *(v0 + 16);

    v9 = [v8 identifier];
    v10 = sub_243AC2858();
    v12 = v11;

    if (sub_243A5B5E4(v10, v12) == 11)
    {
      v13 = swift_task_alloc();
      *(v0 + 96) = v13;
      *v13 = v0;
      v13[1] = sub_243AA51AC;
      v14 = *(v0 + 32);
      v15 = *(v0 + 16);

      return sub_243AA5E20(v15, v14);
    }

    v17 = sub_243AA52A8;
    v18 = 0;
    v19 = 0;
    goto LABEL_22;
  }

  v7 = sub_243AC2EE8();

  if (v7)
  {
    goto LABEL_8;
  }

  if (sub_243AC2858() == v2 && v20 == v4)
  {

LABEL_20:

    sub_243AC1258();
    *(v0 + 104) = sub_243AC2A58();
    *(v0 + 112) = sub_243AC2A48();
    *(v0 + 120) = sub_243AC2A48();
    v23 = sub_243AC2A28();
    v25 = v24;
    v26 = sub_243AA5324;
LABEL_21:
    v17 = v26;
    v18 = v23;
    v19 = v25;
LABEL_22:

    return MEMORY[0x2822009F8](v17, v18, v19);
  }

  v22 = sub_243AC2EE8();

  if (v22)
  {
    goto LABEL_20;
  }

  if (sub_243AC2858() == v2 && v27 == v4)
  {

LABEL_29:

    sub_243AC1258();
    sub_243AC2A58();
    *(v0 + 128) = sub_243AC2A48();
    v23 = sub_243AC2A28();
    v25 = v29;
    v26 = sub_243AA5598;
    goto LABEL_21;
  }

  v28 = sub_243AC2EE8();

  if (v28)
  {
    goto LABEL_29;
  }

  if (sub_243AC2858() == v2 && v30 == v4)
  {

LABEL_34:
    v32 = swift_task_alloc();
    *(v0 + 136) = v32;
    *v32 = v0;
    v32[1] = sub_243AA56CC;
    v33 = *(v0 + 32);
    v34 = *(v0 + 16);

    return sub_243AA57C8(v34, v33);
  }

  v31 = sub_243AC2EE8();

  if (v31)
  {
    goto LABEL_34;
  }

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_243AA51AC()
{

  return MEMORY[0x2822009F8](sub_243AA52A8, 0, 0);
}

uint64_t sub_243AA52A8()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v1();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_243AA5324()
{
  v1 = *(v0 + 16);

  v2 = [v1 subTitle];
  v3 = sub_243AC2858();
  v5 = v4;

  sub_243A59DA4(v3, v5);

  v6 = sub_243AC2818();

  [v1 setSubTitle_];

  v8 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243AA5460, v8, v7);
}

uint64_t sub_243AA5460()
{
  v1 = v0[5];

  if (v1 >= 1)
  {
    v2 = v0[5];
    v3 = v0[2];

    v4 = [v3 message];
    v5 = sub_243AC2858();
    v7 = v6;

    sub_243A59E9C(v5, v7, v2);

    v8 = sub_243AC2818();

    [v3 setMessage_];
  }

  (*(v0[9] + 8))(v0[11], v0[8]);

  return MEMORY[0x2822009F8](sub_243AA9000, 0, 0);
}

uint64_t sub_243AA5598()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[2];

  v5 = [v4 subTitle];
  v6 = sub_243AC2858();
  v8 = v7;

  sub_243A59DA4(v6, v8);

  v9 = sub_243AC2818();

  [v4 setSubTitle_];

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_243AA9000, 0, 0);
}

uint64_t sub_243AA56CC()
{

  return MEMORY[0x2822009F8](sub_243AA9000, 0, 0);
}

uint64_t sub_243AA57C8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_243AC1268();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243AA588C, 0, 0);
}

uint64_t sub_243AA588C()
{
  v1 = [*(v0 + 16) identifier];
  v2 = sub_243AC2858();
  v4 = v3;

  v5 = sub_243A5B5E4(v2, v4);
  if (v5 > 0xE)
  {
    if (v5 - 15 > 1)
    {
LABEL_15:

      v14 = *(v0 + 8);

      return v14();
    }

    goto LABEL_9;
  }

  if (v5)
  {
    if (v5 != 2)
    {
      if (v5 == 4)
      {
        v6 = swift_task_alloc();
        *(v0 + 80) = v6;
        *v6 = v0;
        v6[1] = sub_243AA5D10;
        v7 = *(v0 + 24);
        v8 = *(v0 + 16);

        return sub_243AA6200(v8, v7);
      }

      goto LABEL_15;
    }

LABEL_9:
    v10 = swift_task_alloc();
    *(v0 + 64) = v10;
    *v10 = v0;
    v10[1] = sub_243AA5ACC;
    v11 = *(v0 + 16);

    return sub_243AA8A74(v11);
  }

  sub_243AC1258();
  sub_243AC2A58();
  *(v0 + 72) = sub_243AC2A48();
  v13 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243AA5BDC, v13, v12);
}

uint64_t sub_243AA5ACC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_243AA5BDC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];

  v5 = [v4 subTitle];
  v6 = sub_243AC2858();
  v8 = v7;

  sub_243A59DA4(v6, v8);

  v9 = sub_243AC2818();

  [v4 setSubTitle_];

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_243AA5D10()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_243AA5E20(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  sub_243AC2A58();
  v3[13] = sub_243AC2A48();
  v5 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243AA5EBC, v5, v4);
}

uint64_t sub_243AA5EBC()
{
  v27 = v0;
  v1 = *(v0 + 96);

  v2 = [*(v1 + 40) aa_primaryEmail];
  if (v2)
  {
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    v5 = v2;
    v6 = sub_243AC2858();
    v8 = v7;

    sub_243AA8578(v3, v4, 0x6574656C706D6F63, 0xE900000000000064);
    v9 = [v3 subTitle];
    v10 = sub_243AC2858();
    v12 = v11;

    *(v0 + 32) = v10;
    *(v0 + 40) = v12;
    strcpy((v0 + 48), "%%iCloudMail%%");
    *(v0 + 63) = -18;
    *(v0 + 64) = v6;
    *(v0 + 72) = v8;
    sub_243A5A654();
    v24 = sub_243A5A6A8();
    v25 = MEMORY[0x277D835C8];
    sub_243AC2B18();

    v13 = sub_243AC2818();

    [v3 setSubTitle_];
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v14 = sub_243AC1468();
    __swift_project_value_buffer(v14, qword_27EDA14A8);

    v15 = sub_243AC1448();
    v16 = sub_243AC2B48();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v17 = 136315394;
      *(v17 + 4) = sub_243AB73D8(0xD000000000000029, 0x8000000243ACE430, &v26);
      *(v17 + 12) = 2112;
      v20 = *(v1 + 40);
      *(v17 + 14) = v20;
      *v18 = v20;
      v21 = v20;
      _os_log_impl(&dword_243A1B000, v15, v16, "%s Primary email not found for account %@", v17, 0x16u);
      sub_243A2251C(v18, &qword_27ED98BF8, &unk_243AC6150);
      MEMORY[0x245D47D20](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x245D47D20](v19, -1, -1);
      MEMORY[0x245D47D20](v17, -1, -1);
    }
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_243AA6200(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_243AA6224, 0, 0);
}

uint64_t sub_243AA6224()
{
  v0[5] = *(v0[4] + 48);

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_243AA62C8;

  return sub_243A28A14();
}

uint64_t sub_243AA62C8(char a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_243AA63E8, 0, 0);
}

uint64_t sub_243AA63E8()
{
  if (*(v0 + 56) > 1u)
  {
    if (*(v0 + 56) == 2)
    {
      sub_243AA8578(*(v0 + 16), *(v0 + 24), 0x64656C6261736964, 0xE800000000000000);
    }

    else
    {
      if (qword_27ED98910 != -1)
      {
        swift_once();
      }

      v1 = sub_243AC1468();
      __swift_project_value_buffer(v1, qword_27EDA14A8);
      v2 = sub_243AC1448();
      v3 = sub_243AC2B48();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&dword_243A1B000, v2, v3, "Skipping updatePrivateRelayTemplate because a restriction profile was detected", v4, 2u);
        MEMORY[0x245D47D20](v4, -1, -1);
      }
    }
  }

  else if (*(v0 + 56))
  {
    sub_243AA8578(*(v0 + 16), *(v0 + 24), 0x646573756170, 0xE600000000000000);
  }

  else
  {
    sub_243AA8578(*(v0 + 16), *(v0 + 24), 0x64656C62616E65, 0xE700000000000000);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_243AA6570(void *a1)
{
  v3 = *(v1 + 32);

  os_unfair_lock_lock(v3 + 6);
  sub_243A46E28(v3 + 16);
  os_unfair_lock_unlock(v3 + 6);

  [a1 setStatus_];
  [*(v1 + 64) clearLastDismissed_];
  v4 = *(v1 + 16);

  os_unfair_lock_lock((v4 + 24));
  sub_243A494E4((v4 + 16));
  os_unfair_lock_unlock((v4 + 24));
}

void *sub_243AA6648()
{
  v1 = *(v0 + 32);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_243AA6A88(*(v2 + 16), 0);
    v5 = sub_243AA8424(&v10, v4 + 4, v3, v2);
    v6 = v10;

    sub_243A48354(v6);
    if (v5 != v3)
    {
      __break(1u);
    }
  }

  v10 = sub_243AA7C90(v7, sub_243AA7D2C);
  sub_243AA6BB4(&v10);

  v8 = v10;
  os_unfair_lock_unlock((v1 + 24));

  return v8;
}

void *sub_243AA677C()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_243AA6A88(*(v2 + 16), 0);
    v5 = sub_243AA8424(&v10, v4 + 4, v3, v2);
    v6 = v10;

    sub_243A48354(v6);
    if (v5 != v3)
    {
      __break(1u);
    }
  }

  v10 = sub_243AA7C90(v7, sub_243AA7D2C);
  sub_243AA6BB4(&v10);

  v8 = v10;
  os_unfair_lock_unlock((v1 + 24));

  return v8;
}

uint64_t CompletedRecommendationController.deinit()
{

  return v0;
}

uint64_t CompletedRecommendationController.__deallocating_deinit()
{
  CompletedRecommendationController.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_243AA6934@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CompletedRecommendationController();
  result = sub_243AC1668();
  *a3 = result;
  return result;
}

void *sub_243AA6970(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A3F8, &unk_243ACA690);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_243AA69F4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED995D8, &unk_243AC6B10);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_243AA6A88(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98EE8, &unk_243AC8050);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_243AA6B14(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_243AC2DF8();
LABEL_9:
  result = sub_243AC2D38();
  *v2 = result;
  return result;
}

uint64_t sub_243AA6BB4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_243A4997C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_243AA6C30(v6);
  return sub_243AC2D78();
}

void sub_243AA6C30(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_243AC2EA8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_243A2CFF0(0, &qword_27ED98F70, 0x277CFB1B0);
        v6 = sub_243AC29C8();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_243AA6EEC(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_243AA6D44(0, v2, 1, a1);
  }
}

void sub_243AA6D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v34 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
LABEL_6:
    v32 = v4;
    v33 = a3;
    v6 = *(v34 + 8 * a3);
    v31 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 identifier];
      v11 = sub_243AC2858();
      v13 = v12;

      v14 = sub_243A5B5E4(v11, v13);
      if (v14 == 21 || (v15 = v14, v16 = [v9 identifier], v17 = sub_243AC2858(), v19 = v18, v16, v20 = sub_243A5B5E4(v17, v19), v20 == 21))
      {

LABEL_5:
        a3 = v33 + 1;
        v4 = v32 + 8;
        v5 = v31 - 1;
        if (v33 + 1 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      v21 = v20;
      v22 = sub_243AA2FAC(v15, &unk_2856B92B8);
      if (v23)
      {
        goto LABEL_17;
      }

      v24 = v22;
      v25 = sub_243AA2FAC(v21, &unk_2856B92B8);
      if (v26)
      {
        break;
      }

      v27 = v25;

      if (v24 < v27)
      {
        if (!v34)
        {
          goto LABEL_18;
        }

        v28 = *v4;
        v6 = *(v4 + 8);
        *v4 = v6;
        *(v4 + 8) = v28;
        v4 -= 8;
        if (!__CFADD__(v5++, 1))
        {
          continue;
        }
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }
}

void sub_243AA6EEC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_109:
    v5 = v10;
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_151;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_111:
      v136 = *(v5 + 2);
      if (v136 >= 2)
      {
        do
        {
          v137 = *v7;
          if (!*v7)
          {
            goto LABEL_147;
          }

          v7 = (v136 - 1);
          v138 = *&v5[16 * v136];
          v139 = *&v5[16 * v136 + 24];
          sub_243AA77C8((v137 + 8 * v138), (v137 + 8 * *&v5[16 * v136 + 16]), (v137 + 8 * v139), v10);
          if (v6)
          {
            break;
          }

          if (v139 < v138)
          {
            goto LABEL_134;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_243A45C54(v5);
          }

          if (v136 - 2 >= *(v5 + 2))
          {
            goto LABEL_135;
          }

          v140 = &v5[16 * v136];
          *v140 = v138;
          *(v140 + 1) = v139;
          sub_243A45BC8(v136 - 1);
          v136 = *(v5 + 2);
          v7 = a3;
        }

        while (v136 > 1);
      }

LABEL_119:

      return;
    }

LABEL_141:
    v5 = sub_243A45C54(v5);
    goto LABEL_111;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    v148 = v10;
    if (v12 >= v8)
    {
      v152 = v12;
    }

    else
    {
      v154 = v8;
      v13 = *v7;
      v143 = v11;
      v14 = *(*v7 + 8 * v11);
      v15 = *(*v7 + 8 * v12);
      v5 = v14;
      v16 = [v15 identifier];
      v17 = sub_243AC2858();
      v19 = v18;

      v20 = sub_243A5B5E4(v17, v19);
      if (v20 == 21 || (v151 = v20, v21 = [v5 identifier], v22 = sub_243AC2858(), v24 = v23, v21, v25 = sub_243A5B5E4(v22, v24), v25 == 21))
      {

        v26 = 0;
        v10 = v148;
      }

      else
      {
        v27 = v25;
        v28 = sub_243AA2FAC(v151, &unk_2856B92B8);
        v10 = v148;
        if (v29)
        {
          goto LABEL_153;
        }

        v30 = v28;
        v31 = sub_243AA2FAC(v27, &unk_2856B92B8);
        if (v32)
        {
          goto LABEL_152;
        }

        v33 = v31;

        v26 = v30 < v33;
      }

      v152 = v11 + 2;
      if (v11 + 2 >= v154)
      {
        v7 = a3;
        if (v26)
        {
LABEL_28:
          v55 = v152;
          if (v152 < v11)
          {
            goto LABEL_138;
          }

          if (v11 < v152)
          {
            v56 = 8 * v152 - 8;
            v57 = 8 * v11;
            v58 = v11;
            do
            {
              if (v58 != --v55)
              {
                v59 = *v7;
                if (!*v7)
                {
                  goto LABEL_146;
                }

                v60 = *(v59 + v57);
                *(v59 + v57) = *(v59 + v56);
                *(v59 + v56) = v60;
              }

              ++v58;
              v56 -= 8;
              v57 += 8;
            }

            while (v58 < v55);
          }
        }
      }

      else
      {
        v34 = (v13 + 8 * v11 + 16);
        do
        {
          v35 = *(v34 - 1);
          v36 = *v34;
          v5 = v35;
          v37 = [v36 identifier];
          v38 = sub_243AC2858();
          v40 = v39;

          v41 = sub_243A5B5E4(v38, v40);
          if (v41 == 21 || (v42 = v41, v43 = [v5 identifier], v44 = sub_243AC2858(), v46 = v45, v43, v47 = sub_243A5B5E4(v44, v46), v47 == 21))
          {

            v10 = v148;
            if (v26)
            {
              v7 = a3;
              v11 = v143;
              goto LABEL_28;
            }
          }

          else
          {
            v48 = v47;
            v49 = sub_243AA2FAC(v42, &unk_2856B92B8);
            if (v50)
            {
              goto LABEL_149;
            }

            v51 = v49;
            v52 = sub_243AA2FAC(v48, &unk_2856B92B8);
            v10 = v148;
            if (v53)
            {
              goto LABEL_148;
            }

            v54 = v52;

            if (((v26 ^ (v51 >= v54)) & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          ++v34;
          ++v152;
        }

        while (v154 != v152);
        v152 = v154;
LABEL_25:
        v7 = a3;
        v11 = v143;
        if (v26)
        {
          goto LABEL_28;
        }
      }
    }

    v61 = v7[1];
    if (v152 < v61)
    {
      if (__OFSUB__(v152, v11))
      {
        goto LABEL_137;
      }

      if (v152 - v11 < a4)
      {
        break;
      }
    }

LABEL_58:
    if (v152 < v11)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_243A45C68(0, *(v10 + 2) + 1, 1, v10);
    }

    v91 = *(v10 + 2);
    v90 = *(v10 + 3);
    v92 = v91 + 1;
    if (v91 >= v90 >> 1)
    {
      v10 = sub_243A45C68((v90 > 1), v91 + 1, 1, v10);
    }

    *(v10 + 2) = v92;
    v93 = &v10[16 * v91];
    *(v93 + 4) = v11;
    *(v93 + 5) = v152;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_150;
    }

    if (v91)
    {
      while (1)
      {
        v94 = v92 - 1;
        if (v92 >= 4)
        {
          break;
        }

        if (v92 == 3)
        {
          v95 = *(v10 + 4);
          v96 = *(v10 + 5);
          v105 = __OFSUB__(v96, v95);
          v97 = v96 - v95;
          v98 = v105;
LABEL_78:
          if (v98)
          {
            goto LABEL_125;
          }

          v111 = &v10[16 * v92];
          v113 = *v111;
          v112 = *(v111 + 1);
          v114 = __OFSUB__(v112, v113);
          v115 = v112 - v113;
          v116 = v114;
          if (v114)
          {
            goto LABEL_128;
          }

          v117 = &v10[16 * v94 + 32];
          v119 = *v117;
          v118 = *(v117 + 1);
          v105 = __OFSUB__(v118, v119);
          v120 = v118 - v119;
          if (v105)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v115, v120))
          {
            goto LABEL_132;
          }

          if (v115 + v120 >= v97)
          {
            if (v97 < v120)
            {
              v94 = v92 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        v121 = &v10[16 * v92];
        v123 = *v121;
        v122 = *(v121 + 1);
        v105 = __OFSUB__(v122, v123);
        v115 = v122 - v123;
        v116 = v105;
LABEL_92:
        if (v116)
        {
          goto LABEL_127;
        }

        v124 = &v10[16 * v94];
        v126 = *(v124 + 4);
        v125 = *(v124 + 5);
        v105 = __OFSUB__(v125, v126);
        v127 = v125 - v126;
        if (v105)
        {
          goto LABEL_130;
        }

        if (v127 < v115)
        {
          goto LABEL_3;
        }

LABEL_99:
        v132 = v94 - 1;
        if (v94 - 1 >= v92)
        {
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (!*v7)
        {
          goto LABEL_145;
        }

        v133 = *&v10[16 * v132 + 32];
        v134 = *&v10[16 * v94 + 40];
        sub_243AA77C8((*v7 + 8 * v133), (*v7 + 8 * *&v10[16 * v94 + 32]), (*v7 + 8 * v134), v5);
        if (v6)
        {
          goto LABEL_119;
        }

        if (v134 < v133)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_243A45C54(v10);
        }

        if (v132 >= *(v10 + 2))
        {
          goto LABEL_122;
        }

        v135 = &v10[16 * v132];
        *(v135 + 4) = v133;
        *(v135 + 5) = v134;
        sub_243A45BC8(v94);
        v92 = *(v10 + 2);
        if (v92 <= 1)
        {
          goto LABEL_3;
        }
      }

      v99 = &v10[16 * v92 + 32];
      v100 = *(v99 - 64);
      v101 = *(v99 - 56);
      v105 = __OFSUB__(v101, v100);
      v102 = v101 - v100;
      if (v105)
      {
        goto LABEL_123;
      }

      v104 = *(v99 - 48);
      v103 = *(v99 - 40);
      v105 = __OFSUB__(v103, v104);
      v97 = v103 - v104;
      v98 = v105;
      if (v105)
      {
        goto LABEL_124;
      }

      v106 = &v10[16 * v92];
      v108 = *v106;
      v107 = *(v106 + 1);
      v105 = __OFSUB__(v107, v108);
      v109 = v107 - v108;
      if (v105)
      {
        goto LABEL_126;
      }

      v105 = __OFADD__(v97, v109);
      v110 = v97 + v109;
      if (v105)
      {
        goto LABEL_129;
      }

      if (v110 >= v102)
      {
        v128 = &v10[16 * v94 + 32];
        v130 = *v128;
        v129 = *(v128 + 1);
        v105 = __OFSUB__(v129, v130);
        v131 = v129 - v130;
        if (v105)
        {
          goto LABEL_133;
        }

        if (v97 < v131)
        {
          v94 = v92 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_78;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v152;
    if (v152 >= v8)
    {
      goto LABEL_109;
    }
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_139;
  }

  if (v11 + a4 >= v61)
  {
    v62 = v7[1];
  }

  else
  {
    v62 = v11 + a4;
  }

  if (v62 < v11)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (v152 == v62)
  {
    goto LABEL_58;
  }

  v141 = v6;
  v155 = *v7;
  v63 = *v7 + 8 * v152 - 8;
  v144 = v11;
  v64 = v11 - v152;
  v65 = 0x278DE1000;
  v66 = v152;
  v147 = v62;
LABEL_47:
  v150 = v63;
  v153 = v66;
  v67 = *(v155 + 8 * v66);
  v149 = v64;
  while (1)
  {
    v68 = *v63;
    v69 = v67;
    v5 = v68;
    v70 = [v69 *(v65 + 4088)];
    v71 = sub_243AC2858();
    v73 = v72;

    v74 = sub_243A5B5E4(v71, v73);
    if (v74 == 21 || (v75 = v74, v76 = [v5 *(v65 + 4088)], v77 = sub_243AC2858(), v79 = v78, v76, v80 = sub_243A5B5E4(v77, v79), v80 == 21))
    {

LABEL_46:
      v66 = v153 + 1;
      v63 = v150 + 8;
      v64 = v149 - 1;
      if (v153 + 1 == v147)
      {
        v152 = v147;
        v6 = v141;
        v7 = a3;
        v10 = v148;
        v11 = v144;
        goto LABEL_58;
      }

      goto LABEL_47;
    }

    v81 = v80;
    v82 = sub_243AA2FAC(v75, &unk_2856B92B8);
    if (v83)
    {
      goto LABEL_143;
    }

    v84 = v82;
    v85 = sub_243AA2FAC(v81, &unk_2856B92B8);
    v65 = 0x278DE1000uLL;
    if (v86)
    {
      break;
    }

    v87 = v85;

    if (v84 >= v87)
    {
      goto LABEL_46;
    }

    if (!v155)
    {
      goto LABEL_144;
    }

    v88 = *v63;
    v67 = *(v63 + 8);
    *v63 = v67;
    *(v63 + 8) = v88;
    v63 -= 8;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
}

uint64_t sub_243AA77C8(void **a1, id *__dst, id *a3, void **a4)
{
  __src = a1;
  v4 = __dst;
  v5 = __dst - a1;
  v6 = __dst - a1 + 7;
  if (__dst - a1 >= 0)
  {
    v6 = __dst - a1;
  }

  v7 = v6 >> 3;
  v76 = a3;
  v8 = a3 - __dst;
  v9 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v9 = a3 - __dst;
  }

  v10 = v9 >> 3;
  if (v7 < v9 >> 3)
  {
    v11 = a4;
    if (a4 != a1 || &a1[v7] <= a4)
    {
      memmove(a4, a1, 8 * v7);
      v4 = __dst;
    }

    v13 = &v11[v7];
    if (v5 >= 8 && v4 < v76)
    {
      v14 = 0x278DE1000uLL;
      while (1)
      {
        v73 = v4;
        v15 = *v11;
        v16 = *v4;
        v17 = v15;
        v18 = [v16 *(v14 + 4088)];
        v19 = sub_243AC2858();
        v21 = v20;

        v22 = sub_243A5B5E4(v19, v21);
        if (v22 == 21)
        {
          break;
        }

        v23 = v22;
        v24 = [v17 *(v14 + 4088)];
        v25 = sub_243AC2858();
        v26 = v16;
        v27 = v14;
        v28 = v17;
        v29 = v13;
        v31 = v30;

        v32 = v31;
        v13 = v29;
        v17 = v28;
        v14 = v27;
        v16 = v26;
        v33 = sub_243A5B5E4(v25, v32);
        if (v33 == 21)
        {
          break;
        }

        v36 = v33;
        result = sub_243AA2FAC(v23, &unk_2856B92B8);
        if (v38)
        {
          goto LABEL_57;
        }

        v39 = result;
        result = sub_243AA2FAC(v36, &unk_2856B92B8);
        if (v40)
        {
          goto LABEL_55;
        }

        v41 = result;

        if (v39 >= v41)
        {
          goto LABEL_15;
        }

        v34 = v73;
        v4 = v73 + 1;
        if (__src != v73)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++__src;
        if (v11 >= v13 || v4 >= v76)
        {
          goto LABEL_46;
        }
      }

LABEL_15:
      v34 = v11;
      v35 = __src == v11++;
      v4 = v73;
      if (v35)
      {
        goto LABEL_17;
      }

LABEL_16:
      *__src = *v34;
      goto LABEL_17;
    }

LABEL_46:
    v70 = __src;
LABEL_50:
    if (v70 != v11 || v70 >= (v11 + ((v13 - v11 + (v13 - v11 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(v70, v11, 8 * (v13 - v11));
    }

    return 1;
  }

  if (a4 != __dst || &__dst[v10] <= a4)
  {
    v42 = a4;
    memmove(a4, __dst, 8 * v10);
    v4 = __dst;
    a4 = v42;
  }

  v71 = a4;
  v13 = &a4[v10];
  if (v8 < 8)
  {
    v11 = a4;
    goto LABEL_49;
  }

  v11 = a4;
  if (v4 <= __src)
  {
LABEL_49:
    v70 = v4;
    goto LABEL_50;
  }

  v44 = 0x278DE1000uLL;
LABEL_31:
  v74 = v4;
  v45 = v4 - 1;
  --v76;
  v46 = v13;
  while (1)
  {
    v72 = v13;
    v47 = *--v46;
    v48 = *v45;
    v49 = v47;
    v50 = v48;
    v51 = [v49 *(v44 + 4088)];
    v52 = sub_243AC2858();
    v54 = v53;

    v55 = sub_243A5B5E4(v52, v54);
    if (v55 == 21 || (v56 = v55, v57 = [v50 *(v44 + 4088)], v58 = sub_243AC2858(), v59 = v45, v60 = v44, v62 = v61, v57, v63 = v62, v44 = v60, v45 = v59, v64 = sub_243A5B5E4(v58, v63), v64 == 21))
    {

      v13 = v72;
      goto LABEL_39;
    }

    v65 = v64;
    result = sub_243AA2FAC(v56, &unk_2856B92B8);
    if (v66)
    {
      break;
    }

    v67 = result;
    result = sub_243AA2FAC(v65, &unk_2856B92B8);
    v13 = v72;
    if (v68)
    {
      goto LABEL_56;
    }

    v69 = result;

    if (v67 < v69)
    {
      if (v76 + 1 != v74)
      {
        *v76 = *v59;
      }

      v11 = v71;
      if (v72 <= v71 || (v4 = v59, v59 <= __src))
      {
        v70 = v59;
        goto LABEL_50;
      }

      goto LABEL_31;
    }

LABEL_39:
    if (v76 + 1 != v13)
    {
      *v76 = *v46;
    }

    --v76;
    v13 = v46;
    if (v46 <= v71)
    {
      v13 = v46;
      v11 = v71;
      v70 = v74;
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

void *sub_243AA7C90(unint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = sub_243AC2DF8();
  if (!v5)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v6 = v5;
  v7 = sub_243AA6A88(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_243AA7D2C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_243AC2DF8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_243AC2DF8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_243AA8F10(&qword_27ED98FA8, &qword_27ED98F40, &qword_243AC52E0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F40, &qword_243AC52E0);
            v9 = sub_243AA806C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
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
        sub_243A2CFF0(0, &qword_27ED98F70, 0x277CFB1B0);
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

uint64_t sub_243AA7ECC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_243AC2DF8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_243AC2DF8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_243AA8F10(&qword_27ED9A408, &qword_27ED9A400, &unk_243ACA6A0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A400, &unk_243ACA6A0);
            v9 = sub_243AA80F4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
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
        sub_243A2CFF0(0, &qword_27ED98FC0, 0x277CFB1E8);
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

void (*sub_243AA806C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245D470F0](a2, a3);
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
    return sub_243AA80EC;
  }

  __break(1u);
  return result;
}

void (*sub_243AA80F4(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245D470F0](a2, a3);
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
    return sub_243AA8FFC;
  }

  __break(1u);
  return result;
}

void *sub_243AA8174(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_243AA82C8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_243AA8424(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_243AA8578(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v18 = a2;
    v5 = [v18 templates];
    v6 = sub_243AC2818();
    v7 = [v5 titleTemplateForKey_];

    if (v7)
    {
      [a1 setTitle_];
    }

    v8 = [v18 templates];
    v9 = sub_243AC2818();
    v10 = [v8 subTitleTemplateForKey_];

    if (v10)
    {
      [a1 setSubTitle_];
    }

    v11 = [v18 templates];
    v12 = sub_243AC2818();
    v13 = [v11 messageTemplateForKey_];

    if (v13)
    {
      [a1 setMessage_];
    }
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v14 = sub_243AC1468();
    __swift_project_value_buffer(v14, qword_27EDA14A8);
    v18 = sub_243AC1448();
    v15 = sub_243AC2B58();
    if (os_log_type_enabled(v18, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_243AB73D8(0xD000000000000030, 0x8000000243ACE3F0, &v19);
      _os_log_impl(&dword_243A1B000, v18, v15, "%s Rule not found, canot update recommendation template.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x245D47D20](v17, -1, -1);
      MEMORY[0x245D47D20](v16, -1, -1);
    }
  }
}

void *sub_243AA8948(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x277D84F90];
  v7 = sub_243A2E2A0(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98FF8, qword_243ACA6D0);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = v7;
  v3[2] = v8;
  v9 = sub_243A2E2A0(v6);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = v9;
  v3[3] = v10;
  v11 = sub_243A2E2A0(v6);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = v11;
  v3[4] = v12;
  v3[5] = a1;
  v3[6] = a2;
  type metadata accessor for RecommendationTemplate();
  swift_allocObject();
  v13 = a1;

  v3[7] = sub_243A59CDC(v13);
  v3[8] = [objc_allocWithZone(MEMORY[0x277CFB1C0]) init];
  return v3;
}

uint64_t sub_243AA8A74(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_243AC2A58();
  v2[5] = sub_243AC2A48();
  v3 = swift_task_alloc();
  v2[6] = v3;
  *v3 = v2;
  v3[1] = sub_243AA8B34;

  return sub_243A91C90(0);
}

uint64_t sub_243AA8B34(uint64_t a1)
{
  *(*v1 + 56) = a1;

  v3 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243AA8C78, v3, v2);
}

uint64_t sub_243AA8C78()
{
  v20 = v0;
  v1 = v0[7];

  if (v1)
  {
    v2 = v0[7];
    v3 = v0[2];

    v4 = [v3 subTitle];
    v5 = sub_243AC2858();
    v7 = v6;

    sub_243A5A420(v5, v7, v2);

    v8 = sub_243AC2818();

    [v3 setSubTitle_];
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v9 = sub_243AC1468();
    __swift_project_value_buffer(v9, qword_27EDA14A8);

    v2 = sub_243AC1448();
    v10 = sub_243AC2B48();

    if (os_log_type_enabled(v2, v10))
    {
      v11 = v0[3];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v12 = 136315394;
      *(v12 + 4) = sub_243AB73D8(0xD000000000000031, 0x8000000243ACE460, &v19);
      *(v12 + 12) = 2112;
      v15 = *(v11 + 40);
      *(v12 + 14) = v15;
      *v13 = v15;
      v16 = v15;
      _os_log_impl(&dword_243A1B000, v2, v10, "%s Unable to fetch familycircle for account: %@", v12, 0x16u);
      sub_243A2251C(v13, &qword_27ED98BF8, &unk_243AC6150);
      MEMORY[0x245D47D20](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x245D47D20](v14, -1, -1);
      MEMORY[0x245D47D20](v12, -1, -1);
    }
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_243AA8F10(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_243AA8F64()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_243AA8FC4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id static RecommendationBypass.limit.getter()
{
  if ((sub_243AA9528() & 1) == 0)
  {
    return 0;
  }

  if (qword_27ED98930 != -1)
  {
    swift_once();
  }

  v0 = qword_27ED9A410;
  v1 = sub_243AC2818();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_243AA90A0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_243AC2818();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  qword_27ED9A410 = v2;
}

void sub_243AA913C(unsigned __int8 *a1@<X8>)
{
  if (sub_243AA9528())
  {
    if (qword_27ED98930 != -1)
    {
      swift_once();
    }

    v2 = qword_27ED9A410;
    v3 = sub_243AC2818();
    v4 = [v2 BOOLForKey_];
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
}

void sub_243AA91E4(unsigned __int8 *a1)
{
  if (sub_243AA9528())
  {
    if (qword_27ED98930 != -1)
    {
      swift_once();
    }

    v1 = qword_27ED9A410;
    v2 = sub_243AC2A08();
    v3 = sub_243AC2818();
    [v1 setValue:v2 forKey:v3];
  }
}

void static RecommendationBypass.limit.setter(char a1)
{
  if (sub_243AA9528())
  {
    if (qword_27ED98930 != -1)
    {
      swift_once();
    }

    v1 = qword_27ED9A410;
    v2 = sub_243AC2A08();
    v3 = sub_243AC2818();
    [v1 setValue:v2 forKey:v3];
  }
}

void (*static RecommendationBypass.limit.modify(unsigned __int8 *a1))(unsigned __int8 *a1)
{
  if (sub_243AA9528())
  {
    if (qword_27ED98930 != -1)
    {
      swift_once();
    }

    v2 = qword_27ED9A410;
    v3 = sub_243AC2818();
    v4 = [v2 BOOLForKey_];
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return sub_243AA9440;
}

void sub_243AA9440(unsigned __int8 *a1)
{
  if (sub_243AA9528())
  {
    if (qword_27ED98930 != -1)
    {
      swift_once();
    }

    v1 = qword_27ED9A410;
    v3 = sub_243AC2A08();
    v2 = sub_243AC2818();
    [v1 setValue:v3 forKey:v2];
  }
}

uint64_t sub_243AA9528()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_243AC2858();

    sub_243AC2888();
  }

  has_internal_ui = os_variant_has_internal_ui();
  swift_unknownObjectRelease();
  return has_internal_ui;
}

uint64_t Card.body.getter@<X0>(uint64_t a1@<X8>)
{
  v140 = a1;
  v2 = sub_243AC24B8();
  MEMORY[0x28223BE20](v2 - 8);
  v124 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_243AC24D8();
  MEMORY[0x28223BE20](v4 - 8);
  v120 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991C8, &unk_243AC6A10);
  MEMORY[0x28223BE20](v6 - 8);
  v130 = &v99 - v7;
  v131 = sub_243AC25A8();
  v128 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v123 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A418, &qword_243ACA798);
  MEMORY[0x28223BE20](v135);
  v10 = &v99 - v9;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A420, &qword_243ACA7A0);
  v115 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v112 = &v99 - v11;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A428, &qword_243ACA7A8);
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v113 = &v99 - v12;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A430, &qword_243ACA7B0);
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v116 = &v99 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A438, &qword_243ACA7B8);
  MEMORY[0x28223BE20](v114);
  v126 = &v99 - v14;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A440, &qword_243ACA7C0);
  MEMORY[0x28223BE20](v125);
  v129 = &v99 - v15;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A448, &qword_243ACA7C8);
  MEMORY[0x28223BE20](v127);
  v133 = &v99 - v16;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A450, &qword_243ACA7D0);
  v17 = MEMORY[0x28223BE20](v139);
  v132 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v134 = &v99 - v19;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A458, &qword_243ACA7D8);
  MEMORY[0x28223BE20](v137);
  v138 = &v99 - v20;
  v21 = type metadata accessor for Card(0);
  v101 = *(v21 - 8);
  v22 = *(v101 + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A460, &qword_243ACA7E0);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v24 = &v99 - v23;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A468, &qword_243ACA7E8);
  MEMORY[0x28223BE20](v102);
  v26 = &v99 - v25;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A470, &qword_243ACA7F0);
  MEMORY[0x28223BE20](v105);
  v28 = &v99 - v27;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A478, &qword_243ACA7F8);
  MEMORY[0x28223BE20](v106);
  v107 = &v99 - v29;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A480, &qword_243ACA800);
  MEMORY[0x28223BE20](v108);
  v31 = &v99 - v30;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A488, &qword_243ACA808);
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v99 - v32;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A490, &qword_243ACA810);
  v33 = MEMORY[0x28223BE20](v136);
  v35 = &v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  if (*(v1 + 16) == 1)
  {
    v134 = &v99 - v36;
    v100 = v1;
    sub_243AB0308(v1, &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    v37 = (*(v101 + 80) + 16) & ~*(v101 + 80);
    v38 = swift_allocObject();
    v39 = sub_243AB0370(&v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v38 + v37);
    MEMORY[0x28223BE20](v39);
    sub_243A491E8(&qword_27ED9A4A0, &qword_27ED9A418, &qword_243ACA798, MEMORY[0x277CE1138]);
    sub_243AC20A8();
    sub_243AC2138();
    sub_243AC18E8();
    (*(v103 + 32))(v26, v24, v104);
    v40 = &v26[*(v102 + 36)];
    v41 = v147;
    *(v40 + 4) = v146;
    *(v40 + 5) = v41;
    *(v40 + 6) = v148;
    v42 = v143;
    *v40 = v142;
    *(v40 + 1) = v42;
    v43 = v145;
    *(v40 + 2) = v144;
    *(v40 + 3) = v43;
    v44 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    v45 = sub_243AC1F78();
    v46 = sub_243AC1C48();
    sub_243A22814(v26, v28, &qword_27ED9A468, &qword_243ACA7E8);
    v47 = &v28[*(v105 + 36)];
    *v47 = v45;
    v47[8] = v46;
    v141 = sub_243AC1F98();
    v48 = sub_243AC20C8();
    v49 = v107;
    sub_243A22814(v28, v107, &qword_27ED9A470, &qword_243ACA7F0);
    *(v49 + *(v106 + 36)) = v48;
    if (sub_243AC2128())
    {
      v50 = 22.0;
    }

    else
    {
      v50 = 12.0;
    }

    v51 = &v31[*(v108 + 36)];
    v52 = *(sub_243AC18D8() + 20);
    v53 = *MEMORY[0x277CE0118];
    v54 = sub_243AC1A98();
    (*(*(v54 - 8) + 104))(v51 + v52, v53, v54);
    *v51 = v50;
    v51[1] = v50;
    *(v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A2E0, &qword_243AC9EC8) + 36)) = 256;
    sub_243A22814(v49, v31, &qword_27ED9A478, &qword_243ACA7F8);
    sub_243AAFC90();
    v55 = v109;
    sub_243AC1DF8();
    sub_243A2251C(v31, &qword_27ED9A480, &qword_243ACA800);
    v56 = sub_243AC2138();
    v58 = v57;
    v59 = &v35[*(v136 + 36)];
    sub_243AAAB5C(v100, v59);
    v60 = (v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99168, &qword_243AC5E30) + 36));
    *v60 = v56;
    v60[1] = v58;
    (*(v110 + 32))(v35, v55, v111);
    v61 = &qword_27ED9A490;
    v62 = &qword_243ACA810;
    v63 = v134;
    sub_243A22814(v35, v134, &qword_27ED9A490, &qword_243ACA810);
    sub_243A224B4(v63, v138, &qword_27ED9A490, &qword_243ACA810);
    swift_storeEnumTagMultiPayload();
    sub_243AAFB9C();
    sub_243AAFF70();
  }

  else
  {
    *v10 = sub_243AC1A68();
    *(v10 + 1) = 0;
    v10[16] = 0;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A498, &qword_243ACA818);
    sub_243AAAF68(v1, &v10[*(v64 + 44)]);
    v65 = sub_243A491E8(&qword_27ED9A4A0, &qword_27ED9A418, &qword_243ACA798, MEMORY[0x277CE1138]);
    v66 = v112;
    v67 = v135;
    sub_243AC1DF8();
    sub_243A2251C(v10, &qword_27ED9A418, &qword_243ACA798);
    v68 = *(v1 + 8);
    *&v142 = *v1;
    *(&v142 + 1) = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99368, &qword_243AC6760);
    sub_243AC2068();
    v69 = v141;

    v70 = v123;
    sub_243AC2598();
    sub_243AC24C8();
    v71 = MEMORY[0x277D84F90];
    sub_243A2E2B4(MEMORY[0x277D84F90]);
    sub_243AC24A8();
    sub_243A2E2B4(v71);
    sub_243A2E2B4(v71);
    v72 = v130;
    sub_243AC24E8();
    v73 = sub_243AC24F8();
    (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
    *&v142 = v67;
    *(&v142 + 1) = v65;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v75 = v113;
    v76 = v119;
    sub_243AC1DC8();
    sub_243A2251C(v72, &qword_27ED991C8, &unk_243AC6A10);
    (*(v128 + 8))(v70, v131);
    (*(v115 + 8))(v66, v76);
    *&v142 = v76;
    *(&v142 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v77 = v116;
    v78 = v118;
    sub_243AC1DF8();
    (*(v117 + 8))(v75, v78);
    sub_243AC2138();
    sub_243AC18E8();
    v79 = v126;
    (*(v121 + 32))(v126, v77, v122);
    v80 = &v79[*(v114 + 36)];
    v81 = v147;
    *(v80 + 4) = v146;
    *(v80 + 5) = v81;
    *(v80 + 6) = v148;
    v82 = v143;
    *v80 = v142;
    *(v80 + 1) = v82;
    v83 = v145;
    *(v80 + 2) = v144;
    *(v80 + 3) = v83;
    v84 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    v85 = sub_243AC1F78();
    LOBYTE(v71) = sub_243AC1C48();
    v86 = v79;
    v87 = v129;
    sub_243A22814(v86, v129, &qword_27ED9A438, &qword_243ACA7B8);
    v88 = v87 + *(v125 + 36);
    *v88 = v85;
    *(v88 + 8) = v71;
    v141 = sub_243AC1F98();
    v89 = sub_243AC20C8();
    v90 = v133;
    sub_243A22814(v87, v133, &qword_27ED9A440, &qword_243ACA7C0);
    *(v90 + *(v127 + 36)) = v89;
    if (sub_243AC2128())
    {
      v91 = 22.0;
    }

    else
    {
      v91 = 12.0;
    }

    v92 = v132;
    v93 = &v132[*(v139 + 36)];
    v94 = *(sub_243AC18D8() + 20);
    v95 = *MEMORY[0x277CE0118];
    v96 = sub_243AC1A98();
    (*(*(v96 - 8) + 104))(v93 + v94, v95, v96);
    *v93 = v91;
    v93[1] = v91;
    *(v93 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A2E0, &qword_243AC9EC8) + 36)) = 256;
    sub_243A22814(v90, v92, &qword_27ED9A448, &qword_243ACA7C8);
    v61 = &qword_27ED9A450;
    v62 = &qword_243ACA7D0;
    v97 = v92;
    v63 = v134;
    sub_243A22814(v97, v134, &qword_27ED9A450, &qword_243ACA7D0);
    sub_243A224B4(v63, v138, &qword_27ED9A450, &qword_243ACA7D0);
    swift_storeEnumTagMultiPayload();
    sub_243AAFB9C();
    sub_243AAFF70();
  }

  sub_243AC1AE8();
  return sub_243A2251C(v63, v61, v62);
}

uint64_t type metadata accessor for Card(uint64_t a1)
{
  result = qword_27ED9A500;
  if (!qword_27ED9A500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243AAA9A4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99368, &qword_243AC6760);
  sub_243AC2068();
  v2 = [v7 actions];

  sub_243A2CFF0(0, &qword_27ED98B88, 0x277CFB1B8);
  v3 = sub_243AC2998();

  if (v3 >> 62)
  {
    if (sub_243AC2DF8())
    {
      goto LABEL_3;
    }

LABEL_8:

    return;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245D470F0](0, v3);
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v3 + 32);
LABEL_6:
    v5 = v4;

    v6 = a1[5];
    sub_243AC2068();
    v6(v7, v5);

    return;
  }

  __break(1u);
}

uint64_t sub_243AAAB08@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_243AC1A68();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A498, &qword_243ACA818);
  return sub_243AAAF68(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_243AAAB5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_243AC24B8();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_243AC24D8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991C8, &unk_243AC6A10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  v28 = sub_243AC25A8();
  v8 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991D0, &unk_243AC5EF0);
  v12 = *(v11 - 8);
  v26 = v11;
  v27 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v15 = sub_243AC1F98();
  v25 = v15;
  v16 = a1[1];
  v31 = *a1;
  v32 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99368, &qword_243AC6760);
  sub_243AC2068();
  v17 = v30;
  v18 = [v30 title];

  sub_243AC2858();
  sub_243AC2598();
  v31 = v15;

  sub_243AC24C8();
  v19 = MEMORY[0x277D84F90];
  sub_243A2E2B4(MEMORY[0x277D84F90]);
  sub_243AC24A8();
  sub_243A2E2B4(v19);
  sub_243A2E2B4(v19);
  sub_243AC24E8();
  v20 = sub_243AC24F8();
  (*(*(v20 - 8) + 56))(v7, 0, 1, v20);
  v21 = MEMORY[0x277CE0F78];
  v22 = MEMORY[0x277CE0F70];
  sub_243AC1DC8();

  sub_243A2251C(v7, &qword_27ED991C8, &unk_243AC6A10);
  (*(v8 + 8))(v10, v28);

  v31 = v21;
  v32 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = v26;
  sub_243AC1DF8();
  return (*(v27 + 8))(v14, v23);
}

uint64_t sub_243AAAF68@<X0>(char **a1@<X0>, int64x2_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A548, &qword_243ACA920);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[1];
  *&v33[0] = *a1;
  *(&v33[0] + 1) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99368, &qword_243AC6760);
  sub_243AC2068();
  sub_243A2CFF0(0, &qword_27ED98F70, 0x277CFB1B0);
  sub_243AC2058();
  v11 = v33[0];
  v12 = sub_243AC1C48();
  LOBYTE(v33[0]) = 0;
  *v9 = sub_243AC1AB8();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A550, &qword_243ACA928);
  sub_243AAB270(a1, &v9[*(v13 + 44)]);
  sub_243A224B4(v9, v7, &qword_27ED9A548, &qword_243ACA920);
  v27 = vdupq_n_s64(0x4044000000000000uLL);
  v26 = xmmword_243ACA730;
  v29[0] = v27;
  v29[1] = xmmword_243ACA730;
  v30 = xmmword_243ACA740;
  v24 = xmmword_243ACA740;
  v31 = v11;
  v32[0] = v12;
  *&v32[1] = *v28;
  *&v32[4] = *&v28[3];
  __asm { FMOV            V0.2D, #16.0 }

  v25 = _Q0;
  *&v32[8] = _Q0;
  *&v32[24] = xmmword_243ACA740;
  v32[40] = 0;
  *a2 = v27;
  a2[1] = xmmword_243ACA730;
  v19 = v30;
  v20 = v31;
  *(a2 + 89) = *&v32[25];
  v21 = *&v32[16];
  a2[4] = *v32;
  a2[5] = v21;
  a2[2] = v19;
  a2[3] = v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A558, &qword_243ACA930);
  sub_243A224B4(v7, a2->i64 + *(v22 + 48), &qword_27ED9A548, &qword_243ACA920);
  sub_243A224B4(v29, v33, &qword_27ED9A560, &qword_243ACA938);
  sub_243A2251C(v9, &qword_27ED9A548, &qword_243ACA920);
  sub_243A2251C(v7, &qword_27ED9A548, &qword_243ACA920);
  v33[0] = v27;
  v33[1] = v26;
  v33[2] = v24;
  v33[3] = v11;
  v34 = v12;
  *v35 = *v28;
  *&v35[3] = *&v28[3];
  v36 = v25;
  v37 = v24;
  v38 = 0;
  return sub_243A2251C(v33, &qword_27ED9A560, &qword_243ACA938);
}

uint64_t sub_243AAB270@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A568, &qword_243ACA940);
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x28223BE20](v3);
  v70 = v63 - v4;
  v5 = type metadata accessor for Card(0);
  v64 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v63[1] = v6;
  v7 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A570, &qword_243ACA948);
  v68 = *(v8 - 8);
  v69 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v67 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v66 = v63 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A578, &qword_243ACA950);
  v13 = MEMORY[0x28223BE20](v12);
  v65 = v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v63 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A580, &qword_243ACA958);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v74 = v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v72 = v63 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A588, &qword_243ACA960);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v73 = v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = v63 - v24;
  *v25 = sub_243AC1A68();
  *(v25 + 1) = 0;
  v25[16] = 0;
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A590, &qword_243ACA968) + 44);
  v71 = v25;
  sub_243AABACC(a1, &v25[v26]);
  v28 = *a1;
  v27 = a1[1];
  v79 = *a1;
  v80 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99368, &qword_243AC6760);
  sub_243AC2068();
  v29 = v78;
  v30 = [v78 status];

  if (!v30)
  {
    goto LABEL_11;
  }

  v79 = v28;
  v80 = v27;
  sub_243AC2068();
  v31 = v78;
  v32 = [v78 status];

  if (!v32)
  {
    sub_243AC2858();
    goto LABEL_8;
  }

  v33 = sub_243AC2858();
  v35 = v34;

  v36 = sub_243AC2858();
  if (!v35)
  {
LABEL_8:

    goto LABEL_9;
  }

  if (v33 == v36 && v35 == v37)
  {

LABEL_11:
    sub_243AC20D8();
    v41 = sub_243AC1C48();
    v42 = &v16[*(v12 + 36)];
    v63[0] = v16;
    *v42 = v41;
    *(v42 + 8) = xmmword_243ACA750;
    *(v42 + 24) = xmmword_243ACA760;
    v42[40] = 0;
    v79 = v28;
    v80 = v27;
    sub_243AC2068();
    v43 = v78;
    v44 = [v78 actions];

    sub_243A2CFF0(0, &qword_27ED98B88, 0x277CFB1B8);
    v45 = sub_243AC2998();

    v79 = v45;
    sub_243AB0308(a1, v7);
    v46 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v47 = swift_allocObject();
    sub_243AB0370(v7, v47 + v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A598, &qword_243ACA970);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A5A0, &qword_243ACA978);
    sub_243A491E8(&qword_27ED9A5A8, &qword_27ED9A598, &qword_243ACA970, MEMORY[0x277D83980]);
    sub_243AB0868();
    sub_243AB09D8();
    v48 = v66;
    sub_243AC20F8();
    v49 = v65;
    sub_243A224B4(v16, v65, &qword_27ED9A578, &qword_243ACA950);
    v50 = v67;
    v51 = v68;
    v52 = *(v68 + 16);
    v53 = v69;
    v52(v67, v48, v69);
    v54 = v70;
    sub_243A224B4(v49, v70, &qword_27ED9A578, &qword_243ACA950);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A5E0, &qword_243ACA998);
    v52((v54 + *(v55 + 48)), v50, v53);
    v56 = *(v51 + 8);
    v56(v48, v53);
    sub_243A2251C(v63[0], &qword_27ED9A578, &qword_243ACA950);
    v56(v50, v53);
    sub_243A2251C(v49, &qword_27ED9A578, &qword_243ACA950);
    v39 = v72;
    sub_243A22814(v54, v72, &qword_27ED9A568, &qword_243ACA940);
    v38 = 0;
    goto LABEL_12;
  }

  v40 = sub_243AC2EE8();

  if (v40)
  {
    goto LABEL_11;
  }

LABEL_9:
  v38 = 1;
  v39 = v72;
LABEL_12:
  (*(v75 + 56))(v39, v38, 1, v76);
  v57 = v71;
  v58 = v73;
  sub_243A224B4(v71, v73, &qword_27ED9A588, &qword_243ACA960);
  v59 = v74;
  sub_243A224B4(v39, v74, &qword_27ED9A580, &qword_243ACA958);
  v60 = v77;
  sub_243A224B4(v58, v77, &qword_27ED9A588, &qword_243ACA960);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A5E8, &qword_243ACA9A0);
  sub_243A224B4(v59, v60 + *(v61 + 48), &qword_27ED9A580, &qword_243ACA958);
  sub_243A2251C(v39, &qword_27ED9A580, &qword_243ACA958);
  sub_243A2251C(v57, &qword_27ED9A588, &qword_243ACA960);
  sub_243A2251C(v59, &qword_27ED9A580, &qword_243ACA958);
  return sub_243A2251C(v58, &qword_27ED9A588, &qword_243ACA960);
}

uint64_t sub_243AABACC@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_243AC1B28();
  v129 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v128 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_243AC24B8();
  MEMORY[0x28223BE20](v6 - 8);
  v119 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_243AC24D8();
  MEMORY[0x28223BE20](v8 - 8);
  v117 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991C8, &unk_243AC6A10);
  MEMORY[0x28223BE20](v10 - 8);
  v121 = &v108 - v11;
  v122 = sub_243AC25A8();
  v120 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v118 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Card(0);
  v111 = *(v13 - 8);
  v14 = *(v111 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A630, &qword_243ACAA00);
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v16 = &v108 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A638, &qword_243ACAA08);
  MEMORY[0x28223BE20](v17);
  v19 = &v108 - v18;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A640, &qword_243ACAA10);
  MEMORY[0x28223BE20](v131);
  v21 = &v108 - v20;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A648, &qword_243ACAA18);
  v115 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v130 = &v108 - v22;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A650, &qword_243ACAA20);
  v116 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v114 = &v108 - v23;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A658, &qword_243ACAA28);
  v123 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v133 = &v108 - v24;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A660, &qword_243ACAA30);
  v125 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v124 = &v108 - v25;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A668, &qword_243ACAA38);
  v127 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v126 = &v108 - v26;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A670, &qword_243ACAA40);
  MEMORY[0x28223BE20](v134);
  v138 = (&v108 - v27);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A678, &qword_243ACAA48);
  v142 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v137 = &v108 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A680, &qword_243ACAA50);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v146 = &v108 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v144 = &v108 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A688, &qword_243ACAA58);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v143 = &v108 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v108 - v36;
  *v37 = sub_243AC1AB8();
  *(v37 + 1) = 0;
  v37[16] = 0;
  v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A690, &qword_243ACAA60) + 44);
  v141 = v37;
  sub_243AAD0D8(a1, &v37[v38]);
  if (*(a1 + 17))
  {
    v39 = 1;
    v40 = v144;
  }

  else
  {
    v110 = a2;
    if (*(a1 + 16) == 1)
    {
      v41 = sub_243AC2008();
      v42 = sub_243AC1CF8();
      KeyPath = swift_getKeyPath();
      v44 = [objc_opt_self() quaternaryLabelColor];
      v45 = sub_243AC1F78();
      v46 = swift_getKeyPath();
      if (sub_243AC2128())
      {
        v47 = 0x402E000000000000;
      }

      else
      {
        v47 = 0x4026000000000000;
      }

      v48 = sub_243AC1C48();
      LOBYTE(v153) = 0;
      v49 = v138;
      *v138 = v41;
      v49[1] = KeyPath;
      v49[2] = v42;
      v49[3] = v46;
      v49[4] = v45;
      *(v49 + 40) = v48;
      v49[6] = v47;
      *(v49 + 7) = xmmword_243ACA770;
      v49[9] = 0x402A000000000000;
      *(v49 + 80) = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A700, &qword_243ACAAA0);
      sub_243AB140C(&qword_27ED9A708, &qword_27ED9A700, &qword_243ACAAA0, sub_243AB0E00);
      v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A6E0, &qword_243ACAA90);
      v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A6E8, &qword_243ACAA98);
      v52 = sub_243AB1028(&qword_27ED9A6D8, &qword_27ED9A640, &qword_243ACAA10, sub_243AB0F70);
      v147 = v131;
      v148 = v52;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v147 = v132;
      v148 = OpaqueTypeConformance2;
      v54 = swift_getOpaqueTypeConformance2();
      v147 = v135;
      v148 = v54;
      v55 = swift_getOpaqueTypeConformance2();
      v56 = sub_243A491E8(&qword_27ED9A6F0, &qword_27ED9A6E0, &qword_243ACAA90, MEMORY[0x277CE14C0]);
      v57 = sub_243AB10EC();
      v147 = v136;
      v148 = v50;
      v149 = v51;
      v150 = v55;
      v151 = v56;
      v152 = v57;
      v58 = swift_getOpaqueTypeConformance2();
      v59 = sub_243AB0CDC(&qword_27ED9A628, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
      v147 = v139;
      v148 = v4;
      v149 = v58;
      v150 = v59;
      swift_getOpaqueTypeConformance2();
      v60 = v137;
      sub_243AC1AE8();
    }

    else
    {
      sub_243AB0308(a1, &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      v61 = *(v111 + 80);
      v109 = v4;
      v62 = (v61 + 16) & ~v61;
      v63 = swift_allocObject();
      sub_243AB0370(&v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v63 + v62);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A698, &qword_243ACAA68);
      sub_243AB0E00();
      sub_243AC20A8();
      if (sub_243AC2128())
      {
        v64 = 0x402E000000000000;
      }

      else
      {
        v64 = 0x4026000000000000;
      }

      v65 = sub_243AC1C48();
      (*(v112 + 32))(v19, v16, v113);
      v66 = &v19[*(v17 + 36)];
      *v66 = v65;
      *(v66 + 1) = v64;
      *(v66 + 1) = xmmword_243ACA770;
      *(v66 + 4) = 0x402A000000000000;
      v66[40] = 0;
      sub_243AB0F70();
      sub_243AC1EE8();
      sub_243A2251C(v19, &qword_27ED9A638, &qword_243ACAA08);
      v67 = sub_243AB1028(&qword_27ED9A6D8, &qword_27ED9A640, &qword_243ACAA10, sub_243AB0F70);
      v68 = v131;
      sub_243AC1DF8();
      sub_243A2251C(v21, &qword_27ED9A640, &qword_243ACAA10);
      v69 = a1[1];
      v147 = *a1;
      v148 = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99368, &qword_243AC6760);
      sub_243AC2068();
      v70 = v153;

      v71 = v118;
      sub_243AC2598();
      sub_243AC24C8();
      v72 = MEMORY[0x277D84F90];
      sub_243A2E2B4(MEMORY[0x277D84F90]);
      sub_243AC24A8();
      sub_243A2E2B4(v72);
      sub_243A2E2B4(v72);
      v73 = v121;
      sub_243AC24E8();
      v74 = sub_243AC24F8();
      (*(*(v74 - 8) + 56))(v73, 0, 1, v74);
      v147 = v68;
      v148 = v67;
      v131 = MEMORY[0x277D7EE48];
      v75 = swift_getOpaqueTypeConformance2();
      v76 = v114;
      v77 = v132;
      v78 = v130;
      sub_243AC1DC8();
      sub_243A2251C(v73, &qword_27ED991C8, &unk_243AC6A10);
      (*(v120 + 8))(v71, v122);
      (*(v115 + 8))(v78, v77);
      v147 = v77;
      v148 = v75;
      v132 = swift_getOpaqueTypeConformance2();
      v79 = v135;
      sub_243AC1DF8();
      (*(v116 + 8))(v76, v79);
      sub_243AC1A88();
      type metadata accessor for RecommendationsController(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v81 = [objc_opt_self() bundleForClass_];
      v82 = sub_243AC1D78();
      v130 = v83;
      LOBYTE(v77) = v84;
      v122 = v85;
      v86 = a1[4];
      LOBYTE(v153) = *(a1 + 24);
      v154 = v86;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D28, &qword_243AC8810);
      v87 = sub_243AC2088();
      v121 = &v108;
      v119 = v147;
      v118 = v148;
      LODWORD(v120) = v149;
      v88 = MEMORY[0x28223BE20](v87);
      MEMORY[0x28223BE20](v88);
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A6E0, &qword_243ACAA90);
      v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A6E8, &qword_243ACAA98);
      v147 = v79;
      v148 = v132;
      v132 = swift_getOpaqueTypeConformance2();
      v135 = sub_243A491E8(&qword_27ED9A6F0, &qword_27ED9A6E0, &qword_243ACAA90, MEMORY[0x277CE14C0]);
      v107 = sub_243AB10EC();
      v89 = v136;
      LOBYTE(v71) = v77;
      v90 = v124;
      v91 = v82;
      v92 = v130;
      v93 = v133;
      sub_243AC1F18();

      sub_243A82874(v91, v92, v71 & 1);

      (*(v123 + 8))(v93, v89);
      v94 = v128;
      sub_243AC1B18();
      v147 = v89;
      v148 = v116;
      v149 = v117;
      v150 = v132;
      v151 = v135;
      v152 = v107;
      v95 = swift_getOpaqueTypeConformance2();
      v96 = sub_243AB0CDC(&qword_27ED9A628, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
      v97 = v126;
      v98 = v139;
      v99 = v109;
      sub_243AC1E88();
      (*(v129 + 8))(v94, v99);
      (*(v125 + 8))(v90, v98);
      v100 = v127;
      v101 = v140;
      (*(v127 + 16))(v138, v97, v140);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A700, &qword_243ACAAA0);
      sub_243AB140C(&qword_27ED9A708, &qword_27ED9A700, &qword_243ACAAA0, sub_243AB0E00);
      v147 = v98;
      v148 = v109;
      v149 = v95;
      v150 = v96;
      swift_getOpaqueTypeConformance2();
      v60 = v137;
      sub_243AC1AE8();
      (*(v100 + 8))(v97, v101);
    }

    v40 = v144;
    sub_243A22814(v60, v144, &qword_27ED9A678, &qword_243ACAA48);
    v39 = 0;
    a2 = v110;
  }

  (*(v142 + 56))(v40, v39, 1, v145);
  v102 = v141;
  v103 = v143;
  sub_243A224B4(v141, v143, &qword_27ED9A688, &qword_243ACAA58);
  v104 = v146;
  sub_243A224B4(v40, v146, &qword_27ED9A680, &qword_243ACAA50);
  sub_243A224B4(v103, a2, &qword_27ED9A688, &qword_243ACAA58);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A710, &qword_243ACAAA8);
  sub_243A224B4(v104, a2 + *(v105 + 48), &qword_27ED9A680, &qword_243ACAA50);
  sub_243A2251C(v40, &qword_27ED9A680, &qword_243ACAA50);
  sub_243A2251C(v102, &qword_27ED9A688, &qword_243ACAA58);
  sub_243A2251C(v104, &qword_27ED9A680, &qword_243ACAA50);
  return sub_243A2251C(v103, &qword_27ED9A688, &qword_243ACAA58);
}

uint64_t sub_243AAD0D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A720, &qword_243ACAB20);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v124 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v122 = &v107 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A728, &qword_243ACAB28);
  v109 = *(v7 - 8);
  v110 = v7;
  MEMORY[0x28223BE20](v7);
  v107 = &v107 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A730, &qword_243ACAB30);
  v118 = *(v9 - 8);
  v119 = v9;
  MEMORY[0x28223BE20](v9);
  v108 = &v107 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A738, &qword_243ACAB38);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v121 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v127 = &v107 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A740, &qword_243ACAB40);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v120 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v126 = &v107 - v18;
  v19 = *a1;
  v20 = a1[1];
  v128 = a1;
  *&v148[0] = v19;
  *(&v148[0] + 1) = v20;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99368, &qword_243AC6760);
  sub_243AC2068();
  v21 = v143;
  v22 = [v143 title];

  v23 = sub_243AC2858();
  v25 = v24;

  *&v148[0] = v23;
  *(&v148[0] + 1) = v25;
  v117 = sub_243A4FC18();
  v26 = sub_243AC1D88();
  v28 = v27;
  v30 = v29;
  sub_243AC1CF8();
  v31 = sub_243AC1D68();
  v114 = v32;
  v115 = v31;
  LOBYTE(v23) = v33;
  v113 = v34;

  sub_243A82874(v26, v28, v30 & 1);

  KeyPath = swift_getKeyPath();
  sub_243AC2148();
  sub_243AC18E8();
  v35 = v23 & 1;
  v151 = v23 & 1;
  *&v150[55] = v153[3];
  *&v150[71] = v153[4];
  *&v150[87] = v153[5];
  *&v150[103] = v153[6];
  *&v150[7] = v153[0];
  *&v150[23] = v153[1];
  *&v150[39] = v153[2];
  v36 = [objc_opt_self() labelColor];
  v37 = sub_243AC1F78();
  v38 = swift_getKeyPath();
  v125 = v19;
  *&v148[0] = v19;
  v129 = v20;
  *(&v148[0] + 1) = v20;
  sub_243AC2068();
  v39 = v143;
  v40 = [v143 status];

  if (!v40)
  {
    v116 = *MEMORY[0x277CFB150];
    sub_243AC2858();
    goto LABEL_7;
  }

  v41 = sub_243AC2858();
  v43 = v42;

  v116 = *MEMORY[0x277CFB150];
  v44 = sub_243AC2858();
  if (!v43)
  {
LABEL_7:

    goto LABEL_8;
  }

  if (v41 == v44 && v43 == v45)
  {

LABEL_12:
    v46 = 0x4028000000000000;
    goto LABEL_13;
  }

  v47 = sub_243AC2EE8();

  if (v47)
  {
    goto LABEL_12;
  }

LABEL_8:
  if (*(v128 + 18))
  {
    v46 = 0x4028000000000000;
  }

  else
  {
    v46 = 0;
  }

LABEL_13:
  v48 = sub_243AC1C48();
  *(&v145[4] + 9) = *&v150[64];
  *(&v145[5] + 9) = *&v150[80];
  *(&v145[6] + 9) = *&v150[96];
  *(v145 + 9) = *v150;
  *(&v145[1] + 9) = *&v150[16];
  *(&v145[2] + 9) = *&v150[32];
  v152 = 0;
  *&v143 = v115;
  *(&v143 + 1) = v114;
  LOBYTE(v144) = v35;
  *(&v144 + 1) = v113;
  *&v145[0] = KeyPath;
  BYTE8(v145[0]) = 0;
  *(&v145[3] + 9) = *&v150[48];
  *(&v145[7] + 1) = *&v150[111];
  *&v146 = v38;
  *(&v146 + 1) = v37;
  LOBYTE(v147[0]) = v48;
  *(&v147[0] + 1) = 0x4031000000000000;
  v147[1] = 0uLL;
  *&v147[2] = v46;
  BYTE8(v147[2]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A748, &qword_243ACAB78);
  sub_243AB140C(&qword_27ED9A750, &qword_27ED9A748, &qword_243ACAB78, sub_243AB1490);
  sub_243AC1EE8();
  v148[10] = v146;
  v148[11] = v147[0];
  v149[0] = v147[1];
  *(v149 + 9) = *(&v147[1] + 9);
  v148[6] = v145[4];
  v148[7] = v145[5];
  v148[8] = v145[6];
  v148[9] = v145[7];
  v148[2] = v145[0];
  v148[3] = v145[1];
  v148[4] = v145[2];
  v148[5] = v145[3];
  v148[0] = v143;
  v148[1] = v144;
  sub_243A2251C(v148, &qword_27ED9A748, &qword_243ACAB78);
  *&v143 = v125;
  *(&v143 + 1) = v129;
  sub_243AC2068();
  v49 = v130;
  v50 = [v130 subTitle];

  v51 = sub_243AC2858();
  v53 = v52;

  v55 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v55 = v51 & 0xFFFFFFFFFFFFLL;
  }

  if (v55)
  {
    MEMORY[0x28223BE20](v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A798, &qword_243ACABA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A7A0, &qword_243ACABA8);
    sub_243AB1028(&qword_27ED9A7A8, &qword_27ED9A798, &qword_243ACABA0, sub_243AB16B8);
    sub_243AB17DC();
    v56 = v107;
    sub_243AC2048();
    sub_243A491E8(&qword_27ED9A7E8, &qword_27ED9A728, &qword_243ACAB28, MEMORY[0x277CDEFF0]);
    sub_243AB1894();
    v57 = v108;
    v58 = v110;
    sub_243AC1E78();
    (*(v109 + 8))(v56, v58);
    v59 = sub_243AC1C78();
    sub_243AC1718();
    v60 = v119;
    v61 = v57 + *(v119 + 36);
    *v61 = v59;
    *(v61 + 8) = v62;
    *(v61 + 16) = v63;
    *(v61 + 24) = v64;
    *(v61 + 32) = v65;
    *(v61 + 40) = 0;
    v66 = v127;
    sub_243A22814(v57, v127, &qword_27ED9A730, &qword_243ACAB30);
    v67 = 0;
  }

  else
  {
    v67 = 1;
    v66 = v127;
    v60 = v119;
  }

  (*(v118 + 56))(v66, v67, 1, v60);
  v68 = v125;
  *&v143 = v125;
  *(&v143 + 1) = v129;
  sub_243AC2068();
  v69 = v130;
  v70 = [v130 message];

  v71 = sub_243AC2858();
  v73 = v72;

  *&v143 = v71;
  *(&v143 + 1) = v73;
  v74 = sub_243AC1D88();
  v76 = v75;
  v78 = v77;
  sub_243AC1C88();
  v79 = sub_243AC1D68();
  v118 = v80;
  v119 = v79;
  v82 = v81;
  v84 = v83;

  sub_243A82874(v74, v76, v78 & 1);

  sub_243AC2148();
  sub_243AC18E8();
  v85 = v84 & 1;
  v141 = v84 & 1;
  v86 = sub_243AC1FD8();
  v87 = swift_getKeyPath();
  *&v143 = v68;
  *(&v143 + 1) = v129;
  sub_243AC2068();
  v88 = v130;
  v89 = [v130 status];

  if (!v89)
  {
    sub_243AC2858();
    goto LABEL_24;
  }

  v90 = sub_243AC2858();
  v92 = v91;

  v93 = sub_243AC2858();
  if (!v92)
  {
LABEL_24:

    goto LABEL_25;
  }

  if (v90 == v93 && v92 == v94)
  {

LABEL_29:
    v95 = 0x4028000000000000;
    goto LABEL_30;
  }

  v96 = sub_243AC2EE8();

  if (v96)
  {
    goto LABEL_29;
  }

LABEL_25:
  if (*(v128 + 18))
  {
    v95 = 0x4028000000000000;
  }

  else
  {
    v95 = 0;
  }

LABEL_30:
  v97 = sub_243AC1C48();
  v142 = 0;
  *&v130 = v119;
  *(&v130 + 1) = v82;
  LOBYTE(v131) = v85;
  *(&v131 + 1) = v118;
  v136 = v140[7];
  v137 = v140[8];
  v138 = v140[9];
  v132 = v140[3];
  v133 = v140[4];
  v135 = v140[6];
  v134 = v140[5];
  *&v139 = v87;
  *(&v139 + 1) = v86;
  LOBYTE(v140[0]) = v97;
  *(v140 + 8) = xmmword_243ACA780;
  *(&v140[1] + 1) = 0x4028000000000000;
  *&v140[2] = v95;
  BYTE8(v140[2]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A7F8, &qword_243ACABC8);
  sub_243AB140C(&qword_27ED9A800, &qword_27ED9A7F8, &qword_243ACABC8, sub_243AB18E8);
  v98 = v122;
  sub_243AC1EE8();
  v146 = v140[0];
  v147[0] = v140[1];
  *(v147 + 9) = *(&v140[1] + 9);
  v145[4] = v136;
  v145[5] = v137;
  v145[6] = v138;
  v145[7] = v139;
  v145[0] = v132;
  v145[1] = v133;
  v145[2] = v134;
  v145[3] = v135;
  v143 = v130;
  v144 = v131;
  sub_243A2251C(&v143, &qword_27ED9A7F8, &qword_243ACABC8);
  v99 = v126;
  v100 = v120;
  sub_243A224B4(v126, v120, &qword_27ED9A740, &qword_243ACAB40);
  v101 = v127;
  v102 = v121;
  sub_243A224B4(v127, v121, &qword_27ED9A738, &qword_243ACAB38);
  v103 = v124;
  sub_243A224B4(v98, v124, &qword_27ED9A720, &qword_243ACAB20);
  v104 = v123;
  sub_243A224B4(v100, v123, &qword_27ED9A740, &qword_243ACAB40);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A828, &qword_243ACABE0);
  sub_243A224B4(v102, v104 + *(v105 + 48), &qword_27ED9A738, &qword_243ACAB38);
  sub_243A224B4(v103, v104 + *(v105 + 64), &qword_27ED9A720, &qword_243ACAB20);
  sub_243A2251C(v98, &qword_27ED9A720, &qword_243ACAB20);
  sub_243A2251C(v101, &qword_27ED9A738, &qword_243ACAB38);
  sub_243A2251C(v99, &qword_27ED9A740, &qword_243ACAB40);
  sub_243A2251C(v103, &qword_27ED9A720, &qword_243ACAB20);
  sub_243A2251C(v102, &qword_27ED9A738, &qword_243ACAB38);
  return sub_243A2251C(v100, &qword_27ED9A740, &qword_243ACAB40);
}

uint64_t sub_243AADF54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A7C8, &qword_243ACABB8) - 8;
  MEMORY[0x28223BE20](v37);
  v36 = &v35 - v3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A7B8, &qword_243ACABB0);
  MEMORY[0x28223BE20](v38);
  v5 = &v35 - v4;
  v6 = a1[1];
  *&v41 = *a1;
  *(&v41 + 1) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99368, &qword_243AC6760);
  sub_243AC2068();
  v7 = v40;
  v8 = [v40 subTitle];

  v9 = sub_243AC2858();
  v11 = v10;

  *&v41 = v9;
  *(&v41 + 1) = v11;
  sub_243A4FC18();
  v12 = sub_243AC1D88();
  v14 = v13;
  v16 = v15;
  sub_243AC1C88();
  v17 = sub_243AC1D68();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_243A82874(v12, v14, v16 & 1);

  KeyPath = swift_getKeyPath();
  *&v41 = v17;
  *(&v41 + 1) = v19;
  v25 = v21 & 1;
  LOBYTE(v42) = v21 & 1;
  *(&v42 + 1) = v23;
  *&v43 = KeyPath;
  BYTE8(v43) = 0;
  sub_243AC1CC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A780, &qword_243ACAB90);
  sub_243AB15F8();
  v26 = v36;
  sub_243AC1E68();
  sub_243A82874(v17, v19, v25);

  v27 = sub_243AC1FD8();
  v28 = swift_getKeyPath();
  v29 = (v26 + *(v37 + 44));
  *v29 = v28;
  v29[1] = v27;
  sub_243AC2148();
  sub_243AC18E8();
  sub_243A22814(v26, v5, &qword_27ED9A7C8, &qword_243ACABB8);
  v30 = &v5[*(v38 + 36)];
  v31 = v46;
  *(v30 + 4) = v45;
  *(v30 + 5) = v31;
  *(v30 + 6) = v47;
  v32 = v42;
  *v30 = v41;
  *(v30 + 1) = v32;
  v33 = v44;
  *(v30 + 2) = v43;
  *(v30 + 3) = v33;
  sub_243AB16B8();
  sub_243AC1EE8();
  return sub_243A2251C(v5, &qword_27ED9A7B8, &qword_243ACABB0);
}

uint64_t sub_243AAE2BC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_243AC2008();
  v3 = sub_243AC1CE8();
  KeyPath = swift_getKeyPath();
  result = sub_243AC1FA8();
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  a1[3] = result;
  return result;
}

uint64_t sub_243AAE32C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_243AC2008();
  v3 = sub_243AC1CF8();
  KeyPath = swift_getKeyPath();
  v5 = [objc_opt_self() quaternaryLabelColor];
  v6 = sub_243AC1F78();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  a1[3] = result;
  a1[4] = v6;
  return result;
}

uint64_t sub_243AAE3CC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for Card(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A000, &unk_243AC9440);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v29 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v28 = &v27 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  sub_243AB0308(a1, &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_243AB0370(&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  sub_243AC20A8();
  sub_243AB0308(a1, &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = swift_allocObject();
  sub_243AB0370(&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v17);
  sub_243AC20A8();
  v20 = *(v7 + 16);
  v21 = v28;
  v20(v28, v16, v6);
  v22 = v29;
  v20(v29, v14, v6);
  v23 = v30;
  v20(v30, v21, v6);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A718, &qword_243ACAB18);
  v20(&v23[*(v24 + 48)], v22, v6);
  v25 = *(v7 + 8);
  v25(v14, v6);
  v25(v16, v6);
  v25(v22, v6);
  return (v25)(v21, v6);
}

uint64_t sub_243AAE7AC@<X0>(uint64_t a1@<X8>)
{
  sub_243AC1A88();
  type metadata accessor for RecommendationsController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  result = sub_243AC1D78();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_243AAE884(uint64_t a1)
{
  sub_243AC2168();
  sub_243AC17F8();
}

void sub_243AAE8F0(uint64_t a1)
{
  v1 = *(a1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99368, &qword_243AC6760);
  sub_243AC2068();
  v1();
}

uint64_t sub_243AAE970@<X0>(uint64_t a1@<X8>)
{
  sub_243AC1A88();
  type metadata accessor for RecommendationsController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_243AC1D78();
  v6 = v5;
  v8 = v7;
  sub_243AC1CB8();
  v9 = sub_243AC1D18();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_243A82874(v4, v6, v8 & 1);

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v15;
  return result;
}

double sub_243AAEAB0@<D0>(uint64_t a2@<X8>)
{
  sub_243AC1A88();
  type metadata accessor for RecommendationsController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_243AC1D78();
  sub_243AC1AE8();
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_243AAEC10@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a2;
  v77 = a3;
  v5 = sub_243AC24B8();
  MEMORY[0x28223BE20](v5 - 8);
  v74 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_243AC24D8();
  MEMORY[0x28223BE20](v7 - 8);
  v72 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991C8, &unk_243AC6A10);
  MEMORY[0x28223BE20](v9 - 8);
  v73 = &v60 - v10;
  v11 = sub_243AC25A8();
  v75 = *(v11 - 8);
  v76 = v11;
  MEMORY[0x28223BE20](v11);
  v71 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_243AC1B28();
  v65 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Card(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A5F0, &qword_243ACA9A8);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v60 - v20;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A5C8, &qword_243ACA990);
  MEMORY[0x28223BE20](v63);
  v23 = (&v60 - v22);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A5C0, &qword_243ACA988);
  v68 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v62 = &v60 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A5B8, &qword_243ACA980);
  v26 = *(v25 - 8);
  v69 = v25;
  v70 = v26;
  MEMORY[0x28223BE20](v25);
  v66 = &v60 - v27;
  v28 = *a1;
  *v23 = sub_243AC2148();
  v23[1] = v29;
  v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A5F8, &qword_243ACA9B0) + 44);
  sub_243AB0308(a2, &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v31 = swift_allocObject();
  sub_243AB0370(&v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30);
  *(v31 + ((v17 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
  v78 = v28;
  v32 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A600, &qword_243ACA9B8);
  sub_243AB1028(&qword_27ED9A608, &qword_27ED9A600, &qword_243ACA9B8, sub_243AB0C24);
  sub_243AC20A8();
  sub_243AC1B18();
  sub_243A491E8(&qword_27ED9A620, &qword_27ED9A5F0, &qword_243ACA9A8, MEMORY[0x277CDF028]);
  sub_243AB0CDC(&qword_27ED9A628, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v33 = v64;
  sub_243AC1E88();
  (*(v65 + 8))(v14, v33);
  (*(v19 + 8))(v21, v18);
  v34 = sub_243A491E8(&qword_27ED9A5D0, &qword_27ED9A5C8, &qword_243ACA990, MEMORY[0x277CE11A8]);
  v35 = v62;
  v36 = v63;
  sub_243AC1DF8();
  sub_243A2251C(v23, &qword_27ED9A5C8, &qword_243ACA990);
  v37 = v61[1];
  v80 = *v61;
  v81 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99368, &qword_243AC6760);
  sub_243AC2068();
  v38 = v79;

  v39 = [v32 actionTitle];
  sub_243AC2858();

  v40 = v71;
  sub_243AC2598();
  sub_243AC24C8();
  v41 = MEMORY[0x277D84F90];
  sub_243A2E2B4(MEMORY[0x277D84F90]);
  sub_243AC24A8();
  sub_243A2E2B4(v41);
  sub_243A2E2B4(v41);
  v42 = v73;
  sub_243AC24E8();
  v43 = sub_243AC24F8();
  v44 = v42;
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  v80 = v36;
  v81 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v66;
  v47 = v67;
  sub_243AC1DC8();
  sub_243A2251C(v44, &qword_27ED991C8, &unk_243AC6A10);
  (*(v75 + 8))(v40, v76);
  (*(v68 + 8))(v35, v47);
  v80 = v47;
  v81 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v48 = v77;
  v49 = v69;
  sub_243AC1DF8();
  (*(v70 + 8))(v46, v49);
  LOBYTE(v49) = sub_243AC1C68();
  sub_243AC1718();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A5A0, &qword_243ACA978);
  v59 = v48 + *(result + 36);
  *v59 = v49;
  *(v59 + 8) = v51;
  *(v59 + 16) = v53;
  *(v59 + 24) = v55;
  *(v59 + 32) = v57;
  *(v59 + 40) = 0;
  return result;
}

uint64_t sub_243AAF590(uint64_t a1, uint64_t a2)
{
  sub_243AC2168();
  sub_243AC17F8();
}

void sub_243AAF5FC(void *a1, uint64_t a2)
{
  v3 = a1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99368, &qword_243AC6760);
  sub_243AC2068();
  v3(v4, a2);
}

uint64_t sub_243AAF684(void *a1)
{
  v1 = [a1 actionTitle];
  sub_243AC2858();

  sub_243A4FC18();
  v2 = sub_243AC1D88();
  v4 = v3;
  v6 = v5;
  v7 = sub_243AC1D58();
  v9 = v8;
  v11 = v10;
  sub_243A82874(v2, v4, v6 & 1);

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A618, &unk_243ACA9C0);
  sub_243AB0C24();
  sub_243AC1EE8();
  sub_243A82874(v7, v9, v11 & 1);
}

uint64_t sub_243AAF7E0@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_243AC1B78();
  v23 = *(v1 - 8);
  v2 = v23;
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A538, &qword_243ACA908);
  v9 = v8 - 8;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  sub_243AC1B68();
  v15 = sub_243AC1A58();
  v16 = &v14[*(v9 + 44)];
  *v16 = v15;
  v16[1] = sub_243AAFA50;
  v16[2] = 0;
  sub_243AC1B88();
  sub_243A224B4(v14, v12, &qword_27ED9A538, &qword_243ACA908);
  v17 = *(v2 + 16);
  v18 = v1;
  v17(v5, v7, v1);
  v19 = v24;
  sub_243A224B4(v12, v24, &qword_27ED9A538, &qword_243ACA908);
  v20 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A540, &unk_243ACA910) + 48);
  v17(v20, v5, v18);
  v21 = *(v23 + 8);
  v21(v7, v18);
  sub_243A2251C(v14, &qword_27ED9A538, &qword_243ACA908);
  v21(v5, v18);
  return sub_243A2251C(v12, &qword_27ED9A538, &qword_243ACA908);
}

double sub_243AAFA50(uint64_t a1)
{
  v1 = sub_243AC1A58();
  v2 = MEMORY[0x245D45C20](v1);
  sub_243AC1848();
  return v2 + v3 * 0.08;
}

uint64_t sub_243AAFA98@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_243AC1A58();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A530, &qword_243ACA900);
  return sub_243AAF7E0(a2 + *(v3 + 44));
}

uint64_t sub_243AAFAF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_243AC19B8();
  *a1 = result;
  return result;
}

uint64_t sub_243AAFB44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243AC19D8();
  *a1 = result;
  return result;
}

unint64_t sub_243AAFB9C()
{
  result = qword_27ED9A4A8;
  if (!qword_27ED9A4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A490, &qword_243ACA810);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A480, &qword_243ACA800);
    sub_243AAFC90();
    swift_getOpaqueTypeConformance2();
    sub_243A491E8(&qword_27ED99160, &qword_27ED99168, &qword_243AC5E30, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A4A8);
  }

  return result;
}

unint64_t sub_243AAFC90()
{
  result = qword_27ED9A4B0;
  if (!qword_27ED9A4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A480, &qword_243ACA800);
    sub_243AAFD48();
    sub_243A491E8(&qword_27ED9A2D8, &qword_27ED9A2E0, &qword_243AC9EC8, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A4B0);
  }

  return result;
}

unint64_t sub_243AAFD48()
{
  result = qword_27ED9A4B8;
  if (!qword_27ED9A4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A478, &qword_243ACA7F8);
    sub_243AAFE00();
    sub_243A491E8(&qword_27ED99C48, &qword_27ED99C50, &qword_243AC8690, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A4B8);
  }

  return result;
}

unint64_t sub_243AAFE00()
{
  result = qword_27ED9A4C0;
  if (!qword_27ED9A4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A470, &qword_243ACA7F0);
    sub_243AAFEB8();
    sub_243A491E8(&qword_27ED99B70, &qword_27ED99B78, &qword_243AC8530, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A4C0);
  }

  return result;
}

unint64_t sub_243AAFEB8()
{
  result = qword_27ED9A4C8;
  if (!qword_27ED9A4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A468, &qword_243ACA7E8);
    sub_243A491E8(&qword_27ED9A4D0, &qword_27ED9A460, &qword_243ACA7E0, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A4C8);
  }

  return result;
}

unint64_t sub_243AAFF70()
{
  result = qword_27ED9A4D8;
  if (!qword_27ED9A4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A450, &qword_243ACA7D0);
    sub_243AB0028();
    sub_243A491E8(&qword_27ED9A2D8, &qword_27ED9A2E0, &qword_243AC9EC8, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A4D8);
  }

  return result;
}

unint64_t sub_243AB0028()
{
  result = qword_27ED9A4E0;
  if (!qword_27ED9A4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A448, &qword_243ACA7C8);
    sub_243AB00E0();
    sub_243A491E8(&qword_27ED99C48, &qword_27ED99C50, &qword_243AC8690, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A4E0);
  }

  return result;
}

unint64_t sub_243AB00E0()
{
  result = qword_27ED9A4E8;
  if (!qword_27ED9A4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A440, &qword_243ACA7C0);
    sub_243AB0198();
    sub_243A491E8(&qword_27ED99B70, &qword_27ED99B78, &qword_243AC8530, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A4E8);
  }

  return result;
}

unint64_t sub_243AB0198()
{
  result = qword_27ED9A4F0;
  if (!qword_27ED9A4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A438, &qword_243ACA7B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A428, &qword_243ACA7A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A420, &qword_243ACA7A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A418, &qword_243ACA798);
    sub_243A491E8(&qword_27ED9A4A0, &qword_27ED9A418, &qword_243ACA798, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A4F0);
  }

  return result;
}

uint64_t sub_243AB0308(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Card(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243AB0370(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Card(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243AB0424(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A4F8, qword_243ACA878);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

void *sub_243AB04F4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A4F8, qword_243ACA878);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_243AB05A4(uint64_t a1)
{
  sub_243AB066C(319);
  if (v1 <= 0x3F)
  {
    sub_243A9B55C();
    if (v2 <= 0x3F)
    {
      sub_243A4D158();
      if (v3 <= 0x3F)
      {
        sub_243AB06D4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_243AB066C(uint64_t a1)
{
  if (!qword_27ED9A510)
  {
    sub_243A2CFF0(255, &qword_27ED98F70, 0x277CFB1B0);
    v1 = sub_243AC2098();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED9A510);
    }
  }
}

void sub_243AB06D4(uint64_t a1)
{
  if (!qword_27ED9A518)
  {
    sub_243AC1738();
    v1 = sub_243AC1748();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED9A518);
    }
  }
}

unint64_t sub_243AB0730()
{
  result = qword_27ED9A520;
  if (!qword_27ED9A520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A528, &unk_243ACA8A0);
    sub_243AAFB9C();
    sub_243AAFF70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A520);
  }

  return result;
}

uint64_t sub_243AB07E8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for Card(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_243AAEC10(a1, v6, a2);
}

unint64_t sub_243AB0868()
{
  result = qword_27ED9A5B0;
  if (!qword_27ED9A5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A5A0, &qword_243ACA978);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A5B8, &qword_243ACA980);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A5C0, &qword_243ACA988);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A5C8, &qword_243ACA990);
    sub_243A491E8(&qword_27ED9A5D0, &qword_27ED9A5C8, &qword_243ACA990, MEMORY[0x277CE11A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A5B0);
  }

  return result;
}

unint64_t sub_243AB09D8()
{
  result = qword_27ED9A5D8;
  if (!qword_27ED9A5D8)
  {
    sub_243A2CFF0(255, &qword_27ED98B88, 0x277CFB1B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A5D8);
  }

  return result;
}

uint64_t sub_243AB0A40()
{
  v1 = (type metadata accessor for Card(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991C0, &unk_243AC5EE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_243AC1738();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v2 | 7);
}

uint64_t sub_243AB0B90()
{
  v1 = *(type metadata accessor for Card(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_243AAF590(v0 + v2, v3);
}

unint64_t sub_243AB0C24()
{
  result = qword_27ED9A610;
  if (!qword_27ED9A610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A618, &unk_243ACA9C0);
    sub_243A491E8(&qword_27ED99CE0, &qword_27ED99CE8, &qword_243AC8770, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A610);
  }

  return result;
}

uint64_t sub_243AB0CDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_243AB0D24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_243AC19B8();
  *a1 = result;
  return result;
}

unint64_t sub_243AB0E00()
{
  result = qword_27ED9A6A0;
  if (!qword_27ED9A6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A698, &qword_243ACAA68);
    sub_243AB0EB8();
    sub_243A491E8(&qword_27ED993E8, &qword_27ED993F0, &unk_243ACAA80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A6A0);
  }

  return result;
}

unint64_t sub_243AB0EB8()
{
  result = qword_27ED9A6A8;
  if (!qword_27ED9A6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A6B0, &qword_243ACAA70);
    sub_243A491E8(&qword_27ED9A6B8, &qword_27ED9A6C0, &qword_243ACAA78, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A6A8);
  }

  return result;
}

unint64_t sub_243AB0F70()
{
  result = qword_27ED9A6C8;
  if (!qword_27ED9A6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A638, &qword_243ACAA08);
    sub_243A491E8(&qword_27ED9A6D0, &qword_27ED9A630, &qword_243ACAA00, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A6C8);
  }

  return result;
}

uint64_t sub_243AB1028(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_243AB0CDC(&qword_27ED9A2E8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_243AB10EC()
{
  result = qword_27ED9A6F8;
  if (!qword_27ED9A6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A6E8, &qword_243ACAA98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A6F8);
  }

  return result;
}

uint64_t sub_243AB1168@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243AC19D8();
  *a1 = result;
  return result;
}

uint64_t objectdestroyTm_11()
{
  v1 = (type metadata accessor for Card(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991C0, &unk_243AC5EE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_243AC1738();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_243AB1324(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for Card(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_243AB13B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_243AC1978();
  *a1 = result & 1;
  return result;
}

uint64_t sub_243AB140C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_243AB1490()
{
  result = qword_27ED9A758;
  if (!qword_27ED9A758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A760, &qword_243ACAB80);
    sub_243AB1574(&qword_27ED9A768, &qword_27ED9A770, &qword_243ACAB88, sub_243AB15F8);
    sub_243A491E8(&qword_27ED993E8, &qword_27ED993F0, &unk_243ACAA80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A758);
  }

  return result;
}

uint64_t sub_243AB1574(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_243AB15F8()
{
  result = qword_27ED9A778;
  if (!qword_27ED9A778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A780, &qword_243ACAB90);
    sub_243A491E8(&qword_27ED9A788, &qword_27ED9A790, &qword_243ACAB98, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A778);
  }

  return result;
}

unint64_t sub_243AB16E8()
{
  result = qword_27ED9A7C0;
  if (!qword_27ED9A7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A7C8, &qword_243ACABB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A780, &qword_243ACAB90);
    sub_243AB15F8();
    swift_getOpaqueTypeConformance2();
    sub_243A491E8(&qword_27ED993E8, &qword_27ED993F0, &unk_243ACAA80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A7C0);
  }

  return result;
}

unint64_t sub_243AB17DC()
{
  result = qword_27ED9A7D0;
  if (!qword_27ED9A7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A7A0, &qword_243ACABA8);
    sub_243AB0EB8();
    sub_243A491E8(&qword_27ED9A7D8, &qword_27ED9A7E0, &qword_243ACABC0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A7D0);
  }

  return result;
}

unint64_t sub_243AB1894()
{
  result = qword_27ED9A7F0;
  if (!qword_27ED9A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A7F0);
  }

  return result;
}

unint64_t sub_243AB18E8()
{
  result = qword_27ED9A808;
  if (!qword_27ED9A808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A810, &qword_243ACABD0);
    sub_243AB19A0();
    sub_243A491E8(&qword_27ED993E8, &qword_27ED993F0, &unk_243ACAA80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A808);
  }

  return result;
}

unint64_t sub_243AB19A0()
{
  result = qword_27ED9A818;
  if (!qword_27ED9A818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A820, &qword_243ACABD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A818);
  }

  return result;
}

void sub_243AB1A78(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void *DataclassAction.__allocating_init(account:presenter:)(void *a1, void *a2)
{
  swift_allocObject();
  v4 = sub_243AB3EE8(a1, a2);

  return v4;
}

uint64_t DataclassAction.handle(recommendation:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_243AB1B60, 0, 0);
}

uint64_t sub_243AB1B60()
{
  v1 = [*(v0 + 16) identifier];
  v2 = sub_243AC2858();
  v4 = v3;

  v5 = sub_243A5B5E4(v2, v4);
  if (v5 == 14)
  {
    v8 = swift_task_alloc();
    *(v0 + 40) = v8;
    *v8 = v0;
    v8[1] = sub_243A276B4;

    return sub_243AB1E70(0);
  }

  else if (v5 == 4)
  {
    v6 = swift_task_alloc();
    *(v0 + 32) = v6;
    *v6 = v0;
    v6[1] = sub_243AB1D34;

    return sub_243AB3F98();
  }

  else
  {
    v9 = swift_task_alloc();
    *(v0 + 48) = v9;
    *v9 = v0;
    v9[1] = sub_243A284D4;
    v10 = *(v0 + 16);

    return sub_243AB26E8(v10);
  }
}