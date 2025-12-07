void sub_22703A184(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F98];
  v30 = MEMORY[0x277D84F98];
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
LABEL_14:
    v18 = (v10 << 9) | (8 * __clz(__rbit64(v8)));
    v19 = *(*(a3 + 48) + v18);
    v29 = *(*(a3 + 56) + v18);

    a1(&v28, &v29);
    if (v3)
    {

      return;
    }

    v20 = v28;
    if (v28)
    {
      v21 = *(v4 + 16);
      if (*(v4 + 24) <= v21)
      {
        sub_226FE8B4C(v21 + 1, 1);
        v4 = v30;
      }

      v11 = sub_22766D360();
      v12 = v4 + 64;
      v13 = -1 << *(v4 + 32);
      v14 = v11 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v4 + 64 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_29;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v4 + 64 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v4 + 48) + 8 * v16) = v19;
      *(*(v4 + 56) + 8 * v16) = v20;
      ++*(v4 + 16);
    }

    v8 &= v8 - 1;
  }

  while (1)
  {
    v17 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v17 >= v9)
    {

      return;
    }

    v8 = *(v5 + 8 * v17);
    ++v10;
    if (v8)
    {
      v10 = v17;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_22703A3D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F20, &qword_2276767D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v33 - v3;
  v39 = sub_227666B60();
  MEMORY[0x28223BE20](v39);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v33 - v8;
  v9 = MEMORY[0x277D84F98];
  v42 = MEMORY[0x277D84F98];
  v10 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(a1 + 64);
  v14 = (v11 + 63) >> 6;
  v38 = (v7 + 48);
  v34 = v7;
  v35 = (v7 + 32);
  v40 = a1;

  v15 = 0;
  while (1)
  {
    v16 = v15;
    if (!v13)
    {
      break;
    }

LABEL_9:
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v18 = (v15 << 9) | (8 * v17);
    v19 = *(*(v40 + 48) + v18);
    v20 = *(*(v40 + 56) + v18);
    swift_getKeyPath();
    v41 = v20;

    swift_getAtKeyPath();

    if ((*v38)(v4, 1, v39) == 1)
    {
      sub_226E97D1C(v4, &qword_27D7B8F20, &qword_2276767D0);
    }

    else
    {
      v21 = *v35;
      (*v35)(v37, v4, v39);
      v21(v36, v37, v39);
      v22 = *(v9 + 16);
      if (*(v9 + 24) <= v22)
      {
        sub_226FE8B60(v22 + 1, 1);
      }

      v9 = v42;
      v23 = sub_22766D360();
      v24 = v9 + 64;
      v25 = -1 << *(v9 + 32);
      v26 = v23 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v9 + 64 + 8 * (v26 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v25) >> 6;
        while (++v27 != v30 || (v29 & 1) == 0)
        {
          v31 = v27 == v30;
          if (v27 == v30)
          {
            v27 = 0;
          }

          v29 |= v31;
          v32 = *(v24 + 8 * v27);
          if (v32 != -1)
          {
            v28 = __clz(__rbit64(~v32)) + (v27 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v28 = __clz(__rbit64((-1 << v26) & ~*(v9 + 64 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      *(*(v9 + 48) + 8 * v28) = v19;
      v21((*(v9 + 56) + *(v34 + 72) * v28), v36, v39);
      ++*(v9 + 16);
    }
  }

  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v14)
    {

      return;
    }

    v13 = *(v10 + 8 * v15);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_22703A798(uint64_t a1, uint64_t a2)
{
  v3 = sub_227284754(0);
  if (!v2)
  {
    v4 = v3;
    [v3 setResultType_];
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v5 = sub_22766C820();
    v6 = [v5 keyPath];

    v7 = sub_22766C000();
    v9 = v8;

    v10 = sub_22766C820();
    v11 = [v10 keyPath];

    v12 = sub_22766C000();
    v14 = v13;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FE8, &qword_227672B80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2276728D0;
    v16 = MEMORY[0x277D837D0];
    *(v15 + 32) = v7;
    *(v15 + 40) = v9;
    *(v15 + 88) = v16;
    *(v15 + 56) = v16;
    *(v15 + 64) = v12;
    *(v15 + 72) = v14;

    v17 = sub_22766C2B0();

    [v4 setPropertiesToFetch_];

    sub_226E99364(0, &qword_28139D2B0, 0x277CBEAC0);
    v18 = sub_22766C9E0();
    v19 = sub_2273C20D4(v18);

    if (v19)
    {
      v36 = v4;
      v20 = *(v19 + 16);
      if (v20)
      {
        v38 = v12;
        v39 = v7;
        v41 = MEMORY[0x277D84F90];
        sub_226F1FBE8(0, v20, 0);
        v21 = 0;
        v22 = v41;
        v37 = v19;
        v40 = v9;
        while (v21 < *(v19 + 16))
        {
          v24 = v14;

          v25 = sub_22703AC60(v23, v39, v9, v38, v14);
          v27 = v26;
          v29 = v28;

          v41 = v22;
          v30 = *(v22 + 16);
          v31 = *(v22 + 24);
          if (v30 >= v31 >> 1)
          {
            sub_226F1FBE8((v31 > 1), v30 + 1, 1);
            v22 = v41;
          }

          ++v21;
          *(v22 + 16) = v30 + 1;
          v32 = (v22 + 24 * v30);
          v32[4] = v25;
          v32[5] = v27;
          v32[6] = v29;
          v9 = v40;
          v14 = v24;
          v19 = v37;
          if (v20 == v21)
          {

            goto LABEL_14;
          }
        }

        __break(1u);

        __break(1u);
      }

      else
      {

        v22 = MEMORY[0x277D84F90];
LABEL_14:
        if (*(v22 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9990, &unk_227676790);
          v35 = sub_22766D010();
        }

        else
        {
          v35 = MEMORY[0x277D84F98];
        }

        v41 = v35;
        sub_22704DB08(v22, 1, &v41);
      }
    }

    else
    {

      v33 = sub_227664DD0();
      sub_226EABFDC(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D51018], v33);
      swift_willThrow();
    }
  }
}

uint64_t sub_22703AC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 16) && (v9 = sub_226E92000(a2, a3), (v10 & 1) != 0))
  {
    sub_226E97CC0(*(a1 + 56) + 32 * v9, &v18);
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC990, &qword_227670A30);
  if (!swift_dynamicCast())
  {
    goto LABEL_13;
  }

  v5 = v17;
  if (*(a1 + 16) && (v11 = sub_226E92000(a4, a5), (v12 & 1) != 0))
  {
    sub_226E97CC0(*(a1 + 56) + 32 * v11, &v18);
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_13:
    v14 = sub_227664DD0();
    sub_226EABFDC(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D51018], v14);
    swift_willThrow();
    return v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B92A0, &qword_2276767A0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_227670CD0;
  *(v13 + 32) = v17;
  return v5;
}

uint64_t sub_22703AE64(uint64_t a1, uint64_t a2)
{
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD000000000000028, 0x8000000227697530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  v2 = sub_22766BEC0();
  MEMORY[0x22AA98450](v2);

  MEMORY[0x22AA98450](0xD000000000000014, 0x8000000227697560);
  sub_22704B2CC();
  v3 = sub_22766BEC0();
  MEMORY[0x22AA98450](v3);

  MEMORY[0x22AA98450](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_22703AF94@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  sub_22766A630();
  sub_22766B370();
  v16 = *(v8 + 8);
  v15 = v8 + 8;
  v14 = v16;
  v16(v13, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_227670CD0;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;

  v18 = v32;
  v19 = sub_226F86AB0(v17, a3);

  if (!v18)
  {
    v21 = v31;
    v29 = v15;
    v30 = v7;
    v32 = v14;
    if (*(v19 + 16))
    {
      v22 = sub_227666B60();
      (*(*(v22 - 8) + 16))(v21, v19 + ((*(*(v22 - 8) + 80) + 32) & ~*(*(v22 - 8) + 80)), v22);
    }

    else
    {

      sub_22766A630();

      v23 = sub_22766B380();
      v24 = sub_22766C890();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v33 = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_226E97AE8(a1, a2, &v33);
        _os_log_impl(&dword_226E8E000, v23, v24, "Failed to fetch CatalogWorkoutReference for workout %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x22AA9A450](v26, -1, -1);
        MEMORY[0x22AA9A450](v25, -1, -1);
      }

      v32(v10, v30);
      v27 = sub_227664EC0();
      sub_226EABFDC(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
      swift_allocError();
      (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51180], v27);
      return swift_willThrow();
    }
  }

  return result;
}

char *sub_22703B334(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A630();
  sub_22766B370();
  (*(v7 + 8))(v9, v6);
  __swift_project_boxed_opaque_existential_0((v3 + 136), *(v3 + 160));
  v10 = sub_22766A2C0();
  v11 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_227019A10(a1, v10, 0, *v11, v11[1], *(v11 + 16), v11[3]);

  v12 = sub_226EE010C(100);

  return v12;
}

uint64_t sub_22703B4CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v25 = MEMORY[0x277D84F90];
    sub_226F1F090(0, v4, 0);
    v5 = v25;
    v6 = (v3 + 32);
    v7 = v25[2];
    do
    {
      v9 = *v6;
      v6 += 5;
      v8 = v9;
      v26 = v5;
      v10 = v5[3];
      v11 = v7 + 1;
      if (v7 >= v10 >> 1)
      {
        sub_226F1F090((v10 > 1), v7 + 1, 1);
        v5 = v26;
      }

      v5[2] = v11;
      v5[v7++ + 4] = v8;
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
    v11 = *(MEMORY[0x277D84F90] + 16);
    if (!v11)
    {
      v12 = 0;
      v23 = 1;
      goto LABEL_19;
    }
  }

  v12 = v5[4];
  v13 = v11 - 1;
  if (v11 != 1)
  {
    if (v11 <= 4)
    {
      v14 = 1;
      goto LABEL_14;
    }

    v14 = v13 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v15 = vdupq_n_s64(v12);
    v16 = (v5 + 7);
    v17 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = v15;
    do
    {
      v15 = vbslq_s8(vcgtq_s64(v15, v16[-1]), v15, v16[-1]);
      v18 = vbslq_s8(vcgtq_s64(v18, *v16), v18, *v16);
      v16 += 2;
      v17 -= 4;
    }

    while (v17);
    v19 = vbslq_s8(vcgtq_s64(v15, v18), v15, v18);
    v20 = vextq_s8(v19, v19, 8uLL).u64[0];
    v12 = vbsl_s8(vcgtd_s64(v19.i64[0], v20), *v19.i8, v20);
    if (v13 != (v13 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_14:
      v21 = v11 - v14;
      v22 = 8 * v14 + 32;
      do
      {
        if (v12 <= *(v5 + v22))
        {
          v12 = *(v5 + v22);
        }

        v22 += 8;
        --v21;
      }

      while (v21);
    }
  }

  v23 = 0;
LABEL_19:

  *a2 = v12;
  *(a2 + 8) = v23;
  return result;
}

void *sub_22703B664(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v78 = a4;
  v82 = a5;
  v81 = sub_227664010();
  v8 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_227663D60();
  v76 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v88 = &v73 - v13;
  MEMORY[0x28223BE20](v14);
  v84 = &v73 - v15;
  v16 = sub_22766B390();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v74 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v73 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v73 - v23;
  sub_22766A630();
  sub_22766B370();
  v25 = *(v17 + 8);
  v85 = v16;
  v86 = v25;
  v87 = v17 + 8;
  v25(v24, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  inited = swift_initStackObject();
  v75 = xmmword_227670CD0;
  *(inited + 16) = xmmword_227670CD0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;

  v27 = sub_226F4BE8C(inited);
  swift_setDeallocating();
  sub_226FA6DA4(inited + 32);
  v90 = MEMORY[0x277D84F90];
  v28 = v77;
  v29 = sub_2270134B0(v27);
  v30 = v76;

  sub_22745FA30(v29);
  v31 = sub_22701380C(MEMORY[0x277D84FA0]);
  sub_22745FA30(v31);
  v89 = a1;
  sub_22766D140();
  sub_22766C540();
  sub_22766C540();
  sub_22766C540();
  sub_227663FC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9B0, &unk_2276758F0);
  v32 = *(sub_2276660A0() - 8);
  v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v75;
  v35 = v81;
  (*(v8 + 16))(v34 + v33, v10, v81);
  swift_storeEnumTagMultiPayload();
  sub_22745FA30(v34);
  (*(v8 + 8))(v10, v35);
  v36 = v78;
  v37 = v90;
  v89 = MEMORY[0x277D84F90];
  v38 = sub_2276672F0();
  v39 = sub_2270134CC(v38);

  sub_22745FA30(v39);
  v40 = sub_2276672D0();
  v41 = sub_2270134E8(v40);

  sub_22745FA30(v41);
  v42 = sub_227667280();
  v43 = sub_227013504(v42);
  v44 = v79;

  sub_22745FA30(v43);
  v45 = sub_227667260();
  v46 = sub_227013B2C(v45);
  v77 = v28;

  sub_22745FA30(v46);
  sub_226F438E8(v89);

  sub_226F438E8(v37);

  v47 = v88;
  v48 = v80;
  sub_227663D10();
  sub_22766A630();
  (*(v30 + 16))(v44, v47, v48);
  v81 = v21;
  v49 = sub_22766B380();
  v50 = sub_22766C8B0();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = v30;
    v53 = swift_slowAlloc();
    v89 = v53;
    *v51 = 136315138;
    sub_226EABFDC(&qword_28139BC38, MEMORY[0x277D504B0], MEMORY[0x277D504B8]);
    v54 = sub_22766D140();
    v55 = v44;
    v56 = v48;
    v58 = v57;
    v79 = *(v52 + 8);
    (v79)(v55, v56);
    v59 = sub_226E97AE8(v54, v58, &v89);
    v48 = v56;

    *(v51 + 4) = v59;
    _os_log_impl(&dword_226E8E000, v49, v50, "Filtering catalog using: %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    v60 = v53;
    v30 = v52;
    MEMORY[0x22AA9A450](v60, -1, -1);
    MEMORY[0x22AA9A450](v51, -1, -1);
  }

  else
  {

    v79 = *(v30 + 8);
    (v79)(v44, v48);
  }

  v61 = v85;
  v86(v81, v85);
  v62 = v84;
  (*(v30 + 32))(v84, v88, v48);
  v63 = v83;
  v64 = v77;
  v65 = sub_22703B334(v62, v82);
  if (v64)
  {
    (v79)(v62, v48);
  }

  else
  {
    v66 = v65;
    sub_22766A630();

    v67 = sub_22766B380();
    v68 = sub_22766C8B0();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = v48;
      v70 = swift_slowAlloc();
      *v70 = 134217984;
      *(v70 + 4) = *(v66 + 16);

      _os_log_impl(&dword_226E8E000, v67, v68, "Found %ld workouts satisfying filter conditions", v70, 0xCu);
      v71 = v70;
      v48 = v69;
      v61 = v85;
      MEMORY[0x22AA9A450](v71, -1, -1);
    }

    else
    {
    }

    v86(v74, v61);
    v63 = sub_22735AD38(v66, v36);

    (v79)(v62, v48);
  }

  return v63;
}

uint64_t sub_22703BF7C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v137 = a5;
  v139 = a4;
  v118 = a3;
  v7 = sub_227664010();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v117 - v12;
  v121 = sub_227663D60();
  v122 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v123 = (&v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v125 = &v117 - v16;
  MEMORY[0x28223BE20](v17);
  v120 = &v117 - v18;
  v19 = sub_22766B390();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v138 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v117 - v23;
  sub_22766A630();
  sub_22766B370();
  v25 = *(v20 + 8);
  v134 = v19;
  v126 = v25;
  v127 = v20 + 8;
  (v25)(v24, v19);
  v141 = MEMORY[0x277D84F90];
  v128 = a1;
  v26 = v136;
  v27 = sub_2270134B0(a1);
  sub_22745FA30(v27);
  v28 = sub_22701380C(MEMORY[0x277D84FA0]);
  sub_22745FA30(v28);
  v140 = a2;
  sub_22766D140();
  sub_22766C540();
  sub_22766C540();
  sub_22766C540();
  sub_227663FC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9B0, &unk_2276758F0);
  v29 = *(sub_2276660A0() - 8);
  v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_227670CD0;
  v131 = *(v8 + 16);
  v132 = v8 + 16;
  v131(v31 + v30, v13, v7);
  swift_storeEnumTagMultiPayload();
  sub_22745FA30(v31);
  v133 = v8;
  v32 = *(v8 + 8);
  v136 = v7;
  v33 = v7;
  v34 = v123;
  v35 = v122;
  v129 = v32;
  v130 = v8 + 8;
  v32(v13, v33);
  v36 = v141;
  v140 = MEMORY[0x277D84F90];
  v37 = sub_2276672F0();
  v38 = sub_2270134CC(v37);

  sub_22745FA30(v38);
  v39 = sub_2276672D0();
  v40 = sub_2270134E8(v39);

  sub_22745FA30(v40);
  v41 = sub_227667280();
  v42 = sub_227013504(v41);

  sub_22745FA30(v42);
  v43 = sub_227667260();
  v44 = sub_227013B2C(v43);
  v124 = v26;

  sub_22745FA30(v44);
  sub_226F438E8(v140);

  sub_226F438E8(v36);

  v45 = v125;
  sub_227663D10();
  sub_22766A630();
  v46 = v121;
  (*(v35 + 16))(v34, v45);
  v47 = sub_22766B380();
  v48 = sub_22766C8B0();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v140 = v50;
    *v49 = 136315138;
    sub_226EABFDC(&qword_28139BC38, MEMORY[0x277D504B0], MEMORY[0x277D504B8]);
    v51 = sub_22766D140();
    v52 = v34;
    v53 = v45;
    v55 = v54;
    v119 = *(v122 + 8);
    v119(v52, v46);
    v56 = sub_226E97AE8(v51, v55, &v140);
    v45 = v53;

    *(v49 + 4) = v56;
    _os_log_impl(&dword_226E8E000, v47, v48, "Filtering catalog using: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    v57 = v50;
    v35 = v122;
    MEMORY[0x22AA9A450](v57, -1, -1);
    MEMORY[0x22AA9A450](v49, -1, -1);
  }

  else
  {

    v119 = *(v35 + 8);
    v119(v34, v46);
  }

  (v126)(v138, v134);
  v58 = *(v35 + 32);
  v59 = v120;
  v58(v120, v45, v46);
  __swift_project_boxed_opaque_existential_0((v135 + 136), *(v135 + 160));
  v60 = sub_22766A2C0();
  v61 = sub_2276672A0();
  v62 = __swift_project_boxed_opaque_existential_0(v137, v137[3]);
  sub_227019A10(v59, v60, v61, *v62, v62[1], *(v62 + 16), v62[3]);

  KeyPath = swift_getKeyPath();
  v64 = swift_getKeyPath();
  v65 = v124;
  sub_22703A798(KeyPath, v64);
  if (v65)
  {
    v119(v59, v46);

    return v64;
  }

  v138 = v66;

  v140 = v118;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9C0, &unk_227676780);
  sub_226E9CFD0(&qword_27D7B9E50, &unk_27D7BC9C0, &unk_227676780, MEMORY[0x277D83B68]);
  v67 = sub_22766C220();

  v127 = *(v67 + 16);
  if (!v127)
  {

    v115 = 0;
    v64 = MEMORY[0x277D84F98];
    v119(v59, v46);
LABEL_54:
    sub_226EA9E3C(v115, 0);
    return v64;
  }

  v118 = 0;
  v123 = 0;
  v68 = 0;
  v69 = v128;
  v70 = v128 + 56;
  v126 = (v67 + ((*(v133 + 80) + 32) & ~*(v133 + 80)));
  v124 = MEMORY[0x277D84F98];
  v125 = v67;
  v71 = v138;
  while (2)
  {
    if (v68 >= *(v67 + 16))
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v131(v10, &v126[*(v133 + 72) * v68], v136);
    v72 = sub_227664000() / 60.0;
    if ((*&v72 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if (v72 <= -9.22337204e18)
    {
LABEL_60:
      __break(1u);
      break;
    }

    if (v72 < 9.22337204e18)
    {
      v134 = v72;
      v135 = v68 + 1;
      v73 = 1 << *(v69 + 32);
      if (v73 < 64)
      {
        v74 = ~(-1 << v73);
      }

      else
      {
        v74 = -1;
      }

      v75 = v74 & *(v69 + 56);
      v76 = (v73 + 63) >> 6;

      v77 = 0;
LABEL_17:
      if (v75)
      {
        v78 = v75;
        goto LABEL_23;
      }

      while (1)
      {
        v79 = v77 + 1;
        if (__OFADD__(v77, 1))
        {
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        if (v79 >= v76)
        {
          break;
        }

        v78 = *(v70 + 8 * v79);
        ++v77;
        if (v78)
        {
          v77 = v79;
LABEL_23:
          v75 = (v78 - 1) & v78;
          if (*(v71 + 2))
          {
            v139 = (v78 - 1) & v78;
            v80 = *(v69 + 48) + ((v77 << 10) | (16 * __clz(__rbit64(v78))));
            v81 = *v80;
            v82 = *(v80 + 8);

            v137 = v81;
            v83 = sub_226E92000(v81, v82);
            if (v84)
            {
              v85 = *(*(v138 + 7) + 8 * v83);
              v86 = *(v85 + 16);
              if (v86)
              {

                v87 = 0;
                while (1)
                {
                  if (v87 >= *(v85 + 16))
                  {
                    goto LABEL_57;
                  }

                  v88 = *(v85 + 8 * v87 + 32);
                  v89 = sub_227664000();
                  sub_227663FF0();
                  v91 = v89 + v90;
                  v92 = sub_227664000();
                  sub_227663FE0();
                  if (v92 - v93 <= v88 && v88 <= v91)
                  {
                    break;
                  }

                  if (v86 == ++v87)
                  {

                    v69 = v128;
                    goto LABEL_35;
                  }
                }

                sub_226EA9E3C(v123, 0);
                v95 = v124;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v140 = v95;
                v97 = v137;
                v98 = sub_226E92000(v137, v82);
                v100 = v98;
                v101 = *(v95 + 16);
                v102 = (v99 & 1) == 0;
                v103 = v101 + v102;
                if (__OFADD__(v101, v102))
                {
                  goto LABEL_62;
                }

                if (*(v95 + 24) >= v103)
                {
                  if (isUniquelyReferenced_nonNull_native)
                  {
                    v106 = v140;
                    if ((v99 & 1) == 0)
                    {
                      goto LABEL_46;
                    }
                  }

                  else
                  {
                    v107 = v99;
                    sub_226FF2374();
                    v106 = v140;
                    if ((v107 & 1) == 0)
                    {
                      goto LABEL_46;
                    }
                  }
                }

                else
                {
                  LODWORD(v124) = v99;
                  sub_226FE6980(v103, isUniquelyReferenced_nonNull_native);
                  v104 = sub_226E92000(v97, v82);
                  if ((v124 & 1) != (v105 & 1))
                  {
                    goto LABEL_63;
                  }

                  v100 = v104;
                  v106 = v140;
                  if ((v124 & 1) == 0)
                  {
LABEL_46:
                    sub_22736CCBC();
                    goto LABEL_47;
                  }
                }

LABEL_47:
                v108 = v100;
                v109 = *(v106 + 56);
                v110 = *(v109 + 8 * v108);
                v111 = swift_isUniquelyReferenced_nonNull_native();
                v112 = v108;
                *(v109 + 8 * v108) = v110;
                v124 = v106;
                if ((v111 & 1) == 0)
                {
                  v110 = sub_2273A5610(0, *(v110 + 2) + 1, 1, v110);
                  *(v109 + 8 * v108) = v110;
                }

                v114 = *(v110 + 2);
                v113 = *(v110 + 3);
                if (v114 >= v113 >> 1)
                {
                  v110 = sub_2273A5610((v113 > 1), v114 + 1, 1, v110);
                  *(v109 + 8 * v112) = v110;
                }

                *(v110 + 2) = v114 + 1;
                *&v110[8 * v114 + 32] = v134;
                v123 = sub_22703CD34;
                v69 = v128;
                goto LABEL_36;
              }
            }

LABEL_35:

LABEL_36:
            v71 = v138;
            v75 = v139;
          }

          goto LABEL_17;
        }
      }

      v129(v10, v136);

      v68 = v135;
      v67 = v125;
      if (v135 != v127)
      {
        continue;
      }

      v115 = v123;
      v64 = v124;
      v119(v120, v121);
      goto LABEL_54;
    }

    break;
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  result = sub_22766D220();
  __break(1u);
  return result;
}

void *sub_22703CD44(uint64_t a1, uint64_t a2, void *a3)
{
  v70 = a3;
  v5 = sub_227663D60();
  v76 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v67 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v64 - v8;
  MEMORY[0x28223BE20](v10);
  v72 = &v64 - v11;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v66 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v64 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v64 - v19;
  sub_22766A630();
  sub_22766B370();
  v21 = *(v13 + 8);
  v73 = v12;
  v74 = v21;
  v75 = v13 + 8;
  v21(v20, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227670CD0;
  *(inited + 32) = sub_227666A90();
  *(inited + 40) = v23;
  v24 = sub_226F3E6A8(inited);
  swift_setDeallocating();
  sub_226FA6DA4(inited + 32);
  v25 = MEMORY[0x277D84F90];
  v77 = MEMORY[0x277D84F90];
  v26 = sub_2270134B0(v24);

  sub_22745FA30(v26);
  v27 = sub_22701380C(MEMORY[0x277D84FA0]);
  sub_22745FA30(v27);
  v28 = v77;
  v77 = v25;
  v29 = v5;
  v30 = sub_2276672F0();
  v31 = sub_2270134CC(v30);

  sub_22745FA30(v31);
  v32 = sub_2276672D0();
  v33 = sub_2270134E8(v32);

  sub_22745FA30(v33);
  v34 = sub_227667280();
  v35 = sub_227013504(v34);

  sub_22745FA30(v35);
  v65 = a2;
  v36 = sub_227667260();
  v37 = sub_227013B2C(v36);

  sub_22745FA30(v37);
  sub_226F438E8(v77);

  sub_226F438E8(v28);

  sub_227663D10();
  sub_22766A630();
  v38 = v76;
  v39 = *(v76 + 16);
  v40 = v67;
  v69 = v9;
  v39();
  v68 = v17;
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v77 = v44;
    *v43 = 136315138;
    sub_226EABFDC(&qword_28139BC38, MEMORY[0x277D504B0], MEMORY[0x277D504B8]);
    v45 = v40;
    v46 = sub_22766D140();
    v47 = v29;
    v49 = v48;
    v50 = *(v38 + 8);
    v50(v45, v47);
    v51 = sub_226E97AE8(v46, v49, &v77);

    *(v43 + 4) = v51;
    _os_log_impl(&dword_226E8E000, v41, v42, "Filtering catalog using: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x22AA9A450](v44, -1, -1);
    MEMORY[0x22AA9A450](v43, -1, -1);

    v52 = v73;
    v74(v68, v73);
    v53 = v76;
  }

  else
  {

    v53 = v38;
    v50 = *(v38 + 8);
    v50(v40, v29);
    v54 = v73;
    v74(v68, v73);
    v47 = v29;
    v52 = v54;
  }

  v55 = v72;
  (*(v53 + 32))(v72, v69, v47);
  v56 = v71;
  v57 = sub_22703B334(v55, v70);
  if (v3)
  {
    v50(v55, v47);
  }

  else
  {
    v58 = v57;
    sub_22766A630();

    v59 = sub_22766B380();
    v60 = sub_22766C8B0();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 134217984;
      *(v61 + 4) = *(v58 + 16);

      _os_log_impl(&dword_226E8E000, v59, v60, "Found %ld matching workouts", v61, 0xCu);
      v62 = v61;
      v52 = v73;
      MEMORY[0x22AA9A450](v62, -1, -1);
    }

    else
    {
    }

    v74(v66, v52);
    v56 = sub_22735AD38(v58, v65);

    v50(v55, v47);
  }

  return v56;
}

uint64_t sub_22703D460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E48, qword_2276766C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v47 - v10;
  v64 = sub_227667400();
  v12 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + *(type metadata accessor for WorkoutPlanGenerationScaffold(0) + 60));
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = 0;
    v67 = v14 + 32;
    v61 = (v12 + 48);
    v62 = (v12 + 56);
    v60 = (v12 + 32);
    v51 = v15 - 1;
    v52 = a3;
    v53 = MEMORY[0x277D84F90];
LABEL_3:
    v17 = v16;
    while (1)
    {
      if (v17 >= *(v14 + 16))
      {
        __break(1u);
        goto LABEL_38;
      }

      v18 = *(v67 + 8 * v17);
      v19 = *(v18 + 16);
      if (v19)
      {

        v20 = MEMORY[0x22AA95620](v17);
        if (v20 != 7)
        {
          v50 = v20;
          v47 = v8;
          v48 = a4;
          v21 = 0;
          v22 = (v18 + 64);
          v66 = MEMORY[0x277D84F90];
          v58 = v14;
          v59 = v12;
          v56 = v18;
          v57 = v15;
          v49 = v17 + 1;
          v55 = v19;
          while (v21 < *(v18 + 16))
          {
            v23 = v11;
            v65 = *(v22 - 4);
            v24 = *(v22 - 2);
            v25 = *(v22 - 1);
            v26 = *v22;
            v27 = *(a2 + 16);

            sub_226EB396C(v24, v25, v26);
            if (v27 && (v28 = sub_226F491D8(), (v29 & 1) != 0))
            {
              v54 = *(*(a2 + 56) + 16 * v28);

              sub_2276673D0();
              v30 = 0;
            }

            else
            {
              v30 = 1;
            }

            v11 = v23;
            v31 = v23;
            v32 = v64;
            (*v62)(v31, v30, 1, v64);

            sub_226EB2DFC(v24, v25, v26);
            if ((*v61)(v11, 1, v32) == 1)
            {
              sub_226E97D1C(v11, &qword_27D7B9E48, qword_2276766C0);
              v14 = v58;
              v12 = v59;
              v15 = v57;
            }

            else
            {
              v33 = *v60;
              (*v60)(v63, v11, v32);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v15 = v57;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v66 = sub_2273A5758(0, *(v66 + 2) + 1, 1, v66);
              }

              v36 = *(v66 + 2);
              v35 = *(v66 + 3);
              if (v36 >= v35 >> 1)
              {
                v66 = sub_2273A5758((v35 > 1), v36 + 1, 1, v66);
              }

              v37 = v66;
              *(v66 + 2) = v36 + 1;
              v12 = v59;
              v33(&v37[((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v59 + 72) * v36], v63, v32);
              v14 = v58;
            }

            ++v21;
            v22 += 40;
            v18 = v56;
            if (v55 == v21)
            {

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v53 = sub_2273A5624(0, v53[2] + 1, 1, v53);
              }

              a4 = v48;
              v8 = v47;
              v39 = v53[2];
              v38 = v53[3];
              v40 = v50;
              if (v39 >= v38 >> 1)
              {
                v44 = sub_2273A5624((v38 > 1), v39 + 1, 1, v53);
                v40 = v50;
                v53 = v44;
              }

              v41 = v53;
              v53[2] = v39 + 1;
              v42 = &v41[2 * v39];
              *(v42 + 32) = v40;
              v42[5] = v66;
              v43 = v51 == v17;
              a3 = v52;
              v16 = v49;
              if (v43)
              {
                goto LABEL_32;
              }

              goto LABEL_3;
            }
          }

LABEL_38:
          __break(1u);
LABEL_39:
          result = swift_unexpectedError();
          __break(1u);
          return result;
        }
      }

      if (v15 == ++v17)
      {
        a3 = v52;
        goto LABEL_32;
      }
    }
  }

  v53 = MEMORY[0x277D84F90];
LABEL_32:
  if (v53[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9978, &qword_227674DB0);
    v45 = sub_22766D010();
  }

  else
  {
    v45 = MEMORY[0x277D84F98];
  }

  v68 = v45;
  sub_22704BBEC(v53, 1, &v68);
  if (v8)
  {
    goto LABEL_39;
  }

  sub_22704DFD0(v68, a3);
  return sub_227665C00();
}

uint64_t sub_22703D9B8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DD0, &qword_227676628);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - v12;
  v14 = sub_227668780();
  if (v14 == sub_227668780())
  {
    v15 = sub_227667220();
    if (*(v15 + 16))
    {
      v16 = *(v15 + 32);

      (*(v11 + 16))(v13, v4 + OBJC_IVAR____TtC15SeymourServices19WorkoutPlanProvider__workoutPlanAlgorithmSeed, v10);
      sub_227669730();
      v17 = *(v11 + 8);
      v11 += 8;
      v17(v13, v10);
      if (v26 == 1)
      {
        if (v16 < 0)
        {
          __break(1u);
          goto LABEL_6;
        }
      }

      else
      {
        v16 = v25;
      }

LABEL_17:
      sub_227664430();
      return v16;
    }

LABEL_6:
  }

  v18 = *(sub_227667220() + 16);

  if (!v18)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v24[1] = a1;
  v20 = sub_226E97A5C(v18);
  (*(v11 + 16))(v13, v4 + OBJC_IVAR____TtC15SeymourServices19WorkoutPlanProvider__workoutPlanAlgorithmSeed, v10);
  sub_227669730();
  (*(v11 + 8))(v13, v10);
  if (v26 != 1)
  {
    goto LABEL_13;
  }

  result = sub_227667220();
  if ((v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

  if (v20 < *(result + 16))
  {
    v16 = *(result + 8 * v20 + 32);

    if ((v16 & 0x8000000000000000) == 0)
    {
LABEL_14:
      sub_22766A630();
      v21 = sub_22766B380();
      v22 = sub_22766C8B0();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134217984;
        *(v23 + 4) = v16;
        _os_log_impl(&dword_226E8E000, v21, v22, "Seeded Random Number Generator with seed=%llu", v23, 0xCu);
        MEMORY[0x22AA9A450](v23, -1, -1);
      }

      (*(v7 + 8))(v9, v6);
      goto LABEL_17;
    }

    __break(1u);
LABEL_13:
    v16 = v25;
    goto LABEL_14;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22703DD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 320) = v39;
  *(v9 + 328) = v8;
  *(v9 + 312) = v38;
  *(v9 + 187) = v37;
  *(v9 + 296) = v36;
  *(v9 + 280) = v35;
  *(v9 + 264) = v34;
  *(v9 + 248) = a7;
  *(v9 + 256) = a8;
  *(v9 + 232) = a5;
  *(v9 + 240) = a6;
  *(v9 + 216) = a3;
  *(v9 + 224) = a4;
  *(v9 + 200) = a1;
  *(v9 + 208) = a2;
  v10 = sub_227662860();
  *(v9 + 336) = v10;
  *(v9 + 344) = *(v10 - 8);
  *(v9 + 352) = swift_task_alloc();
  v11 = sub_227664EC0();
  *(v9 + 360) = v11;
  v12 = *(v11 - 8);
  *(v9 + 368) = v12;
  *(v9 + 376) = *(v12 + 64);
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = swift_task_alloc();
  *(v9 + 400) = swift_task_alloc();
  *(v9 + 408) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  *(v9 + 416) = swift_task_alloc();
  v13 = sub_227662940();
  *(v9 + 424) = v13;
  *(v9 + 432) = *(v13 - 8);
  *(v9 + 440) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  *(v9 + 448) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  *(v9 + 456) = swift_task_alloc();
  v14 = sub_2276681F0();
  *(v9 + 464) = v14;
  *(v9 + 472) = *(v14 - 8);
  *(v9 + 480) = swift_task_alloc();
  v15 = sub_227664CE0();
  *(v9 + 488) = v15;
  v16 = *(v15 - 8);
  *(v9 + 496) = v16;
  *(v9 + 504) = *(v16 + 64);
  *(v9 + 512) = swift_task_alloc();
  *(v9 + 520) = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  *(v9 + 528) = v17;
  *(v9 + 536) = *(v17 - 8);
  *(v9 + 544) = swift_task_alloc();
  v18 = sub_227665CA0();
  *(v9 + 552) = v18;
  *(v9 + 560) = *(v18 - 8);
  *(v9 + 568) = swift_task_alloc();
  v19 = sub_2276638D0();
  *(v9 + 576) = v19;
  *(v9 + 584) = *(v19 - 8);
  *(v9 + 592) = swift_task_alloc();
  *(v9 + 600) = swift_task_alloc();
  v20 = sub_227664440();
  *(v9 + 608) = v20;
  *(v9 + 616) = *(v20 - 8);
  *(v9 + 624) = swift_task_alloc();
  v21 = sub_227666B60();
  *(v9 + 632) = v21;
  *(v9 + 640) = *(v21 - 8);
  *(v9 + 648) = swift_task_alloc();
  *(v9 + 656) = swift_task_alloc();
  v22 = sub_227668480();
  *(v9 + 664) = v22;
  *(v9 + 672) = *(v22 - 8);
  *(v9 + 680) = swift_task_alloc();
  *(v9 + 688) = swift_task_alloc();
  *(v9 + 696) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E08, &qword_227676658);
  *(v9 + 704) = swift_task_alloc();
  v23 = sub_227663FA0();
  *(v9 + 712) = v23;
  *(v9 + 720) = *(v23 - 8);
  *(v9 + 728) = swift_task_alloc();
  v24 = sub_227662750();
  *(v9 + 736) = v24;
  *(v9 + 744) = *(v24 - 8);
  *(v9 + 752) = swift_task_alloc();
  *(v9 + 760) = swift_task_alloc();
  *(v9 + 768) = swift_task_alloc();
  v25 = sub_227667370();
  *(v9 + 776) = v25;
  v26 = *(v25 - 8);
  *(v9 + 784) = v26;
  *(v9 + 792) = *(v26 + 64);
  *(v9 + 800) = swift_task_alloc();
  *(v9 + 808) = swift_task_alloc();
  *(v9 + 816) = swift_task_alloc();
  *(v9 + 824) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E10, &qword_227676660);
  *(v9 + 832) = swift_task_alloc();
  *(v9 + 840) = swift_task_alloc();
  *(v9 + 848) = swift_task_alloc();
  v27 = sub_227663540();
  *(v9 + 856) = v27;
  *(v9 + 864) = *(v27 - 8);
  *(v9 + 872) = swift_task_alloc();
  v28 = sub_227665C20();
  *(v9 + 880) = v28;
  v29 = *(v28 - 8);
  *(v9 + 888) = v29;
  *(v9 + 896) = *(v29 + 64);
  *(v9 + 904) = swift_task_alloc();
  *(v9 + 912) = swift_task_alloc();
  v30 = sub_2276627D0();
  *(v9 + 920) = v30;
  *(v9 + 928) = *(v30 - 8);
  *(v9 + 936) = swift_task_alloc();
  *(v9 + 944) = swift_task_alloc();
  *(v9 + 952) = swift_task_alloc();
  v31 = sub_22766B390();
  *(v9 + 960) = v31;
  *(v9 + 968) = *(v31 - 8);
  *(v9 + 976) = swift_task_alloc();
  *(v9 + 984) = swift_task_alloc();
  *(v9 + 992) = swift_task_alloc();
  *(v9 + 1000) = swift_task_alloc();
  *(v9 + 1008) = swift_task_alloc();
  *(v9 + 1016) = swift_task_alloc();
  *(v9 + 1024) = swift_task_alloc();
  *(v9 + 1032) = swift_task_alloc();
  *(v9 + 1040) = swift_task_alloc();
  *(v9 + 1048) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22703E6B4, 0, 0);
}

