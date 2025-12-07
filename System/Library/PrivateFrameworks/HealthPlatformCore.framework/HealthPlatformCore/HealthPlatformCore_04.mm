uint64_t sub_2287679D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v57 = a2;
  sub_2287691F4(0);
  v58 = v5;
  v56 = *(v5 - 8);
  v55 = *(v56 + 64);
  MEMORY[0x28223BE20](v5);
  v54 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228769228(0, &qword_280DE00C8, MEMORY[0x277D121A8], MEMORY[0x277CBCE78]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v43 - v10;
  v44 = MEMORY[0x277D121A8];
  sub_228774608(0, &qword_280DDFE38, MEMORY[0x277D121A8], MEMORY[0x277CBCF38]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = v43 - v15;
  sub_228770C00(0);
  v18 = *(v17 - 8);
  v45 = v17;
  v46 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228770C94(0);
  v22 = *(v21 - 8);
  v47 = v21;
  v48 = v22;
  MEMORY[0x28223BE20](v21);
  v24 = v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228770A6C(0);
  v26 = *(v25 - 8);
  v52 = v25;
  v53 = v26;
  MEMORY[0x28223BE20](v25);
  v51 = v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a1;
  sub_2287CA570();

  sub_2287CADB0();
  sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
  sub_2287CAD80();
  (*(v9 + 8))(v11, v8);
  sub_22873C4AC();
  v28 = sub_2287CAF40();
  (*(v14 + 8))(v16, v13);
  v59 = v28;
  v29 = MEMORY[0x277CBCD88];
  sub_228774608(0, &qword_280DE0268, v44, MEMORY[0x277CBCD88]);
  v43[1] = v30;
  v44 = sub_22873DAE4();
  v31 = sub_2287CAED0();

  v59 = v31;
  sub_228774608(0, &qword_280DE1AD0, sub_2287708C0, v29);
  sub_2287708F4();
  sub_2287CAFB0();

  sub_2287693A8(&qword_280DE04F8, sub_228770C00, MEMORY[0x277CBCC90]);

  v32 = v45;
  sub_2287CAF70();

  (*(v46 + 8))(v20, v32);
  v33 = MEMORY[0x277CBCC08];
  sub_2287693A8(&qword_280DE0590, sub_228770C94, MEMORY[0x277CBCC08]);
  v34 = v47;
  v35 = sub_2287CAE90();
  (*(v48 + 8))(v24, v34);
  v59 = v35;
  v36 = v54;
  sub_228770280(v57, v54, sub_2287691F4);
  v37 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v38 = swift_allocObject();
  sub_228770390(v36, v38 + v37, sub_2287691F4);
  v39 = v51;
  sub_2287CAF70();

  sub_2287693A8(&qword_280DE0658, sub_228770A6C, v33);
  v40 = v52;
  v41 = sub_2287CAF40();
  (*(v53 + 8))(v39, v40);
  return v41;
}

uint64_t sub_2287680D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t a1)@<X8>)
{
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  result = (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  *a3 = sub_228773EF4;
  a3[1] = v10;
  return result;
}

uint64_t sub_228768200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22870CA30(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_2287C9930();
  v9 = *(v8 + 16);
  if (v9)
  {
    v20 = MEMORY[0x277D84F90];
    sub_2287133DC(0, v9, 0);
    v10 = v20;
    v11 = v8 + 32;
    do
    {
      sub_2287010E4(v11, v17);
      v12 = v18;
      v13 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      SharableModelGeneratorPipeline.eraseToAnyPipeline()(v12, v13, v7);
      __swift_destroy_boxed_opaque_existential_0(v17);
      v20 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_2287133DC((v14 > 1), v15 + 1, 1);
        v10 = v20;
      }

      *(v10 + 16) = v15 + 1;
      sub_228770390(v7, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, sub_22870CA30);
      v11 += 40;
      --v9;
    }

    while (v9);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v10;
}

void *sub_2287683E0()
{
  result = sub_22877E820(&unk_283BC0190);
  off_280DE0BF0 = result;
  return result;
}

uint64_t sub_228768408(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 256) = v2;
}

uint64_t sub_2287684A0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 256) = a1;
}

uint64_t sub_228768538(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_228769154(0);
  v92 = v5;
  v90 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v98 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228769314(0);
  v93 = *(v7 - 8);
  v94 = v7;
  MEMORY[0x28223BE20](v7);
  v91 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2287CA970();
  v99 = *(v9 - 8);
  v100 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v89 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v95 = &v76 - v13;
  v87 = v14;
  MEMORY[0x28223BE20](v12);
  v104 = &v76 - v15;
  v16 = sub_2287C9810();
  v96 = *(v16 - 8);
  v97 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v88 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v86 = &v76 - v20;
  v85 = v21;
  MEMORY[0x28223BE20](v19);
  v103 = &v76 - v22;
  sub_228739E24(0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v83 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v82 = &v76 - v26;
  sub_2287693F0(0);
  v28 = v27;
  v29 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v31 = &v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a1 + qword_280DE6260);
  v84 = v2;
  if (v32)
  {
    v102 = v32;
  }

  else
  {
    swift_beginAccess();
    v105 = v2[32];
    sub_228773CC0(0, &qword_280DE0110, sub_2287691F4, MEMORY[0x277CBCE10]);
    sub_2287694A8();
    v102 = sub_2287CAF40();
  }

  v105 = *(a1 + 16);
  *(swift_allocObject() + 16) = v4;
  v101 = v4;
  v33 = MEMORY[0x277D11E90];
  sub_2287715EC(0, &qword_280DE1AE0, &qword_280DE1A28, MEMORY[0x277D11E90], MEMORY[0x277CBCD88]);
  sub_22873E054(0, &qword_280DE1A28, v33);
  sub_22873A408();
  swift_retain_n();

  sub_2287CAF70();

  sub_2287693A8(&qword_280DE05F0, sub_2287693F0, MEMORY[0x277CBCC08]);
  v34 = sub_2287CAF40();
  (*(v29 + 8))(v31, v28);
  v35 = v82;
  sub_228770280(a1 + qword_280DE6258, v82, sub_228739E24);
  v36 = *(a1 + qword_280DE6268);
  sub_228769730(0);
  v37 = swift_allocObject();
  sub_228770390(v35, v37 + qword_280DE6258, sub_228739E24);
  v38 = v83;
  sub_228770280(v37 + qword_280DE6258, v83, sub_228739E24);
  v39 = v102;
  swift_retain_n();

  swift_setDeallocating();
  sub_2287762E4(v37 + qword_280DE6258, sub_228739E24);
  v102 = v39;

  swift_deallocClassInstance();
  v40 = swift_allocObject();
  v82 = v40;
  v81 = v34;
  *(v40 + 16) = v34;
  sub_228770390(v38, v40 + qword_280DE6258, sub_228739E24);
  *(v40 + qword_280DE6260) = v39;
  *(v40 + qword_280DE6268) = v36;

  v41 = v84;
  v42 = sub_2287580D4(v40);
  v83 = v42;
  v43 = v103;
  sub_2287C9800();
  v44 = _HKLogPersistedSignposts();
  _HKLogSignpostIDGenerate();

  v45 = v104;
  sub_2287CA980();
  v105 = v42;
  v46 = swift_allocObject();
  swift_weakInit();
  v47 = swift_allocObject();
  v48 = v101;
  *(v47 + 16) = v46;
  *(v47 + 24) = v48;
  sub_2287CACC0();
  sub_228774608(0, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
  sub_2287691F4(0);
  sub_22876928C();
  sub_2287CAFE0();

  v84 = v41[20];
  v49 = v96;
  v80 = *(v96 + 16);
  v50 = v86;
  v80(v86, v43, v97);
  v51 = v99;
  v79 = *(v99 + 16);
  v79(v95, v45, v100);
  v52 = *(v49 + 80);
  v53 = v49;
  v54 = (v52 + 16) & ~v52;
  v55 = *(v51 + 80);
  v56 = v51;
  v78 = v54;
  v57 = (v85 + v55 + v54) & ~v55;
  v85 = v52 | v55;
  v58 = v57;
  v76 = v57;
  v59 = (v87 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  v77 = *(v53 + 32);
  v61 = v97;
  v77(v60 + v54, v50, v97);
  v86 = *(v56 + 32);
  v62 = v60 + v58;
  v63 = v60;
  v87 = v60;
  v64 = v100;
  (v86)(v62, v95, v100);
  *(v63 + v59) = v101;
  v65 = v88;
  v80(v88, v103, v61);
  v66 = v89;
  v79(v89, v104, v64);
  v67 = swift_allocObject();
  v77(v67 + v78, v65, v61);
  v68 = v66;
  v69 = v64;
  (v86)(v67 + v76, v68, v64);
  *(v67 + v59) = v101;
  sub_2287693A8(&qword_280DE0438, sub_228769154, MEMORY[0x277CBCCE0]);
  v71 = v91;
  v70 = v92;
  v72 = v98;
  sub_2287CAE00();

  (*(v90 + 8))(v72, v70);
  sub_2287693A8(&unk_280DE0750, sub_228769314, MEMORY[0x277D12210]);
  v73 = v94;
  v74 = sub_2287CAF40();

  (*(v93 + 8))(v71, v73);
  (*(v99 + 8))(v104, v69);
  (*(v96 + 8))(v103, v61);
  return v74;
}

void sub_228769154(uint64_t a1)
{
  if (!qword_280DE0430)
  {
    sub_228774608(255, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
    sub_22876928C();
    v1 = sub_2287CABC0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0430);
    }
  }
}

void sub_228769228(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_22876928C()
{
  result = qword_280DE0208;
  if (!qword_280DE0208)
  {
    sub_228774608(255, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0208);
  }

  return result;
}

void sub_228769314(uint64_t a1)
{
  if (!qword_280DE0748)
  {
    sub_228769154(255);
    sub_2287693A8(&qword_280DE0438, sub_228769154, MEMORY[0x277CBCCE0]);
    v1 = sub_2287CAAC0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0748);
    }
  }
}

uint64_t sub_2287693A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2287693F0(uint64_t a1)
{
  if (!qword_280DE05E8)
  {
    v1 = MEMORY[0x277D11E90];
    sub_2287715EC(255, &qword_280DE1AE0, &qword_280DE1A28, MEMORY[0x277D11E90], MEMORY[0x277CBCD88]);
    sub_22873E054(255, &qword_280DE1A28, v1);
    sub_22873A408();
    v2 = sub_2287CAB50();
    if (!v3)
    {
      atomic_store(v2, &qword_280DE05E8);
    }
  }
}

unint64_t sub_2287694A8()
{
  result = qword_27D850DD8;
  if (!qword_27D850DD8)
  {
    sub_228773CC0(255, &qword_280DE0110, sub_2287691F4, MEMORY[0x277CBCE10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850DD8);
  }

  return result;
}

void sub_228769530(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    while (v4 < *(v2 + 16))
    {
      v6 = *(v2 + 32 + 8 * v4++);
      v7 = v6;
      v8 = sub_2287C9C30();
      if (!v8)
      {
        goto LABEL_3;
      }

      v9 = v8;
      v10 = [v8 type];

      if (qword_280DE0BE8 != -1)
      {
        swift_once();
      }

      v11 = off_280DE0BF0;
      if (*(off_280DE0BF0 + 2) && (sub_2287CBD80(), MEMORY[0x22AABF460](v10), v12 = sub_2287CBDB0(), v13 = -1 << *(v11 + 32), v14 = v12 & ~v13, ((*(v11 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v14) & 1) != 0))
      {
        v15 = ~v13;
        while (*(v11[6] + 8 * v14) != v10)
        {
          v14 = (v14 + 1) & v15;
          if (((*(v11 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v14) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2287134A0(0, *(v5 + 16) + 1, 1);
        }

        v17 = *(v5 + 16);
        v16 = *(v5 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_2287134A0((v16 > 1), v17 + 1, 1);
        }

        *(v5 + 16) = v17 + 1;
        *(v5 + 8 * v17 + 32) = v6;
        if (v4 == v3)
        {
          goto LABEL_21;
        }
      }

      else
      {
LABEL_3:

        if (v4 == v3)
        {
          goto LABEL_21;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
LABEL_21:
    *a2 = v5;
  }
}

void sub_228769730(uint64_t a1)
{
  if (!qword_280DE0FA0[0])
  {
    sub_22870CE64(255);
    v3 = v2;
    v4 = sub_2287693A8(&qword_280DE2DA8, sub_22870CE64, &protocol conformance descriptor for AnyPipelineProvider<A>);
    v6 = type metadata accessor for GeneratorPipelineManager.GeneratorPipelineManagerStreamContext(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, qword_280DE0FA0);
    }
  }
}

uint64_t sub_2287697C4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v92 = a3;
  sub_22877017C(0);
  v90 = *(v6 - 1);
  v91 = v6;
  MEMORY[0x28223BE20](v6);
  v88 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228774608(0, &qword_280DDFE20, sub_2287691F4, MEMORY[0x277CBCF38]);
  v89 = v8;
  v87 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v86 = &v71 - v9;
  v10 = sub_2287CAA50();
  v84 = *(v10 - 8);
  v85 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287691F4(0);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v13);
  v18 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v71 - v19;
  sub_22873DE68(0, v21);
  v76 = v22;
  v77 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v75 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228773F30(0);
  v81 = v24;
  v79 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v78 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228774004(0);
  v27 = v26;
  v82 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v80 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v93 = v14;
  if (Strong)
  {
    v30 = Strong;
    v72 = v15;
    v74 = v27;
    v31 = sub_2287C9EB0();
    v32 = sub_2287C9C30();

    v73 = v32;
    if (v32)
    {
      v83 = a4;

      v33 = sub_2287C9EB0();
      if (v33)
      {
        v34 = MEMORY[0x28223BE20](v33);
        *(&v71 - 2) = v34;
        v35 = v34;
        sub_228703004(0, &qword_280DE1990, 0x277CCD4D8);

        sub_2287CA650();

        v36 = v94[0];
      }

      else
      {
        swift_beginAccess();
        v36 = *(v30 + 48);
      }

      v57 = v72;
      v91 = v36;

      v58 = v75;
      sub_2287CA4D0();

      v90 = sub_2287691F4;
      sub_228770280(a1, v20, sub_2287691F4);
      v89 = a1;
      v59 = *(v57 + 80);
      v86 = (((v59 + 24) & ~v59) + v16);
      v88 = ((v59 + 24) & ~v59);
      v60 = swift_allocObject();
      *(v60 + 16) = v30;
      v87 = sub_2287691F4;
      sub_228770390(v20, v60 + ((v59 + 24) & ~v59), sub_2287691F4);

      sub_2287CACC0();
      sub_228774608(0, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
      v85 = v61;
      swift_getOpaqueTypeConformance2();
      v84 = sub_22876928C();
      v62 = v78;
      v63 = v76;
      sub_2287CAFE0();

      (*(v77 + 8))(v58, v63);
      sub_228770280(v89, v20, v90);
      v64 = (v86 + 7) & 0xFFFFFFFFFFFFFFF8;
      v65 = swift_allocObject();
      v66 = v73;
      *(v65 + 16) = v73;
      sub_228770390(v20, &v88[v65], v87);
      *(v65 + v64) = v92;
      sub_2287693A8(&qword_280DE0448, sub_228773F30, MEMORY[0x277CBCCE0]);
      v67 = v66;
      v69 = v80;
      v68 = v81;
      sub_2287CAF90();

      (*(v79 + 8))(v62, v68);
      sub_2287693A8(&qword_280DE0540, sub_228774004, MEMORY[0x277CBCC40]);
      v70 = v74;
      v55 = sub_2287CAF40();

      result = (*(v82 + 8))(v69, v70);
      a4 = v83;
      goto LABEL_12;
    }
  }

  sub_2287CA9D0();
  sub_228770280(a1, v18, sub_2287691F4);
  v37 = sub_2287CAA40();
  v38 = sub_2287CB5F0();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v83 = a4;
    v94[0] = v82;
    *v39 = 136315394;
    v40 = sub_2287CBE60();
    v42 = sub_2287031D8(v40, v41, v94);

    *(v39 + 4) = v42;
    *(v39 + 12) = 2080;
    v43 = sub_2287C9EB0();
    v44 = sub_2287C9C50();
    v45 = v20;
    v46 = a1;
    v48 = v47;

    sub_2287762E4(v18, sub_2287691F4);
    v49 = sub_2287031D8(v44, v48, v94);
    a1 = v46;
    v20 = v45;

    *(v39 + 14) = v49;
    _os_log_impl(&dword_2286FF000, v37, v38, "%s Self is deallocated or we're unable to find a profile identifier for profile %s", v39, 0x16u);
    v50 = v82;
    swift_arrayDestroy();
    a4 = v83;
    MEMORY[0x22AABFD90](v50, -1, -1);
    MEMORY[0x22AABFD90](v39, -1, -1);
  }

  else
  {

    sub_2287762E4(v18, sub_2287691F4);
  }

  (*(v84 + 8))(v12, v85);
  sub_228770280(a1, v20, sub_2287691F4);
  v51 = v88;
  sub_2287CADB0();
  sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
  v52 = v86;
  v53 = v91;
  sub_2287CAD80();
  (*(v90 + 1))(v51, v53);
  sub_2287740F0();
  v54 = v89;
  v55 = sub_2287CAF40();
  result = (*(v87 + 1))(v52, v54);
LABEL_12:
  *a4 = v55;
  return result;
}

uint64_t sub_22876A2A8@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v53 = a4;
  sub_2287691F4(0);
  v60 = v9;
  MEMORY[0x28223BE20](v9);
  v57 = &v48[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22877017C(0);
  v12 = v11;
  v59 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v56 = &v48[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_228774608(0, &qword_280DDFE20, sub_2287691F4, MEMORY[0x277CBCF38]);
  v58 = v14;
  v55 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v48[-v15];
  v54 = sub_2287CAA50();
  v17 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v19 = &v48[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = *a1;
  sub_2287CA9D0();
  v21 = a2;
  v22 = v20;
  v23 = sub_2287CAA40();
  v24 = sub_2287CB5F0();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v52 = v12;
    v26 = v25;
    v50 = swift_slowAlloc();
    v62 = v50;
    *v26 = 136315650;
    v27 = sub_2287CBE60();
    v51 = a3;
    v29 = sub_2287031D8(v27, v28, &v62);
    v49 = v24;
    v30 = v29;

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    v31 = v21;
    v32 = [v31 description];
    v33 = sub_2287CB220();
    v53 = a5;
    v35 = v34;

    v36 = v33;
    a3 = v51;
    v37 = sub_2287031D8(v36, v35, &v62);

    *(v26 + 14) = v37;
    *(v26 + 22) = 2082;
    v61 = v20;
    v38 = v20;
    sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
    v39 = sub_2287CB250();
    v41 = sub_2287031D8(v39, v40, &v62);

    *(v26 + 24) = v41;
    a5 = v53;
    _os_log_impl(&dword_2286FF000, v23, v49, "%s Unable to find transaction builder for %s: %{public}s", v26, 0x20u);
    v42 = v50;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v42, -1, -1);
    v43 = v26;
    v12 = v52;
    MEMORY[0x22AABFD90](v43, -1, -1);
  }

  (*(v17 + 8))(v19, v54);
  sub_228770280(a3, v57, sub_2287691F4);
  v44 = v56;
  sub_2287CADB0();
  sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
  sub_2287CAD80();
  (*(v59 + 8))(v44, v12);
  sub_2287740F0();
  v45 = v58;
  v46 = sub_2287CAF40();
  result = (*(v55 + 8))(v16, v45);
  *a5 = v46;
  return result;
}

void sub_22876A7EC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t (*a5)(uint64_t))
{
  v29 = a5;
  v30 = a2;
  v27 = a4;
  v6 = sub_2287C9810();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2287CAA50();
  v10 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9F0();
  (*(v7 + 16))(v9, a1, v6);
  v13 = sub_2287CAA40();
  v14 = sub_2287CB610();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v31 = v26;
    *v15 = 136446466;
    v16 = sub_2287CBE60();
    v18 = sub_2287031D8(v16, v17, &v31);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    sub_2287693A8(&qword_280DE3468, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v19 = sub_2287CBCC0();
    v21 = v20;
    (*(v7 + 8))(v9, v6);
    v22 = sub_2287031D8(v19, v21, &v31);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_2286FF000, v13, v14, v27, v15, 0x16u);
    v23 = v26;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v23, -1, -1);
    MEMORY[0x22AABFD90](v15, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v24 = (*(v10 + 8))(v12, v28);
  v29(v24);
  v25 = _HKLogPersistedSignposts();
  sub_2287CA930();
}

uint64_t objectdestroy_8Tm()
{
  v1 = sub_2287C9810();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2287CA970();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_22876ACB0(uint64_t (*a1)(unint64_t, unint64_t, uint64_t))
{
  v2 = *(sub_2287C9810() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_2287CA970() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v1 + v6, v7);
}

uint64_t sub_22876ADBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v61 = a2;
  v51 = a1;
  v56 = *v2;
  sub_22876FEE4(0);
  v6 = *(v5 - 8);
  v57 = v5;
  v58 = v6;
  MEMORY[0x28223BE20](v5);
  v54 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22876FF90(0);
  v9 = *(v8 - 8);
  v59 = v8;
  v60 = v9;
  MEMORY[0x28223BE20](v8);
  v55 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22877007C(0);
  v12 = *(v11 - 8);
  v47 = v11;
  v48 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287691F4(0);
  v46[1] = v15;
  v53 = *(v15 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v15);
  v17 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22877017C(0);
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v18);
  v23 = v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = v46 - v24;
  v49 = v17;
  v50 = sub_2287691F4;
  sub_228770280(a1, v17, sub_2287691F4);
  sub_2287CADB0();
  (*(v20 + 16))(v23, v25, v19);
  v26 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v27 = swift_allocObject();
  (*(v20 + 32))(v27 + v26, v23, v19);
  *(v27 + ((v21 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v61;

  sub_2287CACC0();
  sub_228774608(0, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
  v29 = v28;
  sub_2287701B0();
  v30 = sub_22876928C();
  sub_2287CB060();

  sub_2287693A8(&qword_280DE0478, sub_22877007C, MEMORY[0x277CBCCE0]);
  v31 = v47;
  v32 = sub_2287CAF40();
  (*(v48 + 8))(v14, v31);
  (*(v20 + 8))(v25, v19);
  v33 = v3[24];
  v34 = v3[25];
  __swift_project_boxed_opaque_existential_1(v3 + 21, v33);
  v62 = v32;
  v62 = (*(v34 + 32))(&v62, v29, v30, v33, v34);
  swift_allocObject();
  swift_weakInit();
  v35 = v54;
  sub_2287CAF70();

  v36 = swift_allocObject();
  swift_weakInit();
  v37 = v49;
  sub_228770280(v51, v49, v50);
  v38 = (*(v53 + 80) + 24) & ~*(v53 + 80);
  v39 = (v52 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  *(v40 + 16) = v36;
  sub_228770390(v37, v40 + v38, sub_2287691F4);
  *(v40 + v39) = v61;
  *(v40 + ((v39 + 15) & 0xFFFFFFFFFFFFFFF8)) = v56;
  sub_2287693A8(&qword_280DE0620, sub_22876FEE4, MEMORY[0x277CBCC08]);

  v41 = v55;
  v42 = v57;
  sub_2287CAF90();

  (*(v58 + 8))(v35, v42);
  sub_2287693A8(&qword_280DE0550, sub_22876FF90, MEMORY[0x277CBCC40]);
  v43 = v59;
  v44 = sub_2287CAF40();

  (*(v60 + 8))(v41, v43);
  return v44;
}

uint64_t sub_22876B4EC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (sub_2287CA420())
    {
      swift_beginAccess();

      sub_2287CACF0();
    }
  }

  return sub_228770280(a1, a3, sub_2287691F4);
}

uint64_t sub_22876B5B0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v70 = a5;
  v78 = a2;
  v79 = a6;
  v9 = MEMORY[0x277D121A8];
  sub_2287704B4(0, &qword_27D850DE0, &qword_280DE0268, MEMORY[0x277D121A8], sub_22873DAE4);
  v75 = *(v10 - 8);
  v76 = v10;
  MEMORY[0x28223BE20](v10);
  v74 = &v64 - v11;
  sub_228769228(0, &qword_280DE00C8, MEMORY[0x277D121A8], MEMORY[0x277CBCE78]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v73 = &v64 - v15;
  sub_228774608(0, &qword_280DDFE38, v9, MEMORY[0x277CBCF38]);
  v17 = v16;
  v72 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v71 = &v64 - v18;
  sub_228774608(0, &qword_27D850DE8, sub_2287691F4, MEMORY[0x277CBCE68]);
  v68 = *(v19 - 8);
  v69 = v19;
  MEMORY[0x28223BE20](v19);
  v67 = &v64 - v20;
  v77 = sub_2287CAA50();
  v21 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  sub_2287CA9D0();
  v25 = v24;
  v26 = sub_2287CAA40();
  v27 = sub_2287CB5F0();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v65 = v14;
    v29 = v28;
    v30 = swift_slowAlloc();
    v66 = v13;
    v31 = v30;
    v81[0] = v30;
    *v29 = 136446466;
    v32 = sub_2287CBE60();
    v64 = v17;
    v34 = sub_2287031D8(v32, v33, v81);
    v70 = a3;
    v35 = a4;
    v36 = v34;

    *(v29 + 4) = v36;
    *(v29 + 12) = 2082;
    v84 = v24;
    v37 = v24;
    sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
    v38 = sub_2287CB270();
    v40 = sub_2287031D8(v38, v39, v81);
    a4 = v35;

    *(v29 + 14) = v40;
    v17 = v64;
    _os_log_impl(&dword_2286FF000, v26, v27, "[%{public}s]: Transaction Publisher Error: %{public}s", v29, 0x16u);
    swift_arrayDestroy();
    v41 = v31;
    v13 = v66;
    MEMORY[0x22AABFD90](v41, -1, -1);
    v42 = v29;
    v14 = v65;
    MEMORY[0x22AABFD90](v42, -1, -1);
  }

  (*(v21 + 8))(v23, v77);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v44 = Strong;
    sub_2287691F4(0);
    v78 = v45;
    sub_22876BF30(v24);
    v81[0] = a4;
    sub_2287CA570();

    v46 = v73;
    sub_2287CADB0();
    sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
    v47 = v71;
    sub_2287CAD80();
    (*(v14 + 8))(v46, v13);
    sub_22873C4AC();
    v48 = sub_2287CAEB0();
    v77 = v48;
    (*(v72 + 8))(v47, v17);
    sub_2287010E4(v44 + 168, v81);
    v50 = v82;
    v49 = v83;
    __swift_project_boxed_opaque_existential_1(v81, v82);
    v80 = v48;
    v51 = *(v49 + 32);
    v52 = MEMORY[0x277CBCD88];
    sub_228774608(0, &qword_280DE0268, MEMORY[0x277D121A8], MEMORY[0x277CBCD88]);
    v54 = v53;
    v55 = sub_22873DAE4();
    v80 = v51(&v80, v54, v55, v50, v49);
    *(swift_allocObject() + 16) = v24;
    v56 = v24;
    sub_2287CACC0();
    sub_228774608(0, &qword_280DE0200, sub_2287691F4, v52);
    sub_22876928C();
    v57 = v74;
    sub_2287CAFE0();

    __swift_destroy_boxed_opaque_existential_0(v81);
    sub_228770628();
    v58 = v76;
    v59 = sub_2287CAF40();

    result = (*(v75 + 8))(v57, v58);
  }

  else
  {
    v81[0] = v24;
    v61 = v24;
    sub_2287691F4(0);
    sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
    v62 = v67;
    sub_2287CAD70();
    sub_228770598();
    v63 = v69;
    v59 = sub_2287CAF40();
    result = (*(v68 + 8))(v62, v63);
  }

  *v79 = v59;
  return result;
}

uint64_t sub_22876BDD0@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_228774608(0, &qword_27D850DE8, sub_2287691F4, MEMORY[0x277CBCE68]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v12[1] = a1;
  v9 = a1;
  sub_2287691F4(0);
  sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
  sub_2287CAD70();
  sub_228770598();
  v10 = sub_2287CAF40();
  result = (*(v6 + 8))(v8, v5);
  *a2 = v10;
  return result;
}

void sub_22876BF30(void *a1)
{
  v3 = *v1;
  v4 = sub_2287CAA50();
  v40 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v41 = sub_2287C9630();
  v10 = [v41 domain];
  v11 = sub_2287CB220();
  v13 = v12;

  if (v11 == sub_2287CB220() && v13 == v14)
  {
  }

  else
  {
    v16 = sub_2287CBD00();

    if ((v16 & 1) == 0)
    {
LABEL_10:
      v18 = v41;

      return;
    }
  }

  v17 = [v41 code];
  if (v17 != 126)
  {
    if (v17 == 6)
    {
      sub_2287CA9D0();
      v33 = sub_2287CAA40();
      v34 = sub_2287CB610();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v43 = v36;
        *v35 = 136315138;
        v37 = sub_22876C3BC(v3);
        v39 = sub_2287031D8(v37, v38, &v43);

        *(v35 + 4) = v39;
        _os_log_impl(&dword_2286FF000, v33, v34, "[%s] Can not access database: exiting process", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x22AABFD90](v36, -1, -1);
        MEMORY[0x22AABFD90](v35, -1, -1);
      }

      (*(v40 + 8))(v7, v4);
      exit(0);
    }

    goto LABEL_10;
  }

  v19 = sub_2287C9E90();
  v20 = [v19 profileIdentifier];
  sub_2287CA4C0();

  sub_2287CA9D0();
  v21 = a1;
  v22 = sub_2287CAA40();
  v23 = sub_2287CB600();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v43 = v25;
    *v24 = 136446466;
    v26 = sub_2287CBE60();
    v28 = sub_2287031D8(v26, v27, &v43);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2082;
    v42 = a1;
    v29 = a1;
    sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
    v30 = sub_2287CB270();
    v32 = sub_2287031D8(v30, v31, &v43);

    *(v24 + 14) = v32;
    _os_log_impl(&dword_2286FF000, v22, v23, "[%{public}s]: Cleared existing transaction identifier due to error: %{public}s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v25, -1, -1);
    MEMORY[0x22AABFD90](v24, -1, -1);
  }

  (*(v40 + 8))(v9, v4);
}

uint64_t SharableModelGeneratorPipelineManager.__allocating_init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:scheduler:queueProvider:)(void *a1, void *a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  v17 = swift_allocObject();
  SharableModelGeneratorPipelineManager.init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:scheduler:queueProvider:)(a1, a2, a3, a4 & 1, a5, a6, a7, a8, a9);
  return v17;
}

