char *sub_23E7A55FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350048, &qword_23E7E1E10);
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

_OWORD *sub_23E7A5708@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + v13);
    sub_23E7A6134(*(v3 + 56) + 32 * v13, v18);
    LOBYTE(v20) = v14;
    result = sub_23E7A6190(v18, (&v20 + 8));
    v16 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v17 = v1[5];
      v18[0] = v20;
      v18[1] = v21;
      v19 = v16;
      v17(v18);
      return sub_23E7996FC(v18, &qword_27E34FFC0, &unk_23E7E1D60);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        v22 = 0;
        v20 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23E7A5850@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_23E7A6134(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_23E7A6190(v21, &v23);
    result = sub_23E7DC9D8();
    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_23E7996FC(v21, &qword_27E34FFF0, &qword_23E7E1DB8);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_23E7A59C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v46 = a1;
  v47 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v48 = v8;
  v49 = 0;
  v50 = v11 & v9;
  v51 = a2;
  v52 = a3;
  sub_23E7DC9D8();
  sub_23E7DC9E8();
  sub_23E7A5708(v43);
  if (!v45)
  {
    goto LABEL_25;
  }

  v12 = v43[0];
  sub_23E7A6190(&v44, v42);
  v13 = *a5;
  result = sub_23E7A35A4(v12);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (*(v13 + 24) < v19)
  {
    sub_23E7A3C34(v19, a4 & 1);
    result = sub_23E7A35A4(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_23E7DD938();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    sub_23E7A41E8();
    result = v25;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v20)
  {
LABEL_11:
    v22 = *a5;
    v23 = 32 * result;
    sub_23E7A6134(*(*a5 + 56) + 32 * result, v41);
    __swift_destroy_boxed_opaque_existential_1(v42);
    v24 = *(v22 + 56);
    __swift_destroy_boxed_opaque_existential_1((v24 + v23));
    sub_23E7A6190(v41, (v24 + v23));
    goto LABEL_15;
  }

LABEL_13:
  v26 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  *(v26[6] + result) = v12;
  result = sub_23E7A6190(v42, (v26[7] + 32 * result));
  v27 = v26[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    v26[2] = v28;
LABEL_15:
    sub_23E7A5708(v43);
    if (v45)
    {
      v20 = 1;
      do
      {
        v12 = v43[0];
        sub_23E7A6190(&v44, v42);
        v32 = *a5;
        result = sub_23E7A35A4(v12);
        v34 = *(v32 + 16);
        v35 = (v33 & 1) == 0;
        v18 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (*(v32 + 24) < v36)
        {
          sub_23E7A3C34(v36, 1);
          result = sub_23E7A35A4(v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v29 = *a5;
          v30 = 32 * result;
          sub_23E7A6134(*(*a5 + 56) + 32 * result, v41);
          __swift_destroy_boxed_opaque_existential_1(v42);
          v31 = *(v29 + 56);
          __swift_destroy_boxed_opaque_existential_1((v31 + v30));
          sub_23E7A6190(v41, (v31 + v30));
        }

        else
        {
          v38 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          *(v38[6] + result) = v12;
          result = sub_23E7A6190(v42, (v38[7] + 32 * result));
          v39 = v38[2];
          v18 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v38[2] = v40;
        }

        sub_23E7A5708(v43);
      }

      while (v45);
    }

LABEL_25:
    sub_23E7A65C0(v46);
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_23E7A5CD0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v48 = a1;
  v49 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v50 = v8;
  v51 = 0;
  v52 = v11 & v9;
  v53 = a2;
  v54 = a3;
  sub_23E7DC9D8();
  sub_23E7DC9E8();
  sub_23E7A5850(&v46);
  v12 = *(&v46 + 1);
  if (!*(&v46 + 1))
  {
    goto LABEL_25;
  }

  v13 = v46;
  sub_23E7A6190(v47, v45);
  v14 = *a5;
  result = sub_23E7A352C(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    sub_23E7A3F30(v20, a4 & 1);
    result = sub_23E7A352C(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_23E7DD938();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_23E7A4364();
    result = v26;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v23 = *a5;
    v24 = 32 * result;
    sub_23E7A6134(*(*a5 + 56) + 32 * result, v44);
    __swift_destroy_boxed_opaque_existential_1(v45);

    v25 = *(v23 + 56);
    __swift_destroy_boxed_opaque_existential_1((v25 + v24));
    sub_23E7A6190(v44, (v25 + v24));
    goto LABEL_15;
  }

LABEL_13:
  v27 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v28 = (v27[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_23E7A6190(v45, (v27[7] + 32 * result));
  v29 = v27[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v27[2] = v30;
LABEL_15:
    sub_23E7A5850(&v46);
    v12 = *(&v46 + 1);
    if (*(&v46 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v46;
        sub_23E7A6190(v47, v45);
        v34 = *a5;
        result = sub_23E7A352C(v13, v12);
        v36 = *(v34 + 16);
        v37 = (v35 & 1) == 0;
        v19 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v35;
        if (*(v34 + 24) < v38)
        {
          sub_23E7A3F30(v38, 1);
          result = sub_23E7A352C(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v31 = *a5;
          v32 = 32 * result;
          sub_23E7A6134(*(*a5 + 56) + 32 * result, v44);
          __swift_destroy_boxed_opaque_existential_1(v45);

          v33 = *(v31 + 56);
          __swift_destroy_boxed_opaque_existential_1((v33 + v32));
          sub_23E7A6190(v44, (v33 + v32));
        }

        else
        {
          v40 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_23E7A6190(v45, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_23E7A5850(&v46);
        v12 = *(&v46 + 1);
      }

      while (*(&v46 + 1));
    }

LABEL_25:
    sub_23E7A65C0(v48);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_23E7A600C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23E7A6054(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF90, &qword_23E7E1CC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E7A60C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF90, &qword_23E7E1CC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E7A6134(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_23E7A6190(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_23E7A6204()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF90, &qword_23E7E1CC0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = sub_23E7DCE58();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_23E7A6330(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF90, &qword_23E7E1CC0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_23E7A23AC;

  return sub_23E79BE8C(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t sub_23E7A6478()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E7A64B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E7A6BDC;

  return sub_23E7A3138(a1, v4);
}

uint64_t sub_23E7A6568()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_23E7DC9E8();
  return result;
}

uint64_t sub_23E7A6650(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E7A66B4(uint64_t a1)
{
  v2 = type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E7A6710(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23E7A6828(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E7A6BDC;

  return sub_23E7A3230(a1, v4);
}

uint64_t sub_23E7A68E0(uint64_t a1, unint64_t *a2, void *a3)
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

id sub_23E7A6934@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 rate];
  *a2 = v4;
  return result;
}

uint64_t sub_23E7A697C()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_23E7A69C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 currentItem];
  *a2 = result;
  return result;
}

uint64_t sub_23E7A6A1C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E7A6A78()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E7A6AB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23E7A23AC;

  return sub_23E79F33C(a1, v4, v5, v6);
}

void sub_23E7A6B6C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 72);
  os_unfair_lock_lock((v3 + 20));
  *(v3 + 16) = v2;
  os_unfair_lock_unlock((v3 + 20));
}

uint64_t sub_23E7A6C20(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000079746976;
  v3 = 0x69746375646F7270;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6C6C696863;
    }

    else
    {
      v5 = 0x69746375646F7270;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEC00000079746976;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE500000000000000;
    v5 = 0x7065656C73;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6E6965626C6C6577;
    }

    else
    {
      v5 = 0x6D6F74737563;
    }

    if (v4 == 3)
    {
      v6 = 0xE900000000000067;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  v7 = 0xE500000000000000;
  v8 = 0x7065656C73;
  v9 = 0x6E6965626C6C6577;
  v10 = 0xE900000000000067;
  if (a2 != 3)
  {
    v9 = 0x6D6F74737563;
    v10 = 0xE600000000000000;
  }

  if (a2 != 2)
  {
    v8 = v9;
    v7 = v10;
  }

  if (a2)
  {
    v3 = 0x6C6C696863;
    v2 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_23E7DD8E8();
  }

  return v13 & 1;
}

uint64_t sub_23E7A6D98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C746974;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6B726F77747261;
    }

    else
    {
      v4 = 0x44496D616461;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x747369747261;
    }

    else
    {
      v4 = 0x656C746974;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x6B726F77747261;
  if (a2 != 2)
  {
    v8 = 0x44496D616461;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x747369747261;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23E7DD8E8();
  }

  return v11 & 1;
}

uint64_t sub_23E7A6EC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v6 = 0x800000023E7DE3B0;
      v5 = 0xD000000000000022;
    }

    else if (a1 == 4)
    {
      v6 = 0x800000023E7DE3E0;
      v5 = 0xD000000000000018;
    }

    else
    {
      v5 = 0x646564616F6C7075;
      v6 = 0xEF736F696475612DLL;
    }
  }

  else
  {
    v3 = 0x800000023E7DE380;
    v4 = 0xD00000000000001FLL;
    if (a1 != 1)
    {
      v4 = 0x7473696C79616C70;
      v3 = 0xE900000000000073;
    }

    if (a1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0xD000000000000018;
    }

    if (v2)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0x800000023E7DE360;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v7 = 0xD00000000000001FLL;
      }

      else
      {
        v7 = 0x7473696C79616C70;
      }

      if (a2 == 1)
      {
        v8 = 0x800000023E7DE380;
      }

      else
      {
        v8 = 0xE900000000000073;
      }

      if (v5 != v7)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    }

    v9 = "adaptive-music-manifests";
    goto LABEL_29;
  }

  if (a2 == 3)
  {
    v8 = 0x800000023E7DE3B0;
    if (v5 != 0xD000000000000022)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  if (a2 == 4)
  {
    v9 = "uploaded-audio-playlists";
LABEL_29:
    v8 = (v9 - 32) | 0x8000000000000000;
    if (v5 != 0xD000000000000018)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v8 = 0xEF736F696475612DLL;
  if (v5 != 0x646564616F6C7075)
  {
LABEL_36:
    v10 = sub_23E7DD8E8();
    goto LABEL_37;
  }

LABEL_34:
  if (v6 != v8)
  {
    goto LABEL_36;
  }

  v10 = 1;
LABEL_37:

  return v10 & 1;
}

uint64_t sub_23E7A70AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701602409;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x646573756170;
    }

    else
    {
      v4 = 0x676E6979616C70;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x676E6964616F6CLL;
    }

    else
    {
      v4 = 1701602409;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x646573756170;
  if (a2 != 2)
  {
    v8 = 0x676E6979616C70;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x676E6964616F6CLL;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23E7DD8E8();
  }

  return v11 & 1;
}

AdaptiveMusic::SupportedMetadata_optional __swiftcall SupportedMetadata.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23E7DD7E8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SupportedMetadata.rawValue.getter()
{
  v1 = 0x656C746974;
  v2 = 0x6B726F77747261;
  if (*v0 != 2)
  {
    v2 = 0x44496D616461;
  }

  if (*v0)
  {
    v1 = 0x747369747261;
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

uint64_t sub_23E7A72B0()
{
  sub_23E7DD9A8();
  sub_23E7DD398();

  return sub_23E7DD9C8();
}

uint64_t sub_23E7A7364(uint64_t a1)
{
  sub_23E7DD398();
}

uint64_t sub_23E7A7404(uint64_t a1)
{
  sub_23E7DD9A8();
  sub_23E7DD398();

  return sub_23E7DD9C8();
}

void sub_23E7A74C0(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x656C746974;
  v4 = 0xE700000000000000;
  v5 = 0x6B726F77747261;
  if (*v1 != 2)
  {
    v5 = 0x44496D616461;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x747369747261;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_23E7A7530()
{
  v0 = sub_23E7DCF18();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350078, &qword_23E7E1E58);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23E7E1F20;
  type metadata accessor for AppleMusicObserver();
  swift_allocObject();
  v5 = sub_23E7AE40C();
  v6 = type metadata accessor for AppleMusicPlayer(0);
  swift_allocObject();
  v7 = sub_23E7D3E68(v5);
  *(v4 + 56) = v6;
  *(v4 + 64) = sub_23E7AE3A0(&qword_27E350220, type metadata accessor for AppleMusicPlayer, &unk_23E7E5868);
  *(v4 + 32) = v7;
  v8 = type metadata accessor for QueuePlayer(0);
  swift_allocObject();
  v9 = sub_23E79E174();
  *(v4 + 96) = v8;
  *(v4 + 104) = sub_23E7AE3A0(&qword_27E350228, type metadata accessor for QueuePlayer, &unk_23E7E1C98);
  *(v4 + 72) = v9;
  type metadata accessor for Player(0);
  v10 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350230, &unk_23E7E2710);
  v11 = swift_allocObject();
  *(v11 + 76) = 0;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *(v11 + 59) = 0u;
  *(v10 + 24) = v11;
  sub_23E7DCDB8();
  *(v10 + 16) = v4;
  (*(v1 + 104))(v3, *MEMORY[0x277D2AE20], v0);
  result = sub_23E7DCF28();
  qword_27E3500A0 = v10;
  return result;
}

double static Player.shared.getter()
{
  if (qword_27E34FAF0 != -1)
  {
    swift_once();
  }

  sub_23E7DC9E8();
  return result;
}

uint64_t Player.playbackStatus.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350038, &qword_23E7E1E00);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - v7;
  sub_23E7A7BF4(&v26);
  if (!v27)
  {
    sub_23E7996FC(&v26, &qword_27E3500A8, &qword_23E7E1F38);
    type metadata accessor for Player.PlaybackStatus(0);
    return swift_storeEnumTagMultiPayload();
  }

  sub_23E7A7E84(&v26, v28);
  v9 = *(v1 + 24);
  os_unfair_lock_lock((v9 + 76));
  v10 = *(v9 + 32);
  v21 = *(v9 + 16);
  v22 = v10;
  v23[0] = *(v9 + 48);
  *(v23 + 11) = *(v9 + 59);
  sub_23E7A6710(&v21, v20, &qword_27E3500B0, &qword_23E7E1F40);
  os_unfair_lock_unlock((v9 + 76));
  v11 = v21;
  v24 = v22;
  v25[0] = v23[0];
  *(v25 + 11) = *(v23 + 11);
  if (*(&v21 + 1))
  {
    v12 = v29;
    v13 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    (*(v13 + 32))(v12, v13);
    v14 = v29;
    v15 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    (*(v15 + 24))(v20, v14, v15);
    if (LOBYTE(v20[0]) > 1u || LOBYTE(v20[0]))
    {
      sub_23E7AE1C8(v8, v6, &qword_27E350038, &qword_23E7E1E00);
      v17 = *(type metadata accessor for PlaybackInfo(0) + 20);
      v18 = type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
      (*(*(v18 - 8) + 56))(a1 + v17, 1, 1, v18);
      *a1 = v11;
      v19 = v25[0];
      a1[1] = v24;
      a1[2] = v19;
      *(a1 + 43) = *(v25 + 11);
      sub_23E7A7E9C(v6, a1 + v17);
      type metadata accessor for Player.PlaybackStatus(0);
      goto LABEL_10;
    }

    sub_23E7996FC(v8, &qword_27E350038, &qword_23E7E1E00);
    sub_23E7996FC(&v21, &qword_27E3500B0, &qword_23E7E1F40);
  }

  type metadata accessor for Player.PlaybackStatus(0);
LABEL_10:
  swift_storeEnumTagMultiPayload();
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_23E7A7BF4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 32;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      sub_23E7AE308(v5, v17);
      v7 = v18;
      v8 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      (*(v8 + 24))(v16, v7, v8);
      if (LOBYTE(v16[0]) > 1u || LOBYTE(v16[0]))
      {
        v9 = sub_23E7DD8E8();

        if ((v9 & 1) == 0)
        {
          sub_23E7A7E84(v17, v16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v20 = v6;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_23E7CB548(0, *(v6 + 16) + 1, 1);
            v6 = v20;
          }

          v12 = *(v6 + 16);
          v11 = *(v6 + 24);
          if (v12 >= v11 >> 1)
          {
            sub_23E7CB548((v11 > 1), v12 + 1, 1);
            v6 = v20;
          }

          *(v6 + 16) = v12 + 1;
          sub_23E7A7E84(v16, v6 + 40 * v12 + 32);
          goto LABEL_5;
        }
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_1(v17);
LABEL_5:
      ++v4;
      v5 += 40;
      if (v3 == v4)
      {
        goto LABEL_16;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_16:
  v13 = *(v6 + 16);
  if (v13 > 1)
  {
LABEL_21:
    result = sub_23E7DD788();
    __break(1u);
  }

  else if (v13)
  {
    sub_23E7AE308(v6 + 32, a1);
  }

  else
  {

    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_23E7A7E84(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_23E7A7E9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350038, &qword_23E7E1E00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Player.play(playlist:)(_OWORD *a1)
{
  *(v2 + 80) = v1;
  v3 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = a1[2];
  *(v2 + 59) = *(a1 + 43);
  return MEMORY[0x2822009F8](sub_23E7A7F44, 0, 0);
}

uint64_t sub_23E7A7F44()
{
  v1 = sub_23E7ACEBC(MEMORY[0x277D84F90]);
  *(v0 + 88) = v1;
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_23E7A7FF4;

  return sub_23E7A8194((v0 + 16), v1);
}

uint64_t sub_23E7A7FF4()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23E7A8130, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23E7A8130()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23E7A8194(_OWORD *a1, uint64_t a2)
{
  *(v3 + 408) = a2;
  *(v3 + 416) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FE88, &qword_23E7E1D10);
  *(v3 + 424) = swift_task_alloc();
  v5 = sub_23E7DCCF8();
  *(v3 + 432) = v5;
  *(v3 + 440) = *(v5 - 8);
  *(v3 + 448) = swift_task_alloc();
  v6 = a1[1];
  *(v3 + 144) = *a1;
  *(v3 + 160) = v6;
  *(v3 + 176) = a1[2];
  *(v3 + 187) = *(a1 + 43);

  return MEMORY[0x2822009F8](sub_23E7A82A8, 0, 0);
}

uint64_t sub_23E7A82A8()
{
  v21 = v0;
  v1 = (v0 + 144);
  if ((MRMediaRemoteNowPlayingBless() & 1) == 0)
  {
    if (qword_27E34FB58 != -1)
    {
      swift_once();
    }

    v2 = sub_23E7DCE88();
    __swift_project_value_buffer(v2, qword_27E35A110);
    v3 = sub_23E7DCE68();
    v4 = sub_23E7DD5D8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_23E790000, v3, v4, "MPCMediaRemotePublisher failed to bless application", v5, 2u);
      MEMORY[0x23EF13B60](v5, -1, -1);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350208, &qword_23E7E26E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E7E1B90;
  *(inited + 32) = *(v0 + 201);
  v7 = sub_23E7ADD8C(inited);
  swift_setDeallocating();
  sub_23E7A8D7C(v7);

  v8 = *(v0 + 160);
  v19[0] = *v1;
  v19[1] = v8;
  v20[0] = *(v0 + 176);
  *(v20 + 11) = *(v0 + 187);
  sub_23E7A92A4(v19, v0 + 312);
  if (*(v0 + 336))
  {
    v9 = *(v0 + 416);
    sub_23E7A7E84((v0 + 312), v0 + 272);
    v10 = *(v9 + 24);
    *(swift_task_alloc() + 16) = v1;
    os_unfair_lock_lock((v10 + 76));
    sub_23E7AE230((v10 + 16));
    os_unfair_lock_unlock((v10 + 76));

    v13 = *(v0 + 296);
    v14 = *(v0 + 304);
    __swift_project_boxed_opaque_existential_1((v0 + 272), v13);
    *(v0 + 251) = *(v0 + 187);
    v15 = *(v0 + 176);
    *(v0 + 224) = *(v0 + 160);
    *(v0 + 240) = v15;
    *(v0 + 208) = *v1;
    v18 = (*(v14 + 40) + **(v14 + 40));
    v16 = swift_task_alloc();
    *(v0 + 456) = v16;
    *v16 = v0;
    v16[1] = sub_23E7A8608;
    v17 = *(v0 + 408);

    return v18(v0 + 208, v17, v13, v14);
  }

  else
  {
    sub_23E7996FC(v0 + 312, &qword_27E3500A8, &qword_23E7E1F38);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_23E7A8608()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_23E7A8794;
  }

  else
  {
    v2 = sub_23E7A871C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23E7A871C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 272));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23E7A8794()
{
  v1 = *(v0 + 464);
  *(v0 + 392) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350030, &qword_23E7E26F0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 203) == 5;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {

    v4 = *(v0 + 296);
    v5 = *(v0 + 304);
    __swift_project_boxed_opaque_existential_1((v0 + 272), v4);
    (*(v5 + 88))(v4, v5);
    swift_willThrow();
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1((v0 + 272));

    v13 = *(v0 + 8);

    return v13();
  }

  v6 = *(v0 + 432);
  v7 = *(v0 + 440);
  v8 = *(v0 + 424);
  v9 = *(v0 + 296);
  v10 = *(v0 + 304);
  __swift_project_boxed_opaque_existential_1((v0 + 272), v9);
  (*(v10 + 88))(v9, v10);
  sub_23E7DCCE8();
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    v11 = *(v0 + 424);

    sub_23E7996FC(v11, &qword_27E34FE88, &qword_23E7E1D10);
    sub_23E799564();
    swift_allocError();
    *v12 = 5;
    swift_willThrow();

    goto LABEL_8;
  }

  (*(*(v0 + 440) + 32))(*(v0 + 448), *(v0 + 424), *(v0 + 432));
  v15 = [objc_opt_self() defaultWorkspace];
  *(v0 + 472) = v15;
  if (v15)
  {
    v16 = v15;

    v17 = sub_23E7DCCD8();
    *(v0 + 480) = v17;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 400;
    *(v0 + 24) = sub_23E7A8AE4;
    v18 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350210, &qword_23E7E26F8);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_23E7A93A4;
    *(v0 + 104) = &block_descriptor_0;
    *(v0 + 112) = v18;
    [v16 openURL:v17 configuration:0 completionHandler:v0 + 80];
    v15 = (v0 + 16);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v15);
}

uint64_t sub_23E7A8AE4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 488) = v1;
  if (v1)
  {
    v2 = sub_23E7A8CAC;
  }

  else
  {
    v2 = sub_23E7A8BF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23E7A8BF4()
{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  (*(*(v0 + 440) + 8))(*(v0 + 448), *(v0 + 432));

  __swift_destroy_boxed_opaque_existential_1((v0 + 272));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23E7A8CAC(uint64_t a1)
{
  v2 = *(v1 + 480);
  v3 = *(v1 + 472);
  v5 = *(v1 + 440);
  v4 = *(v1 + 448);
  v6 = *(v1 + 432);
  swift_willThrow();
  (*(v5 + 8))(v4, v6);

  __swift_destroy_boxed_opaque_existential_1((v1 + 272));

  v7 = *(v1 + 8);

  return v7();
}

void sub_23E7A8D7C(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 24);
  os_unfair_lock_lock((v3 + 76));
  v4 = *(v3 + 32);
  v46[0] = *(v3 + 16);
  v46[1] = v4;
  v47[0] = *(v3 + 48);
  *(v47 + 11) = *(v3 + 59);
  sub_23E7996FC(v46, &qword_27E3500B0, &qword_23E7E1F40);
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 59) = 0u;
  os_unfair_lock_unlock((v3 + 76));
  v6 = *(v1 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;
    *&v5 = 136315138;
    v37 = v5;
    do
    {
      sub_23E7AE308(v8, v43);
      v9 = v44;
      v10 = v45;
      __swift_project_boxed_opaque_existential_1(v43, v44);
      v11 = (*(v10 + 16))(v9, v10);
      v42 = v11;
      v12 = *(a1 + 32) & 0x3F;
      MEMORY[0x28223BE20](v11);
      v36[2] = &v42;
      v36[3] = a1;
      v14 = (v13 + 63) >> 6;
      v15 = 8 * v14;
      isStackAllocationSafe = sub_23E7DC9D8();
      if (v12 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
      {
        MEMORY[0x28223BE20](isStackAllocationSafe);
        bzero(v36 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0), v15);
        v17 = sub_23E7AC160((v36 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0)), v14, v11, a1);
      }

      else
      {
        v35 = swift_slowAlloc();
        bzero(v35, v15);
        sub_23E7AE36C(v35, v14, v39);
        v17 = *v39;

        MEMORY[0x23EF13B60](v35, -1, -1);
      }

      v18 = *(v17 + 16);

      if (!v18)
      {
        v19 = v44;
        v20 = v45;
        __swift_project_boxed_opaque_existential_1(v43, v44);
        (*(v20 + 24))(v39, v19, v20);
        if (v39[0] > 1u || v39[0])
        {
          v21 = sub_23E7DD8E8();

          if ((v21 & 1) == 0)
          {
            if (qword_27E34FB58 != -1)
            {
              swift_once();
            }

            v22 = sub_23E7DCE88();
            __swift_project_value_buffer(v22, qword_27E35A110);
            sub_23E7AE308(v43, v39);
            v23 = sub_23E7DCE68();
            v24 = sub_23E7DD5E8();
            if (os_log_type_enabled(v23, v24))
            {
              v25 = swift_slowAlloc();
              v38 = swift_slowAlloc();
              v42 = v38;
              *v25 = v37;
              v27 = v40;
              v26 = v41;
              __swift_project_boxed_opaque_existential_1(v39, v40);
              (*(v26 + 16))(v27, v26);
              v28 = MEMORY[0x23EF12F00]();
              v30 = v29;

              __swift_destroy_boxed_opaque_existential_1(v39);
              v31 = sub_23E7D2CA4(v28, v30, &v42);

              *(v25 + 4) = v31;
              _os_log_impl(&dword_23E790000, v23, v24, "Stopping player for content types %s", v25, 0xCu);
              v32 = v38;
              __swift_destroy_boxed_opaque_existential_1(v38);
              MEMORY[0x23EF13B60](v32, -1, -1);
              MEMORY[0x23EF13B60](v25, -1, -1);
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_1(v39);
            }

            v33 = v44;
            v34 = v45;
            __swift_project_boxed_opaque_existential_1(v43, v44);
            (*(v34 + 88))(v33, v34);
          }
        }

        else
        {
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v43);
      v8 += 40;
      --v7;
    }

    while (v7);
  }
}

uint64_t sub_23E7A92A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = *(result + 57);
    v8 = v4 + 32;
    while (v6 < *(v4 + 16))
    {
      sub_23E7AE308(v8, &v12);
      v9 = v13;
      v10 = v14;
      __swift_project_boxed_opaque_existential_1(&v12, v13);
      v11 = (*(v10 + 16))(v9, v10);
      LOBYTE(v9) = sub_23E7AA784(v7, v11);

      if (v9)
      {
        return sub_23E7A7E84(&v12, a2);
      }

      ++v6;
      result = __swift_destroy_boxed_opaque_existential_1(&v12);
      v8 += 40;
      if (v5 == v6)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_23E7A93A4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350030, &qword_23E7E26F0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_23E7DD2A8();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return MEMORY[0x282200950](v5);
  }
}

Swift::Void __swiftcall Player.pause()()
{
  sub_23E7A7BF4(v10);
  sub_23E7A6710(v10, &v5, &qword_27E3500A8, &qword_23E7E1F38);
  if (!v6)
  {
    sub_23E7996FC(v10, &qword_27E3500A8, &qword_23E7E1F38);
    sub_23E7996FC(&v5, &qword_27E3500A8, &qword_23E7E1F38);
    return;
  }

  sub_23E7A7E84(&v5, v7);
  v0 = v8;
  v1 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v1 + 24))(&v5, v0, v1);
  if (v5 <= 1u || v5 == 2)
  {
    v2 = sub_23E7DD8E8();

    if ((v2 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v4 + 48))(v3, v4);
LABEL_10:
  sub_23E7996FC(v10, &qword_27E3500A8, &qword_23E7E1F38);
  __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_23E7A966C()
{
  v11 = v0;
  sub_23E7A7BF4(v0 + 16);
  sub_23E7A6710(v0 + 16, v0 + 96, &qword_27E3500A8, &qword_23E7E1F38);
  if (*(v0 + 120))
  {
    sub_23E7A7E84((v0 + 96), v0 + 56);
    v1 = *(v0 + 80);
    v2 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v1);
    (*(v2 + 24))(&v10, v1, v2);
    if (v10 == 2)
    {

LABEL_7:
      v4 = *(v0 + 80);
      v5 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v4);
      v9 = (*(v5 + 56) + **(v5 + 56));
      v6 = swift_task_alloc();
      *(v0 + 144) = v6;
      *v6 = v0;
      v6[1] = sub_23E7A991C;

      return v9(v4, v5);
    }

    v3 = sub_23E7DD8E8();

    if (v3)
    {
      goto LABEL_7;
    }

    sub_23E7996FC(v0 + 16, &qword_27E3500A8, &qword_23E7E1F38);
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  else
  {
    sub_23E7996FC(v0 + 16, &qword_27E3500A8, &qword_23E7E1F38);
    sub_23E7996FC(v0 + 96, &qword_27E3500A8, &qword_23E7E1F38);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_23E7A991C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_23E7A9AAC;
  }

  else
  {
    v2 = sub_23E7A9A30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23E7A9A30()
{
  sub_23E7996FC(v0 + 16, &qword_27E3500A8, &qword_23E7E1F38);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23E7A9AAC()
{
  sub_23E7996FC(v0 + 16, &qword_27E3500A8, &qword_23E7E1F38);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23E7A9B48()
{
  sub_23E7A7BF4((v0 + 2));
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v6 = (*(v2 + 64) + **(v2 + 64));
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_23E7A9CD0;

    return v6(v1, v2);
  }

  else
  {
    sub_23E7996FC((v0 + 2), &qword_27E3500A8, &qword_23E7E1F38);
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_23E7A9CD0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_23E7A9E48;
  }

  else
  {
    v2 = sub_23E7A9DE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23E7A9DE4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23E7A9E48()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Player.previous()()
{
  *(v1 + 136) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350038, &qword_23E7E1E00);
  *(v1 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E7A9F48, 0, 0);
}

uint64_t sub_23E7A9F48()
{
  sub_23E7A7BF4((v0 + 2));
  v1 = v0[5];
  if (!v1)
  {
    v7 = &qword_27E3500A8;
    v8 = &qword_23E7E1F38;
    v9 = (v0 + 2);
    goto LABEL_5;
  }

  v2 = v0[18];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  (*(v3 + 32))(v1, v3);
  v4 = type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
  v5 = (*(*(v4 - 8) + 48))(v2, 1, v4);
  v6 = v0[18];
  if (v5 == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v7 = &qword_27E350038;
    v8 = &qword_23E7E1E00;
    v9 = v6;
LABEL_5:
    sub_23E7996FC(v9, v7, v8);
    sub_23E7DDA38();
    goto LABEL_7;
  }

  sub_23E7AD0E8(v0[18], type metadata accessor for PlaybackInfo.PlaybackItemInfo);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
LABEL_7:
  if (sub_23E7DDA18())
  {
    sub_23E7A7BF4((v0 + 12));
    v10 = v0[15];
    if (v10)
    {
      v11 = v0[16];
      __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
      (*(v11 + 80))(v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v0 + 12);
LABEL_17:

      v17 = v0[1];

      return v17();
    }

    v16 = (v0 + 12);
LABEL_16:
    sub_23E7996FC(v16, &qword_27E3500A8, &qword_23E7E1F38);
    goto LABEL_17;
  }

  sub_23E7A7BF4((v0 + 7));
  v12 = v0[10];
  if (!v12)
  {
    v16 = (v0 + 7);
    goto LABEL_16;
  }

  v13 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v18 = (*(v13 + 72) + **(v13 + 72));
  v14 = swift_task_alloc();
  v0[19] = v14;
  *v14 = v0;
  v14[1] = sub_23E7AA26C;

  return v18(v12, v13);
}

uint64_t sub_23E7AA26C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_23E7AA3EC;
  }

  else
  {
    v2 = sub_23E7AA380;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23E7AA380()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23E7AA3EC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Player.seek(to:)(double a1)
{
  *(v2 + 64) = v1;
  *(v2 + 56) = a1;
  return MEMORY[0x2822009F8](sub_23E7AA480, 0, 0);
}

uint64_t sub_23E7AA480()
{
  sub_23E7A7BF4((v0 + 2));
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v7 = (*(v2 + 96) + **(v2 + 96));
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_23E7AA60C;
    v4.n128_u64[0] = v0[7];

    return v7(v1, v2, v4);
  }

  else
  {
    sub_23E7996FC((v0 + 2), &qword_27E3500A8, &qword_23E7E1F38);
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_23E7AA60C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_23E7AA720;
  }

  else
  {
    v2 = sub_23E7AE408;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23E7AA720()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_23E7AA784(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v6 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v8 = *v4;
    if (v8 == 1)
    {
      v9 = 0x646564616F6C7075;
    }

    else
    {
      v9 = 0x7262694C72657375;
    }

    v10 = 0xED00006F69647541;
    if (v8 != 1)
    {
      v10 = 0xEB00000000797261;
    }

    if (*v4)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0x73754D656C707061;
    }

    if (*v4)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0xEA00000000006369;
    }

    if (a1)
    {
      if (a1 == 1)
      {
        v13 = 0x646564616F6C7075;
      }

      else
      {
        v13 = 0x7262694C72657375;
      }

      if (a1 == 1)
      {
        v14 = 0xED00006F69647541;
      }

      else
      {
        v14 = 0xEB00000000797261;
      }

      if (v11 != v13)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v14 = 0xEA00000000006369;
      if (v11 != 0x73754D656C707061)
      {
        goto LABEL_2;
      }
    }

    if (v12 == v14)
    {

      return v6 != 0;
    }

LABEL_2:
    v5 = sub_23E7DD8E8();

    ++v4;
  }

  while ((v5 & 1) == 0);
  return v6 != 0;
}

uint64_t Player.deinit()
{

  v1 = OBJC_IVAR____TtC13AdaptiveMusic6Player___observationRegistrar;
  v2 = sub_23E7DCDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t Player.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC13AdaptiveMusic6Player___observationRegistrar;
  v2 = sub_23E7DCDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_23E7AAA08()
{
  v1 = 1701602409;
  v2 = 0x646573756170;
  if (*v0 != 2)
  {
    v2 = 0x676E6979616C70;
  }

  if (*v0)
  {
    v1 = 0x676E6964616F6CLL;
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

uint64_t sub_23E7AAA74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23E7AE068(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23E7AAAA8(uint64_t a1)
{
  v2 = sub_23E7ACFDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E7AAAE4(uint64_t a1)
{
  v2 = sub_23E7ACFDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E7AAB20(uint64_t a1)
{
  v2 = sub_23E7AD1F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E7AAB5C(uint64_t a1)
{
  v2 = sub_23E7AD1F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E7AABAC(uint64_t a1)
{
  v2 = sub_23E7AD19C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E7AABE8(uint64_t a1)
{
  v2 = sub_23E7AD19C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E7AAC58(uint64_t a1)
{
  v2 = sub_23E7AD148();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E7AAC94(uint64_t a1)
{
  v2 = sub_23E7AD148();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E7AACD0()
{
  sub_23E7DD9A8();
  MEMORY[0x23EF13410](0);
  return sub_23E7DD9C8();
}

uint64_t sub_23E7AAD14(uint64_t a1)
{
  sub_23E7DD9A8();
  MEMORY[0x23EF13410](0);
  return sub_23E7DD9C8();
}

uint64_t sub_23E7AAD54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23E7DD8E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23E7AADD4(uint64_t a1)
{
  v2 = sub_23E7AD094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E7AAE10(uint64_t a1)
{
  v2 = sub_23E7AD094();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Player.PlaybackStatus.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3500C0, &qword_23E7E1F78);
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v40 = &v30 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3500C8, &qword_23E7E1F80);
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3500D0, &qword_23E7E1F88);
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v34 = &v30 - v7;
  v43 = type metadata accessor for PlaybackInfo(0);
  v8 = MEMORY[0x28223BE20](v43);
  v33 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v32 = &v30 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3500D8, &qword_23E7E1F90);
  v31 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  v17 = type metadata accessor for Player.PlaybackStatus(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3500E0, &qword_23E7E1F98);
  v45 = *(v20 - 8);
  v46 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v30 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7ACFDC();
  sub_23E7DDA08();
  sub_23E7AD030(v44, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v13 = v32;
      sub_23E7AD244(v19, v32, type metadata accessor for PlaybackInfo);
      v49 = 2;
      sub_23E7AD148();
      v24 = v37;
      v25 = v46;
      sub_23E7DD878();
      sub_23E7AE3A0(&qword_27E3500F8, type metadata accessor for PlaybackInfo, &protocol conformance descriptor for PlaybackInfo);
      v26 = v39;
      sub_23E7DD8B8();
      v27 = v38;
    }

    else
    {
      sub_23E7AD244(v19, v13, type metadata accessor for PlaybackInfo);
      v48 = 1;
      sub_23E7AD19C();
      v24 = v34;
      v25 = v46;
      sub_23E7DD878();
      sub_23E7AE3A0(&qword_27E3500F8, type metadata accessor for PlaybackInfo, &protocol conformance descriptor for PlaybackInfo);
      v26 = v36;
      sub_23E7DD8B8();
      v27 = v35;
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v13 = v33;
    sub_23E7AD244(v19, v33, type metadata accessor for PlaybackInfo);
    v50 = 3;
    sub_23E7AD094();
    v24 = v40;
    v25 = v46;
    sub_23E7DD878();
    sub_23E7AE3A0(&qword_27E3500F8, type metadata accessor for PlaybackInfo, &protocol conformance descriptor for PlaybackInfo);
    v26 = v42;
    sub_23E7DD8B8();
    v27 = v41;
LABEL_7:
    (*(v27 + 8))(v24, v26);
    sub_23E7AD0E8(v13, type metadata accessor for PlaybackInfo);
    return (*(v45 + 8))(v22, v25);
  }

  v47 = 0;
  sub_23E7AD1F0();
  v29 = v46;
  sub_23E7DD878();
  (*(v31 + 8))(v16, v14);
  return (*(v45 + 8))(v22, v29);
}

uint64_t Player.PlaybackStatus.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350118, &qword_23E7E1FA0);
  v63 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v68 = &v52 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350120, &qword_23E7E1FA8);
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x28223BE20](v4);
  v67 = &v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350128, &qword_23E7E1FB0);
  v7 = *(v6 - 8);
  v58 = v6;
  v59 = v7;
  MEMORY[0x28223BE20](v6);
  v66 = &v52 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350130, &qword_23E7E1FB8);
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x28223BE20](v9);
  v64 = &v52 - v10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350138, &unk_23E7E1FC0);
  v70 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v12 = &v52 - v11;
  v13 = type metadata accessor for Player.PlaybackStatus(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v52 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v52 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v52 - v23;
  v25 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_23E7ACFDC();
  v26 = v71;
  sub_23E7DD9E8();
  if (!v26)
  {
    v52 = v22;
    v53 = v19;
    v54 = v16;
    v27 = v66;
    v28 = v67;
    v29 = v68;
    v55 = v24;
    v71 = v13;
    v30 = v69;
    v31 = v65;
    v32 = sub_23E7DD858();
    v33 = (2 * *(v32 + 16)) | 1;
    v73 = v32;
    v74 = v32 + 32;
    v75 = 0;
    v76 = v33;
    v34 = sub_23E793234();
    v35 = v12;
    if (v34 == 4 || v75 != v76 >> 1)
    {
      v39 = sub_23E7DD768();
      swift_allocError();
      v41 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FC08, &qword_23E7E08D0);
      *v41 = v71;
      sub_23E7DD808();
      sub_23E7DD758();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
      swift_willThrow();
      (*(v70 + 8))(v35, v31);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v34 > 1u)
      {
        v43 = v70;
        if (v34 == 2)
        {
          v77 = 2;
          sub_23E7AD148();
          sub_23E7DD7F8();
          type metadata accessor for PlaybackInfo(0);
          sub_23E7AE3A0(&qword_27E350140, type metadata accessor for PlaybackInfo, &protocol conformance descriptor for PlaybackInfo);
          v44 = v53;
          v45 = v62;
          sub_23E7DD848();
          (*(v61 + 8))(v28, v45);
          (*(v43 + 8))(v35, v31);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v51 = v44;
        }

        else
        {
          v77 = 3;
          sub_23E7AD094();
          v48 = v29;
          sub_23E7DD7F8();
          type metadata accessor for PlaybackInfo(0);
          sub_23E7AE3A0(&qword_27E350140, type metadata accessor for PlaybackInfo, &protocol conformance descriptor for PlaybackInfo);
          v49 = v54;
          v50 = v60;
          sub_23E7DD848();
          (*(v63 + 8))(v48, v50);
          (*(v43 + 8))(v35, v31);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v51 = v49;
        }

        v38 = v55;
        sub_23E7AD244(v51, v55, type metadata accessor for Player.PlaybackStatus);
        v37 = v30;
      }

      else if (v34)
      {
        v77 = 1;
        sub_23E7AD19C();
        sub_23E7DD7F8();
        v37 = v30;
        type metadata accessor for PlaybackInfo(0);
        sub_23E7AE3A0(&qword_27E350140, type metadata accessor for PlaybackInfo, &protocol conformance descriptor for PlaybackInfo);
        v46 = v52;
        v47 = v58;
        sub_23E7DD848();
        (*(v59 + 8))(v27, v47);
        (*(v70 + 8))(v35, v31);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v38 = v55;
        sub_23E7AD244(v46, v55, type metadata accessor for Player.PlaybackStatus);
      }

      else
      {
        v77 = 0;
        sub_23E7AD1F0();
        v36 = v64;
        sub_23E7DD7F8();
        v37 = v30;
        (*(v56 + 8))(v36, v57);
        (*(v70 + 8))(v35, v31);
        swift_unknownObjectRelease();
        v38 = v55;
        swift_storeEnumTagMultiPayload();
      }

      sub_23E7AD244(v38, v37, type metadata accessor for Player.PlaybackStatus);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v72);
}

uint64_t Player.play(playlist:_overridingUploadedAudioMetadata:)(_OWORD *a1, uint64_t a2)
{
  v4 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  *(v2 + 48) = a1[2];
  *(v2 + 59) = *(a1 + 43);
  v5 = swift_task_alloc();
  *(v2 + 80) = v5;
  *v5 = v2;
  v5[1] = sub_23E7AC014;

  return sub_23E7A8194((v2 + 16), a2);
}

uint64_t sub_23E7AC014()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23E7AC148, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23E7AC160(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *(a3 + 16);
  if (!v24)
  {
    v21 = 0;
LABEL_30:
    sub_23E7DC9E8();
    return sub_23E7AC464(a1, a2, v21, a4);
  }

  v21 = 0;
  v5 = 0;
  v26 = a4 + 56;
  v23 = a3 + 32;
  while (2)
  {
    v6 = *(v23 + v5++);
    sub_23E7DD9A8();
    sub_23E7DD398();

    v7 = sub_23E7DD9C8();
    v8 = -1 << *(a4 + 32);
    v9 = v7 & ~v8;
    v10 = v9 >> 6;
    v11 = 1 << v9;
    if (((1 << v9) & *(v26 + 8 * (v9 >> 6))) == 0)
    {
      goto LABEL_3;
    }

    v25 = v5;
    v12 = ~v8;
    while (!*(*(a4 + 48) + v9))
    {
      v13 = 0x73754D656C707061;
      v14 = 0xEA00000000006369;
      if (!v6)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 == 1)
      {
        v15 = 0x646564616F6C7075;
      }

      else
      {
        v15 = 0x7262694C72657375;
      }

      if (v6 == 1)
      {
        v16 = 0xED00006F69647541;
      }

      else
      {
        v16 = 0xEB00000000797261;
      }

      if (v13 == v15)
      {
        goto LABEL_21;
      }

LABEL_22:
      v17 = sub_23E7DD8E8();

      if (v17)
      {
        goto LABEL_26;
      }

      v9 = (v9 + 1) & v12;
      v10 = v9 >> 6;
      v11 = 1 << v9;
      if ((*(v26 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        v5 = v25;
        goto LABEL_3;
      }
    }

    if (*(*(a4 + 48) + v9) == 1)
    {
      v13 = 0x646564616F6C7075;
      v14 = 0xED00006F69647541;
      if (!v6)
      {
        goto LABEL_20;
      }

      goto LABEL_11;
    }

    v13 = 0x7262694C72657375;
    v14 = 0xEB00000000797261;
    if (v6)
    {
      goto LABEL_11;
    }

LABEL_20:
    v16 = 0xEA00000000006369;
    if (v13 != 0x73754D656C707061)
    {
      goto LABEL_22;
    }

LABEL_21:
    if (v14 != v16)
    {
      goto LABEL_22;
    }

LABEL_26:
    v19 = a1[v10];
    a1[v10] = v19 | v11;
    v5 = v25;
    if ((v19 & v11) != 0)
    {
LABEL_3:
      if (v5 == v24)
      {
        goto LABEL_30;
      }

      continue;
    }

    break;
  }

  if (!__OFADD__(v21, 1))
  {
    ++v21;
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t sub_23E7AC464(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350218, &unk_23E7E2700);
  result = sub_23E7DD718();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_23E7DD9A8();
    sub_23E7DD398();

    result = sub_23E7DD9C8();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t _s13AdaptiveMusic6PlayerC14PlaybackStatusO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackInfo(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = type metadata accessor for Player.PlaybackStatus(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v32 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350200, &unk_23E7E26D8);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v32 - v23;
  v25 = *(v22 + 56);
  sub_23E7AD030(a1, &v32 - v23);
  sub_23E7AD030(a2, &v24[v25]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_23E7AD030(v24, v18);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v15 = v18;
        goto LABEL_13;
      }

      sub_23E7AD244(&v24[v25], v9, type metadata accessor for PlaybackInfo);
      v29 = static PlaybackInfo.== infix(_:_:)(v18, v9);
      sub_23E7AD0E8(v9, type metadata accessor for PlaybackInfo);
      v30 = v18;
    }

    else
    {
      sub_23E7AD030(v24, v20);
      if (swift_getEnumCaseMultiPayload())
      {
        v15 = v20;
LABEL_13:
        sub_23E7AD0E8(v15, type metadata accessor for PlaybackInfo);
        goto LABEL_14;
      }

      sub_23E7AD244(&v24[v25], v11, type metadata accessor for PlaybackInfo);
      v29 = static PlaybackInfo.== infix(_:_:)(v20, v11);
      sub_23E7AD0E8(v11, type metadata accessor for PlaybackInfo);
      v30 = v20;
    }

LABEL_16:
    sub_23E7AD0E8(v30, type metadata accessor for PlaybackInfo);
    sub_23E7AD0E8(v24, type metadata accessor for Player.PlaybackStatus);
    return v29 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_23E7AD030(v24, v15);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_13;
    }

    v27 = &v24[v25];
    v28 = v33;
    sub_23E7AD244(v27, v33, type metadata accessor for PlaybackInfo);
    v29 = static PlaybackInfo.== infix(_:_:)(v15, v28);
    sub_23E7AD0E8(v28, type metadata accessor for PlaybackInfo);
    v30 = v15;
    goto LABEL_16;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
LABEL_14:
    sub_23E7996FC(v24, &qword_27E350200, &unk_23E7E26D8);
    v29 = 0;
    return v29 & 1;
  }

  sub_23E7AD0E8(v24, type metadata accessor for Player.PlaybackStatus);
  v29 = 1;
  return v29 & 1;
}

unint64_t sub_23E7ACAD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FDF0, &qword_23E7E18F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350238, &unk_23E7E2720);
    v7 = sub_23E7DD7D8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_23E7DC9E8();
    while (1)
    {
      sub_23E7A6710(v9, v5, &qword_27E34FDF0, &qword_23E7E18F0);
      result = sub_23E7A3420(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_23E7DC9A8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23E7ACCBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3501E0, &qword_23E7E26B8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v21 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3501E8, &unk_23E7E26C0);
    v7 = sub_23E7DD7D8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v21 = *(v3 + 72);
    v22 = v8;
    sub_23E7DC9E8();
    while (1)
    {
      sub_23E7A6710(v9, v5, &qword_27E3501E0, &qword_23E7E26B8);
      v11 = *v5;
      v10 = v5[1];
      result = sub_23E7A352C(*v5, v10);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v7[6] + 16 * result);
      *v15 = v11;
      v15[1] = v10;
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3501F0, &unk_23E7E3F30);
      result = sub_23E7AE1C8(v5 + v22, v16 + *(*(v17 - 8) + 72) * v14, &qword_27E3501F0, &unk_23E7E3F30);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v21;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23E7ACEBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350028, &unk_23E7E1DF0);
    v3 = sub_23E7DD7D8();
    v4 = a1 + 32;
    sub_23E7DC9E8();
    while (1)
    {
      sub_23E7A6710(v4, v10, &qword_27E350018, &qword_23E7E1DE0);
      result = sub_23E7A35A4(v10[0]);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_23E7A6190(&v11, (v3[7] + 32 * result));
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23E7ACFDC()
{
  result = qword_27E3500E8;
  if (!qword_27E3500E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3500E8);
  }

  return result;
}

uint64_t sub_23E7AD030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player.PlaybackStatus(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23E7AD094()
{
  result = qword_27E3500F0;
  if (!qword_27E3500F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3500F0);
  }

  return result;
}

uint64_t sub_23E7AD0E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23E7AD148()
{
  result = qword_27E350100;
  if (!qword_27E350100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350100);
  }

  return result;
}

unint64_t sub_23E7AD19C()
{
  result = qword_27E350108;
  if (!qword_27E350108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350108);
  }

  return result;
}

unint64_t sub_23E7AD1F0()
{
  result = qword_27E350110;
  if (!qword_27E350110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350110);
  }

  return result;
}

uint64_t sub_23E7AD244(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23E7AD2B0()
{
  result = qword_27E350148;
  if (!qword_27E350148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350148);
  }

  return result;
}

uint64_t sub_23E7AD344(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E7AD37C(uint64_t a1)
{
  result = sub_23E7DCDC8();
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

uint64_t sub_23E7AD490(uint64_t a1)
{
  result = type metadata accessor for PlaybackInfo(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicPlayingPlaybackStatus(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MusicPlayingPlaybackStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23E7AD698()
{
  result = qword_27E350170;
  if (!qword_27E350170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350170);
  }

  return result;
}

unint64_t sub_23E7AD6F0()
{
  result = qword_27E350178;
  if (!qword_27E350178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350178);
  }

  return result;
}

unint64_t sub_23E7AD748()
{
  result = qword_27E350180;
  if (!qword_27E350180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350180);
  }

  return result;
}

unint64_t sub_23E7AD7A0()
{
  result = qword_27E350188;
  if (!qword_27E350188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350188);
  }

  return result;
}

unint64_t sub_23E7AD7F8()
{
  result = qword_27E350190;
  if (!qword_27E350190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350190);
  }

  return result;
}

unint64_t sub_23E7AD850()
{
  result = qword_27E350198;
  if (!qword_27E350198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350198);
  }

  return result;
}

