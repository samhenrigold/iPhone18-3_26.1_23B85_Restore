uint64_t sub_21A380150()
{

  sub_21A361318(v0 + 7);
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[43];
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  v3 = v1;
  v4 = sub_21A3B21DC();
  v5 = sub_21A3B25DC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[43];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_21A35E000, v4, v5, "Error hydrating recipes: %{public}@", v7, 0xCu);
    sub_21A365D1C(v8, &qword_27CD240D0, &qword_21A3B3920);
    MEMORY[0x21CED8F60](v8, -1, -1);
    MEMORY[0x21CED8F60](v7, -1, -1);
  }

  v11 = v0[43];

  sub_21A3B18BC();
  sub_21A380CDC(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
  swift_allocError();
  sub_21A3B18AC();
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_21A380404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_21A380428, 0, 0);
}

uint64_t sub_21A380428()
{
  v12 = v0;
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = sub_21A3B21FC();
  sub_21A365DC4(v1, qword_27CD24AB0);
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v2 = sub_21A3B21DC();
  v3 = sub_21A3B25EC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_21A3AF0A8(0xD000000000000018, 0x800000021A3B4D10, &v11);
    _os_log_impl(&dword_21A35E000, v2, v3, "Will perform intent: %{public}s", v4, 0xCu);
    sub_21A361318(v5);
    MEMORY[0x21CED8F60](v5, -1, -1);
    MEMORY[0x21CED8F60](v4, -1, -1);
  }

  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_21A380614;
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[4];

  return sub_21A37F39C(v9, v7, v8);
}

uint64_t sub_21A380614(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 64) = a1;

    return MEMORY[0x2822009F8](sub_21A380760, 0, 0);
  }
}

uint64_t sub_21A380760()
{
  v0[2] = v0[8];
  sub_21A365B50(&qword_27CD24060, qword_21A3B31A0);
  sub_21A380C28();
  sub_21A3B19BC();

  v1 = v0[1];

  return v1();
}

uint64_t sub_21A38080C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23E48 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B20EC();
  v3 = sub_21A365DC4(v2, qword_27CD24BA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21A3808B8(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21A3650E8;

  return sub_21A380404(a1, v4, v5, v6);
}

uint64_t sub_21A38096C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A380B20();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_21A380998(uint64_t a1)
{
  v2 = sub_21A37F168();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_21A3809E4()
{
  result = qword_27CD244E8;
  if (!qword_27CD244E8)
  {
    sub_21A364A10(&qword_27CD244F0, &unk_21A3B4D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD244E8);
  }

  return result;
}

void sub_21A380A48(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_21A380B20()
{
  sub_21A365B50(&qword_27CD24010, &qword_21A3B45D0);
  sub_21A3B18EC();
  sub_21A3B18DC();
  v0 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  sub_21A3B18DC();
  sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  sub_21A3B18DC();
  sub_21A3B188C();
  return v0;
}

unint64_t sub_21A380C28()
{
  result = qword_27CD244F8;
  if (!qword_27CD244F8)
  {
    sub_21A364A10(&qword_27CD24060, qword_21A3B31A0);
    sub_21A380CDC(&qword_27CD23EC8, type metadata accessor for RecipeEntity, &unk_21A3B2DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD244F8);
  }

  return result;
}

uint64_t sub_21A380CDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21A380D24(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A380D9C()
{
  result = qword_27CD24500;
  if (!qword_27CD24500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24500);
  }

  return result;
}

uint64_t sub_21A380E38(uint64_t a1)
{
  v2 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v11 - v8;
  sub_21A365CB4(a1, &v11 - v8, &qword_27CD23F78, &unk_21A3B2F40);
  sub_21A365CB4(v9, v6, &qword_27CD23F78, &unk_21A3B2F40);
  sub_21A3B1A2C();
  return sub_21A365D1C(v9, &qword_27CD23F78, &unk_21A3B2F40);
}

uint64_t sub_21A380F2C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21A365B50(&qword_27CD24138, &unk_21A3B4EA0);
  result = MEMORY[0x28223BE20](v3, v4);
  v8 = &v19 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = *(*v1 + 16);
  if (v10 == v11)
  {
    v12 = *(v6 + 56);

    return v12(a1, 1, 1, v3);
  }

  else
  {
    if (v10 >= v11)
    {
      __break(1u);
    }

    else
    {
      v20 = v6;
      v13 = sub_21A3B1F7C();
      v14 = *(v13 - 8);
      v15 = *(v14 + 16);
      v16 = v9 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v10;
      v1[1] = v10 + 1;
      v17 = *(v3 + 48);
      v18 = v1[2];
      *v8 = v18;
      result = v15(&v8[v17], v16, v13);
      if (!__OFADD__(v18, 1))
      {
        v1[2] = v18 + 1;
        sub_21A36E9B0(v8, a1, &qword_27CD24138, &unk_21A3B4EA0);
        return (*(v20 + 56))(a1, 0, 1, v3);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21A3810F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v3[13] = sub_21A365B50(&qword_27CD24120, &unk_21A3B3700);
  v3[14] = swift_task_alloc();
  v6 = sub_21A3B205C();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[18] = v7;
  *v7 = v3;
  v7[1] = sub_21A381234;

  return sub_21A382978(a2, a3);
}

uint64_t sub_21A381234(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[7] = v2;
  v3[8] = a1;
  v3[9] = a2;
  v3[19] = a2;

  return MEMORY[0x2822009F8](sub_21A38133C, 0, 0);
}

uint64_t sub_21A38133C(uint64_t a1)
{
  v2 = v1[19];
  if (v2)
  {
    v3 = v1[8];
    sub_21A3B187C();
    v4 = v1[5];
    v5 = v1[6];
    sub_21A360CEC(v1 + 2, v4);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v6 = swift_allocObject();
    v1[20] = v6;
    *(v6 + 16) = xmmword_21A3B3530;
    *(v6 + 32) = v3;
    *(v6 + 40) = v2;
    v7 = swift_task_alloc();
    v1[21] = v7;
    *v7 = v1;
    v7[1] = sub_21A3814A4;

    return MEMORY[0x28214FA48](v6, v4, v5);
  }

  else
  {

    v8 = v1[1];
    v9 = MEMORY[0x277D84F90];

    return v8(v9);
  }
}

uint64_t sub_21A3814A4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_21A381884;
  }

  else
  {

    v4 = sub_21A3815C0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21A3815C0()
{
  v29 = v0;
  v1 = v0[22];
  if (!*(v1 + 16))
  {

    sub_21A361318(v0 + 2);
    v3 = MEMORY[0x277D84F90];
LABEL_14:

    v26 = v0[1];

    return v26(v3);
  }

  (*(v0[16] + 16))(v0[17], v1 + ((*(v0[16] + 80) + 32) & ~*(v0[16] + 80)), v0[15]);

  sub_21A361318(v0 + 2);
  v2 = sub_21A3B1FAC();
  v3 = MEMORY[0x277D84F90];
  v27 = *(v2 + 16);
  v28[0] = MEMORY[0x277D84F90];
  if (!v27)
  {
LABEL_13:
    v24 = v0[16];
    v23 = v0[17];
    v25 = v0[15];

    (*(v24 + 8))(v23, v25);
    goto LABEL_14;
  }

  v4 = v0[23];
  v6 = v0[13];
  v5 = v0[14];
  v7 = sub_21A3B1D8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = *(v8 + 72);
  v12 = *(v6 + 48);
  *v5 = 0;
  v9(&v5[v12], v2 + v10, v7);
  sub_21A381B48(v28, v5);
  if (v4)
  {
    v13 = v0[14];

    sub_21A365D1C(v13, &qword_27CD24120, &unk_21A3B3700);
  }

  result = sub_21A365D1C(v0[14], &qword_27CD24120, &unk_21A3B3700);
  if (v27 == 1)
  {
LABEL_12:
    v3 = v28[0];
    goto LABEL_13;
  }

  v15 = v11;
  v16 = v2 + v11 + v10;
  v17 = 1;
  while (v17 < *(v2 + 16))
  {
    v18 = v6;
    v19 = v15;
    v20 = v0[14];
    v21 = v18;
    v22 = *(v18 + 48);
    *v20 = v17;
    v9(v20 + v22, v16, v7);
    sub_21A381B48(v28, v20);
    ++v17;
    result = sub_21A365D1C(v0[14], &qword_27CD24120, &unk_21A3B3700);
    v15 = v19;
    v16 += v19;
    v6 = v21;
    if (v27 == v17)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A381884()
{
  v16 = v0;

  sub_21A361318(v0 + 2);
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  v3 = v1;
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v4 = sub_21A3B21DC();
  v5 = sub_21A3B25DC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[23];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 138543618;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v11;
    *v8 = v11;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_21A3AF0A8(0xD000000000000021, 0x800000021A3B4E40, &v15);
    _os_log_impl(&dword_21A35E000, v4, v5, "Unable to hydrate due to error: %{public}@, for: %{public}s", v7, 0x16u);
    sub_21A365D1C(v8, &qword_27CD240D0, &qword_21A3B3920);
    MEMORY[0x21CED8F60](v8, -1, -1);
    sub_21A361318(v9);
    MEMORY[0x21CED8F60](v9, -1, -1);
    MEMORY[0x21CED8F60](v7, -1, -1);
  }

  v12 = v0[23];
  sub_21A3B18BC();
  sub_21A382C2C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
  swift_allocError();
  sub_21A3B18AC();
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_21A381B48(uint64_t *a1, uint64_t a2)
{
  v141 = a2;
  v143 = sub_21A3B208C();
  v103 = *(v143 - 8);
  MEMORY[0x28223BE20](v143, v3);
  v142 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_21A3B20CC();
  v144 = *(v116 - 8);
  MEMORY[0x28223BE20](v116, v5);
  v115 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21A3B212C();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v114 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v113 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21A3B20EC();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v112 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for InstructionEntity(0);
  v110 = *(v111 - 8);
  v17 = MEMORY[0x28223BE20](v111, v16);
  v19 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v136 = &v97 - v21;
  v22 = sub_21A3B20BC();
  v135 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22, v23);
  v139 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v138 = &v97 - v27;
  v127 = sub_21A3B1F7C();
  v102 = *(v127 - 8);
  MEMORY[0x28223BE20](v127, v28);
  v126 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_21A365B50(&qword_27CD24138, &unk_21A3B4EA0);
  v140 = *(v125 - 8);
  MEMORY[0x28223BE20](v125, v30);
  v101 = (&v97 - v31);
  v32 = sub_21A365B50(&qword_27CD24130, &qword_21A3B3720);
  v34 = MEMORY[0x28223BE20](v32 - 8, v33);
  v124 = &v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v36);
  v123 = &v97 - v37;
  v38 = sub_21A365B50(&qword_27CD24120, &unk_21A3B3700);
  v39 = v38 - 8;
  MEMORY[0x28223BE20](v38, v40);
  v42 = (&v97 - v41);
  v43 = sub_21A3B1D8C();
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v45);
  v47 = &v97 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v127;
  sub_21A365CB4(v141, v42, &qword_27CD24120, &unk_21A3B3700);
  v120 = *v42;
  v49 = *(v39 + 56);
  v50 = v126;
  v98 = v44;
  v51 = *(v44 + 32);
  v99 = v43;
  v51(v47, v42 + v49, v43);
  v97 = v47;
  result = sub_21A3B1D7C();
  v53 = result;
  v54 = 0;
  v55 = *(result + 16);
  v100 = v102 + 16;
  v122 = (v140 + 7);
  v121 = (v140 + 6);
  v119 = (v102 + 32);
  v137 = (v135 + 2);
  v141 = v103 + 16;
  v140 = (v103 + 8);
  v147 = *MEMORY[0x277CC9110];
  v106 = (v144 + 104);
  v105 = "used in intents.";
  ++v135;
  v104 = (v102 + 8);
  v107 = v55;
  v117 = a1;
  v109 = v19;
  v108 = v22;
  v118 = result;
  while (1)
  {
    v56 = v125;
    if (v54 == v55)
    {
      v57 = 1;
      v134 = v55;
      v58 = v124;
    }

    else
    {
      if ((v54 & 0x8000000000000000) != 0)
      {
        goto LABEL_23;
      }

      if (v54 >= *(v53 + 16))
      {
        goto LABEL_24;
      }

      v59 = v54 + 1;
      v60 = v102;
      v61 = v53 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v54;
      v62 = *(v125 + 48);
      v63 = v101;
      *v101 = v54;
      (*(v60 + 16))(&v63[v62], v61, v48);
      v64 = v63;
      v58 = v124;
      sub_21A36E9B0(v64, v124, &qword_27CD24138, &unk_21A3B4EA0);
      v57 = 0;
      v134 = v59;
    }

    (*v122)(v58, v57, 1, v56);
    v65 = v58;
    v66 = v123;
    sub_21A36E9B0(v65, v123, &qword_27CD24130, &qword_21A3B3720);
    if ((*v121)(v66, 1, v56) == 1)
    {
      (*(v98 + 8))(v97, v99);
    }

    v67 = *v66;
    (*v119)(v50, &v66[*(v56 + 48)], v48);
    v68 = v138;
    sub_21A3B209C();
    v69 = *v137;
    result = (*v137)(v139, v68, v22);
    if (__OFADD__(v67, 1))
    {
      break;
    }

    v132 = v67 + 1;
    v133 = v69;
    v70 = sub_21A3B1F6C();
    v71 = *(v70 + 16);
    if (v71)
    {
      v145 = MEMORY[0x277D84F90];
      sub_21A3AF650(0, v71, 0);
      v72 = v145;
      v73 = *(v103 + 80);
      v131 = v70;
      v74 = v70 + ((v73 + 32) & ~v73);
      v144 = *(v103 + 72);
      v75 = *(v103 + 16);
      do
      {
        v77 = v142;
        v76 = v143;
        v75(v142, v74, v143);
        v78 = sub_21A3B207C();
        v80 = v79;
        (*v140)(v77, v76);
        v145 = v72;
        v82 = *(v72 + 16);
        v81 = *(v72 + 24);
        if (v82 >= v81 >> 1)
        {
          sub_21A3AF650((v81 > 1), v82 + 1, 1);
          v72 = v145;
        }

        *(v72 + 16) = v82 + 1;
        v83 = v72 + 16 * v82;
        *(v83 + 32) = v78;
        *(v83 + 40) = v80;
        v74 += v144;
        --v71;
      }

      while (v71);
    }

    else
    {

      v72 = MEMORY[0x277D84F90];
    }

    v145 = v72;
    sub_21A365B50(&qword_27CD23F50, &qword_21A3B2F20);
    sub_21A36E238();
    v144 = sub_21A3B245C();
    v131 = v84;

    v85 = v111;
    v128 = *(v111 + 20);
    sub_21A365B50(&qword_27CD24148, &qword_21A3B3728);
    sub_21A3B247C();
    sub_21A3B211C();
    v129 = *v106;
    v86 = v115;
    v87 = v116;
    v129(v115, v147, v116);
    sub_21A3B20FC();
    v130 = sub_21A3B19FC();
    v88 = v136;
    *(v136 + v128) = v130;
    v89 = *(v85 + 24);
    sub_21A365B50(&qword_27CD23F80, &qword_21A3B3730);
    sub_21A3B247C();
    sub_21A3B211C();
    v129(v86, v147, v87);
    sub_21A3B20FC();
    *(v88 + v89) = sub_21A3B19EC();
    v90 = v139;
    v22 = v108;
    v133(v88, v139, v108);
    v145 = v132;
    sub_21A3B19DC();
    v145 = v144;
    v146 = v131;
    sub_21A3B19DC();
    v91 = *v135;
    (*v135)(v90, v22);
    v92 = v109;
    sub_21A36E29C(v88, v109);
    v93 = v117;
    v94 = *v117;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v94 = sub_21A39368C(0, v94[2] + 1, 1, v94);
    }

    v48 = v127;
    v53 = v118;
    v96 = v94[2];
    v95 = v94[3];
    if (v96 >= v95 >> 1)
    {
      v94 = sub_21A39368C((v95 > 1), v96 + 1, 1, v94);
    }

    v91(v138, v22);
    v50 = v126;
    (*v104)(v126, v48);
    v94[2] = v96 + 1;
    sub_21A36E300(v92, v94 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v96);
    *v93 = v94;
    result = sub_21A36E950(v136, type metadata accessor for InstructionEntity);
    v55 = v107;
    v54 = v134;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_21A3828BC(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = swift_task_alloc();
  *(v2 + 24) = v6;
  *v6 = v2;
  v6[1] = sub_21A3689C0;

  return sub_21A3810F8(v3, v4, v5);
}

uint64_t sub_21A382978(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_21A3B1FFC();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  sub_21A365B50(&qword_27CD24158, &qword_21A3B3750);
  v2[12] = swift_task_alloc();
  type metadata accessor for RecipeEntity(0);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A382A9C, 0, 0);
}

uint64_t sub_21A382A9C()
{
  if (sub_21A3B1C6C())
  {
    v1 = v0[13];
    swift_getKeyPath();
    sub_21A36E89C();
    sub_21A3B1A7C();

    v2 = *v1;
    v3 = v1[1];

    sub_21A36E950(v1, type metadata accessor for RecipeEntity);

    v4 = v0[1];

    return v4(v2, v3);
  }

  else
  {
    sub_21A3B187C();
    v6 = v0[5];
    v7 = v0[6];
    sub_21A360CEC(v0 + 2, v6);
    v8 = swift_task_alloc();
    v0[14] = v8;
    *v8 = v0;
    v8[1] = sub_21A36E618;
    v9 = v0[12];

    return MEMORY[0x28214F8F0](v9, v6, v7);
  }
}

uint64_t sub_21A382C2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t RecipeCardContainerViewParallax.init(parallaxX:parallaxSafeAreaInsets:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  *a3 = result;
  *(a3 + 8) = a2 & 1;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = a6;
  *(a3 + 40) = a7;
  return result;
}

id static RecipeCardContainerViewController.createViewController(recipeID:recipeCardID:recipeCardViewSessionIDStream:paywallStatus:isPreviewing:isPrimaryRecipeStream:scope:recipeFeaturesConfiguration:navigationItemAdaptor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t), void (*a6)(char *, char *, uint64_t), int a7, void (*a8)(char *, uint64_t, uint64_t), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v53 = a8;
  v61 = a7;
  v50 = a6;
  v48 = a5;
  v59 = a3;
  v60 = a4;
  v57 = a1;
  v58 = a2;
  v62 = a11;
  v63 = a12;
  v54 = a10;
  v52 = a9;
  v12 = sub_21A3B1F1C();
  v73 = *(v12 - 8);
  v74 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v72 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_21A3B243C();
  v65 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v17;
  v18 = sub_21A365B50(&qword_27CD24508, &qword_21A3B4EE0);
  v66 = v18;
  v51 = *(v18 - 8);
  v19 = v51;
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v45 - v21;
  v67 = &v45 - v21;
  v23 = sub_21A3B1F0C();
  v68 = v23;
  v55 = *(v23 - 8);
  v24 = v55;
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_21A365B50(&qword_27CD24510, &qword_21A3B4EE8);
  v56 = *(v69 - 8);
  v28 = v56;
  MEMORY[0x28223BE20](v69, v29);
  v70 = &v45 - v30;
  v47 = *(v28 + 16);
  v47();
  v46 = *(v24 + 16);
  v49 = v27;
  v46(v27, v50, v23);
  v50 = *(v19 + 16);
  v50(v22, v53, v18);
  v48 = *(v65 + 16);
  v48(v17, v52, v71);
  v53 = *(v73 + 16);
  v53(v72, v54, v74);
  v31 = objc_allocWithZone(v75);
  v32 = OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_observableHorizontalParallaxModel;
  sub_21A3B1F5C();
  swift_allocObject();
  *&v31[v32] = sub_21A3B1F4C();
  v33 = &v31[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_recipeID];
  v34 = v58;
  *v33 = v57;
  v33[1] = v34;
  v35 = &v31[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_recipeCardID];
  v36 = v60;
  *v35 = v59;
  v35[1] = v36;
  (v47)(&v31[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_recipeCardViewSessionIDStream], v70, v69);
  v46(&v31[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_paywallStatus], v27, v68);
  v31[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_isPreviewing] = v61;
  v50(&v31[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_isPrimaryRecipeStream], v67, v66);
  v37 = v71;
  v48(&v31[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_scope], v64, v71);
  v38 = &v31[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_navigationItemAdaptor];
  v40 = v62;
  v39 = v63;
  *v38 = v62;
  v38[1] = v39;
  v41 = v72;
  v42 = v74;
  v53(&v31[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_recipeFeaturesConfiguration], v72, v74);

  sub_21A3832A4(v40, v39);
  v76.receiver = v31;
  v76.super_class = v75;
  v43 = objc_msgSendSuper2(&v76, sel_initWithNibName_bundle_, 0, 0);
  (*(v73 + 8))(v41, v42);
  (*(v65 + 8))(v64, v37);
  (*(v51 + 8))(v67, v66);
  (*(v55 + 8))(v49, v68);
  (*(v56 + 8))(v70, v69);
  return v43;
}

uint64_t sub_21A3832A4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return sub_21A3B1A8C();
  }

  return result;
}

Swift::Void __swiftcall RecipeCardContainerViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for RootView(0);
  v4 = (v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v54 - v10;
  v58.receiver = v1;
  v58.super_class = ObjectType;
  objc_msgSendSuper2(&v58, sel_viewDidLoad);
  v12 = *&v1[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_recipeID];
  v56 = *&v1[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_recipeID + 8];
  v57 = v12;
  v13 = *&v1[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_recipeCardID];
  v54 = *&v1[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_recipeCardID + 8];
  v55 = v13;
  v14 = OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_recipeCardViewSessionIDStream;
  v15 = v4[8];
  v16 = sub_21A365B50(&qword_27CD24510, &qword_21A3B4EE8);
  (*(*(v16 - 8) + 16))(&v11[v15], &v1[v14], v16);
  v17 = OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_scope;
  v18 = v4[9];
  v19 = sub_21A3B243C();
  (*(*(v19 - 8) + 16))(&v11[v18], &v1[v17], v19);
  v20 = OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_paywallStatus;
  v21 = v4[10];
  v22 = sub_21A3B1F0C();
  (*(*(v22 - 8) + 16))(&v11[v21], &v1[v20], v22);
  v23 = v1[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_isPreviewing];
  v24 = OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_isPrimaryRecipeStream;
  v25 = v4[12];
  v26 = sub_21A365B50(&qword_27CD24508, &qword_21A3B4EE0);
  (*(*(v26 - 8) + 16))(&v11[v25], &v1[v24], v26);
  v27 = *&v1[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_observableHorizontalParallaxModel];
  v28 = *&v1[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_navigationItemAdaptor];
  v29 = *&v1[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_navigationItemAdaptor + 8];
  v30 = OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_recipeFeaturesConfiguration;
  v31 = v4[15];
  v32 = sub_21A3B1F1C();
  (*(*(v32 - 8) + 16))(&v11[v31], &v1[v30], v32);
  v33 = v56;
  *v11 = v57;
  *(v11 + 1) = v33;
  v34 = v54;
  *(v11 + 2) = v55;
  *(v11 + 3) = v34;
  v11[v4[11]] = v23;
  *&v11[v4[13]] = v27;
  v35 = &v11[v4[14]];
  *v35 = v28;
  v35[1] = v29;
  objc_allocWithZone(sub_21A365B50(&qword_27CD24568, &qword_21A3B4EF0));
  sub_21A385048(v11, v8);

  sub_21A3B1A8C();
  sub_21A3832A4(v28, v29);
  v36 = sub_21A3B222C();
  sub_21A3850AC(v11);
  v37 = v36;
  [v1 addChildViewController_];
  v38 = [v1 view];
  if (!v38)
  {
    __break(1u);
    goto LABEL_8;
  }

  v39 = v38;
  v40 = [v37 view];
  if (!v40)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v41 = v40;
  [v39 addSubview_];

  v42 = [v37 view];
  if (!v42)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v43 = [v1 view];
  if (!v43)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v44 = v43;
  [v43 bounds];
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;

  [v42 setFrame_];
  v53 = [v37 view];

  if (v53)
  {
    [v53 setAutoresizingMask_];

    [v37 didMoveToParentViewController_];
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_21A3837E0(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_21A385A10(a1);
  (*(*(*(v2 + qword_27CD24598) - 8) + 8))(a1);
  return v5;
}

uint64_t RecipeCardContainerViewController.updateParallax(_:)(uint64_t a1)
{
  v2 = sub_21A365B50(&qword_27CD24570, qword_21A3B4EF8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v13 - v4;
  v6 = sub_21A3B1E9C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_21A3B22CC();
  if (result)
  {
    v12 = [v1 traitCollection];
    [v12 layoutDirection];

    sub_21A3B1E8C();
    (*(v7 + 16))(v5, v10, v6);
    (*(v7 + 56))(v5, 0, 1, v6);
    sub_21A3B1F3C();
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

id RecipeCardContainerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_21A3B24EC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_21A383D4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v117 = a1;
  v3 = sub_21A365B50(&qword_27CD24648, &qword_21A3B5070);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v115 = &v88 - v5;
  v116 = sub_21A365B50(&qword_27CD24650, &unk_21A3B5078);
  MEMORY[0x28223BE20](v116, v6);
  v114 = &v88 - v7;
  v99 = sub_21A365B50(&qword_27CD243D8, &unk_21A3B4750);
  MEMORY[0x28223BE20](v99, v8);
  v10 = &v88 - v9;
  v11 = sub_21A3B1E0C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21A365B50(&qword_27CD24658, &qword_21A3B5088);
  v91 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v88 - v18;
  v93 = sub_21A365B50(&qword_27CD24660, &qword_21A3B5090);
  v95 = *(v93 - 8);
  MEMORY[0x28223BE20](v93, v20);
  v22 = &v88 - v21;
  v96 = sub_21A365B50(&qword_27CD24668, &qword_21A3B5098);
  v98 = *(v96 - 8);
  MEMORY[0x28223BE20](v96, v23);
  v90 = &v88 - v24;
  v100 = sub_21A365B50(&qword_27CD24670, &qword_21A3B50A0);
  v102 = *(v100 - 8);
  MEMORY[0x28223BE20](v100, v25);
  v92 = &v88 - v26;
  v27 = sub_21A365B50(&qword_27CD24678, &qword_21A3B50A8);
  v28 = *(v27 - 8);
  v103 = v27;
  v104 = v28;
  MEMORY[0x28223BE20](v27, v29);
  v94 = &v88 - v30;
  v31 = sub_21A365B50(&qword_27CD24680, &qword_21A3B50B0);
  v32 = *(v31 - 8);
  v105 = v31;
  v106 = v32;
  MEMORY[0x28223BE20](v31, v33);
  v97 = &v88 - v34;
  v108 = sub_21A365B50(&qword_27CD24688, &qword_21A3B50B8);
  v110 = *(v108 - 8);
  MEMORY[0x28223BE20](v108, v35);
  v101 = &v88 - v36;
  v111 = sub_21A365B50(&qword_27CD24690, &qword_21A3B50C0);
  v113 = *(v111 - 8);
  MEMORY[0x28223BE20](v111, v37);
  v107 = &v88 - v38;
  v112 = sub_21A365B50(&qword_27CD24698, &qword_21A3B50C8);
  MEMORY[0x28223BE20](v112, v39);
  v109 = &v88 - v40;
  sub_21A3B1DFC();
  v41 = sub_21A3855EC();
  sub_21A3B226C();
  (*(v12 + 8))(v15, v11);
  swift_getKeyPath();

  sub_21A3B1FDC();
  v42 = sub_21A3B1FFC();
  (*(*(v42 - 8) + 56))(v10, 0, 1, v42);
  *&v118 = v11;
  *(&v118 + 1) = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21A3B227C();

  sub_21A365D1C(v10, &qword_27CD243D8, &unk_21A3B4750);
  (*(v91 + 8))(v19, v16);
  swift_getKeyPath();
  v44 = *(v2 + 24);
  v120 = *(v2 + 16);
  v121 = v44;

  *&v118 = v16;
  *(&v118 + 1) = v99;
  v119 = OpaqueTypeConformance2;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v90;
  v47 = v93;
  sub_21A3B227C();

  (*(v95 + 8))(v22, v47);
  swift_getKeyPath();
  v48 = type metadata accessor for RootView(0);
  v49 = sub_21A364A10(&qword_27CD23F20, "^<");
  *&v118 = v47;
  *(&v118 + 1) = v49;
  v119 = v45;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = v92;
  v52 = v96;
  sub_21A3B227C();

  (*(v98 + 8))(v46, v52);
  swift_getKeyPath();
  v53 = sub_21A3B1F1C();
  *&v118 = v52;
  *(&v118 + 1) = v53;
  v119 = v50;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = v2;
  v56 = v94;
  v57 = v100;
  sub_21A3B227C();

  (*(v102 + 8))(v51, v57);
  swift_getKeyPath();
  v58 = v55;
  LOBYTE(v120) = *(v55 + v48[9]);
  v59 = sub_21A3B1F0C();
  *&v118 = v57;
  *(&v118 + 1) = v59;
  v119 = v54;
  v60 = swift_getOpaqueTypeConformance2();
  v61 = v97;
  v62 = v103;
  sub_21A3B227C();

  (*(v104 + 8))(v56, v62);
  swift_getKeyPath();
  v63 = *(v58 + v48[11]);
  v89 = v58;
  v120 = v63;
  sub_21A3B1A8C();
  *&v118 = v62;
  *(&v118 + 1) = MEMORY[0x277D839B0];
  v119 = v60;
  v64 = swift_getOpaqueTypeConformance2();
  v65 = v101;
  v66 = v105;
  sub_21A3B227C();

  (*(v106 + 8))(v61, v66);
  swift_getKeyPath();
  v67 = v48[10];
  v68 = sub_21A365B50(&qword_27CD24508, &qword_21A3B4EE0);
  v69 = *(v68 - 8);
  v70 = v58 + v67;
  v71 = v114;
  (*(v69 + 16))(v114, v70, v68);
  (*(v69 + 56))(v71, 0, 1, v68);
  v72 = sub_21A364A10(&qword_27CD246A8, &qword_21A3B5228);
  *&v118 = v66;
  *(&v118 + 1) = v72;
  v119 = v64;
  v73 = swift_getOpaqueTypeConformance2();
  v75 = v107;
  v74 = v108;
  sub_21A3B227C();

  sub_21A365D1C(v71, &qword_27CD24650, &unk_21A3B5078);
  v76 = v74;
  (*(v110 + 8))(v65, v74);
  swift_getKeyPath();
  v77 = v48[6];
  v78 = sub_21A365B50(&qword_27CD24510, &qword_21A3B4EE8);
  v79 = *(v78 - 8);
  v80 = v89;
  v81 = v89 + v77;
  v82 = v115;
  (*(v79 + 16))(v115, v81, v78);
  (*(v79 + 56))(v82, 0, 1, v78);
  *&v118 = v76;
  *(&v118 + 1) = v116;
  v119 = v73;
  swift_getOpaqueTypeConformance2();
  v83 = v109;
  v84 = v111;
  sub_21A3B227C();

  sub_21A365D1C(v82, &qword_27CD24648, &qword_21A3B5070);
  (*(v113 + 8))(v75, v84);
  KeyPath = swift_getKeyPath();
  v86 = (v83 + *(v112 + 36));
  sub_21A365B50(&qword_27CD246B0, qword_21A3B5290);
  sub_21A3B242C();
  *v86 = KeyPath;
  v118 = *(v80 + v48[12]);
  sub_21A385644();
  sub_21A3859BC();
  sub_21A3B22BC();
  return sub_21A363360(v83);
}

uint64_t sub_21A384AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = sub_21A365B50(a5, a6);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v16 - v13;
  sub_21A365CB4(a1, &v16 - v13, a5, a6);
  return a7(v14);
}

uint64_t sub_21A384B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a6(v11);
}

uint64_t sub_21A384C88()
{
  if (*v0)
  {
    return (*v0)();
  }

  return result;
}

void sub_21A384CC0(uint64_t a1, uint64_t a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_setContentScrollView_forEdge_, a1, a2);
  v5 = [v2 parentViewController];
  v6 = [v5 parentViewController];

  [v6 setContentScrollView:a1 forEdge:a2];
}

void sub_21A384D6C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = a1;
  sub_21A384CC0(a3, a4);
}

void *sub_21A384E24(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x277D85000] & *v2) + qword_27CD24598);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1, a2);
  (*(v5 + 16))(&v11 - v6);
  v7 = sub_21A3B221C();
  v8 = *(v5 + 8);
  v9 = v7;
  v8(a2, v4);
  if (v7)
  {
  }

  return v7;
}