void *SharableModelGeneratorPipelineManager.init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:scheduler:queueProvider:)(void *a1, void *a2, uint64_t a3, int a4, void *a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  v10 = v9;
  v53 = a8;
  v47 = a7;
  v57 = a6;
  v55 = a5;
  v46 = a4;
  v45 = a3;
  v44 = a2;
  v56 = a1;
  v65 = a9;
  v63 = *v9;
  v61 = sub_2287CB6A0();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22876CFB0(0);
  v62 = v15;
  v64 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v59 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_2287C9DF0();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_2287C9E70();
  v51 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v48 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2287CB6B0();
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2287CB670();
  MEMORY[0x28223BE20](v21);
  v22 = sub_2287CB0E0();
  MEMORY[0x28223BE20](v22 - 8);
  sub_228773CC0(0, &qword_280DE0110, sub_2287691F4, MEMORY[0x277CBCE10]);
  swift_allocObject();
  v9[32] = sub_2287CAD00();
  sub_2287010E4(a1, &v74);
  sub_2287010E4(a5, &v73);
  sub_2287010E4(a8, &v72);
  sub_2287010E4(v65, &v69);
  v67 = MEMORY[0x277D84F98];
  v68 = MEMORY[0x277D84F98];
  sub_228773CC0(0, &qword_280DE00E8, sub_22876D0B0, MEMORY[0x277CBCE30]);
  v43 = v23;
  swift_allocObject();
  v9[2] = sub_2287CAD60();
  v9[4] = 0;
  [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  sub_2287CA440();
  swift_allocObject();
  v9[18] = sub_2287CA430();
  v40 = sub_228703004(0, &qword_280DE39D0, 0x277D85C78);
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_2287CBA20();

  sub_22876D1CC(0);
  v67 = v24;
  sub_22876D260();
  v67 = sub_2287CB250();
  v68 = v25;
  MEMORY[0x22AABE980](0xD000000000000013, 0x80000002287D0720);
  sub_2287CB0A0();
  v67 = MEMORY[0x277D84F90];
  sub_2287693A8(&qword_280DE39D8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_22876D2A8(0);
  sub_2287693A8(&qword_280DE39E8, sub_22876D2A8, MEMORY[0x277D83970]);
  sub_2287CB880();
  (*(v41 + 104))(v20, *MEMORY[0x277D85260], v42);
  v9[20] = sub_2287CB6D0();
  sub_2287010E4(&v74, (v9 + 8));
  v26 = v44;
  v9[6] = v44;
  v9[3] = v45;
  *(v9 + 40) = v46 & 1;
  sub_2287010E4(&v73, (v9 + 13));
  v9[31] = v47;
  sub_2287010E4(&v72, (v9 + 21));
  sub_2287010E4(&v69, (v9 + 26));
  sub_228769228(0, &qword_280DE1810, sub_228739F64, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2287CCFE0;
  v28 = v26;

  *(inited + 32) = [v28 profileIdentifier];
  *(inited + 40) = v28;
  v29 = v28;
  v30 = sub_228739FF4(inited);
  swift_setDeallocating();
  sub_2287762E4(inited + 32, sub_228739F64);
  v67 = v30;
  sub_228769228(0, &qword_280DE3360, sub_22876FCD4, MEMORY[0x277D121D8]);
  swift_allocObject();
  v10[7] = sub_2287CA690();
  v10[19] = v57;
  v31 = v70;
  v32 = v71;
  __swift_project_boxed_opaque_existential_1(&v69, v70);
  (*(v50 + 104))(v49, *MEMORY[0x277D11F10], v52);

  v33 = v48;
  sub_2287C9E30();
  v34 = (*(v32 + 8))(v33, v31, v32);
  (*(v51 + 8))(v33, v54);
  v67 = v10[2];

  v35 = v58;
  sub_2287CB690();
  v66 = v34;
  sub_22876D144();
  sub_22873A2A8(&qword_280DE3620, &qword_280DE39D0, 0x277D85C78, MEMORY[0x277D85228]);
  v36 = v59;
  sub_2287CB020();
  (*(v60 + 8))(v35, v61);

  *(swift_allocObject() + 16) = v63;
  sub_2287693A8(&qword_280DE0328, sub_22876CFB0, MEMORY[0x277CBCD20]);
  v37 = v62;
  v38 = sub_2287CB050();

  __swift_destroy_boxed_opaque_existential_0(v65);
  __swift_destroy_boxed_opaque_existential_0(v53);
  __swift_destroy_boxed_opaque_existential_0(v55);
  __swift_destroy_boxed_opaque_existential_0(v56);
  (*(v64 + 8))(v36, v37);
  __swift_destroy_boxed_opaque_existential_0(&v72);
  __swift_destroy_boxed_opaque_existential_0(&v73);
  __swift_destroy_boxed_opaque_existential_0(&v74);
  v10[4] = v38;

  __swift_destroy_boxed_opaque_existential_0(&v69);
  return v10;
}

void sub_22876CFB0(uint64_t a1)
{
  if (!qword_280DE0320)
  {
    sub_228773CC0(255, &qword_280DE00E8, sub_22876D0B0, MEMORY[0x277CBCE30]);
    sub_228703004(255, &qword_280DE39D0, 0x277D85C78);
    sub_22876D144();
    sub_22873A2A8(&qword_280DE3620, &qword_280DE39D0, 0x277D85C78, MEMORY[0x277D85228]);
    v1 = sub_2287CAC20();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0320);
    }
  }
}

void sub_22876D0B0(uint64_t a1)
{
  if (!qword_280DE29F0)
  {
    sub_22870CE64(255);
    v3 = v2;
    v4 = sub_2287693A8(&qword_280DE2DA8, sub_22870CE64, &protocol conformance descriptor for AnyPipelineProvider<A>);
    v6 = type metadata accessor for GeneratorPipelineManager.GenerationState(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_280DE29F0);
    }
  }
}

unint64_t sub_22876D144()
{
  result = qword_280DE00F0;
  if (!qword_280DE00F0)
  {
    sub_228773CC0(255, &qword_280DE00E8, sub_22876D0B0, MEMORY[0x277CBCE30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE00F0);
  }

  return result;
}

void sub_22876D1CC(uint64_t a1)
{
  if (!qword_280DE2958)
  {
    sub_22870CE64(255);
    v3 = v2;
    v4 = sub_2287693A8(&qword_280DE2DA8, sub_22870CE64, &protocol conformance descriptor for AnyPipelineProvider<A>);
    v6 = type metadata accessor for GeneratorPipelineManager(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_280DE2958);
    }
  }
}

unint64_t sub_22876D260()
{
  result = qword_280DE2950;
  if (!qword_280DE2950)
  {
    sub_22876D1CC(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DE2950);
  }

  return result;
}

uint64_t SharableModelGeneratorPipelineManager.deinit()
{
  v0 = sub_2287655B8();

  return v0;
}

uint64_t SharableModelGeneratorPipelineManager.__deallocating_deinit()
{
  sub_2287655B8();

  return swift_deallocClassInstance();
}

uint64_t sub_22876D35C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = sub_228756C18(a1);
  if (v14)
  {
    v15 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v6;
    v30 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v17 = v30;
    }

    v18 = *(v17 + 48);
    v19 = sub_2287C9810();
    v20 = v15;
    (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v15, v19);
    v21 = *(v17 + 56);
    v22 = a2(0);
    v29 = *(v22 - 8);
    a3(v21 + *(v29 + 72) * v20, a6);
    a4(v20, v17);
    *v11 = v17;
    v23 = *(v29 + 56);
    v24 = a6;
    v25 = 0;
    v26 = v22;
  }

  else
  {
    v27 = a2(0);
    v23 = *(*(v27 - 8) + 56);
    v26 = v27;
    v24 = a6;
    v25 = 1;
  }

  return v23(v24, v25, 1, v26);
}

void sub_22876D51C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_228756BD4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_2287BA778(v13, a3 & 1);
      v8 = sub_228756BD4(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_228703004(0, &qword_280DE3870, 0x277CCD7C8);
        sub_2287CBD30();
        __break(1u);
_objc_retain_x1:
        MEMORY[0x2821F9840]();
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_2287BB86C();
      v8 = v16;
    }
  }

  v18 = *v4;
  if ((v14 & 1) == 0)
  {
    v18[(v8 >> 6) + 8] |= 1 << v8;
    *(v18[6] + 8 * v8) = a2;
    *(v18[7] + 8 * v8) = a1;
    v21 = v18[2];
    v12 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v12)
    {
      v18[2] = v22;

      goto _objc_retain_x1;
    }

    goto LABEL_17;
  }

  v19 = v18[7];
  v20 = *(v19 + 8 * v8);
  *(v19 + 8 * v8) = a1;
}