unint64_t sub_23E7AD8A8()
{
  result = qword_27E3501A0;
  if (!qword_27E3501A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3501A0);
  }

  return result;
}

unint64_t sub_23E7AD900()
{
  result = qword_27E3501A8;
  if (!qword_27E3501A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3501A8);
  }

  return result;
}

unint64_t sub_23E7AD958()
{
  result = qword_27E3501B0;
  if (!qword_27E3501B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3501B0);
  }

  return result;
}

unint64_t sub_23E7AD9B0()
{
  result = qword_27E3501B8;
  if (!qword_27E3501B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3501B8);
  }

  return result;
}

unint64_t sub_23E7ADA08()
{
  result = qword_27E3501C0;
  if (!qword_27E3501C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3501C0);
  }

  return result;
}

unint64_t sub_23E7ADA60()
{
  result = qword_27E3501C8;
  if (!qword_27E3501C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3501C8);
  }

  return result;
}

unint64_t sub_23E7ADAB8()
{
  result = qword_27E3501D0;
  if (!qword_27E3501D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3501D0);
  }

  return result;
}

unint64_t sub_23E7ADB10()
{
  result = qword_27E3501D8;
  if (!qword_27E3501D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3501D8);
  }

  return result;
}

unint64_t sub_23E7ADB64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFF8, &qword_23E7E1DC0);
    v3 = sub_23E7DD7D8();
    v4 = a1 + 32;
    sub_23E7DC9E8();
    while (1)
    {
      sub_23E7A6710(v4, &v13, &qword_27E34FFE8, &qword_23E7E1DB0);
      v5 = v13;
      v6 = v14;
      result = sub_23E7A352C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23E7A6190(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23E7ADC94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3501F8, &qword_23E7E26D0);
    v3 = sub_23E7DD7D8();
    sub_23E7DC9E8();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;
      sub_23E7DC9D8();
      result = sub_23E7A35A4(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_23E7ADD8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350218, &unk_23E7E2700);
    v3 = sub_23E7DD718();
    v4 = 0;
    v5 = v3 + 56;
    v21 = v1;
    v22 = a1 + 32;
    while (1)
    {
      v6 = *(v22 + v4++);
      sub_23E7DD9A8();
      sub_23E7DD398();

      result = sub_23E7DD9C8();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          if (*(*(v3 + 48) + v9))
          {
            if (*(*(v3 + 48) + v9) == 1)
            {
              v13 = 0x646564616F6C7075;
              v14 = 0xED00006F69647541;
              if (!v6)
              {
                goto LABEL_20;
              }
            }

            else
            {
              v13 = 0x7262694C72657375;
              v14 = 0xEB00000000797261;
              if (!v6)
              {
LABEL_20:
                v16 = 0xEA00000000006369;
                if (v13 != 0x73754D656C707061)
                {
                  goto LABEL_22;
                }

                goto LABEL_21;
              }
            }
          }

          else
          {
            v13 = 0x73754D656C707061;
            v14 = 0xEA00000000006369;
            if (!v6)
            {
              goto LABEL_20;
            }
          }

          if (v6 == 1)
          {
            v15 = 0x646564616F6C7075;
          }

          else
          {
            v15 = 0x7262694C72657375;
          }

          if (v6 == 1)
          {
            v16 = 0xED00006F69647541;
          }

          else
          {
            v16 = 0xEB00000000797261;
          }

          if (v13 != v15)
          {
            goto LABEL_22;
          }

LABEL_21:
          if (v14 == v16)
          {

            goto LABEL_4;
          }

LABEL_22:
          v17 = sub_23E7DD8E8();

          if (v17)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        break;
      }

      *(v3 + 16) = v20;
LABEL_4:
      if (v4 == v21)
      {
        return v3;
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

uint64_t sub_23E7AE068(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v3 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6964616F6CLL && a2 == 0xE700000000000000 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646573756170 && a2 == 0xE600000000000000 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E6979616C70 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_23E7DD8E8();

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

uint64_t sub_23E7AE1C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_23E7AE230(_OWORD *a1)
{
  v3 = *(v1 + 16);
  v4 = v3[1];
  v11 = *v3;
  v12 = v4;
  v13[0] = v3[2];
  *(v13 + 11) = *(v3 + 43);
  v5 = a1[1];
  v9[0] = *a1;
  v9[1] = v5;
  v10[0] = a1[2];
  *(v10 + 11) = *(a1 + 43);
  sub_23E7996FC(v9, &qword_27E3500B0, &qword_23E7E1F40);
  v6 = v12;
  *a1 = v11;
  a1[1] = v6;
  a1[2] = v13[0];
  *(a1 + 43) = *(v13 + 11);
  return sub_23E794BD8(v3, &v8);
}

uint64_t sub_23E7AE308(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23E7AE36C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_23E7AC160(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_23E7AE3A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_23E7AE40C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFB8, &qword_23E7E1D58);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v0[2] = nullsub_1;
  v0[3] = 0;
  v0[4] = nullsub_1;
  v0[5] = 0;
  sub_23E7DCF08();
  v0[6] = sub_23E7DCEF8();
  v5 = sub_23E7DD558();
  v0[7] = 0;
  v0[8] = 0;
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_23E7DD538();
  sub_23E7DC9E8();
  v6 = sub_23E7DD528();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_23E79CE30(0, 0, v4, &unk_23E7E2788, v7);

  return v1;
}

uint64_t sub_23E7AE574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350240, &qword_23E7E2790);
  v4[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350248, &qword_23E7E2798);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  sub_23E7DD538();
  v4[10] = sub_23E7DD528();
  v7 = sub_23E7DD518();

  return MEMORY[0x2822009F8](sub_23E7AE6AC, v7, v6);
}

uint64_t sub_23E7AE6AC()
{
  v1 = v0;
  v16 = v0[9];
  v17 = v0[7];
  v18 = v0[8];
  v2 = v0[5];
  v3 = v0[6];

  sub_23E7DD198();
  v15 = sub_23E7DD188();

  v0[2] = v15;
  v4 = [objc_opt_self() mainRunLoop];
  v0[3] = v4;
  v5 = sub_23E7DD648();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350250, &qword_23E7E27A0);
  sub_23E7AF21C();
  sub_23E7AF328(&qword_27E350260, &qword_27E350250, &qword_23E7E27A0, MEMORY[0x277CBCD90]);
  sub_23E7AF268();
  sub_23E7DCE98();
  sub_23E7996FC(v3, &qword_27E350240, &qword_23E7E2790);

  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_23E7AF2F8;
  *(v7 + 24) = v6;
  sub_23E7AF328(&qword_27E350270, &qword_27E350248, &qword_23E7E2798, MEMORY[0x277CBCD60]);
  v8 = sub_23E7DCEA8();

  (*(v18 + 8))(v16, v17);
  *(v2 + 56) = v8;

  sub_23E7DCED8();
  v9 = sub_23E7DD0D8();

  v1[4] = v9;
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_23E7AF370;
  *(v11 + 24) = v10;
  v12 = sub_23E7DCEA8();

  *(v2 + 64) = v12;

  v13 = v1[1];

  return v13();
}

