uint64_t sub_22261689C(uint64_t a1, uint64_t a2)
{
  v61 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v55 = 0;
    v48 = 0;
    v53 = a2;
    v54 = a1;
    v6 = a1 + 56;
    v5 = *(a1 + 56);
    v7 = -1 << *(a1 + 32);
    v52 = ~v7;
    if (-v7 < 64)
    {
      v8 = ~(-1 << -v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & v5;
    v10 = (63 - v7) >> 6;
    v11 = (a2 + 56);
    do
    {
LABEL_6:
      if (!v9)
      {
        v13 = v55;
        v12 = v53;
        while (1)
        {
          v14 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v14 >= v10)
          {

            goto LABEL_44;
          }

          v9 = *(v6 + 8 * v14);
          ++v13;
          if (v9)
          {
            v55 = v14;
            goto LABEL_13;
          }
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v12 = v53;
LABEL_13:
      v15 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v16 = *(v54 + 48) + ((v55 << 10) | (16 * v15));
      v3 = *v16;
      v17 = *(v16 + 8);
      sub_22261B700();
      MEMORY[0x223DBBB60](v3);
      MEMORY[0x223DBBB40](v17);
      v18 = sub_22261B740();
      v19 = -1 << *(v12 + 32);
      v2 = v18 & ~v19;
      v4 = v2 >> 6;
      v12 = 1 << v2;
    }

    while (((1 << v2) & v11[v2 >> 6]) == 0);
    while (1)
    {
      v20 = *(v53 + 48) + 16 * v2;
      if (*v20 == v3 && ((v17 ^ *(v20 + 8)) & 1) == 0)
      {
        break;
      }

      v2 = (v2 + 1) & ~v19;
      v4 = v2 >> 6;
      v12 = 1 << v2;
      if ((v11[v2 >> 6] & (1 << v2)) == 0)
      {
        goto LABEL_6;
      }
    }

    v58 = v52;
    v59 = v55;
    v60 = v9;
    v57[0] = v54;
    v57[1] = v6;
    v21 = (63 - v19) >> 6;
    v3 = 8 * v21;

    v49 = v21;
    if (v21 <= 0x80)
    {
LABEL_19:
      v50 = &v47;
      MEMORY[0x28223BE20](v22);
      v24 = (&v47 - v23);
      memcpy(&v47 - v23, v11, v3);
      v25 = v24[v4] & ~v12;
      v12 = v53;
      v26 = *(v53 + 16);
      v24[v4] = v25;
      v27 = v26 - 1;
      v4 = 1;
LABEL_20:
      v51 = v27;
LABEL_21:
      while (v9)
      {
LABEL_27:
        v30 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v31 = *(v54 + 48) + ((v55 << 10) | (16 * v30));
        v3 = *v31;
        v32 = *(v31 + 8);
        sub_22261B700();
        v2 = v56;
        MEMORY[0x223DBBB60](v3);
        MEMORY[0x223DBBB40](v32);
        v33 = sub_22261B740();
        v34 = -1 << *(v12 + 32);
        v35 = v33 & ~v34;
        v36 = v35 >> 6;
        v37 = 1 << v35;
        if (((1 << v35) & v11[v35 >> 6]) != 0)
        {
          v38 = ~v34;
          while (1)
          {
            v39 = *(v12 + 48) + 16 * v35;
            if (*v39 == v3 && ((v32 ^ *(v39 + 8)) & 1) == 0)
            {
              break;
            }

            v35 = (v35 + 1) & v38;
            v36 = v35 >> 6;
            v37 = 1 << v35;
            if ((v11[v35 >> 6] & (1 << v35)) == 0)
            {
              goto LABEL_21;
            }
          }

          v40 = v24[v36];
          v24[v36] = v40 & ~v37;
          if ((v40 & v37) != 0)
          {
            v27 = v51 - 1;
            if (__OFSUB__(v51, 1))
            {
              __break(1u);
            }

            if (v51 == 1)
            {

              v12 = MEMORY[0x277D84FA0];
              goto LABEL_41;
            }

            goto LABEL_20;
          }
        }
      }

      v28 = v55;
      while (1)
      {
        v29 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          __break(1u);
          goto LABEL_47;
        }

        if (v29 >= v10)
        {
          break;
        }

        v9 = *(v6 + 8 * v29);
        ++v28;
        if (v9)
        {
          v55 = v29;
          goto LABEL_27;
        }
      }

      if (v10 <= v55 + 1)
      {
        v41 = v55 + 1;
      }

      else
      {
        v41 = v10;
      }

      v55 = v41 - 1;
      v12 = sub_222616174(v24, v49, v51, v12);
LABEL_41:
      v42 = v54;
      goto LABEL_44;
    }

LABEL_48:
    v44 = v53;

    if (swift_stdlib_isStackAllocationSafe())
    {

      goto LABEL_19;
    }

    v45 = swift_slowAlloc();
    memcpy(v45, v11, v3);
    v46 = v48;
    v12 = sub_222616EBC(v45, v49, v44, v2, v57);

    if (!v46)
    {

      MEMORY[0x223DBC1E0](v45, -1, -1);
      v42 = v57[0];
      v52 = v58;
      v55 = v59;
LABEL_44:
      sub_2225F24EC(v42);
      return v12;
    }

    result = MEMORY[0x223DBC1E0](v45, -1, -1);
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_222616D70@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  sub_22261B700();
  MEMORY[0x223DBBB60](a1);
  MEMORY[0x223DBBB40](a2 & 1);
  result = sub_22261B740();
  v9 = -1 << *(v7 + 32);
  v10 = result & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v7 + 48) + 16 * v10;
      if (*v12 == a1 && ((*(v12 + 8) ^ a2) & 1) == 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    v17 = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_222615928();
      v14 = v17;
    }

    v15 = *(v14 + 48) + 16 * v10;
    v16 = *v15;
    LOBYTE(v15) = *(v15 + 8);
    *a3 = v16;
    *(a3 + 8) = v15;
    result = sub_2226170AC(v10);
    *v3 = v17;
  }

  else
  {
LABEL_9:
    *a3 = 0;
    *(a3 + 8) = 2;
  }

  return result;
}

