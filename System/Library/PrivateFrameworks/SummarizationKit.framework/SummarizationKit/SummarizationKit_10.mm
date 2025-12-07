uint64_t sub_2280C1424(uint64_t a1, uint64_t a2)
{
  v3[38] = a2;
  v3[39] = v2;
  v3[37] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF68, &unk_22813FC78);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280C14D0, 0, 0);
}

uint64_t sub_2280C14D0()
{
  v1 = *(v0 + 312);
  v2 = *v1;
  *(v0 + 336) = *v1;
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = *(v0 + 296);
    v3 = *(v0 + 304);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_22813A4B0;
    *(v5 + 32) = v4;
    *(v5 + 40) = v3;

    v6 = *(v0 + 8);

    return v6(v5);
  }

  else
  {
    sub_2280C22A8((v1 + 6), v0 + 120);
    if (*(v0 + 168))
    {
      if (*(v0 + 168) == 1)
      {
        v8 = *(v0 + 160);
        sub_227FFA05C((v0 + 120), v0 + 176);
      }

      else
      {
        v8 = 0;
        *(v0 + 208) = 0;
        *(v0 + 176) = 0u;
        *(v0 + 192) = 0u;
      }
    }

    else
    {
      sub_227FFA05C((v0 + 120), v0 + 176);
      v8 = 0;
    }

    *(v0 + 344) = v8;
    sub_2280C52C8(v0 + 176, v0 + 216, &qword_27D81EF70, &qword_22813FC88);
    v9 = *(v0 + 240);
    sub_2280C340C(v0 + 216, &qword_27D81EF70, &qword_22813FC88);
    if (v9)
    {
      if (qword_2813C48C8 != -1)
      {
        swift_once();
      }

      v11 = *(v0 + 312);
      v10 = *(v0 + 320);
      v12 = type metadata accessor for Signpost(0);
      __swift_project_value_buffer(v12, qword_2813C87B0);
      sub_2280C52C8(v0 + 176, v0 + 256, &qword_27D81EF70, &qword_22813FC88);
      sub_2280C5260(v11, v0 + 16);
      v13 = swift_allocObject();
      v14 = *(v0 + 272);
      *(v13 + 16) = *(v0 + 256);
      *(v13 + 32) = v14;
      v15 = *(v0 + 48);
      *(v13 + 104) = *(v0 + 64);
      v16 = *(v0 + 96);
      *(v13 + 120) = *(v0 + 80);
      *(v13 + 136) = v16;
      v17 = *(v0 + 32);
      *(v13 + 56) = *(v0 + 16);
      *(v13 + 72) = v17;
      *(v13 + 48) = *(v0 + 288);
      *(v13 + 152) = *(v0 + 112);
      *(v13 + 88) = v15;
      sub_22812F68C(sub_2280C597C, v10);

      v18 = 0;
    }

    else
    {
      v18 = 1;
    }

    v20 = *(v0 + 320);
    v19 = *(v0 + 328);
    v21 = *(v0 + 312);
    v22 = type metadata accessor for SignpostToken(0);
    (*(*(v22 - 8) + 56))(v20, v18, 1, v22);
    sub_2280C22E0(v20, v19);
    v23 = v21[4];
    v24 = v21[5];
    __swift_project_boxed_opaque_existential_1(v21 + 1, v23);
    if ((*(v24 + 8))(v23, v24))
    {
      v25 = v21[4];
      v26 = v21[5];
      __swift_project_boxed_opaque_existential_1(v21 + 1, v25);
      v36 = (*(v26 + 16) + **(v26 + 16));
      v27 = swift_task_alloc();
      *(v0 + 352) = v27;
      *v27 = v0;
      v27[1] = sub_2280C1990;
      v29 = *(v0 + 296);
      v28 = *(v0 + 304);

      return v36(v29, v28, v25, v26);
    }

    else
    {
      v30 = *(v0 + 312);
      v31 = swift_task_alloc();
      *(v0 + 376) = v31;
      *(v31 + 16) = v30;
      v32 = swift_task_alloc();
      *(v0 + 384) = v32;
      *v32 = v0;
      v32[1] = sub_2280C1CF0;
      v33 = *(v0 + 296);
      v34 = *(v0 + 304);
      v35 = MEMORY[0x277D84F90];

      return sub_2280C0DA8(v35, &unk_22813FC98, v31, v33, v34, 2, 1);
    }
  }
}

uint64_t sub_2280C1990(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 360) = a1;
  *(v3 + 368) = v1;

  if (v1)
  {
    v4 = sub_2280C21E4;
  }

  else
  {
    v4 = sub_2280C1AA4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2280C1AA4()
{
  v18 = v0;
  v1 = v0[45];
  if (v0[42] >= v1)
  {
    v9 = v0[43];
    if (v9)
    {
      KeyPath = swift_getKeyPath(a8);
      os_unfair_lock_lock((v9 + 16));
      v17[3] = MEMORY[0x277D84A28];
      v17[0] = v1;

      sub_2280449E4(v17, KeyPath, (v9 + 24));
      os_unfair_lock_unlock((v9 + 16));
    }

    v11 = v0[41];
    v13 = v0[38];
    v12 = v0[39];
    v14 = v0[37];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_22813A4B0;
    *(v15 + 32) = v14;
    *(v15 + 40) = v13;

    sub_2280C25EC(v11, (v0 + 22), v12);

    sub_2280C340C(v11, &qword_27D81EF68, &unk_22813FC78);
    sub_2280C340C((v0 + 22), &qword_27D81EF70, &qword_22813FC88);

    v16 = v0[1];

    return v16(v15);
  }

  else
  {
    v2 = v0[39];
    v3 = swift_task_alloc();
    v0[47] = v3;
    *(v3 + 16) = v2;
    v4 = swift_task_alloc();
    v0[48] = v4;
    *v4 = v0;
    v4[1] = sub_2280C1CF0;
    v5 = v0[37];
    v6 = v0[38];
    v7 = MEMORY[0x277D84F90];

    return sub_2280C0DA8(v7, &unk_22813FC98, v3, v5, v6, 2, 1);
  }
}

uint64_t sub_2280C1CF0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 392) = a1;
  *(v3 + 400) = v1;

  if (v1)
  {
    v4 = sub_2280C2120;
  }

  else
  {
    v4 = sub_2280C1E2C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2280C1E2C()
{
  v27 = v0;
  v1 = v0[50];
  sub_2280C2864(v0[49]);
  v3 = v2;
  v4 = v0[49];
  if (v1)
  {

    v5 = v0[41];
    sub_2280C25EC(v5, (v0 + 22), v0[39]);

    sub_2280C340C(v5, &qword_27D81EF68, &unk_22813FC78);
    sub_2280C340C((v0 + 22), &qword_27D81EF70, &qword_22813FC88);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = *(v4 + 16) + 1;
    v9 = 48;
    while (--v8)
    {
      v10 = *(v4 + v9);
      v9 += 32;
      v11 = __OFADD__(v1, v10);
      v1 += v10;
      if (v11)
      {
        __break(1u);
        break;
      }
    }

    v12 = v0[43];

    if (v12)
    {
      v13 = v0[43];
      KeyPath = swift_getKeyPath(a8);
      os_unfair_lock_lock((v13 + 16));
      v26[3] = MEMORY[0x277D84A28];
      v26[0] = v1;

      sub_2280449E4(v26, KeyPath, (v13 + 24));
      os_unfair_lock_unlock((v13 + 16));
    }

    v15 = *(v3 + 16);
    if (v15)
    {
      v26[0] = MEMORY[0x277D84F90];
      sub_228043AD4(0, v15, 0);
      v16 = 0;
      v17 = v26[0];
      v18 = *(v26[0] + 16);
      v19 = 16 * v18;
      do
      {
        v21 = *(v3 + v16 + 32);
        v20 = *(v3 + v16 + 40);
        v26[0] = v17;
        v22 = *(v17 + 24);

        if (v18 >= v22 >> 1)
        {
          sub_228043AD4((v22 > 1), v18 + 1, 1);
          v17 = v26[0];
        }

        *(v17 + 16) = v18 + 1;
        v23 = v17 + v19;
        *(v23 + 32) = v21;
        *(v23 + 40) = v20;
        v19 += 16;
        v16 += 32;
        ++v18;
        --v15;
      }

      while (v15);
    }

    else
    {

      v17 = MEMORY[0x277D84F90];
    }

    v24 = v0[41];
    sub_2280C25EC(v24, (v0 + 22), v0[39]);

    sub_2280C340C(v24, &qword_27D81EF68, &unk_22813FC78);
    sub_2280C340C((v0 + 22), &qword_27D81EF70, &qword_22813FC88);

    v25 = v0[1];

    return v25(v17);
  }
}

uint64_t sub_2280C2120(__n128 a1)
{
  v2 = v1[41];
  sub_2280C25EC(v2, (v1 + 22), v1[39]);

  sub_2280C340C(v2, &qword_27D81EF68, &unk_22813FC78);
  sub_2280C340C((v1 + 22), &qword_27D81EF70, &qword_22813FC88);

  v3 = v1[1];

  return v3();
}

uint64_t sub_2280C21E4(__n128 a1)
{
  v2 = v1[41];
  sub_2280C25EC(v2, (v1 + 22), v1[39]);

  sub_2280C340C(v2, &qword_27D81EF68, &unk_22813FC78);
  sub_2280C340C((v1 + 22), &qword_27D81EF70, &qword_22813FC88);

  v3 = v1[1];

  return v3();
}

uint64_t sub_2280C22E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF68, &unk_22813FC78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2280C2350()
{
  sub_2280C22A8(v0, v2);
  if (v3)
  {
    if (v3 == 1)
    {

      __swift_destroy_boxed_opaque_existential_1(v2);
      return 0x636E657265666E69;
    }

    else
    {
      return 0x6574616D6F747561;
    }
  }

  else
  {
    sub_2280C5298(v2);
    return 0xD000000000000012;
  }
}

unint64_t sub_2280C2404(uint64_t a1, uint64_t a2)
{
  sub_2280C52C8(a1, &v10, &qword_27D81EF70, &qword_22813FC88);
  if (v11)
  {
    v3 = 0xD000000000000012;
    sub_227FFA05C(&v10, v15);
    *&v10 = 0;
    *(&v10 + 1) = 0xE000000000000000;
    sub_22813988C();

    v13 = 0xD000000000000014;
    v14 = 0x80000002281441C0;
    v4 = v16;
    v5 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v6 = (*(v5 + 16))(v4, v5);
    MEMORY[0x22AAB1970](v6);

    MEMORY[0x22AAB1970](0x746E65746E69202CLL, 0xEA0000000000203ALL);
    sub_2280C22A8(a2 + 48, &v10);
    if (v12)
    {
      if (v12 == 1)
      {

        __swift_destroy_boxed_opaque_existential_1(&v10);
        v7 = 0xE900000000000065;
        v3 = 0x636E657265666E69;
      }

      else
      {
        v7 = 0xEE00747365742064;
        v3 = 0x6574616D6F747561;
      }
    }

    else
    {
      v7 = 0x8000000228147E40;
      sub_2280C5298(&v10);
    }

    MEMORY[0x22AAB1970](v3, v7);

    MEMORY[0x22AAB1970](93, 0xE100000000000000);
    v8 = v13;
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    sub_2280C340C(&v10, &qword_27D81EF70, &qword_22813FC88);
    return 0;
  }

  return v8;
}

uint64_t sub_2280C25EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF68, &unk_22813FC78);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v20 - v7;
  v9 = type metadata accessor for SignpostToken(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2280C52C8(a1, v8, &qword_27D81EF68, &unk_22813FC78);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_2280C340C(v8, &qword_27D81EF68, &unk_22813FC78);
  }

  sub_2280C5330(v8, v12);
  if (qword_2813C48C8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Signpost(0);
  __swift_project_value_buffer(v14, qword_2813C87B0);
  sub_2280C52C8(a2, v22, &qword_27D81EF70, &qword_22813FC88);
  sub_2280C5260(a3, v20);
  v15 = swift_allocObject();
  v16 = v22[1];
  *(v15 + 16) = v22[0];
  *(v15 + 32) = v16;
  v17 = v20[2];
  *(v15 + 104) = v20[3];
  v18 = v20[5];
  *(v15 + 120) = v20[4];
  *(v15 + 136) = v18;
  v19 = v20[1];
  *(v15 + 56) = v20[0];
  *(v15 + 72) = v19;
  *(v15 + 48) = v23;
  *(v15 + 152) = v21;
  *(v15 + 88) = v17;
  sub_2281317B8(v12, sub_2280C5408, v15);

  return sub_227FEA5B8(v12);
}

void sub_2280C2864(uint64_t a1)
{
  v4 = v2;
  v5 = *(a1 + 16);
  if (!v5)
  {

    return;
  }

  v7 = sub_2280C4FD4(a1);
  v9 = 0;
  v10 = (a1 + 48);
  v11 = v5 + 1;
  while (--v11)
  {
    v12 = *v10;
    v10 += 4;
    v13 = __OFADD__(v9, v12);
    v9 += v12;
    if (v13)
    {
      __break(1u);
      break;
    }
  }

  v13 = __OFADD__(v9, v5 - 1);
  v14 = v9 + v5 - 1;
  if (v13)
  {
    goto LABEL_51;
  }

  v15 = ceil(v14 / *v1);
  if (v15 <= -9.22337204e18)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v16 = v14 / v15;
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || COERCE_UNSIGNED_INT64(fabs(v14 / v15)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_54;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v17 = v16;
  v18 = v7 / 2 + v8 / 2;
  v38 = v16 - v18;
  if (__OFSUB__(v16, v18))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v37 = v17 + v18;
  if (!__OFADD__(v17, v18))
  {
    v3 = 0;
    v42 = v15;
    v40 = 0;
    v41 = 0xE000000000000000;
    v19 = (a1 + 48);
    v20 = v5 + 1;
    v39 = MEMORY[0x277D84F90];
    while (--v20)
    {
      v22 = *(v19 - 2);
      v21 = *(v19 - 1);
      v5 = *v19;

      v23 = v4;
      sub_2281395DC();
      if (v4)
      {

LABEL_43:

        return;
      }

      v24 = v40;
      v1 = v41;
      if (v42 >= 2)
      {
        v25 = HIBYTE(v41) & 0xF;
        if ((v41 & 0x2000000000000000) == 0)
        {
          v25 = v40 & 0xFFFFFFFFFFFFLL;
        }

        if (v25)
        {
          if (v38 < v5)
          {
            goto LABEL_27;
          }

          if (__OFADD__(v5, v3))
          {
            goto LABEL_50;
          }

          if (v37 < v5 + v3)
          {
LABEL_27:

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v26 = v39;
            }

            else
            {
              v26 = sub_228133CE0(0, *(v39 + 2) + 1, 1, v39);
            }

            v28 = *(v26 + 2);
            v27 = *(v26 + 3);
            v29 = v28 + 1;
            if (v28 >= v27 >> 1)
            {
              v32 = sub_228133CE0((v27 > 1), v28 + 1, 1, v26);
              v29 = v28 + 1;
              v26 = v32;
            }

            *(v26 + 2) = v29;
            v39 = v26;
            v30 = &v26[32 * v28];
            *(v30 + 4) = v24;
            *(v30 + 5) = v1;
            *(v30 + 6) = v3;
            v30[56] = 0;

            v24 = 0;
            v3 = 0;
            v1 = 0xE000000000000000;
            v40 = 0;
            v41 = 0xE000000000000000;
            v4 = v23;
          }
        }
      }

      v31 = HIBYTE(v1) & 0xF;
      if ((v1 & 0x2000000000000000) == 0)
      {
        v31 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (v31)
      {
        v1 = &v40;
        MEMORY[0x22AAB1970](10, 0xE100000000000000);
        v13 = __OFADD__(v3++, 1);
        if (v13)
        {
          goto LABEL_49;
        }
      }

      v19 += 4;
      v1 = &v40;
      MEMORY[0x22AAB1970](v22, v21);

      v13 = __OFADD__(v3, v5);
      v3 += v5;
      if (v13)
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }
    }

    sub_2281395DC();
    if (v4)
    {
      goto LABEL_43;
    }

    v5 = v40;
    v1 = v41;

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_45;
    }

    goto LABEL_59;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  v39 = sub_228133CE0(0, *(v39 + 2) + 1, 1, v39);
LABEL_45:
  v33 = v39;
  v35 = *(v39 + 2);
  v34 = *(v39 + 3);
  if (v35 >= v34 >> 1)
  {
    v33 = sub_228133CE0((v34 > 1), v35 + 1, 1, v39);
  }

  *(v33 + 2) = v35 + 1;
  v36 = &v33[32 * v35];
  *(v36 + 4) = v5;
  *(v36 + 5) = v1;
  *(v36 + 6) = v3;
  v36[56] = 0;
}

uint64_t sub_2280C2C3C(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = a2[1];
  v3[4] = *a2;
  v3[5] = v4;
  return MEMORY[0x2822009F8](sub_2280C2C64, 0, 0);
}

uint64_t sub_2280C2C64()
{
  v1 = v0[3];
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  v8 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_2280C2D94;
  v6 = v0[4];
  v5 = v0[5];

  return v8(v6, v5, v2, v3);
}

uint64_t sub_2280C2D94(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2280C2EC8, 0, 0);
  }
}

uint64_t sub_2280C2EC8()
{
  v1 = *(v0 + 24);
  if (*v1 >= *(v0 + 56))
  {
    v8 = **(v0 + 16);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_228133CE0(0, *(v8 + 2) + 1, 1, v8);
    }

    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    if (v10 >= v9 >> 1)
    {
      v8 = sub_228133CE0((v9 > 1), v10 + 1, 1, v8);
    }

    v11 = *(v0 + 56);
    v12 = *(v0 + 32);
    v13 = *(v0 + 16);
    *(v8 + 2) = v10 + 1;
    v14 = &v8[32 * v10];
    *(v14 + 2) = v12;
    *(v14 + 6) = v11;
    v14[56] = 1;
    *v13 = v8;
    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *(v2 + 16) = v1;
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = sub_2280C3094;
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    v6 = MEMORY[0x277D84F90];

    return sub_2280C0DA8(v6, &unk_22813FCD8, v2, v4, v5, 1, 1);
  }
}

uint64_t sub_2280C3094(uint64_t a1)
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
    *(v4 + 80) = a1;

    return MEMORY[0x2822009F8](sub_2280C3204, 0, 0);
  }
}

uint64_t sub_2280C3204()
{
  sub_227FED7B0(*(v0 + 80));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2280C326C(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2280C3318;

  return sub_2280C2C3C(a1, a2, v6);
}

uint64_t sub_2280C3318()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2280C340C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2280C346C(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = a2[1];
  v3[4] = *a2;
  v3[5] = v4;
  return MEMORY[0x2822009F8](sub_2280C3494, 0, 0);
}

uint64_t sub_2280C3494()
{
  v1 = v0[3];
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  v8 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_2280C35C4;
  v6 = v0[4];
  v5 = v0[5];

  return v8(v6, v5, v2, v3);
}

uint64_t sub_2280C35C4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2280C36F8, 0, 0);
  }
}

uint64_t sub_2280C36F8()
{
  if (**(v0 + 24) >= *(v0 + 56))
  {
    v6 = **(v0 + 16);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_228133CE0(0, *(v6 + 2) + 1, 1, v6);
    }

    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_228133CE0((v7 > 1), v8 + 1, 1, v6);
    }

    v9 = *(v0 + 56);
    v10 = *(v0 + 32);
    v11 = *(v0 + 16);
    *(v6 + 2) = v8 + 1;
    v12 = &v6[32 * v8];
    *(v12 + 2) = v10;
    *(v12 + 6) = v9;
    v12[56] = 2;
    *v11 = v6;
    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v1 = swift_task_alloc();
    *(v0 + 64) = v1;
    *v1 = v0;
    v1[1] = sub_2280C387C;
    v2 = *(v0 + 56);
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);

    return sub_2280C3A30(v4, v3, v2);
  }
}

uint64_t sub_2280C387C(uint64_t a1)
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
    *(v4 + 72) = a1;

    return MEMORY[0x2822009F8](sub_2280C39C8, 0, 0);
  }
}

uint64_t sub_2280C39C8()
{
  sub_227FED7B0(*(v0 + 72));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2280C3A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[30] = a3;
  v4[31] = v3;
  v4[28] = a1;
  v4[29] = a2;
  v5 = sub_228136CDC();
  v4[32] = v5;
  v4[33] = *(v5 - 8);
  v4[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280C3AF4, 0, 0);
}

uint64_t sub_2280C3AF4()
{
  v1 = **(v0 + 248);
  if (v1 >= *(v0 + 240))
  {
    if (qword_2813C49E0[0] != -1)
    {
      swift_once();
    }

    v4 = sub_22813882C();
    __swift_project_value_buffer(v4, qword_2813C8A20);
    v5 = sub_22813880C();
    v6 = sub_2281396EC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_227FC3000, v5, v6, "splitSentence called with input tokens < maximumTokenCountPerChunk", v7, 2u);
      MEMORY[0x22AAB28A0](v7, -1, -1);
    }

    v8 = *(v0 + 232);
    v9 = *(v0 + 240);
    v10 = *(v0 + 224);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF78, &unk_22813FCE8);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_22813A4B0;
    *(v11 + 32) = v10;
    *(v11 + 40) = v8;
    *(v11 + 48) = v9;
    *(v11 + 56) = 2;

    goto LABEL_8;
  }

  v2 = sub_2280DB150(*(v0 + 224), *(v0 + 232));
  v3 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v14 = sub_2280E9BE4(0xD000000000000011, 0x8000000228144170, 0);
  v16 = *(v0 + 224);
  v15 = *(v0 + 232);
  v17 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v17 = *(v0 + 224);
  }

  v18 = 7;
  if (((v15 >> 60) & ((v16 & 0x800000000000000) == 0)) != 0)
  {
    v18 = 11;
  }

  *(v0 + 160) = 15;
  *(v0 + 168) = v18 | (v17 << 16);
  *(v0 + 176) = v16;
  *(v0 + 184) = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E550, &qword_22813B0F0);
  sub_227FEB294();
  *(v0 + 280) = sub_227FDB420();
  v19 = sub_22813973C();
  v63 = v20;
  v64 = v19;
  *(v0 + 208) = MEMORY[0x277D84F90];
  v21 = sub_22813927C();
  v22 = swift_allocObject();
  v22[2] = v16;
  v22[3] = v15;
  v22[4] = v0 + 208;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_2280C5504;
  *(v23 + 24) = v22;
  *(v0 + 48) = sub_2280C5510;
  *(v0 + 56) = v23;
  *(v0 + 16) = MEMORY[0x277D85DD0];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_2280E6468;
  *(v0 + 40) = &block_descriptor_0;
  v24 = _Block_copy((v0 + 16));

  [v14 enumerateMatchesInString:v21 options:0 range:v64 usingBlock:{v63, v24}];

  _Block_release(v24);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_37;
  }

  v26 = *(v0 + 208);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E558, &qword_22813B0F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813B030;
  *(inited + 32) = v2;
  *(inited + 40) = v26;
  v28 = sub_227FEA1DC(inited);
  *(v0 + 288) = v28;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E560, &qword_22813B100);
  result = swift_arrayDestroy();
  if (!v1)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v29 = *(v0 + 240) / v1;
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v32 = *(v28 + 2);
  *(v0 + 296) = v32;
  if (!v31)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v33 = v32 / v31;
  if (v33 <= 1)
  {
    v33 = 1;
  }

  *(v0 + 304) = v33;
  v34 = MEMORY[0x277D84F90];
  *(v0 + 216) = MEMORY[0x277D84F90];
  if (v33 < v32)
  {
    v35 = *(v0 + 264);
    v36 = *(v0 + 248);
    v37 = __OFADD__(v33, v33);
    *(v0 + 312) = v34;
    *(v0 + 320) = 2 * v33;
    *(v0 + 400) = v37;
    v38 = *(v0 + 288);
    if (v33 < *(v38 + 16))
    {
      *(v0 + 328) = *(v38 + 8 * v33 + 32);
      v39 = *(v0 + 272);
      v40 = *(v0 + 256);
      v41 = sub_22813948C();
      v42 = MEMORY[0x22AAB18D0](v41);
      v44 = v43;

      *(v0 + 192) = v42;
      *(v0 + 200) = v44;
      sub_228136C5C();
      v45 = sub_2281397AC();
      v47 = v46;
      *(v0 + 336) = v45;
      *(v0 + 344) = v46;
      (*(v35 + 8))(v39, v40);

      v48 = v36[4];
      v49 = v36[5];
      __swift_project_boxed_opaque_existential_1(v36 + 1, v48);
      v65 = (*(v49 + 16) + **(v49 + 16));
      v50 = swift_task_alloc();
      *(v0 + 352) = v50;
      *v50 = v0;
      v50[1] = sub_2280C42BC;

      return v65(v45, v47, v48, v49);
    }

LABEL_40:
    __break(1u);
    return result;
  }

  v51 = *(v0 + 224);
  v52 = *(v0 + 232);

  v53 = v51 & 0xFFFFFFFFFFFFLL;
  if ((v52 & 0x2000000000000000) != 0)
  {
    v53 = HIBYTE(v52) & 0xF;
  }

  if (v53)
  {
    v54 = sub_22813948C();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    *(v0 + 376) = v59;
    v61 = swift_task_alloc();
    *(v0 + 384) = v61;
    *v61 = v0;
    v61[1] = sub_2280C4898;
    v62 = *(v0 + 248);

    return sub_2280C4AA8(v54, v56, v58, v60, v62, v0 + 216);
  }

  swift_beginAccess();
  v11 = *(v0 + 216);