uint64_t sub_22703E6B4(uint64_t a1)
{
  v145 = v1;
  v2 = *(v1 + 952);
  v3 = *(v1 + 928);
  v4 = *(v1 + 920);
  v5 = *(v1 + 912);
  v6 = *(v1 + 888);
  v7 = *(v1 + 880);
  v8 = *(v1 + 864);
  v118 = *(v1 + 856);
  v121 = *(v1 + 872);
  v130 = *(v1 + 848);
  v9 = *(v1 + 288);
  v116 = *(v1 + 296);
  v124 = *(v1 + 280);
  v10 = *(v1 + 256);
  sub_22766A630();
  v11 = *(v3 + 16);
  *(v1 + 1056) = v11;
  *(v1 + 1064) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v2, v10, v4);
  v12 = *(v6 + 16);
  *(v1 + 1072) = v12;
  *(v1 + 1080) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v5, v9, v7);
  (*(v8 + 16))(v121, v116, v118);
  sub_226E93170(v124, v130, &qword_27D7B9E10, &qword_227676660);

  v13 = sub_22766B380();
  v14 = sub_22766C8B0();

  if (os_log_type_enabled(v13, v14))
  {
    v138 = v14;
    v141 = v13;
    v15 = *(v1 + 952);
    v16 = *(v1 + 928);
    v17 = *(v1 + 920);
    v18 = *(v1 + 888);
    v113 = *(v1 + 880);
    v114 = *(v1 + 912);
    v19 = *(v1 + 864);
    v115 = *(v1 + 856);
    v117 = *(v1 + 872);
    v127 = *(v1 + 840);
    v131 = *(v1 + 848);
    v122 = *(v1 + 187);
    v125 = *(v1 + 312);
    v119 = *(v1 + 304);
    v112 = *(v1 + 248);
    v111 = *(v1 + 240);
    v20 = *(v1 + 224);
    v21 = *(v1 + 216);
    v22 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v144[0] = v135;
    *v22 = 136317186;
    *(v22 + 4) = sub_226E97AE8(v21, v20, v144);
    *(v22 + 12) = 2080;
    sub_226EABFDC(&unk_28139BD90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v23 = sub_22766D140();
    v25 = v24;
    (*(v16 + 8))(v15, v17);
    v26 = sub_226E97AE8(v23, v25, v144);

    *(v22 + 14) = v26;
    *(v22 + 22) = 2080;
    sub_226EABFDC(&qword_27D7B84C8, MEMORY[0x277D534C8], MEMORY[0x277D534D0]);
    v27 = sub_22766C610();
    v29 = sub_226E97AE8(v27, v28, v144);

    *(v22 + 24) = v29;
    *(v22 + 32) = 2080;
    *(v22 + 34) = sub_226E97AE8(v111, v112, v144);
    *(v22 + 42) = 2080;
    sub_226EABFDC(&qword_27D7B9E20, MEMORY[0x277D51CB0], MEMORY[0x277D51CC8]);
    v30 = sub_22766D140();
    v32 = v31;
    (*(v18 + 8))(v114, v113);
    v33 = sub_226E97AE8(v30, v32, v144);

    *(v22 + 44) = v33;
    *(v22 + 52) = 2080;
    sub_226EABFDC(&qword_27D7B9E28, MEMORY[0x277D4FFA8], MEMORY[0x277D4FFC8]);
    v34 = sub_22766D140();
    v36 = v35;
    (*(v19 + 8))(v117, v115);
    v37 = sub_226E97AE8(v34, v36, v144);

    *(v22 + 54) = v37;
    *(v22 + 62) = 2080;
    *(v1 + 176) = v119;
    *(v1 + 184) = v122 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9298, &unk_227676680);
    sub_22704F918();
    v38 = sub_227663B60();
    v40 = sub_226E97AE8(v38, v39, v144);

    *(v22 + 64) = v40;
    *(v22 + 72) = 2048;
    *(v22 + 74) = v125;
    *(v22 + 82) = 2080;
    sub_226E93170(v131, v127, &qword_27D7B9E10, &qword_227676660);
    v41 = sub_2276686C0();
    v42 = *(v41 - 8);
    v43 = (*(v42 + 48))(v127, 1, v41);
    v44 = *(v1 + 840);
    if (v43 == 1)
    {
      sub_226E97D1C(*(v1 + 840), &qword_27D7B9E10, &qword_227676660);
      v45 = 0xE200000000000000;
      v46 = 23899;
    }

    else
    {
      v46 = sub_227668690();
      v45 = v56;
      (*(v42 + 8))(v44, v41);
    }

    v57 = *(v1 + 1048);
    v58 = *(v1 + 968);
    v59 = *(v1 + 960);
    sub_226E97D1C(*(v1 + 848), &qword_27D7B9E10, &qword_227676660);
    v60 = sub_226E97AE8(v46, v45, v144);

    *(v22 + 84) = v60;
    _os_log_impl(&dword_226E8E000, v141, v138, "Making WorkoutPlan algorithmVersion: %s, identifier: %s modalityPreferences: %s, name: %s schedule: %s, startDate: %s, variation: %s workoutPlanLength: %ld\nmetrics: %s", v22, 0x5Cu);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v135, -1, -1);
    MEMORY[0x22AA9A450](v22, -1, -1);

    v55 = *(v58 + 8);
    v55(v57, v59);
  }

  else
  {
    v142 = *(v1 + 1048);
    v47 = *(v1 + 968);
    v136 = *(v1 + 952);
    v139 = *(v1 + 960);
    v48 = *(v1 + 928);
    v128 = *(v1 + 912);
    v132 = *(v1 + 920);
    v49 = *(v1 + 888);
    v50 = *(v1 + 880);
    v51 = *(v1 + 872);
    v52 = *(v1 + 864);
    v53 = *(v1 + 856);
    v54 = *(v1 + 848);

    sub_226E97D1C(v54, &qword_27D7B9E10, &qword_227676660);
    (*(v52 + 8))(v51, v53);
    (*(v49 + 8))(v128, v50);
    (*(v48 + 8))(v136, v132);
    v55 = *(v47 + 8);
    v55(v142, v139);
  }

  *(v1 + 1088) = v55;
  sub_22766A630();

  v61 = sub_22766B380();
  v62 = sub_22766C8B0();

  v63 = os_log_type_enabled(v61, v62);
  v64 = *(v1 + 1040);
  v65 = *(v1 + 960);
  v143 = v55;
  if (v63)
  {
    v67 = *(v1 + 264);
    v66 = *(v1 + 272);
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v144[0] = v69;
    *v68 = 136315138;
    v70 = sub_22703AE64(v67, v66);
    v72 = sub_226E97AE8(v70, v71, v144);
    v55 = v143;

    *(v68 + 4) = v72;
    _os_log_impl(&dword_226E8E000, v61, v62, "Using modalityIdentifierMap: %s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v69);
    MEMORY[0x22AA9A450](v69, -1, -1);
    MEMORY[0x22AA9A450](v68, -1, -1);
  }

  v55(v64, v65);
  v73 = *(v1 + 824);
  v74 = *(v1 + 784);
  v75 = *(v1 + 776);
  v76 = *(v1 + 320);
  sub_22766A630();
  v77 = *(v74 + 16);
  *(v1 + 1096) = v77;
  *(v1 + 1104) = (v74 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v137 = v77;
  v77(v73, v76, v75);
  v78 = sub_22766B380();
  v79 = sub_22766C8B0();
  v80 = os_log_type_enabled(v78, v79);
  v81 = *(v1 + 1032);
  v82 = *(v1 + 960);
  v83 = *(v1 + 824);
  v84 = *(v1 + 784);
  v85 = *(v1 + 776);
  if (v80)
  {
    v86 = swift_slowAlloc();
    v133 = v82;
    v87 = swift_slowAlloc();
    v144[0] = v87;
    *v86 = 136315138;
    sub_226EABFDC(&qword_27D7B9DF0, MEMORY[0x277D52CA8], MEMORY[0x277D52CB8]);
    v129 = v81;
    v88 = sub_22766D140();
    v90 = v89;
    (*(v84 + 8))(v83, v85);
    v91 = sub_226E97AE8(v88, v90, v144);

    *(v86 + 4) = v91;
    _os_log_impl(&dword_226E8E000, v78, v79, "Using configuration: %s", v86, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v87);
    MEMORY[0x22AA9A450](v87, -1, -1);
    MEMORY[0x22AA9A450](v86, -1, -1);

    v143(v129, v133);
  }

  else
  {

    (*(v84 + 8))(v83, v85);
    v55(v81, v82);
  }

  v92 = *(v1 + 816);
  v93 = *(v1 + 784);
  v94 = *(v1 + 768);
  v95 = *(v1 + 744);
  v96 = *(v1 + 736);
  v97 = *(v1 + 328);
  v123 = *(v1 + 320);
  v126 = *(v1 + 776);
  v99 = *(v1 + 264);
  v98 = *(v1 + 272);
  sub_227662740();
  sub_2276626F0();
  *(v1 + 1112) = v100;
  v101 = *(v95 + 8);
  *(v1 + 1120) = v101;
  *(v1 + 1128) = (v95 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v101(v94, v96);
  v102 = sub_227665BE0();

  v103 = sub_22704F1AC(v102, v99);
  *(v1 + 1136) = v103;

  v134 = v97[25];
  v120 = v97[26];
  __swift_project_boxed_opaque_existential_0(v97 + 22, v134);
  v137(v92, v123, v126);
  v104 = (*(v93 + 80) + 48) & ~*(v93 + 80);
  v105 = swift_allocObject();
  *(v1 + 1144) = v105;
  *(v105 + 2) = v97;
  *(v105 + 3) = v103;
  *(v105 + 4) = v99;
  *(v105 + 5) = v98;
  (*(v93 + 32))(&v105[v104], v92, v126);
  v106 = *(v120 + 24);

  v140 = (v106 + *v106);
  v107 = swift_task_alloc();
  *(v1 + 1152) = v107;
  *v107 = v1;
  v107[1] = sub_22703F364;
  v108 = *(v1 + 704);
  v109 = *(v1 + 696);

  return (v140)(v108, sub_22704F57C, v105, v109, v134, v120);
}

uint64_t sub_22703F364()
{
  *(*v1 + 1160) = v0;

  if (v0)
  {

    v2 = sub_227041F38;
  }

  else
  {
    v2 = sub_22703F4A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_22703F4A8()
{
  v1 = v0[88];
  v2 = v0[87];
  v165 = *(v1 + *(v2 + 48));
  v3 = *(v1 + *(v2 + 64));
  (*(v0[90] + 32))(v0[91]);
  sub_22766A630();

  v4 = sub_22766B380();
  v5 = sub_22766C8B0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[136];
  v8 = v0[128];
  v166 = v0;
  v9 = v0[120];
  v149 = v3;
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = v7;
    v12 = swift_slowAlloc();
    v168 = v12;
    *v10 = 136315138;
    v13 = sub_22766BEC0();
    v15 = sub_226E97AE8(v13, v14, &v168);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_226E8E000, v4, v5, "Fetched archivedSessionWorkoutCounts: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA9A450](v12, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    v11(v8, v9);
  }

  else
  {

    v7(v8, v9);
  }

  v16 = v166[29];
  v19 = *(v16 + 56);
  v18 = v16 + 56;
  v17 = v19;
  v20 = -1;
  v21 = -1 << *(v166[29] + 32);
  if (-v21 < 64)
  {
    v20 = ~(-1 << -v21);
  }

  v22 = v20 & v17;
  v23 = (63 - v21) >> 6;
  v160 = v166[29];
  v163 = v166[84];
  v154 = (v163 + 8);

  v24 = 0;
  v25 = MEMORY[0x277D84F98];
  v26 = MEMORY[0x277D84F98];
  v150 = v23;
  v152 = v18;
  while (v22)
  {
    v28 = v24;
LABEL_14:
    v29 = v166[86];
    v30 = v166[85];
    v31 = v166[83];
    (*(v163 + 16))(v29, *(v160 + 48) + *(v163 + 72) * (__clz(__rbit64(v22)) | (v28 << 6)), v31);
    (*(v163 + 32))(v30, v29, v31);
    v32 = sub_227668460();
    v34 = v33;
    v35 = sub_227668470();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v168 = v26;
    v37 = sub_226E92000(v32, v34);
    v39 = v26[2];
    v40 = (v38 & 1) == 0;
    v41 = __OFADD__(v39, v40);
    v42 = v39 + v40;
    if (v41)
    {
      goto LABEL_90;
    }

    v43 = v38;
    if (v26[3] < v42)
    {
      sub_226FE6DC0(v42, isUniquelyReferenced_nonNull_native);
      v37 = sub_226E92000(v32, v34);
      if ((v43 & 1) != (v44 & 1))
      {
        goto LABEL_84;
      }

LABEL_19:
      if (v43)
      {
        goto LABEL_20;
      }

      goto LABEL_22;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_19;
    }

    v46 = v37;
    sub_226FF2400();
    v37 = v46;
    if (v43)
    {
LABEL_20:
      v45 = v37;

      v26 = v168;
      *(v168[7] + 8 * v45) = v35;

      goto LABEL_24;
    }

LABEL_22:
    v26 = v168;
    v168[(v37 >> 6) + 8] |= 1 << v37;
    v47 = (v26[6] + 16 * v37);
    *v47 = v32;
    v47[1] = v34;
    *(v26[7] + 8 * v37) = v35;
    v48 = v26[2];
    v41 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (v41)
    {
      goto LABEL_98;
    }

    v26[2] = v49;
LABEL_24:
    v50 = sub_227668460();
    v52 = v51;
    v53 = sub_227668440();
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v168 = v25;
    v55 = sub_226E92000(v50, v52);
    v57 = v25[2];
    v58 = (v56 & 1) == 0;
    v41 = __OFADD__(v57, v58);
    v59 = v57 + v58;
    if (v41)
    {
      goto LABEL_91;
    }

    v60 = v56;
    if (v25[3] >= v59)
    {
      if ((v54 & 1) == 0)
      {
        v67 = v55;
        sub_226FF2400();
        v55 = v67;
      }
    }

    else
    {
      sub_226FE6DC0(v59, v54);
      v55 = sub_226E92000(v50, v52);
      if ((v60 & 1) != (v61 & 1))
      {
LABEL_84:

        sub_22766D220();
        return;
      }
    }

    v22 &= v22 - 1;
    v62 = v166[85];
    v63 = v166[83];
    if (v60)
    {
      v27 = v55;

      v25 = v168;
      *(v168[7] + 8 * v27) = v53;

      (*v154)(v62, v63);
    }

    else
    {
      v25 = v168;
      v168[(v55 >> 6) + 8] |= 1 << v55;
      v64 = (v25[6] + 16 * v55);
      *v64 = v50;
      v64[1] = v52;
      *(v25[7] + 8 * v55) = v53;
      (*v154)(v62, v63);
      v65 = v25[2];
      v41 = __OFADD__(v65, 1);
      v66 = v65 + 1;
      if (v41)
      {
        goto LABEL_99;
      }

      v25[2] = v66;
    }

    v24 = v28;
    v23 = v150;
    v18 = v152;
  }

  while (1)
  {
    v28 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_88;
    }

    if (v28 >= v23)
    {
      break;
    }

    v22 = *(v18 + 8 * v28);
    ++v24;
    if (v22)
    {
      goto LABEL_14;
    }
  }

  v68 = v166[137];
  v69 = v166[101];
  v161 = v69;
  v70 = v166[97];
  v153 = v68;
  v145 = v166[80];
  v71 = v166[41];
  v147 = v166[40];
  v156 = v166[34];
  v155 = v166[33];

  __swift_project_boxed_opaque_existential_0((v71 + 136), *(v71 + 160));
  v146 = sub_22766A2C0();
  sub_226E91B50(v71 + 56, (v166 + 2));
  v68(v69, v147, v70);
  v148 = sub_227663E90();
  sub_226E91B50(v71 + 176, (v166 + 7));
  v72 = v166[5];
  v73 = __swift_mutable_project_boxed_opaque_existential_1((v166 + 2), v72);
  v74 = *(v72 - 8);
  v75 = swift_task_alloc();
  (*(v74 + 16))(v75, v73, v72);
  v76 = *v75;
  v77 = type metadata accessor for CatalogDataStore();
  v166[15] = v77;
  v166[16] = &off_283A99B78;
  v166[12] = v76;
  type metadata accessor for WorkoutPlanContentCurator(0);
  v78 = swift_allocObject();
  v166[146] = v78;
  v79 = __swift_mutable_project_boxed_opaque_existential_1((v166 + 12), v77);
  v80 = *(v77 - 8);
  v81 = swift_task_alloc();
  (*(v80 + 16))(v81, v79, v77);
  v82 = *v81;
  v166[20] = v77;
  v166[21] = &off_283A99B78;
  v166[17] = v82;
  *(v78 + 16) = v146;
  *(v78 + 24) = v149;
  sub_226E91B50((v166 + 17), v78 + 32);
  v153(v78 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_configuration, v161, v70);
  *(v78 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_filterDurations) = v148;
  sub_226E91B50((v166 + 7), v78 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_persistenceStore);
  *(v78 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_preferredMusicGenres) = v26;
  *(v78 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_preferredTrainers) = v25;
  v159 = v78;
  v83 = (v78 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_modalityIdentifierMap);
  *v83 = v155;
  v83[1] = v156;
  v84 = v165 + 56;
  v85 = -1;
  v86 = -1 << *(v165 + 32);
  if (-v86 < 64)
  {
    v85 = ~(-1 << -v86);
  }

  v87 = v85 & *(v165 + 56);
  v88 = (63 - v86) >> 6;

  v89 = 0;
  v90 = MEMORY[0x277D84F90];
  while (v87)
  {
LABEL_42:
    v92 = v166[82];
    v93 = v166[79];
    (*(v145 + 16))(v92, *(v165 + 48) + *(v145 + 72) * (__clz(__rbit64(v87)) | (v89 << 6)), v93);
    v94 = sub_227666AE0();
    (*(v145 + 8))(v92, v93);
    v95 = *(v94 + 16);
    v96 = *(v90 + 2);
    v97 = v96 + v95;
    if (__OFADD__(v96, v95))
    {
      goto LABEL_92;
    }

    v98 = swift_isUniquelyReferenced_nonNull_native();
    if (!v98 || v97 > *(v90 + 3) >> 1)
    {
      if (v96 <= v97)
      {
        v99 = v96 + v95;
      }

      else
      {
        v99 = v96;
      }

      v90 = sub_226EB3F78(v98, v99, 1, v90);
    }

    v87 &= v87 - 1;
    if (*(v94 + 16))
    {
      if ((*(v90 + 3) >> 1) - *(v90 + 2) < v95)
      {
        goto LABEL_96;
      }

      swift_arrayInitWithCopy();

      if (v95)
      {
        v100 = *(v90 + 2);
        v41 = __OFADD__(v100, v95);
        v101 = v100 + v95;
        if (v41)
        {
          goto LABEL_100;
        }

        *(v90 + 2) = v101;
      }
    }

    else
    {

      if (v95)
      {
        goto LABEL_93;
      }
    }
  }

  while (1)
  {
    v91 = v89 + 1;
    if (__OFADD__(v89, 1))
    {
      break;
    }

    if (v91 >= v88)
    {

      v157 = sub_226F3E6A8(v90);

      v102 = -1;
      v103 = -1 << *(v165 + 32);
      if (-v103 < 64)
      {
        v102 = ~(-1 << -v103);
      }

      v104 = v102 & *(v165 + 56);
      v105 = (63 - v103) >> 6;

      v106 = 0;
      v107 = MEMORY[0x277D84F90];
      while (v104)
      {
LABEL_63:
        v109 = v166[81];
        v110 = v166[79];
        (*(v145 + 16))(v109, *(v165 + 48) + *(v145 + 72) * (__clz(__rbit64(v104)) | (v106 << 6)), v110);
        v111 = sub_227666AA0();
        (*(v145 + 8))(v109, v110);
        v112 = *(v111 + 16);
        v113 = *(v107 + 2);
        v114 = v113 + v112;
        if (__OFADD__(v113, v112))
        {
          goto LABEL_94;
        }

        v115 = swift_isUniquelyReferenced_nonNull_native();
        if (!v115 || v114 > *(v107 + 3) >> 1)
        {
          if (v113 <= v114)
          {
            v116 = v113 + v112;
          }

          else
          {
            v116 = v113;
          }

          v107 = sub_226EB3F78(v115, v116, 1, v107);
        }

        v104 &= v104 - 1;
        if (*(v111 + 16))
        {
          if ((*(v107 + 3) >> 1) - *(v107 + 2) < v112)
          {
            goto LABEL_97;
          }

          swift_arrayInitWithCopy();

          if (v112)
          {
            v117 = *(v107 + 2);
            v41 = __OFADD__(v117, v112);
            v118 = v117 + v112;
            if (v41)
            {
              goto LABEL_101;
            }

            *(v107 + 2) = v118;
          }
        }

        else
        {

          if (v112)
          {
            goto LABEL_95;
          }
        }
      }

      while (1)
      {
        v108 = v106 + 1;
        if (__OFADD__(v106, 1))
        {
          goto LABEL_89;
        }

        if (v108 >= v105)
        {

          v119 = sub_226F3E6A8(v107);

          v120 = *(v157 + 16);
          if (v120)
          {
            v121 = sub_22766C380();
            *(v121 + 16) = v120;
            bzero((v121 + 32), 8 * v120);
          }

          else
          {
            v121 = MEMORY[0x277D84F90];
          }

          v122 = sub_22704DA3C(v157, v121);

          *(v159 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_musicGenreFrequencies) = v122;
          v123 = *(v119 + 16);
          if (v123)
          {
            v124 = sub_22766C380();
            *(v124 + 16) = v123;
            bzero((v124 + 32), 8 * v123);
          }

          else
          {
            v124 = MEMORY[0x277D84F90];
          }

          v125 = v166[137];
          v162 = v166[102];
          v126 = v166[101];
          v158 = v166[100];
          v127 = v166[98];
          v128 = v166[97];
          v129 = v166[40];
          v151 = v166[78];
          v130 = sub_22704DA3C(v119, v124);

          *(v159 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_trainerFrequencies) = v130;
          v131 = MEMORY[0x277D84F90];
          *(v159 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_cachedCatalog) = sub_227149394(MEMORY[0x277D84F90]);
          v132 = sub_2271494D8(v131);
          __swift_destroy_boxed_opaque_existential_0(v166 + 7);
          v164 = *(v127 + 8);
          v164(v126, v128);
          __swift_destroy_boxed_opaque_existential_0(v166 + 17);
          *(v159 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_usedWorkoutsByGroup) = v132;
          __swift_destroy_boxed_opaque_existential_0(v166 + 12);

          __swift_destroy_boxed_opaque_existential_0(v166 + 2);

          v166[147] = sub_22703D9B8(v151, v129, 0);
          sub_2276627C0();
          v125(v158, v129, v128);
          type metadata accessor for WorkoutPlanContentUtils(0);
          v133 = swift_allocObject();
          v166[148] = v133;
          v125(v133 + OBJC_IVAR____TtC15SeymourServices23WorkoutPlanContentUtils_configuration, v158, v128);
          v125(v162, v158, v128);
          type metadata accessor for WorkoutPlanObjectiveUtils(0);
          v134 = swift_allocObject();
          v125(v134 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_configuration, v162, v128);
          v135 = MEMORY[0x277D84F90];
          *(v134 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_shorterCardioCache) = sub_227149864(MEMORY[0x277D84F90]);
          *(v134 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_repetitionCache) = sub_227149954(v135);
          *(v134 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_longNonEquipmentCardioCache) = sub_227149864(v135);
          v136 = sub_227149864(v135);
          v164(v158, v128);
          v164(v162, v128);
          *(v134 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_cardioWithDifferentEquipmentSameDayCache) = v136;
          *(v133 + OBJC_IVAR____TtC15SeymourServices23WorkoutPlanContentUtils_objectiveUtils) = v134;
          v137 = swift_task_alloc();
          v166[149] = v137;
          *v137 = v166;
          v137[1] = sub_2270403EC;
          v138 = v166[142];
          v139 = v166[75];
          v140 = v166[37];
          v141 = v166[31];
          v142 = v166[32];
          v143 = v166[29];
          v144 = v166[30];

          sub_2274DF054(v139, v159, v143, v144, v141, v142, v138, v140);
          return;
        }

        v104 = *(v84 + 8 * v108);
        ++v106;
        if (v104)
        {
          v106 = v108;
          goto LABEL_63;
        }
      }
    }

    v87 = *(v84 + 8 * v91);
    ++v89;
    if (v87)
    {
      v89 = v91;
      goto LABEL_42;
    }
  }

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
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
}

uint64_t sub_2270403EC(double a1)
{
  v3 = *v2;
  *(v3 + 1200) = a1;
  *(v3 + 1208) = v1;

  if (v1)
  {
    v4 = sub_227042248;
  }

  else
  {
    v4 = sub_227040524;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227040524()
{
  v229 = v0;
  v1 = *(v0 + 1072);
  v2 = *(v0 + 904);
  v3 = *(v0 + 880);
  v4 = *(v0 + 288);
  (*(v0 + 1056))(*(v0 + 936), *(v0 + 944), *(v0 + 920));
  v1(v2, v4, v3);

  sub_227665C50();
  if (sub_227663880())
  {
    sub_22766A630();
    v5 = sub_22766B380();
    v6 = sub_22766C890();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_226E8E000, v5, v6, "Empty plan detected", v7, 2u);
      MEMORY[0x22AA9A450](v7, -1, -1);
    }

    v8 = *(v0 + 1016);
    v9 = *(v0 + 968);
    v10 = *(v0 + 960);
    v224 = *(v0 + 600);
    v11 = *(v0 + 584);
    v221 = *(v0 + 576);
    v212 = *(v0 + 568);
    v12 = *(v0 + 560);
    v13 = *(v0 + 552);
    v15 = *(v0 + 360);
    v14 = *(v0 + 368);

    (*(v9 + 8))(v8, v10);
    v16 = sub_226EABFDC(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    v17 = swift_allocError();
    (*(v14 + 104))(v18, *MEMORY[0x277D511A0], v15);
    swift_willThrow();

    (*(v12 + 8))(v212, v13);
    (*(v11 + 8))(v224, v221);
    (*(*(v0 + 928) + 8))(*(v0 + 944), *(v0 + 920));
    *(v0 + 192) = v17;
    v19 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if (swift_dynamicCast())
    {
      v225 = v16;
      v21 = *(v0 + 400);
      v20 = *(v0 + 408);
      v22 = *(v0 + 392);
      v23 = *(v0 + 360);
      v24 = *(v0 + 368);

      v207 = *(v24 + 32);
      v207(v21, v20, v23);
      sub_22766A630();
      v25 = *(v24 + 16);
      v25(v22, v21, v23);
      v26 = sub_22766B380();
      v213 = sub_22766C890();
      v27 = os_log_type_enabled(v26, v213);
      v28 = *(v0 + 984);
      v29 = *(v0 + 968);
      v30 = *(v0 + 960);
      v31 = *(v0 + 392);
      v33 = *(v0 + 360);
      v32 = *(v0 + 368);
      v218 = v25;
      if (v27)
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v228[0] = v35;
        *v34 = 136315138;
        v201 = v28;
        v204 = v30;
        v36 = MEMORY[0x22AA995D0](v33, v225);
        v38 = v37;
        (*(v32 + 8))(v31, v33);
        v39 = sub_226E97AE8(v36, v38, v228);

        *(v34 + 4) = v39;
        _os_log_impl(&dword_226E8E000, v26, v213, "Failed to create plan with error %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x22AA9A450](v35, -1, -1);
        MEMORY[0x22AA9A450](v34, -1, -1);

        v40 = *(v29 + 8);
        v41 = v201;
        v42 = v204;
      }

      else
      {

        (*(v32 + 8))(v31, v33);
        v40 = *(v29 + 8);
        v41 = v28;
        v42 = v30;
      }

      v110 = v40;
      v40(v41, v42);
      v111 = *(v0 + 1120);
      v112 = *(v0 + 752);
      v113 = *(v0 + 736);
      v114 = *(v0 + 544);
      v115 = *(v0 + 536);
      v116 = *(v0 + 528);
      v117 = *(*(v0 + 328) + 216);
      sub_227662740();
      sub_2276626F0();
      v111(v112, v113);
      (*(v115 + 16))(v114, v117 + OBJC_IVAR____TtC15SeymourServices28WorkoutPlanAnalyticsReporter__enableWorkoutPlanAnalyticsReporter, v116);
      sub_227669730();
      (*(v115 + 8))(v114, v116);
      if (*(v0 + 185) == 1)
      {
        v176 = *(v0 + 1120);
        v153 = *(v0 + 1056);
        v155 = *(v0 + 928);
        v152 = *(v0 + 920);
        v180 = *(v0 + 832);
        v167 = *(v0 + 768);
        v174 = *(v0 + 736);
        v118 = *(v0 + 584);
        v178 = *(v0 + 576);
        v181 = *(v0 + 520);
        v193 = *(v0 + 512);
        v216 = (v0 + 488);
        v119 = *(v0 + 480);
        v188 = *(v0 + 496);
        v191 = *(v0 + 488);
        v120 = *(v0 + 472);
        v170 = *(v0 + 464);
        v121 = *(v0 + 456);
        v199 = *(v0 + 448);
        v157 = *(v0 + 440);
        v163 = *(v0 + 432);
        v164 = *(v0 + 424);
        v203 = *(v0 + 400);
        v206 = *(v0 + 416);
        v185 = *(v0 + 384);
        v122 = *(v0 + 368);
        v183 = *(v0 + 376);
        v123 = *(v0 + 344);
        v150 = *(v0 + 336);
        v151 = *(v0 + 352);
        v161 = *(v0 + 280);
        v148 = *(v0 + 256);
        v149 = *(v0 + 360);
        sub_227667240();
        sub_227667ED0();
        (*(v120 + 8))(v119, v170);
        (*(v118 + 56))(v121, 1, 1, v178);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E18, &qword_227676668);
        v171 = (*(v122 + 80) + 32) & ~*(v122 + 80);
        v124 = swift_allocObject();
        *(v124 + 16) = xmmword_227670CD0;
        v218(v124 + v171, v203, v149);
        v153(v199, v148, v152);
        (*(v155 + 56))(v199, 0, 1, v152);
        (*(v123 + 104))(v151, *MEMORY[0x277CC9830], v150);

        sub_227662870();
        (*(v123 + 8))(v151, v150);
        sub_2276634F0();
        (*(v163 + 8))(v157, v164);
        sub_2276626F0();
        v125 = v176(v167, v174);
        WorkoutPlanSchedule.metricScaffold.getter(v125);
        sub_2273326C4(v126);

        sub_226E93170(v161, v180, &qword_27D7B9E10, &qword_227676660);
        sub_227664CD0();
        sub_22766C490();
        v127 = sub_22766C4B0();
        (*(*(v127 - 8) + 56))(v206, 0, 1, v127);
        v200 = swift_allocObject();
        swift_weakInit();
        v218(v185, v203, v149);
        (*(v188 + 16))(v193, v181, v191);
        v128 = (v183 + v171 + 7) & 0xFFFFFFFFFFFFFFF8;
        v129 = (v128 + *(v188 + 80) + 8) & ~*(v188 + 80);
        v130 = swift_allocObject();
        *(v130 + 16) = 0;
        *(v130 + 24) = 0;
        v207(v130 + v171, v185, v149);
        *(v130 + v128) = v200;
        v131 = v130 + v129;
        v132 = (v0 + 520);
        (*(v188 + 32))(v131, v193, v191);
        sub_2272CA940(0, 0, v206, &unk_227676670, v130);

        v133 = *(v188 + 8);
      }

      else
      {
        v216 = (v0 + 960);
        v132 = (v0 + 976);
        sub_22766A630();
        v134 = sub_22766B380();
        v135 = sub_22766C8B0();
        if (os_log_type_enabled(v134, v135))
        {
          v136 = swift_slowAlloc();
          *v136 = 0;
          _os_log_impl(&dword_226E8E000, v134, v135, "Metrics reporting disabled", v136, 2u);
          MEMORY[0x22AA9A450](v136, -1, -1);
        }

        v133 = v110;
      }

      v137 = *v132;
      v138 = *v216;
      v139 = *(v0 + 720);
      v211 = *(v0 + 712);
      v217 = *(v0 + 728);
      v140 = *(v0 + 624);
      v141 = *(v0 + 616);
      v142 = *(v0 + 608);
      v143 = *(v0 + 400);
      v145 = *(v0 + 360);
      v144 = *(v0 + 368);
      v133(v137, v138);
      swift_allocError();
      v218(v146, v143, v145);
      swift_willThrow();

      (*(v144 + 8))(v143, v145);
      (*(v141 + 8))(v140, v142);
      (*(v139 + 8))(v217, v211);
    }

    else
    {
      v71 = *(v0 + 728);
      v72 = *(v0 + 720);
      v73 = *(v0 + 712);
      v74 = *(v0 + 624);
      v75 = *(v0 + 616);
      v76 = *(v0 + 608);

      (*(v75 + 8))(v74, v76);
      (*(v72 + 8))(v71, v73);
    }

    v109 = *(v0 + 8);
  }

  else
  {
    v43 = *(v0 + 1120);
    v44 = *(v0 + 760);
    v45 = *(v0 + 736);
    v46 = *(v0 + 544);
    v47 = *(v0 + 536);
    v48 = *(v0 + 528);
    v49 = *(*(v0 + 328) + 216);
    sub_227662740();
    sub_2276626F0();
    v51 = v50;
    v43(v44, v45);
    (*(v47 + 16))(v46, v49 + OBJC_IVAR____TtC15SeymourServices28WorkoutPlanAnalyticsReporter__enableWorkoutPlanAnalyticsReporter, v48);
    sub_227669730();
    (*(v47 + 8))(v46, v48);
    if (*(v0 + 186) == 1)
    {
      sub_22766A630();
      v52 = sub_22766B380();
      v53 = sub_22766C8B0();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_226E8E000, v52, v53, "Reporting plan creation event to AMP", v54, 2u);
        MEMORY[0x22AA9A450](v54, -1, -1);
      }

      v55 = *(v0 + 1200);
      v182 = *(v0 + 1120);
      v56 = *(v0 + 1112);
      v196 = *(v0 + 1072);
      v175 = *(v0 + 1008);
      v57 = *(v0 + 968);
      v156 = *(v0 + 960);
      v168 = *(v0 + 928);
      v169 = *(v0 + 920);
      v202 = *(v0 + 888);
      v222 = *(v0 + 904);
      v226 = *(v0 + 880);
      v184 = *(v0 + 832);
      v172 = *(v0 + 768);
      v179 = *(v0 + 736);
      v58 = *(v0 + 584);
      v159 = *(v0 + 576);
      v160 = *(v0 + 600);
      v209 = *(v0 + 520);
      v219 = *(v0 + 512);
      v189 = *(v0 + 496);
      v192 = *(v0 + 488);
      v194 = *(v0 + 504);
      v60 = *(v0 + 472);
      v59 = *(v0 + 480);
      v154 = *(v0 + 464);
      v158 = *(v0 + 456);
      v61 = *(v0 + 440);
      v162 = *(v0 + 448);
      v165 = *(v0 + 432);
      v166 = *(v0 + 424);
      v214 = *(v0 + 416);
      v173 = *(v0 + 288);
      v177 = *(v0 + 280);

      (*(v57 + 8))(v175, v156);
      sub_227667240();
      sub_227667ED0();
      (*(v60 + 8))(v59, v154);
      (*(v58 + 16))(v158, v160, v159);
      (*(v58 + 56))(v158, 0, 1, v159);

      sub_2276637C0();
      (*(v168 + 56))(v162, 0, 1, v169);
      sub_227662890();
      sub_2276634F0();
      (*(v165 + 8))(v61, v166);
      sub_2276626F0();
      v62 = v182(v172, v179);
      WorkoutPlanSchedule.metricScaffold.getter(v62);
      sub_2273326C4(v63);

      sub_226E93170(v177, v184, &qword_27D7B9E10, &qword_227676660);
      sub_227664CD0();
      sub_22766C490();
      v64 = sub_22766C4B0();
      (*(*(v64 - 8) + 56))(v214, 0, 1, v64);
      v186 = swift_allocObject();
      swift_weakInit();
      (*(v189 + 16))(v219, v209, v192);
      v196(v222, v173, v226);
      v65 = (*(v189 + 80) + 40) & ~*(v189 + 80);
      v66 = (v194 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
      v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
      v68 = (v67 + 15) & 0xFFFFFFFFFFFFFFF8;
      v69 = (*(v202 + 80) + v68 + 8) & ~*(v202 + 80);
      v70 = swift_allocObject();
      *(v70 + 2) = 0;
      *(v70 + 3) = 0;
      *(v70 + 4) = v186;
      (*(v189 + 32))(&v70[v65], v219, v192);
      *&v70[v66] = v51;
      *&v70[v67] = v56;
      *&v70[v68] = v55;
      (*(v202 + 32))(&v70[v69], v222, v226);
      sub_2272CA940(0, 0, v214, &unk_227676678, v70);

      (*(v189 + 8))(v209, v192);
    }

    else
    {
      sub_22766A630();
      v77 = sub_22766B380();
      v78 = sub_22766C8B0();
      v79 = os_log_type_enabled(v77, v78);
      v80 = *(v0 + 1000);
      v81 = *(v0 + 968);
      v82 = *(v0 + 960);
      if (v79)
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&dword_226E8E000, v77, v78, "Metrics reporting disabled", v83, 2u);
        MEMORY[0x22AA9A450](v83, -1, -1);
      }

      (*(v81 + 8))(v80, v82);
    }

    v84 = *(v0 + 600);
    v85 = *(v0 + 592);
    v86 = *(v0 + 584);
    v87 = *(v0 + 576);
    sub_22766A630();
    (*(v86 + 16))(v85, v84, v87);
    v88 = sub_22766B380();
    v198 = sub_22766C8B0();
    v205 = v88;
    v89 = os_log_type_enabled(v88, v198);
    v90 = *(v0 + 968);
    v208 = *(v0 + 960);
    v210 = *(v0 + 992);
    v91 = *(v0 + 928);
    v92 = *(v0 + 728);
    v93 = *(v0 + 720);
    v94 = *(v0 + 712);
    v223 = *(v0 + 944);
    v227 = *(v0 + 624);
    v95 = *(v0 + 616);
    v215 = *(v0 + 920);
    v220 = *(v0 + 608);
    v96 = *(v0 + 592);
    v97 = *(v0 + 584);
    v98 = *(v0 + 576);
    if (v89)
    {
      v197 = *(v0 + 728);
      v99 = swift_slowAlloc();
      v195 = v94;
      v100 = swift_slowAlloc();
      v228[0] = v100;
      *v99 = 136315138;
      sub_226EABFDC(&qword_27D7B9DF8, MEMORY[0x277D50180], MEMORY[0x277D50198]);
      v187 = v95;
      v190 = v93;
      v101 = sub_22766D140();
      v103 = v102;
      (*(v97 + 8))(v96, v98);
      v104 = sub_226E97AE8(v101, v103, v228);

      *(v99 + 4) = v104;
      _os_log_impl(&dword_226E8E000, v205, v198, "Created workout plan: %s", v99, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v100);
      MEMORY[0x22AA9A450](v100, -1, -1);
      MEMORY[0x22AA9A450](v99, -1, -1);

      (*(v90 + 8))(v210, v208);
      (*(v91 + 8))(v223, v215);
      (*(v187 + 8))(v227, v220);
      (*(v190 + 8))(v197, v195);
    }

    else
    {

      (*(v97 + 8))(v96, v98);
      (*(v90 + 8))(v210, v208);
      (*(v91 + 8))(v223, v215);
      (*(v95 + 8))(v227, v220);
      (*(v93 + 8))(v92, v94);
    }

    v105 = *(v0 + 568);
    v106 = *(v0 + 560);
    v107 = *(v0 + 552);
    v108 = *(v0 + 208);
    (*(*(v0 + 584) + 32))(*(v0 + 200));
    (*(v106 + 32))(v108, v105, v107);

    v109 = *(v0 + 8);
  }

  return v109();
}