uint64_t sub_222616EBC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (2)
  {
    v28 = v9;
    while (1)
    {
LABEL_3:
      v11 = a5[3];
      v12 = a5[4];
      if (!v12)
      {
        v14 = (a5[2] + 64) >> 6;
        v15 = a5[3];
        while (1)
        {
          v13 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
            goto LABEL_23;
          }

          if (v13 >= v14)
          {
            break;
          }

          v12 = *(a5[1] + 8 * v13);
          ++v15;
          if (v12)
          {
            goto LABEL_9;
          }
        }

        if (v14 <= v11 + 1)
        {
          v26 = v11 + 1;
        }

        else
        {
          v26 = (a5[2] + 64) >> 6;
        }

        a5[3] = v26 - 1;
        a5[4] = 0;

        return sub_222616174(v7, a2, v28, a3);
      }

      v13 = a5[3];
LABEL_9:
      v16 = *(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12))));
      v17 = *v16;
      v18 = *(v16 + 8);
      a5[3] = v13;
      a5[4] = (v12 - 1) & v12;
      sub_22261B700();
      MEMORY[0x223DBBB60](v17);
      MEMORY[0x223DBBB40](v18);
      result = sub_22261B740();
      v19 = -1 << *(a3 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      v22 = 1 << v20;
      if (((1 << v20) & *(v10 + 8 * (v20 >> 6))) != 0)
      {
        v23 = ~v19;
        while (1)
        {
          v24 = *(a3 + 48) + 16 * v20;
          if (*v24 == v17 && ((v18 ^ *(v24 + 8)) & 1) == 0)
          {
            break;
          }

          v20 = (v20 + 1) & v23;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if ((*(v10 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
          {
            goto LABEL_3;
          }
        }

        v25 = v7[v21];
        v7[v21] = v25 & ~v22;
        if ((v25 & v22) != 0)
        {
          break;
        }
      }
    }

    v9 = v28 - 1;
    if (__OFSUB__(v28, 1))
    {
LABEL_23:
      __break(1u);
    }

    else
    {
      if (v28 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

unint64_t sub_2226170AC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22261B4C0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = 16 * v6;
        v11 = *(v3 + 48) + 16 * v6;
        v12 = *v11;
        v13 = *(v11 + 8);
        sub_22261B700();
        MEMORY[0x223DBBB60](v12);
        MEMORY[0x223DBBB40](v13);
        v14 = sub_22261B740() & v7;
        if (v2 >= v9)
        {
          if (v14 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = (v15 + 16 * v2);
          v17 = (v15 + v10);
          if (16 * v2 != v10 || (v2 = v6, v16 >= v17 + 1))
          {
            *v16 = *v17;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_22261727C@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, _BYTE *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_2226172C0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_222611000(v2);
  }

  return result;
}

void *sub_222617320(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = sub_22261B150();
  v14[3] = v8;
  v14[4] = MEMORY[0x277D22508];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  (*(*(v8 - 8) + 32))(boxed_opaque_existential_0, a3, v8);
  a4[2] = a1;
  v10 = sub_2225DDC10(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010D28, &qword_22261EC28);
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  *(v11 + 16) = v10;
  a4[4] = v11;
  sub_2225D6718(a2, (a4 + 5));
  sub_2225D6718(v14, (a4 + 10));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010D30, &unk_22261EC30);
  swift_allocObject();
  v12 = sub_22261AEA0();
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(v14);
  a4[3] = v12;
  return a4;
}

uint64_t sub_222617500(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2225E2E18;

  return sub_222609EF4(a1, v4);
}

uint64_t sub_22261759C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2225E2AA0;

  return sub_22260AE14(a1, v4, v5);
}

uint64_t sub_222617664(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2225E2AA0;

  return sub_22260B43C(a1, v4, v5, v7, v6);
}

void sub_22261773C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
  }
}

uint64_t sub_22261780C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D010D60, &qword_22261ED18);
    v3 = sub_22261B4F0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v10 = *(a1 + 32 + 8 * v4);
      result = sub_22261B6F0();
      v12 = result & v6;
      v13 = (result & v6) >> 6;
      v14 = *(v5 + 8 * v13);
      v15 = 1 << (result & v6);
      v16 = *(v3 + 48);
      if ((v15 & v14) != 0)
      {
        while (*(v16 + 8 * v12) != v10)
        {
          v12 = (v12 + 1) & v6;
          v13 = v12 >> 6;
          v14 = *(v5 + 8 * (v12 >> 6));
          v15 = 1 << v12;
          if (((1 << v12) & v14) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v13) = v15 | v14;
        *(v16 + 8 * v12) = v10;
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

uint64_t sub_222617930(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010D10, &unk_22261EC00);
    v3 = sub_22261B4F0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v7 = (v6 + 16 * v4);
      v8 = *v7;
      v9 = *(v7 + 8);
      sub_22261B700();
      MEMORY[0x223DBBB60](v8);
      MEMORY[0x223DBBB40](v9);
      result = sub_22261B740();
      v11 = ~(-1 << *(v3 + 32));
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v5 + 8 * v13);
      v15 = 1 << (result & v11);
      v16 = *(v3 + 48);
      if ((v15 & v14) != 0)
      {
        while (1)
        {
          v21 = v16 + 16 * v12;
          if (*v21 == v8 && ((v9 ^ *(v21 + 8)) & 1) == 0)
          {
            break;
          }

          v12 = (v12 + 1) & v11;
          v13 = v12 >> 6;
          v14 = *(v5 + 8 * (v12 >> 6));
          v15 = 1 << v12;
          if ((v14 & (1 << v12)) == 0)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
LABEL_5:
        *(v5 + 8 * v13) = v14 | v15;
        v17 = v16 + 16 * v12;
        *v17 = v8;
        *(v17 + 8) = v9;
        v18 = *(v3 + 16);
        v19 = __OFADD__(v18, 1);
        v20 = v18 + 1;
        if (v19)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v20;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_222617A9C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_222617B40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
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

uint64_t sub_222617B88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8AppState010StorefrontaB10ControllerC010DataSourceB033_86A46CCF333B1C1F4BCB048BF559D885LLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_222617C14(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222617C68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_222617CC4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_222617D50@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v6 = *(v1 + 24);
  v7 = v3;
  result = sub_22260D3DC(&v6, v4);
  *a1 = result & 1;
  return result;
}

void *sub_222617DFC@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_222617F20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222617FC0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  v8 = v3;
  v9 = v4;
  return (*(v6 + 56))(&v8, v5, v6) & 1;
}

uint64_t sub_222618048(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2225E2E18;

  return sub_2226117DC(a1, v4, v5, v6, (v1 + 5), v7);
}

uint64_t sub_222618110(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v8 = *(v2 + 3);
  v7 = *(v2 + 4);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2225E2E18;

  return sub_222607CC0(v6, a1, a2, v8, v7);
}

uint64_t sub_2226181D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2225E2E18;

  return sub_2226082DC(a1, v4, v5, v6);
}

uint64_t sub_222618294(uint64_t a1)
{
  v4 = *(sub_22261ADE0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2225E2E18;

  return sub_2226083D4(a1, v6, v7, v1 + v5);
}

unint64_t sub_222618384()
{
  result = qword_280D9F038[0];
  if (!qword_280D9F038[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D9F038);
  }

  return result;
}

uint64_t sub_2226183D8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_2225E2E18;

  return sub_222611A10(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_2226184B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[16];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2225E2E18;

  return sub_222611E14(a1, v4, v5, v6, v7, (v1 + 6), (v1 + 11), v8);
}

uint64_t sub_222618588(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2225E2E18;

  return sub_222605CE0(a1, v4);
}

unint64_t sub_222618640(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_222618650(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2225E2E18;

  return sub_222610328(a1, v4, v5, v6);
}

uint64_t sub_222618704(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_2226188E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for State(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v32 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v32 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v32 - v15);
  MEMORY[0x28223BE20](v14);
  v18 = (&v32 - v17);
  sub_2225D8D00(a2, &v32 - v17);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v20 = *v18;
    v19 = v18[1];
    sub_2225D8D00(a1, v16);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 6)
      {
        if (EnumCaseMultiPayload != 7 && EnumCaseMultiPayload != 9)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_2225D8D00(v16, v13);
          sub_2225D8D64(v13, type metadata accessor for AppInstallation);
          v22 = 1;
          goto LABEL_29;
        }

        if (EnumCaseMultiPayload != 5)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_16;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
LABEL_16:

        v22 = 1;
        goto LABEL_29;
      }

      sub_2225D8D00(v16, v7);
      v23 = sub_2225FA634(*v7, v7[1]);
      v25 = v24;

      if (v25)
      {
        v26 = 0;
      }

      else
      {
        v26 = v23;
      }

      v27 = sub_2225FA634(v20, v19);
      v29 = v28;

      if (v29)
      {
        v30 = 0;
      }

      else
      {
        v30 = v27;
      }

      v22 = v26 < v30;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
LABEL_27:

          goto LABEL_28;
        }

        goto LABEL_16;
      }

      sub_2225D8D00(v16, v10);
      if ((*v10 | 2) != 2)
      {
LABEL_28:
        v22 = 0;
        goto LABEL_29;
      }

      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
    v16 = v18;
  }

