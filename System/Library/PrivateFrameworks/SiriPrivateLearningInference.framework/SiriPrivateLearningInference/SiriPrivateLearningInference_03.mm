uint64_t sub_222B70A9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025648, &qword_222C9B8E0);
  result = sub_222C94CDC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      sub_222C952FC();
      sub_222C9452C();

      result = sub_222C9534C();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_222B70DDC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025650, &unk_222C98A70);
  result = sub_222C94CDC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_222C952FC();
      sub_222C9452C();

      result = sub_222C9534C();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_222B710B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025660, &unk_222CA0990);
  result = sub_222C94CDC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v20 = *(v3 + 48) + 56 * (v17 | (v6 << 6));
      v21 = *v20;
      v22 = *(v20 + 48);
      v23 = *(v20 + 32);
      v33 = *(v20 + 16);
      v34 = v23;
      v35 = v22;
      v32 = v21;
      sub_222C952FC();
      sub_222B554C0(&v32, v31);
      sub_222C9452C();
      result = sub_222C9534C();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v11 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v11 + 8 * v26);
          if (v30 != -1)
          {
            v12 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v25) & ~*(v11 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 56 * v12;
      v14 = v32;
      v15 = v33;
      v16 = v34;
      *(v13 + 48) = v35;
      *(v13 + 16) = v15;
      *(v13 + 32) = v16;
      *v13 = v14;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v19 = *(v3 + 56 + 8 * v6);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_222B7131C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_222C942CC();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0256A8, &qword_222C98AA0);
  v7 = sub_222C94CDC();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_222B72D78(&qword_27D025698, MEMORY[0x277D5FCE8], MEMORY[0x277D5FCF0]);
      result = sub_222C9440C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_222B71638(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025688, &unk_222C98A90);
  result = sub_222C94CDC();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[3];
      v30 = v18[2];
      sub_222C952FC();

      sub_222C9452C();
      result = sub_222C9534C();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      *v14 = v19;
      v14[1] = v20;
      v3 = v29;
      v14[2] = v30;
      v14[3] = v21;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_222B71888(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025670, &qword_222C98A88);
  result = sub_222C94CDC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_222C952FC();
      MEMORY[0x223DCA0B0](v16);
      result = sub_222C9534C();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t _s28SiriPrivateLearningInference13CoreDuetEventV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_222C951FC() & 1) == 0)
  {
    return 0;
  }

  v9 = v3 == v6 && v4 == v7;
  if (!v9 && (sub_222C951FC() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v2 + 16);
  if (v10 != *(v5 + 16))
  {
    return 0;
  }

  v12 = 0;
  for (i = 32; ; i += 40)
  {
    if (v10 == v12)
    {

      return 1;
    }

    if (v12 >= *(v2 + 16))
    {
      break;
    }

    result = sub_222B43E3C(v2 + i, v17);
    v14 = *(v5 + 16);
    if (v12 == v14)
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      return 1;
    }

    if (v12++ >= v14)
    {
      goto LABEL_26;
    }

    sub_222B405A0(v17, v18);
    sub_222B43E3C(v5 + i, &v19);
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    v15 = sub_222C93C2C();
    if (v15 == 2)
    {

      sub_222B4FCD4(v18, &qword_27D0256F0, &qword_222C98AD8);
      return 0;
    }

    v16 = v15;
    result = sub_222B4FCD4(v18, &qword_27D0256F0, &qword_222C98AD8);
    if ((v16 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_222B71CA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_222B72AF4();
  result = MEMORY[0x223DC96B0](v2, &type metadata for MediaReference, v3);
  v12 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 16);
      v13[0] = *v5;
      v7 = *(v5 + 32);
      v13[1] = v6;
      v13[2] = v7;
      v14 = *(v5 + 48);
      sub_222B554C0(v13, v10);
      sub_222B6A674(v8, v13);
      v10[0] = v8[0];
      v10[1] = v8[1];
      v10[2] = v8[2];
      v11 = v9;
      sub_222B55A80(v10);
      v5 += 56;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

uint64_t sub_222B71D68(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_222C94C6C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = sub_222C9378C();
  v5 = sub_222B72D78(&qword_27D0256B0, MEMORY[0x277D5E850], &protocol conformance descriptor for UsoEntity_common_Person);
  result = MEMORY[0x223DC96B0](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x223DC9B30](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_222B68DD8(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = sub_222C94C6C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_222B71ED4(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_222C94C6C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = sub_222C9386C();
  v5 = sub_222B72D78(&qword_27D0256C0, MEMORY[0x277D5E9D8], &protocol conformance descriptor for UsoEntity_common_MediaItem);
  result = MEMORY[0x223DC96B0](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x223DC9B30](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_222B69110(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = sub_222C94C6C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_222B72040(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223DC96B0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_222B69B4C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_222B720D8(uint64_t a1)
{
  v2 = sub_222C9367C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_222B72D78(&qword_280FE02A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  result = MEMORY[0x223DC96B0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_222B69C9C(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_222B72274(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223DC96B0](v2, MEMORY[0x277D83690], MEMORY[0x277D83698]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_222B69F7C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_222B72308(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_222B72340()
{
  result = qword_27D025640;
  if (!qword_27D025640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D024F20, &unk_222C96CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025640);
  }

  return result;
}

uint64_t sub_222B723A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_222B7240C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_222B72488(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_222B724D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_222B72550(uint64_t a1)
{
  sub_222C9367C();
  if (v1 <= 0x3F)
  {
    sub_222B7280C(319, &qword_280FE02B0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_222B72634(319);
      if (v3 <= 0x3F)
      {
        sub_222B72698();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_222B72634(uint64_t a1)
{
  if (!qword_280FDB800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D024858, &qword_222C98950);
    v1 = sub_222C947FC();
    if (!v2)
    {
      atomic_store(v1, &qword_280FDB800);
    }
  }
}

void sub_222B72698()
{
  if (!qword_280FDB7F8)
  {
    v0 = sub_222C947FC();
    if (!v1)
    {
      atomic_store(v0, &qword_280FDB7F8);
    }
  }
}

void sub_222B72710(uint64_t a1)
{
  sub_222B7280C(319, &qword_280FDB7E0, type metadata accessor for FeaturisedTurn, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_222C9367C();
    if (v2 <= 0x3F)
    {
      sub_222B7280C(319, &qword_280FE0290, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_222B7280C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_222B72870(uint64_t a1)
{
  v2 = sub_222C942CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_222B72D78(&qword_27D025698, MEMORY[0x277D5FCE8], MEMORY[0x277D5FCF0]);
  result = MEMORY[0x223DC96B0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_222B6A8B4(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_222B72A74(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x223DC96B0](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

unint64_t sub_222B72AF4()
{
  result = qword_27D025658;
  if (!qword_27D025658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025658);
  }

  return result;
}

uint64_t sub_222B72B48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222B72BB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_222B72C10()
{
  result = qword_27D025678;
  if (!qword_27D025678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025678);
  }

  return result;
}

uint64_t sub_222B72C64(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_222B72D24();
  result = MEMORY[0x223DC96B0](v2, &type metadata for ContactReference, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 56);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);

      sub_222B6AB94(&v10, v9, v8, v7, v6);

      v5 += 4;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

unint64_t sub_222B72D24()
{
  result = qword_27D025680;
  if (!qword_27D025680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025680);
  }

  return result;
}

uint64_t sub_222B72D78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_222B72DC0()
{
  type metadata accessor for MessagesDeadEndClassifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0256F8, qword_222C98B58);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_280FDE3A8 = 91;
  qword_280FDE3B0 = 0xE100000000000000;
  return result;
}

uint64_t sub_222B72E4C(uint64_t a1)
{
  v2 = type metadata accessor for RuleResult(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CD0, &qword_222C98B50);
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CC8, &unk_222C96AA0) - 8);
  v6 = *(*v5 + 72);
  v7 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_222C98AE0;
  v9 = (v8 + v7);
  *v9 = 0xD00000000000001DLL;
  v9[1] = 0x8000000222CA9AF0;
  sub_222B77FE8(a1);
  swift_storeEnumTagMultiPayload();
  sub_222B73D68(v4, v8 + v7 + v5[14], type metadata accessor for RuleResult);
  v10 = (v8 + v7 + v6);
  v11 = v5[14];
  *v10 = 0xD00000000000002BLL;
  v10[1] = 0x8000000222CA9B10;
  sub_222B73068(a1, v10 + v11);
  v12 = (v8 + v7 + 2 * v6);
  v13 = v5[14];
  *v12 = 0xD00000000000001CLL;
  v12[1] = 0x8000000222CA9B40;
  sub_222C432CC(a1, (v12 + v13));
  v14 = (v8 + v7 + 3 * v6);
  v15 = v5[14];
  *v14 = 0xD00000000000001BLL;
  *(v14 + 1) = 0x8000000222CA9B60;
  sub_222C3D810(a1, &v14[v15]);
  return v8;
}

uint64_t sub_222B73068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v63 = sub_222C93EAC();
  v3 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v56[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v62 = &v56[-v6];
  MEMORY[0x28223BE20](v7);
  v9 = &v56[-v8];
  v10 = sub_222C9409C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v56[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(a1 + *(type metadata accessor for FeaturisedTurn(0) + 24));
  v15 = sub_222B41FA0(v14);
  if (v15)
  {
    if (v15[2])
    {
      v17 = v15[4];
      v16 = v15[5];

      goto LABEL_6;
    }
  }

  v17 = 0;
  v16 = 0;
LABEL_6:
  (*(v11 + 104))(v13, *MEMORY[0x277D5FC10], v10);
  v18 = sub_222C9408C();
  v20 = v19;
  (*(v11 + 8))(v13, v10);
  if (!v16)
  {
    goto LABEL_26;
  }

  if (v17 == v18 && v16 == v20)
  {
  }

  else
  {
    v22 = sub_222C951FC();

    if ((v22 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v23 = sub_222B41FB8(v14);
  if (!v23)
  {
LABEL_18:
    type metadata accessor for RuleResult(0);
    return swift_storeEnumTagMultiPayload();
  }

  v60 = v23;
  v25 = (v23 + 16);
  v24 = *(v23 + 16);
  if (v24)
  {
    v26 = &v25[2 * v24];
    v28 = *v26;
    v27 = v26[1];
  }

  else
  {
    v28 = 0;
    v27 = 0;
  }

  v30 = *(v3 + 104);
  v57 = *MEMORY[0x277D5FB70];
  v31 = v63;
  v58 = v30;
  v59 = v3 + 104;
  v30(v9);
  v32 = sub_222C93E9C();
  v34 = v33;
  v35 = *(v3 + 8);
  v35(v9, v31);
  if (v27)
  {
    if (v28 == v32 && v27 == v34)
    {

LABEL_26:

      goto LABEL_18;
    }

    v36 = sub_222C951FC();

    if (v36)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  if (v24)
  {
    if (v24 > *v25)
    {
      __break(1u);
      goto LABEL_51;
    }

    v37 = &v25[2 * v24];
    v39 = *v37;
    v38 = v37[1];
  }

  else
  {
    v39 = 0;
    v38 = 0;
  }

  v41 = v62;
  v40 = v63;
  v58(v62, *MEMORY[0x277D5FB68], v63);
  v42 = sub_222C93E9C();
  v44 = v43;
  v35(v41, v40);
  if (!v38)
  {

    goto LABEL_26;
  }

  if (v39 == v42 && v38 == v44)
  {
  }

  else
  {
    v45 = sub_222C951FC();

    if ((v45 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v46 = *v25;
  v47 = *v25 - 2;
  if (*v25 < 2)
  {
    v47 = 0;
  }

  if (v47 == v46)
  {

    v48 = 0;
    v49 = 0;
    goto LABEL_44;
  }

  if (v47 < v46)
  {
    v50 = v60 + 16 * v47;
    v48 = *(v50 + 32);
    v49 = *(v50 + 40);

LABEL_44:
    v51 = v63;
    v52 = v61;
    v58(v61, v57, v63);
    v53 = sub_222C93E9C();
    v55 = v54;
    v35(v52, v51);
    if (v49)
    {
      if (v48 == v53 && v49 == v55)
      {
      }

      else
      {
        sub_222C951FC();
      }

      goto LABEL_18;
    }

    goto LABEL_26;
  }

LABEL_51:
  __break(1u);
  return result;
}

void *sub_222B73654(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v43 - v3;
  v5 = type metadata accessor for FeaturisedTurn(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222C434E4(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_222B6537C(v4);
    if (*(a1 + 16))
    {
LABEL_3:
      v9 = sub_222C9360C();
      v11 = v10;
LABEL_7:
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v15 = sub_222C9431C();
      __swift_project_value_buffer(v15, qword_280FE2340);

      v16 = sub_222C942FC();
      v17 = sub_222C94A3C();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v44 = v19;
        *v18 = 136315394;
        if (qword_280FDE3A0 != -1)
        {
          swift_once();
        }

        *(v18 + 4) = sub_222B437C0(qword_280FDE3A8, qword_280FDE3B0, &v44);
        *(v18 + 12) = 2080;
        v20 = sub_222B437C0(v9, v11, &v44);

        *(v18 + 14) = v20;
        _os_log_impl(&dword_222B39000, v16, v17, "%s Skipping conversation with id=%s with no dismissal features", v18, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DCA8C0](v19, -1, -1);
        MEMORY[0x223DCA8C0](v18, -1, -1);
      }

      else
      {
      }

      return MEMORY[0x277D84F90];
    }

LABEL_6:
    v11 = 0x8000000222CA9B80;
    v9 = 0xD000000000000014;
    goto LABEL_7;
  }

  sub_222B73D68(v4, v8, type metadata accessor for FeaturisedTurn);
  v12 = *&v8[*(v5 + 24)];
  v13 = sub_222B41494(v12);
  if (v14)
  {
    sub_222B73DD0(v8);
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  v21 = v13;
  v22 = sub_222B72E4C(v8);
  if (qword_280FDE3A0 != -1)
  {
    swift_once();
  }

  v23 = qword_280FDE3A8;
  v24 = qword_280FDE3B0;
  sub_222C8A24C(qword_280FDE3A8, qword_280FDE3B0, v22);
  v25 = sub_222C1EC00(v22);

  if (!v25)
  {
LABEL_38:
    sub_222B73DD0(v8);
    return MEMORY[0x277D84F90];
  }

  v26 = sub_222B41B30(v12);
  if (!v26)
  {
LABEL_33:
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v38 = sub_222C9431C();
    __swift_project_value_buffer(v38, qword_280FE2340);
    v39 = sub_222C942FC();
    v40 = sub_222C94A3C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v44 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_222B437C0(v23, v24, &v44);
      _os_log_impl(&dword_222B39000, v39, v40, "%s message does not have 1 recipient, rejecting", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x223DCA8C0](v42, -1, -1);
      MEMORY[0x223DCA8C0](v41, -1, -1);
    }

    goto LABEL_38;
  }

  v27 = v26;
  v28 = v26 >> 62;
  if (!(v26 >> 62))
  {
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_21;
    }

    goto LABEL_32;
  }

  if (sub_222C94C6C() != 1)
  {
LABEL_32:

    goto LABEL_33;
  }

LABEL_21:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C60, &unk_222C9BC50);
  v29 = swift_allocObject();
  v43 = xmmword_222C97C40;
  v30 = v29;
  *(v29 + 16) = xmmword_222C97C40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F30, &qword_222C96CE0);
  v31 = sub_222C9367C();
  v32 = *(v31 - 8);
  v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v43;
  (*(v32 + 16))(v34 + v33, v8, v31);
  if (v28)
  {
    result = sub_222C94C6C();
  }

  else
  {
    result = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!result)
  {

    v36 = 0;
    goto LABEL_30;
  }

  if ((v27 & 0xC000000000000001) != 0)
  {
    v36 = MEMORY[0x223DC9B30](0, v27);
    goto LABEL_28;
  }

  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v36 = *(v27 + 32);

LABEL_28:

LABEL_30:
    v30[7] = &type metadata for MessagesAbandonmentClassification;
    v30[8] = &protocol witness table for MessagesAbandonmentClassification;
    v37 = swift_allocObject();
    v30[4] = v37;
    v37[2] = v21;
    v37[3] = v34;
    v37[4] = MEMORY[0x277D84F90];
    v37[5] = v36;
    sub_222B73DD0(v8);
    return v30;
  }

  __break(1u);
  return result;
}

uint64_t sub_222B73D68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222B73DD0(uint64_t a1)
{
  v2 = type metadata accessor for FeaturisedTurn(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222B73E2C()
{

  return swift_deallocClassInstance();
}

unint64_t CoreDuetEventType.rawValue.getter()
{
  v1 = 0xD000000000000013;
  if (!*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

SiriPrivateLearningInference::CoreDuetEventType_optional __swiftcall CoreDuetEventType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222C94FDC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_222B73F64()
{
  result = qword_27D025700;
  if (!qword_27D025700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025700);
  }

  return result;
}

uint64_t sub_222B73FB8()
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222B74064(uint64_t a1)
{
  sub_222C9452C();
}

uint64_t sub_222B740FC(uint64_t a1)
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

void sub_222B741B0(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000011;
  v3 = "nerationTriggered";
  v4 = "INSendMessageIntent";
  if (*v1 != 2)
  {
    v4 = "INPlayMediaIntent";
  }

  v5 = 0xD000000000000013;
  if (*v1)
  {
    v3 = "INStartCallIntent";
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (*v1 > 1u)
  {
    v6 = v4;
  }

  else
  {
    v2 = v5;
    v6 = v3;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t getEnumTagSinglePayload for CoreDuetEventType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CoreDuetEventType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_222B7436C(void *a1, double a2, double a3, double a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025798, &qword_222C98F38);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222B75B60();
  sub_222C9536C();
  v11[15] = 0;
  sub_222C9510C();
  if (!v4)
  {
    v11[14] = 1;
    sub_222C9510C();
    v11[13] = 2;
    sub_222C9510C();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_222B74524()
{
  v1 = 6581861;
  if (*v0 != 1)
  {
    v1 = 0x61566C616E676973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_222B7457C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_222B7586C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_222B745A4(uint64_t a1)
{
  v2 = sub_222B75B60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B745E0(uint64_t a1)
{
  v2 = sub_222B75B60();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_222B7461C(double *a1@<X8>, void *a2@<X0>)
{
  v4 = sub_222B75984(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v5;
    *(a1 + 2) = v6;
  }
}

BOOL static ScoreStep.== infix(_:_:)(double *a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v24[10] = v12;
  v24[11] = v13;
  v24[0] = a3;
  v24[1] = a4;
  v24[2] = a5;
  v24[3] = a6;
  v23 = type metadata accessor for ScoreStep(0, v24);
  return static DomainSuggestionSignal.== infix(_:_:)(a1 + *(v23 + 52), a2 + *(v23 + 52), a3, a4, a5, a6);
}

uint64_t sub_222B74764(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61684365726F6373 && a2 == 0xEB0000000065676ELL;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E676973 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_222C951FC();

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

uint64_t sub_222B74868(char a1)
{
  sub_222C952FC();
  MEMORY[0x223DCA0B0](a1 & 1);
  return sub_222C9534C();
}

uint64_t sub_222B748B0(char a1)
{
  if (a1)
  {
    return 0x6C616E676973;
  }

  else
  {
    return 0x61684365726F6373;
  }
}

uint64_t sub_222B7492C(uint64_t a1)
{
  sub_222C952FC();
  sub_222B74840(v3, *v1);
  return sub_222C9534C();
}

uint64_t sub_222B7498C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222B74764(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222B749C0@<X0>(_BYTE *a2@<X8>)
{
  result = sub_222B75B58();
  *a2 = result;
  return result;
}

uint64_t sub_222B749F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_222B74A48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t ScoreStep.encode(to:)(void *a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[4];
  v5 = a2[5];
  v16 = a2[3];
  v17 = v3;
  *&v20 = v3;
  *(&v20 + 1) = v16;
  v14 = v5;
  v15 = v4;
  v21 = v4;
  v22 = v5;
  type metadata accessor for ScoreStep.CodingKeys(255, &v20);
  swift_getWitnessTable();
  v6 = sub_222C9513C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v18;
  sub_222C9536C();
  v11 = *(v10 + 2);
  v20 = *v10;
  v21 = v11;
  v23 = 0;
  sub_222B74CC8();
  v12 = v19;
  sub_222C9512C();
  if (!v12)
  {
    v23 = 1;
    *&v20 = v17;
    *(&v20 + 1) = v16;
    v21 = v15;
    v22 = v14;
    type metadata accessor for DomainSuggestionSignal(0, &v20);
    swift_getWitnessTable();
    sub_222C9512C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_222B74CC8()
{
  result = qword_27D025708;
  if (!qword_27D025708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025708);
  }

  return result;
}

uint64_t ScoreStep.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v32 = a2;
  v26 = a6;
  *(&v32 + 1) = a3;
  v33 = a4;
  v34 = a5;
  v29 = type metadata accessor for DomainSuggestionSignal(0, &v32);
  v25 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - v11;
  *&v32 = a2;
  *(&v32 + 1) = a3;
  v33 = a4;
  v34 = a5;
  type metadata accessor for ScoreStep.CodingKeys(255, &v32);
  swift_getWitnessTable();
  v30 = sub_222C9509C();
  v27 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v13 = &v24 - v12;
  *&v32 = a2;
  *(&v32 + 1) = a3;
  v33 = a4;
  v34 = a5;
  v14 = type metadata accessor for ScoreStep(0, &v32);
  v24 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v31;
  sub_222C9535C();
  if (v17)
  {
    v23 = a1;
  }

  else
  {
    v31 = a1;
    v19 = v27;
    v18 = v28;
    v20 = v29;
    v35 = 0;
    sub_222B750A4();
    sub_222C9507C();
    v21 = v33;
    *v16 = v32;
    *(v16 + 2) = v21;
    LOBYTE(v32) = 1;
    swift_getWitnessTable();
    sub_222C9507C();
    (*(v19 + 8))(v13, v30);
    (*(v25 + 32))(&v16[*(v14 + 52)], v18, v20);
    (*(v24 + 32))(v26, v16, v14);
    v23 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v23);
}

unint64_t sub_222B750A4()
{
  result = qword_27D025710[0];
  if (!qword_27D025710[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D025710);
  }

  return result;
}

uint64_t sub_222B750F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double *a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>)
{
  *a6 = a7;
  a6[1] = a8;
  a6[2] = a9;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v15 = *(type metadata accessor for ScoreStep(0, &v18) + 52);
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v16 = type metadata accessor for DomainSuggestionSignal(0, &v18);
  return (*(*(v16 - 8) + 32))(a6 + v15, a1, v16);
}

uint64_t sub_222B75208(uint64_t a1)
{
  v5 = 0;
  v7 = &type metadata for ScoreChange;
  v1 = *(a1 + 32);
  v4[0] = *(a1 + 16);
  v4[1] = v1;
  result = type metadata accessor for DomainSuggestionSignal(319, v4);
  if (v3 <= 0x3F)
  {
    v6 = 0;
    v8 = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_222B75290(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0xF7)
  {
    v8 = 247;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  if (v6)
  {
    v10 = -2;
  }

  else
  {
    v10 = -1;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_32;
  }

  v12 = v10 + *(*(*(a3 + 16) - 8) + 64) - (((-2 - v9) | v9) + ((-25 - v9) | v9));
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v16 < 2)
    {
LABEL_32:
      v18 = ((a1 + v9 + 24) & ~v9);
      if (v7 > 0xF7)
      {
        v21 = (*(v5 + 48))(&v18[v9 + 1] & ~v9);
        if (v21 >= 2)
        {
          return v21 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v19 = *v18;
        if (v19 >= 3)
        {
          v20 = v19 - 2;
        }

        else
        {
          v20 = 0;
        }

        if (v20 >= 7)
        {
          return v20 - 6;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_32;
  }

LABEL_21:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return v8 + (v12 | v17) + 1;
}

void sub_222B75478(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v7 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (v9 <= 0xF7)
  {
    v12 = 247;
  }

  else
  {
    v12 = v9;
  }

  if (!v8)
  {
    ++v11;
  }

  v13 = v11 - (((-2 - v10) | v10) + ((-25 - v10) | v10)) - 2;
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 == 0 || !v14)
  {
LABEL_21:
    if (v12 < a2)
    {
      goto LABEL_22;
    }

    goto LABEL_31;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v12 < a2)
    {
      goto LABEL_22;
    }

    goto LABEL_31;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
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
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_21;
  }

  v6 = 4;
  if (v12 < a2)
  {
LABEL_22:
    v18 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v11 - (((-2 - v10) | v10) + ((-25 - v10) | v10)) != 2)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_61:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_61;
            }
          }

          goto LABEL_58;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_61;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_61;
      }
    }

LABEL_58:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_31:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *&a1[v13] = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v6)
  {
    goto LABEL_37;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  v21 = (&a1[v10 + 24] & ~v10);
  if (v9 > 0xF7)
  {
    v22 = (&v21[v10 + 1] & ~v10);
    if (v9 >= a2)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;

      v26(&v21[v10 + 1] & ~v10, v27);
    }

    else
    {
      if (v11 <= 3)
      {
        v23 = ~(-1 << (8 * v11));
      }

      else
      {
        v23 = -1;
      }

      if (v11)
      {
        v24 = v23 & (~v9 + a2);
        if (v11 <= 3)
        {
          v25 = v11;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v11);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else
  {
    *v21 = a2 + 8;
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ScoreChange(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScoreChange(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_222B7586C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61566C616E676973 && a2 == 0xEB0000000065756CLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_222C951FC();

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

double sub_222B75984(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257A8, &qword_222C98F40);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222B75B60();
  sub_222C9535C();
  v12 = 0;
  sub_222C9505C();
  v7 = v6;
  v11 = 1;
  sub_222C9505C();
  v10 = 2;
  sub_222C9505C();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

unint64_t sub_222B75B60()
{
  result = qword_27D0257A0;
  if (!qword_27D0257A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0257A0);
  }

  return result;
}

unint64_t sub_222B75BC8()
{
  result = qword_27D0257B0;
  if (!qword_27D0257B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0257B0);
  }

  return result;
}

unint64_t sub_222B75C20()
{
  result = qword_27D0257B8;
  if (!qword_27D0257B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0257B8);
  }

  return result;
}

unint64_t sub_222B75C78()
{
  result = qword_27D0257C0;
  if (!qword_27D0257C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0257C0);
  }

  return result;
}

uint64_t MediaPlayClassifier.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257C8, &qword_222C99050);
  v1 = sub_222C944EC();
  MEMORY[0x223DC9330](v1);

  MEMORY[0x223DC9330](93, 0xE100000000000000);
  *(v0 + 16) = 91;
  *(v0 + 24) = 0xE100000000000000;
  return v0;
}

uint64_t MediaPlayClassifier.init()()
{
  type metadata accessor for MediaPlayClassifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257C8, &qword_222C99050);
  v1 = sub_222C944EC();
  MEMORY[0x223DC9330](v1);

  MEMORY[0x223DC9330](93, 0xE100000000000000);
  *(v0 + 16) = 91;
  *(v0 + 24) = 0xE100000000000000;
  return v0;
}

uint64_t sub_222B75E28@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v134 = a2;
  v7 = sub_222C9367C();
  v135 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MediaPlayClassification(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v133 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v136 = &v119 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = (&v119 - v16);
  v18 = a1[1];
  v137 = *a1;
  v19 = a1[2];
  sub_222B42228(v19, &v146);
  if (!v147)
  {
    if (qword_280FDF1F0 != -1)
    {
      swift_once();
    }

    *(&v144 + 1) = &type metadata for PIMSConstraintMismatch;
    *v145 = sub_222B77B4C();
    *&v143 = 0xD000000000000016;
    *(&v143 + 1) = 0x8000000222CA9C80;
    LOBYTE(v144) = 0;
    sub_222C93B5C();
    __swift_destroy_boxed_opaque_existential_0Tm(&v143);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v61 = sub_222C9431C();
    __swift_project_value_buffer(v61, qword_280FE2340);

    v62 = sub_222C942FC();
    v63 = sub_222C94A3C();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = v11;
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v67 = v4;
      v68 = v66;
      *&v143 = v66;
      *v65 = 136315138;
      *(v65 + 4) = sub_222B437C0(*(v67 + 16), *(v67 + 24), &v143);
      _os_log_impl(&dword_222B39000, v62, v63, "%s Can't classify media play, attached now playing event not found", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v68);
      MEMORY[0x223DCA8C0](v68, -1, -1);
      v69 = v65;
      v11 = v64;
      MEMORY[0x223DCA8C0](v69, -1, -1);
    }

    return (*(v11 + 56))(a3, 1, 1, v10);
  }

  v127 = v18;
  v138 = v147;
  v20 = v10;
  v128 = v9;
  v126 = v7;
  v21 = a3;
  v139 = v11;
  v22 = v146;
  v24 = v148;
  v23 = v149;
  v25 = v150;
  sub_222B4183C(v19, &v140);
  v143 = v140;
  v144 = v141;
  *v145 = v142[0];
  *&v145[9] = *(v142 + 9);
  v26 = *(&v140 + 1);
  if (!*(&v140 + 1))
  {
    sub_222B5EE44(v22, v138, v24, v23, v25);
LABEL_22:
    v51 = v20;
LABEL_23:
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v71 = sub_222C9431C();
    __swift_project_value_buffer(v71, qword_280FE2340);

    v54 = sub_222C942FC();
    v55 = sub_222C94A4C();

    if (!os_log_type_enabled(v54, v55))
    {
      goto LABEL_28;
    }

    v56 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v73 = v4;
    v59 = v72;
    *&v140 = v72;
    *v56 = 136315138;
    *(v56 + 4) = sub_222B437C0(*(v73 + 16), *(v73 + 24), &v140);
    v60 = "%s Cannot extract media ids from NowPlayingEvent/PlayMediaIntent";
    goto LABEL_27;
  }

  v130 = v22;
  v131 = v23;
  v132 = v25;
  v122 = v17;
  v129 = v4;
  v27 = v143;

  v29 = sub_222B423A0(v28);
  v31 = v30;

  v125 = v31;
  if (!v31)
  {
    sub_222B5EE44(v130, v138, v24, v131, v132);
    sub_222B4FCD4(&v143, &qword_27D025370, &qword_222C98310);
    v4 = v129;
    goto LABEL_22;
  }

  v124 = v20;
  v123 = v21;
  *&v140 = 47;
  *(&v140 + 1) = 0xE100000000000000;
  MEMORY[0x28223BE20](v32);
  *(&v119 - 2) = &v140;

  v34 = sub_222B76E28(0x7FFFFFFFFFFFFFFFLL, 1, sub_222B77BA0, (&v119 - 4), v27, v26, v33);
  sub_222B4FCD4(&v143, &qword_27D025370, &qword_222C98310);
  v35 = *(v34 + 16);
  if (!v35)
  {
    sub_222B5EE44(v130, v138, v24, v131, v132);

    v21 = v123;
    v51 = v124;
    v4 = v129;
    goto LABEL_23;
  }

  v36 = v24;
  v37 = (v34 + 32 * v35);
  v39 = *v37;
  v38 = v37[1];
  v41 = v37[2];
  v40 = v37[3];

  v121 = v38;
  v120 = v41;
  v42 = v125;
  v43 = sub_222B77240(v39, v38, v41, v40, v29, v125);
  v44 = v132;
  v45 = v131;
  v46 = v130;
  if (v43)
  {

    v48 = sub_222B423B8(v47);
    v50 = v49;

    if (v50)
    {
      sub_222B5EE44(v46, v138, v36, v45, v44);
      v51 = v124;
      if (qword_280FDF1F0 != -1)
      {
        swift_once();
      }

      *(&v141 + 1) = &type metadata for PIMSConstraintMismatch;
      *&v142[0] = sub_222B77B4C();
      *&v140 = 0xD000000000000016;
      *(&v140 + 1) = 0x8000000222CA9C80;
      LOBYTE(v141) = 2;
      sub_222C93B5C();
      __swift_destroy_boxed_opaque_existential_0Tm(&v140);
      v21 = v123;
      v52 = v129;
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v53 = sub_222C9431C();
      __swift_project_value_buffer(v53, qword_280FE2340);

      v54 = sub_222C942FC();
      v55 = sub_222C94A4C();

      if (!os_log_type_enabled(v54, v55))
      {
        goto LABEL_28;
      }

      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58 = v52;
      v59 = v57;
      *&v140 = v57;
      *v56 = 136315138;
      *(v56 + 4) = sub_222B437C0(*(v58 + 16), *(v58 + 24), &v140);
      v60 = "%s Cannot extract TotalPlayLength from NowPlayingEvent";
LABEL_27:
      _os_log_impl(&dword_222B39000, v54, v55, v60, v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v59);
      MEMORY[0x223DCA8C0](v59, -1, -1);
      MEMORY[0x223DCA8C0](v56, -1, -1);
LABEL_28:

      return (*(v139 + 56))(v21, 1, 1, v51);
    }

    v88 = sub_222B41CFC(v19);
    v89 = v46;
    v90 = v135;
    v91 = *(v135 + 16);
    v92 = v128;
    v93 = v126;
    v91(v128, v134, v126);
    v94 = v122;
    *v122 = v48;
    *(v94 + 8) = v88 & 1;
    v95 = v127;
    *(v94 + 16) = v137;
    *(v94 + 24) = v95;
    *(v94 + 32) = v89;
    v96 = v138;
    *(v94 + 40) = v138;
    v97 = *(v124 + 32);
    v91((v94 + v97), v92, v93);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F30, &qword_222C96CE0);
    v98 = (*(v90 + 80) + 32) & ~*(v90 + 80);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_222C97C40;
    v91((v99 + v98), v94 + v97, v93);
    v100 = v124;
    *(v94 + *(v124 + 36)) = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024ED0, &qword_222C96C80);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_222C96900;
    *(v101 + 32) = v137;
    v102 = v130;
    *(v101 + 40) = v127;
    *(v101 + 48) = v102;
    *(v101 + 56) = v96;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_222B5EE44(v102, v96, v36, v131, v132);
    (*(v90 + 8))(v128, v93);
    *(v94 + *(v100 + 40)) = v101;
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v103 = sub_222C9431C();
    __swift_project_value_buffer(v103, qword_280FE2340);
    v104 = v136;
    sub_222B77C5C(v94, v136, type metadata accessor for MediaPlayClassification);
    v105 = v129;

    v106 = sub_222C942FC();
    v107 = sub_222C94A3C();

    v108 = os_log_type_enabled(v106, v107);
    v109 = v123;
    if (v108)
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v112 = v105;
      v113 = v111;
      *&v140 = v111;
      *v110 = 136315394;
      *(v110 + 4) = sub_222B437C0(*(v112 + 16), *(v112 + 24), &v140);
      *(v110 + 12) = 2080;
      sub_222B77C5C(v104, v133, type metadata accessor for MediaPlayClassification);
      v114 = sub_222C944EC();
      v116 = v115;
      sub_222B77D34(v104, type metadata accessor for MediaPlayClassification);
      v100 = v124;
      v117 = sub_222B437C0(v114, v116, &v140);

      *(v110 + 14) = v117;
      _os_log_impl(&dword_222B39000, v106, v107, "%s classification generated: %s", v110, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v113, -1, -1);
      v118 = v110;
      v109 = v123;
      MEMORY[0x223DCA8C0](v118, -1, -1);
    }

    else
    {

      sub_222B77D34(v104, type metadata accessor for MediaPlayClassification);
    }

    sub_222B77BF8(v94, v109);
    return (*(v139 + 56))(v109, 0, 1, v100);
  }

  else
  {
    v137 = v39;
    v74 = v29;
    sub_222B5EE44(v130, v138, v36, v131, v132);
    v75 = v124;
    if (qword_280FDF1F0 != -1)
    {
      swift_once();
    }

    *(&v141 + 1) = &type metadata for PIMSConstraintMismatch;
    *&v142[0] = sub_222B77B4C();
    *&v140 = 0xD000000000000016;
    *(&v140 + 1) = 0x8000000222CA9C80;
    LOBYTE(v141) = 1;
    sub_222C93B5C();
    __swift_destroy_boxed_opaque_existential_0Tm(&v140);
    v76 = v129;
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v77 = sub_222C9431C();
    __swift_project_value_buffer(v77, qword_280FE2340);

    v78 = sub_222C942FC();
    v79 = sub_222C94A4C();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = v76;
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *&v140 = v82;
      *v81 = 136315650;
      *(v81 + 4) = sub_222B437C0(*(v80 + 16), *(v80 + 24), &v140);
      *(v81 + 12) = 2080;
      v83 = sub_222B437C0(v74, v42, &v140);

      *(v81 + 14) = v83;
      *(v81 + 22) = 2080;
      v84 = MEMORY[0x223DC92B0](v137, v121, v120, v40);
      v86 = v85;

      v87 = sub_222B437C0(v84, v86, &v140);

      *(v81 + 24) = v87;
      _os_log_impl(&dword_222B39000, v78, v79, "%s NowPlayingEvent (%s) and PlayMediaIntent (%s) media ids do not match", v81, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v82, -1, -1);
      MEMORY[0x223DCA8C0](v81, -1, -1);
    }

    else
    {
    }

    return (*(v139 + 56))(v123, 1, 1, v75);
  }
}

uint64_t MediaPlayClassifier.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_222B76E28@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_222C9462C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_222B4A758(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_222B4A758((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_222C945FC();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_222C9454C();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_222C9454C();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_222C9462C();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_222B4A758(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_222C9462C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_222B4A758(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_222B4A758((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_222C9454C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222B771E8(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_222C951FC() & 1;
  }
}

uint64_t sub_222B77240(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_222C9515C() & 1;
  }
}

void sub_222B772B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257D8, &unk_222C990C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v66 - v3;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024FD8, &qword_222C96D88);
  v82 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v74 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v75 = &v66 - v7;
  MEMORY[0x28223BE20](v8);
  v67 = &v66 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v66 - v11;
  v13 = type metadata accessor for FeaturisedTurn(0);
  MEMORY[0x28223BE20](v13);
  v81 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  v18 = MEMORY[0x277D84F90];
  v76 = v4;
  v71 = v17;
  if (v17)
  {
    v19 = 0;
    v70 = *(v14 + 28);
    v69 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v68 = *(v15 + 72);
    v20 = MEMORY[0x277D84F90];
    while (1)
    {
      v21 = v81;
      sub_222B77C5C(v69 + v68 * v19, v81, type metadata accessor for FeaturisedTurn);
      v22 = *(v21 + v70);
      v23 = *(v22 + 16);
      if (v23)
      {
        v72 = v19;
        v73 = v20;
        v86 = v18;
        sub_222B4C4DC(0, v23, 0);
        v24 = v86;
        v79 = sub_222C9367C();
        v25 = *(v79 - 8);
        v26 = *(v25 + 16);
        v77 = v25 + 16;
        v78 = v26;
        v27 = (v22 + 64);
        do
        {
          v28 = *(v27 - 3);
          v30 = *(v27 - 2);
          v29 = *(v27 - 1);
          v31 = *v27;
          v32 = v81;
          v33 = *(v80 + 48);
          *v12 = *(v27 - 4);
          *(v12 + 1) = v28;
          *(v12 + 2) = v30;
          *(v12 + 3) = v29;
          *(v12 + 4) = v31;
          v78(&v12[v33], v32, v79);
          v86 = v24;
          v35 = *(v24 + 16);
          v34 = *(v24 + 24);

          if (v35 >= v34 >> 1)
          {
            sub_222B4C4DC((v34 > 1), v35 + 1, 1);
            v24 = v86;
          }

          *(v24 + 16) = v35 + 1;
          sub_222B77CC4(v12, v24 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v35);
          v27 += 5;
          --v23;
        }

        while (v23);
        v4 = v76;
        v20 = v73;
        v18 = MEMORY[0x277D84F90];
        v19 = v72;
      }

      else
      {
        v24 = v18;
      }

      sub_222B77D34(v81, type metadata accessor for FeaturisedTurn);
      v36 = *(v24 + 16);
      v37 = v20[2];
      v38 = v37 + v36;
      if (__OFADD__(v37, v36))
      {
        goto LABEL_58;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v38 <= v20[3] >> 1)
      {
        if (!*(v24 + 16))
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v37 <= v38)
        {
          v40 = v37 + v36;
        }

        else
        {
          v40 = v37;
        }

        v20 = sub_222B4A338(isUniquelyReferenced_nonNull_native, v40, 1, v20);
        if (!*(v24 + 16))
        {
LABEL_3:

          if (v36)
          {
            goto LABEL_59;
          }

          goto LABEL_4;
        }
      }

      if ((v20[3] >> 1) - v20[2] < v36)
      {
        goto LABEL_61;
      }

      swift_arrayInitWithCopy();

      if (v36)
      {
        v41 = v20[2];
        v42 = __OFADD__(v41, v36);
        v43 = v41 + v36;
        if (v42)
        {
          goto LABEL_62;
        }

        v20[2] = v43;
      }

LABEL_4:
      if (++v19 == v71)
      {
        goto LABEL_26;
      }
    }
  }

  v20 = MEMORY[0x277D84F90];
LABEL_26:
  v44 = v20[2];
  if (v44)
  {
    v45 = 0;
    v46 = MEMORY[0x277D84F90];
    v47 = v67;
    v48 = v20;
    while (v45 < v20[2])
    {
      v49 = (*(v82 + 80) + 32) & ~*(v82 + 80);
      v50 = *(v82 + 72);
      sub_222B77D94(v20 + v49 + v50 * v45, v47);
      v51 = *(v47 + 24) == 0xD000000000000011 && 0x8000000222CA87C0 == *(v47 + 32);
      if (v51 || (sub_222C951FC() & 1) != 0)
      {
        sub_222B77CC4(v47, v74);
        v52 = swift_isUniquelyReferenced_nonNull_native();
        v86 = v46;
        if ((v52 & 1) == 0)
        {
          sub_222B4C4DC(0, *(v46 + 16) + 1, 1);
          v46 = v86;
        }

        v54 = *(v46 + 16);
        v53 = *(v46 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_222B4C4DC((v53 > 1), v54 + 1, 1);
          v46 = v86;
        }

        *(v46 + 16) = v54 + 1;
        sub_222B77CC4(v74, v46 + v49 + v54 * v50);
        v47 = v67;
        v20 = v48;
      }

      else
      {
        sub_222B4FCD4(v47, &qword_27D024FD8, &qword_222C96D88);
      }

      ++v45;
      v4 = v76;
      if (v44 == v45)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
  }

  else
  {
    v46 = MEMORY[0x277D84F90];
LABEL_42:

    v55 = *(v46 + 16);
    if (!v55)
    {
LABEL_56:

      return;
    }

    v56 = 0;
    v57 = MEMORY[0x277D84F90];
    while (v56 < *(v46 + 16))
    {
      v58 = v75;
      sub_222B77D94(v46 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v56, v75);
      v59 = *(v80 + 48);
      v60 = *(v58 + 24);
      v61 = *(v58 + 32);
      v86 = *v58;
      v87 = *(v58 + 8);
      v88 = v60;
      v89 = v61;
      sub_222B75E28(&v86, v58 + v59, v4);
      v62 = type metadata accessor for MediaPlayClassification(0);
      if ((*(*(v62 - 8) + 48))(v4, 1, v62) == 1)
      {
        sub_222B4FCD4(v4, &qword_27D0257D8, &unk_222C990C0);
        v83 = 0u;
        v84 = 0u;
        v85 = 0;
      }

      else
      {
        *(&v84 + 1) = v62;
        v85 = &protocol witness table for MediaPlayClassification;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v83);
        sub_222B77BF8(v4, boxed_opaque_existential_1);
      }

      sub_222B4FCD4(v75, &qword_27D024FD8, &qword_222C96D88);
      if (*(&v84 + 1))
      {
        sub_222B405A0(&v83, &v86);
        sub_222B405A0(&v86, &v83);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_222B4A314(0, v57[2] + 1, 1, v57);
        }

        v65 = v57[2];
        v64 = v57[3];
        if (v65 >= v64 >> 1)
        {
          v57 = sub_222B4A314((v64 > 1), v65 + 1, 1, v57);
        }

        v57[2] = v65 + 1;
        sub_222B405A0(&v83, &v57[5 * v65 + 4]);
        v4 = v76;
      }

      else
      {
        sub_222B4FCD4(&v83, &qword_27D0257E0, qword_222C990D0);
      }

      if (v55 == ++v56)
      {
        goto LABEL_56;
      }
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
}

unint64_t sub_222B77B4C()
{
  result = qword_27D0257D0;
  if (!qword_27D0257D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0257D0);
  }

  return result;
}

uint64_t sub_222B77BA0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_222C951FC() & 1;
  }
}

uint64_t sub_222B77BF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaPlayClassification(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222B77C5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222B77CC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024FD8, &qword_222C96D88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222B77D34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222B77D94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024FD8, &qword_222C96D88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222B77E04@<X0>(uint64_t a2@<X2>, void *a4@<X8>)
{
  v5 = *(a2 + *MEMORY[0x277D5FB98]);
  sub_222C9467C();
  sub_222B43F34(v10, v8);
  if (!v9)
  {
    sub_222B43FA4(v8);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v6 = 1;
    goto LABEL_6;
  }

  sub_222C93EFC();

  v6 = 0;
LABEL_6:
  sub_222B43FA4(v10);
  return (*(*(v5 - 8) + 56))(a4, v6, 1, v5);
}

uint64_t sub_222B77F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_222B43E3C(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = result;

    return v5;
  }

  return result;
}

uint64_t sub_222B77FE8(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for FeaturisedTurn(0) + 24));
  v2 = sub_222B41D48(v1);
  if (v3)
  {
    if (v2 == 0xD000000000000014 && v3 == 0x8000000222CA9CA0)
    {
LABEL_12:
      v5 = 1;
    }

    else
    {
      v5 = sub_222C951FC();
    }

    goto LABEL_13;
  }

  result = sub_222B41EE0(v1);
  if (!result)
  {
LABEL_16:
    result = sub_222B41EF8(v1);
    if (!result)
    {
      v5 = 0;
      return v5 & 1;
    }

    v14 = result;
    v15 = (result + 40);
    v16 = -*(result + 16);
    v17 = -1;
    do
    {
      v5 = v16 + v17 != -1;
      if (v16 + v17 == -1)
      {
        break;
      }

      if (++v17 >= *(v14 + 16))
      {
        goto LABEL_24;
      }

      v18 = v15 + 2;
      v20 = *(v15 - 1);
      v19 = *v15;

      LOBYTE(v20) = sub_222B42DF0(0x7373654D646E6553, 0xEB00000000656761, v20, v19);

      v15 = v18;
    }

    while ((v20 & 1) == 0);
LABEL_13:

    return v5 & 1;
  }

  v7 = result;
  v8 = (result + 40);
  v9 = -*(result + 16);
  v10 = -1;
  while (1)
  {
    if (v9 + v10 == -1)
    {

      goto LABEL_16;
    }

    if (++v10 >= *(v7 + 16))
    {
      break;
    }

    v11 = v8 + 2;
    v13 = *(v8 - 1);
    v12 = *v8;

    LOBYTE(v13) = sub_222B42DF0(0x7373654D646E6553, 0xEB00000000656761, v13, v12);

    v8 = v11;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_222B781BC(uint64_t a1)
{
  v2 = type metadata accessor for FeaturisedTurn(0);
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return 0;
  }

  v7 = 0;
  v40 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v8 = *(v3 + 72);
  v38 = 0x8000000222CA9CA0;
  v39 = v8;
  v36 = v6;
  v37 = v2;
  while (1)
  {
    sub_222B78534(v40 + v39 * v7, v5);
    v9 = *&v5[*(v2 + 24)];
    v10 = sub_222B41D48(v9);
    if (!v11)
    {
      break;
    }

    if (v10 == 0xD000000000000014 && v11 == v38)
    {
LABEL_26:
    }

    else
    {
      v13 = sub_222C951FC();

      if ((v13 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = sub_222B41EF8(v9);
    if (!result)
    {
      goto LABEL_5;
    }

    v29 = result;
    v30 = (result + 40);
    v31 = -*(result + 16);
    v32 = -1;
    while (v31 + v32 != -1)
    {
      if (++v32 >= *(v29 + 16))
      {
        __break(1u);
        goto LABEL_36;
      }

      v33 = v30 + 2;
      v34 = *v30;
      v43 = *(v30 - 1);
      v44 = v34;
      v41 = 0x6F724764656D614ELL;
      v42 = 0xEA00000000007075;
      sub_222B78598();
      result = sub_222C94BEC();
      v30 = v33;
      if (result)
      {

        sub_222B73DD0(v5);
        return 1;
      }
    }

LABEL_4:

LABEL_5:
    ++v7;
    sub_222B73DD0(v5);
    if (v7 == v6)
    {
      return 0;
    }
  }

  result = sub_222B41EE0(v9);
  if (!result)
  {
LABEL_20:
    result = sub_222B41EF8(v9);
    if (!result)
    {
      goto LABEL_5;
    }

    v22 = result;
    v23 = (result + 40);
    v24 = -*(result + 16);
    v25 = -1;
    while (v24 + v25 != -1)
    {
      if (++v25 >= *(v22 + 16))
      {
        goto LABEL_37;
      }

      v26 = v23 + 2;
      v28 = *(v23 - 1);
      v27 = *v23;

      LOBYTE(v28) = sub_222B42DF0(0x7373654D646E6553, 0xEB00000000656761, v28, v27);

      v23 = v26;
      if (v28)
      {
        goto LABEL_25;
      }
    }

    v6 = v36;
    v2 = v37;
    goto LABEL_4;
  }

  v15 = result;
  v16 = (result + 40);
  v17 = -*(result + 16);
  v18 = -1;
  while (1)
  {
    if (v17 + v18 == -1)
    {

      v6 = v36;
      v2 = v37;
      goto LABEL_20;
    }

    if (++v18 >= *(v15 + 16))
    {
      break;
    }

    v19 = v16 + 2;
    v21 = *(v16 - 1);
    v20 = *v16;

    LOBYTE(v21) = sub_222B42DF0(0x7373654D646E6553, 0xEB00000000656761, v21, v20);

    v16 = v19;
    if (v21)
    {
LABEL_25:
      v6 = v36;
      v2 = v37;
      goto LABEL_26;
    }
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_222B78534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturisedTurn(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_222B78598()
{
  result = qword_27D0257E8[0];
  if (!qword_27D0257E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D0257E8);
  }

  return result;
}

uint64_t sub_222B78634()
{

  return v0;
}

uint64_t PIMSFatalError.eventName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PIMSFatalError.eventName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

SiriPrivateLearningInference::PIMSFatalError __swiftcall PIMSFatalError.init(errorReason:)(SiriPrivateLearningInference::PIMSFatalError errorReason)
{
  v2 = *errorReason.eventName._countAndFlagsBits;
  strcpy(v1, "PIMSFatalError");
  v1[15] = -18;
  v1[16] = v2;
  return errorReason;
}

unint64_t PIMSFatalError.getLoggableProperties()()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025410, &unk_222C991B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222C97C40;
  *(inited + 32) = 0x616552726F727265;
  v3 = inited + 32;
  *(inited + 40) = 0xEB000000006E6F73;
  if (v1 > 4)
  {
    v10 = 0xD000000000000047;
    v11 = "iaIntentEventNotPresent";
    v12 = 0xD000000000000049;
    if (v1 != 8)
    {
      v12 = 0xD000000000000033;
      v11 = "iaTaskRequestIdNotPresent";
    }

    if (v1 == 7)
    {
      v11 = "ingEventNotPresent";
    }

    else
    {
      v10 = v12;
    }

    v13 = "UnderstandingUnredactionFailed";
    v14 = 0xD000000000000042;
    if (v1 == 5)
    {
      v14 = 0xD00000000000003ELL;
      v13 = "actionsNotPresent";
    }

    if (v1 <= 6)
    {
      v9 = v14;
    }

    else
    {
      v9 = v10;
    }

    if (v1 <= 6)
    {
      v4 = v13;
    }

    else
    {
      v4 = v11;
    }
  }

  else
  {
    v4 = "diaItemSearchResultsNotPresent";
    v5 = 0xD000000000000036;
    v6 = "imaryTaskUSONotPresent";
    v7 = 0xD00000000000003CLL;
    if (v1 != 3)
    {
      v7 = 0xD000000000000041;
      v6 = "UnderstandingGraphNotPresent";
    }

    if (v1 != 2)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = "PlaybackContextTier1NotPresent";
    if (!v1)
    {
      v8 = "BMNowPlayingEvent";
    }

    if (v1 <= 1)
    {
      v9 = 0xD00000000000003ELL;
    }

    else
    {
      v9 = v5;
    }

    if (v1 <= 1)
    {
      v4 = v8;
    }
  }

  v15 = MEMORY[0x277D5FD28];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v15;
  *(inited + 48) = v9;
  *(inited + 56) = v4 | 0x8000000000000000;
  v16 = sub_222B628C4(inited);
  swift_setDeallocating();
  sub_222B629F8(v3);
  return v16;
}

unint64_t PIMSFatalErrorReason.rawValue.getter()
{
  v1 = 0xD00000000000003ELL;
  v2 = *v0;
  if (v2 > 4)
  {
    v6 = 0xD000000000000047;
    v7 = 0xD000000000000049;
    if (v2 != 8)
    {
      v7 = 0xD000000000000033;
    }

    if (v2 != 7)
    {
      v6 = v7;
    }

    if (v2 != 5)
    {
      v1 = 0xD000000000000042;
    }

    if (*v0 <= 6u)
    {
      return v1;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v3 = 0xD000000000000036;
    v4 = 0xD00000000000003CLL;
    if (v2 != 3)
    {
      v4 = 0xD000000000000041;
    }

    if (v2 != 2)
    {
      v3 = v4;
    }

    if (*v0 <= 1u)
    {
      return 0xD00000000000003ELL;
    }

    else
    {
      return v3;
    }
  }
}

SiriPrivateLearningInference::PIMSFatalErrorReason_optional __swiftcall PIMSFatalErrorReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222C94FDC();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_222B78A6C()
{
  v1 = *v0;
  sub_222C952FC();
  sub_222BBEEE4(v3, v1);
  return sub_222C9534C();
}

uint64_t sub_222B78ABC(uint64_t a1)
{
  v2 = *v1;
  sub_222C952FC();
  sub_222BBEEE4(v4, v2);
  return sub_222C9534C();
}

unint64_t sub_222B78B0C@<X0>(unint64_t *a1@<X8>)
{
  result = PIMSFatalErrorReason.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_222B78B38()
{
  result = qword_27D025870;
  if (!qword_27D025870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025870);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PIMSFatalErrorReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PIMSFatalErrorReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_222B78D14@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v9 = a2;
  v10 = sub_222C9367C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v99 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v13 - 8);
  v97 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v101 = &v87 - v16;
  v100 = type metadata accessor for ThinMediaGroundTruth(0);
  v98 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v96 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025888, &unk_222C993A0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v87 - v19;
  v21 = type metadata accessor for MediaFeedbackGroundTruth(0);
  v95 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v94 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025890, &unk_222C9C7B0) - 8;
  MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  MEMORY[0x28223BE20](v25);
  MEMORY[0x28223BE20](v26);
  v103 = &v87 - v27;
  v35 = MEMORY[0x28223BE20](v28);
  if (v9 == 8)
  {

    return sub_222B79B14(a1, a5);
  }

  else
  {
    v88 = v29;
    v89 = v34;
    v90 = v33;
    v91 = v32;
    v102 = a1;
    v92 = v11;
    v93 = v10;
    (*(v31 + 16))(&v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), a3, a4, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024FC8, &unk_222C993B0);
    if (swift_dynamicCast())
    {
      sub_222B79B78(&v114, &v110);
      v37 = v111;
      v38 = v112;
      __swift_project_boxed_opaque_existential_1(&v110, v111);
      v39 = (*(v38 + 24))(v37, v38);
      v40 = type metadata accessor for PlusMediaSuggestion(0);
      v41 = (v102 + v40[6]);
      v42 = v41[2];
      v115 = v41[1];
      v116 = v42;
      v117 = *(v41 + 24);
      v87 = v41;
      v114 = *v41;
      if (*(v39 + 16))
      {
        v43 = sub_222B8CB28(&v114);
        if (v44)
        {
          v45 = *(*(v39 + 56) + 8 * v43);
        }

        else
        {
          v45 = MEMORY[0x277D84FA0];
        }
      }

      else
      {
        v45 = MEMORY[0x277D84FA0];
      }

      v46 = v102;

      v109 = v45;
      v47 = *(v46 + v40[8]);
      if (v47 <= 0.0 && (v9 & 0xFE) == 6)
      {
        sub_222B6A060(&v105, 5);
      }

      v48 = v111;
      v49 = v113;
      v50 = __swift_project_boxed_opaque_existential_1(&v110, v111);
      *(&v106 + 1) = v48;
      *&v107 = v49;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v105);
      (*(*(v48 - 8) + 16))(boxed_opaque_existential_1, v50, v48);
      ThinMediaGroundTruth.init(completeGroundTruth:)(&v105, v103);
      sub_222B79B90(&v110, &v105);
      if (swift_dynamicCast())
      {
        v52 = v114;
        (*(v95 + 56))(v20, 0, 1, v21);
        v53 = v20;
        v54 = v94;
        sub_222B79C64(v53, v94, type metadata accessor for MediaFeedbackGroundTruth);
        if (v52 == *(v54 + *(v21 + 28)) || (sub_222C951FC()) && (PlusMediaSuggestion.isCorrection.getter())
        {
          sub_222B6A060(&v105, 7);
        }

        sub_222B79CCC(v54, type metadata accessor for MediaFeedbackGroundTruth);
      }

      else
      {
        (*(v95 + 56))(v20, 1, 1, v21);
        sub_222B4FCD4(v20, &qword_27D025888, &unk_222C993A0);
      }

      v55 = *(v46 + v40[7]);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D0258A0, &unk_222C993C0);
      v56 = (*(v88 + 80) + 32) & ~*(v88 + 80);
      v57 = swift_allocObject();
      sub_222B4FC6C(v103, v57 + v56, &qword_27D025890, &unk_222C9C7B0);
      v58 = v89;
      sub_222B4FC6C(v57 + v56, v89, &qword_27D025890, &unk_222C9C7B0);
      v59 = v58;
      v60 = v90;
      sub_222B79BF4(v59, v90);
      v61 = *(v98 + 48);
      if (v61(v60, 1, v100) == 1)
      {
        sub_222B4FCD4(v60, &qword_27D025890, &unk_222C9C7B0);
        v62 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_222B79C64(v60, v96, type metadata accessor for ThinMediaGroundTruth);
        v62 = MEMORY[0x277D84F90];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_222B4A864(0, v62[2] + 1, 1, v62);
        }

        v64 = v62[2];
        v63 = v62[3];
        if (v64 >= v63 >> 1)
        {
          v62 = sub_222B4A864((v63 > 1), v64 + 1, 1, v62);
        }

        v62[2] = v64 + 1;
        sub_222B79C64(v96, v62 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v64, type metadata accessor for ThinMediaGroundTruth);
      }

      swift_setDeallocating();
      sub_222B4FCD4(v57 + v56, &qword_27D025890, &unk_222C9C7B0);
      swift_deallocClassInstance();
      *&v105 = v55;

      sub_222B49340(v62);
      v98 = v105;
      v65 = v91;
      sub_222B4FC6C(v103, v91, &qword_27D025890, &unk_222C9C7B0);
      v66 = v100;
      if (v61(v65, 1, v100) == 1)
      {
        sub_222B4FCD4(v65, &qword_27D025890, &unk_222C9C7B0);
        v67 = v93;
        v68 = v92;
        v69 = v102;
      }

      else
      {
        v70 = *(v65 + *(v66 + 28));
        sub_222B79CCC(v65, type metadata accessor for ThinMediaGroundTruth);
        v67 = v93;
        v68 = v92;
        v69 = v102;
        if (v70 == 1)
        {
          sub_222B6A060(&v105, 4);
        }
      }

      v71 = v101;
      (*(v68 + 56))(v101, 1, 1, v67);
      v72 = *(v69 + v40[11]);
      v73 = v109;

      v100 = sub_222C6E8A8(v73, v72);
      v74 = v97;
      sub_222B4FC6C(v71, v97, &unk_27D026290, &qword_222C96B40);
      v75 = *(v68 + 48);
      if (v75(v74, 1, v67) == 1)
      {
        v76 = *(v68 + 16);
        v76(v99, v69, v67);
        if (v75(v74, 1, v67) != 1)
        {
          sub_222B4FCD4(v74, &unk_27D026290, &qword_222C96B40);
        }

        v77 = v99;
      }

      else
      {
        v78 = v74;
        v77 = v99;
        (*(v68 + 32))(v99, v78, v67);
        v76 = *(v68 + 16);
      }

      v79 = *(v102 + v40[5]);
      v80 = v87[1];
      v107 = v87[2];
      v108 = *(v87 + 24);
      v105 = *v87;
      v106 = v80;
      v81 = *(v102 + v40[10]);
      v82 = *(v102 + v40[9]);
      v76(a5, v77, v67);
      *&a5[v40[5]] = v79;
      v83 = &a5[v40[6]];
      v84 = v106;
      *v83 = v105;
      *(v83 + 1) = v84;
      *(v83 + 2) = v107;
      *(v83 + 24) = v108;
      swift_retain_n();
      sub_222B554C0(&v105, v104);

      sub_222C16F98(20, v98);
      *&a5[v40[7]] = v85;
      *&a5[v40[10]] = v81;
      *&a5[v40[11]] = v100;
      *&a5[v40[8]] = v47;
      v86 = sub_222C17258(0x14uLL, v82);

      (*(v68 + 8))(v77, v67);
      sub_222B4FCD4(v101, &unk_27D026290, &qword_222C96B40);
      sub_222B4FCD4(v103, &qword_27D025890, &unk_222C9C7B0);
      *&a5[v40[9]] = v86;
      return __swift_destroy_boxed_opaque_existential_0Tm(&v110);
    }

    else
    {
      v115 = 0u;
      v116 = 0u;
      v114 = 0u;
      sub_222B4FCD4(&v114, &qword_27D025898, &qword_222C99600);
      return sub_222B79B14(v102, a5);
    }
  }
}

uint64_t sub_222B79A48()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MediaSuggestionCandidateProcessor(uint64_t a1)
{
  result = qword_27D025878;
  if (!qword_27D025878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222B79B14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlusMediaSuggestion(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_222B79B78(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_222B79B90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_222B79BF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025890, &unk_222C9C7B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222B79C64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222B79CCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222B79D2C()
{
  v1 = sub_222C93C5C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[6])
  {
    v6 = 1;
  }

  else
  {
    v7 = v0[7];
    v8 = v0[8];
    (*(v2 + 104))(v5, *MEMORY[0x277D5FB00], v1, v3);
    v9 = sub_222C93C4C();
    v11 = v10;
    (*(v2 + 8))(v5, v1);
    if (v8)
    {
      if (v7 == v9 && v8 == v11)
      {
        v6 = 1;
      }

      else
      {
        v6 = sub_222C951FC();
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

uint64_t sub_222B79EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v52 = a3;
  v53 = a5;
  v51 = a2;
  v11 = sub_222C9367C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FeaturisedTurn(0);
  v16 = *(v15 - 8);
  v54 = v15;
  v55 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1;
  result = sub_222C6B588(sub_222B617A8, v56, a6);
  if (v20)
  {
    if (qword_280FDFE78 != -1)
    {
      goto LABEL_56;
    }

    goto LABEL_3;
  }

  v31 = *(a6 + 2);
  if (v31 < result)
  {
    __break(1u);
    goto LABEL_58;
  }

  if (result < 0)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return result;
  }

  v49 = a6;
  v50 = a7;
  if (v31 == result)
  {
    v32 = v31;
  }

  else
  {
    v32 = result + 1;
  }

  if (v31 < v32)
  {
    goto LABEL_59;
  }

  if (v32 == v31)
  {
LABEL_51:
    v47 = 1;
    a7 = v50;
    return (*(v55 + 56))(a7, v47, 1, v54);
  }

  v12 = &v49[(*(v55 + 80) + 32) & ~*(v55 + 80)];

  while (v32 < v31)
  {
    sub_222B78534(&v12[*(v55 + 72) * v32], v18);
    v14 = *&v18[*(v54 + 24)];
    v33 = sub_222B423D0(v14);
    if (!v34)
    {
      v39 = 0;
      goto LABEL_33;
    }

    v35 = v33;
    a1 = v34;
    v36 = sub_222B423E8(v14);
    if (v37)
    {
      if (v36 == a4 && v37 == v53)
      {

LABEL_26:
        if (v35 == v51 && a1 == v52)
        {
          v39 = 1;
        }

        else
        {
          v39 = sub_222C951FC();
        }

        goto LABEL_32;
      }

      a7 = v37;
      v11 = sub_222C951FC();

      if (v11)
      {
        goto LABEL_26;
      }
    }

    v39 = 0;
LABEL_32:

LABEL_33:
    v41 = sub_222B42400(v14);
    if (!v42)
    {
      sub_222B73DD0(v18);
      if (v39)
      {
        goto LABEL_50;
      }

      goto LABEL_14;
    }

    a7 = v41;
    v11 = v42;
    v43 = sub_222B42418(v14);
    if (v44)
    {
      a1 = v43;
      v14 = v44;
      if (a7 == v51 && v11 == v52)
      {
      }

      else
      {
        v46 = sub_222C951FC();

        if ((v46 & 1) == 0)
        {

LABEL_47:
          sub_222B73DD0(v18);
          goto LABEL_14;
        }
      }

      if (a1 == a4 && v14 == v53)
      {

LABEL_54:

        a7 = v50;
        sub_222B441A4(v18, v50, type metadata accessor for FeaturisedTurn);
        v47 = 0;
        return (*(v55 + 56))(a7, v47, 1, v54);
      }

      a1 = sub_222C951FC();

      if (a1)
      {
        goto LABEL_54;
      }

      goto LABEL_47;
    }

    sub_222B73DD0(v18);

    if (v39)
    {
LABEL_50:

      goto LABEL_51;
    }

LABEL_14:
    if (v31 == ++v32)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_56:
  swift_once();
LABEL_3:
  v21 = sub_222C9431C();
  __swift_project_value_buffer(v21, qword_280FE2340);
  (*(v12 + 2))(v14, a1, v11);
  v22 = sub_222C942FC();
  v23 = sub_222C94A3C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = a7;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v58 = v26;
    *v25 = 136315138;
    sub_222B7BB84(&qword_280FE0298, MEMORY[0x277CC9628]);
    v27 = sub_222C9517C();
    v29 = v28;
    (*(v12 + 1))(v14, v11);
    v30 = sub_222B437C0(v27, v29, &v58);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_222B39000, v22, v23, "Failed to find prompt turn in session for turnId=%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    MEMORY[0x223DCA8C0](v26, -1, -1);
    a7 = v24;
    MEMORY[0x223DCA8C0](v25, -1, -1);
  }

  else
  {

    (*(v12 + 1))(v14, v11);
  }

  v47 = 1;
  return (*(v55 + 56))(a7, v47, 1, v54);
}

uint64_t sub_222B7A434@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v6 - 8);
  v69 = &v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v60 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v60 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v60 - v21;
  v23 = type metadata accessor for FeaturisedTurn(0);
  v24 = *(v23 + 24);
  v71 = a1;
  v25 = *(a1 + v24);
  v26 = sub_222B423D0(v25);
  if (v27)
  {
    v28 = v27;
    v68 = v26;
    v67 = sub_222B423E8(v25);
    v70 = v29;
    if (v29)
    {
      v30 = sub_222B42430(v25);
      if (v30)
      {
        v65 = v30;
        sub_222B79EA4(v71, v68, v28, v67, v70, a2, v22);
        sub_222B4FC6C(v22, v19, &qword_27D0253C8, &unk_222C98400);
        v31 = *(v23 - 8);
        v32 = *(v31 + 48);
        v66 = v31 + 48;
        if (v32(v19, 1, v23) == 1)
        {
          sub_222B4FCD4(v19, &qword_27D0253C8, &unk_222C98400);
          v63 = 0;
          v64 = 0;
        }

        else
        {
          v36 = *(v23 + 24);
          v62 = v32;
          v37 = *&v19[v36];

          sub_222B73DD0(v19);
          v38 = sub_222B42448(v37);
          v63 = v39;
          v64 = v38;
          v32 = v62;
        }

        sub_222B4FC6C(v22, v16, &qword_27D0253C8, &unk_222C98400);
        if (v32(v16, 1, v23) == 1)
        {
          sub_222B4FCD4(v16, &qword_27D0253C8, &unk_222C98400);
          v61 = 0;
          v62 = 0;
        }

        else
        {
          v40 = *&v16[*(v23 + 24)];

          sub_222B73DD0(v16);
          v41 = sub_222B42460(v40);
          v61 = v42;
          v62 = v41;
        }

        sub_222B4FC6C(v22, v13, &qword_27D0253C8, &unk_222C98400);
        if (v32(v13, 1, v23) == 1)
        {
          sub_222B4FCD4(v13, &qword_27D0253C8, &unk_222C98400);
          v43 = v69;
        }

        else
        {
          v44 = v32;
          v45 = *&v13[*(v23 + 24)];

          sub_222B73DD0(v13);
          sub_222B42400(v45);
          v47 = v46;

          v43 = v69;
          if (v47)
          {

            sub_222B4FC6C(v22, v10, &qword_27D0253C8, &unk_222C98400);
            if (v44(v10, 1, v23) != 1)
            {
              v48 = sub_222C9367C();
              v59 = *(v48 - 8);
              (*(v59 + 16))(v43, v10, v48);
              sub_222B73DD0(v10);
              (*(v59 + 56))(v43, 0, 1, v48);
              goto LABEL_21;
            }

            sub_222B4FCD4(v10, &qword_27D0253C8, &unk_222C98400);
          }
        }

        v48 = sub_222C9367C();
        (*(*(v48 - 8) + 56))(v43, 1, 1, v48);
LABEL_21:
        v49 = sub_222B42478(v25);
        if (v49)
        {
          v50 = v49;
        }

        else
        {
          v50 = MEMORY[0x277D84F90];
        }

        v51 = sub_222B42490(v25);
        v52 = type metadata accessor for EntityPromptClassification(0);
        v53 = v52[11];
        sub_222C9367C();
        (*(*(v48 - 8) + 16))(a3 + v53, v71, v48);
        sub_222B4FC6C(v43, a3 + v52[12], &unk_27D026290, &qword_222C96B40);
        v54 = v67;
        *a3 = v68;
        *(a3 + 8) = v28;
        v55 = v70;
        *(a3 + 16) = v54;
        *(a3 + 24) = v55;
        v56 = v64;
        *(a3 + 32) = v65;
        *(a3 + 40) = v56;
        v57 = v62;
        *(a3 + 48) = v63;
        *(a3 + 56) = v57;
        *(a3 + 64) = v61;
        *(a3 + 72) = v50;
        *(a3 + 80) = v51 & 1;
        v58 = v52[13];
        sub_222B4FCD4(v43, &unk_27D026290, &qword_222C96B40);
        sub_222B4FCD4(v22, &qword_27D0253C8, &unk_222C98400);
        *(a3 + v58) = MEMORY[0x277D84F90];
        return (*(*(v52 - 1) + 56))(a3, 0, 1, v52);
      }
    }
  }

  v33 = type metadata accessor for EntityPromptClassification(0);
  v34 = *(*(v33 - 8) + 56);

  return v34(a3, 1, 1, v33);
}

uint64_t EntityPromptClassification.promptTask.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EntityPromptClassification.promptSlot.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t EntityPromptClassification.selectedEntity.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t EntityPromptClassification.promptEndResult.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t EntityPromptClassification.promptStartTurnId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EntityPromptClassification(0) + 44);
  v4 = sub_222C9367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *EntityPromptClassification.referencedTurns.getter()
{
  v1 = sub_222C9367C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v5 = *(v32 - 8);
  v6 = v5;
  MEMORY[0x28223BE20](v32);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D60, &qword_222C96B38);
  v12 = *(v5 + 72);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v30 = swift_allocObject();
  v14 = v30 + v13;
  v15 = type metadata accessor for EntityPromptClassification(0);
  (*(v2 + 16))(v14, v0 + *(v15 + 44), v1);
  (*(v2 + 56))(v14, 0, 1, v1);
  sub_222B4FC6C(v0 + *(v15 + 48), v14 + v12, &unk_27D026290, &qword_222C96B40);
  sub_222B4FC6C(v14, v11, &unk_27D026290, &qword_222C96B40);
  sub_222B55BA0(v11, v8);
  v16 = (v2 + 32);
  v17 = *(v2 + 48);
  v18 = v17(v8, 1, v1);
  v31 = v4;
  if (v18 == 1)
  {
    sub_222B4FCD4(v8, &unk_27D026290, &qword_222C96B40);
    v19 = MEMORY[0x277D84F90];
  }

  else
  {
    v28 = v17;
    v29 = (v2 + 32);
    v27 = *v16;
    v27(v4, v8, v1);
    v19 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_222B4A2C8(0, *(v19 + 2) + 1, 1, v19);
    }

    v21 = *(v19 + 2);
    v20 = *(v19 + 3);
    if (v21 >= v20 >> 1)
    {
      v19 = sub_222B4A2C8((v20 > 1), v21 + 1, 1, v19);
    }

    *(v19 + 2) = v21 + 1;
    v16 = v29;
    v27(&v19[((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v21], v31, v1);
    v17 = v28;
  }

  sub_222B4FC6C(v14 + v12, v11, &unk_27D026290, &qword_222C96B40);
  sub_222B55BA0(v11, v8);
  if (v17(v8, 1, v1) == 1)
  {
    sub_222B4FCD4(v8, &unk_27D026290, &qword_222C96B40);
  }

  else
  {
    v22 = *v16;
    v23 = v31;
    (*v16)(v31, v8, v1);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_222B4A2C8(0, *(v19 + 2) + 1, 1, v19);
    }

    v25 = *(v19 + 2);
    v24 = *(v19 + 3);
    if (v25 >= v24 >> 1)
    {
      v19 = sub_222B4A2C8((v24 > 1), v25 + 1, 1, v19);
    }

    *(v19 + 2) = v25 + 1;
    v22(&v19[((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v25], v23, v1);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v19;
}

uint64_t EntityPromptClassification.referencedEvents.getter()
{
  type metadata accessor for EntityPromptClassification(0);
}

uint64_t _s28SiriPrivateLearningInference26EntityPromptClassificationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_222C9367C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025290, &unk_222C97C30);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  if (*a1 != *a2 && (sub_222C951FC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_222C951FC() & 1) == 0 || (sub_222BBC5A4(*(a1 + 32), *(a2 + 32)) & 1) == 0)
  {
    goto LABEL_30;
  }

  v14 = *(a1 + 48);
  v15 = *(a2 + 48);
  if (v14)
  {
    if (!v15 || (*(a1 + 40) != *(a2 + 40) || v14 != v15) && (sub_222C951FC() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v15)
  {
    goto LABEL_30;
  }

  v16 = *(a1 + 64);
  v17 = *(a2 + 64);
  if (v16)
  {
    if (!v17 || (*(a1 + 56) != *(a2 + 56) || v16 != v17) && (sub_222C951FC() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v17)
  {
    goto LABEL_30;
  }

  if ((sub_222BBC634(*(a1 + 72), *(a2 + 72)) & 1) == 0)
  {
    goto LABEL_30;
  }

  if (*(a1 + 80) != *(a2 + 80))
  {
    goto LABEL_30;
  }

  v18 = type metadata accessor for EntityPromptClassification(0);
  if ((sub_222C9362C() & 1) == 0)
  {
    goto LABEL_30;
  }

  v27 = v18;
  v19 = *(v18 + 48);
  v20 = *(v11 + 48);
  sub_222B4FC6C(a1 + v19, v13, &unk_27D026290, &qword_222C96B40);
  sub_222B4FC6C(a2 + v19, &v13[v20], &unk_27D026290, &qword_222C96B40);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) == 1)
  {
    if (v21(&v13[v20], 1, v4) == 1)
    {
      sub_222B4FCD4(v13, &unk_27D026290, &qword_222C96B40);
LABEL_33:
      v22 = sub_222BBC5A4(*(a1 + *(v27 + 52)), *(a2 + *(v27 + 52)));
      return v22 & 1;
    }

    goto LABEL_29;
  }

  sub_222B4FC6C(v13, v10, &unk_27D026290, &qword_222C96B40);
  if (v21(&v13[v20], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_29:
    sub_222B4FCD4(v13, &qword_27D025290, &unk_222C97C30);
    goto LABEL_30;
  }

  (*(v5 + 32))(v7, &v13[v20], v4);
  sub_222B7BB84(&qword_280FE02A0, MEMORY[0x277CC9610]);
  v24 = sub_222C9447C();
  v25 = *(v5 + 8);
  v25(v7, v4);
  v25(v10, v4);
  sub_222B4FCD4(v13, &unk_27D026290, &qword_222C96B40);
  if (v24)
  {
    goto LABEL_33;
  }

LABEL_30:
  v22 = 0;
  return v22 & 1;
}

void *sub_222B7B5DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for FeaturisedTurn(0) - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (!v9)
  {
    return MEMORY[0x277D84F90];
  }

  v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v11 = MEMORY[0x277D84F90];
  v12 = *(v6 + 72);
  do
  {
    sub_222B78534(v10, v8);
    sub_222B7A434(v8, a1, v4);
    v13 = type metadata accessor for EntityPromptClassification(0);
    if ((*(*(v13 - 8) + 48))(v4, 1, v13) == 1)
    {
      sub_222B73DD0(v8);
      sub_222B4FCD4(v4, &qword_27D025028, &unk_222C96EC0);
    }

    else
    {
      v19 = v13;
      v20 = &protocol witness table for EntityPromptClassification;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
      sub_222B441A4(v4, boxed_opaque_existential_1, type metadata accessor for EntityPromptClassification);
      sub_222B73DD0(v8);
      sub_222B405A0(&v18, v21);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_222B4A314(0, v11[2] + 1, 1, v11);
      }

      v16 = v11[2];
      v15 = v11[3];
      if (v16 >= v15 >> 1)
      {
        v11 = sub_222B4A314((v15 > 1), v16 + 1, 1, v11);
      }

      v11[2] = v16 + 1;
      sub_222B405A0(v21, &v11[5 * v16 + 4]);
    }

    v10 += v12;
    --v9;
  }

  while (v9);
  return v11;
}

uint64_t type metadata accessor for EntityPromptClassification(uint64_t a1)
{
  result = qword_280FDE0D0;
  if (!qword_280FDE0D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_222B7B94C(uint64_t a1)
{
  sub_222B7BACC(319, &qword_280FDB798, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_222B7BACC(319, &qword_280FDB820, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_222B7BB20(319, &qword_280FDB7A8, type metadata accessor for PlusContactSuggestionRuntimeSummary, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_222C9367C();
        if (v4 <= 0x3F)
        {
          sub_222B7BB20(319, &qword_280FE0290, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_222B7BACC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_222B7BB20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_222B7BB84(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_222C9367C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222B7BCB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_222C947FC();

  swift_getWitnessTable();
  v3 = sub_222C94DDC();
  if (sub_222C947BC() == 1)
  {
    return v3;
  }

  return sub_222C9477C();
}

uint64_t sub_222B7BE04()
{
  type metadata accessor for AdaptiveMediaSuggestionGenerator();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025958, qword_222C99698);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D025928 = 91;
  unk_27D025930 = 0xE100000000000000;
  return result;
}

uint64_t AdaptiveMediaSuggestionGenerator.__allocating_init(candidateProvider:domainTags:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AdaptiveMediaSuggestionGenerator.init(candidateProvider:domainTags:)(a1, a2);
  return v4;
}

void *AdaptiveMediaSuggestionGenerator.init(candidateProvider:domainTags:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MediaSignalScorer();
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025938, &unk_222C995E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_222C97C40;
  *(v6 + 56) = &type metadata for NoReferenceDecayModifier;
  *(v6 + 64) = &off_28360EB00;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025940, &unk_222CA4A00);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_222C96900;
  *(v7 + 56) = &type metadata for ScoreRoundingModifier;
  *(v7 + 64) = &off_28360EE80;
  *(v7 + 32) = 1;
  *(v7 + 96) = &type metadata for ScoreLimitModifier;
  *(v7 + 104) = &off_28360D3A8;
  v8 = swift_allocObject();
  *(v7 + 72) = v8;
  *(v8 + 16) = 0x3FF0000000000000;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0xBFF0000000000000;
  *(v8 + 40) = 0;
  *(v5 + 16) = v6;
  *(v5 + 24) = v7;
  type metadata accessor for MediaSuggestionCandidateProcessor(0);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v5;
  v9[5] = a1;
  v2[2] = v9;
  v2[3] = a1;
  v2[4] = a2;

  return v2;
}

uint64_t sub_222B7C034(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = a1 + 32;
    do
    {
      sub_222B43E3C(v3, v24);
      sub_222B405A0(v24, &v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024E28, &unk_222C995F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024FC8, &unk_222C993B0);
      if (swift_dynamicCast())
      {
        if (*(&v18 + 1))
        {
          sub_222B79B78(&v17, &v20);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_222B4A9AC(0, v2[2] + 1, 1, v2);
          }

          v5 = v2[2];
          v4 = v2[3];
          if (v5 >= v4 >> 1)
          {
            v2 = sub_222B4A9AC((v4 > 1), v5 + 1, 1, v2);
          }

          v2[2] = v5 + 1;
          sub_222B79B78(&v20, &v2[6 * v5 + 4]);
          goto LABEL_5;
        }
      }

      else
      {
        v18 = 0u;
        v19 = 0u;
        v17 = 0u;
      }

      sub_222B4FCD4(&v17, &qword_27D025898, &qword_222C99600);
LABEL_5:
      v3 += 40;
      --v1;
    }

    while (v1);
  }

  *&v17 = MEMORY[0x277D84F90];
  v6 = v2[2];
  if (v6)
  {
    v7 = (v2 + 4);
    v8 = MEMORY[0x277D84F90];
    do
    {
      sub_222B79B90(v7, &v20);
      v9 = v21;
      v10 = v22;
      v11 = v23;
      v12 = __swift_project_boxed_opaque_existential_1(&v20, v21);
      v13 = sub_222B7C2C8(v12, v9, v10, v11);
      v14 = __swift_destroy_boxed_opaque_existential_0Tm(&v20);
      if (v13)
      {
        MEMORY[0x223DC94A0](v14);
        if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_222C9475C();
        }

        sub_222C947AC();
        v8 = v17;
      }

      v7 += 48;
      --v6;
    }

    while (v6);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v15 = sub_222B71ED4(v8);

  return v15;
}

uint64_t sub_222B7C2C8(char *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v62 = a4;
  v63 = sub_222C9367C();
  v9 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v11 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 - 1);
  MEMORY[0x28223BE20](v13);
  v15 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v58 - v17;
  if (sub_222B7D308(a1, v4, a2, a3))
  {
    v59 = v9;
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v19 = sub_222C9431C();
    v20 = __swift_project_value_buffer(v19, qword_280FE2340);
    (*(v12 + 16))(v18, a1, a2);
    v58[1] = v20;
    v21 = sub_222C942FC();
    v22 = sub_222C94A3C();
    v23 = os_log_type_enabled(v21, v22);
    v61 = a1;
    v60 = v5;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v58[0] = swift_slowAlloc();
      v73[0] = v58[0];
      *v24 = 136315394;
      if (qword_27D024678 != -1)
      {
        swift_once();
      }

      *(v24 + 4) = sub_222B437C0(qword_27D025928, unk_27D025930, v73);
      *(v24 + 12) = 2080;
      (*(v62 + 24))(a2);
      v25 = sub_222C9360C();
      v27 = v26;
      (*(v59 + 8))(v11, v63);
      (*(v12 + 8))(v18, a2);
      v28 = sub_222B437C0(v25, v27, v73);

      *(v24 + 14) = v28;
      _os_log_impl(&dword_222B39000, v21, v22, "%s Processing ground truth with id=%s", v24, 0x16u);
      v29 = v58[0];
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v29, -1, -1);
      MEMORY[0x223DCA8C0](v24, -1, -1);

      a1 = v61;
    }

    else
    {

      (*(v12 + 8))(v18, a2);
    }

    v39 = *(a3 + 8);
    v40 = sub_222B9E860(a1, a2, v39);
    v41 = *(v39 + 32);
    v41(v73, a2, v39);
    sub_222C0A220(v73[0], &v67);

    sub_222B4FC6C(&v67, v73, &qword_27D0256C8, &unk_222C98AB0);
    v42 = sub_222C942FC();
    v43 = sub_222C94A3C();
    sub_222B4FCD4(&v67, &qword_27D0256C8, &unk_222C98AB0);
    if (os_log_type_enabled(v42, v43))
    {
      v63 = v40;
      v44 = v41;
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v65[0] = v46;
      *v45 = 136315394;
      if (qword_27D024678 != -1)
      {
        swift_once();
      }

      *(v45 + 4) = sub_222B437C0(qword_27D025928, unk_27D025930, v65);
      *(v45 + 12) = 2080;
      if (v68 == 1)
      {
        v47 = 0xE90000000000003ELL;
        v48 = 0x6E776F6E6B6E553CLL;
      }

      else
      {
        v73[0] = v67;
        v73[1] = v68;
        v74 = v69;
        v75 = v70;
        v76 = v71;
        v77 = v72;
        v50 = sub_222BED214();
        v47 = v51;
        sub_222B4FCD4(&v67, &qword_27D0256C8, &unk_222C98AB0);
        v48 = v50;
      }

      v52 = sub_222B437C0(v48, v47, v65);

      *(v45 + 14) = v52;
      _os_log_impl(&dword_222B39000, v42, v43, "%s Candidates updated for query: %s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v46, -1, -1);
      MEMORY[0x223DCA8C0](v45, -1, -1);

      v41 = v44;
      v40 = v63;
    }

    else
    {

      sub_222B4FCD4(&v67, &qword_27D0256C8, &unk_222C98AB0);
    }

    v53 = v60;
    v54 = sub_222B7D450(v40, sub_222B7D958, v60);

    v55 = *(v53 + 24);
    v41(&v66, a2, v39);
    v56 = v66;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = *(v55 + 64);
    *(v55 + 64) = 0x8000000000000000;
    sub_222BAA6B0(v54, v56, isUniquelyReferenced_nonNull_native);

    *(v55 + 64) = v64;
    swift_endAccess();

    v41(v65, a2, v39);
    return v65[0];
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v30 = sub_222C9431C();
    __swift_project_value_buffer(v30, qword_280FE2340);
    (*(v12 + 16))(v15, a1, a2);
    v31 = sub_222C942FC();
    v32 = sub_222C94A3C();
    if (os_log_type_enabled(v31, v32))
    {
      v59 = v9;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v73[0] = v34;
      *v33 = 136315394;
      if (qword_27D024678 != -1)
      {
        swift_once();
      }

      *(v33 + 4) = sub_222B437C0(qword_27D025928, unk_27D025930, v73);
      *(v33 + 12) = 2080;
      (*(v62 + 24))(a2);
      v35 = sub_222C9360C();
      v37 = v36;
      (*(v59 + 8))(v11, v63);
      (*(v12 + 8))(v15, a2);
      v38 = sub_222B437C0(v35, v37, v73);

      *(v33 + 14) = v38;
      _os_log_impl(&dword_222B39000, v31, v32, "%s Skipping non applicable ground truth with id=%s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v34, -1, -1);
      MEMORY[0x223DCA8C0](v33, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v15, a2);
    }

    return 0;
  }
}

uint64_t sub_222B7CC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v66 = a4;
  v7 = sub_222C9367C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v64 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v65 = &v60 - v14;
  v15 = type metadata accessor for PlusMediaSuggestion(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  v72[0] = *a1;
  v19 = *(a1 + 32);
  v72[1] = v18;
  v72[2] = v19;
  v73 = *(a1 + 48);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v20 = sub_222C9431C();
  __swift_project_value_buffer(v20, qword_280FE2340);
  sub_222B79B14(a2, v17);
  sub_222B554C0(v72, &v68);
  v21 = sub_222C942FC();
  v22 = sub_222C94A3C();
  sub_222B55A80(v72);
  if (os_log_type_enabled(v21, v22))
  {
    v61 = a3;
    v63 = v7;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v67[0] = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_222B437C0(*&v72[0], *(&v72[0] + 1), v67);
    *(v23 + 12) = 2080;
    v25 = *&v17[v15[9]];
    v26 = *(v25 + 16);
    v62 = v12;
    if (v26)
    {
      v27 = (v25 + 32 * v26);
      v28 = *v27;
      v29 = *(v27 + 2);
    }

    else
    {
      v29 = 0;
      v28 = 0uLL;
    }

    v68 = v28;
    *&v69 = v29;
    BYTE8(v69) = v26 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025950, &qword_222C99690);
    v30 = sub_222C944EC();
    v32 = v31;
    sub_222B7D9D0(v17);
    v33 = sub_222B437C0(v30, v32, v67);

    *(v23 + 14) = v33;
    _os_log_impl(&dword_222B39000, v21, v22, "    %s: %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v24, -1, -1);
    MEMORY[0x223DCA8C0](v23, -1, -1);

    v7 = v63;
    v12 = v62;
    a3 = v61;
  }

  else
  {

    sub_222B7D9D0(v17);
  }

  v34 = *(a2 + v15[11]);
  if (sub_222BB26C4(v34, *(a3 + 32)))
  {
    return sub_222B79B14(a2, v66);
  }

  v36 = v65;
  (*(v8 + 56))(v65, 1, 1, v7);

  v63 = sub_222C6E8A8(v37, v34);
  sub_222B4FC6C(v36, v12, &unk_27D026290, &qword_222C96B40);
  v38 = *(v8 + 48);
  if (v38(v12, 1, v7) == 1)
  {
    v39 = v8;
    v40 = v8;
    v41 = v12;
    v42 = *(v40 + 16);
    v42(v64, a2, v7);
    v43 = v7;
    if (v38(v41, 1, v7) != 1)
    {
      sub_222B4FCD4(v41, &unk_27D026290, &qword_222C96B40);
    }

    v8 = v39;
    v44 = v64;
  }

  else
  {
    v44 = v64;
    (*(v8 + 32))(v64, v12, v7);
    v42 = *(v8 + 16);
    v43 = v7;
  }

  v45 = v15[5];
  v46 = (a2 + v15[6]);
  v71 = *(v46 + 24);
  v47 = v46[2];
  v69 = v46[1];
  v70 = v47;
  v68 = *v46;
  v48 = *(a2 + v15[10]);
  v49 = *(a2 + v15[8]);
  v50 = *(a2 + v45);
  v51 = *(a2 + v15[7]);
  v52 = *(a2 + v15[9]);
  v53 = v66;
  v42(v66, v44, v43);
  *(v53 + v15[5]) = v50;
  v54 = v53 + v15[6];
  v55 = v69;
  *v54 = v68;
  *(v54 + 16) = v55;
  *(v54 + 32) = v70;
  *(v54 + 48) = v71;

  sub_222B554C0(&v68, v67);

  sub_222C16F98(20, v51);
  *(v53 + v15[7]) = v56;
  *(v53 + v15[10]) = v48;
  *(v53 + v15[11]) = v63;
  *(v53 + v15[8]) = v49;
  v57 = sub_222C17258(0x14uLL, v52);
  v58 = v44;
  v59 = v57;
  (*(v8 + 8))(v58, v43);
  result = sub_222B4FCD4(v65, &unk_27D026290, &qword_222C96B40);
  *(v53 + v15[9]) = v59;
  return result;
}

void *AdaptiveMediaSuggestionGenerator.deinit()
{

  return v0;
}

uint64_t AdaptiveMediaSuggestionGenerator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

BOOL sub_222B7D308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  v11 = *(a2 + 32);
  if (*(v11 + 16))
  {
    v12 = (*(a4 + 16))(a3, a4);

    v13 = sub_222B86158(v12, v11);

    v14 = v13[2];

    v15 = v14 != 0;
  }

  else
  {
    v15 = 0;
  }

  (*(v7 + 8))(v10, a3);
  return v15;
}

uint64_t sub_222B7D450(uint64_t a1, void (*a2)(char *, char *), uint64_t a3)
{
  v57 = a2;
  v58 = a3;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025948, &unk_222C99680);
  MEMORY[0x28223BE20](v56);
  v55 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v49 - v7;
  v8 = type metadata accessor for PlusMediaSuggestion(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
    return v13;
  }

  v49 = v3;
  v67 = MEMORY[0x277D84F90];
  sub_222B4C630(0, v12, 0);
  v13 = v67;
  v62 = a1 + 64;
  result = sub_222C94C2C();
  if (result < 0 || (v15 = result, result >= 1 << *(a1 + 32)))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v50 = a1 + 72;
    v63 = *(a1 + 36);
    v16 = 1;
    v53 = v11;
    v51 = v12;
    v52 = v9;
    while (1)
    {
      v17 = v15 >> 6;
      if ((*(v62 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        break;
      }

      if (v63 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v59 = v16;
      v60 = 1 << v15;
      v18 = v56;
      v19 = *(v56 + 48);
      v20 = *(a1 + 56);
      v21 = *(a1 + 48) + 56 * v15;
      v23 = *(v21 + 16);
      v22 = *(v21 + 32);
      v24 = *v21;
      v66 = *(v21 + 48);
      v65[1] = v23;
      v65[2] = v22;
      v65[0] = v24;
      v26 = *(v21 + 16);
      v25 = *(v21 + 32);
      v27 = *v21;
      v28 = v54;
      *(v54 + 24) = *(v21 + 48);
      *(v28 + 1) = v26;
      *(v28 + 2) = v25;
      *v28 = v27;
      v61 = *(v9 + 72);
      sub_222B79B14(v20 + v61 * v15, &v28[v19]);
      v29 = v13;
      v30 = v55;
      *(v55 + 24) = *(v28 + 24);
      v31 = *(v28 + 1);
      *v30 = *v28;
      *(v30 + 1) = v31;
      *(v30 + 2) = *(v28 + 2);
      v32 = a1;
      v33 = *(v18 + 48);
      v34 = &v28[v19];
      v35 = v53;
      sub_222B7D960(v34, &v30[v33]);
      sub_222B554C0(v65, v64);
      v57(v30, &v30[v33]);
      v36 = v30;
      v13 = v29;
      sub_222B4FCD4(v36, &qword_27D025948, &unk_222C99680);
      v67 = v29;
      v38 = *(v29 + 16);
      v37 = *(v29 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_222B4C630((v37 > 1), v38 + 1, 1);
        v13 = v67;
      }

      *(v13 + 16) = v38 + 1;
      v39 = v52;
      result = sub_222B7D960(v35, v13 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + v38 * v61);
      v40 = 1 << *(v32 + 32);
      if (v15 >= v40)
      {
        goto LABEL_27;
      }

      v41 = *(v62 + 8 * v17);
      if ((v41 & v60) == 0)
      {
        goto LABEL_28;
      }

      a1 = v32;
      if (v63 != *(v32 + 36))
      {
        goto LABEL_29;
      }

      v9 = v39;
      v42 = v41 & (-2 << (v15 & 0x3F));
      if (v42)
      {
        v15 = __clz(__rbit64(v42)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v43 = v51;
      }

      else
      {
        v44 = v17 << 6;
        v45 = v17 + 1;
        v46 = (v50 + 8 * v17);
        v43 = v51;
        while (v45 < (v40 + 63) >> 6)
        {
          v48 = *v46++;
          v47 = v48;
          v44 += 64;
          ++v45;
          if (v48)
          {
            result = sub_222B7D9C4(v15, v63, 0);
            v15 = __clz(__rbit64(v47)) + v44;
            goto LABEL_19;
          }
        }

        result = sub_222B7D9C4(v15, v63, 0);
        v15 = v40;
      }

LABEL_19:
      if (v59 == v43)
      {
        return v13;
      }

      if ((v15 & 0x8000000000000000) == 0)
      {
        v16 = v59 + 1;
        if (v15 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_222B7D960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlusMediaSuggestion(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222B7D9C4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_222B7D9D0(uint64_t a1)
{
  v2 = type metadata accessor for PlusMediaSuggestion(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SuccessfulTaskMetadata.__allocating_init(session:classifications:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t SuccessfulTaskMetadata.init(session:classifications:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t SuccessfulTaskMetadata.deinit()
{

  return v0;
}

uint64_t SuccessfulTaskMetadata.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t SuccessfulTaskDefinition.generator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OneShotSuccessfulGroundTruthGenerator(0, a1, v8, v9);
  (*(v5 + 16))(v7, v2, a1);
  v11 = OneShotSuccessfulGroundTruthGenerator.__allocating_init(_:)(v7);
  a2[3] = v10;
  result = swift_getWitnessTable();
  a2[4] = result;
  *a2 = v11;
  return result;
}

uint64_t SuccessfulTaskDefinition.extractUsoPerson(_:)(uint64_t a1)
{
  v2 = type metadata accessor for FeaturisedTurn(0);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(v3 + 24);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_222B78534(v10, v6);
      v12 = sub_222B41B30(*&v6[v9]);
      if (v12)
      {
        sub_222B4907C(v12);
      }

      sub_222B73DD0(v6);
      v10 += v11;
      --v8;
    }

    while (v8);
    v7 = v19;
  }

  v14 = sub_222B71D68(v13);

  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = sub_222C94C6C();
  }

  else
  {
    v15 = *(v14 + 16);
  }

  if (v15 != 1)
  {
    goto LABEL_18;
  }

  if (v7 >> 62)
  {
    result = sub_222C94C6C();
    if (result)
    {
      goto LABEL_13;
    }

LABEL_18:

    return 0;
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x223DC9B30](0, v7);
    goto LABEL_16;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v7 + 32);

LABEL_16:

    return v17;
  }

  __break(1u);
  return result;
}

void __swiftcall SuccessfulTaskDefinition.extractReferencedEntity(session:eventId:)(SiriPrivateLearningInference::ContactReference_optional *__return_ptr retstr, Swift::OpaquePointer session, Swift::String eventId)
{
  object = eventId._object;
  countAndFlagsBits = eventId._countAndFlagsBits;
  v36 = retstr;
  v42 = type metadata accessor for FeaturisedTurn(0);
  v6 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v37 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  MEMORY[0x28223BE20](v8 - 8);
  v41 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v40 = &v34 - v11;
  v35 = v6;
  v38 = (v6 + 48);
  v39 = (v6 + 56);
  rawValue = session._rawValue;

  v43 = 0;
  while (1)
  {
    v21 = v43;
    v22 = rawValue[2];
    if (v43 == v22)
    {
      v23 = 1;
      v25 = v41;
      v24 = v42;
      v26 = v40;
    }

    else
    {
      v25 = v41;
      v24 = v42;
      v26 = v40;
      if (v43 >= v22)
      {
LABEL_26:
        __break(1u);
        return;
      }

      sub_222B78534(rawValue + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v43, v40);
      v23 = 0;
      ++v21;
    }

    (*v39)(v26, v23, 1, v24);
    sub_222B5EC84(v26, v25);
    if ((*v38)(v25, 1, v24) == 1)
    {
      break;
    }

    v43 = v21;
    v27 = v25;
    v28 = v37;
    sub_222B7E350(v27, v37);
    v29 = *(v28 + *(v24 + 28));

    sub_222B73DD0(v28);

    v30 = v29;
    if (v29)
    {
      v12 = (v29 + 64);
      v13 = -1;
      while (1)
      {
        ++v13;
        v14 = *(v30 + 16);
        if (v13 == v14)
        {
          break;
        }

        if (v13 >= v14)
        {
          __break(1u);
          goto LABEL_26;
        }

        v16 = *(v12 - 4);
        v15 = *(v12 - 3);
        v17 = *(v12 - 2);
        v18 = *(v12 - 1);
        v19 = *v12;
        if (v16 == countAndFlagsBits && v15 == object)
        {
          v16 = countAndFlagsBits;
LABEL_19:

          v31 = sub_222B41660(v17);
          if (v31)
          {
            v32 = *(v31 + 16);

            if (v32 == 1)
            {
              v45[0] = v16;
              v45[1] = v15;
              v45[2] = v17;
              v45[3] = v18;
              v45[4] = v19;
              extractContactReference(event:)(v45, v36);

              return;
            }
          }

          goto LABEL_23;
        }

        v12 += 5;
        if (sub_222C951FC())
        {
          goto LABEL_19;
        }
      }
    }
  }

LABEL_23:

  v33 = v36;
  v36->value.contactId = 0u;
  v33->value.contactLabel = 0u;
}

uint64_t (*sub_222B7E140(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223DC9B30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_222B7E1C0;
  }

  __break(1u);
  return result;
}

void (*sub_222B7E1C8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223DC9B30](a2, a3);
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
    return sub_222B7E47C;
  }

  __break(1u);
  return result;
}

void (*sub_222B7E248(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223DC9B30](a2, a3);
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
    return sub_222B7E2C8;
  }

  __break(1u);
  return result;
}

uint64_t *sub_222B7E2D0(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223DC9B30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_222B7E480;
  }

  __break(1u);
  return result;
}

uint64_t sub_222B7E350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturisedTurn(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ThinMediaGroundTruth.init(completeGroundTruth:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v33 = type metadata accessor for MediaFeedbackGroundTruth(0);
  MEMORY[0x28223BE20](v33);
  v32 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v7 = type metadata accessor for MediaGroundTruth(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  v13 = type metadata accessor for ThinMediaGroundTruth(0);
  v34 = *(v13 - 1);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  (*(v17 + 24))(v16, v17);
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = (*(v19 + 40))(v18, v19);
  v21 = &v15[v13[5]];
  *v21 = v20;
  v21[1] = v22;
  sub_222B43E3C(a1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024E28, &unk_222C995F0);
  if (swift_dynamicCast())
  {
    sub_222B7E93C(v12, v9, type metadata accessor for MediaGroundTruth);
    v15[v13[6]] = v9[*(v7 + 20)];
    v23 = v9[*(v7 + 32) + 49];
    v24 = type metadata accessor for MediaGroundTruth;
    v25 = v9;
LABEL_5:
    sub_222B7E9A4(v25, v24);
    v15[v13[7]] = v23;
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    v28 = v35;
    sub_222B7E8D8(v15, v35);
    (*(v34 + 56))(v28, 0, 1, v13);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return sub_222B7E9A4(v15, type metadata accessor for ThinMediaGroundTruth);
  }

  v26 = v33;
  if (swift_dynamicCast())
  {
    v27 = v32;
    sub_222B7E93C(v6, v32, type metadata accessor for MediaFeedbackGroundTruth);
    v15[v13[6]] = *(v27 + *(v26 + 20)) | 0x80;
    v23 = *(v27 + *(v26 + 28) + 49);
    v24 = type metadata accessor for MediaFeedbackGroundTruth;
    v25 = v27;
    goto LABEL_5;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v36);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v30 = sub_222C9367C();
  (*(*(v30 - 8) + 8))(v15, v30);

  return (*(v34 + 56))(v35, 1, 1, v13);
}

uint64_t type metadata accessor for ThinMediaGroundTruth(uint64_t a1)
{
  result = qword_27D0259A0;
  if (!qword_27D0259A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222B7E8D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThinMediaGroundTruth(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222B7E93C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222B7E9A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ThinMediaGroundTruth.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ThinMediaGroundTruth.groundTruthType.getter()
{
  v1 = *(v0 + *(type metadata accessor for ThinMediaGroundTruth(0) + 20));

  return v1;
}

uint64_t ThinMediaGroundTruth.groundTruthSource.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ThinMediaGroundTruth(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ThinMediaGroundTruth.suggestionLocality.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ThinMediaGroundTruth(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

int *ThinMediaGroundTruth.init(id:groundTruthType:groundTruthSource:suggestionLocality:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a4;
  v11 = *a5;
  v12 = sub_222C9367C();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for ThinMediaGroundTruth(0);
  v14 = (a6 + result[5]);
  *v14 = a2;
  v14[1] = a3;
  *(a6 + result[6]) = v10;
  *(a6 + result[7]) = v11;
  return result;
}

unint64_t sub_222B7EBBC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  if (v1 != 2)
  {
    v3 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = 0x7254646E756F7267;
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

uint64_t sub_222B7EC38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_222B7FEB0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_222B7EC6C(uint64_t a1)
{
  v2 = sub_222B7FA98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B7ECA8(uint64_t a1)
{
  v2 = sub_222B7FA98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThinMediaGroundTruth.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025960, &qword_222C99768);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222B7FA98();
  sub_222C9536C();
  v11[15] = 0;
  sub_222C9367C();
  sub_222B80414(&qword_27D025148, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_222C9512C();
  if (!v2)
  {
    v9 = type metadata accessor for ThinMediaGroundTruth(0);
    v11[14] = 1;
    sub_222C950EC();
    v11[13] = *(v3 + *(v9 + 24));
    v11[12] = 2;
    sub_222B7FAEC();
    sub_222C9512C();
    v11[11] = *(v3 + *(v9 + 28));
    v11[10] = 3;
    sub_222B7FB40();
    sub_222C950DC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ThinMediaGroundTruth.hash(into:)(uint64_t a1)
{
  sub_222C9367C();
  sub_222B80414(&qword_280FE02A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_222C9441C();
  v2 = type metadata accessor for ThinMediaGroundTruth(0);
  sub_222C9452C();
  v3 = *(v1 + *(v2 + 24));
  MEMORY[0x223DCA0B0](v3 >> 7);
  MEMORY[0x223DCA0B0](v3 & 0x7F);
  v4 = *(v1 + *(v2 + 28));
  if (v4 == 3)
  {
    return sub_222C9531C();
  }

  sub_222C9531C();
  return MEMORY[0x223DCA0B0](v4);
}

uint64_t ThinMediaGroundTruth.hashValue.getter()
{
  sub_222C952FC();
  sub_222C9367C();
  sub_222B80414(&qword_280FE02A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_222C9441C();
  v1 = type metadata accessor for ThinMediaGroundTruth(0);
  sub_222C9452C();
  v2 = *(v0 + *(v1 + 24));
  MEMORY[0x223DCA0B0](v2 >> 7);
  MEMORY[0x223DCA0B0](v2 & 0x7F);
  v3 = *(v0 + *(v1 + 28));
  sub_222C9531C();
  if (v3 != 3)
  {
    MEMORY[0x223DCA0B0](v3);
  }

  return sub_222C9534C();
}

uint64_t ThinMediaGroundTruth.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_222C9367C();
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v21 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025980, &qword_222C99770);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for ThinMediaGroundTruth(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222B7FA98();
  sub_222C9535C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v18 = a1;
  v12 = v20;
  v29 = 0;
  sub_222B80414(&qword_27D025178, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v13 = v21;
  sub_222C9507C();
  (*(v12 + 32))(v11, v13, v4);
  v28 = 1;
  v14 = sub_222C9503C();
  v15 = &v11[v9[5]];
  *v15 = v14;
  v15[1] = v16;
  v26 = 2;
  sub_222B7FB94();
  sub_222C9507C();
  v11[v9[6]] = v27;
  v24 = 3;
  sub_222B7FBE8();
  sub_222C9502C();
  (*(v22 + 8))(v8, v23);
  v11[v9[7]] = v25;
  sub_222B7E8D8(v11, v19);
  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  return sub_222B7E9A4(v11, type metadata accessor for ThinMediaGroundTruth);
}

uint64_t sub_222B7F58C(uint64_t a1, int *a2)
{
  sub_222C952FC();
  sub_222C9367C();
  sub_222B80414(&qword_280FE02A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_222C9441C();
  sub_222C9452C();
  v4 = *(v2 + a2[6]);
  MEMORY[0x223DCA0B0](v4 >> 7);
  MEMORY[0x223DCA0B0](v4 & 0x7F);
  v5 = *(v2 + a2[7]);
  sub_222C9531C();
  if (v5 != 3)
  {
    MEMORY[0x223DCA0B0](v5);
  }

  return sub_222C9534C();
}

void sub_222B7F688(void *result)
{
  v7 = MEMORY[0x277D84F90];
  v1 = result[2];
  if (v1)
  {
    v3 = 0;
    do
    {
      for (i = v3; ; ++i)
      {
        if (i >= v1)
        {
          __break(1u);
LABEL_14:
          __break(1u);
          return;
        }

        v5 = *(type metadata accessor for ThinMediaGroundTruth(0) - 8);
        v3 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_14;
        }

        sub_222B7F7CC(result + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * i, &v6);
        if (v6)
        {
          break;
        }

        if (v3 == v1)
        {
          return;
        }
      }

      MEMORY[0x223DC94A0]();
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_222C9475C();
      }

      sub_222C947AC();
    }

    while (v3 != v1);
  }
}

void sub_222B7F7CC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_222B80020(a1);
  if (v5 >> 60 != 15)
  {
    v6 = v4;
    v7 = v5;
    v8 = objc_allocWithZone(MEMORY[0x277D59D18]);
    sub_222B80358(v6, v7);
    v9 = sub_222C934FC();
    v10 = [v8 initWithJSON_];

    sub_222B803AC(v6, v7);
    if (v10)
    {
      v11 = *(type metadata accessor for ThinMediaGroundTruth(0) + 24);
      if ((*(a1 + v11) & 0x80) != 0)
      {
        if ((*(a1 + v11) & 0x7Fu) - 1 < 2)
        {
          v12 = 1;
        }

        else
        {
          v12 = 5;
        }
      }

      else
      {
        v12 = dword_222C999B4[*(a1 + v11)];
      }

      [v10 setSource_];
      if (*(a1 + v11) == 129)
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }

      [v10 setEntityFeedbackType_];
      sub_222B803AC(v6, v7);
      goto LABEL_18;
    }

    sub_222B803AC(v6, v7);
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v13 = sub_222C9431C();
  __swift_project_value_buffer(v13, qword_280FE2340);
  v14 = sub_222C942FC();
  v15 = sub_222C94A4C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_222B39000, v14, v15, "Failed to create ground truth summary", v16, 2u);
    MEMORY[0x223DCA8C0](v16, -1, -1);
  }

  v10 = 0;
LABEL_18:
  *a2 = v10;
}

uint64_t _s28SiriPrivateLearningInference20ThinMediaGroundTruthV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_222C9362C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ThinMediaGroundTruth(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_222C951FC() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[6];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10);
  v13 = *(a2 + v10);
  if ((v11 & 0x80000000) == 0)
  {
    if (v12 != v13)
    {
      return 0;
    }

LABEL_12:
    v15 = v4[7];
    v16 = *(a1 + v15);
    v17 = *(a2 + v15);
    if (v16 == 3)
    {
      if (v17 != 3)
      {
        return 0;
      }
    }

    else if (v16 != v17)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if ((v13 & 0x80) != 0 && ((v13 ^ v12) & 0x7F) == 0)
  {
    goto LABEL_12;
  }

  return result;
}

unint64_t sub_222B7FA98()
{
  result = qword_27D025968;
  if (!qword_27D025968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025968);
  }

  return result;
}

unint64_t sub_222B7FAEC()
{
  result = qword_27D025970;
  if (!qword_27D025970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025970);
  }

  return result;
}

unint64_t sub_222B7FB40()
{
  result = qword_27D025978;
  if (!qword_27D025978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025978);
  }

  return result;
}

unint64_t sub_222B7FB94()
{
  result = qword_27D025988;
  if (!qword_27D025988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025988);
  }

  return result;
}

unint64_t sub_222B7FBE8()
{
  result = qword_27D025990;
  if (!qword_27D025990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025990);
  }

  return result;
}

void sub_222B7FCAC(uint64_t a1)
{
  sub_222C9367C();
  if (v1 <= 0x3F)
  {
    sub_222B7FD48();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_222B7FD48()
{
  if (!qword_27D0259B0)
  {
    v0 = sub_222C94B5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D0259B0);
    }
  }
}

unint64_t sub_222B7FDAC()
{
  result = qword_27D0259B8;
  if (!qword_27D0259B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0259B8);
  }

  return result;
}

unint64_t sub_222B7FE04()
{
  result = qword_27D0259C0;
  if (!qword_27D0259C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0259C0);
  }

  return result;
}

unint64_t sub_222B7FE5C()
{
  result = qword_27D0259C8;
  if (!qword_27D0259C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0259C8);
  }

  return result;
}

uint64_t sub_222B7FEB0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7254646E756F7267 && a2 == 0xEF65707954687475 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000222CA9E80 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000222CA9EA0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_222C951FC();

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

uint64_t sub_222B80020(uint64_t a1)
{
  v1 = type metadata accessor for ThinMediaGroundTruth(0);
  MEMORY[0x28223BE20](v1);
  MEMORY[0x28223BE20](v2);
  sub_222C9323C();
  swift_allocObject();
  sub_222C9322C();
  sub_222B80414(&qword_27D0259D0, type metadata accessor for ThinMediaGroundTruth, &protocol conformance descriptor for ThinMediaGroundTruth);
  v3 = sub_222C9321C();

  return v3;
}

uint64_t sub_222B80358(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_222B803AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_222B803C0(a1, a2);
  }

  return a1;
}

uint64_t sub_222B803C0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_222B80414(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for MediaGroundTruthSummary(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1F && a1[24])
  {
    return (*a1 + 31);
  }

  v3 = ((*a1 >> 2) & 0x1E | (*a1 >> 7)) ^ 0x1F;
  if (v3 >= 0x1E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for MediaGroundTruthSummary(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 31;
    if (a3 >= 0x1F)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1F)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 8 * (((-a2 >> 1) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_222B80510(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0259E8, &qword_222C99AA8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222B809EC();
  sub_222C9536C();
  v15 = v8;
  v14 = 0;
  sub_222B7FAEC();
  sub_222C9512C();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v13 = 1;
  sub_222C9511C();
  v12 = 2;
  sub_222C9511C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_222B806D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0259D8, &qword_222C99AA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222B809EC();
  sub_222C9535C();
  if (!v2)
  {
    v16 = 0;
    sub_222B7FB94();
    sub_222C9507C();
    v9 = v17;
    v15 = 1;
    v11 = sub_222C9506C();
    v14 = 2;
    v12 = sub_222C9506C();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_222B808B8()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x656372756F73;
  }
}

uint64_t sub_222B80918@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_222B80BB0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_222B80940(uint64_t a1)
{
  v2 = sub_222B809EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B8097C(uint64_t a1)
{
  v2 = sub_222B809EC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_222B809EC()
{
  result = qword_27D0259E0;
  if (!qword_27D0259E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0259E0);
  }

  return result;
}

BOOL sub_222B80A40(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if ((*a1 & 0x80000000) == 0)
  {
    if ((v5 & 0x80) != 0)
    {
      return 0;
    }

    if (v2 != v5 || v4 != v6)
    {
      return 0;
    }

    return v3 == *(a2 + 2);
  }

  result = 0;
  if ((v5 & 0x80) != 0 && ((v5 ^ v2) & 0x7F) == 0 && v4 == v6)
  {
    return v3 == *(a2 + 2);
  }

  return result;
}

unint64_t sub_222B80AAC()
{
  result = qword_27D0259F0;
  if (!qword_27D0259F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0259F0);
  }

  return result;
}

unint64_t sub_222B80B04()
{
  result = qword_27D0259F8;
  if (!qword_27D0259F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0259F8);
  }

  return result;
}

unint64_t sub_222B80B5C()
{
  result = qword_27D025A00;
  if (!qword_27D025A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025A00);
  }

  return result;
}

uint64_t sub_222B80BB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000222CA9EC0 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000222CA9EE0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_222C951FC();

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

uint64_t sub_222B80CD4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_222C949AC();
  if (!v19)
  {
    return sub_222C9477C();
  }

  v41 = v19;
  v45 = sub_222C94E5C();
  v32 = sub_222C94E6C();
  sub_222C94E0C();
  result = sub_222C9499C();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_222C949DC();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_222C94E4C();
      result = sub_222C949BC();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t INInteraction.getTimestamp()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A08, &unk_222C99BD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v17 - v9;
  v11 = [v2 dateInterval];
  if (v11)
  {
    v12 = v11;
    sub_222C9326C();

    v13 = sub_222C932BC();
    (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
  }

  else
  {
    v13 = sub_222C932BC();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  }

  sub_222B812EC(v6, v10);
  sub_222C932BC();
  v14 = 1;
  if (!(*(*(v13 - 8) + 48))(v10, 1, v13))
  {
    sub_222C9329C();
    v14 = 0;
  }

  sub_222B4FCD4(v10, &qword_27D025A08, &unk_222C99BD0);
  v15 = sub_222C935EC();
  return (*(*(v15 - 8) + 56))(a1, v14, 1, v15);
}

uint64_t sub_222B812EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A08, &unk_222C99BD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AppInteraction.getTimestamp()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A08, &unk_222C99BD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = sub_222C93CAC();
  v9 = [v8 dateInterval];

  if (v9)
  {
    sub_222C9326C();

    v10 = sub_222C932BC();
    (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
  }

  else
  {
    v10 = sub_222C932BC();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  }

  sub_222B812EC(v4, v7);
  sub_222C932BC();
  v11 = 1;
  if (!(*(*(v10 - 8) + 48))(v7, 1, v10))
  {
    sub_222C9329C();
    v11 = 0;
  }

  sub_222B4FCD4(v7, &qword_27D025A08, &unk_222C99BD0);
  v12 = sub_222C935EC();
  return (*(*(v12 - 8) + 56))(a1, v11, 1, v12);
}

uint64_t sub_222B8158C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_222C947FC();

  sub_222C9477C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A10, &unk_222C99C60);
  sub_222C947FC();
  swift_getTupleTypeMetadata2();
  sub_222B81E6C();
  sub_222C9469C();

  swift_getWitnessTable();
  return sub_222C946BC();
}

uint64_t sub_222B816F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v37 = a6;
  v36 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v35 - v11;
  v13 = sub_222C935EC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  sub_222B81ED0(a2, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_222B4FCD4(v12, &qword_27D025360, &unk_222C98300);
    v18 = v37;
    *v37 = a3;
    v19 = sub_222C947FC();
    sub_222C9518C();
    swift_allocObject();

    v20 = sub_222C9473C();
    *v21 = sub_222C9477C();
    sub_222B5065C(v20, v19);
    v22 = sub_222C9476C();

    v18[1] = v22;
  }

  else
  {
    v24 = (*(v14 + 32))(v16, v12, v13);
    v38 = v17;
    MEMORY[0x28223BE20](v24);
    v25 = v36;
    *(&v35 - 4) = a4;
    *(&v35 - 3) = v25;
    *(&v35 - 2) = v16;
    v26 = sub_222C947FC();
    WitnessTable = swift_getWitnessTable();
    v28 = sub_222C1FE68(sub_222B81F40, (&v35 - 6), v26, WitnessTable);
    v30 = v29;
    v31 = v37;
    *v37 = v28;
    sub_222C9518C();
    swift_allocObject();
    v32 = sub_222C9473C();
    *v33 = v30;
    sub_222B5065C(v32, v26);
    v34 = sub_222C9476C();

    v31[1] = v34;
    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_222B81A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_222C935EC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a4 + 8))(a3, a4, v11);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_222B4FCD4(v8, &qword_27D025360, &unk_222C98300);
    v14 = 0;
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    sub_222B81F4C();
    v15 = sub_222C9446C();
    (*(v10 + 8))(v13, v9);
    v14 = v15 ^ 1;
  }

  return v14 & 1;
}

uint64_t static TimeEventUtils.groupAndJoinEvents<A, B>(milestoneEvents:eventsToJoin:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20[5] = a6;
  v21 = a1;
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a5;
  v10 = sub_222C947FC();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  WitnessTable = swift_getWitnessTable();
  v14 = sub_222B80CD4(sub_222B81DE0, v20, v10, v11, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v13);
  v15 = sub_222B8158C(a2, v14, a4, a6);

  v21 = a1;
  *&v25 = v15;
  sub_222C947FC();
  v16 = sub_222C947FC();
  v17 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  sub_222C9524C();

  v25 = v26;
  swift_getTupleTypeMetadata2();
  v21 = v10;
  v22 = v16;
  v23 = v17;
  v24 = v18;
  sub_222C94D3C();
  swift_getWitnessTable();
  return sub_222C9480C();
}

unint64_t sub_222B81E6C()
{
  result = qword_280FDB750;
  if (!qword_280FDB750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D025A10, &unk_222C99C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FDB750);
  }

  return result;
}

uint64_t sub_222B81ED0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_222B81F4C()
{
  result = qword_27D025A18;
  if (!qword_27D025A18)
  {
    sub_222C935EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025A18);
  }

  return result;
}

SiriPrivateLearningInference::PIMSConstraintMismatch __swiftcall PIMSConstraintMismatch.init(mismatchReason:)(SiriPrivateLearningInference::PIMSConstraintMismatch mismatchReason)
{
  v2 = *mismatchReason.eventName._countAndFlagsBits;
  *v1 = 0xD000000000000016;
  *(v1 + 8) = 0x8000000222C99C50;
  *(v1 + 16) = v2;
  return mismatchReason;
}

uint64_t PIMSConstraintMismatch.eventName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PIMSConstraintMismatch.eventName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

unint64_t PIMSConstraintMismatch.getLoggableProperties()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025410, &unk_222C991B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222C97C40;
  strcpy((inited + 32), "mismatchReason");
  *(inited + 47) = -18;
  v1 = PIMSConstraintMismatchReason.rawValue.getter();
  v2 = MEMORY[0x277D5FD28];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v2;
  *(inited + 48) = v1;
  *(inited + 56) = v3;
  v4 = sub_222B628C4(inited);
  swift_setDeallocating();
  sub_222B629F8(inited + 32);
  return v4;
}

unint64_t PIMSConstraintMismatchReason.rawValue.getter()
{
  result = 0xD000000000000027;
  switch(*v0)
  {
    case 1:
    case 0xB:
      result = 0xD000000000000025;
      break;
    case 2:
    case 0xE:
      result = 0xD000000000000023;
      break;
    case 3:
      result = 0xD000000000000024;
      break;
    case 4:
    case 0x15:
    case 0x1C:
      result = 0xD000000000000032;
      break;
    case 5:
    case 6:
    case 0x1A:
      result = 0xD00000000000002ELL;
      break;
    case 7:
    case 0x10:
      result = 0xD000000000000033;
      break;
    case 8:
      result = 0xD00000000000002FLL;
      break;
    case 9:
      result = 0xD000000000000034;
      break;
    case 0xA:
    case 0xF:
      result = 0xD000000000000035;
      break;
    case 0xC:
      result = 0xD000000000000029;
      break;
    case 0xD:
      result = 0xD00000000000002BLL;
      break;
    case 0x11:
      result = 0xD000000000000038;
      break;
    case 0x12:
    case 0x1B:
      result = 0xD00000000000002DLL;
      break;
    case 0x13:
    case 0x14:
      result = 0xD00000000000002CLL;
      break;
    case 0x16:
      result = 0xD000000000000036;
      break;
    case 0x17:
      result = 0xD00000000000002ALL;
      break;
    case 0x18:
    case 0x19:
      result = 0xD000000000000030;
      break;
    case 0x1D:
      result = 0xD000000000000031;
      break;
    case 0x1E:
      result = 0xD00000000000003FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_222B823AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025410, &unk_222C991B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222C97C40;
  strcpy((inited + 32), "mismatchReason");
  *(inited + 47) = -18;
  v1 = PIMSConstraintMismatchReason.rawValue.getter();
  v2 = MEMORY[0x277D5FD28];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v2;
  *(inited + 48) = v1;
  *(inited + 56) = v3;
  v4 = sub_222B628C4(inited);
  swift_setDeallocating();
  sub_222B629F8(inited + 32);
  return v4;
}

SiriPrivateLearningInference::PIMSConstraintMismatchReason_optional __swiftcall PIMSConstraintMismatchReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222C9522C();

  v5 = 0;
  v6 = 13;
  switch(v3)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v5 = 1;
      goto LABEL_25;
    case 2:
      v5 = 2;
      goto LABEL_25;
    case 3:
      v5 = 3;
      goto LABEL_25;
    case 4:
      v5 = 4;
      goto LABEL_25;
    case 5:
      v5 = 5;
      goto LABEL_25;
    case 6:
      v5 = 6;
      goto LABEL_25;
    case 7:
      v5 = 7;
      goto LABEL_25;
    case 8:
      v5 = 8;
      goto LABEL_25;
    case 9:
      v5 = 9;
      goto LABEL_25;
    case 10:
      v5 = 10;
      goto LABEL_25;
    case 11:
      v5 = 11;
      goto LABEL_25;
    case 12:
      v5 = 12;
LABEL_25:
      v6 = v5;
      break;
    case 13:
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    default:
      v6 = 31;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_222B825F4()
{
  v0 = PIMSConstraintMismatchReason.rawValue.getter();
  v2 = v1;
  if (v0 == PIMSConstraintMismatchReason.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_222C951FC();
  }

  return v5 & 1;
}

uint64_t sub_222B82690()
{
  sub_222C952FC();
  PIMSConstraintMismatchReason.rawValue.getter();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222B826F8(uint64_t a1)
{
  PIMSConstraintMismatchReason.rawValue.getter();
  sub_222C9452C();
}

uint64_t sub_222B8275C(uint64_t a1)
{
  sub_222C952FC();
  PIMSConstraintMismatchReason.rawValue.getter();
  sub_222C9452C();

  return sub_222C9534C();
}

unint64_t sub_222B827CC@<X0>(unint64_t *a1@<X8>)
{
  result = PIMSConstraintMismatchReason.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_222B827F8()
{
  result = qword_27D025A20;
  if (!qword_27D025A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025A20);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PIMSConstraintMismatchReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE2)
  {
    goto LABEL_17;
  }

  if (a2 + 30 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 30) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 30;
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

      return (*a1 | (v4 << 8)) - 30;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 30;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v8 = v6 - 31;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PIMSConstraintMismatchReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE2)
  {
    v4 = 0;
  }

  if (a2 > 0xE1)
  {
    v5 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
    *result = a2 + 30;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_222B829BC(uint64_t a1, char a2, uint64_t a3)
{
  sub_222B42624(a3, &v18);
  sub_222B42624(a1, &v16);
  v5 = v19;
  if ((a2 & 1) == 0)
  {
    v6 = v17;
    v9 = v18;
    v10 = v16;
    if (v19 == 5)
    {
      sub_222B831B0(v18, 5uLL);
      if (v6 == 5)
      {
        v5 = 5;
        sub_222B831B0(v10, 5uLL);
        sub_222B831D4(v9, 5uLL);
        v8 = 1;
        goto LABEL_16;
      }

      sub_222B831B0(v10, v6);
      v5 = 5;
    }

    else
    {
      v14 = v18;
      v15 = v19;
      if (v17 != 5)
      {
        goto LABEL_13;
      }

      sub_222B831B0(v18, v19);
      sub_222B831B0(v10, 5uLL);
      sub_222B831B0(v9, v5);
      sub_222B831E4(v9, v5);
    }

    sub_222B831D4(v9, v5);
    sub_222B831D4(v10, v6);
    v8 = 0;
    goto LABEL_16;
  }

  v6 = v17;
  if (v19 != 5 && v17 != 5)
  {
    v9 = v18;
    v10 = v16;
    v14 = v18;
    v15 = v19;
LABEL_13:
    v12 = v10;
    v13 = v6;
    sub_222B831B0(v9, v19);
    sub_222B831B0(v10, v6);
    sub_222B831B0(v9, v5);
    v8 = _s28SiriPrivateLearningInference19NowPlayingMediaTypeO2eeoiySbAC_ACtFZ_0(&v14, &v12);
    sub_222B831E4(v12, v13);
    sub_222B831E4(v14, v15);
    sub_222B831D4(v9, v5);
    goto LABEL_16;
  }

  v8 = 0;
  v10 = v16;
  v9 = v18;
LABEL_16:
  sub_222B831D4(v10, v6);
  sub_222B831D4(v9, v5);
  return v8 & 1;
}

uint64_t sub_222B82B70(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sub_222B41824(v1);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = v2;
  v5 = v3;
  sub_222B42624(v1, &v19);
  v6 = v20;
  if (v20 != 5)
  {
    v11 = v19;
    if (v4 == 0x6C7070612E6D6F63 && v5 == 0xEF636973754D2E65)
    {
    }

    else
    {
      v13 = sub_222C951FC();

      if ((v13 & 1) == 0)
      {
        sub_222B831D4(v11, v6);
        return 1;
      }
    }

    if (v6 > 1)
    {
      switch(v6)
      {
        case 2:
          v14 = v11;
          v15 = 2;
          goto LABEL_29;
        case 3:
          v14 = v11;
          v15 = 3;
          goto LABEL_29;
        case 4:
          v14 = v11;
          v15 = 4;
LABEL_29:
          sub_222B831E4(v14, v15);
          sub_222B831E4(0, 0);
          return 1;
      }

LABEL_28:
      v14 = v11;
      v15 = v6;
      goto LABEL_29;
    }

    if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_28;
      }

      v16 = v11;
      v17 = 1;
    }

    else
    {
      v16 = v11;
      v17 = 0;
    }

    sub_222B831E4(v16, v17);
    sub_222B831E4(0, 0);
    return v6;
  }

LABEL_4:
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v7 = sub_222C9431C();
  __swift_project_value_buffer(v7, qword_280FE2340);
  v8 = sub_222C942FC();
  v9 = sub_222C94A4C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_222B39000, v8, v9, "Missing bundleId or mediaType", v10, 2u);
    MEMORY[0x223DCA8C0](v10, -1, -1);
  }

  return 0;
}

uint64_t sub_222B82D90(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = sub_222B41824(v2);
  v6 = v5;
  v7 = sub_222B41824(v3);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_48;
    }

    if (v4 == v7 && v6 == v8)
    {
    }

    else
    {
      v10 = sub_222C951FC();

      if ((v10 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v8)
  {
    goto LABEL_48;
  }

  v11 = sub_222B427FC(v2);
  v13 = v12;
  v14 = sub_222B427FC(v3);
  if (!v13 || !v15)
  {
    goto LABEL_48;
  }

  if (v11 == v14 && v13 == v15)
  {
  }

  else
  {
    v16 = sub_222C951FC();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v17 = sub_222B427E4(v2);
  v19 = v18;
  v20 = sub_222B427E4(v3);
  if (v19)
  {
    if (!v21)
    {
      goto LABEL_48;
    }

    if (v17 == v20 && v19 == v21)
    {
    }

    else
    {
      v22 = sub_222C951FC();

      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v21)
  {
    goto LABEL_48;
  }

  v23 = sub_222B427CC(v2);
  v25 = v24;
  v26 = sub_222B427CC(v3);
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_48;
    }

    if (v23 == v26 && v25 == v27)
    {
    }

    else
    {
      v28 = sub_222C951FC();

      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v27)
  {
    goto LABEL_48;
  }

  v29 = sub_222B427B4(v2);
  v31 = v30;
  v32 = sub_222B427B4(v3);
  if (!v31)
  {
    if (v33)
    {
      goto LABEL_48;
    }

    goto LABEL_42;
  }

  if (!v33)
  {
    goto LABEL_48;
  }

  if (v29 == v32 && v31 == v33)
  {

    goto LABEL_42;
  }

  v34 = sub_222C951FC();

  if ((v34 & 1) == 0)
  {
    return 0;
  }

LABEL_42:
  if ((sub_222B829BC(v3, 0, v2) & 1) == 0)
  {
    return 0;
  }

  v35 = sub_222B427FC(v2);
  v37 = v36;
  v38 = sub_222B427FC(v3);
  if (v37)
  {
    if (!v39)
    {
      goto LABEL_48;
    }

    if (v35 == v38 && v37 == v39)
    {
    }

    else
    {
      v41 = sub_222C951FC();

      if ((v41 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v39)
  {
    goto LABEL_48;
  }

  v42 = COERCE_DOUBLE(sub_222B4279C(v2));
  v44 = v43;
  v45 = COERCE_DOUBLE(sub_222B4279C(v3));
  if (v44)
  {
    if ((v46 & 1) == 0)
    {
      return 0;
    }
  }

  else if ((v46 & 1) != 0 || v42 != v45)
  {
    return 0;
  }

  v47 = sub_222B423A0(v2);
  v49 = v48;
  v50 = sub_222B423A0(v3);
  if (!v49)
  {
    if (!v51)
    {
      return 1;
    }

    goto LABEL_48;
  }

  if (!v51)
  {
LABEL_48:

    return 0;
  }

  if (v47 == v50 && v49 == v51)
  {

    return 1;
  }

  else
  {
    v52 = sub_222C951FC();

    return v52 & 1;
  }
}

uint64_t sub_222B831B0(uint64_t a1, unint64_t a2)
{
  if (a2 != 5)
  {
    return sub_222B831C0(a1, a2);
  }

  return a1;
}

uint64_t sub_222B831C0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_222B831D4(uint64_t result, unint64_t a2)
{
  if (a2 != 5)
  {
    return sub_222B831E4(result, a2);
  }

  return result;
}

uint64_t sub_222B831E4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t InferenceFeatures.InferenceFeatureManager.init()()
{
  v0 = sub_222C9369C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_222C93CEC();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = [objc_opt_self() clientWithIdentifier_];
  v7[8] = sub_222B833DC();
  v7[9] = MEMORY[0x277D5FD30];
  v7[5] = v2;
  v7[3] = sub_222C9406C();
  v7[4] = MEMORY[0x277D5FBF0];
  __swift_allocate_boxed_opaque_existential_1(v7);
  sub_222C9405C();
  v3 = [objc_opt_self() currentLocale];
  sub_222C9368C();

  v4 = [objc_opt_self() sharedPreferences];
  sub_222C93CDC();
  v6[3] = sub_222C93D4C();
  v6[4] = MEMORY[0x277D5FB38];
  __swift_allocate_boxed_opaque_existential_1(v6);
  sub_222C93D3C();
  return sub_222C93D1C();
}

unint64_t sub_222B833DC()
{
  result = qword_280FE02B8[0];
  if (!qword_280FE02B8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_280FE02B8);
  }

  return result;
}

uint64_t InferenceFeatures.InferenceFeatureManager.__deallocating_deinit()
{
  _s28SiriPrivateLearningInference0D8FeaturesO0D14FeatureManagerCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_222B8348C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A50, &qword_222C99F18);
  sub_222C942CC();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_222C99E80;
  sub_222C942BC();
  sub_222C942BC();
  sub_222C942BC();
  sub_222C942BC();
  sub_222C942BC();
  sub_222C942BC();
  sub_222C942BC();
  sub_222C942BC();
  sub_222C942BC();
  sub_222C942BC();
  sub_222C942BC();
  sub_222C942BC();
  sub_222C942BC();
  v1 = sub_222B72870(v0);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27D025A28 = v1;
  return result;
}

uint64_t static InferenceFeatures.top13Locales.getter()
{
  if (qword_27D024680 != -1)
  {
    swift_once();
  }
}

uint64_t sub_222B83750()
{
  v0 = sub_222C93D0C();
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A38, &unk_222C99EF8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254F0, &qword_222C98710) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_222C97C40;
  v4 = v3 + v2;
  v5 = v1[14];
  v6 = *MEMORY[0x277D5FD00];
  v7 = sub_222C942DC();
  (*(*(v7 - 8) + 104))(v4, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A40, &qword_222C99F08);
  v8 = sub_222C9407C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_222C96900;
  v13 = (v12 + v11);
  v14 = sub_222C93BAC();
  v13[3] = v14;
  v13[4] = sub_222B856A0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v14 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D5FAE8], v14);
  v16 = *(v9 + 104);
  v16(v13, *MEMORY[0x277D5FBF8], v8);
  v17 = (v13 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A48, &qword_222C99F10);
  *v17 = sub_222C93DDC();
  sub_222C93D5C();
  v16(v17, *MEMORY[0x277D5FC00], v8);
  *(v4 + v5) = v12;
  v18 = *MEMORY[0x277D5FCD8];
  v19 = sub_222C941AC();
  (*(*(v19 - 8) + 104))(v4 + v5, v18, v19);
  sub_222B630B4(v3);
  swift_setDeallocating();
  sub_222B855D4(v4);
  swift_deallocClassInstance();
  sub_222C93CFC();
  sub_222C93BCC();
  swift_allocObject();
  result = sub_222C93BBC();
  qword_280FDFF60 = result;
  return result;
}

uint64_t sub_222B83B14()
{
  v0 = sub_222C93D0C();
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A38, &unk_222C99EF8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254F0, &qword_222C98710) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_222C97C40;
  v4 = v3 + v2;
  v5 = v1[14];
  v6 = *MEMORY[0x277D5FD00];
  v7 = sub_222C942DC();
  (*(*(v7 - 8) + 104))(v4, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A40, &qword_222C99F08);
  v8 = sub_222C9407C();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_222C97C40;
  v12 = (v11 + v10);
  v13 = sub_222C93BAC();
  v12[3] = v13;
  v12[4] = sub_222B856A0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v13 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D5FAF0], v13);
  (*(v9 + 104))(v12, *MEMORY[0x277D5FBF8], v8);
  *(v4 + v5) = v11;
  v15 = *MEMORY[0x277D5FCD8];
  v16 = sub_222C941AC();
  (*(*(v16 - 8) + 104))(v4 + v5, v15, v16);
  sub_222B630B4(v3);
  swift_setDeallocating();
  sub_222B855D4(v4);
  swift_deallocClassInstance();
  sub_222C93CFC();
  sub_222C93BCC();
  swift_allocObject();
  result = sub_222C93BBC();
  qword_27D025A30 = result;
  return result;
}

uint64_t sub_222B83E84()
{
  v0 = sub_222C93D0C();
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A38, &unk_222C99EF8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254F0, &qword_222C98710) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_222C97C40;
  v4 = v3 + v2;
  v5 = v1[14];
  v6 = *MEMORY[0x277D5FD00];
  v7 = sub_222C942DC();
  (*(*(v7 - 8) + 104))(v4, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A40, &qword_222C99F08);
  v8 = sub_222C9407C();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_222C97C40;
  v12 = (v11 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A48, &qword_222C99F10);
  *v12 = sub_222C93DCC();
  sub_222C93D5C();
  (*(v9 + 104))(v12, *MEMORY[0x277D5FC00], v8);
  *(v4 + v5) = v11;
  v13 = *MEMORY[0x277D5FCD8];
  v14 = sub_222C941AC();
  (*(*(v14 - 8) + 104))(v4 + v5, v13, v14);
  sub_222B630B4(v3);
  swift_setDeallocating();
  sub_222B855D4(v4);
  swift_deallocClassInstance();
  sub_222C93CFC();
  sub_222C93BCC();
  swift_allocObject();
  result = sub_222C93BBC();
  qword_280FDFFC0 = result;
  return result;
}

uint64_t sub_222B841C4()
{
  v0 = sub_222C93D0C();
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A38, &unk_222C99EF8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254F0, &qword_222C98710) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_222C97C40;
  v4 = v3 + v2;
  v5 = v1[14];
  v6 = *MEMORY[0x277D5FD00];
  v7 = sub_222C942DC();
  (*(*(v7 - 8) + 104))(v4, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A40, &qword_222C99F08);
  v8 = sub_222C9407C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_222C96900;
  v13 = (v12 + v11);
  v14 = sub_222C93BAC();
  v13[3] = v14;
  v13[4] = sub_222B856A0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v14 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D5FAE0], v14);
  v16 = *(v9 + 104);
  v16(v13, *MEMORY[0x277D5FBF8], v8);
  v17 = (v13 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A48, &qword_222C99F10);
  *v17 = sub_222C93D6C();
  sub_222C93DBC();
  v16(v17, *MEMORY[0x277D5FC00], v8);
  *(v4 + v5) = v12;
  v18 = *MEMORY[0x277D5FCD8];
  v19 = sub_222C941AC();
  (*(*(v19 - 8) + 104))(v4 + v5, v18, v19);
  sub_222B630B4(v3);
  swift_setDeallocating();
  sub_222B855D4(v4);
  swift_deallocClassInstance();
  sub_222C93CFC();
  sub_222C93BCC();
  swift_allocObject();
  result = sub_222C93BBC();
  qword_280FE0378 = result;
  return result;
}

uint64_t sub_222B84588()
{
  v0 = sub_222C93D0C();
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A38, &unk_222C99EF8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254F0, &qword_222C98710) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_222C97C40;
  v4 = v3 + v2;
  v5 = v1[14];
  v6 = *MEMORY[0x277D5FD00];
  v7 = sub_222C942DC();
  (*(*(v7 - 8) + 104))(v4, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A40, &qword_222C99F08);
  v8 = sub_222C9407C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_222C96900;
  v13 = (v12 + v11);
  v14 = sub_222C93BAC();
  v13[3] = v14;
  v13[4] = sub_222B856A0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v14 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D5FAD0], v14);
  v16 = *(v9 + 104);
  v16(v13, *MEMORY[0x277D5FBF8], v8);
  v17 = (v13 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A48, &qword_222C99F10);
  *v17 = sub_222C93D7C();
  sub_222C93DBC();
  v16(v17, *MEMORY[0x277D5FC00], v8);
  *(v4 + v5) = v12;
  v18 = *MEMORY[0x277D5FCD8];
  v19 = sub_222C941AC();
  (*(*(v19 - 8) + 104))(v4 + v5, v18, v19);
  sub_222B630B4(v3);
  swift_setDeallocating();
  sub_222B855D4(v4);
  swift_deallocClassInstance();
  sub_222C93CFC();
  sub_222C93BCC();
  swift_allocObject();
  result = sub_222C93BBC();
  qword_280FDFF90 = result;
  return result;
}

uint64_t sub_222B8494C()
{
  v0 = sub_222C93D0C();
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A38, &unk_222C99EF8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254F0, &qword_222C98710) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_222C97C40;
  v4 = v3 + v2;
  v5 = v1[14];
  v6 = *MEMORY[0x277D5FD00];
  v7 = sub_222C942DC();
  (*(*(v7 - 8) + 104))(v4, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A40, &qword_222C99F08);
  v8 = sub_222C9407C();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_222C97C40;
  v12 = (v11 + v10);
  v13 = sub_222C93BAC();
  v12[3] = v13;
  v12[4] = sub_222B856A0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v13 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D5FAD8], v13);
  (*(v9 + 104))(v12, *MEMORY[0x277D5FBF8], v8);
  *(v4 + v5) = v11;
  v15 = *MEMORY[0x277D5FCD8];
  v16 = sub_222C941AC();
  (*(*(v16 - 8) + 104))(v4 + v5, v15, v16);
  sub_222B630B4(v3);
  swift_setDeallocating();
  sub_222B855D4(v4);
  swift_deallocClassInstance();
  sub_222C93CFC();
  sub_222C93BCC();
  swift_allocObject();
  result = sub_222C93BBC();
  qword_280FDFFA8 = result;
  return result;
}

uint64_t sub_222B84CBC()
{
  v0 = sub_222C93E8C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_222C93FEC();
  __swift_allocate_value_buffer(v1, qword_280FDFF30);
  __swift_project_value_buffer(v1, qword_280FDFF30);
  sub_222C93DAC();
  sub_222C93DBC();
  return sub_222C93FDC();
}

uint64_t static InferenceFeatures.pimsPartialRepetitionSimilarityThreshold.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FDFF28 != -1)
  {
    swift_once();
  }

  v2 = sub_222C93FEC();
  v3 = __swift_project_value_buffer(v2, qword_280FDFF30);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_222B84E1C()
{
  v0 = sub_222C93D0C();
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A38, &unk_222C99EF8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254F0, &qword_222C98710) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_222C97C40;
  v4 = v3 + v2;
  v5 = v1[14];
  v6 = *MEMORY[0x277D5FD00];
  v7 = sub_222C942DC();
  (*(*(v7 - 8) + 104))(v4, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A40, &qword_222C99F08);
  v8 = sub_222C9407C();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_222C97C40;
  v12 = (v11 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A48, &qword_222C99F10);
  *v12 = sub_222C93D8C();
  sub_222C93DBC();
  (*(v9 + 104))(v12, *MEMORY[0x277D5FC00], v8);
  *(v4 + v5) = v11;
  v13 = *MEMORY[0x277D5FCD8];
  v14 = sub_222C941AC();
  (*(*(v14 - 8) + 104))(v4 + v5, v13, v14);
  sub_222B630B4(v3);
  swift_setDeallocating();
  sub_222B855D4(v4);
  swift_deallocClassInstance();
  sub_222C93CFC();
  sub_222C93BCC();
  swift_allocObject();
  result = sub_222C93BBC();
  qword_280FDFF78 = result;
  return result;
}

uint64_t sub_222B8515C()
{
  v0 = sub_222C93D0C();
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A38, &unk_222C99EF8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254F0, &qword_222C98710) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_222C97C40;
  v4 = v3 + v2;
  v5 = v1[14];
  v6 = *MEMORY[0x277D5FD00];
  v7 = sub_222C942DC();
  (*(*(v7 - 8) + 104))(v4, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A40, &qword_222C99F08);
  v8 = sub_222C9407C();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_222C97C40;
  v12 = (v11 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A48, &qword_222C99F10);
  *v12 = sub_222C93D9C();
  sub_222C93DBC();
  (*(v9 + 104))(v12, *MEMORY[0x277D5FC00], v8);
  *(v4 + v5) = v11;
  v13 = *MEMORY[0x277D5FCD8];
  v14 = sub_222C941AC();
  (*(*(v14 - 8) + 104))(v4 + v5, v13, v14);
  sub_222B630B4(v3);
  swift_setDeallocating();
  sub_222B855D4(v4);
  swift_deallocClassInstance();
  sub_222C93CFC();
  sub_222C93BCC();
  swift_allocObject();
  result = sub_222C93BBC();
  qword_280FDFF50 = result;
  return result;
}

uint64_t sub_222B8549C(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t type metadata accessor for InferenceFeatures.InferenceFeatureManager(uint64_t a1)
{
  result = qword_280FE03A8;
  if (!qword_280FE03A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}