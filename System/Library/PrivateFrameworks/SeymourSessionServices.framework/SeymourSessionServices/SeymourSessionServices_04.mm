uint64_t sub_265CC2298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a1;
  v62 = a2;
  v3 = sub_265D59DE0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_265D58610();
  v58 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v59 = v8;
  v60 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v9 = *(v57 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v57);
  v12 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E210, &qword_265D5B590);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v17);
  v22 = *(v2 + 248);
  if (v22)
  {
    v23 = v2;
    v24 = *(v2 + 240);
    v52 = &v50 - v18;
    v53 = v24;
    v55 = v21;
    v56 = v19;
    v54 = v20;
    swift_bridgeObjectRetain_n();
    v51 = v14;
    sub_265CBED4C(v24, v22);

    v25 = *__swift_project_boxed_opaque_existential_1((v23 + 16), *(v23 + 40));
    v64[3] = type metadata accessor for MultiUserIdentityProvider(0);
    v64[4] = &off_28777ADE0;
    v64[0] = v25;
    sub_265C97624(v64, v63);
    v26 = swift_allocObject();
    sub_265C033C4(v63, v26 + 16);

    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    v27 = swift_allocObject();
    *(v27 + 16) = sub_265CC4B6C;
    *(v27 + 24) = v26;
    v28 = v14;
    v29 = v57;
    (*(v9 + 16))(v12, v28, v57);
    v30 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v31 = swift_allocObject();
    (*(v9 + 32))(v31 + v30, v12, v29);
    v32 = (v31 + ((v10 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v32 = sub_265CC3740;
    v32[1] = v27;
    sub_265D583A0();
    v33 = v52;
    sub_265D58930();
    (*(v9 + 8))(v51, v29);
    v34 = v60;
    sub_265CC3790(v61, v60);
    v35 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v36 = (v59 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    *(v37 + 16) = v53;
    *(v37 + 24) = v22;
    sub_265CC37F4(v34, v37 + v35);
    *(v37 + v36) = v23;
    v38 = v54;
    v39 = v55;
    v40 = v56;
    (*(v54 + 16))(v55, v33, v56);
    v41 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v42 = swift_allocObject();
    (*(v38 + 32))(v42 + v41, v39, v40);
    v43 = (v42 + ((v16 + v41 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v43 = sub_265CC3858;
    v43[1] = v37;

    sub_265D58930();
    return (*(v38 + 8))(v33, v40);
  }

  else
  {
    sub_265D59610();
    v45 = sub_265D59DD0();
    v46 = sub_265D5A070();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_265C01000, v45, v46, "Failed to send celebration: no active local session", v47, 2u);
      MEMORY[0x266770CF0](v47, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    sub_265C9EB84();
    v48 = swift_allocError();
    *v49 = 14;
    *(swift_allocObject() + 16) = v48;
    return sub_265D58940();
  }
}

void sub_265CC2910(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v61[1] = a5;
  v66 = a4;
  v67 = a2;
  v70 = a6;
  v7 = sub_265D58EB0();
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x28223BE20](v7);
  v62 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_265D59DE0();
  v68 = *(v9 - 8);
  v69 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v65 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v71 = (v61 - v12);
  v13 = sub_265D58610();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_265D583A0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_265D58460();
  v20 = *(v72 - 8);
  v21 = MEMORY[0x28223BE20](v72);
  v23 = v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v61 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = v61 - v27;
  (*(v17 + 16))(v19, a1, v16);
  sub_265CC3790(v66, v15);

  sub_265D5A030();
  sub_265D58450();
  sub_265D58360();
  if (v29)
  {

    sub_265D59610();
    (*(v20 + 16))(v26, v28, v72);
    v30 = sub_265D59DD0();
    v31 = sub_265D5A080();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v73 = v67;
      *v32 = 136315138;
      sub_265CC4B00(&qword_28003E4A8, MEMORY[0x277D51EC0], MEMORY[0x277D51EC8]);
      v33 = v28;
      v34 = v72;
      v35 = sub_265D5A3B0();
      v37 = v36;
      v38 = v34;
      v28 = v33;
      v39 = *(v20 + 8);
      v39(v26, v38);
      v40 = sub_265CF4FFC(v35, v37, &v73);

      *(v32 + 4) = v40;
      _os_log_impl(&dword_265C01000, v30, v31, "Sending %s", v32, 0xCu);
      v41 = v67;
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      MEMORY[0x266770CF0](v41, -1, -1);
      MEMORY[0x266770CF0](v32, -1, -1);
    }

    else
    {

      v39 = *(v20 + 8);
      v39(v26, v72);
    }

    (*(v68 + 8))(v71, v69);
    swift_getObjectType();
    v55 = v62;
    v54 = v63;
    v56 = v64;
    (*(v63 + 104))(v62, *MEMORY[0x277D4E158], v64);
    v57 = v72;
    sub_265D58C70();
    (*(v54 + 8))(v55, v56);
    sub_265D58970();
    v39(v28, v57);
  }

  else
  {
    sub_265D59610();
    (*(v20 + 16))(v23, v28, v72);
    v42 = sub_265D59DD0();
    v43 = sub_265D5A070();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v73 = v71;
      *v44 = 136315138;
      sub_265CC4B00(&qword_28003E4A8, MEMORY[0x277D51EC0], MEMORY[0x277D51EC8]);
      v45 = v28;
      v46 = v72;
      v47 = sub_265D5A3B0();
      v49 = v48;
      v50 = v46;
      v28 = v45;
      v51 = *(v20 + 8);
      v51(v23, v50);
      v52 = sub_265CF4FFC(v47, v49, &v73);

      *(v44 + 4) = v52;
      _os_log_impl(&dword_265C01000, v42, v43, "Not sending celebration because identity is missing required address %s", v44, 0xCu);
      v53 = v71;
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      MEMORY[0x266770CF0](v53, -1, -1);
      MEMORY[0x266770CF0](v44, -1, -1);
    }

    else
    {

      v51 = *(v20 + 8);
      v51(v23, v72);
    }

    (*(v68 + 8))(v65, v69);
    sub_265C9EB84();
    v58 = swift_allocError();
    *v59 = 4;
    *(swift_allocObject() + 16) = v58;
    v60 = v58;
    sub_265D58940();
    v51(v28, v72);
  }
}

uint64_t sub_265CC30D0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265D59DE0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59610();
  v8 = sub_265D59DD0();
  v9 = sub_265D5A080();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_265C01000, v8, v9, "System: Proxying MultiUserLinkMessage payload", v10, 2u);
    MEMORY[0x266770CF0](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  return sub_265CB22CC(a1);
}

uint64_t sub_265CC322C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E480, &qword_265D5B940);
  MEMORY[0x28223BE20](v4 - 8);
  v36 = &v28 - v5;
  v6 = sub_265D57DA0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_265D59DE0();
  v32 = *(v10 - 8);
  v33 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D58B40();
  v37 = sub_265D58B50();
  v14 = v13;
  sub_265D59610();
  v15 = *(v7 + 16);
  v35 = a1;
  v38 = v6;
  v31 = v15;
  v15(v9, a1, v6);

  v16 = sub_265D59DD0();
  v17 = sub_265D5A080();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30 = a2;
    v19 = v18;
    v29 = swift_slowAlloc();
    v39 = v29;
    *v19 = 136315650;
    *(v19 + 4) = sub_265CF4FFC(v37, v14, &v39);
    *(v19 + 12) = 2160;
    *(v19 + 14) = 1752392040;
    *(v19 + 22) = 2080;
    v20 = sub_265D57D80();
    v22 = v21;
    (*(v7 + 8))(v9, v38);
    v23 = sub_265CF4FFC(v20, v22, &v39);

    *(v19 + 24) = v23;
    _os_log_impl(&dword_265C01000, v16, v17, "Launching app: %s with url: %{mask.hash}s", v19, 0x20u);
    v24 = v29;
    swift_arrayDestroy();
    MEMORY[0x266770CF0](v24, -1, -1);
    MEMORY[0x266770CF0](v19, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v38);
  }

  (*(v32 + 8))(v12, v33);
  __swift_project_boxed_opaque_existential_1((v34 + 176), *(v34 + 200));
  v25 = v36;
  v26 = v38;
  v31(v36, v35, v38);
  (*(v7 + 56))(v25, 0, 1, v26);
  sub_265D59970();

  return sub_265CA4AE8(v25, &qword_28003E480, &qword_265D5B940);
}

uint64_t sub_265CC3790(uint64_t a1, uint64_t a2)
{
  v4 = sub_265D58610();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265CC37F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_265D58610();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_265CC3858(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_265D58610() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_265CC2910(a1, v7, v2 + v6, v8, a2);
}

void sub_265CC3960(uint64_t a1@<X8>)
{
  v3 = *(sub_265D58740() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  __swift_project_boxed_opaque_existential_1((*(v1 + 16) + 56), *(*(v1 + 16) + 80));
  sub_265CB46F4(v1 + v4, a1);
}

uint64_t sub_265CC3A0C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_265D584B0() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_265CC10D0(v4, v5, a1);
}

uint64_t sub_265CC3B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_265D599A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_265D58870();

  return sub_265D58930();
}

uint64_t sub_265CC3CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v9 = a4(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, a1, v9);
  v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  (*(v10 + 32))(v14 + v13, v12, v9);

  return sub_265D58930();
}

uint64_t sub_265CC3E50(void (*a1)(_BYTE *), uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E290, &qword_265D5B618);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v18[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v18[-v15];
  a3(a5);
  swift_storeEnumTagMultiPayload();
  sub_265CC4298(v11, v14);
  sub_265CC4298(v14, v16);
  a1(v16);
  return sub_265CA4AE8(v16, &qword_28003E290, &qword_265D5B618);
}

void sub_265CC3FC4(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v7, a5);
  v6 = v7;
  v8 = 0;
  a1(&v7);

  sub_265CA4470(v6, 0);
}

uint64_t sub_265CC4058@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_265CC40D0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t sub_265CC4214(void (*a1)(_BYTE *), uint64_t a2)
{
  v5 = *(sub_265D599A0() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_265CC3E50(a1, a2, v6, v7, v8);
}

uint64_t sub_265CC4298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E290, &qword_265D5B618);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265CC44BC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, void))
{
  v6 = *(a2(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  return a3(a1, v3 + v7, *(v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_106Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t objectdestroy_61Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_265CC47E8(uint64_t a1)
{
  v3 = *(sub_265D58130() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = __swift_project_boxed_opaque_existential_1((*(v1 + 16) + 120), *(*(v1 + 16) + 144));
  return sub_265CA4CA4((v1 + v4), a1, *v5, v5[1]);
}

uint64_t objectdestroy_89Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v6 + 8, v4 | 7);
}

uint64_t sub_265CC4918()
{
  v1 = *(sub_265D58130() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_265CBF200(v0 + v2, v3);
}

uint64_t sub_265CC49C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_265CC4A90(uint64_t a1)
{
  v3 = *(sub_265D58130() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_265CBF600(a1, v4);
}

uint64_t sub_265CC4B00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MultiUserError.hashValue.getter()
{
  v1 = *v0;
  sub_265D5A460();
  MEMORY[0x266770530](v1);
  return sub_265D5A4A0();
}

unint64_t sub_265CC4C20()
{
  result = qword_28003E4C8;
  if (!qword_28003E4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E4C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MultiUserError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MultiUserError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_265CC5154(uint64_t a1, uint64_t a2)
{
  result = sub_265D58EA0();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(result))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_265D58780();
  result = type metadata accessor for MultiUserLinkMessage(0);
  v4 = a2 + *(result + 20);
  if (*(v4 + 8) >> 60 != 15)
  {
    sub_265C987E0(*v4, *(v4 + 8));
    return sub_265D587A0();
  }

  return result;
}

uint64_t sub_265CC51EC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E4E8, &unk_265D5BC30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v28 - v5;
  v7 = sub_265D58EB0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D58770();
  sub_265D58E90();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_265CC564C(v6);
    v11 = sub_265D581D0();
    sub_265CC56B4(&qword_28003E4F0, MEMORY[0x277D50940], MEMORY[0x277D50948]);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D50908], v11);
    swift_willThrow();
    v13 = sub_265D587B0();
    return (*(*(v13 - 8) + 8))(a1, v13);
  }

  v15 = *(v8 + 32);
  v15(v10, v6, v7);
  v16 = sub_265D58790();
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 == 2)
    {
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      sub_265C9889C(v16, v17);
      if (v21 == v20)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    sub_265C9889C(v16, v17);
LABEL_13:
    v23 = 0;
    v25 = 0xF000000000000000;
    goto LABEL_14;
  }

  if (v18)
  {
    v22 = v16;
    sub_265C9889C(v16, v17);
    if (v22 != v22 >> 32)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v19 = v17;
  sub_265C9889C(v16, v17);
  if ((v19 & 0xFF000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v23 = sub_265D58790();
  v25 = v24;
LABEL_14:
  v26 = sub_265D587B0();
  (*(*(v26 - 8) + 8))(a1, v26);
  v15(a2, v10, v7);
  result = type metadata accessor for MultiUserLinkMessage(0);
  v27 = &a2[*(result + 20)];
  *v27 = v23;
  *(v27 + 1) = v25;
  return result;
}

uint64_t sub_265CC5528()
{
  sub_265D587B0();
  sub_265CC56B4(&qword_28003E4D0, MEMORY[0x277D53318], MEMORY[0x277D53310]);
  return sub_265D59D30();
}

uint64_t sub_265CC564C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E4E8, &unk_265D5BC30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265CC56B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_265CC5700()
{
  sub_265CD4B54(v0, &v3);
  v1 = v3;
  if ((v5 & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  return v1;
}

uint64_t sub_265CC5774()
{
  v0 = sub_265D590A0();
  v5[3] = v0;
  v5[4] = sub_265CD52F8(&qword_2813B8FE8, MEMORY[0x277D4F200], MEMORY[0x277D4F1E8]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v5);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_1Tm, *MEMORY[0x277D4F1F0], v0);
  v2 = sub_265D58BD0();
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  v3 = &unk_28777A798;
  if ((v2 & 1) == 0 && os_variant_has_internal_content())
  {
    v3 = &unk_28777A7C0;
  }

  result = sub_265C95FFC(v3);
  qword_2813B9268 = result;
  return result;
}

uint64_t sub_265CC586C(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_265D58AC0();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CC5988, 0, 0);
}

uint64_t sub_265CC5988()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    sub_265D58F20();
    v2 = swift_task_alloc();
    v0[18] = v2;
    v3 = type metadata accessor for StandaloneSessionMonitor(0);
    v4 = sub_265CD52F8(&qword_28003E608, type metadata accessor for StandaloneSessionMonitor, &unk_265D5BE80);
    *v2 = v0;
    v2[1] = sub_265CC5AF8;
    v5 = v0[16];

    return MEMORY[0x2821AE8D8](v5, v3, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_265CC5AF8()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265CC5CE0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_265CC5CE0()
{
  v20 = v0;
  v1 = *(v0 + 152);
  sub_265D595F0();
  v2 = v1;
  v3 = sub_265D59DD0();
  v4 = sub_265D5A070();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 96);
    v18 = *(v0 + 104);
    v7 = *(v0 + 88);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x2667704D0](*(v0 + 48), *(v0 + 56));
    v12 = sub_265CF4FFC(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_265C01000, v3, v4, "StandaloneSessionMonitor - Failed to start session on phone: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266770CF0](v9, -1, -1);
    MEMORY[0x266770CF0](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    v15 = *(v0 + 88);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_265CC5EC8(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_265D58AC0();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CC5FE4, 0, 0);
}

uint64_t sub_265CC5FE4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    sub_265D59020();
    v2 = swift_task_alloc();
    v0[18] = v2;
    v3 = type metadata accessor for StandaloneSessionMonitor(0);
    v4 = sub_265CD52F8(&qword_28003E608, type metadata accessor for StandaloneSessionMonitor, &unk_265D5BE80);
    *v2 = v0;
    v2[1] = sub_265CC6154;
    v5 = v0[16];

    return MEMORY[0x2821AE8C8](v5, v3, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_265CC6154()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265CC633C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_265CC633C()
{
  v20 = v0;
  v1 = *(v0 + 152);
  sub_265D595F0();
  v2 = v1;
  v3 = sub_265D59DD0();
  v4 = sub_265D5A070();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 96);
    v18 = *(v0 + 104);
    v7 = *(v0 + 88);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x2667704D0](*(v0 + 48), *(v0 + 56));
    v12 = sub_265CF4FFC(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_265C01000, v3, v4, "StandaloneSessionMonitor - Failed to end session on phone: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266770CF0](v9, -1, -1);
    MEMORY[0x266770CF0](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    v15 = *(v0 + 88);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_265CC6524(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_265D58130();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CC6640, 0, 0);
}

uint64_t sub_265CC6640()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    sub_265D58E60();
    v2 = swift_task_alloc();
    v0[18] = v2;
    v3 = type metadata accessor for StandaloneSessionMonitor(0);
    v4 = sub_265CD52F8(&qword_28003E608, type metadata accessor for StandaloneSessionMonitor, &unk_265D5BE80);
    *v2 = v0;
    v2[1] = sub_265CC67B0;
    v5 = v0[16];

    return MEMORY[0x2821AE8D0](v5, v3, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_265CC67B0()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265CC6998, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_265CC6998()
{
  v20 = v0;
  v1 = *(v0 + 152);
  sub_265D595F0();
  v2 = v1;
  v3 = sub_265D59DD0();
  v4 = sub_265D5A070();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 96);
    v18 = *(v0 + 104);
    v7 = *(v0 + 88);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x2667704D0](*(v0 + 48), *(v0 + 56));
    v12 = sub_265CF4FFC(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_265C01000, v3, v4, "StandaloneSessionMonitor - Failed to update session on phone: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266770CF0](v9, -1, -1);
    MEMORY[0x266770CF0](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    v15 = *(v0 + 88);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_265CC6B80(uint64_t a1)
{
  v2[30] = a1;
  v2[31] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003DE10, &qword_265D5BF50);
  v2[32] = v3;
  v2[33] = *(v3 - 8);
  v2[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E530, &qword_265D5BF68);
  v2[35] = swift_task_alloc();
  v4 = sub_265D59DE0();
  v2[36] = v4;
  v2[37] = *(v4 - 8);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CC6CEC, v1, 0);
}

uint64_t sub_265CC6CEC()
{
  sub_265D595F0();
  v1 = sub_265D59DD0();
  v2 = sub_265D5A080();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_265C01000, v1, v2, "Starting standalone workout session.", v3, 2u);
    MEMORY[0x266770CF0](v3, -1, -1);
  }

  v4 = v0[39];
  v5 = v0[36];
  v6 = v0[37];
  v7 = v0[31];

  v8 = *(v6 + 8);
  v0[40] = v8;
  v8(v4, v5);
  sub_265CC7780();
  v10 = v7[21];
  v9 = v7[22];
  __swift_project_boxed_opaque_existential_1(v7 + 18, v10);

  v11 = swift_task_alloc();
  v0[41] = v11;
  *v11 = v0;
  v11[1] = sub_265CC6E7C;
  v12 = v0[31];

  return MEMORY[0x2821AEFF8](&unk_265D5BF78, v12, v10, v9);
}

uint64_t sub_265CC6E7C(uint64_t a1)
{
  v2 = *(*v1 + 248);
  *(*v1 + 336) = a1;

  return MEMORY[0x2822009F8](sub_265CC6F9C, v2, 0);
}

uint64_t sub_265CC6F9C()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 248) + 144), *(*(v0 + 248) + 168));
  sub_265D58EC0();
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);
  v3 = sub_265D59FA0();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 1, 1, v3);
  sub_265C97624(v0 + 16, v0 + 56);
  v5 = sub_265CD52F8(&qword_28003E500, type metadata accessor for StandaloneSessionMonitor, &unk_265D5BF20);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v5;
  v6[4] = v2;
  sub_265C033C4((v0 + 56), (v6 + 5));
  swift_retain_n();
  *(v0 + 344) = sub_265D4CE7C(0, 0, v1, &unk_265D5BF88, v6);
  v4(v1, 1, 1, v3);
  sub_265C97624(v0 + 16, v0 + 96);
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v5;
  v7[4] = v2;
  sub_265C033C4((v0 + 96), (v7 + 5));
  swift_retain_n();
  *(v0 + 352) = sub_265D4CE7C(0, 0, v1, &unk_265D5BF98, v7);
  v4(v1, 1, 1, v3);
  sub_265C97624(v0 + 16, v0 + 136);
  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = v5;
  v8[4] = v2;
  sub_265C033C4((v0 + 136), (v8 + 5));
  swift_retain_n();
  *(v0 + 360) = sub_265D4CE7C(0, 0, v1, &unk_265D5BFA8, v8);
  v4(v1, 1, 1, v3);
  sub_265C97624(v0 + 16, v0 + 176);
  v9 = swift_allocObject();
  v9[2] = v2;
  v9[3] = v5;
  sub_265C033C4((v0 + 176), (v9 + 4));
  v9[9] = v2;
  swift_retain_n();
  *(v0 + 368) = sub_265D4CE7C(0, 0, v1, &unk_265D5BFB8, v9);
  sub_265D595F0();
  v10 = sub_265D59DD0();
  v11 = sub_265D5A080();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_265C01000, v10, v11, "StandaloneSessionMonitor - activating workout", v12, 2u);
    MEMORY[0x266770CF0](v12, -1, -1);
  }

  v13 = *(v0 + 320);
  v14 = *(v0 + 304);
  v15 = *(v0 + 288);

  v13(v14, v15);
  v16 = *(v0 + 40);
  v17 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v16);
  v18 = swift_task_alloc();
  *(v0 + 376) = v18;
  *v18 = v0;
  v18[1] = sub_265CC7448;

  return MEMORY[0x2821AF528](v16, v17);
}