uint64_t sub_23E7AEA2C(uint64_t a1)
{
  v1 = sub_23E7DD098();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v16[-v6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_23E7DCF08();
    sub_23E7DCEF8();
    sub_23E7DD198();

    sub_23E7DD178();

    v10 = *(v9 + 16);
    (*(v2 + 16))(v5, v7, v1);
    v11 = (*(v2 + 88))(v5, v1);
    if (v11 == *MEMORY[0x277CD7EE8])
    {
      sub_23E7DC9E8();
      v12 = 0;
LABEL_18:
      v17 = v12;
      v10(&v17);

      return (*(v2 + 8))(v7, v1);
    }

    if (v11 == *MEMORY[0x277CD7EE0])
    {
LABEL_5:
      sub_23E7DC9E8();
      v12 = 3;
      goto LABEL_18;
    }

    if (v11 == *MEMORY[0x277CD7ED8] || v11 == *MEMORY[0x277CD7EC0])
    {
      sub_23E7DC9E8();
    }

    else
    {
      if (v11 == *MEMORY[0x277CD7EC8] || v11 == *MEMORY[0x277CD7ED0])
      {
        goto LABEL_5;
      }

      v15 = *(v2 + 8);
      sub_23E7DC9E8();
      v15(v5, v1);
    }

    v12 = 2;
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_23E7AECA4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFB8, &qword_23E7E1D58);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350278, &qword_23E7E27A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_23E7DCED8();
    sub_23E7DD0C8();

    v13 = sub_23E7DD558();
    (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
    sub_23E7AF3B0(v10, v8);
    sub_23E7DD538();
    sub_23E7DC9E8();
    v14 = sub_23E7DD528();
    v15 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D85700];
    v16[2] = v14;
    v16[3] = v17;
    v16[4] = v12;
    sub_23E7AF548(v8, v16 + v15);
    sub_23E79CE30(0, 0, v3, &unk_23E7E27B8, v16);

    return sub_23E7996FC(v10, &qword_27E350278, &qword_23E7E27A8);
  }

  return result;
}

