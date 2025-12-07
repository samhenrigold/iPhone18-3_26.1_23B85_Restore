uint64_t sub_20CD4E938(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_20CD4EEC0;
  }

  else
  {
    v4 = sub_20CD4EA70;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CD4EA70()
{
  v1 = *(v0 + 168);
  v2 = [*(v0 + 128) UUID];
  sub_20CD62684();

  if (*(v1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811188, &qword_20CD64D88);
    v3 = sub_20CD63554();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v4 = *(v0 + 176);
  *(v0 + 24) = v3;

  sub_20CD4F654(v5, 1, (v0 + 24));
  if (v4)
  {

    return MEMORY[0x2821FEBD8](v4, "Swift/Dictionary.swift", 22, 1, 490);
  }

  v7 = *(v0 + 128);
  v6 = *(v0 + 136);
  v8 = *(v0 + 120);
  v9 = *(v0 + 64);
  v10 = *(v0 + 72);
  v11 = *(v0 + 48);
  v12 = *(v0 + 56);

  v13 = sub_20CD4F1EC(*(v0 + 24));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v8;
  sub_20CD505D4(v13, v9, isUniquelyReferenced_nonNull_native);
  (*(v12 + 8))(v9, v11);

  if (v6 != v10)
  {
    v20 = *(v0 + 136);
    *(v0 + 120) = v35;
    v21 = *(v0 + 32);
    if ((v21 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x20F310EA0](v20);
    }

    else
    {
      if (v20 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v15 = *(v21 + 8 * v20 + 32);
    }

    v22 = v15;
    *(v0 + 128) = v15;
    *(v0 + 136) = v20 + 1;
    if (!__OFADD__(v20, 1))
    {
      v23 = [v15 workoutActivityType];
      if (v23 <= 36)
      {
        if (v23 == 13)
        {
          v24 = *(v0 + 80);
LABEL_29:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811190, &qword_20CD64D90);
          v26 = swift_allocObject();
          *(v26 + 16) = xmmword_20CD64CF0;
          v27 = (v26 + 32);
          sub_20CD50E10(0, &qword_28110F158, 0x277CCD830);
          goto LABEL_30;
        }

        if (v23 != 24)
        {
LABEL_27:
          if ((sub_20CD427D0() & 1) == 0)
          {
            v26 = MEMORY[0x277D84F90];
LABEL_31:
            *(v0 + 144) = v26;
            v28 = *(v0 + 40);
            v29 = *(v0 + 184);
            *(v0 + 16) = v26;
            v30 = swift_task_alloc();
            *(v0 + 152) = v30;
            *(v30 + 16) = v28;
            *(v30 + 24) = v22;
            *(v30 + 32) = v29;
            v31 = swift_task_alloc();
            *(v0 + 160) = v31;
            v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811178, &qword_20CD64D78);
            v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811180, &qword_20CD64D80);
            v18 = sub_20CD4F5F0();
            *v31 = v0;
            v31[1] = sub_20CD4E938;
            v15 = &unk_20CD64D70;
            v21 = v30;
            v16 = v32;
            v17 = v33;

            return MEMORY[0x282161238](v15, v21, v16, v17, v18);
          }

          v24 = *(v0 + 88);
          goto LABEL_29;
        }
      }

      else if (v23 != 37 && v23 != 52)
      {
        if (v23 == 84)
        {
          v25 = *(v0 + 104);
          v24 = *(v0 + 112);
LABEL_25:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811190, &qword_20CD64D90);
          v26 = swift_allocObject();
          *(v26 + 16) = xmmword_20CD64D00;
          sub_20CD50E10(0, &qword_28110F158, 0x277CCD830);
          *(v26 + 32) = MEMORY[0x20F310DB0](v25);
          v27 = (v26 + 40);
LABEL_30:
          *v27 = MEMORY[0x20F310DB0](v24);
          goto LABEL_31;
        }

        goto LABEL_27;
      }

      v25 = *(v0 + 88);
      v24 = *(v0 + 96);
      goto LABEL_25;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return MEMORY[0x282161238](v15, v21, v16, v17, v18);
  }

  v19 = *(v0 + 8);

  return v19(v8);
}

uint64_t sub_20CD4EEC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CD4EF3C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  v6 = *a2;
  *(v5 + 32) = a4;
  *(v5 + 40) = v6;
  return MEMORY[0x2822009F8](sub_20CD4EF68, 0, 0);
}

uint64_t sub_20CD4EF68()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_20CD4F028;
  v5 = *(v0 + 64);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);

  return MEMORY[0x282161288](v7, v6, v5, v2, v3);
}

uint64_t sub_20CD4F028(uint64_t a1)
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

    return MEMORY[0x2822009F8](sub_20CD4F174, 0, 0);
  }
}

uint64_t sub_20CD4F174()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[2];
  *v3 = v2;
  v3[1] = v1;
  v6 = v0[1];
  v4 = v2;

  return v6();
}

unint64_t sub_20CD4F1EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8111A0, &unk_20CD64DA0);
    v2 = sub_20CD63554();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = sub_20CD50E10(0, &qword_28110F160, 0x277CCD8D8);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = v5 + 63;
  if (v3 == MEMORY[0x277D837D0])
  {
    v25 = v8 >> 6;

    v26 = 0;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v30 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v30 >= v25)
      {
LABEL_36:

        return v2;
      }

      v7 = *(v4 + 8 * v30);
      ++v26;
      if (v7)
      {
        while (1)
        {
          v31 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v32 = (v30 << 9) | (8 * v31);
          v33 = *(*(a1 + 56) + v32);
          v34 = *(*(a1 + 48) + v32);

          result = sub_20CD52FCC(v34);
          if (v35)
          {
            v27 = *(v2 + 48);
            v28 = *(v27 + 8 * result);
            *(v27 + 8 * result) = v34;
            v29 = result;

            *(*(v2 + 56) + 8 * v29) = v33;

            v26 = v30;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v36 = *(v2 + 16);
            if (v36 >= *(v2 + 24))
            {
              goto LABEL_40;
            }

            *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
            *(*(v2 + 48) + 8 * result) = v34;
            *(*(v2 + 56) + 8 * result) = v33;
            *(v2 + 16) = v36 + 1;
            v26 = v30;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v30 = v26;
        }
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 64;

    v12 = 0;
    while (v7)
    {
LABEL_16:
      v15 = (v12 << 9) | (8 * __clz(__rbit64(v7)));
      v16 = *(*(a1 + 56) + v15);
      v17 = *(*(a1 + 48) + v15);

      result = sub_20CD63424();
      v18 = -1 << *(v2 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v2 + 48) + 8 * v13) = v17;
      *(*(v2 + 56) + 8 * v13) = v16;
      ++*(v2 + 16);
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v9)
      {
        goto LABEL_36;
      }

      v7 = *(v4 + 8 * v14);
      ++v12;
      if (v7)
      {
        v12 = v14;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_20CD4F52C(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_20CCED908;

  return sub_20CD4EF3C(a1, a2, v6, v7, v8);
}

unint64_t sub_20CD4F5F0()
{
  result = qword_28110F170;
  if (!qword_28110F170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C811178, &qword_20CD64D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110F170);
  }

  return result;
}

void sub_20CD4F654(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v7 = a1[5];
  v8 = *a3;
  v9 = a1[4];

  v10 = sub_20CD5301C(v9);
  v12 = v8[2];
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
  if (v8[3] < v15)
  {
    sub_20CD50198(v15, v6 & 1);
    v10 = sub_20CD5301C(v9);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_20CD50E10(0, &qword_28110F158, 0x277CCD830);
    v10 = sub_20CD635C4();
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
  sub_20CD50E58();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C18, &qword_20CD640B0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v21[6] + 8 * v10) = v9;
  *(v21[7] + 8 * v10) = v7;
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
    sub_20CD634B4();
    MEMORY[0x20F310C60](0xD00000000000001BLL, 0x800000020CD65BA0);
    sub_20CD50E10(0, &qword_28110F158, 0x277CCD830);
    sub_20CD63504();
    MEMORY[0x20F310C60](39, 0xE100000000000000);
    sub_20CD63514();
    __break(1u);
    return;
  }

  v21[2] = v23;
  if (v4 != 1)
  {
    v6 = a1 + 7;
    v24 = 1;
    while (v24 < a1[2])
    {
      v7 = *v6;
      v25 = *a3;
      v9 = *(v6 - 1);

      v26 = sub_20CD5301C(v9);
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
        sub_20CD50198(v30, 1);
        v26 = sub_20CD5301C(v9);
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
      *(v32[6] + 8 * v26) = v9;
      *(v32[7] + 8 * v26) = v7;
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

uint64_t sub_20CD4F9E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_20CD62514();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8111A8, &unk_20CD64DB0);
  v39 = v4;
  result = sub_20CD63544();
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

      sub_20CD50FBC(&qword_27C8111B0, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
      result = sub_20CD631D4();
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

uint64_t sub_20CD4FDBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_20CD626A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811198, &qword_20CD64D98);
  v39 = v4;
  result = sub_20CD63544();
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

      sub_20CD50FBC(&qword_28110F7D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_20CD631D4();
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

uint64_t sub_20CD50198(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811188, &qword_20CD64D88);
  result = sub_20CD63544();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_20CD63424();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_20CD50408(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_20CD62514();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_20CD52CD8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_20CD50910();
      goto LABEL_7;
    }

    sub_20CD4F9E0(v17, a3 & 1);
    v22 = sub_20CD52CD8(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_20CD507A0(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_20CD635C4();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_20CD505D4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_20CD626A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_20CD52EF8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_20CD50B90();
      goto LABEL_7;
    }

    sub_20CD4FDBC(v17, a3 & 1);
    v22 = sub_20CD52EF8(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_20CD50858(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_20CD635C4();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_20CD507A0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_20CD62514();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_20CD50858(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_20CD626A4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

char *sub_20CD50910()
{
  v1 = v0;
  v33 = sub_20CD62514();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8111A8, &unk_20CD64DB0);
  v3 = *v0;
  v4 = sub_20CD63534();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_20CD50B90()
{
  v1 = v0;
  v33 = sub_20CD626A4();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811198, &qword_20CD64D98);
  v3 = *v0;
  v4 = sub_20CD63534();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_20CD50E10(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *sub_20CD50E58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811188, &qword_20CD64D88);
  v2 = *v0;
  v3 = sub_20CD63534();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_20CD50FBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20CD51014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v5 = sub_20CD62654();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8111B8, &qword_20CD64E08);
  v4[24] = swift_task_alloc();
  v6 = sub_20CD627D4();
  v4[25] = v6;
  v4[26] = *(v6 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v7 = sub_20CD627A4();
  v4[29] = v7;
  v4[30] = *(v7 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8111C0, &qword_20CD64E10);
  v4[35] = swift_task_alloc();
  v8 = type metadata accessor for FitnessPlusSessionRepresentable(0);
  v4[36] = v8;
  v4[37] = *(v8 - 8);
  v4[38] = swift_task_alloc();
  v9 = sub_20CD62764();
  v4[39] = v9;
  v4[40] = *(v9 - 8);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD512F4, 0, 0);
}

uint64_t sub_20CD512F4()
{
  v1 = v0[20];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[43] = v4;
  *v4 = v0;
  v4[1] = sub_20CD51420;
  v5 = v0[17];

  return v7(v5, v2, v3);
}

uint64_t sub_20CD51420(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 352) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20CD51608, 0, 0);
  }
}

uint64_t sub_20CD51608()
{
  v1 = v0[20];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[45] = v4;
  *v4 = v0;
  v4[1] = sub_20CD51734;
  v5 = v0[44];

  return v7(v5, v2, v3);
}

uint64_t sub_20CD51734(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 368) = a1;
  *(v3 + 376) = v1;

  if (v1)
  {
    v4 = sub_20CD52130;
  }

  else
  {
    v4 = sub_20CD51848;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CD51848()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 368);
  v84 = *(v1 + 16);
  if (v84)
  {
    v3 = 0;
    v4 = *(v0 + 320);
    v5 = *(v4 + 16);
    v4 += 16;
    v85 = v5;
    v83 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v6 = *(v0 + 240);
    v7 = (v6 + 8);
    v75 = v6;
    v8 = (v6 + 32);
    v9 = *(v0 + 208);
    v72 = (v9 + 48);
    v73 = v8;
    v61 = (v9 + 16);
    v62 = (v9 + 32);
    v10 = *(v0 + 176);
    v59 = (v10 + 56);
    v60 = (v10 + 8);
    v63 = (v9 + 8);
    v82 = (v4 - 8);
    v11 = *(v0 + 296);
    v58 = *(v0 + 288);
    v81 = (v11 + 56);
    v12 = MEMORY[0x277D84F90];
    v74 = v11;
    v79 = *(v4 + 56);
    v80 = (v11 + 48);
    v76 = *(v0 + 368);
    v5(*(v0 + 336), v83, *(v0 + 312));
    while (1)
    {
      v13 = *(v2 + 16);
      if (v13)
      {
        v86 = v3;
        v87 = v12;
        v14 = *(v0 + 368) + ((*(v75 + 80) + 32) & ~*(v75 + 80));
        v15 = *(v75 + 72);
        v16 = *(v75 + 16);
        while (1)
        {
          v16(*(v0 + 256), v14, *(v0 + 232));
          v17 = sub_20CD62774();
          v19 = v18;
          if (v17 == sub_20CD62734() && v19 == v20)
          {
            break;
          }

          v22 = sub_20CD63594();

          if (v22)
          {
            goto LABEL_16;
          }

          (*v7)(*(v0 + 256), *(v0 + 232));
          v14 += v15;
          if (!--v13)
          {
            v12 = v87;
            v2 = v76;
            goto LABEL_22;
          }
        }

LABEL_16:
        v24 = *(v0 + 264);
        v23 = *(v0 + 272);
        v25 = *(v0 + 232);
        v26 = *(v0 + 192);
        v77 = *(v0 + 200);
        v27 = *(v0 + 144);
        v28 = *v73;
        (*v73)(v24, *(v0 + 256), v25);
        v28(v23, v24, v25);
        *(swift_task_alloc() + 16) = v23;
        sub_20CD52290(sub_20CD525B8, v27, MEMORY[0x277D52AF8], v26);

        if ((*v72)(v26, 1, v77) == 1)
        {
          v29 = *(v0 + 192);
          v30 = &qword_27C8111B8;
          v31 = &qword_20CD64E08;
        }

        else
        {
          v32 = *(v0 + 336);
          v33 = *(v0 + 152);
          (*v62)(*(v0 + 224), *(v0 + 192), *(v0 + 200));
          *(swift_task_alloc() + 16) = v32;
          sub_20CD52464(sub_20CD52CB8, v33, v0 + 56);

          if (*(v0 + 80))
          {
            v35 = *(v0 + 328);
            v34 = *(v0 + 336);
            v36 = *(v0 + 312);
            v71 = *(v0 + 288);
            v37 = *(v0 + 272);
            v38 = *(v0 + 248);
            v40 = *(v0 + 224);
            v39 = *(v0 + 232);
            v69 = v39;
            v70 = v37;
            v64 = *(v0 + 216);
            v65 = *(v0 + 280);
            v78 = *(v0 + 200);
            v66 = *(v0 + 184);
            v67 = *(v0 + 168);
            sub_20CCEC32C((v0 + 56), v0 + 16);
            v68 = v36;
            v85(v35, v34, v36);
            v16(v38, v37, v39);
            (*v61)(v64, v40, v78);
            sub_20CCEE234(v0 + 16, v0 + 96);
            v85(v65, v35, v36);
            sub_20CD62794();
            sub_20CD629C4();
            v41 = sub_20CD627C4();
            v43 = v42;
            LOBYTE(v39) = v44;
            sub_20CCEE6AC(v65 + v58[6]);
            sub_20CCEE750(v41, v43, v39 & 1);
            sub_20CCEE234(v0 + 96, v65 + v58[7]);
            v45 = v58[8];
            _s31FitnessIntelligenceSnapshotting0A24PlusSessionRepresentableV5start10Foundation4DateVvg_0();
            sub_20CD62744();
            sub_20CD62554();
            (*v60)(v66, v67);
            (*v59)(v65 + v45, 0, 1, v67);
            sub_20CD62744();
            v46 = [objc_opt_self() seconds];
            sub_20CD50E10(0, &qword_28110F150, 0x277CCADD0);
            sub_20CD624B4();
            __swift_destroy_boxed_opaque_existential_0((v0 + 96));
            v47 = *v63;
            (*v63)(v64, v78);
            v48 = *v7;
            (*v7)(v38, v69);
            v49 = *v82;
            (*v82)(v35, v68);
            __swift_destroy_boxed_opaque_existential_0((v0 + 16));
            v47(v40, v78);
            (*v81)(v65, 0, 1, v71);
            v48(v70, v69);
            v3 = v86;
            v12 = v87;
            v2 = v76;
            goto LABEL_24;
          }

          (*v63)(*(v0 + 224), *(v0 + 200));
          v29 = v0 + 56;
          v30 = &unk_27C8111C8;
          v31 = &unk_20CD64E18;
        }

        sub_20CD1DA10(v29, v30, v31);
        v12 = v87;
        v2 = v76;
        (*v7)(*(v0 + 272), *(v0 + 232));
LABEL_22:
        v3 = v86;
      }

      (*v81)(*(v0 + 280), 1, 1, *(v0 + 288));
      v49 = *v82;
LABEL_24:
      v51 = *(v0 + 280);
      v50 = *(v0 + 288);
      v49(*(v0 + 336), *(v0 + 312));
      if ((*v80)(v51, 1, v50) == 1)
      {
        sub_20CD1DA10(*(v0 + 280), &qword_27C8111C0, &qword_20CD64E10);
      }

      else
      {
        sub_20CD525D8(*(v0 + 280), *(v0 + 304));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_20CD52ADC(0, v12[2] + 1, 1, v12, &qword_27C8111D0, &qword_20CD64E20, type metadata accessor for FitnessPlusSessionRepresentable);
        }

        v53 = v12[2];
        v52 = v12[3];
        if (v53 >= v52 >> 1)
        {
          v12 = sub_20CD52ADC((v52 > 1), v53 + 1, 1, v12, &qword_27C8111D0, &qword_20CD64E20, type metadata accessor for FitnessPlusSessionRepresentable);
        }

        v54 = *(v0 + 304);
        v12[2] = v53 + 1;
        sub_20CD525D8(v54, v12 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v53);
      }

      if (++v3 == v84)
      {
        break;
      }

      v85(*(v0 + 336), v83 + v3 * v79, *(v0 + 312));
    }

    v55 = v12;
  }

  else
  {

    v55 = MEMORY[0x277D84F90];
  }

  v56 = *(v0 + 8);

  return v56(v55);
}