uint64_t sub_265CC7448()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  v3 = *(v2 + 248);
  if (v0)
  {
    v4 = sub_265CC76C0;
  }

  else
  {
    v4 = sub_265CC7574;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_265CC7574()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  v5 = *(v0 + 248);
  v9 = *(v0 + 352);
  v10 = *(v0 + 336);
  *v2 = sub_265D589C0();
  sub_265C97624(v0 + 16, v2 + 8);
  *(v2 + 48) = v10;
  *(v2 + 64) = v9;
  *(v2 + 80) = v1;
  *(v2 + 88) = 0;
  (*(v4 + 104))(v2, *MEMORY[0x277D4F250], v3);
  v6 = OBJC_IVAR____TtC22SeymourSessionServices24StandaloneSessionMonitor_state;
  swift_beginAccess();
  (*(v4 + 40))(v5 + v6, v2, v3);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_265CC76C0()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265CC7780()
{
  v1 = v0;
  v126 = sub_265D59DE0();
  v125 = *(v126 - 8);
  v2 = MEMORY[0x28223BE20](v126);
  MEMORY[0x28223BE20](v2);
  v4 = v105 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v105 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0);
  MEMORY[0x28223BE20](v8 - 8);
  v123 = v105 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  MEMORY[0x28223BE20](v10 - 8);
  v122 = v105 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8);
  MEMORY[0x28223BE20](v12 - 8);
  v121 = v105 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0);
  MEMORY[0x28223BE20](v14 - 8);
  v120 = v105 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  MEMORY[0x28223BE20](v16 - 8);
  v119 = v105 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000);
  MEMORY[0x28223BE20](v18 - 8);
  v118 = v105 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  MEMORY[0x28223BE20](v20 - 8);
  v117 = v105 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  MEMORY[0x28223BE20](v22 - 8);
  v116 = v105 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0);
  MEMORY[0x28223BE20](v24 - 8);
  v115 = v105 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020);
  MEMORY[0x28223BE20](v26 - 8);
  v142 = v105 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = v105 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580);
  MEMORY[0x28223BE20](v31 - 8);
  v141 = v105 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100);
  MEMORY[0x28223BE20](v33 - 8);
  v140 = v105 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030);
  MEMORY[0x28223BE20](v35 - 8);
  v139 = v105 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110);
  MEMORY[0x28223BE20](v37 - 8);
  v138 = v105 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040);
  MEMORY[0x28223BE20](v39 - 8);
  v137 = v105 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120);
  MEMORY[0x28223BE20](v41 - 8);
  v136 = v105 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050);
  MEMORY[0x28223BE20](v43 - 8);
  v135 = v105 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130);
  MEMORY[0x28223BE20](v45 - 8);
  v134 = v105 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060);
  MEMORY[0x28223BE20](v47 - 8);
  v133 = v105 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140);
  MEMORY[0x28223BE20](v49 - 8);
  v132 = v105 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710);
  MEMORY[0x28223BE20](v51 - 8);
  v131 = v105 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150);
  MEMORY[0x28223BE20](v53 - 8);
  v130 = v105 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070);
  MEMORY[0x28223BE20](v55 - 8);
  v129 = v105 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160);
  MEMORY[0x28223BE20](v57 - 8);
  v128 = v105 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  MEMORY[0x28223BE20](v59 - 8);
  v127 = v105 - v60;
  v61 = sub_265D58130();
  MEMORY[0x28223BE20](v61 - 8);
  v111 = v105 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_265D59090();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v110 = v105 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));
  v64 = sub_265D59530();
  v124 = v7;
  v114 = v4;
  v65 = v64;
  v66 = [objc_opt_self() gramUnitWithMetricPrefix_];
  [v65 doubleValueForUnit_];
  v68 = v67;

  v105[1] = v30;
  v108 = *(v1 + 112);
  v109 = *(v1 + 120);
  ObjectType = swift_getObjectType();
  v106 = sub_265D5A4C0();
  sub_265D589C0();
  v105[3] = sub_265D58CF0();
  v105[2] = v69;

  v70 = sub_265D58020();
  (*(*(v70 - 8) + 56))(v127, 1, 1, v70);
  v71 = sub_265D58410();
  (*(*(v71 - 8) + 56))(v128, 1, 1, v71);
  v72 = sub_265D58590();
  (*(*(v72 - 8) + 56))(v129, 1, 1, v72);
  v73 = sub_265D58050();
  (*(*(v73 - 8) + 56))(v130, 1, 1, v73);
  v74 = sub_265D58200();
  (*(*(v74 - 8) + 56))(v131, 1, 1, v74);
  v75 = sub_265D58BC0();
  (*(*(v75 - 8) + 56))(v132, 1, 1, v75);
  v76 = sub_265D583E0();
  (*(*(v76 - 8) + 56))(v133, 1, 1, v76);
  v77 = sub_265D581B0();
  (*(*(v77 - 8) + 56))(v134, 1, 1, v77);
  v78 = sub_265D57F50();
  (*(*(v78 - 8) + 56))(v135, 1, 1, v78);
  v79 = sub_265D582A0();
  (*(*(v79 - 8) + 56))(v136, 1, 1, v79);
  v80 = sub_265D58680();
  (*(*(v80 - 8) + 56))(v137, 1, 1, v80);
  v81 = sub_265D58210();
  (*(*(v81 - 8) + 56))(v138, 1, 1, v81);
  v82 = sub_265D57E80();
  (*(*(v82 - 8) + 56))(v139, 1, 1, v82);
  v83 = sub_265D58430();
  (*(*(v83 - 8) + 56))(v140, 1, 1, v83);
  v84 = sub_265D58300();
  (*(*(v84 - 8) + 56))(v141, 1, 1, v84);
  v85 = sub_265D586F0();
  (*(*(v85 - 8) + 56))(v30, 1, 1, v85);
  v86 = sub_265D57E90();
  (*(*(v86 - 8) + 56))(v142, 1, 1, v86);
  v87 = sub_265D581C0();
  (*(*(v87 - 8) + 56))(v115, 1, 1, v87);
  v88 = sub_265D58BB0();
  (*(*(v88 - 8) + 56))(v116, 1, 1, v88);
  v89 = sub_265D585C0();
  (*(*(v89 - 8) + 56))(v117, 1, 1, v89);
  v90 = sub_265D57EA0();
  (*(*(v90 - 8) + 56))(v118, 1, 1, v90);
  v91 = sub_265D57ED0();
  (*(*(v91 - 8) + 56))(v119, 1, 1, v91);
  v92 = sub_265D58240();
  (*(*(v92 - 8) + 56))(v120, 1, 1, v92);
  sub_265D5A030();
  v93 = v121;
  sub_265D583F0();
  v94 = sub_265D58400();
  (*(*(v94 - 8) + 56))(v93, 0, 1, v94);
  v95 = sub_265D58600();
  (*(*(v95 - 8) + 56))(v122, 1, 1, v95);
  v96 = sub_265D58630();
  (*(*(v96 - 8) + 56))(v123, 1, 1, v96);
  v97 = sub_265D58B10();
  (*(*(v97 - 8) + 56))(v124, 1, 1, v97);
  sub_265D5A030();
  sub_265D580B0();
  v98 = v110;
  sub_265D59080();
  v99 = v113;
  sub_265D58ED0();
  (*(v112 + 8))(v98, v99);
  v100 = v114;
  sub_265D595F0();
  v101 = sub_265D59DD0();
  v102 = sub_265D5A080();
  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    *v103 = 134217984;
    *(v103 + 4) = v68;
    _os_log_impl(&dword_265C01000, v101, v102, "Updating session with body mass: %f", v103, 0xCu);
    MEMORY[0x266770CF0](v103, -1, -1);
  }

  return (*(v125 + 8))(v100, v126);
}

uint64_t sub_265CC8D44(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_265D58020();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  v2[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5F0, &qword_265D5C0C0);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CC8EA4, 0, 0);
}

uint64_t sub_265CC8EA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5F8, &qword_265D5C0C8);
  sub_265D59FD0();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_265CC8F6C;
  v2 = v0[7];
  v3 = v0[8];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_265CC8F6C()
{

  return MEMORY[0x2822009F8](sub_265CC9068, 0, 0);
}

uint64_t sub_265CC9068()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[3];
    (*(v3 + 32))(v0[6], v1, v2);

    return MEMORY[0x2822009F8](sub_265CC918C, v6, 0);
  }
}

uint64_t sub_265CC918C()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = swift_task_alloc();
  v0[12] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[13] = v4;
  v5 = type metadata accessor for StandaloneSessionMonitor(0);
  v6 = sub_265CD52F8(&qword_28003E508, type metadata accessor for StandaloneSessionMonitor, &unk_265D5BDF8);
  *v4 = v0;
  v4[1] = sub_265CC92B4;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282161508](v6, &unk_265D5C0D8, v3, v5, v7, v6);
}

void sub_265CC92B4()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 24);

    MEMORY[0x2822009F8](sub_265CC93F4, v3, 0);
  }
}

uint64_t sub_265CC9410()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_265CC8F6C;
  v2 = v0[7];
  v3 = v0[8];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_265CC94CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v7 = sub_265D57F50();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050);
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CC95C8, a4, 0);
}

uint64_t sub_265CC95C8()
{
  if (sub_265CA786C(2, *(v0[12] + 128)))
  {
    v1 = v0[13];
    v2 = v1[3];
    v3 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v2);
    v4 = swift_task_alloc();
    v0[18] = v4;
    *v4 = v0;
    v4[1] = sub_265CC96DC;

    return MEMORY[0x2821AF4F8](v0 + 7, v2, v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_265CC96DC()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_265CC97EC, v1, 0);
}

uint64_t sub_265CC97EC()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 2);
  sub_265D5A010();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v5 = sub_265CD52F8(&qword_28003E500, type metadata accessor for StandaloneSessionMonitor, &unk_265D5BF20);
  v0[19] = v5;
  v6 = v0[12];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_265CC99F0;
  v8 = v0[17];

  return MEMORY[0x282200310](v8, v6, v5);
}

uint64_t sub_265CC99F0()
{
  v2 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 96);

    return MEMORY[0x2822009F8](sub_265CC9B00, v4, 0);
  }

  return result;
}

uint64_t sub_265CC9B00()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[16];
    v7 = v0[12];
    (*(v3 + 32))(v6, v1, v2);
    v8 = swift_task_alloc();
    v0[21] = v8;
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = swift_task_alloc();
    v0[22] = v9;
    v10 = type metadata accessor for StandaloneSessionMonitor(0);
    v11 = sub_265CD52F8(&qword_28003E508, type metadata accessor for StandaloneSessionMonitor, &unk_265D5BDF8);
    *v9 = v0;
    v9[1] = sub_265CC9CCC;
    v12 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282161508](v11, &unk_265D5C0B8, v8, v10, v12, v11);
  }
}

void sub_265CC9CCC()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 96);

    MEMORY[0x2822009F8](sub_265CC9E0C, v3, 0);
  }
}

uint64_t sub_265CC9E0C()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[19];
  v2 = v0[12];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_265CC99F0;
  v4 = v0[17];

  return MEMORY[0x282200310](v4, v2, v1);
}

uint64_t sub_265CC9EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v7 = sub_265D581B0();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130);
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CC9FF8, a4, 0);
}

uint64_t sub_265CC9FF8()
{
  if (sub_265CA786C(0, *(v0[12] + 128)))
  {
    v1 = v0[13];
    v2 = v1[3];
    v3 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v2);
    v4 = swift_task_alloc();
    v0[18] = v4;
    *v4 = v0;
    v4[1] = sub_265CCA10C;

    return MEMORY[0x2821AF508](v0 + 7, v2, v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_265CCA10C()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_265CCA21C, v1, 0);
}

uint64_t sub_265CCA21C()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 2);
  sub_265D5A010();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v5 = sub_265CD52F8(&qword_28003E500, type metadata accessor for StandaloneSessionMonitor, &unk_265D5BF20);
  v0[19] = v5;
  v6 = v0[12];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_265CCA420;
  v8 = v0[17];

  return MEMORY[0x282200310](v8, v6, v5);
}

uint64_t sub_265CCA420()
{
  v2 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 96);

    return MEMORY[0x2822009F8](sub_265CCA530, v4, 0);
  }

  return result;
}

uint64_t sub_265CCA530()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[16];
    v7 = v0[12];
    (*(v3 + 32))(v6, v1, v2);
    v8 = swift_task_alloc();
    v0[21] = v8;
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = swift_task_alloc();
    v0[22] = v9;
    v10 = type metadata accessor for StandaloneSessionMonitor(0);
    v11 = sub_265CD52F8(&qword_28003E508, type metadata accessor for StandaloneSessionMonitor, &unk_265D5BDF8);
    *v9 = v0;
    v9[1] = sub_265CCA6FC;
    v12 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282161508](v11, &unk_265D5C0A8, v8, v10, v12, v11);
  }
}

void sub_265CCA6FC()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 96);

    MEMORY[0x2822009F8](sub_265CCA83C, v3, 0);
  }
}

uint64_t sub_265CCA83C()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[19];
  v2 = v0[12];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_265CCA420;
  v4 = v0[17];

  return MEMORY[0x282200310](v4, v2, v1);
}

uint64_t sub_265CCA92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v7 = sub_265D58210();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110);
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CCAA28, a4, 0);
}

uint64_t sub_265CCAA28()
{
  if (sub_265CA786C(3, *(v0[12] + 128)))
  {
    v1 = v0[13];
    v2 = v1[3];
    v3 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v2);
    v4 = swift_task_alloc();
    v0[18] = v4;
    *v4 = v0;
    v4[1] = sub_265CCAB3C;

    return MEMORY[0x2821AF510](v0 + 7, v2, v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_265CCAB3C()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_265CCAC4C, v1, 0);
}

uint64_t sub_265CCAC4C()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 2);
  sub_265D5A010();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v5 = sub_265CD52F8(&qword_28003E500, type metadata accessor for StandaloneSessionMonitor, &unk_265D5BF20);
  v0[19] = v5;
  v6 = v0[12];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_265CCAE50;
  v8 = v0[17];

  return MEMORY[0x282200310](v8, v6, v5);
}

uint64_t sub_265CCAE50()
{
  v2 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 96);

    return MEMORY[0x2822009F8](sub_265CCAF60, v4, 0);
  }

  return result;
}

uint64_t sub_265CCAF60()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[16];
    v7 = v0[12];
    (*(v3 + 32))(v6, v1, v2);
    v8 = swift_task_alloc();
    v0[21] = v8;
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = swift_task_alloc();
    v0[22] = v9;
    v10 = type metadata accessor for StandaloneSessionMonitor(0);
    v11 = sub_265CD52F8(&qword_28003E508, type metadata accessor for StandaloneSessionMonitor, &unk_265D5BDF8);
    *v9 = v0;
    v9[1] = sub_265CCB12C;
    v12 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282161508](v11, &unk_265D5C098, v8, v10, v12, v11);
  }
}

void sub_265CCB12C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 96);

    MEMORY[0x2822009F8](sub_265CCB26C, v3, 0);
  }
}

uint64_t sub_265CCB26C()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[19];
  v2 = v0[12];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_265CCAE50;
  v4 = v0[17];

  return MEMORY[0x282200310](v4, v2, v1);
}

uint64_t sub_265CCB35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v7 = sub_265D591A0();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E538, &qword_265D5BFC0);
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CCB458, a5, 0);
}

uint64_t sub_265CCB458()
{
  v1 = *(v0 + 96);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v0;
  v4[1] = sub_265CCB514;

  return MEMORY[0x2821AF4E8](v0 + 56, v2, v3);
}

uint64_t sub_265CCB514()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_265CCB624, v1, 0);
}

uint64_t sub_265CCB624()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 2);
  sub_265D5A010();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v5 = sub_265CD52F8(&qword_28003E500, type metadata accessor for StandaloneSessionMonitor, &unk_265D5BF20);
  v0[19] = v5;
  v6 = v0[13];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_265CCB828;
  v8 = v0[17];

  return MEMORY[0x282200310](v8, v6, v5);
}

uint64_t sub_265CCB828()
{
  v2 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 104);

    return MEMORY[0x2822009F8](sub_265CCB938, v4, 0);
  }

  return result;
}

uint64_t sub_265CCB938()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[16];
    v7 = v0[13];
    (*(v3 + 32))(v6, v1, v2);
    v8 = swift_task_alloc();
    v0[21] = v8;
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = swift_task_alloc();
    v0[22] = v9;
    v10 = type metadata accessor for StandaloneSessionMonitor(0);
    v11 = sub_265CD52F8(&qword_28003E508, type metadata accessor for StandaloneSessionMonitor, &unk_265D5BDF8);
    *v9 = v0;
    v9[1] = sub_265CCBB08;
    v12 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282161508](v11, &unk_265D5BFD0, v8, v10, v12, v11);
  }
}

void sub_265CCBB08()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 104);

    MEMORY[0x2822009F8](sub_265CCBC48, v3, 0);
  }
}

uint64_t sub_265CCBC48()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[19];
  v2 = v0[13];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_265CCB828;
  v4 = v0[17];

  return MEMORY[0x282200310](v4, v2, v1);
}

uint64_t sub_265CCBD38(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_265D59DE0();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CCBE08, v2, 0);
}

uint64_t sub_265CCBE08()
{
  v33 = v0;
  v1 = sub_265D58BA0();
  if ((v1 & 0x100000000) == 0)
  {
    sub_265D595F0();
    v2 = sub_265D59DD0();
    v3 = sub_265D5A070();
    v4 = os_log_type_enabled(v2, v3);
    v6 = v0[16];
    v5 = v0[17];
    v7 = v0[15];
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_265C01000, v2, v3, "Unknown Playback State.", v8, 2u);
      MEMORY[0x266770CF0](v8, -1, -1);
    }

    (*(v6 + 8))(v5, v7);
    goto LABEL_5;
  }

  v11 = v1;
  sub_265D595F0();
  v12 = sub_265D59DD0();
  v13 = sub_265D5A080();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[18];
  v17 = v0[15];
  v16 = v0[16];
  if (v14)
  {
    v31 = v0[18];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v32 = v19;
    *v18 = 136315138;
    v20 = sub_265D58B90();
    v22 = sub_265CF4FFC(v20, v21, &v32);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_265C01000, v12, v13, "Updating workout state to: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x266770CF0](v19, -1, -1);
    MEMORY[0x266770CF0](v18, -1, -1);

    (*(v16 + 8))(v31, v17);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
  }

  if (v11 - 1 < 2)
  {
    sub_265CCC7B4((v0 + 7));
    v23 = v0[10];
    if (v23)
    {
      v24 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v25 = swift_task_alloc();
      v0[19] = v25;
      *v25 = v0;
      v25[1] = sub_265CCC258;

      return MEMORY[0x2821AF518](v23, v24);
    }

    sub_265CA4AE8((v0 + 7), &qword_28003E528, &qword_265D5BF60);
LABEL_5:

    v9 = v0[1];

    return v9();
  }

  if (v11)
  {
    v29 = swift_task_alloc();
    v0[23] = v29;
    *v29 = v0;
    v29[1] = sub_265CCC598;
    v30 = v0[13];

    return sub_265CCC848(v30);
  }

  else
  {
    sub_265CCC7B4((v0 + 2));
    v26 = v0[5];
    if (!v26)
    {
      sub_265CA4AE8((v0 + 2), &qword_28003E528, &qword_265D5BF60);
      goto LABEL_5;
    }

    v27 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v28 = swift_task_alloc();
    v0[21] = v28;
    *v28 = v0;
    v28[1] = sub_265CCC3F8;

    return MEMORY[0x2821AF520](v26, v27);
  }
}