id sub_21A384F5C(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id _s14CookingSupport33RecipeCardContainerViewControllerCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21A385048(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A3850AC(uint64_t a1)
{
  v2 = type metadata accessor for RootView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A385108(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21A385128(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

void sub_21A385198(uint64_t a1)
{
  sub_21A385374(319, &qword_27CD24588, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_21A3B243C();
    if (v2 <= 0x3F)
    {
      sub_21A3B1F0C();
      if (v3 <= 0x3F)
      {
        sub_21A385374(319, &qword_27CD24590, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          sub_21A3B1F1C();
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_21A385374(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_21A3B259C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21A385448(uint64_t a1)
{
  sub_21A385374(319, &qword_27CD24588, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_21A3B243C();
    if (v2 <= 0x3F)
    {
      sub_21A3B1F0C();
      if (v3 <= 0x3F)
      {
        sub_21A385374(319, &qword_27CD24590, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          sub_21A3B1F5C();
          if (v5 <= 0x3F)
          {
            sub_21A38556C(319);
            if (v6 <= 0x3F)
            {
              sub_21A3B1F1C();
              if (v7 <= 0x3F)
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

void sub_21A38556C(uint64_t a1)
{
  if (!qword_27CD24638)
  {
    sub_21A364A10(&qword_27CD24640, "@&");
    v1 = sub_21A3B25FC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CD24638);
    }
  }
}

unint64_t sub_21A3855EC()
{
  result = qword_27CD246A0;
  if (!qword_27CD246A0)
  {
    sub_21A3B1E0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD246A0);
  }

  return result;
}

unint64_t sub_21A385644()
{
  result = qword_27CD246B8;
  if (!qword_27CD246B8)
  {
    sub_21A364A10(&qword_27CD24698, &qword_21A3B50C8);
    sub_21A364A10(&qword_27CD24690, &qword_21A3B50C0);
    sub_21A364A10(&qword_27CD24648, &qword_21A3B5070);
    sub_21A364A10(&qword_27CD24688, &qword_21A3B50B8);
    sub_21A364A10(&qword_27CD24650, &unk_21A3B5078);
    sub_21A364A10(&qword_27CD24680, &qword_21A3B50B0);
    sub_21A364A10(&qword_27CD246A8, &qword_21A3B5228);
    sub_21A364A10(&qword_27CD24678, &qword_21A3B50A8);
    sub_21A364A10(&qword_27CD24670, &qword_21A3B50A0);
    sub_21A3B1F0C();
    sub_21A364A10(&qword_27CD24668, &qword_21A3B5098);
    sub_21A3B1F1C();
    sub_21A364A10(&qword_27CD24660, &qword_21A3B5090);
    sub_21A364A10(&qword_27CD23F20, "^<");
    sub_21A364A10(&qword_27CD24658, &qword_21A3B5088);
    sub_21A364A10(&qword_27CD243D8, &unk_21A3B4750);
    sub_21A3B1E0C();
    sub_21A3855EC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21A385958();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD246B8);
  }

  return result;
}

unint64_t sub_21A385958()
{
  result = qword_27CD246C0;
  if (!qword_27CD246C0)
  {
    sub_21A364A10(&qword_27CD246B0, qword_21A3B5290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD246C0);
  }

  return result;
}

unint64_t sub_21A3859BC()
{
  result = qword_27CD246C8;
  if (!qword_27CD246C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD246C8);
  }

  return result;
}

uint64_t sub_21A385A10(uint64_t a1)
{
  MEMORY[0x28223BE20](a1, a1);
  (*(v2 + 16))(&v4 - v1);
  return sub_21A3B222C();
}

uint64_t sub_21A385AF8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21A385B38(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21A385B50(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21A385BAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_21A385C14()
{
  result = qword_27CD246D0;
  if (!qword_27CD246D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD246D0);
  }

  return result;
}

uint64_t sub_21A385CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a2;
  v3[19] = a3;
  v3[17] = a1;
  sub_21A365B50(&qword_27CD23F68, &unk_21A3B2F30);
  v3[20] = swift_task_alloc();
  v4 = sub_21A3B1FFC();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v5 = sub_21A3B1E4C();
  v3[26] = v5;
  v3[27] = *(v5 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  sub_21A365B50(&qword_27CD24068, &qword_21A3B3290);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80);
  v3[32] = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v6 = type metadata accessor for RecipeEntity(0);
  v3[35] = v6;
  v3[36] = *(v6 - 8);
  v3[37] = swift_task_alloc();
  v7 = sub_21A3B205C();
  v3[38] = v7;
  v3[39] = *(v7 - 8);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A385FE8, 0, 0);
}

uint64_t sub_21A385FE8(uint64_t a1)
{
  sub_21A3B187C();
  v2 = v1[5];
  v3 = v1[6];
  sub_21A360CEC(v1 + 2, v2);
  v4 = swift_task_alloc();
  v1[43] = v4;
  *v4 = v1;
  v4[1] = sub_21A3860A8;

  return MEMORY[0x28214F9F0](v2, v3);
}

uint64_t sub_21A3860A8(uint64_t a1)
{
  *(*v1 + 352) = a1;

  return MEMORY[0x2822009F8](sub_21A3861A8, 0, 0);
}

uint64_t sub_21A3861A8()
{
  sub_21A361318(v0 + 2);
  sub_21A3B187C();
  v1 = v0[10];
  v2 = v0[11];
  sub_21A360CEC(v0 + 7, v1);
  v3 = swift_task_alloc();
  v0[45] = v3;
  *v3 = v0;
  v3[1] = sub_21A386278;
  v4 = v0[44];

  return MEMORY[0x28214FA48](v4, v1, v2);
}

uint64_t sub_21A386278(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 368) = a1;
  *(v3 + 376) = v1;

  if (v1)
  {
    v4 = sub_21A386AA4;
  }

  else
  {
    v4 = sub_21A3863B4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21A3863B4()
{
  v1 = v0[46];
  sub_21A361318(v0 + 7);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[39];
    v4 = *(v3 + 16);
    v3 += 16;
    v64 = v4;
    v5 = v0[46] + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v6 = v0[27];
    v54 = (v6 + 48);
    v48 = (v6 + 32);
    v46 = (v6 + 8);
    v47 = (v6 + 16);
    v52 = (v3 - 8);
    v53 = (v0[22] + 8);
    v7 = v0[36];
    v45 = v7;
    v50 = (v7 + 56);
    v55 = MEMORY[0x277D84F90];
    v49 = *(v3 + 56);
    v51 = (v7 + 48);
    do
    {
      v62 = v5;
      v63 = v2;
      v9 = v0[30];
      v8 = v0[31];
      v10 = v0[26];
      v64(v0[42]);
      sub_21A3B202C();
      sub_21A365CB4(v8, v9, &qword_27CD24068, &qword_21A3B3290);
      v11 = (*v54)(v9, 1, v10);
      v13 = v0[31];
      v12 = v0[32];
      if (v11 == 1)
      {
        sub_21A365D1C(v0[31], &qword_27CD24068, &qword_21A3B3290);
        v14 = sub_21A3B1EBC();
        (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
      }

      else
      {
        v15 = v0[29];
        v16 = v0[28];
        v17 = v0[26];
        (*v48)(v15, v0[30], v17);
        (*v47)(v16, v15, v17);
        sub_21A3B1EAC();
        (*v46)(v15, v17);
        sub_21A365D1C(v13, &qword_27CD24068, &qword_21A3B3290);
      }

      v18 = v0[41];
      v58 = v0[38];
      v59 = v0[40];
      v57 = v0[25];
      v60 = v0[24];
      v19 = v0[23];
      v56 = v0[21];
      v61 = v0[20];
      (v64)(v18, v0[42]);
      sub_21A3B187C();
      sub_21A360CEC(v0 + 12, v0[15]);
      sub_21A3B200C();
      sub_21A3B1FEC();
      (*v53)(v19, v56);
      sub_21A3B1E6C();

      (v64)(v59, v18, v58);
      sub_21A365CB4(v57, v60, &qword_27CD23F70, &unk_21A3B4D70);
      sub_21A3B204C();
      v20 = sub_21A3B1E2C();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v61, 1, v20) == 1)
      {
        sub_21A365D1C(v0[20], &qword_27CD23F68, &unk_21A3B2F30);
        v22 = 0;
        v23 = 0;
      }

      else
      {
        v24 = v0[20];
        v22 = sub_21A3B1E1C();
        v23 = v25;
        (*(v21 + 8))(v24, v20);
      }

      v27 = v0[41];
      v26 = v0[42];
      v28 = v0[38];
      v29 = v0[35];
      v31 = v0[32];
      v30 = v0[33];
      v32 = v0[25];
      sub_21A363DB8(v0[40], v0[24], v22, v23, v30);
      sub_21A365D1C(v32, &qword_27CD23F70, &unk_21A3B4D70);
      v33 = *v52;
      (*v52)(v27, v28);
      sub_21A365D1C(v31, &qword_27CD24070, &unk_21A3B4D80);
      v33(v26, v28);
      v34 = *v51;
      if ((*v51)(v30, 1, v29))
      {
        sub_21A365D1C(v0[33], &qword_27CD23F78, &unk_21A3B2F40);
        v35 = 1;
      }

      else
      {
        sub_21A365B98(v0[33], v0[34]);
        v35 = 0;
      }

      v36 = v0[34];
      v37 = v0[35];
      (*v50)(v36, v35, 1, v37);
      sub_21A361318(v0 + 12);
      if (v34(v36, 1, v37) == 1)
      {
        sub_21A365D1C(v0[34], &qword_27CD23F78, &unk_21A3B2F40);
      }

      else
      {
        sub_21A365B98(v0[34], v0[37]);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v38 = v55;
        }

        else
        {
          v38 = sub_21A39363C(0, v55[2] + 1, 1, v55);
        }

        v40 = v38[2];
        v39 = v38[3];
        if (v40 >= v39 >> 1)
        {
          v38 = sub_21A39363C((v39 > 1), v40 + 1, 1, v38);
        }

        v41 = v0[37];
        v38[2] = v40 + 1;
        v55 = v38;
        sub_21A365B98(v41, v38 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v40);
      }

      v5 = v62 + v49;
      v2 = v63 - 1;
    }

    while (v63 != 1);

    v42 = v55;
  }

  else
  {

    v42 = MEMORY[0x277D84F90];
  }

  v43 = v0[1];

  return v43(v42);
}

uint64_t sub_21A386AA4()
{
  v16 = v0;
  sub_21A361318(v0 + 7);
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[47];
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  v3 = v1;
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v4 = sub_21A3B21DC();
  v5 = sub_21A3B25DC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[47];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 138543618;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v11;
    *v8 = v11;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_21A3AF0A8(0xD000000000000021, 0x800000021A3B53E0, &v15);
    _os_log_impl(&dword_21A35E000, v4, v5, "Unable to hydrate due to error: %{public}@, for: %{public}s", v7, 0x16u);
    sub_21A365D1C(v8, &qword_27CD240D0, &qword_21A3B3920);
    MEMORY[0x21CED8F60](v8, -1, -1);
    sub_21A361318(v9);
    MEMORY[0x21CED8F60](v9, -1, -1);
    MEMORY[0x21CED8F60](v7, -1, -1);
  }

  v12 = v0[47];
  sub_21A3B18BC();
  sub_21A380CDC(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
  swift_allocError();
  sub_21A3B18AC();
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_21A386E00(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = swift_task_alloc();
  *(v2 + 24) = v6;
  *v6 = v2;
  v6[1] = sub_21A3689C0;

  return sub_21A385CB0(v3, v4, v5);
}

unint64_t sub_21A386EC0()
{
  result = qword_27CD246D8;
  if (!qword_27CD246D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD246D8);
  }

  return result;
}

unint64_t sub_21A386F18()
{
  result = qword_27CD246E0;
  if (!qword_27CD246E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD246E0);
  }

  return result;
}

uint64_t sub_21A386FBC()
{
  v0 = sub_21A3B20CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A3B212C();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = sub_21A3B20EC();
  sub_21A365DFC(v9, qword_27CD24BB8);
  sub_21A365DC4(v9, qword_27CD24BB8);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_21A3B20FC();
}

uint64_t sub_21A38719C()
{
  v0 = sub_21A365B50(&qword_27CD24700, &qword_21A3B5608);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = sub_21A365B50(&qword_27CD24708, &qword_21A3B5610);
  MEMORY[0x28223BE20](v2, v3);
  sub_21A388698();
  sub_21A3B1C2C();
  sub_21A3B1C1C();
  swift_getKeyPath();
  sub_21A365B50(&qword_27CD24710, &qword_21A3B5640);
  sub_21A3B1C0C();

  sub_21A3B1C1C();
  swift_getKeyPath();
  sub_21A365B50(&qword_27CD24718, &unk_21A3B5648);
  sub_21A3B1C0C();

  sub_21A3B1C1C();
  sub_21A3B1C3C();
  return sub_21A3B1BFC();
}

uint64_t sub_21A38738C(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = type metadata accessor for CookingSupportAppIntentInvocation(0);
  v2[13] = swift_task_alloc();
  v2[14] = type metadata accessor for RecipeEntity(0);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A387450, 0, 0);
}

uint64_t sub_21A387450()
{
  v11 = v0;
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  v0[16] = *(v1 + 8);
  v0[17] = *(v1 + 16);
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v3 = sub_21A3B21DC();
  v4 = sub_21A3B25EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_21A3AF0A8(0xD00000000000001BLL, 0x800000021A3B5550, &v10);
    _os_log_impl(&dword_21A35E000, v3, v4, "Will perform intent: %{public}s", v5, 0xCu);
    sub_21A361318(v6);
    MEMORY[0x21CED8F60](v6, -1, -1);
    MEMORY[0x21CED8F60](v5, -1, -1);
  }

  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_21A3876A4;
  v8 = v0[15];

  return sub_21A39B130(v8);
}

uint64_t sub_21A3876A4()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_21A378434;
  }

  else
  {
    v2 = sub_21A3877B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_21A3877B8()
{
  v1 = v0[19];
  v2 = v0[13];
  v3 = (v2 + *(v0[12] + 20));

  sub_21A3B1A1C();
  v4 = v0[7];
  v5 = v0[8];

  *v3 = v4;
  v3[1] = v5;
  type metadata accessor for CookingSupportAppIntentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_21A3B1FDC();
  sub_21A3B187C();
  v6 = *sub_21A360CEC(v0 + 2, v0[5]);
  v7 = swift_task_alloc();
  *(v7 + 16) = v2;
  v8 = *(v6 + 16);
  v9 = swift_task_alloc();
  *(v9 + 16) = sub_21A367634;
  *(v9 + 24) = v7;
  v10 = *(*v8 + *MEMORY[0x277D841D0] + 16);
  v11 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v11));
  sub_21A36763C(v8 + v10);
  if (v1)
  {

    os_unfair_lock_unlock((v8 + v11));
  }

  else
  {
    v12 = v0[15];
    v13 = v0[13];
    os_unfair_lock_unlock((v8 + v11));

    sub_21A361318(v0 + 2);
    sub_21A367658(&qword_27CD23EC8, &unk_21A3B2DD0);
    sub_21A3B19BC();
    sub_21A36769C(v12, type metadata accessor for RecipeEntity);
    sub_21A36769C(v13, type metadata accessor for CookingSupportAppIntentInvocation);

    v14 = v0[1];

    v14();
  }
}

uint64_t sub_21A387A1C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23E50 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B20EC();
  v3 = sub_21A365DC4(v2, qword_27CD24BB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21A387AC8(uint64_t a1)
{
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = v1[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_21A3785FC;

  return sub_21A38738C(a1);
}

double sub_21A387B74@<D0>(_OWORD *a1@<X8>)
{
  sub_21A387C00(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_21A387BB4(uint64_t a1)
{
  v2 = sub_21A388698();

  return MEMORY[0x28210B538](a1, v2);
}

char *sub_21A387C00@<X0>(char **a1@<X8>)
{
  v72 = a1;
  v78 = sub_21A3B1C4C();
  v80 = *(v78 - 8);
  MEMORY[0x28223BE20](v78, v1);
  v77 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21A365B50(&qword_27CD24000, &unk_21A3B45C0);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v75 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v76 = &v57 - v8;
  v9 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v74 = &v57 - v11;
  v12 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v79 = &v57 - v14;
  v15 = sub_21A3B20CC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21A3B212C();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v22 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v22 - 8, v23);
  v24 = sub_21A3B20EC();
  v69 = v24;
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26);
  v73 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_21A365B50(&qword_27CD24008, &unk_21A3B3130);
  sub_21A3B247C();
  sub_21A3B211C();
  v29 = *(v16 + 104);
  v61 = *MEMORY[0x277CC9110];
  v28 = v61;
  v62 = v15;
  v29(v19, v61, v15);
  v63 = v29;
  v64 = v16 + 104;
  sub_21A3B20FC();
  sub_21A3B247C();
  sub_21A3B211C();
  v29(v19, v28, v15);
  v30 = v79;
  sub_21A3B20FC();
  v31 = *(v25 + 56);
  v68 = v25 + 56;
  v70 = v31;
  v31(v30, 0, 1, v24);
  v32 = type metadata accessor for RecipeEntity(0);
  (*(*(v32 - 8) + 56))(v74, 1, 1, v32);
  v33 = sub_21A3B19AC();
  v58 = v33;
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v59 = v35;
  v60 = v34 + 56;
  v35(v76, 1, 1, v33);
  v35(v75, 1, 1, v33);
  sub_21A365B50(&qword_27CD24010, &qword_21A3B45D0);
  sub_21A3B18EC();
  v84 = 0u;
  v85 = 0u;
  v86 = 0;
  sub_21A3B18DC();
  v36 = sub_21A3B188C();
  v57 = sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  v86 = 0;
  v84 = 0u;
  v85 = 0u;
  sub_21A3B18DC();
  v37 = sub_21A3B188C();
  v71 = sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  v86 = 0;
  v84 = 0u;
  v85 = 0u;
  sub_21A3B18DC();
  v38 = sub_21A3B188C();
  *&v84 = v36;
  *(&v84 + 1) = v37;
  *&v85 = v38;
  v65 = *MEMORY[0x277CBA308];
  v39 = *(v80 + 104);
  v80 += 104;
  v66 = v39;
  v39(v77);
  sub_21A36758C();
  sub_21A367658(&qword_27CD23FB8, &unk_21A3B2C80);
  v40 = v76;
  v74 = sub_21A3B1A4C();
  v67 = sub_21A365B50(&qword_27CD24380, &unk_21A3B45D8);
  sub_21A3B247C();
  sub_21A3B211C();
  v41 = v61;
  v42 = v62;
  v43 = v63;
  v63(v19, v61, v62);
  sub_21A3B20FC();
  sub_21A3B247C();
  sub_21A3B211C();
  v43(v19, v41, v42);
  v44 = v79;
  sub_21A3B20FC();
  v70(v44, 0, 1, v69);
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v45 = v58;
  v46 = v59;
  v59(v40, 1, 1, v58);
  v46(v75, 1, 1, v45);
  v86 = 0;
  v84 = 0u;
  v85 = 0u;
  sub_21A3B18DC();
  v47 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  v86 = 0;
  v84 = 0u;
  v85 = 0u;
  sub_21A3B18DC();
  v48 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24388, &qword_21A3B45E8);
  swift_getKeyPath();
  v49 = sub_21A3B1C7C();
  sub_21A365B50(&qword_27CD24390, &qword_21A3B4618);
  swift_getKeyPath();
  v50 = sub_21A3B1C7C();
  *&v84 = v47;
  *(&v84 + 1) = v48;
  *&v85 = v49;
  *(&v85 + 1) = v50;
  v66(v77, v65, v78);
  sub_21A3792E0();
  sub_21A36AA54();
  v51 = sub_21A3B1A4C();
  sub_21A365B50(&qword_27CD24020, &unk_21A3B3140);
  v86 = 0;
  v84 = 0u;
  v85 = 0u;
  sub_21A3B18DC();
  v52 = sub_21A3B188C();
  v86 = 0;
  v84 = 0u;
  v85 = 0u;
  sub_21A3B18DC();
  v53 = sub_21A3B188C();
  v86 = 0;
  v84 = 0u;
  v85 = 0u;
  sub_21A3B18DC();
  v54 = sub_21A3B188C();
  v86 = 0;
  v84 = 0u;
  v85 = 0u;
  sub_21A3B18DC();
  result = sub_21A3B188C();
  v56 = v72;
  *v72 = v74;
  v56[1] = v51;
  v56[2] = v52;
  v56[3] = v53;
  v56[4] = v54;
  v56[5] = result;
  return result;
}

unint64_t sub_21A388698()
{
  result = qword_27CD246F8;
  if (!qword_27CD246F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD246F8);
  }

  return result;
}

unint64_t sub_21A3886F0()
{
  result = qword_27CD24720;
  if (!qword_27CD24720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24720);
  }

  return result;
}

unint64_t sub_21A388748()
{
  result = qword_27CD24728;
  if (!qword_27CD24728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24728);
  }

  return result;
}

uint64_t sub_21A3887EC()
{
  v0 = sub_21A3B20CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A3B212C();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = sub_21A3B20EC();
  sub_21A365DFC(v9, qword_27CD24BD0);
  sub_21A365DC4(v9, qword_27CD24BD0);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_21A3B20FC();
}

uint64_t sub_21A3889D0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = type metadata accessor for CookingSupportAppIntentInvocation(0);
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for RecipeEntity(0);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A388A94, 0, 0);
}

uint64_t sub_21A388A94()
{
  v11 = v0;
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  v0[13] = *(v1 + 8);
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v3 = sub_21A3B21DC();
  v4 = sub_21A3B25EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_21A3AF0A8(0xD000000000000014, 0x800000021A3B5770, &v10);
    _os_log_impl(&dword_21A35E000, v3, v4, "Will perform intent: %{public}s", v5, 0xCu);
    sub_21A361318(v6);
    MEMORY[0x21CED8F60](v6, -1, -1);
    MEMORY[0x21CED8F60](v5, -1, -1);
  }

  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_21A388CC8;
  v8 = v0[12];

  return sub_21A39BE74(v8);
}