LABEL_8:

  v12 = *(v0 + 8);

  return v12(v11);
}

uint64_t sub_2280C42BC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 360) = a1;
  *(v3 + 368) = v1;

  if (v1)
  {
    v4 = sub_2280C4814;
  }

  else
  {
    v4 = sub_2280C43D0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2280C43D0()
{
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 312);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_228133CE0(0, *(v2 + 2) + 1, 1, *(v0 + 312));
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_228133CE0((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = *(v0 + 360);
  v6 = *(v0 + 336);
  v7 = *(v0 + 400);
  v8 = *(v0 + 320);
  v9 = *(v0 + 296);
  *(v2 + 2) = v4 + 1;
  v10 = &v2[32 * v4];
  *(v10 + 2) = v6;
  *(v10 + 6) = v5;
  v10[56] = 3;
  *(v0 + 216) = v2;
  result = swift_endAccess();
  v12 = *(v0 + 328);
  if ((v7 & 1) == 0 && v8 < v9)
  {
    v13 = *(v0 + 320);
    v14 = *(v0 + 304);
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    v17 = v15;
    *(v0 + 312) = v2;
    *(v0 + 320) = v16;
    *(v0 + 400) = v17;
    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v18 = *(v0 + 288);
      if (v13 < *(v18 + 16))
      {
        v19 = *(v18 + 8 * v13 + 32);
        *(v0 + 328) = v19;
        if (v19 >> 14 >= v12 >> 14)
        {
          v20 = *(v0 + 272);
          v21 = *(v0 + 256);
          v22 = *(v0 + 264);
          v23 = *(v0 + 248);
          v24 = sub_22813948C();
          v25 = MEMORY[0x22AAB18D0](v24);
          v27 = v26;

          *(v0 + 192) = v25;
          *(v0 + 200) = v27;
          sub_228136C5C();
          v28 = sub_2281397AC();
          v30 = v29;
          *(v0 + 336) = v28;
          *(v0 + 344) = v29;
          (*(v22 + 8))(v20, v21);

          v31 = v23[4];
          v32 = v23[5];
          __swift_project_boxed_opaque_existential_1(v23 + 1, v31);
          v48 = (*(v32 + 16) + **(v32 + 16));
          v33 = swift_task_alloc();
          *(v0 + 352) = v33;
          *v33 = v0;
          v33[1] = sub_2280C42BC;

          return v48(v28, v30, v31, v32);
        }

LABEL_27:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  v35 = *(v0 + 224);
  v34 = *(v0 + 232);

  v36 = v35 & 0xFFFFFFFFFFFFLL;
  if ((v34 & 0x2000000000000000) != 0)
  {
    v36 = HIBYTE(v34) & 0xF;
  }

  if (v12 >> 14 >= 4 * v36)
  {
    swift_beginAccess();
    v46 = *(v0 + 216);

    v47 = *(v0 + 8);

    return v47(v46);
  }

  else
  {
    v37 = sub_22813948C();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    *(v0 + 376) = v42;
    v44 = swift_task_alloc();
    *(v0 + 384) = v44;
    *v44 = v0;
    v44[1] = sub_2280C4898;
    v45 = *(v0 + 248);

    return sub_2280C4AA8(v37, v39, v41, v43, v45, v0 + 216);
  }
}

uint64_t sub_2280C4814()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2280C4898()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_2280C4A34;
  }

  else
  {

    v2 = sub_2280C49B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2280C49B4()
{
  swift_beginAccess();
  v1 = *(v0 + 216);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2280C4A34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2280C4AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  v7 = sub_228136CDC();
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280C4B70, 0, 0);
}

uint64_t sub_2280C4B70()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[14];
  v0[8] = MEMORY[0x22AAB18D0](v0[10], v0[11], v0[12], v0[13]);
  v0[9] = v5;
  sub_228136C5C();
  sub_227FDB420();
  v6 = sub_2281397AC();
  v8 = v7;
  v0[19] = v6;
  v0[20] = v7;
  (*(v2 + 8))(v1, v3);

  v9 = v4[4];
  v10 = v4[5];
  __swift_project_boxed_opaque_existential_1(v4 + 1, v9);
  v13 = (*(v10 + 16) + **(v10 + 16));
  v11 = swift_task_alloc();
  v0[21] = v11;
  *v11 = v0;
  v11[1] = sub_2280C4D24;

  return v13(v6, v8, v9, v10);
}

uint64_t sub_2280C4D24(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[22] = v1;

  if (v1)
  {
    v4 = sub_2280C4F64;
  }

  else
  {
    v4 = sub_2280C4E40;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2280C4E40()
{
  v1 = *(v0 + 120);
  swift_beginAccess();
  v2 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v0 + 120);
    v2 = sub_228133CE0(0, *(v2 + 2) + 1, 1, v2);
    *v11 = v2;
  }

  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  if (v5 >= v4 >> 1)
  {
    v12 = *(v0 + 120);
    v2 = sub_228133CE0((v4 > 1), v5 + 1, 1, v2);
    *v12 = v2;
  }

  v6 = *(v0 + 48);
  v7 = *(v0 + 152);
  *(v2 + 2) = v5 + 1;
  v8 = &v2[32 * v5];
  *(v8 + 2) = v7;
  *(v8 + 6) = v6;
  v8[56] = 3;
  swift_endAccess();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2280C4F64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2280C4FD4(uint64_t a1)
{
  __Mean[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  if (v1)
  {
    *&__Mean[0] = MEMORY[0x277D84F90];
    sub_228043BFC(0, v1, 0);
    v3 = __Mean[0];
    v4 = (a1 + 48);
    v5 = *(*&__Mean[0] + 16);
    do
    {
      v7 = *v4;
      v4 += 4;
      v6 = v7;
      __Mean[0] = v3;
      v8 = *(*&v3 + 24);
      v9 = v5 + 1;
      if (v5 >= v8 >> 1)
      {
        sub_228043BFC((v8 > 1), v5 + 1, 1);
        v9 = v5 + 1;
        v3 = __Mean[0];
      }

      *(*&v3 + 16) = v9;
      *(*&v3 + 8 * v5 + 32) = v6;
      v5 = v9;
      --v1;
    }

    while (v1);
    __StandardDeviation = 0.0;
    __Mean[0] = 0.0;
    vDSP_normalizeD((*&v3 + 32), 1, 0, 1, __Mean, &__StandardDeviation, v9);

    if ((*&__Mean[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (__Mean[0] > -9.22337204e18)
    {
      if (__Mean[0] < 9.22337204e18)
      {
        if ((*&__StandardDeviation & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (__StandardDeviation > -9.22337204e18)
          {
            if (__StandardDeviation < 9.22337204e18)
            {
              return __Mean[0];
            }

LABEL_19:
            __break(1u);
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_16;
  }

  return 0;
}

uint64_t sub_2280C51A8()
{
  v1 = *v0;
  sub_228139AAC();
  MEMORY[0x22AAB2060](v1);
  return sub_228139AEC();
}

uint64_t sub_2280C521C(uint64_t a1)
{
  v2 = *v1;
  sub_228139AAC();
  MEMORY[0x22AAB2060](v2);
  return sub_228139AEC();
}

uint64_t sub_2280C52C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2280C5330(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignpostToken(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_12()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  if (*(v0 + 152) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  }

  else if (!*(v0 + 152))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  }

  return MEMORY[0x2821FE8E8](v0, 153, 7);
}

void sub_2280C5414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
  }
}

uint64_t sub_2280C5458(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2280C5980;

  return sub_2280C346C(a1, a2, v6);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2280C5544(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_2280C558C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16SummarizationKit11TextChunkerV6IntentO(uint64_t a1)
{
  if ((*(a1 + 48) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2280C5618(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2280C5654(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_2280C56A8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_2280C570C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2280C5754(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextChunker.Chunk.ChunkType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TextChunker.Chunk.ChunkType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2280C5928()
{
  result = qword_27D81EF80;
  if (!qword_27D81EF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81EF80);
  }

  return result;
}

uint64_t sub_2280C5984(unsigned __int8 a1)
{
  sub_228139AAC();
  sub_22813923C();

  return sub_228139AEC();
}

uint64_t sub_2280C5A9C(uint64_t a1, unsigned __int8 a2)
{
  sub_228139AAC();
  sub_22813923C();

  return sub_228139AEC();
}

uint64_t sub_2280C5BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a3;
  v7[20] = a4;
  v7[17] = a1;
  v7[18] = a2;
  v8 = sub_2281386AC();
  v7[23] = v8;
  v7[24] = *(v8 - 8);
  v7[25] = swift_task_alloc();
  v9 = sub_2281386DC();
  v7[26] = v9;
  v7[27] = *(v9 - 8);
  v7[28] = swift_task_alloc();
  v10 = sub_2281386CC();
  v7[29] = v10;
  v7[30] = *(v10 - 8);
  v7[31] = swift_task_alloc();
  v11 = sub_2281386FC();
  v7[32] = v11;
  v7[33] = *(v11 - 8);
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  v12 = sub_22813713C();
  v7[38] = v12;
  v7[39] = *(v12 - 8);
  v7[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80);
  v7[41] = swift_task_alloc();
  v7[42] = swift_task_alloc();
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v13 = sub_2281379AC();
  v7[45] = v13;
  v7[46] = *(v13 - 8);
  v7[47] = swift_task_alloc();
  v14 = sub_22813797C();
  v7[48] = v14;
  v7[49] = *(v14 - 8);
  v7[50] = swift_task_alloc();
  v15 = sub_22813795C();
  v7[51] = v15;
  v7[52] = *(v15 - 8);
  v7[53] = swift_task_alloc();
  v16 = sub_22813794C();
  v7[54] = v16;
  v7[55] = *(v16 - 8);
  v7[56] = swift_task_alloc();
  v17 = sub_22813882C();
  v7[57] = v17;
  v7[58] = *(v17 - 8);
  v7[59] = swift_task_alloc();
  v7[60] = swift_task_alloc();
  v18 = sub_228136CDC();
  v7[61] = v18;
  v7[62] = *(v18 - 8);
  v7[63] = swift_task_alloc();
  v7[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280C60A8, 0, 0);
}

uint64_t sub_2280C60A8()
{
  v189 = v0;
  v1 = sub_2280A9734(0, *(v0 + 144), *(v0 + 152));
  v3 = *(v0 + 504);
  v2 = *(v0 + 512);
  v5 = *(v0 + 488);
  v4 = *(v0 + 496);
  v181 = v1;
  v184 = v0;
  v176 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EFB0, &unk_2281402A0);
  v7 = *(v4 + 72);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject() + v8;
  sub_228136C6C();
  sub_228136C7C();
  sub_228136C9C();
  sub_228136CCC();
  v10 = *(v4 + 16);
  v10(v3, v9, v5);
  sub_228136CBC();
  v11 = *(v4 + 8);
  v11(v3, v5);
  v10(v3, v9 + v7, v5);
  sub_228136CBC();
  v11(v3, v5);
  v10(v3, v9 + 2 * v7, v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_228136CBC();
  v11(v3, v5);
  v12 = swift_task_alloc();
  *(v12 + 16) = v2;
  v168 = sub_2280D34CC(sub_2280D43A4, v12, v181, v176);
  v186 = v13;

  v11(v2, v5);
  v14 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v15 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v15 = &qword_2813C76F8;
  }

  v16 = *v15;
  v17 = *(*v15 + 32);
  v18 = *(*v15 + 40);
  v19 = *(*v15 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  v20 = byte_2813C4638;
  if (byte_2813C4638 == 1)
  {
    v18(v188, v19);

    if ((v188[0] & 1) == 0)
    {
LABEL_14:

      v21 = v0;
      goto LABEL_37;
    }
  }

  else
  {

    if (!v17)
    {
      goto LABEL_14;
    }
  }

  v22 = *(v16 + 72);
  v23 = *(v16 + 80);
  v24 = *(v16 + 2208);

  if (v20)
  {
    v23(v188, v24);

    v21 = v0;
    if ((v188[0] & 1) == 0)
    {
LABEL_18:

      goto LABEL_37;
    }
  }

  else
  {

    v21 = v0;
    if ((v22 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if (qword_2813C49B8 != -1)
  {
    swift_once();
  }

  if (byte_2813C49C1 == 1)
  {
    v25 = v21[22];
  }

  else
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v21[57], qword_2813C4990);
  }

  v26 = *(v21[58] + 16);
  v26(v21[60], v25, v21[57]);
  if (qword_2813C49B0 != -1)
  {
    swift_once();
  }

  if (byte_27D81EEF2 == 1)
  {
    (*(v21[58] + 32))(v21[59], v21[60], v21[57]);
  }

  else
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v28 = v21[59];
    v27 = v21[60];
    v30 = v21[57];
    v29 = v21[58];
    v31 = __swift_project_value_buffer(v30, qword_2813C4990);
    v26(v28, v31, v30);
    (*(v29 + 8))(v27, v30);
  }

  v32 = v21[21];
  sub_2280D399C(v32, (v21 + 2));
  sub_2280D399C(v32, (v21 + 7));

  v33 = sub_22813880C();
  v34 = sub_2281396CC();

  v35 = os_log_type_enabled(v33, v34);
  v37 = v21[58];
  v36 = v21[59];
  v38 = v21[57];
  if (v35)
  {
    v169 = v21[18];
    v171 = v21[19];
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v188[0] = v40;
    *v39 = 136446979;
    v177 = v38;
    v41 = v21[5];
    v42 = v184[6];
    __swift_project_boxed_opaque_existential_1(v184 + 2, v41);
    v173 = v36;
    v43 = (*(v42 + 16))(v41, v42);
    v45 = v44;
    __swift_destroy_boxed_opaque_existential_1Tm_11(v184 + 2);
    v46 = sub_227FCC340(v43, v45, v188);

    *(v39 + 4) = v46;
    *(v39 + 12) = 2081;
    *(v39 + 14) = sub_227FCC340(v169, v171, v188);
    *(v39 + 22) = 2082;
    v47 = v184[10];
    v48 = v184[11];
    __swift_project_boxed_opaque_existential_1(v184 + 7, v47);
    v49 = *(v48 + 16);
    v50 = v48;
    v21 = v184;
    v51 = v49(v47, v50);
    v53 = v52;
    __swift_destroy_boxed_opaque_existential_1Tm_11(v184 + 7);
    v54 = sub_227FCC340(v51, v53, v188);

    *(v39 + 24) = v54;
    *(v39 + 32) = 2081;
    *(v39 + 34) = sub_227FCC340(v168, v186, v188);
    _os_log_impl(&dword_227FC3000, v33, v34, "\n--------------------------------------------------------------------------------\n# Language Gating Raw Input for request %{public}s\n--------------------------------------------------------------------------------\n%{private}s\n--------------------------------------------------------------------------------\n# Language Gating Processed Input for request %{public}s\n--------------------------------------------------------------------------------\n%{private}s\n--------------------------------------------------------------------------------", v39, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v40, -1, -1);
    MEMORY[0x22AAB28A0](v39, -1, -1);

    (*(v37 + 8))(v173, v177);
  }

  else
  {

    (*(v37 + 8))(v36, v38);
    __swift_destroy_boxed_opaque_existential_1Tm_11(v21 + 2);
    __swift_destroy_boxed_opaque_existential_1Tm_11(v21 + 7);
  }

LABEL_37:
  v55 = v21[52];
  v56 = v21[53];
  v57 = v21[51];
  v58 = v21[43];
  v170 = v21[39];
  v172 = v21[47];
  v178 = v21[38];
  v59 = v21[21];
  v174 = v21[20];
  v61 = v59[3];
  v60 = v59[4];
  __swift_project_boxed_opaque_existential_1(v59, v61);
  (*(*(v60 + 8) + 8))(v61);
  (*(v55 + 104))(v56, *MEMORY[0x277D0E2D8], v57);
  sub_22813792C();
  sub_22813796C();
  v62 = v59[3];
  v63 = v59[4];
  __swift_project_boxed_opaque_existential_1(v59, v62);
  v64 = (*(*(v63 + 8) + 8))(v62);
  sub_227FEC314(v64, v65, v172);

  sub_2280D43C4(v174, v58, &qword_27D81E778, &qword_22813BC80);
  v66 = *(v170 + 48);
  if (v66(v58, 1, v178) == 1)
  {
    sub_2280D44A8(v21[43], &qword_27D81E778, &qword_22813BC80);
    sub_22813798C();
    v71 = v21[44];
    v72 = v21[42];

    sub_2280D4438(v72, v71);
  }

  else
  {
    v67 = v21[43];
    v68 = v21[44];
    v69 = v21[38];
    v70 = v21[39];

    (*(v70 + 32))(v68, v67, v69);
    (*(v70 + 56))(v68, 0, 1, v69);
  }

  v73 = v21[41];
  v74 = v21[38];
  sub_2280D43C4(v21[44], v73, &qword_27D81E778, &qword_22813BC80);
  if (v66(v73, 1, v74) != 1)
  {
    v79 = v21[50];
    v80 = v21[40];
    v81 = v21[21];
    v82 = v21[17];
    (*(v21[39] + 32))(v80, v21[41], v21[38]);
    sub_2280C9240(v80, v79, v81, &unk_283B5F380, 17, sub_2280D4810, sub_227FF96D4, v82, sub_227FDB3CC, &type metadata for SummarizationError, sub_2280D4508);
    v116 = v21[55];
    v115 = v21[56];
    v167 = v21[54];
    v118 = v21[49];
    v117 = v21[50];
    v120 = v21[47];
    v119 = v21[48];
    v121 = v21;
    v122 = v21[46];
    v124 = v121[44];
    v123 = v121[45];
    (*(v121[39] + 8))();
    sub_2280D44A8(v124, &qword_27D81E778, &qword_22813BC80);
    (*(v122 + 8))(v120, v123);
    (*(v118 + 8))(v117, v119);
    (*(v116 + 8))(v115, v167);

    v125 = v121[1];
    goto LABEL_62;
  }

  sub_2280D44A8(v21[41], &qword_27D81E778, &qword_22813BC80);
  v75 = swift_allocObject();
  *(v75 + 16) = 23;
  *(v75 + 24) = 0;
  *(v75 + 32) = 0;
  v76 = sub_227FF96D4(0, 0xD000000000000072, 0x8000000228147EF0, 54, sub_2280D480C, v75);
  *(v21 + 112) = 23;
  v21[15] = v76;
  sub_227FDB3CC();
  v77 = sub_22813999C();
  if (v77)
  {
    v78 = v77;
  }

  else
  {
    v78 = swift_allocError();
    *v83 = 23;
    *(v83 + 8) = v76;
  }

  v84 = v21[55];
  v187 = v21[56];
  v85 = v21[49];
  v179 = v21[50];
  v182 = v21[54];
  v87 = v21[47];
  v86 = v21[48];
  v89 = v21[45];
  v88 = v21[46];
  v90 = v21;
  v91 = v21[44];
  swift_willThrow();
  v92 = v78;
  sub_2280D44A8(v91, &qword_27D81E778, &qword_22813BC80);
  (*(v88 + 8))(v87, v89);
  (*(v85 + 8))(v179, v86);
  (*(v84 + 8))(v187, v182);
  v90[16] = v78;
  v93 = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  if (swift_dynamicCast())
  {
    v94 = v90[36];
    v95 = v90[37];
    v96 = v90[35];
    v97 = v90[32];
    v98 = v90[33];

    v99 = *(v98 + 32);
    v99(v94, v95, v97);
    v100 = *(v98 + 16);
    v100(v96, v94, v97);
    v101 = sub_22813880C();
    v102 = sub_2281396DC();
    v103 = os_log_type_enabled(v101, v102);
    v104 = v90[35];
    v183 = v100;
    if (v103)
    {
      v105 = v90[34];
      v106 = v100;
      v107 = v184[32];
      v108 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      v188[0] = v175;
      *v108 = 136446210;
      v106(v105, v104, v107);
      sub_2280D4590(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      v109 = v184;
      v110 = sub_22813999C();
      v111 = v184[34];
      if (v110)
      {
        v112 = v110;
        (*(v184[33] + 8))(v184[34], v184[32]);
      }

      else
      {
        v126 = v184[32];
        v112 = swift_allocError();
        v109 = v184;
        v99(v127, v111, v126);
      }

      v128 = v109[35];
      v130 = v109[32];
      v129 = v109[33];
      v131 = sub_228136E1C();

      v132 = NSError.loggingDescription.getter();
      v134 = v133;

      v90 = v184;
      v180 = *(v129 + 8);
      v180(v128, v130);
      v135 = sub_227FCC340(v132, v134, v188);

      *(v108 + 4) = v135;
      _os_log_impl(&dword_227FC3000, v101, v102, "GMS language sanitizer rejected the input with error message: %{public}s", v108, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_11(v175);
      MEMORY[0x22AAB28A0](v175, -1, -1);
      MEMORY[0x22AAB28A0](v108, -1, -1);

      v100 = v183;
    }

    else
    {
      v113 = v90[32];
      v114 = v90[33];

      v180 = *(v114 + 8);
      v180(v104, v113);
    }

    v137 = v90 + 28;
    v136 = v90[28];
    v139 = v90 + 27;
    v138 = v90[27];
    v141 = v90 + 26;
    v140 = v90[26];
    sub_2281386EC();
    if ((*(v138 + 88))(v136, v140) == *MEMORY[0x277D0DB78])
    {
      v137 = v90 + 25;
      v142 = v90[25];
      v144 = v90[30];
      v143 = v90[31];
      v146 = v90[28];
      v145 = v90[29];
      v139 = v90 + 24;
      v147 = v90[24];
      v141 = v90 + 23;
      v185 = v90[23];
      (*(v90[27] + 96))(v146, v90[26]);
      (*(v144 + 32))(v143, v146, v145);
      sub_2281386BC();
      if ((*(v147 + 88))(v142, v185) == *MEMORY[0x277D0DAB0])
      {
        v148 = v90[36];
        v149 = v90[32];
        (*(v90[24] + 8))(v90[25], v90[23]);
        sub_2280D4590(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
        v150 = swift_allocError();
        v183(v151, v148, v149);
        v152 = swift_allocObject();
        *(v152 + 16) = 17;
        *(v152 + 24) = 0;
        *(v152 + 32) = 0;
        v153 = sub_227FF96D4(v150, 0xD000000000000072, 0x8000000228147EF0, 73, sub_2280D442C, v152);

        *(v90 + 96) = 17;
        v90[13] = v153;
        sub_227FDB3CC();
        if (sub_22813999C())
        {
        }

        else
        {
          swift_allocError();
          *v160 = 17;
          *(v160 + 8) = v153;
        }

        v161 = v90[36];
        v162 = v90[32];
        v164 = v90[30];
        v163 = v90[31];
        v165 = v90[29];
        swift_willThrow();
        (*(v164 + 8))(v163, v165);
        v158 = v161;
        v159 = v162;
        goto LABEL_60;
      }

      (*(v90[30] + 8))(v90[31], v90[29]);
      v100 = v183;
    }

    v154 = *v139;
    v155 = v90[36];
    v156 = v90[32];
    (*(v154 + 8))(*v137, *v141);
    sub_2280D4590(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
    swift_allocError();
    v100(v157, v155, v156);
    swift_willThrow();
    v158 = v155;
    v159 = v156;
LABEL_60:
    v180(v158, v159);
  }

  v125 = v90[1];
LABEL_62:

  return v125();
}

uint64_t sub_2280C76F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a3;
  v7[20] = a4;
  v7[17] = a1;
  v7[18] = a2;
  v8 = sub_2281386AC();
  v7[23] = v8;
  v7[24] = *(v8 - 8);
  v7[25] = swift_task_alloc();
  v9 = sub_2281386DC();
  v7[26] = v9;
  v7[27] = *(v9 - 8);
  v7[28] = swift_task_alloc();
  v10 = sub_2281386CC();
  v7[29] = v10;
  v7[30] = *(v10 - 8);
  v7[31] = swift_task_alloc();
  v11 = sub_2281386FC();
  v7[32] = v11;
  v7[33] = *(v11 - 8);
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  v12 = sub_22813713C();
  v7[38] = v12;
  v7[39] = *(v12 - 8);
  v7[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80);
  v7[41] = swift_task_alloc();
  v7[42] = swift_task_alloc();
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v13 = sub_2281379AC();
  v7[45] = v13;
  v7[46] = *(v13 - 8);
  v7[47] = swift_task_alloc();
  v14 = sub_22813797C();
  v7[48] = v14;
  v7[49] = *(v14 - 8);
  v7[50] = swift_task_alloc();
  v15 = sub_22813795C();
  v7[51] = v15;
  v7[52] = *(v15 - 8);
  v7[53] = swift_task_alloc();
  v16 = sub_22813794C();
  v7[54] = v16;
  v7[55] = *(v16 - 8);
  v7[56] = swift_task_alloc();
  v17 = sub_22813882C();
  v7[57] = v17;
  v7[58] = *(v17 - 8);
  v7[59] = swift_task_alloc();
  v7[60] = swift_task_alloc();
  v18 = sub_228136CDC();
  v7[61] = v18;
  v7[62] = *(v18 - 8);
  v7[63] = swift_task_alloc();
  v7[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280C7BF0, 0, 0);
}

uint64_t sub_2280C7BF0()
{
  v189 = v0;
  v1 = sub_2280A9734(0, *(v0 + 144), *(v0 + 152));
  v3 = *(v0 + 504);
  v2 = *(v0 + 512);
  v5 = *(v0 + 488);
  v4 = *(v0 + 496);
  v181 = v1;
  v184 = v0;
  v176 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EFB0, &unk_2281402A0);
  v7 = *(v4 + 72);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject() + v8;
  sub_228136C6C();
  sub_228136C7C();
  sub_228136C9C();
  sub_228136CCC();
  v10 = *(v4 + 16);
  v10(v3, v9, v5);
  sub_228136CBC();
  v11 = *(v4 + 8);
  v11(v3, v5);
  v10(v3, v9 + v7, v5);
  sub_228136CBC();
  v11(v3, v5);
  v10(v3, v9 + 2 * v7, v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_228136CBC();
  v11(v3, v5);
  v12 = swift_task_alloc();
  *(v12 + 16) = v2;
  v168 = sub_2280D34CC(sub_2280D47EC, v12, v181, v176);
  v186 = v13;

  v11(v2, v5);
  v14 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v15 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v15 = &qword_2813C76F8;
  }

  v16 = *v15;
  v17 = *(*v15 + 32);
  v18 = *(*v15 + 40);
  v19 = *(*v15 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  v20 = byte_2813C4638;
  if (byte_2813C4638 == 1)
  {
    v18(v188, v19);

    if ((v188[0] & 1) == 0)
    {
LABEL_14:

      v21 = v0;
      goto LABEL_37;
    }
  }

  else
  {

    if (!v17)
    {
      goto LABEL_14;
    }
  }

  v22 = *(v16 + 72);
  v23 = *(v16 + 80);
  v24 = *(v16 + 2208);

  if (v20)
  {
    v23(v188, v24);

    v21 = v0;
    if ((v188[0] & 1) == 0)
    {
LABEL_18:

      goto LABEL_37;
    }
  }

  else
  {

    v21 = v0;
    if ((v22 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if (qword_2813C49B8 != -1)
  {
    swift_once();
  }

  if (byte_2813C49C1 == 1)
  {
    v25 = v21[22];
  }

  else
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v21[57], qword_2813C4990);
  }

  v26 = *(v21[58] + 16);
  v26(v21[60], v25, v21[57]);
  if (qword_2813C49B0 != -1)
  {
    swift_once();
  }

  if (byte_27D81EEF2 == 1)
  {
    (*(v21[58] + 32))(v21[59], v21[60], v21[57]);
  }

  else
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v28 = v21[59];
    v27 = v21[60];
    v30 = v21[57];
    v29 = v21[58];
    v31 = __swift_project_value_buffer(v30, qword_2813C4990);
    v26(v28, v31, v30);
    (*(v29 + 8))(v27, v30);
  }

  v32 = v21[21];
  sub_2280D399C(v32, (v21 + 2));
  sub_2280D399C(v32, (v21 + 7));

  v33 = sub_22813880C();
  v34 = sub_2281396CC();

  v35 = os_log_type_enabled(v33, v34);
  v37 = v21[58];
  v36 = v21[59];
  v38 = v21[57];
  if (v35)
  {
    v169 = v21[18];
    v171 = v21[19];
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v188[0] = v40;
    *v39 = 136446979;
    v177 = v38;
    v41 = v21[5];
    v42 = v184[6];
    __swift_project_boxed_opaque_existential_1(v184 + 2, v41);
    v173 = v36;
    v43 = (*(v42 + 16))(v41, v42);
    v45 = v44;
    __swift_destroy_boxed_opaque_existential_1Tm_11(v184 + 2);
    v46 = sub_227FCC340(v43, v45, v188);

    *(v39 + 4) = v46;
    *(v39 + 12) = 2081;
    *(v39 + 14) = sub_227FCC340(v169, v171, v188);
    *(v39 + 22) = 2082;
    v47 = v184[10];
    v48 = v184[11];
    __swift_project_boxed_opaque_existential_1(v184 + 7, v47);
    v49 = *(v48 + 16);
    v50 = v48;
    v21 = v184;
    v51 = v49(v47, v50);
    v53 = v52;
    __swift_destroy_boxed_opaque_existential_1Tm_11(v184 + 7);
    v54 = sub_227FCC340(v51, v53, v188);

    *(v39 + 24) = v54;
    *(v39 + 32) = 2081;
    *(v39 + 34) = sub_227FCC340(v168, v186, v188);
    _os_log_impl(&dword_227FC3000, v33, v34, "\n--------------------------------------------------------------------------------\n# Language Gating Raw Input for request %{public}s\n--------------------------------------------------------------------------------\n%{private}s\n--------------------------------------------------------------------------------\n# Language Gating Processed Input for request %{public}s\n--------------------------------------------------------------------------------\n%{private}s\n--------------------------------------------------------------------------------", v39, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v40, -1, -1);
    MEMORY[0x22AAB28A0](v39, -1, -1);

    (*(v37 + 8))(v173, v177);
  }

  else
  {

    (*(v37 + 8))(v36, v38);
    __swift_destroy_boxed_opaque_existential_1Tm_11(v21 + 2);
    __swift_destroy_boxed_opaque_existential_1Tm_11(v21 + 7);
  }

LABEL_37:
  v55 = v21[52];
  v56 = v21[53];
  v57 = v21[51];
  v58 = v21[43];
  v170 = v21[39];
  v172 = v21[47];
  v178 = v21[38];
  v59 = v21[21];
  v174 = v21[20];
  v61 = v59[3];
  v60 = v59[4];
  __swift_project_boxed_opaque_existential_1(v59, v61);
  (*(*(v60 + 8) + 8))(v61);
  (*(v55 + 104))(v56, *MEMORY[0x277D0E2D8], v57);
  sub_22813792C();
  sub_22813796C();
  v62 = v59[3];
  v63 = v59[4];
  __swift_project_boxed_opaque_existential_1(v59, v62);
  v64 = (*(*(v63 + 8) + 8))(v62);
  sub_227FEC314(v64, v65, v172);

  sub_2280D43C4(v174, v58, &qword_27D81E778, &qword_22813BC80);
  v66 = *(v170 + 48);
  if (v66(v58, 1, v178) == 1)
  {
    sub_2280D44A8(v21[43], &qword_27D81E778, &qword_22813BC80);
    sub_22813798C();
    v71 = v21[44];
    v72 = v21[42];

    sub_2280D4438(v72, v71);
  }

  else
  {
    v67 = v21[43];
    v68 = v21[44];
    v69 = v21[38];
    v70 = v21[39];

    (*(v70 + 32))(v68, v67, v69);
    (*(v70 + 56))(v68, 0, 1, v69);
  }

  v73 = v21[41];
  v74 = v21[38];
  sub_2280D43C4(v21[44], v73, &qword_27D81E778, &qword_22813BC80);
  if (v66(v73, 1, v74) != 1)
  {
    v79 = v21[50];
    v80 = v21[40];
    v81 = v21[21];
    v82 = v21[17];
    (*(v21[39] + 32))(v80, v21[41], v21[38]);
    sub_2280C9240(v80, v79, v81, &unk_283B5F3F8, 6, sub_2280D481C, sub_227FF9AA4, v82, sub_227FE7384, &type metadata for ClassificationError, sub_2280D47CC);
    v116 = v21[55];
    v115 = v21[56];
    v167 = v21[54];
    v118 = v21[49];
    v117 = v21[50];
    v120 = v21[47];
    v119 = v21[48];
    v121 = v21;
    v122 = v21[46];
    v124 = v121[44];
    v123 = v121[45];
    (*(v121[39] + 8))();
    sub_2280D44A8(v124, &qword_27D81E778, &qword_22813BC80);
    (*(v122 + 8))(v120, v123);
    (*(v118 + 8))(v117, v119);
    (*(v116 + 8))(v115, v167);

    v125 = v121[1];
    goto LABEL_62;
  }

  sub_2280D44A8(v21[41], &qword_27D81E778, &qword_22813BC80);
  v75 = swift_allocObject();
  *(v75 + 16) = 7;
  *(v75 + 24) = 0;
  *(v75 + 32) = 0;
  v76 = sub_227FF9AA4(0, 0xD000000000000072, 0x8000000228147EF0, 54, sub_2280D4818, v75);
  *(v21 + 112) = 7;
  v21[15] = v76;
  sub_227FE7384();
  v77 = sub_22813999C();
  if (v77)
  {
    v78 = v77;
  }

  else
  {
    v78 = swift_allocError();
    *v83 = 7;
    *(v83 + 8) = v76;
  }

  v84 = v21[55];
  v187 = v21[56];
  v85 = v21[49];
  v179 = v21[50];
  v182 = v21[54];
  v87 = v21[47];
  v86 = v21[48];
  v89 = v21[45];
  v88 = v21[46];
  v90 = v21;
  v91 = v21[44];
  swift_willThrow();
  v92 = v78;
  sub_2280D44A8(v91, &qword_27D81E778, &qword_22813BC80);
  (*(v88 + 8))(v87, v89);
  (*(v85 + 8))(v179, v86);
  (*(v84 + 8))(v187, v182);
  v90[16] = v78;
  v93 = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  if (swift_dynamicCast())
  {
    v94 = v90[36];
    v95 = v90[37];
    v96 = v90[35];
    v97 = v90[32];
    v98 = v90[33];

    v99 = *(v98 + 32);
    v99(v94, v95, v97);
    v100 = *(v98 + 16);
    v100(v96, v94, v97);
    v101 = sub_22813880C();
    v102 = sub_2281396DC();
    v103 = os_log_type_enabled(v101, v102);
    v104 = v90[35];
    v183 = v100;
    if (v103)
    {
      v105 = v90[34];
      v106 = v100;
      v107 = v184[32];
      v108 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      v188[0] = v175;
      *v108 = 136446210;
      v106(v105, v104, v107);
      sub_2280D4590(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      v109 = v184;
      v110 = sub_22813999C();
      v111 = v184[34];
      if (v110)
      {
        v112 = v110;
        (*(v184[33] + 8))(v184[34], v184[32]);
      }

      else
      {
        v126 = v184[32];
        v112 = swift_allocError();
        v109 = v184;
        v99(v127, v111, v126);
      }

      v128 = v109[35];
      v130 = v109[32];
      v129 = v109[33];
      v131 = sub_228136E1C();

      v132 = NSError.loggingDescription.getter();
      v134 = v133;

      v90 = v184;
      v180 = *(v129 + 8);
      v180(v128, v130);
      v135 = sub_227FCC340(v132, v134, v188);

      *(v108 + 4) = v135;
      _os_log_impl(&dword_227FC3000, v101, v102, "GMS language sanitizer rejected the input with error message: %{public}s", v108, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_11(v175);
      MEMORY[0x22AAB28A0](v175, -1, -1);
      MEMORY[0x22AAB28A0](v108, -1, -1);

      v100 = v183;
    }

    else
    {
      v113 = v90[32];
      v114 = v90[33];

      v180 = *(v114 + 8);
      v180(v104, v113);
    }

    v137 = v90 + 28;
    v136 = v90[28];
    v139 = v90 + 27;
    v138 = v90[27];
    v141 = v90 + 26;
    v140 = v90[26];
    sub_2281386EC();
    if ((*(v138 + 88))(v136, v140) == *MEMORY[0x277D0DB78])
    {
      v137 = v90 + 25;
      v142 = v90[25];
      v144 = v90[30];
      v143 = v90[31];
      v146 = v90[28];
      v145 = v90[29];
      v139 = v90 + 24;
      v147 = v90[24];
      v141 = v90 + 23;
      v185 = v90[23];
      (*(v90[27] + 96))(v146, v90[26]);
      (*(v144 + 32))(v143, v146, v145);
      sub_2281386BC();
      if ((*(v147 + 88))(v142, v185) == *MEMORY[0x277D0DAB0])
      {
        v148 = v90[36];
        v149 = v90[32];
        (*(v90[24] + 8))(v90[25], v90[23]);
        sub_2280D4590(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
        v150 = swift_allocError();
        v183(v151, v148, v149);
        v152 = swift_allocObject();
        *(v152 + 16) = 6;
        *(v152 + 24) = 0;
        *(v152 + 32) = 0;
        v153 = sub_227FF9AA4(v150, 0xD000000000000072, 0x8000000228147EF0, 73, sub_2280D4814, v152);

        *(v90 + 96) = 6;
        v90[13] = v153;
        sub_227FE7384();
        if (sub_22813999C())
        {
        }

        else
        {
          swift_allocError();
          *v160 = 6;
          *(v160 + 8) = v153;
        }

        v161 = v90[36];
        v162 = v90[32];
        v164 = v90[30];
        v163 = v90[31];
        v165 = v90[29];
        swift_willThrow();
        (*(v164 + 8))(v163, v165);
        v158 = v161;
        v159 = v162;
        goto LABEL_60;
      }

      (*(v90[30] + 8))(v90[31], v90[29]);
      v100 = v183;
    }

    v154 = *v139;
    v155 = v90[36];
    v156 = v90[32];
    (*(v154 + 8))(*v137, *v141);
    sub_2280D4590(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
    swift_allocError();
    v100(v157, v155, v156);
    swift_willThrow();
    v158 = v155;
    v159 = v156;
LABEL_60:
    v180(v158, v159);
  }

  v125 = v90[1];
LABEL_62:

  return v125();
}

uint64_t sub_2280C9240@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X6>, uint64_t (*a7)(void, unint64_t, unint64_t, uint64_t, uint64_t, uint64_t)@<X7>, uint64_t a8@<X8>, void (*a9)(void), unint64_t a10, uint64_t (*a11)(char *))
{
  v202 = a7;
  v201 = a6;
  v203 = a5;
  v200 = a4;
  v193 = a2;
  v211 = a1;
  v192 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E580, &unk_2281402B0);
  MEMORY[0x28223BE20](v12 - 8);
  v191 = v189 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80);
  MEMORY[0x28223BE20](v14 - 8);
  v194 = v189 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v189 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v217 = v189 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v190 = v189 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v207 = v189 - v25;
  MEMORY[0x28223BE20](v24);
  v206 = v189 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v219 = v189 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v224 = v189 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v189[1] = v189 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v195 = v189 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v210 = v189 - v37;
  MEMORY[0x28223BE20](v36);
  v213 = v189 - v38;
  v39 = sub_22813713C();
  v40 = *(v39 - 8);
  v41 = MEMORY[0x28223BE20](v39);
  v205 = v189 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v189[0] = v189 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v199 = v189 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v218 = v189 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v51 = v189 - v50;
  MEMORY[0x28223BE20](v49);
  v223 = v189 - v52;
  v221 = sub_228102F0C();
  v53 = a3[3];
  v54 = a3[4];
  v198 = a3;
  __swift_project_boxed_opaque_existential_1(a3, v53);
  v55 = sub_2280A0F6C(v53, v54);
  v220 = v39;
  v214 = v40;
  if ((v55 & 1) == 0)
  {
    if (qword_2813C86B0 != -1)
    {
      swift_once();
    }

    v56 = off_2813C86B8;
    v248[0] = v221;

    v97 = v56;
    goto LABEL_51;
  }

  v216 = v19;
  if (qword_2813C86B0 != -1)
  {
    swift_once();
  }

  v56 = off_2813C86B8;
  v57 = v221;
  v209 = *(off_2813C86B8 + 2);
  if (!v209)
  {
    v204 = MEMORY[0x277D84F90];
    goto LABEL_50;
  }

  v58 = 0;
  v228 = v40 + 16;
  v229 = (v40 + 8);
  v196 = (v40 + 32);
  v204 = MEMORY[0x277D84F90];
  v215 = off_2813C86B8;
  v222 = v51;
LABEL_6:
  if (v58 >= *(v56 + 2))
  {
    goto LABEL_100;
  }

  v59 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v60 = *(v40 + 72);
  v212 = v58;
  v227 = v60;
  v226 = *(v40 + 16);
  v226(v223, &v56[v59 + v60 * v58], v39);
  v225 = *(v57 + 16);
  if (!v225)
  {
    isa = v229->isa;
LABEL_37:
    (isa)(v223, v39);
    v56 = v215;
    v40 = v214;
    goto LABEL_38;
  }

  v61 = 0;
  v208 = v59;
  v62 = v57 + v59;
  while (v61 < *(v57 + 16))
  {
    v231 = v62;
    (v226)(v51);
    v65 = v224;
    sub_22813710C();
    v66 = sub_22813701C();
    v67 = *(v66 - 8);
    v68 = *(v67 + 48);
    if (v68(v65, 1, v66) == 1)
    {
      v63 = v65;
      isa = v229->isa;
      (v229->isa)(v51, v39);
      sub_2280D44A8(v63, &qword_27D81E328, &qword_2281402C0);
      goto LABEL_10;
    }

    v69 = sub_228136FFC();
    v230 = v70;
    v71 = v65;
    v72 = *(v67 + 8);
    v72(v71, v66);
    v73 = v219;
    sub_22813710C();
    if (v68(v73, 1, v66) == 1)
    {
      isa = v229->isa;
      v51 = v222;
      v39 = v220;
      (v229->isa)(v222, v220);

      sub_2280D44A8(v73, &qword_27D81E328, &qword_2281402C0);
      goto LABEL_33;
    }

    v74 = sub_228136FFC();
    v76 = v75;
    v72(v73, v66);
    if (v69 == v74 && v230 == v76)
    {
    }

    else
    {
      v77 = sub_2281399BC();

      v51 = v222;
      if ((v77 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    v78 = v217;
    sub_22813712C();
    v79 = sub_2281370BC();
    v80 = *(v79 - 8);
    v81 = *(v80 + 48);
    if (v81(v78, 1, v79) == 1)
    {
      sub_2280D44A8(v78, &qword_27D81E320, &unk_22813A7D0);
      v82 = 0;
      v83 = 0;
    }

    else
    {
      v82 = sub_228136FFC();
      v83 = v84;
      (*(v80 + 8))(v78, v79);
    }

    v85 = v216;
    sub_22813712C();
    if (v81(v85, 1, v79) == 1)
    {
      sub_2280D44A8(v85, &qword_27D81E320, &unk_22813A7D0);
      v51 = v222;
      if (v83)
      {
        goto LABEL_31;
      }

      v86 = 0;
      goto LABEL_34;
    }

    v87 = sub_228136FFC();
    v86 = v88;
    (*(v80 + 8))(v85, v79);
    v51 = v222;
    if (v83)
    {
      if (!v86)
      {
LABEL_31:

LABEL_32:
        isa = v229->isa;
        v39 = v220;
        (v229->isa)(v51, v220);
LABEL_33:
        v57 = v221;
        goto LABEL_10;
      }

      if (v82 != v87 || v83 != v86)
      {
        v89 = sub_2281399BC();

        isa = v229->isa;
        v39 = v220;
        (v229->isa)(v51, v220);
        v57 = v221;
        if (v89)
        {
          goto LABEL_41;
        }

        goto LABEL_10;
      }

      v39 = v220;
      (v229->isa)(v51, v220);
LABEL_41:
      v90 = *v196;
      (*v196)(v205, v223, v39);
      v91 = v204;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = v91;
      v248[0] = v91;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_228043B14(0, *(v91 + 16) + 1, 1);
        v93 = v248[0];
      }

      v56 = v215;
      v40 = v214;
      v94 = v208;
      v96 = *(v93 + 16);
      v95 = *(v93 + 24);
      if (v96 >= v95 >> 1)
      {
        sub_228043B14((v95 > 1), v96 + 1, 1);
        v93 = v248[0];
      }

      *(v93 + 16) = v96 + 1;
      v204 = v93;
      v90((v93 + v94 + v96 * v227), v205, v39);
      v57 = v221;
LABEL_38:
      v58 = v212 + 1;
      if (v212 + 1 == v209)
      {
LABEL_50:
        v248[0] = v57;

        v97 = v204;
LABEL_51:
        sub_227FED2DC(v97);
        v226 = v248[0];
        if (qword_2813C86B0 != -1)
        {
          goto LABEL_101;
        }

LABEL_52:
        v231 = *(v56 + 2);
        v215 = v56;
        if (!v231)
        {
LABEL_80:

          goto LABEL_81;
        }

        v98 = 0;
        v229 = (v40 + 16);
        v225 = a11;
        v230 = (v40 + 8);
        while (1)
        {
          if (v98 >= *(v56 + 2))
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            swift_once();
            goto LABEL_52;
          }

          (*(v40 + 16))(v218, &v56[((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v98], v39);
          v99 = v213;
          sub_22813710C();
          v100 = sub_22813701C();
          v101 = *(v100 - 8);
          v102 = *(v101 + 48);
          if (v102(v99, 1, v100) == 1)
          {
            goto LABEL_58;
          }

          v103 = v213;
          v104 = sub_228136FFC();
          v228 = v105;
          v106 = *(v101 + 8);
          v106(v103, v100);
          v99 = v210;
          sub_22813710C();
          if (v102(v99, 1, v100) == 1)
          {
            break;
          }

          v107 = sub_228136FFC();
          v109 = v108;
          v106(v99, v100);
          if (v104 == v107 && v228 == v109)
          {

            v39 = v220;
            v56 = v215;
          }

          else
          {
            v110 = sub_2281399BC();

            v39 = v220;
            v56 = v215;
            if ((v110 & 1) == 0)
            {
              goto LABEL_59;
            }
          }

          v111 = v206;
          sub_22813712C();
          v51 = sub_2281370BC();
          v112 = *(v51 - 1);
          v113 = *(v112 + 48);
          v114 = v113(v111, 1, v51);
          v228 = v112;
          if (v114 == 1)
          {
            sub_2280D44A8(v111, &qword_27D81E320, &unk_22813A7D0);
            v227 = 0;
            v115 = 0;
          }

          else
          {
            v227 = sub_228136FFC();
            v115 = v116;
            (*(v112 + 8))(v111, v51);
          }

          v117 = v207;
          sub_22813712C();
          if (v113(v117, 1, v51) == 1)
          {
            sub_2280D44A8(v117, &qword_27D81E320, &unk_22813A7D0);
            if (!v115)
            {
              goto LABEL_95;
            }

            goto LABEL_79;
          }

          v118 = sub_228136FFC();
          v120 = v119;
          (*(v228 + 8))(v117, v51);
          if (!v115)
          {
            if (!v120)
            {
              goto LABEL_95;
            }

LABEL_79:

LABEL_59:
            (*v230)(v218, v39);
            goto LABEL_60;
          }

          if (!v120)
          {
            goto LABEL_79;
          }

          if (v227 == v118 && v115 == v120)
          {
            goto LABEL_94;
          }

          v121 = sub_2281399BC();

          v122 = *v230;
          v123 = (*v230)(v218, v39);
          if (v121)
          {
            goto LABEL_96;
          }

LABEL_60:
          ++v98;
          v40 = v214;
          if (v231 == v98)
          {
            goto LABEL_80;
          }
        }

        v39 = v220;
LABEL_58:
        sub_2280D44A8(v99, &qword_27D81E328, &qword_2281402C0);
        v56 = v215;
        goto LABEL_59;
      }

      goto LABEL_6;
    }

LABEL_34:
    isa = v229->isa;
    v39 = v220;
    (v229->isa)(v51, v220);
    v57 = v221;
    if (!v86)
    {
      goto LABEL_41;
    }

LABEL_10:
    v61 = (v61 + 1);
    v62 = v231 + v227;
    if (v225 == v61)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_94:

LABEL_95:
  v122 = *v230;
  v123 = (*v230)(v218, v39);
LABEL_96:
  v40 = v214;
  MEMORY[0x28223BE20](v123);
  v183 = v211;
  v189[-2] = v184;
  v189[-1] = v183;
  v185 = v194;
  v186 = v197;
  sub_2280CB000(v225, v226, v194);
  v197 = v186;

  v187 = v185;
  if ((*(v40 + 48))(v185, 1, v39) == 1)
  {
    sub_2280D44A8(v185, &qword_27D81E778, &qword_22813BC80);
LABEL_81:
    v124 = a9;
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v125 = sub_22813882C();
    __swift_project_value_buffer(v125, qword_2813C8A20);
    v126 = v198;
    sub_2280D399C(v198, v248);
    sub_2280D399C(v126, &v245);
    sub_2280D399C(v126, &v242);
    sub_2280D399C(v126, &v239);
    v127 = v199;
    (*(v40 + 16))(v199, v211, v39);
    sub_2280D399C(v126, &v236);

    v128 = sub_22813880C();
    v129 = sub_2281396DC();

    if (os_log_type_enabled(v128, v129))
    {
      LODWORD(v228) = v129;
      v229 = v128;
      v230 = a9;
      v231 = a10;
      v130 = swift_slowAlloc();
      v227 = swift_slowAlloc();
      v251 = v227;
      *v130 = 136316930;
      v131 = v249;
      v132 = v250;
      __swift_project_boxed_opaque_existential_1(v248, v249);
      v133 = (*(v132 + 16))(v131, v132);
      v135 = v134;
      __swift_destroy_boxed_opaque_existential_1Tm_11(v248);
      v136 = sub_227FCC340(v133, v135, &v251);

      *(v130 + 4) = v136;
      *(v130 + 12) = 2080;
      v138 = v246;
      v137 = v247;
      __swift_project_boxed_opaque_existential_1(&v245, v246);
      v139 = (*(*(v137 + 8) + 8))(v138);
      v141 = v140;
      __swift_destroy_boxed_opaque_existential_1Tm_11(&v245);
      v142 = sub_227FCC340(v139, v141, &v251);

      *(v130 + 14) = v142;
      *(v130 + 22) = 2080;
      v144 = v243;
      v143 = v244;
      __swift_project_boxed_opaque_existential_1(&v242, v243);
      v145 = (*(*(v143 + 8) + 16))(v144);
      v147 = v146;
      __swift_destroy_boxed_opaque_existential_1Tm_11(&v242);
      v148 = sub_227FCC340(v145, v147, &v251);

      *(v130 + 24) = v148;
      *(v130 + 32) = 1024;
      v150 = v240;
      v149 = v241;
      __swift_project_boxed_opaque_existential_1(&v239, v240);
      LODWORD(v148) = (*(*(v149 + 8) + 24))(v150);
      __swift_destroy_boxed_opaque_existential_1Tm_11(&v239);
      *(v130 + 34) = v148;
      *(v130 + 38) = 2082;
      v151 = v195;
      sub_22813710C();
      v152 = sub_22813701C();
      v153 = *(v152 - 8);
      if ((*(v153 + 48))(v151, 1, v152) == 1)
      {
        sub_2280D44A8(v151, &qword_27D81E328, &qword_2281402C0);
        v154 = 0xE300000000000000;
        v155 = 7104878;
      }

      else
      {
        v155 = sub_228136FFC();
        v154 = v156;
        (*(v153 + 8))(v151, v152);
      }

      (*(v40 + 8))(v127, v220);
      v157 = sub_227FCC340(v155, v154, &v251);

      *(v130 + 40) = v157;
      *(v130 + 48) = 1026;
      v158 = v237;
      v159 = v238;
      __swift_project_boxed_opaque_existential_1(&v236, v237);
      v160 = sub_2280A0F6C(v158, v159) & 1;
      __swift_destroy_boxed_opaque_existential_1Tm_11(&v236);
      *(v130 + 50) = v160;
      *(v130 + 54) = 2082;
      v235 = MEMORY[0x277D84FA0];
      v161 = sub_228046378(v221, &v235);
      v233 = 91;
      v234 = 0xE100000000000000;
      v232 = v161;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
      sub_2280D3E0C(&qword_2813C4678, &qword_27D81EB10, &unk_22813DB80, MEMORY[0x277D83958]);
      v162 = sub_22813925C();
      v164 = v163;

      MEMORY[0x22AAB1970](v162, v164);

      MEMORY[0x22AAB1970](93, 0xE100000000000000);
      v165 = v233;
      v166 = v234;

      v167 = sub_227FCC340(v165, v166, &v251);

      *(v130 + 56) = v167;
      *(v130 + 64) = 2082;
      v235 = MEMORY[0x277D84FA0];
      v168 = sub_228046378(v215, &v235);
      v233 = 91;
      v234 = 0xE100000000000000;
      v232 = v168;
      v169 = sub_22813925C();
      v171 = v170;

      MEMORY[0x22AAB1970](v169, v171);

      MEMORY[0x22AAB1970](93, 0xE100000000000000);
      v172 = v233;
      v173 = v234;

      v174 = sub_227FCC340(v172, v173, &v251);

      *(v130 + 66) = v174;
      v175 = v229;
      _os_log_impl(&dword_227FC3000, v229, v228, "The dominant language detected is not supported for request: [requestIdentifier: %s, useCaseIdentifier: %s, clientApplicationIdentifier: %s, clientProcessIdentifier: %d], detectedLanguage: %{public}s, requiresPreferredLanaguage: %{BOOL,public}d, preferredLanguages: %{public}s, availableLanguages: %{public}s", v130, 0x4Au);
      v176 = v227;
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v176, -1, -1);
      MEMORY[0x22AAB28A0](v130, -1, -1);

      v124 = v230;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm_11(&v236);
      __swift_destroy_boxed_opaque_existential_1Tm_11(&v239);

      (*(v40 + 8))(v127, v39);
      __swift_destroy_boxed_opaque_existential_1Tm_11(v248);
      __swift_destroy_boxed_opaque_existential_1Tm_11(&v245);
      __swift_destroy_boxed_opaque_existential_1Tm_11(&v242);
    }

    v177 = swift_allocObject();
    v178 = v203;
    *(v177 + 16) = v203;
    *(v177 + 24) = 0;
    *(v177 + 32) = 0;
    v179 = v178;
    v180 = v202(0, 0xD000000000000072, 0x8000000228147EF0, 152, v201, v177);
    LOBYTE(v248[0]) = v179;
    v248[1] = v180;
    v124();
    if (sub_22813999C())
    {
    }

    else
    {
      swift_allocError();
      *v181 = v179;
      *(v181 + 8) = v180;
    }

    return swift_willThrow();
  }

  else
  {

    v188 = v189[0];
    (*(v40 + 32))(v189[0], v187, v39);
    sub_22813710C();
    (*(v228 + 56))(v190, 1, 1, v51);
    sub_22813711C();
    sub_22813702C();
    return v122(v188, v39);
  }
}

uint64_t sub_2280CAD30(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_22813713C();
  v7 = MEMORY[0x28223BE20](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = MEMORY[0x277D84F90];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_228043B14(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_228043B14((v25 > 1), v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
LABEL_14:

    return v37;
  }

  return result;
}

uint64_t sub_2280CB000@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a1;
  v6 = sub_22813713C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v20 = v7;
    v21 = a3;
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v22 = v12;
    v13 = (v11 - 8);
    v14 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    while (1)
    {
      v22(v9, v14, v6);
      v16 = v23(v9);
      if (v3)
      {
        return (*v13)(v9, v6);
      }

      if (v16)
      {
        break;
      }

      (*v13)(v9, v6);
      v14 += v15;
      if (!--v10)
      {
        v17 = 1;
        v7 = v20;
        a3 = v21;
        return (*(v7 + 56))(a3, v17, 1, v6);
      }
    }

    v7 = v20;
    a3 = v21;
    (*(v20 + 32))(v21, v9, v6);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v7 + 56))(a3, v17, 1, v6);
}

uint64_t sub_2280CB1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = sub_228136F8C();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v7 = sub_228138AAC();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = type metadata accessor for PriorityModelSession.Input(0);
  v5[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280CB328, 0, 0);
}

uint64_t sub_2280CB328()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v31 = v0[16];
  v6 = v0[15];
  v34 = v0[14];
  (*(v4 + 16))(v3, v0[10], v5);
  v7 = sub_228138A9C();
  v9 = v8;
  sub_228138A0C();
  v10 = sub_228138A6C();
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v32 = v13;
  v33 = v12;
  (*(v4 + 8))(v3, v5);
  *v1 = v7;
  *(v1 + 8) = v9;
  *(v1 + 16) = 2;
  (*(v6 + 32))(v1 + v2[6], v31, v34);
  v14 = (v1 + v2[7]);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = (v1 + v2[8]);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = (v1 + v2[9]);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = (v1 + v2[10]);
  *v17 = v33;
  v17[1] = v32;
  v18 = (v1 + v2[11]);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  *(v1 + v2[12]) = 1;
  type metadata accessor for SharedData();
  v19 = swift_allocObject();
  v0[22] = v19;
  type metadata accessor for SKAssetManager();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  swift_initStackObject();
  v20 = SKAssetManager.init()();
  type metadata accessor for FilterRules(0);
  swift_allocObject();
  v21 = FilterRules.init(assetManager:)(v20);
  v22 = v0[12];
  *(v19 + 16) = v21;

  *(v19 + 24) = v22;

  if (qword_2813C8178 != -1)
  {
    swift_once();
  }

  v23 = v0[21];
  v25 = v0[12];
  v24 = v0[13];
  v26 = v0[11];
  v0[8] = v19;
  v27 = swift_task_alloc();
  v0[23] = v27;
  v27[2] = v24;
  v27[3] = v23;
  v27[4] = v26;
  v27[5] = v25;
  v28 = swift_task_alloc();
  v0[24] = v28;
  sub_228138ACC();
  *v28 = v0;
  v28[1] = sub_2280CB6AC;
  v29 = v0[9];

  return MEMORY[0x282200908](v29, v0 + 8, &unk_2281402D0, v27, 0, 0, 0xD00000000000002BLL, 0x8000000228144280);
}

uint64_t sub_2280CB6AC()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_2280CB878;
  }

  else
  {
    v2 = sub_2280CB7D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2280CB7D0()
{
  v1 = *(v0 + 168);

  sub_2280D3D04(v1, type metadata accessor for PriorityModelSession.Input);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2280CB878()
{

  sub_2280D3D04(*(v0 + 168), type metadata accessor for PriorityModelSession.Input);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PriorityModelSession.performInference(messageThread:requestInfo:signalCollector:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5B0, &qword_22813B320);
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  type metadata accessor for PriorityModelSession.Input(0);
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280CBA24, 0, 0);
}

uint64_t sub_2280CBA24()
{
  v1 = v0[16];
  v2 = v0[17];
  (*(v0[15] + 16))(v1, v0[10], v0[14]);
  sub_2280CCE9C(v1, v2);
  type metadata accessor for SharedData();
  v3 = swift_allocObject();
  v0[18] = v3;
  type metadata accessor for SKAssetManager();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  swift_initStackObject();
  v4 = SKAssetManager.init()();
  type metadata accessor for FilterRules(0);
  swift_allocObject();
  v5 = FilterRules.init(assetManager:)(v4);
  v6 = v0[12];
  *(v3 + 16) = v5;

  *(v3 + 24) = v6;

  if (qword_2813C8178 != -1)
  {
    swift_once();
  }

  v7 = v0[17];
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[11];
  v0[8] = v3;
  v11 = swift_task_alloc();
  v0[19] = v11;
  v11[2] = v8;
  v11[3] = v7;
  v11[4] = v10;
  v11[5] = v9;
  v12 = swift_task_alloc();
  v0[20] = v12;
  sub_228138ACC();
  *v12 = v0;
  v12[1] = sub_2280CBCC4;
  v13 = v0[9];

  return MEMORY[0x282200908](v13, v0 + 8, &unk_22813B338, v11, 0, 0, 0xD00000000000002BLL, 0x8000000228144280);
}

uint64_t sub_2280CBCC4()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_2280CBE7C;
  }

  else
  {
    v2 = sub_2280CBDE8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2280CBDE8()
{
  v1 = *(v0 + 136);

  sub_2280D3D04(v1, type metadata accessor for PriorityModelSession.Input);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2280CBE7C()
{

  sub_2280D3D04(*(v0 + 136), type metadata accessor for PriorityModelSession.Input);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2280CBF28()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 1;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  v2 = sub_227FF9AA4(0, 0xD000000000000079, 0x80000002281442B0, 70, sub_2280CD590, v1);
  sub_227FE7384();
  swift_allocError();
  *v3 = 1;
  *(v3 + 8) = v2;
  swift_willThrow();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2280CC038()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 1;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  v2 = sub_227FF9AA4(0, 0xD000000000000079, 0x80000002281442B0, 78, sub_2280D4808, v1);
  sub_227FE7384();
  swift_allocError();
  *v3 = 1;
  *(v3 + 8) = v2;
  swift_willThrow();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t PriorityModelSession.__allocating_init(sessionInfo:)(uint64_t a1)
{
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2280CC1D4;

  return PriorityModelSession.init(sessionInfo:)(a1);
}

uint64_t sub_2280CC1D4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t PriorityModelSession.init(sessionInfo:)(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v2[15] = *v1;
  return MEMORY[0x2822009F8](sub_2280CC31C, 0, 0);
}

uint64_t sub_2280CC31C()
{
  v1 = v0[13];
  sub_2280D399C(v1, v0[14] + 16);
  sub_2280D399C(v1, (v0 + 8));
  type metadata accessor for LLMUrgencyClassifier();
  swift_allocObject();
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_2280CC3F0;

  return LLMUrgencyClassifier.init(sessionInfo:configuration:contextSizeOverride:)((v0 + 8), v2, 0, 1);
}

uint64_t sub_2280CC3F0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_2280CC668;
  }

  else
  {
    *(v4 + 144) = a1;
    v5 = sub_2280CC518;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2280CC518()
{
  v1 = v0[13];
  v2 = v0[14];
  *(v2 + 56) = v0[18];
  type metadata accessor for SKAssetManager();
  swift_initStackObject();
  v3 = SKAssetManager.init()();
  type metadata accessor for ClassificationConfiguration(0);
  v4 = swift_allocObject();
  v5 = (v4 + qword_2813C68F8);
  *v5 = 0xD00000000000001BLL;
  v5[1] = 0x8000000228147E60;
  v6 = (v4 + qword_2813C6900);
  *v6 = 0x7478746270;
  v6[1] = 0xE500000000000000;
  v7 = (v4 + qword_2813C68F0);
  *v7 = 0xD000000000000010;
  v7[1] = 0x8000000228143AB0;
  *(v4 + qword_2813C68E8) = 0;
  v8 = sub_227FDF5B4(v3, 0, 0xD00000000000001BLL, 0x8000000228147E60, 0x7478746270, 0xE500000000000000, 0xD000000000000010, 0x8000000228143AB0);
  __swift_destroy_boxed_opaque_existential_1Tm_11(v1);
  *(v2 + 64) = v8;
  v9 = v0[1];
  v10 = v0[14];

  return v9(v10);
}

uint64_t sub_2280CC668()
{
  v1 = *(v0 + 112);
  __swift_destroy_boxed_opaque_existential_1Tm_11(*(v0 + 104));
  __swift_destroy_boxed_opaque_existential_1Tm_11((v1 + 16));
  swift_deallocPartialClassInstance();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t PriorityModelSession.performInference(input:requestInfo:signalCollector:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  return MEMORY[0x2822009F8](sub_2280CC714, 0, 0);
}

uint64_t sub_2280CC714()
{
  type metadata accessor for SharedData();
  v1 = swift_allocObject();
  *(v0 + 112) = v1;
  type metadata accessor for SKAssetManager();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  swift_initStackObject();
  v2 = SKAssetManager.init()();
  type metadata accessor for FilterRules(0);
  swift_allocObject();
  v3 = FilterRules.init(assetManager:)(v2);
  v4 = *(v0 + 96);
  *(v1 + 16) = v3;

  *(v1 + 24) = v4;

  if (qword_2813C8178 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  *(v0 + 64) = v1;
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  v8 = *(v0 + 80);
  *(v7 + 16) = v5;
  *(v7 + 24) = v8;
  *(v7 + 40) = v6;
  v9 = swift_task_alloc();
  *(v0 + 128) = v9;
  sub_228138ACC();
  *v9 = v0;
  v9[1] = sub_2280CC94C;
  v10 = *(v0 + 72);

  return MEMORY[0x282200908](v10, v0 + 64, &unk_22813FF28, v7, 0, 0, 0xD00000000000002BLL, 0x8000000228144280);
}

uint64_t sub_2280CC94C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_2280CCAD4;
  }

  else
  {
    v2 = sub_2280CCA70;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2280CCA70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2280CCAD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t type metadata accessor for PriorityModelSession.Input(uint64_t a1)
{
  result = qword_2813C71A8;
  if (!qword_2813C71A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2280CCB84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_228138AEC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - v9;
  v58 = sub_228136F8C();
  v11 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_228138B1C();
  v52 = v15;
  v53 = v14;
  sub_228138B0C();
  v16 = sub_228138B6C();
  if (v17)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  v56 = v19;
  v57 = v18;
  v20 = sub_228138B7C();
  if (v21)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0xE000000000000000;
  }

  v54 = v23;
  v55 = v22;
  v24 = sub_228138B5C();
  if (v25)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0xE000000000000000;
  }

  v50 = v27;
  v51 = v26;
  v28 = sub_228138AFC();
  if (v29)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0;
  }

  if (v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0xE000000000000000;
  }

  v48 = v31;
  v49 = v30;
  sub_228138B2C();
  sub_228138ADC();
  sub_2280D4590(&qword_2813C4748, MEMORY[0x277D4AFD8], MEMORY[0x277D4AFE8]);
  v32 = sub_2281397EC();
  v33 = sub_228138B8C();
  (*(*(v33 - 8) + 8))(a1, v33);
  v34 = *(v5 + 8);
  v34(v8, v4);
  v34(v10, v4);
  v35 = v52;
  *a2 = v53;
  *(a2 + 8) = v35;
  *(a2 + 16) = 1;
  v36 = type metadata accessor for PriorityModelSession.Input(0);
  result = (*(v11 + 32))(a2 + v36[6], v13, v58);
  v38 = (a2 + v36[7]);
  *v38 = 0;
  v38[1] = 0xE000000000000000;
  v39 = (a2 + v36[8]);
  v40 = v56;
  *v39 = v57;
  v39[1] = v40;
  v41 = (a2 + v36[9]);
  v42 = v54;
  *v41 = v55;
  v41[1] = v42;
  v43 = (a2 + v36[10]);
  v44 = v50;
  *v43 = v51;
  v43[1] = v44;
  v45 = (a2 + v36[11]);
  v46 = v48;
  *v45 = v49;
  v45[1] = v46;
  *(a2 + v36[12]) = v32 & 1;
  return result;
}

uint64_t sub_2280CCE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_228136F8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v54 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_228138AAC();
  v8 = *(v59 - 8);
  v9 = MEMORY[0x28223BE20](v59);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v53 = &v44 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5B0, &qword_22813B320);
  v14 = *(sub_228138BAC() + 16);

  if (v14)
  {
    result = sub_228138BAC();
    if (*(result + 16))
    {
      v51 = v6;
      v52 = v5;
      v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v57 = *(v8 + 16);
      v58 = v8 + 16;
      v57(v53, result + v16, v59);

      v17 = sub_228138A9C();
      v48 = v18;
      v49 = v17;
      sub_228138A0C();
      v50 = v13;
      v19 = sub_228138BAC();
      v20 = *(v19 + 16);
      if (v20)
      {
        v45 = a2;
        v46 = a1;
        v47 = v2;
        v44 = v19;
        v21 = v19 + v16;
        v56 = *(v8 + 72);
        v22 = (v8 + 8);
        v23 = MEMORY[0x277D84F90];
        v55 = v8;
        do
        {
          v25 = v59;
          v57(v11, v21, v59);
          v26 = sub_228138A6C();
          v28 = v27;
          (*v22)(v11, v25);
          if (v28)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_2281338C0(0, *(v23 + 2) + 1, 1, v23);
            }

            v30 = *(v23 + 2);
            v29 = *(v23 + 3);
            if (v30 >= v29 >> 1)
            {
              v23 = sub_2281338C0((v29 > 1), v30 + 1, 1, v23);
            }

            *(v23 + 2) = v30 + 1;
            v24 = &v23[16 * v30];
            *(v24 + 4) = v26;
            *(v24 + 5) = v28;
            v8 = v55;
          }

          v21 += v56;
          --v20;
        }

        while (v20);

        a1 = v46;
        a2 = v45;
      }

      else
      {

        v23 = MEMORY[0x277D84F90];
      }

      v60 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
      sub_2280D3E0C(&qword_2813C4678, &qword_27D81EB10, &unk_22813DB80, MEMORY[0x277D83958]);
      v34 = sub_22813925C();
      v36 = v35;

      (*(*(v50 - 8) + 8))(a1);
      (*(v8 + 8))(v53, v59);
      v37 = v48;
      *a2 = v49;
      *(a2 + 8) = v37;
      *(a2 + 16) = 5;
      v38 = type metadata accessor for PriorityModelSession.Input(0);
      result = (*(v51 + 32))(a2 + v38[6], v54, v52);
      v39 = (a2 + v38[7]);
      *v39 = 0;
      v39[1] = 0xE000000000000000;
      v40 = (a2 + v38[8]);
      *v40 = 0;
      v40[1] = 0xE000000000000000;
      v41 = (a2 + v38[9]);
      *v41 = 0;
      v41[1] = 0xE000000000000000;
      v42 = (a2 + v38[10]);
      *v42 = v34;
      v42[1] = v36;
      v43 = (a2 + v38[11]);
      *v43 = 0;
      v43[1] = 0xE000000000000000;
      *(a2 + v38[12]) = 1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v31 = swift_allocObject();
    *(v31 + 16) = 12;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0;
    v32 = sub_227FF9AA4(0, 0xD000000000000079, 0x80000002281442B0, 418, sub_2280D4828, v31);
    sub_227FE7384();
    swift_allocError();
    *v33 = 12;
    *(v33 + 8) = v32;
    swift_willThrow();
    return (*(*(v13 - 8) + 8))(a1, v13);
  }

  return result;
}

uint64_t sub_2280CD3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2280CD49C;

  return PriorityModelSession.performInferenceInternal(input:requestInfo:signalCollector:)(a1, a3, a4, a5);
}

uint64_t sub_2280CD49C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t PriorityModelSession.performInferenceInternal(input:requestInfo:signalCollector:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[18] = a4;
  v5[19] = v4;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF0, &qword_22813E230);
  v5[20] = swift_task_alloc();
  v6 = sub_228138DDC();
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF88, &qword_22813FF40);
  v5[25] = swift_task_alloc();
  type metadata accessor for GMSModelInfo(0);
  v5[26] = swift_task_alloc();
  v7 = sub_228136F8C();
  v5[27] = v7;
  v5[28] = *(v7 - 8);
  v5[29] = swift_task_alloc();
  v8 = sub_2281371EC();
  v5[30] = v8;
  v5[31] = *(v8 - 8);
  v5[32] = swift_task_alloc();
  type metadata accessor for SignpostToken(0);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC50, &unk_228140BB0);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v9 = type metadata accessor for PriorityModelSession.Input(0);
  v5[38] = v9;
  v10 = *(v9 - 8);
  v5[39] = v10;
  v5[40] = *(v10 + 64);
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80);
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v11 = sub_22813882C();
  v5[56] = v11;
  v5[57] = *(v11 - 8);
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  v12 = sub_22813716C();
  v5[62] = v12;
  v5[63] = *(v12 - 8);
  v5[64] = swift_task_alloc();
  v5[65] = swift_task_alloc();
  v5[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280CDA70, 0, 0);
}

uint64_t sub_2280CDA70()
{
  v50 = v0;
  v1 = objc_opt_self();
  *(v0 + 536) = v1;

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  v2 = byte_2813C4629;
  *(v0 + 704) = byte_2813C4629;
  if (v2 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v3 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v3 = &qword_2813C76F8;
  }

  v4 = *(*v3 + 240);
  v5 = *(*v3 + 248);
  v6 = *(*v3 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  v7 = byte_2813C4638;
  *(v0 + 705) = byte_2813C4638;
  if (v7 == 1)
  {
    v5(&v48, v6);

    if ((v48 & 1) == 0)
    {
LABEL_14:
      if (qword_2813C49A8 != -1)
      {
        swift_once();
      }

      v8 = __swift_project_value_buffer(*(v0 + 448), qword_2813C89F0);
      if (qword_2813C49C8 != -1)
      {
        swift_once();
      }

      if ((byte_2813C49D0 & 1) == 0)
      {
        if (qword_2813C4988 != -1)
        {
          swift_once();
        }

        v8 = __swift_project_value_buffer(*(v0 + 448), qword_2813C4990);
      }

      v9 = (v0 + 488);
      (*(*(v0 + 456) + 16))(*(v0 + 488), v8, *(v0 + 448));
      v10 = sub_22813880C();
      v11 = sub_2281396BC();
      if (!os_log_type_enabled(v10, v11))
      {
        goto LABEL_44;
      }

      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "checkSupportedLanguage skipped; internal supportedLanguageCheckEnabled setting is false";
LABEL_43:
      _os_log_impl(&dword_227FC3000, v10, v11, v13, v12, 2u);
      MEMORY[0x22AAB28A0](v12, -1, -1);
LABEL_44:
      v26 = *v9;
      v27 = *(v0 + 448);
      v28 = *(v0 + 456);

      (*(v28 + 8))(v26, v27);
      sub_2281370CC();
      if (qword_2813C49D8 != -1)
      {
        swift_once();
      }

      v29 = *(v0 + 528);
      v31 = *(v0 + 504);
      v30 = *(v0 + 512);
      v32 = *(v0 + 496);
      *(v0 + 568) = __swift_project_value_buffer(*(v0 + 448), qword_2813C8A08);
      (*(v31 + 16))(v30, v29, v32);
      v33 = sub_22813880C();
      v34 = sub_2281396CC();
      v35 = os_log_type_enabled(v33, v34);
      v37 = *(v0 + 504);
      v36 = *(v0 + 512);
      v38 = *(v0 + 496);
      if (v35)
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v49 = v40;
        *v39 = 136446210;
        v47 = sub_228136FEC();
        v42 = v41;
        v43 = *(v37 + 8);
        v43(v36, v38);
        v44 = sub_227FCC340(v47, v42, &v49);

        *(v39 + 4) = v44;
        _os_log_impl(&dword_227FC3000, v33, v34, "Locale used for inference: %{public}s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm_11(v40);
        MEMORY[0x22AAB28A0](v40, -1, -1);
        MEMORY[0x22AAB28A0](v39, -1, -1);
      }

      else
      {

        v43 = *(v37 + 8);
        v43(v36, v38);
      }

      *(v0 + 576) = v43;
      v45 = swift_task_alloc();
      *(v0 + 584) = v45;
      *v45 = v0;
      v45[1] = sub_2280CE870;
      v46 = *(v0 + 128);

      return sub_2280D375C(v46);
    }
  }

  else
  {

    if ((v4 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if (!sub_2280D1304())
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(*(v0 + 448), qword_2813C89F0);
    if (qword_2813C49C8 != -1)
    {
      swift_once();
    }

    if ((byte_2813C49D0 & 1) == 0)
    {
      if (qword_2813C4988 != -1)
      {
        swift_once();
      }

      v25 = __swift_project_value_buffer(*(v0 + 448), qword_2813C4990);
    }

    v9 = (v0 + 480);
    (*(*(v0 + 456) + 16))(*(v0 + 480), v25, *(v0 + 448));
    v10 = sub_22813880C();
    v11 = sub_2281396BC();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_44;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "checkSupportedLanguage skipped; the input is not long enough for accurate language identification";
    goto LABEL_43;
  }

  v14 = *(v0 + 440);
  v15 = PriorityModelSession.Input.flatten()();
  *(v0 + 544) = v15._object;
  v16 = sub_22813713C();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  if (qword_2813C7030 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for ModelBundleIdentifier(0);
  v18 = __swift_project_value_buffer(v17, qword_2813C8AF0);
  if (qword_2813C49D8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(*(v0 + 448), qword_2813C8A08);
  v20 = swift_task_alloc();
  *(v0 + 552) = v20;
  *v20 = v0;
  v20[1] = sub_2280CE2B4;
  v21 = *(v0 + 520);
  v22 = *(v0 + 440);
  v23 = *(v0 + 136);

  return sub_2280C76F8(v21, v15._countAndFlagsBits, v15._object, v22, v18, v23, v19);
}

uint64_t sub_2280CE2B4()
{
  v2 = *v1;
  *(*v1 + 560) = v0;

  sub_2280D44A8(*(v2 + 440), &qword_27D81E778, &qword_22813BC80);

  if (v0)
  {
    v3 = sub_2280CE668;
  }

  else
  {
    v3 = sub_2280CE414;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2280CE414()
{
  v22 = v0;
  (*(v0[63] + 32))(v0[66], v0[65], v0[62]);
  if (qword_2813C49D8 != -1)
  {
    swift_once();
  }

  v1 = v0[66];
  v3 = v0[63];
  v2 = v0[64];
  v4 = v0[62];
  v0[71] = __swift_project_value_buffer(v0[56], qword_2813C8A08);
  (*(v3 + 16))(v2, v1, v4);
  v5 = sub_22813880C();
  v6 = sub_2281396CC();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[63];
  v8 = v0[64];
  v10 = v0[62];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136446210;
    v20 = sub_228136FEC();
    v14 = v13;
    v15 = *(v9 + 8);
    v15(v8, v10);
    v16 = sub_227FCC340(v20, v14, &v21);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_227FC3000, v5, v6, "Locale used for inference: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_11(v12);
    MEMORY[0x22AAB28A0](v12, -1, -1);
    MEMORY[0x22AAB28A0](v11, -1, -1);
  }

  else
  {

    v15 = *(v9 + 8);
    v15(v8, v10);
  }

  v0[72] = v15;
  v17 = swift_task_alloc();
  v0[73] = v17;
  *v17 = v0;
  v17[1] = sub_2280CE870;
  v18 = v0[16];

  return sub_2280D375C(v18);
}

uint64_t sub_2280CE668()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2280CE870()
{
  *(*v1 + 592) = v0;

  if (v0)
  {
    v2 = sub_2280CED64;
  }

  else
  {
    v2 = sub_2280CE984;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2280CE984()
{
  if (v0[9]._countAndFlagsBits)
  {
    countAndFlagsBits = v0[9]._countAndFlagsBits;
  }

  else
  {
    type metadata accessor for TelemetrySignalCollector();
    swift_allocObject();
    countAndFlagsBits = sub_2280D5C74();
  }

  v0[37]._object = countAndFlagsBits;
  v2 = v0[37]._countAndFlagsBits;
  object = v0[26]._object;
  v5 = v0[8]._countAndFlagsBits;
  v4 = v0[8]._object;

  sub_2280D1714(v5, v4, object);
  if (v2)
  {
    v6 = v0[36]._countAndFlagsBits;
    v7 = v0[33]._countAndFlagsBits;
    v8 = v0[31]._countAndFlagsBits;

    v6(v7, v8);

    v9 = v0->_object;

    return v9();
  }

  else
  {
    v11 = v0[9]._object;
    v12 = PriorityModelSession.Input.flatten()();
    v0[38] = v12;
    v13 = (*(v11[7] + 16) + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_model);
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    v14 = off_283B5ECA8;
    v15 = sub_22813755C();
    v17 = (v14 + *v14);
    v16 = swift_task_alloc();
    v0[39]._countAndFlagsBits = v16;
    *v16 = v0;
    v16[1] = sub_2280CEF88;

    return (v17)(v12._countAndFlagsBits, v12._object, v15, &off_283B5EC90);
  }
}

uint64_t sub_2280CED64()
{
  (*(v0 + 576))(*(v0 + 528), *(v0 + 496));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2280CEF88(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 632) = v1;

  if (v1)
  {

    v5 = sub_2280D0434;
  }

  else
  {
    *(v4 + 640) = a1;
    v5 = sub_2280CF0B8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2280CF0B8()
{
  v180 = v0;
  v1 = *(v0 + 640);
  v2 = *(v0 + 600);
  v3 = *(v0 + 424);
  v4 = *(v0 + 304);
  v5 = sub_22813936C();

  KeyPath = swift_getKeyPath(byte_22813FF50);
  os_unfair_lock_lock((v2 + 16));
  v7 = MEMORY[0x277D84A28];
  v179 = MEMORY[0x277D84A28];
  v178 = v5;

  sub_2280449E4(&v178, KeyPath, (v2 + 24));
  os_unfair_lock_unlock((v2 + 16));

  v8 = swift_getKeyPath(byte_22813FF78);
  os_unfair_lock_lock((v2 + 16));
  v179 = v7;
  v178 = v1;

  sub_2280449E4(&v178, v8, (v2 + 24));
  os_unfair_lock_unlock((v2 + 16));

  v176 = v4;
  v9 = sub_22813936C();
  os_unfair_lock_lock((v2 + 16));
  v179 = v7;
  v178 = v9;

  sub_2280449E4(&v178, v10, (v2 + 24));
  os_unfair_lock_unlock((v2 + 16));

  v11 = 1 << *(v3 + 16);
  if ((v11 & 9) != 0)
  {
    v14 = sub_22813936C();
    v15 = swift_getKeyPath(aP);
  }

  else
  {
    if ((v11 & 0x12) == 0)
    {
      goto LABEL_6;
    }

    v12 = sub_22813936C();
    v13 = swift_getKeyPath(byte_228140078);
    os_unfair_lock_lock((v2 + 16));
    v179 = v7;
    v178 = v12;

    sub_2280449E4(&v178, v13, (v2 + 24));
    os_unfair_lock_unlock((v2 + 16));

    v14 = sub_22813936C();
    v15 = swift_getKeyPath(byte_2281400A0);
  }

  v16 = v15;
  os_unfair_lock_lock((v2 + 16));
  v179 = v7;
  v178 = v14;

  sub_2280449E4(&v178, v16, (v2 + 24));
  os_unfair_lock_unlock((v2 + 16));

LABEL_6:
  sub_2280D4528(*(v0 + 424), *(v0 + 416), type metadata accessor for PriorityModelSession.Input);
  v17 = sub_22813880C();
  v18 = sub_2281396BC();
  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 416);
  if (v19)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v178 = v22;
    *v21 = 136446210;
    v23 = *v20;
    v24 = v20[1];

    sub_2280D3D04(v20, type metadata accessor for PriorityModelSession.Input);
    v25 = sub_227FCC340(v23, v24, &v178);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_227FC3000, v17, v18, "Start urgency classification task for ID %{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_11(v22);
    MEMORY[0x22AAB28A0](v22, -1, -1);
    MEMORY[0x22AAB28A0](v21, -1, -1);
  }

  else
  {

    sub_2280D3D04(v20, type metadata accessor for PriorityModelSession.Input);
  }

  v26 = *(v0 + 704);

  if (v26 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v27 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v27 = &qword_2813C76F8;
  }

  v28 = *(v0 + 705);
  v29 = *(v0 + 536);
  v30 = *v27;
  v31 = *(*v27 + 32);
  v32 = *(*v27 + 40);
  v33 = *(*v27 + 2208);

  if (v28 == 1)
  {
    v32(&v178, v33);

    if ((v178 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {

    if (!v31)
    {
LABEL_22:

      goto LABEL_23;
    }
  }

  v34 = *(v0 + 705);
  v35 = *(v0 + 536);
  v36 = *(v30 + 72);
  v37 = *(v30 + 80);
  v38 = *(v30 + 2208);

  if (v34 == 1)
  {
    v37(&v178, v38);

    if ((v178 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {

    if ((v36 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (qword_2813C49B8 != -1)
  {
    swift_once();
  }

  if (byte_2813C49C1 == 1)
  {
    v63 = *(v0 + 568);
  }

  else
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v63 = __swift_project_value_buffer(*(v0 + 448), qword_2813C4990);
  }

  v88 = *(*(v0 + 456) + 16);
  v88(*(v0 + 472), v63, *(v0 + 448));
  if (qword_2813C49B0 != -1)
  {
    swift_once();
  }

  if (byte_27D81EEF2 == 1)
  {
    (*(*(v0 + 456) + 32))(*(v0 + 464), *(v0 + 472), *(v0 + 448));
  }

  else
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v90 = *(v0 + 464);
    v89 = *(v0 + 472);
    v91 = *(v0 + 448);
    v92 = *(v0 + 456);
    v93 = __swift_project_value_buffer(v91, qword_2813C4990);
    v88(v90, v93, v91);
    (*(v92 + 8))(v89, v91);
  }

  v94 = *(v0 + 424);
  v95 = *(v0 + 400);
  v97 = *(v0 + 384);
  v96 = *(v0 + 392);
  v99 = *(v0 + 368);
  v98 = *(v0 + 376);
  v100 = *(v0 + 360);
  v170 = *(v0 + 352);
  sub_2280D4528(v94, *(v0 + 408), type metadata accessor for PriorityModelSession.Input);
  sub_2280D4528(v94, v95, type metadata accessor for PriorityModelSession.Input);
  sub_2280D4528(v94, v96, type metadata accessor for PriorityModelSession.Input);
  sub_2280D4528(v94, v97, type metadata accessor for PriorityModelSession.Input);
  sub_2280D4528(v94, v98, type metadata accessor for PriorityModelSession.Input);
  sub_2280D4528(v94, v99, type metadata accessor for PriorityModelSession.Input);
  sub_2280D4528(v94, v100, type metadata accessor for PriorityModelSession.Input);
  sub_2280D4528(v94, v170, type metadata accessor for PriorityModelSession.Input);
  v101 = sub_22813880C();
  v102 = sub_2281396CC();
  if (os_log_type_enabled(v101, v102))
  {
    v171 = v102;
    loga = v101;
    v104 = *(v0 + 400);
    v103 = *(v0 + 408);
    v105 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    v178 = v168;
    *v105 = 136448003;
    v106 = *v103;
    v107 = v103[1];

    sub_2280D3D04(v103, type metadata accessor for PriorityModelSession.Input);
    v108 = sub_227FCC340(v106, v107, &v178);

    *(v105 + 4) = v108;
    *(v105 + 12) = 2082;
    v109 = *(v104 + 16);
    v110 = 0x7373654D6C69616DLL;
    v111 = 0x80000002281438C0;
    v112 = 0x80000002281438E0;
    if (v109 == 4)
    {
      v113 = 0xD000000000000012;
    }

    else
    {
      v113 = 0xD000000000000011;
    }

    if (v109 != 4)
    {
      v112 = 0x8000000228143900;
    }

    if (v109 == 3)
    {
      v114 = 0xD000000000000011;
    }

    else
    {
      v114 = v113;
    }

    if (v109 != 3)
    {
      v111 = v112;
    }

    v115 = 0xEC0000006E6F6974;
    v116 = 0x6163696669746F6ELL;
    if (v109 != 1)
    {
      v116 = 0x7373654D74786574;
      v115 = 0xEB00000000656761;
    }

    if (*(v104 + 16))
    {
      v110 = v116;
    }

    else
    {
      v115 = 0xEB00000000656761;
    }

    if (*(v104 + 16) <= 2u)
    {
      v117 = v110;
    }

    else
    {
      v117 = v114;
    }

    if (*(v104 + 16) <= 2u)
    {
      v118 = v115;
    }

    else
    {
      v118 = v111;
    }

    v165 = *(v0 + 448);
    v166 = *(v0 + 464);
    v119 = *(v0 + 392);
    v120 = *(v0 + 384);
    v155 = *(v0 + 376);
    v157 = *(v0 + 368);
    v159 = *(v0 + 360);
    v161 = *(v0 + 352);
    v163 = *(v0 + 456);
    v121 = *(v0 + 304);
    sub_2280D3D04(*(v0 + 400), type metadata accessor for PriorityModelSession.Input);
    v122 = sub_227FCC340(v117, v118, &v178);

    *(v105 + 14) = v122;
    *(v105 + 22) = 2082;
    sub_2280D4590(&qword_27D81EF90, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v123 = sub_22813998C();
    v125 = v124;
    sub_2280D3D04(v119, type metadata accessor for PriorityModelSession.Input);
    v126 = sub_227FCC340(v123, v125, &v178);

    *(v105 + 24) = v126;
    *(v105 + 32) = 2082;
    v127 = (v120 + v121[11]);
    v128 = *v127;
    v129 = v127[1];

    sub_2280D3D04(v120, type metadata accessor for PriorityModelSession.Input);
    v130 = sub_227FCC340(v128, v129, &v178);

    *(v105 + 34) = v130;
    *(v105 + 42) = 2081;
    v131 = (v155 + v121[7]);
    v132 = *v131;
    v133 = v131[1];

    sub_2280D3D04(v155, type metadata accessor for PriorityModelSession.Input);
    v134 = sub_227FCC340(v132, v133, &v178);

    *(v105 + 44) = v134;
    *(v105 + 52) = 2081;
    v135 = (v157 + v121[8]);
    v136 = *v135;
    v137 = v135[1];

    sub_2280D3D04(v157, type metadata accessor for PriorityModelSession.Input);
    v138 = sub_227FCC340(v136, v137, &v178);

    *(v105 + 54) = v138;
    *(v105 + 62) = 2081;
    v139 = (v159 + v121[9]);
    v140 = *v139;
    v141 = v139[1];

    sub_2280D3D04(v159, type metadata accessor for PriorityModelSession.Input);
    v142 = sub_227FCC340(v140, v141, &v178);

    *(v105 + 64) = v142;
    *(v105 + 72) = 2081;
    v143 = (v161 + *(v176 + 40));
    v144 = *v143;
    v145 = v143[1];

    sub_2280D3D04(v161, type metadata accessor for PriorityModelSession.Input);
    v146 = sub_227FCC340(v144, v145, &v178);

    *(v105 + 74) = v146;
    _os_log_impl(&dword_227FC3000, loga, v171, "\n--------------------------------------------------------------------------------\n# Input for request %{public}s\n--------------------------------------------------------------------------------\nType: %{public}s\nDateTime: %{public}s\nBundleID: %{public}s\nSubject: %{private}s\nTitle: %{private}s\nSubtitle: %{private}s\nBody: %{private}s\n--------------------------------------------------------------------------------", v105, 0x52u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v168, -1, -1);
    MEMORY[0x22AAB28A0](v105, -1, -1);

    (*(v163 + 8))(v166, v165);
  }

  else
  {
    v147 = *(v0 + 456);
    logb = *(v0 + 448);
    v177 = *(v0 + 464);
    v169 = *(v0 + 400);
    v172 = *(v0 + 408);
    v149 = *(v0 + 384);
    v148 = *(v0 + 392);
    v150 = *(v0 + 368);
    v151 = *(v0 + 376);
    v152 = *(v0 + 352);
    v153 = *(v0 + 360);

    sub_2280D3D04(v152, type metadata accessor for PriorityModelSession.Input);
    sub_2280D3D04(v153, type metadata accessor for PriorityModelSession.Input);
    sub_2280D3D04(v150, type metadata accessor for PriorityModelSession.Input);
    sub_2280D3D04(v151, type metadata accessor for PriorityModelSession.Input);
    sub_2280D3D04(v149, type metadata accessor for PriorityModelSession.Input);
    sub_2280D3D04(v148, type metadata accessor for PriorityModelSession.Input);
    sub_2280D3D04(v169, type metadata accessor for PriorityModelSession.Input);
    sub_2280D3D04(v172, type metadata accessor for PriorityModelSession.Input);
    (*(v147 + 8))(v177, logb);
  }

LABEL_23:
  if (qword_2813C4938 != -1)
  {
    swift_once();
  }

  v39 = *(v0 + 424);
  v40 = *(v0 + 344);
  v41 = *(v0 + 312);
  v164 = *(v0 + 288);
  v42 = *(v0 + 272);
  v43 = *(v0 + 256);
  v156 = *(v0 + 304);
  v158 = *(v0 + 248);
  v160 = *(v0 + 296);
  v162 = *(v0 + 240);
  v45 = *(v0 + 128);
  v44 = *(v0 + 136);
  v167 = type metadata accessor for Signpost(0);
  __swift_project_value_buffer(v167, qword_2813C8900);
  sub_2280D399C(v44, v0 + 16);
  sub_2280D4528(v45, v40, type metadata accessor for PriorityModelSession.Input);
  v46 = (*(v41 + 80) + 56) & ~*(v41 + 80);
  v47 = swift_allocObject();
  sub_227FFA05C((v0 + 16), v47 + 16);
  log = v46;
  sub_2280D3C84(v40, v47 + v46, type metadata accessor for PriorityModelSession.Input);
  v48 = swift_allocObject();
  *(v48 + 16) = sub_2280D3A00;
  *(v48 + 24) = v47;

  sub_2281324C8();
  PriorityModelSession.Input.flatten()();
  v49 = *(v156 + 24);
  sub_2281371DC();
  static DateUtils.parseDateFromMessage(message:referenceDate:referenceTimeZone:)(v39 + v49, v43, v160);

  (*(v158 + 8))(v43, v162);
  sub_2281324D8();
  sub_2280D3D04(v42, type metadata accessor for SignpostToken);

  sub_2280D43C4(v160, v164, &qword_27D81EC50, &unk_228140BB0);
  v50 = sub_22813880C();
  v51 = sub_2281396BC();
  v52 = os_log_type_enabled(v50, v51);
  v53 = *(v0 + 288);
  if (v52)
  {
    v54 = *(v0 + 280);
    v55 = *(v0 + 216);
    v56 = *(v0 + 224);
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v178 = v58;
    *v57 = 136446210;
    sub_2280D43C4(v53, v54, &qword_27D81EC50, &unk_228140BB0);
    v59 = (*(v56 + 48))(v54, 1, v55);
    v60 = *(v0 + 280);
    if (v59 == 1)
    {
      sub_2280D44A8(*(v0 + 280), &qword_27D81EC50, &unk_228140BB0);
      v61 = 0xE300000000000000;
      v62 = 7104878;
    }

    else
    {
      v64 = *(v0 + 216);
      v65 = *(v0 + 224);
      v62 = sub_228136F0C();
      v61 = v66;
      (*(v65 + 8))(v60, v64);
    }

    sub_2280D44A8(*(v0 + 288), &qword_27D81EC50, &unk_228140BB0);
    v67 = sub_227FCC340(v62, v61, &v178);

    *(v57 + 4) = v67;
    _os_log_impl(&dword_227FC3000, v50, v51, "eventDate: %{public}s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_11(v58);
    MEMORY[0x22AAB28A0](v58, -1, -1);
    MEMORY[0x22AAB28A0](v57, -1, -1);
  }

  else
  {

    sub_2280D44A8(v53, &qword_27D81EC50, &unk_228140BB0);
  }

  sub_228103A8C(*(v0 + 424), *(v0 + 296), &v178);
  v68 = sub_2281040F0(&v178);
  v70 = v69;
  *(v0 + 648) = v69;
  v71 = sub_22813880C();
  v72 = sub_2281396BC();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v178 = v74;
    *v73 = 136446210;
    *(v73 + 4) = sub_227FCC340(v68, v70, &v178);
    _os_log_impl(&dword_227FC3000, v71, v72, "eventTimeBucket: %{public}s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_11(v74);
    MEMORY[0x22AAB28A0](v74, -1, -1);
    MEMORY[0x22AAB28A0](v73, -1, -1);
  }

  sub_228136F6C();
  if (qword_2813C4930 != -1)
  {
    swift_once();
  }

  v75 = *(v0 + 336);
  v77 = *(v0 + 128);
  v76 = *(v0 + 136);
  *(v0 + 656) = __swift_project_value_buffer(v167, qword_2813C88E8);
  sub_2280D399C(v76, v0 + 56);
  sub_2280D4528(v77, v75, type metadata accessor for PriorityModelSession.Input);
  v78 = swift_allocObject();
  *(v0 + 664) = v78;
  sub_227FFA05C((v0 + 56), v78 + 16);
  sub_2280D3C84(v75, log + v78, type metadata accessor for PriorityModelSession.Input);
  v79 = swift_allocObject();
  *(v0 + 672) = v79;
  *(v79 + 16) = sub_2280D47E8;
  *(v79 + 24) = v78;

  sub_2281324C4();
  if (qword_2813C8758 != -1)
  {
    swift_once();
  }

  v80 = *(v0 + 424);
  v81 = *(v0 + 152);
  v82 = *(v0 + 136);
  v83 = swift_task_alloc();
  *(v0 + 680) = v83;
  v83[2] = v81;
  v83[3] = v80;
  v83[4] = v82;
  v83[5] = v68;
  v83[6] = v70;
  v84 = swift_task_alloc();
  *(v0 + 688) = v84;
  *v84 = v0;
  v84[1] = sub_2280D0688;
  v85 = *(v0 + 528);
  v87 = *(v0 + 192);
  v86 = *(v0 + 200);
  v182 = 192;
  v183 = v87;

  return MEMORY[0x282200908](v86, v85, &unk_22813FFD0, v83, 0, 0, 0xD00000000000002BLL, 0x8000000228144280);
}

uint64_t sub_2280D0434()
{
  v1 = v0[72];
  v2 = v0[66];
  v3 = v0[62];
  v4 = v0[53];

  sub_2280D3D04(v4, type metadata accessor for PriorityModelSession.Input);
  v1(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2280D0688()
{
  *(*v1 + 696) = v0;

  if (v0)
  {
    v2 = sub_2280D0F84;
  }

  else
  {

    v2 = sub_2280D07A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_2280D07A4()
{
  v55 = v0;
  v1 = v0[75];
  v52 = v0[53];
  v51 = v0[41];
  v2 = v0[33];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[24];
  sub_2281324D4();
  sub_2280D3D04(v2, type metadata accessor for SignpostToken);

  v6 = *v3;
  sub_2280D3C84(&v3[*(v5 + 48)], v4, type metadata accessor for GMSModelInfo);
  KeyPath = swift_getKeyPath("0\x1BnU");
  os_unfair_lock_lock((v1 + 16));
  v54 = MEMORY[0x277D839B0];
  LOBYTE(v53[0]) = 1;

  sub_2280449FC(v53, KeyPath, (v1 + 24));
  os_unfair_lock_unlock((v1 + 16));

  v8 = swift_getKeyPath(byte_228140000);
  os_unfair_lock_lock((v1 + 16));
  v9 = MEMORY[0x277D84A28];
  v54 = MEMORY[0x277D84A28];
  v53[0] = v6;

  sub_2280449E4(v53, v8, (v1 + 24));
  os_unfair_lock_unlock((v1 + 16));

  sub_228136F4C();
  v11 = v10 * -1000.0;
  v12 = swift_getKeyPath(byte_228140028);
  os_unfair_lock_lock((v1 + 16));
  v54 = MEMORY[0x277D839F8];
  *v53 = v11;

  sub_228044BA4(v53, v12, (v1 + 24));
  os_unfair_lock_unlock((v1 + 16));

  if (v6)
  {
    v13 = 1.0;
  }

  else
  {
    v13 = 0.0;
  }

  sub_2280D4528(v52, v51, type metadata accessor for PriorityModelSession.Input);
  v14 = sub_22813880C();
  v15 = sub_2281396BC();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[41];
  if (v16)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v53[0] = v19;
    *v18 = 134218242;
    *(v18 + 4) = v13;
    *(v18 + 12) = 2082;
    v20 = *v17;
    v21 = v17[1];

    sub_2280D3D04(v17, type metadata accessor for PriorityModelSession.Input);
    v22 = sub_227FCC340(v20, v21, v53);

    *(v18 + 14) = v22;
    _os_log_impl(&dword_227FC3000, v14, v15, "End urgency classification task (urgency: %f, privacy: .public) for ID %{public}s", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm_11(v19);
    MEMORY[0x22AAB28A0](v19, -1, -1);
    MEMORY[0x22AAB28A0](v18, -1, -1);
  }

  else
  {

    sub_2280D3D04(v17, type metadata accessor for PriorityModelSession.Input);
  }

  v23 = v0[87];
  v24 = v0[75];
  v25 = v0[54];
  v26 = swift_getKeyPath(byte_228140050);
  os_unfair_lock_lock((v24 + 16));
  v54 = v9;
  v53[0] = v13;

  sub_2280449E4(v53, v26, (v24 + 24));
  os_unfair_lock_unlock((v24 + 16));

  sub_22813715C();
  v27 = sub_22813713C();
  (*(*(v27 - 8) + 56))(v25, 0, 1, v27);
  v28 = swift_getKeyPath(byte_22813FF78);
  os_unfair_lock_lock((v24 + 16));
  v29 = sub_2280D2D48((v24 + 24), v28, v9);
  v31 = v0[75];
  if (v23)
  {

    os_unfair_lock_unlock(v31 + 4);
  }

  else
  {
    v32 = v29;
    v33 = v30;
    v50 = v0[66];
    v48 = v0[63];
    v49 = v0[62];
    v41 = v0[54];
    v47 = v0[53];
    v46 = v0[37];
    v43 = v0[28];
    v34 = v0[26];
    v44 = v0[27];
    v45 = v0[29];
    v36 = v0[22];
    v35 = v0[23];
    v37 = v0[21];
    v42 = v0[20];
    os_unfair_lock_unlock(v31 + 4);

    if (v33)
    {
      v38 = 0;
    }

    else
    {
      v38 = v32;
    }

    v39 = swift_task_alloc();
    *(v39 + 16) = v34;
    *(v39 + 24) = v41;
    *(v39 + 32) = v38;
    *(v39 + 40) = v33 & 1;
    *(v39 + 48) = 0;
    *(v39 + 56) = 1;
    sub_228138DCC();

    sub_2280D44A8(v41, &qword_27D81E778, &qword_22813BC80);
    (*(v36 + 16))(v42, v35, v37);
    (*(v36 + 56))(v42, 0, 1, v37);
    sub_228138ABC();

    (*(v36 + 8))(v35, v37);
    (*(v43 + 8))(v45, v44);
    sub_2280D44A8(v46, &qword_27D81EC50, &unk_228140BB0);
    sub_2280D3D04(v34, type metadata accessor for GMSModelInfo);
    sub_2280D3D04(v47, type metadata accessor for PriorityModelSession.Input);
    (*(v48 + 8))(v50, v49);

    v40 = v0[1];

    v40();
  }
}

uint64_t sub_2280D0F84()
{
  v1 = v0[87];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[63];
  v15 = v0[62];
  v16 = v0[66];
  v14 = v0[53];
  v13 = v0[37];
  v5 = v0[33];
  v6 = v0[28];
  v12 = v0[29];
  v11 = v0[27];

  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = sub_2280D47E8;
  v7[4] = v3;
  swift_beginAccess();
  *(v2 + 16) = sub_2280D3C78;
  *(v2 + 24) = v7;

  v8 = v1;

  swift_willThrow();
  sub_2281324D4();
  sub_2280D3D04(v5, type metadata accessor for SignpostToken);

  (*(v6 + 8))(v12, v11);
  sub_2280D44A8(v13, &qword_27D81EC50, &unk_228140BB0);
  sub_2280D3D04(v14, type metadata accessor for PriorityModelSession.Input);
  (*(v4 + 8))(v16, v15);

  v9 = v0[1];

  return v9();
}

BOOL sub_2280D1304()
{
  v0 = PriorityModelSession.Input.flatten()();
  v1 = 0xE000000000000000;
  v21 = 0;
  v22 = 0xE000000000000000;
  v2 = (v0._object >> 56) & 0xF;
  if ((v0._object & 0x2000000000000000) == 0)
  {
    v2 = v0._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v18 = v0;
  v19 = 0;
  v20 = v2;
  v3 = sub_2281393DC();
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    do
    {
      if ((sub_2281036C8(v5, v6) & 1) == 0)
      {
        MEMORY[0x22AAB1960](v5, v6);
      }

      v5 = sub_2281393DC();
      v6 = v7;
    }

    while (v7);
    v8 = v21;
    v1 = v22;
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v10 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v10 = &qword_2813C76F8;
  }

  countAndFlagsBits = *(*v10 + 360);
  v12 = *(*v10 + 368);
  v13 = *(*v10 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v12(&v18, v13);

    countAndFlagsBits = v18._countAndFlagsBits;
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  *(inited + 32) = v8;
  v15 = inited + 32;
  *(inited + 40) = v1;
  v16 = sub_2280AB048(countAndFlagsBits, inited, 0);
  swift_setDeallocating();
  sub_227FE5D7C(v15);
  return v16;
}

uint64_t sub_2280D15DC(void *a1, uint64_t a2)
{
  BYTE8(v8) = 0;
  sub_22813988C();
  MEMORY[0x22AAB1970](0xD000000000000014, 0x80000002281441C0);
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  MEMORY[0x22AAB1970](v6);

  MEMORY[0x22AAB1970](0x6E65746E6F63202CLL, 0xEF203A6570795474);
  *&v8 = *(a2 + 16);
  sub_2281398EC();
  MEMORY[0x22AAB1970](0xD000000000000015, 0x8000000228146590);
  return *(&v8 + 1);
}

void sub_2280D1714(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a3;
  v6 = sub_228136CDC();
  v69 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PriorityModelSession.Input(0);
  v10 = sub_2280A7954(*&a1[v9[10]], *&a1[v9[10] + 8], a2, 0);
  if (!v3)
  {
    v12 = v9[7];
    v13 = &a1[v9[8]];
    v14 = *v13;
    v15 = *(v13 + 1);
    v16 = &a1[v9[9]];
    v17 = *(v16 + 1);
    v62 = *v16;
    v63 = v14;
    v19 = *&a1[v12];
    v18 = *&a1[v12 + 8];
    v20 = a1[16];
    v60 = v10;
    v64 = v11;
    if (((1 << v20) & 9) != 0)
    {
      v61 = v15;
      v22 = v18;

      v23 = sub_2280A7954(v19, v22, a2, 0);
      v58 = 0;
      v59 = v23;
      v57 = v20;
      v65 = v6;
      v55 = v17;
      v27 = v24;
    }

    else
    {
      v59 = v19;
      if (((1 << v20) & 0x12) != 0)
      {
        v21 = v18;

        v63 = sub_2280A7954(v63, v15, a2, 0);
        v61 = v25;
        v62 = sub_2280A7954(v62, v17, a2, 0);
        v57 = v20;
        v65 = v6;
        v58 = 0;
        v55 = v26;
        v27 = v21;
      }

      else
      {
        v57 = v20;
        v65 = v6;
        v58 = 0;
        v27 = v18;

        v55 = v17;

        v61 = v15;
      }
    }

    v28 = *(a1 + 1);
    v56 = *a1;
    v54 = v28;
    v29 = v9[6];
    v30 = sub_228136F8C();
    v31 = v66;
    (*(*(v30 - 8) + 16))(v66 + v29, &a1[v29], v30);
    v67 = v59;
    v68 = v27;

    sub_228136C8C();
    v32 = sub_227FDB420();
    v59 = sub_2281397AC();
    v53 = v33;
    v34 = *(v69 + 8);
    v34(v8, v65);
    v52[0] = v34;

    v67 = v63;
    v68 = v61;
    sub_228136C8C();
    v52[1] = v32;
    v69 = sub_2281397AC();
    v63 = v35;
    v34(v8, v65);

    v67 = v62;
    v68 = v55;
    sub_228136C8C();
    v36 = sub_2281397AC();
    v61 = v37;
    v62 = v36;
    v38 = v65;
    v39 = v52[0];
    (v52[0])(v8, v65);

    v67 = v60;
    v68 = v64;
    sub_228136C8C();
    v40 = sub_2281397AC();
    v60 = v41;
    v39(v8, v38);

    v42 = &a1[v9[11]];
    v44 = *v42;
    v43 = *(v42 + 1);
    LOBYTE(v42) = a1[v9[12]];
    v45 = v54;
    *v31 = v56;
    *(v31 + 8) = v45;
    *(v31 + 16) = v57;
    v46 = (v31 + v9[7]);
    *v46 = v59;
    v46[1] = v53;
    v47 = (v31 + v9[8]);
    *v47 = v69;
    v47[1] = v63;
    v48 = (v31 + v9[9]);
    *v48 = v62;
    v48[1] = v61;
    v49 = (v31 + v9[10]);
    v50 = v60;
    *v49 = v40;
    v49[1] = v50;
    v51 = (v31 + v9[11]);
    *v51 = v44;
    v51[1] = v43;
    *(v31 + v9[12]) = v42;
  }
}

Swift::String __swiftcall PriorityModelSession.Input.flatten()()
{
  v1 = type metadata accessor for PriorityModelSession.Input(0);
  v2 = (v0 + v1[8]);
  v4 = *v2;
  v3 = v2[1];
  v28 = v4;
  v29[0] = v3;
  v5 = (v0 + v1[9]);
  v6 = v5[1];
  v29[1] = *v5;
  v29[2] = v6;
  v7 = (v0 + v1[7]);
  v8 = v7[1];
  v29[3] = *v7;
  v29[4] = v8;
  v9 = (v0 + v1[10]);
  v10 = v9[1];
  v29[5] = *v9;
  v29[6] = v10;

  v13 = 0;
  v14 = MEMORY[0x277D84F90];
LABEL_2:
  if (v13 <= 4)
  {
    v15 = 4;
  }

  else
  {
    v15 = v13;
  }

  v16 = v15 + 1;
  v17 = &v29[2 * v13];
  while (1)
  {
    if (v13 == 4)
    {
      swift_arrayDestroy();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
      sub_2280D3E0C(&qword_2813C4678, &qword_27D81EB10, &unk_22813DB80, MEMORY[0x277D83958]);
      v24 = sub_22813925C();
      v26 = v25;

      isUniquelyReferenced_nonNull_native = v24;
      v12 = v26;
      goto LABEL_18;
    }

    if (v16 == ++v13)
    {
      break;
    }

    v19 = *(v17 - 1);
    v18 = *v17;
    v17 += 2;
    v20 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v20 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_228043AD4(0, *(v14 + 16) + 1, 1);
      }

      v22 = *(v14 + 16);
      v21 = *(v14 + 24);
      if (v22 >= v21 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_228043AD4((v21 > 1), v22 + 1, 1);
      }

      *(v14 + 16) = v22 + 1;
      v23 = v14 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v18;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_18:
  result._object = v12;
  result._countAndFlagsBits = isUniquelyReferenced_nonNull_native;
  return result;
}

uint64_t sub_2280D1DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  return MEMORY[0x2822009F8](sub_2280D1DEC, 0, 0);
}

uint64_t sub_2280D1DEC()
{
  v1 = v0[13];
  v2 = v0[10];
  v0[14] = *(v0[9] + 56);
  v3 = 1 << *(v2 + 16);
  if ((v3 & 9) != 0)
  {
    v4 = sub_2281359AC(v2, v0[12], v1);
    goto LABEL_5;
  }

  if ((v3 & 0x12) != 0)
  {
    v4 = sub_228135B1C(v2, v0[12], v1);
LABEL_5:
    v6 = v4;
    v7 = v5;
    goto LABEL_7;
  }

  MEMORY[0x22AAB1970](v0[12], v1);
  MEMORY[0x22AAB1970](10, 0xE100000000000000);
  MEMORY[0x22AAB1970](0x6D6954746E657645, 0xEB00000000203A65);

  v8 = type metadata accessor for PriorityModelSession.Input(0);
  MEMORY[0x22AAB1970](*(v2 + *(v8 + 40)), *(v2 + *(v8 + 40) + 8));
  MEMORY[0x22AAB1970](0x203A79646F42, 0xE600000000000000);

  v6 = 0xD000000000000023;
  v7 = 0x8000000228147F70;
LABEL_7:
  v0[15] = v7;
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_2280D1FBC;
  v10 = v0[11];

  return sub_22812DFF4(v6, v7, v10);
}

uint64_t sub_2280D1FBC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 136) = a2;
    *(v6 + 144) = a1;

    return MEMORY[0x2822009F8](sub_2280D2134, 0, 0);
  }
}

uint64_t sub_2280D2134()
{
  v0[2] = v0[18];
  v1 = v0[10];
  v0[3] = v0[17];
  v0[4] = 10;
  v0[5] = 0xE100000000000000;
  v0[6] = 4091452;
  v0[7] = 0xE300000000000000;
  sub_227FDB420();
  v2 = sub_2281397BC();
  v4 = v3;

  v0[19] = v4;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v9 = 0xD000000000000011;
      v11 = "mailMessageThread";
    }

    else
    {
      if (v7 == 4)
      {
        v8 = 0x80000002281438E0;
        v9 = 0xD000000000000012;
        goto LABEL_14;
      }

      v9 = 0xD000000000000011;
      v11 = "textMessageThread";
    }

    v8 = (v11 - 32) | 0x8000000000000000;
  }

  else
  {
    v8 = 0xEB00000000656761;
    if (v7)
    {
      if (v7 == 1)
      {
        v8 = 0xEC0000006E6F6974;
        v9 = 0x6163696669746F6ELL;
        goto LABEL_14;
      }

      v10 = 1954047348;
    }

    else
    {
      v10 = 1818845549;
    }

    v9 = v10 | 0x7373654D00000000;
  }

LABEL_14:
  v0[20] = v8;
  v12 = v0[8];
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF88, &qword_22813FF40) + 48);
  v14 = swift_task_alloc();
  v0[21] = v14;
  *v14 = v0;
  v14[1] = sub_2280D237C;
  v15 = v0[11];

  return sub_2280A39A4(v12 + v13, v2, v4, v5, v6, v15, v9, v8);
}

uint64_t sub_2280D237C(char a1)
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

    *(v4 + 176) = a1 & 1;

    return MEMORY[0x2822009F8](sub_2280D251C, 0, 0);
  }
}

uint64_t PriorityModelSession.Input.init(id:type:dateTime:subject:title:subtitle:body:bundleID:isCommunication:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v20 = *a3;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v20;
  v21 = type metadata accessor for PriorityModelSession.Input(0);
  v22 = v21[6];
  v23 = sub_228136F8C();
  result = (*(*(v23 - 8) + 32))(a9 + v22, a4, v23);
  v25 = (a9 + v21[7]);
  *v25 = a5;
  v25[1] = a6;
  v26 = (a9 + v21[8]);
  *v26 = a7;
  v26[1] = a8;
  v27 = (a9 + v21[9]);
  *v27 = a10;
  v27[1] = a11;
  v28 = (a9 + v21[10]);
  *v28 = a12;
  v28[1] = a13;
  v29 = (a9 + v21[11]);
  *v29 = a14;
  v29[1] = a15;
  *(a9 + v21[12]) = a16;
  return result;
}

void *PriorityModelSession.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm_11((v0 + 16));

  return v0;
}

SummarizationKit::PriorityModelSession::InputType_optional __swiftcall PriorityModelSession.InputType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22813995C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PriorityModelSession.InputType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7373654D6C69616DLL;
  v3 = 0xD000000000000011;
  v4 = 0xD000000000000011;
  if (v1 == 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6163696669746F6ELL;
  if (v1 != 1)
  {
    v5 = 0x7373654D74786574;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2280D27E4(uint64_t a1)
{
  sub_22813923C();
}

void sub_2280D28F8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x7373654D6C69616DLL;
  v4 = 0xD000000000000011;
  v5 = 0x80000002281438C0;
  v6 = 0x80000002281438E0;
  v7 = 0xD000000000000011;
  if (v2 == 4)
  {
    v7 = 0xD000000000000012;
  }

  else
  {
    v6 = 0x8000000228143900;
  }

  if (v2 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xEC0000006E6F6974;
  v9 = 0x6163696669746F6ELL;
  if (v2 != 1)
  {
    v9 = 0x7373654D74786574;
    v8 = 0xEB00000000656761;
  }

  if (*v1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0xEB00000000656761;
  }

  if (*v1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (*v1 <= 2u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  *a1 = v10;
  a1[1] = v11;
}

uint64_t sub_2280D29D8@<X0>(uint64_t a1@<X8>)
{
  if (qword_2813C7030 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ModelBundleIdentifier(0);
  v3 = __swift_project_value_buffer(v2, qword_2813C8AF0);
  return sub_2280D4528(v3, a1, type metadata accessor for ModelBundleIdentifier);
}

uint64_t sub_2280D2AC4@<X0>(os_unfair_lock_s **a1@<X0>, const char *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  KeyPath = swift_getKeyPath(a2);
  os_unfair_lock_lock((v6 + 16));
  v8 = sub_2280D2D48((v6 + 24), KeyPath, a3);
  v10 = v9;
  os_unfair_lock_unlock((v6 + 16));

  *a4 = v8;
  *(a4 + 8) = v10 & 1;
  return result;
}

uint64_t sub_2280D2B94@<X0>(os_unfair_lock_s **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath("0\x1BnU");
  os_unfair_lock_lock((v3 + 16));
  v5 = sub_2280D2E20((v3 + 24), KeyPath);
  os_unfair_lock_unlock((v3 + 16));

  *a2 = v5;
  return result;
}

uint64_t sub_2280D2D48(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  if (*(*a1 + 16) && (v4 = sub_2280D3358(a2, v3, *a2), (v5 & 1) != 0))
  {
    sub_227FEB0D4(*(v3 + 56) + 32 * v4, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
  v6 = swift_dynamicCast();
  v7 = v10;
  if (!v6)
  {
    return 0;
  }

  return v7;
}

uint64_t sub_2280D2E20(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(*a1 + 16) && (v3 = sub_2280D3358(a2, v2, *a2), (v4 & 1) != 0))
  {
    sub_227FEB0D4(*(v2 + 56) + 32 * v3, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_2280D2EEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16) && (v5 = sub_2280D3358(a2, v4, *a2), (v6 & 1) != 0))
  {
    sub_227FEB0D4(*(v4 + 56) + 32 * v5, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
  v7 = sub_228136F8C();
  v8 = swift_dynamicCast();
  return (*(*(v7 - 8) + 56))(a3, v8 ^ 1u, 1, v7);
}

uint64_t sub_2280D2FF8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(*a1 + 16) && (v3 = sub_2280D3358(a2, v2, *a2), (v4 & 1) != 0))
  {
    sub_227FEB0D4(*(v2 + 56) + 32 * v3, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4E0, &qword_22813AC40);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2280D30D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(*a1 + 16) && (v3 = sub_2280D3358(a2, v2, *a2), (v4 & 1) != 0))
  {
    sub_227FEB0D4(*(v2 + 56) + 32 * v3, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
  type metadata accessor for NLLanguage(0);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2280D31A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(*a1 + 16) && (v3 = sub_2280D3358(a2, v2, *a2), (v4 & 1) != 0))
  {
    sub_227FEB0D4(*(v2 + 56) + 32 * v3, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
  v5 = swift_dynamicCast();
  v6 = v9;
  if (!v5)
  {
    v6 = 0;
  }

  return v6 | ((v5 ^ 1u) << 32);
}

uint64_t sub_2280D327C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16) && (v5 = sub_2280D3358(a2, v4, *a2), (v6 & 1) != 0))
  {
    sub_227FEB0D4(*(v4 + 56) + 32 * v5, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  *(a3 + 9) = result ^ 1;
  return result;
}

unint64_t sub_2280D3358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E548, &qword_22813C000);
  v5 = sub_2281391DC();
  return sub_2280D33E4(a1, v5, a2);
}

unint64_t sub_2280D33E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 + 64;
  v4 = -1 << *(a3 + 32);
  v5 = a2 & ~v4;
  if ((*(a3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E548, &qword_22813C000);
      if (sub_22813926C())
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2280D34CC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v23 = a2;
  v21 = 0;
  v22 = 0xE000000000000000;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v9 = 0;
    v18 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v19 = a4 & 0xFFFFFFFFFFFFFFLL;
    while (1)
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        v12 = sub_22813987C();
        v14 = v13;
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v20[0] = a3;
          v20[1] = v19;
          v11 = v20 + v9;
        }

        else
        {
          v10 = v18;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v10 = sub_2281398AC();
          }

          v11 = (v10 + v9);
        }

        v12 = *v11;
        if ((*v11 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v16 = (__clz(v12 ^ 0xFF) - 24);
        if (v16 > 2)
        {
          if (v16 == 3)
          {
            v12 = ((v12 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
            v14 = 3;
          }

          else
          {
            v12 = ((v12 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
            v14 = 4;
          }

          goto LABEL_16;
        }

        if (v16 == 1)
        {
LABEL_15:
          v14 = 1;
        }

        else
        {
          v12 = v11[1] & 0x3F | ((v12 & 0x1F) << 6);
          v14 = 2;
        }
      }

LABEL_16:
      LODWORD(v20[0]) = v12;
      v15 = a1(v20);
      if (v4)
      {
      }

      if (v15)
      {
        sub_22813934C();
      }

      v9 += v14;
      if (v9 >= v5)
      {
        return v21;
      }
    }
  }

  return 0;
}

uint64_t sub_2280D369C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2280D4830;

  return sub_2280CD3D4(a1, v4, v5, v7, v6);
}

uint64_t sub_2280D377C()
{
  PriorityModelSession.Input.flatten()();

  do
  {
    sub_2281393DC();
    if (!v1)
    {

      v10 = sub_2280D4820;
      v11 = 13;
      v12 = 233;
      goto LABEL_13;
    }

    v2 = sub_22813922C();
  }

  while ((v2 & 1) != 0);

  v3 = sub_2281393DC();
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    do
    {
      if (sub_22813922C())
      {
      }

      else
      {
        v8 = sub_2281036C8(v5, v6);

        if ((v8 & 1) == 0)
        {

          v9 = *(v0 + 8);
          goto LABEL_14;
        }
      }

      v5 = sub_2281393DC();
      v6 = v7;
    }

    while (v7);
  }

  v10 = sub_2280D4824;
  v11 = 14;
  v12 = 236;
LABEL_13:
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  v14 = sub_227FF9AA4(0, 0xD000000000000079, 0x80000002281442B0, v12, v10, v13);
  sub_227FE7384();
  swift_allocError();
  *v15 = v11;
  *(v15 + 8) = v14;
  swift_willThrow();
  v9 = *(v0 + 8);
LABEL_14:

  return v9();
}

uint64_t sub_2280D399C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroy_27Tm()
{
  v1 = (type metadata accessor for PriorityModelSession.Input(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64);
  __swift_destroy_boxed_opaque_existential_1Tm_11((v0 + 16));

  v5 = v1[8];
  v6 = sub_228136F8C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2280D3B4C()
{
  v1 = *(type metadata accessor for PriorityModelSession.Input(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_2280D15DC((v0 + 16), v2);
}

uint64_t sub_2280D3BB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2280D482C;

  return sub_2280D1DC4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2280D3C84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2280D3D04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2280D3D74()
{
  result = qword_27D81EF98;
  if (!qword_27D81EF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81EF98);
  }

  return result;
}

uint64_t sub_2280D3E0C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t dispatch thunk of PriorityModelSession.__allocating_init(sessionInfo:)(uint64_t a1)
{
  v6 = (*(v1 + 112) + **(v1 + 112));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2280D3FA0;

  return v6(a1);
}

uint64_t sub_2280D3FA0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t getEnumTagSinglePayload for PriorityModelSession.InputType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PriorityModelSession.InputType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2280D4228(uint64_t a1)
{
  result = sub_228136F8C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PriorityModelSession.Configuration(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PriorityModelSession.Configuration(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_2280D43C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2280D4438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2280D44A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2280D4528(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2280D4590(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2280D45D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2280D4698;

  return sub_2280CD3D4(a1, v4, v5, v7, v6);
}

uint64_t sub_2280D4698()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroyTm_13()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t NSProcessInfo.isDebuggerAttached.getter()
{
  v5 = *MEMORY[0x277D85DE8];
  bzero(v3, 0x288uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EFB8, &qword_2281402E0);
  v0 = swift_allocObject();
  *(v0 + 4) = 0xE00000001;
  v0[10] = 1;
  v0[11] = getpid();
  v2 = 648;
  sysctl(v0 + 8, 4u, v3, &v2, 0, 0);
  swift_setDeallocating();
  swift_deallocClassInstance();
  return (v4 >> 11) & 1;
}

uint64_t sub_2280D4920()
{
  result = os_variant_has_internal_ui();
  byte_2813C4638 = result;
  return result;
}

uint64_t sub_2280D4948()
{
  sub_2280D4980();
  result = sub_2280D49CC();
  byte_2813C4629 = result & 1;
  return result;
}

unint64_t sub_2280D4980()
{
  result = qword_2813C4618;
  if (!qword_2813C4618)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813C4618);
  }

  return result;
}

uint64_t sub_2280D49CC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_2281392AC();
  }

  v2 = sub_22813942C();

  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v4 = [swift_getObjCClassFromMetadata() processInfo];
    v5 = [v4 environment];

    v6 = sub_2281391BC();
    if (*(v6 + 16))
    {
      sub_22808C964(0xD00000000000001BLL, 0x8000000228147FA0);
      v3 = v7;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 & 1;
}

uint64_t sub_2280D4DD0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);

  return sub_2280D8404(v7, a2, a3, v5, v6);
}

uint64_t sub_2280D4EA8(unsigned __int8 a1, const char *a2)
{
  v4 = a1;
  KeyPath = swift_getKeyPath(a2);
  os_unfair_lock_lock((v2 + 16));
  if (v4 == 2)
  {
    v6 = 0;
    memset(v8, 0, 24);
  }

  else
  {
    LOBYTE(v8[0]) = a1 & 1;
    v6 = MEMORY[0x277D839B0];
  }

  v8[3] = v6;

  sub_2280449FC(v8, KeyPath, (v2 + 24));
  os_unfair_lock_unlock((v2 + 16));
}

uint64_t sub_2280D4F74(uint64_t a1, char a2, const char *a3)
{
  KeyPath = swift_getKeyPath(a3);
  os_unfair_lock_lock((v3 + 16));
  if (a2)
  {
    a1 = 0;
    v7 = 0;
    v9[1] = 0;
    v9[2] = 0;
  }

  else
  {
    v7 = MEMORY[0x277D84A28];
  }

  v9[0] = a1;
  v9[3] = v7;

  sub_2280449E4(v9, KeyPath, (v3 + 24));
  os_unfair_lock_unlock((v3 + 16));
}

uint64_t sub_2280D5014@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath(aP_0);
  os_unfair_lock_lock((v1 + 16));
  sub_2280D2EEC((v1 + 24), KeyPath, a1);
  os_unfair_lock_unlock((v1 + 16));
}

uint64_t sub_2280D52E8(const char *a1)
{
  KeyPath = swift_getKeyPath(a1);
  os_unfair_lock_lock((v1 + 16));
  v3 = sub_2280D2E20((v1 + 24), KeyPath);
  os_unfair_lock_unlock((v1 + 16));

  return v3;
}

uint64_t sub_2280D536C(const char *a1, uint64_t (*a2)(os_unfair_lock_s *, uint64_t))
{
  KeyPath = swift_getKeyPath(a1);
  os_unfair_lock_lock(v2 + 4);
  v5 = a2(v2 + 6, KeyPath);
  os_unfair_lock_unlock(v2 + 4);

  return v5;
}

unint64_t sub_2280D53F8()
{
  KeyPath = swift_getKeyPath(asc_228140A58);
  os_unfair_lock_lock((v0 + 16));
  v2 = sub_2280D31A4((v0 + 24), KeyPath);
  os_unfair_lock_unlock((v0 + 16));

  return v2 | ((HIDWORD(v2) & 1) << 32);
}

uint64_t sub_2280D547C(uint64_t a1)
{
  KeyPath = swift_getKeyPath(asc_228140A58);
  os_unfair_lock_lock((v1 + 16));
  if ((a1 & 0x100000000) != 0)
  {
    v4 = 0;
    memset(v6, 0, 24);
  }

  else
  {
    LODWORD(v6[0]) = a1;
    v4 = MEMORY[0x277D83A90];
  }

  v6[3] = v4;

  sub_228044C9C(v6, KeyPath, (v1 + 24));
  os_unfair_lock_unlock((v1 + 16));
}

uint64_t sub_2280D553C@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath(byte_228140A80);
  os_unfair_lock_lock((v1 + 16));
  sub_2280D327C((v1 + 24), KeyPath, a1);
  os_unfair_lock_unlock((v1 + 16));
}

uint64_t sub_2280D55AC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  KeyPath = swift_getKeyPath(byte_228140A80);
  os_unfair_lock_lock((v1 + 16));
  if (v4)
  {
    v2 = 0;
    v6 = 0;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    LOBYTE(v9) = v3 & 1;
    v6 = &type metadata for Com_Apple_Summarizationkit_Proto_ConfidenceBucket;
  }

  v8 = v2;
  v11 = v6;

  sub_228044CC8(&v8, KeyPath, (v1 + 24));
  os_unfair_lock_unlock((v1 + 16));
}

uint64_t sub_2280D56A4(uint64_t a1, char a2, const char *a3)
{
  KeyPath = swift_getKeyPath(a3);
  os_unfair_lock_lock((v3 + 16));
  if (a2)
  {
    a1 = 0;
    v7 = 0;
    v9[1] = 0;
    v9[2] = 0;
  }

  else
  {
    v7 = MEMORY[0x277D839F8];
  }

  v9[0] = a1;
  v9[3] = v7;

  sub_228044BA4(v9, KeyPath, (v3 + 24));
  os_unfair_lock_unlock((v3 + 16));
}

uint64_t sub_2280D5764(const char *a1, uint64_t (*a2)(os_unfair_lock_s *, uint64_t))
{
  KeyPath = swift_getKeyPath(a1);
  os_unfair_lock_lock(v2 + 4);
  v5 = a2(v2 + 6, KeyPath);
  os_unfair_lock_unlock(v2 + 4);

  return v5;
}

uint64_t sub_2280D5AB8@<X0>(uint64_t *a1@<X0>, const char *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  KeyPath = swift_getKeyPath(a2);
  os_unfair_lock_lock((v4 + 16));
  v6 = sub_2280D2E20((v4 + 24), KeyPath);
  os_unfair_lock_unlock((v4 + 16));

  *a3 = v6;
  return result;
}

uint64_t sub_2280D5B78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EFC0, &qword_2281402F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TelemetrySignalCollector.__deallocating_deinit()
{
  sub_2280D5B78(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2280D5C74()
{
  v1 = sub_227FE4D64(MEMORY[0x277D84F90]);
  *(v0 + 16) = 0;
  *(v0 + 24) = v1;
  return v0;
}

void sub_2280D5CA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F050, &qword_228140508);
  MEMORY[0x28223BE20](v7 - 8);
  v33 = (&v32 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F058, &qword_228140510);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v32 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F060, &unk_228140518);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - v13;
  v15 = sub_22813821C();
  MEMORY[0x28223BE20](v15);
  v34 = a2;
  sub_22813858C();
  sub_22813822C();
  sub_22813827C();
  v16 = *MEMORY[0x277D20AE8];
  v17 = sub_22813824C();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v14, v16, v17);
  (*(v18 + 56))(v14, 0, 1, v17);
  sub_22813825C();
  if (a3)
  {
    sub_22813845C();
    v19 = swift_allocBox();

    sub_22813858C();
    *v11 = v19;
    v20 = *MEMORY[0x277D20C28];
    v21 = sub_22813857C();
    v22 = *(v21 - 8);
    (*(v22 + 104))(v11, v20, v21);
    (*(v22 + 56))(v11, 0, 1, v21);
    sub_22813826C();
  }

  if (a4)
  {
    v36 = a4;
    v23 = a4;
    v24 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    if (swift_dynamicCast())
    {
      v25 = v35[0];
      sub_22813816C();
      v26 = swift_allocBox();
      sub_2280D6124(v25, v27);

      v28 = v33;
      *v33 = v26;
      v29 = *MEMORY[0x277D20A58];
      v30 = sub_2281381DC();
      v31 = *(v30 - 8);
      (*(v31 + 104))(v28, v29, v30);
      (*(v31 + 56))(v28, 0, 1, v30);
      sub_22813823C();
    }
  }
}

uint64_t sub_2280D6124@<X0>(unsigned __int8 a1@<W0>, uint64_t *a3@<X8>)
{
  if (a1 > 0x1Bu)
  {
    if (a1 == 28)
    {
      sub_2281380EC();
      v12 = swift_allocBox();
      sub_22813858C();
      *a3 = v12;
      v5 = MEMORY[0x277D209F8];
      goto LABEL_16;
    }

    if (a1 == 29)
    {
      sub_22813814C();
      v15 = swift_allocBox();
      sub_22813858C();
      *a3 = v15;
      v5 = MEMORY[0x277D20A38];
      goto LABEL_16;
    }

    if (a1 != 30)
    {
LABEL_13:
      sub_2281380DC();
      v13 = swift_allocBox();
      sub_22813858C();
      *a3 = v13;
      v5 = MEMORY[0x277D209F0];
      goto LABEL_16;
    }

    sub_22813815C();
    v6 = swift_allocBox();
    MEMORY[0x28223BE20](v6);
    sub_22813858C();
    *a3 = v6;
    v7 = MEMORY[0x277D20A50];
LABEL_11:
    v9 = *v7;
    v10 = sub_22813816C();
    return (*(*(v10 - 8) + 104))(a3, v9, v10);
  }

  if (a1 == 3)
  {
    sub_22813811C();
    v8 = swift_allocBox();
    MEMORY[0x28223BE20](v8);
    sub_22813858C();
    *a3 = v8;
    v7 = MEMORY[0x277D20A08];
    goto LABEL_11;
  }

  if (a1 == 15)
  {
    sub_22813812C();
    v14 = swift_allocBox();
    sub_22813858C();
    *a3 = v14;
    v5 = MEMORY[0x277D20A18];
    goto LABEL_16;
  }

  if (a1 != 27)
  {
    goto LABEL_13;
  }

  sub_22813813C();
  v4 = swift_allocBox();
  sub_22813858C();
  *a3 = v4;
  v5 = MEMORY[0x277D20A28];
LABEL_16:
  v16 = *v5;
  v17 = sub_22813816C();
  v18 = *(*(v17 - 8) + 104);

  return v18(a3, v16, v17);
}

void sub_2280D64F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F050, &qword_228140508);
  MEMORY[0x28223BE20](v7 - 8);
  v33 = (&v32 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F058, &qword_228140510);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v32 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F060, &unk_228140518);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - v13;
  v15 = sub_22813821C();
  MEMORY[0x28223BE20](v15);
  v34 = a2;
  sub_22813858C();
  sub_22813822C();
  sub_22813827C();
  v16 = *MEMORY[0x277D20AE8];
  v17 = sub_22813824C();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v14, v16, v17);
  (*(v18 + 56))(v14, 0, 1, v17);
  sub_22813825C();
  if (a3)
  {
    sub_22813856C();
    v19 = swift_allocBox();

    sub_22813858C();
    *v11 = v19;
    v20 = *MEMORY[0x277D20C60];
    v21 = sub_22813857C();
    v22 = *(v21 - 8);
    (*(v22 + 104))(v11, v20, v21);
    (*(v22 + 56))(v11, 0, 1, v21);
    sub_22813826C();
  }

  if (a4)
  {
    v36 = a4;
    v23 = a4;
    v24 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    if (swift_dynamicCast())
    {
      v25 = v35[0];
      sub_2281381CC();
      v26 = swift_allocBox();
      sub_2280D6974(v25, v27);

      v28 = v33;
      *v33 = v26;
      v29 = *MEMORY[0x277D20A98];
      v30 = sub_2281381DC();
      v31 = *(v30 - 8);
      (*(v31 + 104))(v28, v29, v30);
      (*(v31 + 56))(v28, 0, 1, v30);
      sub_22813823C();
    }
  }
}

uint64_t sub_2280D6974@<X0>(char a1@<W0>, uint64_t *a3@<X8>)
{
  if (a1 == 11)
  {
    sub_2281381AC();
    v7 = swift_allocBox();
    MEMORY[0x28223BE20](v7);
    sub_22813858C();
    *a3 = v7;
    v6 = MEMORY[0x277D20A78];
    goto LABEL_6;
  }

  if (a1 == 8)
  {
    sub_2281381BC();
    v5 = swift_allocBox();
    MEMORY[0x28223BE20](v5);
    sub_22813858C();
    *a3 = v5;
    v6 = MEMORY[0x277D20A90];
LABEL_6:
    v8 = *v6;
    v9 = sub_2281381CC();
    return (*(*(v9 - 8) + 104))(a3, v8, v9);
  }

  sub_22813817C();
  v4 = swift_allocBox();
  sub_22813858C();
  *a3 = v4;
  v11 = *MEMORY[0x277D20A68];
  v12 = sub_2281381CC();
  v13 = *(*(v12 - 8) + 104);

  return v13(a3, v11, v12);
}

uint64_t sub_2280D6C04(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  (*(*(v3 + 8) + 8))(v4);
  sub_2281381EC();
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  (*(v6 + 16))(v5, v6);
  sub_2281381FC();
  v8 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  (*(*(v7 + 8) + 16))(v8);
  return sub_22813820C();
}

void sub_2280D6CE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22813829C();
  v103 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v105 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath(a0_1);
  os_unfair_lock_lock((a2 + 16));
  v7 = sub_2280D2FF8((a2 + 24), KeyPath);
  if (v2)
  {
    goto LABEL_25;
  }

  v8 = v7;
  v9 = 0;
  os_unfair_lock_unlock((a2 + 16));

  v10 = v8 ? v8 : MEMORY[0x277D84F90];
  v11 = *(v10 + 16);
  if (v11)
  {
    v92 = 0;
    v93 = a2;
    v101 = *MEMORY[0x277D20BF0];
    v99 = *(v103 + 104);
    v98 = *MEMORY[0x277D20BE8];
    v97 = *MEMORY[0x277D20C08];
    v96 = *MEMORY[0x277D20C00];
    v95 = *MEMORY[0x277D20BF8];
    v100 = v103 + 104;
    v94 = v103 + 32;
    v12 = 32;
    v102 = v10;
    do
    {
      v13 = *(v10 + v12);
      v14 = v101;
      if (v13 == 3)
      {
        v14 = v98;
      }

      if (v13 == 2)
      {
        v14 = v97;
      }

      v15 = v96;
      if (!*(v10 + v12))
      {
        v15 = v95;
      }

      if (*(v10 + v12) <= 1u)
      {
        v16 = v15;
      }

      else
      {
        v16 = v14;
      }

      v17 = v4;
      v99(v105, v16, v4);
      v18 = sub_22813842C();
      v20 = v19;
      v21 = *v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v20 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_228134418(0, v21[2] + 1, 1, v21);
        *v20 = v21;
      }

      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        v21 = sub_228134418((v23 > 1), v24 + 1, 1, v21);
        *v20 = v21;
      }

      v21[2] = v24 + 1;
      v25 = v21 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v24;
      v4 = v17;
      (*(v103 + 32))(v25, v105, v17);
      v18(v104, 0);
      ++v12;
      --v11;
      v10 = v102;
    }

    while (v11);

    v9 = v92;
    a2 = v93;
  }

  else
  {
  }

  v26 = swift_getKeyPath(byte_228140550, v92, v93, v94);
  os_unfair_lock_lock((a2 + 16));
  v27 = sub_2280D2D08((a2 + 24), v26);
  if (v9)
  {
LABEL_25:
    os_unfair_lock_unlock((a2 + 16));
    __break(1u);
  }

  else
  {
    v29 = v27;
    v30 = v28;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB0880](v29, v30 & 1);
    v31 = swift_getKeyPath(byte_228140578);
    os_unfair_lock_lock((a2 + 16));
    v32 = sub_2280D2D08((a2 + 24), v31);
    v34 = v33;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB08F0](v32, v34 & 1);
    v35 = swift_getKeyPath(byte_2281405A0);
    os_unfair_lock_lock((a2 + 16));
    v36 = sub_2280D2D08((a2 + 24), v35);
    v38 = v37;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB08C0](v36, v38 & 1);
    v39 = swift_getKeyPath(byte_2281405C8);
    os_unfair_lock_lock((a2 + 16));
    v40 = sub_2280D2D08((a2 + 24), v39);
    v42 = v41;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB09B0](v40, v42 & 1);
    v43 = swift_getKeyPath(byte_2281404B8);
    os_unfair_lock_lock((a2 + 16));
    sub_2280D2E20((a2 + 24), v43);
    os_unfair_lock_unlock((a2 + 16));

    sub_22813837C();
    v44 = swift_getKeyPath(byte_2281405F0);
    os_unfair_lock_lock((a2 + 16));
    sub_2280D2E20((a2 + 24), v44);
    os_unfair_lock_unlock((a2 + 16));

    sub_2281383FC();
    v45 = swift_getKeyPath(aP_2);
    os_unfair_lock_lock((a2 + 16));
    v46 = sub_2280D2D28((a2 + 24), v45);
    v48 = v47;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB0960](v46, v48 & 1);
    v49 = swift_getKeyPath(aP_3);
    os_unfair_lock_lock((a2 + 16));
    v50 = sub_2280D2D28((a2 + 24), v49);
    v52 = v51;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB0930](v50, v52 & 1);
    v53 = swift_getKeyPath(a0);
    os_unfair_lock_lock((a2 + 16));
    v54 = sub_2280D2D28((a2 + 24), v53);
    v56 = v55;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB0970](v54, v56 & 1);
    v57 = swift_getKeyPath(byte_228140690);
    os_unfair_lock_lock((a2 + 16));
    v58 = sub_2280D2D28((a2 + 24), v57);
    v60 = v59;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB09C0](v58, v60 & 1);
    v61 = swift_getKeyPath(byte_2281406B8);
    os_unfair_lock_lock((a2 + 16));
    sub_2280D2D08((a2 + 24), v61);
    os_unfair_lock_unlock((a2 + 16));

    sub_22813844C();
    v62 = swift_getKeyPath(byte_2281406E0);
    os_unfair_lock_lock((a2 + 16));
    sub_2280D2D08((a2 + 24), v62);
    os_unfair_lock_unlock((a2 + 16));

    sub_2281382BC();
    v63 = swift_getKeyPath(byte_228140708);
    os_unfair_lock_lock((a2 + 16));
    sub_2280D2D08((a2 + 24), v63);
    os_unfair_lock_unlock((a2 + 16));

    sub_2281382EC();
    v64 = swift_getKeyPath(byte_228140730);
    os_unfair_lock_lock((a2 + 16));
    sub_2280D2E20((a2 + 24), v64);
    os_unfair_lock_unlock((a2 + 16));

    sub_2281383DC();
    v65 = swift_getKeyPath(aP_1);
    os_unfair_lock_lock((a2 + 16));
    sub_2280D2E20((a2 + 24), v65);
    os_unfair_lock_unlock((a2 + 16));

    sub_2281382CC();
    v66 = swift_getKeyPath(aP_5);
    os_unfair_lock_lock((a2 + 16));
    sub_2280D2E20((a2 + 24), v66);
    os_unfair_lock_unlock((a2 + 16));

    sub_22813836C();
    v67 = swift_getKeyPath(a0_2);
    os_unfair_lock_lock((a2 + 16));
    v68 = sub_2280D2D08((a2 + 24), v67);
    v70 = v69;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB08A0](v68, v70 & 1);
    v71 = swift_getKeyPath(byte_2281407D0);
    os_unfair_lock_lock((a2 + 16));
    v72 = sub_2280D2D08((a2 + 24), v71);
    v74 = v73;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB0900](v72, v74 & 1);
    v75 = swift_getKeyPath(byte_2281407F8);
    os_unfair_lock_lock((a2 + 16));
    v76 = sub_2280D2D08((a2 + 24), v75);
    v78 = v77;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB08E0](v76, v78 & 1);
    v79 = swift_getKeyPath(byte_228140820);
    os_unfair_lock_lock((a2 + 16));
    v80 = sub_2280D2D08((a2 + 24), v79);
    v82 = v81;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB0850](v80, v82 & 1);
    v83 = swift_getKeyPath(byte_228140848);
    os_unfair_lock_lock((a2 + 16));
    v84 = sub_2280D2D08((a2 + 24), v83);
    v86 = v85;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB08D0](v84, v86 & 1);
    v87 = swift_getKeyPath(byte_228140870);
    os_unfair_lock_lock((a2 + 16));
    sub_2280D2D08((a2 + 24), v87);
    os_unfair_lock_unlock((a2 + 16));

    sub_22813839C();
    v88 = swift_getKeyPath(aP_6);
    os_unfair_lock_lock((a2 + 16));
    sub_2280D2D08((a2 + 24), v88);
    os_unfair_lock_unlock((a2 + 16));

    sub_2281383AC();
    v89 = swift_getKeyPath(aP_4);
    os_unfair_lock_lock((a2 + 16));
    sub_2280D2E20((a2 + 24), v89);
    os_unfair_lock_unlock((a2 + 16));

    sub_22813830C();
    v90 = swift_getKeyPath(a0_0);
    os_unfair_lock_lock((a2 + 16));
    sub_2280D2E20((a2 + 24), v90);
    os_unfair_lock_unlock((a2 + 16));

    sub_2281383EC();
    v91 = swift_getKeyPath(byte_228140910);
    os_unfair_lock_lock((a2 + 16));
    sub_2280D2D08((a2 + 24), v91);
    os_unfair_lock_unlock((a2 + 16));

    sub_22813843C();
  }
}

uint64_t sub_2280D7828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_228017770(0xD00000000000001ELL, 0x8000000228146530, 3, a3);
  if ((v5 & 1) == 0)
  {
    MEMORY[0x22AAB06B0](v4, 0);
  }

  result = sub_228017770(0xD00000000000001CLL, 0x8000000228146550, 3, a3);
  if ((v7 & 1) == 0)
  {
    return MEMORY[0x22AAB06A0](result, 0);
  }

  return result;
}

void sub_2280D78D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F068, &qword_228140A28);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v60 - v5;
  KeyPath = swift_getKeyPath(byte_228140550);
  os_unfair_lock_lock((a2 + 16));
  sub_2280D2D08((a2 + 24), KeyPath);
  if (v2)
  {
    os_unfair_lock_unlock((a2 + 16));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((a2 + 16));

    sub_22813847C();
    v8 = swift_getKeyPath(byte_228140820);
    os_unfair_lock_lock((a2 + 16));
    v9 = sub_2280D2D08((a2 + 24), v8);
    v11 = v10;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB0A10](v9, v11 & 1);
    v12 = swift_getKeyPath(a0_2);
    os_unfair_lock_lock((a2 + 16));
    v13 = sub_2280D2D08((a2 + 24), v12);
    v15 = v14;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB0A30](v13, v15 & 1);
    v16 = swift_getKeyPath(byte_2281407D0);
    os_unfair_lock_lock((a2 + 16));
    v17 = sub_2280D2D08((a2 + 24), v16);
    v19 = v18;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB0A50](v17, v19 & 1);
    v20 = swift_getKeyPath(byte_2281407F8);
    os_unfair_lock_lock((a2 + 16));
    v21 = sub_2280D2D08((a2 + 24), v20);
    v23 = v22;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB0A40](v21, v23 & 1);
    v24 = swift_getKeyPath(byte_2281405C8);
    os_unfair_lock_lock((a2 + 16));
    v25 = sub_2280D2D08((a2 + 24), v24);
    v27 = v26;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB0AF0](v25, v27 & 1);
    v28 = swift_getKeyPath(byte_2281409B0);
    os_unfair_lock_lock((a2 + 16));
    sub_2280D2E20((a2 + 24), v28);
    os_unfair_lock_unlock((a2 + 16));

    sub_22813851C();
    v29 = swift_getKeyPath(asc_228140A30);
    os_unfair_lock_lock((a2 + 16));
    v30 = sub_2280D30D4((a2 + 24), v29);
    os_unfair_lock_unlock((a2 + 16));

    if (v30)
    {
      sub_2281392AC();
    }

    sub_2281384EC();
    v31 = swift_getKeyPath(byte_228140938);
    os_unfair_lock_lock((a2 + 16));
    v32 = sub_2280D2D08((a2 + 24), v31);
    v34 = v33;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB0A60](v32, v34 & 1);
    v35 = swift_getKeyPath(asc_228140A58);
    os_unfair_lock_lock((a2 + 16));
    sub_2280D31A4((a2 + 24), v35);
    os_unfair_lock_unlock((a2 + 16));

    sub_22813855C();
    v36 = swift_getKeyPath(byte_228140988);
    os_unfair_lock_lock((a2 + 16));
    v37 = sub_2280D2D08((a2 + 24), v36);
    v39 = v38;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB0AE0](v37, v39 & 1);
    swift_getKeyPath(byte_228140A80);
    os_unfair_lock_lock((a2 + 16));
    v40 = *(a2 + 24);
    if (*(v40 + 16) && (v41 = sub_227FEB418(), (v42 & 1) != 0))
    {
      sub_227FEB0D4(*(v40 + 56) + 32 * v41, &v60);
    }

    else
    {
      v60 = 0u;
      v61 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
    v43 = swift_dynamicCast();
    if ((v43 & 1) == 0)
    {
      v62 = 0;
      v63 = 0;
    }

    v64 = v43 ^ 1;
    os_unfair_lock_unlock((a2 + 16));

    if ((v64 & 1) == 0)
    {
      if (v63)
      {
        v44 = qword_2785F1BE8[v62];
      }

      else
      {
        v44 = MEMORY[0x277D20C30];
      }

      v45 = *v44;
      v46 = sub_2281384CC();
      v47 = *(v46 - 8);
      (*(v47 + 104))(v6, v45, v46);
      (*(v47 + 56))(v6, 0, 1, v46);
      sub_2281384DC();
    }

    v48 = swift_getKeyPath(byte_228140AB0, v60, v61);
    os_unfair_lock_lock((a2 + 16));
    v49 = sub_2280D2D28((a2 + 24), v48);
    v51 = v50;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB0AD0](v49, v51 & 1);
    v52 = swift_getKeyPath(byte_228140AD8);
    os_unfair_lock_lock((a2 + 16));
    v53 = sub_2280D2D28((a2 + 24), v52);
    v55 = v54;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB0AB0](v53, v55 & 1);
    v56 = swift_getKeyPath(byte_228140960);
    os_unfair_lock_lock((a2 + 16));
    v57 = sub_2280D2D28((a2 + 24), v56);
    v59 = v58;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB0AA0](v57, v59 & 1);
  }
}