uint64_t sub_20CD52130()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CD52290@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v24 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v8;
    v22 = a4;
    v13 = *(v8 + 16);
    v12 = v8 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v7);
      v17 = v24(v10);
      if (v4)
      {
        return (*v14)(v10, v7);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v7);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v8 = v21;
        a4 = v22;
        return (*(v8 + 56))(a4, v18, 1, v7);
      }
    }

    v8 = v21;
    a4 = v22;
    (*(v21 + 32))(v22, v10, v7);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v8 + 56))(a4, v18, 1, v7);
}

uint64_t (*sub_20CD52464@<X0>(uint64_t (*result)(__int128 *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>))(__int128 *)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_20CCEE234(v7, v9);
      v8 = v6(v9);
      if (v3)
      {
        return __swift_destroy_boxed_opaque_existential_0(v9);
      }

      if (v8)
      {
        return sub_20CCEC32C(v9, a3);
      }

      result = __swift_destroy_boxed_opaque_existential_0(v9);
      v7 += 40;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_20CD5251C()
{
  v0 = sub_20CD627B4();
  v2 = v1;
  if (v0 == sub_20CD62784() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_20CD63594();
  }

  return v4 & 1;
}

uint64_t sub_20CD525D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FitnessPlusSessionRepresentable(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CD5263C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v1 = sub_20CD62D74();
  v2 = sub_20CD62874();
  if (!*(v1 + 16))
  {

    goto LABEL_9;
  }

  v4 = sub_20CD52E80(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  sub_20CD28ED4(*(v1 + 56) + 32 * v4, v13);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    _s31FitnessIntelligenceSnapshotting0A24PlusSessionRepresentableV10identifierSSvg_0();
    goto LABEL_11;
  }

  v8 = _s31FitnessIntelligenceSnapshotting0A24PlusSessionRepresentableV10identifierSSvg_0();
  if (!v12)
  {
LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  if (v11 == v8 && v12 == v7)
  {

    v9 = 1;
  }

  else
  {
    v9 = sub_20CD63594();
  }

LABEL_12:

  return v9 & 1;
}

void *sub_20CD528CC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_20CD52ADC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

unint64_t sub_20CD52CD8(uint64_t a1)
{
  sub_20CD62514();
  v2 = MEMORY[0x277CC88A8];
  sub_20CD53390(&qword_27C8111B0, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
  v3 = sub_20CD631D4();
  return sub_20CD5306C(a1, v3, MEMORY[0x277CC88A8], &qword_27C8111D8, v2, MEMORY[0x277CC88C8]);
}

unint64_t sub_20CD52DAC(uint64_t a1)
{
  sub_20CD62AB4();
  v2 = MEMORY[0x277D09F70];
  sub_20CD53390(&qword_28110F780, MEMORY[0x277D09F70], MEMORY[0x277D09F78]);
  v3 = sub_20CD631D4();
  return sub_20CD5306C(a1, v3, MEMORY[0x277D09F70], &qword_28110F770, v2, MEMORY[0x277D09F88]);
}

unint64_t sub_20CD52E80(uint64_t a1, uint64_t a2)
{
  sub_20CD63624();
  sub_20CD63284();
  v4 = sub_20CD63644();

  return sub_20CD5320C(a1, a2, v4);
}

unint64_t sub_20CD52EF8(uint64_t a1)
{
  sub_20CD626A4();
  v2 = MEMORY[0x277CC95F0];
  sub_20CD53390(&qword_28110F7D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_20CD631D4();
  return sub_20CD5306C(a1, v3, MEMORY[0x277CC95F0], &qword_28110F7D0, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_20CD5306C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
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
      sub_20CD53390(v23, v24, v25);
      v19 = sub_20CD63234();
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

unint64_t sub_20CD5320C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_20CD63594())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_20CD532C4(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_20CD50E10(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_20CD63434();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_20CD53390(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_20CD533D8(void *a1)
{
  v3 = sub_20CD626A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting16SanityTaskClient_proxyProvider] = 0;
  sub_20CD62694();
  (*(v4 + 32))(&v1[OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting16SanityTaskClient_identifier], v6, v3);
  *&v1[OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting16SanityTaskClient_healthStore] = a1;
  v7 = objc_allocWithZone(MEMORY[0x277CCD6A8]);
  v8 = a1;
  v9 = [v7 initWithHealthStore_];
  *&v1[OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting16SanityTaskClient_nanoSyncControl] = v9;
  v10 = type metadata accessor for SanityTaskClient(0);
  v18.receiver = v1;
  v18.super_class = v10;
  v11 = objc_msgSendSuper2(&v18, sel_init);
  sub_20CD62DA4();
  (*(v4 + 16))(v6, &v11[OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting16SanityTaskClient_identifier], v3);
  v12 = objc_allocWithZone(MEMORY[0x277CCDAA0]);
  v13 = sub_20CD63244();

  v14 = sub_20CD62674();
  v15 = [v12 initWithHealthStore:v8 taskIdentifier:v13 exportedObject:v11 taskUUID:v14];

  (*(v4 + 8))(v6, v3);
  v16 = *&v11[OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting16SanityTaskClient_proxyProvider];
  *&v11[OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting16SanityTaskClient_proxyProvider] = v15;

  return v11;
}

id sub_20CD5363C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SanityTaskClient(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SanityTaskClient(uint64_t a1)
{
  result = qword_28110F868;
  if (!qword_28110F868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CD53764(uint64_t a1)
{
  result = sub_20CD626A4();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_20CD5380C(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)())
{
  sub_20CD28ED4(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811238, &unk_20CD64F00);
  if (swift_dynamicCast())
  {
    a4();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_20CD54450();
    v6 = swift_allocError();
    *v7 = 1;
    a2();
  }
}

uint64_t sub_20CD538E0(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811228, &unk_20CD64EF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = *(v4 + 16);
  v12(&v29 - v10, a1, v3);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v32 = swift_allocObject();
  v33 = v4;
  v14 = *(v4 + 32);
  v14(v32 + v13, v11, v3);
  v12(v9, v30, v3);
  v12(v34, v9, v3);
  v15 = swift_allocObject();
  v16 = v15 + v13;
  v17 = v3;
  v14(v16, v9, v3);
  v18 = *(v31 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting16SanityTaskClient_proxyProvider);
  if (v18)
  {
    v19 = swift_allocObject();
    v19[2] = sub_20CD543A8;
    v19[3] = v15;
    v20 = v32;
    v19[4] = sub_20CD54390;
    v19[5] = v20;
    v39 = sub_20CD544A4;
    v40 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_20CD49844;
    v38 = &block_descriptor_2;
    v21 = _Block_copy(&aBlock);
    v22 = v18;

    v39 = sub_20CD543A8;
    v40 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_20CD498B4;
    v38 = &block_descriptor_14_0;
    v23 = _Block_copy(&aBlock);

    [v22 fetchProxyWithHandler:v21 errorHandler:v23];

    _Block_release(v23);
    _Block_release(v21);

    v24 = v34;
  }

  else
  {
    sub_20CD54450();
    v25 = swift_allocError();
    *v26 = 0;
    v27 = v34;
    sub_20CD540A0(v25);

    v24 = v27;
  }

  return (*(v33 + 8))(v24, v17);
}

void sub_20CD53CA0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811228, &unk_20CD64EF0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a2, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_20CD5455C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CD4A71C;
  aBlock[3] = &block_descriptor_20_0;
  v10 = _Block_copy(aBlock);

  [a1 queryMismatchingCheckpointsWithCompletion_];
  _Block_release(v10);
}

uint64_t sub_20CD53E50(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v6 = sub_20CD62BE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v18 = a2;
    v10 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811228, &unk_20CD64EF0);
    return sub_20CD63334();
  }

  else
  {
    v12 = *(a1 + 16);
    v13 = MEMORY[0x277D84F90];
    if (v12)
    {
      v17[0] = a3;
      v18 = MEMORY[0x277D84F90];
      sub_20CD46DB4(0, v12, 0);
      v13 = v18;
      v17[1] = v7 + 32;
      v14 = (a1 + 40);
      do
      {
        sub_20CD1CF44(*(v14 - 1), *v14);
        sub_20CD545E8();
        sub_20CD62D54();
        v18 = v13;
        v16 = v13[2];
        v15 = v13[3];
        if (v16 >= v15 >> 1)
        {
          sub_20CD46DB4((v15 > 1), v16 + 1, 1);
          v13 = v18;
        }

        v14 += 2;
        v13[2] = v16 + 1;
        (*(v7 + 32))(v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, v9, v6);
        --v12;
      }

      while (v12);
    }

    v18 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811228, &unk_20CD64EF0);
    return sub_20CD63344();
  }
}

uint64_t sub_20CD540A0(void *a1)
{
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v2 = sub_20CD631B4();
  __swift_project_value_buffer(v2, qword_28110F878);
  v3 = a1;
  v4 = sub_20CD63194();
  v5 = sub_20CD633B4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_20CD635D4();
    v10 = sub_20CD6153C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_20CCEA000, v4, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x20F3115B0](v7, -1, -1);
    MEMORY[0x20F3115B0](v6, -1, -1);
  }

  v13 = a1;
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811228, &unk_20CD64EF0);
  return sub_20CD63334();
}

void sub_20CD542A8()
{
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v0 = sub_20CD631B4();
  __swift_project_value_buffer(v0, qword_28110F878);
  oslog = sub_20CD63194();
  v1 = sub_20CD633D4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_20CCEA000, oslog, v1, "SanityTaskClient connection invalidated", v2, 2u);
    MEMORY[0x20F3115B0](v2, -1, -1);
  }
}

uint64_t sub_20CD543C0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811228, &unk_20CD64EF0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_20CD54450()
{
  result = qword_27C811230;
  if (!qword_27C811230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C811230);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_2()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811228, &unk_20CD64EF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20CD5455C(uint64_t a1, unint64_t *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811228, &unk_20CD64EF0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_20CD53E50(a1, a2, v6);
}

unint64_t sub_20CD545E8()
{
  result = qword_27C811240;
  if (!qword_27C811240)
  {
    sub_20CD62BE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C811240);
  }

  return result;
}

unint64_t sub_20CD54654()
{
  result = qword_27C811248;
  if (!qword_27C811248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C811248);
  }

  return result;
}

uint64_t sub_20CD546C8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_20CD62AB4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_20CD62FD4();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD547E8, 0, 0);
}

uint64_t sub_20CD547E8()
{
  v1 = v0[4];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_20CD548A4;
  v5 = v0[2];

  return MEMORY[0x2821612A0](v5, v2, v3);
}

uint64_t sub_20CD548A4(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 96) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20CD54A00, 0, 0);
  }
}

uint64_t sub_20CD54A00()
{
  v1 = v0[12];
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0[12]; v2; i = v0[12])
  {
    v4 = 0;
    v5 = v0[9];
    v20 = v1 & 0xFFFFFFFFFFFFFF8;
    v21 = v1 & 0xC000000000000001;
    v18 = (v0[6] + 8);
    v17 = i + 32;
    v6 = MEMORY[0x277D84F90];
    v19 = v2;
    while (1)
    {
      if (v21)
      {
        v7 = MEMORY[0x20F310EA0](v4, v0[12]);
      }

      else
      {
        if (v4 >= *(v20 + 16))
        {
          goto LABEL_16;
        }

        v7 = *(v17 + 8 * v4);
      }

      v8 = v7;
      v1 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = v0[7];
      v10 = v0[5];
      [v7 _activitySummaryIndex];
      sub_20CD62AC4();
      sub_20CD62FC4();

      (*v18)(v9, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_20CD52AB4(0, v6[2] + 1, 1, v6);
      }

      v12 = v6[2];
      v11 = v6[3];
      if (v12 >= v11 >> 1)
      {
        v6 = sub_20CD52AB4((v11 > 1), v12 + 1, 1, v6);
      }

      v13 = v0[10];
      v14 = v0[8];
      v6[2] = v12 + 1;
      (*(v5 + 32))(v6 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v13, v14);
      ++v4;
      if (v1 == v19)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v2 = sub_20CD63524();
  }

  v6 = MEMORY[0x277D84F90];
LABEL_19:

  v15 = v0[1];

  return v15(v6);
}

