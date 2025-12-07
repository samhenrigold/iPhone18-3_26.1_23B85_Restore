uint64_t sub_24F2E4E90(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139F8, &qword_24F93B5B0);
  v5 = v4 - 8;
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v27 - v8);
  v10 = sub_24F91F648();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  v17 = *(a1 + 56);
  swift_beginAccess();
  sub_24E8B95F0(a1, v29);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29[0] = *(v1 + 128);
  *(v1 + 128) = 0x8000000000000000;
  sub_24E8227C0(a1, v17, isUniquelyReferenced_nonNull_native);
  *(v1 + 128) = v29[0];
  swift_endAccess();
  sub_24F91F638();
  sub_24F91F568();
  v19 = v13;
  v20 = v27;
  (*(v11 + 8))(v19, v10);
  v21 = *(v5 + 56);
  *v9 = v17;
  (*(v11 + 32))(v9 + v21, v16, v10);
  sub_24E60169C(v9, v20, &qword_27F2139F8, &qword_24F93B5B0);
  v22 = *(v1 + 152);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 152) = v22;
  if ((v23 & 1) == 0)
  {
    v22 = sub_24E61A1D0(0, v22[2] + 1, 1, v22);
    *(v2 + 152) = v22;
  }

  v25 = v22[2];
  v24 = v22[3];
  if (v25 >= v24 >> 1)
  {
    v22 = sub_24E61A1D0((v24 > 1), v25 + 1, 1, v22);
    *(v2 + 152) = v22;
  }

  v22[2] = v25 + 1;
  sub_24E6009C8(v20, v22 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, &qword_27F2139F8, &qword_24F93B5B0);
  *(v2 + 152) = v22;
  return sub_24E601704(v9, &qword_27F2139F8, &qword_24F93B5B0);
}