uint64_t sub_2280D7F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t, unint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(0xD00000000000001CLL, 0x8000000228148420, 3, a3);
  if (v7)
  {
    return a5(result);
  }

  return result;
}

uint64_t sub_2280D8000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2280171BC(0xD00000000000001ALL, 0x8000000228148480, 3, a3);
  if ((v5 & 1) == 0)
  {
    MEMORY[0x22AAB0740](v4, 0);
  }

  result = sub_2280171BC(0xD000000000000018, 0x80000002281484A0, 3, a3);
  if ((v7 & 1) == 0)
  {
    return MEMORY[0x22AAB0730](result, 0);
  }

  return result;
}

uint64_t sub_2280D809C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath(asc_228140A30);
  os_unfair_lock_lock((v3 + 16));
  v5 = sub_2280D30D4((v3 + 24), KeyPath);
  os_unfair_lock_unlock((v3 + 16));

  *a2 = v5;
  return result;
}

uint64_t sub_2280D8110(void **a1, os_unfair_lock_s **a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath(asc_228140A30);
  v5 = swift_getKeyPath(byte_228140B00);
  v6 = v2;

  sub_2280D87C4(v2, v3, KeyPath, v5);
}

uint64_t sub_2280D81A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath(asc_228140A58);
  os_unfair_lock_lock((v3 + 16));
  v5 = sub_2280D31A4((v3 + 24), KeyPath);
  os_unfair_lock_unlock((v3 + 16));

  *a2 = v5;
  *(a2 + 4) = BYTE4(v5) & 1;
  return result;
}