uint64_t sub_23E7AEF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350278, &qword_23E7E27A8);
  v5[4] = swift_task_alloc();
  sub_23E7DD538();
  v5[5] = sub_23E7DD528();
  v7 = sub_23E7DD518();

  return MEMORY[0x2822009F8](sub_23E7AEFD8, v7, v6);
}

uint64_t sub_23E7AEFD8()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  sub_23E7DCED8();
  sub_23E7DD0C8();

  v4 = *(v3 + 32);
  sub_23E7DC9E8();
  v4(v2, v1);

  sub_23E7996FC(v1, &qword_27E350278, &qword_23E7E27A8);

  v5 = v0[1];

  return v5();
}

uint64_t sub_23E7AF0AC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23E7AF128()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E7AF168(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23E7A23AC;

  return sub_23E7AE574(a1, v4, v5, v6);
}

unint64_t sub_23E7AF21C()
{
  result = qword_27E350258;
  if (!qword_27E350258)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E350258);
  }

  return result;
}

unint64_t sub_23E7AF268()
{
  result = qword_27E350268;
  if (!qword_27E350268)
  {
    sub_23E7AF21C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350268);
  }

  return result;
}

uint64_t sub_23E7AF2C0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E7AF328(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_23E7AF378()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E7AF3B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350278, &qword_23E7E27A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E7AF420()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350278, &qword_23E7E27A8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_23E7DD148();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23E7AF548(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350278, &qword_23E7E27A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E7AF5B8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350278, &qword_23E7E27A8) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23E7A6BDC;

  return sub_23E7AEF08(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_23E7AF6C4()
{
  v0 = sub_23E7DCC98();
  __swift_allocate_value_buffer(v0, qword_27E350280);
  __swift_project_value_buffer(v0, qword_27E350280);
  return sub_23E7DCC88();
}

uint64_t static ToggleMusicIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E34FAF8 != -1)
  {
    swift_once();
  }

  v2 = sub_23E7DCC98();
  v3 = __swift_project_value_buffer(v2, qword_27E350280);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_23E7AF80C(char *a1, uint64_t *a2)
{
  sub_23E7DC9E8();
  sub_23E7DC9E8();
  sub_23E7DC9E8();
  sub_23E7DC918();
}

uint64_t (*ToggleMusicIntent.value.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_23E7DC8F8();
  return sub_23E7B2044;
}

uint64_t sub_23E7AF970(_OWORD *a1, uint64_t *a2)
{
  v2 = a1[1];
  v8[0] = *a1;
  v8[1] = v2;
  v4 = *a1;
  v3 = a1[1];
  v9[0] = a1[2];
  *(v9 + 11) = *(a1 + 43);
  v6[4] = v4;
  v6[5] = v3;
  v7[0] = a1[2];
  *(v7 + 11) = *(a1 + 43);
  sub_23E7B1F6C(v8, v6);
  sub_23E7DC9E8();
  sub_23E7DC9E8();
  sub_23E7DC9E8();
  sub_23E7DC918();
}

uint64_t (*ToggleMusicIntent.playlist.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_23E7DC8F8();
  return sub_23E7B2044;
}

uint64_t ToggleMusicIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v38 = a1;
  v36 = sub_23E7DCA08();
  v1 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350298, &qword_23E7E27D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v37 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3502A0, &qword_23E7E27D8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3502A8, &qword_23E7E27E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - v13;
  v28 = &v27 - v13;
  v15 = sub_23E7DCC98();
  v34 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3502B0, &qword_23E7E27E8);
  sub_23E7DCC88();
  v17 = *(v16 + 56);
  v32 = v16 + 56;
  v33 = v17;
  v17(v14, 1, 1, v15);
  LOBYTE(v39) = 2;
  v18 = sub_23E7DD508();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  v19 = sub_23E7DC8D8();
  v20 = *(*(v19 - 8) + 56);
  v20(v8, 1, 1, v19);
  v31 = *MEMORY[0x277CBA308];
  v21 = *(v1 + 104);
  v29 = v1 + 104;
  v30 = v21;
  v22 = v36;
  v21(v3);
  v23 = v28;
  v24 = sub_23E7DC958();
  v25 = v38;
  v35 = v24;
  *v38 = v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3502B8, &qword_23E7E27F0);
  sub_23E7DCC88();
  v33(v23, 1, 1, v34);
  v40 = 0u;
  memset(v41, 0, sizeof(v41));
  v39 = 0u;
  v20(v8, 1, 1, v19);
  v20(v37, 1, 1, v19);
  v30(v3, v31, v22);
  sub_23E7AFFE0();
  v25[1] = sub_23E7DC948();
  if (qword_27E34FAF0 != -1)
  {
    swift_once();
  }

  v25[2] = qword_27E3500A0;
  LOBYTE(v39) = 0;
  sub_23E7DC9E8();
  return sub_23E7DC918();
}

unint64_t sub_23E7AFFE0()
{
  result = qword_27E3502C0;
  if (!qword_27E3502C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3502C0);
  }

  return result;
}

uint64_t ToggleMusicIntent.init(value:playlist:player:)@<X0>(int a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v41 = a4;
  v42 = a3;
  v43 = a1;
  v44 = sub_23E7DCA08();
  v5 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350298, &qword_23E7E27D0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v40 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3502A0, &qword_23E7E27D8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3502A8, &qword_23E7E27E0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v34 - v17;
  v19 = sub_23E7DCC98();
  v37 = v19;
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = a2[1];
  v48 = *a2;
  v49 = v21;
  v50[0] = a2[2];
  *(v50 + 11) = *(a2 + 43);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3502B0, &qword_23E7E27E8);
  sub_23E7DCC88();
  v22 = *(v20 + 56);
  v36 = v20 + 56;
  v38 = v22;
  v22(v18, 1, 1, v19);
  LOBYTE(v45) = 2;
  v23 = sub_23E7DD508();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  v24 = sub_23E7DC8D8();
  v25 = *(*(v24 - 8) + 56);
  v26 = v12;
  v25(v12, 1, 1, v24);
  v27 = *MEMORY[0x277CBA308];
  v28 = *(v5 + 104);
  v34[1] = v5 + 104;
  v35 = v28;
  v28(v7, v27, v44);
  v29 = v7;
  v39 = sub_23E7DC958();
  v30 = v41;
  *v41 = v39;
  v34[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3502B8, &qword_23E7E27F0);
  sub_23E7DCC88();
  v38(v18, 1, 1, v37);
  v46 = 0u;
  memset(v47, 0, 27);
  v45 = 0u;
  v25(v26, 1, 1, v24);
  v25(v40, 1, 1, v24);
  v35(v29, v27, v44);
  sub_23E7AFFE0();
  v31 = sub_23E7DC948();
  v32 = v42;
  v30[1] = v31;
  v30[2] = v32;
  v45 = v48;
  v46 = v49;
  v47[0] = v50[0];
  *(v47 + 11) = *(v50 + 11);
  sub_23E7DC9E8();
  sub_23E7DC918();
  LOBYTE(v45) = v43;
  sub_23E7DC918();
}