uint64_t sub_21A388CC8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_21A366834;
  }

  else
  {
    v2 = sub_21A388DDC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_21A388DDC()
{
  v1 = v0[15];
  v2 = v0[10];
  type metadata accessor for CookingSupportAppIntentAction(0);
  swift_storeEnumTagMultiPayload();

  sub_21A3B1FDC();
  sub_21A3B187C();
  v3 = *sub_21A360CEC(v0 + 2, v0[5]);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v5 = *(v3 + 16);
  v6 = swift_task_alloc();
  *(v6 + 16) = sub_21A367634;
  *(v6 + 24) = v4;
  v7 = *(*v5 + *MEMORY[0x277D841D0] + 16);
  v8 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v8));
  sub_21A36763C(v5 + v7);
  if (v1)
  {

    os_unfair_lock_unlock((v5 + v8));
  }

  else
  {
    v9 = v0[12];
    v10 = v0[10];
    os_unfair_lock_unlock((v5 + v8));

    sub_21A361318(v0 + 2);
    sub_21A367658(&qword_27CD23EC8, &unk_21A3B2DD0);
    sub_21A3B19BC();
    sub_21A36769C(v9, type metadata accessor for RecipeEntity);
    sub_21A36769C(v10, type metadata accessor for CookingSupportAppIntentInvocation);

    v11 = v0[1];

    v11();
  }
}

uint64_t sub_21A38901C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23E58 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B20EC();
  v3 = sub_21A365DC4(v2, qword_27CD24BD0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21A3890C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_21A365B50(&qword_27CD24748, &qword_21A3B57B8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_21A365B50(&qword_27CD24750, &qword_21A3B57C0);
  MEMORY[0x28223BE20](v4, v5);
  sub_21A3B1C2C();
  sub_21A3B1C1C();
  swift_getKeyPath();
  sub_21A365B50(&qword_27CD24758, &unk_21A3B57F0);
  sub_21A3B1C0C();

  sub_21A3B1C1C();
  sub_21A3B1C3C();
  return sub_21A3B1BFC();
}

uint64_t sub_21A38925C(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_21A366BA8;

  return sub_21A3889D0(a1);
}

double sub_21A389308@<D0>(uint64_t a1@<X8>)
{
  sub_21A389398(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_21A38934C(uint64_t a1)
{
  v2 = sub_21A389AE8();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_21A389398@<X0>(uint64_t *a1@<X8>)
{
  v51 = a1;
  v1 = sub_21A3B1C4C();
  v49 = *(v1 - 8);
  v50 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v48 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21A365B50(&qword_27CD24000, &unk_21A3B45C0);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v47 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v45 = v44 - v9;
  v10 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v44[0] = v44 - v12;
  v13 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v52 = v44 - v15;
  v16 = sub_21A3B20CC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21A3B212C();
  MEMORY[0x28223BE20](v21 - 8, v22);
  v23 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v23 - 8, v24);
  v25 = sub_21A3B20EC();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v44[1] = v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_21A365B50(&qword_27CD24008, &unk_21A3B3130);
  sub_21A3B247C();
  sub_21A3B211C();
  v29 = *MEMORY[0x277CC9110];
  v30 = *(v17 + 104);
  v30(v20, v29, v16);
  sub_21A3B20FC();
  sub_21A3B247C();
  sub_21A3B211C();
  v30(v20, v29, v16);
  v31 = v52;
  sub_21A3B20FC();
  (*(v26 + 56))(v31, 0, 1, v25);
  v32 = type metadata accessor for RecipeEntity(0);
  (*(*(v32 - 8) + 56))(v44[0], 1, 1, v32);
  v33 = sub_21A3B19AC();
  v34 = *(*(v33 - 8) + 56);
  v34(v45, 1, 1, v33);
  v34(v47, 1, 1, v33);
  sub_21A365B50(&qword_27CD24010, &qword_21A3B45D0);
  sub_21A3B18EC();
  v53 = 0u;
  v54 = 0u;
  v55 = 0;
  sub_21A3B18DC();
  v35 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v36 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v37 = sub_21A3B188C();
  *&v53 = v35;
  *(&v53 + 1) = v36;
  *&v54 = v37;
  (*(v49 + 104))(v48, *MEMORY[0x277CBA308], v50);
  sub_21A36758C();
  sub_21A367658(&qword_27CD23FB8, &unk_21A3B2C80);
  v38 = sub_21A3B1A4C();
  sub_21A365B50(&qword_27CD24020, &unk_21A3B3140);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v39 = sub_21A3B188C();
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v40 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v41 = sub_21A3B188C();
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  result = sub_21A3B188C();
  v43 = v51;
  *v51 = v38;
  v43[1] = v39;
  v43[2] = v40;
  v43[3] = v41;
  v43[4] = result;
  return result;
}

unint64_t sub_21A389AE8()
{
  result = qword_27CD24740;
  if (!qword_27CD24740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24740);
  }

  return result;
}

uint64_t sub_21A389B3C()
{
  v0 = sub_21A365B50(&qword_27CD248D8, &qword_21A3B5C70);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v14 - v3;
  v5 = sub_21A365B50(&qword_27CD248E0, &qword_21A3B5C78);
  MEMORY[0x28223BE20](v5, v6);
  sub_21A37612C();
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A36E89C();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v7 = sub_21A3B1AAC();
  v8 = *(v1 + 8);
  v8(v4, v0);
  sub_21A3B1B2C();
  v9 = sub_21A3B1AAC();
  v8(v4, v0);
  sub_21A3B1B2C();
  v10 = sub_21A3B1AAC();
  v8(v4, v0);
  sub_21A365B50(&qword_27CD248E8, qword_21A3B5C80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21A3B5800;
  *(v11 + 32) = v7;
  *(v11 + 40) = v9;
  *(v11 + 48) = v10;
  v12 = sub_21A3B1A9C();

  return v12;
}

uint64_t sub_21A389E38(uint64_t a1)
{
  v2 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v11 - v8;
  sub_21A390364(a1, &v11 - v8);
  sub_21A390364(v9, v6);
  sub_21A3B1A2C();
  return sub_21A3903D4(v9);
}

uint64_t sub_21A389F4C()
{
  v0 = sub_21A365B50(&qword_27CD248C8, &qword_21A3B5C38);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - v3;
  sub_21A390214();
  sub_21A3B1B2C();
  v5 = sub_21A3B1AAC();
  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_21A3B1B2C();
  v7 = sub_21A3B1AAC();
  v6(v4, v0);
  sub_21A365B50(&qword_27CD248D0, &qword_21A3B5C40);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21A3B5810;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = sub_21A3B1A9C();

  return v9;
}

uint64_t sub_21A38A110()
{
  v0 = sub_21A365B50(&qword_27CD248B8, &qword_21A3B5C28);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v12 - v3;
  sub_21A37F168();
  sub_21A3B1B2C();
  v5 = sub_21A3B1AAC();
  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_21A3B1B2C();
  v7 = sub_21A3B1AAC();
  v6(v4, v0);
  sub_21A3B1B2C();
  v8 = sub_21A3B1AAC();
  v6(v4, v0);
  sub_21A365B50(&qword_27CD248C0, &qword_21A3B5C30);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21A3B5800;
  *(v9 + 32) = v5;
  *(v9 + 40) = v7;
  *(v9 + 48) = v8;
  v10 = sub_21A3B1A9C();

  return v10;
}

uint64_t sub_21A38A334(uint64_t a1)
{
  v22 = a1;
  v1 = sub_21A365B50(&qword_27CD248A0, &qword_21A3B5C10);
  MEMORY[0x28223BE20](v1, v2);
  v3 = sub_21A365B50(&qword_27CD248A8, &qword_21A3B5C18);
  v21 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v16 - v6;
  sub_21A37465C();
  sub_21A3B1B2C();
  v20 = sub_21A3B1AAC();
  v8 = *(v4 + 8);
  v8(v7, v3);
  v23 = v4 + 8;
  sub_21A3B1B2C();
  v19 = sub_21A3B1AAC();
  v8(v7, v3);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A36E89C();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v18 = sub_21A3B1AAC();
  v9 = v21;
  v8(v7, v21);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v17 = sub_21A3B1AAC();
  v8(v7, v9);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v10 = sub_21A3B1AAC();
  v8(v7, v21);
  sub_21A365B50(&qword_27CD248B0, &qword_21A3B5C20);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21A3B5820;
  v12 = v19;
  *(v11 + 32) = v20;
  *(v11 + 40) = v12;
  v13 = v17;
  *(v11 + 48) = v18;
  *(v11 + 56) = v13;
  *(v11 + 64) = v10;
  v14 = sub_21A3B1A9C();

  return v14;
}

uint64_t sub_21A38A83C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v7 = sub_21A3B1B1C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  a3();
  sub_21A3B1A8C();

  a4(v12);
  sub_21A3B1B0C();
  v13 = sub_21A3B1AFC();
  (*(v8 + 8))(v11, v7);
  sub_21A365B50(&qword_27CD24788, &qword_21A3B5940);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21A3B3530;
  *(v14 + 32) = v13;
  v15 = sub_21A3B1AEC();

  return v15;
}

uint64_t sub_21A38A9BC(uint64_t a1)
{
  v29 = a1;
  v1 = sub_21A365B50(&qword_27CD24888, &qword_21A3B5BD0);
  MEMORY[0x28223BE20](v1, v2);
  v3 = sub_21A365B50(&qword_27CD24890, &qword_21A3B5BD8);
  v30 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v19 - v6;
  sub_21A37D490();
  sub_21A3B1B2C();
  v27 = sub_21A3B1AAC();
  v8 = *(v4 + 8);
  v8(v7, v3);
  sub_21A3B1B2C();
  v26 = sub_21A3B1AAC();
  v8(v7, v3);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  v28 = sub_21A36E89C();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v25 = sub_21A3B1AAC();
  v9 = v30;
  v8(v7, v30);
  sub_21A3B1B2C();
  v24 = sub_21A3B1AAC();
  v8(v7, v9);
  sub_21A3B1B2C();
  v23 = sub_21A3B1AAC();
  v8(v7, v9);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v22 = sub_21A3B1AAC();
  v10 = v30;
  v8(v7, v30);
  sub_21A3B1B2C();
  v21 = sub_21A3B1AAC();
  v8(v7, v10);
  sub_21A3B1B2C();
  v20 = sub_21A3B1AAC();
  v8(v7, v10);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v11 = sub_21A3B1AAC();
  v8(v7, v30);
  sub_21A365B50(&qword_27CD24898, &qword_21A3B5BE0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21A3B5830;
  v13 = v26;
  *(v12 + 32) = v27;
  *(v12 + 40) = v13;
  v14 = v24;
  *(v12 + 48) = v25;
  *(v12 + 56) = v14;
  v15 = v22;
  *(v12 + 64) = v23;
  *(v12 + 72) = v15;
  v16 = v20;
  *(v12 + 80) = v21;
  *(v12 + 88) = v16;
  *(v12 + 96) = v11;
  v17 = sub_21A3B1A9C();

  return v17;
}

uint64_t sub_21A38AFF8(uint64_t a1)
{
  v23 = sub_21A365B50(&qword_27CD24870, &qword_21A3B5B90);
  v2 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v3);
  v5 = v18 - v4;
  v6 = sub_21A365B50(&qword_27CD24878, &qword_21A3B5B98);
  MEMORY[0x28223BE20](v6, v7);
  sub_21A379334();
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  v24 = sub_21A36EB30();
  v18[1] = a1;
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v22 = sub_21A3B1AAC();
  v8 = *(v2 + 8);
  v9 = v23;
  v8(v5, v23);
  sub_21A3B1B2C();
  v21 = sub_21A3B1AAC();
  v8(v5, v9);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v20 = sub_21A3B1AAC();
  v10 = v23;
  v8(v5, v23);
  sub_21A3B1B2C();
  v19 = sub_21A3B1AAC();
  v8(v5, v10);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v11 = sub_21A3B1AAC();
  v8(v5, v10);
  sub_21A3B1B2C();
  v12 = sub_21A3B1AAC();
  v8(v5, v10);
  sub_21A365B50(&qword_27CD24880, &qword_21A3B5BA0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21A3B5840;
  v14 = v21;
  *(v13 + 32) = v22;
  *(v13 + 40) = v14;
  v15 = v19;
  *(v13 + 48) = v20;
  *(v13 + 56) = v15;
  *(v13 + 64) = v11;
  *(v13 + 72) = v12;
  v16 = sub_21A3B1A9C();

  return v16;
}

uint64_t sub_21A38B53C(uint64_t a1)
{
  v23 = sub_21A365B50(&qword_27CD24858, &qword_21A3B5B50);
  v2 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v3);
  v5 = v18 - v4;
  v6 = sub_21A365B50(&qword_27CD24860, &qword_21A3B5B58);
  MEMORY[0x28223BE20](v6, v7);
  sub_21A388698();
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  v24 = sub_21A36EB30();
  v18[1] = a1;
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v22 = sub_21A3B1AAC();
  v8 = *(v2 + 8);
  v9 = v23;
  v8(v5, v23);
  sub_21A3B1B2C();
  v21 = sub_21A3B1AAC();
  v8(v5, v9);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v20 = sub_21A3B1AAC();
  v10 = v23;
  v8(v5, v23);
  sub_21A3B1B2C();
  v19 = sub_21A3B1AAC();
  v8(v5, v10);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v11 = sub_21A3B1AAC();
  v8(v5, v10);
  sub_21A3B1B2C();
  v12 = sub_21A3B1AAC();
  v8(v5, v10);
  sub_21A365B50(&qword_27CD24868, &qword_21A3B5B60);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21A3B5840;
  v14 = v21;
  *(v13 + 32) = v22;
  *(v13 + 40) = v14;
  v15 = v19;
  *(v13 + 48) = v20;
  *(v13 + 56) = v15;
  *(v13 + 64) = v11;
  *(v13 + 72) = v12;
  v16 = sub_21A3B1A9C();

  return v16;
}

uint64_t sub_21A38BA40(void *a1)
{

  sub_21A3B1A8C();
  return sub_21A3B1A2C();
}

uint64_t sub_21A38BAD8(uint64_t a1)
{
  v39 = a1;
  v1 = sub_21A365B50(&qword_27CD24840, &qword_21A3B5B10);
  v2 = *(v1 - 8);
  v41 = v1;
  v42 = v2;
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v29 - v4;
  v6 = sub_21A365B50(&qword_27CD24848, &qword_21A3B5B18);
  MEMORY[0x28223BE20](v6, v7);
  sub_21A3675E0();
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  v8 = sub_21A36E89C();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v37 = sub_21A3B1AAC();
  v9 = v41;
  v10 = *(v42 + 8);
  v42 += 8;
  v40 = v10;
  v10(v5, v41);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  v38 = v8;
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v36 = sub_21A3B1AAC();
  v40(v5, v9);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v35 = sub_21A3B1AAC();
  v11 = v41;
  v40(v5, v41);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v34 = sub_21A3B1AAC();
  v12 = v11;
  v13 = v40;
  v40(v5, v12);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v33 = sub_21A3B1AAC();
  v13(v5, v41);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v32 = sub_21A3B1AAC();
  v40(v5, v41);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v31 = sub_21A3B1AAC();
  v14 = v40;
  v15 = v41;
  v40(v5, v41);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v39 = sub_21A3B1AAC();
  v14(v5, v15);
  sub_21A3B1B2C();
  v38 = sub_21A3B1AAC();
  v14(v5, v15);
  sub_21A3B1B2C();
  v30 = sub_21A3B1AAC();
  v14(v5, v15);
  sub_21A3B1B2C();
  v29 = sub_21A3B1AAC();
  v14(v5, v15);
  sub_21A3B1B2C();
  v16 = sub_21A3B1AAC();
  v14(v5, v15);
  sub_21A3B1B2C();
  v17 = sub_21A3B1AAC();
  v14(v5, v15);
  sub_21A3B1B2C();
  v18 = sub_21A3B1AAC();
  v14(v5, v15);
  sub_21A365B50(&qword_27CD24850, &qword_21A3B5B20);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21A3B5850;
  v20 = v36;
  *(v19 + 32) = v37;
  *(v19 + 40) = v20;
  v21 = v34;
  *(v19 + 48) = v35;
  *(v19 + 56) = v21;
  v22 = v32;
  *(v19 + 64) = v33;
  *(v19 + 72) = v22;
  v24 = v38;
  v23 = v39;
  *(v19 + 80) = v31;
  *(v19 + 88) = v23;
  v25 = v29;
  v26 = v30;
  *(v19 + 96) = v24;
  *(v19 + 104) = v26;
  *(v19 + 112) = v25;
  *(v19 + 120) = v16;
  *(v19 + 128) = v17;
  *(v19 + 136) = v18;
  v27 = sub_21A3B1A9C();

  return v27;
}

uint64_t sub_21A38C5B0(uint64_t a1)
{
  v2 = sub_21A365B50(&qword_27CD24828, &qword_21A3B5AD0);
  MEMORY[0x28223BE20](v2, v3);
  v4 = sub_21A365B50(&qword_27CD24830, &qword_21A3B5AD8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v20 - v7;
  sub_21A390268();
  sub_21A3B1B2C();
  v26 = sub_21A3B1AAC();
  v9 = *(v5 + 8);
  v9(v8, v4);
  sub_21A3B1B2C();
  v25 = sub_21A3B1AAC();
  v27 = v4;
  v31 = v9;
  v9(v8, v4);
  v28 = v5 + 8;
  sub_21A3B1B2C();
  v24 = sub_21A3B1AAC();
  v9(v8, v4);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  v29 = sub_21A36E89C();
  v30 = a1;
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v23 = sub_21A3B1AAC();
  v10 = v27;
  v31(v8, v27);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v22 = sub_21A3B1AAC();
  v11 = v31;
  v31(v8, v10);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v21 = sub_21A3B1AAC();
  v12 = v27;
  v11(v8, v27);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v13 = sub_21A3B1AAC();
  v31(v8, v12);
  sub_21A365B50(&qword_27CD24838, &qword_21A3B5AE0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21A3B5860;
  v15 = v25;
  *(v14 + 32) = v26;
  *(v14 + 40) = v15;
  v16 = v23;
  *(v14 + 48) = v24;
  *(v14 + 56) = v16;
  v17 = v21;
  *(v14 + 64) = v22;
  *(v14 + 72) = v17;
  *(v14 + 80) = v13;
  v18 = sub_21A3B1A9C();

  return v18;
}

uint64_t sub_21A38CBFC(uint64_t a1)
{
  v2 = sub_21A365B50(&qword_27CD24810, &qword_21A3B5A90);
  MEMORY[0x28223BE20](v2, v3);
  v4 = sub_21A365B50(&qword_27CD24818, &qword_21A3B5A98);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v35 - v7;
  sub_21A3902BC();
  sub_21A3B1B2C();
  v54 = sub_21A3B1AAC();
  v9 = *(v5 + 8);
  v9(v8, v4);
  sub_21A3B1B2C();
  v53 = sub_21A3B1AAC();
  v58 = v4;
  v9(v8, v4);
  v59 = v5 + 8;
  v55 = v9;
  sub_21A3B1B2C();
  v52 = sub_21A3B1AAC();
  v9(v8, v4);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  v10 = sub_21A36E89C();
  v56 = a1;
  v57 = v10;
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v51 = sub_21A3B1AAC();
  v11 = v58;
  v12 = v55;
  v55(v8, v58);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v50 = sub_21A3B1AAC();
  v12(v8, v11);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v49 = sub_21A3B1AAC();
  v13 = v55;
  v55(v8, v58);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v48 = sub_21A3B1AAC();
  v14 = v58;
  v13(v8, v58);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v47 = sub_21A3B1AAC();
  v15 = v14;
  v16 = v55;
  v55(v8, v15);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v46 = sub_21A3B1AAC();
  v17 = v58;
  v16(v8, v58);
  sub_21A3B1B2C();
  v45 = sub_21A3B1AAC();
  v16(v8, v17);
  sub_21A3B1B2C();
  v44 = sub_21A3B1AAC();
  v16(v8, v17);
  sub_21A3B1B2C();
  v43 = sub_21A3B1AAC();
  v16(v8, v17);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v42 = sub_21A3B1AAC();
  v16(v8, v58);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v41 = sub_21A3B1AAC();
  v16(v8, v58);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v40 = sub_21A3B1AAC();
  v18 = v58;
  v16(v8, v58);
  sub_21A3B1B2C();
  v39 = sub_21A3B1AAC();
  v16(v8, v18);
  sub_21A3B1B2C();
  v38 = sub_21A3B1AAC();
  v16(v8, v18);
  sub_21A3B1B2C();
  v37 = sub_21A3B1AAC();
  v16(v8, v18);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v36 = sub_21A3B1AAC();
  v55(v8, v58);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v35 = sub_21A3B1AAC();
  v19 = v58;
  v20 = v55;
  v55(v8, v58);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v21 = sub_21A3B1AAC();
  v20(v8, v19);
  sub_21A365B50(&qword_27CD24820, &qword_21A3B5AA0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_21A3B5870;
  v23 = v53;
  *(v22 + 32) = v54;
  *(v22 + 40) = v23;
  v24 = v51;
  *(v22 + 48) = v52;
  *(v22 + 56) = v24;
  v25 = v49;
  *(v22 + 64) = v50;
  *(v22 + 72) = v25;
  v26 = v47;
  *(v22 + 80) = v48;
  *(v22 + 88) = v26;
  v27 = v45;
  *(v22 + 96) = v46;
  *(v22 + 104) = v27;
  v28 = v43;
  *(v22 + 112) = v44;
  *(v22 + 120) = v28;
  v29 = v41;
  *(v22 + 128) = v42;
  *(v22 + 136) = v29;
  v30 = v39;
  *(v22 + 144) = v40;
  *(v22 + 152) = v30;
  v31 = v37;
  *(v22 + 160) = v38;
  *(v22 + 168) = v31;
  v32 = v35;
  *(v22 + 176) = v36;
  *(v22 + 184) = v32;
  *(v22 + 192) = v21;
  v33 = sub_21A3B1A9C();

  return v33;
}

uint64_t sub_21A38DB74(uint64_t a1)
{
  v22 = a1;
  v1 = sub_21A365B50(&qword_27CD247F8, &qword_21A3B5A50);
  MEMORY[0x28223BE20](v1, v2);
  v3 = sub_21A365B50(&qword_27CD24800, &qword_21A3B5A58);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v18 - v6;
  sub_21A371C0C();
  sub_21A3B1B2C();
  v29 = sub_21A3B1AAC();
  v8 = *(v4 + 8);
  v8(v7, v3);
  sub_21A3B1B2C();
  v28 = sub_21A3B1AAC();
  v8(v7, v3);
  sub_21A3B1B2C();
  v27 = sub_21A3B1AAC();
  v8(v7, v3);
  sub_21A3B1B2C();
  v26 = sub_21A3B1AAC();
  v19 = v3;
  v8(v7, v3);
  sub_21A3B1B2C();
  v25 = sub_21A3B1AAC();
  v8(v7, v3);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  v21 = sub_21A36E89C();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v24 = sub_21A3B1AAC();
  v9 = v19;
  v8(v7, v19);
  sub_21A3B1B2C();
  v23 = sub_21A3B1AAC();
  v8(v7, v9);
  sub_21A3B1B2C();
  v20 = sub_21A3B1AAC();
  v8(v7, v9);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v10 = sub_21A3B1AAC();
  v8(v7, v9);
  sub_21A365B50(&qword_27CD24808, &qword_21A3B5A60);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21A3B5830;
  v12 = v28;
  *(v11 + 32) = v29;
  *(v11 + 40) = v12;
  v13 = v26;
  *(v11 + 48) = v27;
  *(v11 + 56) = v13;
  v14 = v24;
  *(v11 + 64) = v25;
  *(v11 + 72) = v14;
  v15 = v20;
  *(v11 + 80) = v23;
  *(v11 + 88) = v15;
  *(v11 + 96) = v10;
  v16 = sub_21A3B1A9C();

  return v16;
}

uint64_t sub_21A38E150(uint64_t a1)
{
  v22 = a1;
  v1 = sub_21A365B50(&qword_27CD247E0, &qword_21A3B5A10);
  MEMORY[0x28223BE20](v1, v2);
  v3 = sub_21A365B50(&qword_27CD247E8, &qword_21A3B5A18);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v18 - v6;
  sub_21A37EEBC();
  sub_21A3B1B2C();
  v29 = sub_21A3B1AAC();
  v8 = *(v4 + 8);
  v8(v7, v3);
  sub_21A3B1B2C();
  v28 = sub_21A3B1AAC();
  v8(v7, v3);
  sub_21A3B1B2C();
  v27 = sub_21A3B1AAC();
  v8(v7, v3);
  sub_21A3B1B2C();
  v26 = sub_21A3B1AAC();
  v19 = v3;
  v8(v7, v3);
  sub_21A3B1B2C();
  v25 = sub_21A3B1AAC();
  v8(v7, v3);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  v21 = sub_21A36E89C();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v24 = sub_21A3B1AAC();
  v9 = v19;
  v8(v7, v19);
  sub_21A3B1B2C();
  v23 = sub_21A3B1AAC();
  v8(v7, v9);
  sub_21A3B1B2C();
  v20 = sub_21A3B1AAC();
  v8(v7, v9);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v10 = sub_21A3B1AAC();
  v8(v7, v9);
  sub_21A365B50(&qword_27CD247F0, &qword_21A3B5A20);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21A3B5830;
  v12 = v28;
  *(v11 + 32) = v29;
  *(v11 + 40) = v12;
  v13 = v26;
  *(v11 + 48) = v27;
  *(v11 + 56) = v13;
  v14 = v24;
  *(v11 + 64) = v25;
  *(v11 + 72) = v14;
  v15 = v20;
  *(v11 + 80) = v23;
  *(v11 + 88) = v15;
  *(v11 + 96) = v10;
  v16 = sub_21A3B1A9C();

  return v16;
}

uint64_t sub_21A38E73C(uint64_t a1)
{
  v22 = a1;
  v1 = sub_21A365B50(&qword_27CD247C8, &qword_21A3B59D0);
  v21 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v15 - v3;
  v5 = sub_21A365B50(&qword_27CD247D0, &qword_21A3B59D8);
  MEMORY[0x28223BE20](v5, v6);
  sub_21A390310();
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  v17 = sub_21A39043C(&qword_27CD24100, type metadata accessor for InstructionEntity, &unk_21A3B4330);
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v20 = sub_21A3B1AAC();
  v7 = v21 + 8;
  v15 = *(v21 + 8);
  v16 = v1;
  v15(v4, v1);
  v21 = v7;
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v19 = sub_21A3B1AAC();
  v8 = v15;
  v15(v4, v1);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v18 = sub_21A3B1AAC();
  v9 = v16;
  v8(v4, v16);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v10 = sub_21A3B1AAC();
  v8(v4, v9);
  sub_21A365B50(&qword_27CD247D8, &qword_21A3B59E0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21A3B5880;
  v12 = v19;
  *(v11 + 32) = v20;
  *(v11 + 40) = v12;
  *(v11 + 48) = v18;
  *(v11 + 56) = v10;
  v13 = sub_21A3B1A9C();

  return v13;
}

uint64_t sub_21A38EC74(uint64_t a1)
{
  v2 = type metadata accessor for InstructionEntity(0);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v11 - v8;
  sub_21A36E29C(a1, &v11 - v8);
  sub_21A36E29C(v9, v6);
  sub_21A3B1A2C();
  return sub_21A390484(v9);
}

uint64_t sub_21A38ED34()
{
  v0 = sub_21A3B1B1C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_21A39043C(&qword_27CD24100, type metadata accessor for InstructionEntity, &unk_21A3B4330);
  sub_21A3B1A8C();

  sub_21A390310();
  sub_21A3B1B0C();
  v5 = sub_21A3B1AFC();
  (*(v1 + 8))(v4, v0);
  sub_21A365B50(&qword_27CD24788, &qword_21A3B5940);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21A3B3530;
  *(v6 + 32) = v5;
  v7 = sub_21A3B1AEC();

  return v7;
}

uint64_t sub_21A38EED4()
{
  v0 = sub_21A3B1ACC();
  v1 = sub_21A3B1ACC();
  v2 = sub_21A3B1ACC();
  v3 = sub_21A3B1ACC();
  sub_21A365B50(&qword_27CD24790, &qword_21A3B5948);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21A3B5880;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_21A3B1ABC();

  return v5;
}

uint64_t sub_21A38EFAC(uint64_t a1)
{
  v23 = sub_21A365B50(&qword_27CD247B0, &qword_21A3B5990);
  v2 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v3);
  v5 = v18 - v4;
  v6 = sub_21A365B50(&qword_27CD247B8, &qword_21A3B5998);
  MEMORY[0x28223BE20](v6, v7);
  sub_21A3731E8();
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  v24 = sub_21A36E89C();
  v18[1] = a1;
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v22 = sub_21A3B1AAC();
  v8 = *(v2 + 8);
  v9 = v23;
  v8(v5, v23);
  sub_21A3B1B2C();
  v21 = sub_21A3B1AAC();
  v8(v5, v9);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v20 = sub_21A3B1AAC();
  v10 = v23;
  v8(v5, v23);
  sub_21A3B1B2C();
  v19 = sub_21A3B1AAC();
  v8(v5, v10);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v11 = sub_21A3B1AAC();
  v8(v5, v10);
  sub_21A3B1B2C();
  v12 = sub_21A3B1AAC();
  v8(v5, v10);
  sub_21A365B50(&qword_27CD247C0, &qword_21A3B59A0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21A3B5840;
  v14 = v21;
  *(v13 + 32) = v22;
  *(v13 + 40) = v14;
  v15 = v19;
  *(v13 + 48) = v20;
  *(v13 + 56) = v15;
  *(v13 + 64) = v11;
  *(v13 + 72) = v12;
  v16 = sub_21A3B1A9C();

  return v16;
}

uint64_t sub_21A38F4FC()
{
  v0 = sub_21A365B50(&qword_27CD24798, &qword_21A3B5950);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v13 - v3;
  v5 = sub_21A365B50(&qword_27CD247A0, &qword_21A3B5958);
  MEMORY[0x28223BE20](v5, v6);
  sub_21A389AE8();
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A36E89C();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v7 = sub_21A3B1AAC();
  v8 = *(v1 + 8);
  v8(v4, v0);
  sub_21A3B1B2C();
  v9 = sub_21A3B1AAC();
  v8(v4, v0);
  sub_21A365B50(&qword_27CD247A8, &qword_21A3B5960);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21A3B5810;
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;
  v11 = sub_21A3B1A9C();

  return v11;
}

uint64_t sub_21A38F7F0(uint64_t a1, uint64_t a2)
{
  v2 = sub_21A3B1ACC();
  sub_21A365B50(&qword_27CD24790, &qword_21A3B5948);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21A3B3530;
  *(v3 + 32) = v2;
  v4 = sub_21A3B1ABC();

  return v4;
}

uint64_t sub_21A38F878()
{
  if (qword_27CD23E60 != -1)
  {
    swift_once();
  }
}

uint64_t sub_21A38F8E4()
{
  v0 = sub_21A3B1B9C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v37 = sub_21A3759E8();
  *(&v37 + 1) = v5;
  *&v38 = v6;
  *(&v38 + 1) = v7;
  sub_21A37612C();
  sub_21A3B1BAC();
  v36 = sub_21A3B1B8C();
  v8 = *(v1 + 8);
  v8(v4, v0);
  sub_21A365B50(&qword_27CD24250, &qword_21A3B3E88);
  sub_21A3B18EC();
  v37 = 0u;
  v38 = 0u;
  v39 = 0;
  sub_21A3B18DC();
  v9 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  sub_21A3B18DC();
  v10 = sub_21A3B188C();
  *&v37 = v9;
  *(&v37 + 1) = v10;
  sub_21A390214();
  sub_21A3B1BAC();
  v35 = sub_21A3B1B8C();
  v8(v4, v0);
  sub_21A365B50(&qword_27CD24010, &qword_21A3B45D0);
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  sub_21A3B18DC();
  v11 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  sub_21A3B18DC();
  v12 = sub_21A3B188C();
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  sub_21A3B18DC();
  v13 = sub_21A3B188C();
  *&v37 = v11;
  *(&v37 + 1) = v12;
  *&v38 = v13;
  sub_21A37F168();
  sub_21A3B1BAC();
  v34 = sub_21A3B1B8C();
  v8(v4, v0);
  sub_21A373EE8(&v37);
  sub_21A37465C();
  sub_21A3B1BAC();
  v33 = sub_21A3B1B8C();
  v8(v4, v0);
  sub_21A37CD40(&v37);
  sub_21A37D490();
  sub_21A3B1BAC();
  v32 = sub_21A3B1B8C();
  v8(v4, v0);
  sub_21A378848(&v37);
  sub_21A379334();
  sub_21A3B1BAC();
  v31 = sub_21A3B1B8C();
  v8(v4, v0);
  sub_21A387C00(&v37);
  sub_21A388698();
  sub_21A3B1BAC();
  v30 = sub_21A3B1B8C();
  v8(v4, v0);
  sub_21A366E3C(&v37);
  sub_21A3675E0();
  sub_21A3B1BAC();
  v29 = sub_21A3B1B8C();
  v8(v4, v0);
  sub_21A3911D8(&v37);
  sub_21A390268();
  sub_21A3B1BAC();
  v28 = sub_21A3B1B8C();
  v8(v4, v0);
  sub_21A3ABBB0(&v37);
  sub_21A3902BC();
  sub_21A3B1BAC();
  v14 = sub_21A3B1B8C();
  v8(v4, v0);
  sub_21A3714BC(&v37);
  sub_21A371C0C();
  sub_21A3B1BAC();
  v15 = sub_21A3B1B8C();
  v8(v4, v0);
  sub_21A37E76C(&v37);
  sub_21A37EEBC();
  sub_21A3B1BAC();
  v16 = sub_21A3B1B8C();
  v8(v4, v0);
  sub_21A394708(&v37);
  sub_21A390310();
  sub_21A3B1BAC();
  v17 = sub_21A3B1B8C();
  v8(v4, v0);
  sub_21A372A98(&v37);
  sub_21A3731E8();
  sub_21A3B1BAC();
  v18 = sub_21A3B1B8C();
  v8(v4, v0);
  sub_21A389398(&v37);
  sub_21A389AE8();
  sub_21A3B1BAC();
  v19 = sub_21A3B1B8C();
  v8(v4, v0);
  sub_21A365B50(&qword_27CD24780, "X");
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_21A3B5890;
  v21 = v35;
  *(v20 + 32) = v36;
  *(v20 + 40) = v21;
  v22 = v33;
  *(v20 + 48) = v34;
  *(v20 + 56) = v22;
  v23 = v31;
  *(v20 + 64) = v32;
  *(v20 + 72) = v23;
  v24 = v29;
  *(v20 + 80) = v30;
  *(v20 + 88) = v24;
  *(v20 + 96) = v28;
  *(v20 + 104) = v14;
  *(v20 + 112) = v15;
  *(v20 + 120) = v16;
  *(v20 + 128) = v17;
  *(v20 + 136) = v18;
  *(v20 + 144) = v19;
  v25 = sub_21A3B1B7C();

  return v25;
}

unint64_t sub_21A390214()
{
  result = qword_27CD24760;
  if (!qword_27CD24760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24760);
  }

  return result;
}

unint64_t sub_21A390268()
{
  result = qword_27CD24768;
  if (!qword_27CD24768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24768);
  }

  return result;
}

unint64_t sub_21A3902BC()
{
  result = qword_27CD24770;
  if (!qword_27CD24770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24770);
  }

  return result;
}

unint64_t sub_21A390310()
{
  result = qword_27CD24778;
  if (!qword_27CD24778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24778);
  }

  return result;
}

uint64_t sub_21A390364(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A3903D4(uint64_t a1)
{
  v2 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A39043C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21A390484(uint64_t a1)
{
  v2 = type metadata accessor for InstructionEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_21A3904E0@<Q0>(uint64_t a1@<X8>)
{
  sub_21A3B1A1C();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

unint64_t sub_21A390534()
{
  result = qword_27CD248F0;
  if (!qword_27CD248F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD248F0);
  }

  return result;
}

unint64_t sub_21A39058C()
{
  result = qword_27CD248F8;
  if (!qword_27CD248F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD248F8);
  }

  return result;
}

uint64_t sub_21A390630()
{
  v0 = sub_21A3B20CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A3B212C();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = sub_21A3B20EC();
  sub_21A365DFC(v9, qword_27CD24BF0);
  sub_21A365DC4(v9, qword_27CD24BF0);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_21A3B20FC();
}

uint64_t sub_21A390810(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = type metadata accessor for CookingSupportAppIntentInvocation(0);
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for RecipeEntity(0);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A3908D4, 0, 0);
}

uint64_t sub_21A3908D4()
{
  v11 = v0;
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  v0[13] = *(v1 + 8);
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v3 = sub_21A3B21DC();
  v4 = sub_21A3B25EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_21A3AF0A8(0xD000000000000018, 0x800000021A3B5DB0, &v10);
    _os_log_impl(&dword_21A35E000, v3, v4, "Will perform intent: %{public}s", v5, 0xCu);
    sub_21A361318(v6);
    MEMORY[0x21CED8F60](v6, -1, -1);
    MEMORY[0x21CED8F60](v5, -1, -1);
  }

  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_21A390B08;
  v8 = v0[12];

  return sub_21A39CB94(v8);
}

uint64_t sub_21A390B08()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_21A366834;
  }

  else
  {
    v2 = sub_21A390C1C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_21A390C1C()
{
  v1 = v0[15];
  v2 = v0[10];
  type metadata accessor for CookingSupportAppIntentAction(0);
  swift_storeEnumTagMultiPayload();

  sub_21A3B1FDC();
  sub_21A3B187C();
  v3 = *sub_21A360CEC(v0 + 2, v0[5]);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v5 = *(v3 + 16);
  v6 = swift_task_alloc();
  *(v6 + 16) = sub_21A367634;
  *(v6 + 24) = v4;
  v7 = *(*v5 + *MEMORY[0x277D841D0] + 16);
  v8 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v8));
  sub_21A36763C(v5 + v7);
  if (v1)
  {

    os_unfair_lock_unlock((v5 + v8));
  }

  else
  {
    v9 = v0[12];
    v10 = v0[10];
    os_unfair_lock_unlock((v5 + v8));

    sub_21A361318(v0 + 2);
    sub_21A367658(&qword_27CD23EC8, &unk_21A3B2DD0);
    sub_21A3B19BC();
    sub_21A36769C(v9, type metadata accessor for RecipeEntity);
    sub_21A36769C(v10, type metadata accessor for CookingSupportAppIntentInvocation);

    v11 = v0[1];

    v11();
  }
}