uint64_t sub_22876D694(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2287C9810();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_228756C18(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      sub_228774694(0);
      return sub_2287759C8(a1, v21 + *(*(v22 - 8) + 72) * v14, sub_228774694);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_2287BB9C0();
    goto LABEL_7;
  }

  sub_2287BA9D4(v17, a3 & 1);
  v24 = sub_228756C18(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_2287CBD30();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_22876DE84(v14, v11, a1, v20, sub_228774694, sub_228775238);
}

uint64_t sub_22876D890(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2287C9810();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_228756C18(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      sub_22872C820(0);
      return sub_2287759C8(a1, v21 + *(*(v22 - 8) + 72) * v14, sub_22872C820);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_2287BB9E8();
    goto LABEL_7;
  }

  sub_2287BA9FC(v17, a3 & 1);
  v24 = sub_228756C18(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_2287CBD30();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_22876DE84(v14, v11, a1, v20, sub_22872C820, sub_22877494C);
}

uint64_t sub_22876DA8C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2287C9810();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_228756C18(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      sub_228771868(0);
      return sub_2287759C8(a1, v21 + *(*(v22 - 8) + 72) * v14, sub_228771868);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_2287BBEBC();
    goto LABEL_7;
  }

  sub_2287BB164(v17, a3 & 1);
  v24 = sub_228756C18(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_2287CBD30();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_22876DE84(v14, v11, a1, v20, sub_228771868, sub_2287720CC);
}

uint64_t sub_22876DC88(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2287C9810();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_228756C18(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      sub_22872C6C0(0);
      return sub_2287759C8(a1, v21 + *(*(v22 - 8) + 72) * v14, sub_22872C6C0);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_2287BC1B4();
    goto LABEL_7;
  }

  sub_2287BB5BC(v17, a3 & 1);
  v24 = sub_228756C18(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_2287CBD30();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_22876DE84(v14, v11, a1, v20, sub_22872C6C0, sub_228771B7C);
}

uint64_t sub_22876DE84(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t, unint64_t))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_2287C9810();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = a5(0);
  result = a6(a3, v14 + *(*(v15 - 8) + 72) * a1);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

void sub_22876DF78(uint64_t a1, int a2, void *a3)
{
  sub_22872C820(0);
  v55 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2287C9810();
  v58 = *(v10 - 8);
  v59 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228772C28(0, &qword_280DE3450, sub_22872C820);
  v57 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v50 - v15;
  v54 = *(a1 + 16);
  if (!v54)
  {
    goto LABEL_24;
  }

  v50 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v51 = a2;
  v17 = *(v14 + 48);
  v18 = *(v57 + 80);
  v56 = a1;
  v19 = (v58 + 32);
  v52 = a1 + ((v18 + 32) & ~v18);
  sub_228773704(v52, v16, &qword_280DE3450, sub_22872C820);
  v20 = *v19;
  (*v19)(v12, v16, v59);
  v53 = v17;
  sub_22877494C(&v16[v17], v9);
  v21 = *a3;
  v23 = sub_228756C18(v12);
  v24 = v21[2];
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v27 = v22;
  if (v21[3] >= v26)
  {
    if (v51)
    {
      if ((v22 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_2287BB9E8();
      if ((v27 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_2287BA9FC(v26, v51 & 1);
  v28 = sub_228756C18(v12);
  if ((v27 & 1) == (v29 & 1))
  {
    v23 = v28;
    if ((v27 & 1) == 0)
    {
LABEL_14:
      v32 = *a3;
      *(*a3 + 8 * (v23 >> 6) + 64) |= 1 << v23;
      v20((v32[6] + *(v58 + 72) * v23), v12, v59);
      sub_22877494C(v9, v32[7] + *(v55 + 72) * v23);
      v33 = v32[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v32[2] = v35;
      if (v54 != 1)
      {
        v36 = 1;
        while (v36 < *(v56 + 16))
        {
          sub_228773704(v52 + *(v57 + 72) * v36, v16, &qword_280DE3450, sub_22872C820);
          v37 = *v19;
          (*v19)(v12, v16, v59);
          sub_22877494C(&v16[v53], v9);
          v38 = *a3;
          v39 = sub_228756C18(v12);
          v41 = v38[2];
          v42 = (v40 & 1) == 0;
          v34 = __OFADD__(v41, v42);
          v43 = v41 + v42;
          if (v34)
          {
            goto LABEL_26;
          }

          v44 = v40;
          if (v38[3] < v43)
          {
            sub_2287BA9FC(v43, 1);
            v39 = sub_228756C18(v12);
            if ((v44 & 1) != (v45 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v44)
          {
            goto LABEL_11;
          }

          v46 = *a3;
          *(*a3 + 8 * (v39 >> 6) + 64) |= 1 << v39;
          v47 = v39;
          v37((v46[6] + *(v58 + 72) * v39), v12, v59);
          sub_22877494C(v9, v46[7] + *(v55 + 72) * v47);
          v48 = v46[2];
          v34 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v34)
          {
            goto LABEL_27;
          }

          ++v36;
          v46[2] = v49;
          if (v54 == v36)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v30 = swift_allocError();
    swift_willThrow();

    v62 = v30;
    v31 = v30;
    sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_2287762E4(v9, sub_22872C820);
      (*(v58 + 8))(v12, v59);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_2287CBD30();
  __break(1u);
LABEL_29:
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_2287CBA20();
  MEMORY[0x22AABE980](0xD00000000000001BLL, 0x80000002287D1F20);
  sub_2287CBB30();
  MEMORY[0x22AABE980](39, 0xE100000000000000);
  sub_2287CBB90();
  __break(1u);
}

void sub_22876E5A8(uint64_t a1, int a2, void *a3)
{
  sub_22872C6C0(0);
  v55 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2287C9810();
  v58 = *(v10 - 8);
  v59 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228772C28(0, &qword_280DE3460, sub_22872C6C0);
  v57 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v50 - v15;
  v54 = *(a1 + 16);
  if (!v54)
  {
    goto LABEL_24;
  }

  v50 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v51 = a2;
  v17 = *(v14 + 48);
  v18 = *(v57 + 80);
  v56 = a1;
  v19 = (v58 + 32);
  v52 = a1 + ((v18 + 32) & ~v18);
  sub_228773704(v52, v16, &qword_280DE3460, sub_22872C6C0);
  v20 = *v19;
  (*v19)(v12, v16, v59);
  v53 = v17;
  sub_228771B7C(&v16[v17], v9);
  v21 = *a3;
  v23 = sub_228756C18(v12);
  v24 = v21[2];
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v27 = v22;
  if (v21[3] >= v26)
  {
    if (v51)
    {
      if ((v22 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_2287BC1B4();
      if ((v27 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_2287BB5BC(v26, v51 & 1);
  v28 = sub_228756C18(v12);
  if ((v27 & 1) == (v29 & 1))
  {
    v23 = v28;
    if ((v27 & 1) == 0)
    {
LABEL_14:
      v32 = *a3;
      *(*a3 + 8 * (v23 >> 6) + 64) |= 1 << v23;
      v20((v32[6] + *(v58 + 72) * v23), v12, v59);
      sub_228771B7C(v9, v32[7] + *(v55 + 72) * v23);
      v33 = v32[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v32[2] = v35;
      if (v54 != 1)
      {
        v36 = 1;
        while (v36 < *(v56 + 16))
        {
          sub_228773704(v52 + *(v57 + 72) * v36, v16, &qword_280DE3460, sub_22872C6C0);
          v37 = *v19;
          (*v19)(v12, v16, v59);
          sub_228771B7C(&v16[v53], v9);
          v38 = *a3;
          v39 = sub_228756C18(v12);
          v41 = v38[2];
          v42 = (v40 & 1) == 0;
          v34 = __OFADD__(v41, v42);
          v43 = v41 + v42;
          if (v34)
          {
            goto LABEL_26;
          }

          v44 = v40;
          if (v38[3] < v43)
          {
            sub_2287BB5BC(v43, 1);
            v39 = sub_228756C18(v12);
            if ((v44 & 1) != (v45 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v44)
          {
            goto LABEL_11;
          }

          v46 = *a3;
          *(*a3 + 8 * (v39 >> 6) + 64) |= 1 << v39;
          v47 = v39;
          v37((v46[6] + *(v58 + 72) * v39), v12, v59);
          sub_228771B7C(v9, v46[7] + *(v55 + 72) * v47);
          v48 = v46[2];
          v34 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v34)
          {
            goto LABEL_27;
          }

          ++v36;
          v46[2] = v49;
          if (v54 == v36)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v30 = swift_allocError();
    swift_willThrow();

    v62 = v30;
    v31 = v30;
    sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_2287762E4(v9, sub_22872C6C0);
      (*(v58 + 8))(v12, v59);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_2287CBD30();
  __break(1u);
LABEL_29:
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_2287CBA20();
  MEMORY[0x22AABE980](0xD00000000000001BLL, 0x80000002287D1F20);
  sub_2287CBB30();
  MEMORY[0x22AABE980](39, 0xE100000000000000);
  sub_2287CBB90();
  __break(1u);
}

uint64_t sub_22876EC68@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v10 = *(a2(0) + 48);
  sub_228772C28(0, a3, a4);
  v12 = *(v11 + 48);
  v13 = sub_2287C9810();
  (*(*(v13 - 8) + 16))(a6, a1, v13);

  return a5(a1 + v10, a6 + v12);
}

uint64_t sub_22876ED9C@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  sub_228776028(0);
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22872C820(0);
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2287C9810();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228769228(0, &qword_280DE3478, sub_228776028, MEMORY[0x277D83D88]);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v49 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v45 = &v41 - v16;
  v18 = *v1;
  v17 = v1[1];
  v20 = v1[2];
  v19 = v1[3];
  v21 = v1[4];
  v42 = v4;
  v48 = v20;
  if (v21)
  {
    v22 = v19;
LABEL_10:
    v43 = (v21 - 1) & v21;
    v26 = __clz(__rbit64(v21)) | (v22 << 6);
    (*(v9 + 16))(v11, *(v18 + 48) + *(v9 + 72) * v26, v8);
    sub_2287745F0(*(v18 + 56) + *(v44 + 72) * v26, v7);
    v27 = v7;
    v28 = v47;
    v29 = *(v47 + 48);
    v30 = v45;
    (*(v9 + 32))();
    sub_22877494C(v27, v30 + v29);
    v31 = v46;
    (*(v46 + 56))(v30, 0, 1, v28);
    v32 = v43;
    v25 = v22;
LABEL_11:
    *v1 = v18;
    v1[1] = v17;
    v33 = v49;
    v1[2] = v48;
    v1[3] = v25;
    v1[4] = v32;
    v34 = v1[5];
    sub_2287760C4(v30, v33, &qword_280DE3478, sub_228776028);
    v35 = 1;
    v36 = (*(v31 + 48))(v33, 1, v28);
    v37 = v50;
    if (v36 != 1)
    {
      v38 = v33;
      v39 = v42;
      sub_228770390(v38, v42, sub_228776028);
      v34(v39);
      sub_2287762E4(v39, sub_228776028);
      v35 = 0;
    }

    sub_228772C28(0, &qword_280DE3450, sub_22872C820);
    return (*(*(v40 - 8) + 56))(v37, v35, 1, v40);
  }

  else
  {
    v23 = (v20 + 64) >> 6;
    if (v23 <= v19 + 1)
    {
      v24 = v19 + 1;
    }

    else
    {
      v24 = (v20 + 64) >> 6;
    }

    v25 = v24 - 1;
    while (1)
    {
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v22 >= v23)
      {
        v30 = v45;
        v31 = v46;
        v28 = v47;
        (*(v46 + 56))(v45, 1, 1, v47);
        v32 = 0;
        goto LABEL_11;
      }

      v21 = *(v17 + 8 * v22);
      ++v19;
      if (v21)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22876F240@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  sub_2287736E4(0);
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22872C6C0(0);
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2287C9810();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228769228(0, &qword_280DE3488, sub_2287736E4, MEMORY[0x277D83D88]);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v49 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v45 = &v41 - v16;
  v18 = *v1;
  v17 = v1[1];
  v20 = v1[2];
  v19 = v1[3];
  v21 = v1[4];
  v42 = v4;
  v48 = v20;
  if (v21)
  {
    v22 = v19;
LABEL_10:
    v43 = (v21 - 1) & v21;
    v26 = __clz(__rbit64(v21)) | (v22 << 6);
    (*(v9 + 16))(v11, *(v18 + 48) + *(v9 + 72) * v26, v8);
    sub_228771770(*(v18 + 56) + *(v44 + 72) * v26, v7);
    v27 = v7;
    v28 = v47;
    v29 = *(v47 + 48);
    v30 = v45;
    (*(v9 + 32))();
    sub_228771B7C(v27, v30 + v29);
    v31 = v46;
    (*(v46 + 56))(v30, 0, 1, v28);
    v32 = v43;
    v25 = v22;
LABEL_11:
    *v1 = v18;
    v1[1] = v17;
    v33 = v49;
    v1[2] = v48;
    v1[3] = v25;
    v1[4] = v32;
    v34 = v1[5];
    sub_2287760C4(v30, v33, &qword_280DE3488, sub_2287736E4);
    v35 = 1;
    v36 = (*(v31 + 48))(v33, 1, v28);
    v37 = v50;
    if (v36 != 1)
    {
      v38 = v33;
      v39 = v42;
      sub_228770390(v38, v42, sub_2287736E4);
      v34(v39);
      sub_2287762E4(v39, sub_2287736E4);
      v35 = 0;
    }

    sub_228772C28(0, &qword_280DE3460, sub_22872C6C0);
    return (*(*(v40 - 8) + 56))(v37, v35, 1, v40);
  }

  else
  {
    v23 = (v20 + 64) >> 6;
    if (v23 <= v19 + 1)
    {
      v24 = v19 + 1;
    }

    else
    {
      v24 = (v20 + 64) >> 6;
    }

    v25 = v24 - 1;
    while (1)
    {
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v22 >= v23)
      {
        v30 = v45;
        v31 = v46;
        v28 = v47;
        (*(v46 + 56))(v45, 1, 1, v47);
        v32 = 0;
        goto LABEL_11;
      }

      v21 = *(v17 + 8 * v22);
      ++v19;
      if (v21)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22876F750@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, char *a5@<X8>)
{
  v8 = *a1;
  v9 = a3(0);
  sub_2287010E4(a2 + *(v9 + 28), (a5 + 8));
  v10 = *(v9 + 32);
  v11 = *(a4(0) + 32);
  v12 = sub_2287C9ED0();
  (*(*(v12 - 8) + 16))(&a5[v11], a2 + v10, v12);
  *a5 = v8;

  return sub_2287C9800();
}

uint64_t sub_22876F818@<X0>(uint64_t *a2@<X8>)
{
  result = sub_2287CBCE0();
  if (!result)
  {
    result = swift_allocError();
  }

  *a2 = result;
  return result;
}

uint64_t sub_22876F870@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, void (*a6)(char *, char *)@<X5>, void *a7@<X8>)
{
  v24 = a6;
  v11 = a4(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = sub_2287C9810();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v18 = a1[1];
  *a7 = v19;
  a7[1] = v18;
  v20 = a5(0);
  (*(v15 + 16))(v17, a3 + *(v20 + 36), v14);
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);

  v21 = swift_modifyAtWritableKeyPath();
  v24(v13, v17);
  return v21(v25, 0);
}

uint64_t sub_22876FA4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, void (*a6)(uint64_t, char *)@<X5>, void (*a7)(char *, char *)@<X6>, void *a8@<X8>)
{
  v25 = a2;
  v26 = a7;
  v13 = a4(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v16 = sub_2287C9810();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v21 = a1[1];
  *a8 = v20;
  a8[1] = v21;
  v22 = a5(0);
  (*(v17 + 16))(v19, a3 + *(v22 + 36), v16);
  a6(a3, v15);
  (*(*(v22 - 8) + 56))(v15, 0, 1, v22);

  v23 = swift_modifyAtWritableKeyPath();
  v26(v15, v19);
  return v23(v27, 0);
}

uint64_t sub_22876FC38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t, void, uint64_t, uint64_t *)@<X3>, void *a5@<X8>)
{
  v9 = *a1;
  v10 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = v9;
  a4(a2, a3, 0, isUniquelyReferenced_nonNull_native, &v13);

  *a5 = v13;
  a5[1] = v10;
  return result;
}

void sub_22876FCD4(uint64_t a1)
{
  if (!qword_280DE1A40)
  {
    sub_228703004(255, &qword_280DE3870, 0x277CCD7C8);
    sub_228703004(255, &qword_280DE1990, 0x277CCD4D8);
    sub_22873A2A8(&qword_280DE1970, &qword_280DE3870, 0x277CCD7C8, MEMORY[0x277D85378]);
    v1 = sub_2287CB190();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE1A40);
    }
  }
}

uint64_t type metadata accessor for SharableModelGeneratorPipelineManager(uint64_t a1)
{
  result = qword_280DE1F98;
  if (!qword_280DE1F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22876FEE4(uint64_t a1)
{
  if (!qword_280DE0618)
  {
    sub_228774608(255, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
    sub_2287691F4(255);
    sub_22876928C();
    v1 = sub_2287CAB50();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0618);
    }
  }
}

void sub_22876FF90(uint64_t a1)
{
  if (!qword_280DE0548)
  {
    sub_22876FEE4(255);
    sub_228774608(255, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
    sub_2287693A8(&qword_280DE0620, sub_22876FEE4, MEMORY[0x277CBCC08]);
    sub_22876928C();
    v1 = sub_2287CAB60();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0548);
    }
  }
}

void sub_22877007C(uint64_t a1)
{
  if (!qword_280DE0470)
  {
    sub_228774608(255, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
    sub_228775DB8(255, &qword_280DE06F8, sub_22877017C, sub_2287701B0, MEMORY[0x277CBCB98]);
    sub_22876928C();
    sub_2287701E4();
    v1 = sub_2287CABC0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0470);
    }
  }
}

unint64_t sub_2287701E4()
{
  result = qword_280DE0700;
  if (!qword_280DE0700)
  {
    sub_228775DB8(255, &qword_280DE06F8, sub_22877017C, sub_2287701B0, MEMORY[0x277CBCB98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0700);
  }

  return result;
}

uint64_t sub_228770280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2287702E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22877017C(0);
  v6 = (*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  result = sub_2287668BC(a1, v2 + v6, *(v2 + ((*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
  *a2 = result;
  return result;
}

uint64_t sub_228770390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2287703F8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2287691F4(0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = *(v2 + v8);
  v11 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_22876B5B0(a1, v9, v2 + v7, v10, v11, a2);
}

void sub_2287704B4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (!*a2)
  {
    v9 = MEMORY[0x277CBCD88];
    sub_228774608(255, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
    sub_228774608(255, a3, a4, v9);
    sub_22876928C();
    a5();
    v10 = sub_2287CABC0();
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_228770598()
{
  result = qword_27D850DF0;
  if (!qword_27D850DF0)
  {
    sub_228774608(255, &qword_27D850DE8, sub_2287691F4, MEMORY[0x277CBCE68]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850DF0);
  }

  return result;
}

unint64_t sub_228770628()
{
  result = qword_27D850DF8;
  if (!qword_27D850DF8)
  {
    sub_2287704B4(255, &qword_27D850DE0, &qword_280DE0268, MEMORY[0x277D121A8], sub_22873DAE4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850DF8);
  }

  return result;
}

void sub_2287706B8(uint64_t a1)
{
  if (!qword_280DE0310)
  {
    sub_228774608(255, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
    sub_22876928C();
    v1 = sub_2287CAC30();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0310);
    }
  }
}

uint64_t sub_22877074C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_228766CE8(a1, v2[2], v2[3], v2[4], v2[5], v2[6], v2[7]);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

void sub_22877078C(uint64_t a1)
{
  if (!qword_280DDFFC8)
  {
    sub_228774608(255, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
    v1 = sub_2287CB450();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDFFC8);
    }
  }
}

void sub_228770814(uint64_t a1)
{
  if (!qword_280DE07B8)
  {
    sub_228774608(255, &qword_280DE1AD0, sub_2287708C0, MEMORY[0x277CBCD88]);
    sub_2287691F4(255);
    sub_2287708F4();
    v1 = sub_2287CAA70();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE07B8);
    }
  }
}

unint64_t sub_2287708F4()
{
  result = qword_280DE1AD8;
  if (!qword_280DE1AD8)
  {
    sub_228774608(255, &qword_280DE1AD0, sub_2287708C0, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE1AD8);
  }

  return result;
}

void sub_2287709B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_228774608(255, &qword_280DE0268, MEMORY[0x277D121A8], MEMORY[0x277CBCD88]);
    v9 = v8;
    v10 = a3(255);
    v11 = sub_22873DAE4();
    v12 = a4(a1, v9, v10, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

void sub_228770AA0(uint64_t a1)
{
  if (!qword_280DE05D8)
  {
    sub_228774608(255, &qword_280DE1AD0, sub_2287708C0, MEMORY[0x277CBCD88]);
    sub_2287691F4(255);
    sub_2287708F4();
    v1 = sub_2287CAB50();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE05D8);
    }
  }
}

unint64_t sub_228770B4C()
{
  result = qword_27D850E00;
  if (!qword_27D850E00)
  {
    sub_228774608(255, &qword_280DE0088, sub_2287691F4, MEMORY[0x277CBCE88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850E00);
  }

  return result;
}

void sub_228770C00(uint64_t a1)
{
  if (!qword_280DE04F0)
  {
    sub_228774608(255, &qword_280DE1AD0, sub_2287708C0, MEMORY[0x277CBCD88]);
    sub_2287708F4();
    v1 = sub_2287CABA0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE04F0);
    }
  }
}

void sub_228770C94(uint64_t a1)
{
  if (!qword_280DE0588)
  {
    sub_228770C00(255);
    sub_2287CA570();
    sub_2287693A8(&qword_280DE04F8, sub_228770C00, MEMORY[0x277CBCC90]);
    v1 = sub_2287CAB50();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0588);
    }
  }
}

uint64_t objectdestroy_37Tm()
{
  sub_2287691F4(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v1 - 8) + 64);

  __swift_destroy_boxed_opaque_existential_0((v0 + v4 + 8));
  v6 = *(v2 + 40);
  v7 = sub_2287C9ED0();
  (*(*(v7 - 8) + 8))(v0 + v4 + v6, v7);
  v8 = *(v2 + 44);
  v9 = sub_2287C9810();
  (*(*(v9 - 8) + 8))(v0 + v4 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_228770EA8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_22873A300(255);
    sub_228774608(255, a3, a4, MEMORY[0x277CBCD88]);
    sub_2287693A8(&qword_280DE01F0, sub_22873A300, MEMORY[0x277CBCD90]);
    v7 = sub_2287CAB50();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_228770F78(uint64_t a1)
{
  if (!qword_280DE2610)
  {
    sub_22873E054(255, &qword_280DE1A10, MEMORY[0x277D120A0]);
    v5 = type metadata accessor for GeneratorPipelineManagerWrapper(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_280DE2610);
    }
  }
}

void sub_228770FE0(uint64_t a1)
{
  if (!qword_280DE06C8)
  {
    sub_228774608(255, &qword_280DE0218, sub_228770F78, MEMORY[0x277CBCD88]);
    sub_228770E80(255);
    sub_2287710CC();
    sub_2287693A8(&qword_280DE0610, sub_228770E80, MEMORY[0x277CBCC08]);
    v1 = sub_2287CAB00();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE06C8);
    }
  }
}

unint64_t sub_2287710CC()
{
  result = qword_280DE0220;
  if (!qword_280DE0220)
  {
    sub_228774608(255, &qword_280DE0218, sub_228770F78, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0220);
  }

  return result;
}

void sub_228771154(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2287715EC(255, &qword_280DE1AE0, &qword_280DE1A28, MEMORY[0x277D11E90], MEMORY[0x277CBCD88]);
    v7 = v6;
    v8 = sub_22873A408();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2287711EC(uint64_t a1)
{
  if (!qword_280DE0708)
  {
    sub_2287715EC(255, &qword_280DE1AE0, &qword_280DE1A28, MEMORY[0x277D11E90], MEMORY[0x277CBCD88]);
    sub_22870D3A8(255, &qword_280DE35A0, MEMORY[0x277D84948]);
    sub_22873A408();
    v1 = sub_2287CAAF0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0708);
    }
  }
}

uint64_t sub_2287712C0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_228771154(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22877131C(uint64_t a1)
{
  if (!qword_280DE0788)
  {
    sub_228774608(255, &qword_280DE0218, sub_228770F78, MEMORY[0x277CBCD88]);
    sub_2287710CC();
    v1 = sub_2287CAAA0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0788);
    }
  }
}

unint64_t sub_2287713B0()
{
  result = qword_27D850E08;
  if (!qword_27D850E08)
  {
    sub_228774608(255, &qword_280DE0090, sub_228770F78, MEMORY[0x277CBCE88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850E08);
  }

  return result;
}

uint64_t sub_228771438(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    sub_228774608(255, a3, a4, MEMORY[0x277CBCD88]);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_22877149C(uint64_t a1)
{
  if (!qword_280DE02A8)
  {
    sub_22870D3A8(255, &qword_280DE35A0, MEMORY[0x277D84948]);
    v1 = sub_2287CAC90();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE02A8);
    }
  }
}

void sub_22877150C(uint64_t a1)
{
  if (!qword_280DE0490)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_228774608(255, &qword_280DE0218, sub_228770F78, MEMORY[0x277CBCD88]);
    sub_228774608(255, &qword_280DE0238, sub_22872C6C0, v1);
    sub_2287710CC();
    sub_2287716BC();
    v2 = sub_2287CABC0();
    if (!v3)
    {
      atomic_store(v2, &qword_280DE0490);
    }
  }
}

void sub_2287715EC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_22873E054(255, a3, a4);
    v9 = a5(a1, v8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_228771664(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2287715EC(255, a2, &qword_280DE1A10, MEMORY[0x277D120A0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2287716BC()
{
  result = qword_280DE0240;
  if (!qword_280DE0240)
  {
    sub_228774608(255, &qword_280DE0238, sub_22872C6C0, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0240);
  }

  return result;
}

uint64_t sub_228771744@<X0>(uint64_t (**a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = sub_228760518(a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  return result;
}

void sub_228771788(uint64_t a1)
{
  if (!qword_280DE04A0)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_228774608(255, &qword_280DE0218, sub_228770F78, MEMORY[0x277CBCD88]);
    sub_228774608(255, &qword_280DE0258, sub_228771868, v1);
    sub_2287710CC();
    sub_2287718EC();
    v2 = sub_2287CABC0();
    if (!v3)
    {
      atomic_store(v2, &qword_280DE04A0);
    }
  }
}

void sub_228771868(uint64_t a1)
{
  if (!qword_280DE2650[0])
  {
    sub_2287715EC(255, &qword_280DE2E58, &qword_280DE1A10, MEMORY[0x277D120A0], type metadata accessor for AnyGenerator);
    v5 = type metadata accessor for GeneratorPipelineManagerWrapper(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, qword_280DE2650);
    }
  }
}

unint64_t sub_2287718EC()
{
  result = qword_280DE0260;
  if (!qword_280DE0260)
  {
    sub_228774608(255, &qword_280DE0258, sub_228771868, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0260);
  }

  return result;
}

void sub_228771974(uint64_t a1)
{
  if (!qword_280DE1CA0)
  {
    sub_228771A08(255);
    sub_2287693A8(&qword_280DE1B38, sub_228771A08, MEMORY[0x277CBCD90]);
    v1 = sub_2287CAAA0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE1CA0);
    }
  }
}

void sub_228771A08(uint64_t a1)
{
  if (!qword_280DE1B30)
  {
    sub_2287715EC(255, &qword_280DE2E58, &qword_280DE1A10, MEMORY[0x277D120A0], type metadata accessor for AnyGenerator);
    v1 = sub_2287CACD0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE1B30);
    }
  }
}

void sub_228771A9C(uint64_t a1)
{
  if (!qword_280DE1C30)
  {
    sub_228771974(255);
    sub_228771868(255);
    sub_2287693A8(qword_280DE1CA8, sub_228771974, MEMORY[0x277CBCB60]);
    v1 = sub_2287CAB50();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE1C30);
    }
  }
}

unint64_t sub_228771C40()
{
  result = qword_280DE03C8;
  if (!qword_280DE03C8)
  {
    sub_228775DB8(255, &qword_280DE03C0, sub_228771A9C, sub_228771B48, MEMORY[0x277CBCD00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE03C8);
  }

  return result;
}

uint64_t sub_228771CDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_228762360(a1, v2);
  *a2 = result;
  return result;
}

uint64_t sub_228771D08(uint64_t a1, uint64_t a2)
{
  sub_2287715EC(0, &qword_280DE2E58, &qword_280DE1A10, MEMORY[0x277D120A0], type metadata accessor for AnyGenerator);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_228771DCC(uint64_t a1)
{
  if (!qword_280DE1C80)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_2287715EC(255, &qword_280DE1AB0, &qword_280DE1A10, MEMORY[0x277D120A0], MEMORY[0x277CBCD88]);
    sub_228771664(&qword_280DE1AB8, &qword_280DE1AB0, v1, MEMORY[0x277CBCD90]);
    v2 = sub_2287CAAA0();
    if (!v3)
    {
      atomic_store(v2, &qword_280DE1C80);
    }
  }
}

void sub_228771E90(uint64_t a1)
{
  if (!qword_280DE1C10)
  {
    sub_228771DCC(255);
    sub_228770F78(255);
    sub_2287693A8(&qword_280DE1C88, sub_228771DCC, MEMORY[0x277CBCB60]);
    v1 = sub_2287CAB50();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE1C10);
    }
  }
}

void sub_228771F70(uint64_t a1)
{
  if (!qword_280DE0728)
  {
    sub_228775DB8(255, &qword_280DE03A0, sub_228771E90, sub_228771F3C, MEMORY[0x277CBCD00]);
    sub_228772018();
    v1 = sub_2287CAAD0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0728);
    }
  }
}

unint64_t sub_228772018()
{
  result = qword_280DE03A8;
  if (!qword_280DE03A8)
  {
    sub_228775DB8(255, &qword_280DE03A0, sub_228771E90, sub_228771F3C, MEMORY[0x277CBCD00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE03A8);
  }

  return result;
}

uint64_t objectdestroy_83Tm()
{
  sub_228771868(0);
  v2 = (v1 - 8);
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*(v1 - 8) + 64);

  sub_2287715EC(0, &qword_280DE2E58, &qword_280DE1A10, MEMORY[0x277D120A0], type metadata accessor for AnyGenerator);
  v7 = *(v6 + 44);
  v8 = sub_2287C9E70();
  (*(*(v8 - 8) + 8))(v0 + v4 + v7, v8);

  __swift_destroy_boxed_opaque_existential_0((v0 + v4 + v2[9]));
  v9 = v2[10];
  v10 = sub_2287C9ED0();
  (*(*(v10 - 8) + 8))(v0 + v4 + v9, v10);
  v11 = v2[11];
  v12 = sub_2287C9810();
  (*(*(v12 - 8) + 8))(v0 + v4 + v11, v12);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_96Tm()
{
  sub_228771868(0);
  v2 = (v1 - 8);
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(*(v1 - 8) + 64);

  sub_2287715EC(0, &qword_280DE2E58, &qword_280DE1A10, MEMORY[0x277D120A0], type metadata accessor for AnyGenerator);
  v7 = *(v6 + 44);
  v8 = sub_2287C9E70();
  (*(*(v8 - 8) + 8))(v0 + v4 + v7, v8);

  __swift_destroy_boxed_opaque_existential_0((v0 + v4 + v2[9]));
  v9 = v2[10];
  v10 = sub_2287C9ED0();
  (*(*(v10 - 8) + 8))(v0 + v4 + v9, v10);
  v11 = v2[11];
  v12 = sub_2287C9810();
  (*(*(v12 - 8) + 8))(v0 + v4 + v11, v12);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

unint64_t sub_2287728A0()
{
  result = qword_280DE1A20;
  if (!qword_280DE1A20)
  {
    sub_22873E054(255, &qword_280DE1A28, MEMORY[0x277D11E90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE1A20);
  }

  return result;
}

void sub_228772944(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (!*a2)
  {
    sub_228774608(255, a3, a4, MEMORY[0x277CBCD88]);
    sub_22873D608(255);
    a5();
    sub_2287693A8(&qword_280DE04D8, sub_22873D608, MEMORY[0x277CBCCE0]);
    v7 = sub_2287CABC0();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_228772A24@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22875B8E0(*a1, v2);
  *a2 = result;
  return result;
}

void sub_228772A64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_2287CAC10();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_228772B8C()
{
  result = qword_280DE0388;
  if (!qword_280DE0388)
  {
    sub_228775DB8(255, &qword_280DE0380, sub_228772AF0, sub_228772B24, MEMORY[0x277CBCD10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0388);
  }

  return result;
}

void sub_228772C28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_2287C9810();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_228772CA0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_228772C28(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_228772D0C(uint64_t a1)
{
  if (!qword_280DE18C0)
  {
    sub_2287C9810();
    sub_22872C6C0(255);
    sub_2287693A8(&qword_280DE3970, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v1 = sub_2287CBC00();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE18C0);
    }
  }
}

uint64_t sub_228772DFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_22872C820(0);
  v46 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v56 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_2287C9810();
  v43 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22877368C(0, &qword_280DE3448, &qword_280DE3450, sub_22872C820);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v41 - v15;
  v17 = -1 << *(a1 + 32);
  v18 = ~v17;
  v19 = *(a1 + 64);
  v20 = -v17;
  v49 = a1;
  v50 = a1 + 64;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v51 = v18;
  v52 = 0;
  v53 = v21 & v19;
  v54 = a2;
  v55 = a3;

  v41 = a3;

  sub_22876ED9C(v16);
  sub_228772C28(0, &qword_280DE3450, sub_22872C820);
  v23 = v22;
  v24 = *(v22 - 8);
  v25 = *(v24 + 48);
  v44 = v24 + 48;
  v45 = v25;
  if (v25(v16, 1, v22) == 1)
  {
LABEL_5:
    sub_22870B3D4(v49);
  }

  v47 = *(v43 + 32);
  v42 = (v43 + 8);
  while (1)
  {
    v27 = *(v23 + 48);
    v47(v13, v16, v48);
    sub_22877494C(&v16[v27], v56);
    v28 = *a5;
    v30 = sub_228756C18(v13);
    v31 = v28[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      break;
    }

    v34 = v29;
    if (v28[3] >= v33)
    {
      if (a4)
      {
        v37 = *a5;
        if (v29)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_2287BB9E8();
        v37 = *a5;
        if (v34)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      sub_2287BA9FC(v33, a4 & 1);
      v35 = sub_228756C18(v13);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_22;
      }

      v30 = v35;
      v37 = *a5;
      if (v34)
      {
LABEL_7:
        (*v42)(v13, v48);
        sub_2287759C8(v56, v37[7] + *(v46 + 72) * v30, sub_22872C820);
        goto LABEL_8;
      }
    }

    v37[(v30 >> 6) + 8] |= 1 << v30;
    v47((v37[6] + *(v43 + 72) * v30), v13, v48);
    sub_22877494C(v56, v37[7] + *(v46 + 72) * v30);
    v38 = v37[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_21;
    }

    v37[2] = v40;
LABEL_8:
    sub_22876ED9C(v16);
    a4 = 1;
    if (v45(v16, 1, v23) == 1)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_2287CBD30();
  __break(1u);
  return result;
}

uint64_t sub_228773244(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_22872C6C0(0);
  v46 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v56 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_2287C9810();
  v43 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22877368C(0, &qword_280DE3458, &qword_280DE3460, sub_22872C6C0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v41 - v15;
  v17 = -1 << *(a1 + 32);
  v18 = ~v17;
  v19 = *(a1 + 64);
  v20 = -v17;
  v49 = a1;
  v50 = a1 + 64;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v51 = v18;
  v52 = 0;
  v53 = v21 & v19;
  v54 = a2;
  v55 = a3;

  v41 = a3;

  sub_22876F240(v16);
  sub_228772C28(0, &qword_280DE3460, sub_22872C6C0);
  v23 = v22;
  v24 = *(v22 - 8);
  v25 = *(v24 + 48);
  v44 = v24 + 48;
  v45 = v25;
  if (v25(v16, 1, v22) == 1)
  {
LABEL_5:
    sub_22870B3D4(v49);
  }

  v47 = *(v43 + 32);
  v42 = (v43 + 8);
  while (1)
  {
    v27 = *(v23 + 48);
    v47(v13, v16, v48);
    sub_228771B7C(&v16[v27], v56);
    v28 = *a5;
    v30 = sub_228756C18(v13);
    v31 = v28[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      break;
    }

    v34 = v29;
    if (v28[3] >= v33)
    {
      if (a4)
      {
        v37 = *a5;
        if (v29)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_2287BC1B4();
        v37 = *a5;
        if (v34)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      sub_2287BB5BC(v33, a4 & 1);
      v35 = sub_228756C18(v13);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_22;
      }

      v30 = v35;
      v37 = *a5;
      if (v34)
      {
LABEL_7:
        (*v42)(v13, v48);
        sub_2287759C8(v56, v37[7] + *(v46 + 72) * v30, sub_22872C6C0);
        goto LABEL_8;
      }
    }

    v37[(v30 >> 6) + 8] |= 1 << v30;
    v47((v37[6] + *(v43 + 72) * v30), v13, v48);
    sub_228771B7C(v56, v37[7] + *(v46 + 72) * v30);
    v38 = v37[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_21;
    }

    v37[2] = v40;
LABEL_8:
    sub_22876F240(v16);
    a4 = 1;
    if (v45(v16, 1, v23) == 1)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_2287CBD30();
  __break(1u);
  return result;
}

void sub_22877368C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_228772C28(255, a3, a4);
    v5 = sub_2287CB820();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_228773704(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_228772C28(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_228773770(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_228703004(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2287737D8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2287738D0(255, a2, &qword_280DDFEB0, MEMORY[0x277D83D88], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22877383C(uint64_t a1)
{
  if (!qword_280DE0798)
  {
    sub_22873CEFC(255);
    sub_2287693A8(&qword_280DE02D8, sub_22873CEFC, MEMORY[0x277CBCD50]);
    v1 = sub_2287CAA80();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0798);
    }
  }
}

void sub_2287738D0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_228773770(255, a3, &qword_280DE1958, 0x277CCD940, a4);
    v9 = v8;
    v10 = sub_22870D3A8(255, &qword_280DE35A0, MEMORY[0x277D84948]);
    v11 = a5(a1, v9, v10, MEMORY[0x277D84950]);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_2287739F8(uint64_t a1)
{
  if (!qword_280DE07A8)
  {
    sub_22873D260(255);
    sub_2287693A8(&qword_280DE02E8, sub_22873D260, MEMORY[0x277CBCD50]);
    v1 = sub_2287CAA80();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE07A8);
    }
  }
}

unint64_t sub_228773AB8()
{
  result = qword_280DE1AA8;
  if (!qword_280DE1AA8)
  {
    sub_228773CC0(255, &qword_280DE1AA0, sub_22870CB48, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE1AA8);
  }

  return result;
}

void sub_228773B40(uint64_t a1)
{
  if (!qword_280DE0500)
  {
    sub_228773CC0(255, &qword_280DE1AF0, sub_2287691F4, MEMORY[0x277CBCD88]);
    sub_22873BFE0();
    v1 = sub_2287CABA0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0500);
    }
  }
}

void sub_228773BD4(uint64_t a1)
{
  if (!qword_280DE0420)
  {
    sub_22873AC94(255);
    sub_22873C170(255);
    sub_2287693A8(&qword_280DE1A98, sub_22873AC94, MEMORY[0x277CBCD90]);
    sub_2287693A8(&qword_280DE0518, sub_22873C170, MEMORY[0x277CBCC58]);
    v1 = sub_2287CABC0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0420);
    }
  }
}

void sub_228773CC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_228773D34(uint64_t a1)
{
  if (!qword_280DE06A8)
  {
    sub_22873AC94(255);
    sub_22873AB44(255);
    sub_2287693A8(&qword_280DE1A98, sub_22873AC94, MEMORY[0x277CBCD90]);
    sub_2287693A8(&qword_280DE05C0, sub_22873AB44, MEMORY[0x277CBCC08]);
    v1 = sub_2287CAB00();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE06A8);
    }
  }
}

unint64_t sub_228773E20()
{
  result = qword_280DE0080;
  if (!qword_280DE0080)
  {
    sub_228773CC0(255, &qword_280DE0078, sub_22870CB48, MEMORY[0x277CBCE88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0080);
  }

  return result;
}

void sub_228773F30(uint64_t a1)
{
  if (!qword_280DE0440)
  {
    sub_228774608(255, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
    sub_22873DE68(255, v1);
    sub_22876928C();
    swift_getOpaqueTypeConformance2();
    v2 = sub_2287CABC0();
    if (!v3)
    {
      atomic_store(v2, &qword_280DE0440);
    }
  }
}

void sub_228774004(uint64_t a1)
{
  if (!qword_280DE0538)
  {
    sub_228773F30(255);
    sub_228774608(255, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
    sub_2287693A8(&qword_280DE0448, sub_228773F30, MEMORY[0x277CBCCE0]);
    sub_22876928C();
    v1 = sub_2287CAB60();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0538);
    }
  }
}

unint64_t sub_2287740F0()
{
  result = qword_27D850E10;
  if (!qword_27D850E10)
  {
    sub_228774608(255, &qword_280DDFE20, sub_2287691F4, MEMORY[0x277CBCF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850E10);
  }

  return result;
}

uint64_t sub_228774178@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2287691F4(0);
  result = sub_22876ADBC(v2 + ((*(*(v5 - 8) + 80) + 24) & ~*(*(v5 - 8) + 80)), *a1);
  *a2 = result;
  return result;
}

uint64_t sub_2287741F4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2287691F4(0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v2 + 16);

  return sub_22876A2A8(a1, v9, v2 + v7, v8, a2);
}

void sub_2287742CC(uint64_t a1)
{
  if (!qword_280DE06B8)
  {
    sub_228774608(255, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
    sub_2287742A4(255);
    sub_22876928C();
    sub_2287693A8(&qword_280DE0600, sub_2287742A4, MEMORY[0x277CBCC08]);
    v1 = sub_2287CAB00();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE06B8);
    }
  }
}

uint64_t sub_2287743DC@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, v3[2], v3[3], v3[4]);
  *a3 = result;
  return result;
}

void sub_228774418(uint64_t a1)
{
  if (!qword_280DE0778)
  {
    sub_228774608(255, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
    sub_22876928C();
    v1 = sub_2287CAAA0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0778);
    }
  }
}

unint64_t sub_2287744AC()
{
  result = qword_280DE0230;
  if (!qword_280DE0230)
  {
    sub_228774608(255, &qword_280DE0228, sub_22872C820, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0230);
  }

  return result;
}

uint64_t sub_228774534@<X0>(uint64_t (**a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22875FE44(a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  return result;
}

unint64_t sub_228774560()
{
  result = qword_280DE0458;
  if (!qword_280DE0458)
  {
    sub_2287704B4(255, &qword_280DE0450, &qword_280DE0228, sub_22872C820, sub_2287744AC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0458);
  }

  return result;
}

void sub_228774608(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_22870D3A8(255, &qword_280DE35A0, MEMORY[0x277D84948]);
    v9 = a4(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_2287746C8()
{
  result = qword_280DE0250;
  if (!qword_280DE0250)
  {
    sub_228774608(255, &qword_280DE0248, sub_228774694, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0250);
  }

  return result;
}

void sub_228774750(uint64_t a1)
{
  if (!qword_280DE1C90)
  {
    sub_228773CC0(255, &qword_280DE1B20, sub_22870CAC4, MEMORY[0x277CBCD88]);
    sub_2287747E4();
    v1 = sub_2287CAAA0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE1C90);
    }
  }
}

unint64_t sub_2287747E4()
{
  result = qword_280DE1B28;
  if (!qword_280DE1B28)
  {
    sub_228773CC0(255, &qword_280DE1B20, sub_22870CAC4, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE1B28);
  }

  return result;
}

void sub_22877486C(uint64_t a1)
{
  if (!qword_280DE1C20)
  {
    sub_228774750(255);
    sub_228774694(255);
    sub_2287693A8(&qword_280DE1C98, sub_228774750, MEMORY[0x277CBCB60]);
    v1 = sub_2287CAB50();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE1C20);
    }
  }
}

uint64_t objectdestroy_65Tm(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = (a1(0) - 8);
  v5 = *(*v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(*v4 + 64);

  v8 = *(a2(0) + 36);
  v9 = sub_2287C9E70();
  (*(*(v9 - 8) + 8))(v2 + v6 + v8, v9);

  __swift_destroy_boxed_opaque_existential_0((v2 + v6 + v4[9]));
  v10 = v4[10];
  v11 = sub_2287C9ED0();
  (*(*(v11 - 8) + 8))(v2 + v6 + v10, v11);
  v12 = v4[11];
  v13 = sub_2287C9810();
  (*(*(v13 - 8) + 8))(v2 + v6 + v12, v13);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t objectdestroy_75Tm_0(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = (a1(0) - 8);
  v5 = *(*v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(*v4 + 64);

  v8 = *(a2(0) + 36);
  v9 = sub_2287C9E70();
  (*(*(v9 - 8) + 8))(v2 + v6 + v8, v9);

  __swift_destroy_boxed_opaque_existential_0((v2 + v6 + v4[9]));
  v10 = v4[10];
  v11 = sub_2287C9ED0();
  (*(*(v11 - 8) + 8))(v2 + v6 + v10, v11);
  v12 = v4[11];
  v13 = sub_2287C9810();
  (*(*(v13 - 8) + 8))(v2 + v6 + v12, v13);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

unint64_t sub_228774DF8()
{
  result = qword_280DE03B8;
  if (!qword_280DE03B8)
  {
    sub_228775DB8(255, &qword_280DE03B0, sub_22877486C, sub_228774918, MEMORY[0x277CBCD00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE03B8);
  }

  return result;
}

uint64_t sub_228774E94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_228761E44(a1, v2);
  *a2 = result;
  return result;
}

unint64_t sub_228774EC0()
{
  result = qword_280DE0468;
  if (!qword_280DE0468)
  {
    sub_2287704B4(255, &qword_280DE0460, &qword_280DE0248, sub_228774694, sub_2287746C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0468);
  }

  return result;
}

void sub_228774F68(uint64_t a1)
{
  if (!qword_280DE1C70)
  {
    sub_228773CC0(255, &qword_280DE1AA0, sub_22870CB48, MEMORY[0x277CBCD88]);
    sub_228773AB8();
    v1 = sub_2287CAAA0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE1C70);
    }
  }
}

void sub_228774FFC(uint64_t a1)
{
  if (!qword_280DE1C00)
  {
    sub_228774F68(255);
    sub_2287691F4(255);
    sub_2287693A8(&qword_280DE1C78, sub_228774F68, MEMORY[0x277CBCB60]);
    v1 = sub_2287CAB50();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE1C00);
    }
  }
}

void sub_2287750DC(uint64_t a1)
{
  if (!qword_280DE0718)
  {
    sub_228775DB8(255, &qword_280DE0390, sub_228774FFC, sub_2287750A8, MEMORY[0x277CBCD00]);
    sub_228775184();
    v1 = sub_2287CAAD0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0718);
    }
  }
}

unint64_t sub_228775184()
{
  result = qword_280DE0398;
  if (!qword_280DE0398)
  {
    sub_228775DB8(255, &qword_280DE0390, sub_228774FFC, sub_2287750A8, MEMORY[0x277CBCD00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0398);
  }

  return result;
}

uint64_t sub_22877527C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a3(a1, v6, v7, v8);
}

uint64_t objectdestroy_196Tm()
{
  sub_228774694(0);
  v2 = (v1 - 8);
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*(v1 - 8) + 64);

  sub_22870CAC4(0);
  v7 = *(v6 + 44);
  v8 = sub_2287C9E70();
  (*(*(v8 - 8) + 8))(v0 + v4 + v7, v8);

  __swift_destroy_boxed_opaque_existential_0((v0 + v4 + v2[9]));
  v9 = v2[10];
  v10 = sub_2287C9ED0();
  (*(*(v10 - 8) + 8))(v0 + v4 + v9, v10);
  v11 = v2[11];
  v12 = sub_2287C9810();
  (*(*(v12 - 8) + 8))(v0 + v4 + v11, v12);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2287754D4(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = v2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return a2(v4, v5, v6);
}

uint64_t sub_228775580(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t objectdestroy_100Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_209Tm()
{
  sub_228774694(0);
  v2 = (v1 - 8);
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(*(v1 - 8) + 64);

  sub_22870CAC4(0);
  v7 = *(v6 + 44);
  v8 = sub_2287C9E70();
  (*(*(v8 - 8) + 8))(v0 + v4 + v7, v8);

  __swift_destroy_boxed_opaque_existential_0((v0 + v4 + v2[9]));
  v9 = v2[10];
  v10 = sub_2287C9ED0();
  (*(*(v10 - 8) + 8))(v0 + v4 + v9, v10);
  v11 = v2[11];
  v12 = sub_2287C9810();
  (*(*(v12 - 8) + 8))(v0 + v4 + v11, v12);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2287759C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_106Tm(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = (a1(0) - 8);
  v5 = *(*v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(*v4 + 64);

  v8 = *(a2(0) + 36);
  v9 = sub_2287C9E70();
  (*(*(v9 - 8) + 8))(v2 + v6 + v8, v9);

  __swift_destroy_boxed_opaque_existential_0((v2 + v6 + v4[9]));
  v10 = v4[10];
  v11 = sub_2287C9ED0();
  (*(*(v11 - 8) + 8))(v2 + v6 + v10, v11);
  v12 = v4[11];
  v13 = sub_2287C9810();
  (*(*(v13 - 8) + 8))(v2 + v6 + v12, v13);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_228775CDC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22875B154(*a1, v2);
  *a2 = result;
  return result;
}

uint64_t sub_228775D18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_228775DB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, void *))
{
  if (!*a2)
  {
    v11[0] = a3(255);
    v11[1] = sub_22870D3A8(255, &qword_280DE35A0, MEMORY[0x277D84948]);
    v11[2] = a4();
    v11[3] = MEMORY[0x277D84950];
    v9 = a5(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_228775E9C()
{
  result = qword_280DE0378;
  if (!qword_280DE0378)
  {
    sub_228775DB8(255, &qword_280DE0370, sub_228775D50, sub_228775D84, MEMORY[0x277CBCD10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0378);
  }

  return result;
}

void sub_228775F38(uint64_t a1)
{
  if (!qword_280DE18B8)
  {
    sub_2287C9810();
    sub_22872C820(255);
    sub_2287693A8(&qword_280DE3970, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v1 = sub_2287CBC00();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE18B8);
    }
  }
}

void sub_228776048(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_2287C9810();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2287760C4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_228769228(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_123Tm()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t objectdestroy_127Tm()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2287762E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_141Tm()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

id sub_228776460(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for GroupConfigurationLoader();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2287764B8(uint64_t a1)
{
  sub_22877706C(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 80);

  v9 = v8(a1);

  v17[0] = v9;
  sub_228777144(0, &qword_280DE01A0, &qword_280DE19D0, sub_228777200);
  sub_22877724C(&qword_280DE01A8, &qword_280DE01A0, &qword_280DE19D0, sub_228777200);
  v10 = sub_2287CAE50();

  v17[0] = v10;
  v11 = MEMORY[0x277D11FD8];
  sub_228777144(0, &qword_280DE1AC0, &qword_280DE1A18, MEMORY[0x277D11FD8]);
  v13 = v12;
  v14 = sub_22877724C(&qword_280DE1AC8, &qword_280DE1AC0, &qword_280DE1A18, v11);
  sub_2287CAE10();

  v17[0] = v13;
  v17[1] = v14;
  swift_getOpaqueTypeConformance2();
  v15 = sub_2287CAF40();
  (*(v5 + 8))(v7, v4);
  return v15;
}

uint64_t sub_2287766E0(uint64_t a1)
{
  sub_22877706C(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2287CA560();
  v8 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
  }

  sub_2287CA530();
  v11 = *(v1 + 80);

  v12 = v11(v10);

  v22 = v12;
  sub_228777144(0, &qword_280DE01A0, &qword_280DE19D0, sub_228777200);
  sub_22877724C(&qword_280DE01A8, &qword_280DE01A0, &qword_280DE19D0, sub_228777200);
  v13 = sub_2287CAE50();

  v22 = v13;
  v14 = MEMORY[0x277D11FD8];
  sub_228777144(0, &qword_280DE1AC0, &qword_280DE1A18, MEMORY[0x277D11FD8]);
  v16 = v15;
  v17 = sub_22877724C(&qword_280DE1AC8, &qword_280DE1AC0, &qword_280DE1A18, v14);
  sub_2287CAE10();

  v22 = v16;
  v23 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = sub_2287CAF40();
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v21);
  return v18;
}

uint64_t sub_2287769C8(uint64_t a1)
{
  sub_22877706C(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2287CA560();
  v8 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (sub_2287CB920())
  {
LABEL_3:
  }

LABEL_5:
  sub_2287CA530();
  v11 = *(v1 + 80);

  v12 = v11(v10);

  v22 = v12;
  sub_228777144(0, &qword_280DE01A0, &qword_280DE19D0, sub_228777200);
  sub_22877724C(&qword_280DE01A8, &qword_280DE01A0, &qword_280DE19D0, sub_228777200);
  v13 = sub_2287CAE50();

  v22 = v13;
  v14 = MEMORY[0x277D11FD8];
  sub_228777144(0, &qword_280DE1AC0, &qword_280DE1A18, MEMORY[0x277D11FD8]);
  v16 = v15;
  v17 = sub_22877724C(&qword_280DE1AC8, &qword_280DE1AC0, &qword_280DE1A18, v14);
  sub_2287CAE10();

  v22 = v16;
  v23 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = sub_2287CAF40();
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v21);
  return v18;
}

uint64_t sub_228776CCC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return swift_deallocClassInstance();
}

void *sub_228776D50()
{
  v1 = *(*v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_228776DE8(uint64_t a1)
{
  sub_228776F94(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 96);

  v9 = v8(a1);

  v16[0] = v9;
  v10 = MEMORY[0x277D12108];
  sub_228777144(0, &qword_280DE1AA0, &unk_280DE1A00, MEMORY[0x277D12108]);
  v12 = v11;
  v13 = sub_22877724C(&qword_280DE1AA8, &qword_280DE1AA0, &unk_280DE1A00, v10);
  sub_2287CAE20();

  v16[0] = v12;
  v16[1] = v13;
  swift_getOpaqueTypeConformance2();
  v14 = sub_2287CAF40();
  (*(v5 + 8))(v7, v4);
  return v14;
}

void sub_228776F94(uint64_t a1)
{
  if (!qword_280DE0028)
  {
    v1 = MEMORY[0x277D12108];
    sub_228777144(255, &qword_280DE1AA0, &unk_280DE1A00, MEMORY[0x277D12108]);
    sub_22877724C(&qword_280DE1AA8, &qword_280DE1AA0, &unk_280DE1A00, v1);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280DE0028);
    }
  }
}

void sub_22877706C(uint64_t a1)
{
  if (!qword_280DE0040)
  {
    v1 = MEMORY[0x277D11FD8];
    sub_228777144(255, &qword_280DE1AC0, &qword_280DE1A18, MEMORY[0x277D11FD8]);
    sub_22877724C(&qword_280DE1AC8, &qword_280DE1AC0, &qword_280DE1A18, v1);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280DE0040);
    }
  }
}

void sub_228777144(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2287771AC(255, a3, a4);
    v5 = sub_2287CACD0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2287771AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2287CB450();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_228777200()
{
  result = qword_280DE1988;
  if (!qword_280DE1988)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DE1988);
  }

  return result;
}

uint64_t sub_22877724C(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_228777144(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2287772B8(uint64_t a1, uint64_t *a2)
{
  sub_2287010E4(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v3 + 16));
  sub_228706AD4(v5, v3 + 16);
  return swift_endAccess();
}

uint64_t sub_228777364(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  sub_228706AD4(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t AppSessionAnalyticsManager.__allocating_init()()
{
  v0 = swift_allocObject();
  AppSessionAnalyticsManager.init()();
  return v0;
}

id AppSessionAnalyticsManager.init()()
{
  v1 = v0;
  if (qword_280DE2940 != -1)
  {
    swift_once();
  }

  v2 = qword_280DE2948;
  *(v1 + 40) = type metadata accessor for AppSessionAnalyticsManager.DefaultsPredictiveGenerationAnalyticsDateProvider(0);
  *(v1 + 48) = &protocol witness table for AppSessionAnalyticsManager.DefaultsPredictiveGenerationAnalyticsDateProvider;
  *(v1 + 16) = v2;
  sub_2287C9AC0();
  swift_allocObject();

  v3 = sub_2287C9AB0();
  v4 = MEMORY[0x277D84F90];
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = MEMORY[0x277D84FA0];
  *(v1 + 80) = HKImproveHealthAndActivityAnalyticsAllowed();
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v6 = result;
    v7 = [result isDiagnosticSubmissionAllowed];

    *(v1 + 81) = v7;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22877754C(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_2287CAA50();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 80) == 1)
  {
    v10 = v1[7];
    sub_2287C9A90();
    sub_2287796BC(a1, &v43);
    v48 = v43;
    v49 = v44;
    v50 = v45;
    v51 = v46;
    if (v47)
    {
      return sub_22877C8D0(&v43);
    }

    else
    {
      sub_2287CAA30();
      v41[2] = v45;
      v41[3] = v46;
      v42 = v47;
      v41[0] = v43;
      v41[1] = v44;
      sub_22877C9A4(v41, &v36);
      v11 = sub_2287CAA40();
      v12 = sub_2287CB610();
      sub_22877C8D0(&v43);
      v13 = os_log_type_enabled(v11, v12);
      v33 = v10;
      if (v13)
      {
        v14 = swift_slowAlloc();
        v31 = v12;
        v15 = v14;
        v32 = swift_slowAlloc();
        v35 = v32;
        *&v36 = v4;
        *v15 = 136446466;
        swift_getMetatypeMetadata();
        v16 = sub_2287CB250();
        v18 = sub_2287031D8(v16, v17, &v35);

        *(v15 + 4) = v18;
        *(v15 + 12) = 2080;
        v34[4] = v48;
        v34[5] = v49;
        v34[6] = v50;
        v34[7] = v51;
        v38 = v45;
        v39 = v46;
        v40 = v47;
        v36 = v43;
        v37 = v44;
        sub_22877C9A4(&v36, v34);
        v19 = sub_2287CB250();
        v21 = sub_2287031D8(v19, v20, &v35);

        *(v15 + 14) = v21;
        _os_log_impl(&dword_2286FF000, v11, v31, "[%{public}s]: Updating current event with: %s", v15, 0x16u);
        v22 = v32;
        swift_arrayDestroy();
        MEMORY[0x22AABFD90](v22, -1, -1);
        MEMORY[0x22AABFD90](v15, -1, -1);
      }

      (*(v6 + 8))(v9, v5);
      swift_beginAccess();
      v23 = v2[8];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v2[8] = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = sub_228723510(0, v23[2] + 1, 1, v23);
        v2[8] = v23;
      }

      v26 = v23[2];
      v25 = v23[3];
      if (v26 >= v25 >> 1)
      {
        v23 = sub_228723510((v25 > 1), v26 + 1, 1, v23);
      }

      *(&v37 + 1) = &type metadata for AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics;
      *&v38 = sub_22877D7A4();
      v27 = swift_allocObject();
      *&v36 = v27;
      v28 = v49;
      v27[1] = v48;
      v27[2] = v28;
      v29 = v51;
      v27[3] = v50;
      v27[4] = v29;
      v23[2] = v26 + 1;
      sub_228706AD4(&v36, &v23[5 * v26 + 4]);
      v2[8] = v23;
      swift_endAccess();
      return sub_2287C9AA0();
    }
  }

  return result;
}

void sub_228777918()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_2287CAA50();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 80) == 1)
  {
    v7 = v0[7];
    sub_2287C9A90();
    v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    sub_2287CAA30();
    v9 = v8;
    v10 = sub_2287CAA40();
    v11 = sub_2287CB610();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v27[1] = v7;
      v13 = v12;
      v27[0] = swift_slowAlloc();
      v31[0] = v27[0];
      *v13 = 136446466;
      *&v28 = v2;
      swift_getMetatypeMetadata();
      v14 = sub_2287CB250();
      v16 = sub_2287031D8(v14, v15, v31);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      *&v28 = v9;
      v17 = v9;
      v18 = sub_2287CB250();
      v20 = sub_2287031D8(v18, v19, v31);

      *(v13 + 14) = v20;
      _os_log_impl(&dword_2286FF000, v10, v11, "[%{public}s]: Updating current event with: %s", v13, 0x16u);
      v21 = v27[0];
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v21, -1, -1);
      MEMORY[0x22AABFD90](v13, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    swift_beginAccess();
    v22 = v1[8];
    v23 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1[8] = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_228723510(0, v22[2] + 1, 1, v22);
      v1[8] = v22;
    }

    v26 = v22[2];
    v25 = v22[3];
    if (v26 >= v25 >> 1)
    {
      v22 = sub_228723510((v25 > 1), v26 + 1, 1, v22);
    }

    v29 = &type metadata for AppSessionAnalyticsEvent.DemographicAnalytics;
    v30 = sub_22877D7F8();
    *&v28 = v23;
    v22[2] = v26 + 1;
    sub_228706AD4(&v28, &v22[5 * v26 + 4]);
    v1[8] = v22;
    swift_endAccess();
    sub_2287C9AA0();
  }
}

void sub_228777C7C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_2287CAA50();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[7];
  sub_2287C9A90();
  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  sub_2287CAA30();
  v9 = v8;
  v10 = sub_2287CAA40();
  v11 = sub_2287CB610();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v28[1] = v7;
    v13 = v12;
    v14 = swift_slowAlloc();
    v32[0] = v14;
    *v13 = 136446466;
    *&v29 = v2;
    swift_getMetatypeMetadata();
    v15 = sub_2287CB250();
    v17 = sub_2287031D8(v15, v16, v32);
    v28[0] = v3;
    v18 = v17;

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    *&v29 = v9;
    v19 = v9;
    v20 = sub_2287CB250();
    v22 = sub_2287031D8(v20, v21, v32);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_2286FF000, v10, v11, "[%{public}s]: Updating current event with: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v14, -1, -1);
    MEMORY[0x22AABFD90](v13, -1, -1);

    (*(v4 + 8))(v6, v28[0]);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  swift_beginAccess();
  v23 = v1[8];
  v24 = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[8] = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = sub_228723510(0, v23[2] + 1, 1, v23);
    v1[8] = v23;
  }

  v27 = v23[2];
  v26 = v23[3];
  if (v27 >= v26 >> 1)
  {
    v23 = sub_228723510((v26 > 1), v27 + 1, 1, v23);
  }

  v30 = &type metadata for AppSessionAnalyticsEvent.ImproveHealthAnalytics;
  v31 = sub_22877D84C();
  *&v29 = v24;
  v23[2] = v27 + 1;
  sub_228706AD4(&v29, &v23[5 * v27 + 4]);
  v1[8] = v23;
  swift_endAccess();
  sub_2287C9AA0();
}

uint64_t sub_228777FD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v62 = a2;
  v72 = *v5;
  v73 = a3;
  sub_22877F53C(0, &qword_280DE0680, sub_22877D8A0, sub_22877D9B8, MEMORY[0x277D10DC0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v71 = &v51 - v11;
  sub_22877DA34(0);
  v70 = v12;
  v68 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v65 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22877DDD0(0, &qword_280DE1BE0, sub_22877DA34, sub_22877DB94);
  v69 = v14;
  v67 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v66 = &v51 - v15;
  v16 = sub_2287CB6A0();
  v63 = *(v16 - 8);
  v64 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22877DBC8(0);
  v20 = v19;
  v61 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22877DDD0(0, &qword_280DE1BF0, sub_22877DBC8, sub_22877DE68);
  v24 = v23;
  v60 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v51 - v25;
  sub_22877D8A0(0);
  v28 = MEMORY[0x28223BE20](v27);
  if (*(v5 + 80) != 1)
  {
    return v73(v28);
  }

  v56 = v28;
  v31 = v62;
  v52 = a1;
  v62 = v30;
  v54 = &v51 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = SummaryTabFeedPopulationManager.collectHighlightsInteractionAnalytics(in:)(v31);
  v74 = v51;
  v53 = MEMORY[0x277CBCD88];
  sub_22877F360(0, &qword_280DE1B10, &type metadata for AppSessionAnalyticsEvent.HighlightsFeedInteractionAnalytics, MEMORY[0x277CBCD88]);
  v55 = a4;
  v57 = v5;
  sub_22877DCA4(0, &qword_280DE1A78, &type metadata for AppSessionAnalyticsEvent.HighlightsFeedInteractionAnalytics);
  v59 = v10;
  sub_22877DD04();
  v58 = v9;
  sub_22877DD80(&qword_280DE1A80, &qword_280DE1A78, &type metadata for AppSessionAnalyticsEvent.HighlightsFeedInteractionAnalytics);
  sub_2287CAF90();
  sub_22870D3A8(0, &qword_280DE3350, MEMORY[0x277D10D90]);
  sub_22877DE68();
  sub_2287CAF70();
  (*(v61 + 8))(v22, v20);
  sub_22877E0B0(&qword_280DE1BF8, &qword_280DE1BF0, sub_22877DBC8, sub_22877DE68);
  v32 = sub_2287CAF40();

  (*(v60 + 8))(v26, v24);
  v74 = v32;
  sub_2287CB690();
  v33 = sub_22877D1E4(v18, *(v52 + 104));
  (*(v63 + 8))(v18, v64);
  v75 = v33;
  v34 = v53;
  sub_22877F360(0, &qword_280DE1B00, &type metadata for AppSessionAnalyticsEvent.ModelAnalytics, v53);
  sub_22877DCA4(0, &qword_280DE1A68, &type metadata for AppSessionAnalyticsEvent.ModelAnalytics);
  v35 = MEMORY[0x277CBCD90];
  sub_22877DB44(&qword_280DE1B08, &qword_280DE1B00, v34, MEMORY[0x277CBCD90]);
  sub_22877DD80(&qword_280DE1A70, &qword_280DE1A68, &type metadata for AppSessionAnalyticsEvent.ModelAnalytics);
  v36 = v65;
  sub_2287CAF90();
  sub_22877DB94();
  v37 = v66;
  v38 = v70;
  sub_2287CAF70();
  (*(v68 + 8))(v36, v38);
  sub_22877E0B0(&qword_280DE1BE8, &qword_280DE1BE0, sub_22877DA34, sub_22877DB94);
  v39 = v69;
  v40 = sub_2287CAF40();

  (*(v67 + 8))(v37, v39);
  v75 = v40;
  sub_22877D940(0);
  sub_22877D9EC(&qword_280DE1B48, sub_22877D940, v35);
  v41 = v54;
  sub_2287CAB90();
  sub_22877D9B8();
  v42 = v71;
  v43 = v56;
  sub_2287CAEE0();
  v44 = swift_allocObject();
  v45 = v55;
  *(v44 + 16) = v73;
  *(v44 + 24) = v45;
  v46 = swift_allocObject();
  swift_weakInit();
  v47 = swift_allocObject();
  v48 = v72;
  *(v47 + 16) = v46;
  *(v47 + 24) = v48;
  sub_22877E108();

  v49 = v58;
  sub_2287CAF80();

  (*(v59 + 8))(v42, v49);
  sub_2287C9A90();
  swift_beginAccess();
  sub_2287CACE0();
  swift_endAccess();
  sub_2287C9AA0();

  return (*(v62 + 8))(v41, v43);
}

uint64_t sub_2287789EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2287CAA50();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CAA30();
  sub_2287010E4(a1, v39);
  v9 = sub_2287CAA40();
  v10 = sub_2287CB610();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v36 = a1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v38[0] = v13;
    *v12 = 136446466;
    v37[0] = a3;
    swift_getMetatypeMetadata();
    v14 = sub_2287CB250();
    v16 = sub_2287031D8(v14, v15, v38);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    sub_2287010E4(v39, v37);
    sub_22870D3A8(0, &qword_280DE3350, MEMORY[0x277D10D90]);
    v17 = sub_2287CB250();
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_0(v39);
    v20 = sub_2287031D8(v17, v19, v38);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_2286FF000, v9, v10, "[%{public}s]: Updating current event with: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v13, -1, -1);
    v21 = v12;
    a1 = v36;
    MEMORY[0x22AABFD90](v21, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v39);
  }

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_2287C9A90();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    sub_2287010E4(a1, v39);
    swift_beginAccess();
    v24 = *(v23 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v23 + 64) = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_228723510(0, v24[2] + 1, 1, v24);
      *(v23 + 64) = v24;
    }

    v27 = v24[2];
    v26 = v24[3];
    if (v27 >= v26 >> 1)
    {
      v24 = sub_228723510((v26 > 1), v27 + 1, 1, v24);
      *(v23 + 64) = v24;
    }

    v28 = v40;
    v29 = v41;
    v30 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
    MEMORY[0x28223BE20](v30);
    v32 = &v35 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v33 + 16))(v32);
    sub_22877DE9C(v27, v32, (v23 + 64), v28, v29);
    __swift_destroy_boxed_opaque_existential_0(v39);
    *(v23 + 64) = v24;
    swift_endAccess();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_2287C9AA0();
  }

  return result;
}