uint64_t sub_227041F38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227042248()
{
  v109 = v0;

  v1 = *(v0 + 1208);
  (*(*(v0 + 928) + 8))(*(v0 + 944), *(v0 + 920));
  *(v0 + 192) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 400);
    v3 = *(v0 + 408);
    v5 = *(v0 + 392);
    v7 = *(v0 + 360);
    v6 = *(v0 + 368);

    v103 = *(v6 + 32);
    v103(v4, v3, v7);
    sub_22766A630();
    v8 = *(v6 + 16);
    v8(v5, v4, v7);
    v9 = sub_22766B380();
    v101 = sub_22766C890();
    v10 = os_log_type_enabled(v9, v101);
    v11 = *(v0 + 984);
    v12 = *(v0 + 968);
    v13 = *(v0 + 960);
    v14 = *(v0 + 392);
    v16 = *(v0 + 360);
    v15 = *(v0 + 368);
    v107 = v8;
    if (v10)
    {
      v99 = *(v0 + 984);
      v17 = swift_slowAlloc();
      v96 = v13;
      v18 = swift_slowAlloc();
      v108[0] = v18;
      *v17 = 136315138;
      v19 = sub_226EABFDC(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
      v20 = MEMORY[0x22AA995D0](v16, v19);
      v22 = v21;
      (*(v15 + 8))(v14, v16);
      v23 = sub_226E97AE8(v20, v22, v108);

      *(v17 + 4) = v23;
      _os_log_impl(&dword_226E8E000, v9, v101, "Failed to create plan with error %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x22AA9A450](v18, -1, -1);
      MEMORY[0x22AA9A450](v17, -1, -1);

      v24 = *(v12 + 8);
      v26 = v96;
      v25 = v99;
    }

    else
    {

      (*(v15 + 8))(v14, v16);
      v24 = *(v12 + 8);
      v25 = v11;
      v26 = v13;
    }

    v33 = v24;
    v24(v25, v26);
    v34 = *(v0 + 1120);
    v35 = *(v0 + 752);
    v36 = *(v0 + 736);
    v37 = *(v0 + 544);
    v38 = *(v0 + 536);
    v39 = *(v0 + 528);
    v40 = *(*(v0 + 328) + 216);
    sub_227662740();
    sub_2276626F0();
    v34(v35, v36);
    (*(v38 + 16))(v37, v40 + OBJC_IVAR____TtC15SeymourServices28WorkoutPlanAnalyticsReporter__enableWorkoutPlanAnalyticsReporter, v39);
    sub_227669730();
    (*(v38 + 8))(v37, v39);
    if (*(v0 + 185) == 1)
    {
      v87 = *(v0 + 1120);
      v77 = *(v0 + 1056);
      v78 = *(v0 + 928);
      v76 = *(v0 + 920);
      v83 = *(v0 + 768);
      v86 = *(v0 + 736);
      v41 = *(v0 + 584);
      v88 = *(v0 + 576);
      v89 = *(v0 + 832);
      v90 = *(v0 + 520);
      v95 = *(v0 + 512);
      v105 = (v0 + 488);
      v42 = *(v0 + 480);
      v93 = *(v0 + 496);
      v94 = *(v0 + 488);
      v43 = *(v0 + 472);
      v84 = *(v0 + 464);
      v72 = *(v0 + 456);
      v97 = *(v0 + 448);
      v79 = *(v0 + 440);
      v81 = *(v0 + 432);
      v82 = *(v0 + 424);
      v100 = *(v0 + 400);
      v102 = *(v0 + 416);
      v92 = *(v0 + 384);
      v91 = *(v0 + 376);
      v44 = *(v0 + 368);
      v46 = *(v0 + 344);
      v45 = *(v0 + 352);
      v75 = *(v0 + 336);
      v80 = *(v0 + 280);
      v73 = *(v0 + 256);
      v74 = *(v0 + 360);
      sub_227667240();
      sub_227667ED0();
      (*(v43 + 8))(v42, v84);
      (*(v41 + 56))(v72, 1, 1, v88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E18, &qword_227676668);
      v85 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_227670CD0;
      v107(v47 + v85, v100, v74);
      v77(v97, v73, v76);
      (*(v78 + 56))(v97, 0, 1, v76);
      (*(v46 + 104))(v45, *MEMORY[0x277CC9830], v75);

      sub_227662870();
      (*(v46 + 8))(v45, v75);
      sub_2276634F0();
      (*(v81 + 8))(v79, v82);
      sub_2276626F0();
      v48 = v87(v83, v86);
      WorkoutPlanSchedule.metricScaffold.getter(v48);
      sub_2273326C4(v49);

      sub_226E93170(v80, v89, &qword_27D7B9E10, &qword_227676660);
      sub_227664CD0();
      sub_22766C490();
      v50 = sub_22766C4B0();
      (*(*(v50 - 8) + 56))(v102, 0, 1, v50);
      v98 = swift_allocObject();
      swift_weakInit();
      v107(v92, v100, v74);
      (*(v93 + 16))(v95, v90, v94);
      v51 = (v91 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
      v52 = (v51 + *(v93 + 80) + 8) & ~*(v93 + 80);
      v53 = swift_allocObject();
      *(v53 + 16) = 0;
      *(v53 + 24) = 0;
      v103(v53 + v85, v92, v74);
      *(v53 + v51) = v98;
      v54 = v53 + v52;
      v55 = (v0 + 520);
      (*(v93 + 32))(v54, v95, v94);
      sub_2272CA940(0, 0, v102, &unk_227676670, v53);

      v56 = *(v93 + 8);
    }

    else
    {
      v105 = (v0 + 960);
      v55 = (v0 + 976);
      sub_22766A630();
      v57 = sub_22766B380();
      v58 = sub_22766C8B0();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_226E8E000, v57, v58, "Metrics reporting disabled", v59, 2u);
        MEMORY[0x22AA9A450](v59, -1, -1);
      }

      v56 = v33;
    }

    v60 = *v55;
    v61 = *v105;
    v62 = *(v0 + 720);
    v104 = *(v0 + 712);
    v106 = *(v0 + 728);
    v63 = *(v0 + 624);
    v64 = *(v0 + 616);
    v65 = *(v0 + 608);
    v66 = *(v0 + 400);
    v68 = *(v0 + 360);
    v67 = *(v0 + 368);
    v56(v60, v61);
    sub_226EABFDC(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    swift_allocError();
    v107(v69, v66, v68);
    swift_willThrow();

    (*(v67 + 8))(v66, v68);
    (*(v64 + 8))(v63, v65);
    (*(v62 + 8))(v106, v104);
  }

  else
  {
    v27 = *(v0 + 728);
    v28 = *(v0 + 720);
    v29 = *(v0 + 712);
    v30 = *(v0 + 624);
    v31 = *(v0 + 616);
    v32 = *(v0 + 608);

    (*(v31 + 8))(v30, v32);
    (*(v28 + 8))(v27, v29);
  }

  v70 = *(v0 + 8);

  return v70();
}