uint64_t sub_265CCC258()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_265CCC740;
  }

  else
  {
    v4 = sub_265CCC384;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_265CCC384()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265CCC3F8()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_265CCC6CC;
  }

  else
  {
    v4 = sub_265CCC524;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_265CCC524()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265CCC598()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_265CCC6CC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265CCC740()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265CCC7B4@<X0>(uint64_t a1@<X8>)
{
  sub_265CD4B54(v1, &v4);
  if (v6)
  {
    result = sub_265CD4B8C(&v4);
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {

    return sub_265C033C4(&v5, a1);
  }

  return result;
}

uint64_t sub_265CCC848(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = sub_265D59DE0();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CCC908, v1, 0);
}

uint64_t sub_265CCC908()
{
  sub_265CD4B54(*(v0 + 184), v0 + 16);
  if (*(v0 + 104))
  {
    sub_265CD4B8C(v0 + 16);

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {

    sub_265C033C4((v0 + 24), v0 + 112);
    v3 = *(v0 + 136);
    v4 = *(v0 + 144);
    __swift_project_boxed_opaque_existential_1((v0 + 112), v3);
    v5 = swift_task_alloc();
    *(v0 + 224) = v5;
    *v5 = v0;
    v5[1] = sub_265CCCA54;

    return MEMORY[0x2821AF4F0](v3, v4);
  }
}

uint64_t sub_265CCCA54()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 192);
  if (v0)
  {
    v4 = sub_265CCCBEC;
  }

  else
  {
    v4 = sub_265CCCB80;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_265CCCB80()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265CCCBEC()
{
  v19 = v0;
  v1 = v0[29];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  sub_265D595F0();
  v2 = v1;
  v3 = sub_265D59DD0();
  v4 = sub_265D5A070();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[26];
    v5 = v0[27];
    v7 = v0[25];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x2667704D0](v0[20], v0[21]);
    v12 = sub_265CF4FFC(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_265C01000, v3, v4, "Couldn't deactivate workout session: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266770CF0](v9, -1, -1);
    MEMORY[0x266770CF0](v8, -1, -1);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v14 = v0[26];
    v13 = v0[27];
    v15 = v0[25];

    (*(v14 + 8))(v13, v15);
  }

  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_265CCCDC8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_265D58AC0();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_265D59DE0();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003DE10, &qword_265D5BF50);
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CCCF50, v2, 0);
}

uint64_t sub_265CCCF50()
{
  v32 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[9];
  v29 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  (*(v2 + 104))(v1, *MEMORY[0x277D4F258], v3);
  v8 = OBJC_IVAR____TtC22SeymourSessionServices24StandaloneSessionMonitor_state;
  swift_beginAccess();
  (*(v2 + 40))(v6 + v8, v1, v3);
  swift_endAccess();
  sub_265D595F0();
  (*(v4 + 16))(v29, v7, v5);
  v9 = sub_265D59DD0();
  v10 = sub_265D5A080();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[12];
  v12 = v0[13];
  v14 = v0[10];
  v15 = v0[11];
  v17 = v0[8];
  v16 = v0[9];
  if (v11)
  {
    v30 = v0[11];
    v18 = swift_slowAlloc();
    v27 = v10;
    v19 = swift_slowAlloc();
    v31 = v19;
    *v18 = 136315138;
    v20 = sub_265D589D0();
    v28 = v12;
    v22 = v21;
    (*(v16 + 8))(v14, v17);
    v23 = sub_265CF4FFC(v20, v22, &v31);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_265C01000, v9, v27, "Ending Session: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x266770CF0](v19, -1, -1);
    MEMORY[0x266770CF0](v18, -1, -1);

    (*(v13 + 8))(v28, v30);
  }

  else
  {

    (*(v16 + 8))(v14, v17);
    (*(v13 + 8))(v12, v15);
  }

  v24 = swift_task_alloc();
  v0[17] = v24;
  *v24 = v0;
  v24[1] = sub_265CCD1EC;
  v25 = v0[6];

  return sub_265CCC848(v25);
}

uint64_t sub_265CCD1EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_265CCD33C()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
  v1 = OBJC_IVAR____TtC22SeymourSessionServices24StandaloneSessionMonitor_lock;
  v2 = sub_265D59930();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC22SeymourSessionServices24StandaloneSessionMonitor_state;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003DE10, &qword_265D5BF50);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for StandaloneSessionMonitor(uint64_t a1)
{
  result = qword_2813B8F50;
  if (!qword_2813B8F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_265CCD474(uint64_t a1)
{
  sub_265D59930();
  if (v1 <= 0x3F)
  {
    sub_265CCD580();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_265CCD580()
{
  if (!qword_28003E4F8)
  {
    v0 = sub_265D590F0();
    if (!v1)
    {
      atomic_store(v0, &qword_28003E4F8);
    }
  }
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_265CCD600(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 89))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 88);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265CCD63C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 73) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = -a2;
    }
  }

  return result;
}

uint64_t sub_265CCD690(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    v2 = a2 - 2;
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 88) = a2;
  return result;
}

uint64_t sub_265CCD724@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices24StandaloneSessionMonitor_state;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003DE10, &qword_265D5BF50);
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_265CCD7B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices24StandaloneSessionMonitor_state;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003DE10, &qword_265D5BF50);
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_265CCD8BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_265C978E0;

  return sub_265CC6B80(a1);
}

uint64_t sub_265CCD950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for StandaloneSessionMonitor(0);
  *v8 = v4;
  v8[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E0](a1, a2, v9, a4);
}

uint64_t sub_265CCDA18(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265C96620;

  return sub_265CCCDC8(a1, a2);
}

uint64_t sub_265CCDABC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265C978E0;

  return sub_265CCBD38(a1, a2);
}

uint64_t sub_265CCDB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for StandaloneSessionMonitor(0);
  *v8 = v4;
  v8[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E8](a1, a2, v9, a4);
}

uint64_t sub_265CCDC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for StandaloneSessionMonitor(0);
  *v8 = v4;
  v8[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E8](a1, a2, v9, a4);
}

uint64_t sub_265CCDCF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for StandaloneSessionMonitor(0);
  *v6 = v3;
  v6[1] = sub_265C978E0;

  return MEMORY[0x2821AE8D8](a1, v7, a3);
}

uint64_t sub_265CCDDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for StandaloneSessionMonitor(0);
  *v6 = v3;
  v6[1] = sub_265C978E0;

  return MEMORY[0x2821AE8C8](a1, v7, a3);
}

uint64_t sub_265CCDE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for StandaloneSessionMonitor(0);
  *v6 = v3;
  v6[1] = sub_265C978E0;

  return MEMORY[0x2821AE8D0](a1, v7, a3);
}

uint64_t sub_265CCDF18@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices24StandaloneSessionMonitor_lock;
  swift_beginAccess();
  v4 = sub_265D59930();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_265CCDFA0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices24StandaloneSessionMonitor_lock;
  swift_beginAccess();
  v4 = sub_265D59930();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

unint64_t sub_265CCE0DC()
{
  result = qword_28003E510;
  if (!qword_28003E510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E510);
  }

  return result;
}

uint64_t sub_265CCE130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0);
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  v3[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8);
  v3[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0);
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  v3[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000);
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  v3[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0);
  v3[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020);
  v3[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0);
  v3[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580);
  v3[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100);
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030);
  v3[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110);
  v3[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040);
  v3[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120);
  v3[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050);
  v3[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130);
  v3[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060);
  v3[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140);
  v3[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710);
  v3[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150);
  v3[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070);
  v3[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160);
  v3[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  v3[45] = swift_task_alloc();
  sub_265D58130();
  v3[46] = swift_task_alloc();
  v5 = sub_265D59090();
  v3[47] = v5;
  v3[48] = *(v5 - 8);
  v3[49] = swift_task_alloc();
  v6 = sub_265D58020();
  v3[50] = v6;
  v3[51] = *(v6 - 8);
  v3[52] = swift_task_alloc();
  v7 = sub_265D59DE0();
  v3[53] = v7;
  v3[54] = *(v7 - 8);
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003DE10, &qword_265D5BF50);
  v3[57] = v8;
  v3[58] = *(v8 - 8);
  v3[59] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CCE934, a2, 0);
}

uint64_t sub_265CCE934()
{
  v106 = v0;
  v2 = *(v0 + 464);
  v1 = *(v0 + 472);
  v3 = *(v0 + 456);
  v4 = *(v0 + 136);
  v5 = OBJC_IVAR____TtC22SeymourSessionServices24StandaloneSessionMonitor_state;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = (*(v2 + 88))(v1, v3);
  v7 = *(v0 + 464);
  v8 = *(v0 + 472);
  v9 = *(v0 + 456);
  if (v6 == *MEMORY[0x277D4F250])
  {
    v11 = *(v0 + 408);
    v10 = *(v0 + 416);
    v12 = *(v0 + 400);
    v13 = *(v0 + 144);
    (*(v7 + 96))(*(v0 + 472), v9);
    v14 = v8[1];
    *(v0 + 16) = *v8;
    *(v0 + 32) = v14;
    v15 = v8[2];
    v16 = v8[3];
    v17 = v8[4];
    *(v0 + 89) = *(v8 + 73);
    *(v0 + 64) = v16;
    *(v0 + 80) = v17;
    *(v0 + 48) = v15;
    sub_265D595F0();
    v76 = *(v11 + 16);
    v76(v10, v13, v12);
    v18 = sub_265D59DD0();
    v19 = sub_265D5A060();
    v20 = os_log_type_enabled(v18, v19);
    v22 = *(v0 + 432);
    v21 = *(v0 + 440);
    v23 = *(v0 + 416);
    v24 = *(v0 + 424);
    v26 = *(v0 + 400);
    v25 = *(v0 + 408);
    if (v20)
    {
      v103 = *(v0 + 424);
      v27 = swift_slowAlloc();
      v99 = v19;
      v28 = swift_slowAlloc();
      v105 = v28;
      *v27 = 136315138;
      sub_265CD52F8(&qword_28003E600, MEMORY[0x277D50400], MEMORY[0x277D50408]);
      v29 = sub_265D5A3B0();
      v101 = v21;
      v31 = v30;
      (*(v25 + 8))(v23, v26);
      v32 = sub_265CF4FFC(v29, v31, &v105);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_265C01000, v18, v99, "StandaloneSessionMonitor - Rings received: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x266770CF0](v28, -1, -1);
      MEMORY[0x266770CF0](v27, -1, -1);

      (*(v22 + 8))(v101, v103);
    }

    else
    {

      (*(v25 + 8))(v23, v26);
      (*(v22 + 8))(v21, v24);
    }

    v41 = *(v0 + 400);
    v40 = *(v0 + 408);
    v86 = *(v0 + 392);
    v87 = *(v0 + 384);
    v88 = *(v0 + 376);
    v43 = *(v0 + 352);
    v42 = *(v0 + 360);
    v44 = *(v0 + 336);
    v45 = *(v0 + 344);
    v46 = *(v0 + 328);
    v102 = *(v0 + 312);
    v104 = *(v0 + 320);
    v98 = *(v0 + 296);
    v100 = *(v0 + 304);
    v96 = *(v0 + 280);
    v97 = *(v0 + 288);
    v94 = *(v0 + 264);
    v95 = *(v0 + 272);
    v92 = *(v0 + 248);
    v93 = *(v0 + 256);
    v90 = *(v0 + 232);
    v91 = *(v0 + 240);
    v89 = *(v0 + 224);
    v77 = *(v0 + 216);
    v78 = *(v0 + 208);
    v79 = *(v0 + 200);
    v47 = *(v0 + 144);
    v80 = *(v0 + 192);
    v81 = *(v0 + 184);
    v82 = *(v0 + 176);
    v83 = *(v0 + 168);
    v84 = *(v0 + 160);
    v85 = *(v0 + 152);
    swift_getObjectType();
    sub_265D5A4C0();
    sub_265CC5700();
    sub_265D58CF0();

    v76(v42, v47, v41);
    (*(v40 + 56))(v42, 0, 1, v41);
    v48 = sub_265D58410();
    (*(*(v48 - 8) + 56))(v43, 1, 1, v48);
    v49 = sub_265D58590();
    (*(*(v49 - 8) + 56))(v45, 1, 1, v49);
    v50 = sub_265D58050();
    (*(*(v50 - 8) + 56))(v44, 1, 1, v50);
    v51 = sub_265D58200();
    (*(*(v51 - 8) + 56))(v46, 1, 1, v51);
    v52 = sub_265D58BC0();
    (*(*(v52 - 8) + 56))(v104, 1, 1, v52);
    v53 = sub_265D583E0();
    (*(*(v53 - 8) + 56))(v102, 1, 1, v53);
    v54 = sub_265D581B0();
    (*(*(v54 - 8) + 56))(v100, 1, 1, v54);
    v55 = sub_265D57F50();
    (*(*(v55 - 8) + 56))(v98, 1, 1, v55);
    v56 = sub_265D582A0();
    (*(*(v56 - 8) + 56))(v97, 1, 1, v56);
    v57 = sub_265D58680();
    (*(*(v57 - 8) + 56))(v96, 1, 1, v57);
    v58 = sub_265D58210();
    (*(*(v58 - 8) + 56))(v95, 1, 1, v58);
    v59 = sub_265D57E80();
    (*(*(v59 - 8) + 56))(v94, 1, 1, v59);
    v60 = sub_265D58430();
    (*(*(v60 - 8) + 56))(v93, 1, 1, v60);
    v61 = sub_265D58300();
    (*(*(v61 - 8) + 56))(v92, 1, 1, v61);
    v62 = sub_265D586F0();
    (*(*(v62 - 8) + 56))(v91, 1, 1, v62);
    v63 = sub_265D57E90();
    (*(*(v63 - 8) + 56))(v90, 1, 1, v63);
    v64 = sub_265D581C0();
    (*(*(v64 - 8) + 56))(v89, 1, 1, v64);
    v65 = sub_265D58BB0();
    (*(*(v65 - 8) + 56))(v77, 1, 1, v65);
    v66 = sub_265D585C0();
    (*(*(v66 - 8) + 56))(v78, 1, 1, v66);
    v67 = sub_265D57EA0();
    (*(*(v67 - 8) + 56))(v79, 1, 1, v67);
    v68 = sub_265D57ED0();
    (*(*(v68 - 8) + 56))(v80, 1, 1, v68);
    v69 = sub_265D58240();
    (*(*(v69 - 8) + 56))(v81, 1, 1, v69);
    v70 = sub_265D58400();
    (*(*(v70 - 8) + 56))(v82, 1, 1, v70);
    v71 = sub_265D58600();
    (*(*(v71 - 8) + 56))(v83, 1, 1, v71);
    v72 = sub_265D58630();
    (*(*(v72 - 8) + 56))(v84, 1, 1, v72);
    v73 = sub_265D58B10();
    (*(*(v73 - 8) + 56))(v85, 1, 1, v73);
    sub_265D5A030();
    sub_265D580B0();
    sub_265D59080();
    sub_265D58ED0();
    (*(v87 + 8))(v86, v88);
    sub_265CD4B8C(v0 + 16);
  }

  else
  {
    (*(v7 + 8))(*(v0 + 472), v9);
    sub_265D595F0();
    v33 = sub_265D59DD0();
    v34 = sub_265D5A070();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 448);
    v37 = *(v0 + 424);
    v38 = *(v0 + 432);
    if (v35)
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_265C01000, v33, v34, "StandaloneSessionMonitor - No active session to update activity rings.", v39, 2u);
      MEMORY[0x266770CF0](v39, -1, -1);
    }

    (*(v38 + 8))(v36, v37);
  }

  v74 = *(v0 + 8);

  return v74();
}

uint64_t sub_265CCF704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0);
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  v3[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8);
  v3[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0);
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  v3[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000);
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  v3[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0);
  v3[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020);
  v3[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0);
  v3[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580);
  v3[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100);
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030);
  v3[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110);
  v3[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040);
  v3[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120);
  v3[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050);
  v3[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130);
  v3[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060);
  v3[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140);
  v3[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710);
  v3[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150);
  v3[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070);
  v3[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160);
  v3[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  v3[45] = swift_task_alloc();
  sub_265D58130();
  v3[46] = swift_task_alloc();
  v5 = sub_265D59090();
  v3[47] = v5;
  v3[48] = *(v5 - 8);
  v3[49] = swift_task_alloc();
  v6 = sub_265D59DE0();
  v3[50] = v6;
  v3[51] = *(v6 - 8);
  v3[52] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003DE10, &qword_265D5BF50);
  v3[53] = v7;
  v3[54] = *(v7 - 8);
  v3[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CCFEA0, a2, 0);
}