uint64_t sub_24F2E51B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F928418();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_24F92AAE8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = v1[16];
  if (!*(v9 + 16))
  {
    return swift_endAccess();
  }

  v10 = *(a1 + 56);
  v11 = sub_24E7728CC(v10);
  if ((v12 & 1) == 0)
  {
    return swift_endAccess();
  }

  v53 = v5;
  v13 = *(v9 + 56) + 88 * v11;
  v14 = *(v13 + 24);
  v51 = v6;
  v52 = v14;
  v15 = *(v13 + 80);
  swift_endAccess();
  swift_beginAccess();
  v54 = v15;

  v50 = v10;
  sub_24EB4455C(v10, &v57);
  swift_endAccess();
  v63[2] = v59;
  v63[3] = v60;
  v63[4] = v61;
  v64 = v62;
  v63[0] = v57;
  v63[1] = v58;
  sub_24E601704(v63, &qword_27F23E5A0, &qword_24F9E1350);
  v55 = sub_24F2E5880(a1);
  v16 = *(v55 + 16);
  if (v16)
  {
    v17 = v55 + 32;
    swift_beginAccess();
    v18 = 0;
    while (1)
    {
      v19 = v2[18];
      if (*(v19 + 16))
      {
        v20 = *(v17 + 48 * v18 + 16);
        v21 = sub_24F92D058();
        v22 = -1 << *(v19 + 32);
        v23 = v21 & ~v22;
        if ((*(v19 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
        {
          break;
        }
      }

LABEL_5:
      if (++v18 == v16)
      {
        goto LABEL_13;
      }
    }

    v24 = ~v22;
    while (*(*(v19 + 48) + 8 * v23) != v20)
    {
      v23 = (v23 + 1) & v24;
      if (((*(v19 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_22;
  }

LABEL_13:
  v26 = *(a1 + 24);
  v27 = v52;
  if (v26 >= v52)
  {
    v35 = sub_24F2E6A84(v52, v26);
    if ((v36 & 1) == 0)
    {
      v65[0] = *(a1 + 64);
      v37 = *(&v65[0] + 1);
      if (*(&v65[0] + 1))
      {
        v38 = v35;
        v39 = *&v65[0];
        v40 = *(a1 + 80);
        sub_24E60169C(v65, &v57, &unk_27F23B740, &qword_24F93EC10);

        v41 = v54;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v57 = v41;
        sub_24F2E6B24(v40, sub_24F2E5B20, 0, isUniquelyReferenced_nonNull_native, &v57);

        v43 = v57;
        swift_beginAccess();
        v44 = v2[2];
        if (v44)
        {
          v45 = v2[3];
          *&v57 = v38;
          *(&v57 + 1) = v39;
          *&v58 = v37;
          *(&v58 + 1) = v55;
          *&v59 = v43;

          v44(&v57);
          sub_24E824448(v44, v45);
        }
      }
    }

LABEL_22:
  }

  v49 = *(a1 + 24);

  if (qword_27F210580 != -1)
  {
    swift_once();
  }

  v28 = v53;
  v29 = __swift_project_value_buffer(v53, qword_27F39C3E0);
  v30 = v51;
  (*(v51 + 16))(v8, v29, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  v31 = *(sub_24F928468() - 8);
  v55 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  v32 = MEMORY[0x277D84D38];
  *(&v58 + 1) = MEMORY[0x277D84D38];
  *&v57 = v27;
  sub_24F9283D8();
  sub_24E601704(&v57, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283F8();
  *(&v58 + 1) = v32;
  *&v57 = v49;
  sub_24F9283D8();
  sub_24E601704(&v57, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283F8();
  v56 = *(a1 + 64);
  if (*(&v56 + 1))
  {
    v33 = MEMORY[0x277D837D0];
    v34 = v56;
  }

  else
  {
    v34 = 0;
    v33 = 0;
    *&v58 = 0;
  }

  v46 = v50;
  *&v57 = v34;
  *(&v57 + 1) = *(&v56 + 1);
  *(&v58 + 1) = v33;
  sub_24E60169C(&v56, v65, &unk_27F23B740, &qword_24F93EC10);
  sub_24F9283D8();
  sub_24E601704(&v57, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283F8();
  *(&v58 + 1) = MEMORY[0x277D84D38];
  *&v57 = v46;
  sub_24F9283D8();
  sub_24E601704(&v57, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283F8();
  sub_24F928428();
  v47 = v53;
  sub_24F92A5A8();

  return (*(v30 + 8))(v8, v47);
}

char *sub_24F2E5880(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 136);
  if (*(v4 + 16) && (v5 = sub_24E7728CC(*(a1 + 32)), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 48 * v5);
    v9 = *v7;
    v8 = v7[1];
    v11 = v7[2];
    v10 = v7[3];
    v13 = v7[4];
    v12 = v7[5];
    swift_endAccess();

    v14 = MEMORY[0x277D84F90];
    while (1)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_24E61A1F4(0, *(v14 + 2) + 1, 1, v14);
      }

      v16 = *(v14 + 2);
      v15 = *(v14 + 3);
      if (v16 >= v15 >> 1)
      {
        v14 = sub_24E61A1F4((v15 > 1), v16 + 1, 1, v14);
      }

      *(v14 + 2) = v16 + 1;
      v17 = &v14[48 * v16];
      *(v17 + 4) = v9;
      *(v17 + 5) = v8;
      *(v17 + 6) = v11;
      *(v17 + 7) = v10;
      *(v17 + 8) = v13;
      *(v17 + 9) = v12;
      swift_beginAccess();
      v18 = *(v2 + 136);
      if (!*(v18 + 16))
      {
        break;
      }

      v19 = sub_24E7728CC(v10);
      if ((v20 & 1) == 0)
      {
        break;
      }

      v21 = (*(v18 + 56) + 48 * v19);
      v9 = *v21;
      v22 = v21[1];
      v11 = v21[2];
      v10 = v21[3];
      v13 = v21[4];
      v23 = v21[5];
      swift_endAccess();

      v8 = v22;
      v12 = v23;
    }

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    return MEMORY[0x277D84F90];
  }

  return v14;
}

uint64_t _JetTraceAggregator.deinit()
{
  sub_24E824448(*(v0 + 16), *(v0 + 24));
  sub_24E824448(*(v0 + 32), *(v0 + 40));

  sub_24E601704(v0 + 96, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t _JetTraceAggregator.__deallocating_deinit()
{
  _JetTraceAggregator.deinit();

  return swift_deallocClassInstance();
}

double sub_24F2E5B20@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;

  return result;
}

uint64_t sub_24F2E5C1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F2E5C64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F2E5CC8()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_140(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_24F2E5D1C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = [a1 type];
  v4 = [a1 composedMessage];
  if (v4)
  {
    v5 = v4;
    v6 = sub_24F92B0D8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v24 = [a1 machContinuousTimestamp];
  v23 = [a1 activityIdentifier];
  v9 = [a1 parentActivityIdentifier];
  v10 = [a1 signpostType];
  v11 = [a1 signpostIdentifier];
  v12 = [a1 signpostName];
  if (!v12)
  {
    v15 = 0;
    v17 = 0;
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    v18 = sub_24E6086DC(MEMORY[0x277D84F90]);

    goto LABEL_9;
  }

  v13 = v6;
  v14 = v12;
  v15 = sub_24F92B0D8();
  v17 = v16;

  v6 = v13;
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:

  v18 = sub_24F0AFEFC();

  swift_bridgeObjectRelease_n();
LABEL_9:
  *&v27 = v25;
  *(&v27 + 1) = v6;
  *&v28 = v8;
  *(&v28 + 1) = v24;
  *&v29 = v23;
  *(&v29 + 1) = v9;
  *&v30 = v10;
  *(&v30 + 1) = v11;
  *&v31 = v15;
  *(&v31 + 1) = v17;
  v32 = v18;
  v33[0] = v25;
  v33[1] = v6;
  v33[2] = v8;
  v33[3] = v24;
  v33[4] = v23;
  v33[5] = v9;
  v33[6] = v10;
  v33[7] = v11;
  v33[8] = v15;
  v33[9] = v17;
  v33[10] = v18;
  sub_24E8B95F0(&v27, v26);
  sub_24F2E6E2C(v33);
  v19 = v30;
  v20 = v31;
  *(a2 + 32) = v29;
  *(a2 + 48) = v19;
  *(a2 + 64) = v20;
  *(a2 + 80) = v32;
  result = *&v27;
  v22 = v28;
  *a2 = v27;
  *(a2 + 16) = v22;
  return result;
}

uint64_t sub_24F2E5F1C(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v41 = a2;
  v2 = sub_24F927D88();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x28223BE20](v2);
  v38 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F927DC8();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x28223BE20](v4);
  v35 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_24F91F648();
  v6 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v29[2] = v7;
  v30 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F927D68();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = sub_24F927DE8();
  v32 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v29 - v15;
  if (qword_27F210580 != -1)
  {
    swift_once();
  }

  v17 = sub_24F92AAE8();
  __swift_project_value_buffer(v17, qword_27F39C3E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A598();

  v18 = v34;
  v29[1] = *(v34 + 88);
  sub_24F927DD8();
  *v11 = 10;
  (*(v9 + 104))(v11, *MEMORY[0x277D85188], v8);
  MEMORY[0x25304D7D0](v13, v11);
  (*(v9 + 8))(v11, v8);
  v32 = *(v32 + 8);
  (v32)(v13, v42);
  v20 = v30;
  v19 = v31;
  (*(v6 + 16))(v30, v33, v31);
  v21 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v22 = swift_allocObject();
  v23 = v41;
  *(v22 + 16) = v41;
  *(v22 + 24) = v18;
  (*(v6 + 32))(v22 + v21, v20, v19);
  aBlock[4] = sub_24F2E6668;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_37_1;
  v24 = _Block_copy(aBlock);

  v25 = v35;
  sub_24F927DA8();
  v43 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  v26 = v38;
  v27 = v40;
  sub_24F92C6A8();
  MEMORY[0x253051820](v16, v25, v26, v24);
  _Block_release(v24);
  (*(v39 + 8))(v26, v27);
  (*(v36 + 8))(v25, v37);
  (v32)(v16, v42);

  return v23;
}

uint64_t sub_24F2E659C()
{
  v1 = sub_24F91F648();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

id sub_24F2E6668()
{
  v1 = *(sub_24F91F648() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_24F2E2488(v2, v3, v4);
}

uint64_t sub_24F2E66CC()
{
  v1 = sub_24F91F648();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F2E67A4()
{
  v1 = *(sub_24F91F648() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  return sub_24F2E5F1C(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_24F2E683C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F2E6874()
{
  v1 = sub_24F91F648();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_24F2E6964(void *a1, void *a2)
{
  v5 = *(sub_24F91F648() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24F2E2EF4(a1, a2, v7, v2 + v6, v8);
}

uint64_t sub_24F2E6A28()
{

  return swift_deallocObject();
}

unint64_t sub_24F2E6A84(unint64_t a1, unint64_t a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = a2 - a1;
  if (a2 > a1)
  {
    v4[0] = 0;
    if (!mach_timebase_info(v4))
    {
      if (is_mul_ok(v2, v4[0].numer))
      {
        if (v4[0].denom)
        {
          return v2 * v4[0].numer / v4[0].denom;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }

  return 0;
}

void sub_24F2E6B24(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, __n128), uint64_t a3, char a4, void *a5)
{
  v51 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v41 = v10;
  v42 = v6;
  while (v9)
  {
    v45 = a4;
    v13 = v11;
LABEL_14:
    v15 = (v13 << 10) | (16 * __clz(__rbit64(v9)));
    v16 = (*(a1 + 48) + v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = (*(a1 + 56) + v15);
    v20 = *v19;
    v21 = v19[1];
    v50[0] = v17;
    v50[1] = v18;
    v50[2] = v20;
    v50[3] = v21;

    (a2)(&v46, v50);

    v22 = v46;
    v23 = v47;
    v24 = v48;
    v25 = v49;
    v26 = *v51;
    v28 = sub_24E76D644(v46, v47);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_25;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((v45 & 1) == 0)
      {
        sub_24E8AF124();
      }
    }

    else
    {
      sub_24E89B77C(v31, v45 & 1);
      v33 = sub_24E76D644(v22, v23);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v28 = v33;
    }

    v9 &= v9 - 1;
    v35 = *v51;
    if (v32)
    {

      v12 = (v35[7] + 16 * v28);
      *v12 = v24;
      v12[1] = v25;
    }

    else
    {
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v22;
      v36[1] = v23;
      v37 = (v35[7] + 16 * v28);
      *v37 = v24;
      v37[1] = v25;
      v38 = v35[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v35[2] = v40;
    }

    a4 = 1;
    v11 = v13;
    v10 = v41;
    v6 = v42;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      sub_24E6D71D4(a1);

      return;
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      v45 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_24F92CF88();
  __break(1u);
}

uint64_t AppStateBanner.banner(for:)(uint64_t *a1)
{
  result = 0;
  v3 = a1[6];
  v4 = v3 >> 60;
  if ((v3 >> 60) > 6)
  {
    if (v4 == 7)
    {
    }

    if (v4 == 8)
    {
      v5 = a1[4];
      v7 = a1[2];
      v6 = a1[3];
      v8 = *a1;
      v9 = a1[1];
      v10 = a1[5] | a1[7];
      v11 = v6 | v7 | v9;
      if (v3 == 0x8000000000000000 && !(v10 | v8 | v5 | v11))
      {
      }

      result = 0;
      if (v3 == 0x8000000000000000 && v8 == 4 && !(v10 | v5 | v11))
      {
      }
    }
  }

  else if (v4 == 2 || v4 == 3)
  {
  }

  return result;
}

void *AppStateBanner.__allocating_init(unknownBanner:buyBanner:downloadBanner:updateBanner:openBanner:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

void *AppStateBanner.init(unknownBanner:buyBanner:downloadBanner:updateBanner:openBanner:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

uint64_t AppStateBanner.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AppStateBanner.init(deserializing:using:)(a1, a2);
  return v4;
}

void *AppStateBanner.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v4 = sub_24F9285B8();
  v18 = *(v4 - 8);
  v5 = v18;
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v19 = *(v8 - 8);
  v20 = v8;
  MEMORY[0x28223BE20](v8);
  type metadata accessor for Banner();
  v21 = a1;
  sub_24F928398();
  v9 = *(v5 + 16);
  v9(v7, a2, v4);
  v23 = sub_24F2E7508(&qword_27F2258D8, 255, type metadata accessor for Banner, &protocol conformance descriptor for Banner);
  sub_24F929548();
  v10 = v25;
  v25[2] = v26;
  sub_24F928398();
  v11 = v22;
  v17 = v4;
  v9(v7, v22, v4);
  v24 = v5 + 16;
  sub_24F929548();
  v10[3] = v26;
  sub_24F928398();
  v9(v7, v11, v4);
  sub_24F929548();
  v12 = v25;
  v25[4] = v26;
  sub_24F928398();
  v13 = v22;
  v14 = v17;
  v9(v7, v22, v17);
  sub_24F929548();
  v12[5] = v26;
  v15 = v21;
  sub_24F928398();
  v9(v7, v13, v14);
  sub_24F929548();
  (*(v18 + 8))(v13, v14);
  (*(v19 + 8))(v15, v20);
  result = v25;
  v25[6] = v26;
  return result;
}

uint64_t AppStateBanner.deinit()
{

  return v0;
}

uint64_t AppStateBanner.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24F2E7508(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *sub_24F2E7574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = AppStateBanner.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t Shelf.eyebrow.getter()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);

  return v2;
}

uint64_t Shelf.title.getter()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 72);

  return v2;
}

uint64_t Shelf.subtitle.getter()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 112);

  return v2;
}

uint64_t Shelf.eyebrowArtwork.getter()
{
  if (*(v0 + 40))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t Shelf.eyebrowArtworkSize.getter()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    return *(v1 + 40);
  }

  else
  {
    return 0;
  }
}

uint64_t Shelf.titleArtwork.getter()
{
  if (*(v0 + 40))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t *Shelf.__allocating_init(id:contentType:placeholderContentType:marker:items:header:url:mergeWhenFetched:batchGroup:fetchStrategy:footerTitle:footerAction:footerStyle:isHidden:isHorizontal:horizontalScrollTargetBehavior:isPersonalized:rowsPerColumn:background:onShouldRemoveModel:removeModelEvents:presentationHints:contentsMetadata:nextPreferredContentRefreshDate:impressionMetrics:refreshUrl:pageChangeMetrics:accessibilityMetadata:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, unsigned __int8 *a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 **a15, unsigned __int8 a16, char a17, uint64_t a18, char a19, uint64_t a20, __int128 *a21, uint64_t a22, uint64_t a23, void *a24, __int128 *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __int128 *a30)
{
  LODWORD(v106) = a8;
  v112 = a7;
  *&v113 = a2;
  v109 = a5;
  v110 = a6;
  v118 = a4;
  v104 = a3;
  v111 = a27;
  LODWORD(v107) = a16;
  v108 = a10;
  v105 = a9;
  v101 = a24;
  *&v100 = a18;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226820, &unk_24F97B5F0);
  v93 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v114 = &v92 - v32;
  v33 = sub_24F91F6B8();
  v94 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v35 = &v92 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v30;
  v36 = swift_allocObject();
  LODWORD(v113) = *v113;
  v37 = *v104;
  v102 = *v118;
  v103 = v37;
  LODWORD(v104) = *a11;
  v38 = *a15;
  v117 = v36;
  v118 = v38;
  v39 = *v100;
  v40 = a21[1];
  v99 = *a21;
  v100 = v40;
  v41 = *(a21 + 16);
  v42 = *v101;
  v43 = a25[3];
  v142 = a25[2];
  v143 = v43;
  v144 = *(a25 + 8);
  v44 = a25[1];
  v140 = *a25;
  v141 = v44;
  v45 = *a30;
  v96 = a30[1];
  v97 = v45;
  v95 = a1;
  sub_24E60169C(a1, &v137, &qword_27F235830, &qword_24F93B8C0);
  v98 = v39;
  v101 = v42;
  if (*(&v138 + 1))
  {
    v119 = v137;
    v120 = v138;
    v121 = v139;
  }

  else
  {
    sub_24F91F6A8();
    v46 = sub_24F91F668();
    v48 = v47;
    (*(v94 + 8))(v35, v33);
    *&v133 = v46;
    *(&v133 + 1) = v48;
    sub_24F92C7F8();
    sub_24E601704(&v137, &qword_27F235830, &qword_24F93B8C0);
  }

  v49 = v117;
  v50 = v117 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id;
  v51 = v120;
  *v50 = v119;
  *(v50 + 1) = v51;
  *(v50 + 4) = v121;
  sub_24E60169C(v111, v49 + OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v52 = v113;
  *(v49 + 16) = v113;
  v53 = v102;
  *(v49 + 17) = v103;
  *(v49 + 18) = v53;
  v49[3] = v109;
  LOBYTE(v119) = v52;

  v49[4] = sub_24F2EBA74(v54, &v119);
  sub_24E60169C(v112, v49 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, &qword_27F228530, &unk_24F93C6E0);
  *(v49 + OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched) = v106 & 1;
  v55 = 0x6E6F6D6D6F63;
  if (v108)
  {
    v55 = v105;
  }

  v56 = 0xE600000000000000;
  if (v108)
  {
    v56 = v108;
  }

  v57 = (v49 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
  *v57 = v55;
  v57[1] = v56;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy) = v104;
  v49[5] = v110;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden) = v107 & 1;
  v58 = v49 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata;
  v59 = v143;
  *(v58 + 32) = v142;
  *(v58 + 48) = v59;
  *(v58 + 64) = v144;
  v60 = v141;
  *v58 = v140;
  *(v58 + 16) = v60;
  v94 = a14;
  if (v118 < 2)
  {

LABEL_12:
    v66 = v41;
    v67 = (v49 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
    *v67 = a12;
    v67[1] = a13;
    *(v49 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = a14;
    *(v49 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = v118;

    goto LABEL_14;
  }

  v61 = objc_opt_self();

  sub_24EA1F04C(&v140, &v119);
  result = [v61 defaultWorkspace];
  if (!result)
  {
LABEL_57:
    __break(1u);
    return result;
  }

  v63 = result;
  sub_24EA1E790(&v140);

  v64 = sub_24F92B098();
  v65 = [v63 applicationIsInstalled_];

  if (v65)
  {
    goto LABEL_12;
  }

  v66 = v41;
  sub_24ED8F464(v118);

  v68 = (v49 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
  *v68 = 0;
  v68[1] = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = 1;
LABEL_14:
  v109 = a22;
  v69 = a20;
  v108 = a26;
  sub_24E60169C(a26, v49 + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_27F22EC30, &qword_24F939880);
  v107 = a28;
  sub_24E60169C(a28, v49 + OBJC_IVAR____TtC12GameStoreKit5Shelf_refreshUrl, &qword_27F228530, &unk_24F93C6E0);
  *(v49 + OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics) = a29;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints) = v101;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal) = a17 & 1;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit5Shelf_horizontalScrollTargetBehavior) = v98;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isPersonalized) = a19 & 1;
  v106 = a29;
  if (a20)
  {
  }

  else
  {
    LOBYTE(v119) = v52;

    v69 = sub_24F2EBC94();
  }

  *(v49 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn) = v69;
  v70 = v49 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background;
  v71 = v100;
  *v70 = v99;
  *(v70 + 16) = v71;
  *(v70 + 32) = v66;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel) = v109;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents) = a23;
  v72 = v49[3];
  v73 = sub_24EA90A64();

  v74 = 0;
  v136 = MEMORY[0x253051460](0, &type metadata for PersonalizationStyle, v73);
  v75 = (v72 + 32);
  v76 = 0uLL;
  v113 = xmmword_24F950E90;
  v77 = &qword_27F226840;
  v118 = (v72 + 32);
  while (2)
  {
    v78 = *(v72 + 16);
    if (v74 == v78)
    {
LABEL_21:
      v128 = 0;
      v74 = v78;
      v126 = v76;
      v127 = v76;
      goto LABEL_25;
    }

    while (1)
    {
      if ((v74 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        v87 = sub_24F92C738();
        if (!v87)
        {
          goto LABEL_53;
        }

LABEL_43:
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225160, &unk_24F97B620);
        if (v87 >= 1)
        {
          v118 = (v73 & 0xC000000000000001);
          v88 = (v93 + 8);

          v89 = 0;
          v90 = v73;
          do
          {
            if (v118)
            {
              MEMORY[0x253052270](v89, v73);
            }

            else
            {
            }

            ++v89;
            sub_24EA90AB8();
            sub_24F9288B8();
            v91 = v114;
            sub_24F9288C8();

            __swift_destroy_boxed_opaque_existential_1(&v119);
            (*v88)(v91, v115);
            v73 = v90;
          }

          while (v87 != v89);

          v77 = v117;
          goto LABEL_54;
        }

        __break(1u);
        goto LABEL_56;
      }

      if (v74 >= *(v72 + 16))
      {
        goto LABEL_51;
      }

      sub_24E615E00(&v75[40 * v74++], &v126);
LABEL_25:
      v124[0] = v126;
      v124[1] = v127;
      v125 = v128;
      if (!*(&v127 + 1))
      {
        memset(v129, 0, 24);
        *(&v129[1] + 8) = v113;
LABEL_33:
        sub_24E601704(v129, &qword_27F226830, &unk_24F97B610);
        v135 = 0;
        v133 = 0u;
        v134 = 0u;
        goto LABEL_34;
      }

      sub_24E612C80(v124, v123);
      sub_24E615E00(v123, &v122);
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226840, &unk_24F97B630);
      if ((swift_dynamicCast() & 1) == 0)
      {
        memset(v129, 0, 40);
      }

      __swift_destroy_boxed_opaque_existential_1(v123);
      if (*(&v129[1] + 1) == 1)
      {
        goto LABEL_33;
      }

      v130 = v129[0];
      v131 = v129[1];
      v132 = *&v129[2];
      if (*(&v129[1] + 1))
      {
        break;
      }

      sub_24E601704(&v130, &qword_27F222730, &unk_24F9E1470);
      v76 = 0uLL;
      if (v74 == v78)
      {
        goto LABEL_21;
      }
    }

    *(&v131 + 1) = *(&v129[1] + 1);
    result = sub_24E60169C(&v130, v129, &qword_27F222730, &unk_24F9E1470);
    if (!*(&v129[1] + 1))
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    sub_24E612C80(v129, &v133);
    sub_24E601704(&v130, &qword_27F222730, &unk_24F9E1470);
    if (!*(&v134 + 1))
    {
LABEL_34:
      sub_24E601704(&v133, &qword_27F222730, &unk_24F9E1470);
      v119 = 0u;
      v120 = 0u;
      v121 = 0;
      goto LABEL_35;
    }

    sub_24E612C80(&v133, &v137);
    v81 = *(&v138 + 1);
    v82 = v139;
    v83 = __swift_project_boxed_opaque_existential_1(&v137, *(&v138 + 1));
    v84 = v81;
    v73 = v83;
    if ((PersonalizableModel.needsClientPersonalization.getter(v84, v82) & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(&v137);
LABEL_19:
      v75 = v118;
      v76 = 0uLL;
      continue;
    }

    break;
  }

  sub_24E612C80(&v137, &v119);
LABEL_35:
  v137 = v119;
  v138 = v120;
  v139 = v121;
  if (*(&v120 + 1))
  {
    sub_24E612C80(&v137, &v133);
    v80 = *(&v134 + 1);
    v79 = v135;
    __swift_project_boxed_opaque_existential_1(&v133, *(&v134 + 1));
    (*(v79 + 16))(&v130, v80, v79);
    LOBYTE(v79) = v130;
    __swift_destroy_boxed_opaque_existential_1(&v133);
    v73 = &v136;
    sub_24ED7CC74(&v119, v79);
    goto LABEL_19;
  }

  v77 = v117;
  *(v117 + OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles) = v136;
  v85 = (v77 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata);
  v86 = v96;
  *v85 = v97;
  v85[1] = v86;
  v73 = *(v77 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents);
  if (v73 >> 62)
  {
    goto LABEL_52;
  }

  v87 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v87)
  {
    goto LABEL_43;
  }

LABEL_53:

LABEL_54:

  sub_24E601704(v107, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v111, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v108, &unk_27F22EC30, &qword_24F939880);
  sub_24E601704(v112, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v95, &qword_27F235830, &qword_24F93B8C0);
  return v77;
}

uint64_t Shelf.seeAllAction.getter()
{
  v2[3] = &type metadata for Feature;
  v2[4] = sub_24EAEAC44();
  LOBYTE(v2[0]) = 8;
  sub_24F91FE68();
  __swift_destroy_boxed_opaque_existential_1(v2);
  if (*(v0 + 40))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t Shelf.trailingArtwork.getter()
{
  if (*(v0 + 40))
  {
  }

  else
  {
    return 0;
  }
}

char *Shelf.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v291 = a2;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226820, &unk_24F97B5F0);
  v250 = *(v281 - 8);
  MEMORY[0x28223BE20](v281);
  v280 = &v231[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v4 - 8);
  v270 = &v231[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v6 - 8);
  v269 = &v231[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v273 = &v231[-v9];
  v10 = sub_24F91F6B8();
  v255 = *(v10 - 8);
  v256 = v10;
  MEMORY[0x28223BE20](v10);
  v254 = &v231[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v12 - 8);
  v268 = &v231[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v279 = &v231[-v15];
  v16 = sub_24F9285B8();
  v289 = *(v16 - 8);
  v290 = v16;
  MEMORY[0x28223BE20](v16);
  v267 = &v231[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v253 = &v231[-v19];
  MEMORY[0x28223BE20](v20);
  v272 = &v231[-v21];
  MEMORY[0x28223BE20](v22);
  v278 = &v231[-v23];
  MEMORY[0x28223BE20](v24);
  v283 = &v231[-v25];
  MEMORY[0x28223BE20](v26);
  v284 = &v231[-v27];
  v28 = sub_24F928388();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v252 = &v231[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v31);
  v251 = &v231[-v32];
  MEMORY[0x28223BE20](v33);
  v266 = &v231[-v34];
  MEMORY[0x28223BE20](v35);
  v265 = &v231[-v36];
  MEMORY[0x28223BE20](v37);
  v264 = &v231[-v38];
  MEMORY[0x28223BE20](v39);
  v263 = &v231[-v40];
  MEMORY[0x28223BE20](v41);
  v262 = &v231[-v42];
  MEMORY[0x28223BE20](v43);
  v261 = &v231[-v44];
  MEMORY[0x28223BE20](v45);
  v260 = &v231[-v46];
  MEMORY[0x28223BE20](v47);
  v259 = &v231[-v48];
  MEMORY[0x28223BE20](v49);
  v258 = &v231[-v50];
  MEMORY[0x28223BE20](v51);
  v257 = &v231[-v52];
  MEMORY[0x28223BE20](v53);
  *&v275 = &v231[-v54];
  MEMORY[0x28223BE20](v55);
  v282 = &v231[-v56];
  MEMORY[0x28223BE20](v57);
  v274 = &v231[-v58];
  MEMORY[0x28223BE20](v59);
  v61 = &v231[-v60];
  MEMORY[0x28223BE20](v62);
  v64 = &v231[-v63];
  v327 = a1;
  sub_24F928398();
  v65 = sub_24F928348();
  v67 = v66;
  v276 = v29;
  v70 = v29[1];
  v68 = v29 + 1;
  v69 = v70;
  (v70)(v64, v28);
  if (!v67)
  {
    v78 = sub_24F92AC38();
    sub_24F2EED24(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v79 = 0x54746E65746E6F63;
    v79[1] = 0xEB00000000657079;
    v79[2] = v288;
    (*(*(v78 - 8) + 104))(v79, *MEMORY[0x277D22530], v78);
    swift_willThrow();
    (*(v289 + 8))(v291, v290);
    return (v69)(v327, v28);
  }

  v286 = v28;
  v287 = v69;
  v285 = v68;

  Shelf.ContentType.init(rawValue:)(v318);
  if (LOBYTE(v318[0]) == 104)
  {
    v71 = sub_24F92AC38();
    sub_24F2EED24(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v73 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BA0, &qword_24F97AD70);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_24F93DE60;
    *(v74 + 32) = swift_allocError();
    *v75 = v65;
    v75[1] = v67;
    v75[2] = &type metadata for Shelf.ContentType;
    v76 = *(*(v71 - 8) + 104);
    v76(v75, *MEMORY[0x277D22520], v71);
    *v73 = 0x54746E65746E6F63;
    v73[1] = 0xEB00000000657079;
    v73[2] = v288;
    v73[3] = v74;
    v76(v73, *MEMORY[0x277D22540], v71);
    swift_willThrow();
    (*(v289 + 8))(v291, v290);
    return (v287)(v327, v286);
  }

  v248 = LOBYTE(v318[0]);

  sub_24F928398();
  v80 = sub_24F928278();
  v81 = v286;
  (v287)(v61, v286);
  v82 = v291;
  v83 = v289;
  v84 = v282;
  if (v80 != 2 && (v80 & 1) != 0)
  {
    if (qword_27F210CB0 != -1)
    {
      swift_once();
    }

    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235068, &qword_24F9B5B08);
    __swift_project_value_buffer(v85, qword_27F39D0C8);
    sub_24F9285D8();
    if (LOBYTE(v318[0]) == 2 || (v318[0] & 1) == 0)
    {
      sub_24F2EE648();
      swift_allocError();
      swift_willThrow();
      (*(v83 + 8))(v82, v290);
      return (v287)(v327, v81);
    }
  }

  v86 = v274;
  sub_24F928398();
  v245 = sub_24F928258();
  v244 = v87;
  (v287)(v86, v81);
  sub_24F928398();
  v88 = v83 + 16;
  v274 = *(v83 + 16);
  v89 = v284;
  v90 = v290;
  (v274)(v284, v82, v290);
  Shelf.PresentationHints.init(deserializing:using:)(v84, v89, v318);
  v243 = *&v318[0];
  sub_24F929608();
  sub_24F928398();
  v91 = v90;
  v92 = v274;
  (v274)(v89, v82, v91);
  sub_24F929548();
  type metadata accessor for PageChangeMetrics();
  sub_24F928398();
  v94 = v290;
  v93 = v291;
  v92(v89, v291, v290);
  sub_24F2EED24(&qword_27F23E5C8, type metadata accessor for PageChangeMetrics, &protocol conformance descriptor for PageChangeMetrics);
  sub_24F929548();
  v247 = *&v318[0];
  v95 = v283;
  v249 = v88;
  v92(v283, v93, v94);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225160, &unk_24F97B620);
  swift_allocObject();
  v271 = sub_24F9280D8();
  *&v318[0] = v271;
  if (qword_27F210CD0 != -1)
  {
    goto LABEL_89;
  }

LABEL_12:
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235060, &qword_24F9B5B00);
  __swift_project_value_buffer(v97, qword_27F39D128);
  v98 = v278;
  sub_24F928528();
  v99 = v275;
  v100 = v95;
  v101 = v327;
  sub_24F928398();
  LOBYTE(v318[0]) = v248;
  v102 = v282;
  v276[2](v282, v101, v286);
  v276 = v96;
  v103 = v284;
  (v274)(v284, v100, v94);
  v104 = v101;
  v105 = sub_24F2EE0AC(v102, v103);
  v107 = v106;
  v109 = v108;
  v110 = v277;
  v111 = sub_24F2EC0B8(v99, v318, v105, v106, v108, v98);
  v277 = v110;
  if (v110)
  {
    sub_24F2EE484(v105, v107, v109);

    v112 = *(v289 + 8);
    v112(v291, v94);
    v113 = v104;
    v114 = v286;
    v115 = v287;
    (v287)(v113, v286);
    (v115)(v99, v114);
    v112(v278, v94);
    v112(v283, v94);
    return sub_24E601704(v279, &qword_27F213E68, &unk_24F93BC80);
  }

  v246 = v111;
  (v287)(v99, v286);
  sub_24F2EE484(v105, v107, v109);
  LOBYTE(v318[0]) = v248;
  if (qword_27F210CB8 != -1)
  {
    swift_once();
  }

  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235050, &qword_24F9E1480);
  __swift_project_value_buffer(v116, qword_27F39D0E0);
  v117 = v284;
  sub_24F928528();
  *&v318[0] = v246;
  v118 = v327;
  v119 = v290;
  v120 = v272;
  v121 = v282;
  if (qword_27F210CC0 != -1)
  {
    swift_once();
  }

  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235048, &qword_24F9B5AF8);
  __swift_project_value_buffer(v122, qword_27F39D0F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FB80, &qword_24F99E190);
  sub_24F928528();
  v123 = *(v289 + 8);
  v289 += 8;
  v242 = v123;
  v123(v117, v119);
  sub_24F928398();
  v124 = sub_24F928328();
  (v287)(v121, v286);
  if (v124)
  {
    sub_24EF92DA8(v118, v291, v120);
  }

  else
  {
    sub_24F928398();
    v126 = v274;
    (v274)(v117, v291, v119);
    v127 = v253;
    v126(v253, v120, v119);
    _s12GameStoreKit11ShelfHeaderC13deserializing5using13seeAllContextACSg9JetEngine10JSONObjectV_AH11JSONContextVALtcfC_0(v121, v117, v127);
  }

  v253 = v125;

  v128 = v257;
  sub_24F928398();
  v129 = sub_24F928348();
  v131 = v286;
  v132 = v287;
  if (v130)
  {
    *&v318[0] = v129;
    *(&v318[0] + 1) = v130;
  }

  else
  {
    v133 = v254;
    sub_24F91F6A8();
    v134 = sub_24F91F668();
    v136 = v135;
    (*(v255 + 8))(v133, v256);
    *&v318[0] = v134;
    *(&v318[0] + 1) = v136;
  }

  sub_24F92C7F8();
  (v132)(v128, v131);
  v137 = v258;
  sub_24F928398();
  sub_24F928348();
  v139 = v138;
  (v132)(v137, v131);
  if (v139)
  {
    Shelf.ContentType.init(rawValue:)(v318);
    v140 = LOBYTE(v318[0]);
  }

  else
  {
    v140 = 104;
  }

  v241 = v140;
  sub_24F928398();
  sub_24F2EE4A4();
  sub_24F928248();
  (v132)(v121, v131);
  v240 = v325;
  v141 = v259;
  sub_24F928398();
  sub_24F928268();
  (v132)(v141, v131);
  v259 = 0xD000000000000010;
  v142 = v260;
  sub_24F928398();
  v239 = sub_24F928278();
  (v132)(v142, v131);
  v143 = v261;
  sub_24F928398();
  v144 = sub_24F928348();
  v146 = v145;
  (v132)(v143, v131);
  v147 = 0x6E6F6D6D6F63;
  if (v146)
  {
    v147 = v144;
  }

  v238 = v147;
  v148 = 0xE600000000000000;
  if (v146)
  {
    v148 = v146;
  }

  v261 = v148;
  sub_24F928398();
  sub_24F2EE4F8();
  sub_24F928208();
  (v132)(v121, v131);
  v237 = v324;
  v149 = v262;
  sub_24F928398();
  v235 = sub_24F928348();
  v260 = v150;
  (v132)(v149, v131);
  type metadata accessor for Action(0);
  sub_24F928398();
  v262 = static Action.tryToMakeInstance(byDeserializing:using:)(v121, v283);
  (v132)(v121, v131);
  sub_24F928398();
  v151 = v284;
  (v274)(v284, v291, v290);
  sub_24F2EE54C();
  sub_24F929548();
  *&v275 = v323;
  v152 = v263;
  sub_24F928398();
  v236 = sub_24F928278();
  (v132)(v152, v131);
  v153 = v264;
  sub_24F928398();
  v234 = sub_24F928278();
  (v132)(v153, v131);
  sub_24F928398();
  sub_24F2EE5A0();
  sub_24F928208();
  (v132)(v121, v131);
  v233 = v322;
  v154 = v265;
  sub_24F928398();
  v232 = sub_24F928278();
  (v132)(v154, v131);
  sub_24F928398();
  v155 = v290;
  (v274)(v151, v291, v290);
  sub_24EAFF164(v121, v151, v320);
  v257 = v320[0];
  v258 = v320[1];
  v263 = v320[2];
  v264 = v320[3];
  LODWORD(v265) = v321;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v156 = swift_allocObject();
  *(v156 + 16) = xmmword_24F941C80;
  *(v156 + 32) = v271;

  v157 = v266;
  v158 = v283;
  sub_24F928398();
  v159 = v267;
  (v274)(v267, v158, v155);
  v160 = v277;
  Shelf.ContentsMetadata.init(deserializing:using:)(v157, v159, v318);
  v277 = v160;
  if (v160)
  {
    sub_24E951FEC(v257, v258, v263, v264, v265);

    sub_24ED8F464(v275);

    v161 = v290;
    v162 = v242;
    v242(v291, v290);
    (v287)(v327, v286);
    sub_24E601704(v273, &qword_27F228530, &unk_24F93C6E0);
    sub_24E601704(v326, &qword_27F235830, &qword_24F93B8C0);
    v162(v272, v161);
    v162(v278, v161);
    v162(v158, v161);
    return sub_24E601704(v279, &qword_27F213E68, &unk_24F93BC80);
  }

  v267 = v156;
  v315 = v318[2];
  v316 = v318[3];
  v317 = v319;
  v313 = v318[0];
  v314 = v318[1];
  v163 = v251;
  sub_24F928398();
  sub_24F928288();
  v165 = v286;
  v164 = v287;
  (v287)(v163, v286);
  sub_24E60169C(v279, v268, &qword_27F213E68, &unk_24F93BC80);
  v166 = v252;
  sub_24F928398();
  sub_24F928268();
  (v164)(v166, v165);
  sub_24F928398();
  (v274)(v284, v291, v290);
  sub_24F2EE5F4();
  sub_24F929548();
  if (*(&v310 + 1) == 1)
  {
    v251 = 0;
    v252 = 0;
    v266 = 0;
    v259 = 0;
  }

  else
  {
    v266 = *(&v310 + 1);
    v259 = *(&v311 + 1);
    v251 = v310;
    v252 = v311;
  }

  v167 = v273;
  v168 = v253;
  v169 = v246;
  v170 = v261;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A50, &unk_24F97B600);
  swift_allocObject();
  v274 = sub_24F9280D8();
  v171 = swift_allocObject();
  sub_24E60169C(v326, &v307, &qword_27F235830, &qword_24F93B8C0);
  v172 = v275;
  if (*(&v308 + 1))
  {
    v310 = v307;
    v311 = v308;
    v312 = v309;
  }

  else
  {
    v173 = v254;
    sub_24F91F6A8();
    v174 = sub_24F91F668();
    v176 = v175;
    v177 = v173;
    v169 = v246;
    (*(v255 + 8))(v177, v256);
    *&v303 = v174;
    *(&v303 + 1) = v176;
    sub_24F92C7F8();
    sub_24E601704(&v307, &qword_27F235830, &qword_24F93B8C0);
  }

  v178 = v171 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id;
  v179 = v311;
  *v178 = v310;
  *(v178 + 16) = v179;
  *(v178 + 32) = v312;
  sub_24E60169C(v268, v171 + OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v180 = v248;
  *(v171 + 16) = v248;
  v181 = v240;
  *(v171 + 17) = v241;
  *(v171 + 18) = v181;
  *(v171 + 24) = v169;
  LOBYTE(v310) = v180;

  *(v171 + 32) = sub_24F2EBA74(v182, &v310);
  sub_24E60169C(v167, v171 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, &qword_27F228530, &unk_24F93C6E0);
  *(v171 + OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched) = v239 & 1;
  v183 = (v171 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
  *v183 = v238;
  v183[1] = v170;
  v184 = v236;
  *(v171 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy) = v237;
  *(v171 + 40) = v168;
  *(v171 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden) = v184 & 1;
  v185 = v171 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata;
  v186 = v316;
  *(v185 + 32) = v315;
  *(v185 + 48) = v186;
  *(v185 + 64) = v317;
  v187 = v314;
  *v185 = v313;
  *(v185 + 16) = v187;
  if (v172 >= 2)
  {
    v192 = objc_opt_self();

    result = [v192 defaultWorkspace];
    if (!result)
    {
      goto LABEL_93;
    }

    v193 = result;

    v194 = sub_24F92B098();
    v195 = [v193 applicationIsInstalled_];

    v188 = v262;
    v189 = v260;
    v190 = v235;
    v191 = v234;
    if ((v195 & 1) == 0)
    {
      sub_24ED8F464(v172);

      v197 = (v171 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
      *v197 = 0;
      v197[1] = 0;
      *(v171 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = 0;
      *(v171 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = 1;
      goto LABEL_47;
    }
  }

  else
  {

    v188 = v262;
    v189 = v260;
    v190 = v235;
    v191 = v234;
  }

  v196 = (v171 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
  *v196 = v190;
  v196[1] = v189;
  *(v171 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = v188;
  *(v171 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = v172;

LABEL_47:
  v199 = v232;
  v198 = v233;
  sub_24E60169C(v270, v171 + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_27F22EC30, &qword_24F939880);
  sub_24E60169C(v269, v171 + OBJC_IVAR____TtC12GameStoreKit5Shelf_refreshUrl, &qword_27F228530, &unk_24F93C6E0);
  *(v171 + OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics) = v247;
  *(v171 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints) = v243;
  *(v171 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal) = v191 & 1;
  *(v171 + OBJC_IVAR____TtC12GameStoreKit5Shelf_horizontalScrollTargetBehavior) = v198;
  *(v171 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isPersonalized) = v199 & 1;
  v200 = v245;
  if ((v244 & 1) != 0 || !v245)
  {
    LOBYTE(v310) = v248;

    v200 = sub_24F2EBC94();
  }

  else
  {
  }

  v201 = v265;
  v203 = v263;
  v202 = v264;
  v205 = v257;
  v204 = v258;
  v206 = v267;
  *(v171 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn) = v200;
  v207 = v171 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background;
  *v207 = v205;
  *(v207 + 8) = v204;
  *(v207 + 16) = v203;
  *(v207 + 24) = v202;
  *(v207 + 32) = v201;
  *(v171 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel) = v274;
  *(v171 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents) = v206;
  v282 = v171;
  v95 = *(v171 + 24);
  v208 = sub_24EA90A64();

  v209 = 0;
  v306 = MEMORY[0x253051460](0, &type metadata for PersonalizationStyle, v208);
  v94 = v95 + 32;
  v210 = 0uLL;
  v96 = &unk_24F9E1470;
  v275 = xmmword_24F950E90;
  v284 = v95 + 32;
  while (2)
  {
    v211 = *(v95 + 2);
    if (v209 == v211)
    {
LABEL_55:
      v298 = 0;
      v209 = v211;
      v296 = v210;
      v297 = v210;
      goto LABEL_59;
    }

    while (1)
    {
      if ((v209 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        swift_once();
        goto LABEL_12;
      }

      if (v209 >= *(v95 + 2))
      {
        goto LABEL_88;
      }

      sub_24E615E00(&v94[40 * v209++], &v296);
LABEL_59:
      v294[0] = v296;
      v294[1] = v297;
      v295 = v298;
      if (!*(&v297 + 1))
      {
        memset(v299, 0, 24);
        *(&v299[1] + 8) = v275;
LABEL_67:
        sub_24E601704(v299, &qword_27F226830, &unk_24F97B610);
        v305 = 0;
        v303 = 0u;
        v304 = 0u;
        goto LABEL_68;
      }

      sub_24E612C80(v294, v293);
      sub_24E615E00(v293, &v292);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226840, &unk_24F97B630);
      if ((swift_dynamicCast() & 1) == 0)
      {
        memset(v299, 0, 40);
      }

      __swift_destroy_boxed_opaque_existential_1(v293);
      if (*(&v299[1] + 1) == 1)
      {
        goto LABEL_67;
      }

      v300 = v299[0];
      v301 = v299[1];
      v302 = *&v299[2];
      if (*(&v299[1] + 1))
      {
        break;
      }

      sub_24E601704(&v300, &qword_27F222730, &unk_24F9E1470);
      v210 = 0uLL;
      if (v209 == v211)
      {
        goto LABEL_55;
      }
    }

    *(&v301 + 1) = *(&v299[1] + 1);
    result = sub_24E60169C(&v300, v299, &qword_27F222730, &unk_24F9E1470);
    if (!*(&v299[1] + 1))
    {
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      return result;
    }

    sub_24E612C80(v299, &v303);
    sub_24E601704(&v300, &qword_27F222730, &unk_24F9E1470);
    if (!*(&v304 + 1))
    {
LABEL_68:
      sub_24E601704(&v303, &qword_27F222730, &unk_24F9E1470);
      v310 = 0u;
      v311 = 0u;
      v312 = 0;
      goto LABEL_69;
    }

    sub_24E612C80(&v303, &v307);
    v214 = *(&v308 + 1);
    v215 = v309;
    __swift_project_boxed_opaque_existential_1(&v307, *(&v308 + 1));
    if ((PersonalizableModel.needsClientPersonalization.getter(v214, v215) & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(&v307);
LABEL_53:
      v94 = v284;
      v210 = 0uLL;
      continue;
    }

    break;
  }

  sub_24E612C80(&v307, &v310);
LABEL_69:
  v307 = v310;
  v308 = v311;
  v309 = v312;
  if (*(&v311 + 1))
  {
    sub_24E612C80(&v307, &v303);
    v212 = *(&v304 + 1);
    v213 = v305;
    __swift_project_boxed_opaque_existential_1(&v303, *(&v304 + 1));
    (*(v213 + 16))(&v300, v212, v213);
    LOBYTE(v213) = v300;
    __swift_destroy_boxed_opaque_existential_1(&v303);
    sub_24ED7CC74(&v310, v213);
    goto LABEL_53;
  }

  v216 = v282;
  *&v282[OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles] = v306;
  v217 = &v216[OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata];
  v218 = v266;
  *v217 = v251;
  *(v217 + 1) = v218;
  v219 = v259;
  *(v217 + 2) = v252;
  *(v217 + 3) = v219;
  v220 = *&v216[OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents];
  if (v220 >> 62)
  {
    result = sub_24F92C738();
    v221 = result;
  }

  else
  {
    v221 = *((v220 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v222 = v327;
  v224 = v290;
  v223 = v291;
  v225 = v278;
  if (!v221)
  {

    goto LABEL_86;
  }

  if (v221 < 1)
  {
    __break(1u);
    goto LABEL_92;
  }

  v284 = (v220 & 0xC000000000000001);
  v226 = (v250 + 8);

  v227 = 0;
  v228 = v220;
  do
  {
    if (v284)
    {
      MEMORY[0x253052270](v227, v220);
    }

    else
    {
    }

    ++v227;
    sub_24EA90AB8();
    sub_24F9288B8();
    v229 = v280;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(&v310);
    (*v226)(v229, v281);
    v220 = v228;
  }

  while (v221 != v227);

  v222 = v327;
  v224 = v290;
  v223 = v291;
  v225 = v278;
LABEL_86:

  v230 = v242;
  v242(v223, v224);
  (v287)(v222, v286);
  sub_24E601704(v269, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v268, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v270, &unk_27F22EC30, &qword_24F939880);
  sub_24E601704(v273, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v326, &qword_27F235830, &qword_24F93B8C0);
  v230(v272, v224);
  v230(v225, v224);
  v230(v283, v224);
  sub_24E601704(v279, &qword_27F213E68, &unk_24F93BC80);
  return v282;
}

uint64_t IncompleteShelfFetchStrategy.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6F4C656761506E6FLL;
  }
}

uint64_t sub_24F2EA894(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x6F4C656761506E6FLL;
  }

  if (v2)
  {
    v4 = 0xEA00000000006461;
  }

  else
  {
    v4 = 0x800000024FA42F40;
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x6F4C656761506E6FLL;
  }

  if (*a2)
  {
    v6 = 0x800000024FA42F40;
  }

  else
  {
    v6 = 0xEA00000000006461;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F2EA944()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F2EA9D0(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F2EAA48()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F2EAADC(unint64_t *a1@<X8>)
{
  v2 = 0x800000024FA42F40;
  v3 = 0x6F4C656761506E6FLL;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xEA00000000006461;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t ShelfHorizontalScrollTargetBehavior.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C417265746E6563;
  }

  else
  {
    return 0x67696C4177656976;
  }
}

uint64_t sub_24F2EAB80(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C417265746E6563;
  }

  else
  {
    v3 = 0x67696C4177656976;
  }

  if (v2)
  {
    v4 = 0xEB0000000064656ELL;
  }

  else
  {
    v4 = 0xED000064656E6769;
  }

  if (*a2)
  {
    v5 = 0x6C417265746E6563;
  }

  else
  {
    v5 = 0x67696C4177656976;
  }

  if (*a2)
  {
    v6 = 0xED000064656E6769;
  }

  else
  {
    v6 = 0xEB0000000064656ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F2EAC3C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F2EACD4(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F2EAD58()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F2EADF8(uint64_t *a1@<X8>)
{
  v2 = 0x67696C4177656976;
  if (*v1)
  {
    v2 = 0x6C417265746E6563;
  }

  v3 = 0xEB0000000064656ELL;
  if (*v1)
  {
    v3 = 0xED000064656E6769;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t *Shelf.init(id:contentType:placeholderContentType:marker:items:header:url:mergeWhenFetched:batchGroup:fetchStrategy:footerTitle:footerAction:footerStyle:isHidden:isHorizontal:horizontalScrollTargetBehavior:isPersonalized:rowsPerColumn:background:onShouldRemoveModel:removeModelEvents:presentationHints:contentsMetadata:nextPreferredContentRefreshDate:impressionMetrics:refreshUrl:pageChangeMetrics:accessibilityMetadata:)(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, unint64_t a10, unsigned __int8 *a11, uint64_t a12, uint64_t a13, unsigned __int8 *a14, unint64_t *a15, unsigned __int8 a16, char a17, char *a18, char a19, uint64_t a20, __int128 *a21, unint64_t a22, uint64_t a23, void *a24, __int128 *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __int128 *a30)
{
  LODWORD(v117) = a8;
  v123 = a7;
  *&v124 = a5;
  v121 = a6;
  v119 = a4;
  v115 = a3;
  v129 = a2;
  v122 = a27;
  LODWORD(v118) = a16;
  v120 = a10;
  v116 = a9;
  v112 = a24;
  v128 = v30;
  v127 = *v30;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226820, &unk_24F97B5F0);
  v104 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v125 = &v104 - v32;
  v33 = sub_24F91F6B8();
  v108 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v35 = &v104 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v129) = *v129;
  v36 = *v115;
  v113 = *v119;
  v114 = v36;
  LODWORD(v115) = *a11;
  v37 = *a15;
  v38 = *a18;
  v39 = *a21;
  v110 = a21[1];
  v111 = v39;
  v109 = *(a21 + 16);
  v40 = *v112;
  v41 = a25[3];
  v153 = a25[2];
  v154 = v41;
  v155 = *(a25 + 8);
  v42 = a25[1];
  v151 = *a25;
  v152 = v42;
  v43 = *a30;
  v106 = a30[1];
  v107 = v43;
  v105 = a1;
  sub_24E60169C(a1, &v148, &qword_27F235830, &qword_24F93B8C0);
  v112 = v40;
  if (*(&v149 + 1))
  {
    v130 = v148;
    v131 = v149;
    v132 = v150;
  }

  else
  {
    sub_24F91F6A8();
    v44 = sub_24F91F668();
    v45 = v37;
    v47 = v46;
    (*(v108 + 8))(v35, v33);
    *&v144 = v44;
    *(&v144 + 1) = v47;
    v37 = v45;
    sub_24F92C7F8();
    sub_24E601704(&v148, &qword_27F235830, &qword_24F93B8C0);
  }

  v119 = a14;
  v108 = a13;
  v48 = v128;
  v49 = v128 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id;
  v50 = v131;
  *v49 = v130;
  *(v49 + 1) = v50;
  *(v49 + 4) = v132;
  sub_24E60169C(v122, v48 + OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v51 = v129;
  *(v48 + 16) = v129;
  v52 = v113;
  *(v48 + 17) = v114;
  *(v48 + 18) = v52;
  v48[3] = v124;
  LOBYTE(v130) = v51;

  v48[4] = sub_24F2EBA74(v53, &v130);
  sub_24E60169C(v123, v48 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, &qword_27F228530, &unk_24F93C6E0);
  *(v48 + OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched) = v117 & 1;
  v54 = v121;
  v55 = 0x6E6F6D6D6F63;
  if (v120)
  {
    v55 = v116;
  }

  v56 = 0xE600000000000000;
  if (v120)
  {
    v56 = v120;
  }

  v57 = (v48 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
  *v57 = v55;
  v57[1] = v56;
  *(v48 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy) = v115;
  v48[5] = v54;
  *(v48 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden) = v118 & 1;
  v58 = v48 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata;
  v59 = v154;
  *(v58 + 32) = v153;
  *(v58 + 48) = v59;
  *(v58 + 64) = v155;
  v60 = v152;
  *v58 = v151;
  *(v58 + 16) = v60;
  v61 = v37;
  if (v37 < 2)
  {
    v62 = v38;

LABEL_12:
    v68 = (v48 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
    v69 = v108;
    *v68 = a12;
    v68[1] = v69;
    *(v48 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = v119;
    *(v48 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = v61;

    goto LABEL_14;
  }

  v62 = v38;
  v63 = objc_opt_self();

  sub_24EA1F04C(&v151, &v130);
  result = [v63 defaultWorkspace];
  if (!result)
  {
    goto LABEL_56;
  }

  v65 = result;
  sub_24EA1E790(&v151);

  v66 = sub_24F92B098();
  v67 = [v65 applicationIsInstalled_];

  if (v67)
  {
    goto LABEL_12;
  }

  sub_24ED8F464(v61);

  v70 = (v48 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
  *v70 = 0;
  v70[1] = 0;
  *(v48 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = 0;
  *(v48 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = 1;
LABEL_14:
  v120 = a22;
  v71 = a20;
  v118 = a26;
  sub_24E60169C(a26, v48 + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_27F22EC30, &qword_24F939880);
  v117 = a28;
  sub_24E60169C(a28, v48 + OBJC_IVAR____TtC12GameStoreKit5Shelf_refreshUrl, &qword_27F228530, &unk_24F93C6E0);
  *(v48 + OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics) = a29;
  *(v48 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints) = v112;
  *(v48 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal) = a17 & 1;
  *(v48 + OBJC_IVAR____TtC12GameStoreKit5Shelf_horizontalScrollTargetBehavior) = v62;
  *(v48 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isPersonalized) = a19 & 1;
  v116 = a29;
  if (a20)
  {
  }

  else
  {
    LOBYTE(v130) = v51;

    v71 = sub_24F2EBC94();
  }

  *(v48 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn) = v71;
  v72 = v48 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background;
  v73 = v110;
  *v72 = v111;
  *(v72 + 16) = v73;
  *(v72 + 32) = v109;
  *(v48 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel) = v120;
  *(v48 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents) = a23;
  v74 = v48[3];
  v75 = sub_24EA90A64();

  v76 = 0;
  v147 = MEMORY[0x253051460](0, &type metadata for PersonalizationStyle, v75);
  v77 = v74 + 32;
  v78 = 0uLL;
  v79 = &qword_27F222730;
  v80 = &unk_24F9E1470;
  v81 = &unk_27F23A6A0;
  v82 = &unk_24F9549D0;
  v124 = xmmword_24F950E90;
  v129 = v74;
  while (2)
  {
    while (2)
    {
      v83 = *(v74 + 2);
      if (v76 == v83)
      {
LABEL_19:
        v139 = 0;
        v76 = v83;
        v137 = v78;
        v138 = v78;
        goto LABEL_23;
      }

      while (1)
      {
        if ((v76 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        if (v76 >= *(v74 + 2))
        {
          goto LABEL_50;
        }

        sub_24E615E00(&v77[40 * v76++], &v137);
LABEL_23:
        v135[0] = v137;
        v135[1] = v138;
        v136 = v139;
        if (!*(&v138 + 1))
        {
          memset(v140, 0, 24);
          *(&v140[1] + 8) = v124;
LABEL_31:
          sub_24E601704(v140, &qword_27F226830, &unk_24F97B610);
          v146 = 0;
          v144 = 0u;
          v145 = 0u;
          goto LABEL_32;
        }

        sub_24E612C80(v135, v134);
        sub_24E615E00(v134, &v133);
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(v81, v82);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226840, &unk_24F97B630);
        if ((swift_dynamicCast() & 1) == 0)
        {
          memset(v140, 0, 40);
        }

        __swift_destroy_boxed_opaque_existential_1(v134);
        if (*(&v140[1] + 1) == 1)
        {
          goto LABEL_31;
        }

        v141 = v140[0];
        v142 = v140[1];
        v143 = *&v140[2];
        if (*(&v140[1] + 1))
        {
          break;
        }

        sub_24E601704(&v141, v79, v80);
        v78 = 0uLL;
        if (v76 == v83)
        {
          goto LABEL_19;
        }
      }

      *(&v142 + 1) = *(&v140[1] + 1);
      result = sub_24E60169C(&v141, v140, v79, v80);
      if (!*(&v140[1] + 1))
      {
        goto LABEL_55;
      }

      sub_24E612C80(v140, &v144);
      sub_24E601704(&v141, v79, v80);
      if (!*(&v145 + 1))
      {
LABEL_32:
        sub_24E601704(&v144, v79, v80);
        v130 = 0u;
        v131 = 0u;
        v132 = 0;
        goto LABEL_33;
      }

      sub_24E612C80(&v144, &v148);
      v93 = *(&v149 + 1);
      v94 = v150;
      v95 = __swift_project_boxed_opaque_existential_1(&v148, *(&v149 + 1));
      v96 = v93;
      v75 = v95;
      if ((PersonalizableModel.needsClientPersonalization.getter(v96, v94) & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v148);
        v78 = 0uLL;
        continue;
      }

      break;
    }

    sub_24E612C80(&v148, &v130);
LABEL_33:
    v148 = v130;
    v149 = v131;
    v150 = v132;
    if (*(&v131 + 1))
    {
      sub_24E612C80(&v148, &v144);
      v84 = v80;
      v85 = v79;
      v86 = v82;
      v87 = v81;
      v88 = v77;
      v89 = *(&v145 + 1);
      v90 = v146;
      __swift_project_boxed_opaque_existential_1(&v144, *(&v145 + 1));
      v91 = *(v90 + 16);
      v92 = v90;
      v77 = v88;
      v81 = v87;
      v82 = v86;
      v79 = v85;
      v80 = v84;
      v74 = v129;
      v91(&v141, v89, v92);
      LOBYTE(v89) = v141;
      __swift_destroy_boxed_opaque_existential_1(&v144);
      v75 = &v147;
      sub_24ED7CC74(&v130, v89);
      v78 = 0uLL;
      continue;
    }

    break;
  }

  v81 = v128;
  *(v128 + OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles) = v147;
  v97 = (v81 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata);
  v98 = v106;
  *v97 = v107;
  v97[1] = v98;
  v75 = *(v81 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents);
  if (!(v75 >> 62))
  {
    v99 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v99)
    {
      goto LABEL_42;
    }

LABEL_52:

LABEL_53:

    sub_24E601704(v117, &qword_27F228530, &unk_24F93C6E0);
    sub_24E601704(v122, &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v118, &unk_27F22EC30, &qword_24F939880);
    sub_24E601704(v123, &qword_27F228530, &unk_24F93C6E0);
    sub_24E601704(v105, &qword_27F235830, &qword_24F93B8C0);
    return v81;
  }

LABEL_51:
  v99 = sub_24F92C738();
  if (!v99)
  {
    goto LABEL_52;
  }

LABEL_42:
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225160, &unk_24F97B620);
  if (v99 >= 1)
  {
    v129 = (v75 & 0xC000000000000001);
    v100 = (v104 + 8);

    v101 = 0;
    v102 = v75;
    do
    {
      if (v129)
      {
        MEMORY[0x253052270](v101, v75);
      }

      else
      {
      }

      ++v101;
      sub_24EA90AB8();
      sub_24F9288B8();
      v103 = v125;
      sub_24F9288C8();

      __swift_destroy_boxed_opaque_existential_1(&v130);
      (*v100)(v103, v126);
      v75 = v102;
    }

    while (v99 != v101);

    v81 = v128;
    goto LABEL_53;
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_24F2EBA74(uint64_t a1, _BYTE *a2)
{
  LOBYTE(v20[0]) = *a2;
  if (Shelf.ContentType.rawValue.getter() == 0x7261437961646F74 && v3 == 0xE900000000000064)
  {

    return MEMORY[0x277D84F90];
  }

  else
  {
    v5 = sub_24F92CE08();

    v6 = MEMORY[0x277D84F90];
    if ((v5 & 1) == 0)
    {
      v21 = MEMORY[0x277D84F90];
      v7 = *(a1 + 16);
      if (v7)
      {
        v8 = a1 + 32;
        do
        {
          sub_24E615E00(v8, v20);
          sub_24E615E00(v20, v16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E348, &qword_24F998418);
          if (swift_dynamicCast())
          {
            sub_24E612C80(v14, v17);
            v10 = v18;
            v9 = v19;
            __swift_project_boxed_opaque_existential_1(v17, v18);
            v11 = (*(v9 + 8))(v10, v9);
            __swift_destroy_boxed_opaque_existential_1(v20);
            v12 = __swift_destroy_boxed_opaque_existential_1(v17);
            if (v11)
            {
              MEMORY[0x253050F00](v12);
              if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_24F92B5E8();
              }

              sub_24F92B638();
              v6 = v21;
            }
          }

          else
          {
            v15 = 0;
            memset(v14, 0, sizeof(v14));
            __swift_destroy_boxed_opaque_existential_1(v20);
            sub_24E601704(v14, &qword_27F22E340, &unk_24F9E1A30);
          }

          v8 += 40;
          --v7;
        }

        while (v7);
      }
    }
  }

  return v6;
}

uint64_t sub_24F2EBC94()
{
  v1 = *v0;
  if (v1 == 11)
  {
    return 2;
  }

  if (v1 != 3)
  {
    if (v1 == 1)
    {
      v2 = ASKDeviceTypeGetCurrent();
      v3 = sub_24F92B0D8();
      v5 = v4;
      if (v3 == sub_24F92B0D8() && v5 == v6)
      {
      }

      else
      {
        v8 = sub_24F92CE08();

        if ((v8 & 1) == 0)
        {
          v9 = ASKDeviceTypeGetCurrent();
          v10 = sub_24F92B0D8();
          v12 = v11;
          if (v10 != sub_24F92B0D8() || v12 != v13)
          {
            v14 = sub_24F92CE08();

            if ((v14 & 1) == 0)
            {
              return 3;
            }

            return 1;
          }

          goto LABEL_19;
        }
      }

      return 2;
    }

    return 1;
  }

  v9 = ASKDeviceTypeGetCurrent();
  v16 = sub_24F92B0D8();
  v18 = v17;
  if (v16 == sub_24F92B0D8() && v18 == v19)
  {
LABEL_19:

    return 1;
  }

  v21 = sub_24F92CE08();

  if (v21)
  {
    return 1;
  }

  return 2;
}

uint64_t sub_24F2EBE94()
{
  v1 = *v0;
  sub_24E7AB064(sub_24F2EED04, v0[3], v14);
  sub_24E60169C(v14, v13, &qword_27F2171D0, &unk_24F980290);
  if (!v13[3])
  {
    sub_24E601704(v13, &qword_27F2171D0, &unk_24F980290);
    v6 = 0u;
    v7 = 0u;
    v8 = 0;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232D20, &qword_24F9AAEE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    goto LABEL_9;
  }

  if (!*(&v7 + 1))
  {
LABEL_9:
    sub_24E601704(v14, &qword_27F2171D0, &unk_24F980290);
    v2 = &qword_27F232D28;
    v3 = &unk_24F9AAEF0;
    v4 = &v6;
    return sub_24E601704(v4, v2, v3);
  }

  sub_24E612C80(&v6, v13);
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel))
  {
    v11 = v1;
    v12 = sub_24F2EED24(&qword_27F23E648, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
    *&v10 = v0;
    sub_24E612C80(&v10, &v6);
    sub_24E615E00(v13, &v9);

    sub_24F9280C8();
    sub_24E601704(&v6, &qword_27F23E650, &unk_24F9E1A20);
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  v2 = &qword_27F2171D0;
  v3 = &unk_24F980290;
  v4 = v14;
  return sub_24E601704(v4, v2, v3);
}

uint64_t sub_24F2EC0B8(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v53 = a5;
  *&v49 = a3;
  *(&v49 + 1) = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226720, &unk_24F97ABA0);
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x28223BE20](v9);
  v44 = &v43 - v10;
  v11 = sub_24F92AC38();
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = (&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v43 - v15;
  v17 = sub_24F92AC28();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a2;
  sub_24F9282B8();
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    v24 = (*(v18 + 32))(v20, v16, v17);
    MEMORY[0x28223BE20](v24);
    *(&v43 - 16) = v21;
    *(&v43 - 1) = a6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
    v21 = sub_24F92ABB8();
    (*(v18 + 8))(v20, v17);
    goto LABEL_20;
  }

  v43 = v6;
  sub_24E601704(v16, &qword_27F2213B0, &qword_24F965EC0);
  v22 = sub_24F928348();
  if (!v23)
  {
    goto LABEL_15;
  }

  if (v22 != 0xD000000000000010 || v23 != 0x800000024FA73250)
  {
    v25 = sub_24F92CE08();

    if (v25)
    {
      goto LABEL_8;
    }

LABEL_15:
    sub_24F2EED24(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    v30 = v48;
    swift_allocError();
    v32 = v31;
    v33 = type metadata accessor for Shelf(0);
    *v32 = 0x736D657469;
    v32[1] = 0xE500000000000000;
    v32[2] = v33;
    (*(v47 + 104))(v32, *MEMORY[0x277D22530], v30);
    swift_willThrow();
    return v21;
  }

LABEL_8:
  v26 = v21;
  if (qword_27F210CC0 != -1)
  {
    swift_once();
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235048, &qword_24F9B5AF8);
  __swift_project_value_buffer(v27, qword_27F39D0F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FB80, &qword_24F99E190);
  sub_24F9285D8();
  v21 = v52[0];
  if (v52[0])
  {
    LOBYTE(v52[0]) = v26;
    if (qword_27F210CB8 != -1)
    {
      swift_once();
    }

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235050, &qword_24F9E1480);
    __swift_project_value_buffer(v28, qword_27F39D0E0);
    sub_24F9285D8();
    v54 = v50[0];
    if (Shelf.ContentType.isCompatible(with:)(&v54, v29))
    {
      goto LABEL_20;
    }
  }

  v34 = type metadata accessor for Shelf(0);
  *v13 = 0xD000000000000010;
  v13[1] = 0x800000024FA73250;
  v35 = MEMORY[0x277D84F90];
  v13[2] = v34;
  v13[3] = v35;
  v36 = v47;
  v37 = v48;
  (*(v47 + 104))(v13, *MEMORY[0x277D22540], v48);
  v38 = v44;
  sub_24F928548();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226728, &unk_24F97ABB0);
  sub_24F9285D8();
  (*(v45 + 8))(v38, v46);
  sub_24E60169C(v52, v50, &qword_27F226730, &unk_24F984CC0);
  if (v51)
  {
    __swift_project_boxed_opaque_existential_1(v50, v51);
    sub_24F2EED24(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    v39 = swift_allocError();
    (*(v36 + 16))(v40, v13, v37);
    sub_24F929EC8();
    sub_24E601704(v52, &qword_27F226730, &unk_24F984CC0);
    (*(v36 + 8))(v13, v37);

    __swift_destroy_boxed_opaque_existential_1(v50);
  }

  else
  {
    sub_24E601704(v52, &qword_27F226730, &unk_24F984CC0);
    (*(v36 + 8))(v13, v37);
    sub_24E601704(v50, &qword_27F226730, &unk_24F984CC0);
  }

  v21 = MEMORY[0x277D84F90];
LABEL_20:
  if (v53 != 2 || v49 != 0)
  {
    v41 = sub_24F2ED638(v21, v49, *(&v49 + 1), v53);

    return v41;
  }

  return v21;
}

uint64_t Shelf.accessoryAction.getter()
{
  if (*(v0 + 40))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t Shelf.batchGroup.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);

  return v1;
}

uint64_t Shelf.footerTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);

  return v1;
}

id Shelf.footerStyle.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle);
  *a1 = v2;
  return sub_24ED8F454(v2);
}

uint64_t Shelf.contentsMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 48);
  v9 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 32);
  v10 = v2;
  v11 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 64);
  v3 = v11;
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 16);
  v8[0] = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_24EA1F04C(v8, v7);
}

double Shelf.background.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background);
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 8);
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 16);
  v6 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(v2 + 32);
  *(a1 + 32) = v7;
  return sub_24E951F10(v3, v4, v5, v6, v7);
}

uint64_t sub_24F2ECAE8(uint64_t a1, uint64_t a2)
{
  sub_24E615E00(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232D20, &qword_24F9AAEE8);
  if (swift_dynamicCast())
  {
    sub_24E612C80(v7, v10);
    v3 = v11;
    v4 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v4 + 16))(v9, v3, v4);
    v5 = MEMORY[0x253052150](v9, a2);
    sub_24E6585F8(v9);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_24E601704(v7, &qword_27F232D28, &unk_24F9AAEF0);
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t Shelf.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30[-1] - v3;
  *&v31 = 0;
  *(&v31 + 1) = 0xE000000000000000;
  sub_24F92C888();
  v35 = v31;
  MEMORY[0x253050C20](0x203A666C656853, 0xE700000000000000);
  v5 = *(v0 + 40);
  if (v5)
  {
    v7 = *(v5 + 72);
    v6 = *(v5 + 80);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *&v31 = v7;
  *(&v31 + 1) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  sub_24F92CA38();

  MEMORY[0x253050C20](0x6E65746E6F63202CLL, 0xEF203A6570795474);
  LOBYTE(v31) = *(v1 + 16);
  sub_24F92CA38();
  MEMORY[0x253050C20](0xD00000000000001ALL, 0x800000024FA73270);
  LOBYTE(v31) = *(v1 + 17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E600, &qword_24F9E1488);
  sub_24F92CA38();
  MEMORY[0x253050C20](0x6D6574496F6E202CLL, 0xEB00000000203A73);
  v8 = *(v1 + 24);
  *&v31 = *(v8 + 16);
  v9 = sub_24F92CD88();
  MEMORY[0x253050C20](v9);

  MEMORY[0x253050C20](0x4C5255736168202CLL, 0xEA0000000000203ALL);
  sub_24E60169C(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, v4, &qword_27F228530, &unk_24F93C6E0);
  v10 = sub_24F91F4A8();
  v11 = (*(*(v10 - 8) + 48))(v4, 1, v10);
  sub_24E601704(v4, &qword_27F228530, &unk_24F93C6E0);
  if (v11 == 1)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v11 == 1)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v12, v13);

  MEMORY[0x253050C20](0x646469487369202CLL, 0xEC000000203A6E65);
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden))
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden))
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v14, v15);

  MEMORY[0x253050C20](0x476863746162202CLL, 0xEE00203A70756F72);
  MEMORY[0x253050C20](*(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup), *(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup + 8));
  MEMORY[0x253050C20](0x203A6469202CLL, 0xE600000000000000);
  v16 = sub_24F92C7A8();
  MEMORY[0x253050C20](v16);

  MEMORY[0x253050C20](0x6E65746E6F63202CLL, 0xEE00203A73644974);
  v17 = *(v8 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v34 = MEMORY[0x277D84F90];
    sub_24F457B3C(0, v17, 0);
    v18 = v34;
    v19 = v8 + 32;
    do
    {
      sub_24E615E00(v19, v30);
      __swift_project_boxed_opaque_existential_1(v30, v30[3]);
      sub_24F928D68();
      __swift_destroy_boxed_opaque_existential_1(v30);
      v34 = v18;
      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_24F457B3C((v20 > 1), v21 + 1, 1);
        v18 = v34;
      }

      *(v18 + 16) = v21 + 1;
      v22 = v18 + 40 * v21;
      v23 = v31;
      v24 = v32;
      *(v22 + 64) = v33;
      *(v22 + 32) = v23;
      *(v22 + 48) = v24;
      v19 += 40;
      --v17;
    }

    while (v17);
  }

  v25 = MEMORY[0x253050F40](v18, MEMORY[0x277D84030]);
  v27 = v26;

  MEMORY[0x253050C20](v25, v27);

  return v35;
}

double Shelf.accessibilityMetadata.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata + 24);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata);
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 24) = v3;

  return result;
}

uint64_t Shelf.deinit()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, &qword_27F228530, &unk_24F93C6E0);

  sub_24ED8F464(*(v0 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle));
  sub_24F2EE69C(*(v0 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata), *(v0 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 40), *(v0 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 48));
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_27F22EC30, &qword_24F939880);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit5Shelf_refreshUrl, &qword_27F228530, &unk_24F93C6E0);

  sub_24E951FEC(*(v0 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background), *(v0 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 32));

  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t Shelf.__deallocating_deinit()
{
  Shelf.deinit();

  return swift_deallocClassInstance();
}