uint64_t sub_227042F18@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v39 = a5;
  v36 = a6;
  v11 = sub_227663FA0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0((a2 + 96), *(a2 + 120));
  result = sub_226EAF48C(a1, v14);
  if (!v6)
  {
    v35 = a1;
    v16 = *(a3 + 16);
    if (v16)
    {
      v30 = v12;
      v31 = v11;
      v32 = 0;
      v17 = sub_2274CD844(v16, 0);
      v18 = sub_2274CF838();
      v19 = v37;
      v33 = v38;
      v34 = v18;

      result = sub_226EBB21C(v19);
      if (v34 != v16)
      {
        __break(1u);
        return result;
      }

      v11 = v31;
      v6 = v32;
      v12 = v30;
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

    v20 = v39;
    v21 = a4;
    v22 = v35;
    sub_22704ED88(v17, v21, v39, v35);
    if (v6)
    {
      (*(v12 + 8))(v14, v11);
    }

    else
    {
      v24 = v23;

      v25 = sub_22704E488(v20, v22);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E08, &qword_227676658);
      v27 = v36;
      v28 = *(v26 + 48);
      v29 = *(v26 + 64);
      result = (*(v12 + 32))(v36, v14, v11);
      *(v27 + v28) = v24;
      *(v27 + v29) = v25;
    }
  }

  return result;
}

uint64_t sub_227043188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 136) = v28;
  *(v9 + 144) = v8;
  *(v9 + 120) = v27;
  *(v9 + 27) = v26;
  *(v9 + 104) = v25;
  *(v9 + 26) = a8;
  *(v9 + 88) = a6;
  *(v9 + 96) = a7;
  *(v9 + 72) = a4;
  *(v9 + 80) = a5;
  *(v9 + 56) = a2;
  *(v9 + 64) = a3;
  *(v9 + 48) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  *(v9 + 152) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  *(v9 + 160) = v10;
  *(v9 + 168) = *(v10 - 8);
  *(v9 + 176) = swift_task_alloc();
  v11 = sub_227664EC0();
  *(v9 + 184) = v11;
  v12 = *(v11 - 8);
  *(v9 + 192) = v12;
  *(v9 + 200) = *(v12 + 64);
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 216) = swift_task_alloc();
  *(v9 + 224) = swift_task_alloc();
  *(v9 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  *(v9 + 240) = swift_task_alloc();
  v13 = sub_227667100();
  *(v9 + 248) = v13;
  v14 = *(v13 - 8);
  *(v9 + 256) = v14;
  *(v9 + 264) = *(v14 + 64);
  *(v9 + 272) = swift_task_alloc();
  *(v9 + 280) = swift_task_alloc();
  *(v9 + 288) = swift_task_alloc();
  v15 = sub_2276681F0();
  *(v9 + 296) = v15;
  *(v9 + 304) = *(v15 - 8);
  *(v9 + 312) = swift_task_alloc();
  v16 = sub_227665C20();
  *(v9 + 320) = v16;
  *(v9 + 328) = *(v16 - 8);
  *(v9 + 336) = swift_task_alloc();
  type metadata accessor for WorkoutPlanGenerationScaffold(0);
  *(v9 + 344) = swift_task_alloc();
  v17 = sub_227664440();
  *(v9 + 352) = v17;
  *(v9 + 360) = *(v17 - 8);
  *(v9 + 368) = swift_task_alloc();
  v18 = sub_227668240();
  *(v9 + 376) = v18;
  *(v9 + 384) = *(v18 - 8);
  *(v9 + 392) = swift_task_alloc();
  *(v9 + 400) = swift_task_alloc();
  *(v9 + 408) = swift_task_alloc();
  v19 = sub_227662750();
  *(v9 + 416) = v19;
  *(v9 + 424) = *(v19 - 8);
  *(v9 + 432) = swift_task_alloc();
  *(v9 + 440) = swift_task_alloc();
  v20 = sub_227667370();
  *(v9 + 448) = v20;
  v21 = *(v20 - 8);
  *(v9 + 456) = v21;
  *(v9 + 464) = *(v21 + 64);
  *(v9 + 472) = swift_task_alloc();
  *(v9 + 480) = swift_task_alloc();
  *(v9 + 488) = swift_task_alloc();
  v22 = sub_22766B390();
  *(v9 + 496) = v22;
  *(v9 + 504) = *(v22 - 8);
  *(v9 + 512) = swift_task_alloc();
  *(v9 + 520) = swift_task_alloc();
  *(v9 + 528) = swift_task_alloc();
  *(v9 + 536) = swift_task_alloc();
  *(v9 + 544) = swift_task_alloc();
  *(v9 + 552) = swift_task_alloc();
  *(v9 + 560) = swift_task_alloc();
  *(v9 + 568) = swift_task_alloc();
  *(v9 + 576) = swift_task_alloc();
  *(v9 + 584) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22704375C, 0, 0);
}

unint64_t sub_22704375C(uint64_t a1)
{
  v143 = v1;
  sub_22766A630();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();

  if (os_log_type_enabled(v2, v3))
  {
    v139 = *(v1 + 584);
    v133 = *(v1 + 504);
    v136 = *(v1 + 496);
    v128 = *(v1 + 120);
    v127 = *(v1 + 27);
    v125 = *(v1 + 112);
    v123 = *(v1 + 104);
    v4 = *(v1 + 64);
    v5 = *(v1 + 56);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v142[0] = v7;
    *v6 = 136316674;
    *(v6 + 4) = sub_226E97AE8(v5, v4, v142);
    *(v6 + 12) = 2080;
    v8 = sub_227668770();
    v10 = sub_226E97AE8(v8, v9, v142);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2080;
    sub_226EABFDC(&qword_27D7B8950, MEMORY[0x277D533E0], MEMORY[0x277D533E8]);
    v11 = sub_22766C610();
    v13 = sub_226E97AE8(v11, v12, v142);

    *(v6 + 24) = v13;
    *(v6 + 32) = 2048;
    *(v6 + 34) = v123;
    *(v6 + 42) = 2080;
    *(v1 + 16) = v125;
    *(v1 + 24) = v127 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9298, &unk_227676680);
    sub_22704F918();
    v14 = sub_227663B60();
    v16 = sub_226E97AE8(v14, v15, v142);

    *(v6 + 44) = v16;
    *(v6 + 52) = 2048;
    *(v6 + 54) = v128;
    *(v6 + 62) = 2080;
    sub_226F4895C();
    v17 = sub_22766C610();
    v19 = sub_226E97AE8(v17, v18, v142);

    *(v6 + 64) = v19;
    _os_log_impl(&dword_226E8E000, v2, v3, "Making WorkoutPlanSchedule algorithmVersion: %s, scoringMode: %s modalitySelections: %s, totalDailyDuration: %ld, variation: %s, weekCount: %ld, weekdays: %s", v6, 0x48u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    v20 = *(v133 + 8);
    v20(v139, v136);
  }

  else
  {
    v21 = *(v1 + 584);
    v22 = *(v1 + 496);
    v23 = *(v1 + 504);

    v20 = *(v23 + 8);
    v20(v21, v22);
  }

  *(v1 + 592) = v20;
  sub_22766A630();

  v24 = sub_22766B380();
  v25 = sub_22766C8B0();

  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v1 + 576);
  v28 = *(v1 + 496);
  v140 = v20;
  if (v26)
  {
    v30 = *(v1 + 88);
    v29 = *(v1 + 96);
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v142[0] = v32;
    *v31 = 136315138;
    v33 = sub_22703AE64(v30, v29);
    v35 = sub_226E97AE8(v33, v34, v142);
    v20 = v140;

    *(v31 + 4) = v35;
    _os_log_impl(&dword_226E8E000, v24, v25, "Using modalityIdentifierMap: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AA9A450](v32, -1, -1);
    MEMORY[0x22AA9A450](v31, -1, -1);
  }

  v20(v27, v28);
  v36 = *(v1 + 488);
  v37 = *(v1 + 448);
  v38 = *(v1 + 456);
  v39 = *(v1 + 136);
  sub_22766A630();
  v40 = *(v38 + 16);
  *(v1 + 600) = v40;
  *(v1 + 608) = (v38 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v126 = v40;
  v40(v36, v39, v37);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = *(v1 + 568);
  v45 = *(v1 + 496);
  v46 = *(v1 + 488);
  v48 = *(v1 + 448);
  v47 = *(v1 + 456);
  if (v43)
  {
    v49 = swift_slowAlloc();
    v137 = v45;
    v50 = swift_slowAlloc();
    v142[0] = v50;
    *v49 = 136315138;
    sub_226EABFDC(&qword_27D7B9DF0, MEMORY[0x277D52CA8], MEMORY[0x277D52CB8]);
    v134 = v44;
    v51 = sub_22766D140();
    v53 = v52;
    v129 = v42;
    v54 = *(v47 + 8);
    v54(v46, v48);
    v55 = sub_226E97AE8(v51, v53, v142);

    *(v49 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v129, "Using configuration: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x22AA9A450](v50, -1, -1);
    MEMORY[0x22AA9A450](v49, -1, -1);

    v140(v134, v137);
  }

  else
  {

    v54 = *(v47 + 8);
    v54(v46, v48);
    v20(v44, v45);
  }

  *(v1 + 616) = v54;
  v56 = *(v1 + 440);
  v58 = *(v1 + 416);
  v57 = *(v1 + 424);
  v59 = *(v1 + 384);
  v141 = *(v1 + 88);
  v60 = *(v1 + 72);
  v61 = sub_2270397D4(v60);
  v124 = sub_226F3E6A8(v61);
  *(v1 + 624) = v124;

  sub_227662740();
  sub_2276626F0();
  *(v1 + 632) = v62;
  v63 = *(v57 + 8);
  *(v1 + 640) = v63;
  *(v1 + 648) = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v63(v56, v58);
  v64 = v60 + 56;
  v65 = -1;
  v66 = -1 << *(v60 + 32);
  if (-v66 < 64)
  {
    v65 = ~(-1 << -v66);
  }

  v67 = v65 & *(v60 + 56);
  v68 = (63 - v66) >> 6;
  v135 = v59;
  v130 = (v59 + 8);
  v131 = v60;
  v119 = (v59 + 40);
  v120 = (v59 + 32);

  v69 = 0;
  v70 = MEMORY[0x277D84F98];
LABEL_12:
  v121 = v70;
  *(v1 + 656) = v70;
  v71 = v69;
  if (!v67)
  {
    goto LABEL_15;
  }

  do
  {
    while (1)
    {
      v69 = v71;
LABEL_20:
      v72 = __clz(__rbit64(v67));
      v67 &= v67 - 1;
      v73 = *(v135 + 72);
      v74 = *(v135 + 16);
      v74(*(v1 + 408), *(v131 + 48) + v73 * (v72 | (v69 << 6)), *(v1 + 376));
      v75 = sub_227668220();
      if (*(v141 + 16))
      {
        break;
      }

      (*v130)(*(v1 + 408), *(v1 + 376));

      v71 = v69;
      if (!v67)
      {
        goto LABEL_15;
      }
    }

    v77 = sub_226E92000(v75, v76);
    v79 = v78;

    if (v79)
    {
      v80 = *(v141 + 56) + 24 * v77;
      v81 = *v80;
      v82 = *(v80 + 8);
      v83 = *(v80 + 16);
      v74(*(v1 + 400), *(v1 + 408), *(v1 + 376));
      sub_226EB396C(v81, v82, v83);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v116 = v83;
      v142[0] = v121;
      v117 = v81;
      v118 = v82;
      result = sub_226F491D8();
      v86 = *(v121 + 16);
      v87 = (v85 & 1) == 0;
      v88 = __OFADD__(v86, v87);
      v89 = v86 + v87;
      if (v88)
      {
        __break(1u);
      }

      else
      {
        v90 = v85;
        if (*(v121 + 24) >= v89)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v101 = result;
            sub_226FF30B0();
            result = v101;
          }
        }

        else
        {
          sub_226FE875C(v89, isUniquelyReferenced_nonNull_native);
          result = sub_226F491D8();
          if ((v90 & 1) != (v91 & 1))
          {
LABEL_38:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);

            return sub_22766D220();
          }
        }

        v92 = *(v1 + 400);
        v93 = *(v1 + 408);
        v94 = *(v1 + 376);
        if (v90)
        {
          v95 = result;
          v122 = *(v1 + 408);
          v96 = *(v1 + 400);
          sub_226EB2DFC(v117, v118, v116);
          v97 = v142[0];
          (*v119)(*(v142[0] + 56) + v95 * v73, v96, v94);
          (*v130)(v122, v94);
          v70 = v97;
          goto LABEL_12;
        }

        v70 = v142[0];
        *(v142[0] + 8 * (result >> 6) + 64) |= 1 << result;
        v98 = v70[6] + 24 * result;
        *v98 = v117;
        *(v98 + 8) = v118;
        *(v98 + 16) = v116;
        (*v120)(v70[7] + result * v73, v92, v94);
        result = (*v130)(v93, v94);
        v99 = v70[2];
        v88 = __OFADD__(v99, 1);
        v100 = v99 + 1;
        if (!v88)
        {
          v70[2] = v100;
          goto LABEL_12;
        }
      }

      __break(1u);
      return result;
    }

    (*v130)(*(v1 + 408), *(v1 + 376));
    v71 = v69;
  }

  while (v67);
  while (1)
  {
LABEL_15:
    v69 = v71 + 1;
    if (__OFADD__(v71, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v69 >= v68)
    {
      break;
    }

    v67 = *(v64 + 8 * v69);
    ++v71;
    if (v67)
    {
      goto LABEL_20;
    }
  }

  v102 = *(v1 + 480);
  v103 = *(v1 + 456);
  v104 = *(v1 + 448);
  v105 = *(v1 + 136);
  v106 = *(v1 + 144);
  v107 = *(v1 + 104);

  v108 = v106[26];
  v138 = v106[25];
  __swift_project_boxed_opaque_existential_0(v106 + 22, v138);
  v126(v102, v105, v104);
  v109 = (*(v103 + 80) + 40) & ~*(v103 + 80);
  v110 = swift_allocObject();
  *(v1 + 664) = v110;
  *(v110 + 2) = v106;
  *(v110 + 3) = v124;
  *(v110 + 4) = v107;
  v111 = *(v103 + 32);
  *(v1 + 672) = v111;
  *(v1 + 680) = (v103 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v111(&v110[v109], v102, v104);
  v112 = *(v108 + 24);

  v132 = (v112 + *v112);
  v113 = swift_task_alloc();
  *(v1 + 688) = v113;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9D0, &unk_2276766A0);
  *v113 = v1;
  v113[1] = sub_227044374;

  return (v132)(v1 + 32, sub_22704F96C, v110, v114, v138, v108);
}