uint64_t sub_265CCFEA0()
{
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  v3 = *(v0 + 424);
  v4 = *(v0 + 136);
  v5 = OBJC_IVAR____TtC22SeymourSessionServices24StandaloneSessionMonitor_state;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = (*(v2 + 88))(v1, v3);
  v7 = *(v0 + 432);
  v8 = *(v0 + 440);
  v9 = *(v0 + 424);
  if (v6 == *MEMORY[0x277D4F250])
  {
    v68 = *(v0 + 392);
    v69 = *(v0 + 384);
    v70 = *(v0 + 376);
    v11 = *(v0 + 352);
    v10 = *(v0 + 360);
    v13 = *(v0 + 336);
    v12 = *(v0 + 344);
    v15 = *(v0 + 320);
    v14 = *(v0 + 328);
    v16 = *(v0 + 304);
    v81 = *(v0 + 312);
    v79 = *(v0 + 280);
    v80 = *(v0 + 288);
    v77 = *(v0 + 264);
    v78 = *(v0 + 272);
    v75 = *(v0 + 248);
    v76 = *(v0 + 256);
    v73 = *(v0 + 232);
    v74 = *(v0 + 240);
    v71 = *(v0 + 296);
    v72 = *(v0 + 224);
    v59 = *(v0 + 216);
    v60 = *(v0 + 208);
    v61 = *(v0 + 200);
    v62 = *(v0 + 192);
    v63 = *(v0 + 184);
    v64 = *(v0 + 176);
    v65 = *(v0 + 168);
    v66 = *(v0 + 160);
    v67 = *(v0 + 152);
    v58 = *(v0 + 144);
    (*(v7 + 96))(v8, v9);
    v17 = v8[1];
    *(v0 + 16) = *v8;
    *(v0 + 32) = v17;
    v18 = v8[2];
    v19 = v8[3];
    v20 = v8[4];
    *(v0 + 89) = *(v8 + 73);
    *(v0 + 64) = v19;
    *(v0 + 80) = v20;
    *(v0 + 48) = v18;
    swift_getObjectType();
    sub_265D5A4C0();
    sub_265CC5700();
    sub_265D58CF0();

    v21 = sub_265D58020();
    (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
    v22 = sub_265D58410();
    (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
    v23 = sub_265D58590();
    (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
    v24 = sub_265D58050();
    (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
    v25 = sub_265D58200();
    (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
    v26 = sub_265D58BC0();
    (*(*(v26 - 8) + 56))(v15, 1, 1, v26);
    v27 = sub_265D583E0();
    (*(*(v27 - 8) + 56))(v81, 1, 1, v27);
    v28 = sub_265D581B0();
    (*(*(v28 - 8) + 56))(v16, 1, 1, v28);
    v29 = sub_265D57F50();
    v30 = *(v29 - 8);
    (*(v30 + 16))(v71, v58, v29);
    (*(v30 + 56))(v71, 0, 1, v29);
    v31 = sub_265D582A0();
    (*(*(v31 - 8) + 56))(v80, 1, 1, v31);
    v32 = sub_265D58680();
    (*(*(v32 - 8) + 56))(v79, 1, 1, v32);
    v33 = sub_265D58210();
    (*(*(v33 - 8) + 56))(v78, 1, 1, v33);
    v34 = sub_265D57E80();
    (*(*(v34 - 8) + 56))(v77, 1, 1, v34);
    v35 = sub_265D58430();
    (*(*(v35 - 8) + 56))(v76, 1, 1, v35);
    v36 = sub_265D58300();
    (*(*(v36 - 8) + 56))(v75, 1, 1, v36);
    v37 = sub_265D586F0();
    (*(*(v37 - 8) + 56))(v74, 1, 1, v37);
    v38 = sub_265D57E90();
    (*(*(v38 - 8) + 56))(v73, 1, 1, v38);
    v39 = sub_265D581C0();
    (*(*(v39 - 8) + 56))(v72, 1, 1, v39);
    v40 = sub_265D58BB0();
    (*(*(v40 - 8) + 56))(v59, 1, 1, v40);
    v41 = sub_265D585C0();
    (*(*(v41 - 8) + 56))(v60, 1, 1, v41);
    v42 = sub_265D57EA0();
    (*(*(v42 - 8) + 56))(v61, 1, 1, v42);
    v43 = sub_265D57ED0();
    (*(*(v43 - 8) + 56))(v62, 1, 1, v43);
    v44 = sub_265D58240();
    (*(*(v44 - 8) + 56))(v63, 1, 1, v44);
    v45 = sub_265D58400();
    (*(*(v45 - 8) + 56))(v64, 1, 1, v45);
    v46 = sub_265D58600();
    (*(*(v46 - 8) + 56))(v65, 1, 1, v46);
    v47 = sub_265D58630();
    (*(*(v47 - 8) + 56))(v66, 1, 1, v47);
    v48 = sub_265D58B10();
    (*(*(v48 - 8) + 56))(v67, 1, 1, v48);
    sub_265D5A030();
    sub_265D580B0();
    sub_265D59080();
    sub_265D58ED0();
    (*(v69 + 8))(v68, v70);
    sub_265CD4B8C(v0 + 16);
  }

  else
  {
    (*(v7 + 8))(*(v0 + 440), v9);
    sub_265D595F0();
    v49 = sub_265D59DD0();
    v50 = sub_265D5A070();
    v51 = os_log_type_enabled(v49, v50);
    v53 = *(v0 + 408);
    v52 = *(v0 + 416);
    v54 = *(v0 + 400);
    if (v51)
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_265C01000, v49, v50, "StandaloneSessionMonitor - No active session to update workout calories.", v55, 2u);
      MEMORY[0x266770CF0](v55, -1, -1);
    }

    (*(v53 + 8))(v52, v54);
  }

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_265CD0AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0);
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  v3[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8);
  v3[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0);
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  v3[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000);
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  v3[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0);
  v3[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020);
  v3[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0);
  v3[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580);
  v3[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100);
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030);
  v3[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110);
  v3[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040);
  v3[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120);
  v3[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050);
  v3[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130);
  v3[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060);
  v3[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140);
  v3[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710);
  v3[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150);
  v3[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070);
  v3[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160);
  v3[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  v3[45] = swift_task_alloc();
  sub_265D58130();
  v3[46] = swift_task_alloc();
  v5 = sub_265D59090();
  v3[47] = v5;
  v3[48] = *(v5 - 8);
  v3[49] = swift_task_alloc();
  v6 = sub_265D59DE0();
  v3[50] = v6;
  v3[51] = *(v6 - 8);
  v3[52] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003DE10, &qword_265D5BF50);
  v3[53] = v7;
  v3[54] = *(v7 - 8);
  v3[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CD1274, a2, 0);
}

uint64_t sub_265CD1274()
{
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  v3 = *(v0 + 424);
  v4 = *(v0 + 136);
  v5 = OBJC_IVAR____TtC22SeymourSessionServices24StandaloneSessionMonitor_state;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = (*(v2 + 88))(v1, v3);
  v7 = *(v0 + 432);
  v8 = *(v0 + 440);
  v9 = *(v0 + 424);
  if (v6 == *MEMORY[0x277D4F250])
  {
    v67 = *(v0 + 392);
    v68 = *(v0 + 384);
    v69 = *(v0 + 376);
    v11 = *(v0 + 352);
    v10 = *(v0 + 360);
    v13 = *(v0 + 336);
    v12 = *(v0 + 344);
    v15 = *(v0 + 320);
    v14 = *(v0 + 328);
    v80 = *(v0 + 296);
    v81 = *(v0 + 312);
    v78 = *(v0 + 280);
    v79 = *(v0 + 288);
    v76 = *(v0 + 264);
    v77 = *(v0 + 272);
    v74 = *(v0 + 248);
    v75 = *(v0 + 256);
    v72 = *(v0 + 232);
    v73 = *(v0 + 240);
    v70 = *(v0 + 304);
    v71 = *(v0 + 224);
    v59 = *(v0 + 216);
    v60 = *(v0 + 208);
    v16 = *(v0 + 184);
    v61 = *(v0 + 200);
    v62 = *(v0 + 192);
    v63 = *(v0 + 176);
    v64 = *(v0 + 168);
    v65 = *(v0 + 160);
    v66 = *(v0 + 152);
    v58 = *(v0 + 144);
    (*(v7 + 96))(v8, v9);
    v17 = v8[1];
    *(v0 + 16) = *v8;
    *(v0 + 32) = v17;
    v18 = v8[2];
    v19 = v8[3];
    v20 = v8[4];
    *(v0 + 89) = *(v8 + 73);
    *(v0 + 64) = v19;
    *(v0 + 80) = v20;
    *(v0 + 48) = v18;
    swift_getObjectType();
    sub_265D5A4C0();
    sub_265CC5700();
    sub_265D58CF0();

    v21 = sub_265D58020();
    (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
    v22 = sub_265D58410();
    (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
    v23 = sub_265D58590();
    (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
    v24 = sub_265D58050();
    (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
    v25 = sub_265D58200();
    (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
    v26 = sub_265D58BC0();
    (*(*(v26 - 8) + 56))(v15, 1, 1, v26);
    v27 = sub_265D583E0();
    (*(*(v27 - 8) + 56))(v81, 1, 1, v27);
    v28 = sub_265D581B0();
    v29 = *(v28 - 8);
    (*(v29 + 16))(v70, v58, v28);
    (*(v29 + 56))(v70, 0, 1, v28);
    v30 = sub_265D57F50();
    (*(*(v30 - 8) + 56))(v80, 1, 1, v30);
    v31 = sub_265D582A0();
    (*(*(v31 - 8) + 56))(v79, 1, 1, v31);
    v32 = sub_265D58680();
    (*(*(v32 - 8) + 56))(v78, 1, 1, v32);
    v33 = sub_265D58210();
    (*(*(v33 - 8) + 56))(v77, 1, 1, v33);
    v34 = sub_265D57E80();
    (*(*(v34 - 8) + 56))(v76, 1, 1, v34);
    v35 = sub_265D58430();
    (*(*(v35 - 8) + 56))(v75, 1, 1, v35);
    v36 = sub_265D58300();
    (*(*(v36 - 8) + 56))(v74, 1, 1, v36);
    v37 = sub_265D586F0();
    (*(*(v37 - 8) + 56))(v73, 1, 1, v37);
    v38 = sub_265D57E90();
    (*(*(v38 - 8) + 56))(v72, 1, 1, v38);
    v39 = sub_265D581C0();
    (*(*(v39 - 8) + 56))(v71, 1, 1, v39);
    v40 = sub_265D58BB0();
    (*(*(v40 - 8) + 56))(v59, 1, 1, v40);
    v41 = sub_265D585C0();
    (*(*(v41 - 8) + 56))(v60, 1, 1, v41);
    v42 = sub_265D57EA0();
    (*(*(v42 - 8) + 56))(v61, 1, 1, v42);
    v43 = sub_265D57ED0();
    (*(*(v43 - 8) + 56))(v62, 1, 1, v43);
    v44 = sub_265D58240();
    (*(*(v44 - 8) + 56))(v16, 1, 1, v44);
    v45 = sub_265D58400();
    (*(*(v45 - 8) + 56))(v63, 1, 1, v45);
    v46 = sub_265D58600();
    (*(*(v46 - 8) + 56))(v64, 1, 1, v46);
    v47 = sub_265D58630();
    (*(*(v47 - 8) + 56))(v65, 1, 1, v47);
    v48 = sub_265D58B10();
    (*(*(v48 - 8) + 56))(v66, 1, 1, v48);
    sub_265D5A030();
    sub_265D580B0();
    sub_265D59080();
    sub_265D58ED0();
    (*(v68 + 8))(v67, v69);
    sub_265CD4B8C(v0 + 16);
  }

  else
  {
    (*(v7 + 8))(*(v0 + 440), v9);
    sub_265D595F0();
    v49 = sub_265D59DD0();
    v50 = sub_265D5A070();
    v51 = os_log_type_enabled(v49, v50);
    v53 = *(v0 + 408);
    v52 = *(v0 + 416);
    v54 = *(v0 + 400);
    if (v51)
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_265C01000, v49, v50, "StandaloneSessionMonitor - No active session to update workout distance.", v55, 2u);
      MEMORY[0x266770CF0](v55, -1, -1);
    }

    (*(v53 + 8))(v52, v54);
  }

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_265CD1E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0);
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  v3[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8);
  v3[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0);
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  v3[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000);
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  v3[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0);
  v3[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020);
  v3[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0);
  v3[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580);
  v3[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100);
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030);
  v3[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110);
  v3[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040);
  v3[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120);
  v3[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050);
  v3[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130);
  v3[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060);
  v3[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140);
  v3[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710);
  v3[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150);
  v3[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070);
  v3[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160);
  v3[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  v3[45] = swift_task_alloc();
  sub_265D58130();
  v3[46] = swift_task_alloc();
  v5 = sub_265D59090();
  v3[47] = v5;
  v3[48] = *(v5 - 8);
  v3[49] = swift_task_alloc();
  v6 = sub_265D59DE0();
  v3[50] = v6;
  v3[51] = *(v6 - 8);
  v3[52] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003DE10, &qword_265D5BF50);
  v3[53] = v7;
  v3[54] = *(v7 - 8);
  v3[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CD2638, a2, 0);
}

uint64_t sub_265CD2638()
{
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  v3 = *(v0 + 424);
  v4 = *(v0 + 136);
  v5 = OBJC_IVAR____TtC22SeymourSessionServices24StandaloneSessionMonitor_state;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = (*(v2 + 88))(v1, v3);
  v7 = *(v0 + 432);
  v8 = *(v0 + 440);
  v9 = *(v0 + 424);
  if (v6 == *MEMORY[0x277D4F250])
  {
    v68 = *(v0 + 392);
    v69 = *(v0 + 384);
    v70 = *(v0 + 376);
    v11 = *(v0 + 352);
    v10 = *(v0 + 360);
    v13 = *(v0 + 336);
    v12 = *(v0 + 344);
    v15 = *(v0 + 320);
    v14 = *(v0 + 328);
    v16 = *(v0 + 312);
    v80 = *(v0 + 296);
    v81 = *(v0 + 304);
    v79 = *(v0 + 288);
    v77 = *(v0 + 264);
    v78 = *(v0 + 280);
    v75 = *(v0 + 248);
    v76 = *(v0 + 256);
    v73 = *(v0 + 232);
    v74 = *(v0 + 240);
    v71 = *(v0 + 272);
    v72 = *(v0 + 224);
    v59 = *(v0 + 216);
    v60 = *(v0 + 208);
    v61 = *(v0 + 200);
    v62 = *(v0 + 192);
    v63 = *(v0 + 184);
    v64 = *(v0 + 176);
    v65 = *(v0 + 168);
    v66 = *(v0 + 160);
    v67 = *(v0 + 152);
    v58 = *(v0 + 144);
    (*(v7 + 96))(v8, v9);
    v17 = v8[1];
    *(v0 + 16) = *v8;
    *(v0 + 32) = v17;
    v18 = v8[2];
    v19 = v8[3];
    v20 = v8[4];
    *(v0 + 89) = *(v8 + 73);
    *(v0 + 64) = v19;
    *(v0 + 80) = v20;
    *(v0 + 48) = v18;
    swift_getObjectType();
    sub_265D5A4C0();
    sub_265CC5700();
    sub_265D58CF0();

    v21 = sub_265D58020();
    (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
    v22 = sub_265D58410();
    (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
    v23 = sub_265D58590();
    (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
    v24 = sub_265D58050();
    (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
    v25 = sub_265D58200();
    (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
    v26 = sub_265D58BC0();
    (*(*(v26 - 8) + 56))(v15, 1, 1, v26);
    v27 = sub_265D583E0();
    (*(*(v27 - 8) + 56))(v16, 1, 1, v27);
    v28 = sub_265D581B0();
    (*(*(v28 - 8) + 56))(v81, 1, 1, v28);
    v29 = sub_265D57F50();
    (*(*(v29 - 8) + 56))(v80, 1, 1, v29);
    v30 = sub_265D582A0();
    (*(*(v30 - 8) + 56))(v79, 1, 1, v30);
    v31 = sub_265D58680();
    (*(*(v31 - 8) + 56))(v78, 1, 1, v31);
    v32 = sub_265D58210();
    v33 = *(v32 - 8);
    (*(v33 + 16))(v71, v58, v32);
    (*(v33 + 56))(v71, 0, 1, v32);
    v34 = sub_265D57E80();
    (*(*(v34 - 8) + 56))(v77, 1, 1, v34);
    v35 = sub_265D58430();
    (*(*(v35 - 8) + 56))(v76, 1, 1, v35);
    v36 = sub_265D58300();
    (*(*(v36 - 8) + 56))(v75, 1, 1, v36);
    v37 = sub_265D586F0();
    (*(*(v37 - 8) + 56))(v74, 1, 1, v37);
    v38 = sub_265D57E90();
    (*(*(v38 - 8) + 56))(v73, 1, 1, v38);
    v39 = sub_265D581C0();
    (*(*(v39 - 8) + 56))(v72, 1, 1, v39);
    v40 = sub_265D58BB0();
    (*(*(v40 - 8) + 56))(v59, 1, 1, v40);
    v41 = sub_265D585C0();
    (*(*(v41 - 8) + 56))(v60, 1, 1, v41);
    v42 = sub_265D57EA0();
    (*(*(v42 - 8) + 56))(v61, 1, 1, v42);
    v43 = sub_265D57ED0();
    (*(*(v43 - 8) + 56))(v62, 1, 1, v43);
    v44 = sub_265D58240();
    (*(*(v44 - 8) + 56))(v63, 1, 1, v44);
    v45 = sub_265D58400();
    (*(*(v45 - 8) + 56))(v64, 1, 1, v45);
    v46 = sub_265D58600();
    (*(*(v46 - 8) + 56))(v65, 1, 1, v46);
    v47 = sub_265D58630();
    (*(*(v47 - 8) + 56))(v66, 1, 1, v47);
    v48 = sub_265D58B10();
    (*(*(v48 - 8) + 56))(v67, 1, 1, v48);
    sub_265D5A030();
    sub_265D580B0();
    sub_265D59080();
    sub_265D58ED0();
    (*(v69 + 8))(v68, v70);
    sub_265CD4B8C(v0 + 16);
  }

  else
  {
    (*(v7 + 8))(*(v0 + 440), v9);
    sub_265D595F0();
    v49 = sub_265D59DD0();
    v50 = sub_265D5A070();
    v51 = os_log_type_enabled(v49, v50);
    v53 = *(v0 + 408);
    v52 = *(v0 + 416);
    v54 = *(v0 + 400);
    if (v51)
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_265C01000, v49, v50, "StandaloneSessionMonitor - No active session to update workout heart rate.", v55, 2u);
      MEMORY[0x266770CF0](v55, -1, -1);
    }

    (*(v53 + 8))(v52, v54);
  }

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_265CD3274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0);
  v3[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8);
  v3[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0);
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  v3[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000);
  v3[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  v3[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  v3[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0);
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020);
  v3[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0);
  v3[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580);
  v3[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100);
  v3[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030);
  v3[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110);
  v3[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040);
  v3[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120);
  v3[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050);
  v3[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130);
  v3[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060);
  v3[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140);
  v3[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710);
  v3[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150);
  v3[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070);
  v3[47] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160);
  v3[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  v3[49] = swift_task_alloc();
  sub_265D58130();
  v3[50] = swift_task_alloc();
  v5 = sub_265D59090();
  v3[51] = v5;
  v3[52] = *(v5 - 8);
  v3[53] = swift_task_alloc();
  v6 = sub_265D58B10();
  v3[54] = v6;
  v3[55] = *(v6 - 8);
  v3[56] = swift_task_alloc();
  v7 = sub_265D59DE0();
  v3[57] = v7;
  v3[58] = *(v7 - 8);
  v3[59] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003DE10, &qword_265D5BF50);
  v3[60] = v8;
  v3[61] = *(v8 - 8);
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CD3A78, a2, 0);
}

uint64_t sub_265CD3A78()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 480);
  v3 = *(v0 + 488);
  v4 = *(v0 + 168);
  v5 = OBJC_IVAR____TtC22SeymourSessionServices24StandaloneSessionMonitor_state;
  swift_beginAccess();
  (*(v3 + 16))(v1, v4 + v5, v2);
  v6 = (*(v3 + 88))(v1, v2);
  v7 = *(v0 + 504);
  v8 = *(v0 + 480);
  v9 = *(v0 + 488);
  if (v6 == *MEMORY[0x277D4F250])
  {
    v63 = v5;
    v64 = v4;
    v65 = v6;
    v68 = *(v0 + 448);
    v73 = *(v0 + 440);
    v74 = *(v0 + 432);
    v75 = *(v0 + 424);
    v76 = *(v0 + 416);
    v77 = *(v0 + 408);
    v10 = *(v0 + 392);
    v12 = *(v0 + 376);
    v11 = *(v0 + 384);
    v13 = *(v0 + 360);
    v14 = *(v0 + 368);
    v92 = *(v0 + 344);
    v93 = *(v0 + 352);
    v90 = *(v0 + 328);
    v91 = *(v0 + 336);
    v88 = *(v0 + 312);
    v89 = *(v0 + 320);
    v86 = *(v0 + 296);
    v87 = *(v0 + 304);
    v84 = *(v0 + 280);
    v85 = *(v0 + 288);
    v82 = *(v0 + 264);
    v83 = *(v0 + 272);
    v80 = *(v0 + 248);
    v81 = *(v0 + 256);
    v78 = *(v0 + 232);
    v79 = *(v0 + 240);
    v66 = *(v0 + 224);
    v67 = *(v0 + 216);
    v69 = *(v0 + 208);
    v70 = *(v0 + 200);
    v71 = *(v0 + 192);
    v72 = *(v0 + 184);
    (*(v9 + 96))(v7, v8);
    v15 = v7[1];
    *(v0 + 16) = *v7;
    *(v0 + 32) = v15;
    v16 = v7[2];
    v17 = v7[3];
    v18 = v7[4];
    *(v0 + 89) = *(v7 + 73);
    *(v0 + 64) = v17;
    *(v0 + 80) = v18;
    *(v0 + 48) = v16;
    sub_265D59180();
    sub_265D59190();
    sub_265D5A030();
    sub_265D58AD0();
    swift_getObjectType();
    sub_265D5A4C0();
    sub_265CC5700();
    sub_265D58CF0();

    v19 = sub_265D58020();
    (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
    v20 = sub_265D58410();
    (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
    v21 = sub_265D58590();
    (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
    v22 = sub_265D58050();
    (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
    v23 = sub_265D58200();
    (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
    v24 = sub_265D58BC0();
    (*(*(v24 - 8) + 56))(v93, 1, 1, v24);
    v25 = sub_265D583E0();
    (*(*(v25 - 8) + 56))(v92, 1, 1, v25);
    v26 = sub_265D581B0();
    (*(*(v26 - 8) + 56))(v91, 1, 1, v26);
    v27 = sub_265D57F50();
    (*(*(v27 - 8) + 56))(v90, 1, 1, v27);
    v28 = sub_265D582A0();
    (*(*(v28 - 8) + 56))(v89, 1, 1, v28);
    v29 = sub_265D58680();
    (*(*(v29 - 8) + 56))(v88, 1, 1, v29);
    v30 = sub_265D58210();
    (*(*(v30 - 8) + 56))(v87, 1, 1, v30);
    v31 = sub_265D57E80();
    (*(*(v31 - 8) + 56))(v86, 1, 1, v31);
    v32 = sub_265D58430();
    (*(*(v32 - 8) + 56))(v85, 1, 1, v32);
    v33 = sub_265D58300();
    (*(*(v33 - 8) + 56))(v84, 1, 1, v33);
    v34 = sub_265D586F0();
    (*(*(v34 - 8) + 56))(v83, 1, 1, v34);
    v35 = sub_265D57E90();
    (*(*(v35 - 8) + 56))(v82, 1, 1, v35);
    v36 = sub_265D581C0();
    (*(*(v36 - 8) + 56))(v81, 1, 1, v36);
    v37 = sub_265D58BB0();
    (*(*(v37 - 8) + 56))(v80, 1, 1, v37);
    v38 = sub_265D585C0();
    (*(*(v38 - 8) + 56))(v79, 1, 1, v38);
    v39 = sub_265D57EA0();
    (*(*(v39 - 8) + 56))(v78, 1, 1, v39);
    v40 = sub_265D57ED0();
    (*(*(v40 - 8) + 56))(v66, 1, 1, v40);
    v41 = sub_265D58240();
    (*(*(v41 - 8) + 56))(v67, 1, 1, v41);
    v42 = sub_265D58400();
    (*(*(v42 - 8) + 56))(v69, 1, 1, v42);
    v43 = sub_265D58600();
    (*(*(v43 - 8) + 56))(v70, 1, 1, v43);
    v44 = sub_265D58630();
    (*(*(v44 - 8) + 56))(v71, 1, 1, v44);
    (*(v73 + 16))(v72, v68, v74);
    (*(v73 + 56))(v72, 0, 1, v74);
    sub_265D5A030();
    sub_265D580B0();
    sub_265D59080();
    sub_265D58ED0();
    (*(v76 + 8))(v75, v77);
    v45 = sub_265D58B00();
    *(v0 + 108) = v45;
    *(v0 + 112) = BYTE4(v45) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E8, &qword_265D5C088);
    sub_265D57F80();
    v46 = *(v0 + 105);
    if (v46 < 3 || v46 == 5)
    {
      (*(*(v0 + 440) + 8))(*(v0 + 448), *(v0 + 432));
      sub_265CD4B8C(v0 + 16);
    }

    else
    {
      v57 = *(v0 + 488);
      v56 = *(v0 + 496);
      v58 = *(v0 + 480);
      v60 = *(v0 + 440);
      v59 = *(v0 + 448);
      v61 = *(v0 + 432);
      v62 = sub_265CC5700();
      (*(v60 + 8))(v59, v61);
      sub_265CD4B8C(v0 + 16);
      *v56 = v62;
      *(v56 + 88) = 1;
      (*(v57 + 104))(v56, v65, v58);
      swift_beginAccess();
      (*(v57 + 40))(v64 + v63, v56, v58);
      swift_endAccess();
    }
  }

  else
  {
    (*(v9 + 8))(*(v0 + 504), v8);
    sub_265D595F0();
    v47 = sub_265D59DD0();
    v48 = sub_265D5A070();
    v49 = os_log_type_enabled(v47, v48);
    v51 = *(v0 + 464);
    v50 = *(v0 + 472);
    v52 = *(v0 + 456);
    if (v49)
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_265C01000, v47, v48, "StandaloneSessionMonitor - No active session to update elapsed time.", v53, 2u);
      MEMORY[0x266770CF0](v53, -1, -1);
    }

    (*(v51 + 8))(v50, v52);
  }

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_265CD47D8()
{
  v0 = sub_265D581A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  sub_265D58A70();
  v7 = sub_265D58600();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_265CA4AE8(v6, &qword_28003E2F8, &qword_265D5B680);
LABEL_5:
    v20 = 0;
    return v20 & 1;
  }

  v23 = v1;
  v9 = sub_265D585E0();
  v11 = v10;
  v13 = v12;
  (*(v8 + 8))(v6, v7);
  v26 = v9;
  v27 = v11;
  v28 = v13 & 1;
  v24 = xmmword_265D5BC40;
  v25 = 1;
  sub_265CA48E8();
  sub_265CA493C();
  LOBYTE(v9) = sub_265D57F90();
  sub_265C037E8(v26, v27, v28);
  if ((v9 & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_265D58A10();
  v14 = sub_265D58190();
  v16 = v15;
  v18 = v17;
  (*(v23 + 8))(v3, v0);
  v26 = v14;
  v27 = v16;
  v28 = v18 & 1;
  v24 = xmmword_265D5BC50;
  v25 = 1;
  sub_265CD4AAC();
  sub_265CD4B00();
  v19 = sub_265D57F90();
  sub_265C037E8(v14, v16, v18 & 1);
  v20 = v19 ^ 1;
  return v20 & 1;
}

unint64_t sub_265CD4AAC()
{
  result = qword_28003E518;
  if (!qword_28003E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E518);
  }

  return result;
}

unint64_t sub_265CD4B00()
{
  result = qword_28003E520;
  if (!qword_28003E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E520);
  }

  return result;
}

uint64_t sub_265CD4BBC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_265C96620;

  return sub_265CC8D44(a1, v1);
}

uint64_t sub_265CD4C54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265C978E0;

  return sub_265CC94CC(a1, v4, v5, v6, (v1 + 5));
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_265CD4D5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265C978E0;

  return sub_265CC9EFC(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_265CD4E1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265C978E0;

  return sub_265CCA92C(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_265CD4EDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265C978E0;

  return sub_265CCB35C(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_265CD4F9C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265C978E0;

  return sub_265CD3274(a1, v5, v4);
}

uint64_t sub_265CD5048(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265C978E0;

  return sub_265CD1E9C(a1, v5, v4);
}

uint64_t sub_265CD50F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265C96620;

  return sub_265CD0AD8(a1, v5, v4);
}

uint64_t sub_265CD51A0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265C978E0;

  return sub_265CCF704(a1, v5, v4);
}

uint64_t sub_265CD524C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265C978E0;

  return sub_265CCE130(a1, v5, v4);
}

uint64_t sub_265CD52F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_265CD5344(uint64_t a1)
{
  sub_265D58EA0();
  type metadata accessor for MultiUserLinkMessage(0);
  return sub_265D59340();
}

uint64_t sub_265CD5398()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_265CD53FC()
{
  v0 = sub_265D581D0();
  sub_265CD5BA0();
  v1 = swift_allocError();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D50928], v0);
  *(swift_allocObject() + 16) = v1;

  return sub_265D58940();
}