uint64_t Shelf.hashValue.getter()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

char *sub_24F2ED464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  result = Shelf.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

char *sub_24F2ED4A8@<X0>(char **a1@<X0>, char **a2@<X8>)
{
  result = Shelf.mergingWith(_:)(*a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_24F2ED514()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

uint64_t sub_24F2ED594()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

uint64_t sub_24F2ED638(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (qword_27F2105F8 != -1)
  {
    swift_once();
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BF38, &unk_24F9957F0);
  __swift_project_value_buffer(v8, qword_27F39C540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0, &unk_24F980F50);
  sub_24F9285D8();
  v56 = v59;
  if (!v59)
  {
    goto LABEL_16;
  }

  v55 = *(&v59 + 1);
  if (a4)
  {
    if (a4 == 1)
    {
      v9 = qword_27F210CC8;

      if (v9 != -1)
      {
        swift_once();
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235058, &unk_24F9E1A10);
      __swift_project_value_buffer(v10, qword_27F39D110);
      type metadata accessor for DeviceType(0);
      sub_24F9285D8();
      v11 = sub_24F92B0D8();
      v13 = v12;
      if (v11 == sub_24F92B0D8() && v13 == v14)
      {

        v15 = 1;
      }

      else
      {
        v17 = sub_24F92CE08();

        if (v17)
        {
          v15 = 1;
        }

        else
        {
          v18 = sub_24F92B0D8();
          v20 = v19;
          if (v18 == sub_24F92B0D8() && v20 == v21)
          {

            v15 = 3;
          }

          else
          {
            v22 = sub_24F92CE08();

            if (v22)
            {
              v15 = 3;
            }

            else
            {
              v15 = 8;
            }
          }
        }
      }

      if (a2)
      {
        v16 = a2;
      }

      else
      {
        v16 = MEMORY[0x277D84F90];
      }

      v53 = v15;
      goto LABEL_29;
    }

    swift_unknownObjectRelease();
LABEL_16:

    return a1;
  }

  v53 = a2;
  if (a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

LABEL_29:
  v23 = *(a1 + 16);
  v52 = a1;
  if (v23)
  {
    v24 = a1 + 32;
    v54 = v55 + 56;
    v25 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_24E615E00(v24, v63);
      sub_24E615E00(v63, &v59);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
      type metadata accessor for Lockup(0);
      v26 = swift_dynamicCast();
      if (!v26)
      {
        goto LABEL_45;
      }

      v27 = *&v57[0];
      v28 = *(*&v57[0] + 24);
      *&v59 = *(*&v57[0] + 16);
      *(&v59 + 1) = v28;
      MEMORY[0x28223BE20](v26);
      v50[2] = &v59;

      v29 = sub_24E615A64(sub_24E61B674, v50, v16);

      if (v29)
      {
        break;
      }

      ObjectType = swift_getObjectType();
      v31 = *(v27 + 24);
      *&v57[0] = *(v27 + 16);
      *(&v57[0] + 1) = v31;
      v32 = v55;
      v33 = *(v55 + 56);

      v33(v57, ObjectType, v32);
      v35 = v34;

      v36 = swift_getObjectType();
      (*(v35 + 16))(v57, v36, v35);

      swift_unknownObjectRelease();
      v59 = v57[0];
      v60 = v57[1];
      v61 = v57[2];
      v62 = v58;
      v37 = v58 >> 60;
      if (v58 >> 60 == 2 || v37 == 7)
      {
        sub_24E88D2AC(&v59);
      }

      else if (v37 != 8 || *(&v62 + 1) || v58 != 0x8000000000000000 || v59 != 1 || (v38 = vorrq_s8(v60, v61), *&vorr_s8(*v38.i8, *&vextq_s8(v38, v38, 8uLL)) | *(&v59 + 1)))
      {
        sub_24E88D2AC(&v59);
        goto LABEL_45;
      }

      __swift_destroy_boxed_opaque_existential_1(v63);
LABEL_33:
      v24 += 40;
      if (!--v23)
      {
        goto LABEL_51;
      }
    }

LABEL_45:
    sub_24E612C80(v63, &v59);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24F457A9C(0, *(v25 + 16) + 1, 1);
      v25 = v64;
    }

    v41 = *(v25 + 16);
    v40 = *(v25 + 24);
    if (v41 >= v40 >> 1)
    {
      sub_24F457A9C((v40 > 1), v41 + 1, 1);
    }

    v42 = v60.i64[1];
    v43 = v61.i64[0];
    v44 = __swift_mutable_project_boxed_opaque_existential_1(&v59, v60.i64[1]);
    v45 = MEMORY[0x28223BE20](v44);
    v47 = &v51 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v48 + 16))(v47, v45);
    sub_24ED8F474(v41, v47, &v64, v42, v43);
    __swift_destroy_boxed_opaque_existential_1(&v59);
    v25 = v64;
    goto LABEL_33;
  }

  v25 = MEMORY[0x277D84F90];