uint64_t sub_2280D823C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath(byte_228140A80);
  os_unfair_lock_lock((v3 + 16));
  sub_2280D327C((v3 + 24), KeyPath, &v8);
  os_unfair_lock_unlock((v3 + 16));

  v6 = v9;
  v7 = v10;
  *a2 = v8;
  *(a2 + 8) = v6;
  *(a2 + 9) = v7;
  return result;
}

uint64_t sub_2280D82C8@<X0>(os_unfair_lock_s **a1@<X0>, const char *a2@<X3>, uint64_t (*a3)(os_unfair_lock_s *, uint64_t)@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  KeyPath = swift_getKeyPath(a2);
  os_unfair_lock_lock(v6 + 4);
  v8 = a3(v6 + 6, KeyPath);
  v10 = v9;
  os_unfair_lock_unlock(v6 + 4);

  *a4 = v8;
  *(a4 + 8) = v10 & 1;
  return result;
}

uint64_t sub_2280D8404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22813828C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v22[3] = a4;
  v22[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v15 = sub_22813882C();
  __swift_project_value_buffer(v15, qword_2813C8A20);
  v16 = sub_22813880C();
  v17 = sub_2281396CC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_227FC3000, v16, v17, "Sending Biome event for Summarization request", v18, 2u);
    MEMORY[0x22AAB28A0](v18, -1, -1);
  }

  sub_22813886C();
  swift_allocObject();
  v19 = sub_22813885C();
  MEMORY[0x28223BE20](v19);
  *(&v21 - 4) = v22;
  *(&v21 - 3) = a2;
  *(&v21 - 2) = a3;
  sub_22813884C();
  (*(v11 + 8))(v13, v10);

  return __swift_destroy_boxed_opaque_existential_1Tm_12(v22);
}