uint64_t ToggleMusicIntent.perform()(uint64_t a1)
{
  *(v2 + 280) = a1;
  type metadata accessor for PlaybackInfo(0);
  *(v2 + 288) = swift_task_alloc();
  *(v2 + 296) = type metadata accessor for Player.PlaybackStatus(0);
  *(v2 + 304) = swift_task_alloc();
  *(v2 + 312) = swift_task_alloc();
  *(v2 + 320) = swift_task_alloc();
  *(v2 + 328) = *v1;
  *(v2 + 344) = *(v1 + 16);

  return MEMORY[0x2822009F8](sub_23E7B0670, 0, 0);
}

uint64_t sub_23E7B0670()
{
  sub_23E7DC908();
  v1 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v1;
  v2 = *(v0 + 112);
  *(v0 + 48) = v2;
  v3 = *(v0 + 123);
  *(v0 + 59) = v3;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  *(v0 + 208) = v1;
  *(v0 + 224) = v2;
  *(v0 + 235) = v3;
  if (!v5)
  {
    if (qword_27E34FB58 != -1)
    {
      swift_once();
    }

    v13 = sub_23E7DCE88();
    __swift_project_value_buffer(v13, qword_27E35A110);
    v14 = sub_23E7DCE68();
    v15 = sub_23E7DD5D8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_23E790000, v14, v15, "There is nothing to play the provided playlist is empty", v16, 2u);
      MEMORY[0x23EF13B60](v16, -1, -1);
    }

    sub_23E7DC808();
    sub_23E7B1A1C();
    swift_allocError();
    sub_23E7DC7F8();
    swift_willThrow();

    v17 = *(v0 + 8);
LABEL_21:

    return v17();
  }

  v7 = *(v0 + 312);
  v6 = *(v0 + 320);
  Player.playbackStatus.getter(v6);
  sub_23E7B1ADC(v6, v7, type metadata accessor for Player.PlaybackStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v0 + 312);
  if (EnumCaseMultiPayload >= 3)
  {
    sub_23E7B1B44(v9, type metadata accessor for Player.PlaybackStatus);
  }

  else
  {
    v10 = *(v0 + 288);
    sub_23E7B1ADC(v9, v10, type metadata accessor for PlaybackInfo);
    v12 = *v10;
    v11 = v10[1];
    sub_23E7DC9D8();
    sub_23E7B1B44(v10, type metadata accessor for PlaybackInfo);
    if (v12 == v4 && v5 == v11)
    {

LABEL_16:
      sub_23E7B1A74(v0 + 16);
      sub_23E7DC908();
      if (*(v0 + 75) == 1)
      {
        v23 = swift_task_alloc();
        *(v0 + 352) = v23;
        *v23 = v0;
        v23[1] = sub_23E7B0AB0;

        return Player.resume()();
      }

      Player.pause()();
      v24 = *(v0 + 304);
      Player.playbackStatus.getter(v24);
      _s13AdaptiveMusic25ControlWidgetStateManagerC21currentPlaybackStatusAA6PlayerC0hI0OvsZ_0(v24);
      sub_23E7DC8E8();

      v17 = *(v0 + 8);
      goto LABEL_21;
    }

    v22 = sub_23E7DD8E8();

    if (v22)
    {
      goto LABEL_16;
    }
  }

  v18 = *(v0 + 344);
  *(v0 + 256) = *(v0 + 328);
  *(v0 + 272) = v18;
  *(v0 + 144) = v4;
  *(v0 + 152) = v5;
  v19 = *(v0 + 224);
  *(v0 + 160) = *(v0 + 208);
  *(v0 + 176) = v19;
  *(v0 + 187) = *(v0 + 235);
  v20 = swift_task_alloc();
  *(v0 + 360) = v20;
  *v20 = v0;
  v20[1] = sub_23E7B0CC8;

  return sub_23E7B0E78((v0 + 144));
}

uint64_t sub_23E7B0AB0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_23E7B0C14, 0, 0);
  }
}

uint64_t sub_23E7B0C14()
{
  v1 = *(v0 + 304);
  Player.playbackStatus.getter(v1);
  _s13AdaptiveMusic25ControlWidgetStateManagerC21currentPlaybackStatusAA6PlayerC0hI0OvsZ_0(v1);
  sub_23E7DC8E8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23E7B0CC8()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = sub_23E7B0DE4;
  }

  else
  {
    sub_23E7B1A74(v2 + 16);
    v3 = sub_23E7B2040;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E7B0DE4()
{
  sub_23E7B1A74(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23E7B0E78(_OWORD *a1)
{
  v3 = a1[1];
  *(v2 + 96) = *a1;
  *(v2 + 112) = v3;
  *(v2 + 128) = a1[2];
  *(v2 + 139) = *(a1 + 43);
  *(v2 + 288) = *(v1 + 16);
  return MEMORY[0x2822009F8](sub_23E7B0EB4, 0, 0);
}

uint64_t sub_23E7B0EB4()
{
  v15 = v0;
  if (qword_27E34FB58 != -1)
  {
    swift_once();
  }

  v1 = sub_23E7DCE88();
  __swift_project_value_buffer(v1, qword_27E35A110);
  sub_23E794BD8(v0 + 96, v0 + 160);
  v2 = sub_23E7DCE68();
  v3 = sub_23E7DD5E8();
  sub_23E7A4C68(v0 + 96);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_23E7D2CA4(*(v0 + 112), *(v0 + 120), &v14);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_23E7D2CA4(*(v0 + 128), *(v0 + 136), &v14);
    _os_log_impl(&dword_23E790000, v2, v3, "Playing playlist %s in %s.", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EF13B60](v5, -1, -1);
    MEMORY[0x23EF13B60](v4, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350308, &qword_23E7E29F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E7E1F20;
  *(inited + 32) = 0;
  v7 = *(v0 + 120);
  *(inited + 40) = *(v0 + 112);
  *(inited + 48) = v7;
  *(inited + 56) = 1;
  v8 = *(v0 + 136);
  *(inited + 64) = *(v0 + 128);
  *(inited + 72) = v8;
  sub_23E7DC9D8();
  sub_23E7DC9D8();
  v9 = sub_23E7ADC94(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350310, &unk_23E7E29F8);
  swift_arrayDestroy();
  v10 = sub_23E7B1460(v9);
  *(v0 + 296) = v10;

  v11 = *(v0 + 112);
  *(v0 + 224) = *(v0 + 96);
  *(v0 + 240) = v11;
  *(v0 + 256) = *(v0 + 128);
  *(v0 + 267) = *(v0 + 139);
  v12 = swift_task_alloc();
  *(v0 + 304) = v12;
  *v12 = v0;
  v12[1] = sub_23E7B1154;

  return sub_23E7A8194((v0 + 224), v10);
}

uint64_t sub_23E7B1154()
{
  v2 = *v1;
  *(v2 + 312) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23E7B12A4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t Player.PlaybackStatus.playlist.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Player.PlaybackStatus(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for PlaybackInfo(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23E7AD030(v2, v6);
  if (swift_getEnumCaseMultiPayload() > 2)
  {
    result = sub_23E7B1B44(v6, type metadata accessor for Player.PlaybackStatus);
    v15 = 0;
    v16 = 0;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  else
  {
    sub_23E7B1ADC(v6, v9, type metadata accessor for PlaybackInfo);
    v10 = v9[1];
    v18 = *v9;
    v19 = v10;
    *v20 = v9[2];
    *&v20[11] = *(v9 + 43);
    sub_23E794BD8(&v18, v17);
    result = sub_23E7B1B44(v9, type metadata accessor for PlaybackInfo);
    v12 = v18;
    v13 = v19;
    v14 = *v20;
    v15 = *&v20[16];
    v16 = *&v20[24] | (v20[26] << 16);
  }

  *a1 = v12;
  *(a1 + 16) = v13;
  *(a1 + 32) = v14;
  *(a1 + 48) = v15;
  *(a1 + 56) = v16;
  *(a1 + 58) = BYTE2(v16);
  return result;
}

uint64_t sub_23E7B1460(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350028, &unk_23E7E1DF0);
    v2 = sub_23E7DD7D8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;
  sub_23E7DC9E8();
  result = sub_23E7DC9D8();
  v9 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v9 << 6);
    v13 = *(*(a1 + 48) + v12);
    v14 = (*(a1 + 56) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];
    v5 &= v5 - 1;
    LOBYTE(v28[0]) = v13;
    v26 = v16;
    v27 = v15;
    sub_23E7DC9D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF38, qword_23E7E1B50);
    swift_dynamicCast();
    v24 = v28[0];
    sub_23E7A6C04((v28 + 8), v25);
    sub_23E7A6C04(v25, v28);
    sub_23E7DD9A8();
    sub_23E7DD398();

    result = sub_23E7DD9C8();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    *(*(v2 + 48) + v10) = v24;
    result = sub_23E7A6C04(v28, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v9;
    if (v5)
    {
      v9 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_23E7B1750@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23E7DC908();
  *a1 = v3;
  return result;
}

uint64_t (*sub_23E7B17C4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_23E7DC8F8();
  return sub_23E7B1838;
}

void sub_23E7B183C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_23E7B1888@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E34FAF8 != -1)
  {
    swift_once();
  }

  v2 = sub_23E7DCC98();
  v3 = __swift_project_value_buffer(v2, qword_27E350280);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_23E7B1944(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E7A23AC;

  return ToggleMusicIntent.perform()(a1);
}

uint64_t sub_23E7B19E0(uint64_t a1)
{
  v2 = sub_23E7B1BA4();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_23E7B1A1C()
{
  result = qword_27E3502C8;
  if (!qword_27E3502C8)
  {
    sub_23E7DC808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3502C8);
  }

  return result;
}

uint64_t sub_23E7B1A74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3500B0, &qword_23E7E1F40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E7B1ADC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23E7B1B44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23E7B1BA4()
{
  result = qword_27E3502D0;
  if (!qword_27E3502D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3502D0);
  }

  return result;
}

unint64_t sub_23E7B1BFC()
{
  result = qword_27E3502D8;
  if (!qword_27E3502D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3502D8);
  }

  return result;
}

unint64_t sub_23E7B1C54()
{
  result = qword_27E3502E0;
  if (!qword_27E3502E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3502E0);
  }

  return result;
}

unint64_t sub_23E7B1CAC()
{
  result = qword_27E3502E8;
  if (!qword_27E3502E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3502E8);
  }

  return result;
}

unint64_t sub_23E7B1D04()
{
  result = qword_27E3502F0;
  if (!qword_27E3502F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3502F0);
  }

  return result;
}

void *sub_23E7B1DC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23E7DC908();
  *a1 = v3;
  return result;
}

double sub_23E7B1E08@<D0>(_OWORD *a1@<X8>)
{
  sub_23E7DC908();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = *v5;
  result = *&v5[11];
  *(a1 + 43) = *&v5[11];
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23E7B1E6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23E7B1EB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23E7B1F08()
{
  result = qword_27E3502F8;
  if (!qword_27E3502F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E350300, &qword_23E7E29E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3502F8);
  }

  return result;
}