uint64_t sub_21A390E5C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23E68 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B20EC();
  v3 = sub_21A365DC4(v2, qword_27CD24BF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21A390F04(uint64_t a1, uint64_t a2)
{
  v2 = sub_21A365B50(&qword_27CD24910, &qword_21A3B5E00);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_21A365B50(&qword_27CD24918, &qword_21A3B5E08);
  MEMORY[0x28223BE20](v4, v5);
  sub_21A3B1C2C();
  sub_21A3B1C1C();
  swift_getKeyPath();
  sub_21A365B50(&qword_27CD24920, &unk_21A3B5E38);
  sub_21A3B1C0C();

  sub_21A3B1C1C();
  sub_21A3B1C3C();
  return sub_21A3B1BFC();
}

uint64_t sub_21A39109C(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_21A366BA8;

  return sub_21A390810(a1);
}

double sub_21A391148@<D0>(uint64_t a2@<X8>)
{
  sub_21A3911D8(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_21A39118C(uint64_t a1)
{
  v2 = sub_21A390268();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_21A3911D8@<X0>(uint64_t *a1@<X8>)
{
  v51 = a1;
  v1 = sub_21A3B1C4C();
  v49 = *(v1 - 8);
  v50 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v48 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21A365B50(&qword_27CD24000, &unk_21A3B45C0);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v47 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v45 = v44 - v9;
  v10 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v44[0] = v44 - v12;
  v13 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v52 = v44 - v15;
  v16 = sub_21A3B20CC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21A3B212C();
  MEMORY[0x28223BE20](v21 - 8, v22);
  v23 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v23 - 8, v24);
  v25 = sub_21A3B20EC();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v44[1] = v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_21A365B50(&qword_27CD24008, &unk_21A3B3130);
  sub_21A3B247C();
  sub_21A3B211C();
  v29 = *MEMORY[0x277CC9110];
  v30 = *(v17 + 104);
  v30(v20, v29, v16);
  sub_21A3B20FC();
  sub_21A3B247C();
  sub_21A3B211C();
  v30(v20, v29, v16);
  v31 = v52;
  sub_21A3B20FC();
  (*(v26 + 56))(v31, 0, 1, v25);
  v32 = type metadata accessor for RecipeEntity(0);
  (*(*(v32 - 8) + 56))(v44[0], 1, 1, v32);
  v33 = sub_21A3B19AC();
  v34 = *(*(v33 - 8) + 56);
  v34(v45, 1, 1, v33);
  v34(v47, 1, 1, v33);
  sub_21A365B50(&qword_27CD24010, &qword_21A3B45D0);
  sub_21A3B18EC();
  v53 = 0u;
  v54 = 0u;
  v55 = 0;
  sub_21A3B18DC();
  v35 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v36 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v37 = sub_21A3B188C();
  *&v53 = v35;
  *(&v53 + 1) = v36;
  *&v54 = v37;
  (*(v49 + 104))(v48, *MEMORY[0x277CBA308], v50);
  sub_21A36758C();
  sub_21A367658(&qword_27CD23FB8, &unk_21A3B2C80);
  v38 = sub_21A3B1A4C();
  sub_21A365B50(&qword_27CD24020, &unk_21A3B3140);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v39 = sub_21A3B188C();
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v40 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v41 = sub_21A3B188C();
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  result = sub_21A3B188C();
  v43 = v51;
  *v51 = v38;
  v43[1] = v39;
  v43[2] = v40;
  v43[3] = v41;
  v43[4] = result;
  return result;
}

unint64_t sub_21A39192C()
{
  result = qword_27CD24928;
  if (!qword_27CD24928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24928);
  }

  return result;
}

unint64_t sub_21A391984()
{
  result = qword_27CD24930;
  if (!qword_27CD24930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24930);
  }

  return result;
}

uint64_t sub_21A391A5C()
{
  v0 = sub_21A3B20CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A3B212C();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = sub_21A3B20EC();
  sub_21A365DFC(v9, qword_27CD24C08);
  sub_21A365DC4(v9, qword_27CD24C08);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_21A3B20FC();
}

uint64_t sub_21A391C3C(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  sub_21A365B50(&qword_27CD23F68, &unk_21A3B2F30);
  v2[14] = swift_task_alloc();
  v3 = sub_21A3B1FFC();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v4 = sub_21A3B1E4C();
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  sub_21A365B50(&qword_27CD24068, &qword_21A3B3290);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80);
  v2[26] = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v5 = type metadata accessor for RecipeEntity(0);
  v2[29] = v5;
  v2[30] = *(v5 - 8);
  v2[31] = swift_task_alloc();
  sub_21A365B50(&qword_27CD24078, &qword_21A3B3298);
  v2[32] = swift_task_alloc();
  v6 = sub_21A3B205C();
  v2[33] = v6;
  v2[34] = *(v6 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v7 = sub_21A3B1DEC();
  v2[39] = v7;
  v2[40] = *(v7 - 8);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A39201C, 0, 0);
}

uint64_t sub_21A39201C(uint64_t a1)
{
  sub_21A3B187C();
  v3 = v1[5];
  v2 = v1[6];
  sub_21A360CEC(v1 + 2, v3);
  v4 = swift_task_alloc();
  v1[43] = v4;
  *v4 = v1;
  v4[1] = sub_21A3920E0;

  return MEMORY[0x28214FA60](v3, v2);
}