void sub_2280D87C4(void *a1, os_unfair_lock_s *a2, uint64_t *a3, uint64_t a4)
{

  os_unfair_lock_lock(a2 + 4);
  if (a1)
  {
    type metadata accessor for NLLanguage(0);
    v8 = a1;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v10[1] = 0;
    v10[2] = 0;
  }

  v10[0] = v8;
  v10[3] = v7;

  v9 = a1;
  sub_228044CF4(v10, a3, &a2[6]);

  os_unfair_lock_unlock(a2 + 4);
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_2280D8910(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2280D8958(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2280D89D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return MEMORY[0x2822009F8](sub_2280D89F8, 0, 0);
}

uint64_t sub_2280D89F8()
{
  if (*(v0[12] + 64) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v1 = v0[8];
    v2 = v0[9];
    v10 = v0[1];

    return v10(v1, v2);
  }

  else
  {
    v5 = v0[8];
    v4 = v0[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
    inited = swift_initStackObject();
    v0[13] = inited;
    *(inited + 16) = xmmword_22813A4B0;
    *(inited + 32) = v5;
    *(inited + 40) = v4;

    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_2280D8B44;
    v8 = v0[11];
    v9 = v0[10];

    return sub_2280D8D74(inited, v9, v8);
  }
}

uint64_t sub_2280D8B44(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_2280D8CF8;
  }

  else
  {

    v4 = sub_2280D8C60;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2280D8C60()
{
  v1 = *(v0 + 120);
  if (v1[2])
  {
    v2 = v1[4];
    v3 = v1[5];
  }

  else
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t sub_2280D8CF8()
{
  swift_setDeallocating();
  swift_arrayDestroy();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2280D8D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](sub_2280D8D98, 0, 0);
}

uint64_t sub_2280D8D98()
{
  v1 = *(v0 + 80);
  if (*(v1 + 64) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = *(v0 + 8);

    return v12(v2);
  }

  else
  {
    if (qword_2813C4900 != -1)
    {
      swift_once();
      v1 = *(v0 + 80);
    }

    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    v6 = *(v0 + 56);
    v7 = type metadata accessor for Signpost(0);
    v8 = __swift_project_value_buffer(v7, qword_2813C8858);
    sub_228004954(v4, v0 + 16);
    v9 = swift_allocObject();
    *(v0 + 88) = v9;
    sub_227FFA05C((v0 + 16), v9 + 16);
    v10 = swift_task_alloc();
    *(v0 + 96) = v10;
    v10[2] = v1;
    v10[3] = v4;
    v10[4] = v5;
    v10[5] = v6;
    v11 = swift_task_alloc();
    *(v0 + 104) = v11;
    *v11 = v0;
    v11[1] = sub_2280D8F88;

    return sub_22810A6D8(v8, sub_2280DB2C8, v9, &unk_228140B88, v10);
  }
}

uint64_t sub_2280D8F88(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 112) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2280D90E4, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_2280D90E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2280D9150(void *a1)
{
  sub_22813988C();
  MEMORY[0x22AAB1970](0xD000000000000014, 0x80000002281441C0);
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  MEMORY[0x22AAB1970](v4);

  MEMORY[0x22AAB1970](0xD000000000000015, 0x80000002281443F0);
  v6 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v7 = (*(*(v5 + 8) + 8))(v6);
  MEMORY[0x22AAB1970](v7);

  MEMORY[0x22AAB1970](0xD00000000000001FLL, 0x8000000228144410);
  v9 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v10 = (*(*(v8 + 8) + 16))(v9);
  MEMORY[0x22AAB1970](v10);

  MEMORY[0x22AAB1970](0xD00000000000001BLL, 0x8000000228144430);
  v12 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v15 = (*(*(v11 + 8) + 24))(v12);
  v13 = sub_22813998C();
  MEMORY[0x22AAB1970](v13);

  MEMORY[0x22AAB1970](0xD000000000000017, 0x8000000228144450);
  return HIDWORD(v15);
}

uint64_t sub_2280D9370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a2;
  v5[10] = a5;
  v5[8] = a1;
  v8 = sub_228136CDC();
  v5[11] = v8;
  v5[12] = *(v8 - 8);
  v5[13] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[14] = v9;
  *v9 = v5;
  v9[1] = sub_2280D9480;

  return sub_2280D9D70(a3, a4);
}

uint64_t sub_2280D9480(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 120) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2280D95D0, 0, 0);
  }
}