void sub_265CD54D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_265D581D0();
  sub_265CD5BA0();
  v3 = swift_allocError();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D50928], v2);
  sub_265D58950();
}

void sub_265CD558C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_265D581D0();
  sub_265CD5BA0();
  v5 = swift_allocError();
  (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D50928], v4);
  sub_265D58950();
}

uint64_t sub_265CD5640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a1;
  v4 = sub_265D58EB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = sub_265D59DE0();
  v16[1] = *(v6 - 8);
  v16[2] = v6;
  MEMORY[0x28223BE20](v6);
  v7 = type metadata accessor for MultiUserLinkMessage(0);
  MEMORY[0x28223BE20](v7);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_265D586A0();
  v11 = v16[0];
  v13 = v12;
  swift_beginAccess();
  __swift_project_boxed_opaque_existential_1((v11 + 24), *(v11 + 48));
  (*(v5 + 16))(v9, v17, v4);
  v14 = &v9[*(v7 + 20)];
  *v14 = v10;
  v14[1] = v13;
  sub_265C987E0(v10, v13);
  sub_265CB22CC(v9);
  sub_265C9889C(v10, v13);
  return sub_265C98770(v9);
}

uint64_t sub_265CD5970()
{
  v0 = sub_265D581D0();
  sub_265CD5BA0();
  v1 = swift_allocError();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D50928], v0);
  *(swift_allocObject() + 16) = v1;

  return sub_265D58940();
}

uint64_t sub_265CD5A94(uint64_t a1)
{
  v3 = type metadata accessor for MultiUserLinkMessage(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  v7 = sub_265D58EB0();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  *&v6[*(v4 + 28)] = xmmword_265D5C100;
  sub_265CB22CC(v6);
  return sub_265C98770(v6);
}

unint64_t sub_265CD5BA0()
{
  result = qword_28003E4F0;
  if (!qword_28003E4F0)
  {
    sub_265D581D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E4F0);
  }

  return result;
}

void *sub_265CD5BF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - v3;
  sub_265CD5D68();
  v5 = sub_265D58960();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v5(sub_265CA442C, v6);

  (*(v2 + 8))(v4, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  sub_265C959D0(v0[18], v0[19]);
  sub_265CD6D44((v0 + 20));
  return v0;
}

uint64_t sub_265CD5D68()
{
  v0 = sub_265D59DE0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595E0();
  sub_265D59DC0();
  (*(v1 + 8))(v3, v0);
  memset(v10, 0, sizeof(v10));
  v4 = swift_allocObject();
  swift_weakInit();
  sub_265CD6D74(v10, v9);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = v9[1];
  *(v5 + 24) = v9[0];
  *(v5 + 40) = v6;
  v7 = v9[3];
  *(v5 + 56) = v9[2];
  *(v5 + 72) = v7;
  sub_265D58930();
  return sub_265CD6D44(v10);
}

uint64_t sub_265CD5F18()
{
  sub_265CD5BF8();

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_22SeymourSessionServices31RemoteParticipantHostAdvertiserC5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_265CD5F9C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_265CD5FEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_265CD6048(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

void sub_265CD6088(void (*a1)(void **), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_retain_n();

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = Strong;

      sub_265CD6E10(a4, v8, a1, a2);
    }
  }

  else
  {
    v9 = sub_265D57FD0();
    sub_265CD6DB8();
    v10 = swift_allocError();
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D50318], v9);
    v12 = v10;
    v13 = 1;
    a1(&v12);
  }
}

void sub_265CD61E8(void *a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = a1;
    a2(a1, 1);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      MEMORY[0x28223BE20](Strong);
      sub_265D58CA0();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E390, &qword_265D5B8D0);
    sub_265D5A4B0();
    a2(v8, v9);
    sub_265CA4470(v8, v9);
  }
}

uint64_t sub_265CD6348(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_265CD761C(a2, a1 + 160);
  return swift_endAccess();
}

uint64_t sub_265CD63AC()
{
  v1 = v0;
  v2 = sub_265D59DE0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595E0();
  sub_265D59DC0();
  (*(v3 + 8))(v5, v2);
  __swift_project_boxed_opaque_existential_1((v1 + 104), *(v1 + 128));
  sub_265D59A10();
  sub_265CD77F0();
  v6 = sub_265D5A090();
  swift_allocObject();
  swift_weakInit();

  v7 = sub_265D592D0();

  return v7;
}

uint64_t sub_265CD6564(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - v3;
  v5 = sub_265D59DE0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595E0();
  v9 = sub_265D59DD0();
  v10 = sub_265D5A080();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_265C01000, v9, v10, "Remote participant advertisement expired", v11, 2u);
    MEMORY[0x266770CF0](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265CD5D68();

    v13 = sub_265D58960();
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    v13(sub_265CA4BF4, v14);

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_265CD67DC@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v44 = *(v40 - 8);
  v2 = v44[8];
  v3 = MEMORY[0x28223BE20](v40);
  v41 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v3);
  v39 = &v36 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v43 = &v36 - v7;
  MEMORY[0x28223BE20](v6);
  v45 = &v36 - v8;
  v9 = sub_265D59DE0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595E0();
  sub_265D59DC0();
  v13 = *(v10 + 8);
  v13(v12, v9);
  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  v14 = sub_265D59C70();
  v37 = v15;
  v16 = type metadata accessor for AirPlayRestrictionBypasser();
  v17 = swift_allocObject();
  sub_265D595E0();
  sub_265D59DC0();
  v13(v12, v9);
  v18 = [objc_allocWithZone(MEMORY[0x277D44160]) init];
  *(v17 + 16) = v18;
  [v18 setFlags_];
  v49[3] = v16;
  v49[4] = &off_28777D640;
  v49[0] = v17;
  v38 = v14;
  v47[0] = v14;
  v47[1] = v37;
  sub_265C97624(v49, v48);
  swift_unknownObjectRetain();
  v48[5] = sub_265CD63AC();
  sub_265CD5D68();
  v19 = swift_allocObject();
  swift_weakInit();
  sub_265CD6D74(v47, v46);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v21 = v46[1];
  *(v20 + 24) = v46[0];
  *(v20 + 40) = v21;
  v22 = v46[3];
  *(v20 + 56) = v46[2];
  *(v20 + 72) = v22;
  v23 = v43;
  sub_265D58930();
  v24 = v44;
  v25 = v44[2];
  v26 = v39;
  v27 = v40;
  v25(v39, v23, v40);
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v37 = swift_allocObject();
  v29 = v24[4];
  v29(v37 + v28, v26, v27);
  v30 = v41;
  v25(v41, v45, v27);
  v31 = swift_allocObject();
  v29(v31 + v28, v30, v27);
  v32 = (v31 + ((v28 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v33 = v37;
  *v32 = sub_265CD76A8;
  v32[1] = v33;
  sub_265D58930();
  swift_unknownObjectRelease();
  v34 = v44[1];
  v34(v43, v27);
  v34(v45, v27);
  sub_265CD6D44(v47);
  return __swift_destroy_boxed_opaque_existential_1Tm(v49);
}

unint64_t sub_265CD6DB8()
{
  result = qword_28003E610;
  if (!qword_28003E610)
  {
    sub_265D57FD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E610);
  }

  return result;
}

uint64_t sub_265CD6E10(uint64_t a1, void *a2, void (*a3)(void **), uint64_t a4)
{
  v8 = sub_265D59DE0();
  v51 = *(v8 - 8);
  v52 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v48 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v48 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v48 - v18;
  v20 = swift_allocObject();
  v50 = a3;
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  v53 = a4;
  v54 = v20;
  swift_retain_n();
  sub_265D58CA0();
  sub_265CD6D74(v67, v64);
  v49 = a1;
  sub_265CD6D74(a1, v65);
  if (v64[0])
  {
    sub_265CD6D74(v64, &v60);
    if (v65[0])
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(&v61);
LABEL_8:
      sub_265D595E0();
      v32 = sub_265D59DD0();
      v33 = sub_265D5A080();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_265C01000, v32, v33, "Transitioning to equivalent state, nothing to do", v34, 2u);
        MEMORY[0x266770CF0](v34, -1, -1);
      }

      (*(v51 + 8))(v14, v52);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E390, &qword_265D5B8D0);
      sub_265D5A4B0();
      v35 = v60;
      v36 = BYTE8(v60);
      v55 = v60;
      v56 = BYTE8(v60);
      v50(&v55);
      sub_265CA4470(v35, v36);
      sub_265CD6D44(v67);
      sub_265CD6D44(v65);
      goto LABEL_16;
    }

    v48 = *(&v60 + 1);
    sub_265D595E0();
    v37 = sub_265D59DD0();
    v38 = sub_265D5A080();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_265C01000, v37, v38, "Deactivating advertising link", v39, 2u);
      MEMORY[0x266770CF0](v39, -1, -1);
    }

    v40 = (*(v51 + 8))(v11, v52);
    MEMORY[0x28223BE20](v40);
    v41 = v49;
    *(&v48 - 2) = a2;
    *(&v48 - 1) = v41;
    sub_265D58CA0();
    __swift_project_boxed_opaque_existential_1(a2 + 13, a2[16]);
    sub_265D592E0();
    v42 = a2[18];
    if (v42)
    {
      v43 = a2[19];

      v42(v44);
      sub_265C959D0(v42, v43);
    }

    swift_getObjectType();
    sub_265D59B30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E390, &qword_265D5B8D0);
    sub_265D5A4B0();
    v45 = v55;
    v46 = v56;
    v58 = v55;
    v59 = v56;
    v50(&v58);
    sub_265CA4470(v45, v46);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_265CD6D44(v67);
    __swift_destroy_boxed_opaque_existential_1Tm(&v61);
  }

  else
  {
    if (!v65[0])
    {
      goto LABEL_8;
    }

    v50 = v65[1];
    swift_unknownObjectRelease();
    sub_265C033C4(&v66, &v55);
    sub_265D595E0();
    v21 = sub_265D59DD0();
    v22 = sub_265D5A080();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_265C01000, v21, v22, "Activating advertising link", v23, 2u);
      MEMORY[0x266770CF0](v23, -1, -1);
    }

    v24 = v52;
    v51 = *(v51 + 8);
    (v51)(v19, v52);
    swift_getObjectType();
    v25 = swift_allocObject();
    swift_weakInit();
    sub_265CD6D74(v49, &v60);
    v26 = swift_allocObject();
    *(v26 + 16) = sub_265CD757C;
    *(v26 + 24) = v54;
    *(v26 + 32) = v25;
    v27 = v61;
    *(v26 + 40) = v60;
    *(v26 + 56) = v27;
    v28 = v63;
    *(v26 + 72) = v62;
    *(v26 + 88) = v28;

    sub_265D59B40();

    v29 = *__swift_project_boxed_opaque_existential_1(&v55, v57);
    sub_265D595E0();
    sub_265D59DC0();
    (v51)(v17, v24);
    v30 = *(v29 + 16);
    *&v62 = sub_265CDDA6C;
    *(&v62 + 1) = 0;
    *&v60 = MEMORY[0x277D85DD0];
    *(&v60 + 1) = 1107296256;
    *&v61 = sub_265C93674;
    *(&v61 + 1) = &block_descriptor_1;
    v31 = _Block_copy(&v60);
    [v30 activateWithCompletion_];
    _Block_release(v31);
    swift_unknownObjectRelease();
    sub_265CD6D44(v67);
    __swift_destroy_boxed_opaque_existential_1Tm(&v55);
  }

LABEL_16:
  sub_265CD6D44(v64);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_11Tm_0()
{

  if (*(v0 + 24))
  {
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
    swift_unknownObjectRelease();
  }

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_265CD76A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_265CC4058(v4, a1);
}

uint64_t sub_265CD7734(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_265C9EC70(a1, a2, v2 + v6, v8, v9);
}

unint64_t sub_265CD77F0()
{
  result = qword_2813B6CE0;
  if (!qword_2813B6CE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813B6CE0);
  }

  return result;
}