LABEL_51:

  swift_unknownObjectRelease();
  if (*(v25 + 16) >= v53)
  {
    return v25;
  }

  a1 = v52;

  return a1;
}

uint64_t sub_24F2EDCF4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226720, &unk_24F97ABA0);
  v9 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v11 = &v23 - v10;
  v12 = sub_24F92AC38();
  v24 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27[0] = a2;
  v28 = a4;
  result = sub_24EE9F8B8(a1, a3, a4);
  if (v4)
  {
    v16 = type metadata accessor for Shelf(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BA0, &qword_24F97AD70);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_24F93DE60;
    *(v17 + 32) = v4;
    *v14 = 0x736D657469;
    v14[1] = 0xE500000000000000;
    v14[2] = v16;
    v14[3] = v17;
    v18 = v24;
    (*(v24 + 104))(v14, *MEMORY[0x277D22540], v12);
    v19 = v4;
    sub_24F928548();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226728, &unk_24F97ABB0);
    sub_24F9285D8();
    (*(v9 + 8))(v11, v23);
    sub_24E60169C(v27, v25, &qword_27F226730, &unk_24F984CC0);
    if (v26)
    {
      __swift_project_boxed_opaque_existential_1(v25, v26);
      sub_24F2EED24(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      v20 = swift_allocError();
      (*(v18 + 16))(v21, v14, v12);
      sub_24F929EC8();

      sub_24E601704(v27, &qword_27F226730, &unk_24F984CC0);
      (*(v18 + 8))(v14, v12);

      result = __swift_destroy_boxed_opaque_existential_1(v25);
    }

    else
    {

      sub_24E601704(v27, &qword_27F226730, &unk_24F984CC0);
      (*(v18 + 8))(v14, v12);
      result = sub_24E601704(v25, &qword_27F226730, &unk_24F984CC0);
    }

    v22 = v28;
    v28[4] = 0;
    *v22 = 0u;
    *(v22 + 1) = 0u;
  }

  return result;
}

uint64_t sub_24F2EE0AC(char *a1, uint64_t a2)
{
  v29 = a2;
  v3 = sub_24F928388();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - v13;
  sub_24F928398();
  sub_24F9282B8();
  v15 = *(v4 + 8);
  v15(v11, v3);
  v16 = sub_24F92AC28();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    sub_24E601704(v14, &qword_27F2213B0, &qword_24F965EC0);
    v18 = 0;
  }

  else
  {
    v18 = sub_24F92ABB8();
    (*(v17 + 8))(v14, v16);
  }

  sub_24F928398();
  v19 = sub_24F928278();
  v15(v8, v3);
  if (v19 == 2 || (v19 & 1) == 0)
  {

    v26 = sub_24F9285B8();
    (*(*(v26 - 8) + 8))(v29, v26);
    v15(a1, v3);
    return 0;
  }

  else
  {
    v20 = v28;
    sub_24F928398();
    v21 = sub_24F928258();
    v23 = v22;
    v24 = sub_24F9285B8();
    (*(*(v24 - 8) + 8))(v29, v24);
    v15(a1, v3);
    v15(v20, v3);
    if (v23)
    {
      return v18;
    }

    else
    {
      return v21;
    }
  }
}

uint64_t sub_24F2EE484(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_24F2EE4A4()
{
  result = qword_27F23E5D0;
  if (!qword_27F23E5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E5D0);
  }

  return result;
}

unint64_t sub_24F2EE4F8()
{
  result = qword_27F23E5D8;
  if (!qword_27F23E5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E5D8);
  }

  return result;
}

unint64_t sub_24F2EE54C()
{
  result = qword_27F23E5E0;
  if (!qword_27F23E5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E5E0);
  }

  return result;
}

unint64_t sub_24F2EE5A0()
{
  result = qword_27F23E5E8;
  if (!qword_27F23E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E5E8);
  }

  return result;
}

unint64_t sub_24F2EE5F4()
{
  result = qword_27F23E5F0;
  if (!qword_27F23E5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E5F0);
  }

  return result;
}

unint64_t sub_24F2EE648()
{
  result = qword_27F23E5F8;
  if (!qword_27F23E5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E5F8);
  }

  return result;
}

void sub_24F2EE69C(void *a1, int a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v8 = a7 >> 29;
  if (a7 >> 29 == 5)
  {
  }

  else if (v8 == 1)
  {
  }

  else if (!v8)
  {
  }
}

unint64_t sub_24F2EE758()
{
  result = qword_27F23E608;
  if (!qword_27F23E608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E608);
  }

  return result;
}

unint64_t sub_24F2EE7B0()
{
  result = qword_27F23E610;
  if (!qword_27F23E610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E610);
  }

  return result;
}

uint64_t type metadata accessor for Shelf(uint64_t a1)
{
  result = qword_27F23E638;
  if (!qword_27F23E638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F2EE8E0(uint64_t a1)
{
  result = sub_24F2EED24(&qword_27F23E628, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
  *(a1 + 8) = result;
  return result;
}

void sub_24F2EE9A8(uint64_t a1)
{
  sub_24F2EEC80(319, &qword_27F218378, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    sub_24F2EEC80(319, &qword_27F21A4A0, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      sub_24F2EEC80(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24F2EEC80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24F2EED24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F2EEDA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E658, &qword_24F9E1AC8);
  MEMORY[0x28223BE20](v6);
  v8 = v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E660, &qword_24F9E1AD0);
  MEMORY[0x28223BE20](v9);
  v11 = v17 - v10;
  if (a4)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E668, &qword_24F9E1AD8);
    (*(*(v12 - 8) + 16))(v8, a1, v12);
    swift_storeEnumTagMultiPayload();
    sub_24F2EF0A4();
    sub_24E602068(&qword_27F23E698, &qword_27F23E668, &qword_24F9E1AD8, MEMORY[0x277CE04B0]);
    return sub_24F924E28();
  }

  else
  {
    sub_24F927618();
    sub_24F9238C8();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E668, &qword_24F9E1AD8);
    (*(*(v14 - 8) + 16))(v11, a1, v14);
    v15 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E690, &qword_24F9E1AE8) + 36)];
    v16 = v17[1];
    *v15 = v17[0];
    *(v15 + 1) = v16;
    *(v15 + 2) = v17[2];
    *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E680, &qword_24F9E1AE0) + 36)] = 0;
    v11[*(v9 + 36)] = 0;
    sub_24F2EF2CC(v11, v8);
    swift_storeEnumTagMultiPayload();
    sub_24F2EF0A4();
    sub_24E602068(&qword_27F23E698, &qword_27F23E668, &qword_24F9E1AD8, MEMORY[0x277CE04B0]);
    sub_24F924E28();
    return sub_24F2EF33C(v11);
  }
}

unint64_t sub_24F2EF0A4()
{
  result = qword_27F23E670;
  if (!qword_27F23E670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23E660, &qword_24F9E1AD0);
    sub_24F2EF15C();
    sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E670);
  }

  return result;
}

unint64_t sub_24F2EF15C()
{
  result = qword_27F23E678;
  if (!qword_27F23E678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23E680, &qword_24F9E1AE0);
    sub_24F2EF214();
    sub_24E602068(&qword_27F2263F8, &qword_27F226400, &qword_24F97FB40, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E678);
  }

  return result;
}

unint64_t sub_24F2EF214()
{
  result = qword_27F23E688;
  if (!qword_27F23E688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23E690, &qword_24F9E1AE8);
    sub_24E602068(&qword_27F23E698, &qword_27F23E668, &qword_24F9E1AD8, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E688);
  }

  return result;
}

uint64_t sub_24F2EF2CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E660, &qword_24F9E1AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F2EF33C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E660, &qword_24F9E1AD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F2EF3A8()
{
  result = qword_27F23E6A0;
  if (!qword_27F23E6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23E6A8, &qword_24F9E1AF0);
    sub_24F2EF0A4();
    sub_24E602068(&qword_27F23E698, &qword_27F23E668, &qword_24F9E1AD8, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E6A0);
  }

  return result;
}