uint64_t sub_228778E4C(uint64_t a1)
{
  sub_2287C9A90();
  swift_beginAccess();

  v2 = sub_22877B134(v1);

  sub_2287C9AA0();
  return v2;
}

uint64_t sub_228778EC8(int a1)
{
  LODWORD(v2) = a1;
  v3 = *v1;
  v39 = sub_2287CAA50();
  v4 = *(v39 - 8);
  v5 = MEMORY[0x28223BE20](v39);
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v36[-v8];
  v10 = v1[7];
  sub_2287C9A90();
  swift_beginAccess();

  v12 = sub_22877B134(v11);

  if (*(v1 + 81) == 1)
  {
    v38 = v10;
    sub_2287CAA30();
    swift_bridgeObjectRetain_n();
    v13 = sub_2287CAA40();
    v14 = sub_2287CB610();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v40 = v16;
      *v15 = 136446722;
      v41 = v3;
      swift_getMetatypeMetadata();
      v17 = sub_2287CB250();
      v19 = sub_2287031D8(v17, v18, &v40);
      v37 = v2;
      v20 = v19;

      *(v15 + 4) = v20;
      *(v15 + 12) = 2050;
      v2 = *(v12 + 16);

      *(v15 + 14) = v2;

      *(v15 + 22) = 2080;
      sub_228703004(0, &qword_280DE39B8, 0x277D82BB8);
      v21 = sub_2287CB150();
      v23 = sub_2287031D8(v21, v22, &v40);
      LOBYTE(v2) = v37;

      *(v15 + 24) = v23;
      _os_log_impl(&dword_2286FF000, v13, v14, "[%{public}s]: Submitting analytics dictionary with %{public}ld keys: %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v16, -1, -1);
      MEMORY[0x22AABFD90](v15, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (*(v4 + 8))(v9, v39);
    v33 = sub_2287CB210();
    sub_228703004(0, &qword_280DE39B8, 0x277D82BB8);
    v34 = sub_2287CB130();

    AnalyticsSendEvent();

    if (v2)
    {
LABEL_10:
      sub_2287793B4();
    }
  }

  else
  {

    sub_2287CAA30();
    v24 = sub_2287CAA40();
    v25 = sub_2287CB610();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v38 = v10;
      v28 = v2;
      v2 = v27;
      v40 = v27;
      *v26 = 136446210;
      v41 = v3;
      swift_getMetatypeMetadata();
      v29 = sub_2287CB250();
      v31 = sub_2287031D8(v29, v30, &v40);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_2286FF000, v24, v25, "[%{public}s]: D&U disabled, not submitting analytics", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v2);
      v32 = v2;
      LOBYTE(v2) = v28;
      MEMORY[0x22AABFD90](v32, -1, -1);
      MEMORY[0x22AABFD90](v26, -1, -1);
    }

    (*(v4 + 8))(v7, v39);
    if (v2)
    {
      goto LABEL_10;
    }
  }

  return sub_2287C9AA0();
}