uint64_t sub_2280D95D0()
{
  if (*(v0 + 120) < 1)
  {
    **(v0 + 64) = MEMORY[0x277D84F90];

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v1 = *(v0 + 80);
    v2 = 0xE000000000000000;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = (v1 + 16 * v3 + 24);
      v5 = MEMORY[0x277D84F90];
      do
      {
        v14 = *(v4 - 1);
        v15 = *v4;
        swift_bridgeObjectRetain_n();
        MEMORY[0x22AAB1970](32, 0xE100000000000000);

        MEMORY[0x22AAB1970](v14, v15);

        v6 = *(v0 + 16);
        v2 = *(v0 + 24);
        v7 = sub_22813936C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_228133CCC(0, *(v5 + 2) + 1, 1, v5);
        }

        v9 = *(v5 + 2);
        v8 = *(v5 + 3);
        if (v9 >= v8 >> 1)
        {
          v5 = sub_228133CCC((v8 > 1), v9 + 1, 1, v5);
        }

        *(v5 + 2) = v9 + 1;
        *&v5[8 * v9 + 32] = v7;
        v4 -= 2;
        --v3;
      }

      while (v3);
    }

    else
    {
      v6 = 0;
      v5 = MEMORY[0x277D84F90];
    }

    *(v0 + 128) = v5;
    *(v0 + 136) = v2;
    v12 = swift_task_alloc();
    *(v0 + 144) = v12;
    *v12 = v0;
    v12[1] = sub_2280D97FC;
    v13 = *(v0 + 120);

    return sub_227FE83EC(v6, v2, v13);
  }
}