uint64_t sub_21A3920E0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  if (v1)
  {
    v4 = sub_21A392BE4;
  }

  else
  {
    v4 = sub_21A3921F4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21A3921F4()
{
  v1 = v0[44];
  sub_21A361318(v0 + 2);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[40];
    v4 = v0[34];
    v5 = *(v3 + 16);
    v3 += 16;
    v6 = v0[44] + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v93 = *(v3 + 56);
    v89 = (v4 + 56);
    v91 = (v3 - 8);
    v85 = v4;
    v87 = (v4 + 32);
    v79 = MEMORY[0x277D84F90];
    v7 = v0[45];
    v8 = v5;
    do
    {
      v12 = v0[41];
      v11 = v0[42];
      v13 = v0[39];
      v8(v11, v6, v13);
      v8(v12, v11, v13);
      sub_21A3B1F8C();
      v14 = v7;
      v15 = v0[42];
      v16 = v0[39];
      if (v14)
      {
        v10 = v0[32];
        v9 = v0[33];

        (*v91)(v15, v16);
        (*v89)(v10, 1, 1, v9);
        sub_21A365D1C(v10, &qword_27CD24078, &qword_21A3B3298);
      }

      else
      {
        v17 = v0[37];
        v19 = v0[32];
        v18 = v0[33];
        (*v91)(v0[42], v0[39]);
        (*v89)(v19, 0, 1, v18);
        v20 = *v87;
        (*v87)(v17, v19, v18);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v21 = v79;
        }

        else
        {
          v21 = sub_21A3936B4(0, v79[2] + 1, 1, v79, &qword_27CD24938, &qword_21A3B5F88, MEMORY[0x277CFCDA0]);
        }

        v23 = v21[2];
        v22 = v21[3];
        if (v23 >= v22 >> 1)
        {
          v21 = sub_21A3936B4((v22 > 1), v23 + 1, 1, v21, &qword_27CD24938, &qword_21A3B5F88, MEMORY[0x277CFCDA0]);
        }

        v24 = v0[37];
        v25 = v0[33];
        v21[2] = v23 + 1;
        v79 = v21;
        v20(v21 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v23, v24, v25);
      }

      v7 = 0;
      v6 += v93;
      --v2;
    }

    while (v2);

    v26 = v79;
    v27 = v79[2];
    if (v27)
    {
      goto LABEL_13;
    }

LABEL_33:

    v33 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  v26 = MEMORY[0x277D84F90];
  v27 = *(MEMORY[0x277D84F90] + 16);
  if (!v27)
  {
    goto LABEL_33;
  }

LABEL_13:
  v28 = v0[34];
  v29 = *(v28 + 16);
  v28 += 16;
  v94 = v29;
  v30 = v26 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
  v31 = v0[21];
  v78 = (v31 + 48);
  v72 = (v31 + 32);
  v70 = (v31 + 8);
  v71 = (v31 + 16);
  v76 = (v28 - 8);
  v77 = (v0[16] + 8);
  v32 = v0[30];
  v75 = (v32 + 48);
  v33 = MEMORY[0x277D84F90];
  v69 = v32;
  v74 = (v32 + 56);
  v73 = *(v28 + 56);
  do
  {
    v88 = v30;
    v90 = v27;
    v35 = v0[24];
    v34 = v0[25];
    v36 = v0[20];
    v94(v0[38]);
    sub_21A3B202C();
    sub_21A365CB4(v34, v35, &qword_27CD24068, &qword_21A3B3290);
    v37 = (*v78)(v35, 1, v36);
    v38 = v0[25];
    v39 = v0[26];
    v92 = v33;
    if (v37 == 1)
    {
      sub_21A365D1C(v38, &qword_27CD24068, &qword_21A3B3290);
      v40 = sub_21A3B1EBC();
      (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
    }

    else
    {
      v41 = v0[23];
      v42 = v0[22];
      v43 = v0[20];
      (*v72)(v41, v0[24], v43);
      (*v71)(v42, v41, v43);
      sub_21A3B1EAC();
      (*v70)(v41, v43);
      sub_21A365D1C(v38, &qword_27CD24068, &qword_21A3B3290);
    }

    v44 = v0[36];
    v82 = v0[33];
    v83 = v0[35];
    v81 = v0[19];
    v45 = v0[17];
    v80 = v0[15];
    v84 = v0[18];
    v86 = v0[14];
    (v94)(v44, v0[38]);
    sub_21A3B187C();
    sub_21A360CEC(v0 + 7, v0[10]);
    sub_21A3B200C();
    sub_21A3B1FEC();
    (*v77)(v45, v80);
    sub_21A3B1E6C();

    (v94)(v83, v44, v82);
    sub_21A365CB4(v81, v84, &qword_27CD23F70, &unk_21A3B4D70);
    sub_21A3B204C();
    v46 = sub_21A3B1E2C();
    v47 = *(v46 - 8);
    if ((*(v47 + 48))(v86, 1, v46) == 1)
    {
      sub_21A365D1C(v0[14], &qword_27CD23F68, &unk_21A3B2F30);
      v48 = 0;
      v49 = 0;
    }

    else
    {
      v50 = v0[14];
      v48 = sub_21A3B1E1C();
      v49 = v51;
      (*(v47 + 8))(v50, v46);
    }

    v52 = v0[38];
    v53 = v0[36];
    v54 = v0[33];
    v55 = v0[29];
    v57 = v0[26];
    v56 = v0[27];
    v58 = v0[19];
    sub_21A363DB8(v0[35], v0[18], v48, v49, v56);
    sub_21A365D1C(v58, &qword_27CD23F70, &unk_21A3B4D70);
    v59 = *v76;
    (*v76)(v53, v54);
    sub_21A365D1C(v57, &qword_27CD24070, &unk_21A3B4D80);
    v59(v52, v54);
    v60 = *v75;
    if ((*v75)(v56, 1, v55))
    {
      sub_21A365D1C(v0[27], &qword_27CD23F78, &unk_21A3B2F40);
      v61 = 1;
    }

    else
    {
      sub_21A365B98(v0[27], v0[28]);
      v61 = 0;
    }

    v62 = v0[28];
    v63 = v0[29];
    (*v74)(v62, v61, 1, v63);
    sub_21A361318(v0 + 7);
    if (v60(v62, 1, v63) == 1)
    {
      sub_21A365D1C(v0[28], &qword_27CD23F78, &unk_21A3B2F40);
      v33 = v92;
    }

    else
    {
      sub_21A365B98(v0[28], v0[31]);
      v33 = v92;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_21A3936B4(0, v92[2] + 1, 1, v92, &qword_27CD24940, &qword_21A3B5F90, type metadata accessor for RecipeEntity);
      }

      v65 = v33[2];
      v64 = v33[3];
      if (v65 >= v64 >> 1)
      {
        v33 = sub_21A3936B4((v64 > 1), v65 + 1, 1, v33, &qword_27CD24940, &qword_21A3B5F90, type metadata accessor for RecipeEntity);
      }

      v66 = v0[31];
      v33[2] = v65 + 1;
      sub_21A365B98(v66, v33 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v65);
    }

    v30 = &v88[v73];
    v27 = v90 - 1;
  }

  while (v90 != 1);

LABEL_34:

  v67 = v0[1];

  return v67(v33);
}

uint64_t sub_21A392BE4()
{
  sub_21A361318(v0 + 2);
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[45];
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  v3 = v1;
  v4 = sub_21A3B21DC();
  v5 = sub_21A3B25DC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[45];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_21A35E000, v4, v5, "Error loading recipe history: %{public}@", v7, 0xCu);
    sub_21A365D1C(v8, &qword_27CD240D0, &qword_21A3B3920);
    MEMORY[0x21CED8F60](v8, -1, -1);
    MEMORY[0x21CED8F60](v7, -1, -1);
  }

  v11 = v0[45];

  sub_21A3B18BC();
  sub_21A380CDC(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
  swift_allocError();
  sub_21A3B18AC();
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_21A392EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_21A392F00, 0, 0);
}

uint64_t sub_21A392F00()
{
  v11 = v0;
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = sub_21A3B21FC();
  sub_21A365DC4(v1, qword_27CD24AB0);
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v2 = sub_21A3B21DC();
  v3 = sub_21A3B25EC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_21A3AF0A8(0xD000000000000019, 0x800000021A3B5F30, &v10);
    _os_log_impl(&dword_21A35E000, v2, v3, "Will perform intent: %{public}s", v4, 0xCu);
    sub_21A361318(v5);
    MEMORY[0x21CED8F60](v5, -1, -1);
    MEMORY[0x21CED8F60](v4, -1, -1);
  }

  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_21A3930D4;
  v8 = v0[4];
  v7 = v0[5];

  return sub_21A391C3C(v8, v7);
}

uint64_t sub_21A3930D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x2822009F8](sub_21A393220, 0, 0);
  }
}

uint64_t sub_21A393220()
{
  v0[2] = v0[7];
  sub_21A365B50(&qword_27CD24060, qword_21A3B31A0);
  sub_21A380C28();
  sub_21A3B19BC();

  v1 = v0[1];

  return v1();
}

uint64_t sub_21A3932CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23E70 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B20EC();
  v3 = sub_21A365DC4(v2, qword_27CD24C08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21A393374(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21A3650E8;

  return sub_21A392EDC(a1, v5, v4);
}

uint64_t sub_21A393420@<X0>(uint64_t *a1@<X8>)
{
  sub_21A365B50(&qword_27CD24250, &qword_21A3B3E88);
  sub_21A3B18EC();
  sub_21A3B18DC();
  v2 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  sub_21A3B18DC();
  result = sub_21A3B188C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_21A3934E4(uint64_t a1)
{
  v2 = sub_21A390214();

  return MEMORY[0x28210B538](a1, v2);
}

char *sub_21A393530(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_21A3936B4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_21A365B50(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_21A393894()
{
  result = qword_27CD24950;
  if (!qword_27CD24950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24950);
  }

  return result;
}

unint64_t sub_21A3938EC()
{
  result = qword_27CD24958;
  if (!qword_27CD24958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24958);
  }

  return result;
}

uint64_t sub_21A3939B4()
{
  v0 = sub_21A3B20CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A3B212C();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = sub_21A3B20EC();
  sub_21A365DFC(v9, qword_27CD24C20);
  sub_21A365DC4(v9, qword_27CD24C20);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_21A3B20FC();
}

uint64_t sub_21A393B94()
{
  v0 = sub_21A365B50(&qword_27CD24988, &qword_21A3B6158);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = sub_21A365B50(&qword_27CD24990, &qword_21A3B6160);
  MEMORY[0x28223BE20](v2, v3);
  sub_21A390310();
  sub_21A3B1C2C();
  sub_21A3B1C1C();
  swift_getKeyPath();
  sub_21A365B50(&qword_27CD24998, &qword_21A3B6190);
  sub_21A3B1C0C();

  sub_21A3B1C1C();
  swift_getKeyPath();
  sub_21A365B50(&qword_27CD249A0, &unk_21A3B6198);
  sub_21A3B1C0C();

  sub_21A3B1C1C();
  sub_21A3B1C3C();
  return sub_21A3B1BFC();
}

uint64_t sub_21A393D80(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  type metadata accessor for InstructionEntity(0);
  v2[9] = swift_task_alloc();
  v2[10] = type metadata accessor for CookingSupportAppIntentInvocation(0);
  v2[11] = swift_task_alloc();
  v2[12] = type metadata accessor for RecipeEntity(0);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A393E70, 0, 0);
}

uint64_t sub_21A393E70()
{
  v11 = v0;
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  v0[14] = *(v1 + 8);
  v0[15] = *(v1 + 16);
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v3 = sub_21A3B21DC();
  v4 = sub_21A3B25EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_21A3AF0A8(0xD000000000000016, 0x800000021A3B60C0, &v10);
    _os_log_impl(&dword_21A35E000, v3, v4, "Will perform intent: %{public}s", v5, 0xCu);
    sub_21A361318(v6);
    MEMORY[0x21CED8F60](v6, -1, -1);
    MEMORY[0x21CED8F60](v5, -1, -1);
  }

  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_21A3940C4;
  v8 = v0[13];

  return sub_21A39D8B4(v8);
}

uint64_t sub_21A3940C4()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_21A3944A8;
  }

  else
  {
    v2 = sub_21A3941D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_21A3941D8()
{
  v1 = v0[17];
  v2 = v0[11];
  v3 = v0[9];
  v4 = *(v0[10] + 20);

  sub_21A3B1A1C();
  v5 = sub_21A3B20BC();
  (*(*(v5 - 8) + 16))(v2 + v4, v3, v5);
  sub_21A3952CC(v3, type metadata accessor for InstructionEntity);
  type metadata accessor for CookingSupportAppIntentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_21A3B1FDC();
  sub_21A3B187C();
  v6 = *sub_21A360CEC(v0 + 2, v0[5]);
  v7 = swift_task_alloc();
  *(v7 + 16) = v2;
  v8 = *(v6 + 16);
  v9 = swift_task_alloc();
  *(v9 + 16) = sub_21A367634;
  *(v9 + 24) = v7;
  v10 = *(*v8 + *MEMORY[0x277D841D0] + 16);
  v11 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v11));
  sub_21A36763C(v8 + v10);
  if (v1)
  {

    os_unfair_lock_unlock((v8 + v11));
  }

  else
  {
    v12 = v0[13];
    v13 = v0[11];
    os_unfair_lock_unlock((v8 + v11));

    sub_21A361318(v0 + 2);
    sub_21A395284(&qword_27CD23EC8, type metadata accessor for RecipeEntity, &unk_21A3B2DD0);
    sub_21A3B19BC();
    sub_21A3952CC(v12, type metadata accessor for RecipeEntity);
    sub_21A3952CC(v13, type metadata accessor for CookingSupportAppIntentInvocation);

    v14 = v0[1];

    v14();
  }
}

uint64_t sub_21A3944A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A394524@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23E78 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B20EC();
  v3 = sub_21A365DC4(v2, qword_27CD24C20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21A3945D0(uint64_t a1)
{
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = v1[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_21A3785FC;

  return sub_21A393D80(a1);
}

double sub_21A39467C@<D0>(_OWORD *a2@<X8>)
{
  sub_21A394708(v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

uint64_t sub_21A3946BC(uint64_t a1)
{
  v2 = sub_21A390310();

  return MEMORY[0x28210B538](a1, v2);
}

char *sub_21A394708@<X0>(char **a1@<X8>)
{
  v79 = a1;
  v1 = sub_21A365B50(&qword_27CD24970, &unk_21A3B6108);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v78 = &v60 - v3;
  v84 = sub_21A3B1C4C();
  v86 = *(v84 - 8);
  MEMORY[0x28223BE20](v84, v4);
  v83 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A365B50(&qword_27CD24000, &unk_21A3B45C0);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v85 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v82 = &v60 - v11;
  v12 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v81 = &v60 - v14;
  v15 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v61 = &v60 - v17;
  v18 = sub_21A3B20CC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21A3B212C();
  MEMORY[0x28223BE20](v23 - 8, v24);
  v25 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v25 - 8, v26);
  v27 = sub_21A3B20EC();
  v75 = v27;
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v80 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_21A365B50(&qword_27CD24008, &unk_21A3B3130);
  sub_21A3B247C();
  sub_21A3B211C();
  v32 = *(v19 + 104);
  v66 = *MEMORY[0x277CC9110];
  v31 = v66;
  v67 = v18;
  v32(v22, v66, v18);
  v68 = v32;
  v69 = v19 + 104;
  sub_21A3B20FC();
  sub_21A3B247C();
  sub_21A3B211C();
  v32(v22, v31, v18);
  v33 = v61;
  sub_21A3B20FC();
  v34 = *(v28 + 56);
  v74 = v28 + 56;
  v76 = v34;
  v34(v33, 0, 1, v27);
  v35 = type metadata accessor for RecipeEntity(0);
  (*(*(v35 - 8) + 56))(v81, 1, 1, v35);
  v36 = sub_21A3B19AC();
  v70 = v36;
  v37 = *(v36 - 8);
  v38 = *(v37 + 56);
  v71 = v38;
  v72 = v37 + 56;
  v38(v82, 1, 1, v36);
  v38(v85, 1, 1, v36);
  sub_21A365B50(&qword_27CD24010, &qword_21A3B45D0);
  v39 = sub_21A3B18EC();
  v87 = 0u;
  v88 = 0u;
  v89 = 0;
  sub_21A3B18DC();
  v40 = sub_21A3B188C();
  v63 = sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  v89 = 0;
  v87 = 0u;
  v88 = 0u;
  v62 = v39;
  sub_21A3B18DC();
  v41 = sub_21A3B188C();
  v77 = sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  v89 = 0;
  v87 = 0u;
  v88 = 0u;
  sub_21A3B18DC();
  v42 = sub_21A3B188C();
  *&v87 = v40;
  *(&v87 + 1) = v41;
  *&v88 = v42;
  v64 = *MEMORY[0x277CBA308];
  v43 = *(v86 + 104);
  v86 += 104;
  v65 = v43;
  v43(v83);
  sub_21A36758C();
  sub_21A395284(&qword_27CD23FB8, type metadata accessor for RecipeEntity, &unk_21A3B2C80);
  v44 = v82;
  v81 = sub_21A3B1A4C();
  v73 = sub_21A365B50(&qword_27CD24978, &qword_21A3B6118);
  sub_21A3B247C();
  sub_21A3B211C();
  v45 = v66;
  v46 = v67;
  v47 = v68;
  v68(v22, v66, v67);
  sub_21A3B20FC();
  sub_21A3B247C();
  sub_21A3B211C();
  v47(v22, v45, v46);
  sub_21A3B20FC();
  v76(v33, 0, 1, v75);
  v48 = type metadata accessor for InstructionEntity(0);
  (*(*(v48 - 8) + 56))(v78, 1, 1, v48);
  v49 = v70;
  v50 = v71;
  v71(v44, 1, 1, v70);
  v50(v85, 1, 1, v49);
  v89 = 0;
  v87 = 0u;
  v88 = 0u;
  sub_21A3B18DC();
  v51 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  v89 = 0;
  v87 = 0u;
  v88 = 0u;
  sub_21A3B18DC();
  v52 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24178, &qword_21A3B3790);
  swift_getKeyPath();
  v53 = sub_21A3B1C7C();
  *&v87 = v51;
  *(&v87 + 1) = v52;
  *&v88 = v53;
  v65(v83, v64, v84);
  sub_21A395230();
  sub_21A395284(&qword_27CD240D8, type metadata accessor for InstructionEntity, &unk_21A3B41E0);
  v54 = sub_21A3B1A4C();
  sub_21A365B50(&qword_27CD24020, &unk_21A3B3140);
  v89 = 0;
  v87 = 0u;
  v88 = 0u;
  sub_21A3B18DC();
  v55 = sub_21A3B188C();
  v89 = 0;
  v87 = 0u;
  v88 = 0u;
  sub_21A3B18DC();
  v56 = sub_21A3B188C();
  v89 = 0;
  v87 = 0u;
  v88 = 0u;
  sub_21A3B18DC();
  v57 = sub_21A3B188C();
  v89 = 0;
  v87 = 0u;
  v88 = 0u;
  sub_21A3B18DC();
  result = sub_21A3B188C();
  v59 = v79;
  *v79 = v81;
  v59[1] = v54;
  v59[2] = v55;
  v59[3] = v56;
  v59[4] = v57;
  v59[5] = result;
  return result;
}

unint64_t sub_21A395230()
{
  result = qword_27CD24980;
  if (!qword_27CD24980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24980);
  }

  return result;
}

uint64_t sub_21A395284(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21A3952CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21A395330()
{
  result = qword_27CD249A8;
  if (!qword_27CD249A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD249A8);
  }

  return result;
}

unint64_t sub_21A395388()
{
  result = qword_27CD249B0;
  if (!qword_27CD249B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD249B0);
  }

  return result;
}

uint64_t sub_21A39542C(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  v3 = sub_21A3B1FFC();
  *(v2 + 112) = v3;
  *(v2 + 120) = *(v3 - 8);
  *(v2 + 128) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70);
  *(v2 + 136) = swift_task_alloc();
  v4 = sub_21A3B1E4C();
  *(v2 + 144) = v4;
  *(v2 + 152) = *(v4 - 8);
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24068, &qword_21A3B3290);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80);
  *(v2 + 192) = swift_task_alloc();
  v5 = sub_21A3B205C();
  *(v2 + 200) = v5;
  *(v2 + 208) = *(v5 - 8);
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  v6 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v6;
  *(v2 + 48) = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21A3956D0, 0, 0);
}

uint64_t sub_21A3956D0()
{
  v1 = v0[31];
  off_282B3C8F0();
  v2 = type metadata accessor for RecipeEntity(0);
  v0[32] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v0[33] = v4;
  v0[34] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[31], &qword_27CD23F78, &unk_21A3B2F40);
    v5 = swift_task_alloc();
    v0[35] = v5;
    *v5 = v0;
    v5[1] = sub_21A39590C;
    v6 = v0[28];

    return sub_21A3A2A34(v6);
  }

  else
  {
    sub_21A365B98(v0[31], v0[12]);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_21A39590C()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_21A39614C;
  }

  else
  {
    v2 = sub_21A395A20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A395A20(uint64_t a1)
{
  v45 = v1;
  v3 = v1[22];
  v2 = v1[23];
  v4 = v1[18];
  v5 = v1[19];
  sub_21A3B202C();
  sub_21A365CB4(v2, v3, &qword_27CD24068, &qword_21A3B3290);
  v6 = (*(v5 + 48))(v3, 1, v4);
  v7 = v1[23];
  v8 = v1[24];
  if (v6 == 1)
  {
    sub_21A365D1C(v1[23], &qword_27CD24068, &qword_21A3B3290);
    v9 = sub_21A3B1EBC();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  else
  {
    v10 = v1[21];
    v12 = v1[19];
    v11 = v1[20];
    v13 = v1[18];
    (*(v12 + 32))(v10, v1[22], v13);
    (*(v12 + 16))(v11, v10, v13);
    sub_21A3B1EAC();
    (*(v12 + 8))(v10, v13);
    sub_21A365D1C(v7, &qword_27CD24068, &qword_21A3B3290);
  }

  v41 = v1[33];
  v39 = v1[29];
  v40 = v1[32];
  v14 = v1[27];
  v38 = v1[30];
  v16 = v1[16];
  v15 = v1[17];
  v17 = v1[15];
  v37 = v1[14];
  (*(v1[26] + 16))(v14, v1[28], v1[25]);
  off_282B3C908(&type metadata for ShowDetailsAppIntent);
  sub_21A360CEC(v1 + 7, v1[10]);
  sub_21A3B200C();
  sub_21A3B1FEC();
  (*(v17 + 8))(v16, v37);
  sub_21A3B1E6C();

  sub_21A363A24(v14, v15, v38);
  sub_21A361318(v1 + 7);
  sub_21A365CB4(v38, v39, &qword_27CD23F78, &unk_21A3B2F40);
  if (v41(v39, 1, v40) == 1)
  {
    sub_21A365D1C(v1[29], &qword_27CD23F78, &unk_21A3B2F40);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v18 = sub_21A3B21FC();
    sub_21A365DC4(v18, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v19 = sub_21A3B21DC();
    v20 = sub_21A3B25DC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44 = v22;
      *v21 = 136446210;
      v42 = sub_21A3B26CC();
      v43 = v20;
      v24 = v23;

      v25 = sub_21A3AF0A8(v42, v24, &v44);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_21A35E000, v19, v43, "Unable to handle intent, could not create RecipeEntity. intent=%{public}s, privacy: .public)", v21, 0xCu);
      sub_21A361318(v22);
      MEMORY[0x21CED8F60](v22, -1, -1);
      MEMORY[0x21CED8F60](v21, -1, -1);
    }

    else
    {
    }

    v31 = v1[30];
    v32 = v1[28];
    v33 = v1[25];
    v34 = v1[26];
    v35 = v1[24];
    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    sub_21A365D1C(v31, &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v35, &qword_27CD24070, &unk_21A3B4D80);
    (*(v34 + 8))(v32, v33);

    v30 = v1[1];
  }

  else
  {
    v26 = v1[28];
    v27 = v1[25];
    v28 = v1[26];
    v29 = v1[24];
    sub_21A365D1C(v1[30], &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v29, &qword_27CD24070, &unk_21A3B4D80);
    (*(v28 + 8))(v26, v27);
    sub_21A365B98(v1[29], v1[12]);

    v30 = v1[1];
  }

  return v30();
}

uint64_t sub_21A39614C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A39624C(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  v3 = sub_21A3B1FFC();
  *(v2 + 112) = v3;
  *(v2 + 120) = *(v3 - 8);
  *(v2 + 128) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70);
  *(v2 + 136) = swift_task_alloc();
  v4 = sub_21A3B1E4C();
  *(v2 + 144) = v4;
  *(v2 + 152) = *(v4 - 8);
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24068, &qword_21A3B3290);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80);
  *(v2 + 192) = swift_task_alloc();
  v5 = sub_21A3B205C();
  *(v2 + 200) = v5;
  *(v2 + 208) = *(v5 - 8);
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  v6 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v6;
  *(v2 + 48) = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21A3964F0, 0, 0);
}