const char *Feature.visionOS.feature.getter()
{
  v1 = "force_display_lockup_ordinals";
  v2 = "bootstrap_v2_2024C";
  if (*v0 != 2)
  {
    v2 = "spatial_controllers_2025A";
  }

  if (*v0)
  {
    v1 = "see_all_games_segmented_nav_2024A";
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

uint64_t Feature.visionOS.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_24F92CB88();

  v6 = 4;
  if (v4 < 4)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

unint64_t Feature.visionOS.rawValue.getter()
{
  v1 = 0xD000000000000019;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000012;
  }

  v2 = 0xD000000000000021;
  if (!*v0)
  {
    v2 = 0xD00000000000001DLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_24F2EF5B4()
{
  result = qword_27F23E6B0;
  if (!qword_27F23E6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E6B0);
  }

  return result;
}

uint64_t sub_24F2EF608()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F2EF6C0(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F2EF764()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F2EF824(unint64_t *a1@<X8>)
{
  v2 = "gmented_nav_2024A";
  v3 = 0xD000000000000019;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = "bootstrap_v2_2024C";
  }

  v4 = 0xD000000000000021;
  if (*v1)
  {
    v5 = "force_display_lockup_ordinals";
  }

  else
  {
    v4 = 0xD00000000000001DLL;
    v5 = "nowPlayingFeatureEntryPoints";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v4 = v3;
    v6 = v2;
  }

  *a1 = v4;
  a1[1] = v6 | 0x8000000000000000;
}

const char *sub_24F2EF89C()
{
  v1 = "force_display_lockup_ordinals";
  v2 = "bootstrap_v2_2024C";
  if (*v0 != 2)
  {
    v2 = "spatial_controllers_2025A";
  }

  if (*v0)
  {
    v1 = "see_all_games_segmented_nav_2024A";
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

void sub_24F2EF90C()
{
  v1 = sub_24F9287F8();
  v42 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v54 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v56 = &v37 - v4;
  v5 = sub_24F928738();
  v49 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v10 = sub_24F928818();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_24E60169C(v0 + 40, &v57, &qword_27F224F98, &unk_24F974A70);
  if (v58)
  {
    v38 = v0;
    sub_24E8EA128(&v57, &v59);
    __swift_project_boxed_opaque_existential_1(&v59, v60);
    sub_24F92AD48();
    v14 = sub_24F928768();
    (*(v11 + 8))(v13, v10);
    v48 = *(v14 + 16);
    if (v48)
    {
      v15 = 0;
      v44 = v49 + 16;
      v53 = v42 + 16;
      v55 = (v42 + 8);
      v39 = (v49 + 32);
      v41 = MEMORY[0x277D84F90];
      v43 = (v49 + 8);
      v47 = v5;
      v46 = v9;
      v45 = v14;
      v16 = v54;
      while (v15 < *(v14 + 16))
      {
        v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
        v52 = v15;
        v50 = *(v49 + 72);
        (*(v49 + 16))(v9, v14 + v51 + v50 * v15, v5);
        v17 = sub_24F9286D8();
        sub_24F9287E8();
        if (*(v17 + 16) && (sub_24F2FA5C0(&qword_27F21E608, MEMORY[0x277D21BE0], MEMORY[0x277D21BE8]), v18 = sub_24F92AEE8(), v19 = -1 << *(v17 + 32), v20 = v18 & ~v19, ((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0))
        {
          v21 = ~v19;
          v22 = *(v42 + 72);
          v23 = *(v42 + 16);
          while (1)
          {
            v23(v16, *(v17 + 48) + v22 * v20, v1);
            sub_24F2FA5C0(&qword_27F21E610, MEMORY[0x277D21BE0], MEMORY[0x277D21BF0]);
            v24 = sub_24F92AFF8();
            v25 = *v55;
            (*v55)(v16, v1);
            if (v24)
            {
              break;
            }

            v20 = (v20 + 1) & v21;
            if (((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          v25(v56, v1);
          v26 = *v39;
          v9 = v46;
          v5 = v47;
          (*v39)(v40, v46, v47);
          v27 = v41;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v29 = v27;
          *&v57 = v27;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24F458108(0, *(v27 + 16) + 1, 1);
            v29 = v57;
          }

          v31 = *(v29 + 16);
          v30 = *(v29 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_24F458108((v30 > 1), v31 + 1, 1);
            v29 = v57;
          }

          *(v29 + 16) = v31 + 1;
          v41 = v29;
          v26((v29 + v51 + v31 * v50), v40, v5);
        }

        else
        {
LABEL_4:

          (*v55)(v56, v1);
          v9 = v46;
          v5 = v47;
          (*v43)(v46, v47);
        }

        v15 = v52 + 1;
        v14 = v45;
        if (v52 + 1 == v48)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
      v41 = MEMORY[0x277D84F90];
LABEL_21:

      v34 = qword_27F39B488;
      v35 = v38;
      swift_beginAccess();
      if (*(v35 + v34))
      {
        v36 = *(v41 + 16);

        MetricsPageEnterGate.hasMetricsPage.setter(v36 != 0);
      }

      __swift_destroy_boxed_opaque_existential_1(&v59);
    }
  }

  else
  {
    sub_24E601704(&v57, &qword_27F224F98, &unk_24F974A70);
    v32 = qword_27F39B488;
    swift_beginAccess();
    v33 = *(v0 + v32);
    if (v33)
    {
      swift_beginAccess();
      *(v33 + 34) = 0;
    }
  }
}

double sub_24F2F0040(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + *(*v4 + 176);
  swift_beginAccess();
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  sub_24F24D234(v10, v11, v12, v13);
  result = sub_24EBDED8C(v10, v11, v12, v13);
  v15 = *v9;
  v16 = *(v9 + 24);
  if (!*(v9 + 24))
  {
    if (v13)
    {
      v19 = 0;
    }

    else
    {
      v19 = v15 == v10;
    }

    if (v19)
    {
      v20 = v10;
      v21 = v11;
      v22 = v12;
      v23 = 0;
      return sub_24EBDED8C(v20, v21, v22, v23);
    }

LABEL_23:
    v25 = *v9;
    v26 = *(v9 + 8);
    v27 = *(v9 + 16);
    v28 = *(v9 + 24);
    sub_24F24D234(v15, v26, v27, v16);
    sub_24F92AD88();
    sub_24EBDED8C(v10, v11, v12, v13);
    v20 = v25;
    v21 = v26;
    v22 = v27;
    v23 = v28;
    return sub_24EBDED8C(v20, v21, v22, v23);
  }

  if (v16 == 1)
  {
    goto LABEL_23;
  }

  if (*(v9 + 8) | *(v9 + 16) | v15)
  {
    if (v13 != 2 || v10 != 1 || (v12 | v11) != 0)
    {
      goto LABEL_23;
    }
  }

  else if (v13 != 2 || (v12 | v11 | v10) != 0)
  {
    goto LABEL_23;
  }

  return result;
}

void sub_24F2F01C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B5C8, &qword_24F98BA80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v83 - v3;
  v5 = sub_24F91F648();
  v86 = *(v5 - 8);
  v87 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v83 - v9;
  v11 = sub_24F9287F8();
  v88 = *(v11 - 8);
  v89 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F929FB8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24F929AB8();
  v84 = *(v18 - 8);
  v85 = v18;
  MEMORY[0x28223BE20](v18);
  v83 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for StoreViewControllerLifecycleEvent(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F2FA558(a1, v22, type metadata accessor for StoreViewControllerLifecycleEvent);
  v23 = (*(v15 + 48))(v22, 11, v14);
  if (v23 > 6)
  {
    if (v23 <= 8)
    {
      if (v23 != 7)
      {
        v39 = v90;
        ImpressionsCalculator.isVisible.setter(1);
        if (qword_27F210278 != -1)
        {
          swift_once();
        }

        v40 = off_27F229AB8;
        v41 = (v39 + qword_27F39B490);
        swift_beginAccess();
        v42 = v41[1];
        v40[9] = *v41;
        v40[10] = v42;

        swift_beginAccess();
        *(v40 + 88) = 2;
        return;
      }

      sub_24F928798();
      v55 = v13;
LABEL_62:
      sub_24ED481EC(v55);
      goto LABEL_63;
    }

    switch(v23)
    {
      case 9:
        v67 = v90;
        v68 = (v90 + qword_27F39B480);
        swift_beginAccess();
        if (!v68[1])
        {
          if (qword_27F210278 != -1)
          {
            swift_once();
          }

          v78 = *(off_27F229AB8 + 3);
          v77 = *(off_27F229AB8 + 4);
          *v68 = v78;
          v68[1] = v77;

          if (v77)
          {
            swift_beginAccess();
            if (v67[4])
            {
              v79 = qword_27F210658;

              if (v79 != -1)
              {
                swift_once();
              }

              v80 = v85;
              __swift_project_value_buffer(v85, qword_27F22E3B8);
              v95 = v78;
              v96 = v77;
              if (qword_27F210670 != -1)
              {
                swift_once();
              }

              v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910, &unk_24F974C00);
              __swift_project_value_buffer(v81, qword_27F22E400);
              v82 = v83;
              sub_24F929A48();

              sub_24F92A098();

              (*(v84 + 8))(v82, v80);
            }
          }
        }

        v69 = qword_27F39B488;
        swift_beginAccess();
        if (*(v67 + v69))
        {

          MetricsPageEnterGate.hasAppeared.setter(1);
        }

        return;
      case 10:
        v73 = qword_27F39B488;
        v74 = v90;
        swift_beginAccess();
        v75 = *(v74 + v73);
        if (v75)
        {
          swift_beginAccess();
          *(v75 + 32) = 0;
        }

        sub_24F9287C8();
        sub_24ED481EC(v13);
        (*(v88 + 8))(v13, v89);
        if (qword_27F210278 != -1)
        {
          swift_once();
        }

        sub_24EB6AC9C(0, v76);
        return;
      case 11:
        ImpressionsCalculator.isVisible.setter(0);
        if (qword_27F210278 != -1)
        {
          swift_once();
        }

        v30 = off_27F229AB8;
        *(off_27F229AB8 + 9) = 0;
        v30[10] = 0;

        swift_beginAccess();
        *(v30 + 88) = 2;
        return;
    }

    goto LABEL_69;
  }

  if (v23 <= 2)
  {
    if (!v23)
    {
      (*(v15 + 32))(v17, v22, v14);
      v43 = qword_27F39B488;
      v44 = v90;
      swift_beginAccess();
      v45 = *(v44 + v43);
      if (v45)
      {
        swift_beginAccess();
        *(v45 + 32) = 0;
      }

      sub_24F9287C8();
      sub_24ED481EC(v13);
      (*(v88 + 8))(v13, v89);
      if (qword_27F210278 != -1)
      {
        swift_once();
      }

      v47 = off_27F229AB8;
      sub_24EB6AC9C(0, v46);
      swift_beginAccess();
      v48 = v44[3];
      if (v48)
      {
        (*(v15 + 16))(v4, v17, v14);

        sub_24F91F638();
        sub_24F91F5E8();
        v50 = v49;
        (*(v86 + 8))(v7, v87);
        v51 = type metadata accessor for PendingPageRender.DisappearTimeAndReason(0);
        *&v4[*(v51 + 20)] = v50;
        (*(*(v51 - 8) + 56))(v4, 0, 1, v51);
        v52 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_disappearTime;
        swift_beginAccess();
        sub_24E9CBF30(v4, v48 + v52, &qword_27F22B5C8, &qword_24F98BA80);
        swift_endAccess();
        sub_24ED71208();

        sub_24E601704(v4, &qword_27F22B5C8, &qword_24F98BA80);
      }

      v53 = v90;
      swift_beginAccess();
      if (v53[4])
      {

        sub_24F92A0B8();
      }

      ImpressionsCalculator.isVisible.setter(0);
      v47[9] = 0;
      v47[10] = 0;

      swift_beginAccess();
      *(v47 + 88) = 2;
      (*(v15 + 8))(v17, v14);
      v92 = 0;
      memset(v91, 0, sizeof(v91));
      swift_beginAccess();
      v54 = (v47 + 13);
      goto LABEL_55;
    }

    if (v23 == 1)
    {
      v31 = v90;
      v32 = (v90 + qword_27F39B480);
      swift_beginAccess();
      if (!v32[1])
      {
        if (qword_27F210278 != -1)
        {
          swift_once();
        }

        v34 = *(off_27F229AB8 + 3);
        v33 = *(off_27F229AB8 + 4);
        *v32 = v34;
        v32[1] = v33;

        if (v33)
        {
          swift_beginAccess();
          if (v31[4])
          {
            v35 = qword_27F210658;

            if (v35 != -1)
            {
              swift_once();
            }

            v36 = v85;
            __swift_project_value_buffer(v85, qword_27F22E3B8);
            v93 = v34;
            v94 = v33;
            if (qword_27F210670 != -1)
            {
              swift_once();
            }

            v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910, &unk_24F974C00);
            __swift_project_value_buffer(v37, qword_27F22E400);
            v38 = v83;
            sub_24F929A48();

            sub_24F92A098();

            (*(v84 + 8))(v38, v36);
          }
        }
      }

      return;
    }

LABEL_69:
    sub_24F2FA4F8(v22, type metadata accessor for StoreViewControllerLifecycleEvent);
    return;
  }

  if (v23 == 3)
  {
    v56 = v90;
    sub_24F2F7B30();
    v57 = qword_27F39B488;
    swift_beginAccess();
    if (*(v56 + v57))
    {

      MetricsPageEnterGate.hasAppeared.setter(1);
    }

    swift_beginAccess();
    v58 = v56[3];
    if (v58)
    {

      sub_24F91F638();
      sub_24F91F5E8();
      v60 = v59;
      (*(v86 + 8))(v10, v87);
      v61 = v58 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_appearTime;
      swift_beginAccess();
      *v61 = v60;
      *(v61 + 8) = 0;
      v62 = *(v58 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasAppearTime);
      swift_beginAccess();
      *(v62 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    swift_beginAccess();
    if (v56[4])
    {

      sub_24F92A0A8();
    }

    ImpressionsCalculator.isVisible.setter(1);
    if (qword_27F210278 != -1)
    {
      swift_once();
    }

    v63 = off_27F229AB8;
    v64 = (v56 + qword_27F39B490);
    swift_beginAccess();
    v65 = v64[1];
    v63[9] = *v64;
    v63[10] = v65;

    v66 = *(*v56 + 192);
    swift_beginAccess();
    sub_24E60169C(v56 + v66, v91, &qword_27F224FA0, &qword_24F975FD0);
    swift_beginAccess();
    v54 = (v63 + 13);
LABEL_55:
    sub_24EB6B058(v91, v54);
    swift_endAccess();
    return;
  }

  if (v23 == 5)
  {
    v70 = qword_27F39B488;
    v71 = v90;
    swift_beginAccess();
    v72 = *(v71 + v70);
    if (v72)
    {
      swift_beginAccess();
      *(v72 + 33) = 1;
    }

    sub_24F9287A8();
    v55 = v13;
    goto LABEL_62;
  }

  if (v23 != 6)
  {
    goto LABEL_69;
  }

  v24 = qword_27F39B488;
  v25 = v90;
  swift_beginAccess();
  v26 = *(v25 + v24);
  if (v26)
  {
    swift_beginAccess();
    v27 = *(v26 + 33);
    *(v26 + 33) = 0;
    if (v27 == 1)
    {
      swift_beginAccess();
      if (*(v26 + 34) == 1)
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v28 = *(v26 + 24);
          ObjectType = swift_getObjectType();

          sub_24F9287B8();
          (*(v28 + 8))(v13, ObjectType, v28);

          swift_unknownObjectRelease();
LABEL_63:
          (*(v88 + 8))(v13, v89);
        }
      }
    }
  }
}

void sub_24F2F1144(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PresenterError(0);
  MEMORY[0x28223BE20](v12);
  isEscapingClosureAtFileLocation = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5 < 0)
  {
    sub_24E60169C(v4 + qword_27F39CBF8, isEscapingClosureAtFileLocation + *(v12 + 20), &qword_27F228530, &unk_24F93C6E0);
    *isEscapingClosureAtFileLocation = a1;
    swift_beginAccess();
    v25 = v4[3];
    if (!v25)
    {
      v37 = a1;
      goto LABEL_26;
    }

    sub_24F2FA5C0(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
    v26 = swift_allocError();
    sub_24F2FA558(isEscapingClosureAtFileLocation, v27, type metadata accessor for PresenterError);
    v19 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v18 = *(v25 + v19);
    sub_24F2FA69C(a1, a2, v5);

    v28 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v25 + v19) = v18;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_16:
      v31 = *(v18 + 16);
      v30 = *(v18 + 24);
      if (v31 >= v30 >> 1)
      {
        v18 = sub_24E617130((v30 > 1), v31 + 1, 1, v18);
      }

      *(v18 + 16) = v31 + 1;
      *(v18 + 8 * v31 + 32) = v26;
      *(v25 + v19) = v18;
      swift_endAccess();

LABEL_26:
      sub_24F2FA5C0(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
      v38 = swift_allocError();
      sub_24F2FA558(isEscapingClosureAtFileLocation, v39, type metadata accessor for PresenterError);
      v40 = swift_allocObject();
      swift_weakInit();
      v41 = v4 + *(*v4 + 176);
      swift_beginAccess();
      v42 = *v41;
      v43 = *(v41 + 1);
      v44 = *(v41 + 2);
      v45 = v41[24];
      *v41 = v38;
      *(v41 + 1) = sub_24F2FA634;
      *(v41 + 2) = v40;
      v41[24] = 1;

      sub_24F24D234(v42, v43, v44, v45);
      sub_24EBDED8C(v42, v43, v44, v45);
      v46 = *v41;
      v47 = v41[24];
      if (v41[24])
      {
        if (v47 != 1)
        {
          if (*(v41 + 1) | *(v41 + 2) | v46)
          {
            if (v45 == 2 && v42 == 1 && !(v44 | v43))
            {
              goto LABEL_57;
            }
          }

          else if (v45 == 2 && !(v44 | v43 | v42))
          {
            goto LABEL_57;
          }
        }
      }

      else if (!v45 && v46 == v42)
      {
        v48 = v42;
        v49 = v43;
        v50 = v44;
        v51 = 0;
LABEL_56:
        sub_24EBDED8C(v48, v49, v50, v51);
LABEL_57:
        sub_24F2FA4F8(isEscapingClosureAtFileLocation, type metadata accessor for PresenterError);

        return;
      }

      v71 = *(v41 + 1);
      v72 = *(v41 + 2);
      aBlock = *v41;
      v77 = v71;
      v78 = v72;
      LOBYTE(v79) = v47;
      sub_24F24D234(v46, v71, v72, v47);
      sub_24F92AD88();
      sub_24EBDED8C(v42, v43, v44, v45);
      v48 = aBlock;
      v49 = v77;
      v50 = v78;
      v51 = v79;
      goto LABEL_56;
    }

LABEL_59:
    v18 = sub_24E617130(0, *(v18 + 16) + 1, 1, v18);
    *(v25 + v19) = v18;
    goto LABEL_16;
  }

  v75 = v11;
  v73 = v9;
  v74 = v8;
  v15 = *(*v4 + 1184);

  v15(a1, v5 & 1);
  *(v4 + qword_27F39CC10) = a2;

  v16 = v4 + *(*v4 + 176);
  swift_beginAccess();
  v17 = *v16;
  v18 = *(v16 + 1);
  v19 = *(v16 + 2);
  v20 = v16[24];
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *v16 = a1;
  v16[24] = 0;

  sub_24F24D234(v17, v18, v19, v20);
  sub_24EBDED8C(v17, v18, v19, v20);
  v21 = *v16;
  v22 = v16[24];
  if (!v16[24])
  {
    if (v20)
    {
      v32 = 0;
    }

    else
    {
      v32 = v21 == v17;
    }

    if (v32)
    {
      v33 = v17;
      v34 = v18;
      v35 = v19;
      v36 = 0;
LABEL_41:
      sub_24EBDED8C(v33, v34, v35, v36);
      goto LABEL_42;
    }

LABEL_40:
    v53 = *(v16 + 1);
    v54 = *(v16 + 2);
    aBlock = *v16;
    v77 = v53;
    v78 = v54;
    LOBYTE(v79) = v22;
    sub_24F24D234(v21, v53, v54, v22);
    sub_24F92AD88();
    sub_24EBDED8C(v17, v18, v19, v20);
    v33 = aBlock;
    v34 = v77;
    v35 = v78;
    v36 = v79;
    goto LABEL_41;
  }

  if (v22 == 1)
  {
    goto LABEL_40;
  }

  if (*(v16 + 1) | *(v16 + 2) | v21)
  {
    if (v20 != 2 || v17 != 1 || (v19 | v18) != 0)
    {
      goto LABEL_40;
    }
  }

  else if (v20 != 2 || (v19 | v18 | v17) != 0)
  {
    goto LABEL_40;
  }

LABEL_42:
  v55 = 1;
  if (v5)
  {
    v55 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) ^ 1;
  }

  v56 = qword_27F2326C8;
  v57 = *(v4 + *(*v4 + 688));
  v58 = swift_allocObject();
  *(v58 + 16) = v4;
  *(v58 + 24) = a2;
  *(v58 + 32) = 256;
  *(v58 + 34) = 1;
  *(v58 + 35) = v55 & 1;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_24F2FA28C;
  *(v25 + 24) = v58;
  v80 = sub_24E9727C0;
  v81 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v77 = 1107296256;
  v78 = sub_24E971290;
  v79 = &block_descriptor_150;
  v26 = _Block_copy(&aBlock);

  dispatch_sync(v57, v26);
  _Block_release(v26);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  v59 = v75;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_59;
  }

  *(v4 + v56) = v5 & 1;
  swift_beginAccess();
  v60 = v4[3];
  if (v60)
  {

    sub_24F91F638();
    sub_24F91F5E8();
    v62 = v61;
    (*(v73 + 8))(v59, v74);
    v63 = v60 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
    swift_beginAccess();
    *v63 = v62;
    *(v63 + 8) = 0;
    v64 = *(v60 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
    swift_beginAccess();
    *(v64 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  v65 = (v4 + *(*v4 + 752));
  v66 = *v65;
  if (*v65)
  {
    v67 = v65[1];

    v66(v68);
    sub_24E824448(v66, v67);
    v69 = *v65;
  }

  else
  {
    v69 = 0;
  }

  v70 = v65[1];
  *v65 = 0;
  v65[1] = 0;
  sub_24E824448(v69, v70);
}

void sub_24F2F1B58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v83 = a7;
  v82 = a6;
  v81 = a5;
  v80 = a4;
  v12 = v10;
  v13 = a3;
  v16 = sub_24F91F648();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PresenterError(0);
  MEMORY[0x28223BE20](v20);
  isEscapingClosureAtFileLocation = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v13 < 0)
  {
    v82 = a10;
    v83 = a9;
    sub_24E60169C(v12 + qword_27F39CBF8, isEscapingClosureAtFileLocation + *(v20 + 20), &qword_27F228530, &unk_24F93C6E0);
    *isEscapingClosureAtFileLocation = a1;
    swift_beginAccess();
    v31 = v12[3];
    if (!v31)
    {
      v43 = a1;
      goto LABEL_21;
    }

    sub_24F2FA5C0(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
    v27 = swift_allocError();
    sub_24F2FA558(isEscapingClosureAtFileLocation, v32, type metadata accessor for PresenterError);
    v33 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v26 = *&v31[v33];
    sub_24F2FA69C(a1, a2, v13);

    v34 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v31[v33] = v26;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_11:
      v37 = *(v26 + 16);
      v36 = *(v26 + 24);
      if (v37 >= v36 >> 1)
      {
        v26 = sub_24E617130((v36 > 1), v37 + 1, 1, v26);
      }

      *(v26 + 16) = v37 + 1;
      *(v26 + 8 * v37 + 32) = v27;
      *&v31[v33] = v26;
      swift_endAccess();

LABEL_21:
      sub_24F2FA5C0(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
      v44 = swift_allocError();
      sub_24F2FA558(isEscapingClosureAtFileLocation, v45, type metadata accessor for PresenterError);
      v46 = swift_allocObject();
      swift_weakInit();
      v47 = v12 + *(*v12 + 176);
      swift_beginAccess();
      v48 = *v47;
      v49 = *(v47 + 1);
      v50 = *(v47 + 2);
      v51 = v47[24];
      v52 = v82;
      *v47 = v44;
      *(v47 + 1) = v52;
      *(v47 + 2) = v46;
      v47[24] = 1;

      sub_24F24D234(v48, v49, v50, v51);
      sub_24EBDED8C(v48, v49, v50, v51);
      v53 = *v47;
      v54 = v47[24];
      if (v47[24])
      {
        if (v54 == 1)
        {
LABEL_49:
          v73 = *(v47 + 1);
          v74 = *(v47 + 2);
          aBlock = *v47;
          v85 = v73;
          v86 = v74;
          LOBYTE(v87) = v54;
          sub_24F24D234(v53, v73, v74, v54);
          sub_24F92AD88();
          sub_24EBDED8C(v48, v49, v50, v51);
          sub_24F2FA4F8(isEscapingClosureAtFileLocation, type metadata accessor for PresenterError);
          sub_24EBDED8C(aBlock, v85, v86, v87);
          goto LABEL_50;
        }

        if (*(v47 + 1) | *(v47 + 2) | v53)
        {
          if (v51 != 2 || v48 != 1 || v50 | v49)
          {
            goto LABEL_49;
          }
        }

        else if (v51 != 2 || v50 | v49 | v48)
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (v51 || v53 != v48)
        {
          goto LABEL_49;
        }

        sub_24EBDED8C(v48, v49, v50, 0);
      }

      sub_24F2FA4F8(isEscapingClosureAtFileLocation, type metadata accessor for PresenterError);
LABEL_50:

      return;
    }

LABEL_52:
    v26 = sub_24E617130(0, *(v26 + 16) + 1, 1, v26);
    *&v31[v33] = v26;
    goto LABEL_11;
  }

  v78 = a8;
  v79 = v19;
  v76 = v17;
  v77 = v16;
  v23 = *(*v12 + 1184);

  v23(a1, v13 & 1);
  *(v12 + qword_27F39CC10) = a2;

  v24 = v12 + *(*v12 + 176);
  swift_beginAccess();
  v25 = *v24;
  v26 = *(v24 + 1);
  v27 = *(v24 + 2);
  v28 = v24[24];
  *(v24 + 1) = 0;
  *(v24 + 2) = 0;
  *v24 = a1;
  v24[24] = 0;

  sub_24F24D234(v25, v26, v27, v28);
  sub_24EBDED8C(v25, v26, v27, v28);
  v29 = *v24;
  v30 = v24[24];
  if (!v24[24])
  {
    if (v28)
    {
      v38 = 0;
    }

    else
    {
      v38 = v29 == v25;
    }

    if (v38)
    {
      v39 = v25;
      v40 = v26;
      v41 = v27;
      v42 = 0;
LABEL_35:
      sub_24EBDED8C(v39, v40, v41, v42);
      goto LABEL_36;
    }

LABEL_34:
    v55 = *(v24 + 1);
    v56 = *(v24 + 2);
    aBlock = *v24;
    v85 = v55;
    v86 = v56;
    LOBYTE(v87) = v30;
    sub_24F24D234(v29, v55, v56, v30);
    sub_24F92AD88();
    sub_24EBDED8C(v25, v26, v27, v28);
    v39 = aBlock;
    v40 = v85;
    v41 = v86;
    v42 = v87;
    goto LABEL_35;
  }

  if (v30 == 1)
  {
    goto LABEL_34;
  }

  if (*(v24 + 1) | *(v24 + 2) | v29)
  {
    if (v28 != 2 || v25 != 1 || v27 | v26)
    {
      goto LABEL_34;
    }
  }

  else if (v28 != 2 || v27 | v26 | v25)
  {
    goto LABEL_34;
  }

LABEL_36:
  v57 = 1;
  if (v13)
  {
    v57 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) ^ 1;
  }

  v58 = qword_27F2326C8;
  v59 = *(v12 + *(*v12 + 688));
  v60 = swift_allocObject();
  *(v60 + 16) = v12;
  *(v60 + 24) = a2;
  *(v60 + 32) = 256;
  *(v60 + 34) = 1;
  *(v60 + 35) = v57 & 1;
  v33 = swift_allocObject();
  *(v33 + 16) = v82;
  *(v33 + 24) = v60;
  v88 = v83;
  v89 = v33;
  aBlock = MEMORY[0x277D85DD0];
  v85 = 1107296256;
  v86 = sub_24E971290;
  v87 = v78;
  v31 = _Block_copy(&aBlock);

  dispatch_sync(v59, v31);
  _Block_release(v31);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  v61 = v79;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_52;
  }

  *(v12 + v58) = v13 & 1;
  swift_beginAccess();
  v62 = v12[3];
  if (v62)
  {

    sub_24F91F638();
    sub_24F91F5E8();
    v64 = v63;
    (*(v76 + 8))(v61, v77);
    v65 = v62 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
    swift_beginAccess();
    *v65 = v64;
    *(v65 + 8) = 0;
    v66 = *(v62 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
    swift_beginAccess();
    *(v66 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  v67 = (v12 + *(*v12 + 752));
  v68 = *v67;
  if (*v67)
  {
    v69 = v67[1];

    v68(v70);
    sub_24E824448(v68, v69);
    v71 = *v67;
  }

  else
  {
    v71 = 0;
  }

  v72 = v67[1];
  *v67 = 0;
  v67[1] = 0;
  sub_24E824448(v71, v72);
}

void sub_24F2F24BC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PresenterError(0);
  MEMORY[0x28223BE20](v12);
  isEscapingClosureAtFileLocation = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5 < 0)
  {
    sub_24E60169C(v4 + qword_27F39CBF8, isEscapingClosureAtFileLocation + *(v12 + 20), &qword_27F228530, &unk_24F93C6E0);
    *isEscapingClosureAtFileLocation = a1;
    swift_beginAccess();
    v25 = v4[3];
    if (!v25)
    {
      v37 = a1;
      goto LABEL_26;
    }

    sub_24F2FA5C0(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
    v26 = swift_allocError();
    sub_24F2FA558(isEscapingClosureAtFileLocation, v27, type metadata accessor for PresenterError);
    v19 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v18 = *(v25 + v19);
    sub_24F2FA69C(a1, a2, v5);

    v28 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v25 + v19) = v18;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_16:
      v31 = *(v18 + 16);
      v30 = *(v18 + 24);
      if (v31 >= v30 >> 1)
      {
        v18 = sub_24E617130((v30 > 1), v31 + 1, 1, v18);
      }

      *(v18 + 16) = v31 + 1;
      *(v18 + 8 * v31 + 32) = v26;
      *(v25 + v19) = v18;
      swift_endAccess();

LABEL_26:
      sub_24F2FA5C0(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
      v38 = swift_allocError();
      sub_24F2FA558(isEscapingClosureAtFileLocation, v39, type metadata accessor for PresenterError);
      v40 = swift_allocObject();
      swift_weakInit();
      v41 = v4 + *(*v4 + 176);
      swift_beginAccess();
      v42 = *v41;
      v43 = *(v41 + 1);
      v44 = *(v41 + 2);
      v45 = v41[24];
      *v41 = v38;
      *(v41 + 1) = sub_24F2FA468;
      *(v41 + 2) = v40;
      v41[24] = 1;

      sub_24F24D234(v42, v43, v44, v45);
      sub_24EBDED8C(v42, v43, v44, v45);
      v46 = *v41;
      v47 = v41[24];
      if (v41[24])
      {
        if (v47 == 1)
        {
LABEL_56:
          v67 = *(v41 + 1);
          v68 = *(v41 + 2);
          aBlock = *v41;
          v73 = v67;
          v74 = v68;
          LOBYTE(v75) = v47;
          sub_24F24D234(v46, v67, v68, v47);
          sub_24F92AD88();
          sub_24EBDED8C(v42, v43, v44, v45);
          sub_24F2FA4F8(isEscapingClosureAtFileLocation, type metadata accessor for PresenterError);
          sub_24EBDED8C(aBlock, v73, v74, v75);
          goto LABEL_57;
        }

        if (*(v41 + 1) | *(v41 + 2) | v46)
        {
          if (v45 != 2 || v42 != 1 || v44 | v43)
          {
            goto LABEL_56;
          }
        }

        else if (v45 != 2 || v44 | v43 | v42)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v45 || v46 != v42)
        {
          goto LABEL_56;
        }

        sub_24EBDED8C(v42, v43, v44, 0);
      }

      sub_24F2FA4F8(isEscapingClosureAtFileLocation, type metadata accessor for PresenterError);
LABEL_57:

      return;
    }

LABEL_59:
    v18 = sub_24E617130(0, *(v18 + 16) + 1, 1, v18);
    *(v25 + v19) = v18;
    goto LABEL_16;
  }

  v71 = v11;
  v69 = v9;
  v70 = v8;
  v15 = *(*v4 + 1184);

  v15(a1, v5 & 1);
  *(v4 + qword_27F39CC10) = a2;

  v16 = v4 + *(*v4 + 176);
  swift_beginAccess();
  v17 = *v16;
  v18 = *(v16 + 1);
  v19 = *(v16 + 2);
  v20 = v16[24];
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *v16 = a1;
  v16[24] = 0;

  sub_24F24D234(v17, v18, v19, v20);
  sub_24EBDED8C(v17, v18, v19, v20);
  v21 = *v16;
  v22 = v16[24];
  if (!v16[24])
  {
    if (v20)
    {
      v32 = 0;
    }

    else
    {
      v32 = v21 == v17;
    }

    if (v32)
    {
      v33 = v17;
      v34 = v18;
      v35 = v19;
      v36 = 0;
LABEL_42:
      sub_24EBDED8C(v33, v34, v35, v36);
      goto LABEL_43;
    }

LABEL_41:
    v49 = *(v16 + 1);
    v50 = *(v16 + 2);
    aBlock = *v16;
    v73 = v49;
    v74 = v50;
    LOBYTE(v75) = v22;
    sub_24F24D234(v21, v49, v50, v22);
    sub_24F92AD88();
    sub_24EBDED8C(v17, v18, v19, v20);
    v33 = aBlock;
    v34 = v73;
    v35 = v74;
    v36 = v75;
    goto LABEL_42;
  }

  if (v22 == 1)
  {
    goto LABEL_41;
  }

  if (*(v16 + 1) | *(v16 + 2) | v21)
  {
    if (v20 != 2 || v17 != 1 || (v19 | v18) != 0)
    {
      goto LABEL_41;
    }
  }

  else if (v20 != 2 || (v19 | v18 | v17) != 0)
  {
    goto LABEL_41;
  }

LABEL_43:
  v51 = 1;
  if (v5)
  {
    v51 = *(a1 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_isIncomplete) ^ 1;
  }

  v52 = qword_27F2326C8;
  v53 = *(v4 + *(*v4 + 688));
  v54 = swift_allocObject();
  *(v54 + 16) = v4;
  *(v54 + 24) = a2;
  *(v54 + 32) = 256;
  *(v54 + 34) = 1;
  *(v54 + 35) = v51 & 1;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_24F2FA28C;
  *(v25 + 24) = v54;
  v76 = sub_24E9727C0;
  v77 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v73 = 1107296256;
  v74 = sub_24E971290;
  v75 = &block_descriptor_125_0;
  v26 = _Block_copy(&aBlock);

  dispatch_sync(v53, v26);
  _Block_release(v26);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  v55 = v71;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_59;
  }

  *(v4 + v52) = v5 & 1;
  swift_beginAccess();
  v56 = v4[3];
  if (v56)
  {

    sub_24F91F638();
    sub_24F91F5E8();
    v58 = v57;
    (*(v69 + 8))(v55, v70);
    v59 = v56 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
    swift_beginAccess();
    *v59 = v58;
    *(v59 + 8) = 0;
    v60 = *(v56 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
    swift_beginAccess();
    *(v60 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  v61 = (v4 + *(*v4 + 752));
  v62 = *v61;
  if (*v61)
  {
    v63 = v61[1];

    v62(v64);
    sub_24E824448(v62, v63);
    v65 = *v61;
  }

  else
  {
    v65 = 0;
  }

  v66 = v61[1];
  *v61 = 0;
  v61[1] = 0;
  sub_24E824448(v65, v66);
}

void sub_24F2F2DF8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PresenterError(0);
  MEMORY[0x28223BE20](v12);
  isEscapingClosureAtFileLocation = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5 < 0)
  {
    sub_24E60169C(v4 + qword_27F39CBF8, isEscapingClosureAtFileLocation + *(v12 + 20), &qword_27F228530, &unk_24F93C6E0);
    *isEscapingClosureAtFileLocation = a1;
    swift_beginAccess();
    v25 = v4[3];
    if (!v25)
    {
      v37 = a1;
      goto LABEL_26;
    }

    sub_24F2FA5C0(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
    v26 = swift_allocError();
    sub_24F2FA558(isEscapingClosureAtFileLocation, v27, type metadata accessor for PresenterError);
    v19 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v18 = *(v25 + v19);
    sub_24F2FA69C(a1, a2, v5);

    v28 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v25 + v19) = v18;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_16:
      v31 = *(v18 + 16);
      v30 = *(v18 + 24);
      if (v31 >= v30 >> 1)
      {
        v18 = sub_24E617130((v30 > 1), v31 + 1, 1, v18);
      }

      *(v18 + 16) = v31 + 1;
      *(v18 + 8 * v31 + 32) = v26;
      *(v25 + v19) = v18;
      swift_endAccess();

LABEL_26:
      sub_24F2FA5C0(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
      v38 = swift_allocError();
      sub_24F2FA558(isEscapingClosureAtFileLocation, v39, type metadata accessor for PresenterError);
      v40 = swift_allocObject();
      swift_weakInit();
      v41 = v4 + *(*v4 + 176);
      swift_beginAccess();
      v42 = *v41;
      v43 = *(v41 + 1);
      v44 = *(v41 + 2);
      v45 = v41[24];
      *v41 = v38;
      *(v41 + 1) = sub_24F2FA25C;
      *(v41 + 2) = v40;
      v41[24] = 1;

      sub_24F24D234(v42, v43, v44, v45);
      sub_24EBDED8C(v42, v43, v44, v45);
      v46 = *v41;
      v47 = v41[24];
      if (v41[24])
      {
        if (v47 == 1)
        {
LABEL_56:
          v67 = *(v41 + 1);
          v68 = *(v41 + 2);
          aBlock = *v41;
          v73 = v67;
          v74 = v68;
          LOBYTE(v75) = v47;
          sub_24F24D234(v46, v67, v68, v47);
          sub_24F92AD88();
          sub_24EBDED8C(v42, v43, v44, v45);
          sub_24F2FA4F8(isEscapingClosureAtFileLocation, type metadata accessor for PresenterError);
          sub_24EBDED8C(aBlock, v73, v74, v75);
          goto LABEL_57;
        }

        if (*(v41 + 1) | *(v41 + 2) | v46)
        {
          if (v45 != 2 || v42 != 1 || v44 | v43)
          {
            goto LABEL_56;
          }
        }

        else if (v45 != 2 || v44 | v43 | v42)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v45 || v46 != v42)
        {
          goto LABEL_56;
        }

        sub_24EBDED8C(v42, v43, v44, 0);
      }

      sub_24F2FA4F8(isEscapingClosureAtFileLocation, type metadata accessor for PresenterError);
LABEL_57:

      return;
    }

LABEL_59:
    v18 = sub_24E617130(0, *(v18 + 16) + 1, 1, v18);
    *(v25 + v19) = v18;
    goto LABEL_16;
  }

  v71 = v11;
  v69 = v9;
  v70 = v8;
  v15 = *(*v4 + 1184);

  v15(a1, v5 & 1);
  *(v4 + qword_27F39CC10) = a2;

  v16 = v4 + *(*v4 + 176);
  swift_beginAccess();
  v17 = *v16;
  v18 = *(v16 + 1);
  v19 = *(v16 + 2);
  v20 = v16[24];
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *v16 = a1;
  v16[24] = 0;

  sub_24F24D234(v17, v18, v19, v20);
  sub_24EBDED8C(v17, v18, v19, v20);
  v21 = *v16;
  v22 = v16[24];
  if (!v16[24])
  {
    if (v20)
    {
      v32 = 0;
    }

    else
    {
      v32 = v21 == v17;
    }

    if (v32)
    {
      v33 = v17;
      v34 = v18;
      v35 = v19;
      v36 = 0;
LABEL_42:
      sub_24EBDED8C(v33, v34, v35, v36);
      goto LABEL_43;
    }

LABEL_41:
    v49 = *(v16 + 1);
    v50 = *(v16 + 2);
    aBlock = *v16;
    v73 = v49;
    v74 = v50;
    LOBYTE(v75) = v22;
    sub_24F24D234(v21, v49, v50, v22);
    sub_24F92AD88();
    sub_24EBDED8C(v17, v18, v19, v20);
    v33 = aBlock;
    v34 = v73;
    v35 = v74;
    v36 = v75;
    goto LABEL_42;
  }

  if (v22 == 1)
  {
    goto LABEL_41;
  }

  if (*(v16 + 1) | *(v16 + 2) | v21)
  {
    if (v20 != 2 || v17 != 1 || (v19 | v18) != 0)
    {
      goto LABEL_41;
    }
  }

  else if (v20 != 2 || (v19 | v18 | v17) != 0)
  {
    goto LABEL_41;
  }

LABEL_43:
  v51 = 1;
  if (v5)
  {
    v51 = *(a1 + *(*a1 + 200)) ^ 1;
  }

  v52 = qword_27F2326C8;
  v53 = *(v4 + *(*v4 + 688));
  v54 = swift_allocObject();
  *(v54 + 16) = v4;
  *(v54 + 24) = a2;
  *(v54 + 32) = 256;
  *(v54 + 34) = 1;
  *(v54 + 35) = v51 & 1;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_24F2FA28C;
  *(v25 + 24) = v54;
  v76 = sub_24E9727C0;
  v77 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v73 = 1107296256;
  v74 = sub_24E971290;
  v75 = &block_descriptor_60;
  v26 = _Block_copy(&aBlock);

  dispatch_sync(v53, v26);
  _Block_release(v26);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  v55 = v71;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_59;
  }

  *(v4 + v52) = v5 & 1;
  swift_beginAccess();
  v56 = v4[3];
  if (v56)
  {

    sub_24F91F638();
    sub_24F91F5E8();
    v58 = v57;
    (*(v69 + 8))(v55, v70);
    v59 = v56 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
    swift_beginAccess();
    *v59 = v58;
    *(v59 + 8) = 0;
    v60 = *(v56 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
    swift_beginAccess();
    *(v60 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  v61 = (v4 + *(*v4 + 752));
  v62 = *v61;
  if (*v61)
  {
    v63 = v61[1];

    v62(v64);
    sub_24E824448(v62, v63);
    v65 = *v61;
  }

  else
  {
    v65 = 0;
  }

  v66 = v61[1];
  *v61 = 0;
  v61[1] = 0;
  sub_24E824448(v65, v66);
}

void sub_24F2F373C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  v12 = type metadata accessor for PresenterError(0);
  MEMORY[0x28223BE20](v12);
  isEscapingClosureAtFileLocation = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  if (v5 < 0)
  {
    sub_24E60169C(v4 + qword_27F39CBF8, isEscapingClosureAtFileLocation + *(v12 + 20), &qword_27F228530, &unk_24F93C6E0);
    *isEscapingClosureAtFileLocation = a1;
    swift_beginAccess();
    v8 = v4[3];
    if (!v8)
    {
      v41 = a1;
LABEL_22:
      sub_24F2FA5C0(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
      v42 = swift_allocError();
      sub_24F2FA558(isEscapingClosureAtFileLocation, v43, type metadata accessor for PresenterError);
      v44 = swift_allocObject();
      swift_weakInit();

      sub_24F2F0040(v42, sub_24F2FA4C8, v44, 1);
      sub_24F2FA4F8(isEscapingClosureAtFileLocation, type metadata accessor for PresenterError);

      return;
    }

    sub_24F2FA5C0(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
    v11 = swift_allocError();
    sub_24F2FA558(isEscapingClosureAtFileLocation, v21, type metadata accessor for PresenterError);
    v18 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v22 = *(v8 + v18);
    sub_24F2FA69C(a1, a2, v5);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + v18) = v22;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_7:
      v25 = v22[2];
      v24 = v22[3];
      if (v25 >= v24 >> 1)
      {
        v22 = sub_24E617130((v24 > 1), v25 + 1, 1, v22);
      }

      v22[2] = v25 + 1;
      v22[v25 + 4] = v11;
      *(v8 + v18) = v22;
      swift_endAccess();

      goto LABEL_22;
    }

LABEL_24:
    v22 = sub_24E617130(0, v22[2] + 1, 1, v22);
    *(v8 + v18) = v22;
    goto LABEL_7;
  }

  v45 = v9;
  v15 = *(*v4 + 1184);

  v15(a1, v5 & 1);
  *(v4 + qword_27F39CC10) = a2;

  v17 = sub_24F2F0040(v16, 0, 0, 0);
  v18 = qword_27F2326C8;
  if (*(v4 + qword_27F2326C8))
  {
    v19 = (*(*v4 + 1192))(v17);
    if ((v5 & 1) == 0)
    {
LABEL_4:
      v20 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v19 = 1;
    if ((v5 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v20 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) ^ 1;
LABEL_12:
  v26 = *(v4 + *(*v4 + 688));
  v27 = swift_allocObject();
  *(v27 + 16) = v4;
  *(v27 + 24) = a2;
  *(v27 + 32) = 256;
  *(v27 + 34) = v19 & 1;
  *(v27 + 35) = v20 & 1;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_24F2FA28C;
  *(v28 + 24) = v27;
  aBlock[4] = sub_24E9727C0;
  v47 = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E971290;
  aBlock[3] = &block_descriptor_139_0;
  v29 = _Block_copy(aBlock);
  v22 = v47;

  dispatch_sync(v26, v29);
  _Block_release(v29);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_24;
  }

  *(v4 + v18) = v5 & 1;
  swift_beginAccess();
  v30 = v4[3];
  if (v30)
  {

    sub_24F91F638();
    sub_24F91F5E8();
    v32 = v31;
    (*(v45 + 8))(v11, v8);
    v33 = v30 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
    swift_beginAccess();
    *v33 = v32;
    *(v33 + 8) = 0;
    v34 = *(v30 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
    swift_beginAccess();
    *(v34 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  v35 = (v4 + *(*v4 + 752));
  v36 = *v35;
  if (*v35)
  {
    v37 = v35[1];

    v36(v38);
    sub_24E824448(v36, v37);
    v39 = *v35;
  }

  else
  {
    v39 = 0;
  }

  v40 = v35[1];
  *v35 = 0;
  v35[1] = 0;
  sub_24E824448(v39, v40);
}

void sub_24F2F3E28(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PresenterError(0);
  MEMORY[0x28223BE20](v12);
  isEscapingClosureAtFileLocation = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5 < 0)
  {
    sub_24E60169C(v4 + qword_27F39CBF8, isEscapingClosureAtFileLocation + *(v12 + 20), &qword_27F228530, &unk_24F93C6E0);
    *isEscapingClosureAtFileLocation = a1;
    swift_beginAccess();
    v17 = v4[3];
    if (!v17)
    {
      v39 = a1;
LABEL_19:
      sub_24F2FA5C0(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
      v40 = swift_allocError();
      sub_24F2FA558(isEscapingClosureAtFileLocation, v41, type metadata accessor for PresenterError);
      v42 = swift_allocObject();
      swift_weakInit();

      sub_24F2F0040(v40, sub_24F2FA3F4, v42, 1);
      sub_24F2FA4F8(isEscapingClosureAtFileLocation, type metadata accessor for PresenterError);

      return;
    }

    sub_24F2FA5C0(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
    v11 = swift_allocError();
    sub_24F2FA558(isEscapingClosureAtFileLocation, v34, type metadata accessor for PresenterError);
    v18 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v23 = *(v17 + v18);
    sub_24F2FA69C(a1, a2, v5);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v17 + v18) = v23;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_13:
      v37 = v23[2];
      v36 = v23[3];
      if (v37 >= v36 >> 1)
      {
        v23 = sub_24E617130((v36 > 1), v37 + 1, 1, v23);
      }

      v23[2] = v37 + 1;
      v23[v37 + 4] = v11;
      *(v17 + v18) = v23;
      swift_endAccess();

      goto LABEL_19;
    }

LABEL_21:
    v23 = sub_24E617130(0, v23[2] + 1, 1, v23);
    *(v17 + v18) = v23;
    goto LABEL_13;
  }

  v43 = v9;
  v44 = v8;
  v15 = *(*v4 + 1184);

  v15(a1, v5 & 1);
  *(v4 + qword_27F39CC10) = a2;

  sub_24F2F0040(v16, 0, 0, 0);
  v17 = 1;
  if (v5)
  {
    v17 = a1[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_isIncomplete] ^ 1u;
  }

  v18 = qword_27F2326C8;
  v19 = *(v4 + *(*v4 + 688));
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  *(v20 + 24) = a2;
  *(v20 + 32) = 256;
  *(v20 + 34) = 1;
  *(v20 + 35) = v17 & 1;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_24F2FA28C;
  *(v21 + 24) = v20;
  aBlock[4] = sub_24E9727C0;
  v46 = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E971290;
  aBlock[3] = &block_descriptor_111;
  v22 = _Block_copy(aBlock);
  v23 = v46;

  dispatch_sync(v19, v22);
  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_21;
  }

  *(v4 + v18) = v5 & 1;
  swift_beginAccess();
  v24 = v4[3];
  if (v24)
  {

    sub_24F91F638();
    sub_24F91F5E8();
    v26 = v25;
    (*(v43 + 8))(v11, v44);
    v27 = v24 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
    swift_beginAccess();
    *v27 = v26;
    *(v27 + 8) = 0;
    v28 = *(v24 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
    swift_beginAccess();
    *(v28 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  v29 = (v4 + *(*v4 + 752));
  v30 = *v29;
  if (*v29)
  {
    v31 = v29[1];

    v30(v32);
    sub_24E824448(v30, v31);
    v33 = *v29;
  }

  else
  {
    v33 = 0;
  }

  v38 = v29[1];
  *v29 = 0;
  v29[1] = 0;
  sub_24E824448(v33, v38);
}

void sub_24F2F44C8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PresenterError(0);
  MEMORY[0x28223BE20](v12);
  isEscapingClosureAtFileLocation = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5 < 0)
  {
    sub_24E60169C(v4 + qword_27F39CBF8, isEscapingClosureAtFileLocation + *(v12 + 20), &qword_27F228530, &unk_24F93C6E0);
    *isEscapingClosureAtFileLocation = a1;
    swift_beginAccess();
    v17 = v4[3];
    if (!v17)
    {
      v39 = a1;
LABEL_19:
      sub_24F2FA5C0(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
      v40 = swift_allocError();
      sub_24F2FA558(isEscapingClosureAtFileLocation, v41, type metadata accessor for PresenterError);
      v42 = swift_allocObject();
      swift_weakInit();

      sub_24F2F0040(v40, sub_24F2FA394, v42, 1);
      sub_24F2FA4F8(isEscapingClosureAtFileLocation, type metadata accessor for PresenterError);

      return;
    }

    sub_24F2FA5C0(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
    v11 = swift_allocError();
    sub_24F2FA558(isEscapingClosureAtFileLocation, v34, type metadata accessor for PresenterError);
    v18 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v23 = *(v17 + v18);
    sub_24F2FA69C(a1, a2, v5);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v17 + v18) = v23;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_13:
      v37 = v23[2];
      v36 = v23[3];
      if (v37 >= v36 >> 1)
      {
        v23 = sub_24E617130((v36 > 1), v37 + 1, 1, v23);
      }

      v23[2] = v37 + 1;
      v23[v37 + 4] = v11;
      *(v17 + v18) = v23;
      swift_endAccess();

      goto LABEL_19;
    }

LABEL_21:
    v23 = sub_24E617130(0, v23[2] + 1, 1, v23);
    *(v17 + v18) = v23;
    goto LABEL_13;
  }

  v43 = v9;
  v44 = v8;
  v15 = *(*v4 + 1184);

  v15(a1, v5 & 1);
  *(v4 + qword_27F39CC10) = a2;

  sub_24F2F0040(v16, 0, 0, 0);
  v17 = 1;
  if (v5)
  {
    v17 = a1[OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete] ^ 1u;
  }

  v18 = qword_27F2326C8;
  v19 = *(v4 + *(*v4 + 688));
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  *(v20 + 24) = a2;
  *(v20 + 32) = 256;
  *(v20 + 34) = 1;
  *(v20 + 35) = v17 & 1;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_24F2FA28C;
  *(v21 + 24) = v20;
  aBlock[4] = sub_24E9727C0;
  v46 = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E971290;
  aBlock[3] = &block_descriptor_97;
  v22 = _Block_copy(aBlock);
  v23 = v46;

  dispatch_sync(v19, v22);
  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_21;
  }

  *(v4 + v18) = v5 & 1;
  swift_beginAccess();
  v24 = v4[3];
  if (v24)
  {

    sub_24F91F638();
    sub_24F91F5E8();
    v26 = v25;
    (*(v43 + 8))(v11, v44);
    v27 = v24 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
    swift_beginAccess();
    *v27 = v26;
    *(v27 + 8) = 0;
    v28 = *(v24 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
    swift_beginAccess();
    *(v28 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  v29 = (v4 + *(*v4 + 752));
  v30 = *v29;
  if (*v29)
  {
    v31 = v29[1];

    v30(v32);
    sub_24E824448(v30, v31);
    v33 = *v29;
  }

  else
  {
    v33 = 0;
  }

  v38 = v29[1];
  *v29 = 0;
  v29[1] = 0;
  sub_24E824448(v33, v38);
}

void sub_24F2F4B68(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  v12 = type metadata accessor for PresenterError(0);
  MEMORY[0x28223BE20](v12);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  if (v5 < 0)
  {
    sub_24E60169C(v4 + qword_27F39CBF8, v14 + *(v12 + 20), &qword_27F228530, &unk_24F93C6E0);
    *v14 = a1;
    swift_beginAccess();
    v8 = v4[3];
    if (!v8)
    {
      v38 = a1;
LABEL_17:
      sub_24F2FA5C0(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
      v39 = swift_allocError();
      sub_24F2FA558(v14, v40, type metadata accessor for PresenterError);
      v41 = swift_allocObject();
      swift_weakInit();

      sub_24F2F0040(v39, sub_24F2FA2D4, v41, 1);
      sub_24F2FA4F8(v14, type metadata accessor for PresenterError);

      return;
    }

    sub_24F2FA5C0(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
    v11 = swift_allocError();
    sub_24F2FA558(v14, v33, type metadata accessor for PresenterError);
    v17 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v22 = *(v8 + v17);
    sub_24F2FA69C(a1, a2, v5);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + v17) = v22;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_11:
      v36 = v22[2];
      v35 = v22[3];
      if (v36 >= v35 >> 1)
      {
        v22 = sub_24E617130((v35 > 1), v36 + 1, 1, v22);
      }

      v22[2] = v36 + 1;
      v22[v36 + 4] = v11;
      *(v8 + v17) = v22;
      swift_endAccess();

      goto LABEL_17;
    }

LABEL_19:
    v22 = sub_24E617130(0, v22[2] + 1, 1, v22);
    *(v8 + v17) = v22;
    goto LABEL_11;
  }

  v42 = v9;
  v15 = *(*v4 + 1184);

  v14 = v5 & 1;
  v15(a1, v14);
  *(v4 + qword_27F39CC10) = a2;

  sub_24F2F0040(v16, 0, 0, 0);
  v17 = qword_27F2326C8;
  v18 = *(v4 + *(*v4 + 688));
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  *(v19 + 24) = a2;
  *(v19 + 32) = 16843008;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_24F2FA28C;
  *(v20 + 24) = v19;
  aBlock[4] = sub_24E9727C0;
  v44 = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E971290;
  aBlock[3] = &block_descriptor_77_1;
  v21 = _Block_copy(aBlock);
  v22 = v44;

  dispatch_sync(v18, v21);
  _Block_release(v21);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  *(v4 + v17) = v14;
  swift_beginAccess();
  v23 = v4[3];
  if (v23)
  {

    sub_24F91F638();
    sub_24F91F5E8();
    v25 = v24;
    (*(v42 + 8))(v11, v8);
    v26 = v23 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
    swift_beginAccess();
    *v26 = v25;
    *(v26 + 8) = 0;
    v27 = *(v23 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
    swift_beginAccess();
    *(v27 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  v28 = (v4 + *(*v4 + 752));
  v29 = *v28;
  if (*v28)
  {
    v30 = v28[1];

    v29(v31);
    sub_24E824448(v29, v30);
    v32 = *v28;
  }

  else
  {
    v32 = 0;
  }

  v37 = v28[1];
  *v28 = 0;
  v28[1] = 0;
  sub_24E824448(v32, v37);
}

void sub_24F2F51E4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PresenterError(0);
  MEMORY[0x28223BE20](v12);
  isEscapingClosureAtFileLocation = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5 < 0)
  {
    sub_24E60169C(v4 + qword_27F39CBF8, isEscapingClosureAtFileLocation + *(v12 + 20), &qword_27F228530, &unk_24F93C6E0);
    *isEscapingClosureAtFileLocation = a1;
    swift_beginAccess();
    v16 = v4[3];
    if (!v16)
    {
      v38 = a1;
LABEL_19:
      sub_24F2FA5C0(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
      v39 = swift_allocError();
      sub_24F2FA558(isEscapingClosureAtFileLocation, v40, type metadata accessor for PresenterError);
      v41 = swift_allocObject();
      swift_weakInit();

      sub_24F2F0040(v39, sub_24F2F9FA8, v41, 1);
      sub_24F2FA4F8(isEscapingClosureAtFileLocation, type metadata accessor for PresenterError);

      return;
    }

    sub_24F2FA5C0(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
    v11 = swift_allocError();
    sub_24F2FA558(isEscapingClosureAtFileLocation, v33, type metadata accessor for PresenterError);
    v17 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v22 = *(v16 + v17);
    sub_24F2FA69C(a1, a2, v5);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v16 + v17) = v22;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_13:
      v36 = v22[2];
      v35 = v22[3];
      if (v36 >= v35 >> 1)
      {
        v22 = sub_24E617130((v35 > 1), v36 + 1, 1, v22);
      }

      v22[2] = v36 + 1;
      v22[v36 + 4] = v11;
      *(v16 + v17) = v22;
      swift_endAccess();

      goto LABEL_19;
    }

LABEL_21:
    v22 = sub_24E617130(0, v22[2] + 1, 1, v22);
    *(v16 + v17) = v22;
    goto LABEL_13;
  }

  v42 = v9;
  v43 = v8;

  sub_24F2F77B0(a1, v5 & 1);
  *(v4 + qword_27F39CC10) = a2;

  sub_24F2F0040(v15, 0, 0, 0);
  v16 = 1;
  if (v5)
  {
    v16 = a1[OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete] ^ 1u;
  }

  v17 = qword_27F2326C8;
  v18 = *(v4 + *(*v4 + 688));
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  *(v19 + 24) = a2;
  *(v19 + 32) = 256;
  *(v19 + 34) = 1;
  *(v19 + 35) = v16 & 1;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_24F2F9FD8;
  *(v20 + 24) = v19;
  aBlock[4] = sub_24E972460;
  v45 = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E971290;
  aBlock[3] = &block_descriptor_141;
  v21 = _Block_copy(aBlock);
  v22 = v45;

  dispatch_sync(v18, v21);
  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_21;
  }

  *(v4 + v17) = v5 & 1;
  swift_beginAccess();
  v23 = v4[3];
  if (v23)
  {

    sub_24F91F638();
    sub_24F91F5E8();
    v25 = v24;
    (*(v42 + 8))(v11, v43);
    v26 = v23 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
    swift_beginAccess();
    *v26 = v25;
    *(v26 + 8) = 0;
    v27 = *(v23 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
    swift_beginAccess();
    *(v27 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  v28 = (v4 + *(*v4 + 752));
  v29 = *v28;
  if (*v28)
  {
    v30 = v28[1];

    v29(v31);
    sub_24E824448(v29, v30);
    v32 = *v28;
  }

  else
  {
    v32 = 0;
  }

  v37 = v28[1];
  *v28 = 0;
  v28[1] = 0;
  sub_24E824448(v32, v37);
}

void sub_24F2F585C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ArcadePage(0);
  v21 = v19;
  v22 = &protocol witness table for BasePage;
  v10 = sub_24F2FA5C0(&qword_27F23E6F8, type metadata accessor for ArcadePage, &protocol conformance descriptor for BasePage);
  v23 = v10;
  v20[0] = a1;
  swift_beginAccess();

  sub_24E9CBF30(v20, (v2 + 5), &qword_27F224F98, &unk_24F974A70);
  swift_endAccess();
  sub_24F2EF90C();
  sub_24E601704(v20, &qword_27F224F98, &unk_24F974A70);
  if ((a2 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) & 1) == 0)
  {
    swift_beginAccess();
    if (v2[3])
    {

      sub_24F91F638();
      sub_24F91F5E8();
      v12 = v11;
      (*(v7 + 8))(v9, v6);
      PendingPageRender.initialRequestEndTime.setter(v12, 0);
    }

    if ((a2 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) & 1) == 0)
    {
      swift_beginAccess();
      if (v2[3])
      {
        v22 = &protocol witness table for BasePage;
        v23 = v10;
        v21 = v19;
        v20[0] = a1;

        PendingPageRender.use(pageRenderEventFrom:)(v20);

        sub_24E601704(v20, &qword_27F224F98, &unk_24F974A70);
      }

      if ((a2 & 1) == 0)
      {
        if (*(a1 + 16))
        {
          type metadata accessor for PageRefreshGate(0);
          swift_allocObject();

          v14 = sub_24EA69948(v13);
          *(v3 + *(*v3 + 736)) = v14;

          v15 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v16 = *(v14 + 16);
          v17 = *(v14 + 24);
          *(v14 + 16) = sub_24EBD4CA8;
          *(v14 + 24) = v15;

          sub_24E824448(v16, v17);
        }

        else
        {
          *(v2 + *(*v2 + 736)) = 0;
        }
      }
    }
  }
}

void sub_24F2F5BDC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ArticlePage(0);
  v21 = v19;
  v22 = &protocol witness table for BasePage;
  v10 = sub_24F2FA5C0(&qword_27F216890, type metadata accessor for ArticlePage, &protocol conformance descriptor for BasePage);
  v23 = v10;
  v20[0] = a1;
  swift_beginAccess();

  sub_24E9CBF30(v20, (v2 + 5), &qword_27F224F98, &unk_24F974A70);
  swift_endAccess();
  sub_24F2EF90C();
  sub_24E601704(v20, &qword_27F224F98, &unk_24F974A70);
  if ((a2 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_isIncomplete) & 1) == 0)
  {
    swift_beginAccess();
    if (v2[3])
    {

      sub_24F91F638();
      sub_24F91F5E8();
      v12 = v11;
      (*(v7 + 8))(v9, v6);
      PendingPageRender.initialRequestEndTime.setter(v12, 0);
    }

    if ((a2 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_isIncomplete) & 1) == 0)
    {
      swift_beginAccess();
      if (v2[3])
      {
        v22 = &protocol witness table for BasePage;
        v23 = v10;
        v21 = v19;
        v20[0] = a1;

        PendingPageRender.use(pageRenderEventFrom:)(v20);

        sub_24E601704(v20, &qword_27F224F98, &unk_24F974A70);
      }

      if ((a2 & 1) == 0)
      {
        if (*(a1 + 16))
        {
          type metadata accessor for PageRefreshGate(0);
          swift_allocObject();

          v14 = sub_24EA69948(v13);
          *(v3 + *(*v3 + 736)) = v14;

          v15 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v16 = *(v14 + 16);
          v17 = *(v14 + 24);
          *(v14 + 16) = sub_24F2FA3C4;
          *(v14 + 24) = v15;

          sub_24E824448(v16, v17);
        }

        else
        {
          *(v2 + *(*v2 + 736)) = 0;
        }
      }
    }
  }
}

void sub_24F2F5F5C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for GenericPage(0);
  v21 = v19;
  v22 = &protocol witness table for BasePage;
  v10 = sub_24F2FA5C0(&qword_27F235598, type metadata accessor for GenericPage, &protocol conformance descriptor for BasePage);
  v23 = v10;
  v20[0] = a1;
  swift_beginAccess();

  sub_24E9CBF30(v20, (v2 + 5), &qword_27F224F98, &unk_24F974A70);
  swift_endAccess();
  sub_24F2EF90C();
  sub_24E601704(v20, &qword_27F224F98, &unk_24F974A70);
  if ((a2 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) & 1) == 0)
  {
    swift_beginAccess();
    if (v2[3])
    {

      sub_24F91F638();
      sub_24F91F5E8();
      v12 = v11;
      (*(v7 + 8))(v9, v6);
      PendingPageRender.initialRequestEndTime.setter(v12, 0);
    }

    if ((a2 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) & 1) == 0)
    {
      swift_beginAccess();
      if (v2[3])
      {
        v22 = &protocol witness table for BasePage;
        v23 = v10;
        v21 = v19;
        v20[0] = a1;

        PendingPageRender.use(pageRenderEventFrom:)(v20);

        sub_24E601704(v20, &qword_27F224F98, &unk_24F974A70);
      }

      if ((a2 & 1) == 0)
      {
        if (*(a1 + 16))
        {
          type metadata accessor for PageRefreshGate(0);
          swift_allocObject();

          v14 = sub_24EA69948(v13);
          *(v3 + *(*v3 + 736)) = v14;

          v15 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v16 = *(v14 + 16);
          v17 = *(v14 + 24);
          *(v14 + 16) = sub_24F2FA498;
          *(v14 + 24) = v15;

          sub_24E824448(v16, v17);
        }

        else
        {
          *(v2 + *(*v2 + 736)) = 0;
        }
      }
    }
  }
}

void sub_24F2F62DC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ReviewsPage(0);
  v21 = v19;
  v22 = &protocol witness table for BasePage;
  v10 = sub_24F2FA5C0(&qword_27F23E710, type metadata accessor for ReviewsPage, &protocol conformance descriptor for BasePage);
  v23 = v10;
  v20[0] = a1;
  swift_beginAccess();

  sub_24E9CBF30(v20, (v2 + 5), &qword_27F224F98, &unk_24F974A70);
  swift_endAccess();
  sub_24F2EF90C();
  sub_24E601704(v20, &qword_27F224F98, &unk_24F974A70);
  if ((a2 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) & 1) == 0)
  {
    swift_beginAccess();
    if (v2[3])
    {

      sub_24F91F638();
      sub_24F91F5E8();
      v12 = v11;
      (*(v7 + 8))(v9, v6);
      PendingPageRender.initialRequestEndTime.setter(v12, 0);
    }

    if ((a2 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) & 1) == 0)
    {
      swift_beginAccess();
      if (v2[3])
      {
        v22 = &protocol witness table for BasePage;
        v23 = v10;
        v21 = v19;
        v20[0] = a1;

        PendingPageRender.use(pageRenderEventFrom:)(v20);

        sub_24E601704(v20, &qword_27F224F98, &unk_24F974A70);
      }

      if ((a2 & 1) == 0)
      {
        if (*(a1 + 16))
        {
          type metadata accessor for PageRefreshGate(0);
          swift_allocObject();

          v14 = sub_24EA69948(v13);
          *(v3 + *(*v3 + 736)) = v14;

          v15 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v16 = *(v14 + 16);
          v17 = *(v14 + 24);
          *(v14 + 16) = sub_24F2FA334;
          *(v14 + 24) = v15;

          sub_24E824448(v16, v17);
        }

        else
        {
          *(v2 + *(*v2 + 736)) = 0;
        }
      }
    }
  }
}

void sub_24F2F665C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SearchFocusPage(0);
  v21 = v19;
  v22 = &protocol witness table for BasePage;
  v10 = sub_24F2FA5C0(&qword_27F23E708, type metadata accessor for SearchFocusPage, &protocol conformance descriptor for BasePage);
  v23 = v10;
  v20[0] = a1;
  swift_beginAccess();

  sub_24E9CBF30(v20, (v2 + 5), &qword_27F224F98, &unk_24F974A70);
  swift_endAccess();
  sub_24F2EF90C();
  sub_24E601704(v20, &qword_27F224F98, &unk_24F974A70);
  if ((a2 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) & 1) == 0)
  {
    swift_beginAccess();
    if (v2[3])
    {

      sub_24F91F638();
      sub_24F91F5E8();
      v12 = v11;
      (*(v7 + 8))(v9, v6);
      PendingPageRender.initialRequestEndTime.setter(v12, 0);
    }

    if ((a2 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) & 1) == 0)
    {
      swift_beginAccess();
      if (v2[3])
      {
        v22 = &protocol witness table for BasePage;
        v23 = v10;
        v21 = v19;
        v20[0] = a1;

        PendingPageRender.use(pageRenderEventFrom:)(v20);

        sub_24E601704(v20, &qword_27F224F98, &unk_24F974A70);
      }

      if ((a2 & 1) == 0)
      {
        if (*(a1 + 16))
        {
          type metadata accessor for PageRefreshGate(0);
          swift_allocObject();

          v14 = sub_24EA69948(v13);
          *(v3 + *(*v3 + 736)) = v14;

          v15 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v16 = *(v14 + 16);
          v17 = *(v14 + 24);
          *(v14 + 16) = sub_24F2FA304;
          *(v14 + 24) = v15;

          sub_24E824448(v16, v17);
        }

        else
        {
          *(v2 + *(*v2 + 736)) = 0;
        }
      }
    }
  }
}