LABEL_29:
  sub_2225D8D64(v16, type metadata accessor for State);
  return v22;
}

uint64_t sub_222618C08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for State(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v29 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v29 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v29 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A78, qword_22261D520);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v29 - v21;
  v23 = *(v20 + 56);
  sub_2225D8D00(a1, &v29 - v21);
  sub_2225D8D00(a2, &v22[v23]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload != 4)
      {
        if (swift_getEnumCaseMultiPayload())
        {
          goto LABEL_25;
        }

        sub_2225D8D00(&v22[v23], v7);
        v25 = *v7;
        goto LABEL_22;
      }

      sub_2225D8D00(v22, v13);
      v26 = swift_getEnumCaseMultiPayload();
      sub_2225D8D64(v13, type metadata accessor for AppInstallation);
      if (v26)
      {
        goto LABEL_25;
      }

LABEL_19:
      v27 = v22;
LABEL_24:
      sub_2225D8D64(v27, type metadata accessor for State);
      return 1;
    }

    if (EnumCaseMultiPayload != 9)
    {
      if (EnumCaseMultiPayload == 6 && !swift_getEnumCaseMultiPayload())
      {
        sub_2225D8D00(&v22[v23], v18);
        if (*v18 <= 1u)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_25;
    }

LABEL_16:
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_2225D8D00(v22, v16);
    if (*v16 != 1)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_25;
  }

  sub_2225D8D00(&v22[v23], v10);
  v25 = *v10;