uint64_t sub_227044374()
{
  *(*v1 + 696) = v0;

  if (v0)
  {

    v2 = sub_227046328;
  }

  else
  {
    v2 = sub_2270444C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2270444C4()
{
  v259 = v0;
  v1 = *(v0 + 32);
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (v4)
  {
    v8 = v4;
    v9 = v256;
LABEL_11:
    v11 = *(v9 + 88);
    v4 = (v8 - 1) & v8;
    if (*(v11 + 16))
    {
      v12 = __clz(__rbit64(v8)) | (v6 << 6);
      v13 = (*(v1 + 48) + 16 * v12);
      v14 = *(*(v1 + 56) + 8 * v12);
      v15 = *v13;
      v16 = v13[1];

      v17 = sub_226E92000(v15, v16);
      if (v18)
      {
        v19 = *(*(v256 + 88) + 56) + 24 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v246 = *(v19 + 16);
        sub_226EB396C(*v19, v21, v246);

        v251 = v20;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2273A4FB0(0, v7[2] + 1, 1, v7);
        }

        v23 = v7[2];
        v22 = v7[3];
        if (v23 >= v22 >> 1)
        {
          v7 = sub_2273A4FB0((v22 > 1), v23 + 1, 1, v7);
        }

        v7[2] = v23 + 1;
        v24 = &v7[4 * v23];
        v24[4] = v251;
        v24[5] = v21;
        *(v24 + 48) = v246;
        v24[7] = v14;
      }

      else
      {
      }
    }
  }

  v9 = v256;
  while (1)
  {
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_63;
    }

    if (v10 >= v5)
    {
      break;
    }

    v8 = *(v1 + 64 + 8 * v10);
    ++v6;
    if (v8)
    {
      v6 = v10;
      goto LABEL_11;
    }
  }

  if (v7[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9980, qword_22767F8E0);
    v25 = sub_22766D010();
  }

  else
  {
    v25 = MEMORY[0x277D84F98];
  }

  v26 = *(v256 + 696);
  v257 = v25;
  sub_22704B3FC(v7, 1, &v257);
  if (!v26)
  {
    v27 = *(v256 + 72);
    v252 = v257;
    v28 = -1;
    v29 = -1 << *(v27 + 32);
    if (-v29 < 64)
    {
      v28 = ~(-1 << -v29);
    }

    v30 = v28 & *(v27 + 56);
    v31 = (63 - v29) >> 6;

    v32 = 0;
    v33 = MEMORY[0x277D84F90];
    while (v30)
    {
      v34 = *(v9 + 72);
LABEL_33:
      v36 = *(v9 + 88);
      v37 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      (*(*(v9 + 384) + 16))(*(v9 + 392), *(v34 + 48) + *(*(v9 + 384) + 72) * (v37 | (v32 << 6)), *(v9 + 376));
      v38 = sub_227668220();
      if (*(v36 + 16))
      {
        v40 = sub_226E92000(v38, v39);
        v42 = v41;

        v43 = *(v9 + 384);
        v44 = *(v9 + 376);
        if (v42)
        {
          v45 = *(*(v9 + 88) + 56) + 24 * v40;
          v46 = *(v45 + 8);
          v47 = *(v9 + 392);
          v247 = *v45;
          v48 = v44;
          v244 = *(v45 + 16);
          sub_226EB396C(*v45, v46, v244);
          v49 = sub_227668230();
          (*(v43 + 8))(v47, v48);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_2273A4FB0(0, v33[2] + 1, 1, v33);
          }

          v51 = v33[2];
          v50 = v33[3];
          if (v51 >= v50 >> 1)
          {
            v33 = sub_2273A4FB0((v50 > 1), v51 + 1, 1, v33);
          }

          v33[2] = v51 + 1;
          v52 = &v33[4 * v51];
          v52[4] = v247;
          v52[5] = v46;
          *(v52 + 48) = v244;
          v52[7] = v49;
          v9 = v256;
        }

        else
        {
          (*(v43 + 8))(*(v9 + 392), v44);
        }
      }

      else
      {
        (*(*(v9 + 384) + 8))(*(v9 + 392), *(v9 + 376));
      }
    }

    while (1)
    {
      v35 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_72;
      }

      v34 = *(v9 + 72);
      if (v35 >= v31)
      {
        break;
      }

      v30 = *(v34 + 8 * v35 + 56);
      ++v32;
      if (v30)
      {
        v32 = v35;
        goto LABEL_33;
      }
    }

    if (v33[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9980, qword_22767F8E0);
      v53 = sub_22766D010();
    }

    else
    {
      v53 = MEMORY[0x277D84F98];
    }

    v257 = v53;
    sub_22704B3FC(v33, 1, &v257);
    v54 = v257;
    *(swift_task_alloc() + 16) = v54;
    v55 = sub_22704D4E4(v252, sub_22704F9F0);

    if (*(v55 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9980, qword_22767F8E0);
      v56 = sub_22766D010();
    }

    else
    {
      v56 = MEMORY[0x277D84F98];
    }

    v257 = v56;
    sub_22704B3FC(v55, 1, &v257);

    v58 = v257;
    if (!v257[2])
    {

      sub_22766A630();
      v70 = sub_22766B380();
      v71 = sub_22766C890();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_226E8E000, v70, v71, "Unable to build modality-duration mapping, may require catalog sync.", v72, 2u);
        MEMORY[0x22AA9A450](v72, -1, -1);
      }

      v73 = *(v9 + 592);
      v74 = *(v9 + 528);
      v75 = *(v9 + 496);
      v76 = *(v9 + 184);
      v77 = *(v9 + 192);

      v73(v74, v75);
      sub_226EABFDC(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
      swift_allocError();
      (*(v77 + 104))(v78, *MEMORY[0x277D511E0], v76);
      swift_willThrow();
      goto LABEL_91;
    }

    sub_22766A630();

    v59 = sub_22766B380();
    v60 = sub_22766C880();

    v61 = os_log_type_enabled(v59, v60);
    v62 = *(v9 + 592);
    v63 = *(v9 + 560);
    v64 = *(v9 + 496);
    if (v61)
    {
      v253 = *(v9 + 592);
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v257 = v66;
      *v65 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F0, qword_227674920);
      sub_22704B2CC();
      v67 = sub_22766BEC0();
      v69 = sub_226E97AE8(v67, v68, &v257);
      v9 = v256;

      *(v65 + 4) = v69;
      _os_log_impl(&dword_226E8E000, v59, v60, "Computed modality-duration mapping with preferences: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v66);
      MEMORY[0x22AA9A450](v66, -1, -1);
      MEMORY[0x22AA9A450](v65, -1, -1);

      v253(v63, v64);
    }

    else
    {

      v62(v63, v64);
    }

    v79 = *(v9 + 26) & 1;
    v80 = sub_227668780();
    if (v80 == sub_227668780())
    {
      v248 = *(v9 + 104);
    }

    else
    {
      sub_22735B514(*(v9 + 104), *(*(v9 + 656) + 16), *(*(v9 + 128) + 16), v58);
      v248 = v81;
    }

    v230 = *(v9 + 672);
    v245 = *(v9 + 656);
    v227 = *(v9 + 616);
    v82 = *(v9 + 600);
    v83 = *(v9 + 472);
    v84 = *(v9 + 480);
    v85 = *(v256 + 448);
    v236 = *(v256 + 368);
    v238 = *(v256 + 344);
    v86 = *(v256 + 136);
    v239 = *(v256 + 120);
    v242 = *(v256 + 128);
    v233 = *(v256 + 80);
    sub_22703D9B8(v236, v86, v79);
    v82(v83, v86, v85);
    type metadata accessor for WorkoutPlanScheduleUtils(0);
    v87 = swift_allocObject();
    v82(v87 + OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_configuration, v83, v85);
    v82(v84, v83, v85);
    type metadata accessor for WorkoutPlanObjectiveUtils(0);
    v88 = swift_allocObject();
    v82(v88 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_configuration, v84, v85);
    v254 = v79;
    v89 = MEMORY[0x277D84F90];
    *(v88 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_shorterCardioCache) = sub_227149864(MEMORY[0x277D84F90]);
    *(v88 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_repetitionCache) = sub_227149954(v89);
    *(v88 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_longNonEquipmentCardioCache) = sub_227149864(v89);
    v90 = sub_227149864(v89);
    v9 = v256;
    v227(v84, v85);
    *(v88 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_cardioWithDifferentEquipmentSameDayCache) = v90;
    *(v87 + OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_objectiveUtils) = v88;
    v82(v84, v83, v85);
    type metadata accessor for WorkoutPlanFocusUtils(0);
    v91 = swift_allocObject();
    v230(v91 + OBJC_IVAR____TtC15SeymourServices21WorkoutPlanFocusUtils_configuration, v84, v85);
    *(v91 + OBJC_IVAR____TtC15SeymourServices21WorkoutPlanFocusUtils_objectiveUtils) = v88;
    *(v87 + OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_focusUtils) = v91;
    type metadata accessor for WorkoutPlanEnumerationUtils(0);
    v92 = swift_allocObject();
    v230(v92 + OBJC_IVAR____TtC15SeymourServices27WorkoutPlanEnumerationUtils_configuration, v83, v85);
    *(v92 + OBJC_IVAR____TtC15SeymourServices27WorkoutPlanEnumerationUtils_scoringMode) = v254;
    *(v87 + OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_enumerationUtils) = v92;
    *(v87 + OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_scoringMode) = v254;

    sub_227434190(v238, v233, v58, v245, v248, v242, v239, v236);
LABEL_63:

    v93 = sub_227668780();
    if (v93 == sub_227668780() && !WorkoutPlanGenerationScaffold.satisfiesHardConstraints()())
    {
      sub_22766A630();
      v137 = sub_22766B380();
      v138 = sub_22766C890();
      if (os_log_type_enabled(v137, v138))
      {
        v139 = swift_slowAlloc();
        *v139 = 0;
        _os_log_impl(&dword_226E8E000, v137, v138, "Unable to find a feasible scaffold", v139, 2u);
        MEMORY[0x22AA9A450](v139, -1, -1);
      }

      v140 = *(v9 + 592);
      v141 = *(v9 + 552);
      v142 = *(v9 + 496);
      v101 = *(v9 + 344);
      v102 = *(v256 + 192);
      v103 = *(v256 + 184);

      v140(v141, v142);
      sub_226EABFDC(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
      v104 = swift_allocError();
      v106 = v143;
      v107 = MEMORY[0x277D511C0];
    }

    else
    {
      v94 = sub_227668780();
      if (v94 == sub_227668780() && !WorkoutPlanGenerationScaffold.satisfiesPartialCoverageConstraints()())
      {
        v101 = *(v9 + 344);
        v144 = *(v9 + 184);
        v145 = *(v9 + 192);
        sub_226EABFDC(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
        v146 = swift_allocError();
        (*(v145 + 104))(v147, *MEMORY[0x277D511C0], v144);
        v104 = v146;
LABEL_80:
        swift_willThrow();

        sub_22704FCD4(v101, type metadata accessor for WorkoutPlanGenerationScaffold);
        *(v9 + 40) = v104;
        v148 = v104;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
        if (swift_dynamicCast())
        {
          v150 = *(v9 + 224);
          v149 = *(v9 + 232);
          v151 = *(v9 + 216);
          v152 = *(v9 + 184);
          v153 = *(v9 + 192);

          v237 = *(v153 + 32);
          v237(v150, v149, v152);
          sub_22766A630();
          v154 = *(v153 + 16);
          v154(v151, v150, v152);
          v155 = sub_22766B380();
          v156 = sub_22766C890();
          v157 = os_log_type_enabled(v155, v156);
          v158 = *(v9 + 592);
          v249 = *(v9 + 520);
          v240 = *(v9 + 496);
          v243 = v154;
          v159 = *(v9 + 216);
          v162 = v9 + 184;
          v161 = *(v9 + 184);
          v160 = *(v162 + 8);
          if (v157)
          {
            v163 = swift_slowAlloc();
            v164 = swift_slowAlloc();
            v257 = v164;
            *v163 = 136315138;
            v165 = sub_226EABFDC(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
            v166 = MEMORY[0x22AA995D0](v161, v165);
            v234 = v158;
            v168 = v167;
            (*(v160 + 8))(v159, v161);
            v169 = sub_226E97AE8(v166, v168, &v257);

            *(v163 + 4) = v169;
            _os_log_impl(&dword_226E8E000, v155, v156, "Failed to create scaffold with error %s", v163, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v164);
            MEMORY[0x22AA9A450](v164, -1, -1);
            MEMORY[0x22AA9A450](v163, -1, -1);

            v234(v249, v240);
          }

          else
          {

            (*(v160 + 8))(v159, v161);
            v158(v249, v240);
          }

          v9 = v256;
          v170 = *(v256 + 640);
          v171 = *(v256 + 432);
          v172 = *(v256 + 416);
          v174 = *(v256 + 168);
          v173 = *(v256 + 176);
          v175 = *(v256 + 160);
          v177 = *(v256 + 56);
          v176 = *(v256 + 64);
          v250 = *(*(v256 + 144) + 216);
          sub_227662740();
          sub_2276626F0();
          v170(v171, v172);
          v257 = v177;
          v258 = v176;

          MEMORY[0x22AA98450](45, 0xE100000000000000);
          v178 = sub_227668770();
          MEMORY[0x22AA98450](v178);

          (*(v174 + 16))(v173, v250 + OBJC_IVAR____TtC15SeymourServices28WorkoutPlanAnalyticsReporter__enableWorkoutPlanAnalyticsReporter, v175);
          sub_227669730();
          (*(v174 + 8))(v173, v175);
          if (*(v256 + 25) == 1)
          {
            v179 = (v256 + 248);
            v231 = *(v256 + 248);
            v181 = *(v256 + 304);
            v180 = *(v256 + 312);
            v182 = *(v256 + 296);
            v255 = (v256 + 280);
            v219 = *(v256 + 280);
            v229 = *(v256 + 272);
            v183 = *(v256 + 240);
            v216 = *(v256 + 224);
            v221 = *(v256 + 208);
            v223 = *(v256 + 256);
            v225 = *(v256 + 200);
            v184 = *(v256 + 192);
            v235 = *(v256 + 184);
            v241 = *(v256 + 152);
            v185 = *(v256 + 80);
            sub_227667240();
            sub_227667ED0();

            (*(v181 + 8))(v180, v182);
            v186 = sub_2276627D0();
            v187 = *(v186 - 8);
            v188 = v185;
            v9 = v256;
            (*(v187 + 16))(v183, v188, v186);
            (*(v187 + 56))(v183, 0, 1, v186);

            sub_22714972C(MEMORY[0x277D84F90]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E18, &qword_227676668);
            v215 = (*(v184 + 80) + 32) & ~*(v184 + 80);
            v189 = swift_allocObject();
            *(v189 + 16) = xmmword_227670CD0;
            v243(v189 + v215, v216, v235);

            sub_227667050();
            sub_22766C490();
            v190 = sub_22766C4B0();
            (*(*(v190 - 8) + 56))(v241, 0, 1, v190);
            v226 = swift_allocObject();
            swift_weakInit();
            v243(v221, v216, v235);
            (*(v223 + 16))(v229, v219, v231);
            v191 = (v225 + v215 + 7) & 0xFFFFFFFFFFFFFFF8;
            v192 = (v191 + *(v223 + 80) + 8) & ~*(v223 + 80);
            v193 = swift_allocObject();
            *(v193 + 16) = 0;
            *(v193 + 24) = 0;
            v237(v193 + v215, v221, v235);
            *(v193 + v191) = v226;
            v194 = v243;
            (*(v223 + 32))(v193 + v192, v229, v231);
            sub_2272CA940(0, 0, v241, &unk_2276766B0, v193);

            v195 = (v223 + 8);
          }

          else
          {
            v195 = (v256 + 592);
            v179 = (v256 + 496);
            v255 = (v256 + 512);

            sub_22766A630();
            v196 = sub_22766B380();
            v197 = sub_22766C8B0();
            if (os_log_type_enabled(v196, v197))
            {
              v198 = swift_slowAlloc();
              *v198 = 0;
              _os_log_impl(&dword_226E8E000, v196, v197, "Metrics reporting disabled", v198, 2u);
              MEMORY[0x22AA9A450](v198, -1, -1);
            }

            v194 = v243;
          }

          v199 = *v179;
          v200 = *v195;
          v202 = *(v9 + 360);
          v201 = *(v9 + 368);
          v203 = *(v9 + 352);
          v204 = *(v9 + 224);
          v205 = *(v9 + 184);
          v206 = *(v9 + 192);
          v200(*v255, v199);
          sub_226EABFDC(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
          swift_allocError();
          v194(v207, v204, v205);
          swift_willThrow();
          (*(v206 + 8))(v204, v205);
          (*(v202 + 8))(v201, v203);
        }

        else
        {
          (*(*(v9 + 360) + 8))(*(v9 + 368), *(v9 + 352));
        }

LABEL_91:

        v136 = *(v9 + 8);
LABEL_92:

        return v136();
      }

      if (!WorkoutPlanGenerationScaffold.isEmpty()())
      {
LABEL_72:
        v224 = *(v9 + 640);
        v220 = *(v9 + 440);
        v222 = *(v9 + 416);
        v108 = *(v9 + 336);
        v218 = *(v9 + 344);
        v109 = *(v9 + 304);
        v110 = *(v9 + 312);
        v111 = *(v9 + 296);
        v232 = *(v9 + 240);
        v112 = *(v9 + 96);
        v228 = *(v9 + 80);
        v113 = *(v9 + 64);
        v217 = *(v9 + 56);
        sub_227667240();
        v114 = sub_227668090();
        v115 = *(v109 + 8);
        v115(v110, v111);
        sub_22703D460(v218, v112, v114, v108);
        sub_227667240();
        v257 = v217;
        v258 = v113;

        MEMORY[0x22AA98450](45, 0xE100000000000000);
        v116 = sub_227668770();
        MEMORY[0x22AA98450](v116);

        sub_227667ED0();

        v115(v110, v111);
        sub_227662740();
        sub_2276626F0();
        v224(v220, v222);
        v117 = sub_2276627D0();
        v118 = *(v117 - 8);
        (*(v118 + 16))(v232, v228, v117);
        v119 = (*(v118 + 56))(v232, 0, 1, v117);
        WorkoutPlanSchedule.metricScaffold.getter(v119);
        sub_2273326C4(v120);

        sub_227667050();
        sub_227667040();
        v122 = v121;
        sub_227667070();
        v124 = v123;
        sub_22766A630();
        v125 = sub_22766B380();
        v126 = sub_22766C8B0();
        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          *v127 = 134217984;
          *(v127 + 4) = (v122 - v124) * 1000.0;
          _os_log_impl(&dword_226E8E000, v125, v126, "[Algorithm.RunTime] %f ms", v127, 0xCu);
          MEMORY[0x22AA9A450](v127, -1, -1);
        }

        v212 = *(v256 + 592);
        v128 = *(v256 + 536);
        v129 = *(v256 + 496);
        v130 = *(v256 + 360);
        v131 = *(v256 + 344);
        v209 = *(v256 + 352);
        v210 = *(v256 + 368);
        v132 = *(v256 + 328);
        v213 = *(v256 + 320);
        v214 = *(v256 + 336);
        v211 = *(v256 + 288);
        v133 = *(v256 + 256);
        v208 = *(v256 + 248);
        v134 = *(v256 + 48);

        v212(v128, v129);
        sub_22704FCD4(v131, type metadata accessor for WorkoutPlanGenerationScaffold);
        (*(v130 + 8))(v210, v209);
        (*(v133 + 32))(v134, v211, v208);
        v135 = type metadata accessor for WorkoutPlanScheduleResult(0);
        (*(v132 + 32))(v134 + *(v135 + 20), v214, v213);

        v136 = *(v256 + 8);
        goto LABEL_92;
      }

      sub_22766A630();
      v95 = sub_22766B380();
      v96 = sub_22766C890();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        *v97 = 0;
        _os_log_impl(&dword_226E8E000, v95, v96, "Empty scaffold detected", v97, 2u);
        MEMORY[0x22AA9A450](v97, -1, -1);
      }

      v98 = *(v9 + 592);
      v99 = *(v9 + 544);
      v100 = *(v9 + 496);
      v101 = *(v9 + 344);
      v102 = *(v256 + 192);
      v103 = *(v256 + 184);

      v98(v99, v100);
      sub_226EABFDC(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
      v104 = swift_allocError();
      v106 = v105;
      v107 = MEMORY[0x277D511B8];
    }

    (*(v102 + 104))(v106, *v107, v103);
    v9 = v256;
    goto LABEL_80;
  }

  return swift_unexpectedError();
}

uint64_t sub_227046328()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22704653C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v20 = a5;
  v19 = a4;
  v11 = sub_227663FA0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0((a2 + 96), *(a2 + 120));
  result = sub_226EAF48C(a1, v14);
  if (!v6)
  {
    v18 = a6;
    v16 = sub_227663E90();
    v17 = sub_22703BF7C(a3, v19, v16, v20, a1);
    (*(v12 + 8))(v14, v11);

    *v18 = v17;
  }

  return result;
}

void sub_2270466C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    goto LABEL_21;
  }

  v10 = sub_226F491D8();
  if ((v11 & 1) == 0)
  {
    goto LABEL_21;
  }

  v12 = *(*(a5 + 56) + 8 * v10);
  if (!*(v12 + 16))
  {
    goto LABEL_21;
  }

  v23 = a1;
  v24 = a3;
  v25 = a2;
  v13 = *(a4 + 16);

  if (!v13)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_18:

    a2 = v25;
    if (*(v15 + 16))
    {
      a3 = v24;
      a1 = v23;
LABEL_22:
      sub_226EB396C(a1, a2, a3 & 1);
      return;
    }

    a1 = v23;
    a3 = v24;
LABEL_21:

    goto LABEL_22;
  }

  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  while (v14 < v13)
  {
    v18 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_24;
    }

    v19 = *(a4 + 32 + 8 * v14++);
    v20 = *(v12 + 16);
    v21 = (v12 + 32);
    while (v20)
    {
      v22 = *v21++;
      --v20;
      if (v22 == v19)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_226F1F090(0, *(v15 + 16) + 1, 1);
        }

        v17 = *(v15 + 16);
        v16 = *(v15 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_226F1F090((v16 > 1), v17 + 1, 1);
        }

        *(v15 + 16) = v17 + 1;
        *(v15 + 8 * v17 + 32) = v19;
        break;
      }
    }

    if (v18 == v13)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

void *sub_227046898(uint64_t a1, uint64_t a2, void *a3)
{
  v67 = a3;
  v69 = a2;
  v4 = sub_22766B390();
  v65 = *(v4 - 8);
  v66 = v4;
  MEMORY[0x28223BE20](v4);
  v64 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_227664010();
  v6 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_227663D60();
  v72 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v62 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v71 = &v60 - v11;
  MEMORY[0x28223BE20](v12);
  v63 = &v60 - v13;
  v14 = sub_227668FD0();
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  inited = swift_initStackObject();
  v60 = xmmword_227670CD0;
  *(inited + 16) = xmmword_227670CD0;
  *(inited + 32) = sub_227668FC0();
  *(inited + 40) = v18;
  v19 = sub_226F3E6A8(inited);
  swift_setDeallocating();
  sub_226FA6DA4(inited + 32);
  v20 = sub_227668FB0();
  v74 = MEMORY[0x277D84F90];
  v21 = sub_2270134B0(v19);

  sub_22745FA30(v21);
  v22 = sub_22701380C(v20);

  sub_22745FA30(v22);
  if (v16)
  {
    v23 = v74;
  }

  else
  {
    v73 = v14;
    sub_22766D140();
    sub_22766C540();
    sub_22766C540();
    sub_22766C540();
    sub_227663FC0();
    v24 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9B0, &unk_2276758F0);
    v25 = *(sub_2276660A0() - 8);
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v60;
    v28 = v61;
    (*(v6 + 16))(v27 + v26, v8, v61);
    swift_storeEnumTagMultiPayload();
    v73 = v24;
    sub_22745FA30(v27);
    (*(v6 + 8))(v8, v28);
    v23 = v73;
  }

  v74 = MEMORY[0x277D84F90];
  v29 = sub_2276672F0();
  v30 = sub_2270134CC(v29);

  sub_22745FA30(v30);
  v31 = sub_2276672D0();
  v32 = sub_2270134E8(v31);

  sub_22745FA30(v32);
  v33 = sub_227667280();
  v34 = sub_227013504(v33);

  sub_22745FA30(v34);
  v35 = sub_227667260();
  v36 = sub_227013B2C(v35);
  v61 = v3;

  sub_22745FA30(v36);
  sub_226F438E8(v74);

  sub_226F438E8(v23);

  v37 = v71;
  sub_227663D10();
  v38 = v64;
  sub_22766A630();
  v39 = v72;
  v40 = v62;
  v41 = v70;
  (*(v72 + 16))(v62, v37, v70);
  v42 = sub_22766B380();
  v43 = sub_22766C8B0();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = v40;
    v46 = swift_slowAlloc();
    v74 = v46;
    *v44 = 136315138;
    sub_226EABFDC(&qword_28139BC38, MEMORY[0x277D504B0], MEMORY[0x277D504B8]);
    v47 = sub_22766D140();
    v48 = v38;
    v50 = v49;
    v51 = *(v72 + 8);
    v51(v45, v70);
    v52 = v47;
    v41 = v70;
    v53 = sub_226E97AE8(v52, v50, &v74);

    *(v44 + 4) = v53;
    _os_log_impl(&dword_226E8E000, v42, v43, "Filtering catalog using: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x22AA9A450](v46, -1, -1);
    v54 = v44;
    v39 = v72;
    MEMORY[0x22AA9A450](v54, -1, -1);

    (*(v65 + 8))(v48, v66);
  }

  else
  {

    v51 = *(v39 + 8);
    v51(v40, v41);
    (*(v65 + 8))(v38, v66);
  }

  v55 = v63;
  (*(v39 + 32))(v63, v71, v41);
  v56 = v68;
  v57 = v61;
  v58 = sub_22703B334(v55, v67);
  if (!v57)
  {
    v56 = sub_22735AD38(v58, v69);
  }

  v51(v55, v41);
  return v56;
}

uint64_t sub_227047060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[10] = a8;
  v9[11] = v8;
  v9[8] = a6;
  v9[9] = a7;
  v9[6] = a4;
  v9[7] = a5;
  v9[4] = a2;
  v9[5] = a3;
  v9[3] = a1;
  v10 = sub_227664EC0();
  v9[12] = v10;
  v9[13] = *(v10 - 8);
  v9[14] = swift_task_alloc();
  v9[15] = swift_task_alloc();
  v9[16] = swift_task_alloc();
  v9[17] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DD8, &qword_227679B60) - 8);
  v9[18] = swift_task_alloc();
  v9[19] = swift_task_alloc();
  v9[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DE0, &qword_227676640);
  v9[21] = swift_task_alloc();
  v9[22] = swift_task_alloc();
  v9[23] = swift_task_alloc();
  v9[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DE8, &qword_227676648);
  v9[25] = swift_task_alloc();
  v11 = sub_227663FA0();
  v9[26] = v11;
  v9[27] = *(v11 - 8);
  v9[28] = swift_task_alloc();
  v12 = sub_227666B60();
  v9[29] = v12;
  v9[30] = *(v12 - 8);
  v9[31] = swift_task_alloc();
  v9[32] = swift_task_alloc();
  v13 = sub_227667370();
  v9[33] = v13;
  v14 = *(v13 - 8);
  v9[34] = v14;
  v9[35] = *(v14 + 64);
  v9[36] = swift_task_alloc();
  v9[37] = swift_task_alloc();
  v9[38] = swift_task_alloc();
  v15 = sub_2276638D0();
  v9[39] = v15;
  v9[40] = *(v15 - 8);
  v9[41] = swift_task_alloc();
  v16 = sub_22766B390();
  v9[42] = v16;
  v9[43] = *(v16 - 8);
  v9[44] = swift_task_alloc();
  v9[45] = swift_task_alloc();
  v9[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227047458, 0, 0);
}