void sub_24F2F69DC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TopChartSegment(0);
  v21 = v19;
  v22 = &protocol witness table for BasePage;
  v10 = sub_24F2FA5C0(&qword_27F22CEE8, type metadata accessor for TopChartSegment, &protocol conformance descriptor for BasePage);
  v23 = v10;
  v20[0] = a1;
  swift_beginAccess();

  sub_24E9CBF30(v20, (v2 + 5), &qword_27F224F98, &unk_24F974A70);
  swift_endAccess();
  sub_24F2EF90C();
  sub_24E601704(v20, &qword_27F224F98, &unk_24F974A70);
  if ((a2 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_isIncomplete) & 1) == 0)
  {
    swift_beginAccess();
    if (v2[3])
    {

      sub_24F91F638();
      sub_24F91F5E8();
      v12 = v11;
      (*(v7 + 8))(v9, v6);
      PendingPageRender.initialRequestEndTime.setter(v12, 0);
    }

    if ((a2 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_isIncomplete) & 1) == 0)
    {
      swift_beginAccess();
      if (v2[3])
      {
        v22 = &protocol witness table for BasePage;
        v23 = v10;
        v21 = v19;
        v20[0] = a1;

        PendingPageRender.use(pageRenderEventFrom:)(v20);

        sub_24E601704(v20, &qword_27F224F98, &unk_24F974A70);
      }

      if ((a2 & 1) == 0)
      {
        if (*(a1 + 16))
        {
          type metadata accessor for PageRefreshGate(0);
          swift_allocObject();

          v14 = sub_24EA69948(v13);
          *(v3 + *(*v3 + 736)) = v14;

          v15 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v16 = *(v14 + 16);
          v17 = *(v14 + 24);
          *(v14 + 16) = sub_24F2FA438;
          *(v14 + 24) = v15;

          sub_24E824448(v16, v17);
        }

        else
        {
          *(v2 + *(*v2 + 736)) = 0;
        }
      }
    }
  }
}