LABEL_22:
  if ((v25 | 2) == 2)
  {
LABEL_23:
    sub_2225D8D64(&v22[v23], type metadata accessor for State);
    v27 = v22;
    goto LABEL_24;
  }

LABEL_25:
  sub_2225FE4DC(v22);
  return 0;
}

uint64_t sub_222618F1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for State(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_2225DE544(a1);
    v13 = sub_2225F1650(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22261A170();
        v17 = v21;
      }

      sub_2225DDDD0(*(v17 + 56) + *(v10 + 72) * v15, v8);
      sub_222619C30(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_2225DE544(v8);
  }

  else
  {
    sub_2225DDDD0(a1, v12);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_2225F9964(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_222619128(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for State(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_2225DE544(a1);
    v13 = sub_2225F173C(a2 & 1);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v2;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22261A37C();
        v17 = v21;
      }

      sub_2225DDDD0(*(v17 + 56) + *(v10 + 72) * v15, v8);
      sub_222619E00(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_2225DE544(v8);
  }

  else
  {
    sub_2225DDDD0(a1, v12);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    result = sub_2225F9AB0(v12, a2 & 1, v18);
    *v2 = v21;
  }

  return result;
}

void *WaitingAppStateDataSource.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[3] = &unk_2835C1058;
  v0[2] = sub_2225DD970(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109E8, &unk_22261D290);
  swift_allocObject();
  v0[5] = sub_22261B190();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109F0, &qword_22261E200);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v0[4] = v1;
  return v0;
}

void *WaitingAppStateDataSource.init()()
{
  v0[3] = &unk_2835C1058;
  v0[2] = sub_2225DD970(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109E8, &unk_22261D290);
  swift_allocObject();
  v0[5] = sub_22261B190();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109F0, &qword_22261E200);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v0[4] = v1;
  return v0;
}