uint64_t sub_265CD7860()
{
  v79 = sub_265D58EB0();
  v73 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v63 = v56 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_265D58F70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 80);
  v7 = *(v0 + 96);
  v78 = v0;
  ObjectType = swift_getObjectType();
  v81 = v6;
  v9 = *MEMORY[0x277D4E4E0];
  v10 = *(v3 + 104);
  v77 = v3 + 104;
  v74 = v10;
  v10(v5, v9, v2);
  swift_allocObject();
  swift_weakInit();
  v11 = sub_265D58330();
  swift_unknownObjectRetain_n();
  v70 = v11;
  v71 = ObjectType;
  v72 = v7;
  sub_265D59200();

  v12 = *(v3 + 8);
  v75 = v3 + 8;
  v76 = v12;
  v80 = v2;
  v12(v5, v2);
  v13 = v6;
  swift_unknownObjectRelease();
  v81 = v6;
  v14 = v74;
  v74(v5, *MEMORY[0x277D4E408], v2);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_265D59200();

  v15 = v80;
  v16 = v76;
  v76(v5, v80);
  swift_unknownObjectRelease();
  v81 = v13;
  v14(v5, *MEMORY[0x277D4E608], v15);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_265D59210();

  v17 = v80;
  v16(v5, v80);

  swift_unknownObjectRelease();
  v81 = v13;
  v14(v5, *MEMORY[0x277D4E670], v17);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_265D59200();

  v76(v5, v17);
  swift_unknownObjectRelease();
  v81 = v13;
  v14(v5, *MEMORY[0x277D4E870], v17);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_265D59200();

  v18 = v80;
  v19 = v76;
  v76(v5, v80);
  swift_unknownObjectRelease();
  v81 = v13;
  v74(v5, *MEMORY[0x277D4E7A8], v18);
  swift_allocObject();
  swift_weakInit();
  sub_265D57DA0();
  swift_unknownObjectRetain();
  sub_265D59200();

  v20 = v80;
  v19(v5, v80);
  v21 = v19;
  swift_unknownObjectRelease();
  v81 = v13;
  v22 = v74;
  v74(v5, *MEMORY[0x277D4E7F8], v20);
  swift_allocObject();
  swift_weakInit();
  v67 = sub_265D584B0();
  swift_unknownObjectRetain();
  sub_265D59200();

  v23 = v80;
  v21(v5, v80);
  swift_unknownObjectRelease();
  v81 = v13;
  (v22)(v5, *MEMORY[0x277D4EB10], v23);
  swift_allocObject();
  swift_weakInit();
  sub_265D58740();
  swift_unknownObjectRetain();
  sub_265D59200();

  v24 = v80;
  v76(v5, v80);
  swift_unknownObjectRelease();
  v81 = v13;
  (v22)(v5, *MEMORY[0x277D4E450], v24);
  swift_allocObject();
  swift_weakInit();
  sub_265D58610();
  swift_unknownObjectRetain();
  sub_265D59200();

  v25 = v80;
  v26 = v76;
  v76(v5, v80);
  v66 = v13;
  swift_unknownObjectRelease();
  v81 = v13;
  v62 = *MEMORY[0x277D4E4C0];
  v22(v5);
  swift_allocObject();
  swift_weakInit();
  v69 = sub_265D583A0();
  sub_265D591F0();

  v26(v5, v25);
  v27 = v66;
  swift_unknownObjectRelease();
  v81 = v27;
  v61 = *MEMORY[0x277D4E568];
  (v74)(v5);
  swift_allocObject();
  v28 = v78;
  swift_weakInit();
  v68 = v5;
  sub_265D591F0();

  v26(v5, v25);
  swift_unknownObjectRelease();
  v29 = *(v28 + 56);
  v72 = *(v28 + 72);
  v30 = swift_getObjectType();
  v81 = v29;
  v31 = *MEMORY[0x277D4E130];
  v32 = v73;
  v33 = *(v73 + 104);
  v71 = v73 + 104;
  v64 = v33;
  v34 = v63;
  v35 = v79;
  (v33)(v63, v31, v79);
  swift_allocObject();
  swift_weakInit();
  sub_265D586C0();
  swift_unknownObjectRetain_n();
  v66 = v30;
  sub_265D591C0();

  v36 = *(v32 + 8);
  v36(v34, v35);
  v73 = v32 + 8;
  swift_unknownObjectRelease();
  v81 = v29;
  v58 = *MEMORY[0x277D4E0A8];
  v37 = v64;
  v64(v34);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_265D591C0();

  v38 = v79;
  v36(v34, v79);
  swift_unknownObjectRelease();
  v81 = v29;
  v60 = *MEMORY[0x277D4E0D0];
  v37(v34);
  swift_allocObject();
  swift_weakInit();
  v59 = sub_265D58560();
  sub_265D591C0();

  v36(v34, v38);
  v65 = v36;
  swift_unknownObjectRelease();
  v81 = v29;
  v57 = *MEMORY[0x277D4E158];
  v37(v34);
  swift_allocObject();
  v39 = v78;
  swift_weakInit();
  v56[1] = sub_265D58460();
  sub_265D591C0();

  v40 = v79;
  v36(v34, v79);
  swift_unknownObjectRelease();
  v41 = *(v39 + 104);
  v42 = *(v39 + 120);
  v72 = swift_getObjectType();
  v81 = v41;
  (v37)(v34, v58, v40);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  v66 = v42;
  sub_265D591C0();

  v43 = v79;
  v44 = v65;
  v65(v34, v79);
  swift_unknownObjectRelease();
  v81 = v41;
  v45 = v64;
  (v64)(v34, v57, v43);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_265D591C0();

  v46 = v79;
  v44(v34, v79);
  swift_unknownObjectRelease();
  v81 = v41;
  (v45)(v34, v60, v46);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_265D591C0();

  v47 = v79;
  v44(v34, v79);
  swift_unknownObjectRelease();
  v81 = v41;
  (v45)(v34, *MEMORY[0x277D4E080], v47);
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for MultiUserLinkMessage(0);
  sub_265CD9B9C(qword_2813B7920, &unk_265D5BC00);
  sub_265CD9B9C(&qword_2813B7918, &unk_265D5BBC0);
  sub_265D591C0();

  v65(v34, v79);
  swift_unknownObjectRelease();
  v81 = v41;
  v48 = v68;
  v49 = v80;
  v50 = v74;
  v74(v68, v61, v80);
  swift_allocObject();
  v51 = v78;
  swift_weakInit();
  sub_265D591F0();

  v52 = v76;
  v76(v48, v49);
  swift_unknownObjectRelease();
  v53 = *(v51 + 128);
  v79 = *(v51 + 144);
  swift_getObjectType();
  v81 = v53;
  v50(v48, v62, v49);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  v54 = v68;
  sub_265D591F0();

  v52(v54, v49);
  swift_unknownObjectRelease();
  v81 = v53;
  v74(v54, *MEMORY[0x277D4E560], v49);
  swift_allocObject();
  swift_weakInit();
  sub_265D591E0();

  v52(v54, v49);
  return swift_unknownObjectRelease();
}

uint64_t sub_265CD8B88@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 16, v12);

    v6 = __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    __swift_project_boxed_opaque_existential_1((*v6 + 56), *(*v6 + 80));
    v7 = off_28777BD20;
    v8 = type metadata accessor for MultiUserLink(0);
    v7(a1, v8, &off_28777BD10);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    (*(*(v9 - 8) + 56))(a3, 0, 1, v9);
    return __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    return (*(*(v11 - 8) + 56))(a3, 1, 1, v11);
  }
}

uint64_t sub_265CD8CFC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 16, v12);

    v6 = __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    __swift_project_boxed_opaque_existential_1((*v6 + 56), *(*v6 + 80));
    v7 = off_28777BD18[0];
    v8 = type metadata accessor for MultiUserLink(0);
    v7(a1, v8, &off_28777BD10);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    (*(*(v9 - 8) + 56))(a3, 0, 1, v9);
    return __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    return (*(*(v11 - 8) + 56))(a3, 1, 1, v11);
  }
}

uint64_t sub_265CD8E70@<X0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 16, v8);

    v4 = __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    __swift_project_boxed_opaque_existential_1((*v4 + 56), *(*v4 + 80));
    sub_265CAECD4(a2);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    (*(*(v5 - 8) + 56))(a2, 0, 1, v5);
    return __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    return (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
  }
}

uint64_t sub_265CD8FA0@<X0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 16, v9);

    v4 = __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    __swift_project_boxed_opaque_existential_1((*v4 + 56), *(*v4 + 80));
    v5 = off_28777BD30;
    type metadata accessor for MultiUserLink(0);
    v5();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
    return __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }
}

uint64_t sub_265CD9114@<X0>(uint64_t a1@<X0>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 16, v11);

    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    a3(a1);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    (*(*(v8 - 8) + 56))(a4, 0, 1, v8);
    return __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    return (*(*(v10 - 8) + 56))(a4, 1, 1, v10);
  }
}

uint64_t sub_265CD9254(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265C97624(result + 16, v6);

    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    a3(a1);
    return __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  return result;
}

uint64_t sub_265CD92E8@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_265D59DE0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 16, v12);

    v8 = *__swift_project_boxed_opaque_existential_1(v12, v12[3]);
    sub_265D59610();
    sub_265D59DC0();
    (*(v4 + 8))(v6, v3);
    __swift_project_boxed_opaque_existential_1((v8 + 56), *(v8 + 80));
    sub_265CB2C84(a2);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2D8, &qword_265D5B660);
    (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
    return __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2D8, &qword_265D5B660);
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }
}

uint64_t sub_265CD94F8@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_265D59DE0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 16, v12);

    v8 = *__swift_project_boxed_opaque_existential_1(v12, v12[3]);
    sub_265D59610();
    sub_265D59DC0();
    (*(v4 + 8))(v6, v3);
    __swift_project_boxed_opaque_existential_1((v8 + 16), *(v8 + 40));
    sub_265C9D03C(a2);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E210, &qword_265D5B590);
    (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
    return __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E210, &qword_265D5B590);
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }
}

uint64_t sub_265CD9708@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_265D59DE0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 16, v14);

    v10 = *__swift_project_boxed_opaque_existential_1(v14, v14[3]);
    sub_265D59610();
    sub_265D59DC0();
    (*(v6 + 8))(v8, v5);
    __swift_project_boxed_opaque_existential_1((v10 + 16), *(v10 + 40));
    sub_265C9DC64(a1, a3);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E210, &qword_265D5B590);
    (*(*(v11 - 8) + 56))(a3, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E210, &qword_265D5B590);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }
}

uint64_t sub_265CD9920()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_265CD9B9C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MultiUserLinkMessage(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_265CD9C34()
{
  v1 = type metadata accessor for DistributedSessionPublisher.State(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_265CD9D78(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *v3;
  if (EnumCaseMultiPayload == 1)
  {

    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E618, "fw") + 80);

    sub_265CD9DDC(v3 + v6);
  }

  else
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E620, &unk_265D5E1B0) + 160);

    sub_265CD9DDC(v3 + v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 1);
  }

  return v5;
}

uint64_t sub_265CD9D78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DistributedSessionPublisher.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265CD9DDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265CD9E44()
{
  v1 = type metadata accessor for DistributedSessionPublisher.State(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265CD9D78(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v5 = *(v3 + 1);

    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E618, "fw") + 80);

    sub_265CD9DDC(&v3[v6]);
  }

  else
  {

    v5 = *(v3 + 10);

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E620, &unk_265D5E1B0) + 160);

    sub_265CD9DDC(&v3[v7]);
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 1);
  }

  return v5;
}

id sub_265CD9F80()
{
  v1 = type metadata accessor for DistributedSessionPublisher.State(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_265CD9D78(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v5 = v3[2];
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E618, "fw") + 80);

    sub_265CD9DDC(v3 + v6);
  }

  else
  {

    v5 = v3[11];
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E620, &unk_265D5E1B0) + 160);

    sub_265CD9DDC(v3 + v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 1);
  }

  return v5;
}

uint64_t sub_265CDA0C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DistributedSessionPublisher.State(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_265CD9D78(v2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E618, "fw") + 80);

    return sub_265CDA4E0(v6 + v8, a1);
  }

  else
  {

    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E620, &unk_265D5E1B0) + 160);

    sub_265CDA4E0(v6 + v10, a1);
    return __swift_destroy_boxed_opaque_existential_1Tm(v6 + 1);
  }
}

uint64_t sub_265CDA21C()
{
  v1 = type metadata accessor for DistributedSessionPublisher.State(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_265CD9D78(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E618, "fw");
    v6 = *(v3 + *(v5 + 96));
    sub_265CD9DDC(v3 + *(v5 + 80));
  }

  else
  {

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E620, &unk_265D5E1B0);
    v6 = *(v3 + *(v7 + 176));
    sub_265CD9DDC(v3 + *(v7 + 160));
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 1);
  }

  return v6;
}

uint64_t sub_265CDA360@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DistributedSessionPublisher.State(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265CD9D78(v2, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = sub_265CDA484(v6);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {

    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E620, &unk_265D5E1B0) + 160);

    sub_265C033C4((v6 + 8), a1);
    return sub_265CD9DDC(&v6[v8]);
  }

  return result;
}

uint64_t sub_265CDA484(uint64_t a1)
{
  v2 = type metadata accessor for DistributedSessionPublisher.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265CDA4E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_265CDA564()
{
  result = qword_28003E628;
  if (!qword_28003E628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E628);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionBiomeType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionBiomeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_265CDA70C()
{
  result = qword_28003E630;
  if (!qword_28003E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E630);
  }

  return result;
}

uint64_t sub_265CDA760()
{
  sub_265D5A460();
  sub_265D5A490();
  return sub_265D5A4A0();
}

uint64_t sub_265CDA7D4(uint64_t a1)
{
  sub_265D5A460();
  sub_265D5A490();
  return sub_265D5A4A0();
}

uint64_t sub_265CDA818@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_265CDA850(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_265CDA850(uint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  else
  {
    return result;
  }
}

void sub_265CDA870(uint64_t a1)
{
  v3 = sub_265D59DE0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v22[2] = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC22SeymourSessionServices23SessionBiomeCoordinator_state;
  swift_beginAccess();
  sub_265CDBF48(a1, v1 + v6);
  swift_endAccess();
  sub_265CDB468(a1, v27);
  if (v27[3])
  {
    v22[0] = v4;
    v22[1] = v3;
    v7 = v27[5];
    v8 = v27[6];
    v9 = v27[7];
    v10 = v28;
    v11 = v29;
    v12 = v30;
    v13 = v31;
    sub_265D57CE0();
    swift_allocObject();
    sub_265D57CD0();
    v22[14] = v7;
    v22[15] = v8;
    v22[16] = v9;
    v23 = v10;
    v24 = v11;
    v25 = v12;
    v26 = v13;
    sub_265CDBF80();
    v16 = sub_265D57CC0();
    v18 = v17;

    v19 = [objc_opt_self() standardUserDefaults];
    v20 = sub_265D57DB0();
    v21 = sub_265D59E90();
    [v19 setObject:v20 forKey:v21];

    sub_265C9889C(v16, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  else
  {
    v14 = [objc_opt_self() standardUserDefaults];
    v15 = sub_265D59E90();
    [v14 removeObjectForKey_];
  }
}

uint64_t sub_265CDAC5C()
{
  v1 = OBJC_IVAR____TtC22SeymourSessionServices23SessionBiomeCoordinator__recordBiomeStreams;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E638, &qword_265D5C5E8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC22SeymourSessionServices23SessionBiomeCoordinator_biomeEventRecorderProvider));
  sub_265CDAFB4(v0 + OBJC_IVAR____TtC22SeymourSessionServices23SessionBiomeCoordinator_state);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SessionBiomeCoordinator(uint64_t a1)
{
  result = qword_2813B8798;
  if (!qword_2813B8798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_265CDAD78(uint64_t a1)
{
  sub_265CDAE1C();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_265CDAE1C()
{
  if (!qword_2813B8FF0)
  {
    v0 = sub_265D58D20();
    if (!v1)
    {
      atomic_store(v0, &qword_2813B8FF0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_22SeymourSessionServices0B16BiomeCoordinatorC5StateO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy77_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_265CDAEB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 77))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_265CDAF08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 61) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 77) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 77) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_265CDAF68(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 76) = 0;
    *(a1 + 72) = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_265CDAFE4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - v3;
  v5 = sub_265D59DE0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E638, &qword_265D5C5E8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  (*(v10 + 16))(&v27 - v11, v1 + OBJC_IVAR____TtC22SeymourSessionServices23SessionBiomeCoordinator__recordBiomeStreams, v9);
  sub_265D58D10();
  result = (*(v10 + 8))(v12, v9);
  if (v30[0] == 1)
  {
    v14 = OBJC_IVAR____TtC22SeymourSessionServices23SessionBiomeCoordinator_state;
    swift_beginAccess();
    sub_265CDB468(v1 + v14, v30);
    v15 = v31;
    result = sub_265CDAFB4(v30);
    if (!v15)
    {
      result = sub_265CDC7F8();
      v16 = result;
      if (result != 4)
      {
        v17 = result;
        sub_265D595F0();
        sub_265D59DC0();
        (*(v6 + 8))(v8, v5);
        if (v16 <= 2)
        {
          v18 = [objc_allocWithZone(MEMORY[0x277CF1958]) init];
          v19 = sub_265C932E0(0, &qword_28003E648, 0x277CF1958);
          v20 = v19;
          v21 = &off_28777D5E0;
        }

        else
        {
          v18 = [objc_allocWithZone(MEMORY[0x277CF19E0]) init];
          v19 = sub_265C932E0(0, &qword_28003E640, 0x277CF19E0);
          v20 = v19;
          v21 = &off_28777D518;
        }

        v29[3] = v19;
        v29[4] = v21;
        v29[0] = v18;
        v22 = sub_265D58A40();
        v23 = sub_265D589D0();
        *&v34 = v22;
        *(&v34 + 1) = v23;
        *v35 = v24;
        *&v35[8] = 0;
        v35[12] = 1;
        *&v35[16] = v17;
        v35[20] = 1;
        __swift_project_boxed_opaque_existential_1(v29, v20);
        (v21[1])(&v34);
        v25 = sub_265D58960();
        v26 = swift_allocObject();
        *(v26 + 16) = 0;
        *(v26 + 24) = 0;
        v25(sub_265CA442C, v26);

        (*(v28 + 8))(v4, v2);
        sub_265C97624(v29, v30);
        v32 = v34;
        *v33 = *v35;
        *&v33[13] = *&v35[13];
        sub_265CDA870(v30);
        sub_265CDAFB4(v30);
        return __swift_destroy_boxed_opaque_existential_1Tm(v29);
      }
    }
  }

  return result;
}

uint64_t sub_265CDB4A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - v3;
  v5 = sub_265D59DE0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC22SeymourSessionServices23SessionBiomeCoordinator_state;
  swift_beginAccess();
  sub_265CDB468(v0 + v9, &v30);
  if (!*(&v31 + 1))
  {
    return sub_265CDAFB4(&v30);
  }

  v22 = v2;
  v23 = v1;
  v27 = v0;
  v10 = *&v33[0];
  v24 = *(&v32 + 1);
  v11 = *(&v33[0] + 1);
  v26 = v33[1];
  v25 = BYTE4(v33[1]);
  v12 = DWORD2(v33[1]);
  v13 = BYTE12(v33[1]);
  sub_265C033C4(&v30, v34);

  if (v10 == sub_265D589D0() && v11 == v14)
  {

LABEL_7:
    sub_265D595F0();
    sub_265D59DC0();
    (*(v6 + 8))(v8, v5);
    v37[0] = v24;
    v37[1] = v10;
    v37[2] = v11;
    v38 = 1;
    v39 = 1;
    v40 = v12;
    v41 = v13;
    LODWORD(v30) = v26;
    BYTE4(v30) = v25;
    v28 = 1;
    v29 = 1;
    sub_265CDBFD4();
    sub_265CDC028();
    if (sub_265D57F90())
    {
    }

    else
    {
      v17 = v35;
      v18 = v36;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      (*(v18 + 8))(v37, v17, v18);

      v19 = v23;
      v20 = sub_265D58960();
      v21 = swift_allocObject();
      *(v21 + 16) = 0;
      *(v21 + 24) = 0;
      v20(sub_265CA4BF4, v21);

      (*(v22 + 8))(v4, v19);
    }

    v32 = 0u;
    memset(v33, 0, 29);
    v31 = 0u;
    v30 = 0u;
    sub_265CDA870(&v30);
    sub_265CDAFB4(&v30);
    return __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  v16 = sub_265D5A3C0();

  if (v16)
  {
    goto LABEL_7;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v34);
}

uint64_t sub_265CDB8D4()
{
  v1 = sub_265D59DE0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v45 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - v9;
  v11 = OBJC_IVAR____TtC22SeymourSessionServices23SessionBiomeCoordinator_state;
  swift_beginAccess();
  sub_265CDB468(v0 + v11, &v47);
  if (!v48)
  {
    return sub_265CDAFB4(&v47);
  }

  v40 = v4;
  v41 = v2;
  v42 = v1;
  v43 = v0;
  v12 = *(&v49 + 1);
  v39 = v49;
  v13 = *v50;
  v44 = v50[8];
  v14 = v50[12];
  v38 = *&v50[16];
  v37 = v50[20];
  sub_265C033C4(&v47, v51);

  if (v12 == sub_265D580D0() && v13 == v15)
  {
  }

  else
  {
    v17 = sub_265D5A3C0();

    if ((v17 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (v12 == sub_265D589D0() && v13 == v18)
  {

    goto LABEL_11;
  }

  v19 = sub_265D5A3C0();

  if ((v19 & 1) == 0)
  {
LABEL_15:

    return __swift_destroy_boxed_opaque_existential_1Tm(v51);
  }

LABEL_11:
  if (!v14)
  {
    goto LABEL_15;
  }

  sub_265D58110();
  v20 = sub_265D58BB0();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v10, 1, v20) != 1)
  {
    v22 = sub_265D58BA0();
    (*(v21 + 8))(v10, v20);
    if ((v22 & 0x100000000) == 0)
    {
      goto LABEL_15;
    }

    if (v44 > 1)
    {
      if (v44 == 2)
      {
        if (v22 <= 1u)
        {
          if (v22)
          {
            goto LABEL_15;
          }

          v23 = 3;
LABEL_32:
          *&v54 = v39;
          *(&v54 + 1) = v12;
          *v55 = v13;
          *&v55[8] = v23;
          v55[12] = 1;
          *&v55[16] = v38;
          v55[20] = v37;
          v24 = v52;
          v25 = v53;
          __swift_project_boxed_opaque_existential_1(v51, v52);
          (*(v25 + 8))(&v54, v24, v25);
          v26 = sub_265D58960();
          v27 = swift_allocObject();
          *(v27 + 16) = 0;
          *(v27 + 24) = 0;
          v26(sub_265CA4BF4, v27);

          (*(v45 + 8))(v7, v5);
          sub_265C97624(v51, &v47);
          v49 = v54;
          *v50 = *v55;
          *&v50[13] = *&v55[13];
          sub_265CDA870(&v47);
          sub_265CDAFB4(&v47);
          v28 = v40;
          sub_265D595F0();
          v29 = sub_265D59DD0();
          v30 = sub_265D5A080();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            *&v47 = v32;
            *v31 = 136446210;
            v46 = v23;
            v33 = sub_265D59EC0();
            v35 = sub_265CF4FFC(v33, v34, &v47);

            *(v31 + 4) = v35;
            _os_log_impl(&dword_265C01000, v29, v30, "Recorded biome for event %{public}s", v31, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v32);
            MEMORY[0x266770CF0](v32, -1, -1);
            MEMORY[0x266770CF0](v31, -1, -1);
          }

          (*(v41 + 8))(v28, v42);
          return __swift_destroy_boxed_opaque_existential_1Tm(v51);
        }

        if (v22 == 2)
        {
          goto LABEL_15;
        }

LABEL_30:
        if (v44 == 1)
        {
          goto LABEL_15;
        }

        v23 = 1;
        goto LABEL_32;
      }
    }

    else if (v44)
    {
      if (v22 == 3)
      {
        goto LABEL_15;
      }

      goto LABEL_30;
    }

    if (v22 - 1 < 2)
    {
      v23 = 2;
      goto LABEL_32;
    }

    if (!v22)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

  sub_265CDC07C(v10);
  return __swift_destroy_boxed_opaque_existential_1Tm(v51);
}

unint64_t sub_265CDBF80()
{
  result = qword_28003E650;
  if (!qword_28003E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E650);
  }

  return result;
}

unint64_t sub_265CDBFD4()
{
  result = qword_28003E658;
  if (!qword_28003E658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E658);
  }

  return result;
}

unint64_t sub_265CDC028()
{
  result = qword_28003E660;
  if (!qword_28003E660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E660);
  }

  return result;
}

uint64_t sub_265CDC07C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_265CDC0E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v36 = *(v0 - 8);
  v37 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v35 - v1;
  v3 = sub_265D59DE0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v35 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  sub_265D57CB0();
  swift_allocObject();
  sub_265D57CA0();
  v40 = objc_opt_self();
  v11 = [v40 standardUserDefaults];
  v39 = "handleSessionActivation(_:)";
  v12 = sub_265D59E90();
  v13 = [v11 dataForKey_];

  if (v13)
  {
    v14 = sub_265D57DC0();
    v16 = v15;

    sub_265CDC7A4();
    v38 = v14;
    sub_265D57C90();
    v17 = v42;
    if (BYTE4(v44) == 1)
    {
      v35 = v41;
      v18 = v44;
      sub_265D595F0();
      sub_265D59DC0();
      (*(v4 + 8))(v10, v3);
      v19 = v16;
      if (v18 <= 2u)
      {
        v26 = [objc_allocWithZone(MEMORY[0x277CF1958]) init];
        v27 = sub_265C932E0(0, &qword_28003E648, 0x277CF1958);
        v28 = v27;
        v29 = &off_28777D5E0;
      }

      else
      {
        v26 = [objc_allocWithZone(MEMORY[0x277CF19E0]) init];
        v27 = sub_265C932E0(0, &qword_28003E640, 0x277CF19E0);
        v28 = v27;
        v29 = &off_28777D518;
      }

      v43 = v27;
      v44 = v29;
      *&v41 = v26;
      v45 = v35;
      v46 = v17;
      v47 = 1;
      v48 = 1;
      v49 = v18;
      v50 = 1;
      __swift_project_boxed_opaque_existential_1(&v41, v28);
      (v29[1])(&v45);

      v30 = v37;
      v31 = sub_265D58960();
      v32 = swift_allocObject();
      *(v32 + 16) = 0;
      *(v32 + 24) = 0;
      v31(sub_265CA4BF4, v32);

      sub_265C9889C(v38, v19);
      (*(v36 + 8))(v2, v30);
      __swift_destroy_boxed_opaque_existential_1Tm(&v41);
    }

    else
    {

      sub_265D595F0();
      v20 = sub_265D59DD0();
      v21 = sub_265D5A070();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = v16;
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_265C01000, v20, v21, "Unable to record stop event for restored state!", v23, 2u);
        MEMORY[0x266770CF0](v23, -1, -1);
        v24 = v38;
        v25 = v22;
      }

      else
      {
        v24 = v38;
        v25 = v16;
      }

      sub_265C9889C(v24, v25);

      (*(v4 + 8))(v8, v3);
    }
  }

  v33 = [v40 standardUserDefaults];
  v34 = sub_265D59E90();
  [v33 removeObjectForKey_];
}