void sub_24F2F6D5C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SearchLandingPage(0);
  v21 = v19;
  v22 = &protocol witness table for BasePage;
  v10 = sub_24F2FA5C0(&qword_27F23E718, type metadata accessor for SearchLandingPage, &protocol conformance descriptor for BasePage);
  v23 = v10;
  v20[0] = a1;
  swift_beginAccess();

  sub_24E9CBF30(v20, (v2 + 5), &qword_27F224F98, &unk_24F974A70);
  swift_endAccess();
  sub_24F2EF90C();
  sub_24E601704(v20, &qword_27F224F98, &unk_24F974A70);
  if ((a2 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) & 1) == 0)
  {
    swift_beginAccess();
    if (v2[3])
    {

      sub_24F91F638();
      sub_24F91F5E8();
      v12 = v11;
      (*(v7 + 8))(v9, v6);
      PendingPageRender.initialRequestEndTime.setter(v12, 0);
    }

    if ((a2 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) & 1) == 0)
    {
      swift_beginAccess();
      if (v2[3])
      {
        v22 = &protocol witness table for BasePage;
        v23 = v10;
        v21 = v19;
        v20[0] = a1;

        PendingPageRender.use(pageRenderEventFrom:)(v20);

        sub_24E601704(v20, &qword_27F224F98, &unk_24F974A70);
      }

      if ((a2 & 1) == 0)
      {
        if (*(a1 + 16))
        {
          type metadata accessor for PageRefreshGate(0);
          swift_allocObject();

          v14 = sub_24EA69948(v13);
          *(v3 + *(*v3 + 736)) = v14;

          v15 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v16 = *(v14 + 16);
          v17 = *(v14 + 24);
          *(v14 + 16) = sub_24F2FA364;
          *(v14 + 24) = v15;

          sub_24E824448(v16, v17);
        }

        else
        {
          *(v2 + *(*v2 + 736)) = 0;
        }
      }
    }
  }
}

void sub_24F2F70DC(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v18) = a2;
  v5 = sub_24F91F648();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v9 = type metadata accessor for SearchResultsPage(0);
  v20 = v9;
  v21 = &protocol witness table for BasePage;
  v10 = sub_24F2FA5C0(&qword_27F23E700, type metadata accessor for SearchResultsPage, &protocol conformance descriptor for BasePage);
  v22 = v10;
  v19[0] = a1;
  swift_beginAccess();

  sub_24E9CBF30(v19, (v2 + 5), &qword_27F224F98, &unk_24F974A70);
  swift_endAccess();
  sub_24F2EF90C();
  sub_24E601704(v19, &qword_27F224F98, &unk_24F974A70);
  swift_beginAccess();
  if (v2[3])
  {

    sub_24F91F638();
    sub_24F91F5E8();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    PendingPageRender.initialRequestEndTime.setter(v12, 0);

    if (v2[3])
    {
      v21 = &protocol witness table for BasePage;
      v22 = v10;
      v20 = v9;
      v19[0] = a1;

      PendingPageRender.use(pageRenderEventFrom:)(v19);

      sub_24E601704(v19, &qword_27F224F98, &unk_24F974A70);
    }
  }

  if ((v18 & 0x100000000) == 0)
  {
    if (*(a1 + 16))
    {
      type metadata accessor for PageRefreshGate(0);
      swift_allocObject();

      v14 = sub_24EA69948(v13);
      *(v3 + *(*v3 + 736)) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      *(v14 + 16) = sub_24F2FA2A4;
      *(v14 + 24) = v15;

      sub_24E824448(v16, v17);
    }

    else
    {
      *(v2 + *(*v2 + 736)) = 0;
    }
  }
}

void sub_24F2F7418(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SearchChartsAndCategoriesPage(0);
  v22 = v20;
  v23 = &protocol witness table for BasePage;
  v10 = sub_24F2FA5C0(&qword_27F23E6F0, type metadata accessor for SearchChartsAndCategoriesPage, &protocol conformance descriptor for BasePage);
  v24 = v10;
  v21[0] = a1;
  swift_beginAccess();

  sub_24E9CBF30(v21, (v2 + 5), &qword_27F224F98, &unk_24F974A70);
  swift_endAccess();
  sub_24F2EF90C();
  sub_24E601704(v21, &qword_27F224F98, &unk_24F974A70);
  if (a2)
  {
    v11 = *a1;
    if (*(a1 + *(*a1 + 200)))
    {
LABEL_7:
      if (*(a1 + *(v11 + 200)))
      {
        return;
      }

      goto LABEL_8;
    }
  }

  swift_beginAccess();
  if (v2[3])
  {

    sub_24F91F638();
    sub_24F91F5E8();
    v13 = v12;
    (*(v7 + 8))(v9, v6);
    PendingPageRender.initialRequestEndTime.setter(v13, 0);
  }

  if (a2)
  {
    v11 = *a1;
    goto LABEL_7;
  }

LABEL_8:
  swift_beginAccess();
  if (v2[3])
  {
    v23 = &protocol witness table for BasePage;
    v24 = v10;
    v22 = v20;
    v21[0] = a1;

    PendingPageRender.use(pageRenderEventFrom:)(v21);

    sub_24E601704(v21, &qword_27F224F98, &unk_24F974A70);
  }

  if ((a2 & 1) == 0)
  {
    if (a1[2])
    {
      type metadata accessor for PageRefreshGate(0);
      swift_allocObject();

      v15 = sub_24EA69948(v14);
      *(v3 + *(*v3 + 736)) = v15;

      v16 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v17 = *(v15 + 16);
      v18 = *(v15 + 24);
      *(v15 + 16) = sub_24F2FA22C;
      *(v15 + 24) = v16;

      sub_24E824448(v17, v18);
    }

    else
    {
      *(v2 + *(*v2 + 736)) = 0;
    }
  }
}

void sub_24F2F77B0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ArcadeSeeAllGamesPage(0);
  v21 = v19;
  v22 = &protocol witness table for BasePage;
  v10 = sub_24F2FA5C0(qword_27F22E110, type metadata accessor for ArcadeSeeAllGamesPage, &protocol conformance descriptor for BasePage);
  v23 = v10;
  v20[0] = a1;
  swift_beginAccess();

  sub_24E9CBF30(v20, (v2 + 5), &qword_27F224F98, &unk_24F974A70);
  swift_endAccess();
  sub_24F2EF90C();
  sub_24E601704(v20, &qword_27F224F98, &unk_24F974A70);
  if ((a2 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) & 1) == 0)
  {
    swift_beginAccess();
    if (v2[3])
    {

      sub_24F91F638();
      sub_24F91F5E8();
      v12 = v11;
      (*(v7 + 8))(v9, v6);
      PendingPageRender.initialRequestEndTime.setter(v12, 0);
    }

    if ((a2 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) & 1) == 0)
    {
      swift_beginAccess();
      if (v2[3])
      {
        v22 = &protocol witness table for BasePage;
        v23 = v10;
        v21 = v19;
        v20[0] = a1;

        PendingPageRender.use(pageRenderEventFrom:)(v20);

        sub_24E601704(v20, &qword_27F224F98, &unk_24F974A70);
      }

      if ((a2 & 1) == 0)
      {
        if (*(a1 + 16))
        {
          type metadata accessor for PageRefreshGate(0);
          swift_allocObject();

          v14 = sub_24EA69948(v13);
          *(v3 + *(*v3 + 736)) = v14;

          v15 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v16 = *(v14 + 16);
          v17 = *(v14 + 24);
          *(v14 + 16) = sub_24F2FA008;
          *(v14 + 24) = v15;

          sub_24E824448(v16, v17);
        }

        else
        {
          *(v2 + *(*v2 + 736)) = 0;
        }
      }
    }
  }
}

void sub_24F2F7B30()
{
  v1 = sub_24F929AB8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + qword_27F39B480);
  swift_beginAccess();
  if (!v5[1])
  {
    if (qword_27F210278 != -1)
    {
      swift_once();
    }

    v7 = *(off_27F229AB8 + 3);
    v6 = *(off_27F229AB8 + 4);
    *v5 = v7;
    v5[1] = v6;
    swift_bridgeObjectRetain_n();

    if (v6)
    {
      swift_beginAccess();
      if (*(v0 + 32))
      {
        v8 = qword_27F210658;

        if (v8 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1, qword_27F22E3B8);
        v10[0] = v7;
        v10[1] = v6;
        if (qword_27F210670 != -1)
        {
          swift_once();
        }

        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910, &unk_24F974C00);
        __swift_project_value_buffer(v9, qword_27F22E400);
        sub_24F929A48();

        sub_24F92A098();

        (*(v2 + 8))(v4, v1);
      }

      else
      {
      }
    }
  }
}

double sub_24F2F7D88(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a2(1);
  }

  return result;
}

double sub_24F2F7EC4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a3(1);
  }

  return result;
}

uint64_t sub_24F2F7F28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58, &unk_24F988B70);
  __swift_allocate_value_buffer(v0, qword_27F23E6B8);
  __swift_project_value_buffer(v0, qword_27F23E6B8);
  return sub_24F928C68();
}

uint64_t static ArcadeSeeAllGamesDiffablePagePresenter.displayStyleKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F2110F0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58, &unk_24F988B70);
  v3 = __swift_project_value_buffer(v2, qword_27F23E6B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ArcadeSeeAllGamesDiffablePagePresenter.EmptyStateData.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ArcadeSeeAllGamesDiffablePagePresenter.EmptyStateData.subtitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ArcadeSeeAllGamesDiffablePagePresenter.__allocating_init(objectGraph:pageUrl:facetsPresenter:metricsPipeline:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_24F2F9288(a1, a2, a3, a4);

  return v8;
}

uint64_t ArcadeSeeAllGamesDiffablePagePresenter.init(objectGraph:pageUrl:facetsPresenter:metricsPipeline:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_24F2F9288(a1, a2, a3, a4);

  return v4;
}

uint64_t ArcadeSeeAllGamesDiffablePagePresenter.pageTitle.getter()
{
  v1 = (v0 + qword_27F39E2B8);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void ArcadeSeeAllGamesDiffablePagePresenter.displayStyle.getter(_BYTE *a1@<X8>)
{
  v3 = qword_27F39E2C0;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_24F2F8264(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27F39E2C0;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v5;
  sub_24F2F8328(&v6);
}

void ArcadeSeeAllGamesDiffablePagePresenter.displayStyle.setter(char *a1)
{
  v2 = *a1;
  v3 = qword_27F39E2C0;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v5 = v4;
  sub_24F2F8328(&v5);
}

void sub_24F2F8328(unsigned __int8 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58, &unk_24F988B70);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - v5;
  v7 = *a1;
  v8 = qword_27F39E2C0;
  swift_beginAccess();
  if (*(v1 + v8))
  {
    v9 = 0x746361706D6F63;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (v7)
  {
    v10 = 0x746361706D6F63;
  }

  else
  {
    v10 = 0x746C7561666564;
  }

  if (v9 == v10)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v11 = sub_24F92CE08();
    swift_bridgeObjectRelease_n();
    if ((v11 & 1) == 0)
    {
      sub_24F929388();
      _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
      if (qword_27F2103B0 != -1)
      {
        swift_once();
      }

      v12 = __swift_project_value_buffer(v3, qword_27F22A908);
      (*(v4 + 16))(v6, v12, v3);
      if (*(v1 + v8))
      {
        v13 = 0x746361706D6F63;
      }

      else
      {
        v13 = 0x746C7561666564;
      }

      v14[1] = v13;
      v14[2] = 0xE700000000000000;
      sub_24F928878();

      sub_24F23B690(1);
    }
  }
}

void (*ArcadeSeeAllGamesDiffablePagePresenter.displayStyle.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_27F39E2C0;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_24F2F85D4;
}

void sub_24F2F85D4(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(v4 + v3);
  *(v4 + v3) = *(*a1 + 40);
  if (a2)
  {
    v7 = v5;
    v6 = &v7;
  }

  else
  {
    v8 = v5;
    v6 = &v8;
  }

  sub_24F2F8328(v6);

  free(v2);
}

uint64_t sub_24F2F8660(uint64_t a1)
{
  v56 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  v55 = *(v2 - 8);
  v3 = *(v55 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v58 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v50 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - v8;
  v57 = v1[2];
  sub_24E60169C(v1 + qword_27F39CBF8, &v50 - v8, &qword_27F228530, &unk_24F93C6E0);
  v10 = qword_27F39E2C0;
  swift_beginAccess();
  LODWORD(v54) = *(v1 + v10);
  swift_beginAccess();
  v59 = v1[3];
  swift_beginAccess();
  v11 = v1[4];
  type metadata accessor for ArcadeSeeAllGamesDiffablePageContentPresenter(0);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  swift_weakInit();
  v50 = v9;
  sub_24E60169C(v9, v6, &qword_27F228530, &unk_24F93C6E0);
  v14 = (*(v55 + 80) + 24) & ~*(v55 + 80);
  v15 = v14 + v3;
  v16 = (v14 + v3) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  sub_24E911D90(v6, v17 + v14);
  *(v17 + v15) = v54;
  v18 = v57;
  *(v17 + v16 + 8) = v57;
  *(v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8)) = v11;
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v11;
  sub_24E60169C(v9, v58, &qword_27F228530, &unk_24F93C6E0);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_24EFBB710;
  *(v20 + 24) = v18;
  v54 = v20;
  *(v12 + qword_27F22F198) = 0;
  v21 = MEMORY[0x277D84F90];
  *(v12 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v22 = qword_27F39C780;

  swift_retain_n();
  v55 = v11;
  swift_retain_n();

  *(v12 + v22) = sub_24E60986C(v21);
  v23 = (v12 + qword_27F22F1A8);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v12 + qword_27F22F1B0);
  *v24 = 0;
  v24[1] = 0;
  v53 = v24;
  v25 = (v12 + qword_27F22F1B8);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v12 + qword_27F22F1C0);
  *v26 = 0;
  v26[1] = 0;
  v52 = v26;
  v27 = (v12 + qword_27F22F1C8);
  *v27 = 0;
  v27[1] = 0;
  v51 = v27;
  v28 = (v12 + qword_27F39C788);
  *v28 = 0u;
  v28[1] = 0u;
  *(v28 + 25) = 0u;
  *(v12 + qword_27F39C790) = 0;
  *(v12 + qword_27F22F1D0) = 0;
  *(v12 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v12 + qword_27F39C798) = 0;
  v29 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC20, &qword_24F989C60);
  swift_allocObject();
  *(v12 + v29) = sub_24F92ADA8();
  v30 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
  swift_allocObject();
  *(v12 + v30) = sub_24F92ADA8();
  v31 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC40, &unk_24F9E1CB0);
  swift_allocObject();
  *(v12 + v31) = sub_24F92ADA8();
  v32 = qword_27F39C7B8;
  swift_allocObject();
  *(v12 + v32) = sub_24F92ADA8();
  v33 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v12 + v33) = sub_24F92ADA8();
  v34 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
  swift_allocObject();
  v35 = sub_24F92ADA8();
  v36 = v19;

  v37 = v57;

  sub_24E601704(v50, &qword_27F228530, &unk_24F93C6E0);
  *(v12 + v34) = v35;
  v38 = qword_27F22F1E0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8, &unk_24F96A610);
  v40 = *(*(v39 - 8) + 56);
  v40(v12 + v38, 1, 1, v39);
  v41 = v39;
  v42 = v56;
  v40(v12 + qword_27F22F1E8, 1, 1, v41);
  *(v12 + 16) = v37;
  sub_24E911D90(v58, v12 + qword_27F39C7D0);
  *v23 = sub_24EFBB988;
  v23[1] = v17;
  *v25 = 0;
  v25[1] = 0;
  if (v42)
  {
    v43 = swift_allocObject();
    *(v43 + 16) = v42;
    v44 = sub_24E965688;
  }

  else
  {
    v44 = 0;
    v43 = 0;
  }

  v45 = v52;
  v46 = v53;
  *v53 = v44;
  v46[1] = v43;
  *v45 = sub_24EFBB5AC;
  v45[1] = v36;
  v47 = v51;
  v48 = v54;
  *v51 = sub_24ECB25B4;
  v47[1] = v48;
  *(v12 + qword_27F22F1F0) = v59;
  *(v12 + qword_27F39C7D8) = v55;

  return v12;
}

void sub_24F2F8CFC(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  sub_24F2F51E4(*a1, *(a1 + 8), v3);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *&v2[OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets + 8];
    v5 = *&v2[OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets + 16];
    v6 = v2[OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets + 24];
    v15.value.facetGroups._rawValue = *&v2[OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets];
    v15.value.resetButtonTitle.value._countAndFlagsBits = v4;
    v15.value.resetButtonTitle.value._object = v5;
    v15.value.allowsResetButton = v6;
    v7._rawValue = *&v2[OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_selectedFacetOptions];
    sub_24E903680(v15.value.facetGroups._rawValue, v4, v5);
    PageFacetsPresenter.setFacets(_:selectedFacetOptions:)(&v15, v7);
    sub_24E9036C4(v15.value.facetGroups._rawValue);
    v8 = *(v1 + qword_27F39CC10);
    if (!(v8 >> 62))
    {
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

      goto LABEL_4;
    }

    if (!sub_24F92C738())
    {
LABEL_4:
      v9._object = 0x800000024FA5AA20;
      v9._countAndFlagsBits = 0xD00000000000001CLL;
      v10._countAndFlagsBits = 0;
      v10._object = 0xE000000000000000;
      v11 = localizedString(_:comment:)(v9, v10);
      v12._countAndFlagsBits = 0xD000000000000022;
      v12._object = 0x800000024FA5AA40;
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      v14 = localizedString(_:comment:)(v12, v13);
      v15.value.facetGroups._rawValue = v11._countAndFlagsBits;
      v15.value.resetButtonTitle.value._countAndFlagsBits = v11._object;
      *&v15.value.resetButtonTitle.value._object = v14;
      sub_24F92AD88();
      sub_24EAD7A40(v15.value.facetGroups._rawValue, v15.value.resetButtonTitle.value._countAndFlagsBits);
    }
  }
}

Swift::Void __swiftcall ArcadeSeeAllGamesDiffablePagePresenter.toggleDisplayStyle()()
{
  v1 = qword_27F39E2C0;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
  }

  else
  {
    v2 = sub_24F92CE08();

    if ((v2 & 1) == 0)
    {
      v3 = *(v0 + v1);
      *(v0 + v1) = 1;
      goto LABEL_6;
    }
  }

  v3 = *(v0 + v1);
  *(v0 + v1) = 0;
LABEL_6:
  v4 = v3;
  sub_24F2F8328(&v4);
}

uint64_t sub_24F2F8F24()
{
  v1 = type metadata accessor for StoreViewControllerLifecycleEvent(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  sub_24F929F88();
  v4 = sub_24F929FB8();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 11, v4);
  sub_24F2F01C4(v3);
  sub_24F2FA4F8(v3, type metadata accessor for StoreViewControllerLifecycleEvent);
  memset(v8, 0, sizeof(v8));
  swift_beginAccess();
  sub_24E9CBF30(v8, v0 + 40, &qword_27F224F98, &unk_24F974A70);
  swift_endAccess();
  sub_24F2EF90C();
  sub_24E601704(v8, &qword_27F224F98, &unk_24F974A70);
  sub_24F23B690(1);
  v5(v3, 3, 11, v4);
  sub_24F2F01C4(v3);
  return sub_24F2FA4F8(v3, type metadata accessor for StoreViewControllerLifecycleEvent);
}

Swift::Void __swiftcall ArcadeSeeAllGamesDiffablePagePresenter.commitBatchFacetUpdates()()
{
  if (*(v0 + qword_27F23E6D0) == 1)
  {
    *(v0 + qword_27F23E6D0) = 0;
    if (*(v0 + qword_27F23E6D8) == 1)
    {
      *(v0 + qword_27F23E6D8) = 0;
      sub_24F2F8F24();
    }
  }
}

double sub_24F2F912C()
{

  return result;
}

uint64_t ArcadeSeeAllGamesDiffablePagePresenter.deinit()
{
  v0 = sub_24EBC0120();

  return v0;
}

uint64_t ArcadeSeeAllGamesDiffablePagePresenter.__deallocating_deinit()
{
  sub_24EBC0120();

  return swift_deallocClassInstance();
}