void *WaitingAppStateDataSource.__allocating_init(supportedAppKinds:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[3] = a1;
  v2[2] = sub_2225DD970(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109E8, &unk_22261D290);
  swift_allocObject();
  v2[5] = sub_22261B190();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109F0, &qword_22261E200);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v2[4] = v3;
  return v2;
}

void *WaitingAppStateDataSource.init(supportedAppKinds:)(uint64_t a1)
{
  v1[3] = a1;
  v1[2] = sub_2225DD970(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109E8, &unk_22261D290);
  swift_allocObject();
  v1[5] = sub_22261B190();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109F0, &qword_22261E200);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v1[4] = v2;
  return v1;
}

void WaitingAppStateDataSource.state(forAppWith:)()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  sub_2225F76C8(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t WaitingAppStateDataSource.setWaiting(forAppWith:installationType:)()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  sub_2226174E4(v2);
  os_unfair_lock_unlock(v1 + 4);
  return 1;
}

uint64_t sub_2226196DC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  *(&v10 - v6) = a3;
  v8 = type metadata accessor for State(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  swift_beginAccess();
  sub_222618F1C(v7, a2);
  return swift_endAccess();
}

uint64_t WaitingAppStateDataSource.clearWaiting(forAppWith:)()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  sub_222618894(v2);
  os_unfair_lock_unlock(v1 + 4);
  return 1;
}