uint64_t sub_2280D97FC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[19] = a1;
  v4[20] = a2;
  v4[21] = v2;

  if (v2)
  {

    v5 = sub_2280D9D0C;
  }

  else
  {
    v5 = sub_2280D9944;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2280D9944()
{
  v2 = v1[16];
  v37 = *(v2 + 16);
  if (!v37)
  {
    v4 = MEMORY[0x277D84F90];
LABEL_18:

    goto LABEL_19;
  }

  v3 = 0;
  v36 = (v1[12] + 8);
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v3 >= *(v2 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v5 = *(v2 + 32 + 8 * v3);
    v0 = sub_2281393AC();
    if (sub_22813936C() < v5)
    {
      break;
    }

    if (sub_2281393AC() >> 14 < v0 >> 14)
    {
      goto LABEL_23;
    }

    v6 = v1[13];
    v7 = v1[11];
    v8 = sub_22813948C();
    v9 = MEMORY[0x22AAB18D0](v8);
    v11 = v10;

    v1[4] = v9;
    v1[5] = v11;
    sub_228136C5C();
    sub_227FDB420();
    v0 = sub_2281397AC();
    v13 = v12;
    (*v36)(v6, v7);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_2281338C0(0, *(v4 + 2) + 1, 1, v4);
    }

    v15 = *(v4 + 2);
    v14 = *(v4 + 3);
    if (v15 >= v14 >> 1)
    {
      v4 = sub_2281338C0((v14 > 1), v15 + 1, 1, v4);
    }

    ++v3;
    *(v4 + 2) = v15 + 1;
    v16 = &v4[16 * v15];
    *(v16 + 4) = v0;
    *(v16 + 5) = v13;
    if (v37 == v3)
    {
      goto LABEL_18;
    }
  }

  v3 = v1[20];

  if (sub_2281393AC() >> 14 < v0 >> 14)
  {
    goto LABEL_24;
  }

  v17 = v1[13];
  v18 = v1[11];
  v19 = sub_22813948C();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = MEMORY[0x22AAB18D0](v19, v21, v23, v25);
  v28 = v27;

  v1[6] = v26;
  v1[7] = v28;
  sub_228136C5C();
  sub_227FDB420();
  v0 = sub_2281397AC();
  v3 = v29;
  (*v36)(v17, v18);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_15;
  }