uint64_t sub_228779370(uint64_t a1)
{
  sub_2287C9A90();
  sub_2287793B4();
  return sub_2287C9AA0();
}

uint64_t sub_2287793B4()
{
  v1 = v0;
  v2 = *v0;
  sub_228705C84(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2287CAA50();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CAA30();
  v10 = sub_2287CAA40();
  v11 = sub_2287CB610();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = v5;
    v13 = v12;
    v14 = swift_slowAlloc();
    v25[0] = v14;
    *v13 = 136446210;
    v25[3] = v2;
    swift_getMetatypeMetadata();
    v15 = sub_2287CB250();
    v17 = sub_2287031D8(v15, v16, v25);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_2286FF000, v10, v11, "[%{public}s]: Resetting analytics event", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AABFD90](v14, -1, -1);
    v18 = v13;
    v5 = v24;
    MEMORY[0x22AABFD90](v18, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  v1[8] = MEMORY[0x277D84F90];

  v19 = sub_2287C97C0();
  (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
  swift_beginAccess();
  v20 = v1[5];
  v21 = v1[6];
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v20);
  (*(v21 + 16))(v5, v20, v21);
  swift_endAccess();
  swift_beginAccess();
  v1[9] = MEMORY[0x277D84FA0];
}

uint64_t sub_2287796BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v4 = *v2;
  v5 = sub_2287CAA50();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9D0();
  v9 = sub_2287CAA40();
  v10 = sub_2287CB610();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v6;
    v13 = v12;
    *&v34 = v12;
    *v11 = 136446210;
    *&v38 = v4;
    swift_getMetatypeMetadata();
    v14 = sub_2287CB250();
    v28 = v5;
    v16 = sub_2287031D8(v14, v15, &v34);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_2286FF000, v9, v10, "[%{public}s]: Collecting highlights feed presentation analytics", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AABFD90](v13, -1, -1);
    MEMORY[0x22AABFD90](v11, -1, -1);

    (*(v29 + 8))(v8, v28);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v42 = 2;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v17 = swift_allocObject();
  *(v17 + 16) = 2;
  v19 = v30;
  v18 = v31;
  *(v17 + 24) = v30;
  *(v17 + 32) = v18;
  *(v17 + 40) = &v42;
  *(v17 + 48) = &v38;
  *(v17 + 56) = v4;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_22877E1A4;
  *(v20 + 24) = v17;
  *&v36 = sub_22877E1B8;
  *(&v36 + 1) = v20;
  *&v34 = MEMORY[0x277D85DD0];
  *(&v34 + 1) = 1107296256;
  *&v35 = sub_228742C10;
  *(&v35 + 1) = &block_descriptor_6;
  v21 = _Block_copy(&v34);
  v22 = v19;

  [v22 performBlockAndWait_];
  _Block_release(v21);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  else
  {
    v24 = v42;
    if (v42 != 2)
    {
      v26 = 1;
      v25 = v42;
      goto LABEL_9;
    }

    v21 = *(&v38 + 1);
    if (*(&v38 + 1))
    {
      v25 = v38;
      v43 = v39;
      v44 = v40;
      v45 = v41;
      v33 = 0;
      v34 = v38;
      v35 = v39;
      v36 = v40;
      v37 = v41;
      sub_22877C9A4(&v34, &v32);
      v26 = v33;
LABEL_9:
      *a2 = v25;
      *(a2 + 8) = v21;
      v27 = v44;
      *(a2 + 16) = v43;
      *(a2 + 32) = v27;
      *(a2 + 48) = v45;
      *(a2 + 64) = v26;
      v34 = v38;
      v35 = v39;
      v36 = v40;
      v37 = v41;
      sub_22877E1D8(v24);
      sub_22877E6EC(&v34, sub_22877E1F8);
      sub_22877E248(v42);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_228779AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6)
{
  v144 = a6;
  v146 = a5;
  v160 = a3;
  v151 = sub_2287CAA50();
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v161 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22877E684(0);
  MEMORY[0x28223BE20](v9 - 8);
  v165 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_22877F208(0, &qword_280DE3400, MEMORY[0x277D11F48], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v142 - v13;
  sub_22877E6B8(0);
  MEMORY[0x28223BE20](v15 - 8);
  v164 = &v142 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22877F208(0, &qword_280DE3398, MEMORY[0x277D12080], v11);
  MEMORY[0x28223BE20](v17 - 8);
  v163 = &v142 - v18;
  sub_228705C84(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v142 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_2287C97C0();
  v162 = *(v167 - 8);
  v22 = MEMORY[0x28223BE20](v167);
  v148 = &v142 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v147 = &v142 - v25;
  MEMORY[0x28223BE20](v24);
  v158 = &v142 - v26;
  v157 = sub_2287C9870();
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v153 = &v142 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_2287C9610();
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v152 = &v142 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA640();
  v29 = [objc_opt_self() primaryProfile];
  v30 = sub_2287CA630();

  v159 = v30;
  v31 = sub_2287CA300();
  if (!v31)
  {
    v143 = 0;
    v145 = 1;
    LODWORD(v147) = 1;
    v166 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v32 = v31;
  if (Feed.isTooOldForDisplay.getter())
  {

    v143 = 0;
    v166 = MEMORY[0x277D84F90];
    v145 = 1;
    LODWORD(v147) = 1;
    goto LABEL_17;
  }

  v149 = a4;
  v33 = sub_2287CA580();
  v34 = v33;
  if (v33 >> 62)
  {
    v35 = sub_2287CB920();
  }

  else
  {
    v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v142 = a2;
  if (!v35)
  {

    v39 = MEMORY[0x277D84F90];
LABEL_16:
    v166 = v39;
    v40 = v153;
    sub_2287C9850();
    sub_22877F208(0, &qword_280DE35B8, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
    v41 = sub_2287C9860();
    v42 = *(v41 - 8);
    v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_2287CCFE0;
    (*(v42 + 104))(v44 + v43, *MEMORY[0x277CC99A0], v41);
    sub_22877ECCC(v44);
    swift_setDeallocating();
    (*(v42 + 8))(v44 + v43, v41);
    swift_deallocClassInstance();
    v45 = [v32 dateUpdated];
    v46 = v158;
    sub_2287C97A0();

    v47 = v147;
    sub_2287C97B0();
    v48 = v152;
    sub_2287C9830();

    v49 = *(v162 + 8);
    v50 = v167;
    v49(v47, v167);
    v49(v46, v50);
    (*(v156 + 8))(v40, v157);
    v143 = sub_2287C95F0();
    LODWORD(v147) = v51;

    (*(v154 + 8))(v48, v155);
    v145 = 0;
    a4 = v149;
LABEL_17:
    v52 = v160;
    swift_beginAccess();
    sub_2287010E4(v52 + 16, &v168);
    v53 = *(&v169 + 1);
    v54 = v170;
    __swift_project_boxed_opaque_existential_1(&v168, *(&v169 + 1));
    (*(v54 + 8))(v53, v54);
    v55 = v162;
    v56 = v167;
    if ((*(v162 + 48))(v21, 1, v167) == 1)
    {
      sub_22877E6EC(v21, sub_228705C84);
      __swift_destroy_boxed_opaque_existential_0(&v168);
      v57 = 0;
      LODWORD(v160) = 1;
    }

    else
    {
      v58 = *(v55 + 32);
      v149 = a4;
      v59 = v148;
      v58(v148, v21, v56);
      __swift_destroy_boxed_opaque_existential_0(&v168);
      v60 = v153;
      sub_2287C9850();
      sub_22877F208(0, &qword_280DE35B8, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
      v61 = v55;
      v62 = sub_2287C9860();
      v63 = *(v62 - 8);
      v64 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_2287CCFE0;
      (*(v63 + 104))(v65 + v64, *MEMORY[0x277CC99A0], v62);
      sub_22877ECCC(v65);
      swift_setDeallocating();
      (*(v63 + 8))(v65 + v64, v62);
      swift_deallocClassInstance();
      v66 = v158;
      sub_2287C97B0();
      v67 = v152;
      sub_2287C9830();

      v68 = *(v61 + 8);
      v69 = v167;
      v68(v66, v167);
      (*(v156 + 8))(v60, v157);
      v57 = sub_2287C95F0();
      LODWORD(v160) = v70;
      (*(v154 + 8))(v67, v155);
      v68(v59, v69);
    }

    sub_2287CA800();
    v71 = MEMORY[0x22AABDDF0]();
    if (qword_280DE0D98 != -1)
    {
      swift_once();
    }

    v72 = _s14HealthPlatform8FeedItemC0aB4CoreE020predicateForEligibleC5Items3for14sourceProfilesSo11NSPredicateCAA0C0C4KindO_SayAA13SourceProfileOGtFZ_0(2, qword_280DE0DA0);
    [v71 setPredicate_];

    v73 = v71;
    v74 = 0;
    v75 = sub_2287CB7B0();
    v76 = v75;
    v161 = v73;
    if (v75 >> 62)
    {
      v77 = sub_2287CB920();
    }

    else
    {
      v77 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v158 = v57;
    if (v77)
    {
      *&v168 = MEMORY[0x277D84F90];
      sub_2287CBAC0();
      if ((v77 & 0x8000000000000000) == 0)
      {
        v78 = 0;
        v162 = v76 & 0xC000000000000001;
        while (1)
        {
          v82 = v162 ? MEMORY[0x22AABF120](v78, v76) : *(v76 + 8 * v78 + 32);
          v83 = v82;
          type metadata accessor for AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.GeneratedFeedItem(0);
          v84 = swift_allocObject();
          v85 = sub_2287CA750();
          sub_2287BCEB0(v85);
          v167 = v74;
          if (v74)
          {
            goto LABEL_83;
          }

          v87 = v86;
          v88 = v77;

          *(v84 + 16) = v87;
          v89 = sub_2287CA500();
          v90 = v164;
          sub_2287CA700();
          v91 = v90;
          v92 = *(v89 - 8);
          if ((*(v92 + 48))(v91, 1, v89) == 1)
          {
            sub_22877E6EC(v91, sub_22877E6B8);
            v93 = 1;
            v94 = v163;
          }

          else
          {
            v94 = v163;
            sub_2287CA4F0();
            (*(v92 + 8))(v91, v89);
            v93 = 0;
          }

          v95 = sub_2287CA2E0();
          (*(*(v95 - 8) + 56))(v94, v93, 1, v95);
          sub_22877E74C(v94, v84 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_dataVisualizationKind, &qword_280DE3398, MEMORY[0x277D12080]);
          v96 = sub_2287CA140();
          v97 = v165;
          sub_2287CA700();
          v98 = v97;
          v99 = *(v96 - 8);
          if ((*(v99 + 48))(v98, 1, v96) == 1)
          {

            sub_22877E6EC(v98, sub_22877E684);
            v79 = 1;
          }

          else
          {
            sub_2287CA130();

            (*(v99 + 8))(v98, v96);
            v79 = 0;
          }

          v77 = v88;
          v80 = sub_2287C9F50();
          (*(*(v80 - 8) + 56))(v14, v79, 1, v80);
          ++v78;
          sub_22877E74C(v14, v84 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_timeScope, &qword_280DE3400, MEMORY[0x277D11F48]);
          sub_2287CBA90();
          sub_2287CBAD0();
          sub_2287CBAE0();
          sub_2287CBAA0();
          v81 = v88 == v78;
          v74 = v167;
          if (v81)
          {

            v100 = v168;
            goto LABEL_40;
          }
        }
      }

      __break(1u);
      goto LABEL_80;
    }

    v100 = MEMORY[0x277D84F90];
LABEL_40:
    v101 = 0x277CCA000uLL;
    v102 = &unk_278607000;
    if (v147)
    {
      v165 = 0;
      if ((v160 & 1) == 0)
      {
LABEL_42:
        sub_22877E7CC();
        v164 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v103 = v164;
        goto LABEL_45;
      }
    }

    else
    {
      sub_22877E7CC();
      v165 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v104 = v165;
      if ((v160 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    v164 = 0;
LABEL_45:
    if (v100 >> 62)
    {
      v105 = sub_2287CB920();
    }

    else
    {
      v105 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v106 = sub_22877E7CC();
    v163 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v167 = v106;
    if (v105)
    {
      *&v168 = MEMORY[0x277D84F90];
      sub_2287042D4(0, v105 & ~(v105 >> 63), 0);
      if (v105 < 0)
      {
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v107 = 0;
      v108 = v168;
      do
      {
        if ((v100 & 0xC000000000000001) != 0)
        {
          v109 = MEMORY[0x22AABF120](v107, v100);
        }

        else
        {
          v109 = *(v100 + 8 * v107 + 32);
        }

        v110 = (*(*v109 + 120))();
        v112 = v111;

        *&v168 = v108;
        v114 = *(v108 + 16);
        v113 = *(v108 + 24);
        if (v114 >= v113 >> 1)
        {
          sub_2287042D4((v113 > 1), v114 + 1, 1);
          v108 = v168;
        }

        ++v107;
        *(v108 + 16) = v114 + 1;
        v115 = v108 + 16 * v114;
        *(v115 + 32) = v110;
        *(v115 + 40) = v112;
      }

      while (v105 != v107);

      v101 = 0x277CCA000;
      v102 = &unk_278607000;
    }

    else
    {
    }

    v116 = sub_2287CA870();

    if (v166 >> 62)
    {
      v117 = sub_2287CB920();
    }

    else
    {
      v117 = *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v117 >= 9)
    {
      v118 = 9;
    }

    else
    {
      v118 = v117;
    }

    v119 = [objc_allocWithZone(*(v101 + 2992)) v102[113]];
    v120 = v119;
    if (v117)
    {
      v161 = v119;
      v162 = v116;
      v121 = v101;
      *&v168 = MEMORY[0x277D84F90];
      sub_2287042D4(0, v117 & ~(v117 >> 63), 0);
      if (v117 < 0)
      {
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v122 = 0;
      v123 = v168;
      v124 = v166 & 0xC000000000000001;
      do
      {
        if (v124)
        {
          MEMORY[0x22AABF120](v122);
        }

        else
        {
        }

        v125 = sub_2287BF470();
        v127 = v126;

        *&v168 = v123;
        v129 = *(v123 + 16);
        v128 = *(v123 + 24);
        if (v129 >= v128 >> 1)
        {
          sub_2287042D4((v128 > 1), v129 + 1, 1);
          v123 = v168;
        }

        ++v122;
        *(v123 + 16) = v129 + 1;
        v130 = v123 + 16 * v129;
        *(v130 + 32) = v125;
        *(v130 + 40) = v127;
      }

      while (v117 != v122);

      v101 = v121;
      v120 = v161;
      v116 = v162;
    }

    else
    {
    }

    v131 = sub_2287CA870();

    _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
    v132 = sub_2287CB210();

    v133 = objc_allocWithZone(*(v101 + 2992));
    v134 = [v133 initWithBool_];

    v135 = v165;
    v136 = v164;

    v137 = v146;
    v138 = v146[1];
    v168 = *v146;
    v169 = v138;
    v139 = v146[3];
    v170 = v146[2];
    v171 = v139;
    v140 = v163;
    *v146 = v135;
    v137[1] = v140;
    v137[2] = v116;
    v137[3] = v120;
    v137[4] = v131;
    v137[5] = v132;
    v137[6] = v136;
    v137[7] = v134;
    return sub_22877E6EC(&v168, sub_22877E1F8);
  }

  *&v168 = MEMORY[0x277D84F90];
  sub_2287CBAC0();
  if ((v35 & 0x8000000000000000) == 0)
  {
    v36 = 0;
    do
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x22AABF120](v36, v34);
      }

      else
      {
        v37 = *(v34 + 8 * v36 + 32);
      }

      v38 = v37;
      ++v36;
      type metadata accessor for AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.ShownFeedItem(0);
      swift_allocObject();
      AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.ShownFeedItem.init(feedItem:)(v38);
      sub_2287CBA90();
      sub_2287CBAD0();
      sub_2287CBAE0();
      sub_2287CBAA0();
    }

    while (v35 != v36);

    v39 = v168;
    goto LABEL_16;
  }

LABEL_82:
  __break(1u);
LABEL_83:
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_22877B134(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_2287CAA50();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v85 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v85 - v12;
  sub_2287CAA30();

  v14 = sub_2287CAA40();
  v15 = sub_2287CB610();

  v16 = os_log_type_enabled(v14, v15);
  v17 = MEMORY[0x277D84F90];
  v92 = v4;
  v88 = v8;
  v89 = v11;
  if (v16)
  {
    LODWORD(v90) = v15;
    v91 = v14;
    v18 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v97 = v87;
    *v18 = 136446466;
    v94[0] = v3;
    swift_getMetatypeMetadata();
    v19 = sub_2287CB250();
    v21 = sub_2287031D8(v19, v20, &v97);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2082;
    v22 = *(a1 + 16);
    v23 = MEMORY[0x277D84F90];
    if (v22)
    {
      v85 = v5;
      v86 = v3;
      v93 = MEMORY[0x277D84F90];
      sub_2287134E0(0, v22, 0);
      v23 = v93;
      v24 = a1 + 32;
      do
      {
        sub_2287010E4(v24, v94);
        __swift_project_boxed_opaque_existential_1(v94, v95);
        DynamicType = swift_getDynamicType();
        v26 = v96;
        __swift_destroy_boxed_opaque_existential_0(v94);
        v93 = v23;
        v28 = *(v23 + 16);
        v27 = *(v23 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_2287134E0((v27 > 1), v28 + 1, 1);
          v23 = v93;
        }

        *(v23 + 16) = v28 + 1;
        v29 = v23 + 16 * v28;
        *(v29 + 32) = DynamicType;
        *(v29 + 40) = v26;
        v24 += 40;
        --v22;
      }

      while (v22);
      v5 = v85;
      v3 = v86;
      v4 = v92;
      v11 = v89;
    }

    v30 = sub_228714EA4();
    v31 = MEMORY[0x22AABEA80](v23, v30);
    v33 = v32;

    v34 = sub_2287031D8(v31, v33, &v97);

    *(v18 + 14) = v34;
    v35 = v91;
    _os_log_impl(&dword_2286FF000, v91, v90, "[%{public}s]: Creating submission dictionary from objects: %{public}s", v18, 0x16u);
    v36 = v87;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v36, -1, -1);
    MEMORY[0x22AABFD90](v18, -1, -1);

    v90 = *(v5 + 8);
    v90(v13, v4);
    v17 = MEMORY[0x277D84F90];
  }

  else
  {

    v90 = *(v5 + 8);
    v90(v13, v4);
  }

  v97 = v17;
  v37 = *(a1 + 16);
  if (v37)
  {
    v38 = a1 + 32;
    do
    {
      sub_2287010E4(v38, v94);
      __swift_project_boxed_opaque_existential_1(v94, v95);
      v39 = sub_2287CA8D0();
      __swift_destroy_boxed_opaque_existential_0(v94);
      sub_22870E310(v39);
      v38 += 40;
      --v37;
    }

    while (v37);
    v17 = v97;
  }

  isa = v17[2].isa;
  v41 = MEMORY[0x277D84F90];
  v91 = v17;
  if (isa)
  {
    v42 = v3;
    v94[0] = MEMORY[0x277D84F90];
    sub_2287042D4(0, isa, 0);
    v41 = v94[0];
    v43 = v17 + 5;
    do
    {
      v45 = v43[-1].isa;
      v44 = v43->isa;
      v94[0] = v41;
      v47 = *(v41 + 16);
      v46 = *(v41 + 24);

      if (v47 >= v46 >> 1)
      {
        sub_2287042D4((v46 > 1), v47 + 1, 1);
        v41 = v94[0];
      }

      *(v41 + 16) = v47 + 1;
      v48 = v41 + 16 * v47;
      *(v48 + 32) = v45;
      *(v48 + 40) = v44;
      v43 += 3;
      --isa;
    }

    while (isa);
    v3 = v42;
    v11 = v89;
  }

  v49 = sub_22877B9E0(v41);
  sub_2287CAA30();

  v50 = sub_2287CAA40();
  v51 = sub_2287CB610();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v97 = v53;
    *v52 = 136446466;
    v94[0] = v3;
    swift_getMetatypeMetadata();
    v54 = sub_2287CB250();
    v56 = v3;
    v57 = sub_2287031D8(v54, v55, &v97);

    *(v52 + 4) = v57;
    *(v52 + 12) = 2082;
    v58 = MEMORY[0x22AABEA80](v41, MEMORY[0x277D837D0]);
    v60 = v59;

    v61 = sub_2287031D8(v58, v60, &v97);
    v3 = v56;

    *(v52 + 14) = v61;
    _os_log_impl(&dword_2286FF000, v50, v51, "[%{public}s]: %{public}s are ready for submission", v52, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v53, -1, -1);
    MEMORY[0x22AABFD90](v52, -1, -1);

    v62 = v89;
  }

  else
  {

    v62 = v11;
  }

  v63 = v92;
  v90(v62, v92);
  v64 = v88;
  v65 = v91;
  if (*(v49 + 2))
  {
    sub_2287CAA30();

    v66 = sub_2287CAA40();
    v67 = sub_2287CB600();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v97 = v69;
      *v68 = 136446722;
      v94[0] = v3;
      swift_getMetatypeMetadata();
      v70 = sub_2287CB250();
      v72 = sub_2287031D8(v70, v71, &v97);

      *(v68 + 4) = v72;
      *(v68 + 12) = 2082;
      v73 = MEMORY[0x22AABEA80](v49, MEMORY[0x277D837D0]);
      v75 = sub_2287031D8(v73, v74, &v97);

      *(v68 + 14) = v75;
      *(v68 + 22) = 2080;
      sub_22872C748(0);
      v77 = MEMORY[0x22AABEA80](v91, v76);
      v79 = sub_2287031D8(v77, v78, &v97);

      *(v68 + 24) = v79;
      _os_log_impl(&dword_2286FF000, v66, v67, "[%{public}s]: Found duplicate keys: %{public}s. Objects: %s", v68, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v69, -1, -1);
      v65 = v91;
      MEMORY[0x22AABFD90](v68, -1, -1);

      v80 = v64;
      v81 = v92;
    }

    else
    {

      v80 = v64;
      v81 = v63;
    }

    v90(v80, v81);
  }

  v82 = sub_228784B1C(v65);

  if (*(v82 + 16))
  {
    sub_22877F07C(0);
    v83 = sub_2287CBBF0();
  }

  else
  {
    v83 = MEMORY[0x277D84F98];
  }

  v94[0] = v83;

  sub_22877E994(v82, 1, v94, v49, v3);

  return v94[0];
}

char *sub_22877B9E0(uint64_t a1)
{
  v20 = MEMORY[0x277D84FA0];
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 32;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      v5 = (v3 + 16 * v2);
      v6 = *v5;
      v7 = v5[1];
      v8 = v20;
      if (*(v20 + 16))
      {
        sub_2287CBD80();

        sub_2287CB290();
        v9 = sub_2287CBDB0();
        v10 = -1 << *(v8 + 32);
        v11 = v9 & ~v10;
        if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
        {
          v12 = ~v10;
          while (1)
          {
            v13 = (*(v8 + 48) + 16 * v11);
            v14 = *v13 == v6 && v13[1] == v7;
            if (v14 || (sub_2287CBD00() & 1) != 0)
            {
              break;
            }

            v11 = (v11 + 1) & v12;
            if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_228722DF0(0, *(v4 + 2) + 1, 1, v4);
          }

          v16 = *(v4 + 2);
          v15 = *(v4 + 3);
          if (v16 >= v15 >> 1)
          {
            v4 = sub_228722DF0((v15 > 1), v16 + 1, 1, v4);
          }

          *(v4 + 2) = v16 + 1;
          v17 = &v4[16 * v16];
          *(v17 + 4) = v6;
          *(v17 + 5) = v7;
          goto LABEL_5;
        }
      }

      else
      {
      }

LABEL_4:
      sub_2287240C8(&v19, v6, v7);

LABEL_5:
      if (++v2 == v1)
      {
        goto LABEL_23;
      }
    }
  }

  v4 = MEMORY[0x277D84F90];
LABEL_23:

  return v4;
}

id sub_22877BBBC@<X0>(void **a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = sub_2287CAA50();
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *a2;
  sub_2287CAA30();
  v16 = v14;
  v17 = v15;

  v18 = sub_2287CAA40();
  v19 = sub_2287CB600();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v47 = a5;
    v21 = v20;
    v46 = swift_slowAlloc();
    v51[0] = v46;
    *v21 = 136446978;
    v51[2] = a4;
    swift_getMetatypeMetadata();
    v22 = sub_2287CB250();
    v24 = sub_2287031D8(v22, v23, v51);
    v45 = v19;
    v25 = v24;

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    v26 = v16;
    v27 = [v26 description];
    v28 = sub_2287CB220();
    v48 = v5;
    v30 = v29;

    v31 = sub_2287031D8(v28, v30, v51);

    *(v21 + 14) = v31;
    *(v21 + 22) = 2082;
    v32 = v17;
    v33 = [v32 description];
    v34 = sub_2287CB220();
    v36 = v35;

    v37 = sub_2287031D8(v34, v36, v51);

    *(v21 + 24) = v37;
    *(v21 + 32) = 2082;
    v38 = MEMORY[0x22AABEA80](a3, MEMORY[0x277D837D0]);
    v40 = sub_2287031D8(v38, v39, v51);

    *(v21 + 34) = v40;
    _os_log_impl(&dword_2286FF000, v18, v45, "[%{public}s]: duplicate objects in submission dictionary: %{public}s and %{public}s. Duplicate keys: %{public}s", v21, 0x2Au);
    v41 = v46;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v41, -1, -1);
    v42 = v21;
    a5 = v47;
    MEMORY[0x22AABFD90](v42, -1, -1);
  }

  (*(v49 + 8))(v13, v50);
  *a5 = v17;
  return v17;
}

uint64_t AppSessionAnalyticsManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return v0;
}

uint64_t AppSessionAnalyticsManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_22877BF5C(uint64_t *a1)
{
  sub_22877F208(0, &qword_280DE1208, sub_228705C84, MEMORY[0x277D11E70]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *a1;
  v9 = OBJC_IVAR____TtCC18HealthPlatformCore26AppSessionAnalyticsManager49DefaultsPredictiveGenerationAnalyticsDateProvider__dateLastPredictiveGenerationRanForAnalytics;
  swift_beginAccess();
  (*(v5 + 16))(v7, v8 + v9, v4);
  sub_2287C9B80();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_22877C0A4(uint64_t a1, uint64_t *a2)
{
  sub_228705C84(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_22877E268(a1, &v10 - v7);
  sub_22877E268(v8, v6);
  swift_beginAccess();
  sub_22877F208(0, &qword_280DE1208, sub_228705C84, MEMORY[0x277D11E70]);
  sub_2287C9B90();
  swift_endAccess();
  return sub_22877E6EC(v8, sub_228705C84);
}

uint64_t sub_22877C1E0()
{
  sub_22877F208(0, &qword_280DE1208, sub_228705C84, MEMORY[0x277D11E70]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = OBJC_IVAR____TtCC18HealthPlatformCore26AppSessionAnalyticsManager49DefaultsPredictiveGenerationAnalyticsDateProvider__dateLastPredictiveGenerationRanForAnalytics;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  sub_2287C9B80();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_22877C320(uint64_t a1)
{
  sub_228705C84(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_22877E268(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  sub_22877F208(0, &qword_280DE1208, sub_228705C84, MEMORY[0x277D11E70]);
  sub_2287C9B90();
  swift_endAccess();
  return sub_22877E6EC(a1, sub_228705C84);
}

uint64_t (*sub_22877C428(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_22877F208(0, &qword_280DE1208, sub_228705C84, MEMORY[0x277D11E70]);
  *(v3 + 56) = sub_2287C9B70();
  return sub_22877C4F8;
}

uint64_t AppSessionAnalyticsManager.DefaultsPredictiveGenerationAnalyticsDateProvider.__allocating_init()()
{
  sub_228705C84(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = swift_allocObject();
  sub_228703004(0, &qword_280DE3890, 0x277CBEBD0);
  sub_2287CB640();
  v4 = sub_2287C97C0();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_2287C9BA0();
  return v3;
}

uint64_t AppSessionAnalyticsManager.DefaultsPredictiveGenerationAnalyticsDateProvider.init()()
{
  sub_228705C84(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228703004(0, &qword_280DE3890, 0x277CBEBD0);
  sub_2287CB640();
  v4 = sub_2287C97C0();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_2287C9BA0();
  return v0;
}

uint64_t sub_22877C74C()
{
  sub_228705C84(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppSessionAnalyticsManager.DefaultsPredictiveGenerationAnalyticsDateProvider(0);
  v3 = swift_allocObject();
  sub_228703004(0, &qword_280DE3890, 0x277CBEBD0);
  sub_2287CB640();
  v4 = sub_2287C97C0();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  result = sub_2287C9BA0();
  qword_280DE2948 = v3;
  return result;
}

uint64_t type metadata accessor for AppSessionAnalyticsManager.DefaultsPredictiveGenerationAnalyticsDateProvider(uint64_t a1)
{
  result = qword_280DE2930;
  if (!qword_280DE2930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22877C8D0(uint64_t a1)
{
  sub_22877F360(0, &qword_27D850E18, &type metadata for AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics, MEMORY[0x277D84C48]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22877C950()
{
  result = qword_280DE2A88;
  if (!qword_280DE2A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE2A88);
  }

  return result;
}

uint64_t static AppSessionAnalyticsManager.DefaultsPredictiveGenerationAnalyticsDateProvider.shared.getter()
{
  if (qword_280DE2940 != -1)
  {
    swift_once();
  }
}

uint64_t AppSessionAnalyticsManager.DefaultsPredictiveGenerationAnalyticsDateProvider.deinit()
{
  v1 = OBJC_IVAR____TtCC18HealthPlatformCore26AppSessionAnalyticsManager49DefaultsPredictiveGenerationAnalyticsDateProvider__dateLastPredictiveGenerationRanForAnalytics;
  sub_22877F208(0, &qword_280DE1208, sub_228705C84, MEMORY[0x277D11E70]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AppSessionAnalyticsManager.DefaultsPredictiveGenerationAnalyticsDateProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC18HealthPlatformCore26AppSessionAnalyticsManager49DefaultsPredictiveGenerationAnalyticsDateProvider__dateLastPredictiveGenerationRanForAnalytics;
  sub_22877F208(0, &qword_280DE1208, sub_228705C84, MEMORY[0x277D11E70]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_22877CBB8()
{
  sub_22877F208(0, &qword_280DE1208, sub_228705C84, MEMORY[0x277D11E70]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = OBJC_IVAR____TtCC18HealthPlatformCore26AppSessionAnalyticsManager49DefaultsPredictiveGenerationAnalyticsDateProvider__dateLastPredictiveGenerationRanForAnalytics;
  swift_beginAccess();
  (*(v4 + 16))(v6, v7 + v8, v3);
  sub_2287C9B80();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_22877CCFC(uint64_t a1)
{
  sub_228705C84(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_22877E268(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  sub_22877F208(0, &qword_280DE1208, sub_228705C84, MEMORY[0x277D11E70]);
  sub_2287C9B90();
  swift_endAccess();
  return sub_22877E6EC(a1, sub_228705C84);
}

uint64_t (*sub_22877CE08(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_22877F208(0, &qword_280DE1208, sub_228705C84, MEMORY[0x277D11E70]);
  *(v3 + 56) = sub_2287C9B70();
  return sub_22877F5F0;
}

void sub_22877CEDC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  swift_endAccess();

  free(v1);
}

uint64_t sub_22877CF30@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2287CAA50();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CAA30();
  sub_22877E1E8(a1);
  v12 = sub_2287CAA40();
  v13 = sub_2287CB5F0();
  sub_22877E258(a1);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v34 = v16;
    *v15 = 136446722;
    v33 = type metadata accessor for AppSessionAnalyticsManager();
    sub_22877F148();
    v17 = sub_2287CB250();
    v32 = a4;
    v19 = sub_2287031D8(v17, v18, &v34);
    v31 = v8;
    v20 = a2;
    v21 = v19;

    *(v15 + 4) = v21;
    *(v15 + 12) = 2082;
    v33 = v20;
    v30(0);
    v22 = sub_2287CB250();
    v24 = sub_2287031D8(v22, v23, &v34);

    *(v15 + 14) = v24;
    *(v15 + 22) = 2080;
    v33 = a1;
    sub_22877E1E8(a1);
    v25 = sub_2287CB250();
    v27 = sub_2287031D8(v25, v26, &v34);

    *(v15 + 24) = v27;
    _os_log_impl(&dword_2286FF000, v12, v13, "[%{public}s]: Error returned when gathering analytics of kind %{public}s: %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v16, -1, -1);
    MEMORY[0x22AABFD90](v15, -1, -1);

    (*(v9 + 8))(v11, v31);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  return sub_2287CADC0();
}

uint64_t sub_22877D1E4(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v4 = *v2;
  sub_22877F1D4(0);
  MEMORY[0x28223BE20](v5 - 8);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22877F26C(0);
  v39 = v7;
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v35 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22877F3CC(0);
  v40 = v9;
  v38 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v36 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2287CAA50();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[1] = a2;
  sub_2287CAA30();
  v15 = sub_2287CAA40();
  v16 = sub_2287CB610();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v42[0] = v18;
    *v17 = 136446210;
    v19 = sub_22876C3BC(v4);
    v21 = sub_2287031D8(v19, v20, v42);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_2286FF000, v15, v16, "[%{public}s]: Collecting RelevanceEngine metrics", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AABFD90](v18, -1, -1);
    MEMORY[0x22AABFD90](v17, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  swift_allocObject();
  swift_weakInit();
  v22 = MEMORY[0x277CBCEA8];
  sub_22877F360(0, &qword_280DE1A48, &type metadata for AppSessionAnalyticsEvent.ModelAnalytics, MEMORY[0x277CBCEA8]);
  swift_allocObject();
  v33 = sub_2287CADF0();
  v42[0] = v33;
  v23 = sub_2287CB680();
  v24 = *(*(v23 - 8) + 56);
  v25 = v34;
  v24(v34, 1, 1, v23);
  sub_228703004(0, &qword_280DE39D0, 0x277D85C78);
  sub_22877DB44(&qword_280DE1A50, &qword_280DE1A48, v22, MEMORY[0x277CBCEB0]);
  sub_22871EC78();
  v26 = v35;
  sub_2287CAFF0();
  sub_22877E6EC(v25, sub_22877F1D4);

  v24(v25, 1, 1, v23);
  sub_22877D9EC(&qword_280DE02B8, sub_22877F26C, MEMORY[0x277CBCD60]);
  v27 = v36;
  v28 = v39;
  sub_2287CB000();
  sub_22877E6EC(v25, sub_22877F1D4);
  (*(v37 + 8))(v26, v28);
  sub_22877D9EC(&qword_280DE03D8, sub_22877F3CC, MEMORY[0x277CBCCE8]);
  v29 = v40;
  v30 = sub_2287CAF40();
  (*(v38 + 8))(v27, v29);
  return v30;
}

unint64_t sub_22877D7A4()
{
  result = qword_280DE2AA0;
  if (!qword_280DE2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE2AA0);
  }

  return result;
}

unint64_t sub_22877D7F8()
{
  result = qword_280DE2D88;
  if (!qword_280DE2D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE2D88);
  }

  return result;
}

unint64_t sub_22877D84C()
{
  result = qword_280DE1028;
  if (!qword_280DE1028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE1028);
  }

  return result;
}

void sub_22877D8A0(uint64_t a1)
{
  if (!qword_280DE1BA0)
  {
    sub_22877D940(255);
    sub_22877D9EC(&qword_280DE1B48, sub_22877D940, MEMORY[0x277CBCD90]);
    v1 = sub_2287CAB80();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE1BA0);
    }
  }
}

void sub_22877D940(uint64_t a1)
{
  if (!qword_280DE1B40)
  {
    sub_22870D3A8(255, &qword_280DE3350, MEMORY[0x277D10D90]);
    v1 = sub_2287CACD0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE1B40);
    }
  }
}

uint64_t sub_22877D9EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22877DA34(uint64_t a1)
{
  if (!qword_280DE1BC0)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_22877F360(255, &qword_280DE1B00, &type metadata for AppSessionAnalyticsEvent.ModelAnalytics, MEMORY[0x277CBCD88]);
    sub_22877DCA4(255, &qword_280DE1A68, &type metadata for AppSessionAnalyticsEvent.ModelAnalytics);
    sub_22877DB44(&qword_280DE1B08, &qword_280DE1B00, v1, MEMORY[0x277CBCD90]);
    sub_22877DD80(&qword_280DE1A70, &qword_280DE1A68, &type metadata for AppSessionAnalyticsEvent.ModelAnalytics);
    v2 = sub_2287CAB60();
    if (!v3)
    {
      atomic_store(v2, &qword_280DE1BC0);
    }
  }
}

uint64_t sub_22877DB44(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, ValueMetadata *, unint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22877F360(255, a2, &type metadata for AppSessionAnalyticsEvent.ModelAnalytics, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22877DBC8(uint64_t a1)
{
  if (!qword_280DE1BD0)
  {
    sub_22877F360(255, &qword_280DE1B10, &type metadata for AppSessionAnalyticsEvent.HighlightsFeedInteractionAnalytics, MEMORY[0x277CBCD88]);
    sub_22877DCA4(255, &qword_280DE1A78, &type metadata for AppSessionAnalyticsEvent.HighlightsFeedInteractionAnalytics);
    sub_22877DD04();
    sub_22877DD80(&qword_280DE1A80, &qword_280DE1A78, &type metadata for AppSessionAnalyticsEvent.HighlightsFeedInteractionAnalytics);
    v1 = sub_2287CAB60();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE1BD0);
    }
  }
}

void sub_22877DCA4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2287CADD0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_22877DD04()
{
  result = qword_280DE1B18;
  if (!qword_280DE1B18)
  {
    sub_22877F360(255, &qword_280DE1B10, &type metadata for AppSessionAnalyticsEvent.HighlightsFeedInteractionAnalytics, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE1B18);
  }

  return result;
}

uint64_t sub_22877DD80(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_22877DCA4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22877DDD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    sub_22870D3A8(255, &qword_280DE3350, MEMORY[0x277D10D90]);
    a4();
    v6 = sub_2287CAB50();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_22877DE9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_228706AD4(&v12, v10 + 40 * a1 + 32);
}

id sub_22877DF34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v13 = *(a1 + 24);
  v6 = *(a1 + 32);
  a2[3] = &type metadata for AppSessionAnalyticsEvent.ModelAnalytics;
  a2[4] = sub_22877F0F4();
  v7 = swift_allocObject();
  *a2 = v7;
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v5;
  v7[5] = v13;
  v7[6] = v6;
  v8 = v6;
  v9 = v3;
  v10 = v4;
  v11 = v5;

  return v13;
}

id sub_22877E014@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v6 = *(a1 + 8);
  a2[3] = &type metadata for AppSessionAnalyticsEvent.HighlightsFeedInteractionAnalytics;
  a2[4] = sub_22877F4A0();
  *a2 = v3;
  a2[1] = v6;
  v4 = v3;

  return v6;
}

uint64_t sub_22877E0B0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_22877DDD0(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22877E108()
{
  result = qword_27D850E20;
  if (!qword_27D850E20)
  {
    sub_22877F53C(255, &qword_280DE0680, sub_22877D8A0, sub_22877D9B8, MEMORY[0x277D10DC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850E20);
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_22877E1D8(id result)
{
  if (result != 2)
  {
    return sub_22877E1E8(result);
  }

  return result;
}

id sub_22877E1E8(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_22877E1F8()
{
  if (!qword_27D850E28)
  {
    v0 = sub_2287CB820();
    if (!v1)
    {
      atomic_store(v0, &qword_27D850E28);
    }
  }
}

void sub_22877E248(id result)
{
  if (result != 2)
  {
    sub_22877E258(result);
  }
}

void sub_22877E258(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_22877E268(uint64_t a1, uint64_t a2)
{
  sub_228705C84(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22877E52C(uint64_t a1)
{
  sub_22877F208(319, &qword_280DE1208, sub_228705C84, MEMORY[0x277D11E70]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_22877E6EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22877E74C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22877F208(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_22877E7CC()
{
  result = qword_280DE2AA8[0];
  if (!qword_280DE2AA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DE2AA8);
  }

  return result;
}

uint64_t sub_22877E820(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22877F53C(0, &qword_280DDFE78, type metadata accessor for HKProfileType, sub_22877F5BC, MEMORY[0x277D84098]);
    v3 = sub_2287CB9F0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      sub_2287CBD80();
      MEMORY[0x22AABF460](v10);
      result = sub_2287CBDB0();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_22877E994(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = *(a1 + 16);
  if (!v35)
  {
LABEL_16:

    return;
  }

  v7 = 0;
  v8 = (a1 + 48);
  while (1)
  {
    if (v7 >= *(a1 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:

      sub_2287CBD30();
      __break(1u);
      goto LABEL_24;
    }

    v9 = *(v8 - 1);
    v11 = *v8;
    v40 = *(v8 - 2);
    v10 = v40;
    v41 = v9;
    v42 = v11;
    v12 = *a3;

    v13 = v11;
    v14 = sub_22870304C(v10, v9);
    v16 = v12[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      goto LABEL_21;
    }

    v20 = v15;
    if (v12[3] >= v19)
    {
      break;
    }

    sub_2287BAECC(v19, a2 & 1);
    v14 = sub_22870304C(v10, v9);
    if ((v20 & 1) != (v21 & 1))
    {
      goto LABEL_23;
    }

LABEL_10:
    if (v20)
    {
      goto LABEL_11;
    }

LABEL_14:
    v28 = *a3;
    *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
    v29 = (v28[6] + 16 * v14);
    *v29 = v10;
    v29[1] = v9;
    *(v28[7] + 8 * v14) = v13;
    v30 = v28[2];
    v18 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v18)
    {
      goto LABEL_22;
    }

    v28[2] = v31;
LABEL_3:
    ++v7;
    v8 += 3;
    a2 = 1;
    if (v35 == v7)
    {
      goto LABEL_16;
    }
  }

  if (a2)
  {
    goto LABEL_10;
  }

  v27 = v14;
  sub_2287BBD5C();
  v14 = v27;
  if ((v20 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v22 = *a3;
  v23 = v14;
  v39 = *(*(*a3 + 56) + 8 * v14);
  v24 = v39;
  sub_22877BBBC(&v39, &v42, a4, a5, v38);
  if (!v36)
  {

    v25 = v22[7];
    v26 = *(v25 + 8 * v23);
    *(v25 + 8 * v23) = v38[0];

    goto LABEL_3;
  }

  v39 = v36;
  v32 = v36;
  sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_24:
  v38[0] = 0;
  v38[1] = 0xE000000000000000;
  sub_2287CBA20();
  MEMORY[0x22AABE980](0xD00000000000001BLL, 0x80000002287D1F20);
  sub_2287CBB30();
  MEMORY[0x22AABE980](39, 0xE100000000000000);

  sub_2287CBB90();
  __break(1u);
}

uint64_t sub_22877ECCC(uint64_t a1)
{
  v2 = sub_2287C9860();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v36 = &v29 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_22877F53C(0, &unk_280DE35D0, MEMORY[0x277CC99D0], sub_22877EFF8, MEMORY[0x277D84098]);
    v9 = sub_2287CB9F0();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v34 = v12;
    v35 = v9 + 56;
    v32 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    v30 = v8;
    v31 = (v11 + 16);
    while (1)
    {
      v33 = v10;
      v34(v36, v32 + v13 * v10, v2);
      sub_22877EFF8();
      v15 = sub_2287CB1B0();
      v16 = ~(-1 << *(v9 + 32));
      v17 = v15 & v16;
      v18 = (v15 & v16) >> 6;
      v19 = *(v35 + 8 * v18);
      v20 = 1 << (v15 & v16);
      if ((v20 & v19) != 0)
      {
        do
        {
          v21 = v11;
          v34(v6, *(v9 + 48) + v17 * v13, v2);
          sub_22877D9EC(&qword_280DE17D0, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v22 = sub_2287CB200();
          v23 = *v14;
          (*v14)(v6, v2);
          if (v22)
          {
            v23(v36, v2);
            v11 = v21;
            v8 = v30;
            goto LABEL_4;
          }

          v17 = (v17 + 1) & v16;
          v18 = v17 >> 6;
          v19 = *(v35 + 8 * (v17 >> 6));
          v20 = 1 << v17;
          v11 = v21;
        }

        while (((1 << v17) & v19) != 0);
        v8 = v30;
      }

      v24 = v36;
      *(v35 + 8 * v18) = v20 | v19;
      result = (*v31)(*(v9 + 48) + v17 * v13, v24, v2);
      v26 = *(v9 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      *(v9 + 16) = v28;
LABEL_4:
      v10 = v33 + 1;
      if (v33 + 1 == v8)
      {
        return v9;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void sub_22877F07C(uint64_t a1)
{
  if (!qword_280DE18B0)
  {
    sub_228703004(255, &qword_280DE39B8, 0x277D82BB8);
    v1 = sub_2287CBC00();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE18B0);
    }
  }
}

unint64_t sub_22877F0F4()
{
  result = qword_280DE2A90;
  if (!qword_280DE2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE2A90);
  }

  return result;
}

unint64_t sub_22877F148()
{
  result = qword_280DE0F80;
  if (!qword_280DE0F80)
  {
    type metadata accessor for AppSessionAnalyticsManager();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DE0F80);
  }

  return result;
}

unint64_t sub_22877F18C()
{
  result = qword_280DE1030;
  if (!qword_280DE1030)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DE1030);
  }

  return result;
}

void sub_22877F208(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22877F26C(uint64_t a1)
{
  if (!qword_280DE02B0)
  {
    v1 = MEMORY[0x277CBCEA8];
    sub_22877F360(255, &qword_280DE1A48, &type metadata for AppSessionAnalyticsEvent.ModelAnalytics, MEMORY[0x277CBCEA8]);
    sub_228703004(255, &qword_280DE39D0, 0x277D85C78);
    sub_22877DB44(&qword_280DE1A50, &qword_280DE1A48, v1, MEMORY[0x277CBCEB0]);
    sub_22871EC78();
    v2 = sub_2287CAC60();
    if (!v3)
    {
      atomic_store(v2, &qword_280DE02B0);
    }
  }
}

void sub_22877F360(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v8 = sub_22877C950();
    v9 = a4(a1, a3, &type metadata for AppSessionAnalyticsEvent.Failure, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_22877F3CC(uint64_t a1)
{
  if (!qword_280DE03D0)
  {
    sub_22877F26C(255);
    sub_228703004(255, &qword_280DE39D0, 0x277D85C78);
    sub_22877D9EC(&qword_280DE02B8, sub_22877F26C, MEMORY[0x277CBCD60]);
    sub_22871EC78();
    v1 = sub_2287CABD0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE03D0);
    }
  }
}

unint64_t sub_22877F4A0()
{
  result = qword_280DE2C88;
  if (!qword_280DE2C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE2C88);
  }

  return result;
}

unint64_t sub_22877F4F4()
{
  result = qword_27D850E30;
  if (!qword_27D850E30)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27D850E30);
  }

  return result;
}

void sub_22877F53C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_22877F5F4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_22877F7EC@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = *v2;
  a2[3] = &type metadata for DispatchQueueGeneratorScheduler;
  a2[4] = sub_228741120();
  v6 = swift_allocObject();
  *a2 = v6;
  v6[5] = type metadata accessor for CommitRedirectingFeedItemContext();
  v6[6] = a1;
  v6[2] = v5;
}

uint64_t sub_22877F998(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(*v3 + 40);
  v6 = *(*v3 + 48);
  __swift_project_boxed_opaque_existential_1((*v3 + 16), v5);
  return a3(v5, v6);
}

void sub_22877FA00()
{
  v0 = *MEMORY[0x277CCE378];
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = v0;
  v3 = [v1 initWithSuiteName_];

  if (v3)
  {
    sub_228780FDC(0);
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    qword_280DE3340 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static BundleFeedItemPluginBundleProvider.sharedInstance.getter()
{
  if (qword_280DE3338 != -1)
  {
    swift_once();
  }
}

id sub_22877FAF8()
{
  result = *(v0 + 40);
  if (result == 1)
  {
    swift_beginAccess();
    result = [*(v0 + 16) principalClass];
    if (result)
    {
      result = swift_getObjCClassMetadata();
    }

    *(v0 + 40) = result;
  }

  return result;
}

uint64_t (*sub_22877FB58(id *a1))()
{
  a1[1] = v1;
  *a1 = sub_22877FAF8();
  return sub_22877FBA0;
}

uint64_t sub_22877FBAC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_2287CAA50();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v39[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v39[-1] - v10;
  if (sub_22877FAF8())
  {
    v12 = swift_conformsToProtocol2();
    if (v12)
    {
      MEMORY[0x28223BE20](v12);
      sub_2287010E4(a1, v39);
      sub_2287CA520();
      sub_2287809DC();
      if (swift_dynamicCast())
      {
        return v39[0];
      }

      sub_2287CA9D0();
      v35 = sub_2287CAA40();
      v36 = sub_2287CB5F0();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_2286FF000, v35, v36, "Principal class is not operation-backed", v37, 2u);
        MEMORY[0x22AABFD90](v37, -1, -1);
      }

      v33 = *(v6 + 8);
      v34 = v11;
      goto LABEL_11;
    }
  }

  sub_2287CA9D0();

  v14 = sub_2287CAA40();
  v15 = sub_2287CB5F0();

  if (!os_log_type_enabled(v14, v15))
  {

    v33 = *(v6 + 8);
    v34 = v9;
LABEL_11:
    v33(v34, v5);
    return 0;
  }

  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  v40 = v17;
  *v16 = 136446978;
  v39[0] = v4;
  swift_getMetatypeMetadata();
  v18 = sub_2287CB250();
  v20 = sub_2287031D8(v18, v19, &v40);
  v38 = v5;
  v21 = v20;

  *(v16 + 4) = v21;
  *(v16 + 12) = 2082;
  swift_beginAccess();
  v22 = v2[3];
  v23 = v2[4];

  v24 = sub_2287031D8(v22, v23, &v40);

  *(v16 + 14) = v24;
  *(v16 + 22) = 2082;
  v39[5] = v2[5];
  sub_228780984(0);
  v25 = sub_2287CB250();
  v27 = sub_2287031D8(v25, v26, &v40);

  *(v16 + 24) = v27;
  *(v16 + 32) = 2082;
  swift_beginAccess();
  v28 = [v2[2] bundlePath];
  v29 = sub_2287CB220();
  v31 = v30;

  v32 = sub_2287031D8(v29, v31, &v40);

  *(v16 + 34) = v32;
  _os_log_impl(&dword_2286FF000, v14, v15, "[%{public}s]: Bundle %{public}s principal class %{public}s does not conform to FeedItemGenerator protocol. Location: %{public}s", v16, 0x2Au);
  swift_arrayDestroy();
  MEMORY[0x22AABFD90](v17, -1, -1);
  MEMORY[0x22AABFD90](v16, -1, -1);

  (*(v6 + 8))(v9, v38);
  return 0;
}

double sub_228780020@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_2287CAA50();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v52 - v10;
  v12 = sub_22877FAF8();
  if (v12)
  {
    v13 = v12;
    if (swift_conformsToProtocol2())
    {

      v15 = sub_228780B9C(v14);

      *(a1 + 24) = type metadata accessor for GenerationOperationToPluginDelegateAdaptor();
      *(a1 + 32) = sub_228780F94(qword_280DE1D60, 255, type metadata accessor for GenerationOperationToPluginDelegateAdaptor, "eܤYlc");
      *a1 = v15;
      return result;
    }

    v33 = swift_conformsToProtocol2();
    if (v33)
    {
      *(a1 + 24) = v13;
      *(a1 + 32) = v33;
      __swift_allocate_boxed_opaque_existential_0(a1);
      sub_2287C9950();
      return result;
    }

    sub_2287CA9D0();

    v34 = sub_2287CAA40();
    v35 = sub_2287CB5F0();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v57 = v53;
      *v36 = 136446978;
      v56 = v4;
      swift_getMetatypeMetadata();
      v37 = sub_2287CB250();
      v39 = sub_2287031D8(v37, v38, &v57);

      *(v36 + 4) = v39;
      v54 = v6;
      *(v36 + 12) = 2082;
      swift_beginAccess();
      v40 = v2[3];
      v41 = v2[4];

      v42 = sub_2287031D8(v40, v41, &v57);

      *(v36 + 14) = v42;
      *(v36 + 22) = 2082;
      v55 = v2[5];
      sub_228780984(0);
      v43 = sub_2287CB250();
      v45 = sub_2287031D8(v43, v44, &v57);

      *(v36 + 24) = v45;
      *(v36 + 32) = 2082;
      swift_beginAccess();
      v46 = [v2[2] bundlePath];
      v47 = sub_2287CB220();
      v49 = v48;

      v50 = sub_2287031D8(v47, v49, &v57);

      *(v36 + 34) = v50;
      _os_log_impl(&dword_2286FF000, v34, v35, "[%{public}s]: Bundle %{public}s principal class %{public}s does not conform to FeedItemGenerator or HealthPluginDelegate protocol. Location: %{public}s", v36, 0x2Au);
      v51 = v53;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v51, -1, -1);
      MEMORY[0x22AABFD90](v36, -1, -1);

      (*(v54 + 8))(v11, v5);
    }

    else
    {

      (*(v6 + 8))(v11, v5);
    }
  }

  else
  {
    sub_2287CA9D0();

    v17 = sub_2287CAA40();
    v18 = sub_2287CB5F0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v54 = v6;
      v21 = v20;
      v57 = v20;
      *v19 = 136446722;
      v56 = v4;
      swift_getMetatypeMetadata();
      v22 = sub_2287CB250();
      v24 = sub_2287031D8(v22, v23, &v57);

      *(v19 + 4) = v24;
      v53 = v5;
      *(v19 + 12) = 2082;
      swift_beginAccess();
      v25 = v2[3];
      v26 = v2[4];

      v27 = sub_2287031D8(v25, v26, &v57);

      *(v19 + 14) = v27;
      *(v19 + 22) = 2082;
      swift_beginAccess();
      v28 = [v2[2] bundlePath];
      v29 = sub_2287CB220();
      v31 = v30;

      v32 = sub_2287031D8(v29, v31, &v57);

      *(v19 + 24) = v32;
      _os_log_impl(&dword_2286FF000, v17, v18, "[%{public}s]: Bundle %{public}s doesn't have a principal class. Location: %{public}s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v21, -1, -1);
      MEMORY[0x22AABFD90](v19, -1, -1);

      (*(v54 + 8))(v9, v53);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void *BundleFeedItemGenerationPluginInfo.__allocating_init(bundle:)(void *a1)
{
  swift_allocObject();
  v2 = sub_228780A58(a1);

  return v2;
}

void *BundleFeedItemGenerationPluginInfo.init(bundle:)(void *a1)
{
  v2 = sub_228780A58(a1);

  return v2;
}

uint64_t BundleFeedItemGenerationPluginInfo.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *(*sub_228780728(id *a1))(void *result)
{
  a1[1] = *v1;
  *a1 = sub_22877FAF8();
  return sub_22878106C;
}

void sub_2287807BC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for BundleFeedItemGenerationPluginInfo();
  swift_allocObject();
  v4 = sub_228780A58(a1);

  *a2 = v4;
}

uint64_t BundleFeedItemGenerationPluginInfo.description.getter()
{
  sub_2287CBA20();
  MEMORY[0x22AABE980](60, 0xE100000000000000);
  sub_228780CE0(0, v1);
  v2 = sub_2287CB250();
  MEMORY[0x22AABE980](v2);

  MEMORY[0x22AABE980](32, 0xE100000000000000);
  sub_2287CBB30();
  MEMORY[0x22AABE980](0xD000000000000014, 0x80000002287D22C0);
  swift_beginAccess();
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);

  MEMORY[0x22AABE980](v4, v3);

  MEMORY[0x22AABE980](62, 0xE100000000000000);
  return 0;
}

void sub_228780984(uint64_t a1)
{
  if (!qword_280DDFE00)
  {
    sub_2287150D0();
    v1 = sub_2287CB820();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDFE00);
    }
  }
}

unint64_t sub_2287809DC()
{
  result = qword_280DE3368;
  if (!qword_280DE3368)
  {
    sub_228703004(255, &qword_280DE19B8, 0x277CCABD0);
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DE3368);
  }

  return result;
}

void *sub_228780A58(void *a1)
{
  v1[5] = 1;
  v1[2] = a1;
  v2 = a1;
  v3 = [v2 bundleIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2287CB220();
    v7 = v6;

    v1[3] = v5;
    v1[4] = v7;
    return v1;
  }

  else
  {
    sub_2287CBA20();

    v9 = [v2 description];
    v10 = sub_2287CB220();
    v12 = v11;

    MEMORY[0x22AABE980](v10, v12);

    MEMORY[0x22AABE980](0xD00000000000001BLL, 0x80000002287D1460);
    result = sub_2287CBB90();
    __break(1u);
  }

  return result;
}

uint64_t sub_228780B9C(uint64_t a1)
{
  type metadata accessor for GenerationOperationToPluginDelegateAdaptor();
  v2 = swift_allocObject();
  v5[3] = type metadata accessor for BundleFeedItemGenerationPluginInfo();
  v5[4] = sub_228780F94(&qword_280DE21E0, v3, type metadata accessor for BundleFeedItemGenerationPluginInfo, &protocol conformance descriptor for BundleFeedItemGenerationPluginInfo);
  v5[0] = a1;
  sub_2287010E4(v5, v2 + 16);
  sub_228703004(0, &qword_280DE3880, 0x277CCABD8);

  sub_2287CBA20();

  swift_beginAccess();

  MEMORY[0x22AABE980](0x746172656E65475FLL, 0xEF6575657551726FLL);
  *(v2 + 56) = sub_2287CB650();
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v2;
}

unint64_t sub_228780CE0(uint64_t a1, uint64_t a2)
{
  result = qword_280DE21D8;
  if (!qword_280DE21D8)
  {
    type metadata accessor for BundleFeedItemGenerationPluginInfo();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DE21D8);
  }

  return result;
}

uint64_t sub_228780D48(uint64_t a1, uint64_t a2)
{
  result = sub_228780F94(&qword_280DE3760, a2, type metadata accessor for BundleFeedItemGenerationPluginInfo, &protocol conformance descriptor for BundleFeedItemGenerationPluginInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_228780F94(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_228780FDC(uint64_t a1)
{
  if (!qword_280DE2D98)
  {
    v2 = type metadata accessor for BundleFeedItemGenerationPluginInfo();
    v4 = sub_228780F94(&qword_280DE3760, v3, type metadata accessor for BundleFeedItemGenerationPluginInfo, &protocol conformance descriptor for BundleFeedItemGenerationPluginInfo);
    v6 = type metadata accessor for PluginBundleProvider(a1, v2, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_280DE2D98);
    }
  }
}

void sub_228781074()
{
  sub_2287CA040();
  sub_2287CA120();
  v0 = sub_2287CB210();

  v1 = [objc_opt_self() featureWithName:v0 featureType:1];

  qword_280DE62A8 = v1;
}

id sub_2287810F4()
{
  result = [objc_opt_self() frequencyTransformWithCount:1000 minimumValidCount:100];
  qword_280DE6290 = result;
  return result;
}

void sub_228781138()
{
  if (qword_280DE11D0 != -1)
  {
    swift_once();
  }

  v0 = qword_280DE11B8;
  v1 = qword_280DE62A8;
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = qword_280DE6290;
  v3 = [v1 featureByUsingTransformer_];

  qword_280DE6298 = v3;
}

void sub_22878120C()
{
  if (qword_280DE11C0 != -1)
  {
    swift_once();
  }

  v0 = qword_280DE6298;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = sub_2287CB210();
  v7[4] = sub_228781370;
  v7[5] = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_22878141C;
  v7[3] = &block_descriptor_7;
  v4 = _Block_copy(v7);
  v5 = [v1 customTransformerWithName:v3 outputType:2 block:v4];
  _Block_release(v4);

  v6 = [v2 featureByUsingTransformer_];
  qword_280DE62A0 = v6;
}

id sub_228781370(void *a1)
{
  if ([a1 int64Value])
  {
    v2 = objc_opt_self();
  }

  else
  {
    [a1 doubleValue];
    v4 = v3;
    v2 = objc_opt_self();
    if (v4 < 0.05)
    {
      v5 = 1.0;
      goto LABEL_6;
    }
  }

  v5 = 0.0;
LABEL_6:
  v6 = [v2 featureValueWithDouble_];

  return v6;
}

id sub_22878141C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

void sub_228781484()
{
  v1 = sub_2287CA040();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2287CAA50();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9E0();
  (*(v2 + 16))(v4, v0, v1);
  v9 = sub_2287CAA40();
  v10 = sub_2287CB610();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v25 = v0;
    v12 = v11;
    v13 = swift_slowAlloc();
    v24 = v6;
    v14 = v13;
    v26 = v13;
    *v12 = 136315138;
    v15 = sub_2287CA030();
    v23 = v5;
    v17 = v16;
    (*(v2 + 8))(v4, v1);
    v18 = sub_2287031D8(v15, v17, &v26);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_2286FF000, v9, v10, "Incrementing novelty count for %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AABFD90](v14, -1, -1);
    MEMORY[0x22AABFD90](v12, -1, -1);

    (*(v24 + 8))(v8, v23);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }

  if (qword_280DE11B8 != -1)
  {
    swift_once();
  }

  v19 = qword_280DE6290;
  sub_2287CA110();
  v20 = sub_2287CB210();

  v21 = [objc_opt_self() featureValueWithString_];

  [v19 increaseCountForFeatureValue_];
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t SearchSection.localizedHeaderTitle(for:)(char a1, unsigned __int8 a2)
{
  if (a2 > 6u)
  {
    if (a2 > 9u)
    {
      if (a2 == 10)
      {
        if (qword_280DE1280 == -1)
        {
          return sub_2287C9620();
        }
      }

      else if (a2 == 11)
      {
        if (qword_280DE1280 == -1)
        {
          return sub_2287C9620();
        }
      }

      else if (qword_280DE1280 == -1)
      {
        return sub_2287C9620();
      }

      goto LABEL_40;
    }

    if (a2 - 7 >= 2)
    {
      if (qword_280DE1280 == -1)
      {
        return sub_2287C9620();
      }

      goto LABEL_40;
    }

    goto LABEL_20;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        if (qword_280DE1280 == -1)
        {
          return sub_2287C9620();
        }
      }

      else if (qword_280DE1280 == -1)
      {
        return sub_2287C9620();
      }
    }

    else if (qword_280DE1280 == -1)
    {
      return sub_2287C9620();
    }

    goto LABEL_40;
  }

  if (a2 > 4u)
  {
    if (a2 != 5)
    {
      if (qword_280DE1280 == -1)
      {
        return sub_2287C9620();
      }

      goto LABEL_40;
    }

LABEL_20:
    if (a1)
    {
      if (qword_280DE1280 == -1)
      {
        return sub_2287C9620();
      }
    }

    else if (qword_280DE1280 == -1)
    {
      return sub_2287C9620();
    }

    goto LABEL_40;
  }

  if (a2 == 3)
  {
    if (qword_280DE1280 == -1)
    {
      return sub_2287C9620();
    }

    goto LABEL_40;
  }

  if (a1)
  {
    if (qword_280DE1280 == -1)
    {
      return sub_2287C9620();
    }

    goto LABEL_40;
  }

  if (qword_280DE1280 != -1)
  {
LABEL_40:
    swift_once();
  }

  return sub_2287C9620();
}

uint64_t HKHealthStore.makePreferredTransactionPublisher()()
{
  sub_22873CD8C(0);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2287CB5B0();
  v5 = MEMORY[0x277D83940];
  sub_228783B18(0, &qword_280DE0178, &unk_280DDFF58, MEMORY[0x277D83940]);
  v6 = MEMORY[0x277D83D88];
  sub_22873AC2C(0, &qword_280DDFEB0, &qword_280DE1958, 0x277CCD940, MEMORY[0x277D83D88]);
  sub_228783BA4(&qword_280DE0180, &qword_280DE0178, &unk_280DDFF58, v5);
  sub_2287CAF70();
  sub_228783E6C(&qword_280DE05D0, sub_22873CD8C, MEMORY[0x277CBCC08]);
  v7 = sub_2287CAF40();

  (*(v2 + 8))(v4, v1);
  v11 = v7;
  sub_228783B18(0, &qword_280DE0148, &qword_280DDFEB0, v6);
  sub_228783BA4(&unk_280DE0150, &qword_280DE0148, &qword_280DDFEB0, v6);
  v8 = sub_2287CAF40();

  return v8;
}

uint64_t HKHealthStore.makeSharedSummariesFromLatestTransactionPublisher(sharedTransactionPublisher:pluginName:identifiers:objectTypes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v44 = a3;
  v45 = a4;
  v42 = a2;
  sub_22873C170(0);
  v8 = v7;
  v49 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228773BD4(0);
  v47 = v10;
  v50 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v48 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228783CDC(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228783DB4(0);
  v18 = v17;
  MEMORY[0x28223BE20](v17);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v22 = a1;
  }

  else
  {
    v40 = v19;
    v41 = v5;
    v23 = sub_2287CB5B0();
    v39 = v14;
    v51 = v23;
    v24 = MEMORY[0x277D83940];
    sub_228783B18(0, &qword_280DE0178, &unk_280DDFF58, MEMORY[0x277D83940]);
    sub_228783BA4(&qword_280DE0180, &qword_280DE0178, &unk_280DDFF58, v24);
    sub_2287CAFA0();

    v25 = MEMORY[0x277D83D88];
    sub_22873AC2C(0, &qword_280DDFEB0, &qword_280DE1958, 0x277CCD940, MEMORY[0x277D83D88]);
    sub_228783E6C(&qword_280DE0528, sub_228783DB4, MEMORY[0x277CBCC58]);
    sub_2287CAF70();
    sub_228783E6C(&qword_280DE05B0, sub_228783CDC, MEMORY[0x277CBCC08]);
    v26 = sub_2287CAF40();
    (*(v39 + 8))(v16, v13);
    (*(v40 + 8))(v21, v18);
    v51 = v26;
    sub_228783B18(0, &qword_280DE0148, &qword_280DDFEB0, v25);
    sub_228783BA4(&unk_280DE0150, &qword_280DE0148, &qword_280DDFEB0, v25);
    v22 = sub_2287CAF40();
  }

  v51 = v22;
  v27 = MEMORY[0x277D83D88];
  sub_228783B18(0, &qword_280DE0148, &qword_280DDFEB0, MEMORY[0x277D83D88]);
  sub_228783BA4(&unk_280DE0150, &qword_280DE0148, &qword_280DDFEB0, v27);

  v28 = v46;
  sub_2287CAFA0();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  v31 = v42;
  v30[2] = v29;
  v30[3] = v31;
  v32 = v45;
  v30[4] = v44;
  v30[5] = v32;
  v30[6] = v43;

  sub_2287CACC0();
  sub_22873AC2C(0, &qword_280DE19D0, &qword_280DE1988, 0x277CCD928, MEMORY[0x277D83940]);
  v33 = MEMORY[0x277CBCD88];
  sub_228783BF4(0, &qword_280DE1A90, MEMORY[0x277CBCD88]);
  sub_228783E6C(&qword_280DE0518, sub_22873C170, MEMORY[0x277CBCC58]);
  sub_228783C98(&qword_280DE1A98, &qword_280DE1A90, v33, MEMORY[0x277CBCD90]);
  v34 = v48;
  sub_2287CAFE0();

  (*(v49 + 8))(v28, v8);
  sub_228783E6C(&qword_280DE0428, sub_228773BD4, MEMORY[0x277CBCCE0]);
  v35 = v47;
  v36 = sub_2287CAF40();

  (*(v50 + 8))(v34, v35);
  return v36;
}

uint64_t HKHealthStore.makeSharedSummariesStreamPublisher(sharedTransactionPublisher:pluginName:identifiers:objectTypes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  sub_22873AB44(0);
  v46 = v12;
  v44 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v42 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228773D34(0);
  v47 = v14;
  v45 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v43 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873CD8C(0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  if (a1)
  {
    v21 = a1;
  }

  else
  {
    v40 = a3;
    v48 = sub_2287CB5B0();
    v22 = MEMORY[0x277D83940];
    sub_228783B18(0, &qword_280DE0178, &unk_280DDFF58, MEMORY[0x277D83940]);
    v38[1] = v6;
    v23 = MEMORY[0x277D83D88];
    sub_22873AC2C(0, &qword_280DDFEB0, &qword_280DE1958, 0x277CCD940, MEMORY[0x277D83D88]);
    v39 = a2;
    sub_228783BA4(&qword_280DE0180, &qword_280DE0178, &unk_280DDFF58, v22);
    sub_2287CAF70();
    sub_228783E6C(&qword_280DE05D0, sub_22873CD8C, MEMORY[0x277CBCC08]);
    v24 = sub_2287CAF40();

    (*(v18 + 8))(v20, v17);
    v48 = v24;
    sub_228783B18(0, &qword_280DE0148, &qword_280DDFEB0, v23);
    sub_228783BA4(&unk_280DE0150, &qword_280DE0148, &qword_280DDFEB0, v23);
    a2 = v39;
    v25 = sub_2287CAF40();
    a3 = v40;
    v21 = v25;
  }

  v40 = v21;
  v48 = v21;
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = a2;
  v27[4] = a3;
  v27[5] = a4;
  v27[6] = a5;
  v28 = MEMORY[0x277D83D88];
  sub_228783B18(0, &qword_280DE0148, &qword_280DDFEB0, MEMORY[0x277D83D88]);
  v29 = MEMORY[0x277CBCD88];
  sub_228783BF4(0, &qword_280DE1A90, MEMORY[0x277CBCD88]);
  sub_228783BA4(&unk_280DE0150, &qword_280DE0148, &qword_280DDFEB0, v28);

  v30 = v42;
  sub_2287CAF70();

  v31 = sub_228783E6C(&qword_280DE05C0, sub_22873AB44, MEMORY[0x277CBCC08]);
  v32 = sub_228783C98(&qword_280DE1A98, &qword_280DE1A90, v29, MEMORY[0x277CBCD90]);
  v33 = v43;
  v34 = v46;
  MEMORY[0x22AABE600](v46, v31, v32);
  (*(v44 + 8))(v30, v34);
  sub_228783E6C(&qword_280DE06B0, sub_228773D34, MEMORY[0x277CBCBB0]);
  v35 = v47;
  v36 = sub_2287CAF40();

  (*(v45 + 8))(v33, v35);
  return v36;
}

uint64_t sub_228782F1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a5;
  v30[1] = a3;
  v30[2] = a4;
  v30[0] = a2;
  sub_228783EDC(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228783BF4(0, &qword_280DDFE10, MEMORY[0x277CBCF38]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = v30 - v14;
  v16 = sub_2287CAA50();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v20 = a1;
    v33 = sub_2287CB5A0();
    v21 = MEMORY[0x277CBCD88];
    sub_228783BF4(0, &qword_280DE1A90, MEMORY[0x277CBCD88]);
    sub_228783C98(&qword_280DE1A98, &qword_280DE1A90, v21, MEMORY[0x277CBCD90]);
    sub_228783F60();
    v22 = sub_2287CAE60();

    v33 = v22;
    v23 = sub_2287CAF40();
  }

  else
  {
    v31 = v8;
    v32 = v13;
    v24 = v7;
    v25 = v12;
    sub_2287CAA20();
    v26 = sub_2287CAA40();
    v27 = sub_2287CB610();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2286FF000, v26, v27, "[Transaction] Transaction does not exist. Returning 0 summaries", v28, 2u);
      MEMORY[0x22AABFD90](v28, -1, -1);
    }

    (*(v17 + 8))(v19, v16);
    v33 = MEMORY[0x277D84F90];
    sub_22873AC2C(0, &qword_280DE19D0, &qword_280DE1988, 0x277CCD928, MEMORY[0x277D83940]);
    sub_2287CADB0();
    sub_22874A0A4();
    sub_2287CAD80();
    (*(v31 + 8))(v10, v24);
    sub_228783C98(&qword_280DDFE18, &qword_280DDFE10, MEMORY[0x277CBCF38], MEMORY[0x277CBCF40]);
    v23 = sub_2287CAF40();
    (*(v32 + 8))(v15, v25);
  }

  return v23;
}

uint64_t HKHealthStore.makeLatestTransactionPublisher()()
{
  sub_228783CDC(0);
  v15 = v0;
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228783DB4(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2287CB5B0();
  v9 = MEMORY[0x277D83940];
  sub_228783B18(0, &qword_280DE0178, &unk_280DDFF58, MEMORY[0x277D83940]);
  sub_228783BA4(&qword_280DE0180, &qword_280DE0178, &unk_280DDFF58, v9);
  sub_2287CAFA0();

  v10 = MEMORY[0x277D83D88];
  sub_22873AC2C(0, &qword_280DDFEB0, &qword_280DE1958, 0x277CCD940, MEMORY[0x277D83D88]);
  sub_228783E6C(&qword_280DE0528, sub_228783DB4, MEMORY[0x277CBCC58]);
  sub_2287CAF70();
  sub_228783E6C(&qword_280DE05B0, sub_228783CDC, MEMORY[0x277CBCC08]);
  v11 = v15;
  v12 = sub_2287CAF40();
  (*(v1 + 8))(v3, v11);
  (*(v6 + 8))(v8, v5);
  v16 = v12;
  sub_228783B18(0, &qword_280DE0148, &qword_280DDFEB0, v10);
  sub_228783BA4(&unk_280DE0150, &qword_280DE0148, &qword_280DDFEB0, v10);
  v13 = sub_2287CAF40();

  return v13;
}

uint64_t Publisher<>.filterAndSelectPreferredTransaction()(uint64_t a1, uint64_t a2)
{
  sub_22873AC2C(255, &qword_280DDFEB0, &qword_280DE1958, 0x277CCD940, MEMORY[0x277D83D88]);
  v2 = sub_2287CAB50();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  sub_2287CAF70();
  swift_getWitnessTable();
  v6 = sub_2287CAF40();
  (*(v3 + 8))(v5, v2);
  return v6;
}

void sub_2287837EC(void **a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v25 = a5;
  v26 = a6;
  v27 = a7;
  sub_228783EDC(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228783BF4(0, &qword_280DDFE10, MEMORY[0x277CBCF38]);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v24 - v18;
  v20 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = sub_228782F1C(v20, a3, a4, v25, v26);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
    sub_22873AC2C(0, &qword_280DE19D0, &qword_280DE1988, 0x277CCD928, MEMORY[0x277D83940]);
    sub_2287CADB0();
    sub_22874A0A4();
    sub_2287CAD80();
    (*(v12 + 8))(v14, v11);
    sub_228783C98(&qword_280DDFE18, &qword_280DDFE10, MEMORY[0x277CBCF38], MEMORY[0x277CBCF40]);
    v23 = sub_2287CAF40();
    (*(v17 + 8))(v19, v16);
  }

  *v27 = v23;
}

uint64_t sub_228783A90@<X0>(uint64_t *a1@<X8>)
{
  sub_22873AC2C(0, &unk_280DDFF58, &qword_280DE1958, 0x277CCD940, MEMORY[0x277D83940]);
  sub_228783FE4();
  result = sub_2287CB500();
  *a1 = result;
  return result;
}

void sub_228783B18(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_22873AC2C(255, a3, &qword_280DE1958, 0x277CCD940, a4);
    sub_22874A0A4();
    v5 = sub_2287CACD0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_228783BA4(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_228783B18(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_228783BF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_22873AC2C(255, &qword_280DE19D0, &qword_280DE1988, 0x277CCD928, MEMORY[0x277D83940]);
    v7 = v6;
    v8 = sub_22874A0A4();
    v9 = a3(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_228783C98(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_228783BF4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_228783CDC(uint64_t a1)
{
  if (!qword_280DE05A8)
  {
    sub_228783DB4(255);
    sub_22873AC2C(255, &qword_280DDFEB0, &qword_280DE1958, 0x277CCD940, MEMORY[0x277D83D88]);
    sub_228783E6C(&qword_280DE0528, sub_228783DB4, MEMORY[0x277CBCC58]);
    v1 = sub_2287CAB50();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE05A8);
    }
  }
}

void sub_228783DB4(uint64_t a1)
{
  if (!qword_280DE0520)
  {
    v1 = MEMORY[0x277D83940];
    sub_228783B18(255, &qword_280DE0178, &unk_280DDFF58, MEMORY[0x277D83940]);
    sub_228783BA4(&qword_280DE0180, &qword_280DE0178, &unk_280DDFF58, v1);
    v2 = sub_2287CAB70();
    if (!v3)
    {
      atomic_store(v2, &qword_280DE0520);
    }
  }
}

uint64_t sub_228783E6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_228783EDC(uint64_t a1)
{
  if (!qword_280DE00A0)
  {
    sub_22873AC2C(255, &qword_280DE19D0, &qword_280DE1988, 0x277CCD928, MEMORY[0x277D83940]);
    v1 = sub_2287CADA0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE00A0);
    }
  }
}

unint64_t sub_228783F60()
{
  result = qword_280DDFF90;
  if (!qword_280DDFF90)
  {
    sub_22873AC2C(255, &qword_280DE19D0, &qword_280DE1988, 0x277CCD928, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDFF90);
  }

  return result;
}

unint64_t sub_228783FE4()
{
  result = qword_27D850E38;
  if (!qword_27D850E38)
  {
    sub_22873AC2C(255, &unk_280DDFF58, &qword_280DE1958, 0x277CCD940, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850E38);
  }

  return result;
}

uint64_t Feed.isTooOldForDisplay.getter()
{
  sub_228705B74(0, &qword_280DE3A98, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_2287C97C0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v11 = sub_2287CA600();
  Feed.Kind.earliestDisplayDateUpdated.getter(v11, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_22878DA04(v3, &qword_280DE3A98, MEMORY[0x277CC9578]);
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    v12 = [v0 dateUpdated];
    sub_2287C97A0();

    LOBYTE(v12) = sub_2287C9780();
    v13 = *(v5 + 8);
    v13(v8, v4);
    v13(v10, v4);
    if (v12)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_228784298(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_2287042D4(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_22870317C(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2287042D4((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *Feed.findSection(for:)(uint64_t a1)
{
  if (((1 << sub_2287CA600()) & 0x17) != 0)
  {

    return sub_22878883C();
  }

  else
  {
    v2 = sub_2287CA600();

    return sub_22878AD68(v2);
  }
}

uint64_t sub_22878441C()
{
  v1 = [v0 feedItems];
  sub_2287CA800();
  v2 = sub_2287CB580();

  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2287CB920())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x22AABF120](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v5 setSectionSortOrder_];

      ++v4;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

uint64_t sub_228784538(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_2287CB920();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_228725020(a1, a2);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_2287CB920() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_2287CB920();
  v2 = sub_228725258(v5, v6);
LABEL_10:

  return sub_228725A28(a1, v2);
}

uint64_t sub_22878462C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_2287CBD80();
  sub_2287CB290();
  v6 = sub_2287CBDB0();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_2287CBD00() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_228784724(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_2287CBD80();
  MEMORY[0x22AABF460](a1);
  v4 = sub_2287CBDB0();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_2287847F0(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_2287CB960();
  }

  else if (*(a2 + 16) && (sub_228703004(0, &qword_280DE3870, 0x277CCD7C8), v5 = sub_2287CB7E0(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_2287CB7F0();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_228784920(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, BOOL, uint64_t))
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_2287CB8C0();
    v7 = v6;
    v8 = sub_2287CB970();
    v10 = v9;
    v11 = MEMORY[0x22AABEFC0](v5, v7, v8, v9);
    sub_228717DF8(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_228717DF8(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v5 = sub_2287CB890();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  v13 = a2(v5, v7, v4 != 0, a1);
  sub_228717DF8(v5, v7, v4 != 0);
  return v13;
}

void sub_228784A44()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_2287CB920())
  {
    if (sub_2287CB920())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x22AABF120](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_2287CB920();
LABEL_13:
      if (v3)
      {
        sub_228750C04(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_228784B1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_2287134C0(0, v1, 0);
    v2 = v14;
    sub_22872C748(0);
    sub_228714F50(0);
    v4 = (a1 + 48);
    do
    {
      v5 = *v4;

      v6 = v5;
      swift_dynamicCast();
      v7 = v13;
      v9 = *(v14 + 16);
      v8 = *(v14 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_2287134C0((v8 > 1), v9 + 1, 1);
        v7 = v13;
      }

      *(v14 + 16) = v9 + 1;
      v10 = v14 + 24 * v9;
      *(v10 + 32) = v12;
      *(v10 + 40) = v7;
      v4 += 3;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_228784C48(unint64_t a1, uint64_t (*a2)(void))
{
  if (a1 >> 62)
  {
    v4 = sub_2287CB920();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v15 = MEMORY[0x277D84F90];
  result = sub_22871353C(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        MEMORY[0x22AABF120](i, a1);
        a2(0);
        swift_dynamicCast();
        v15 = v5;
        v9 = *(v5 + 16);
        v8 = *(v5 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_22871353C((v8 > 1), v9 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v9 + 1;
        sub_22873E2D8(v14, (v5 + 32 * v9 + 32));
      }
    }

    else
    {
      v10 = (a1 + 32);
      a2(0);
      do
      {
        v11 = *v10;
        swift_dynamicCast();
        v15 = v5;
        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_22871353C((v12 > 1), v13 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v13 + 1;
        sub_22873E2D8(v14, (v5 + 32 * v13 + 32));
        ++v10;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_228784E20(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_2287135AC(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    sub_22874FDD4();
    sub_2287150D0();
    do
    {
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2287135AC((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_228784F20(unsigned int a1, unint64_t a2, unint64_t a3, void *a4)
{
  v5 = v4;
  v218 = a4;
  v223 = a3;
  v203 = a1;
  v7 = sub_2287CAA50();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v201 = &v200 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v209 = &v200 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v208 = &v200 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v206 = &v200 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v210 = &v200 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v222 = &v200 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v224 = &v200 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v200 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v200 - v26;
  sub_2287CA9E0();
  swift_bridgeObjectRetain_n();
  v28 = sub_2287CAA40();
  v29 = sub_2287CB610();
  v30 = os_log_type_enabled(v28, v29);
  v219 = v7;
  v205 = v8;
  v221 = v5;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v225[0] = v32;
    *v31 = 136315650;
    v33 = sub_2287CBE60();
    v35 = sub_2287031D8(v33, v34, v225);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2050;
    if (a2 >> 62)
    {
      v36 = sub_2287CB920();
    }

    else
    {
      v36 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v37 = v223;

    *(v31 + 14) = v36;

    *(v31 + 22) = 2082;
    v38 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
    v40 = sub_2287031D8(v38, v39, v225);

    *(v31 + 24) = v40;
    _os_log_impl(&dword_2286FF000, v28, v29, "[%s]: %{public}ld REElements retrieved from RelevanceEngine for feed %{public}s", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v32, -1, -1);
    MEMORY[0x22AABFD90](v31, -1, -1);

    v7 = v219;
    v220 = *(v205 + 8);
    v220(v27, v219);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v220 = *(v8 + 8);
    v220(v27, v7);
    v37 = v223;
  }

  v41 = sub_22878AFA8();
  v216 = v41;
  if (v41)
  {
    v42 = v41;
    sub_2287CA9E0();

    v43 = sub_2287CAA40();
    v44 = sub_2287CB610();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = v42;
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v225[0] = v47;
      *v46 = 136315394;
      v48 = sub_2287CBE60();
      v50 = sub_2287031D8(v48, v49, v225);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2082;
      v51 = MEMORY[0x22AABEA80](v45, MEMORY[0x277D837D0]);
      v53 = sub_2287031D8(v51, v52, v225);

      *(v46 + 14) = v53;
      _os_log_impl(&dword_2286FF000, v43, v44, "[%s]: Relevance Override Default detected, ignoring RelevanceEngine and proceeding with %{public}s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v47, -1, -1);
      MEMORY[0x22AABFD90](v46, -1, -1);

      v7 = v219;
      v220(v25, v219);
    }

    else
    {

      v7 = v219;
      v220(v25, v219);
      v45 = v42;
    }

    v68 = v203;
    v55 = v224;
  }

  else
  {
    if (a2 >> 62)
    {
      v54 = sub_2287CB920();
    }

    else
    {
      v54 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v55 = v224;
    v45 = MEMORY[0x277D84F90];
    if (v54)
    {
      v225[0] = MEMORY[0x277D84F90];
      result = sub_2287042D4(0, v54 & ~(v54 >> 63), 0);
      if (v54 < 0)
      {
        __break(1u);
        return result;
      }

      v57 = 0;
      v45 = v225[0];
      do
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v58 = MEMORY[0x22AABF120](v57, a2);
        }

        else
        {
          v58 = *(a2 + 8 * v57 + 32);
        }

        v59 = v58;
        v60 = [v58 identifier];
        v61 = sub_2287CB220();
        v63 = v62;

        v225[0] = v45;
        v65 = *(v45 + 16);
        v64 = *(v45 + 24);
        v66 = v45;
        if (v65 >= v64 >> 1)
        {
          sub_2287042D4((v64 > 1), v65 + 1, 1);
          v66 = v225[0];
        }

        ++v57;
        *(v66 + 16) = v65 + 1;
        v67 = v66 + 16 * v65;
        *(v67 + 32) = v61;
        *(v67 + 40) = v63;
        v45 = v66;
      }

      while (v54 != v57);
      v7 = v219;
      v68 = v203;
      v37 = v223;
      v55 = v224;
    }

    else
    {
      v68 = v203;
    }
  }

  v69 = [v218 profileIdentifier];
  v211 = static FeedPopulationManaging.fetchAndValidateFeedToPopulate(kind:managedObjectContext:associatedProfileIdentifier:)(v68, v37, v69, v221);

  if (qword_280DE0D98 != -1)
  {
    goto LABEL_108;
  }

  while (1)
  {
    v70 = NSManagedObjectContext.getEligibleFeedItems(for:sourceProfiles:)(v68, qword_280DE0DA0);
    sub_2287CA9E0();
    swift_bridgeObjectRetain_n();
    v71 = sub_2287CAA40();
    v72 = sub_2287CB610();
    v73 = v70 >> 62;
    if (os_log_type_enabled(v71, v72))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v225[0] = v75;
      *v74 = 136315650;
      v76 = sub_2287CBE60();
      v78 = sub_2287031D8(v76, v77, v225);

      *(v74 + 4) = v78;
      *(v74 + 12) = 2082;
      v79 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
      v81 = sub_2287031D8(v79, v80, v225);

      *(v74 + 14) = v81;
      v73 = v70 >> 62;
      *(v74 + 22) = 2050;
      if (v70 >> 62)
      {
        v82 = sub_2287CB920();
      }

      else
      {
        v82 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v55 = v222;

      *(v74 + 24) = v82;

      _os_log_impl(&dword_2286FF000, v71, v72, "[%s]: Picking elements for a new %{public}s feed from %{public}ld Core Data elements", v74, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v75, -1, -1);
      MEMORY[0x22AABFD90](v74, -1, -1);

      v7 = v219;
      v220(v224, v219);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v220(v55, v7);
      v55 = v222;
    }

    sub_2287CA9E0();

    v83 = sub_2287CAA40();
    v84 = sub_2287CB610();

    v85 = os_log_type_enabled(v83, v84);
    v215 = v73;
    if (v85)
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v225[0] = v87;
      *v86 = 136315650;
      v88 = sub_2287CBE60();
      v90 = sub_2287031D8(v88, v89, v225);

      *(v86 + 4) = v90;
      *(v86 + 12) = 2082;
      v91 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
      v93 = sub_2287031D8(v91, v92, v225);

      *(v86 + 14) = v93;
      *(v86 + 22) = 2080;
      v94 = MEMORY[0x22AABEA80](v45, MEMORY[0x277D837D0]);
      v96 = sub_2287031D8(v94, v95, v225);

      *(v86 + 24) = v96;
      _os_log_impl(&dword_2286FF000, v83, v84, "[%s]: Picking feed of kind %{public}s from these ranked identifiers (the rest were dropped): %s", v86, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v87, -1, -1);
      MEMORY[0x22AABFD90](v86, -1, -1);

      v97 = v205;
      v98 = v55;
      v99 = v219;
    }

    else
    {

      v97 = v205;
      v98 = v55;
      v99 = v7;
    }

    v220(v98, v99);
    v68 = v216;
    v217 = v45;
    v101 = *(v45 + 16);
    v224 = v70;
    v214 = v101;
    if (v101)
    {
      v7 = 0;
      v213 = v217 + 32;
      v45 = v70 & 0xFFFFFFFFFFFFFF8;
      if ((v70 & 0x8000000000000000) != 0)
      {
        v102 = v70;
      }

      else
      {
        v102 = v70 & 0xFFFFFFFFFFFFFF8;
      }

      v200 = v102;
      v223 = v70 & 0xC000000000000001;
      v212 = v97 + 8;
      *&v100 = 136315394;
      v207 = v100;
      *&v100 = 136315650;
      v202 = v100;
      do
      {
        if (v7 >= *(v217 + 16))
        {
          goto LABEL_107;
        }

        v105 = (v213 + 16 * v7);
        v106 = *v105;
        v107 = v105[1];
        v222 = v7;
        if (v68)
        {
          if (v215)
          {
            v68 = sub_2287CB920();
          }

          else
          {
            v68 = *(v45 + 16);
          }

          if (v68)
          {
            v7 = 0;
            while (1)
            {
              if (v223)
              {
                v108 = MEMORY[0x22AABF120](v7, v70);
              }

              else
              {
                if (v7 >= *(v45 + 16))
                {
                  goto LABEL_102;
                }

                v108 = *(v70 + 8 * v7 + 32);
              }

              v109 = v108;
              v110 = v7 + 1;
              if (__OFADD__(v7, 1))
              {
                break;
              }

              v111 = [v108 uniqueIdentifier];
              v112 = sub_2287CB220();
              v55 = v113;

              LOBYTE(v111) = sub_22873E55C(v106, v107, v112, v55);

              if (v111)
              {
                goto LABEL_79;
              }

              ++v7;
              v128 = v110 == v68;
              v70 = v224;
              if (v128)
              {
                goto LABEL_56;
              }
            }

            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
            goto LABEL_105;
          }

LABEL_56:
          v114 = v210;
          sub_2287CA9E0();

          v115 = sub_2287CAA40();
          v116 = sub_2287CB5F0();

          if (!os_log_type_enabled(v115, v116))
          {
LABEL_38:

            v103 = v114;
            goto LABEL_39;
          }

          v117 = swift_slowAlloc();
          v118 = swift_slowAlloc();
          v225[0] = v118;
          *v117 = v207;
          v119 = sub_2287CBE60();
          v55 = v120;
          v121 = sub_2287031D8(v119, v120, v225);

          *(v117 + 4) = v121;
          *(v117 + 12) = 2082;
          v122 = sub_2287031D8(v106, v107, v225);

          *(v117 + 14) = v122;
          _os_log_impl(&dword_2286FF000, v115, v116, "[%s]: Relevance Override Default set, but no feedItem found for %{public}s", v117, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AABFD90](v118, -1, -1);
          MEMORY[0x22AABFD90](v117, -1, -1);

          v103 = v210;
        }

        else
        {
          if (v215)
          {
            v68 = sub_2287CB920();
          }

          else
          {
            v68 = *(v45 + 16);
          }

          if (v68)
          {
            v7 = 0;
            while (1)
            {
              if (v223)
              {
                v123 = MEMORY[0x22AABF120](v7, v70);
              }

              else
              {
                if (v7 >= *(v45 + 16))
                {
                  goto LABEL_104;
                }

                v123 = *(v70 + 8 * v7 + 32);
              }

              v109 = v123;
              v124 = v7 + 1;
              if (__OFADD__(v7, 1))
              {
                goto LABEL_103;
              }

              v55 = [v123 uniqueIdentifier];
              v125 = sub_2287CB220();
              v127 = v126;

              v128 = v125 == v106 && v127 == v107;
              if (v128)
              {
                break;
              }

              v55 = sub_2287CBD00();

              if (v55)
              {
                goto LABEL_79;
              }

              ++v7;
              v128 = v124 == v68;
              v70 = v224;
              if (v128)
              {
                goto LABEL_76;
              }
            }

LABEL_79:

            v136 = v109;
            v104 = v222;
            [v136 setSortOrder_];
            v137 = sub_2287CA600();
            v138 = v208;
            v139 = v209;
            if (((1 << v137) & 0x17) != 0)
            {
              v140 = sub_22878883C();

              if (!v140)
              {
                sub_2287CA9E0();
                v141 = v136;
                v142 = sub_2287CAA40();
                v143 = sub_2287CB610();

                if (os_log_type_enabled(v142, v143))
                {
                  v144 = swift_slowAlloc();
                  v145 = swift_slowAlloc();
                  v225[0] = v145;
                  *v144 = v207;
                  v146 = sub_2287CBE60();
                  v148 = sub_2287031D8(v146, v147, v225);

                  *(v144 + 4) = v148;
                  *(v144 + 12) = 2080;
                  v149 = [v141 uniqueIdentifier];
                  v150 = sub_2287CB220();
                  v152 = v151;

                  v55 = sub_2287031D8(v150, v152, v225);

                  *(v144 + 14) = v55;
                  _os_log_impl(&dword_2286FF000, v142, v143, "[%s]: Section not found for feedItem %s", v144, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x22AABFD90](v145, -1, -1);
                  MEMORY[0x22AABFD90](v144, -1, -1);
                }

                v220(v139, v219);
                v68 = v216;
                v104 = v222;
                [v141 setFeedSection_];
                sub_2287CA800();
                [v141 setSectionSortOrder_];

LABEL_88:
                v70 = v224;
                goto LABEL_40;
              }
            }

            else
            {
              v153 = sub_2287CA600();
              v140 = sub_22878AD68(v153);
            }

            sub_2287CA9E0();
            v154 = v136;
            v155 = v138;
            v156 = v140;
            v157 = sub_2287CAA40();
            v158 = sub_2287CB610();

            if (os_log_type_enabled(v157, v158))
            {
              v159 = swift_slowAlloc();
              v204 = swift_slowAlloc();
              v225[0] = v204;
              *v159 = v202;
              v160 = sub_2287CBE60();
              v162 = sub_2287031D8(v160, v161, v225);

              *(v159 + 4) = v162;
              *(v159 + 12) = 2080;
              v163 = [v156 identifier];
              v164 = sub_2287CB220();
              v166 = v165;

              v167 = sub_2287031D8(v164, v166, v225);

              *(v159 + 14) = v167;
              *(v159 + 22) = 2080;
              v168 = [v154 uniqueIdentifier];
              v169 = sub_2287CB220();
              v171 = v170;

              v55 = sub_2287031D8(v169, v171, v225);

              *(v159 + 24) = v55;
              _os_log_impl(&dword_2286FF000, v157, v158, "[%s]: Section %s found for feedItem %s", v159, 0x20u);
              v172 = v204;
              swift_arrayDestroy();
              MEMORY[0x22AABFD90](v172, -1, -1);
              v173 = v159;
              v104 = v222;
              MEMORY[0x22AABFD90](v173, -1, -1);
            }

            v220(v155, v219);
            v68 = v216;
            [v156 addFeedItemsObject_];

            goto LABEL_88;
          }

LABEL_76:
          v114 = v206;
          sub_2287CA9E0();

          v115 = sub_2287CAA40();
          v129 = sub_2287CB610();

          if (!os_log_type_enabled(v115, v129))
          {
            goto LABEL_38;
          }

          v130 = swift_slowAlloc();
          v131 = swift_slowAlloc();
          v225[0] = v131;
          *v130 = v207;
          v132 = sub_2287CBE60();
          v55 = v133;
          v134 = sub_2287031D8(v132, v133, v225);

          *(v130 + 4) = v134;
          *(v130 + 12) = 2080;
          v135 = sub_2287031D8(v106, v107, v225);

          *(v130 + 14) = v135;
          _os_log_impl(&dword_2286FF000, v115, v129, "[%s]: Item %s was returned by the RelevanceEngine but is now deleted", v130, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AABFD90](v131, -1, -1);
          MEMORY[0x22AABFD90](v130, -1, -1);

          v103 = v206;
        }

LABEL_39:
        v220(v103, v219);
        v68 = v216;
        v104 = v222;
LABEL_40:
        v7 = (v104 + 1);
      }

      while (v7 != v214);
    }

    v174 = [v211 sections];
    sub_2287C9B40();
    v68 = sub_2287CB580();

    if (v68 >> 62)
    {
      break;
    }

    v7 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_110;
    }

LABEL_93:
    v55 = 0;
    while (1)
    {
      if ((v68 & 0xC000000000000001) != 0)
      {
        v175 = MEMORY[0x22AABF120](v55, v68);
      }

      else
      {
        if (v55 >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_106;
        }

        v175 = *(v68 + 8 * v55 + 32);
      }

      v176 = v175;
      v45 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      sub_228786618(v175, v218);

      ++v55;
      if (v45 == v7)
      {
        goto LABEL_110;
      }
    }

LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    swift_once();
  }

  v7 = sub_2287CB920();
  if (v7)
  {
    goto LABEL_93;
  }

LABEL_110:

  v177 = v211;
  sub_228786DE8();
  v178 = [v177 sections];
  v179 = sub_2287CB580();

  if (v179 >> 62)
  {
    goto LABEL_122;
  }

  v180 = *((v179 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = &unk_278607000; v180; i = &unk_278607000)
  {
    v182 = 0;
    while (1)
    {
      if ((v179 & 0xC000000000000001) != 0)
      {
        v183 = MEMORY[0x22AABF120](v182, v179);
      }

      else
      {
        if (v182 >= *((v179 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_121;
        }

        v183 = *(v179 + 8 * v182 + 32);
      }

      v184 = v183;
      v185 = v182 + 1;
      if (__OFADD__(v182, 1))
      {
        break;
      }

      [v183 i[122]];

      ++v182;
      if (v185 == v180)
      {
        goto LABEL_123;
      }
    }

    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    v180 = sub_2287CB920();
  }

LABEL_123:

  v186 = v201;
  sub_2287CA9E0();
  v187 = v211;
  v188 = sub_2287CAA40();
  v189 = sub_2287CB610();
  if (os_log_type_enabled(v188, v189))
  {
    v190 = swift_slowAlloc();
    v191 = swift_slowAlloc();
    v225[0] = v191;
    *v190 = 136315650;
    v192 = sub_2287CBE60();
    v194 = sub_2287031D8(v192, v193, v225);

    *(v190 + 4) = v194;
    *(v190 + 12) = 2082;
    v195 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
    v197 = sub_2287031D8(v195, v196, v225);

    *(v190 + 14) = v197;
    *(v190 + 22) = 2050;
    v198 = [v187 sections];
    v199 = [v198 count];

    *(v190 + 24) = v199;
    _os_log_impl(&dword_2286FF000, v188, v189, "[%s]: Picked feed of kind %{public}s with %{public}ld sections", v190, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v191, -1, -1);
    MEMORY[0x22AABFD90](v190, -1, -1);
  }

  else
  {
  }

  return (v220)(v186, v219);
}