uint64_t sub_227047458(uint64_t a1)
{
  v78 = v1;
  v3 = v1[40];
  v2 = v1[41];
  v4 = v1[39];
  v5 = v1[8];
  sub_22766A630();
  (*(v3 + 16))(v2, v5, v4);

  v6 = sub_22766B380();
  v7 = sub_22766C8B0();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[46];
  v11 = v1[42];
  v10 = v1[43];
  v12 = v1[40];
  v13 = v1[41];
  v14 = v1[39];
  if (v8)
  {
    v68 = v7;
    log = v6;
    v15 = v1[6];
    v16 = v1[7];
    v75 = v1[46];
    v18 = v1[4];
    v17 = v1[5];
    v73 = v1[42];
    v19 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v77 = v65;
    *v19 = 136315906;
    *(v19 + 4) = sub_226E97AE8(v18, v17, &v77);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_226E97AE8(v15, v16, &v77);
    *(v19 + 22) = 2080;
    sub_226EABFDC(&qword_27D7B9DF8, MEMORY[0x277D50180], MEMORY[0x277D50198]);
    v20 = sub_22766D140();
    v22 = v21;
    (*(v12 + 8))(v13, v14);
    v23 = sub_226E97AE8(v20, v22, &v77);

    *(v19 + 24) = v23;
    *(v19 + 32) = 2080;
    sub_227668480();
    sub_226EABFDC(&qword_27D7B84C8, MEMORY[0x277D534C8], MEMORY[0x277D534D0]);
    v24 = sub_22766C610();
    v26 = sub_226E97AE8(v24, v25, &v77);

    *(v19 + 34) = v26;
    _os_log_impl(&dword_226E8E000, log, v68, "Querying alternative workouts algorithmVersion: %s, workoutIdentifier: %s, workoutPlan: %s modalityPreferences: %s", v19, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v65, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);

    v27 = *(v10 + 8);
    (v27)(v75, v73);
  }

  else
  {

    (*(v12 + 8))(v13, v14);
    v28 = v11;
    v27 = *(v10 + 8);
    (v27)(v9, v28);
  }

  v1[47] = v27;
  v29 = v1[38];
  v30 = v1[33];
  v31 = v1[34];
  v32 = v1[10];
  sub_22766A630();
  v33 = *(v31 + 16);
  v1[48] = v33;
  v1[49] = (v31 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v76 = v33;
  v33(v29, v32, v30);
  v34 = sub_22766B380();
  v35 = sub_22766C8B0();
  v36 = os_log_type_enabled(v34, v35);
  v37 = v1[45];
  v38 = v1[42];
  v39 = v1[38];
  v41 = v1[33];
  v40 = v1[34];
  if (v36)
  {
    loga = v27;
    v42 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v77 = v69;
    *v42 = 136315138;
    sub_226EABFDC(&qword_27D7B9DF0, MEMORY[0x277D52CA8], MEMORY[0x277D52CB8]);
    v64 = v37;
    v66 = v38;
    v43 = sub_22766D140();
    v45 = v44;
    v63 = v35;
    v46 = *(v40 + 8);
    v46(v39, v41);
    v47 = sub_226E97AE8(v43, v45, &v77);

    *(v42 + 4) = v47;
    _os_log_impl(&dword_226E8E000, v34, v63, "Using configuration: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v69);
    MEMORY[0x22AA9A450](v69, -1, -1);
    MEMORY[0x22AA9A450](v42, -1, -1);

    (loga)(v64, v66);
  }

  else
  {

    v46 = *(v40 + 8);
    v46(v39, v41);
    (v27)(v37, v38);
  }

  v1[50] = v46;
  v48 = v1[37];
  v49 = v1[34];
  v50 = v1[33];
  v51 = v1[10];
  v52 = v1[11];
  v53 = v1[6];
  v54 = v1[7];
  v74 = v52[25];
  v67 = v52[26];
  __swift_project_boxed_opaque_existential_0(v52 + 22, v74);
  v76(v48, v51, v50);
  v55 = (*(v49 + 80) + 40) & ~*(v49 + 80);
  v56 = swift_allocObject();
  v1[51] = v56;
  *(v56 + 2) = v52;
  *(v56 + 3) = v53;
  *(v56 + 4) = v54;
  v57 = *(v49 + 32);
  v1[52] = v57;
  v1[53] = (v49 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v57(&v56[v55], v48, v50);
  v58 = *(v67 + 24);

  v70 = (v58 + *v58);
  v59 = swift_task_alloc();
  v1[54] = v59;
  *v59 = v1;
  v59[1] = sub_227047B10;
  v61 = v1[24];
  v60 = v1[25];

  return v70(v60, sub_22704B358, v56, v61, v74, v67);
}

uint64_t sub_227047B10()
{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = sub_227048588;
  }

  else
  {

    v2 = sub_227047C2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_227047C2C()
{
  v96 = v0;
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  v85 = v0[20];
  v82 = *(v4 + v5[12]);
  v6 = v5[20];
  v80 = *(v0[30] + 32);
  v81 = *(v4 + v5[16]);
  v80(v0[32], v4, v0[29]);
  (*(v2 + 32))(v1, v4 + v6, v3);
  v7 = sub_227663840();
  v84 = v7 + 64;
  v8 = -1;
  v9 = -1 << *(v7 + 32);
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & *(v7 + 64);
  v83 = (63 - v9) >> 6;
  v89 = v7;

  v11 = 0;
  v92 = MEMORY[0x277D84F90];
  v88 = v0;
  while (v10)
  {
LABEL_10:
    v13 = v0[22];
    v14 = v0[23];
    v15 = v0[21];
    v16 = __clz(__rbit64(v10)) | (v11 << 6);
    v17 = *(v89 + 48);
    v18 = sub_227665440();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v14, v17 + *(v19 + 72) * v16, v18);
    *(v14 + *(v85 + 48)) = *(*(v89 + 56) + 8 * v16);
    sub_226E93170(v14, v13, &qword_27D7B9DE0, &qword_227676640);
    v20 = *(v85 + 48);
    v21 = *(v13 + v20);
    (*(v19 + 32))(v15, v13, v18);
    *(v15 + v20) = v21;

    sub_226E97D1C(v15, &qword_27D7B9DE0, &qword_227676640);
    sub_226E97D1C(v14, &qword_27D7B9DE0, &qword_227676640);
    v22 = *(v21 + 16);
    v23 = *(v92 + 2);
    v24 = v23 + v22;
    if (__OFADD__(v23, v22))
    {
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v24 > *(v92 + 3) >> 1)
    {
      if (v23 <= v24)
      {
        v26 = v23 + v22;
      }

      else
      {
        v26 = v23;
      }

      v92 = sub_2273A57A4(isUniquelyReferenced_nonNull_native, v26, 1, v92);
    }

    v0 = v88;
    v10 &= v10 - 1;
    if (*(v21 + 16))
    {
      if ((*(v92 + 3) >> 1) - *(v92 + 2) < v22)
      {
        goto LABEL_46;
      }

      swift_arrayInitWithCopy();

      if (v22)
      {
        v27 = *(v92 + 2);
        v28 = __OFADD__(v27, v22);
        v29 = v27 + v22;
        if (v28)
        {
          goto LABEL_47;
        }

        *(v92 + 2) = v29;
      }
    }

    else
    {

      if (v22)
      {
        goto LABEL_45;
      }
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v12 >= v83)
    {
      break;
    }

    v10 = *(v84 + 8 * v12);
    ++v11;
    if (v10)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  v30 = *(v92 + 2);
  if (v30)
  {
    v31 = v0;
    v95[0] = MEMORY[0x277D84F90];
    sub_226F1EF90();
    v32 = v95[0];
    v33 = v92 + 40;
    do
    {

      v34 = sub_227667380();
      v36 = v35;

      v95[0] = v32;
      v37 = *(v32 + 16);
      if (v37 >= *(v32 + 24) >> 1)
      {
        sub_226F1EF90();
        v32 = v95[0];
      }

      *(v32 + 16) = v37 + 1;
      v38 = v32 + 16 * v37;
      *(v38 + 32) = v34;
      *(v38 + 40) = v36;
      v33 += 16;
      --v30;
    }

    while (v30);

    v0 = v31;
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  v39 = v0[52];
  v40 = v0[48];
  v41 = v0[36];
  v42 = v0[33];
  v90 = v0[32];
  v93 = v0[55];
  v43 = v0[10];
  v86 = v0[9];
  v44 = sub_226F3E6A8(v32);

  v40(v41, v43, v42);
  type metadata accessor for WorkoutPlanAlternativesProvider(0);
  v45 = swift_allocObject();
  v39(v45 + OBJC_IVAR____TtC15SeymourServices31WorkoutPlanAlternativesProvider_configuration, v41, v42);
  v46 = swift_task_alloc();
  v46[2] = v45;
  v46[3] = v86;
  v46[4] = v90;
  v46[5] = v44;
  sub_2275F205C(sub_22704D430, v46, v82);
  v48 = v47;

  v95[0] = v48;

  sub_22704BF48(v95);
  if (v93)
  {
  }

  else
  {
    v87 = v45;

    v49 = v95[0];
    v50 = *(v95[0] + 16);
    if (v50)
    {
      v51 = v0;
      v94 = v0[30];
      v52 = v0[17];
      v95[0] = MEMORY[0x277D84F90];
      sub_226F1F928(0, v50, 0);
      v53 = v95[0];
      v54 = v49 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
      v91 = *(v52 + 72);
      do
      {
        v55 = v51[31];
        v56 = v51[29];
        v57 = v51;
        v60 = v51 + 18;
        v59 = v51[18];
        v58 = v60[1];
        sub_226E93170(v54, v58, &qword_27D7B9DD8, &qword_227679B60);
        sub_22704D454(v58, v59);
        v80(v55, v59, v56);
        v95[0] = v53;
        v62 = *(v53 + 16);
        v61 = *(v53 + 24);
        if (v62 >= v61 >> 1)
        {
          sub_226F1F928((v61 > 1), v62 + 1, 1);
          v53 = v95[0];
        }

        v63 = v57[31];
        v64 = v57[29];
        *(v53 + 16) = v62 + 1;
        v80(v53 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v62, v63, v64);
        v54 += v91;
        --v50;
        v51 = v57;
      }

      while (v50);
    }

    else
    {

      v53 = MEMORY[0x277D84F90];
      v51 = v0;
    }

    v75 = v51[33];
    v76 = v51[50];
    v65 = v51[30];
    v77 = v51[29];
    v78 = v51[32];
    v66 = v51[27];
    v67 = v51[28];
    v79 = v51[26];
    v68 = v51[10];
    v69 = swift_task_alloc();
    *(v69 + 16) = v67;
    v70 = sub_227039ADC(v53, sub_22704FE40, v69);

    sub_22704D1E8(v70);
    v72 = v71;

    v73 = swift_task_alloc();
    v73[2] = v87;
    v73[3] = v81;
    v73[4] = v68;
    sub_22703A184(sub_22704D4C4, v73, v72);

    sub_2272CD6D4();
    sub_227666DD0();
    swift_setDeallocating();
    v76(v87 + OBJC_IVAR____TtC15SeymourServices31WorkoutPlanAlternativesProvider_configuration, v75);
    swift_deallocClassInstance();
    (*(v65 + 8))(v78, v77);
    (*(v66 + 8))(v67, v79);

    v74 = v88[1];

    v74();
  }
}

uint64_t sub_227048588()
{
  v39 = v0;
  v1 = *(v0 + 440);

  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    v7 = *(v0 + 96);

    (*(v6 + 32))(v4, v3, v7);
    sub_22766A630();
    v8 = *(v6 + 16);
    v8(v5, v4, v7);
    v9 = sub_22766B380();
    v10 = sub_22766C890();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 376);
    v13 = *(v0 + 352);
    v37 = *(v0 + 336);
    v15 = *(v0 + 104);
    v14 = *(v0 + 112);
    v16 = *(v0 + 96);
    if (v11)
    {
      v36 = v8;
      v17 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v38 = v35;
      *v17 = 136315138;
      v18 = sub_226EABFDC(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
      v33 = v13;
      v34 = v12;
      v19 = MEMORY[0x22AA995D0](v16, v18);
      v21 = v20;
      log = v9;
      v22 = *(v15 + 8);
      v22(v14, v16);
      v23 = v22;
      v24 = sub_226E97AE8(v19, v21, &v38);

      *(v17 + 4) = v24;
      _os_log_impl(&dword_226E8E000, log, v10, "Failed to generate workout alternatives with error %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x22AA9A450](v35, -1, -1);
      v25 = v17;
      v8 = v36;
      MEMORY[0x22AA9A450](v25, -1, -1);

      v34(v33, v37);
    }

    else
    {

      v26 = *(v15 + 8);
      v26(v14, v16);
      v23 = v26;
      v12(v13, v37);
    }

    v27 = *(v0 + 120);
    v28 = *(v0 + 96);
    sub_2272CD9E8(v27);
    sub_226EABFDC(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    swift_allocError();
    v8(v29, v27, v28);
    swift_willThrow();
    v23(v27, v28);
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_2270489FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v90 = a3;
  v88 = a5;
  v82 = a6;
  v85 = sub_22766B390();
  v87 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v86 = v75 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = (v75 - v13);
  v15 = sub_227663FA0();
  v84 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_227666B60();
  v89 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v75 - v22;
  v24 = v91;
  result = sub_22703AF94(v90, a4, a1, v75 - v22);
  if (!v24)
  {
    v78 = v20;
    v79 = v14;
    v80 = v15;
    v81 = v23;
    v90 = v18;
    __swift_project_boxed_opaque_existential_0((a2 + 96), *(a2 + 120));
    sub_226EAF48C(a1, v17);
    v91 = 0;
    v75[1] = a2;
    v76 = v17;
    v77 = a1;
    v26 = v79;
    sub_22766A630();
    v27 = v89;
    v28 = v90;
    v29 = v78;
    v30 = v81;
    (*(v89 + 16))(v78, v81, v90);
    v31 = sub_22766B380();
    v32 = sub_22766C8B0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v34 = v28;
      v35 = v92;
      *v33 = 136315138;
      v75[0] = sub_227666A50();
      v37 = v36;
      v38 = v29;
      v39 = *(v27 + 8);
      v39(v38, v34);
      v40 = v26;
      v41 = sub_226E97AE8(v75[0], v37, &v92);

      v42 = v33;
      v30 = v81;
      *(v42 + 1) = v41;
      _os_log_impl(&dword_226E8E000, v31, v32, "Querying alternative workouts for workoutIdentifier=%s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      v43 = v35;
      v28 = v34;
      MEMORY[0x22AA9A450](v43, -1, -1);
      MEMORY[0x22AA9A450](v42, -1, -1);

      v44 = *(v87 + 8);
      v45 = v40;
    }

    else
    {

      v46 = v29;
      v39 = *(v27 + 8);
      v39(v46, v28);
      v44 = *(v87 + 8);
      v45 = v26;
    }

    v47 = v85;
    v44(v45, v85);
    v48 = v91;
    v49 = sub_22703CD44(v30, v88, v77);
    v91 = v48;
    v50 = v84;
    if (v48)
    {
      (*(v84 + 8))(v76, v80);
      return (v39)(v81, v28);
    }

    else
    {
      v51 = v49;
      v79 = v39;
      sub_22766A630();

      v52 = sub_22766B380();
      v53 = sub_22766C8B0();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 134217984;
        *(v54 + 4) = v51[2];

        _os_log_impl(&dword_226E8E000, v52, v53, "Found %ld workout alternatives", v54, 0xCu);
        v55 = v54;
        v47 = v85;
        MEMORY[0x22AA9A450](v55, -1, -1);
      }

      else
      {
      }

      v44(v86, v47);
      v56 = v91;
      v57 = sub_22704E488(v88, v77);
      v91 = v56;
      if (v56)
      {

        (*(v50 + 8))(v76, v80);
        return (v79)(v81, v28);
      }

      else
      {
        v58 = sub_226F34540(v57);
        sub_22766A630();

        v59 = sub_22766B380();
        v60 = sub_22766C8B0();
        v88 = v58;

        v61 = v59;
        if (os_log_type_enabled(v59, v60))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v92 = v63;
          *v62 = 136315138;
          v64 = sub_22766C610();
          v66 = sub_226E97AE8(v64, v65, &v92);
          v50 = v84;

          *(v62 + 4) = v66;
          v28 = v90;
          _os_log_impl(&dword_226E8E000, v61, v60, "Found completedWorkoutIdentifiers=%s", v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v63);
          MEMORY[0x22AA9A450](v63, -1, -1);
          MEMORY[0x22AA9A450](v62, -1, -1);

          v67 = v83;
          v68 = v85;
        }

        else
        {

          v67 = v83;
          v68 = v47;
        }

        v44(v67, v68);
        v69 = v82;
        v70 = v80;
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DE8, &qword_227676648);
        v72 = v71[12];
        v73 = v71[16];
        v74 = v71[20];
        (*(v89 + 32))(v69, v81, v28);
        *(v69 + v72) = v51;
        *(v69 + v73) = v88;
        return (*(v50 + 32))(v69 + v74, v76, v70);
      }
    }
  }

  return result;
}

uint64_t sub_227049138@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_2276681F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_227667240();
  v11 = sub_2276680D0();
  (*(v7 + 8))(v9, v6);
  result = sub_22733416C(v10, a2, v11);
  *a3 = result;
  return result;
}

uint64_t sub_227049244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[10] = a8;
  v9[11] = v8;
  v9[8] = a6;
  v9[9] = a7;
  v9[6] = a4;
  v9[7] = a5;
  v9[4] = a2;
  v9[5] = a3;
  v9[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E58, &qword_2276767B0);
  v9[12] = swift_task_alloc();
  v9[13] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DD8, &qword_227679B60) - 8);
  v9[14] = swift_task_alloc();
  v9[15] = swift_task_alloc();
  v9[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DE0, &qword_227676640);
  v9[17] = swift_task_alloc();
  v9[18] = swift_task_alloc();
  v9[19] = swift_task_alloc();
  v9[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E60, &qword_2276767B8);
  v9[21] = swift_task_alloc();
  v10 = sub_227663FA0();
  v9[22] = v10;
  v9[23] = *(v10 - 8);
  v9[24] = swift_task_alloc();
  v11 = sub_227666B60();
  v9[25] = v11;
  v9[26] = *(v11 - 8);
  v9[27] = swift_task_alloc();
  v9[28] = swift_task_alloc();
  v12 = sub_227667370();
  v9[29] = v12;
  v13 = *(v12 - 8);
  v9[30] = v13;
  v9[31] = *(v13 + 64);
  v9[32] = swift_task_alloc();
  v9[33] = swift_task_alloc();
  v9[34] = swift_task_alloc();
  v14 = sub_2276638D0();
  v9[35] = v14;
  v9[36] = *(v14 - 8);
  v9[37] = swift_task_alloc();
  v15 = sub_22766B390();
  v9[38] = v15;
  v9[39] = *(v15 - 8);
  v9[40] = swift_task_alloc();
  v9[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2270495F4, 0, 0);
}

uint64_t sub_2270495F4(uint64_t a1)
{
  v75 = v1;
  v3 = v1[36];
  v2 = v1[37];
  v4 = v1[35];
  v5 = v1[8];
  sub_22766A630();
  (*(v3 + 16))(v2, v5, v4);

  v6 = sub_22766B380();
  v7 = sub_22766C8B0();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[41];
  v11 = v1[38];
  v10 = v1[39];
  v12 = v1[36];
  v13 = v1[37];
  v14 = v1[35];
  if (v8)
  {
    v65 = v7;
    log = v6;
    v15 = v1[6];
    v16 = v1[7];
    v72 = v1[41];
    v18 = v1[4];
    v17 = v1[5];
    v69 = v1[38];
    v19 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v74 = v62;
    *v19 = 136315906;
    *(v19 + 4) = sub_226E97AE8(v18, v17, &v74);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_226E97AE8(v15, v16, &v74);
    *(v19 + 22) = 2080;
    sub_226EABFDC(&qword_27D7B9DF8, MEMORY[0x277D50180], MEMORY[0x277D50198]);
    v20 = sub_22766D140();
    v22 = v21;
    (*(v12 + 8))(v13, v14);
    v23 = sub_226E97AE8(v20, v22, &v74);

    *(v19 + 24) = v23;
    *(v19 + 32) = 2080;
    sub_227668480();
    sub_226EABFDC(&qword_27D7B84C8, MEMORY[0x277D534C8], MEMORY[0x277D534D0]);
    v24 = sub_22766C610();
    v26 = sub_226E97AE8(v24, v25, &v74);

    *(v19 + 34) = v26;
    _os_log_impl(&dword_226E8E000, log, v65, "Querying replacement workouts algorithmVersion: %s, workoutIdentifier: %s, workoutPlan: %s modalityPreferences: %s", v19, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v62, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);

    v27 = *(v10 + 8);
    v27(v72, v69);
  }

  else
  {

    (*(v12 + 8))(v13, v14);
    v27 = *(v10 + 8);
    v27(v9, v11);
  }

  v28 = v1[34];
  v29 = v1[29];
  v30 = v1[30];
  v31 = v1[10];
  sub_22766A630();
  v32 = *(v30 + 16);
  v1[42] = v32;
  v1[43] = (v30 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v73 = v32;
  v32(v28, v31, v29);
  v33 = sub_22766B380();
  v70 = sub_22766C8B0();
  v34 = os_log_type_enabled(v33, v70);
  v35 = v1[40];
  v36 = v1[38];
  v37 = v1[34];
  v39 = v1[29];
  v38 = v1[30];
  if (v34)
  {
    v40 = swift_slowAlloc();
    v66 = v27;
    v41 = swift_slowAlloc();
    v74 = v41;
    *v40 = 136315138;
    sub_226EABFDC(&qword_27D7B9DF0, MEMORY[0x277D52CA8], MEMORY[0x277D52CB8]);
    v61 = v35;
    v63 = v36;
    v42 = sub_22766D140();
    v44 = v43;
    (*(v38 + 8))(v37, v39);
    v45 = sub_226E97AE8(v42, v44, &v74);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_226E8E000, v33, v70, "Using configuration: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x22AA9A450](v41, -1, -1);
    MEMORY[0x22AA9A450](v40, -1, -1);

    v66(v61, v63);
  }

  else
  {

    (*(v38 + 8))(v37, v39);
    v27(v35, v36);
  }

  v46 = v1[33];
  v47 = v1[30];
  v48 = v1[29];
  v49 = v1[10];
  v50 = v1[11];
  v51 = v1[6];
  v52 = v1[7];
  v71 = v50[25];
  v64 = v50[26];
  __swift_project_boxed_opaque_existential_0(v50 + 22, v71);
  v73(v46, v49, v48);
  v53 = (*(v47 + 80) + 40) & ~*(v47 + 80);
  v54 = swift_allocObject();
  v1[44] = v54;
  *(v54 + 2) = v50;
  *(v54 + 3) = v51;
  *(v54 + 4) = v52;
  v55 = *(v47 + 32);
  v1[45] = v55;
  v1[46] = (v47 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v55(&v54[v53], v46, v48);
  v56 = *(v64 + 24);

  v67 = (v56 + *v56);
  v57 = swift_task_alloc();
  v1[47] = v57;
  *v57 = v1;
  v57[1] = sub_227049C88;
  v59 = v1[20];
  v58 = v1[21];

  return v67(v58, sub_22704FD40, v54, v59, v71, v64);
}

uint64_t sub_227049C88()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_22704A794;
  }

  else
  {

    v2 = sub_227049DA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_227049DA4()
{
  v103 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v93 = v0[16];
  v6 = *(v5 + 64);
  v88 = *(v0[26] + 32);
  v89 = *(v4 + *(v5 + 48));
  v88(v0[28], v4, v0[25]);
  (*(v2 + 32))(v1, v4 + v6, v3);
  v7 = sub_227663840();
  v91 = v7 + 64;
  v8 = -1;
  v9 = -1 << *(v7 + 32);
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & *(v7 + 64);
  v90 = (63 - v9) >> 6;
  v95 = v7;

  v11 = 0;
  v98 = MEMORY[0x277D84F90];
  v92 = v0;
  while (v10)
  {
LABEL_10:
    v13 = v0[18];
    v14 = v0[19];
    v15 = v0[17];
    v16 = __clz(__rbit64(v10)) | (v11 << 6);
    v17 = *(v95 + 48);
    v18 = sub_227665440();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v14, v17 + *(v19 + 72) * v16, v18);
    *(v14 + *(v93 + 48)) = *(*(v95 + 56) + 8 * v16);
    sub_226E93170(v14, v13, &qword_27D7B9DE0, &qword_227676640);
    v20 = *(v93 + 48);
    v21 = *(v13 + v20);
    (*(v19 + 32))(v15, v13, v18);
    *(v15 + v20) = v21;

    sub_226E97D1C(v15, &qword_27D7B9DE0, &qword_227676640);
    sub_226E97D1C(v14, &qword_27D7B9DE0, &qword_227676640);
    v22 = *(v21 + 16);
    v23 = *(v98 + 2);
    v24 = v23 + v22;
    if (__OFADD__(v23, v22))
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      return;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v24 > *(v98 + 3) >> 1)
    {
      if (v23 <= v24)
      {
        v26 = v23 + v22;
      }

      else
      {
        v26 = v23;
      }

      v98 = sub_2273A57A4(isUniquelyReferenced_nonNull_native, v26, 1, v98);
    }

    v10 &= v10 - 1;
    if (*(v21 + 16))
    {
      if ((*(v98 + 3) >> 1) - *(v98 + 2) < v22)
      {
        goto LABEL_52;
      }

      swift_arrayInitWithCopy();

      v0 = v92;
      if (v22)
      {
        v27 = *(v98 + 2);
        v28 = __OFADD__(v27, v22);
        v29 = v27 + v22;
        if (v28)
        {
          goto LABEL_53;
        }

        *(v98 + 2) = v29;
      }
    }

    else
    {

      v0 = v92;
      if (v22)
      {
        goto LABEL_51;
      }
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_50;
    }

    if (v12 >= v90)
    {
      break;
    }

    v10 = *(v91 + 8 * v12);
    ++v11;
    if (v10)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  v30 = *(v98 + 2);
  if (v30)
  {
    v31 = v0;
    v102 = MEMORY[0x277D84F90];
    sub_226F1EF90();
    v32 = v102;
    v33 = v98 + 40;
    do
    {

      v34 = sub_227667380();
      v36 = v35;

      v102 = v32;
      v37 = *(v32 + 16);
      if (v37 >= *(v32 + 24) >> 1)
      {
        sub_226F1EF90();
        v32 = v102;
      }

      *(v32 + 16) = v37 + 1;
      v38 = v32 + 16 * v37;
      *(v38 + 32) = v34;
      *(v38 + 40) = v36;
      v33 += 16;
      --v30;
    }

    while (v30);

    v0 = v31;
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  v39 = v0[45];
  v40 = v0[42];
  v41 = v0[32];
  v42 = v0[29];
  v96 = v0[28];
  v99 = v0[48];
  v43 = v0[10];
  v94 = v0[9];
  v44 = sub_226F3E6A8(v32);

  v40(v41, v43, v42);
  type metadata accessor for WorkoutPlanAlternativesProvider(0);
  v45 = swift_allocObject();
  v39(v45 + OBJC_IVAR____TtC15SeymourServices31WorkoutPlanAlternativesProvider_configuration, v41, v42);
  v46 = swift_task_alloc();
  v46[2] = v45;
  v46[3] = v94;
  v46[4] = v96;
  v46[5] = v44;
  sub_2275F205C(sub_22704FE5C, v46, v89);
  v48 = v47;

  v102 = v48;

  sub_22704BF48(&v102);
  if (v99)
  {
  }

  else
  {

    v49 = v102;
    v50 = *(v102 + 16);
    if (v50)
    {
      v51 = v0;
      v100 = v0[26];
      v52 = v0[13];
      v102 = MEMORY[0x277D84F90];
      sub_226F1F928(0, v50, 0);
      v53 = v102;
      v54 = v49 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
      v97 = *(v52 + 72);
      do
      {
        v55 = v51[27];
        v56 = v51[25];
        v57 = v51;
        v60 = v51 + 14;
        v59 = v51[14];
        v58 = v60[1];
        sub_226E93170(v54, v58, &qword_27D7B9DD8, &qword_227679B60);
        sub_22704D454(v58, v59);
        v88(v55, v59, v56);
        v102 = v53;
        v62 = *(v53 + 16);
        v61 = *(v53 + 24);
        if (v62 >= v61 >> 1)
        {
          sub_226F1F928((v61 > 1), v62 + 1, 1);
          v53 = v102;
        }

        v63 = v57[27];
        v64 = v57[25];
        *(v53 + 16) = v62 + 1;
        v88(v53 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v62, v63, v64);
        v54 += v97;
        --v50;
        v51 = v57;
      }

      while (v50);
    }

    else
    {

      v53 = MEMORY[0x277D84F90];
      v51 = v0;
    }

    v65 = v51[28];
    v66 = v51[26];
    v101 = v51[25];
    v67 = v51[24];
    v68 = v51[12];
    v69 = swift_task_alloc();
    v70 = v51;
    *(v69 + 16) = v67;
    v71 = sub_227039ADC(v53, sub_22704FDF8, v69);

    sub_22703A3D4(v71);
    v73 = v72;

    sub_227666B40();
    v75 = v74;
    v76 = sub_227663E90();
    sub_22735B7D0(v76, v75);
    v78 = v77;
    v80 = v79;

    if (v80)
    {
      v81 = 0;
    }

    else
    {
      v81 = v78;
    }

    v70[2] = v73;
    *(swift_task_alloc() + 16) = v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E68, &qword_2276767C0);
    sub_226E9CFD0(&qword_27D7B9E70, &qword_27D7B9E68, &qword_2276767C0, MEMORY[0x277D83520]);
    sub_22766C210();

    (*(v66 + 8))(v65, v101);

    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E78, &qword_2276767C8);
    if ((*(*(v82 - 8) + 48))(v68, 1, v82) == 1)
    {
      sub_226E97D1C(v70[12], &qword_27D7B9E58, &qword_2276767B0);
      v83 = 1;
    }

    else
    {
      v88(v70[3], v70[12] + *(v82 + 48), v70[25]);
      v83 = 0;
    }

    v84 = v70[23];
    v85 = v70[24];
    v86 = v70[22];
    (*(v70[26] + 56))(v70[3], v83, 1, v70[25]);
    (*(v84 + 8))(v85, v86);

    v87 = v70[1];

    v87();
  }
}