uint64_t sub_21A3964F0()
{
  v1 = v0[31];
  off_282B3CCC0();
  v2 = type metadata accessor for RecipeEntity(0);
  v0[32] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v0[33] = v4;
  v0[34] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[31], &qword_27CD23F78, &unk_21A3B2F40);
    v5 = swift_task_alloc();
    v0[35] = v5;
    *v5 = v0;
    v5[1] = sub_21A39672C;
    v6 = v0[28];

    return sub_21A3A34B4(v6);
  }

  else
  {
    sub_21A365B98(v0[31], v0[12]);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_21A39672C()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_21A3AC354;
  }

  else
  {
    v2 = sub_21A396840;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A396840(uint64_t a1)
{
  v45 = v1;
  v3 = v1[22];
  v2 = v1[23];
  v4 = v1[18];
  v5 = v1[19];
  sub_21A3B202C();
  sub_21A365CB4(v2, v3, &qword_27CD24068, &qword_21A3B3290);
  v6 = (*(v5 + 48))(v3, 1, v4);
  v7 = v1[23];
  v8 = v1[24];
  if (v6 == 1)
  {
    sub_21A365D1C(v1[23], &qword_27CD24068, &qword_21A3B3290);
    v9 = sub_21A3B1EBC();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  else
  {
    v10 = v1[21];
    v12 = v1[19];
    v11 = v1[20];
    v13 = v1[18];
    (*(v12 + 32))(v10, v1[22], v13);
    (*(v12 + 16))(v11, v10, v13);
    sub_21A3B1EAC();
    (*(v12 + 8))(v10, v13);
    sub_21A365D1C(v7, &qword_27CD24068, &qword_21A3B3290);
  }

  v41 = v1[33];
  v39 = v1[29];
  v40 = v1[32];
  v14 = v1[27];
  v38 = v1[30];
  v16 = v1[16];
  v15 = v1[17];
  v17 = v1[15];
  v37 = v1[14];
  (*(v1[26] + 16))(v14, v1[28], v1[25]);
  off_282B3CCD8(&type metadata for ShowNextStepAppIntent);
  sub_21A360CEC(v1 + 7, v1[10]);
  sub_21A3B200C();
  sub_21A3B1FEC();
  (*(v17 + 8))(v16, v37);
  sub_21A3B1E6C();

  sub_21A363A24(v14, v15, v38);
  sub_21A361318(v1 + 7);
  sub_21A365CB4(v38, v39, &qword_27CD23F78, &unk_21A3B2F40);
  if (v41(v39, 1, v40) == 1)
  {
    sub_21A365D1C(v1[29], &qword_27CD23F78, &unk_21A3B2F40);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v18 = sub_21A3B21FC();
    sub_21A365DC4(v18, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v19 = sub_21A3B21DC();
    v20 = sub_21A3B25DC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44 = v22;
      *v21 = 136446210;
      v42 = sub_21A3B26CC();
      v43 = v20;
      v24 = v23;

      v25 = sub_21A3AF0A8(v42, v24, &v44);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_21A35E000, v19, v43, "Unable to handle intent, could not create RecipeEntity. intent=%{public}s, privacy: .public)", v21, 0xCu);
      sub_21A361318(v22);
      MEMORY[0x21CED8F60](v22, -1, -1);
      MEMORY[0x21CED8F60](v21, -1, -1);
    }

    else
    {
    }

    v31 = v1[30];
    v32 = v1[28];
    v33 = v1[25];
    v34 = v1[26];
    v35 = v1[24];
    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    sub_21A365D1C(v31, &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v35, &qword_27CD24070, &unk_21A3B4D80);
    (*(v34 + 8))(v32, v33);

    v30 = v1[1];
  }

  else
  {
    v26 = v1[28];
    v27 = v1[25];
    v28 = v1[26];
    v29 = v1[24];
    sub_21A365D1C(v1[30], &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v29, &qword_27CD24070, &unk_21A3B4D80);
    (*(v28 + 8))(v26, v27);
    sub_21A365B98(v1[29], v1[12]);

    v30 = v1[1];
  }

  return v30();
}

uint64_t sub_21A396F6C(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  v3 = sub_21A3B1FFC();
  *(v2 + 112) = v3;
  *(v2 + 120) = *(v3 - 8);
  *(v2 + 128) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70);
  *(v2 + 136) = swift_task_alloc();
  v4 = sub_21A3B1E4C();
  *(v2 + 144) = v4;
  *(v2 + 152) = *(v4 - 8);
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24068, &qword_21A3B3290);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80);
  *(v2 + 192) = swift_task_alloc();
  v5 = sub_21A3B205C();
  *(v2 + 200) = v5;
  *(v2 + 208) = *(v5 - 8);
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  v6 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v6;
  *(v2 + 48) = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21A397210, 0, 0);
}

uint64_t sub_21A397210()
{
  v1 = v0[31];
  off_282B3CDA0();
  v2 = type metadata accessor for RecipeEntity(0);
  v0[32] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v0[33] = v4;
  v0[34] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[31], &qword_27CD23F78, &unk_21A3B2F40);
    v5 = swift_task_alloc();
    v0[35] = v5;
    *v5 = v0;
    v5[1] = sub_21A39744C;
    v6 = v0[28];

    return sub_21A3A3ED0(v6);
  }

  else
  {
    sub_21A365B98(v0[31], v0[12]);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_21A39744C()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_21A3AC354;
  }

  else
  {
    v2 = sub_21A397560;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A397560(uint64_t a1)
{
  v45 = v1;
  v3 = v1[22];
  v2 = v1[23];
  v4 = v1[18];
  v5 = v1[19];
  sub_21A3B202C();
  sub_21A365CB4(v2, v3, &qword_27CD24068, &qword_21A3B3290);
  v6 = (*(v5 + 48))(v3, 1, v4);
  v7 = v1[23];
  v8 = v1[24];
  if (v6 == 1)
  {
    sub_21A365D1C(v1[23], &qword_27CD24068, &qword_21A3B3290);
    v9 = sub_21A3B1EBC();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  else
  {
    v10 = v1[21];
    v12 = v1[19];
    v11 = v1[20];
    v13 = v1[18];
    (*(v12 + 32))(v10, v1[22], v13);
    (*(v12 + 16))(v11, v10, v13);
    sub_21A3B1EAC();
    (*(v12 + 8))(v10, v13);
    sub_21A365D1C(v7, &qword_27CD24068, &qword_21A3B3290);
  }

  v41 = v1[33];
  v39 = v1[29];
  v40 = v1[32];
  v14 = v1[27];
  v38 = v1[30];
  v16 = v1[16];
  v15 = v1[17];
  v17 = v1[15];
  v37 = v1[14];
  (*(v1[26] + 16))(v14, v1[28], v1[25]);
  off_282B3CDB8(&type metadata for StartCookingAppIntent);
  sub_21A360CEC(v1 + 7, v1[10]);
  sub_21A3B200C();
  sub_21A3B1FEC();
  (*(v17 + 8))(v16, v37);
  sub_21A3B1E6C();

  sub_21A363A24(v14, v15, v38);
  sub_21A361318(v1 + 7);
  sub_21A365CB4(v38, v39, &qword_27CD23F78, &unk_21A3B2F40);
  if (v41(v39, 1, v40) == 1)
  {
    sub_21A365D1C(v1[29], &qword_27CD23F78, &unk_21A3B2F40);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v18 = sub_21A3B21FC();
    sub_21A365DC4(v18, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v19 = sub_21A3B21DC();
    v20 = sub_21A3B25DC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44 = v22;
      *v21 = 136446210;
      v42 = sub_21A3B26CC();
      v43 = v20;
      v24 = v23;

      v25 = sub_21A3AF0A8(v42, v24, &v44);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_21A35E000, v19, v43, "Unable to handle intent, could not create RecipeEntity. intent=%{public}s, privacy: .public)", v21, 0xCu);
      sub_21A361318(v22);
      MEMORY[0x21CED8F60](v22, -1, -1);
      MEMORY[0x21CED8F60](v21, -1, -1);
    }

    else
    {
    }

    v31 = v1[30];
    v32 = v1[28];
    v33 = v1[25];
    v34 = v1[26];
    v35 = v1[24];
    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    sub_21A365D1C(v31, &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v35, &qword_27CD24070, &unk_21A3B4D80);
    (*(v34 + 8))(v32, v33);

    v30 = v1[1];
  }

  else
  {
    v26 = v1[28];
    v27 = v1[25];
    v28 = v1[26];
    v29 = v1[24];
    sub_21A365D1C(v1[30], &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v29, &qword_27CD24070, &unk_21A3B4D80);
    (*(v28 + 8))(v26, v27);
    sub_21A365B98(v1[29], v1[12]);

    v30 = v1[1];
  }

  return v30();
}

uint64_t sub_21A397C8C(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  v3 = sub_21A3B1FFC();
  *(v2 + 112) = v3;
  *(v2 + 120) = *(v3 - 8);
  *(v2 + 128) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70);
  *(v2 + 136) = swift_task_alloc();
  v4 = sub_21A3B1E4C();
  *(v2 + 144) = v4;
  *(v2 + 152) = *(v4 - 8);
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24068, &qword_21A3B3290);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80);
  *(v2 + 192) = swift_task_alloc();
  v5 = sub_21A3B205C();
  *(v2 + 200) = v5;
  *(v2 + 208) = *(v5 - 8);
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  v6 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v6;
  *(v2 + 48) = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21A397F30, 0, 0);
}

uint64_t sub_21A397F30()
{
  v1 = v0[31];
  off_282B3CE58();
  v2 = type metadata accessor for RecipeEntity(0);
  v0[32] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v0[33] = v4;
  v0[34] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[31], &qword_27CD23F78, &unk_21A3B2F40);
    v5 = swift_task_alloc();
    v0[35] = v5;
    *v5 = v0;
    v5[1] = sub_21A39816C;
    v6 = v0[28];

    return sub_21A3A48EC(v6);
  }

  else
  {
    sub_21A365B98(v0[31], v0[12]);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_21A39816C()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_21A3AC354;
  }

  else
  {
    v2 = sub_21A398280;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A398280(uint64_t a1)
{
  v45 = v1;
  v3 = v1[22];
  v2 = v1[23];
  v4 = v1[18];
  v5 = v1[19];
  sub_21A3B202C();
  sub_21A365CB4(v2, v3, &qword_27CD24068, &qword_21A3B3290);
  v6 = (*(v5 + 48))(v3, 1, v4);
  v7 = v1[23];
  v8 = v1[24];
  if (v6 == 1)
  {
    sub_21A365D1C(v1[23], &qword_27CD24068, &qword_21A3B3290);
    v9 = sub_21A3B1EBC();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  else
  {
    v10 = v1[21];
    v12 = v1[19];
    v11 = v1[20];
    v13 = v1[18];
    (*(v12 + 32))(v10, v1[22], v13);
    (*(v12 + 16))(v11, v10, v13);
    sub_21A3B1EAC();
    (*(v12 + 8))(v10, v13);
    sub_21A365D1C(v7, &qword_27CD24068, &qword_21A3B3290);
  }

  v41 = v1[33];
  v39 = v1[29];
  v40 = v1[32];
  v14 = v1[27];
  v38 = v1[30];
  v16 = v1[16];
  v15 = v1[17];
  v17 = v1[15];
  v37 = v1[14];
  (*(v1[26] + 16))(v14, v1[28], v1[25]);
  off_282B3CE70(&type metadata for SaveRecipeAppIntent);
  sub_21A360CEC(v1 + 7, v1[10]);
  sub_21A3B200C();
  sub_21A3B1FEC();
  (*(v17 + 8))(v16, v37);
  sub_21A3B1E6C();

  sub_21A363A24(v14, v15, v38);
  sub_21A361318(v1 + 7);
  sub_21A365CB4(v38, v39, &qword_27CD23F78, &unk_21A3B2F40);
  if (v41(v39, 1, v40) == 1)
  {
    sub_21A365D1C(v1[29], &qword_27CD23F78, &unk_21A3B2F40);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v18 = sub_21A3B21FC();
    sub_21A365DC4(v18, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v19 = sub_21A3B21DC();
    v20 = sub_21A3B25DC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44 = v22;
      *v21 = 136446210;
      v42 = sub_21A3B26CC();
      v43 = v20;
      v24 = v23;

      v25 = sub_21A3AF0A8(v42, v24, &v44);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_21A35E000, v19, v43, "Unable to handle intent, could not create RecipeEntity. intent=%{public}s, privacy: .public)", v21, 0xCu);
      sub_21A361318(v22);
      MEMORY[0x21CED8F60](v22, -1, -1);
      MEMORY[0x21CED8F60](v21, -1, -1);
    }

    else
    {
    }

    v31 = v1[30];
    v32 = v1[28];
    v33 = v1[25];
    v34 = v1[26];
    v35 = v1[24];
    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    sub_21A365D1C(v31, &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v35, &qword_27CD24070, &unk_21A3B4D80);
    (*(v34 + 8))(v32, v33);

    v30 = v1[1];
  }

  else
  {
    v26 = v1[28];
    v27 = v1[25];
    v28 = v1[26];
    v29 = v1[24];
    sub_21A365D1C(v1[30], &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v29, &qword_27CD24070, &unk_21A3B4D80);
    (*(v28 + 8))(v26, v27);
    sub_21A365B98(v1[29], v1[12]);

    v30 = v1[1];
  }

  return v30();
}

uint64_t sub_21A3989AC(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  v3 = sub_21A3B1FFC();
  *(v2 + 120) = v3;
  *(v2 + 128) = *(v3 - 8);
  *(v2 + 136) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70);
  *(v2 + 144) = swift_task_alloc();
  v4 = sub_21A3B1E4C();
  *(v2 + 152) = v4;
  *(v2 + 160) = *(v4 - 8);
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24068, &qword_21A3B3290);
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80);
  *(v2 + 200) = swift_task_alloc();
  v5 = sub_21A3B205C();
  *(v2 + 208) = v5;
  *(v2 + 216) = *(v5 - 8);
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 232) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();
  v6 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v6;
  *(v2 + 48) = v1[2];

  return MEMORY[0x2822009F8](sub_21A398C50, 0, 0);
}

uint64_t sub_21A398C50()
{
  v1 = v0[32];
  off_282B3D040();
  v2 = type metadata accessor for RecipeEntity(0);
  v0[33] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v0[34] = v4;
  v0[35] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[32], &qword_27CD23F78, &unk_21A3B2F40);
    v5 = swift_task_alloc();
    v0[36] = v5;
    *v5 = v0;
    v5[1] = sub_21A398E8C;
    v6 = v0[29];

    return sub_21A3A5D68(v6);
  }

  else
  {
    sub_21A365B98(v0[32], v0[13]);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_21A398E8C()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_21A3AC358;
  }

  else
  {
    v2 = sub_21A398FA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A398FA0(uint64_t a1)
{
  v45 = v1;
  v3 = v1[23];
  v2 = v1[24];
  v4 = v1[19];
  v5 = v1[20];
  sub_21A3B202C();
  sub_21A365CB4(v2, v3, &qword_27CD24068, &qword_21A3B3290);
  v6 = (*(v5 + 48))(v3, 1, v4);
  v7 = v1[24];
  v8 = v1[25];
  if (v6 == 1)
  {
    sub_21A365D1C(v1[24], &qword_27CD24068, &qword_21A3B3290);
    v9 = sub_21A3B1EBC();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  else
  {
    v10 = v1[22];
    v12 = v1[20];
    v11 = v1[21];
    v13 = v1[19];
    (*(v12 + 32))(v10, v1[23], v13);
    (*(v12 + 16))(v11, v10, v13);
    sub_21A3B1EAC();
    (*(v12 + 8))(v10, v13);
    sub_21A365D1C(v7, &qword_27CD24068, &qword_21A3B3290);
  }

  v41 = v1[34];
  v38 = v1[30];
  v39 = v1[33];
  v14 = v1[28];
  v37 = v1[31];
  v16 = v1[17];
  v15 = v1[18];
  v17 = v1[16];
  v36 = v1[15];
  (*(v1[27] + 16))(v14, v1[29], v1[26]);
  off_282B3D058(&type metadata for SelectIngredientAppIntent);
  sub_21A360CEC(v1 + 8, v1[11]);
  sub_21A3B200C();
  sub_21A3B1FEC();
  (*(v17 + 8))(v16, v36);
  sub_21A3B1E6C();

  sub_21A363A24(v14, v15, v37);
  sub_21A361318(v1 + 8);
  sub_21A365CB4(v37, v38, &qword_27CD23F78, &unk_21A3B2F40);
  if (v41(v38, 1, v39) == 1)
  {
    sub_21A365D1C(v1[30], &qword_27CD23F78, &unk_21A3B2F40);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v18 = sub_21A3B21FC();
    sub_21A365DC4(v18, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v19 = sub_21A3B21DC();
    v20 = sub_21A3B25DC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = v43;
      *v21 = 136446210;
      v40 = sub_21A3B26CC();
      v42 = v20;
      v23 = v22;

      v24 = sub_21A3AF0A8(v40, v23, &v44);

      *(v21 + 4) = v24;
      _os_log_impl(&dword_21A35E000, v19, v42, "Unable to handle intent, could not create RecipeEntity. intent=%{public}s, privacy: .public)", v21, 0xCu);
      sub_21A361318(v43);
      MEMORY[0x21CED8F60](v43, -1, -1);
      MEMORY[0x21CED8F60](v21, -1, -1);
    }

    else
    {
    }

    v30 = v1[31];
    v31 = v1[29];
    v32 = v1[26];
    v33 = v1[27];
    v34 = v1[25];
    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    sub_21A365D1C(v30, &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v34, &qword_27CD24070, &unk_21A3B4D80);
    (*(v33 + 8))(v31, v32);

    v29 = v1[1];
  }

  else
  {
    v25 = v1[29];
    v26 = v1[26];
    v27 = v1[27];
    v28 = v1[25];
    sub_21A365D1C(v1[31], &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v28, &qword_27CD24070, &unk_21A3B4D80);
    (*(v27 + 8))(v25, v26);
    sub_21A365B98(v1[30], v1[13]);

    v29 = v1[1];
  }

  return v29();
}

uint64_t sub_21A3996F0(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  v3 = sub_21A3B1FFC();
  *(v2 + 112) = v3;
  *(v2 + 120) = *(v3 - 8);
  *(v2 + 128) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70);
  *(v2 + 136) = swift_task_alloc();
  v4 = sub_21A3B1E4C();
  *(v2 + 144) = v4;
  *(v2 + 152) = *(v4 - 8);
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24068, &qword_21A3B3290);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80);
  *(v2 + 192) = swift_task_alloc();
  v5 = sub_21A3B205C();
  *(v2 + 200) = v5;
  *(v2 + 208) = *(v5 - 8);
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  v6 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v6;
  *(v2 + 48) = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21A399994, 0, 0);
}

uint64_t sub_21A399994()
{
  v1 = v0[31];
  off_282B3D1E8();
  v2 = type metadata accessor for RecipeEntity(0);
  v0[32] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v0[33] = v4;
  v0[34] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[31], &qword_27CD23F78, &unk_21A3B2F40);
    v5 = swift_task_alloc();
    v0[35] = v5;
    *v5 = v0;
    v5[1] = sub_21A399BD0;
    v6 = v0[28];

    return sub_21A3A67CC(v6);
  }

  else
  {
    sub_21A365B98(v0[31], v0[12]);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_21A399BD0()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_21A3AC354;
  }

  else
  {
    v2 = sub_21A399CE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A399CE4(uint64_t a1)
{
  v45 = v1;
  v3 = v1[22];
  v2 = v1[23];
  v4 = v1[18];
  v5 = v1[19];
  sub_21A3B202C();
  sub_21A365CB4(v2, v3, &qword_27CD24068, &qword_21A3B3290);
  v6 = (*(v5 + 48))(v3, 1, v4);
  v7 = v1[23];
  v8 = v1[24];
  if (v6 == 1)
  {
    sub_21A365D1C(v1[23], &qword_27CD24068, &qword_21A3B3290);
    v9 = sub_21A3B1EBC();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  else
  {
    v10 = v1[21];
    v12 = v1[19];
    v11 = v1[20];
    v13 = v1[18];
    (*(v12 + 32))(v10, v1[22], v13);
    (*(v12 + 16))(v11, v10, v13);
    sub_21A3B1EAC();
    (*(v12 + 8))(v10, v13);
    sub_21A365D1C(v7, &qword_27CD24068, &qword_21A3B3290);
  }

  v41 = v1[33];
  v39 = v1[29];
  v40 = v1[32];
  v14 = v1[27];
  v38 = v1[30];
  v16 = v1[16];
  v15 = v1[17];
  v17 = v1[15];
  v37 = v1[14];
  (*(v1[26] + 16))(v14, v1[28], v1[25]);
  off_282B3D200(&type metadata for UnsaveRecipeAppIntent);
  sub_21A360CEC(v1 + 7, v1[10]);
  sub_21A3B200C();
  sub_21A3B1FEC();
  (*(v17 + 8))(v16, v37);
  sub_21A3B1E6C();

  sub_21A363A24(v14, v15, v38);
  sub_21A361318(v1 + 7);
  sub_21A365CB4(v38, v39, &qword_27CD23F78, &unk_21A3B2F40);
  if (v41(v39, 1, v40) == 1)
  {
    sub_21A365D1C(v1[29], &qword_27CD23F78, &unk_21A3B2F40);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v18 = sub_21A3B21FC();
    sub_21A365DC4(v18, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v19 = sub_21A3B21DC();
    v20 = sub_21A3B25DC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44 = v22;
      *v21 = 136446210;
      v42 = sub_21A3B26CC();
      v43 = v20;
      v24 = v23;

      v25 = sub_21A3AF0A8(v42, v24, &v44);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_21A35E000, v19, v43, "Unable to handle intent, could not create RecipeEntity. intent=%{public}s, privacy: .public)", v21, 0xCu);
      sub_21A361318(v22);
      MEMORY[0x21CED8F60](v22, -1, -1);
      MEMORY[0x21CED8F60](v21, -1, -1);
    }

    else
    {
    }

    v31 = v1[30];
    v32 = v1[28];
    v33 = v1[25];
    v34 = v1[26];
    v35 = v1[24];
    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    sub_21A365D1C(v31, &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v35, &qword_27CD24070, &unk_21A3B4D80);
    (*(v34 + 8))(v32, v33);

    v30 = v1[1];
  }

  else
  {
    v26 = v1[28];
    v27 = v1[25];
    v28 = v1[26];
    v29 = v1[24];
    sub_21A365D1C(v1[30], &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v29, &qword_27CD24070, &unk_21A3B4D80);
    (*(v28 + 8))(v26, v27);
    sub_21A365B98(v1[29], v1[12]);

    v30 = v1[1];
  }

  return v30();
}

uint64_t sub_21A39A410(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  v3 = sub_21A3B1FFC();
  *(v2 + 112) = v3;
  *(v2 + 120) = *(v3 - 8);
  *(v2 + 128) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70);
  *(v2 + 136) = swift_task_alloc();
  v4 = sub_21A3B1E4C();
  *(v2 + 144) = v4;
  *(v2 + 152) = *(v4 - 8);
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24068, &qword_21A3B3290);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80);
  *(v2 + 192) = swift_task_alloc();
  v5 = sub_21A3B205C();
  *(v2 + 200) = v5;
  *(v2 + 208) = *(v5 - 8);
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  v6 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v6;
  *(v2 + 48) = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21A39A6B4, 0, 0);
}

uint64_t sub_21A39A6B4()
{
  v1 = v0[31];
  off_282B3D2A0();
  v2 = type metadata accessor for RecipeEntity(0);
  v0[32] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v0[33] = v4;
  v0[34] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[31], &qword_27CD23F78, &unk_21A3B2F40);
    v5 = swift_task_alloc();
    v0[35] = v5;
    *v5 = v0;
    v5[1] = sub_21A39A8F0;
    v6 = v0[28];

    return sub_21A3A71E8(v6);
  }

  else
  {
    sub_21A365B98(v0[31], v0[12]);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_21A39A8F0()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_21A3AC354;
  }

  else
  {
    v2 = sub_21A39AA04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A39AA04(uint64_t a1)
{
  v45 = v1;
  v3 = v1[22];
  v2 = v1[23];
  v4 = v1[18];
  v5 = v1[19];
  sub_21A3B202C();
  sub_21A365CB4(v2, v3, &qword_27CD24068, &qword_21A3B3290);
  v6 = (*(v5 + 48))(v3, 1, v4);
  v7 = v1[23];
  v8 = v1[24];
  if (v6 == 1)
  {
    sub_21A365D1C(v1[23], &qword_27CD24068, &qword_21A3B3290);
    v9 = sub_21A3B1EBC();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  else
  {
    v10 = v1[21];
    v12 = v1[19];
    v11 = v1[20];
    v13 = v1[18];
    (*(v12 + 32))(v10, v1[22], v13);
    (*(v12 + 16))(v11, v10, v13);
    sub_21A3B1EAC();
    (*(v12 + 8))(v10, v13);
    sub_21A365D1C(v7, &qword_27CD24068, &qword_21A3B3290);
  }

  v41 = v1[33];
  v39 = v1[29];
  v40 = v1[32];
  v14 = v1[27];
  v38 = v1[30];
  v16 = v1[16];
  v15 = v1[17];
  v17 = v1[15];
  v37 = v1[14];
  (*(v1[26] + 16))(v14, v1[28], v1[25]);
  off_282B3D2B8(&type metadata for ShowPreviousStepAppIntent);
  sub_21A360CEC(v1 + 7, v1[10]);
  sub_21A3B200C();
  sub_21A3B1FEC();
  (*(v17 + 8))(v16, v37);
  sub_21A3B1E6C();

  sub_21A363A24(v14, v15, v38);
  sub_21A361318(v1 + 7);
  sub_21A365CB4(v38, v39, &qword_27CD23F78, &unk_21A3B2F40);
  if (v41(v39, 1, v40) == 1)
  {
    sub_21A365D1C(v1[29], &qword_27CD23F78, &unk_21A3B2F40);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v18 = sub_21A3B21FC();
    sub_21A365DC4(v18, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v19 = sub_21A3B21DC();
    v20 = sub_21A3B25DC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44 = v22;
      *v21 = 136446210;
      v42 = sub_21A3B26CC();
      v43 = v20;
      v24 = v23;

      v25 = sub_21A3AF0A8(v42, v24, &v44);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_21A35E000, v19, v43, "Unable to handle intent, could not create RecipeEntity. intent=%{public}s, privacy: .public)", v21, 0xCu);
      sub_21A361318(v22);
      MEMORY[0x21CED8F60](v22, -1, -1);
      MEMORY[0x21CED8F60](v21, -1, -1);
    }

    else
    {
    }

    v31 = v1[30];
    v32 = v1[28];
    v33 = v1[25];
    v34 = v1[26];
    v35 = v1[24];
    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    sub_21A365D1C(v31, &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v35, &qword_27CD24070, &unk_21A3B4D80);
    (*(v34 + 8))(v32, v33);

    v30 = v1[1];
  }

  else
  {
    v26 = v1[28];
    v27 = v1[25];
    v28 = v1[26];
    v29 = v1[24];
    sub_21A365D1C(v1[30], &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v29, &qword_27CD24070, &unk_21A3B4D80);
    (*(v28 + 8))(v26, v27);
    sub_21A365B98(v1[29], v1[12]);

    v30 = v1[1];
  }

  return v30();
}

uint64_t sub_21A39B130(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  v3 = sub_21A3B1FFC();
  *(v2 + 120) = v3;
  *(v2 + 128) = *(v3 - 8);
  *(v2 + 136) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70);
  *(v2 + 144) = swift_task_alloc();
  v4 = sub_21A3B1E4C();
  *(v2 + 152) = v4;
  *(v2 + 160) = *(v4 - 8);
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24068, &qword_21A3B3290);
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80);
  *(v2 + 200) = swift_task_alloc();
  v5 = sub_21A3B205C();
  *(v2 + 208) = v5;
  *(v2 + 216) = *(v5 - 8);
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 232) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();
  v6 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v6;
  *(v2 + 48) = v1[2];

  return MEMORY[0x2822009F8](sub_21A39B3D4, 0, 0);
}