unint64_t sub_265CDC7A4()
{
  result = qword_28003E668;
  if (!qword_28003E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E668);
  }

  return result;
}

uint64_t sub_265CDC7F8()
{
  v0 = sub_265D581A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D58A10();
  v4 = sub_265D58190();
  v6 = v5;
  v8 = v7;
  (*(v1 + 8))(v3, v0);
  if (v8)
  {
    return 0x30102u >> (8 * v4);
  }

  sub_265CA4B90(v4, v6, 0);
  return 4;
}

uint64_t sub_265CDC900()
{
  v1 = 1701869940;
  v2 = 0x7974697669746361;
  if (*v0 != 2)
  {
    v2 = 0x696669746E656469;
  }

  if (*v0)
  {
    v1 = 0x6574617473;
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

uint64_t sub_265CDC97C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_265CDCC9C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_265CDC9B0(uint64_t a1)
{
  v2 = sub_265CDD080();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265CDC9EC(uint64_t a1)
{
  v2 = sub_265CDD080();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_265CDCA28(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E688, &qword_265D5C648);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265CDD080();
  sub_265D5A4E0();
  v11 = *(v3 + 32);
  v12 = *(v3 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E690, &qword_265D5C650);
  sub_265D57F60();
  BYTE3(v10) = 0;
  sub_265D5A390();
  if (!v2)
  {
    v11 = *(v3 + 24);
    v12 = *(v3 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E698, &qword_265D5C658);
    sub_265D57F60();
    BYTE3(v10) = 1;
    sub_265D5A390();
    LOBYTE(v11) = 2;
    sub_265D5A370();
    LOBYTE(v11) = 3;
    sub_265D5A360();
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_265CDCC3C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_265CDCE08(a2, &v6);
  if (!v2)
  {
    result = *&v6;
    v5 = *v7;
    *a1 = v6;
    *(a1 + 16) = v5;
    *(a1 + 29) = *&v7[13];
  }

  return result;
}

uint64_t sub_265CDCC9C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_265D5A3C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_265D5A3C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7974697669746361 && a2 == 0xEC00000065707954 || (sub_265D5A3C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 3;
  }

  else
  {
    v6 = sub_265D5A3C0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_265CDCE08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E670, &qword_265D5C640);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265CDD080();
  sub_265D5A4D0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v26) = 0;
  v9 = sub_265D5A340();
  LOBYTE(v26) = 1;
  v10 = sub_265D5A340();
  v25 = v9;
  sub_265CDD0D4();
  sub_265D57F70();
  v23 = v27;
  v24 = v26;
  v25 = v10;
  sub_265CDC028();
  sub_265D57F70();
  v11 = v26;
  v12 = v27;
  LOBYTE(v26) = 2;
  v13 = sub_265D5A320();
  v20 = v12;
  v21 = v11;
  v22 = v13;
  LOBYTE(v26) = 3;
  v14 = sub_265D5A310();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v22;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16;
  v18 = v20;
  *(a2 + 24) = v21;
  *(a2 + 28) = v18;
  v19 = v23;
  *(a2 + 32) = v24;
  *(a2 + 36) = v19;
  return result;
}

unint64_t sub_265CDD080()
{
  result = qword_28003E678;
  if (!qword_28003E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E678);
  }

  return result;
}

unint64_t sub_265CDD0D4()
{
  result = qword_28003E680;
  if (!qword_28003E680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E680);
  }

  return result;
}

__n128 __swift_memcpy37_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_265CDD14C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 37))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_265CDD194(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 37) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 37) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_265CDD1F0()
{
  result = qword_28003E6A0;
  if (!qword_28003E6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E6A0);
  }

  return result;
}

unint64_t sub_265CDD248()
{
  result = qword_28003E6A8;
  if (!qword_28003E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E6A8);
  }

  return result;
}

unint64_t sub_265CDD2A0()
{
  result = qword_28003E6B0;
  if (!qword_28003E6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E6B0);
  }

  return result;
}

void sub_265CDD2F4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265D59DE0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 28))
  {
    v8 = *(a1 + 24);
    sub_265D595F0();
    sub_265D59DC0();
    (*(v5 + 8))(v7, v4);
    v9 = [objc_allocWithZone(MEMORY[0x277CF19D8]) initWithSessionType:2 stateType:v8 + 1];
    v10 = [v2 source];
    [v10 sendEvent_];

    sub_265D58970();
  }

  else
  {
    sub_265CDD52C();
    v11 = swift_allocError();
    *v12 = 0;
    *(swift_allocObject() + 16) = v11;

    sub_265D58940();
  }
}

unint64_t sub_265CDD52C()
{
  result = qword_28003E6B8;
  if (!qword_28003E6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E6B8);
  }

  return result;
}

void sub_265CDD594(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265D59DE0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 28))
  {
    v8 = *(a1 + 24);
    v9 = _HKWorkoutActivityNameForActivityType();
    if (v9)
    {
      v10 = v9;
      sub_265D595F0();
      sub_265D59DC0();
      (*(v5 + 8))(v7, v4);
      v23 = *(a1 + 32);
      v24 = *(a1 + 36);
      v21 = 0;
      v11 = 1;
      v22 = 1;
      sub_265CDA70C();
      sub_265CDD0D4();
      if ((sub_265D57F90() & 1) == 0)
      {
        v23 = *(a1 + 32);
        v24 = *(a1 + 36);
        v21 = 3;
        v22 = 1;
        v11 = sub_265D57F90();
      }

      v12 = qword_265D5C8D0[v8];
      v13 = objc_allocWithZone(MEMORY[0x277CF1950]);
      v14 = sub_265D59E90();
      v15 = [v13 initWithIsFirstPartyDonation:1 isIndoor:v11 & 1 activityType:v10 activityUUID:v14 eventType:v12 isUpdate:0];

      v16 = [v2 source];
      [v16 sendEvent_];

      sub_265D58970();
      return;
    }

    sub_265CDD52C();
    v19 = swift_allocError();
    *v20 = 1;
    *(swift_allocObject() + 16) = v19;
  }

  else
  {
    sub_265CDD52C();
    v17 = swift_allocError();
    *v18 = 0;
    *(swift_allocObject() + 16) = v17;
  }

  sub_265D58940();
}

uint64_t sub_265CDD930()
{
  v1 = v0;
  v2 = sub_265D59DE0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595E0();
  sub_265D59DC0();
  (*(v3 + 8))(v5, v2);
  [*(v1 + 16) invalidate];

  return swift_deallocClassInstance();
}

uint64_t sub_265CDDA6C(void *a1)
{
  v2 = sub_265D59DE0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - v7;
  if (a1)
  {
    v9 = a1;
    sub_265D595E0();
    v10 = a1;
    v11 = sub_265D59DD0();
    v12 = sub_265D5A070();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136446210;
      swift_getErrorValue();
      v15 = MEMORY[0x2667704D0](v22[2], v22[3]);
      v17 = sub_265CF4FFC(v15, v16, &v23);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_265C01000, v11, v12, "Error activating host airplay restriction assertion: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x266770CF0](v14, -1, -1);
      MEMORY[0x266770CF0](v13, -1, -1);
    }

    else
    {
    }

    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    sub_265D595E0();
    v18 = sub_265D59DD0();
    v19 = sub_265D5A080();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_265C01000, v18, v19, "Airplay restriction bypasser active", v20, 2u);
      MEMORY[0x266770CF0](v20, -1, -1);
    }

    return (*(v3 + 8))(v8, v2);
  }
}

uint64_t sub_265CDDD20(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = sub_265D58EB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    (*(v5 + 104))(v7, *a3, v4);
    sub_265D583D0();
    sub_265D58C70();
    swift_unknownObjectRelease();
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_265CDDEB0(uint64_t a1, unsigned int *a2)
{
  v3 = sub_265D58EB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    (*(v4 + 104))(v6, *a2, v3);
    sub_265D58C80();
    swift_unknownObjectRelease();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

void *sub_265CDE004()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_265CDE05C()
{
  sub_265CDE004();

  return swift_deallocClassInstance();
}

uint64_t sub_265CDE0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v5 = *(v30 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v30);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = sub_265D59DE0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595E0();
  sub_265D59DC0();
  (*(v11 + 8))(v13, v10);
  sub_265D5A030();
  v15 = v14;
  v16 = sub_265D58B20();
  v18 = v17;
  __swift_project_boxed_opaque_existential_1((v3 + 112), *(v3 + 136));
  v19 = off_28777D8C0[0];
  v20 = type metadata accessor for RemoteParticipantHandshakeRegistry();
  v19(a1, 3, v20, &off_28777D8A8);
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  sub_265D58B40();
  sub_265D58830();
  sub_265CA4AE8(v33, &qword_28003E6D0, &unk_265D5C9E0);
  v21 = swift_allocObject();
  v21[2] = v15;
  v21[3] = v16;
  v21[4] = v18;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_265CDF3B4;
  *(v22 + 24) = v21;
  v23 = v30;
  v24 = v31;
  (*(v5 + 16))(v31, v9, v30);
  v25 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v26 = swift_allocObject();
  (*(v5 + 32))(v26 + v25, v24, v23);
  v27 = (v26 + ((v6 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = sub_265CC4B4C;
  v27[1] = v22;
  sub_265D588C0();
  sub_265D58930();
  return (*(v5 + 8))(v9, v23);
}

uint64_t sub_265CDE438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v33);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v31 = &v30 - v8;
  v9 = sub_265D59DE0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595E0();
  sub_265D59DC0();
  (*(v10 + 8))(v12, v9);
  sub_265D5A030();
  v14 = v13;
  v15 = sub_265D58B20();
  v17 = v16;
  __swift_project_boxed_opaque_existential_1((v3 + 112), *(v3 + 136));
  v18 = off_28777D8C0[0];
  v19 = type metadata accessor for RemoteParticipantHandshakeRegistry();
  v18(a1, 1, v19, &off_28777D8A8);
  sub_265C97624(v3 + 32, v35);
  sub_265D58B40();
  v20 = v31;
  sub_265D58830();
  sub_265CA4AE8(v35, &qword_28003E6D0, &unk_265D5C9E0);
  v21 = swift_allocObject();
  v21[2] = v14;
  v21[3] = v15;
  v21[4] = v17;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_265CDF374;
  *(v22 + 24) = v21;
  v24 = v32;
  v23 = v33;
  v25 = v20;
  (*(v5 + 16))(v32, v20, v33);
  v26 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v27 = swift_allocObject();
  (*(v5 + 32))(v27 + v26, v24, v23);
  v28 = (v27 + ((v6 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v28 = sub_265CC3740;
  v28[1] = v22;
  sub_265D588C0();
  sub_265D58930();
  return (*(v5 + 8))(v25, v23);
}

uint64_t sub_265CDE7C8@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20[2] = a5;
  v20[3] = a4;
  v20[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6C0, &qword_265D5C9C8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v20 - v7;
  v9 = sub_265D588C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v20 - v14;
  sub_265D5A030();
  sub_265D59C80();
  sub_265D59C90();

  sub_265D57F10();
  v16 = sub_265D57F40();
  (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
  sub_265D588B0();
  (*(v10 + 16))(v13, v15, v9);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  (*(v10 + 32))(v18 + v17, v13, v9);
  sub_265D58940();
  return (*(v10 + 8))(v15, v9);
}

void sub_265CDEA20(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v71 = a1;
  v76 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6C0, &qword_265D5C9C8);
  MEMORY[0x28223BE20](v4 - 8);
  v65 = &v61 - v5;
  v75 = sub_265D588C0();
  v68 = *(v75 - 8);
  v6 = MEMORY[0x28223BE20](v75);
  v66 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v7;
  MEMORY[0x28223BE20](v6);
  v67 = &v61 - v8;
  v9 = sub_265D58870();
  v69 = *(v9 - 8);
  v70 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6C8, &unk_265D5C9D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v61 - v13;
  v15 = sub_265D59BA0();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_265D59DE0();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v62 = &v61 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v61 - v26;
  sub_265D595E0();
  sub_265D59DC0();
  v28 = *(v20 + 8);
  v73 = v20 + 8;
  v74 = v19;
  v72 = v28;
  v28(v27, v19);
  sub_265D5A030();
  v29 = *(v3 + 136);
  v63 = v3;
  __swift_project_boxed_opaque_existential_1((v3 + 112), v29);
  v30 = off_28777D8C8[0];
  v31 = type metadata accessor for RemoteParticipantHandshakeRegistry();
  v30(3, v31, &off_28777D8A8);
  v32 = v15;
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_265CA4AE8(v14, &qword_28003E6C8, &unk_265D5C9D0);
    sub_265D595E0();
    v33 = sub_265D59DD0();
    v34 = sub_265D5A070();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_265C01000, v33, v34, "No previous outgoing handshake recorded, rejecting", v35, 2u);
      MEMORY[0x266770CF0](v35, -1, -1);
    }

    v72(v23, v74);
    v36 = sub_265D58580();
    sub_265CDF304();
    v37 = swift_allocError();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D52608], v36);
    *(swift_allocObject() + 16) = v37;
    sub_265D58940();
    return;
  }

  (*(v16 + 32))(v18, v14, v15);
  sub_265D59B70();
  v39 = sub_265D58860();
  v41 = v40;
  (*(v69 + 8))(v11, v70);
  if (v39 == sub_265D58860() && v41 == v42)
  {

LABEL_9:
    sub_265D5A030();
    sub_265D58B20();
    sub_265D59C80();
    v44 = v16;
    sub_265D59C90();
    v45 = v65;
    sub_265D57F10();
    v46 = sub_265D57F40();
    (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
    v47 = v67;
    sub_265D588B0();
    v48 = v68;
    v49 = v66;
    v50 = v75;
    (*(v68 + 16))(v66, v47, v75);
    v51 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v52 = swift_allocObject();
    (*(v48 + 32))(v52 + v51, v49, v50);
    sub_265D58940();
    (*(v48 + 8))(v47, v50);
    (*(v44 + 8))(v18, v32);
    return;
  }

  v43 = sub_265D5A3C0();

  if (v43)
  {
    goto LABEL_9;
  }

  v53 = v62;
  sub_265D595E0();
  v54 = sub_265D59DD0();
  v55 = sub_265D5A070();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_265C01000, v54, v55, "Handshake nonce does not match previous outgoing handshake, rejecting", v56, 2u);
    MEMORY[0x266770CF0](v56, -1, -1);
  }

  v72(v53, v74);
  v57 = sub_265D58580();
  sub_265CDF304();
  v58 = swift_allocError();
  (*(*(v57 - 8) + 104))(v59, *MEMORY[0x277D52608], v57);
  *(swift_allocObject() + 16) = v58;
  v60 = v58;
  sub_265D58940();
  (*(v16 + 8))(v18, v15);
}

unint64_t sub_265CDF304()
{
  result = qword_28003E220;
  if (!qword_28003E220)
  {
    sub_265D58580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E220);
  }

  return result;
}

uint64_t objectdestroy_24Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_265CDF49C(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_265C9EDEC(a1, a2, v2 + v6, v8, v9);
}