LABEL_25:
  v4 = sub_2281338C0(0, *(v4 + 2) + 1, 1, v4);
LABEL_15:
  v31 = *(v4 + 2);
  v30 = *(v4 + 3);
  if (v31 >= v30 >> 1)
  {
    v4 = sub_2281338C0((v30 > 1), v31 + 1, 1, v4);
  }

  *(v4 + 2) = v31 + 1;
  v32 = &v4[16 * v31];
  *(v32 + 4) = v0;
  *(v32 + 5) = v3;
LABEL_19:
  v33 = v1[8];
  *v33 = sub_2280DAF08(v4);

  v34 = v1[1];

  return v34();
}

uint64_t sub_2280D9D0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2280D9D70(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v3[16] = type metadata accessor for ModelBundleIdentifier(0);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  sub_228137AEC();
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8D8, &unk_22813E420);
  v3[20] = swift_task_alloc();
  v4 = sub_228137A3C();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v5 = sub_228137A9C();
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ED08, &qword_228140BA0);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = type metadata accessor for SummarizationParameters(0);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280D9FB0, 0, 0);
}

uint64_t sub_2280D9FB0()
{
  v54 = v0;
  v1 = *(v0 + 120);
  v2 = v1[7];
  *(v0 + 256) = v2;
  v3 = *(v2 + 16);
  *(v0 + 264) = v3;
  if (v3)
  {
    v4 = objc_opt_self();
    *(v0 + 272) = v4;
    *(v0 + 280) = v1[5];
    v5 = v1[6];
    *(v0 + 344) = *MEMORY[0x277D0E578];
    *(v0 + 288) = v5;
    *(v0 + 296) = 0;
    *(v0 + 304) = 0;
    v6 = *(v0 + 256);
    if (*(v6 + 16))
    {
      v50 = *(v6 + 32);

      if (qword_2813C4620 == -1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_4:
    if (byte_2813C4629 == 1)
    {
      if (qword_27D81E2A0 == -1)
      {
LABEL_11:
        v9 = *(v0 + 240);
        v48 = *(v0 + 216);
        v10 = *(v0 + 200);
        v45 = *(v0 + 224);
        v46 = *(v0 + 192);
        v11 = *(v0 + 104);
        v12 = v11[3];
        v13 = v11[4];
        v47 = *(v0 + 280);
        __swift_project_boxed_opaque_existential_1(v11, v12);
        v14 = *(v13 + 8);
        v15 = *(v14 + 8);

        v16 = v15(v12, v14);
        v53 = v50;
        *(v0 + 312) = sub_22808E6E4(v16, v17, &v53);

        sub_228004954(v11, v0 + 16);
        (*(v10 + 56))(v45, 1, 1, v46);
        *(v0 + 56) = 0;
        *(v0 + 64) = 0xE000000000000000;
        *(v0 + 72) = 10;
        *(v0 + 80) = 0xE100000000000000;
        *(v0 + 88) = 4091452;
        *(v0 + 96) = 0xE300000000000000;
        sub_227FDB420();
        *v9 = sub_2281397BC();
        *(v9 + 8) = v18;
        *(v9 + 16) = v47;
        *(v9 + 32) = v50;
        sub_228004954(v0 + 16, v9 + 40);
        sub_2280DB484(v45, v48);
        v19 = *(v10 + 48);
        v20 = v19(v48, 1, v46);
        v21 = *(v0 + 192);
        if (v20 == 1)
        {
          v22 = *(v0 + 344);
          v49 = *(v0 + 224);
          v52 = *(v0 + 216);
          v23 = *(v0 + 176);
          v24 = *(v0 + 184);
          v25 = *(v0 + 160);
          v26 = *(v0 + 168);
          v27 = sub_228137A7C();
          (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
          (*(v23 + 104))(v24, v22, v26);
          sub_228137AAC();
          sub_228137A0C();
          v28 = sub_228137A1C();
          (*(*(v28 - 8) + 56))(v25, 0, 1, v28);
          sub_228137A8C();
          sub_2280DB4F4(v49);
          __swift_destroy_boxed_opaque_existential_1((v0 + 16));
          if (v19(v52, 1, v21) != 1)
          {
            sub_2280DB4F4(*(v0 + 216));
          }
        }

        else
        {
          v29 = *(v0 + 216);
          v31 = *(v0 + 200);
          v30 = *(v0 + 208);
          sub_2280DB4F4(*(v0 + 224));
          __swift_destroy_boxed_opaque_existential_1((v0 + 16));
          (*(v31 + 32))(v30, v29, v21);
        }

        v33 = (v0 + 144);
        v32 = *(v0 + 144);
        v34 = *(v0 + 240);
        v35 = *(v0 + 248);
        v36 = *(v0 + 120);
        (*(*(v0 + 200) + 32))(v34 + *(*(v0 + 232) + 36), *(v0 + 208), *(v0 + 192));
        sub_2280DB55C(v34, v35);
        v37 = __swift_project_boxed_opaque_existential_1(v36, v36[3]);
        v38 = type metadata accessor for TokenCounter(0);
        v39 = __swift_project_boxed_opaque_existential_1((v37 + *(v38 + 20)), *(v37 + *(v38 + 20) + 24));
        sub_227FC8614(v37, v32);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v41 = 1;
LABEL_20:
            sub_227FCABF8(*v33, type metadata accessor for ModelBundleIdentifier);
            __swift_project_boxed_opaque_existential_1((*v39 + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_promptRunner), *(*v39 + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_promptRunner + 24));
            v43 = swift_task_alloc();
            *(v0 + 320) = v43;
            *v43 = v0;
            v43[1] = sub_2280DA630;
            v44 = *(v0 + 248);

            return sub_228001E18(v44, v41 & 1);
          }
        }

        else
        {
          sub_227FCABF8(*v33, type metadata accessor for ModelBundleIdentifier);
        }

        v33 = (v0 + 136);
        v42 = *(v0 + 136);
        swift_storeEnumTagMultiPayload();
        v41 = _s16SummarizationKit21ModelBundleIdentifierO2eeoiySbAC_ACtFZ_0(v37, v42);
        goto LABEL_20;
      }
    }

    else if (qword_2813C76F0 == -1)
    {
      goto LABEL_11;
    }

    swift_once();
    goto LABEL_11;
  }

  v51 = v1[8];

  v7 = *(v0 + 8);

  return v7(v51);
}

uint64_t sub_2280DA630(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = sub_2280DAE04;
  }

  else
  {
    *(v4 + 336) = a1;
    v5 = sub_2280DA758;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2280DA758()
{
  v58 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 312);
  sub_227FCABF8(*(v0 + 248), type metadata accessor for SummarizationParameters);
  v3 = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    __break(1u);
    goto LABEL_29;
  }

  v4 = *(v0 + 112);
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  if (v5)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v7 = *(v0 + 304) + 1;
  if (v6 <= *(v0 + 296))
  {
    v6 = *(v0 + 296);
  }

  if (v7 == *(v0 + 264))
  {
    v8 = *(*(v0 + 120) + 64);
    v5 = __OFSUB__(v8, v6);
    v9 = v8 - v6;
    if (!v5)
    {
      v55 = v9;

      v10 = *(v0 + 8);

      return v10(v55);
    }

    goto LABEL_30;
  }

  *(v0 + 296) = v6;
  *(v0 + 304) = v7;
  v12 = *(v0 + 256);
  if (v7 < *(v12 + 16))
  {
    v54 = *(v12 + v7 + 32);

    if (qword_2813C4620 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_12:
  if (byte_2813C4629 != 1)
  {
    if (qword_2813C76F0 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

  if (qword_27D81E2A0 != -1)
  {
LABEL_33:
    swift_once();
  }

LABEL_16:
  v13 = *(v0 + 240);
  v52 = *(v0 + 216);
  v14 = *(v0 + 200);
  v48 = *(v0 + 224);
  v49 = *(v0 + 192);
  v15 = *(v0 + 104);
  v16 = v15[3];
  v17 = v15[4];
  v50 = *(v0 + 280);
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v18 = *(v17 + 8);
  v19 = *(v18 + 8);

  v20 = v19(v16, v18);
  v57 = v54;
  *(v0 + 312) = sub_22808E6E4(v20, v21, &v57);

  sub_228004954(v15, v0 + 16);
  (*(v14 + 56))(v48, 1, 1, v49);
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = 10;
  *(v0 + 80) = 0xE100000000000000;
  *(v0 + 88) = 4091452;
  *(v0 + 96) = 0xE300000000000000;
  sub_227FDB420();
  *v13 = sub_2281397BC();
  *(v13 + 8) = v22;
  *(v13 + 16) = v50;
  *(v13 + 32) = v54;
  sub_228004954(v0 + 16, v13 + 40);
  sub_2280DB484(v48, v52);
  v23 = *(v14 + 48);
  if (v23(v52, 1, v49) == 1)
  {
    v24 = *(v0 + 344);
    v51 = *(v0 + 224);
    v25 = *(v0 + 184);
    v53 = *(v0 + 192);
    v56 = *(v0 + 216);
    v27 = *(v0 + 168);
    v26 = *(v0 + 176);
    v28 = *(v0 + 160);
    v29 = sub_228137A7C();
    (*(*(v29 - 8) + 56))(v25, 1, 1, v29);
    (*(v26 + 104))(v25, v24, v27);
    sub_228137AAC();
    sub_228137A0C();
    v30 = sub_228137A1C();
    (*(*(v30 - 8) + 56))(v28, 0, 1, v30);
    sub_228137A8C();
    sub_2280DB4F4(v51);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    if (v23(v56, 1, v53) != 1)
    {
      sub_2280DB4F4(*(v0 + 216));
    }
  }

  else
  {
    v31 = *(v0 + 216);
    v33 = *(v0 + 200);
    v32 = *(v0 + 208);
    v34 = *(v0 + 192);
    sub_2280DB4F4(*(v0 + 224));
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    (*(v33 + 32))(v32, v31, v34);
  }

  v36 = (v0 + 144);
  v35 = *(v0 + 144);
  v37 = *(v0 + 240);
  v38 = *(v0 + 248);
  v39 = *(v0 + 120);
  (*(*(v0 + 200) + 32))(v37 + *(*(v0 + 232) + 36), *(v0 + 208), *(v0 + 192));
  sub_2280DB55C(v37, v38);
  v40 = __swift_project_boxed_opaque_existential_1(v39, v39[3]);
  v41 = type metadata accessor for TokenCounter(0);
  v42 = __swift_project_boxed_opaque_existential_1((v40 + *(v41 + 20)), *(v40 + *(v41 + 20) + 24));
  sub_227FC8614(v40, v35);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_227FCABF8(*v36, type metadata accessor for ModelBundleIdentifier);
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_24:
    v36 = (v0 + 136);
    v45 = *(v0 + 136);
    swift_storeEnumTagMultiPayload();
    v44 = _s16SummarizationKit21ModelBundleIdentifierO2eeoiySbAC_ACtFZ_0(v40, v45);
    goto LABEL_25;
  }

  v44 = 1;
LABEL_25:
  sub_227FCABF8(*v36, type metadata accessor for ModelBundleIdentifier);
  __swift_project_boxed_opaque_existential_1((*v42 + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_promptRunner), *(*v42 + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_promptRunner + 24));
  v46 = swift_task_alloc();
  *(v0 + 320) = v46;
  *v46 = v0;
  v46[1] = sub_2280DA630;
  v47 = *(v0 + 248);

  return sub_228001E18(v47, v44 & 1);
}