uint64_t sub_22704A794()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22704A8D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v68 = a3;
  v63 = a5;
  v61 = a6;
  v66 = sub_22766B390();
  v62 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v52 - v11;
  v13 = sub_227663FA0();
  v64 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227666B60();
  v67 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v52 - v20;
  v22 = v69;
  result = sub_22703AF94(v68, a4, a1, &v52 - v20);
  if (!v22)
  {
    v57 = v18;
    v58 = v12;
    v68 = v21;
    v59 = v13;
    v60 = v16;
    __swift_project_boxed_opaque_existential_0((a2 + 96), *(a2 + 120));
    sub_226EAF48C(a1, v15);
    v69 = 0;
    v54 = a2;
    v55 = a1;
    v56 = v15;
    v24 = v58;
    sub_22766A630();
    v25 = v67;
    v26 = v57;
    v27 = v60;
    (*(v67 + 16))(v57, v68, v60);
    v28 = sub_22766B380();
    v29 = sub_22766C8B0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v70 = v53;
      *v30 = 136315138;
      v52 = sub_227666A50();
      v32 = v31;
      v33 = *(v25 + 8);
      v33(v26, v27);
      v34 = v24;
      v35 = sub_226E97AE8(v52, v32, &v70);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_226E8E000, v28, v29, "Querying replacement workouts for workoutIdentifier=%s", v30, 0xCu);
      v36 = v53;
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x22AA9A450](v36, -1, -1);
      MEMORY[0x22AA9A450](v30, -1, -1);

      v37 = *(v62 + 8);
      v37(v34, v66);
    }

    else
    {

      v33 = *(v25 + 8);
      v33(v26, v27);
      v37 = *(v62 + 8);
      v37(v24, v66);
    }

    v38 = v69;
    v39 = v68;
    v40 = sub_22703CD44(v68, v63, v55);
    v69 = v38;
    if (v38)
    {
      (*(v64 + 8))(v56, v59);
      return (v33)(v39, v27);
    }

    else
    {
      v41 = v40;
      sub_22766A630();

      v42 = sub_22766B380();
      v43 = sub_22766C8B0();
      v44 = os_log_type_enabled(v42, v43);
      v45 = v59;
      if (v44)
      {
        v46 = swift_slowAlloc();
        *v46 = 134217984;
        *(v46 + 4) = v41[2];

        _os_log_impl(&dword_226E8E000, v42, v43, "Found %ld workout replacements", v46, 0xCu);
        MEMORY[0x22AA9A450](v46, -1, -1);
      }

      else
      {
      }

      v47 = v61;
      v48 = v64;
      v37(v65, v66);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E60, &qword_2276767B8);
      v50 = *(v49 + 48);
      v51 = *(v49 + 64);
      (*(v67 + 32))(v47, v68, v60);
      *(v47 + v50) = v41;
      return (*(v48 + 32))(v47 + v51, v56, v45);
    }
  }

  return result;
}

uint64_t sub_22704AE50@<X0>(uint64_t *a2@<X8>)
{
  sub_227666B40();
  v4 = v3;
  v5 = sub_227663E90();
  sub_22735B7D0(v5, v4);
  v7 = v6;
  v9 = v8;

  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = v7;
  }

  *a2 = v11;
  return result;
}

uint64_t sub_22704AED0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = sub_227666B60();
  v6 = *(v5 - 8);
  if (v4)
  {
    v10 = *(v5 - 8);
    (*(v10 + 16))(a2, v3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v5);
    v6 = v10;
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v6 + 56);

  return v8(a2, v7, 1, v5);
}

uint64_t sub_22704AFA8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);

  v1 = OBJC_IVAR____TtC15SeymourServices19WorkoutPlanProvider__workoutPlanAlgorithmSeed;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DD0, &qword_227676628);
  (*(*(v2 - 8) + 8))(&v0[v1], v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanProvider(uint64_t a1)
{
  result = qword_2813A1408;
  if (!qword_2813A1408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22704B0D4(uint64_t a1)
{
  sub_22704B184(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22704B184(uint64_t a1)
{
  if (!qword_2813A5498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BBC70, &qword_2276765B0);
    sub_22704B250(&qword_28139D208, MEMORY[0x277D4FA48], MEMORY[0x277D4FA50]);
    sub_22704B250(&qword_28139D200, MEMORY[0x277D84D58], MEMORY[0x277D84F50]);
    v1 = sub_227669750();
    if (!v2)
    {
      atomic_store(v1, &qword_2813A5498);
    }
  }
}

uint64_t sub_22704B250(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BBC70, &qword_2276765B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22704B2CC()
{
  result = qword_27D7B87A8;
  if (!qword_27D7B87A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B8560, &unk_227671560);
    sub_226F480FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B87A8);
  }

  return result;
}

void *sub_22704B384(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_22704D348(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void sub_22704B3FC(uint64_t a1, char a2, void *a3)
{
  v37 = *(a1 + 16);
  if (!v37)
  {
    goto LABEL_21;
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 56);
  v8 = *(a1 + 48);
  v9 = *a3;
  sub_226EB396C(v6, v5, v8);

  v10 = sub_226F491D8();
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v9[3] < v15)
  {
    sub_226FE2FE8(v15, a2 & 1);
    v10 = sub_226F491D8();
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    v10 = sub_22766D220();
    __break(1u);
  }

  if (a2)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_226FF0A58();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();

    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_226EB2DFC(v6, v5, v8);

      return;
    }

    goto LABEL_25;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = v21[6] + 24 * v10;
  *v22 = v6;
  *(v22 + 8) = v5;
  *(v22 + 16) = v8;
  *(v21[7] + 8 * v10) = v7;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v14)
  {
    v21[2] = v24;
    if (v37 != 1)
    {
      v16 = (a1 + 88);
      v25 = 1;
      while (v25 < *(a1 + 16))
      {
        v6 = *(v16 - 3);
        v5 = *(v16 - 2);
        v7 = *v16;
        v8 = *(v16 - 8);
        v26 = *a3;
        sub_226EB396C(v6, v5, v8);

        v27 = sub_226F491D8();
        v29 = v26[2];
        v30 = (v28 & 1) == 0;
        v14 = __OFADD__(v29, v30);
        v31 = v29 + v30;
        if (v14)
        {
          goto LABEL_23;
        }

        a2 = v28;
        if (v26[3] < v31)
        {
          sub_226FE2FE8(v31, 1);
          v27 = sub_226F491D8();
          if ((a2 & 1) != (v32 & 1))
          {
            goto LABEL_5;
          }
        }

        if (a2)
        {
          goto LABEL_8;
        }

        v33 = *a3;
        *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
        v34 = v33[6] + 24 * v27;
        *v34 = v6;
        *(v34 + 8) = v5;
        *(v34 + 16) = v8;
        *(v33[7] + 8 * v27) = v7;
        v35 = v33[2];
        v14 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        ++v25;
        v33[2] = v36;
        v16 += 4;
        if (v37 == v25)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_23;
    }

LABEL_21:

    return;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_22766CF90();
  MEMORY[0x22AA98450](39, 0xE100000000000000);
  sub_22766CFB0();
  __break(1u);
}

void sub_22704B80C(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v6 = a1 + 56;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 56);
  v10 = (63 - v7) >> 6;
  v38 = a2 + 32;

  v11 = 0;
  v12 = 0;
  v37 = v6;
  if (v9)
  {
    do
    {
      v13 = v9;
      v14 = v12;
LABEL_10:
      v16 = *(a2 + 16);
      if (v11 == v16)
      {
LABEL_25:
        sub_226EBB21C(a1);

        swift_bridgeObjectRelease_n();
        return;
      }

      if (v11 >= v16)
      {
        goto LABEL_27;
      }

      v40 = v11;
      v41 = (v13 - 1) & v13;
      v17 = (*(a1 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v13)))));
      v18 = *v17;
      v19 = v17[1];
      v20 = *(v38 + 8 * v11);
      v21 = *a4;

      v23 = sub_226E92000(v18, v19);
      v24 = v21[2];
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        goto LABEL_28;
      }

      v27 = v22;
      if (v21[3] >= v26)
      {
        if (a3)
        {
          if (v22)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_226FF016C();
          if (v27)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        sub_226FE2228(v26, a3 & 1);
        v28 = sub_226E92000(v18, v19);
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_30;
        }

        v23 = v28;
        if (v27)
        {
LABEL_23:
          v35 = swift_allocError();
          swift_willThrow();
          v36 = v35;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
          if (swift_dynamicCast())
          {
            goto LABEL_31;
          }

          sub_226EBB21C(a1);

          swift_bridgeObjectRelease_n();

          return;
        }
      }

      v30 = *a4;
      *(*a4 + 8 * (v23 >> 6) + 64) |= 1 << v23;
      v31 = (v30[6] + 16 * v23);
      *v31 = v18;
      v31[1] = v19;
      *(v30[7] + 8 * v23) = v20;
      v32 = v30[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_29;
      }

      v9 = v41;
      v11 = v40 + 1;
      v30[2] = v34;
      a3 = 1;
      v12 = v14;
      v6 = v37;
    }

    while (v41);
  }

  v15 = v12;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      goto LABEL_25;
    }

    v13 = *(v6 + 8 * v14);
    ++v15;
    if (v13)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  sub_22766D220();
  __break(1u);
LABEL_31:
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
  sub_22766CF90();
  MEMORY[0x22AA98450](39, 0xE100000000000000);
  sub_22766CFB0();
  __break(1u);
}

void sub_22704BBEC(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *a3;

  v10 = sub_226F3AC2C(v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_226FE69A8(v15, v6 & 1);
    v10 = sub_226F3AC2C(v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_22766D220();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_226FF239C();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();

    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v21[6] + v10) = v7;
  *(v21[7] + 8 * v10) = v8;
  v22 = v21[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_22766CE20();
    MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
    sub_22766CF90();
    MEMORY[0x22AA98450](39, 0xE100000000000000);
    sub_22766CFB0();
    __break(1u);
    return;
  }

  v21[2] = v23;
  if (v4 != 1)
  {
    v6 = (a1 + 56);
    v24 = 1;
    while (v24 < *(a1 + 16))
    {
      v7 = *(v6 - 8);
      v8 = *v6;
      v25 = *a3;

      v26 = sub_226F3AC2C(v7);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v27;
      if (v25[3] < v30)
      {
        sub_226FE69A8(v30, 1);
        v26 = sub_226F3AC2C(v7);
        if ((v16 & 1) != (v31 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v32 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      *(v32[6] + v26) = v7;
      *(v32[7] + 8 * v26) = v8;
      v33 = v32[2];
      v14 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v24;
      v32[2] = v34;
      v6 += 2;
      if (v4 == v24)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void sub_22704BF48(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DD8, &qword_227679B60) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_227117834(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_22704BFFC(v5);
  *a1 = v3;
}

void sub_22704BFFC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22766D130();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DD8, &qword_227679B60);
        v6 = sub_22766C380();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DD8, &qword_227679B60) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22704C398(v8, v9, a1, v4);
      *(v6 + 16) = 0;

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
    sub_22704C140(0, v2, 1, a1);
  }
}

void sub_22704C140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DD8, &qword_227679B60);
  MEMORY[0x28223BE20](v38);
  v37 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v30 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v35 = -v17;
    v36 = v16;
    v19 = a1 - a3;
    v29 = v17;
    v20 = v16 + v17 * a3;
LABEL_5:
    v33 = v18;
    v34 = a3;
    v31 = v20;
    v32 = v19;
    v21 = v19;
    v22 = v38;
    while (1)
    {
      sub_226E93170(v20, v15, &qword_27D7B9DD8, &qword_227679B60);
      sub_226E93170(v18, v11, &qword_27D7B9DD8, &qword_227679B60);
      v23 = *(v22 + 48);
      v24 = *&v15[v23];
      v25 = *&v11[v23];
      sub_226E97D1C(v11, &qword_27D7B9DD8, &qword_227679B60);
      sub_226E97D1C(v15, &qword_27D7B9DD8, &qword_227679B60);
      if (v25 >= v24)
      {
LABEL_4:
        a3 = v34 + 1;
        v18 = v33 + v29;
        v19 = v32 - 1;
        v20 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v26 = v37;
      sub_22704D454(v20, v37);
      v22 = v38;
      swift_arrayInitWithTakeFrontToBack();
      sub_22704D454(v26, v18);
      v18 += v35;
      v20 += v35;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_22704C398(unint64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v5;
  v109 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DD8, &qword_227679B60);
  v118 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v114 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v122 = &v107 - v12;
  MEMORY[0x28223BE20](v13);
  v124 = &v107 - v14;
  MEMORY[0x28223BE20](v15);
  v123 = &v107 - v16;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_97:
    a4 = *v109;
    if (!*v109)
    {
      goto LABEL_136;
    }

    v4 = v19;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v102 = v4;
    }

    else
    {
LABEL_130:
      v102 = sub_2271171D0(v4);
    }

    v126 = v102;
    v4 = *(v102 + 2);
    if (v4 >= 2)
    {
      while (*a3)
      {
        v103 = *&v102[16 * v4];
        v104 = v102;
        v105 = *&v102[16 * v4 + 24];
        sub_22704CCE8(*a3 + *(v118 + 72) * v103, *a3 + *(v118 + 72) * *&v102[16 * v4 + 16], *a3 + *(v118 + 72) * v105, a4);
        if (v6)
        {
          goto LABEL_108;
        }

        if (v105 < v103)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_2271171D0(v104);
        }

        if (v4 - 2 >= *(v104 + 2))
        {
          goto LABEL_124;
        }

        v106 = &v104[16 * v4];
        *v106 = v103;
        *(v106 + 1) = v105;
        v126 = v104;
        sub_227117144(v4 - 1);
        v102 = v126;
        v4 = *(v126 + 2);
        if (v4 <= 1)
        {
          goto LABEL_108;
        }
      }

      goto LABEL_134;
    }

LABEL_108:

    return;
  }

  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v108 = a4;
  v125 = v9;
  while (1)
  {
    v20 = v18;
    v115 = v19;
    if (v18 + 1 >= v17)
    {
      v32 = v18 + 1;
    }

    else
    {
      v110 = v18;
      v21 = *a3;
      v120 = v17;
      v121 = v21;
      v22 = *(v118 + 72);
      v23 = v21 + v22 * (v18 + 1);
      v24 = v123;
      sub_226E93170(v23, v123, &qword_27D7B9DD8, &qword_227679B60);
      v25 = v110;
      v26 = v21 + v22 * v110;
      v27 = v124;
      sub_226E93170(v26, v124, &qword_27D7B9DD8, &qword_227679B60);
      v28 = *(v9 + 48);
      v29 = *(v24 + v28);
      v30 = *(v27 + v28);
      sub_226E97D1C(v27, &qword_27D7B9DD8, &qword_227679B60);
      sub_226E97D1C(v24, &qword_27D7B9DD8, &qword_227679B60);
      v4 = v25 + 2;
      v119 = v22;
      v31 = v121 + v22 * v4;
      while (1)
      {
        v32 = v120;
        if (v120 == v4)
        {
          break;
        }

        LODWORD(v121) = v30 < v29;
        v33 = v123;
        sub_226E93170(v31, v123, &qword_27D7B9DD8, &qword_227679B60);
        v34 = v124;
        sub_226E93170(v23, v124, &qword_27D7B9DD8, &qword_227679B60);
        v35 = *(v125 + 48);
        v36 = *(v33 + v35);
        v37 = *(v34 + v35);
        sub_226E97D1C(v34, &qword_27D7B9DD8, &qword_227679B60);
        sub_226E97D1C(v33, &qword_27D7B9DD8, &qword_227679B60);
        ++v4;
        v31 += v119;
        v23 += v119;
        if (((v121 ^ (v37 >= v36)) & 1) == 0)
        {
          v32 = v4 - 1;
          break;
        }
      }

      a4 = v108;
      v9 = v125;
      v20 = v110;
      if (v30 < v29)
      {
        if (v32 < v110)
        {
          goto LABEL_127;
        }

        if (v110 < v32)
        {
          v107 = v6;
          v4 = v119 * (v32 - 1);
          v38 = v32 * v119;
          v39 = v32;
          v40 = v110;
          v41 = v110 * v119;
          v111 = a3;
          do
          {
            if (v40 != --v32)
            {
              v42 = *a3;
              if (!v42)
              {
                goto LABEL_133;
              }

              sub_22704D454(v42 + v41, v114);
              if (v41 < v4 || v42 + v41 >= (v42 + v38))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v41 != v4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_22704D454(v114, v42 + v4);
              a3 = v111;
            }

            ++v40;
            v4 -= v119;
            v38 -= v119;
            v41 += v119;
          }

          while (v40 < v32);
          v6 = v107;
          a4 = v108;
          v9 = v125;
          v20 = v110;
          v32 = v39;
        }
      }
    }

    v43 = a3[1];
    if (v32 < v43)
    {
      if (__OFSUB__(v32, v20))
      {
        goto LABEL_126;
      }

      if (v32 - v20 < a4)
      {
        if (__OFADD__(v20, a4))
        {
          goto LABEL_128;
        }

        if (v20 + a4 >= v43)
        {
          v44 = a3[1];
        }

        else
        {
          v44 = v20 + a4;
        }

        if (v44 < v20)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v32 != v44)
        {
          break;
        }
      }
    }

    v18 = v32;
    if (v32 < v20)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v19 = v115;
    }

    else
    {
      v19 = sub_2273A4F9C(0, *(v115 + 2) + 1, 1, v115);
    }

    v4 = *(v19 + 2);
    v45 = *(v19 + 3);
    a4 = v4 + 1;
    if (v4 >= v45 >> 1)
    {
      v19 = sub_2273A4F9C((v45 > 1), v4 + 1, 1, v19);
    }

    *(v19 + 2) = a4;
    v46 = &v19[16 * v4];
    *(v46 + 4) = v20;
    *(v46 + 5) = v18;
    if (!*v109)
    {
      goto LABEL_135;
    }

    if (v4)
    {
      v47 = *v109;
      while (1)
      {
        v48 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v49 = *(v19 + 4);
          v50 = *(v19 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_53:
          if (v52)
          {
            goto LABEL_114;
          }

          v65 = &v19[16 * a4];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_117;
          }

          v71 = &v19[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_121;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = a4 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v75 = &v19[16 * a4];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_67:
        if (v70)
        {
          goto LABEL_116;
        }

        v78 = &v19[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_119;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_74:
        v4 = v48 - 1;
        if (v48 - 1 >= a4)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v86 = v19;
        a4 = *&v19[16 * v4 + 32];
        v87 = *&v19[16 * v48 + 40];
        sub_22704CCE8(*a3 + *(v118 + 72) * a4, *a3 + *(v118 + 72) * *&v19[16 * v48 + 32], *a3 + *(v118 + 72) * v87, v47);
        if (v6)
        {
          goto LABEL_108;
        }

        if (v87 < a4)
        {
          goto LABEL_110;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v88 = v86;
        }

        else
        {
          v88 = sub_2271171D0(v86);
        }

        v9 = v125;
        if (v4 >= *(v88 + 2))
        {
          goto LABEL_111;
        }

        v89 = &v88[16 * v4];
        *(v89 + 4) = a4;
        *(v89 + 5) = v87;
        v126 = v88;
        v4 = &v126;
        sub_227117144(v48);
        v19 = v126;
        a4 = *(v126 + 2);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v19[16 * a4 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_112;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_113;
      }

      v60 = &v19[16 * a4];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_115;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_118;
      }

      if (v64 >= v56)
      {
        v82 = &v19[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_122;
        }

        if (v51 < v85)
        {
          v48 = a4 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v17 = a3[1];
    a4 = v108;
    if (v18 >= v17)
    {
      goto LABEL_97;
    }
  }

  v107 = v6;
  v110 = v20;
  v111 = a3;
  v90 = *(v118 + 72);
  v91 = *a3 + v90 * (v32 - 1);
  v92 = -v90;
  v93 = v20 - v32;
  v121 = *a3;
  v112 = v90;
  v113 = v44;
  a4 = v121 + v32 * v90;
LABEL_87:
  v119 = v91;
  v120 = v32;
  v116 = a4;
  v117 = v93;
  v94 = v91;
  v95 = v125;
  while (1)
  {
    v4 = v123;
    sub_226E93170(a4, v123, &qword_27D7B9DD8, &qword_227679B60);
    v96 = v124;
    sub_226E93170(v94, v124, &qword_27D7B9DD8, &qword_227679B60);
    v97 = *(v95 + 48);
    v98 = *(v4 + v97);
    v99 = *(v96 + v97);
    sub_226E97D1C(v96, &qword_27D7B9DD8, &qword_227679B60);
    sub_226E97D1C(v4, &qword_27D7B9DD8, &qword_227679B60);
    if (v99 >= v98)
    {
LABEL_86:
      v32 = v120 + 1;
      v18 = v113;
      v91 = v119 + v112;
      v93 = v117 - 1;
      a4 = v116 + v112;
      if (v120 + 1 != v113)
      {
        goto LABEL_87;
      }

      v6 = v107;
      v20 = v110;
      a3 = v111;
      v9 = v125;
      if (v113 < v110)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v121)
    {
      break;
    }

    v100 = v122;
    sub_22704D454(a4, v122);
    v95 = v125;
    swift_arrayInitWithTakeFrontToBack();
    sub_22704D454(v100, v94);
    v94 += v92;
    a4 += v92;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_86;
    }
  }

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
}

void sub_22704CCE8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = a3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DD8, &qword_227679B60);
  MEMORY[0x28223BE20](v46);
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_60;
  }

  v13 = v47 - a2;
  if (v47 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v14 = (a2 - a1) / v12;
  v50 = a1;
  v49 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v16;
    if (v16 >= 1)
    {
      v24 = -v12;
      v25 = a4 + v16;
      v42 = v24;
      v43 = a4;
      do
      {
        v40 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v44 = v26;
        while (1)
        {
          v29 = v47;
          if (v26 <= a1)
          {
            v50 = v26;
            v48 = v40;
            goto LABEL_58;
          }

          v41 = v23;
          v47 += v24;
          v30 = v25 + v24;
          sub_226E93170(v30, v10, &qword_27D7B9DD8, &qword_227679B60);
          v31 = v27;
          v32 = v27;
          v33 = v10;
          v34 = v45;
          sub_226E93170(v32, v45, &qword_27D7B9DD8, &qword_227679B60);
          v35 = *(v46 + 48);
          v36 = *(v33 + v35);
          v37 = *(v34 + v35);
          v38 = v34;
          v10 = v33;
          sub_226E97D1C(v38, &qword_27D7B9DD8, &qword_227679B60);
          sub_226E97D1C(v33, &qword_27D7B9DD8, &qword_227679B60);
          if (v37 < v36)
          {
            break;
          }

          v23 = v30;
          if (v29 < v25 || v47 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v23 = v30;
            v27 = v31;
          }

          else
          {
            v27 = v31;
            if (v29 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
              v23 = v30;
            }
          }

          v25 = v23;
          v26 = v44;
          v28 = v30 > v43;
          v24 = v42;
          if (!v28)
          {
            a2 = v44;
            goto LABEL_57;
          }
        }

        if (v29 < v44 || v47 >= v44)
        {
          a2 = v31;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v42;
        }

        else
        {
          v24 = v42;
          a2 = v31;
          if (v29 != v44)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v23 = v41;
      }

      while (v25 > v43);
    }

LABEL_57:
    v50 = a2;
    v48 = v23;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v17 = a4 + v15;
    v48 = a4 + v15;
    if (v15 >= 1 && a2 < v47)
    {
      do
      {
        sub_226E93170(a2, v10, &qword_27D7B9DD8, &qword_227679B60);
        v19 = v45;
        sub_226E93170(a4, v45, &qword_27D7B9DD8, &qword_227679B60);
        v20 = *(v46 + 48);
        v21 = *&v10[v20];
        v22 = *(v19 + v20);
        sub_226E97D1C(v19, &qword_27D7B9DD8, &qword_227679B60);
        sub_226E97D1C(v10, &qword_27D7B9DD8, &qword_227679B60);
        if (v22 >= v21)
        {
          if (a1 < a4 || a1 >= a4 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = a4 + v12;
          a4 += v12;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v12;
        }

        a1 += v12;
        v50 = a1;
      }

      while (a4 < v17 && a2 < v47);
    }
  }

LABEL_58:
  sub_227117270(&v50, &v49, &v48);
}

void sub_22704D1E8(uint64_t a1)
{
  v2 = a1;
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_22704B384(v7, v4, v2);
      MEMORY[0x22AA9A450](v7, -1, -1);
      return;
    }
  }

  MEMORY[0x28223BE20](a1);
  v6 = v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_22704D348(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_22704D348(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 48) + 8 * v11))
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_15:
        sub_227329178(result, a2, v4, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      goto LABEL_15;
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_22704D454(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DD8, &qword_227679B60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22704D4E4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v4 = a1;
  v45 = MEMORY[0x277D84F90];
  sub_226F1FE48(0, v2, 0);
  v3 = v45;
  v5 = v4 + 64;
  result = sub_22766CC90();
  v7 = result;
  v8 = 0;
  v9 = *(v4 + 36);
  v35 = v4 + 72;
  v36 = v2;
  v37 = v9;
  v38 = v4 + 64;
  v39 = v4;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v4 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v4 + 36))
    {
      goto LABEL_23;
    }

    v41 = v8;
    v12 = *(v4 + 56);
    v13 = *(v4 + 48) + 24 * v7;
    v14 = v3;
    v16 = *v13;
    v15 = *(v13 + 8);
    v17 = *(v13 + 16);
    v18 = *(v12 + 8 * v7);
    sub_226EB396C(*v13, v15, *(v13 + 16));

    v19 = a2(v16, v15, v17, v18);
    v43 = v20;
    v44 = v19;
    v42 = v21;
    v23 = v22;
    v24 = v15;
    v3 = v14;
    sub_226EB2DFC(v16, v24, v17);

    v26 = *(v14 + 16);
    v25 = *(v14 + 24);
    if (v26 >= v25 >> 1)
    {
      result = sub_226F1FE48((v25 > 1), v26 + 1, 1);
      v3 = v14;
    }

    *(v3 + 16) = v26 + 1;
    v27 = v3 + 32 * v26;
    *(v27 + 32) = v44;
    *(v27 + 40) = v43;
    *(v27 + 48) = v42 & 1;
    *(v27 + 56) = v23;
    v4 = v39;
    v10 = 1 << *(v39 + 32);
    if (v7 >= v10)
    {
      goto LABEL_24;
    }

    v5 = v38;
    v28 = *(v38 + 8 * v11);
    if ((v28 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v9 = v37;
    if (v37 != *(v39 + 36))
    {
      goto LABEL_26;
    }

    v29 = v28 & (-2 << (v7 & 0x3F));
    if (v29)
    {
      v10 = __clz(__rbit64(v29)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = v11 << 6;
      v31 = v11 + 1;
      v32 = (v35 + 8 * v11);
      while (v31 < (v10 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          result = sub_226EB526C(v7, v37, 0);
          v10 = __clz(__rbit64(v33)) + v30;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v7, v37, 0);
    }

LABEL_4:
    v8 = v41 + 1;
    v7 = v10;
    if (v41 + 1 == v36)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_22704D7AC(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v33 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 64); ; i += 40)
  {
    v5 = *(i - 3);
    v32 = *(i - 4);
    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;

    sub_226EB396C(v7, v6, v8);
    sub_226EB396C(v7, v6, v8);
    v10 = sub_226F491D8();
    v11 = v1[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v14 = v9;
    if (v1[3] < v13)
    {
      sub_226FE696C(v13, 1);
      v1 = v33;
      v15 = sub_226F491D8();
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_19;
      }

      v10 = v15;
    }

    if (v14)
    {
      v30 = v5;
      sub_226EB2DFC(v7, v6, v8);
      v17 = v1[7];
      v18 = *(v17 + 8 * v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 8 * v10) = v18;
      v31 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_2273A55F4(0, *(v18 + 2) + 1, 1, v18);
        *(v17 + 8 * v10) = v18;
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v23 = sub_2273A55F4((v20 > 1), v21 + 1, 1, v18);
        v22 = v21 + 1;
        v18 = v23;
        *(v17 + 8 * v10) = v23;
      }

      *(v18 + 2) = v22;
      v4 = &v18[40 * v21];
      v2 = v31;
      *(v4 + 4) = v32;
      *(v4 + 5) = v30;
      *(v4 + 6) = v7;
      *(v4 + 7) = v6;
      v4[64] = v8;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E38, &qword_227686050);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_227670CD0;
      *(v24 + 32) = v32;
      *(v24 + 40) = v5;
      *(v24 + 48) = v7;
      *(v24 + 56) = v6;
      *(v24 + 64) = v8;
      v1[(v10 >> 6) + 8] |= 1 << v10;
      v25 = v1[6] + 24 * v10;
      *v25 = v7;
      *(v25 + 8) = v6;
      *(v25 + 16) = v8;
      *(v1[7] + 8 * v10) = v24;
      v26 = v1[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_18;
      }

      v1[2] = v28;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_22704DA3C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) >= *(a1 + 16))
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E70, qword_22768D100);
    v5 = sub_22766D010();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v7 = v5;

  sub_22704B80C(a1, a2, 1, &v7);
  return v7;
}