uint64_t sub_222619864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  swift_beginAccess();
  v7 = sub_2225F1650(a2);
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(a1 + 16);
    v17 = v11;
    *(a1 + 16) = 0x8000000000000000;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22261A170();
      v11 = v17;
    }

    v12 = *(v11 + 56);
    v13 = type metadata accessor for State(0);
    v14 = *(v13 - 8);
    sub_2225DDDD0(v12 + *(v14 + 72) * v9, v6);
    sub_222619C30(v9, v11);
    *(a1 + 16) = v11;
    (*(v14 + 56))(v6, 0, 1, v13);
  }

  else
  {
    v15 = type metadata accessor for State(0);
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  }

  swift_endAccess();
  return sub_2225DE544(v6);
}

void *WaitingAppStateDataSource.deinit()
{

  return v0;
}

uint64_t WaitingAppStateDataSource.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

void sub_222619AC8()
{
  v1 = *(*v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  sub_2225F7954(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_222619B40()
{
  v1 = *(*v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  sub_222618894(v2);
  os_unfair_lock_unlock(v1 + 4);
  return 1;
}

uint64_t sub_222619BBC()
{
  v1 = *(*v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  sub_222618894(v2);
  os_unfair_lock_unlock(v1 + 4);
  return 1;
}

unint64_t sub_222619C30(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22261B4C0() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_22261B700();
      MEMORY[0x223DBBB60](v9);
      result = sub_22261B740();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v3);
      v13 = (v11 + 8 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for State(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_222619E00(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22261B4C0() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + v6);
      sub_22261B700();
      MEMORY[0x223DBBB40](v9);
      result = sub_22261B740();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + v3);
      v13 = (v11 + v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for State(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_222619FD0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22261B4C0() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_22261B700();
      MEMORY[0x223DBBB60](v10);
      result = sub_22261B740();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (v3 != v6 || v16 >= v17 + 24)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_22261A170()
{
  v1 = v0;
  v2 = type metadata accessor for State(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A48, &qword_22261D398);
  v5 = *v0;
  v6 = sub_22261B5C0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        sub_2225D8D00(*(v5 + 56) + v22, v4);
        *(*(v7 + 48) + 8 * v20) = v21;
        result = sub_2225DDDD0(v4, *(v7 + 56) + v22);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_22261A37C()
{
  v1 = v0;
  v2 = type metadata accessor for State(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A00, &unk_22261D350);
  v5 = *v0;
  v6 = sub_22261B5C0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + v20);
        v22 = *(v24 + 72) * v20;
        sub_2225D8D00(*(v5 + 56) + v22, v4);
        *(*(v7 + 48) + v20) = v21;
        result = sub_2225DDDD0(v4, *(v7 + 56) + v22);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_22261A588()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A30, &unk_22261D380);
  v2 = *v0;
  v3 = sub_22261B5C0();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_22261A6F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A28, &qword_22261D378);
  v2 = *v0;
  v3 = sub_22261B5C0();
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
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *(v18 + 16);
        v20 = *v18;
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = *(v4 + 56) + 24 * v17;
        *v21 = v20;
        *(v21 + 16) = v19;
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

void *sub_22261A864()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A10, &qword_22261D360);
  v2 = *v0;
  v3 = sub_22261B5C0();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_22261A9C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A08, &qword_22261E3A0);
  v2 = *v0;
  v3 = sub_22261B5C0();
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
        v18 = 16 * v17;
        v19 = *(v2 + 48) + 16 * v17;
        v20 = *v19;
        LOBYTE(v19) = *(v19 + 8);
        v17 *= 56;
        v21 = *(v2 + 56) + v17;
        v22 = *(v21 + 16);
        v24 = *(v21 + 24);
        v23 = *(v21 + 32);
        v25 = *(v21 + 40);
        v26 = *(v21 + 48);
        v27 = *(v4 + 48) + v18;
        v28 = *v21;
        *v27 = v20;
        *(v27 + 8) = v19;
        v29 = *(v4 + 56) + v17;
        *v29 = v28;
        *(v29 + 16) = v22;
        *(v29 + 24) = v24;
        *(v29 + 32) = v23;
        *(v29 + 40) = v25;
        *(v29 + 48) = v26;
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