uint64_t sub_21A39B3D4()
{
  v1 = v0[32];
  off_282B3D6D0();
  v2 = type metadata accessor for RecipeEntity(0);
  v0[33] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v0[34] = v4;
  v0[35] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[32], &qword_27CD23F78, &unk_21A3B2F40);
    v5 = swift_task_alloc();
    v0[36] = v5;
    *v5 = v0;
    v5[1] = sub_21A39B610;
    v6 = v0[29];

    return sub_21A3A7C04(v6);
  }

  else
  {
    sub_21A365B98(v0[32], v0[13]);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_21A39B610()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_21A3AC358;
  }

  else
  {
    v2 = sub_21A39B724;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A39B724(uint64_t a1)
{
  v45 = v1;
  v3 = v1[23];
  v2 = v1[24];
  v4 = v1[19];
  v5 = v1[20];
  sub_21A3B202C();
  sub_21A365CB4(v2, v3, &qword_27CD24068, &qword_21A3B3290);
  v6 = (*(v5 + 48))(v3, 1, v4);
  v7 = v1[24];
  v8 = v1[25];
  if (v6 == 1)
  {
    sub_21A365D1C(v1[24], &qword_27CD24068, &qword_21A3B3290);
    v9 = sub_21A3B1EBC();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  else
  {
    v10 = v1[22];
    v12 = v1[20];
    v11 = v1[21];
    v13 = v1[19];
    (*(v12 + 32))(v10, v1[23], v13);
    (*(v12 + 16))(v11, v10, v13);
    sub_21A3B1EAC();
    (*(v12 + 8))(v10, v13);
    sub_21A365D1C(v7, &qword_27CD24068, &qword_21A3B3290);
  }

  v41 = v1[34];
  v38 = v1[30];
  v39 = v1[33];
  v14 = v1[28];
  v37 = v1[31];
  v16 = v1[17];
  v15 = v1[18];
  v17 = v1[16];
  v36 = v1[15];
  (*(v1[27] + 16))(v14, v1[29], v1[26]);
  off_282B3D6E8(&type metadata for UnselectIngredientAppIntent);
  sub_21A360CEC(v1 + 8, v1[11]);
  sub_21A3B200C();
  sub_21A3B1FEC();
  (*(v17 + 8))(v16, v36);
  sub_21A3B1E6C();

  sub_21A363A24(v14, v15, v37);
  sub_21A361318(v1 + 8);
  sub_21A365CB4(v37, v38, &qword_27CD23F78, &unk_21A3B2F40);
  if (v41(v38, 1, v39) == 1)
  {
    sub_21A365D1C(v1[30], &qword_27CD23F78, &unk_21A3B2F40);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v18 = sub_21A3B21FC();
    sub_21A365DC4(v18, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v19 = sub_21A3B21DC();
    v20 = sub_21A3B25DC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = v43;
      *v21 = 136446210;
      v40 = sub_21A3B26CC();
      v42 = v20;
      v23 = v22;

      v24 = sub_21A3AF0A8(v40, v23, &v44);

      *(v21 + 4) = v24;
      _os_log_impl(&dword_21A35E000, v19, v42, "Unable to handle intent, could not create RecipeEntity. intent=%{public}s, privacy: .public)", v21, 0xCu);
      sub_21A361318(v43);
      MEMORY[0x21CED8F60](v43, -1, -1);
      MEMORY[0x21CED8F60](v21, -1, -1);
    }

    else
    {
    }

    v30 = v1[31];
    v31 = v1[29];
    v32 = v1[26];
    v33 = v1[27];
    v34 = v1[25];
    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    sub_21A365D1C(v30, &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v34, &qword_27CD24070, &unk_21A3B4D80);
    (*(v33 + 8))(v31, v32);

    v29 = v1[1];
  }

  else
  {
    v25 = v1[29];
    v26 = v1[26];
    v27 = v1[27];
    v28 = v1[25];
    sub_21A365D1C(v1[31], &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v28, &qword_27CD24070, &unk_21A3B4D80);
    (*(v27 + 8))(v25, v26);
    sub_21A365B98(v1[30], v1[13]);

    v29 = v1[1];
  }

  return v29();
}

uint64_t sub_21A39BE74(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  v3 = sub_21A3B1FFC();
  *(v2 + 112) = v3;
  *(v2 + 120) = *(v3 - 8);
  *(v2 + 128) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70);
  *(v2 + 136) = swift_task_alloc();
  v4 = sub_21A3B1E4C();
  *(v2 + 144) = v4;
  *(v2 + 152) = *(v4 - 8);
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24068, &qword_21A3B3290);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80);
  *(v2 + 192) = swift_task_alloc();
  v5 = sub_21A3B205C();
  *(v2 + 200) = v5;
  *(v2 + 208) = *(v5 - 8);
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  v6 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v6;
  *(v2 + 48) = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21A39C118, 0, 0);
}

uint64_t sub_21A39C118()
{
  v1 = v0[31];
  off_282B3D788();
  v2 = type metadata accessor for RecipeEntity(0);
  v0[32] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v0[33] = v4;
  v0[34] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[31], &qword_27CD23F78, &unk_21A3B2F40);
    v5 = swift_task_alloc();
    v0[35] = v5;
    *v5 = v0;
    v5[1] = sub_21A39C354;
    v6 = v0[28];

    return sub_21A3A8668(v6);
  }

  else
  {
    sub_21A365B98(v0[31], v0[12]);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_21A39C354()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_21A3AC354;
  }

  else
  {
    v2 = sub_21A39C468;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A39C468(uint64_t a1)
{
  v45 = v1;
  v3 = v1[22];
  v2 = v1[23];
  v4 = v1[18];
  v5 = v1[19];
  sub_21A3B202C();
  sub_21A365CB4(v2, v3, &qword_27CD24068, &qword_21A3B3290);
  v6 = (*(v5 + 48))(v3, 1, v4);
  v7 = v1[23];
  v8 = v1[24];
  if (v6 == 1)
  {
    sub_21A365D1C(v1[23], &qword_27CD24068, &qword_21A3B3290);
    v9 = sub_21A3B1EBC();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  else
  {
    v10 = v1[21];
    v12 = v1[19];
    v11 = v1[20];
    v13 = v1[18];
    (*(v12 + 32))(v10, v1[22], v13);
    (*(v12 + 16))(v11, v10, v13);
    sub_21A3B1EAC();
    (*(v12 + 8))(v10, v13);
    sub_21A365D1C(v7, &qword_27CD24068, &qword_21A3B3290);
  }

  v41 = v1[33];
  v39 = v1[29];
  v40 = v1[32];
  v14 = v1[27];
  v38 = v1[30];
  v16 = v1[16];
  v15 = v1[17];
  v17 = v1[15];
  v37 = v1[14];
  (*(v1[26] + 16))(v14, v1[28], v1[25]);
  off_282B3D7A0(&type metadata for StopCookingAppIntent);
  sub_21A360CEC(v1 + 7, v1[10]);
  sub_21A3B200C();
  sub_21A3B1FEC();
  (*(v17 + 8))(v16, v37);
  sub_21A3B1E6C();

  sub_21A363A24(v14, v15, v38);
  sub_21A361318(v1 + 7);
  sub_21A365CB4(v38, v39, &qword_27CD23F78, &unk_21A3B2F40);
  if (v41(v39, 1, v40) == 1)
  {
    sub_21A365D1C(v1[29], &qword_27CD23F78, &unk_21A3B2F40);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v18 = sub_21A3B21FC();
    sub_21A365DC4(v18, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v19 = sub_21A3B21DC();
    v20 = sub_21A3B25DC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44 = v22;
      *v21 = 136446210;
      v42 = sub_21A3B26CC();
      v43 = v20;
      v24 = v23;

      v25 = sub_21A3AF0A8(v42, v24, &v44);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_21A35E000, v19, v43, "Unable to handle intent, could not create RecipeEntity. intent=%{public}s, privacy: .public)", v21, 0xCu);
      sub_21A361318(v22);
      MEMORY[0x21CED8F60](v22, -1, -1);
      MEMORY[0x21CED8F60](v21, -1, -1);
    }

    else
    {
    }

    v31 = v1[30];
    v32 = v1[28];
    v33 = v1[25];
    v34 = v1[26];
    v35 = v1[24];
    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    sub_21A365D1C(v31, &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v35, &qword_27CD24070, &unk_21A3B4D80);
    (*(v34 + 8))(v32, v33);

    v30 = v1[1];
  }

  else
  {
    v26 = v1[28];
    v27 = v1[25];
    v28 = v1[26];
    v29 = v1[24];
    sub_21A365D1C(v1[30], &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v29, &qword_27CD24070, &unk_21A3B4D80);
    (*(v28 + 8))(v26, v27);
    sub_21A365B98(v1[29], v1[12]);

    v30 = v1[1];
  }

  return v30();
}

uint64_t sub_21A39CB94(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  v3 = sub_21A3B1FFC();
  *(v2 + 112) = v3;
  *(v2 + 120) = *(v3 - 8);
  *(v2 + 128) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70);
  *(v2 + 136) = swift_task_alloc();
  v4 = sub_21A3B1E4C();
  *(v2 + 144) = v4;
  *(v2 + 152) = *(v4 - 8);
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24068, &qword_21A3B3290);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80);
  *(v2 + 192) = swift_task_alloc();
  v5 = sub_21A3B205C();
  *(v2 + 200) = v5;
  *(v2 + 208) = *(v5 - 8);
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  v6 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v6;
  *(v2 + 48) = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21A39CE38, 0, 0);
}

uint64_t sub_21A39CE38()
{
  v1 = v0[31];
  off_282B3D860();
  v2 = type metadata accessor for RecipeEntity(0);
  v0[32] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v0[33] = v4;
  v0[34] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[31], &qword_27CD23F78, &unk_21A3B2F40);
    v5 = swift_task_alloc();
    v0[35] = v5;
    *v5 = v0;
    v5[1] = sub_21A39D074;
    v6 = v0[28];

    return sub_21A3A9084(v6);
  }

  else
  {
    sub_21A365B98(v0[31], v0[12]);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_21A39D074()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_21A3AC354;
  }

  else
  {
    v2 = sub_21A39D188;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A39D188(uint64_t a1)
{
  v45 = v1;
  v3 = v1[22];
  v2 = v1[23];
  v4 = v1[18];
  v5 = v1[19];
  sub_21A3B202C();
  sub_21A365CB4(v2, v3, &qword_27CD24068, &qword_21A3B3290);
  v6 = (*(v5 + 48))(v3, 1, v4);
  v7 = v1[23];
  v8 = v1[24];
  if (v6 == 1)
  {
    sub_21A365D1C(v1[23], &qword_27CD24068, &qword_21A3B3290);
    v9 = sub_21A3B1EBC();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  else
  {
    v10 = v1[21];
    v12 = v1[19];
    v11 = v1[20];
    v13 = v1[18];
    (*(v12 + 32))(v10, v1[22], v13);
    (*(v12 + 16))(v11, v10, v13);
    sub_21A3B1EAC();
    (*(v12 + 8))(v10, v13);
    sub_21A365D1C(v7, &qword_27CD24068, &qword_21A3B3290);
  }

  v41 = v1[33];
  v39 = v1[29];
  v40 = v1[32];
  v14 = v1[27];
  v38 = v1[30];
  v16 = v1[16];
  v15 = v1[17];
  v17 = v1[15];
  v37 = v1[14];
  (*(v1[26] + 16))(v14, v1[28], v1[25]);
  off_282B3D878(&type metadata for ShowIngredientsAppIntent);
  sub_21A360CEC(v1 + 7, v1[10]);
  sub_21A3B200C();
  sub_21A3B1FEC();
  (*(v17 + 8))(v16, v37);
  sub_21A3B1E6C();

  sub_21A363A24(v14, v15, v38);
  sub_21A361318(v1 + 7);
  sub_21A365CB4(v38, v39, &qword_27CD23F78, &unk_21A3B2F40);
  if (v41(v39, 1, v40) == 1)
  {
    sub_21A365D1C(v1[29], &qword_27CD23F78, &unk_21A3B2F40);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v18 = sub_21A3B21FC();
    sub_21A365DC4(v18, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v19 = sub_21A3B21DC();
    v20 = sub_21A3B25DC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44 = v22;
      *v21 = 136446210;
      v42 = sub_21A3B26CC();
      v43 = v20;
      v24 = v23;

      v25 = sub_21A3AF0A8(v42, v24, &v44);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_21A35E000, v19, v43, "Unable to handle intent, could not create RecipeEntity. intent=%{public}s, privacy: .public)", v21, 0xCu);
      sub_21A361318(v22);
      MEMORY[0x21CED8F60](v22, -1, -1);
      MEMORY[0x21CED8F60](v21, -1, -1);
    }

    else
    {
    }

    v31 = v1[30];
    v32 = v1[28];
    v33 = v1[25];
    v34 = v1[26];
    v35 = v1[24];
    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    sub_21A365D1C(v31, &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v35, &qword_27CD24070, &unk_21A3B4D80);
    (*(v34 + 8))(v32, v33);

    v30 = v1[1];
  }

  else
  {
    v26 = v1[28];
    v27 = v1[25];
    v28 = v1[26];
    v29 = v1[24];
    sub_21A365D1C(v1[30], &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v29, &qword_27CD24070, &unk_21A3B4D80);
    (*(v28 + 8))(v26, v27);
    sub_21A365B98(v1[29], v1[12]);

    v30 = v1[1];
  }

  return v30();
}

uint64_t sub_21A39D8B4(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  v3 = sub_21A3B1FFC();
  *(v2 + 120) = v3;
  *(v2 + 128) = *(v3 - 8);
  *(v2 + 136) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70);
  *(v2 + 144) = swift_task_alloc();
  v4 = sub_21A3B1E4C();
  *(v2 + 152) = v4;
  *(v2 + 160) = *(v4 - 8);
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24068, &qword_21A3B3290);
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80);
  *(v2 + 200) = swift_task_alloc();
  v5 = sub_21A3B205C();
  *(v2 + 208) = v5;
  *(v2 + 216) = *(v5 - 8);
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 232) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();
  v6 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v6;
  *(v2 + 48) = v1[2];

  return MEMORY[0x2822009F8](sub_21A39DB58, 0, 0);
}

uint64_t sub_21A39DB58()
{
  v1 = v0[32];
  off_282B3D998();
  v2 = type metadata accessor for RecipeEntity(0);
  v0[33] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v0[34] = v4;
  v0[35] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[32], &qword_27CD23F78, &unk_21A3B2F40);
    v5 = swift_task_alloc();
    v0[36] = v5;
    *v5 = v0;
    v5[1] = sub_21A39DD94;
    v6 = v0[29];

    return sub_21A3A9AA0(v6);
  }

  else
  {
    sub_21A365B98(v0[32], v0[13]);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_21A39DD94()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_21A39E5F8;
  }

  else
  {
    v2 = sub_21A39DEA8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A39DEA8(uint64_t a1)
{
  v45 = v1;
  v3 = v1[23];
  v2 = v1[24];
  v4 = v1[19];
  v5 = v1[20];
  sub_21A3B202C();
  sub_21A365CB4(v2, v3, &qword_27CD24068, &qword_21A3B3290);
  v6 = (*(v5 + 48))(v3, 1, v4);
  v7 = v1[24];
  v8 = v1[25];
  if (v6 == 1)
  {
    sub_21A365D1C(v1[24], &qword_27CD24068, &qword_21A3B3290);
    v9 = sub_21A3B1EBC();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  else
  {
    v10 = v1[22];
    v12 = v1[20];
    v11 = v1[21];
    v13 = v1[19];
    (*(v12 + 32))(v10, v1[23], v13);
    (*(v12 + 16))(v11, v10, v13);
    sub_21A3B1EAC();
    (*(v12 + 8))(v10, v13);
    sub_21A365D1C(v7, &qword_27CD24068, &qword_21A3B3290);
  }

  v41 = v1[34];
  v38 = v1[30];
  v39 = v1[33];
  v14 = v1[28];
  v37 = v1[31];
  v16 = v1[17];
  v15 = v1[18];
  v17 = v1[16];
  v36 = v1[15];
  (*(v1[27] + 16))(v14, v1[29], v1[26]);
  off_282B3D9B0(&type metadata for ShowSpecificStepIntent);
  sub_21A360CEC(v1 + 8, v1[11]);
  sub_21A3B200C();
  sub_21A3B1FEC();
  (*(v17 + 8))(v16, v36);
  sub_21A3B1E6C();

  sub_21A363A24(v14, v15, v37);
  sub_21A361318(v1 + 8);
  sub_21A365CB4(v37, v38, &qword_27CD23F78, &unk_21A3B2F40);
  if (v41(v38, 1, v39) == 1)
  {
    sub_21A365D1C(v1[30], &qword_27CD23F78, &unk_21A3B2F40);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v18 = sub_21A3B21FC();
    sub_21A365DC4(v18, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v19 = sub_21A3B21DC();
    v20 = sub_21A3B25DC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = v43;
      *v21 = 136446210;
      v40 = sub_21A3B26CC();
      v42 = v20;
      v23 = v22;

      v24 = sub_21A3AF0A8(v40, v23, &v44);

      *(v21 + 4) = v24;
      _os_log_impl(&dword_21A35E000, v19, v42, "Unable to handle intent, could not create RecipeEntity. intent=%{public}s, privacy: .public)", v21, 0xCu);
      sub_21A361318(v43);
      MEMORY[0x21CED8F60](v43, -1, -1);
      MEMORY[0x21CED8F60](v21, -1, -1);
    }

    else
    {
    }

    v30 = v1[31];
    v31 = v1[29];
    v32 = v1[26];
    v33 = v1[27];
    v34 = v1[25];
    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    sub_21A365D1C(v30, &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v34, &qword_27CD24070, &unk_21A3B4D80);
    (*(v33 + 8))(v31, v32);

    v29 = v1[1];
  }

  else
  {
    v25 = v1[29];
    v26 = v1[26];
    v27 = v1[27];
    v28 = v1[25];
    sub_21A365D1C(v1[31], &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v28, &qword_27CD24070, &unk_21A3B4D80);
    (*(v27 + 8))(v25, v26);
    sub_21A365B98(v1[30], v1[13]);

    v29 = v1[1];
  }

  return v29();
}

uint64_t sub_21A39E5F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A39E6F8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_21A3B1FFC();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70);
  v2[12] = swift_task_alloc();
  v4 = sub_21A3B1E4C();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  sub_21A365B50(&qword_27CD24068, &qword_21A3B3290);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80);
  v2[19] = swift_task_alloc();
  v5 = sub_21A3B205C();
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *v1;
  v2[26] = v6;
  v2[27] = v7;
  v2[28] = v1[4];

  return MEMORY[0x2822009F8](sub_21A39E998, 0, 0);
}

uint64_t sub_21A39E998()
{
  v1 = v0[26];
  sub_21A3B1A1C();
  v2 = type metadata accessor for RecipeEntity(0);
  v0[29] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v0[30] = v4;
  v0[31] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v1, 1, v2);
  v6 = v0[26];
  if (v5 == 1)
  {
    sub_21A365D1C(v6, &qword_27CD23F78, &unk_21A3B2F40);
    v7 = swift_task_alloc();
    v0[32] = v7;
    *v7 = v0;
    v7[1] = sub_21A39EBA8;
    v8 = v0[23];

    return sub_21A3AA568(v8);
  }

  else
  {
    sub_21A365B98(v6, v0[7]);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_21A39EBA8()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_21A39F3C0;
  }

  else
  {
    v2 = sub_21A39ECBC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A39ECBC(uint64_t a1)
{
  v47 = v1;
  v3 = v1[17];
  v2 = v1[18];
  v4 = v1[13];
  v5 = v1[14];
  sub_21A3B202C();
  sub_21A365CB4(v2, v3, &qword_27CD24068, &qword_21A3B3290);
  v6 = (*(v5 + 48))(v3, 1, v4);
  v7 = v1[18];
  v8 = v1[19];
  if (v6 == 1)
  {
    sub_21A365D1C(v1[18], &qword_27CD24068, &qword_21A3B3290);
    v9 = sub_21A3B1EBC();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  else
  {
    v10 = v1[16];
    v12 = v1[14];
    v11 = v1[15];
    v13 = v1[13];
    (*(v12 + 32))(v10, v1[17], v13);
    (*(v12 + 16))(v11, v10, v13);
    sub_21A3B1EAC();
    (*(v12 + 8))(v10, v13);
    sub_21A365D1C(v7, &qword_27CD24068, &qword_21A3B3290);
  }

  v43 = v1[30];
  v41 = v1[24];
  v42 = v1[29];
  v14 = v1[22];
  v40 = v1[25];
  v16 = v1[11];
  v15 = v1[12];
  v17 = v1[10];
  v39 = v1[9];
  (*(v1[21] + 16))(v14, v1[23], v1[20]);
  sub_21A3B187C();
  sub_21A360CEC(v1 + 2, v1[5]);
  sub_21A3B200C();
  sub_21A3B1FEC();
  (*(v17 + 8))(v16, v39);
  sub_21A3B1E6C();

  sub_21A363A24(v14, v15, v40);
  sub_21A361318(v1 + 2);
  sub_21A365CB4(v40, v41, &qword_27CD23F78, &unk_21A3B2F40);
  if (v43(v41, 1, v42) == 1)
  {
    sub_21A365D1C(v1[24], &qword_27CD23F78, &unk_21A3B2F40);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v18 = sub_21A3B21FC();
    sub_21A365DC4(v18, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v19 = sub_21A3B21DC();
    v20 = sub_21A3B25DC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v46 = v22;
      *v21 = 136446210;
      v44 = sub_21A3B26CC();
      v45 = v20;
      v24 = v23;

      v25 = sub_21A3AF0A8(v44, v24, &v46);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_21A35E000, v19, v45, "Unable to handle intent, could not create RecipeEntity. intent=%{public}s, privacy: .public)", v21, 0xCu);
      sub_21A361318(v22);
      MEMORY[0x21CED8F60](v22, -1, -1);
      MEMORY[0x21CED8F60](v21, -1, -1);
    }

    else
    {
    }

    v33 = v1[25];
    v34 = v1[23];
    v35 = v1[20];
    v36 = v1[21];
    v37 = v1[19];
    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    sub_21A365D1C(v33, &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v37, &qword_27CD24070, &unk_21A3B4D80);
    (*(v36 + 8))(v34, v35);

    v32 = v1[1];
  }

  else
  {
    v26 = v1[24];
    v27 = v1[23];
    v28 = v1[20];
    v29 = v1[21];
    v30 = v1[19];
    v31 = v1[7];
    sub_21A365D1C(v1[25], &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v30, &qword_27CD24070, &unk_21A3B4D80);
    (*(v29 + 8))(v27, v28);
    sub_21A365B98(v26, v31);

    v32 = v1[1];
  }

  return v32();
}

uint64_t sub_21A39F3C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A39F4C0()
{
  v2 = sub_21A3B1FFC();
  *(v1 + 96) = v2;
  *(v1 + 104) = *(v2 - 8);
  *(v1 + 112) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24158, &qword_21A3B3750);
  *(v1 + 120) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  *(v1 + 128) = swift_task_alloc();
  v3 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v3;
  *(v1 + 48) = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_21A39F5FC, 0, 0);
}

uint64_t sub_21A39F5FC()
{
  v1 = v0[16];
  off_282B3C8F0();
  v2 = type metadata accessor for RecipeEntity(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[16], &qword_27CD23F78, &unk_21A3B2F40);
    (off_282B3C900[0])(&type metadata for ShowDetailsAppIntent);
    v3 = v0[10];
    v4 = v0[11];
    sub_21A360CEC(v0 + 7, v3);
    v5 = swift_task_alloc();
    v0[17] = v5;
    *v5 = v0;
    v5[1] = sub_21A39F7F4;
    v6 = v0[15];

    return MEMORY[0x28214F8F0](v6, v3, v4);
  }

  else
  {
    v7 = v0[16];
    v8 = *v7;
    v9 = v7[1];

    sub_21A36769C(v7, type metadata accessor for RecipeEntity);

    v10 = v0[1];

    return v10(v8, v9);
  }
}

uint64_t sub_21A39F7F4()
{

  return MEMORY[0x2822009F8](sub_21A39F8F0, 0, 0);
}