unint64_t sub_22704DB08(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  v4 = a3;
  for (i = (result + 48); ; i += 3)
  {
    v8 = *(i - 2);
    v7 = *(i - 1);
    v9 = *i;
    v10 = *v4;

    result = sub_226E92000(v8, v7);
    v12 = v10[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      break;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      sub_226FE6994(v15, a2 & 1);
      result = sub_226E92000(v8, v7);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_34;
      }

LABEL_11:
      v18 = *v4;
      if ((v16 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_12;
    }

    if (a2)
    {
      goto LABEL_11;
    }

    v29 = result;
    sub_226FF2388();
    result = v29;
    v4 = a3;
    v18 = *a3;
    if ((v16 & 1) == 0)
    {
LABEL_25:
      v18[(result >> 6) + 8] |= 1 << result;
      v30 = (v18[6] + 16 * result);
      *v30 = v8;
      v30[1] = v7;
      *(v18[7] + 8 * result) = v9;
      v31 = v18[2];
      v14 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v14)
      {
        goto LABEL_30;
      }

      v18[2] = v32;
      goto LABEL_5;
    }

LABEL_12:
    v19 = *(v18[7] + 8 * result);
    v20 = *(v9 + 16);
    v21 = *(v19 + 2);
    v22 = v21 + v20;
    if (__OFADD__(v21, v20))
    {
      goto LABEL_29;
    }

    v34 = result;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v24 = *(v19 + 3) >> 1, v24 < v22))
    {
      if (v21 <= v22)
      {
        v25 = v21 + v20;
      }

      else
      {
        v25 = v21;
      }

      v19 = sub_2273A5120(isUniquelyReferenced_nonNull_native, v25, 1, v19);
      v24 = *(v19 + 3) >> 1;
    }

    v4 = a3;
    if (*(v9 + 16))
    {
      v26 = *(v19 + 2);
      if (v24 - v26 < v20)
      {
        goto LABEL_32;
      }

      memcpy(&v19[8 * v26 + 32], (v9 + 32), 8 * v20);

      if (v20)
      {
        v27 = *(v19 + 2);
        v14 = __OFADD__(v27, v20);
        v28 = v27 + v20;
        if (v14)
        {
          goto LABEL_33;
        }

        *(v19 + 2) = v28;
      }
    }

    else
    {

      if (v20)
      {
        goto LABEL_31;
      }
    }

    *(v18[7] + 8 * v34) = v19;

LABEL_5:
    a2 = 1;
    if (!--v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_22704DD68(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = MEMORY[0x277D84F98];
  v33 = v1;
  while (v4)
  {
    v10 = v6;
LABEL_11:
    v11 = __clz(__rbit64(v4)) | (v10 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = v12[1];
    v35 = *v12;
    v14 = *(a1 + 56) + 24 * v11;
    v16 = *v14;
    v15 = *(v14 + 8);
    v17 = *(v14 + 16);

    sub_226EB396C(v16, v15, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_226F491D8();
    v21 = v7[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_22;
    }

    v25 = v20;
    if (v7[3] >= v24)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = v19;
        sub_226FF21EC();
        v19 = v31;
      }
    }

    else
    {
      sub_226FE6650(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_226F491D8();
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_24;
      }
    }

    v4 &= v4 - 1;
    if (v25)
    {
      v8 = v19;
      sub_226EB2DFC(v16, v15, v17);
      v9 = (v7[7] + 16 * v8);
      *v9 = v35;
      v9[1] = v13;
    }

    else
    {
      v7[(v19 >> 6) + 8] |= 1 << v19;
      v27 = v7[6] + 24 * v19;
      *v27 = v16;
      *(v27 + 8) = v15;
      *(v27 + 16) = v17;
      v28 = (v7[7] + 16 * v19);
      *v28 = v35;
      v28[1] = v13;
      v29 = v7[2];
      v23 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v23)
      {
        goto LABEL_23;
      }

      v7[2] = v30;
    }

    v6 = v10;
    v1 = v33;
  }

  while (1)
  {
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return a1;
    }

    v4 = *(v1 + 8 * v10);
    ++v6;
    if (v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_22704DFD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - v9;
  MEMORY[0x28223BE20](v11);
  v56 = &v50 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - v14;
  sub_22766A630();
  v16 = sub_22766B380();
  v17 = sub_22766C8B0();
  v18 = os_log_type_enabled(v16, v17);
  v54 = v10;
  if (v18)
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = a2;
    _os_log_impl(&dword_226E8E000, v16, v17, "Logging plans for %ld days:", v19, 0xCu);
    v20 = v19;
    v10 = v54;
    MEMORY[0x22AA9A450](v20, -1, -1);
  }

  v22 = *(v5 + 8);
  v21 = v5 + 8;
  v57 = v22;
  result = v22(v15, v4);
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v25 = 0;
    *&v24 = 134217984;
    v55 = v24;
    *&v24 = 134218242;
    v50 = v24;
    v51 = v4;
    v52 = a2;
    v53 = v21;
    do
    {
      v27 = MEMORY[0x22AA95620](v25);
      if (v27 == 7)
      {
        sub_22766A630();
        v28 = sub_22766B380();
        v29 = sub_22766C890();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = v55;
          *(v30 + 4) = v25;
          _os_log_impl(&dword_226E8E000, v28, v29, "Failed to create Weekday with value: %ld", v30, 0xCu);
          MEMORY[0x22AA9A450](v30, -1, -1);
        }

        v26 = v7;
      }

      else
      {
        v31 = v56;
        if (*(a1 + 16))
        {
          v32 = sub_226F3AC2C(v27);
          if (v33)
          {
            v34 = *(*(a1 + 56) + 8 * v32);

            sub_22766A630();

            v35 = sub_22766B380();
            v36 = sub_22766C8B0();

            if (os_log_type_enabled(v35, v36))
            {
              v37 = swift_slowAlloc();
              v38 = swift_slowAlloc();
              v58 = v38;
              *v37 = v50;
              *(v37 + 4) = v25;
              *(v37 + 12) = 2080;
              v39 = sub_227667400();
              v40 = a1;
              v41 = MEMORY[0x22AA98660](v34, v39);
              v43 = v42;

              v44 = sub_226E97AE8(v41, v43, &v58);

              *(v37 + 14) = v44;
              a1 = v40;
              v4 = v51;
              _os_log_impl(&dword_226E8E000, v35, v36, "Day: %ld -> Scheduled items: %s", v37, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v38);
              v45 = v38;
              a2 = v52;
              MEMORY[0x22AA9A450](v45, -1, -1);
              MEMORY[0x22AA9A450](v37, -1, -1);

              v46 = v56;
            }

            else
            {

              v46 = v31;
            }

            result = v57(v46, v4);
            v10 = v54;
            goto LABEL_8;
          }
        }

        sub_22766A630();
        v47 = sub_22766B380();
        v48 = sub_22766C8B0();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = v55;
          *(v49 + 4) = v25;
          _os_log_impl(&dword_226E8E000, v47, v48, "Day: %ld -> unscheduledDay", v49, 0xCu);
          MEMORY[0x22AA9A450](v49, -1, -1);
        }

        v26 = v10;
      }

      result = v57(v26, v4);
LABEL_8:
      ++v25;
    }

    while (a2 != v25);
  }

  return result;
}

void *sub_22704E488(uint64_t a1, void *a2)
{
  v79 = a2;
  v87 = sub_227664530();
  v83 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_227665FB0();
  v77 = *(v3 - 8);
  v78 = v3;
  MEMORY[0x28223BE20](v3);
  v76 = (&v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v74 = &v72 - v6;
  MEMORY[0x28223BE20](v7);
  v75 = &v72 - v8;
  v9 = sub_227667AA0();
  MEMORY[0x28223BE20](v9 - 8);
  v82 = (&v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_227662930();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v72 - v16;
  v18 = sub_227662750();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v81 = &v72 - v23;
  v24 = sub_2276681F0();
  v84 = *(v24 - 8);
  v85 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227667240();
  sub_227662740();
  (*(v12 + 104))(v14, *MEMORY[0x277CC9968], v11);
  sub_227668120();
  sub_227662610();
  (*(v12 + 8))(v14, v11);
  v27 = v19 + 8;
  v28 = v18;
  v73 = *(v19 + 8);
  v73(v21, v18);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_226E97D1C(v17, &qword_27D7B9690, qword_227670B50);
    v29 = sub_227665CB0();
    sub_226EABFDC(&qword_28139B740, MEMORY[0x277D51D30], MEMORY[0x277D51D38]);
    swift_allocError();
    (*(*(v29 - 1) + 104))(v30, *MEMORY[0x277D51D28], v29);
    swift_willThrow();
    v32 = v84;
    v31 = v85;
    goto LABEL_5;
  }

  v33 = v81;
  (*(v19 + 32))(v81, v17, v18);
  v34 = v74;
  v35 = v33;
  sub_227665F70();
  sub_2276681C0();
  v36 = v76;
  sub_227665F60();
  sub_227665F50();
  v37 = *(v77 + 1);
  v38 = v36;
  v39 = v78;
  v37(v38, v78);
  v37(v34, v39);
  v29 = v82;
  sub_227667A90();
  v40 = __swift_project_boxed_opaque_existential_0(v79, v79[3]);
  sub_22742F870(v29, *v40, v40[1], *(v40 + 16), v40[3]);
  v41 = v80;
  v42 = sub_227232EB8(100);
  v80 = v41;
  if (v41)
  {

    sub_22704FCD4(v29, MEMORY[0x277D530D0]);
    v73(v35, v18);
    v32 = v84;
    v31 = v85;
LABEL_5:
    (*(v32 + 8))(v26, v31);
    return v29;
  }

  v44 = v42;
  v72 = v27;
  v74 = v28;
  v75 = v26;

  v29 = sub_2271481B8(MEMORY[0x277D84F90]);
  v45 = v44 + 56;
  v46 = 1 << v44[32];
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(v44 + 7);
  v49 = (v46 + 63) >> 6;
  v79 = (v83 + 16);
  v76 = (v83 + 8);

  v50 = 0;
  v77 = v44 + 56;
  v78 = v44;
  if (v48)
  {
    while (1)
    {
      v51 = v50;
LABEL_14:
      (*(v83 + 16))(v86, *(v44 + 6) + *(v83 + 72) * (__clz(__rbit64(v48)) | (v51 << 6)), v87);
      v52 = sub_2276644F0();
      v54 = v53;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88 = v29;
      v56 = sub_226E92000(v52, v54);
      v58 = v29[2];
      v59 = (v57 & 1) == 0;
      v60 = __OFADD__(v58, v59);
      v61 = v58 + v59;
      if (v60)
      {
        goto LABEL_29;
      }

      v62 = v57;
      if (v29[3] < v61)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_19;
      }

      v65 = v56;
      sub_226FF016C();
      v56 = v65;
      v29 = v88;
      if (v62)
      {
LABEL_20:
        v64 = v56;

        v56 = v64;
        goto LABEL_24;
      }

LABEL_22:
      v29[(v56 >> 6) + 8] |= 1 << v56;
      v66 = (v29[6] + 16 * v56);
      *v66 = v52;
      v66[1] = v54;
      *(v29[7] + 8 * v56) = 0;
      v67 = v29[2];
      v60 = __OFADD__(v67, 1);
      v68 = v67 + 1;
      if (v60)
      {
        goto LABEL_31;
      }

      v29[2] = v68;
LABEL_24:
      v69 = v29[7];
      v70 = *(v69 + 8 * v56);
      v60 = __OFADD__(v70, 1);
      v71 = v70 + 1;
      v44 = v78;
      if (v60)
      {
        goto LABEL_30;
      }

      v48 &= v48 - 1;
      *(v69 + 8 * v56) = v71;
      (*v76)(v86, v87);
      v50 = v51;
      v45 = v77;
      if (!v48)
      {
        goto LABEL_11;
      }
    }

    sub_226FE2228(v61, isUniquelyReferenced_nonNull_native);
    v56 = sub_226E92000(v52, v54);
    if ((v62 & 1) != (v63 & 1))
    {
      goto LABEL_32;
    }

LABEL_19:
    v29 = v88;
    if (v62)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

LABEL_11:
  while (1)
  {
    v51 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v51 >= v49)
    {

      sub_22704FCD4(v82, MEMORY[0x277D530D0]);
      v73(v81, v74);
      (*(v84 + 8))(v75, v85);

      return v29;
    }

    v48 = *&v45[8 * v51];
    ++v50;
    if (v48)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_22766D220();
  __break(1u);
  return result;
}

void sub_22704ED88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v55 = a2;
  v51 = a4;
  v50 = a3;
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A630();
  sub_22766B370();
  (*(v6 + 8))(v8, v5);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v11 = (a1 + 32);
    do
    {
      v12 = *v11;
      v13 = *(*v11 + 16);
      v14 = *(v10 + 2);
      v15 = v14 + v13;
      if (__OFADD__(v14, v13))
      {
        goto LABEL_36;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v15 <= *(v10 + 3) >> 1)
      {
        if (!*(v12 + 16))
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v14 <= v15)
        {
          v17 = v14 + v13;
        }

        else
        {
          v17 = v14;
        }

        v10 = sub_2273A55F4(isUniquelyReferenced_nonNull_native, v17, 1, v10);
        if (!*(v12 + 16))
        {
LABEL_3:

          if (v13)
          {
            goto LABEL_37;
          }

          goto LABEL_4;
        }
      }

      if ((*(v10 + 3) >> 1) - *(v10 + 2) < v13)
      {
        goto LABEL_38;
      }

      swift_arrayInitWithCopy();

      if (v13)
      {
        v18 = *(v10 + 2);
        v19 = __OFADD__(v18, v13);
        v20 = v18 + v13;
        if (v19)
        {
          goto LABEL_39;
        }

        *(v10 + 2) = v20;
      }

LABEL_4:
      ++v11;
      --v9;
    }

    while (v9);
  }

  v21 = v56;
  v22 = sub_22704D7AC(v10);

  sub_227039E78(v22);
  v24 = v23;
  v53 = v21;

  v57 = MEMORY[0x277D84F90];
  v25 = v24 + 64;
  v26 = 1 << *(v24 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v24 + 64);
  v29 = (v26 + 63) >> 6;
  v56 = v24;

  v30 = 0;
  v54 = v24 + 64;
  while (v28)
  {
LABEL_28:
    v34 = __clz(__rbit64(v28)) | (v30 << 6);
    v35 = v55;
    v36 = *(v56 + 48) + 24 * v34;
    v38 = *v36;
    v37 = *(v36 + 8);
    v39 = *(v36 + 16);
    v40 = *(*(v56 + 56) + 8 * v34);
    v41 = *(v55 + 16);
    sub_226EB396C(*v36, v37, *(v36 + 16));
    if (v41)
    {
      v42 = sub_226F491D8();
      v32 = v39;
      if (v43)
      {
        v52 = v39;
        v44 = (*(v35 + 56) + 16 * v42);
        v45 = *v44;
        v46 = v44[1];

        v47 = v45;
        v48 = v53;
        v49 = sub_22703B664(v40, v47, v46, v50, v51);
        v53 = v48;
        if (v48)
        {

          sub_226EB2DFC(v38, v37, v52);

          return;
        }

        v31 = v49;

        v32 = v52;
      }

      else
      {
        v31 = MEMORY[0x277D84FA0];
      }
    }

    else
    {
      v31 = MEMORY[0x277D84FA0];
      v32 = v39;
    }

    v28 &= v28 - 1;
    sub_226EB2DFC(v38, v37, v32);
    sub_22745FA5C(v31);
    v25 = v54;
  }

  while (1)
  {
    v33 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v33 >= v29)
    {

      sub_226EDEFE4(v57);

      return;
    }

    v28 = *(v25 + 8 * v33);
    ++v30;
    if (v28)
    {
      v30 = v33;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

void *sub_22704F1AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_227667400();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E40, &qword_227676690);
  result = sub_22766CFF0();
  v9 = 0;
  v52 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v63 = (v5 + 8);
  v50 = v5;
  v51 = result + 8;
  v59 = v4;
  v60 = a2;
  v49 = result;
  v47 = v11;
  v48 = v16;
  v58 = v5 + 16;
  if ((v14 & v10) != 0)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_10:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v52 + 48) + v20);
      v22 = *(*(v52 + 56) + 8 * v20);
      v23 = *(v22 + 16);
      if (v23)
      {
        break;
      }

      v42 = MEMORY[0x277D84F90];
LABEL_25:
      *(v51 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(result[6] + v20) = v21;
      *(result[7] + 8 * v20) = v42;
      v43 = result[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_30;
      }

      result[2] = v45;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v54 = *(*(v52 + 48) + v20);
    v55 = v17 | (v9 << 6);
    v56 = v15;
    v57 = v9;
    v24 = v22 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
    v65 = *(v50 + 72);
    v64 = *(v50 + 16);
    v53 = v22;

    v62 = MEMORY[0x277D84F90];
    while (1)
    {
      v64(v7, v24, v4);
      v25 = sub_2276673E0();
      if (*(a2 + 16))
      {
        v27 = sub_226E92000(v25, v26);
        v29 = v28;

        if (v29)
        {
          v30 = *(a2 + 56) + 24 * v27;
          v31 = v4;
          v32 = *v30;
          v33 = *(v30 + 8);
          v34 = *(v30 + 16);
          sub_226EB396C(*v30, v33, v34);
          v35 = sub_2276673F0();
          v61 = sub_2276673C0();
          (*v63)(v7, v31);
          v36 = v35;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v37 = v62;
          }

          else
          {
            v37 = sub_2273A55F4(0, *(v62 + 2) + 1, 1, v62);
          }

          v39 = *(v37 + 2);
          v38 = *(v37 + 3);
          if (v39 >= v38 >> 1)
          {
            v37 = sub_2273A55F4((v38 > 1), v39 + 1, 1, v37);
          }

          *(v37 + 2) = v39 + 1;
          v62 = v37;
          v40 = &v37[40 * v39];
          a2 = v60;
          v41 = v61;
          *(v40 + 4) = v36;
          *(v40 + 5) = v41;
          *(v40 + 6) = v32;
          *(v40 + 7) = v33;
          v40[64] = v34;
          v4 = v59;
          goto LABEL_14;
        }
      }

      else
      {
      }

      (*v63)(v7, v4);
LABEL_14:
      v24 += v65;
      if (!--v23)
      {

        v16 = v48;
        result = v49;
        v15 = v56;
        v9 = v57;
        v20 = v55;
        v21 = v54;
        v42 = v62;
        goto LABEL_25;
      }
    }
  }

LABEL_5:
  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      return result;
    }

    v19 = *(v47 + 8 * v9);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_22704F600(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_227664EC0() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_227664CE0() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_226E92F34;

  return sub_2272D2054(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_22704F76C(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_227664CE0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_227665C20() - 8);
  v10 = (*(v9 + 80) + v8 + 8) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v14 = *(v1 + v6);
  v15 = *(v1 + v7);
  v16 = *(v1 + v8);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_226E93028;

  return sub_2272D4550(v14, v15, v16, a1, v11, v12, v13, v1 + v5, v1 + v10);
}

unint64_t sub_22704F918()
{
  result = qword_27D7B9E30;
  if (!qword_27D7B9E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9E30);
  }

  return result;
}

uint64_t objectdestroy_14Tm(uint64_t (*a1)(void))
{
  v3 = sub_227664EC0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = a1(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10 + 8) & ~v10;
  v12 = *(v9 + 64);
  v13 = v5 | v10;
  swift_unknownObjectRelease();
  (*(v4 + 8))(v1 + v6, v3);

  (*(v9 + 8))(v1 + v11, v8);

  return MEMORY[0x2821FE8E8](v1, v11 + v12, v13 | 7);
}

uint64_t sub_22704FB68(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_227664EC0() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_227667100() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_226E93028;

  return sub_2272CE33C(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_22704FCD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_22704FE14@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = __OFSUB__(*result, v3);
  v5 = *result - v3;
  if (v4)
  {
    __break(1u);
  }

  else if ((v5 & 0x8000000000000000) == 0 || (v4 = __OFSUB__(0, v5), v5 = -v5, !v4))
  {
    *a2 = v5;
    return result;
  }

  __break(1u);
  return result;
}

id sub_22705000C(uint64_t a1, void *a2)
{
  v3 = *(v2 + *a2);
  v4 = sub_22766C000();
  if (*(v3 + 16))
  {
    sub_226E92000(v4, v5);
    v7 = v6;

    if (v7)
    {

      return sub_22766C750();
    }
  }

  else
  {
  }

  v9 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  return [v9 initWithInteger_];
}

id sub_227050148()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AchievementEnvironment(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AchievementEnvironment(uint64_t a1)
{
  result = qword_27D7B9EA8;
  if (!qword_27D7B9EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2270502AC(uint64_t a1)
{
  sub_2270503BC(319);
  if (v1 <= 0x3F)
  {
    sub_227662750();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2270503BC(uint64_t a1)
{
  if (!qword_2813A5818)
  {
    sub_227662750();
    v1 = sub_22766CB90();
    if (!v2)
    {
      atomic_store(v1, &qword_2813A5818);
    }
  }
}

uint64_t sub_227050414(uint64_t a1)
{
  v31 = sub_227668390();
  v3 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v24[1] = v1;
    v35 = MEMORY[0x277D84F90];
    sub_226EB5238(0, v5, 0);
    v33 = a1 + 56;
    v34 = v35;
    result = sub_22766CC90();
    v7 = result;
    v8 = 0;
    v28 = v3 + 8;
    v29 = v3 + 16;
    v25 = a1 + 64;
    v26 = v5;
    v27 = v3;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v33 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v32 = *(a1 + 36);
      v11 = v30;
      v12 = v31;
      (*(v3 + 16))(v30, *(a1 + 48) + *(v3 + 72) * v7, v31);
      v13 = sub_227668360();
      result = (*(v3 + 8))(v11, v12);
      v14 = v34;
      v35 = v34;
      v16 = *(v34 + 16);
      v15 = *(v34 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_226EB5238((v15 > 1), v16 + 1, 1);
        v14 = v35;
      }

      *(v14 + 16) = v16 + 1;
      *(v14 + 8 * v16 + 32) = v13;
      v9 = 1 << *(a1 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v17 = *(v33 + 8 * v10);
      if ((v17 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v34 = v14;
      if (v32 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v18 = v17 & (-2 << (v7 & 0x3F));
      if (v18)
      {
        v9 = __clz(__rbit64(v18)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v3 = v27;
      }

      else
      {
        v19 = v10 << 6;
        v20 = v10 + 1;
        v21 = (v25 + 8 * v10);
        v3 = v27;
        while (v20 < (v9 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_226EB526C(v7, v32, 0);
            v9 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v7, v32, 0);
      }

LABEL_4:
      ++v8;
      v7 = v9;
      if (v8 == v26)
      {
        return v34;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}