uint64_t sub_23E7B1F6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3500B0, &qword_23E7E1F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t sub_23E7B2060(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23E7DCCF8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23E7B2120(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23E7DCCF8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ResponseData(uint64_t a1)
{
  result = qword_27E350318;
  if (!qword_27E350318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E7B2210(uint64_t a1)
{
  result = sub_23E7DCCF8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23E7B22A4(uint64_t a1)
{
  sub_23E7B2DF8(319, &qword_27E3503A8, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23E7DD658();
    if (v2 <= 0x3F)
    {
      sub_23E7B28D8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23E7B2384(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_23E7DCCF8() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  v9 = *(*(a3 + 16) - 8);
  if (v8)
  {
    v10 = v8 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v9 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v10 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v6 + 80);
  v16 = *(v6 + 64);
  if (v8)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  v18 = *(v9 + 80);
  v19 = *(v9 + 64);
  if (v11)
  {
    v20 = 7;
  }

  else
  {
    v20 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = v17 + 7;
  v22 = v18 + 16;
  if (v14 < a2)
  {
    v23 = ((v20 + v19 + ((v22 + ((v21 + ((v15 + 16) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 8;
    v24 = v23 & 0xFFFFFFF8;
    if ((v23 & 0xFFFFFFF8) != 0)
    {
      v25 = 2;
    }

    else
    {
      v25 = a2 - v14 + 1;
    }

    if (v25 >= 0x10000)
    {
      v26 = 4;
    }

    else
    {
      v26 = 2;
    }

    if (v25 < 0x100)
    {
      v26 = 1;
    }

    if (v25 >= 2)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    if (v27 > 1)
    {
      if (v27 == 2)
      {
        v28 = *(a1 + v23);
        if (v28)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v28 = *(a1 + v23);
        if (v28)
        {
          goto LABEL_34;
        }
      }
    }

    else if (v27)
    {
      v28 = *(a1 + v23);
      if (v28)
      {
LABEL_34:
        v29 = v28 - 1;
        if (v24)
        {
          v29 = 0;
          LODWORD(v24) = *a1;
        }

        return v14 + (v24 | v29) + 1;
      }
    }
  }

  if ((v13 & 0x80000000) != 0)
  {
    if (v10 == v14)
    {
      if (v8 >= 2)
      {
        v32 = (*(v7 + 48))((a1 + v15 + 16) & ~v15);
        goto LABEL_51;
      }
    }

    else if (v11 >= 2)
    {
      v32 = (*(*(*(a3 + 16) - 8) + 48))((v22 + ((v21 + ((a1 + v15 + 16) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v18, v11);
LABEL_51:
      if (v32 >= 2)
      {
        return v32 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v31 = *(a1 + 8);
  if (v31 >= 0xFFFFFFFF)
  {
    LODWORD(v31) = -1;
  }

  return (v31 + 1);
}

void sub_23E7B25E8(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(sub_23E7DCCF8() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  v12 = *(*(a4 + 16) - 8);
  if (v11)
  {
    v13 = v11 - 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(*(a4 + 16) - 8);
  v15 = *(v12 + 84);
  v16 = *(v9 + 64);
  v17 = *(v9 + 80);
  v18 = *(v12 + 80);
  v19 = *(v12 + 64);
  v20 = v15 - 1;
  if (!v15)
  {
    v20 = 0;
  }

  if (v13 <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v13;
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v21;
  }

  if (v11)
  {
    v23 = v16;
  }

  else
  {
    v23 = v16 + 1;
  }

  v24 = v23 + 7;
  if (v15)
  {
    v25 = v19;
  }

  else
  {
    v25 = v19 + 1;
  }

  v26 = ((v25 + ((v18 + 16 + ((v24 + ((v17 + 16) & ~v17)) & 0xFFFFFFFFFFFFFFF8)) & ~v18) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v22 < a3)
  {
    if (((v25 + ((v18 + 16 + ((v24 + ((v17 + 16) & ~v17)) & 0xFFFFFFF8)) & ~v18) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v27 = a3 - v22 + 1;
    }

    else
    {
      v27 = 2;
    }

    if (v27 >= 0x10000)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    if (v27 >= 2)
    {
      v8 = v28;
    }

    else
    {
      v8 = 0;
    }
  }

  if (a2 > v22)
  {
    if (v26)
    {
      v29 = 1;
    }

    else
    {
      v29 = a2 - v22;
    }

    if (v26)
    {
      v30 = ~v22 + a2;
      bzero(a1, v26);
      *a1 = v30;
    }

    if (v8 > 1)
    {
      if (v8 == 2)
      {
        *(a1 + v26) = v29;
      }

      else
      {
        *(a1 + v26) = v29;
      }
    }

    else if (v8)
    {
      *(a1 + v26) = v29;
    }

    return;
  }

  if (v8 > 1)
  {
    if (v8 != 2)
    {
      *(a1 + v26) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    *(a1 + v26) = 0;
LABEL_47:
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  if (!v8)
  {
    goto LABEL_47;
  }

  *(a1 + v26) = 0;
  if (!a2)
  {
    return;
  }

LABEL_48:
  if ((v21 & 0x80000000) != 0)
  {
    v31 = (a1 + v17 + 16) & ~v17;
    if (v13 == v22)
    {
      if (v11 >= 2)
      {
        v32 = *(v10 + 56);

        v32(v31, a2 + 1);
      }
    }

    else if (v15 >= 2)
    {
      v33 = *(v14 + 56);

      v33((v18 + 16 + ((v24 + v31) & 0xFFFFFFFFFFFFFFF8)) & ~v18, a2 + 1, v15);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

void sub_23E7B28D8(uint64_t a1)
{
  if (!qword_27E3503B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E3503B8, qword_23E7E2A68);
    v1 = sub_23E7DD658();
    if (!v2)
    {
      atomic_store(v1, &qword_27E3503B0);
    }
  }
}

void sub_23E7B2954(uint64_t a1)
{
  sub_23E7B2DF8(319, &qword_27E350440, type metadata accessor for ResponseData, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23E7B2A0C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_23E7B2B90(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

void sub_23E7B2DF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23E7B2E5C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1717924456 && a2 == 0xE400000000000000 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873)
  {

    return 4;
  }

  else
  {
    v6 = sub_23E7DD8E8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_23E7B304C(unsigned __int8 a1)
{
  sub_23E7DD9A8();
  MEMORY[0x23EF13410](a1);
  return sub_23E7DD9C8();
}

uint64_t sub_23E7B3094(unsigned __int8 a1)
{
  v1 = 25705;
  v2 = 1701869940;
  v3 = 0x7475626972747461;
  if (a1 != 3)
  {
    v3 = 0x6E6F6974616C6572;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 1717924456;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23E7B3124(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v5 = v4;
  v7 = *(a2 + 24);
  v17 = *(a2 + 16);
  v18 = v7;
  type metadata accessor for Resource.CodingKeys(255, v17, v7, a4);
  swift_getWitnessTable();
  v8 = sub_23E7DD8C8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7DDA08();
  v26 = 0;
  v12 = v20;
  sub_23E7DD898();
  if (v12)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v14 = v9;
  v15 = v19;
  v25 = 1;
  sub_23E7DCCF8();
  sub_23E7B5CF0(&qword_27E34FE08, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
  sub_23E7DD888();
  v24 = 2;
  sub_23E7DD898();
  v23 = 3;
  sub_23E7DD888();
  v21 = *(v5 + *(v15 + 48));
  v22 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E3503B8, qword_23E7E2A68);
  sub_23E7B5550(&qword_27E350490, sub_23E7B55D4, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_23E7DD888();
  return (*(v14 + 8))(v11, 0);
}

uint64_t sub_23E7B3444@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v43 = sub_23E7DD658();
  v45 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v41 = v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FE88, &qword_23E7E1D10);
  MEMORY[0x28223BE20](v8 - 8);
  v44 = v37 - v9;
  type metadata accessor for Resource.CodingKeys(255, a2, a3, v10);
  WitnessTable = swift_getWitnessTable();
  v11 = sub_23E7DD868();
  v12 = *(v11 - 8);
  v46 = v11;
  v47 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = v37 - v13;
  v42 = a2;
  v40 = a3;
  v16 = type metadata accessor for Resource(0, a2, a3, v15);
  v38 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (v37 - v18);
  v20 = *(v17 + 36);
  v21 = sub_23E7DCCF8();
  (*(*(v21 - 8) + 56))(v19 + v20, 1, 1, v21);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v48 = v14;
  v22 = v50;
  sub_23E7DD9E8();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_23E7B5424(v19 + v20);
  }

  else
  {
    WitnessTable = v16;
    v50 = v20;
    v23 = v44;
    v24 = v45;
    v56 = 0;
    v25 = v46;
    v26 = v19;
    *v19 = sub_23E7DD828();
    v19[1] = v27;
    v37[1] = v27;
    v55 = 1;
    sub_23E7B5CF0(&qword_27E34FE38, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    sub_23E7DD818();
    sub_23E7B548C(v23, v19 + v50);
    v54 = 2;
    v28 = sub_23E7DD828();
    v29 = v24;
    v30 = WitnessTable;
    v31 = (v26 + *(WitnessTable + 40));
    *v31 = v28;
    v31[1] = v32;
    v53 = 3;
    v33 = v41;
    sub_23E7DD818();
    (*(v29 + 32))(v26 + *(v30 + 44), v33, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E3503B8, qword_23E7E2A68);
    v52 = 4;
    sub_23E7B5550(&qword_27E350480, sub_23E7B54FC, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_23E7DD818();
    v34 = *(v30 + 48);
    (*(v47 + 8))(v48, v25);
    *(v26 + v34) = v51;
    v35 = v38;
    (*(v38 + 16))(v39, v26, v30);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v35 + 8))(v26, v30);
  }
}

uint64_t sub_23E7B3AB0(uint64_t a1)
{
  sub_23E7DD9A8();
  sub_23E7B3024(v3, *v1);
  return sub_23E7DD9C8();
}

uint64_t sub_23E7B3B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23E7B2E5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23E7B3B34@<X0>(_BYTE *a2@<X8>)
{
  result = sub_23E7B5628();
  *a2 = result;
  return result;
}

uint64_t sub_23E7B3B60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23E7B3BB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_23E7B3C40(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xE900000000000073)
  {

    return 1;
  }

  else
  {
    v6 = sub_23E7DD8E8();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_23E7B3D4C(char a1)
{
  sub_23E7DD9A8();
  MEMORY[0x23EF13410](a1 & 1);
  return sub_23E7DD9C8();
}

uint64_t sub_23E7B3D94(char a1)
{
  if (a1)
  {
    return 0x656372756F736572;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_23E7B3DC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = v6;
  type metadata accessor for MapJSON.CodingKeys(255, v6, v15, a4);
  swift_getWitnessTable();
  v7 = sub_23E7DD8C8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v17;
  sub_23E7DDA08();
  v21 = *v11;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350450, &qword_23E7E2CB0);
  sub_23E7B5C54(&qword_27E3504E0, qword_27E3504E8, &unk_23E7E2BF8, MEMORY[0x277D83948]);
  v12 = v18;
  sub_23E7DD8B8();
  if (!v12)
  {
    v19 = 1;
    sub_23E7DD8B8();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_23E7B3FCC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v26 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v29 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MapJSON.CodingKeys(255, v8, v9, v10);
  swift_getWitnessTable();
  v32 = sub_23E7DD868();
  v28 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v12 = &v25 - v11;
  v30 = a3;
  v14 = type metadata accessor for MapJSON(0, a2, a3, v13);
  v25 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = (&v25 - v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v31 = v12;
  v17 = v33;
  sub_23E7DD9E8();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v16;
  v33 = v14;
  v19 = a1;
  v21 = v28;
  v20 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350450, &qword_23E7E2CB0);
  v35 = 0;
  sub_23E7B5C54(&qword_27E350458, &qword_27E350460, &unk_23E7E2C20, MEMORY[0x277D83978]);
  sub_23E7DD848();
  *v16 = v36;
  v34 = 1;
  sub_23E7DD848();
  (*(v21 + 8))(v31, v32);
  v22 = v33;
  (*(v26 + 32))(v16 + *(v33 + 36), v20, a2);
  v23 = v25;
  (*(v25 + 16))(v27, v18, v22);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return (*(v23 + 8))(v18, v22);
}

uint64_t sub_23E7B439C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350478, &unk_23E7E2CC0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7B52F8();
  sub_23E7DDA08();
  v8[15] = 0;
  sub_23E7DD898();
  if (!v1)
  {
    type metadata accessor for ResponseData(0);
    v8[14] = 1;
    sub_23E7DCCF8();
    sub_23E7B5CF0(&qword_27E34FE08, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_23E7DD8B8();
    v8[13] = 2;
    sub_23E7DD898();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23E7B4588@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v29 = sub_23E7DCCF8();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350468, &qword_23E7E2CB8);
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v7 = v23 - v6;
  v8 = type metadata accessor for ResponseData(0);
  MEMORY[0x28223BE20](v8);
  v10 = (v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7B52F8();
  sub_23E7DD9E8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v8;
  v25 = a1;
  v12 = v28;
  v11 = v29;
  v33 = 0;
  v13 = v10;
  *v10 = sub_23E7DD828();
  v10[1] = v14;
  v23[2] = v14;
  v32 = 1;
  sub_23E7B5CF0(&qword_27E34FE38, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_23E7DD848();
  v15 = v24;
  (*(v27 + 32))(v13 + *(v24 + 20), v5, v11);
  v31 = 2;
  v23[1] = 0;
  v16 = sub_23E7DD828();
  v23[0] = v17;
  v18 = v25;
  v19 = v16;
  (*(v12 + 8))(v7, v30);
  v20 = (v13 + *(v15 + 24));
  v21 = v23[0];
  *v20 = v19;
  v20[1] = v21;
  sub_23E7B534C(v13, v26);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_23E7B53B0(v13);
}

uint64_t sub_23E7B4984(uint64_t a1)
{
  sub_23E7DD9A8();
  sub_23E7B3D24(v3, *v1);
  return sub_23E7DD9C8();
}

uint64_t sub_23E7B49DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23E7B3C40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23E7B4A0C@<X0>(_BYTE *a2@<X8>)
{
  result = sub_23E7B5630();
  *a2 = result;
  return result;
}

uint64_t sub_23E7B4A38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23E7B4A8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_23E7B4B18()
{
  v1 = 1717924456;
  if (*v0 != 1)
  {
    v1 = 1701869940;
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

uint64_t sub_23E7B4B58@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23E7B5638(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23E7B4B80(uint64_t a1)
{
  v2 = sub_23E7B52F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E7B4BBC(uint64_t a1)
{
  v2 = sub_23E7B52F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E7B4C28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350630, &qword_23E7E31C8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7B60B0();
  sub_23E7DDA08();
  v14 = 0;
  sub_23E7DD898();
  if (!v5)
  {
    v13 = 1;
    sub_23E7DD898();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_23E7B4DBC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3504C8, &qword_23E7E2CE0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7B5AE0();
  sub_23E7DDA08();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3504B0, &qword_23E7E2CD8);
  sub_23E7B5B34(&qword_27E3504D0, sub_23E7B5C00, MEMORY[0x277D83948]);
  sub_23E7DD8B8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_23E7B4F60()
{
  if (*v0)
  {
    return 1701869940;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_23E7B4F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_23E7DD8E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23E7DD8E8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23E7B5068(uint64_t a1)
{
  v2 = sub_23E7B60B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E7B50A4(uint64_t a1)
{
  v2 = sub_23E7B60B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E7B50E0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_23E7B5748(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_23E7B5140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23E7DD8E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23E7B51C8(uint64_t a1)
{
  v2 = sub_23E7B5AE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E7B5204(uint64_t a1)
{
  v2 = sub_23E7B5AE0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_23E7B5240@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_23E7B592C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_23E7B528C()
{
  result = qword_27E350448;
  if (!qword_27E350448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350448);
  }

  return result;
}

unint64_t sub_23E7B52F8()
{
  result = qword_27E350470;
  if (!qword_27E350470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350470);
  }

  return result;
}

uint64_t sub_23E7B534C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResponseData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E7B53B0(uint64_t a1)
{
  v2 = type metadata accessor for ResponseData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E7B5424(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FE88, &qword_23E7E1D10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E7B548C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FE88, &qword_23E7E1D10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_23E7B54FC()
{
  result = qword_27E350488;
  if (!qword_27E350488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350488);
  }

  return result;
}

uint64_t sub_23E7B5550(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E3503B8, qword_23E7E2A68);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23E7B55D4()
{
  result = qword_27E350498;
  if (!qword_27E350498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350498);
  }

  return result;
}

uint64_t sub_23E7B5638(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1717924456 && a2 == 0xE400000000000000 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23E7DD8E8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_23E7B5748(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350620, &qword_23E7E31C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7B60B0();
  sub_23E7DD9E8();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_23E7DD828();
    v10 = 1;
    sub_23E7DD828();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

void *sub_23E7B592C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3504A0, &qword_23E7E2CD0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7B5AE0();
  sub_23E7DD9E8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3504B0, &qword_23E7E2CD8);
    sub_23E7B5B34(&qword_27E3504B8, sub_23E7B5BAC, MEMORY[0x277D83978]);
    sub_23E7DD848();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

unint64_t sub_23E7B5AE0()
{
  result = qword_27E3504A8;
  if (!qword_27E3504A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3504A8);
  }

  return result;
}

uint64_t sub_23E7B5B34(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3504B0, &qword_23E7E2CD8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23E7B5BAC()
{
  result = qword_27E3504C0;
  if (!qword_27E3504C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3504C0);
  }

  return result;
}

unint64_t sub_23E7B5C00()
{
  result = qword_27E3504D8;
  if (!qword_27E3504D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3504D8);
  }

  return result;
}

uint64_t sub_23E7B5C54(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E350450, &qword_23E7E2CB0);
    sub_23E7B5CF0(a2, type metadata accessor for ResponseData, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23E7B5CF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23E7B5D60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23E7B5DA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23E7B5E18()
{
  result = qword_27E3505F0;
  if (!qword_27E3505F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3505F0);
  }

  return result;
}

unint64_t sub_23E7B5E8C()
{
  result = qword_27E3505F8;
  if (!qword_27E3505F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3505F8);
  }

  return result;
}

unint64_t sub_23E7B5EE4()
{
  result = qword_27E350600;
  if (!qword_27E350600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350600);
  }

  return result;
}

unint64_t sub_23E7B5F3C()
{
  result = qword_27E350608;
  if (!qword_27E350608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350608);
  }

  return result;
}

unint64_t sub_23E7B5FCC()
{
  result = qword_27E350610;
  if (!qword_27E350610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350610);
  }

  return result;
}

unint64_t sub_23E7B6024()
{
  result = qword_27E350618;
  if (!qword_27E350618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350618);
  }

  return result;
}

unint64_t sub_23E7B60B0()
{
  result = qword_27E350628;
  if (!qword_27E350628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350628);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaybackInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaybackInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23E7B626C()
{
  result = qword_27E350638;
  if (!qword_27E350638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350638);
  }

  return result;
}

unint64_t sub_23E7B62C4()
{
  result = qword_27E350640;
  if (!qword_27E350640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350640);
  }

  return result;
}

unint64_t sub_23E7B631C()
{
  result = qword_27E350648;
  if (!qword_27E350648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350648);
  }

  return result;
}

uint64_t Sequence.asyncMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v6[9] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[10] = AssociatedTypeWitness;
  v6[11] = *(AssociatedTypeWitness - 8);
  v6[12] = swift_task_alloc();
  sub_23E7DD658();
  v6[13] = swift_task_alloc();
  v6[14] = *(a3 - 8);
  v6[15] = swift_task_alloc();
  v9 = swift_getAssociatedTypeWitness();
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E7B6594, 0, 0);
}

uint64_t sub_23E7B6594()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[8];
  v4 = v0[5];
  v0[2] = sub_23E7DD4C8();
  (*(v2 + 16))(v1, v3, v4);
  sub_23E7DD438();
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  swift_getAssociatedConformanceWitness();
  sub_23E7DD678();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    v8 = v0[2];

    v9 = v0[1];

    return v9(v8);
  }

  else
  {
    v11 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v15 = (v11 + *v11);
    v12 = swift_task_alloc();
    v0[19] = v12;
    *v12 = v0;
    v12[1] = sub_23E7B6804;
    v13 = v0[12];
    v14 = v0[9];

    return v15(v14, v13);
  }
}

uint64_t sub_23E7B6804()
{
  *(*v1 + 160) = v0;

  if (v0)
  {

    v2 = sub_23E7B6B78;
  }

  else
  {
    v2 = sub_23E7B6920;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23E7B6920()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  sub_23E7DD4F8();
  sub_23E7DD4E8();
  (*(v2 + 8))(v1, v3);
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  swift_getAssociatedConformanceWitness();
  sub_23E7DD678();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    v7 = v0[2];

    v8 = v0[1];

    return v8(v7);
  }

  else
  {
    v10 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v14 = (v10 + *v10);
    v11 = swift_task_alloc();
    v0[19] = v11;
    *v11 = v0;
    v11[1] = sub_23E7B6804;
    v12 = v0[12];
    v13 = v0[9];

    return v14(v13, v12);
  }
}

uint64_t sub_23E7B6B78()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t PlaybackInfo.playlist.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 11) = *(v1 + 43);
  v4 = *(v8 + 11);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 43) = v4;
  return sub_23E794BD8(v7, &v6);
}

__n128 PlaybackInfo.playlist.setter(uint64_t a1)
{
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v7[0] = v1[2];
  *(v7 + 11) = *(v1 + 43);
  sub_23E7A4C68(v6);
  v4 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v4;
  v1[2] = *(a1 + 32);
  result = *(a1 + 43);
  *(v1 + 43) = result;
  return result;
}

uint64_t PlaybackInfo.PlaybackItemInfo.title.getter()
{
  v1 = *v0;
  sub_23E7DC9D8();
  return v1;
}

uint64_t PlaybackInfo.PlaybackItemInfo.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PlaybackInfo.PlaybackItemInfo.subtitle.getter()
{
  v1 = *(v0 + 16);
  sub_23E7DC9D8();
  return v1;
}

uint64_t PlaybackInfo.PlaybackItemInfo.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PlaybackInfo.PlaybackItemInfo.playbackTime.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  return result;
}

uint64_t PlaybackInfo.PlaybackItemInfo.duration.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_23E7B7048()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x6B63616279616C70;
  v4 = 0x6E6F697461727564;
  if (v1 != 3)
  {
    v4 = 0x6B726F77747261;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974627573;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23E7B70E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23E7B9128(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23E7B7110(uint64_t a1)
{
  v2 = sub_23E7B8888();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E7B714C(uint64_t a1)
{
  v2 = sub_23E7B8888();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlaybackInfo.PlaybackItemInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350650, &qword_23E7E32E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7B8888();
  sub_23E7DDA08();
  LOBYTE(v12) = 0;
  sub_23E7DD898();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_23E7DD898();
    v12 = *(v3 + 32);
    v11 = 2;
    sub_23E7DD8B8();
    v12 = *(v3 + 48);
    v11 = 3;
    sub_23E7DD8B8();
    type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
    LOBYTE(v12) = 4;
    sub_23E7DD208();
    sub_23E7B88DC(&qword_27E350660, MEMORY[0x277CD8460], MEMORY[0x277CD8468]);
    sub_23E7DD888();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t PlaybackInfo.PlaybackItemInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFD0, &qword_23E7E1D98);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350668, &qword_23E7E32E8);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 40);
  v15 = sub_23E7DD208();
  v16 = *(*(v15 - 8) + 56);
  v27 = v14;
  v16(&v13[v14], 1, 1, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7B8888();
  sub_23E7DD9E8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_23E7996FC(&v13[v27], &qword_27E34FFD0, &qword_23E7E1D98);
  }

  else
  {
    v23 = v6;
    v18 = v25;
    v17 = v26;
    LOBYTE(v28) = 0;
    *v13 = sub_23E7DD828();
    *(v13 + 1) = v19;
    LOBYTE(v28) = 1;
    *(v13 + 2) = sub_23E7DD828();
    *(v13 + 3) = v20;
    v29 = 2;
    v22 = 0;
    sub_23E7DD848();
    *(v13 + 2) = v28;
    v29 = 3;
    sub_23E7DD848();
    *(v13 + 3) = v28;
    LOBYTE(v28) = 4;
    sub_23E7B88DC(&qword_27E350670, MEMORY[0x277CD8460], MEMORY[0x277CD8480]);
    sub_23E7DD818();
    (*(v18 + 8))(v9, v17);
    sub_23E7B8480(v23, &v13[v27], &qword_27E34FFD0, &qword_23E7E1D98);
    sub_23E7B8978(v13, v24, type metadata accessor for PlaybackInfo.PlaybackItemInfo);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_23E7B89E0(v13, type metadata accessor for PlaybackInfo.PlaybackItemInfo);
  }
}

uint64_t sub_23E7B7890()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x7473696C79616C70;
  }
}

uint64_t sub_23E7B78D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7473696C79616C70 && a2 == 0xE800000000000000;
  if (v6 || (sub_23E7DD8E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023E7DE940 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23E7DD8E8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23E7B79B4(uint64_t a1)
{
  v2 = sub_23E7B8924();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E7B79F0(uint64_t a1)
{
  v2 = sub_23E7B8924();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlaybackInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350678, &qword_23E7E32F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7B8924();
  sub_23E7DDA08();
  v9 = v3[1];
  v20[0] = *v3;
  v20[1] = v9;
  v11 = *v3;
  v10 = v3[1];
  v21[0] = v3[2];
  *(v21 + 11) = *(v3 + 43);
  v17 = v11;
  v18 = v10;
  v19[0] = v3[2];
  *(v19 + 11) = *(v3 + 43);
  v16 = 0;
  sub_23E794BD8(v20, v14);
  sub_23E79506C();
  sub_23E7DD8B8();
  v14[0] = v17;
  v14[1] = v18;
  *v15 = v19[0];
  *&v15[11] = *(v19 + 11);
  sub_23E7A4C68(v14);
  if (!v2)
  {
    type metadata accessor for PlaybackInfo(0);
    v13[15] = 1;
    type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
    sub_23E7B88DC(&qword_27E350688, type metadata accessor for PlaybackInfo.PlaybackItemInfo, &protocol conformance descriptor for PlaybackInfo.PlaybackItemInfo);
    sub_23E7DD888();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t PlaybackInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350038, &qword_23E7E1E00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350690, &qword_23E7E32F8);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for PlaybackInfo(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v11 + 28);
  v15 = type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
  v16 = *(*(v15 - 8) + 56);
  v23 = v14;
  v16(v13 + v14, 1, 1, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7B8924();
  sub_23E7DD9E8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_23E7996FC(v13 + v23, &qword_27E350038, &qword_23E7E1E00);
  }

  else
  {
    v17 = v21;
    v28 = 0;
    sub_23E795424();
    sub_23E7DD848();
    v18 = v25;
    *v13 = v24;
    v13[1] = v18;
    v13[2] = v26[0];
    *(v13 + 43) = *(v26 + 11);
    v27 = 1;
    sub_23E7B88DC(&qword_27E350698, type metadata accessor for PlaybackInfo.PlaybackItemInfo, &protocol conformance descriptor for PlaybackInfo.PlaybackItemInfo);
    sub_23E7DD818();
    (*(v17 + 8))(v9, v22);
    sub_23E7B8480(v6, v13 + v23, &qword_27E350038, &qword_23E7E1E00);
    sub_23E7B8978(v13, v20, type metadata accessor for PlaybackInfo);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_23E7B89E0(v13, type metadata accessor for PlaybackInfo);
  }
}

BOOL _s13AdaptiveMusic12PlaybackInfoV2eeoiySbAC_ACtFZ_0(_OWORD *a1, __int128 *a2)
{
  v4 = type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350038, &qword_23E7E1E00);
  MEMORY[0x28223BE20](v8 - 8);
  v30 = (&v29 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350710, &qword_23E7E3668);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = a1[1];
  v37[0] = *a1;
  v37[1] = v13;
  v15 = *a1;
  v14 = a1[1];
  v38[0] = a1[2];
  *(v38 + 11) = *(a1 + 43);
  v34 = v15;
  v35 = v14;
  v36[0] = a1[2];
  *(v36 + 11) = *(a1 + 43);
  v16 = *a2;
  v17 = a2[1];
  *(v40 + 11) = *(a2 + 43);
  v18 = a2[2];
  v39[1] = a2[1];
  v40[0] = v18;
  v19 = *a2;
  v39[0] = v16;
  v31 = v19;
  v32 = v17;
  v33[0] = a2[2];
  *(v33 + 11) = *(a2 + 43);
  sub_23E794BD8(v37, v43);
  sub_23E794BD8(v39, v43);
  v20 = _s13AdaptiveMusic4MoodV8PlaylistV2eeoiySbAE_AEtFZ_0(&v34, &v31);
  v41[0] = v31;
  v41[1] = v32;
  v42[0] = v33[0];
  *(v42 + 11) = *(v33 + 11);
  sub_23E7A4C68(v41);
  v43[0] = v34;
  v43[1] = v35;
  v44[0] = v36[0];
  *(v44 + 11) = *(v36 + 11);
  sub_23E7A4C68(v43);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  v29 = v7;
  v21 = *(type metadata accessor for PlaybackInfo(0) + 20);
  v22 = *(v10 + 48);
  sub_23E7A6710(a1 + v21, v12, &qword_27E350038, &qword_23E7E1E00);
  sub_23E7A6710(a2 + v21, &v12[v22], &qword_27E350038, &qword_23E7E1E00);
  v23 = *(v5 + 48);
  if (v23(v12, 1, v4) == 1)
  {
    if (v23(&v12[v22], 1, v4) == 1)
    {
      sub_23E7996FC(v12, &qword_27E350038, &qword_23E7E1E00);
      return 1;
    }

    goto LABEL_7;
  }

  v24 = v30;
  sub_23E7A6710(v12, v30, &qword_27E350038, &qword_23E7E1E00);
  if (v23(&v12[v22], 1, v4) == 1)
  {
    sub_23E7B89E0(v24, type metadata accessor for PlaybackInfo.PlaybackItemInfo);
LABEL_7:
    sub_23E7996FC(v12, &qword_27E350710, &qword_23E7E3668);
    return 0;
  }

  v26 = &v12[v22];
  v27 = v29;
  sub_23E7A6650(v26, v29);
  v28 = _s13AdaptiveMusic12PlaybackInfoV0c4ItemD0V2eeoiySbAE_AEtFZ_0(v24, v27);
  sub_23E7B89E0(v27, type metadata accessor for PlaybackInfo.PlaybackItemInfo);
  sub_23E7B89E0(v24, type metadata accessor for PlaybackInfo.PlaybackItemInfo);
  sub_23E7996FC(v12, &qword_27E350038, &qword_23E7E1E00);
  return v28;
}

uint64_t sub_23E7B8480(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

BOOL _s13AdaptiveMusic12PlaybackInfoV0c4ItemD0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_23E7DD208();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFD0, &qword_23E7E1D98);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350700, &qword_23E7E3660);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  if (*a1 != *a2 && (sub_23E7DD8E8() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_23E7DD8E8() & 1) == 0 || (sub_23E7DDA28() & 1) == 0 || (sub_23E7DDA28() & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for PlaybackInfo.PlaybackItemInfo(0) + 32);
  v15 = *(v11 + 48);
  sub_23E7A6710(a1 + v14, v13, &qword_27E34FFD0, &qword_23E7E1D98);
  sub_23E7A6710(a2 + v14, &v13[v15], &qword_27E34FFD0, &qword_23E7E1D98);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_23E7A6710(v13, v10, &qword_27E34FFD0, &qword_23E7E1D98);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_23E7B88DC(&qword_27E350708, MEMORY[0x277CD8460], MEMORY[0x277CD8478]);
      v18 = sub_23E7DD2E8();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_23E7996FC(v13, &qword_27E34FFD0, &qword_23E7E1D98);
      return (v18 & 1) != 0;
    }

    (*(v5 + 8))(v10, v4);
LABEL_13:
    sub_23E7996FC(v13, &qword_27E350700, &qword_23E7E3660);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_23E7996FC(v13, &qword_27E34FFD0, &qword_23E7E1D98);
  return 1;
}

unint64_t sub_23E7B8888()
{
  result = qword_27E350658;
  if (!qword_27E350658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350658);
  }

  return result;
}

uint64_t sub_23E7B88DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23E7B8924()
{
  result = qword_27E350680;
  if (!qword_27E350680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350680);
  }

  return result;
}

uint64_t sub_23E7B8978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23E7B89E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23E7B8A54(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350038, &qword_23E7E1E00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23E7B8B24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350038, &qword_23E7E1E00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23E7B8BD4(uint64_t a1)
{
  sub_23E7B8EA4(319, &qword_27E3506B0, type metadata accessor for PlaybackInfo.PlaybackItemInfo);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_23E7B8C80(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFD0, &qword_23E7E1D98);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23E7B8D50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFD0, &qword_23E7E1D98);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23E7B8E00(uint64_t a1)
{
  sub_23E7B8EA4(319, &qword_27E3506C8, MEMORY[0x277CD8460]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23E7B8EA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23E7DD658();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_23E7B8F1C()
{
  result = qword_27E3506D0;
  if (!qword_27E3506D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3506D0);
  }

  return result;
}

unint64_t sub_23E7B8F74()
{
  result = qword_27E3506D8;
  if (!qword_27E3506D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3506D8);
  }

  return result;
}

unint64_t sub_23E7B8FCC()
{
  result = qword_27E3506E0;
  if (!qword_27E3506E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3506E0);
  }

  return result;
}

unint64_t sub_23E7B9024()
{
  result = qword_27E3506E8;
  if (!qword_27E3506E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3506E8);
  }

  return result;
}

unint64_t sub_23E7B907C()
{
  result = qword_27E3506F0;
  if (!qword_27E3506F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3506F0);
  }

  return result;
}

unint64_t sub_23E7B90D4()
{
  result = qword_27E3506F8;
  if (!qword_27E3506F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3506F8);
  }

  return result;
}

uint64_t sub_23E7B9128(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B63616279616C70 && a2 == 0xEC000000656D6954 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_23E7DD8E8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_23E7B92D8()
{
  v1 = sub_23E7DCD88();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350718, &qword_23E7E3678);
  v0[5] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_23E7B93FC;

  return MEMORY[0x2821243B0]();
}

uint64_t sub_23E7B93FC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v7 = sub_23E7B95C4;
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v7 = sub_23E7B9530;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23E7B9530()
{
  v1 = sub_23E7DD368();
  v3 = v2;

  v4 = *(v0 + 8);

  return v4(v1, v3);
}

uint64_t sub_23E7B95C4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  sub_23E7DCD38();
  sub_23E7DCD68();
  (*(v4 + 8))(v2, v3);
  v5 = sub_23E7DCD58();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v1, 1, v5);
  v8 = v0[7];
  v9 = v0[5];
  if (v7 == 1)
  {
    sub_23E7B9734(v0[5]);
    v10 = 0xE200000000000000;
    v11 = 21333;
  }

  else
  {
    sub_23E7DCD48();
    (*(v6 + 8))(v9, v5);
    v11 = sub_23E7DD368();
    v10 = v12;
  }

  v13 = v0[1];

  return v13(v11, v10);
}

uint64_t sub_23E7B9734(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350718, &qword_23E7E3678);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MusicPlayingPlaybackStatus.rawValue.getter()
{
  v1 = 1701602409;
  v2 = 0x646573756170;
  if (*v0 != 2)
  {
    v2 = 0x676E6979616C70;
  }

  if (*v0)
  {
    v1 = 0x676E6964616F6CLL;
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

AdaptiveMusic::MusicPlayingPlaybackStatus_optional __swiftcall MusicPlayingPlaybackStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23E7DD7E8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_23E7B9874()
{
  result = qword_27E350720;
  if (!qword_27E350720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350720);
  }

  return result;
}

uint64_t sub_23E7B98C8()
{
  sub_23E7DD9A8();
  sub_23E7DD398();

  return sub_23E7DD9C8();
}

uint64_t sub_23E7B997C(uint64_t a1)
{
  sub_23E7DD398();
}

uint64_t sub_23E7B9A1C(uint64_t a1)
{
  sub_23E7DD9A8();
  sub_23E7DD398();

  return sub_23E7DD9C8();
}

void sub_23E7B9AD8(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701602409;
  v4 = 0xE600000000000000;
  v5 = 0x646573756170;
  if (*v1 != 2)
  {
    v5 = 0x676E6979616C70;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x676E6964616F6CLL;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

id sub_23E7B9B58()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC13AdaptiveMusic19AudioSessionManager_interruptionHandler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350730, &qword_23E7E3788);
  v3 = swift_allocObject();
  *(v3 + 32) = 0;
  *(v3 + 16) = nullsub_1;
  *(v3 + 24) = 0;
  *&v0[v2] = v3;
  v11.receiver = v0;
  v11.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v11, sel_init);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 defaultCenter];
  v8 = *MEMORY[0x277CB8068];
  v9 = [objc_opt_self() sharedInstance];
  [v7 addObserver:v6 selector:sel_handleInterruptionWithNotification_ name:v8 object:v9];

  return v6;
}

double sub_23E7B9CB4(void *a1, uint64_t a2, uint64_t a3)
{

  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *a1 = sub_23E7BA280;
  a1[1] = v6;
  sub_23E7DC9E8();
  return result;
}

void sub_23E7B9D28()
{
  v1 = v0;
  v2 = sub_23E7DCB38();
  if (v2)
  {
    v3 = v2;
    v20 = sub_23E7DD328();
    sub_23E7DD6E8();
    if (!*(v3 + 16) || (v4 = sub_23E7A3680(v22), (v5 & 1) == 0))
    {

      sub_23E7A67D4(v22);
      return;
    }

    sub_23E7A6134(*(v3 + 56) + 32 * v4, v23);
    sub_23E7A67D4(v22);
    if (swift_dynamicCast())
    {
      if (!v20)
      {
        if (qword_27E34FB58 != -1)
        {
          swift_once();
        }

        v13 = sub_23E7DCE88();
        __swift_project_value_buffer(v13, qword_27E35A110);
        v14 = sub_23E7DCE68();
        v15 = sub_23E7DD5C8();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_23E790000, v14, v15, "Interruption ended", v16, 2u);
          MEMORY[0x23EF13B60](v16, -1, -1);
        }

        v21 = sub_23E7DD328();
        sub_23E7DD6E8();
        if (*(v3 + 16) && (v17 = sub_23E7A3680(v22), (v18 & 1) != 0))
        {
          sub_23E7A6134(*(v3 + 56) + 32 * v17, v23);
          sub_23E7A67D4(v22);

          if (swift_dynamicCast())
          {
            v10 = *(v1 + OBJC_IVAR____TtC13AdaptiveMusic19AudioSessionManager_interruptionHandler);
            os_unfair_lock_lock((v10 + 32));
            v19 = *(v10 + 16);
            v11 = *(v10 + 24);
            v22[0] = 0;
            v23[0] = v21 & 1;
            sub_23E7DC9E8();
            v19(v22, v23);

            *(v10 + 16) = v19;
LABEL_25:
            *(v10 + 24) = v11;
            os_unfair_lock_unlock((v10 + 32));
            return;
          }
        }

        else
        {

          sub_23E7A67D4(v22);
        }

        v10 = *(v1 + OBJC_IVAR____TtC13AdaptiveMusic19AudioSessionManager_interruptionHandler);
        os_unfair_lock_lock((v10 + 32));
        v12 = *(v10 + 16);
        v11 = *(v10 + 24);
        v22[0] = 0;
LABEL_24:
        v23[0] = 0;
        sub_23E7DC9E8();
        v12(v22, v23);

        *(v10 + 16) = v12;
        goto LABEL_25;
      }

      if (v20 == 1)
      {

        if (qword_27E34FB58 != -1)
        {
          swift_once();
        }

        v6 = sub_23E7DCE88();
        __swift_project_value_buffer(v6, qword_27E35A110);
        v7 = sub_23E7DCE68();
        v8 = sub_23E7DD5C8();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          _os_log_impl(&dword_23E790000, v7, v8, "Interruption began", v9, 2u);
          MEMORY[0x23EF13B60](v9, -1, -1);
        }

        v10 = *(v1 + OBJC_IVAR____TtC13AdaptiveMusic19AudioSessionManager_interruptionHandler);
        os_unfair_lock_lock((v10 + 32));
        v12 = *(v10 + 16);
        v11 = *(v10 + 24);
        v22[0] = 1;
        goto LABEL_24;
      }
    }
  }
}

id sub_23E7BA1DC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23E7BA248()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E7BA2B0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350748, &qword_23E7E37A8);
  sub_23E7AF328(&qword_27E350778, &qword_27E350748, &qword_23E7E37A8, MEMORY[0x277CD7CB8]);
  sub_23E7DD588();
  sub_23E7DD598();
  if (v9[4] == v9[0])
  {
    v2 = sub_23E7DD258();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_23E7DD5A8();
    v6 = v5;
    v7 = sub_23E7DD258();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t sub_23E7BA450(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350780, &qword_23E7E3828);
  v1[4] = v3;
  v1[5] = *(v3 - 8);
  v1[6] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350788, &qword_23E7E3830);
  v1[7] = v4;
  v1[8] = *(v4 - 8);
  v1[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350790, &qword_23E7E3838);
  v1[10] = v5;
  v1[11] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *(a1 + 48);
  v1[12] = v6;
  v1[13] = v7;

  return MEMORY[0x2822009F8](sub_23E7BA5F0, 0, 0);
}

uint64_t sub_23E7BA5F0()
{
  v1 = v0[13];
  v2 = *(v1 + 16);
  if (v2)
  {
    v22 = MEMORY[0x277D84F90];
    sub_23E7CB528(0, v2, 0);
    v3 = v1 + 40;
    do
    {
      sub_23E7DC9D8();
      v4 = sub_23E7DD048();
      v7 = *(v22 + 16);
      v6 = *(v22 + 24);
      if (v7 >= v6 >> 1)
      {
        v9 = v4;
        v10 = v5;
        sub_23E7CB528((v6 > 1), v7 + 1, 1);
        v5 = v10;
        v4 = v9;
      }

      *(v22 + 16) = v7 + 1;
      v8 = v22 + 16 * v7;
      *(v8 + 32) = v4;
      *(v8 + 40) = v5;
      v3 += 32;
      --v2;
    }

    while (v2);
    swift_getKeyPath();
    sub_23E7DCE58();
    v11 = MEMORY[0x277D2AB98];
    sub_23E7BC008(&qword_27E350798, MEMORY[0x277D2AB98], MEMORY[0x277D2AB68]);
    sub_23E7BC008(&qword_27E3507A0, v11, MEMORY[0x277D2ABB0]);
    sub_23E7DD018();
    v12 = swift_task_alloc();
    v0[14] = v12;
    *v12 = v0;
    v12[1] = sub_23E7BA90C;
    v13 = v0[9];
    v14 = v0[10];

    return MEMORY[0x282124780](v13, v14);
  }

  else
  {
    if (qword_27E34FB58 != -1)
    {
      swift_once();
    }

    v15 = sub_23E7DCE88();
    __swift_project_value_buffer(v15, qword_27E35A110);
    v16 = sub_23E7DCE68();
    v17 = sub_23E7DD5E8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_23E790000, v16, v17, "No playlist items found.", v18, 2u);
      MEMORY[0x23EF13B60](v18, -1, -1);
    }

    v19 = v0[1];
    v20 = MEMORY[0x277D84F90];

    return v19(v20);
  }
}

uint64_t sub_23E7BA90C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_23E7BAD64;
  }

  else
  {
    v2 = sub_23E7BAA20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23E7BAA20()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  sub_23E7DD038();
  sub_23E7AF328(&qword_27E3507A8, &qword_27E350780, &qword_23E7E3828, MEMORY[0x277CD7CB8]);
  sub_23E7DD588();
  sub_23E7DD598();
  (*(v3 + 8))(v1, v2);
  if (v0[2] == v0[3])
  {
    if (qword_27E34FB58 != -1)
    {
      swift_once();
    }

    v4 = sub_23E7DCE88();
    __swift_project_value_buffer(v4, qword_27E35A110);
    v5 = sub_23E7DCE68();
    v6 = sub_23E7DD5E8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_23E790000, v5, v6, "No uploaded audio found.", v7, 2u);
      MEMORY[0x23EF13B60](v7, -1, -1);
    }

    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[7];

    sub_23E799564();
    swift_allocError();
    *v11 = 4;
    swift_willThrow();
    (*(v9 + 8))(v8, v10);
    (*(v0[11] + 8))(v0[12], v0[10]);

    v12 = v0[1];

    return v12();
  }

  else
  {
    v15 = v0[11];
    v14 = v0[12];
    v17 = v0[9];
    v16 = v0[10];
    v18 = v0[7];
    v19 = v0[8];
    sub_23E7DD038();
    sub_23E7AF328(&qword_27E3507B0, &qword_27E350780, &qword_23E7E3828, MEMORY[0x277CD7CA0]);
    v20 = sub_23E7DD448();
    (*(v19 + 8))(v17, v18);
    (*(v15 + 8))(v14, v16);

    v21 = v0[1];

    return v21(v20);
  }
}

uint64_t sub_23E7BAD64()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_23E7BAE00(uint64_t *a1)
{
  v3 = sub_23E7DD258();
  *(v1 + 48) = v3;
  *(v1 + 56) = *(v3 - 8);
  *(v1 + 64) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350738, &qword_23E7E3798);
  *(v1 + 72) = v4;
  *(v1 + 80) = *(v4 - 8);
  *(v1 + 88) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350740, &qword_23E7E37A0);
  *(v1 + 96) = v5;
  *(v1 + 104) = *(v5 - 8);
  *(v1 + 112) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350748, &qword_23E7E37A8);
  *(v1 + 120) = v6;
  *(v1 + 128) = *(v6 - 8);
  *(v1 + 136) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350750, &qword_23E7E37B0);
  *(v1 + 144) = v7;
  *(v1 + 152) = *(v7 - 8);
  *(v1 + 160) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350758, &qword_23E7E37B8);
  *(v1 + 168) = v8;
  *(v1 + 176) = *(v8 - 8);
  *(v1 + 184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350760, &qword_23E7E37C0);
  *(v1 + 192) = swift_task_alloc();
  v9 = swift_task_alloc();
  v10 = *a1;
  v11 = a1[1];
  *(v1 + 200) = v9;
  *(v1 + 208) = v10;
  *(v1 + 216) = v11;
  *(v1 + 256) = *(a1 + 57);

  return MEMORY[0x2822009F8](sub_23E7BB11C, 0, 0);
}

uint64_t sub_23E7BB11C()
{
  if (*(v0 + 256) == 2)
  {
    v1 = *(v0 + 168);
    sub_23E7DCFE8();
    KeyPath = swift_getKeyPath();
    sub_23E7DC9D8();
    *(v0 + 32) = sub_23E7DD048();
    *(v0 + 40) = v3;
    MEMORY[0x23EF12A20](KeyPath, v0 + 32, v1, MEMORY[0x277CD7E80]);

    v4 = swift_task_alloc();
    *(v0 + 224) = v4;
    *v4 = v0;
    v4[1] = sub_23E7BB358;
    v5 = *(v0 + 160);
    v6 = *(v0 + 168);

    return MEMORY[0x282124698](v5, v6);
  }

  else
  {
    swift_getKeyPath();
    sub_23E7DC9D8();
    *(v0 + 16) = sub_23E7DD048();
    *(v0 + 24) = v7;
    sub_23E7BC008(&qword_27E350768, MEMORY[0x277CD8608], MEMORY[0x277CD8628]);
    sub_23E7DD008();
    v8 = swift_task_alloc();
    *(v0 + 240) = v8;
    *v8 = v0;
    v8[1] = sub_23E7BB810;
    v9 = *(v0 + 88);
    v10 = *(v0 + 96);

    return MEMORY[0x282124780](v9, v10);
  }
}

uint64_t sub_23E7BB358()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_23E7BBCC8;
  }

  else
  {
    v2 = sub_23E7BB46C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23E7BB46C()
{
  v1 = v0[25];
  v2 = v0[22];
  v29 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[18];
  v6 = v0[19];
  v7 = v0[16];
  v8 = v0[17];
  v9 = v0[15];
  sub_23E7DCFF8();
  (*(v6 + 8))(v3, v5);
  sub_23E7BA2B0(v1);
  (*(v7 + 8))(v8, v9);
  (*(v2 + 8))(v29, v4);
  v10 = v0[24];
  v11 = v0[6];
  v12 = v0[7];
  sub_23E7BBEA8(v0[25], v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_23E7BBF18(v0[24]);
    if (qword_27E34FB58 != -1)
    {
      swift_once();
    }

    v13 = sub_23E7DCE88();
    __swift_project_value_buffer(v13, qword_27E35A110);
    v14 = sub_23E7DCE68();
    v15 = sub_23E7DD5E8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_23E790000, v14, v15, "No playlist items found.", v16, 2u);
      MEMORY[0x23EF13B60](v16, -1, -1);
    }

    v17 = v0[25];

    sub_23E799564();
    swift_allocError();
    *v18 = 4;
    swift_willThrow();
    sub_23E7BBF18(v17);

    v19 = v0[1];

    return v19();
  }

  else
  {
    v21 = v0[25];
    v23 = v0[7];
    v22 = v0[8];
    v24 = v0[6];
    v25 = *(v23 + 32);
    v25(v22, v0[24], v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350770, &qword_23E7E37F0);
    v26 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_23E7E1B90;
    v25(v27 + v26, v22, v24);
    sub_23E7BBF18(v21);

    v28 = v0[1];

    return v28(v27);
  }
}

uint64_t sub_23E7BB810()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_23E7BBDAC;
  }

  else
  {
    v2 = sub_23E7BB924;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23E7BB924()
{
  v1 = v0[25];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v29 = v0[14];
  v5 = v0[12];
  v6 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[9];
  sub_23E7DD038();
  (*(v8 + 8))(v7, v9);
  sub_23E7BA2B0(v1);
  (*(v3 + 8))(v2, v4);
  (*(v6 + 8))(v29, v5);
  v10 = v0[24];
  v11 = v0[6];
  v12 = v0[7];
  sub_23E7BBEA8(v0[25], v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_23E7BBF18(v0[24]);
    if (qword_27E34FB58 != -1)
    {
      swift_once();
    }

    v13 = sub_23E7DCE88();
    __swift_project_value_buffer(v13, qword_27E35A110);
    v14 = sub_23E7DCE68();
    v15 = sub_23E7DD5E8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_23E790000, v14, v15, "No playlist items found.", v16, 2u);
      MEMORY[0x23EF13B60](v16, -1, -1);
    }

    v17 = v0[25];

    sub_23E799564();
    swift_allocError();
    *v18 = 4;
    swift_willThrow();
    sub_23E7BBF18(v17);

    v19 = v0[1];

    return v19();
  }

  else
  {
    v21 = v0[25];
    v23 = v0[7];
    v22 = v0[8];
    v24 = v0[6];
    v25 = *(v23 + 32);
    v25(v22, v0[24], v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350770, &qword_23E7E37F0);
    v26 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_23E7E1B90;
    v25(v27 + v26, v22, v24);
    sub_23E7BBF18(v21);

    v28 = v0[1];

    return v28(v27);
  }
}

uint64_t sub_23E7BBCC8()
{
  (*(v0[22] + 8))(v0[23], v0[21]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_23E7BBDAC()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_23E7BBEA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350760, &qword_23E7E37C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E7BBF18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350760, &qword_23E7E37C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t keypath_getTm@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_23E7BC008(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static ControlWidgetStateManager.currentPlaybackStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3507B8, &qword_23E7E3870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - v3;
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = sub_23E7DD318();
  v7 = [v5 initWithSuiteName_];

  if (v7)
  {
    v8 = sub_23E7DD318();
    v9 = [v7 objectForKey_];

    if (v9)
    {
      sub_23E7DD6A8();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    v17[0] = v15;
    v17[1] = v16;
    if (*(&v16 + 1))
    {
      if (swift_dynamicCast())
      {
        v10 = v14[2];
        v11 = v14[3];
        sub_23E7DCBD8();
        swift_allocObject();
        sub_23E7DCBC8();
        v12 = type metadata accessor for Player.PlaybackStatus(0);
        sub_23E7BCA58(&qword_27E3507C8, &protocol conformance descriptor for Player.PlaybackStatus);
        sub_23E7DCBB8();
        sub_23E799670(v10, v11);

        (*(*(v12 - 8) + 56))(v4, 0, 1, v12);
        return sub_23E7BC940(v4, a1);
      }
    }

    else
    {
      sub_23E7996FC(v17, &qword_27E3507C0, &qword_23E7E3878);
    }

    type metadata accessor for Player.PlaybackStatus(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    result = sub_23E7DD788();
    __break(1u);
  }

  return result;
}

uint64_t sub_23E7BC394(uint64_t a1)
{
  v2 = type metadata accessor for Player.PlaybackStatus(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E7AD030(a1, v4);
  return _s13AdaptiveMusic25ControlWidgetStateManagerC21currentPlaybackStatusAA6PlayerC0hI0OvsZ_0(v4);
}

void (*static ControlWidgetStateManager.currentPlaybackStatus.modify(void **a1))(uint64_t a1, char a2)
{
  v2 = *(*(type metadata accessor for Player.PlaybackStatus(0) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    *a1 = swift_coroFrameAlloc();
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v2);
    v3 = malloc(v2);
  }

  a1[1] = v3;
  static ControlWidgetStateManager.currentPlaybackStatus.getter(v3);
  return sub_23E7BC4B4;
}

void sub_23E7BC4B4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    sub_23E7AD030(v3, v2);
    _s13AdaptiveMusic25ControlWidgetStateManagerC21currentPlaybackStatusAA6PlayerC0hI0OvsZ_0(v2);
    sub_23E7BC9A4(v3);
  }

  else
  {
    _s13AdaptiveMusic25ControlWidgetStateManagerC21currentPlaybackStatusAA6PlayerC0hI0OvsZ_0(v3);
  }

  free(v3);

  free(v2);
}

uint64_t static ControlWidgetStateManager.reload()()
{
  sub_23E7DD288();
  sub_23E7DD278();
  sub_23E7DD268();
}

uint64_t _s13AdaptiveMusic25ControlWidgetStateManagerC21currentPlaybackStatusAA6PlayerC0hI0OvsZ_0(uint64_t a1)
{
  v2 = type metadata accessor for Player.PlaybackStatus(0);
  v3 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  sub_23E7DCC08();
  swift_allocObject();
  sub_23E7DCBF8();
  sub_23E7BCA58(&qword_27E3507D0, &protocol conformance descriptor for Player.PlaybackStatus);
  v4 = sub_23E7DCBE8();
  v6 = v5;

  v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v8 = sub_23E7DD318();
  v9 = [v7 initWithSuiteName_];

  if (v9)
  {
    v10 = sub_23E7DCD08();
    v11 = sub_23E7DD318();
    [v9 setObject:v10 forKey:v11];
    sub_23E799670(v4, v6);

    return sub_23E7BC9A4(a1);
  }

  else
  {
    result = sub_23E7DD788();
    __break(1u);
  }

  return result;
}

uint64_t sub_23E7BC940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player.PlaybackStatus(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E7BC9A4(uint64_t a1)
{
  v2 = type metadata accessor for Player.PlaybackStatus(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E7BCA58(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Player.PlaybackStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Mood.Playlist.id.getter()
{
  v1 = *v0;
  sub_23E7DC9D8();
  return v1;
}