uint64_t sub_24F2F9288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v69 = a4;
  v65 = *v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A920, &qword_24F9D7000);
  v67 = *(v9 - 8);
  v68 = v9;
  MEMORY[0x28223BE20](v9);
  v66 = v54 - v10;
  v11 = sub_24F92BEE8();
  v60 = *(v11 - 8);
  v61 = v11;
  MEMORY[0x28223BE20](v11);
  v59 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_24F92BE88();
  MEMORY[0x28223BE20](v56);
  v58 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F927DC8();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v54 - v16;
  v18 = (v4 + qword_27F39E2B8);
  v19._object = 0x800000024FA55100;
  v19._countAndFlagsBits = 0xD000000000000010;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  *v18 = localizedString(_:comment:)(v19, v20);
  *(v5 + qword_27F23E6D0) = 0;
  *(v5 + qword_27F23E6D8) = 0;
  v21 = qword_27F39E2D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E720, &unk_24F9E1CC0);
  swift_allocObject();
  *(v5 + v21) = sub_24F92ADA8();
  *(v5 + qword_27F39E2C8) = a3;
  sub_24F929388();
  v64 = a3;

  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F2103B0 != -1)
  {
    swift_once();
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58, &unk_24F988B70);
  __swift_project_value_buffer(v22, qword_27F22A908);
  sub_24F928868();

  v23 = sub_24F92CB88();

  *(v5 + qword_27F39E2C0) = v23 == 1;
  v24 = sub_24F91F4A8();
  v63 = v24;
  v25 = *(v24 - 8);
  v57 = v25;
  (*(v25 + 16))(v17, a2, v24);
  (*(v25 + 56))(v17, 0, 1, v24);
  v73 = 0;
  memset(v72, 0, sizeof(v72));
  *(v5 + qword_27F39CC00) = 0;
  v26 = MEMORY[0x277D84F90];
  *(v5 + qword_27F39CC10) = MEMORY[0x277D84F90];
  *(v5 + qword_27F2326C8) = 0;
  v27 = *v5;
  v55 = v17;
  v28 = *(v27 + 640);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC18, &qword_24F989C58);
  v30 = *(v29 - 8);
  v62 = a2;
  v31 = *(v30 + 56);
  v31(v5 + v28, 1, 1, v29);
  v32 = *(*v5 + 648);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90, &unk_24F9B1AC0);
  (*(*(v33 - 8) + 56))(v5 + v32, 1, 1, v33);
  v34 = *(*v5 + 656);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC00, &qword_24F989C40);
  (*(*(v35 - 8) + 56))(v5 + v34, 1, 1, v35);
  v31(v5 + *(*v5 + 664), 1, 1, v29);
  v36 = *(*v5 + 672);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0, &unk_24F9AA740);
  (*(*(v37 - 8) + 56))(v5 + v36, 1, 1, v37);
  v38 = *(*v5 + 680);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8, &unk_24F989B80);
  (*(*(v39 - 8) + 56))(v5 + v38, 1, 1, v39);
  v40 = *(*v5 + 688);
  sub_24E74EC40();

  sub_24F927DA8();
  v71 = v26;
  sub_24F2FA5C0(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v54[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24E602068(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  (*(v60 + 104))(v59, *MEMORY[0x277D85260], v61);
  *(v5 + v40) = sub_24F92BF38();
  sub_24EBD3128(v5 + *(*v5 + 696));
  v41 = (v5 + *(*v5 + 704));
  *v41 = 0u;
  v41[1] = 0u;
  *(v41 + 25) = 0u;
  v42 = *(*v5 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0, &unk_24F989B90);
  swift_allocObject();
  *(v5 + v42) = sub_24F92ADA8();
  v43 = *(*v5 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB8, &unk_24F9AA7A0);
  swift_allocObject();
  *(v5 + v43) = sub_24F92ADA8();
  v44 = *(*v5 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v5 + v44) = sub_24F92ADA8();
  *(v5 + *(*v5 + 736)) = 0;
  v45 = (v5 + *(*v5 + 752));
  *v45 = 0;
  v45[1] = 0;
  v46 = v55;
  sub_24E60169C(v55, v5 + qword_27F39CBF8, &qword_27F228530, &unk_24F93C6E0);
  sub_24E60169C(v72, v5 + *(*v5 + 744), &qword_27F229490, &unk_24F984C40);
  v47 = type metadata accessor for InlineUnifiedMessagePresenter();
  v70.receiver = objc_allocWithZone(v47);
  v70.super_class = v47;
  *(v5 + qword_27F39CC08) = objc_msgSendSuper2(&v70, sel_init);

  v49 = sub_24EBBA220(v48, 0, 0, 0);
  v50 = *(*v49 + 1112);

  *(v49 + qword_27F39CC00) = v50(0);

  sub_24EBCBED4(0);

  sub_24E601704(v72, &qword_27F229490, &unk_24F984C40);
  sub_24E601704(v46, &qword_27F228530, &unk_24F93C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A648, &unk_24F9876C0);
  sub_24E602068(&qword_27F22A940, &qword_27F22A648, &unk_24F9876C0, MEMORY[0x277D21A98]);

  sub_24F9288B8();
  v51 = v66;
  sub_24F9288C8();

  v52 = sub_24F929158();
  (*(*(v52 - 8) + 8))(v69, v52);
  (*(v57 + 8))(v62, v63);
  __swift_destroy_boxed_opaque_existential_1(v72);
  (*(v67 + 8))(v51, v68);
  return v49;
}

void sub_24F2F9E2C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27F39E2C0;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter(uint64_t a1)
{
  result = qword_27F23E6E0;
  if (!qword_27F23E6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F2F9F70()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_141(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F2FA038()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_24F2FA17C()
{

  return swift_deallocObject();
}

uint64_t sub_24F2FA1BC()
{

  return swift_deallocObject();
}

uint64_t sub_24F2FA1F4()
{

  return swift_deallocObject();
}

uint64_t sub_24F2FA4F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F2FA558(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F2FA5C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F2FA608()
{
  if (*(v0 + qword_27F23E6D0) != 1)
  {
    return sub_24F2F8F24();
  }

  *(v0 + qword_27F23E6D8) = 1;
  return result;
}

void sub_24F2FA69C(void *a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {

    v4 = a1;
  }

  else
  {
  }
}

uint64_t static EditorialDisplayOptions.default.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27F2110F8 != -1)
  {
    v7 = a1;
    result = swift_once();
    a1 = v7;
  }

  v1 = BYTE1(dword_27F23E728);
  v2 = BYTE2(dword_27F23E728);
  v3 = HIBYTE(dword_27F23E728);
  v4 = byte_27F23E72C;
  v5 = byte_27F23E72D;
  v6 = byte_27F23E72E;
  *a1 = dword_27F23E728;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
  return result;
}

GameStoreKit::EditorialDisplayOptions __swiftcall EditorialDisplayOptions.init(useGeneratedBackground:suppressLockup:suppressTagline:showBadgeInSmallCards:showAppIcon:useMaterialBlur:useTextProtectionColor:)(Swift::Bool useGeneratedBackground, Swift::Bool suppressLockup, Swift::Bool suppressTagline, Swift::Bool showBadgeInSmallCards, Swift::Bool showAppIcon, Swift::Bool useMaterialBlur, Swift::Bool useTextProtectionColor)
{
  *v7 = useGeneratedBackground;
  v7[1] = suppressLockup;
  v7[2] = suppressTagline;
  v7[3] = showBadgeInSmallCards;
  v7[4] = showAppIcon;
  v7[5] = useMaterialBlur;
  v7[6] = useTextProtectionColor;
  result.useGeneratedBackground = useGeneratedBackground;
  return result;
}

uint64_t EditorialDisplayOptions.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v43 = a3;
  v42 = a2;
  v4 = sub_24F928388();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v41 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v39 - v8;
  MEMORY[0x28223BE20](v9);
  v39 = &v39 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v39 - v21;
  sub_24F928398();
  v23 = sub_24F928278();
  v24 = *(v5 + 8);
  v24(v22, v4);
  v49 = v23 & 1;
  sub_24F928398();
  v25 = sub_24F928278();
  v24(v19, v4);
  v48 = v25 & 1;
  sub_24F928398();
  v26 = sub_24F928278();
  v24(v16, v4);
  v47 = v26 & 1;
  sub_24F928398();
  v27 = sub_24F928278();
  v24(v13, v4);
  v46 = v27 & 1;
  v28 = v39;
  sub_24F928398();
  LOBYTE(v13) = sub_24F928278();
  v24(v28, v4);
  v45 = v13 & 1;
  v29 = v40;
  sub_24F928398();
  LOBYTE(v13) = sub_24F928278();
  v24(v29, v4);
  v44 = v13 & 1;
  v30 = v41;
  sub_24F928398();
  LOBYTE(v13) = sub_24F928278();
  v31 = sub_24F9285B8();
  (*(*(v31 - 8) + 8))(v42, v31);
  v24(a1, v4);
  result = (v24)(v30, v4);
  v33 = v48;
  v34 = v47;
  v35 = v46;
  v36 = v45;
  v37 = v44;
  v38 = v43;
  *v43 = v49;
  v38[1] = v33;
  v38[2] = v34;
  v38[3] = v35;
  v38[4] = v36;
  v38[5] = v37;
  v38[6] = v13 & 1;
  return result;
}

uint64_t EditorialDisplayOptions.hash(into:)()
{
  sub_24F92D088();
  sub_24F92D088();
  sub_24F92D088();
  sub_24F92D088();
  sub_24F92D088();
  sub_24F92D088();
  return sub_24F92D088();
}

uint64_t EditorialDisplayOptions.hashValue.getter()
{
  sub_24F92D068();
  EditorialDisplayOptions.hash(into:)();
  return sub_24F92D0B8();
}

uint64_t sub_24F2FAE34()
{
  sub_24F92D068();
  EditorialDisplayOptions.hash(into:)();
  return sub_24F92D0B8();
}

uint64_t sub_24F2FAEB4()
{
  sub_24F92D068();
  EditorialDisplayOptions.hash(into:)();
  return sub_24F92D0B8();
}

unint64_t sub_24F2FAFC4()
{
  result = qword_27F23E730;
  if (!qword_27F23E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E730);
  }

  return result;
}

_DWORD *__swift_memcpy7_1(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for EditorialDisplayOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[7])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for EditorialDisplayOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_24F2FB0EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E748, &qword_24F9E1DE8);
  MEMORY[0x28223BE20](v0);
  v2 = &v5 - v1;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E750, &unk_24F9E1DF0);
  v3 = swift_allocObject();
  *&v3[(*(*v3 + 48) + 3) & 0x1FFFFFFFCLL] = 0;
  result = sub_24F2FBF18(v2, &v3[*(*v3 + *MEMORY[0x277D841D0] + 16)]);
  off_27F23E738 = v3;
  return result;
}

uint64_t sub_24F2FB220()
{
  v0 = type metadata accessor for DataIntentCacheBusterStreamState(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218350, &unk_24F957210);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2471F0, &unk_24FA2D8D0);
  v4 = swift_allocObject();
  *&v4[(*(*v4 + 48) + 3) & 0x1FFFFFFFCLL] = 0;
  result = sub_24E8F771C(v2, &v4[*(*v4 + *MEMORY[0x277D841D0] + 16)]);
  off_27F23E740 = v4;
  return result;
}

uint64_t sub_24F2FB384(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2471C0, &unk_24F948490);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - v5;
  v7 = type metadata accessor for DataIntentCacheBusterStreamState(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F2FB5F8(a1, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218350, &unk_24F957210);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    return sub_24F2FB65C(v9);
  }

  sub_24F2FB65C(a1);
  v12 = sub_24E802CE0(&unk_2861C20F8);
  v16[1] = v1;
  v13 = MEMORY[0x28223BE20](v12);
  v16[-4] = v14;
  v16[-3] = &unk_24F9E1DE0;
  v16[-2] = 0;
  LOWORD(v16[-1]) = 0;
  (*(v4 + 104))(v6, *MEMORY[0x277D85778], v3, v13);
  sub_24F92B928();

  return (*(v11 + 56))(a1, 0, 1, v10);
}

uint64_t sub_24F2FB5F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataIntentCacheBusterStreamState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F2FB65C(uint64_t a1)
{
  v2 = type metadata accessor for DataIntentCacheBusterStreamState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F2FB6D4()
{
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E808);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "[FriendSuggestionsDenyListDataIntentImplementation] UpdateListener says friend suggestions updated, dropping previously cached denylist.", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  if (qword_27F211100 != -1)
  {
    swift_once();
  }

  v5 = off_27F23E738;
  v6 = *(*off_27F23E738 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*off_27F23E738 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_27F23E738 + v7));
  sub_24F2FBEB0(&v5[v6]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E748, &qword_24F9E1DE8);
  swift_storeEnumTagMultiPayload();
  os_unfair_lock_unlock(&v5[v7]);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24F2FB8A4(void *a1, uint64_t a2)
{
  sub_24F2FBEB0(a1);
  *a1 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E748, &qword_24F9E1DE8);
  swift_storeEnumTagMultiPayload();
}

double sub_24F2FB90C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E768, &unk_24F9E1EA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = [objc_opt_self() proxyForLocalPlayer];
  v7 = [v6 utilityServicePrivate];

  (*(v3 + 16))(v5, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v5, v2);
  aBlock[4] = sub_24F2FD3DC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24F51A1D8;
  aBlock[3] = &block_descriptor_142;
  v10 = _Block_copy(aBlock);

  [v7 getFriendSuggestionDenyListWithHandler_];
  _Block_release(v10);
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_24F2FBB00(uint64_t a1)
{
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E808);
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24E5DD000, v3, v4, "[FriendSuggestionsDenyListDataIntentImplementation fetchAndUpdateCache] Fetched denylist.", v5, 2u);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  if (*(a1 + 16))
  {
    v6 = sub_24E76D644(0x49746361746E6F63, 0xEA00000000007344);
    if (v7)
    {
      v8 = *(*(a1 + 56) + 8 * v6);

      v9 = *(v8 + 16);
      if (!v9)
      {
        goto LABEL_8;
      }

LABEL_11:
      v10 = sub_24EAE678C(v9, 0);
      v11 = sub_24EAE7C84(v19, v10 + 4, v9, v8);
      result = sub_24E6586B4(v19[0]);
      if (v11 != v9)
      {
        __break(1u);
        goto LABEL_20;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }
  }

  v8 = MEMORY[0x277D84FA0];
  v9 = *(MEMORY[0x277D84FA0] + 16);
  if (v9)
  {
    goto LABEL_11;
  }

LABEL_8:

  v10 = MEMORY[0x277D84F90];
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

LABEL_13:
  v13 = sub_24E76D644(0x4449726579616C70, 0xE900000000000073);
  if (v14)
  {
    v15 = *(*(a1 + 56) + 8 * v13);

    v16 = *(v15 + 16);
    if (v16)
    {
      goto LABEL_17;
    }

LABEL_15:

    v17 = MEMORY[0x277D84F90];
LABEL_18:
    v19[0] = v10;
    v19[1] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E768, &unk_24F9E1EA0);
    return sub_24F92B798();
  }

LABEL_16:
  v15 = MEMORY[0x277D84FA0];
  v16 = *(MEMORY[0x277D84FA0] + 16);
  if (!v16)
  {
    goto LABEL_15;
  }

LABEL_17:
  v17 = sub_24EAE678C(v16, 0);
  v18 = sub_24EAE7C84(v19, v17 + 4, v16, v15);
  result = sub_24E6586B4(v19[0]);
  if (v18 == v16)
  {
    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24F2FBD78(void *a1, uint64_t a2, uint64_t a3)
{
  sub_24F2FBEB0(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E758, &qword_24F9E1E88);
  *a1 = a2;
  a1[1] = a3;

  sub_24F91F618();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E748, &qword_24F9E1DE8);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24F2FBE0C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_24F17DAEC;

  return sub_24F2FC440();
}

uint64_t sub_24F2FBEB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E748, &qword_24F9E1DE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F2FBF18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E748, &qword_24F9E1DE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F2FBFB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E760, &qword_24F9E1E98);
  *(v0 + 48) = sub_24F92A9E8();
  if (qword_27F211100 != -1)
  {
    swift_once();
  }

  v1 = off_27F23E738;
  *(v0 + 56) = off_27F23E738;
  v2 = *v1;
  v3 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 64) = v3;
  v4 = *(v2 + 48);
  *(v0 + 88) = v4;
  v5 = (v4 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v5));
  sub_24F2FD310((v1 + v3));
  os_unfair_lock_unlock((v1 + v5));
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_24F2FC184;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000015, 0x800000024FA73580, sub_24F2FB90C, 0, &type metadata for FriendSuggestionsDenyListDataIntent.DenyList);
}

uint64_t sub_24F2FC184()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_24F2FC3DC;
  }

  else
  {
    v2 = sub_24F2FC298;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_24F2FC298()
{
  v1 = *(v0 + 16);
  *(v0 + 32) = v1;
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = (*(v0 + 88) + 3) & 0x1FFFFFFFCLL;
  v6 = *(v0 + 24);
  *(v0 + 40) = v6;
  sub_24F92A9C8();
  v7 = swift_task_alloc();
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  os_unfair_lock_lock((v4 + v5));
  sub_24F2FD32C((v4 + v3));
  v8 = *(v0 + 88);
  v9 = *(v0 + 56);
  if (v2)
  {

    os_unfair_lock_unlock((v9 + ((v8 + 3) & 0x1FFFFFFFCLL)));
  }

  else
  {
    os_unfair_lock_unlock((v9 + ((v8 + 3) & 0x1FFFFFFFCLL)));

    v10 = *(v0 + 8);

    v10(v1, v6);
  }
}

uint64_t sub_24F2FC3DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F2FC440()
{
  v1 = sub_24F91F648();
  v0[4] = v1;
  v0[5] = *(v1 - 8);
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v0[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E748, &qword_24F9E1DE8);
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F2FC550, 0, 0);
}

uint64_t sub_24F2FC550()
{
  if (qword_27F211100 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[10];
  v3 = off_27F23E738;
  v4 = *(*off_27F23E738 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*off_27F23E738 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_27F23E738 + v5));
  sub_24F2FD2A0(&v3[v4], v2);
  os_unfair_lock_unlock(&v3[v5]);
  sub_24F2FD2A0(v2, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v27 = swift_task_alloc();
      v0[11] = v27;
      *v27 = v0;
      v28 = sub_24F2FCACC;
LABEL_21:
      v27[1] = v28;

      return sub_24F2FBF9C();
    }

    v7 = v0[9];
    v8 = v0[7];
    v9 = v0[4];
    v10 = v0[5];
    v12 = *v7;
    v11 = *(v7 + 1);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E758, &qword_24F9E1E88);
    (*(v10 + 32))(v8, &v7[*(v13 + 48)], v9);
    if (qword_27F2113E8 != -1)
    {
      swift_once();
    }

    v14 = sub_24F9220D8();
    __swift_project_value_buffer(v14, qword_27F39E808);
    v15 = sub_24F9220B8();
    v16 = sub_24F92BD98();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24E5DD000, v15, v16, "[FriendSuggestionsDenyListDataIntentImplementation] Returning cached denylist.", v17, 2u);
      MEMORY[0x2530542D0](v17, -1, -1);
    }

    v18 = v0[6];
    v19 = v0[4];
    v20 = v0[5];

    sub_24F91F638();
    sub_24F91F558();
    v22 = v21;
    v23 = *(v20 + 8);
    v0[19] = v23;
    v0[20] = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23(v18, v19);
    if (v22 > 300.0)
    {

      v24 = sub_24F9220B8();
      v25 = sub_24F92BD98();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_24E5DD000, v24, v25, "[FriendSuggestionsDenyListDataIntentImplementation] Cache is getting old, discarding.", v26, 2u);
        MEMORY[0x2530542D0](v26, -1, -1);
      }

      v27 = swift_task_alloc();
      v0[21] = v27;
      *v27 = v0;
      v28 = sub_24F2FCF74;
      goto LABEL_21;
    }

    v34 = v0[10];
    v23(v0[7], v0[4]);
    sub_24F2FBEB0(v34);

    v35 = v0[1];

    return v35(v12, v11);
  }

  else
  {
    v0[15] = *v0[9];
    if (qword_27F2113E8 != -1)
    {
      swift_once();
    }

    v29 = sub_24F9220D8();
    v0[16] = __swift_project_value_buffer(v29, qword_27F39E808);
    v30 = sub_24F9220B8();
    v31 = sub_24F92BD98();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_24E5DD000, v30, v31, "[FriendSuggestionsDenyListDataIntentImplementation] Fetch in progress, waiting for it to finish...", v32, 2u);
      MEMORY[0x2530542D0](v32, -1, -1);
    }

    v33 = swift_task_alloc();
    v0[17] = v33;
    *v33 = v0;
    v33[1] = sub_24F2FCD34;

    return MEMORY[0x282180668](v0 + 2);
  }
}

uint64_t sub_24F2FCACC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v7 = sub_24F2FCCA4;
  }

  else
  {
    *(v6 + 104) = a2;
    *(v6 + 112) = a1;
    v7 = sub_24F2FCC00;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24F2FCC00()
{
  sub_24F2FBEB0(v0[10]);
  v1 = v0[13];
  v2 = v0[14];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_24F2FCCA4()
{
  sub_24F2FBEB0(*(v0 + 80));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F2FCD34()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24F2FD204;
  }

  else
  {
    v2 = sub_24F2FCE48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F2FCE48(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = sub_24F9220B8();
  v5 = sub_24F92BD98();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[10];
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_24E5DD000, v4, v5, "[FriendSuggestionsDenyListDataIntentImplementation] Fetch finished, returning newly-cached denylist", v8, 2u);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  sub_24F2FBEB0(v7);

  v9 = v1[1];

  return v9(v2, v3);
}

uint64_t sub_24F2FCF74(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 176) = v2;

  if (v2)
  {
    v7 = sub_24F2FD160;
  }

  else
  {
    *(v6 + 184) = a2;
    *(v6 + 192) = a1;
    v7 = sub_24F2FD0A8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24F2FD0A8()
{
  v1 = *(v0 + 80);
  (*(v0 + 152))(*(v0 + 56), *(v0 + 32));
  sub_24F2FBEB0(v1);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);

  v4 = *(v0 + 8);

  return v4(v3, v2);
}

uint64_t sub_24F2FD160()
{
  v1 = *(v0 + 80);
  (*(v0 + 152))(*(v0 + 56), *(v0 + 32));
  sub_24F2FBEB0(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24F2FD204()
{
  v1 = *(v0 + 80);

  sub_24F2FBEB0(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24F2FD2A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E748, &qword_24F9E1DE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F2FD348()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E768, &unk_24F9E1EA0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24F2FD3DC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E768, &unk_24F9E1EA0);

  return sub_24F2FBB00(a1);
}

uint64_t block_copy_helper_142(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F2FD470()
{
  sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
  result = sub_24F92C3D8();
  qword_27F39E2D8 = result;
  return result;
}

double _JetTraceReporter.init(metricsConfiguration:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for _JetTraceReporter(0);
  v5 = v4 - 8;
  v42 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v43 = v6;
  v44 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F92BEE8();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x28223BE20](v7);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_24F92BE88();
  MEMORY[0x28223BE20](v37);
  v9 = sub_24F927DC8();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = *(v5 + 36);
  v11 = sub_24F928BC8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v36 = v11;
  v13(a2 + v10, a1);
  sub_24F928BB8();
  v38 = a1;
  a2[6] = sub_24F928B98();
  a2[7] = v14;
  if (qword_27F2110E0 != -1)
  {
    swift_once();
  }

  v15 = qword_27F23E578;
  type metadata accessor for _JetTraceAggregator();
  v16 = swift_allocObject();
  *(v16 + 32) = 0u;
  v35 = (v16 + 32);
  *(v16 + 16) = 0u;
  *(v16 + 96) = 0u;
  *(v16 + 112) = 0u;
  v17 = MEMORY[0x277D84F90];
  *(v16 + 128) = sub_24E611148(MEMORY[0x277D84F90]);
  v18 = sub_24E6112E4(v17);
  v19 = MEMORY[0x277D84FA0];
  *(v16 + 136) = v18;
  *(v16 + 144) = v19;
  *(v16 + 152) = v17;
  *(v16 + 160) = v17;
  *(v16 + 168) = v17;
  *(v16 + 176) = 0;
  *(v16 + 48) = v15;
  *(v16 + 56) = xmmword_24F9E1EB0;
  *(v16 + 72) = 0x404E000000000000;
  swift_beginAccess();
  v20 = *(v16 + 16);
  v21 = *(v16 + 24);
  *(v16 + 24) = 0;
  *(v16 + 16) = 0;
  v22 = v15;
  sub_24E824448(v20, v21);
  *(v16 + 80) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  sub_24F927DA8();
  v45 = v17;
  sub_24EBD4288(v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24EC3122C();
  sub_24F92C6A8();
  (*(v40 + 104))(v39, *MEMORY[0x277D85260], v41);
  v24 = sub_24F92BF38();
  (*(v12 + 8))(v38, v36);
  *(v16 + 88) = v24;
  *a2 = v16;
  v25 = v44;
  sub_24F2FE250(a2, v44);
  v26 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v27 = swift_allocObject();
  sub_24F2FE2B8(v25, v27 + v26);
  v28 = *(v16 + 16);
  v29 = *(v16 + 24);
  *(v16 + 16) = sub_24F2FE31C;
  *(v16 + 24) = v27;

  sub_24E824448(v28, v29);
  sub_24F2FE250(a2, v25);
  v30 = swift_allocObject();
  sub_24F2FE2B8(v25, v30 + v26);
  v31 = v35;
  swift_beginAccess();
  v32 = *v31;
  v33 = *(v16 + 40);
  *v31 = sub_24F2FE490;
  *(v16 + 40) = v30;
  sub_24E824448(v32, v33);

  return result;
}

uint64_t type metadata accessor for _JetTraceReporter(uint64_t a1)
{
  result = qword_27F23E770;
  if (!qword_27F23E770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F2FDA24(unint64_t *a1)
{
  v2 = sub_24F928418();
  MEMORY[0x28223BE20](v2 - 8);
  v55 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F929758();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v56 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  v10 = MEMORY[0x277D837D0];
  v54 = a1[4];
  v63 = MEMORY[0x277D837D0];
  *&v62 = 6778732;
  *(&v62 + 1) = 0xE300000000000000;
  sub_24E612B0C(&v62, v61);

  v11 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60 = v11;
  sub_24E81C1D4(v61, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v13 = v60;
  if (qword_27F211110 != -1)
  {
    swift_once();
  }

  v14 = qword_27F39E2D8;
  v63 = sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
  *&v62 = v14;
  sub_24E612B0C(&v62, v61);
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v13;
  sub_24E81C1D4(v61, 0x726556746E657665, 0xEC0000006E6F6973, v16);
  v17 = v60;
  v63 = v10;
  strcpy(&v62, "jetTraceEvents");
  HIBYTE(v62) = -18;
  sub_24E612B0C(&v62, v61);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v17;
  sub_24E81C1D4(v61, 0x614E726567676F6CLL, 0xEA0000000000656DLL, v18);
  v19 = v60;
  v63 = v10;
  *&v62 = v7;
  *(&v62 + 1) = v9;
  sub_24E612B0C(&v62, v61);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v19;
  sub_24E81C1D4(v61, 0x6D614E746E657665, 0xE900000000000065, v20);
  v21 = v60;
  v63 = MEMORY[0x277D839F8];
  *&v62 = v6 / 1000000.0;
  sub_24E612B0C(&v62, v61);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v21;
  sub_24E81C1D4(v61, 0x6E6F697461727564, 0xEA0000000000734DLL, v22);
  v23 = v60;
  v24 = *(v8 + 16);
  v25 = MEMORY[0x277D84F90];
  if (v24)
  {
    *&v62 = MEMORY[0x277D84F90];
    sub_24F4578E0(0, v24, 0);
    v25 = v62;
    v53 = v8;
    v26 = (v8 + 72);
    v27 = v24;
    do
    {
      v28 = *(v26 - 1);
      v29 = *v26;
      *&v62 = v25;
      v30 = *(v25 + 16);
      v31 = *(v25 + 24);

      if (v30 >= v31 >> 1)
      {
        sub_24F4578E0((v31 > 1), v30 + 1, 1);
        v25 = v62;
      }

      *(v25 + 16) = v30 + 1;
      v32 = v25 + 16 * v30;
      *(v32 + 32) = v28;
      *(v32 + 40) = v29;
      v26 += 6;
      --v27;
    }

    while (v27);
    v8 = v53;
  }

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  v63 = v33;
  *&v62 = v25;
  sub_24E612B0C(&v62, v61);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v23;
  sub_24E81C1D4(v61, 0x7974697669746361, 0xED000073656D614ELL, v34);
  v35 = v60;
  v36 = MEMORY[0x277D84F90];
  if (v24)
  {
    *&v62 = MEMORY[0x277D84F90];
    sub_24F4578E0(0, v24, 0);
    v36 = v62;
    v37 = (v8 + 40);
    do
    {
      v38 = *(v37 - 1);
      v39 = *v37;
      *&v62 = v36;
      v41 = *(v36 + 16);
      v40 = *(v36 + 24);

      if (v41 >= v40 >> 1)
      {
        sub_24F4578E0((v40 > 1), v41 + 1, 1);
        v36 = v62;
      }

      *(v36 + 16) = v41 + 1;
      v42 = v36 + 16 * v41;
      *(v42 + 32) = v38;
      *(v42 + 40) = v39;
      v37 += 6;
      --v24;
    }

    while (v24);
  }

  v63 = v33;
  *&v62 = v36;
  sub_24E612B0C(&v62, v61);
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v35;
  sub_24E81C1D4(v61, 0x7974697669746361, 0xEB00000000736449, v43);
  v44 = v60;

  sub_24E954060(v54);
  v46 = v45;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  *&v62 = v44;
  sub_24EF4B5B4(v46, sub_24F05AC64, 0, v47, &v62);

  v48 = v62;

  v49 = v56;
  sub_24F929728();
  if (qword_27F210580 != -1)
  {
    swift_once();
  }

  v50 = sub_24F92AAE8();
  __swift_project_value_buffer(v50, qword_27F39C3E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
  *&v62 = v48;
  sub_24F9283D8();
  sub_24E857CC8(&v62);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A588();

  __swift_project_boxed_opaque_existential_1((v59 + 8), *(v59 + 32));
  sub_24F9299F8();
  return (*(v57 + 8))(v49, v58);
}