uint64_t objectdestroy_15Tm()
{
  v1 = sub_265D588C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265CDF668()
{
  v1 = v0;
  v2 = sub_265D58F70();
  v40 = *(v2 - 8);
  v3 = v40;
  MEMORY[0x28223BE20](v2);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265D59DE0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595E0();
  sub_265D59DC0();
  (*(v7 + 8))(v9, v6);
  v10 = v1[16];
  v11 = v1[18];
  v39 = v1;
  ObjectType = swift_getObjectType();
  v42 = v10;
  v13 = *MEMORY[0x277D4EC20];
  v41 = *(v3 + 104);
  v41(v5, v13, v2);
  v14 = v3 + 104;
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();

  v35 = v11;
  sub_265D59210();

  v16 = v40 + 8;
  v15 = *(v40 + 8);
  v37 = v2;
  v15(v5, v2);
  v38 = v15;
  v40 = v16;

  swift_unknownObjectRelease();
  v42 = v10;
  v17 = v2;
  v18 = v41;
  v41(v5, *MEMORY[0x277D4EB90], v17);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  v36 = ObjectType;
  sub_265D59210();

  v19 = v37;
  v15(v5, v37);

  swift_unknownObjectRelease();
  v42 = v10;
  v18(v5, *MEMORY[0x277D4EB48], v19);
  v20 = v14;
  swift_allocObject();
  v21 = v39;
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_265D59200();

  v22 = v38;
  v38(v5, v19);
  swift_unknownObjectRelease();
  v42 = v10;
  v41(v5, *MEMORY[0x277D4EA70], v19);
  swift_allocObject();
  swift_weakInit();

  sub_265D59210();

  v22(v5, v19);

  swift_unknownObjectRelease();
  v42 = v10;
  v23 = v41;
  v41(v5, *MEMORY[0x277D4E928], v19);
  v34[5] = v20;
  swift_allocObject();
  swift_weakInit();
  sub_265D59200();

  v22(v5, v19);
  swift_unknownObjectRelease();
  v24 = v21[2];
  v35 = v21[4];
  swift_getObjectType();
  v42 = v24;
  LODWORD(v36) = *MEMORY[0x277D4E860];
  v23(v5);
  swift_allocObject();
  swift_weakInit();
  v34[3] = sub_265D58870();
  v34[2] = sub_265D588C0();
  swift_unknownObjectRetain();
  sub_265D591E0();

  v25 = v38;
  v38(v5, v19);
  swift_unknownObjectRelease();
  v26 = v21[5];
  v35 = v21[7];
  v34[4] = swift_getObjectType();
  v42 = v26;
  v27 = v41;
  v41(v5, v36, v19);
  swift_allocObject();
  swift_weakInit();
  v28 = v26;
  swift_unknownObjectRetain_n();
  sub_265D591E0();

  v29 = v37;
  v25(v5, v37);
  swift_unknownObjectRelease();
  v30 = v39[8];
  v34[1] = v39[10];
  v34[0] = swift_getObjectType();
  v42 = v30;
  v27(v5, v36, v29);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_265D591E0();

  v31 = v37;
  v32 = v38;
  v38(v5, v37);
  swift_unknownObjectRelease();
  v42 = v28;
  v41(v5, *MEMORY[0x277D4E858], v31);
  swift_allocObject();
  swift_weakInit();
  sub_265D591E0();

  v32(v5, v31);
  return swift_unknownObjectRelease();
}

uint64_t sub_265CDFFC4@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_265D59DE0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 88, v11);

    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_265D595E0();
    sub_265D59DC0();
    (*(v4 + 8))(v6, v3);
    sub_265CD67DC(a2);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
    return __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }
}

uint64_t sub_265CE01C8@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_265D59DE0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 88, v11);

    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_265D595E0();
    sub_265D59DC0();
    (*(v4 + 8))(v6, v3);
    sub_265CD5D68();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
    return __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }
}

uint64_t sub_265CE03CC@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_265D59DE0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 88, v12);

    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    sub_265D595E0();
    sub_265D59DC0();
    (*(v5 + 8))(v7, v4);
    swift_getObjectType();
    sub_265D59C10();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    (*(*(v9 - 8) + 56))(a3, 0, 1, v9);
    return __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    return (*(*(v11 - 8) + 56))(a3, 1, 1, v11);
  }
}

uint64_t sub_265CE05EC@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_265D59DE0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 88, v11);

    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_265D595E0();
    sub_265D59DC0();
    (*(v4 + 8))(v6, v3);
    swift_getObjectType();
    sub_265D59C00();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
    return __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }
}

uint64_t sub_265CE0800@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_265D59DE0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 88, v16);

    v12 = *__swift_project_boxed_opaque_existential_1(v16, v16[3]);
    sub_265D595E0();
    sub_265D59DC0();
    (*(v6 + 8))(v8, v5);
    __swift_project_boxed_opaque_existential_1((v12 + 72), *(v12 + 96));
    sub_265D56A50(v9, v10, a3);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    (*(*(v13 - 8) + 56))(a3, 0, 1, v13);
    return __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    return (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
  }
}

uint64_t sub_265CE0A2C@<X0>(uint64_t a1@<X0>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 88, v11);

    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    a3(a1);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E278, &qword_265D5B600);
    (*(*(v8 - 8) + 56))(a4, 0, 1, v8);
    return __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E278, &qword_265D5B600);
    return (*(*(v10 - 8) + 56))(a4, 1, 1, v10);
  }
}

uint64_t sub_265CE0B6C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_265CE0CB4()
{
  v0 = sub_265D58040();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_265D57F40();
  __swift_allocate_value_buffer(v1, qword_28003F0A0);
  __swift_project_value_buffer(v1, qword_28003F0A0);
  sub_265D58030();
  return sub_265D57F20();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_265CE0E18(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED000065646F4D78;
  v3 = 0x656C7069746C756DLL;
  v4 = a1;
  v5 = 0x6E6F436863746177;
  v6 = 0xEF6E6F697463656ELL;
  if (a1 != 4)
  {
    v5 = 0xD000000000000018;
    v6 = 0x8000000265D5FBB0;
  }

  if (a1 == 3)
  {
    v5 = 0x74616E696D726574;
    v6 = 0xEB000000006E6F69;
  }

  v7 = 0xD000000000000010;
  v8 = 0x8000000265D5FB50;
  if (a1 != 1)
  {
    v7 = 0xD000000000000017;
    v8 = 0x8000000265D5FB70;
  }

  if (!a1)
  {
    v7 = 0x656C7069746C756DLL;
    v8 = 0xED000065646F4D78;
  }

  if (a1 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v4 <= 2)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEB000000006E6F69;
      if (v9 != 0x74616E696D726574)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEF6E6F697463656ELL;
      if (v9 != 0x6E6F436863746177)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0x8000000265D5FBB0;
      if (v9 != 0xD000000000000018)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0x8000000265D5FB50;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0x8000000265D5FB70;
      v3 = 0xD000000000000017;
    }

    if (v9 != v3)
    {
LABEL_31:
      v11 = sub_265D5A3C0();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v10 != v2)
  {
    goto LABEL_31;
  }

  v11 = 1;
LABEL_32:

  return v11 & 1;
}

uint64_t sub_265CE101C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000016;
    }

    else
    {
      v3 = 0x7665446C61636F6CLL;
    }

    if (v2)
    {
      v4 = 0x8000000265D5FBE0;
    }

    else
    {
      v4 = 0xEB00000000656369;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x8000000265D5FC00;
    v3 = 0xD000000000000014;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000018;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2 == 3)
    {
      v4 = 0x8000000265D5FC20;
    }

    else
    {
      v4 = 0x8000000265D5FC40;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0xD000000000000016;
    }

    else
    {
      v7 = 0x7665446C61636F6CLL;
    }

    if (a2)
    {
      v6 = 0x8000000265D5FBE0;
    }

    else
    {
      v6 = 0xEB00000000656369;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0x8000000265D5FC00;
    if (v3 != 0xD000000000000014)
    {
LABEL_37:
      v8 = sub_265D5A3C0();
      goto LABEL_38;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD000000000000018;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (a2 == 3)
    {
      v6 = 0x8000000265D5FC20;
    }

    else
    {
      v6 = 0x8000000265D5FC40;
    }

    if (v3 != v5)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_37;
  }

  v8 = 1;
LABEL_38:

  return v8 & 1;
}

uint64_t sub_265CE11B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_265CE52C4(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_265D58330();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_265CE2A20(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_265CE5B68();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_265D58330();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_265CE4C34(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_265D58330();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_265CE1374(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6C8, &unk_265D5C9D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_265D59BA0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_265CA4AE8(a1, &qword_28003E6C8, &unk_265D5C9D0);
    v13 = sub_265CE2890(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_265CE5DE8();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_265CE4F54(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_265CA4AE8(v8, &qword_28003E6C8, &unk_265D5C9D0);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_265CE5490(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_265CE15C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_265C033C4(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_265CE5868(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_265CA4AE8(a1, &qword_28003E6E8, &unk_265D5CB70);
    v7 = sub_265CE2890(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_265CE66D8();
        v11 = v13;
      }

      sub_265C033C4((*(v11 + 56) + 40 * v9), v14);
      sub_265CE5120(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return sub_265CA4AE8(v14, &qword_28003E6E8, &unk_265D5CB70);
  }

  return result;
}

uint64_t sub_265CE16D0(uint64_t a1, unsigned __int8 a2)
{
  sub_265D5A460();
  sub_265D59EF0();

  return sub_265D5A4A0();
}

uint64_t sub_265CE1800()
{

  return swift_deallocClassInstance();
}

uint64_t sub_265CE186C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v21 = a3;
  v20 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6C8, &unk_265D5C9D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6D8, &unk_265D5CB60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_265D58870();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_265D59BA0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, v20, v9);
  v17 = sub_265D588C0();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  sub_265D59B80();
  (*(v14 + 16))(v5, v16, v13);
  (*(v14 + 56))(v5, 0, 1, v13);
  swift_beginAccess();
  sub_265CE1374(v5, v21);
  swift_endAccess();
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_265CE1B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6D8, &unk_265D5CB60);
  MEMORY[0x28223BE20](v5 - 8);
  v44 = v38 - v6;
  v7 = sub_265D59BA0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6C8, &unk_265D5C9D0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v43 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v38 - v14;
  v49 = sub_265D58870();
  v41 = *(v49 - 8);
  v16 = MEMORY[0x28223BE20](v49);
  v42 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v38 - v19;
  MEMORY[0x28223BE20](v18);
  v48 = v38 - v21;
  swift_beginAccess();
  v46 = a1;
  v22 = *(a1 + 16);
  v23 = *(v22 + 16);
  v47 = a2;
  if (v23 && (v24 = sub_265CE2890(a2), (v25 & 1) != 0))
  {
    (*(v8 + 16))(v15, *(v22 + 56) + *(v8 + 72) * v24, v7);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = *(v8 + 56);
  v27(v15, v26, 1, v7);
  if ((*(v8 + 48))(v15, 1, v7))
  {
    sub_265CA4AE8(v15, &qword_28003E6C8, &unk_265D5C9D0);
    return swift_endAccess();
  }

  else
  {
    v29 = *(v8 + 16);
    v38[1] = v8 + 16;
    v39 = v29;
    v29(v10, v15, v7);
    sub_265CA4AE8(v15, &qword_28003E6C8, &unk_265D5C9D0);
    swift_endAccess();
    sub_265D59B70();
    v40 = *(v8 + 8);
    v40(v10, v7);
    v30 = v41;
    v32 = v48;
    v31 = v49;
    (*(v41 + 32))(v48, v20, v49);
    v33 = *(v30 + 16);
    v38[0] = v27;
    v33(v42, v32, v31);
    v34 = sub_265D588C0();
    v35 = *(v34 - 8);
    v36 = v44;
    (*(v35 + 16))(v44, v45, v34);
    (*(v35 + 56))(v36, 0, 1, v34);
    sub_265D59B80();
    v37 = v43;
    v39(v43, v10, v7);
    (v38[0])(v37, 0, 1, v7);
    swift_beginAccess();
    sub_265CE1374(v37, v47);
    swift_endAccess();
    v40(v10, v7);
    return (*(v30 + 8))(v48, v49);
  }
}

uint64_t sub_265CE2048(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v21 = a3;
  v20 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6C8, &unk_265D5C9D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6D8, &unk_265D5CB60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_265D58870();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_265D59BA0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, v20, v9);
  v17 = sub_265D588C0();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  sub_265D59B80();
  (*(v14 + 16))(v5, v16, v13);
  (*(v14 + 56))(v5, 0, 1, v13);
  swift_beginAccess();
  sub_265CE1374(v5, v21);
  swift_endAccess();
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_265CE231C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  if (*(v6 + 16) && (v7 = sub_265CE2890(a2), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = sub_265D59BA0();
    v12 = *(v11 - 8);
    (*(v12 + 16))(a3, v10 + *(v12 + 72) * v9, v11);
    (*(v12 + 56))(a3, 0, 1, v11);
  }

  else
  {
    v13 = sub_265D59BA0();
    (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  return swift_endAccess();
}

uint64_t sub_265CE2484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 24);
  if (*(v6 + 16) && (v7 = sub_265CE2890(a2), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = sub_265D59BA0();
    v12 = *(v11 - 8);
    (*(v12 + 16))(a3, v10 + *(v12 + 72) * v9, v11);
    (*(v12 + 56))(a3, 0, 1, v11);
  }

  else
  {
    v13 = sub_265D59BA0();
    (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  return swift_endAccess();
}

uint64_t sub_265CE25EC(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v3 = sub_265C9520C(MEMORY[0x277D84F90]);
  swift_beginAccess();
  *(a1 + 16) = v3;

  v4 = sub_265C9520C(v2);
  swift_beginAccess();
  *(a1 + 24) = v4;
}

unint64_t sub_265CE2890(uint64_t a1)
{
  sub_265D5A460();
  v2 = sub_265D584C0();
  MEMORY[0x266770530](v2);
  v3 = sub_265D5A4A0();

  return sub_265CE2D98(a1, v3);
}

unint64_t sub_265CE2900(uint64_t a1)
{
  v1 = a1;
  sub_265D5A460();
  sub_265D59EF0();

  v2 = sub_265D5A4A0();

  return sub_265CE2E40(v1, v2);
}

unint64_t sub_265CE2A20(uint64_t a1)
{
  sub_265D58330();
  v2 = MEMORY[0x277D51510];
  sub_265CE68FC(&qword_28003E380, MEMORY[0x277D51510], MEMORY[0x277D51520]);
  v3 = sub_265D59E60();
  return sub_265CE3368(a1, v3, MEMORY[0x277D51510], &qword_28003E338, v2, MEMORY[0x277D51528]);
}

unint64_t sub_265CE2AF4(uint64_t a1, uint64_t a2)
{
  sub_265D5A460();
  sub_265D59EF0();
  v4 = sub_265D5A4A0();

  return sub_265CE3038(a1, a2, v4);
}

unint64_t sub_265CE2B6C(uint64_t a1)
{
  v1 = a1;
  sub_265D5A460();
  sub_265D59EF0();

  v2 = sub_265D5A4A0();

  return sub_265CE30F0(v1, v2);
}

unint64_t sub_265CE2CC4(uint64_t a1)
{
  sub_265D57E30();
  v2 = MEMORY[0x277CC9578];
  sub_265CE68FC(&qword_2813B9020, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  v3 = sub_265D59E60();
  return sub_265CE3368(a1, v3, MEMORY[0x277CC9578], &qword_28003E6E0, v2, MEMORY[0x277CC9598]);
}

unint64_t sub_265CE2D98(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      v6 = sub_265D584C0();
      if (v6 == sub_265D584C0())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_265CE2E40(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v19 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v21 + 48) + v4);
      if (v6 <= 1)
      {
        if (*(*(v21 + 48) + v4))
        {
          v7 = 0xD000000000000016;
        }

        else
        {
          v7 = 0x7665446C61636F6CLL;
        }

        if (*(*(v21 + 48) + v4))
        {
          v8 = 0x8000000265D5FBE0;
        }

        else
        {
          v8 = 0xEB00000000656369;
        }
      }

      else if (v6 == 2)
      {
        v7 = 0xD000000000000014;
        v8 = 0x8000000265D5FC00;
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0xD000000000000018;
        }

        else
        {
          v7 = 0xD000000000000010;
        }

        if (v6 == 3)
        {
          v8 = 0x8000000265D5FC20;
        }

        else
        {
          v8 = 0x8000000265D5FC40;
        }
      }

      v9 = 0xD000000000000014;
      v10 = 0xD000000000000018;
      if (v5 == 3)
      {
        v11 = 0x8000000265D5FC20;
      }

      else
      {
        v10 = 0xD000000000000010;
        v11 = 0x8000000265D5FC40;
      }

      if (v5 != 2)
      {
        v9 = v10;
      }

      v12 = 0x8000000265D5FC00;
      if (v5 != 2)
      {
        v12 = v11;
      }

      v13 = 0xD000000000000016;
      if (v5)
      {
        v14 = 0x8000000265D5FBE0;
      }

      else
      {
        v13 = 0x7665446C61636F6CLL;
        v14 = 0xEB00000000656369;
      }

      v15 = v5 <= 1 ? v13 : v9;
      v16 = v5 <= 1 ? v14 : v12;
      if (v7 == v15 && v8 == v16)
      {
        break;
      }

      v17 = sub_265D5A3C0();

      if ((v17 & 1) == 0)
      {
        v4 = (v4 + 1) & v19;
        if ((*(v20 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_265CE3038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_265D5A3C0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_265CE30F0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 > 2)
      {
        if (v6 == 3)
        {
          v7 = 0x74616E696D726574;
          v8 = 0xEB000000006E6F69;
        }

        else
        {
          if (v6 == 4)
          {
            v7 = 0x6E6F436863746177;
          }

          else
          {
            v7 = 0xD000000000000018;
          }

          if (v6 == 4)
          {
            v8 = 0xEF6E6F697463656ELL;
          }

          else
          {
            v8 = 0x8000000265D5FBB0;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v6 == 1)
        {
          v7 = 0xD000000000000010;
        }

        else
        {
          v7 = 0xD000000000000017;
        }

        if (v6 == 1)
        {
          v8 = 0x8000000265D5FB50;
        }

        else
        {
          v8 = 0x8000000265D5FB70;
        }
      }

      else
      {
        v7 = 0x656C7069746C756DLL;
        v8 = 0xED000065646F4D78;
      }

      v9 = 0xD000000000000018;
      if (v5 == 4)
      {
        v9 = 0x6E6F436863746177;
      }

      v10 = 0xEF6E6F697463656ELL;
      if (v5 != 4)
      {
        v10 = 0x8000000265D5FBB0;
      }

      if (v5 == 3)
      {
        v9 = 0x74616E696D726574;
        v10 = 0xEB000000006E6F69;
      }

      v11 = 0xD000000000000017;
      if (v5 == 1)
      {
        v11 = 0xD000000000000010;
        v12 = 0x8000000265D5FB50;
      }

      else
      {
        v12 = 0x8000000265D5FB70;
      }

      if (!v5)
      {
        v11 = 0x656C7069746C756DLL;
        v12 = 0xED000065646F4D78;
      }

      v13 = v5 <= 2 ? v11 : v9;
      v14 = v5 <= 2 ? v12 : v10;
      if (v7 == v13 && v8 == v14)
      {
        break;
      }

      v15 = sub_265D5A3C0();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_265CE3368(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_265CE68FC(v23, v24, v25);
      v19 = sub_265D59E80();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

uint64_t sub_265CE3508(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_265D58330();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF58, &qword_265D5B178);
  v39 = v4;
  result = sub_265D5A2D0();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_265CE68FC(&qword_28003E380, MEMORY[0x277D51510], MEMORY[0x277D51520]);
      result = sub_265D59E60();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_265CE38E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v42 = sub_265D59BA0();
  v5 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF88, &qword_265D5B1C0);
  v40 = v4;
  result = sub_265D5A2D0();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v37 = (v5 + 16);
    v38 = v7;
    v39 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + v22);
      v25 = *(v39 + 72);
      v26 = v23 + v25 * v22;
      if (v40)
      {
        (*v16)(v41, v26, v42);
      }

      else
      {
        (*v37)(v41, v26, v42);
      }

      sub_265D5A460();
      v27 = sub_265D584C0();
      MEMORY[0x266770530](v27);
      result = sub_265D5A4A0();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + v18) = v24;
      result = (*v16)(*(v9 + 56) + v25 * v18, v41, v42);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v7 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_265CE3C4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DE88, &qword_265D5B0C0);
  v35 = v4;
  result = sub_265D5A2D0();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_265D5A460();
      sub_265D59EF0();
      result = sub_265D5A4A0();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_265CE3EF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DE80, &qword_265D5B0B8);
  v31 = v4;
  result = sub_265D5A2D0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      if ((v31 & 1) == 0)
      {
        v25 = v24;
      }

      sub_265D5A460();
      sub_265D59EF0();

      result = sub_265D5A4A0();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v15) >> 6;
        while (++v17 != v27 || (v26 & 1) == 0)
        {
          v28 = v17 == v27;
          if (v17 == v27)
          {
            v17 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v17);
          if (v29 != -1)
          {
            v18 = __clz(__rbit64(~v29)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_265CE4278(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_265D57E30();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DE98, &qword_265D5B0D0);
  v39 = v4;
  result = sub_265D5A2D0();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v19 = v6;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v41 = *(v19 + 72);
      v26 = v25 + v41 * v24;
      if (v39)
      {
        (*v40)(v42, v26, v43);
      }

      else
      {
        (*v37)(v42, v26, v43);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_265CE68FC(&qword_2813B9020, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      result = sub_265D59E60();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v40)(*(v11 + 48) + v41 * v20, v42, v43);
      *(*(v11 + 56) + 8 * v20) = v27;
      ++*(v11 + 16);
      v19 = v38;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}