uint64_t sub_20CD54C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811360, &qword_20CD653E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_20CD5A81C(a3, v22 - v9);
  v11 = sub_20CD63374();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_20CD5A88C(v10);
  }

  else
  {
    sub_20CD63364();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_20CD63314();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_20CD63274() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C10, &unk_20CD650C0);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_20CD5A88C(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20CD5A88C(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C10, &unk_20CD650C0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_20CD54F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811360, &qword_20CD653E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_20CD5A81C(a3, v22 - v9);
  v11 = sub_20CD63374();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_20CD5A88C(v10);
  }

  else
  {
    sub_20CD63364();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_20CD63314();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_20CD63274() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_20CD5A88C(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20CD5A88C(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_20CD55204(uint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), unint64_t *a3, uint64_t a4, void (*a5)(uint64_t *, unint64_t))
{
  v25 = a4;
  v26 = a5;
  v24 = a3;
  v7 = sub_20CD63084();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v28 = MEMORY[0x277D84F90];
    v22 = a2;
    a2(0, v11, 0);
    v12 = v28;
    v15 = *(v8 + 16);
    v14 = v8 + 16;
    v13 = v15;
    v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v23 = *(v14 + 56);
    do
    {
      v13(v10, v16, v7);
      v28 = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);
      if (v18 >= v17 >> 1)
      {
        v22(v17 > 1, v18 + 1, 1);
      }

      v27[3] = v7;
      v27[4] = sub_20CD5AB20(v24, MEMORY[0x277D0A6A0], v25);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
      v13(boxed_opaque_existential_1, v10, v7);
      v12 = v28;
      *(v28 + 16) = v18 + 1;
      v26(v27, v12 + 40 * v18 + 32);
      (*(v14 - 8))(v10, v7);
      v16 += v23;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_20CD55408(uint64_t a1)
{
  v2 = type metadata accessor for FitnessPlusSessionRepresentable(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v17 = MEMORY[0x277D84F90];
    sub_20CD46D30(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_20CD5A594(v8, v5);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_20CD46D30((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_20CD5AB20(&qword_27C810CD8, type metadata accessor for FitnessPlusSessionRepresentable, &protocol conformance descriptor for FitnessPlusSessionRepresentable);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_20CD5A594(v5, boxed_opaque_existential_1);
      *(v7 + 16) = v11 + 1;
      sub_20CCEC32C(&v14, v7 + 40 * v11 + 32);
      sub_20CD5A5F8(v5);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_20CD555D0(uint64_t a1)
{
  v2 = sub_20CD62FD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v21 = MEMORY[0x277D84F90];
    sub_20CD46D30(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_20CD46D30((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = MEMORY[0x277D0A620];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
      v9(boxed_opaque_existential_1, v5, v2);
      v7 = v21;
      *(v21 + 16) = v13 + 1;
      sub_20CCEC32C(&v18, v7 + 40 * v13 + 32);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_20CD557A4()
{
  sub_20CD63624();
  MEMORY[0x20F311000](0);
  return sub_20CD63644();
}

uint64_t sub_20CD55810(uint64_t a1)
{
  sub_20CD63624();
  MEMORY[0x20F311000](0);
  return sub_20CD63644();
}

uint64_t sub_20CD55850(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_20CD62514();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v3[13] = *(v5 + 64);
  v3[14] = swift_task_alloc();
  v6 = sub_20CD62E94();
  v3[15] = v6;
  v7 = *(v6 - 8);
  v3[16] = v7;
  v3[17] = *(v7 + 64);
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811360, &qword_20CD653E0);
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD559B8, v2, 0);
}

uint64_t sub_20CD559B8()
{
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_cache;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v4 = v0[8];

    v5 = sub_20CD52CD8(v4);
    if (v6)
    {
      v7 = *(*(v3 + 56) + 8 * v5);

      goto LABEL_6;
    }
  }

  v9 = v0[18];
  v8 = v0[19];
  v30 = v1;
  v31 = v8;
  v10 = v0[16];
  v12 = v0[14];
  v11 = v0[15];
  v26 = v12;
  v13 = v0[12];
  v27 = v0[13];
  v28 = v0[17];
  v14 = v0[11];
  v29 = v0[10];
  v15 = v0[8];
  v23 = v0[9];
  v25 = v14;
  v32 = v15;
  v16 = sub_20CD63374();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  (*(v10 + 16))(v9, v23, v11);
  (*(v13 + 16))(v12, v15, v14);
  v24 = sub_20CD5AB20(&qword_27C811298, type metadata accessor for SnapshotRetriverRepresentableProvider, &unk_20CD65080);
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = (v28 + *(v13 + 80) + v17) & ~*(v13 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v29;
  *(v19 + 24) = v24;
  (*(v10 + 32))(v19 + v17, v9, v11);
  (*(v13 + 32))(v19 + v18, v26, v25);
  *(v19 + ((v27 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;
  swift_retain_n();
  v7 = sub_20CD54C8C(0, 0, v31, &unk_20CD650D8, v19);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(v30 + v2);
  *(v30 + v2) = 0x8000000000000000;
  sub_20CD50408(v7, v32, isUniquelyReferenced_nonNull_native);
  *(v30 + v2) = v33;
  swift_endAccess();
LABEL_6:

  v21 = v0[1];

  return v21(v7);
}

uint64_t sub_20CD55CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v8 = sub_20CD62514();
  v6[6] = v8;
  v6[7] = *(v8 - 8);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v9 = sub_20CD62E94();
  v6[10] = v9;
  v6[11] = *(v9 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v10 = sub_20CD62654();
  v6[15] = v10;
  v6[16] = *(v10 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD55E8C, a6, 0);
}

uint64_t sub_20CD55E8C(uint64_t a1)
{
  v52 = v1;
  sub_20CD62644();
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v2 = v1[14];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[9];
  v6 = v1[6];
  v7 = v1[7];
  v9 = v1[3];
  v8 = v1[4];
  v10 = sub_20CD631B4();
  v1[20] = __swift_project_value_buffer(v10, qword_28110F878);
  v11 = *(v4 + 16);
  v1[21] = v11;
  v1[22] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v50 = v11;
  v11(v2, v9, v3);
  v12 = *(v7 + 16);
  v1[23] = v12;
  v1[24] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v5, v8, v6);
  v13 = sub_20CD63194();
  v14 = sub_20CD633D4();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v1[14];
  v18 = v1[10];
  v17 = v1[11];
  v19 = v1[9];
  v21 = v1[6];
  v20 = v1[7];
  if (v15)
  {
    log = v13;
    v22 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v51[0] = v49;
    *v22 = 136315394;
    v23 = sub_20CD62E84();
    v47 = v14;
    v25 = v24;
    v46 = v19;
    v26 = *(v17 + 8);
    v26(v16, v18);
    v27 = sub_20CD6153C(v23, v25, v51);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    sub_20CD5AB20(&qword_28110F7F8, MEMORY[0x277CC88A8], MEMORY[0x277CC88E0]);
    v28 = sub_20CD63574();
    v30 = v29;
    v31 = *(v20 + 8);
    v31(v46, v21);
    v32 = sub_20CD6153C(v28, v30, v51);

    *(v22 + 14) = v32;
    _os_log_impl(&dword_20CCEA000, log, v47, "[SnapshotRetriverRepresentableProvider] Starting to fetch %s representables for date: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v49, -1, -1);
    MEMORY[0x20F3115B0](v22, -1, -1);
  }

  else
  {

    v31 = *(v20 + 8);
    v31(v19, v21);
    v26 = *(v17 + 8);
    v26(v16, v18);
  }

  v1[25] = v31;
  v1[26] = v26;
  v33 = v1[13];
  v34 = v1[10];
  v35 = v1[11];
  v50(v33, v1[3], v34);
  v36 = (*(v35 + 88))(v33, v34);
  if (v36 == *MEMORY[0x277D0A428])
  {

    return MEMORY[0x2822009F8](sub_20CD56438, 0, 0);
  }

  else if (v36 == *MEMORY[0x277D0A430])
  {
    v37 = swift_task_alloc();
    v1[34] = v37;
    *v37 = v1;
    v37[1] = sub_20CD56D9C;
    v38 = v1[4];

    return sub_20CD4DBF4(v38, 1);
  }

  else if (v36 == *MEMORY[0x277D0A420])
  {
    v39 = swift_task_alloc();
    v1[38] = v39;
    *v39 = v1;
    v39[1] = sub_20CD57474;
    v40 = v1[4];

    return sub_20CD59C10(v40);
  }

  else
  {
    v41 = v1[19];
    v42 = v1[15];
    v43 = v1[16];
    sub_20CD5A8F4();
    swift_allocError();
    swift_willThrow();
    (*(v43 + 8))(v41, v42);
    v26(v1[13], v1[10]);

    v44 = v1[1];

    return v44();
  }
}

uint64_t sub_20CD56438()
{
  v1 = (v0[5] + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_healthStore);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_20CD56500;
  v5 = v0[4];

  return MEMORY[0x282161280](v5, v2, v3);
}

uint64_t sub_20CD56500(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 224) = a1;

  if (v1)
  {
    v4[33] = v1;
    v6 = v4[5];

    return MEMORY[0x2822009F8](sub_20CD56CB8, v6, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[29] = v7;
    *v7 = v5;
    v7[1] = sub_20CD5669C;
    v8 = v4[4];

    return sub_20CD546C8(v8, a1);
  }
}

uint64_t sub_20CD5669C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v5 = sub_20CD56C48;
  }

  else
  {

    *(v4 + 248) = a1;
    v5 = sub_20CD567CC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20CD567CC()
{
  v1 = v0[5];
  v0[32] = sub_20CD555D0(v0[31]);

  return MEMORY[0x2822009F8](sub_20CD56848, v1, 0);
}

uint64_t sub_20CD56848()
{
  v48 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);
  v46 = *(v0 + 256);
  v3 = *(v0 + 144);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 64);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);
  (*(v0 + 168))(*(v0 + 96), *(v0 + 24), *(v0 + 80));
  v1(v6, v8, v7);
  (*(v4 + 16))(v3, v2, v5);
  v9 = sub_20CD63194();
  v10 = sub_20CD633D4();
  v11 = os_log_type_enabled(v9, v10);
  v42 = *(v0 + 208);
  v43 = *(v0 + 200);
  v44 = *(v0 + 152);
  v45 = *(v0 + 144);
  if (v11)
  {
    v12 = *(v0 + 128);
    v39 = *(v0 + 136);
    v40 = *(v0 + 120);
    v41 = v10;
    v13 = *(v0 + 96);
    v14 = *(v0 + 80);
    v37 = *(v0 + 64);
    v15 = *(v0 + 48);
    v16 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v47 = v38;
    *v16 = 136315650;
    v17 = sub_20CD62E84();
    v19 = v18;
    v42(v13, v14);
    v20 = sub_20CD6153C(v17, v19, &v47);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    sub_20CD5AB20(&qword_28110F7F8, MEMORY[0x277CC88A8], MEMORY[0x277CC88E0]);
    v21 = sub_20CD63574();
    v23 = v22;
    v43(v37, v15);
    v24 = sub_20CD6153C(v21, v23, &v47);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2048;
    sub_20CD62644();
    sub_20CD62544();
    v26 = v25;
    v27 = *(v12 + 8);
    v27(v39, v40);
    v27(v45, v40);
    *(v16 + 24) = v26;
    _os_log_impl(&dword_20CCEA000, v9, v41, "[SnapshotRetriverRepresentableProvider] Fetched %s representables for %s in %f seconds", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v38, -1, -1);
    MEMORY[0x20F3115B0](v16, -1, -1);

    v27(v44, v40);
  }

  else
  {
    v28 = *(v0 + 120);
    v29 = *(v0 + 128);
    v30 = *(v0 + 96);
    v31 = *(v0 + 80);
    v32 = *(v0 + 64);
    v33 = *(v0 + 48);

    v34 = *(v29 + 8);
    v34(v45, v28);
    v43(v32, v33);
    v42(v30, v31);
    v34(v44, v28);
  }

  **(v0 + 16) = v46;

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_20CD56C48()
{

  v0[33] = v0[30];
  v1 = v0[5];

  return MEMORY[0x2822009F8](sub_20CD56CB8, v1, 0);
}

uint64_t sub_20CD56CB8()
{
  (*(v0[16] + 8))(v0[19], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20CD56D9C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 280) = v1;

  if (v1)
  {
    v5 = *(v4 + 40);
    v6 = sub_20CD57390;
  }

  else
  {
    *(v4 + 288) = a1;
    v6 = sub_20CD56ED0;
    v5 = 0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_20CD56ED0()
{
  v1 = v0[5];
  v0[37] = sub_20CD55204(v0[36], sub_20CD46D30, &qword_28110F648, MEMORY[0x277D0A690], sub_20CD5AD9C);

  return MEMORY[0x2822009F8](sub_20CD56F90, v1, 0);
}

uint64_t sub_20CD56F90()
{
  v48 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);
  v46 = *(v0 + 296);
  v3 = *(v0 + 144);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 64);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);
  (*(v0 + 168))(*(v0 + 96), *(v0 + 24), *(v0 + 80));
  v1(v6, v8, v7);
  (*(v4 + 16))(v3, v2, v5);
  v9 = sub_20CD63194();
  v10 = sub_20CD633D4();
  v11 = os_log_type_enabled(v9, v10);
  v42 = *(v0 + 208);
  v43 = *(v0 + 200);
  v44 = *(v0 + 152);
  v45 = *(v0 + 144);
  if (v11)
  {
    v12 = *(v0 + 128);
    v39 = *(v0 + 136);
    v40 = *(v0 + 120);
    v41 = v10;
    v13 = *(v0 + 96);
    v14 = *(v0 + 80);
    v37 = *(v0 + 64);
    v15 = *(v0 + 48);
    v16 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v47 = v38;
    *v16 = 136315650;
    v17 = sub_20CD62E84();
    v19 = v18;
    v42(v13, v14);
    v20 = sub_20CD6153C(v17, v19, &v47);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    sub_20CD5AB20(&qword_28110F7F8, MEMORY[0x277CC88A8], MEMORY[0x277CC88E0]);
    v21 = sub_20CD63574();
    v23 = v22;
    v43(v37, v15);
    v24 = sub_20CD6153C(v21, v23, &v47);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2048;
    sub_20CD62644();
    sub_20CD62544();
    v26 = v25;
    v27 = *(v12 + 8);
    v27(v39, v40);
    v27(v45, v40);
    *(v16 + 24) = v26;
    _os_log_impl(&dword_20CCEA000, v9, v41, "[SnapshotRetriverRepresentableProvider] Fetched %s representables for %s in %f seconds", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v38, -1, -1);
    MEMORY[0x20F3115B0](v16, -1, -1);

    v27(v44, v40);
  }

  else
  {
    v28 = *(v0 + 120);
    v29 = *(v0 + 128);
    v30 = *(v0 + 96);
    v31 = *(v0 + 80);
    v32 = *(v0 + 64);
    v33 = *(v0 + 48);

    v34 = *(v29 + 8);
    v34(v45, v28);
    v43(v32, v33);
    v42(v30, v31);
    v34(v44, v28);
  }

  **(v0 + 16) = v46;

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_20CD57390()
{
  (*(v0[16] + 8))(v0[19], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20CD57474(uint64_t a1)
{
  v4 = *v2;
  v4[39] = v1;

  v5 = v4[5];
  if (v1)
  {
    v6 = sub_20CD579B0;
  }

  else
  {
    v4[40] = a1;
    v6 = sub_20CD575B0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_20CD575B0()
{
  v48 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);
  v46 = *(v0 + 320);
  v3 = *(v0 + 144);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 64);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);
  (*(v0 + 168))(*(v0 + 96), *(v0 + 24), *(v0 + 80));
  v1(v6, v8, v7);
  (*(v4 + 16))(v3, v2, v5);
  v9 = sub_20CD63194();
  v10 = sub_20CD633D4();
  v11 = os_log_type_enabled(v9, v10);
  v42 = *(v0 + 208);
  v43 = *(v0 + 200);
  v44 = *(v0 + 152);
  v45 = *(v0 + 144);
  if (v11)
  {
    v12 = *(v0 + 128);
    v39 = *(v0 + 136);
    v40 = *(v0 + 120);
    v41 = v10;
    v13 = *(v0 + 96);
    v14 = *(v0 + 80);
    v37 = *(v0 + 64);
    v15 = *(v0 + 48);
    v16 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v47 = v38;
    *v16 = 136315650;
    v17 = sub_20CD62E84();
    v19 = v18;
    v42(v13, v14);
    v20 = sub_20CD6153C(v17, v19, &v47);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    sub_20CD5AB20(&qword_28110F7F8, MEMORY[0x277CC88A8], MEMORY[0x277CC88E0]);
    v21 = sub_20CD63574();
    v23 = v22;
    v43(v37, v15);
    v24 = sub_20CD6153C(v21, v23, &v47);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2048;
    sub_20CD62644();
    sub_20CD62544();
    v26 = v25;
    v27 = *(v12 + 8);
    v27(v39, v40);
    v27(v45, v40);
    *(v16 + 24) = v26;
    _os_log_impl(&dword_20CCEA000, v9, v41, "[SnapshotRetriverRepresentableProvider] Fetched %s representables for %s in %f seconds", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v38, -1, -1);
    MEMORY[0x20F3115B0](v16, -1, -1);

    v27(v44, v40);
  }

  else
  {
    v28 = *(v0 + 120);
    v29 = *(v0 + 128);
    v30 = *(v0 + 96);
    v31 = *(v0 + 80);
    v32 = *(v0 + 64);
    v33 = *(v0 + 48);

    v34 = *(v29 + 8);
    v34(v45, v28);
    v43(v32, v33);
    v42(v30, v31);
    v34(v44, v28);
  }

  **(v0 + 16) = v46;

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_20CD579B0()
{
  (*(v0[16] + 8))(v0[19], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20CD57A94(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_20CD62E94();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v3[13] = *(v5 + 64);
  v3[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811360, &qword_20CD653E0);
  v3[15] = swift_task_alloc();
  v6 = sub_20CD62514();
  v3[16] = v6;
  v7 = *(v6 - 8);
  v3[17] = v7;
  v3[18] = *(v7 + 64);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v8 = sub_20CD62654();
  v3[21] = v8;
  v9 = *(v8 - 8);
  v3[22] = v9;
  v3[23] = *(v9 + 64);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD57C84, v2, 0);
}

uint64_t sub_20CD57C84()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[22];
  v6 = v0[10];
  v7 = v0[8];
  sub_20CD626B4();
  v8 = *(v5 + 16);
  v8(v2, v1, v4);
  v46 = v8;
  v8(v3, v7, v4);
  sub_20CD624D4();
  v9 = OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_cache;
  swift_beginAccess();
  v48 = v6;
  v10 = *(v6 + v9);
  if (*(v10 + 16))
  {
    v11 = v0[20];

    v12 = sub_20CD52CD8(v11);
    if (v13)
    {
      v49 = *(*(v10 + 56) + 8 * v12);

      goto LABEL_6;
    }
  }

  v14 = v0[25];
  v41 = v0[22];
  v42 = v0[23];
  v15 = v0[21];
  v40 = v15;
  v45 = v9;
  v50 = v0[19];
  v51 = v0[20];
  v16 = v0[16];
  v17 = v0[17];
  v18 = v0[14];
  v19 = v0[15];
  v44 = v19;
  v20 = v0[12];
  v38 = v18;
  v39 = v0[13];
  v21 = v0[11];
  v43 = v0[10];
  v35 = v0[9];
  v36 = v0[8];
  v37 = v21;
  v22 = sub_20CD63374();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  (*(v20 + 16))(v18, v35, v21);
  v46(v14, v36, v15);
  (*(v17 + 16))(v50, v51, v16);
  v47 = sub_20CD5AB20(&qword_27C811298, type metadata accessor for SnapshotRetriverRepresentableProvider, &unk_20CD65080);
  v23 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v24 = (v39 + *(v41 + 80) + v23) & ~*(v41 + 80);
  v25 = (v42 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (*(v17 + 80) + v25 + 8) & ~*(v17 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v43;
  *(v27 + 24) = v47;
  (*(v20 + 32))(v27 + v23, v38, v37);
  (*(v41 + 32))(v27 + v24, v14, v40);
  *(v27 + v25) = v43;
  (*(v17 + 32))(v27 + v26, v50, v16);
  swift_retain_n();
  v28 = sub_20CD54C8C(0, 0, v44, &unk_20CD650B8, v27);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = *(v48 + v45);
  *(v48 + v45) = 0x8000000000000000;
  v49 = v28;
  sub_20CD50408(v28, v51, isUniquelyReferenced_nonNull_native);
  *(v48 + v45) = v52;
  swift_endAccess();
LABEL_6:
  v30 = v0[26];
  v32 = v0[21];
  v31 = v0[22];
  (*(v0[17] + 8))(v0[20], v0[16]);
  (*(v31 + 8))(v30, v32);

  v33 = v0[1];

  return v33(v49);
}

uint64_t sub_20CD580E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v9 = sub_20CD62E94();
  v7[7] = v9;
  v7[8] = *(v9 - 8);
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v10 = sub_20CD62654();
  v7[12] = v10;
  v7[13] = *(v10 - 8);
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD58250, a6, 0);
}

uint64_t sub_20CD58250(uint64_t a1)
{
  v52 = v1;
  sub_20CD62644();
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v2 = v1[17];
  v3 = v1[12];
  v4 = v1[13];
  v5 = v1[11];
  v6 = v1[7];
  v7 = v1[8];
  v9 = v1[3];
  v8 = v1[4];
  v10 = sub_20CD631B4();
  v1[19] = __swift_project_value_buffer(v10, qword_28110F878);
  v11 = *(v7 + 16);
  v1[20] = v11;
  v1[21] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v50 = v11;
  v11(v5, v9, v6);
  v12 = *(v4 + 16);
  v1[22] = v12;
  v1[23] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v2, v8, v3);
  v13 = sub_20CD63194();
  v14 = sub_20CD633D4();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v1[17];
  v18 = v1[12];
  v17 = v1[13];
  v19 = v1[11];
  v21 = v1[7];
  v20 = v1[8];
  if (v15)
  {
    log = v13;
    v22 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v51[0] = v49;
    *v22 = 136315394;
    v23 = sub_20CD62E84();
    v47 = v14;
    v25 = v24;
    v46 = v18;
    v26 = v16;
    v27 = *(v20 + 8);
    v27(v19, v21);
    v28 = sub_20CD6153C(v23, v25, v51);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    sub_20CD5AB20(&qword_28110F7E8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v29 = sub_20CD63574();
    v31 = v30;
    v32 = *(v17 + 8);
    v32(v26, v46);
    v33 = sub_20CD6153C(v29, v31, v51);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_20CCEA000, log, v47, "[SnapshotRetriverRepresentableProvider] Starting to fetch %s representables for date: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v49, -1, -1);
    MEMORY[0x20F3115B0](v22, -1, -1);
  }

  else
  {

    v32 = *(v17 + 8);
    v32(v16, v18);
    v27 = *(v20 + 8);
    v27(v19, v21);
  }

  v1[24] = v27;
  v1[25] = v32;
  v34 = v1[10];
  v35 = v1[7];
  v36 = v1[8];
  v50(v34, v1[3], v35);
  v37 = (*(v36 + 88))(v34, v35);
  if (v37 == *MEMORY[0x277D0A428])
  {

    return MEMORY[0x2822009F8](sub_20CD587FC, 0, 0);
  }

  else if (v37 == *MEMORY[0x277D0A430])
  {
    v38 = swift_task_alloc();
    v1[29] = v38;
    *v38 = v1;
    v38[1] = sub_20CD58F70;
    v39 = v1[6];

    return sub_20CD4DBF4(v39, 1);
  }

  else if (v37 == *MEMORY[0x277D0A420])
  {
    v40 = swift_task_alloc();
    v1[33] = v40;
    *v40 = v1;
    v40[1] = sub_20CD5961C;
    v41 = v1[6];

    return sub_20CD59C10(v41);
  }

  else
  {
    v42 = v1[18];
    v43 = v1[12];
    sub_20CD5A8F4();
    swift_allocError();
    swift_willThrow();
    v32(v42, v43);
    v27(v1[10], v1[7]);

    v44 = v1[1];

    return v44();
  }
}

uint64_t sub_20CD587FC()
{
  v1 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810FC0, &qword_20CD64AE0);
  v2 = swift_allocObject();
  v0[26] = v2;
  *(v2 + 16) = xmmword_20CD64880;
  v3 = (v1 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_healthStore);
  v4 = *(v1 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_healthStore + 24);
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = sub_20CD62FD4();
  v7 = MEMORY[0x277D0A620];
  *(v2 + 56) = v6;
  *(v2 + 64) = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 32));
  v9 = swift_task_alloc();
  v0[27] = v9;
  *v9 = v0;
  v9[1] = sub_20CD58920;
  v10 = v0[4];

  return MEMORY[0x282161290](boxed_opaque_existential_1, v10, v4, v5);
}

uint64_t sub_20CD58920()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_20CD58E0C;
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 40);
    v3 = sub_20CD58A3C;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_20CD58A3C()
{
  v40 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 176);
  v3 = *(v0 + 144);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 96);
  v7 = *(v0 + 32);
  (*(v0 + 160))(*(v0 + 72), *(v0 + 24), *(v0 + 56));
  v2(v4, v7, v6);
  v2(v5, v3, v6);
  v8 = sub_20CD63194();
  v9 = sub_20CD633D4();
  log = v8;
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 192);
  v12 = *(v0 + 200);
  v38 = *(v0 + 144);
  v13 = *(v0 + 128);
  v36 = *(v0 + 120);
  if (v10)
  {
    v34 = *(v0 + 112);
    v14 = *(v0 + 72);
    v32 = *(v0 + 56);
    v33 = *(v0 + 96);
    v15 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v39 = v35;
    *v15 = 136315650;
    v16 = sub_20CD62E84();
    v17 = v1;
    v19 = v18;
    v11(v14, v32);
    v20 = sub_20CD6153C(v16, v19, &v39);
    v1 = v17;

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    sub_20CD5AB20(&qword_28110F7E8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v21 = sub_20CD63574();
    v23 = v22;
    v12(v13, v33);
    v24 = sub_20CD6153C(v21, v23, &v39);

    *(v15 + 14) = v24;
    *(v15 + 22) = 2048;
    sub_20CD62644();
    sub_20CD62544();
    v26 = v25;
    v12(v34, v33);
    v12(v36, v33);
    *(v15 + 24) = v26;
    _os_log_impl(&dword_20CCEA000, log, v9, "[SnapshotRetriverRepresentableProvider] Fetched %s representables for %s in %f seconds", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v35, -1, -1);
    MEMORY[0x20F3115B0](v15, -1, -1);

    v12(v38, v33);
  }

  else
  {
    v27 = *(v0 + 96);
    v28 = *(v0 + 72);
    v29 = *(v0 + 56);

    v12(v36, v27);
    v12(v13, v27);
    v11(v28, v29);
    v12(v38, v27);
  }

  **(v0 + 16) = v1;

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_20CD58E0C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 40);
  __swift_deallocate_boxed_opaque_existential_1(v1 + 32);
  *(v1 + 16) = 0;

  return MEMORY[0x2822009F8](sub_20CD58E88, v2, 0);
}

uint64_t sub_20CD58E88()
{
  (*(v0 + 200))(*(v0 + 144), *(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CD58F70(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v5 = *(v4 + 40);
    v6 = sub_20CD59534;
  }

  else
  {
    *(v4 + 248) = a1;
    v6 = sub_20CD590A4;
    v5 = 0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_20CD590A4()
{
  v1 = v0[5];
  v0[32] = sub_20CD55204(v0[31], sub_20CD46D30, &qword_28110F648, MEMORY[0x277D0A690], sub_20CD5AD9C);

  return MEMORY[0x2822009F8](sub_20CD59164, v1, 0);
}

uint64_t sub_20CD59164()
{
  v40 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 176);
  v3 = *(v0 + 144);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 96);
  v7 = *(v0 + 32);
  (*(v0 + 160))(*(v0 + 72), *(v0 + 24), *(v0 + 56));
  v2(v4, v7, v6);
  v2(v5, v3, v6);
  v8 = sub_20CD63194();
  v9 = sub_20CD633D4();
  log = v8;
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 192);
  v12 = *(v0 + 200);
  v38 = *(v0 + 144);
  v13 = *(v0 + 128);
  v36 = *(v0 + 120);
  if (v10)
  {
    v34 = *(v0 + 112);
    v14 = *(v0 + 72);
    v32 = *(v0 + 56);
    v33 = *(v0 + 96);
    v15 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v39 = v35;
    *v15 = 136315650;
    v16 = sub_20CD62E84();
    v17 = v1;
    v19 = v18;
    v11(v14, v32);
    v20 = sub_20CD6153C(v16, v19, &v39);
    v1 = v17;

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    sub_20CD5AB20(&qword_28110F7E8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v21 = sub_20CD63574();
    v23 = v22;
    v12(v13, v33);
    v24 = sub_20CD6153C(v21, v23, &v39);

    *(v15 + 14) = v24;
    *(v15 + 22) = 2048;
    sub_20CD62644();
    sub_20CD62544();
    v26 = v25;
    v12(v34, v33);
    v12(v36, v33);
    *(v15 + 24) = v26;
    _os_log_impl(&dword_20CCEA000, log, v9, "[SnapshotRetriverRepresentableProvider] Fetched %s representables for %s in %f seconds", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v35, -1, -1);
    MEMORY[0x20F3115B0](v15, -1, -1);

    v12(v38, v33);
  }

  else
  {
    v27 = *(v0 + 96);
    v28 = *(v0 + 72);
    v29 = *(v0 + 56);

    v12(v36, v27);
    v12(v13, v27);
    v11(v28, v29);
    v12(v38, v27);
  }

  **(v0 + 16) = v1;

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_20CD59534()
{
  (*(v0 + 200))(*(v0 + 144), *(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CD5961C(uint64_t a1)
{
  v4 = *v2;
  v4[34] = v1;

  v5 = v4[5];
  if (v1)
  {
    v6 = sub_20CD59B28;
  }

  else
  {
    v4[35] = a1;
    v6 = sub_20CD59758;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_20CD59758()
{
  v40 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 176);
  v3 = *(v0 + 144);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 96);
  v7 = *(v0 + 32);
  (*(v0 + 160))(*(v0 + 72), *(v0 + 24), *(v0 + 56));
  v2(v4, v7, v6);
  v2(v5, v3, v6);
  v8 = sub_20CD63194();
  v9 = sub_20CD633D4();
  log = v8;
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 192);
  v12 = *(v0 + 200);
  v38 = *(v0 + 144);
  v13 = *(v0 + 128);
  v36 = *(v0 + 120);
  if (v10)
  {
    v34 = *(v0 + 112);
    v14 = *(v0 + 72);
    v32 = *(v0 + 56);
    v33 = *(v0 + 96);
    v15 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v39 = v35;
    *v15 = 136315650;
    v16 = sub_20CD62E84();
    v17 = v1;
    v19 = v18;
    v11(v14, v32);
    v20 = sub_20CD6153C(v16, v19, &v39);
    v1 = v17;

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    sub_20CD5AB20(&qword_28110F7E8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v21 = sub_20CD63574();
    v23 = v22;
    v12(v13, v33);
    v24 = sub_20CD6153C(v21, v23, &v39);

    *(v15 + 14) = v24;
    *(v15 + 22) = 2048;
    sub_20CD62644();
    sub_20CD62544();
    v26 = v25;
    v12(v34, v33);
    v12(v36, v33);
    *(v15 + 24) = v26;
    _os_log_impl(&dword_20CCEA000, log, v9, "[SnapshotRetriverRepresentableProvider] Fetched %s representables for %s in %f seconds", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v35, -1, -1);
    MEMORY[0x20F3115B0](v15, -1, -1);

    v12(v38, v33);
  }

  else
  {
    v27 = *(v0 + 96);
    v28 = *(v0 + 72);
    v29 = *(v0 + 56);

    v12(v36, v27);
    v12(v13, v27);
    v11(v28, v29);
    v12(v38, v27);
  }

  **(v0 + 16) = v1;

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_20CD59B28()
{
  (*(v0 + 200))(*(v0 + 144), *(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CD59C10(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_20CD59C30, 0, 0);
}

uint64_t sub_20CD59C30()
{
  v1 = (*(v0 + 24) + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_seymourStore);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_20CD59D60;

  return v6(v2, v3);
}

uint64_t sub_20CD59D60(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 40) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    *(v3 + 48) = v7;
    *v7 = v4;
    v7[1] = sub_20CD59EEC;
    v8 = *(v3 + 16);

    return sub_20CD4DBF4(v8, 1);
  }
}

uint64_t sub_20CD59EEC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_20CD5A2DC;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_20CD5A014;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20CD5A014()
{
  v1 = sub_20CD55204(v0[8], sub_20CD46CF0, &qword_28110F650, MEMORY[0x277D0A688], sub_20CCEC32C);
  v0[9] = v1;

  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_20CD5A128;
  v3 = v0[5];
  v4 = v0[2];

  return sub_20CD51014(v4, v3, v1);
}

uint64_t sub_20CD5A128(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_20CD5A340;
  }

  else
  {

    *(v4 + 96) = a1;
    v5 = sub_20CD5A264;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20CD5A264()
{
  v1 = sub_20CD55408(*(v0 + 96));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_20CD5A2DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CD5A340()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CD5A3AC()
{
  v1 = OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_calendar;
  v2 = sub_20CD626F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_healthStore));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_seymourStore));
  sub_20CD5AB68(v0 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_ringsContainerQuery);
  sub_20CD5ABBC(v0 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_fitnessPlusContainerQuery);
  sub_20CD5AC10(v0 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_workoutContainerQuery);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for SnapshotRetriverRepresentableProvider(uint64_t a1)
{
  result = qword_27C811288;
  if (!qword_27C811288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CD5A4D8(uint64_t a1)
{
  result = sub_20CD626F4();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_20CD5A594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FitnessPlusSessionRepresentable(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CD5A5F8(uint64_t a1)
{
  v2 = type metadata accessor for FitnessPlusSessionRepresentable(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CD5A654(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20CD62E94() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20CD62654() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_20CD62514() - 8);
  v12 = (v10 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = *(v1 + v10);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_20CCEE040;

  return sub_20CD580E0(a1, v13, v14, v1 + v6, v1 + v9, v15, v1 + v12);
}

uint64_t sub_20CD5A81C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811360, &qword_20CD653E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CD5A88C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811360, &qword_20CD653E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20CD5A8F4()
{
  result = qword_27C8112A0;
  if (!qword_27C8112A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8112A0);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x20F3115B0);
  }

  return result;
}

uint64_t sub_20CD5A998(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20CD62E94() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20CD62514() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_20CCED908;

  return sub_20CD55CD0(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_20CD5AB20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for SnapshotRetriverRepresentableProvider.Failure(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SnapshotRetriverRepresentableProvider.Failure(_WORD *result, int a2, int a3)
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

unint64_t sub_20CD5AD48()
{
  result = qword_27C8112A8;
  if (!qword_27C8112A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8112A8);
  }

  return result;
}

uint64_t sub_20CD5ADB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_20CD631B4();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DE0, &unk_20CD64800);
  v4[10] = swift_task_alloc();
  v6 = sub_20CD62E94();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = sub_20CD62AB4();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v8 = sub_20CD62EF4();
  v4[29] = v8;
  v4[30] = *(v8 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD5B098, 0, 0);
}

uint64_t sub_20CD5B098()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v16 = v0[11];
  v7 = v0[6];
  v15 = v0[5];
  v8 = v0[3];
  v9 = v0[4];
  v10 = *(v3 + 16);
  v0[38] = v10;
  v0[39] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v1, v8, v4);
  v10(v2, v9, v4);
  v11 = *(v6 + 16);
  v0[40] = v11;
  v0[41] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v5, v15, v16);
  sub_20CD62ED4();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v12 = swift_task_alloc();
  v0[42] = v12;
  *v12 = v0;
  v12[1] = sub_20CD5B1F4;
  v13 = v0[37];

  return sub_20CD1DFD8(v13);
}

uint64_t sub_20CD5B1F4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 344) = a1;
  *(v3 + 352) = v1;

  if (v1)
  {
    v4 = sub_20CD5C300;
  }

  else
  {
    v4 = sub_20CD5B308;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void *sub_20CD5B308()
{
  v160 = v0;
  v1 = v0[44];
  v159[0] = v0[43];

  sub_20CD5C544(v159);
  if (v1)
  {
  }

  else
  {
    v3 = v0[30];
    v4 = v0[15];
    v115 = v0 + 14;

    v149 = v0;
    v122 = v159[0];
    v0[2] = v159[0];
    v5 = v0 + 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F08, &qword_20CD64870);
    sub_20CD5C5EC();
    sub_20CD5F728(&qword_28110F780, MEMORY[0x277D09F70], MEMORY[0x277D09F78]);
    v6 = sub_20CD632B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8112B8, &qword_20CD651D0);
    result = sub_20CD63534();
    v7 = result;
    v8 = 0;
    v126 = v6 + 64;
    v137 = v6;
    v9 = 1 << *(v6 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v6 + 64);
    v124 = (v9 + 63) >> 6;
    v150 = v4;
    v12 = (v4 + 32);
    v128 = v3;
    v157 = (v3 + 8);
    v129 = result + 8;
    v120 = v5 + 27;
    v140 = result;
    v158 = (v4 + 32);
    while (1)
    {
      v13 = v149;
      if (!v11)
      {
        break;
      }

      v141 = (v11 - 1) & v11;
      v143 = v8;
      v14 = __clz(__rbit64(v11)) | (v8 << 6);
LABEL_13:
      v19 = v149[23];
      v18 = v149[24];
      v20 = v149[14];
      v21 = *(v150 + 72);
      v22 = v21 * v14;
      (v149[38])(v18, *(v137 + 48) + v21 * v14, v20);
      v145 = v14;
      v23 = *(*(v137 + 56) + 8 * v14);
      v152 = *(v150 + 32);
      v152(v19, v18, v20);
      v24 = *(v23 + 16);
      if (v24)
      {
        v133 = v22;
        v159[0] = MEMORY[0x277D84F90];

        sub_20CD46B04(0, v24, 0);
        v25 = v159[0];
        v26 = v23 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
        v27 = *(v128 + 72);
        v28 = *(v128 + 16);
        do
        {
          v29 = v149[35];
          v30 = v149[29];
          v28(v29, v26, v30);
          sub_20CD62EE4();
          (*v157)(v29, v30);
          v159[0] = v25;
          v32 = *(v25 + 16);
          v31 = *(v25 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_20CD46B04((v31 > 1), v32 + 1, 1);
            v25 = v159[0];
          }

          v33 = v149[22];
          v34 = v149[14];
          *(v25 + 16) = v32 + 1;
          v152(v25 + ((*(v150 + 80) + 32) & ~*(v150 + 80)) + v32 * v21, v33, v34);
          v26 += v27;
          --v24;
        }

        while (v24);
        v7 = v140;
        v12 = v158;
        v22 = v133;
      }

      else
      {

        v25 = MEMORY[0x277D84F90];
      }

      v159[0] = v25;

      sub_20CD5C650(sub_20CD5C518, 0);
      v35 = v149[23];
      v36 = v149[14];

      v37 = v159[0];
      *(v129 + ((v145 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v145;
      result = (v152)(v7[6] + v22, v35, v36);
      *(v7[7] + 8 * v145) = v37;
      v38 = v7[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        return result;
      }

      v7[2] = v40;
      v11 = v141;
      v8 = v143;
    }

    v15 = v8;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_52;
      }

      if (v16 >= v124)
      {
        break;
      }

      v17 = *(v126 + 8 * v16);
      ++v15;
      if (v17)
      {
        v141 = (v17 - 1) & v17;
        v143 = v16;
        v14 = __clz(__rbit64(v17)) | (v16 << 6);
        goto LABEL_13;
      }
    }

    v41 = *(v122 + 16);
    if (v41)
    {
      v42 = v149[36];
      v43 = v149[29];
      v44 = v149[25];
      v153 = v149[26];
      v45 = v149[14];
      v117 = (*(v128 + 80) + 32) & ~*(v128 + 80);
      v116 = *(v128 + 72);
      v46 = *(v128 + 16);
      v46(v42, v122 + v117 + v116 * (v41 - 1), v43);
      sub_20CD62EC4();
      v47 = *(v128 + 8);
      v47(v42, v43);
      v144 = *v12;
      result = (*v12)(v153, v44, v45);
      if (!*(v122 + 16))
      {
        goto LABEL_53;
      }

      v138 = v149[19];
      v48 = v149[38];
      v49 = v149[35];
      v50 = v149[29];
      v154 = v149[30];
      v130 = v149[20];
      v52 = v149[14];
      v51 = v149[15];
      v131 = v149[3];
      v134 = v149[26];
      v142 = v46;
      v46(v49, v122 + v117, v50);

      sub_20CD62EE4();
      v151 = v47;
      v47(v49, v50);
      v48(v130, v134, v52);
      v48(v138, v131, v52);
      v118 = (v51 + 48);
      v146 = (v51 + 8);
      v139 = (v154 + 32);
      v53 = MEMORY[0x277D84F90];
      while (1)
      {
        v155 = v53;
        v54 = v140;
        v55 = v13;
        if (!*(v140 + 16))
        {
          break;
        }

        v56 = sub_20CD52DAC(v13[20]);
        v55 = v149;
        if ((v57 & 1) == 0)
        {
          break;
        }

        v58 = v149[19];
        v59 = v149[14];
        v60 = v149[10];
        v61 = *(*(v140 + 56) + 8 * v56);
        *(swift_task_alloc() + 16) = v58;

        sub_20CD52238(sub_20CD5F630, v61, v60);

        if ((*v118)(v60, 1, v59) == 1)
        {
          sub_20CD5F6C0(v149[10]);
          v54 = v140;
          break;
        }

        v127 = v149[40];
        v62 = v149[38];
        v147 = v149[33];
        v63 = v149[28];
        v64 = v149[27];
        v65 = v149[16];
        v135 = v149[29];
        v66 = v149[13];
        v67 = v149[14];
        v123 = v149[11];
        v125 = v149[32];
        v119 = v149[5];
        v121 = v149[20];
        v144(v65, v149[10], v67);
        v62(v63, v65, v67);
        v62(v64, v121, v67);
        v127(v66, v119, v123);
        sub_20CD62ED4();
        v142(v147, v125, v135);
        sub_20CD62A34();
        v69 = v149[33];
        v68 = v149[34];
        v132 = v149[31];
        v70 = v149[29];
        v71 = v149[17];
        v72 = v149[18];
        v73 = v149[16];
        v74 = v149[14];
        v151(v149[32], v70);
        v148 = *v146;
        (*v146)(v73, v74);
        v136 = *v139;
        (*v139)(v68, v69, v70);
        v144(v72, v71, v74);
        v142(v132, v68, v70);
        v53 = v155;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_20CD527A4(0, v155[2] + 1, 1, v155);
        }

        v76 = v53[2];
        v75 = v53[3];
        if (v76 >= v75 >> 1)
        {
          v53 = sub_20CD527A4((v75 > 1), v76 + 1, 1, v53);
        }

        v13 = v149;
        v77 = v149[31];
        v78 = v149[29];
        v79 = v149[20];
        v80 = v149[18];
        v81 = v149[14];
        v151(v149[34], v78);
        v148(v79, v81);
        v53[2] = v76 + 1;
        v136(v53 + v117 + v76 * v116, v77, v78);
        v144(v79, v80, v81);
        sub_20CD5F728(&qword_28110F778, MEMORY[0x277D09F70], MEMORY[0x277D09F80]);
        if ((sub_20CD631F4() & 1) == 0 || (sub_20CD63214() & 1) == 0)
        {
          v91 = v149[37];
          v92 = v149[29];
          v93 = v149[26];
          v95 = v149[20];
          v94 = v149[21];
          v96 = v149[14];

          v148(v95, v96);
          v148(v94, v96);
          v148(v93, v96);
          v151(v91, v92);
          v88 = v148;
          v90 = v115;
          v156 = v53;
          v89 = v149 + 19;
          goto LABEL_39;
        }
      }

      v98 = v55[38];
      v99 = v55[20];
      v100 = v55[14];
      type metadata accessor for SnapshotQueryPlanner.SnapshotQueryPlannerError(0);
      sub_20CD5F728(&qword_27C8112C0, type metadata accessor for SnapshotQueryPlanner.SnapshotQueryPlannerError, &unk_20CD65208);
      swift_allocError();
      v102 = v101;
      v98(v101, v99, v100);
      if (*(v54 + 16))
      {
        v103 = sub_20CD52DAC(v55[20]);
        if (v104)
        {
          v105 = *(*(v54 + 56) + 8 * v103);
        }

        else
        {
          v105 = MEMORY[0x277D84F90];
        }
      }

      else
      {
        v105 = MEMORY[0x277D84F90];
      }

      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8112C8, &qword_20CD651D8);
      *(v102 + *(v106 + 48)) = v105;
      (*(*(v106 - 8) + 56))(v102, 0, 1, v106);
      swift_willThrow();

      v107 = *v146;
      v108 = v149[37];
      v109 = v149[29];
      v110 = v149[26];
      v111 = v149[21];
      v112 = v149[19];
      v113 = v149[14];
      (*v146)(v149[20], v113);
      v107(v111, v113);
      v107(v110, v113);
      v151(v108, v109);

      v107(v112, v113);

      v114 = v149[1];

      return v114();
    }

    else
    {

      sub_20CD63034();
      v82 = sub_20CD63194();
      v83 = sub_20CD633D4();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&dword_20CCEA000, v82, v83, "Could not find any checkpoints to retrieve snapshots.", v84, 2u);
        MEMORY[0x20F3115B0](v84, -1, -1);
      }

      v13 = v149;
      v86 = v149[8];
      v85 = v149[9];
      v87 = v149[7];

      (*(v86 + 8))(v85, v87);
      v88 = *v157;
      v89 = v149 + 37;
      v156 = MEMORY[0x277D84F90];
      v90 = v120;
LABEL_39:
      v88(*v89, *v90);

      v97 = v13[1];

      return v97(v156);
    }
  }
}

uint64_t sub_20CD5C300()
{
  (*(v0[30] + 8))(v0[37], v0[29]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20CD5C4A0@<X0>(uint64_t a2@<X8>)
{
  sub_20CD62EC4();
  v3 = sub_20CD62AB4();
  return (*(*(v3 - 8) + 56))(a2, 0, 1, v3);
}

uint64_t sub_20CD5C544(uint64_t *a1)
{
  v2 = *(sub_20CD62EF4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20CD41E40(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_20CD5C710(v6);
  *a1 = v3;
  return result;
}

unint64_t sub_20CD5C5EC()
{
  result = qword_27C8112B0;
  if (!qword_27C8112B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C810F08, &qword_20CD64870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8112B0);
  }

  return result;
}

uint64_t sub_20CD5C650(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  sub_20CD62AB4();
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_20CD41E58(v5);
  }

  result = sub_20CD5C83C(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_20CD5C710(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20CD63564();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20CD62EF4();
        v6 = sub_20CD63304();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20CD62EF4() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_20CD5D004(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_20CD5C978(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20CD5C83C(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_20CD63564();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20CD62AB4();
        v9 = sub_20CD63304();
        *(v9 + 16) = v8;
      }

      v10 = *(sub_20CD62AB4() - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_20CD5DC04(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_20CD5CD18(0, v5, 1, a1, a2);
  }

  return result;
}

uint64_t sub_20CD5C978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_20CD62AB4();
  v8 = *(v60 - 8);
  v9 = MEMORY[0x28223BE20](v60);
  v59 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v41 - v11;
  v12 = sub_20CD62EF4();
  v13 = MEMORY[0x28223BE20](v12);
  v51 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v57 = &v41 - v16;
  result = MEMORY[0x28223BE20](v15);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
LABEL_5:
    v46 = v24;
    v47 = a3;
    v44 = v26;
    v45 = v25;
    v61 = v25;
    while (1)
    {
      v28 = v56;
      v29 = v54;
      v54(v56, v26, v12);
      v30 = v12;
      v31 = v57;
      v29(v57, v24, v30);
      sub_20CD62EC4();
      v32 = v59;
      sub_20CD62EC4();
      v62 = sub_20CD62A64();
      v33 = *v53;
      v34 = v32;
      v35 = v60;
      (*v53)(v34, v60);
      v33(v27, v35);
      v36 = *v52;
      v37 = v31;
      v12 = v30;
      (*v52)(v37, v30);
      result = v36(v28, v30);
      if ((v62 & 1) == 0)
      {
LABEL_4:
        a3 = v47 + 1;
        v24 = &v46[v42];
        v25 = v45 - 1;
        v26 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v38 = *v49;
      v39 = v51;
      (*v49)(v51, v26, v30);
      swift_arrayInitWithTakeFrontToBack();
      result = v38(v24, v39, v30);
      v24 += v48;
      v26 += v48;
      if (__CFADD__(v61++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20CD5CD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5)
{
  v7 = v6;
  v52 = a5;
  v53 = a4;
  v11 = sub_20CD62AB4();
  v12 = MEMORY[0x28223BE20](v11);
  v47 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v54 = &v38 - v15;
  result = MEMORY[0x28223BE20](v14);
  v39 = a2;
  if (a3 != a2)
  {
    v50 = &v38 - v17;
    v19 = *v5;
    v21 = *(v18 + 16);
    v20 = v18 + 16;
    v22 = *(v20 + 56);
    v48 = v21;
    v49 = (v20 - 8);
    v51 = v20;
    v45 = (v20 + 16);
    v46 = v19;
    v23 = v19 + v22 * (a3 - 1);
    v44 = -v22;
    v24 = a1 - a3;
    v38 = v22;
    v25 = v19 + v22 * a3;
    v26 = v54;
    while (2)
    {
      v42 = v23;
      v43 = a3;
      v40 = v25;
      v41 = v24;
      v27 = v23;
      while (1)
      {
        v28 = v50;
        v29 = v48;
        v48(v50, v25, v11);
        v29(v26, v27, v11);
        v30 = v53(v28, v26);
        if (v7)
        {
          v37 = *v49;
          (*v49)(v26, v11);
          return (v37)(v28, v11);
        }

        v31 = v30;
        v32 = v26;
        v33 = *v49;
        (*v49)(v32, v11);
        result = (v33)(v28, v11);
        if ((v31 & 1) == 0)
        {
          break;
        }

        if (!v46)
        {
          __break(1u);
          return result;
        }

        v34 = *v45;
        v35 = v47;
        (*v45)(v47, v25, v11);
        swift_arrayInitWithTakeFrontToBack();
        result = (v34)(v27, v35, v11);
        v27 += v44;
        v25 += v44;
        v36 = __CFADD__(v24++, 1);
        v26 = v54;
        v7 = 0;
        if (v36)
        {
          goto LABEL_11;
        }
      }

      v26 = v54;
      v7 = 0;
LABEL_11:
      a3 = v43 + 1;
      v23 = v42 + v38;
      v24 = v41 - 1;
      v25 = v40 + v38;
      if (v43 + 1 != v39)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_20CD5D004(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v137 = a1;
  v159 = sub_20CD62AB4();
  v8 = *(v159 - 8);
  v9 = MEMORY[0x28223BE20](v159);
  v158 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v157 = &v133 - v11;
  v12 = sub_20CD62EF4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v140 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v149 = &v133 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v156 = &v133 - v19;
  result = MEMORY[0x28223BE20](v18);
  v160 = &v133 - v21;
  v22 = a3[1];
  v145 = a3;
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_96:
    v12 = v24;
    v24 = *v137;
    if (!*v137)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v52 = v145;
    if ((result & 1) == 0)
    {
LABEL_128:
      result = sub_20CD41C10(v12);
      v12 = result;
    }

    v162 = v12;
    v129 = *(v12 + 16);
    if (v129 >= 2)
    {
      while (*v52)
      {
        v130 = *(v12 + 16 * v129);
        v131 = *(v12 + 16 * (v129 - 1) + 40);
        sub_20CD5E810(*v52 + *(v13 + 72) * v130, *v52 + *(v13 + 72) * *(v12 + 16 * (v129 - 1) + 32), *v52 + *(v13 + 72) * v131, v24);
        if (v5)
        {
        }

        if (v131 < v130)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_20CD41C10(v12);
        }

        if (v129 - 2 >= *(v12 + 16))
        {
          goto LABEL_122;
        }

        v132 = (v12 + 16 * v129);
        *v132 = v130;
        v132[1] = v131;
        v162 = v12;
        result = sub_20CD41B84(v129 - 1);
        v12 = v162;
        v129 = *(v162 + 16);
        if (v129 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v133 = a4;
  v23 = 0;
  v153 = (v8 + 8);
  v154 = v13 + 16;
  v151 = (v13 + 32);
  v152 = (v13 + 8);
  v24 = MEMORY[0x277D84F90];
  v155 = v12;
  v136 = v13;
  while (1)
  {
    v25 = v23 + 1;
    if (v23 + 1 >= v22)
    {
      v41 = v23 + 1;
      v52 = v145;
    }

    else
    {
      v146 = v22;
      v134 = v24;
      v135 = v5;
      v26 = v23;
      v138 = v23;
      v27 = *v145;
      v161 = v27;
      v28 = *(v13 + 72);
      v29 = (v27 + v28 * v25);
      v30 = v12;
      v31 = *(v13 + 16);
      (v31)(v160, v29, v12);
      v32 = v156;
      v147 = v31;
      (v31)(v156, v27 + v28 * v26, v30);
      v33 = v157;
      sub_20CD62EC4();
      v34 = v158;
      sub_20CD62EC4();
      LODWORD(v148) = sub_20CD62A64();
      v35 = *v153;
      v36 = v34;
      v37 = v159;
      (*v153)(v36, v159);
      v144 = v35;
      (v35)(v33, v37);
      v38 = *(v136 + 8);
      v24 = v152;
      v38(v32, v30);
      v143 = v38;
      result = (v38)(v160, v30);
      v39 = v138 + 2;
      v150 = v28;
      v40 = v161 + v28 * (v138 + 2);
      while (1)
      {
        v41 = v146;
        if (v146 == v39)
        {
          break;
        }

        v42 = v155;
        v43 = v147;
        v147();
        v44 = v156;
        v43(v156, v29, v42);
        v45 = v157;
        sub_20CD62EC4();
        v46 = v158;
        sub_20CD62EC4();
        LOBYTE(v161) = sub_20CD62A64() & 1;
        LODWORD(v161) = v161;
        v47 = v46;
        v48 = v159;
        v49 = v29;
        v50 = v144;
        (v144)(v47, v159);
        v50(v45, v48);
        v24 = v152;
        v51 = v143;
        (v143)(v44, v42);
        result = v51(v160, v42);
        ++v39;
        v40 += v150;
        v29 = &v150[v49];
        if ((v148 & 1) != v161)
        {
          v41 = v39 - 1;
          goto LABEL_9;
        }
      }

      v5 = v135;
      v52 = v145;
      v13 = v136;
      v12 = v155;
      v23 = v138;
      if ((v148 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v41 < v138)
      {
        goto LABEL_125;
      }

      if (v138 < v41)
      {
        v53 = v41;
        v54 = v150 * (v41 - 1);
        v55 = v41 * v150;
        v146 = v41;
        v56 = v138;
        v57 = v138 * v150;
        do
        {
          if (v56 != --v53)
          {
            v58 = *v52;
            if (!v58)
            {
              goto LABEL_131;
            }

            v59 = *v151;
            (*v151)(v140, v58 + v57, v12);
            if (v57 < v54 || v58 + v57 >= (v58 + v55))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v59)(v58 + v54, v140, v12);
            v52 = v145;
          }

          ++v56;
          v54 -= v150;
          v55 -= v150;
          v57 += v150;
        }

        while (v56 < v53);
        v5 = v135;
        v13 = v136;
        v24 = v134;
        v23 = v138;
        v41 = v146;
      }

      else
      {
LABEL_23:
        v24 = v134;
      }
    }

    v60 = v52[1];
    if (v41 < v60)
    {
      if (__OFSUB__(v41, v23))
      {
        goto LABEL_124;
      }

      if (v41 - v23 < v133)
      {
        if (__OFADD__(v23, v133))
        {
          goto LABEL_126;
        }

        if (v23 + v133 >= v60)
        {
          v61 = v52[1];
        }

        else
        {
          v61 = v23 + v133;
        }

        if (v61 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v41 != v61)
        {
          break;
        }
      }
    }

    v62 = v41;
    if (v41 < v23)
    {
      goto LABEL_123;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_20CD41D3C(0, *(v24 + 2) + 1, 1, v24);
      v24 = result;
    }

    v64 = *(v24 + 2);
    v63 = *(v24 + 3);
    v65 = v64 + 1;
    v52 = v13;
    if (v64 >= v63 >> 1)
    {
      result = sub_20CD41D3C((v63 > 1), v64 + 1, 1, v24);
      v24 = result;
    }

    *(v24 + 2) = v65;
    v66 = &v24[16 * v64];
    *(v66 + 4) = v23;
    *(v66 + 5) = v62;
    v67 = *v137;
    if (!*v137)
    {
      goto LABEL_133;
    }

    v141 = v62;
    if (v64)
    {
      v13 = v67;
      while (1)
      {
        v68 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v69 = *(v24 + 4);
          v70 = *(v24 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_55:
          if (v72)
          {
            goto LABEL_112;
          }

          v85 = &v24[16 * v65];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_115;
          }

          v91 = &v24[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_119;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v65 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v95 = &v24[16 * v65];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_69:
        if (v90)
        {
          goto LABEL_114;
        }

        v98 = &v24[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_117;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_76:
        v106 = v68 - 1;
        if (v68 - 1 >= v65)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
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
          goto LABEL_127;
        }

        if (!*v145)
        {
          goto LABEL_130;
        }

        v107 = *&v24[16 * v106 + 32];
        v108 = *&v24[16 * v68 + 40];
        sub_20CD5E810(*v145 + v52[9] * v107, *v145 + v52[9] * *&v24[16 * v68 + 32], *v145 + v52[9] * v108, v13);
        if (v5)
        {
        }

        if (v108 < v107)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_20CD41C10(v24);
        }

        if (v106 >= *(v24 + 2))
        {
          goto LABEL_109;
        }

        v109 = &v24[16 * v106];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        v162 = v24;
        result = sub_20CD41B84(v68);
        v24 = v162;
        v65 = *(v162 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v24[16 * v65 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_110;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_111;
      }

      v80 = &v24[16 * v65];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_113;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_116;
      }

      if (v84 >= v76)
      {
        v102 = &v24[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_120;
        }

        if (v71 < v105)
        {
          v68 = v65 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v22 = v145[1];
    v23 = v141;
    v13 = v52;
    if (v141 >= v22)
    {
      goto LABEL_96;
    }
  }

  v134 = v24;
  v135 = v5;
  v110 = *v52;
  v111 = *(v13 + 72);
  v150 = *(v13 + 16);
  v112 = (v110 + v111 * (v41 - 1));
  v147 = -v111;
  v138 = v23;
  v113 = (v23 - v41);
  v148 = v110;
  v139 = v111;
  v114 = v110 + v41 * v111;
  v141 = v61;
LABEL_87:
  v146 = v41;
  v142 = v114;
  v143 = v113;
  v115 = v114;
  v144 = v112;
  v116 = v112;
  while (1)
  {
    v52 = v160;
    v117 = v150;
    (v150)(v160, v115, v12);
    v118 = v156;
    v117(v156, v116, v12);
    v119 = v157;
    sub_20CD62EC4();
    v120 = v158;
    sub_20CD62EC4();
    LODWORD(v161) = sub_20CD62A64();
    v121 = *v153;
    v122 = v120;
    v123 = v159;
    (*v153)(v122, v159);
    v124 = v119;
    v12 = v155;
    v121(v124, v123);
    v125 = *v152;
    (*v152)(v118, v12);
    result = v125(v52, v12);
    if ((v161 & 1) == 0)
    {
LABEL_86:
      v41 = v146 + 1;
      v112 = &v144[v139];
      v113 = v143 - 1;
      v62 = v141;
      v114 = v142 + v139;
      if (v146 + 1 != v141)
      {
        goto LABEL_87;
      }

      v5 = v135;
      v13 = v136;
      v24 = v134;
      v23 = v138;
      if (v141 < v138)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v148)
    {
      break;
    }

    v126 = *v151;
    v127 = v149;
    (*v151)(v149, v115, v12);
    swift_arrayInitWithTakeFrontToBack();
    v126(v116, v127, v12);
    v116 = v147 + v116;
    v115 += v147;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_86;
    }
  }

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
  return result;
}

uint64_t sub_20CD5DC04(int64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v141 = a1;
  v162 = sub_20CD62AB4();
  v12 = MEMORY[0x28223BE20](v162);
  v145 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v148 = &v133 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v17 = MEMORY[0x28223BE20](v16);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v133 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v139 = &v133 - v22;
  MEMORY[0x28223BE20](v21);
  result = MEMORY[0x28223BE20](&v133 - v23);
  v160 = v26;
  v161 = a3;
  v29 = a3[1];
  if (v29 < 1)
  {
    v31 = MEMORY[0x277D84F90];
    v32 = a4;
LABEL_104:
    a4 = *v141;
    if (*v141)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_106;
    }

    goto LABEL_147;
  }

  v140 = &v133 - v25;
  v138 = result;
  v150 = v20;
  v146 = v28;
  v147 = v27;
  v136 = a6;
  v30 = 0;
  v158 = (v26 + 8);
  v159 = v26 + 16;
  v154 = (v26 + 32);
  v31 = MEMORY[0x277D84F90];
  v155 = a5;
  v32 = a4;
  v157 = a4;
  while (1)
  {
    v33 = v30;
    v142 = v31;
    if ((v30 + 1) < v29)
    {
      v143 = v30;
      v144 = v29;
      v34 = *v161;
      v35 = *(v160 + 72);
      a4 = *v161 + v35 * (v30 + 1);
      v36 = *(v160 + 16);
      v37 = v162;
      v36(v140, a4, v162);
      v156 = v35;
      v137 = v34;
      v38 = v34 + v35 * v143;
      v39 = v138;
      v151 = v36;
      v36(v138, v38, v37);
      v40 = v140;
      LODWORD(v153) = v32(v140, v39);
      if (v7)
      {
        v132 = *v158;
        (*v158)(v39, v37);
        v132(v40, v37);
      }

      v163 = 0;
      v41 = *v158;
      (*v158)(v39, v37);
      v149 = v41;
      result = (v41)(v40, v37);
      v135 = v144 - 1;
      v152 = v144 - 2;
      v42 = v143;
      a5 = v155;
      v43 = v156;
      v44 = v137 + v156 * (v143 + 2);
      v45 = v139;
      while (v152 != v42)
      {
        v46 = v162;
        v47 = v151;
        (v151)(v45, v44, v162);
        v48 = a5;
        v49 = v150;
        (v47)(v150, a4, v46);
        v50 = v48;
        v51 = v163;
        v52 = v157(v45, v49);
        v163 = v51;
        if (v51)
        {
          v130 = v149;
          (v149)(v49, v46);
          v130(v45, v46);
        }

        v53 = v52;
        v54 = v149;
        (v149)(v49, v46);
        result = v54(v45, v46);
        ++v42;
        v43 = v156;
        v44 += v156;
        a4 += v156;
        a5 = v50;
        if ((v153 ^ v53))
        {
          v55 = v42 + 1;
          goto LABEL_12;
        }
      }

      v42 = v135;
      v55 = v144;
LABEL_12:
      v33 = v143;
      if (v153)
      {
        if (v55 < v143)
        {
          goto LABEL_141;
        }

        v31 = v162;
        if (v143 <= v42)
        {
          a4 = v43 * (v55 - 1);
          v56 = v55;
          v57 = v55 * v43;
          v144 = v56;
          v58 = v56;
          v59 = v143;
          v60 = v143 * v43;
          do
          {
            if (v59 != --v58)
            {
              v62 = *v161;
              if (!*v161)
              {
                goto LABEL_145;
              }

              v63 = *v154;
              (*v154)(v145, v62 + v60, v162);
              if (v60 < a4 || v62 + v60 >= (v62 + v57))
              {
                v61 = v162;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v61 = v162;
                if (v60 != a4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v63)(v62 + a4, v145, v61);
              a5 = v155;
              v43 = v156;
              v31 = v61;
            }

            ++v59;
            a4 -= v43;
            v57 -= v43;
            v60 += v43;
          }

          while (v59 < v58);
          v7 = v163;
          v32 = v157;
          v33 = v143;
          v55 = v144;
        }

        else
        {
          v7 = v163;
          v32 = v157;
        }
      }

      else
      {
        v31 = v162;
        v7 = v163;
        v32 = v157;
      }
    }

    else
    {
      v55 = (v30 + 1);
      v31 = v162;
    }

    v64 = v161[1];
    if (v55 < v64)
    {
      if (__OFSUB__(v55, v33))
      {
        goto LABEL_137;
      }

      if (v55 - v33 < v136)
      {
        if (__OFADD__(v33, v136))
        {
          __break(1u);
        }

        else
        {
          v144 = v55;
          if (&v33[v136] >= v64)
          {
            v65 = v64;
          }

          else
          {
            v65 = &v33[v136];
          }

          if (v65 >= v33)
          {
            if (v144 == v65)
            {
              v55 = v144;
              goto LABEL_38;
            }

            v163 = v7;
            v112 = *v161;
            v113 = *(v160 + 72);
            v156 = *(v160 + 16);
            v114 = (v112 + v113 * (v144 - 1));
            v152 = -v113;
            v153 = v112;
            v143 = v33;
            v115 = &v33[-v144];
            v134 = v113;
            a4 = v112 + v144 * v113;
            v151 = v65;
            while (1)
            {
              v135 = a4;
              v137 = v115;
              v149 = v114;
              while (1)
              {
                v116 = v146;
                v117 = v156;
                (v156)(v146, a4, v31);
                v118 = v147;
                v117(v147, v114, v31);
                v119 = v163;
                v120 = v157(v116, v118);
                v163 = v119;
                if (v119)
                {
                  v131 = *v158;
                  (*v158)(v118, v31);
                  v131(v116, v31);
                }

                v121 = v120;
                v122 = *v158;
                (*v158)(v118, v31);
                result = (v122)(v116, v31);
                if ((v121 & 1) == 0)
                {
                  break;
                }

                if (!v153)
                {
                  goto LABEL_143;
                }

                v123 = *v154;
                v124 = v148;
                v31 = v162;
                (*v154)(v148, a4, v162);
                swift_arrayInitWithTakeFrontToBack();
                v123(v114, v124, v31);
                v114 += v152;
                a4 += v152;
                v125 = __CFADD__(v115++, 1);
                a5 = v155;
                if (v125)
                {
                  goto LABEL_101;
                }
              }

              a5 = v155;
              v31 = v162;
LABEL_101:
              v114 = &v149[v134];
              v115 = (v137 - 1);
              a4 = v135 + v134;
              v55 = v151;
              if (++v144 == v151)
              {
                v32 = v157;
                v7 = v163;
                v33 = v143;
                goto LABEL_38;
              }
            }
          }
        }

        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }
    }

LABEL_38:
    v31 = v142;
    if (v55 < v33)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    a4 = v32;
    if ((result & 1) == 0)
    {
      result = sub_20CD41D3C(0, *(v31 + 2) + 1, 1, v31);
      v31 = result;
    }

    v67 = *(v31 + 2);
    v66 = *(v31 + 3);
    v68 = v67 + 1;
    if (v67 >= v66 >> 1)
    {
      result = sub_20CD41D3C((v66 > 1), v67 + 1, 1, v31);
      v31 = result;
    }

    *(v31 + 2) = v68;
    v69 = &v31[16 * v67];
    *(v69 + 4) = v33;
    *(v69 + 5) = v55;
    v151 = v55;
    v70 = *v141;
    if (!*v141)
    {
      goto LABEL_146;
    }

    if (v67)
    {
      break;
    }

    a5 = v155;
    v32 = a4;
LABEL_90:
    v29 = v161[1];
    v30 = v151;
    if (v151 >= v29)
    {
      goto LABEL_104;
    }
  }

  a5 = v155;
  v32 = a4;
  while (1)
  {
    a4 = v68 - 1;
    if (v68 >= 4)
    {
      v75 = &v31[16 * v68 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_123;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_124;
      }

      v82 = &v31[16 * v68];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_126;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_129;
      }

      if (v86 >= v78)
      {
        v104 = &v31[16 * a4 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_135;
        }

        if (v73 < v107)
        {
          a4 = v68 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

    if (v68 == 3)
    {
      v71 = *(v31 + 4);
      v72 = *(v31 + 5);
      v81 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      v74 = v81;
LABEL_59:
      if (v74)
      {
        goto LABEL_125;
      }

      v87 = &v31[16 * v68];
      v89 = *v87;
      v88 = *(v87 + 1);
      v90 = __OFSUB__(v88, v89);
      v91 = v88 - v89;
      v92 = v90;
      if (v90)
      {
        goto LABEL_128;
      }

      v93 = &v31[16 * a4 + 32];
      v95 = *v93;
      v94 = *(v93 + 1);
      v81 = __OFSUB__(v94, v95);
      v96 = v94 - v95;
      if (v81)
      {
        goto LABEL_131;
      }

      if (__OFADD__(v91, v96))
      {
        goto LABEL_132;
      }

      if (v91 + v96 >= v73)
      {
        if (v73 < v96)
        {
          a4 = v68 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_73;
    }

    v97 = &v31[16 * v68];
    v99 = *v97;
    v98 = *(v97 + 1);
    v81 = __OFSUB__(v98, v99);
    v91 = v98 - v99;
    v92 = v81;
LABEL_73:
    if (v92)
    {
      goto LABEL_127;
    }

    v100 = &v31[16 * a4];
    v102 = *(v100 + 4);
    v101 = *(v100 + 5);
    v81 = __OFSUB__(v101, v102);
    v103 = v101 - v102;
    if (v81)
    {
      goto LABEL_130;
    }

    if (v103 < v91)
    {
      goto LABEL_90;
    }

LABEL_80:
    v108 = a4 - 1;
    if (a4 - 1 >= v68)
    {
      break;
    }

    if (!*v161)
    {
      goto LABEL_142;
    }

    v109 = *&v31[16 * v108 + 32];
    v110 = *&v31[16 * a4 + 40];
    sub_20CD5EEEC((*v161 + *(v160 + 72) * v109), (*v161 + *(v160 + 72) * *&v31[16 * a4 + 32]), (*v161 + *(v160 + 72) * v110), v70, v32, a5);
    if (v7)
    {
    }

    if (v110 < v109)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_20CD41C10(v31);
    }

    if (v108 >= *(v31 + 2))
    {
      goto LABEL_122;
    }

    v111 = &v31[16 * v108];
    *(v111 + 4) = v109;
    *(v111 + 5) = v110;
    v164 = v31;
    result = sub_20CD41B84(a4);
    v31 = v164;
    v68 = *(v164 + 2);
    if (v68 <= 1)
    {
      goto LABEL_90;
    }
  }

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
  result = sub_20CD41C10(v31);
  v31 = result;
LABEL_106:
  v164 = v31;
  v126 = *(v31 + 2);
  if (v126 < 2)
  {
  }

  while (*v161)
  {
    v127 = *&v31[16 * v126];
    v128 = *&v31[16 * v126 + 24];
    sub_20CD5EEEC((*v161 + *(v160 + 72) * v127), (*v161 + *(v160 + 72) * *&v31[16 * v126 + 16]), (*v161 + *(v160 + 72) * v128), a4, v32, a5);
    if (v7)
    {
    }

    if (v128 < v127)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_20CD41C10(v31);
    }

    if (v126 - 2 >= *(v31 + 2))
    {
      goto LABEL_134;
    }

    v129 = &v31[16 * v126];
    *v129 = v127;
    *(v129 + 1) = v128;
    v164 = v31;
    result = sub_20CD41B84(v126 - 1);
    v31 = v164;
    v126 = *(v164 + 2);
    if (v126 <= 1)
    {
    }
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_20CD5E810(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v73 = a3;
  v68 = sub_20CD62AB4();
  v7 = *(v68 - 8);
  v8 = MEMORY[0x28223BE20](v68);
  v67 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v66 = &v56 - v10;
  v72 = sub_20CD62EF4();
  v11 = *(v72 - 8);
  v12 = MEMORY[0x28223BE20](v72);
  v65 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v70 = &v56 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v18 = v73 - a2;
  if (v73 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_62;
  }

  v19 = (a2 - a1) / v17;
  v76 = a1;
  v75 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = a4 + v21;
    if (v21 >= 1)
    {
      v39 = -v17;
      v60 = (v7 + 8);
      v61 = (v11 + 16);
      v58 = a4;
      v59 = (v11 + 8);
      v40 = v38;
      v71 = a1;
      v62 = -v17;
      v41 = v72;
      while (2)
      {
        while (1)
        {
          v56 = v38;
          v42 = a2;
          v43 = a2 + v39;
          v63 = v42;
          v64 = v43;
          while (1)
          {
            v44 = v73;
            if (v42 <= a1)
            {
              v76 = v42;
              v74 = v56;
              goto LABEL_59;
            }

            v57 = v38;
            v73 += v39;
            v45 = v40 + v39;
            v46 = *v61;
            (*v61)();
            v47 = v65;
            (v46)(v65, v43, v41);
            v48 = v66;
            sub_20CD62EC4();
            v49 = v67;
            sub_20CD62EC4();
            v69 = sub_20CD62A64();
            v50 = *v60;
            v51 = v49;
            v52 = v68;
            (*v60)(v51, v68);
            v50(v48, v52);
            v53 = *v59;
            (*v59)(v47, v41);
            v53(v70, v41);
            if (v69)
            {
              break;
            }

            v38 = v45;
            v54 = v58;
            if (v44 < v40 || v73 >= v40)
            {
              swift_arrayInitWithTakeFrontToBack();
              v43 = v64;
              v39 = v62;
            }

            else
            {
              v43 = v64;
              v39 = v62;
              if (v44 != v40)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v40 = v45;
            a1 = v71;
            v42 = v63;
            if (v45 <= v54)
            {
              a2 = v63;
              goto LABEL_58;
            }
          }

          v55 = v58;
          if (v44 < v63 || v73 >= v63)
          {
            break;
          }

          a2 = v64;
          a1 = v71;
          v38 = v57;
          v39 = v62;
          if (v44 != v63)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v40 <= v55)
          {
            goto LABEL_58;
          }
        }

        a2 = v64;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v71;
        v38 = v57;
        v39 = v62;
        if (v40 > v55)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v76 = a2;
    v74 = v38;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v64 = a4 + v20;
    v74 = a4 + v20;
    if (v20 >= 1 && a2 < v73)
    {
      v23 = *(v11 + 16);
      v60 = (v7 + 8);
      v61 = v23;
      v62 = v17;
      v63 = v11 + 16;
      v59 = (v11 + 8);
      v24 = v72;
      do
      {
        v71 = a1;
        v25 = v70;
        v26 = v61;
        (v61)(v70, a2, v24);
        v27 = v65;
        (v26)(v65, a4, v24);
        v28 = v66;
        sub_20CD62EC4();
        v29 = v67;
        sub_20CD62EC4();
        v69 = sub_20CD62A64();
        v30 = a2;
        v31 = *v60;
        v32 = v29;
        v33 = a4;
        v34 = v68;
        (*v60)(v32, v68);
        v31(v28, v34);
        v35 = *v59;
        (*v59)(v27, v24);
        v35(v25, v24);
        if (v69)
        {
          v36 = v62;
          a2 = v30 + v62;
          v37 = v71;
          a4 = v33;
          if (v71 < v30 || v71 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v71 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v30;
          v36 = v62;
          a4 = v33 + v62;
          v37 = v71;
          if (v71 < v33 || v71 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v71 != v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v75 = a4;
        }

        a1 = v37 + v36;
        v76 = a1;
      }

      while (a4 < v64 && a2 < v73);
    }
  }

LABEL_59:
  sub_20CD41C24(&v76, &v75, &v74);
  return 1;
}

uint64_t sub_20CD5EEEC(char *a1, char *a2, char *a3, char *a4, uint64_t (*a5)(char *, uint64_t), uint64_t a6)
{
  v78 = a6;
  v79 = a5;
  v77 = sub_20CD62AB4();
  v11 = *(v77 - 8);
  v12 = MEMORY[0x28223BE20](v77);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v69 - v17;
  result = MEMORY[0x28223BE20](v16);
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v24 = &v69 - v20;
  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_67;
  }

  v25 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v23 != -1)
  {
    v26 = (a2 - a1) / v23;
    v85 = a1;
    v84 = a4;
    v80 = v23;
    if (v26 < v25 / v23)
    {
      v27 = v26 * v23;
      if (a4 < a1 || &a1[v27] <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v76 = &a4[v27];
      v83 = &a4[v27];
      if (v27 >= 1 && a2 < a3)
      {
        v53 = *(v11 + 16);
        v74 = v18;
        v75 = v11 + 16;
        v72 = v53;
        v73 = (v11 + 8);
        v54 = v24;
        v55 = v77;
        v56 = v6;
        v71 = a3;
        while (1)
        {
          v81 = a1;
          v57 = v72;
          v72(v54, a2, v55);
          v58 = a2;
          v59 = v54;
          v60 = v74;
          v57(v74, a4, v55);
          v61 = v79(v59, v60);
          if (v56)
          {
            break;
          }

          v62 = v61;
          v82 = 0;
          v63 = *v73;
          (*v73)(v60, v55);
          v63(v59, v55);
          v54 = v59;
          if (v62)
          {
            v64 = v80;
            v65 = v81;
            a2 = &v58[v80];
            if (v81 < v58 || v81 >= a2)
            {
              v55 = v77;
              swift_arrayInitWithTakeFrontToBack();
              v64 = v80;
              v56 = v82;
            }

            else
            {
              v56 = v82;
              v55 = v77;
              if (v81 != v58)
              {
                swift_arrayInitWithTakeBackToFront();
                v64 = v80;
              }
            }
          }

          else
          {
            v64 = v80;
            v65 = v81;
            v66 = &a4[v80];
            a2 = v58;
            if (v81 < a4 || v81 >= v66)
            {
              v55 = v77;
              swift_arrayInitWithTakeFrontToBack();
              v64 = v80;
              v56 = v82;
            }

            else
            {
              v56 = v82;
              v55 = v77;
              if (v81 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
                v64 = v80;
              }
            }

            v84 = v66;
            a4 = v66;
          }

          a1 = &v65[v64];
          v85 = a1;
          if (a4 >= v76 || a2 >= v71)
          {
            goto LABEL_65;
          }
        }

        v67 = *v73;
        (*v73)(v60, v55);
        v67(v59, v55);
      }

LABEL_65:
      sub_20CD41C3C(&v85, &v84, &v83);
      return 1;
    }

    v76 = v21;
    v28 = a3;
    v29 = a2;
    v30 = v25 / v23 * v23;
    if (a4 < v29 || &v29[v30] <= a4)
    {
      v31 = v29;
      v32 = v77;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v31 = v29;
      v32 = v77;
      if (a4 == v29)
      {
LABEL_24:
        v82 = v6;
        v34 = &a4[v30];
        if (v30 >= 1)
        {
          v35 = -v23;
          v69 = a4;
          v70 = (v11 + 16);
          v72 = (v11 + 8);
          v36 = &a4[v30];
          v37 = v28;
          v38 = v76;
          v81 = a1;
          v74 = -v23;
          do
          {
            v75 = v34;
            v71 = v34;
            v39 = v31;
            v77 = v31 + v35;
            v73 = v31;
            while (1)
            {
              if (v39 <= a1)
              {
                v85 = v39;
                v34 = v71;
                goto LABEL_64;
              }

              v40 = v37;
              v41 = v74;
              v80 = v36;
              v42 = &v36[v74];
              v43 = *v70;
              (*v70)(v38, &v36[v74], v32);
              v43(v14, v77, v32);
              v44 = v38;
              v45 = v82;
              v46 = v79(v38, v14);
              v82 = v45;
              if (v45)
              {
                v68 = *v72;
                (*v72)(v14, v32);
                v68(v44, v32);
                v85 = v73;
                v34 = v75;
                goto LABEL_64;
              }

              v47 = v46;
              v48 = &v40[v41];
              v49 = v14;
              v50 = *v72;
              v51 = v49;
              (*v72)();
              v50(v44, v32);
              if (v47)
              {
                break;
              }

              v37 = &v40[v41];
              if (v40 < v80 || v48 >= v80)
              {
                swift_arrayInitWithTakeFrontToBack();
                v14 = v51;
                v38 = v76;
              }

              else
              {
                v14 = v51;
                v38 = v76;
                if (v40 != v80)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v75 = v42;
              v36 = v42;
              a1 = v81;
              v39 = v73;
              if (v42 <= v69)
              {
                v31 = v73;
                v34 = v75;
                goto LABEL_63;
              }
            }

            v37 = &v40[v41];
            if (v40 < v73 || v48 >= v73)
            {
              v31 = v77;
              swift_arrayInitWithTakeFrontToBack();
              v52 = v69;
              v14 = v51;
              v38 = v76;
            }

            else
            {
              v38 = v76;
              v31 = v77;
              v52 = v69;
              v14 = v51;
              if (v40 != v73)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v36 = v80;
            a1 = v81;
            v35 = v74;
            v34 = v75;
          }

          while (v80 > v52);
        }

LABEL_63:
        v85 = v31;
LABEL_64:
        v83 = v34;
        goto LABEL_65;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v23 = v80;
    goto LABEL_24;
  }

LABEL_68:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for SnapshotQueryPlanner.SnapshotQueryPlannerError(uint64_t a1)
{
  result = qword_27C8112D0;
  if (!qword_27C8112D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CD5F630(uint64_t a1)
{
  sub_20CD62AB4();
  sub_20CD5F728(&qword_28110F778, MEMORY[0x277D09F70], MEMORY[0x277D09F80]);
  return sub_20CD63214() & 1;
}

uint64_t sub_20CD5F6C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DE0, &unk_20CD64800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CD5F728(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20CD5F798(uint64_t a1)
{
  sub_20CD5F7F0(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_20CD5F7F0(uint64_t a1)
{
  if (!qword_27C8112E0)
  {
    sub_20CD62AB4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C810D98, &qword_20CD64450);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C8112E0);
    }
  }
}

uint64_t sub_20CD5F870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811360, &qword_20CD653E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_20CD1D9A8(a3, v25 - v10, &qword_27C811360, &qword_20CD653E0);
  v12 = sub_20CD63374();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_20CD1DA10(v11, &qword_27C811360, &qword_20CD653E0);
  }

  else
  {
    sub_20CD63364();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_20CD63314();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_20CD63274() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_20CD1DA10(a3, &qword_27C811360, &qword_20CD653E0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20CD1DA10(a3, &qword_27C811360, &qword_20CD653E0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_20CD5FB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811360, &qword_20CD653E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_20CD1D9A8(a3, v25 - v10, &qword_27C811360, &qword_20CD653E0);
  v12 = sub_20CD63374();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_20CD1DA10(v11, &qword_27C811360, &qword_20CD653E0);
  }

  else
  {
    sub_20CD63364();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_20CD63314();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_20CD63274() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_20CD1DA10(a3, &qword_27C811360, &qword_20CD653E0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20CD1DA10(a3, &qword_27C811360, &qword_20CD653E0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_20CD5FE7C()
{
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811360, &qword_20CD653E0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD5FF24, v0, 0);
}

uint64_t sub_20CD5FF24()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting35HealthKitCloudRestoreStatusProvider_fetchingTask;
  v0[5] = OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting35HealthKitCloudRestoreStatusProvider_fetchingTask;
  v3 = *(v1 + v2);
  v0[6] = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_20CD60114;
    v5 = (v0 + 81);
  }

  else
  {
    v7 = v0[3];
    v6 = v0[4];
    v8 = sub_20CD63374();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = sub_20CD62224();
    v10 = swift_allocObject();
    v10[2] = v1;
    v10[3] = v9;
    v10[4] = v1;
    v10[5] = v7;
    swift_retain_n();
    v3 = sub_20CD5F870(0, 0, v6, &unk_20CD65430, v10);
    v0[8] = v3;
    *(v1 + v2) = v3;

    v11 = swift_task_alloc();
    v0[9] = v11;
    *v11 = v0;
    v11[1] = sub_20CD60298;
    v5 = v0 + 10;
  }

  return MEMORY[0x282200460](v5, v3, &type metadata for HealthKitCloudRestoreStatus);
}

uint64_t sub_20CD60114()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_20CD60224, v1, 0);
}

uint64_t sub_20CD60224()
{

  v1 = *(v0 + 81);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_20CD60298()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_20CD603A8, v1, 0);
}

uint64_t sub_20CD603A8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  v3 = *(v0 + 80);
  *(v2 + v1) = 0;

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_20CD60438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v7 = sub_20CD631B4();
  v5[5] = v7;
  v5[6] = *(v7 - 8);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD60500, a4, 0);
}

uint64_t sub_20CD60500()
{
  v21 = v0;
  v1 = [objc_allocWithZone(MEMORY[0x277CCD130]) initWithHealthStore:*(v0[3] + 112) delegate:v0[3]];
  v0[8] = v1;
  sub_20CD63034();
  v2 = sub_20CD63194();
  v3 = sub_20CD633D4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];
  if (v4)
  {
    v19 = v0[7];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    v10 = sub_20CD63654();
    v12 = sub_20CD6153C(v10, v11, &v20);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20CCEA000, v2, v3, "[%s] Fetching Status", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F3115B0](v9, -1, -1);
    MEMORY[0x20F3115B0](v8, -1, -1);

    (*(v5 + 8))(v19, v7);
  }

  else
  {

    (*(v5 + 8))(v6, v7);
  }

  v13 = v0[3];
  v14 = sub_20CD62224();
  v15 = swift_task_alloc();
  v0[9] = v15;
  *(v15 + 16) = v13;
  *(v15 + 24) = v1;
  v16 = swift_task_alloc();
  v0[10] = v16;
  *v16 = v0;
  v16[1] = sub_20CD6075C;
  v17 = v0[2];

  return MEMORY[0x2822007B8](v17, v13, v14, 0x6174536863746566, 0xED00002928737574, sub_20CD624AC, v15, &type metadata for HealthKitCloudRestoreStatus);
}

uint64_t sub_20CD6075C()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_20CD60888, v1, 0);
}

uint64_t sub_20CD60888()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_20CD608F0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C811370, &unk_20CD65418);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8112F0, &qword_20CD643B0);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting35HealthKitCloudRestoreStatusProvider_continuation;
  swift_beginAccess();
  sub_20CD621B4(v8, a2 + v11);
  swift_endAccess();
  return [a3 startObservingSyncStatus];
}

uint64_t sub_20CD60A84(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8112F0, &qword_20CD643B0);
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C811370, &unk_20CD65418);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = sub_20CD631B4();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CC8, &qword_20CD64160);
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD60C34, v1, 0);
}

uint64_t sub_20CD60C34()
{
  v36 = v0;
  if ([*(v0 + 64) syncEnabled])
  {
    v1 = [*(v0 + 64) restoreCompletionDate];
    v2 = *(v0 + 152);
    if (v1)
    {
      v3 = v1;
      sub_20CD62634();

      v4 = sub_20CD62654();
      v34 = 1;
      (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
      sub_20CD1DA10(v2, &qword_27C810CC8, &qword_20CD64160);
      goto LABEL_9;
    }

    v5 = sub_20CD62654();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    sub_20CD1DA10(v2, &qword_27C810CC8, &qword_20CD64160);
  }

  if ([*(v0 + 64) syncEnabled])
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  v34 = v6;
LABEL_9:
  sub_20CD63034();
  v7 = sub_20CD63194();
  v8 = sub_20CD633D4();
  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 136);
  v10 = *(v0 + 144);
  v12 = *(v0 + 128);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v35 = v14;
    *v13 = 136315394;
    v15 = sub_20CD63654();
    v17 = sub_20CD6153C(v15, v16, &v35);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v0 + 161) = v34;
    v18 = sub_20CD63264();
    v20 = sub_20CD6153C(v18, v19, &v35);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_20CCEA000, v7, v8, "[%s] Caching Status: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v14, -1, -1);
    MEMORY[0x20F3115B0](v13, -1, -1);
  }

  (*(v11 + 8))(v10, v12);
  v21 = *(v0 + 120);
  v22 = *(v0 + 88);
  v23 = *(v0 + 96);
  v24 = *(v0 + 72);
  v25 = OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting35HealthKitCloudRestoreStatusProvider_continuation;
  swift_beginAccess();
  sub_20CD1D9A8(v24 + v25, v21, &unk_27C811370, &unk_20CD65418);
  v26 = (*(v23 + 48))(v21, 1, v22);
  v27 = *(v0 + 120);
  if (v26)
  {
    sub_20CD1DA10(*(v0 + 120), &unk_27C811370, &unk_20CD65418);
  }

  else
  {
    v29 = *(v0 + 96);
    v28 = *(v0 + 104);
    v30 = *(v0 + 88);
    (*(v29 + 16))(v28, *(v0 + 120), v30);
    sub_20CD1DA10(v27, &unk_27C811370, &unk_20CD65418);
    *(v0 + 160) = v34;
    sub_20CD63344();
    (*(v29 + 8))(v28, v30);
  }

  v31 = *(v0 + 112);
  (*(*(v0 + 96) + 56))(v31, 1, 1, *(v0 + 88));
  swift_beginAccess();
  sub_20CD621B4(v31, v24 + v25);
  swift_endAccess();

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_20CD610AC()
{
  sub_20CD1DA10(v0 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting35HealthKitCloudRestoreStatusProvider_continuation, &unk_27C811370, &unk_20CD65418);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for HealthKitCloudRestoreStatusProvider(uint64_t a1)
{
  result = qword_28110F1A8;
  if (!qword_28110F1A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CD61168(uint64_t a1)
{
  sub_20CD61218(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20CD61218(uint64_t a1)
{
  if (!qword_28110F168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8112F0, &qword_20CD643B0);
    v1 = sub_20CD63464();
    if (!v2)
    {
      atomic_store(v1, &qword_28110F168);
    }
  }
}

uint64_t sub_20CD6127C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_20CCED908;

  return sub_20CD60A84(a5);
}

uint64_t getEnumTagSinglePayload for HealthKitCloudRestoreStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HealthKitCloudRestoreStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20CD614E8()
{
  result = qword_27C811358;
  if (!qword_27C811358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C811358);
  }

  return result;
}

unint64_t sub_20CD6153C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_20CD61608(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_20CD28ED4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_20CD61608(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_20CD61714(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_20CD634E4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_20CD61714(uint64_t a1, unint64_t a2)
{
  v3 = sub_20CD61760(a1, a2);
  sub_20CD61890(&unk_2823B6D08);
  return v3;
}

void *sub_20CD61760(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_20CD6197C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_20CD634E4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_20CD632A4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_20CD6197C(v10, 0);
        result = sub_20CD634A4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_20CD61890(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_20CD619F0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_20CD6197C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811368, &qword_20CD653F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_20CD619F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811368, &qword_20CD653F8);
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

uint64_t sub_20CD61AE4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_20CD61BD8;

  return v5(v2 + 32);
}

uint64_t sub_20CD61BD8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_20CD61CEC(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811360, &qword_20CD653E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34[-v5];
  v7 = sub_20CD631B4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20CD63034();
  v11 = a1;
  v12 = sub_20CD63194();
  v13 = sub_20CD633D4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v38 = v8;
    v15 = v14;
    v36 = swift_slowAlloc();
    v39 = v36;
    *v15 = 136315394;
    v16 = sub_20CD63654();
    v18 = sub_20CD6153C(v16, v17, &v39);
    v37 = v7;
    v19 = v18;

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = v11;
    v21 = [v20 description];
    v22 = sub_20CD63254();
    v35 = v13;
    v23 = v6;
    v24 = v22;
    v26 = v25;

    v27 = v24;
    v6 = v23;
    v28 = sub_20CD6153C(v27, v26, &v39);

    *(v15 + 14) = v28;
    _os_log_impl(&dword_20CCEA000, v12, v35, "[%s] Received cloud sync observer status update: %s", v15, 0x16u);
    v29 = v36;
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v29, -1, -1);
    MEMORY[0x20F3115B0](v15, -1, -1);

    (*(v38 + 8))(v10, v37);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v30 = sub_20CD63374();
  (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v2;
  v31[5] = v11;
  v32 = v11;

  sub_20CD5FB68(0, 0, v6, &unk_20CD653F0, v31);
}

uint64_t sub_20CD6203C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20CCED908;

  return sub_20CD6127C(a1, v4, v5, v7, v6);
}

uint64_t sub_20CD620FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CCEE040;

  return sub_20CD1B958(a1, v4);
}

uint64_t sub_20CD621B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C811370, &unk_20CD65418);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_20CD62224()
{
  result = qword_28110F1C0[0];
  if (!qword_28110F1C0[0])
  {
    type metadata accessor for HealthKitCloudRestoreStatusProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_28110F1C0);
  }

  return result;
}

uint64_t sub_20CD6227C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20CCEE040;

  return sub_20CD60438(a1, v4, v5, v7, v6);
}

uint64_t sub_20CD6233C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CCEE040;

  return sub_20CD61AE4(a1, v4);
}

uint64_t sub_20CD623F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CCED908;

  return sub_20CD61AE4(a1, v4);
}