uint64_t sub_21A39F8F0()
{
  v1 = v0[15];
  v2 = sub_21A3B1D3C();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_21A361318(v0 + 7);
    sub_21A365D1C(v1, &qword_27CD24158, &qword_21A3B3750);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v0[13];
    v6 = v0[14];
    v8 = v0[12];
    sub_21A3B1D2C();
    (*(v3 + 8))(v1, v2);
    v4 = sub_21A3B1FEC();
    v5 = v9;
    (*(v7 + 8))(v6, v8);
    sub_21A361318(v0 + 7);
  }

  v10 = v0[1];

  return v10(v4, v5);
}

uint64_t sub_21A39FA78()
{
  v2 = sub_21A3B1FFC();
  *(v1 + 96) = v2;
  *(v1 + 104) = *(v2 - 8);
  *(v1 + 112) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24158, &qword_21A3B3750);
  *(v1 + 120) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  *(v1 + 128) = swift_task_alloc();
  v3 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v3;
  *(v1 + 48) = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_21A39FBB4, 0, 0);
}

uint64_t sub_21A39FBB4()
{
  v1 = v0[16];
  off_282B3CCC0();
  v2 = type metadata accessor for RecipeEntity(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[16], &qword_27CD23F78, &unk_21A3B2F40);
    (off_282B3CCD0[0])(&type metadata for ShowNextStepAppIntent);
    v3 = v0[10];
    v4 = v0[11];
    sub_21A360CEC(v0 + 7, v3);
    v5 = swift_task_alloc();
    v0[17] = v5;
    *v5 = v0;
    v5[1] = sub_21A39FDAC;
    v6 = v0[15];

    return MEMORY[0x28214F8F0](v6, v3, v4);
  }

  else
  {
    v7 = v0[16];
    v8 = *v7;
    v9 = v7[1];

    sub_21A36769C(v7, type metadata accessor for RecipeEntity);

    v10 = v0[1];

    return v10(v8, v9);
  }
}

uint64_t sub_21A39FDAC()
{

  return MEMORY[0x2822009F8](sub_21A3AC344, 0, 0);
}

uint64_t sub_21A39FEA8()
{
  v2 = sub_21A3B1FFC();
  *(v1 + 96) = v2;
  *(v1 + 104) = *(v2 - 8);
  *(v1 + 112) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24158, &qword_21A3B3750);
  *(v1 + 120) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  *(v1 + 128) = swift_task_alloc();
  v3 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v3;
  *(v1 + 48) = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_21A39FFE4, 0, 0);
}

uint64_t sub_21A39FFE4()
{
  v1 = v0[16];
  off_282B3CDA0();
  v2 = type metadata accessor for RecipeEntity(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[16], &qword_27CD23F78, &unk_21A3B2F40);
    (off_282B3CDB0[0])(&type metadata for StartCookingAppIntent);
    v3 = v0[10];
    v4 = v0[11];
    sub_21A360CEC(v0 + 7, v3);
    v5 = swift_task_alloc();
    v0[17] = v5;
    *v5 = v0;
    v5[1] = sub_21A39FDAC;
    v6 = v0[15];

    return MEMORY[0x28214F8F0](v6, v3, v4);
  }

  else
  {
    v7 = v0[16];
    v8 = *v7;
    v9 = v7[1];

    sub_21A36769C(v7, type metadata accessor for RecipeEntity);

    v10 = v0[1];

    return v10(v8, v9);
  }
}

uint64_t sub_21A3A01DC()
{
  v2 = sub_21A3B1FFC();
  *(v1 + 96) = v2;
  *(v1 + 104) = *(v2 - 8);
  *(v1 + 112) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24158, &qword_21A3B3750);
  *(v1 + 120) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  *(v1 + 128) = swift_task_alloc();
  v3 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v3;
  *(v1 + 48) = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_21A3A0318, 0, 0);
}

uint64_t sub_21A3A0318()
{
  v1 = v0[16];
  off_282B3CE58();
  v2 = type metadata accessor for RecipeEntity(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[16], &qword_27CD23F78, &unk_21A3B2F40);
    (off_282B3CE68[0])(&type metadata for SaveRecipeAppIntent);
    v3 = v0[10];
    v4 = v0[11];
    sub_21A360CEC(v0 + 7, v3);
    v5 = swift_task_alloc();
    v0[17] = v5;
    *v5 = v0;
    v5[1] = sub_21A39FDAC;
    v6 = v0[15];

    return MEMORY[0x28214F8F0](v6, v3, v4);
  }

  else
  {
    v7 = v0[16];
    v8 = *v7;
    v9 = v7[1];

    sub_21A36769C(v7, type metadata accessor for RecipeEntity);

    v10 = v0[1];

    return v10(v8, v9);
  }
}

uint64_t sub_21A3A0510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_21A3B1FFC();
  v4[11] = v9;
  v4[12] = *(v9 - 8);
  v4[13] = swift_task_alloc();
  sub_21A365B50(&qword_27CD24158, &qword_21A3B3750);
  v4[14] = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  v4[15] = swift_task_alloc();
  v4[7] = a1;
  v4[8] = a2;
  v4[9] = a3;
  v4[10] = a4;

  return MEMORY[0x2822009F8](sub_21A3A065C, 0, 0);
}

uint64_t sub_21A3A065C()
{
  v1 = v0[15];
  off_282B3CF90();
  v2 = type metadata accessor for RecipeEntity(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[15], &qword_27CD23F78, &unk_21A3B2F40);
    (off_282B3CFA0[0])(&type metadata for GetIngredientsAppIntent);
    v3 = v0[5];
    v4 = v0[6];
    sub_21A360CEC(v0 + 2, v3);
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_21A3A0854;
    v6 = v0[14];

    return MEMORY[0x28214F8F0](v6, v3, v4);
  }

  else
  {
    v7 = v0[15];
    v8 = *v7;
    v9 = v7[1];

    sub_21A36769C(v7, type metadata accessor for RecipeEntity);

    v10 = v0[1];

    return v10(v8, v9);
  }
}

uint64_t sub_21A3A0854()
{

  return MEMORY[0x2822009F8](sub_21A3A0950, 0, 0);
}

uint64_t sub_21A3A0950()
{
  v1 = v0[14];
  v2 = sub_21A3B1D3C();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_21A361318(v0 + 2);
    sub_21A365D1C(v1, &qword_27CD24158, &qword_21A3B3750);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v0[12];
    v6 = v0[13];
    v8 = v0[11];
    sub_21A3B1D2C();
    (*(v3 + 8))(v1, v2);
    v4 = sub_21A3B1FEC();
    v5 = v9;
    (*(v7 + 8))(v6, v8);
    sub_21A361318(v0 + 2);
  }

  v10 = v0[1];

  return v10(v4, v5);
}

uint64_t sub_21A3A0AD8()
{
  v2 = sub_21A3B1FFC();
  *(v1 + 104) = v2;
  *(v1 + 112) = *(v2 - 8);
  *(v1 + 120) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24158, &qword_21A3B3750);
  *(v1 + 128) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  *(v1 + 136) = swift_task_alloc();
  v3 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 32) = v3;
  *(v1 + 48) = v0[2];

  return MEMORY[0x2822009F8](sub_21A3A0C14, 0, 0);
}

uint64_t sub_21A3A0C14()
{
  v1 = v0[17];
  off_282B3D040();
  v2 = type metadata accessor for RecipeEntity(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[17], &qword_27CD23F78, &unk_21A3B2F40);
    (off_282B3D050[0])(&type metadata for SelectIngredientAppIntent);
    v3 = v0[11];
    v4 = v0[12];
    sub_21A360CEC(v0 + 8, v3);
    v5 = swift_task_alloc();
    v0[18] = v5;
    *v5 = v0;
    v5[1] = sub_21A3A0E0C;
    v6 = v0[16];

    return MEMORY[0x28214F8F0](v6, v3, v4);
  }

  else
  {
    v7 = v0[17];
    v8 = *v7;
    v9 = v7[1];

    sub_21A36769C(v7, type metadata accessor for RecipeEntity);

    v10 = v0[1];

    return v10(v8, v9);
  }
}

uint64_t sub_21A3A0E0C()
{

  return MEMORY[0x2822009F8](sub_21A3AC348, 0, 0);
}

uint64_t sub_21A3A0F08()
{
  v2 = sub_21A3B1FFC();
  *(v1 + 96) = v2;
  *(v1 + 104) = *(v2 - 8);
  *(v1 + 112) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24158, &qword_21A3B3750);
  *(v1 + 120) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  *(v1 + 128) = swift_task_alloc();
  v3 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v3;
  *(v1 + 48) = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_21A3A1044, 0, 0);
}

uint64_t sub_21A3A1044()
{
  v1 = v0[16];
  off_282B3D1E8();
  v2 = type metadata accessor for RecipeEntity(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[16], &qword_27CD23F78, &unk_21A3B2F40);
    (off_282B3D1F8[0])(&type metadata for UnsaveRecipeAppIntent);
    v3 = v0[10];
    v4 = v0[11];
    sub_21A360CEC(v0 + 7, v3);
    v5 = swift_task_alloc();
    v0[17] = v5;
    *v5 = v0;
    v5[1] = sub_21A39FDAC;
    v6 = v0[15];

    return MEMORY[0x28214F8F0](v6, v3, v4);
  }

  else
  {
    v7 = v0[16];
    v8 = *v7;
    v9 = v7[1];

    sub_21A36769C(v7, type metadata accessor for RecipeEntity);

    v10 = v0[1];

    return v10(v8, v9);
  }
}

uint64_t sub_21A3A123C()
{
  v2 = sub_21A3B1FFC();
  *(v1 + 96) = v2;
  *(v1 + 104) = *(v2 - 8);
  *(v1 + 112) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24158, &qword_21A3B3750);
  *(v1 + 120) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  *(v1 + 128) = swift_task_alloc();
  v3 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v3;
  *(v1 + 48) = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_21A3A1378, 0, 0);
}

uint64_t sub_21A3A1378()
{
  v1 = v0[16];
  off_282B3D2A0();
  v2 = type metadata accessor for RecipeEntity(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[16], &qword_27CD23F78, &unk_21A3B2F40);
    (off_282B3D2B0[0])(&type metadata for ShowPreviousStepAppIntent);
    v3 = v0[10];
    v4 = v0[11];
    sub_21A360CEC(v0 + 7, v3);
    v5 = swift_task_alloc();
    v0[17] = v5;
    *v5 = v0;
    v5[1] = sub_21A39FDAC;
    v6 = v0[15];

    return MEMORY[0x28214F8F0](v6, v3, v4);
  }

  else
  {
    v7 = v0[16];
    v8 = *v7;
    v9 = v7[1];

    sub_21A36769C(v7, type metadata accessor for RecipeEntity);

    v10 = v0[1];

    return v10(v8, v9);
  }
}

uint64_t sub_21A3A1570()
{
  v2 = sub_21A3B1FFC();
  *(v1 + 104) = v2;
  *(v1 + 112) = *(v2 - 8);
  *(v1 + 120) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24158, &qword_21A3B3750);
  *(v1 + 128) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  *(v1 + 136) = swift_task_alloc();
  v3 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 32) = v3;
  *(v1 + 48) = v0[2];

  return MEMORY[0x2822009F8](sub_21A3A16AC, 0, 0);
}

uint64_t sub_21A3A16AC()
{
  v1 = v0[17];
  off_282B3D6D0();
  v2 = type metadata accessor for RecipeEntity(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[17], &qword_27CD23F78, &unk_21A3B2F40);
    (off_282B3D6E0[0])(&type metadata for UnselectIngredientAppIntent);
    v3 = v0[11];
    v4 = v0[12];
    sub_21A360CEC(v0 + 8, v3);
    v5 = swift_task_alloc();
    v0[18] = v5;
    *v5 = v0;
    v5[1] = sub_21A3A0E0C;
    v6 = v0[16];

    return MEMORY[0x28214F8F0](v6, v3, v4);
  }

  else
  {
    v7 = v0[17];
    v8 = *v7;
    v9 = v7[1];

    sub_21A36769C(v7, type metadata accessor for RecipeEntity);

    v10 = v0[1];

    return v10(v8, v9);
  }
}

uint64_t sub_21A3A18A4()
{
  v2 = sub_21A3B1FFC();
  *(v1 + 96) = v2;
  *(v1 + 104) = *(v2 - 8);
  *(v1 + 112) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24158, &qword_21A3B3750);
  *(v1 + 120) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  *(v1 + 128) = swift_task_alloc();
  v3 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v3;
  *(v1 + 48) = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_21A3A19E0, 0, 0);
}

uint64_t sub_21A3A19E0()
{
  v1 = v0[16];
  off_282B3D788();
  v2 = type metadata accessor for RecipeEntity(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[16], &qword_27CD23F78, &unk_21A3B2F40);
    (off_282B3D798[0])(&type metadata for StopCookingAppIntent);
    v3 = v0[10];
    v4 = v0[11];
    sub_21A360CEC(v0 + 7, v3);
    v5 = swift_task_alloc();
    v0[17] = v5;
    *v5 = v0;
    v5[1] = sub_21A39FDAC;
    v6 = v0[15];

    return MEMORY[0x28214F8F0](v6, v3, v4);
  }

  else
  {
    v7 = v0[16];
    v8 = *v7;
    v9 = v7[1];

    sub_21A36769C(v7, type metadata accessor for RecipeEntity);

    v10 = v0[1];

    return v10(v8, v9);
  }
}

uint64_t sub_21A3A1BD8()
{
  v2 = sub_21A3B1FFC();
  *(v1 + 96) = v2;
  *(v1 + 104) = *(v2 - 8);
  *(v1 + 112) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24158, &qword_21A3B3750);
  *(v1 + 120) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  *(v1 + 128) = swift_task_alloc();
  v3 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v3;
  *(v1 + 48) = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_21A3A1D14, 0, 0);
}

uint64_t sub_21A3A1D14()
{
  v1 = v0[16];
  off_282B3D860();
  v2 = type metadata accessor for RecipeEntity(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[16], &qword_27CD23F78, &unk_21A3B2F40);
    (off_282B3D870[0])(&type metadata for ShowIngredientsAppIntent);
    v3 = v0[10];
    v4 = v0[11];
    sub_21A360CEC(v0 + 7, v3);
    v5 = swift_task_alloc();
    v0[17] = v5;
    *v5 = v0;
    v5[1] = sub_21A39FDAC;
    v6 = v0[15];

    return MEMORY[0x28214F8F0](v6, v3, v4);
  }

  else
  {
    v7 = v0[16];
    v8 = *v7;
    v9 = v7[1];

    sub_21A36769C(v7, type metadata accessor for RecipeEntity);

    v10 = v0[1];

    return v10(v8, v9);
  }
}

uint64_t sub_21A3A1F0C()
{
  v2 = sub_21A3B1FFC();
  *(v1 + 104) = v2;
  *(v1 + 112) = *(v2 - 8);
  *(v1 + 120) = swift_task_alloc();
  sub_21A365B50(&qword_27CD24158, &qword_21A3B3750);
  *(v1 + 128) = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  *(v1 + 136) = swift_task_alloc();
  v3 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 32) = v3;
  *(v1 + 48) = v0[2];

  return MEMORY[0x2822009F8](sub_21A3A2048, 0, 0);
}

uint64_t sub_21A3A2048()
{
  v1 = v0[17];
  off_282B3D998();
  v2 = type metadata accessor for RecipeEntity(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[17], &qword_27CD23F78, &unk_21A3B2F40);
    (off_282B3D9A8[0])(&type metadata for ShowSpecificStepIntent);
    v3 = v0[11];
    v4 = v0[12];
    sub_21A360CEC(v0 + 8, v3);
    v5 = swift_task_alloc();
    v0[18] = v5;
    *v5 = v0;
    v5[1] = sub_21A3A2240;
    v6 = v0[16];

    return MEMORY[0x28214F8F0](v6, v3, v4);
  }

  else
  {
    v7 = v0[17];
    v8 = *v7;
    v9 = v7[1];

    sub_21A36769C(v7, type metadata accessor for RecipeEntity);

    v10 = v0[1];

    return v10(v8, v9);
  }
}

uint64_t sub_21A3A2240()
{

  return MEMORY[0x2822009F8](sub_21A3A233C, 0, 0);
}

uint64_t sub_21A3A233C()
{
  v1 = v0[16];
  v2 = sub_21A3B1D3C();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_21A361318(v0 + 8);
    sub_21A365D1C(v1, &qword_27CD24158, &qword_21A3B3750);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v0[14];
    v6 = v0[15];
    v8 = v0[13];
    sub_21A3B1D2C();
    (*(v3 + 8))(v1, v2);
    v4 = sub_21A3B1FEC();
    v5 = v9;
    (*(v7 + 8))(v6, v8);
    sub_21A361318(v0 + 8);
  }

  v10 = v0[1];

  return v10(v4, v5);
}

uint64_t sub_21A3A24C4()
{
  v2 = sub_21A3B1FFC();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  sub_21A365B50(&qword_27CD24158, &qword_21A3B3750);
  v1[10] = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  v3 = swift_task_alloc();
  v4 = *v0;
  v1[11] = v3;
  v1[12] = v4;
  v1[13] = v0[3];

  return MEMORY[0x2822009F8](sub_21A3A25FC, 0, 0);
}

uint64_t sub_21A3A25FC()
{
  v1 = v0[11];
  sub_21A3B1A1C();
  v2 = type metadata accessor for RecipeEntity(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[11], &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A3B187C();
    v3 = v0[5];
    v4 = v0[6];
    sub_21A360CEC(v0 + 2, v3);
    v5 = swift_task_alloc();
    v0[14] = v5;
    *v5 = v0;
    v5[1] = sub_21A3A27B0;
    v6 = v0[10];

    return MEMORY[0x28214F8F0](v6, v3, v4);
  }

  else
  {
    v7 = v0[11];
    v8 = *v7;
    v9 = v7[1];

    sub_21A36769C(v7, type metadata accessor for RecipeEntity);

    v10 = v0[1];

    return v10(v8, v9);
  }
}

uint64_t sub_21A3A27B0()
{

  return MEMORY[0x2822009F8](sub_21A3A28AC, 0, 0);
}

uint64_t sub_21A3A28AC()
{
  v1 = v0[10];
  v2 = sub_21A3B1D3C();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_21A361318(v0 + 2);
    sub_21A365D1C(v1, &qword_27CD24158, &qword_21A3B3750);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v0[8];
    v6 = v0[9];
    v8 = v0[7];
    sub_21A3B1D2C();
    (*(v3 + 8))(v1, v2);
    v4 = sub_21A3B1FEC();
    v5 = v9;
    (*(v7 + 8))(v6, v8);
    sub_21A361318(v0 + 2);
  }

  v10 = v0[1];

  return v10(v4, v5);
}

uint64_t sub_21A3A2A34(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  v4 = swift_task_alloc();
  *(v2 + 136) = v4;
  *v4 = v2;
  v4[1] = sub_21A3A2AD4;

  return sub_21A39F4C0();
}

uint64_t sub_21A3A2AD4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[12] = v2;
  v3[13] = a1;
  v3[14] = a2;
  v3[18] = a2;

  return MEMORY[0x2822009F8](sub_21A3A2BDC, 0, 0);
}

uint64_t sub_21A3A2BDC()
{
  v20 = v0;
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[13];
    off_282B3C8F8(&type metadata for ShowDetailsAppIntent);
    v3 = v0[10];
    v4 = v0[11];
    sub_21A360CEC(v0 + 7, v3);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v5 = swift_allocObject();
    v0[19] = v5;
    *(v5 + 16) = xmmword_21A3B3530;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
    v6 = swift_task_alloc();
    v0[20] = v6;
    *v6 = v0;
    v6[1] = sub_21A3A2FB8;

    return MEMORY[0x28214FA48](v5, v3, v4);
  }

  else
  {
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v7 = sub_21A3B21FC();
    sub_21A365DC4(v7, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v8 = sub_21A3B21DC();
    v9 = sub_21A3B25DC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136446210;
      v17 = sub_21A3B26CC();
      v18 = v9;
      v13 = v12;

      v14 = sub_21A3AF0A8(v17, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_21A35E000, v8, v18, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v10, 0xCu);
      sub_21A361318(v11);
      MEMORY[0x21CED8F60](v11, -1, -1);
      MEMORY[0x21CED8F60](v10, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_21A3A2FB8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_21A3A3450;
  }

  else
  {
    v4 = sub_21A3A30F4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21A3A30F4()
{
  v17 = v0;
  v1 = v0[21];
  if (*(v1 + 16))
  {
    v2 = v0[15];
    v3 = sub_21A3B205C();
    (*(*(v3 - 8) + 16))(v2, v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);

    sub_21A361318(v0 + 7);
    v4 = v0[1];
  }

  else
  {

    sub_21A361318(v0 + 7);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v5 = sub_21A3B21FC();
    sub_21A365DC4(v5, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v6 = sub_21A3B21DC();
    v7 = sub_21A3B25DC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136446210;
      v14 = sub_21A3B26CC();
      v15 = v7;
      v11 = v10;

      v12 = sub_21A3AF0A8(v14, v11, &v16);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_21A35E000, v6, v15, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v8, 0xCu);
      sub_21A361318(v9);
      MEMORY[0x21CED8F60](v9, -1, -1);
      MEMORY[0x21CED8F60](v8, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_21A3A3450()
{
  sub_21A361318((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A3A34B4(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  v4 = swift_task_alloc();
  *(v2 + 136) = v4;
  *v4 = v2;
  v4[1] = sub_21A3A3554;

  return sub_21A39FA78();
}

uint64_t sub_21A3A3554(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[12] = v2;
  v3[13] = a1;
  v3[14] = a2;
  v3[18] = a2;

  return MEMORY[0x2822009F8](sub_21A3A365C, 0, 0);
}

uint64_t sub_21A3A365C()
{
  v20 = v0;
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[13];
    off_282B3CCC8(&type metadata for ShowNextStepAppIntent);
    v3 = v0[10];
    v4 = v0[11];
    sub_21A360CEC(v0 + 7, v3);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v5 = swift_allocObject();
    v0[19] = v5;
    *(v5 + 16) = xmmword_21A3B3530;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
    v6 = swift_task_alloc();
    v0[20] = v6;
    *v6 = v0;
    v6[1] = sub_21A3A3A38;

    return MEMORY[0x28214FA48](v5, v3, v4);
  }

  else
  {
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v7 = sub_21A3B21FC();
    sub_21A365DC4(v7, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v8 = sub_21A3B21DC();
    v9 = sub_21A3B25DC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136446210;
      v17 = sub_21A3B26CC();
      v18 = v9;
      v13 = v12;

      v14 = sub_21A3AF0A8(v17, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_21A35E000, v8, v18, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v10, 0xCu);
      sub_21A361318(v11);
      MEMORY[0x21CED8F60](v11, -1, -1);
      MEMORY[0x21CED8F60](v10, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_21A3A3A38(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_21A3AC34C;
  }

  else
  {
    v4 = sub_21A3A3B74;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21A3A3B74()
{
  v17 = v0;
  v1 = v0[21];
  if (*(v1 + 16))
  {
    v2 = v0[15];
    v3 = sub_21A3B205C();
    (*(*(v3 - 8) + 16))(v2, v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);

    sub_21A361318(v0 + 7);
    v4 = v0[1];
  }

  else
  {

    sub_21A361318(v0 + 7);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v5 = sub_21A3B21FC();
    sub_21A365DC4(v5, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v6 = sub_21A3B21DC();
    v7 = sub_21A3B25DC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136446210;
      v14 = sub_21A3B26CC();
      v15 = v7;
      v11 = v10;

      v12 = sub_21A3AF0A8(v14, v11, &v16);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_21A35E000, v6, v15, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v8, 0xCu);
      sub_21A361318(v9);
      MEMORY[0x21CED8F60](v9, -1, -1);
      MEMORY[0x21CED8F60](v8, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_21A3A3ED0(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  v4 = swift_task_alloc();
  *(v2 + 136) = v4;
  *v4 = v2;
  v4[1] = sub_21A3A3F70;

  return sub_21A39FEA8();
}

uint64_t sub_21A3A3F70(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[12] = v2;
  v3[13] = a1;
  v3[14] = a2;
  v3[18] = a2;

  return MEMORY[0x2822009F8](sub_21A3A4078, 0, 0);
}

uint64_t sub_21A3A4078()
{
  v20 = v0;
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[13];
    off_282B3CDA8(&type metadata for StartCookingAppIntent);
    v3 = v0[10];
    v4 = v0[11];
    sub_21A360CEC(v0 + 7, v3);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v5 = swift_allocObject();
    v0[19] = v5;
    *(v5 + 16) = xmmword_21A3B3530;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
    v6 = swift_task_alloc();
    v0[20] = v6;
    *v6 = v0;
    v6[1] = sub_21A3A4454;

    return MEMORY[0x28214FA48](v5, v3, v4);
  }

  else
  {
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v7 = sub_21A3B21FC();
    sub_21A365DC4(v7, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v8 = sub_21A3B21DC();
    v9 = sub_21A3B25DC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136446210;
      v17 = sub_21A3B26CC();
      v18 = v9;
      v13 = v12;

      v14 = sub_21A3AF0A8(v17, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_21A35E000, v8, v18, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v10, 0xCu);
      sub_21A361318(v11);
      MEMORY[0x21CED8F60](v11, -1, -1);
      MEMORY[0x21CED8F60](v10, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_21A3A4454(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_21A3AC34C;
  }

  else
  {
    v4 = sub_21A3A4590;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}