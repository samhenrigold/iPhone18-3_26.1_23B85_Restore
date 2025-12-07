uint64_t sub_22BAD34EC@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v32 = a3;
  v5 = sub_22BB1F35C();
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BB1F3AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v25 - v13;
  if ((a1[1] & 1) == 0 && (a1[3] & 1) == 0)
  {
    v15 = a1[2];
    v28 = *a1;
    v29 = v15;
    *a1 = 0;
    *(a1 + 8) = 1;
    a1[2] = 0;
    *(a1 + 24) = 1;
    v27 = *(a1[4] + 16);
    sub_22BB1F38C();
    sub_22BB1F38C();
    sub_22BB1F39C();

    sub_22BB1F33C();
    v30 = *(v9 + 8);
    v30(v11, v8);
    sub_22BACDF8C();
    sub_22BACCE68();
    sub_22BAD381C(v16, v17);
    sub_22BACCE68();
    sub_22BAD381C(v18, v19);
    v20 = sub_22BB1F39C();
    v26 = sub_22BB1F9BC();
    if (sub_22BB1FA0C())
    {
      v21 = swift_slowAlloc();
      v25[1] = v3;
      v22 = v21;
      *v21 = 134218496;
      *(v21 + 4) = v28;
      *(v21 + 12) = 2048;
      *(v21 + 14) = v29;
      *(v21 + 22) = 2050;
      *(v21 + 24) = v27;
      v23 = sub_22BB1F34C();
      _os_signpost_emit_with_name_impl(&dword_22BABB000, v20, v26, v23, "ManagementPolicy", "%{public, signpost.description:begin_time}llu %{public, signpost.description:end_time}llu count=%{public}ld", v22, 0x20u);
      MEMORY[0x23189DF20](v22, -1, -1);
    }

    (*(v31 + 8))(v7, v5);
    v30(v14, v8);
  }

  *v32 = a1[4];
}

unint64_t *sub_22BAD3820(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_22BAD3980(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_22BB10DAC(v8, v4, v2);
  result = MEMORY[0x23189DF20](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_22BAD3980(unint64_t *result, uint64_t a2, uint64_t a3)
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
    if (*(*(a3 + 56) + v11) == 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_22BAD3A6C(result, a2, v4, a3);
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
      return sub_22BAD3A6C(result, a2, v4, a3);
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
  return result;
}

uint64_t sub_22BAD3A6C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF610, &qword_22BB21248);
  result = sub_22BB1FC2C();
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
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v32 = *(v17 + v16);
    sub_22BB1FDDC();

    sub_22BB1F6EC();
    result = sub_22BB1FE0C();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    *(*(v9 + 56) + v24) = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22BAD3CA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x277D84F90];
  sub_22BAC8968(0, v1, 0);
  v2 = v25;
  v4 = a1 + 64;
  result = sub_22BB1FA9C();
  v6 = result;
  v7 = 0;
  v24 = *(a1 + 36);
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v23 = *v10;
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_22BAC8968((v13 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = v25 + 16 * v12;
    *(v14 + 32) = v23;
    *(v14 + 40) = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_22BADEAF4(v6, v24, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_22BADEAF4(v6, v24, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return v2;
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_22BAD3F4C@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v32 = a3;
  v5 = sub_22BB1F35C();
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BB1F3AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v25 - v13;
  if ((a1[1] & 1) == 0 && (a1[3] & 1) == 0)
  {
    v15 = a1[2];
    v28 = *a1;
    v29 = v15;
    *a1 = 0;
    *(a1 + 8) = 1;
    a1[2] = 0;
    *(a1 + 24) = 1;
    v27 = *(a1[4] + 16);
    sub_22BB1F38C();
    sub_22BB1F38C();
    sub_22BB1F39C();

    sub_22BB1F33C();
    v30 = *(v9 + 8);
    v30(v11, v8);
    sub_22BACDF8C();
    sub_22BACCE68();
    sub_22BAD381C(v16, v17);
    sub_22BACCE68();
    sub_22BAD381C(v18, v19);
    v20 = sub_22BB1F39C();
    v26 = sub_22BB1F9BC();
    if (sub_22BB1FA0C())
    {
      v21 = swift_slowAlloc();
      v25[1] = v3;
      v22 = v21;
      *v21 = 134218496;
      *(v21 + 4) = v28;
      *(v21 + 12) = 2048;
      *(v21 + 14) = v29;
      *(v21 + 22) = 2050;
      *(v21 + 24) = v27;
      v23 = sub_22BB1F34C();
      _os_signpost_emit_with_name_impl(&dword_22BABB000, v20, v26, v23, "WindowVisibility", "%{public, signpost.description:begin_time}llu %{public, signpost.description:end_time}llu count=%{public}ld", v22, 0x20u);
      MEMORY[0x23189DF20](v22, -1, -1);
    }

    (*(v31 + 8))(v7, v5);
    v30(v14, v8);
  }

  *v32 = a1[4];
}

uint64_t sub_22BAD427C(uint64_t a1, uint64_t a2)
{
  v25 = sub_22BAD4468(MEMORY[0x277D84F90]);
  v23 = *(a1 + 16);
  if (!v23)
  {
    return v25;
  }

  v4 = 0;
  v22 = a1 + 32;
  v5 = a2 + 56;
  while (1)
  {
    v6 = *(v22 + 8 * v4);
    v7 = *(v6 + 16);
    if (v7)
    {
      break;
    }

LABEL_4:
    if (++v4 == v23)
    {
      return v25;
    }
  }

  v24 = v4;

  v9 = 0;
  v10 = 0;
  while (v9 < *(v6 + 16))
  {
    if (*(a2 + 16))
    {
      v11 = (v6 + 32 + 16 * v9);
      v13 = *v11;
      v12 = v11[1];
      sub_22BB1FDDC();

      sub_22BB1F6EC();
      v14 = sub_22BB1FE0C();
      v15 = -1 << *(a2 + 32);
      v16 = v14 & ~v15;
      if ((*(v5 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (1)
        {
          v18 = (*(a2 + 48) + 16 * v16);
          v19 = *v18 == v13 && v18[1] == v12;
          if (v19 || (sub_22BB1FD9C() & 1) != 0)
          {
            break;
          }

          v16 = (v16 + 1) & v17;
          if (((*(v5 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_22BB0EC04(v10, v13, v12, isUniquelyReferenced_nonNull_native);

        if (__OFADD__(v10++, 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
LABEL_7:
      }
    }

    if (++v9 == v7)
    {

      v4 = v24;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_22BAD4468(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF018, &qword_22BB21218);
    v3 = sub_22BB1FC2C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22BAD6B9C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

void *sub_22BAD4564(void *a1, int64_t a2, char a3)
{
  result = sub_22BAC49DC(a1, a2, a3, *v3, &qword_27D8DF2D0, &unk_22BB227F0, MEMORY[0x277D746B0]);
  *v3 = result;
  return result;
}

void *sub_22BAD45C8(uint64_t a1, uint64_t a2)
{
  v86 = type metadata accessor for FragmentCollator.WindowOcclusionInfo(0);
  v88 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v87 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v71 - v6;
  v77 = sub_22BB1F45C();
  v8 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF5A8, &qword_22BB22BA0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v71 - v12;
  v14 = sub_22BB1E55C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v83 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v99 = &v71 - v18;
  MEMORY[0x28223BE20](v19);
  v98 = &v71 - v20;
  MEMORY[0x28223BE20](v21);
  v97 = &v71 - v22;
  MEMORY[0x28223BE20](v23);
  v78 = &v71 - v24;
  sub_22BAD4EF0(a2, &v71 - v24);
  (*(v15 + 56))(v13, 1, 1, v14);
  v72 = v13;
  v100 = sub_22BAD5458(a2, v13);
  v25 = sub_22BAD70AC(MEMORY[0x277D84F90]);
  v27 = *(a1 + 16);
  v89 = v15;
  v80 = v27;
  if (!v27)
  {
LABEL_29:

    sub_22BAC81E8(v72, &qword_27D8DF5A8, &qword_22BB22BA0);
    (*(v89 + 8))(v78, v14);
    return v25;
  }

  v28 = a1;
  v29 = 0;
  v76 = v28 + 32;
  v75 = (v8 + 8);
  v96 = (v15 + 16);
  v85 = (v15 + 32);
  v82 = v15 + 40;
  v93 = (v15 + 8);
  *&v26 = 134349570;
  v73 = v26;
  v90 = v7;
  v91 = v14;
  v79 = v28;
  v74 = v10;
  while (1)
  {
    v30 = *(v76 + 8 * v29);
    v31 = v29 + 1;

    sub_22BB1F43C();

    v32 = sub_22BB1F44C();
    v33 = sub_22BB1F89C();

    v34 = os_log_type_enabled(v32, v33);
    v94 = v30;
    v81 = v31;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v101 = v36;
      *v35 = v73;
      *(v35 + 4) = v31;
      *(v35 + 12) = 2050;
      *(v35 + 14) = v80;

      *(v35 + 22) = 2082;
      v37 = MEMORY[0x23189D210](v94, MEMORY[0x277D837D0]);
      v39 = sub_22BABDC4C(v37, v38, &v101);
      v7 = v90;

      *(v35 + 24) = v39;
      v14 = v91;
      _os_log_impl(&dword_22BABB000, v32, v33, "windowZOrderList for screen %{public}ld of %{public}ld: %{public}s", v35, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v36);
      v40 = v36;
      v30 = v94;
      MEMORY[0x23189DF20](v40, -1, -1);
      MEMORY[0x23189DF20](v35, -1, -1);
    }

    else
    {
    }

    (*v75)(v10, v77);
    v95 = *v96;
    v95(v97, v78, v14);
    v41 = *(v30 + 16);
    if (v41)
    {
      break;
    }

LABEL_3:

    (*v93)(v97, v14);
    v29 = v81;
    v10 = v74;
    if (v81 == v80)
    {
      goto LABEL_29;
    }
  }

  v42 = 0;
  v43 = (v30 + 40);
  v92 = *(v30 + 16);
  while (v42 < *(v30 + 16))
  {
    if (v100[2])
    {
      v45 = *(v43 - 1);
      v44 = *v43;

      v46 = sub_22BAD6B9C(v45, v44);
      if (v47)
      {
        v48 = v87;
        sub_22BABE3D4(v100[7] + *(v88 + 72) * v46, v87, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
        sub_22BABE43C(v48, v7, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
        v49 = v98;
        v50 = v95;
        v95(v98, v97, v14);
        sub_22BB1E50C();
        v50(v99, v49, v14);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v101 = v25;
        v53 = sub_22BAD6B9C(v45, v44);
        v54 = v25[2];
        v55 = (v52 & 1) == 0;
        v56 = v54 + v55;
        if (__OFADD__(v54, v55))
        {
          goto LABEL_31;
        }

        v57 = v52;
        if (v25[3] >= v56)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v52 & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          else
          {
            sub_22BAEBEA8();
            if ((v57 & 1) == 0)
            {
              goto LABEL_23;
            }
          }
        }

        else
        {
          sub_22BAE9818(v56, isUniquelyReferenced_nonNull_native);
          v58 = sub_22BAD6B9C(v45, v44);
          if ((v57 & 1) != (v59 & 1))
          {
            goto LABEL_33;
          }

          v53 = v58;
          if ((v57 & 1) == 0)
          {
LABEL_23:
            v25 = v101;
            v101[(v53 >> 6) + 8] |= 1 << v53;
            v61 = (v25[6] + 16 * v53);
            *v61 = v45;
            v61[1] = v44;
            v62 = v25[7] + *(v89 + 72) * v53;
            v14 = v91;
            (*(v89 + 32))(v62, v99, v91);
            v63 = v25[2];
            v64 = __OFADD__(v63, 1);
            v65 = v63 + 1;
            if (v64)
            {
              goto LABEL_32;
            }

            v25[2] = v65;
            goto LABEL_25;
          }
        }

        v25 = v101;
        v60 = v101[7] + *(v89 + 72) * v53;
        v14 = v91;
        (*(v89 + 40))(v60, v99, v91);
LABEL_25:
        v7 = v90;
        if (v90[*(v86 + 20)] == 1)
        {
          v66 = v83;
          v67 = v97;
          v95(v83, v97, v14);
          v68 = v98;
          sub_22BB1E53C();
          v84 = v25;
          v69 = *v93;
          (*v93)(v68, v14);
          sub_22BAD2FB8(v7, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
          v69(v67, v14);
          v25 = v84;
          (*v85)(v67, v66, v14);
        }

        else
        {
          (*v93)(v98, v14);
          sub_22BAD2FB8(v7, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
        }

        v30 = v94;
        v41 = v92;
        goto LABEL_10;
      }
    }

LABEL_10:
    ++v42;
    v43 += 2;
    if (v41 == v42)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_22BB1FDBC();
  __break(1u);
  return result;
}

uint64_t sub_22BAD4EF0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF5A8, &qword_22BB22BA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v39 - v5;
  v7 = sub_22BB1E55C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v42 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v47 = &v39 - v11;
  MEMORY[0x28223BE20](v12);
  v39 = &v39 - v13;
  v58 = sub_22BB1E93C();
  v14 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22BB1E96C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a2;
  result = sub_22BB1E51C();
  v21 = *(a1 + 16);
  if (v21)
  {
    v23 = *(v17 + 16);
    v22 = v17 + 16;
    v24 = a1 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
    v53 = *(v22 + 56);
    v54 = v23;
    v51 = (v14 + 8);
    v52 = (v14 + 88);
    v50 = *MEMORY[0x277D74668];
    v44 = (v8 + 8);
    v45 = (v8 + 16);
    v55 = v22;
    v56 = v16;
    v49 = (v22 - 8);
    v43 = (v8 + 32);
    v41 = (v8 + 48);
    v46 = v6;
    v23(v19, v24, v16);
    while (1)
    {
      v31 = v57;
      sub_22BB1E94C();
      v32 = v58;
      v33 = (*v52)(v31, v58);
      (*v51)(v31, v32);
      if (v33 == v50)
      {
        sub_22BB1E71C();
        if ((*v41)(v6, 1, v7) == 1)
        {
          (*v49)(v19, v16);
          result = sub_22BAC81E8(v6, &qword_27D8DF5A8, &qword_22BB22BA0);
        }

        else
        {
          v40 = *v43;
          v34 = v39;
          v40(v39, v6, v7);
          v36 = v47;
          v35 = v48;
          (*v45)(v47, v48, v7);
          sub_22BB1E54C();
          v37 = *v44;
          (*v44)(v34, v7);
          (*v49)(v19, v56);
          v37(v35, v7);
          v38 = v35;
          v6 = v46;
          result = v40(v38, v36, v7);
          v16 = v56;
        }
      }

      else
      {
        v25 = v47;
        v26 = v48;
        (*v45)(v47, v48, v7);
        v27 = sub_22BB1E73C();
        v28 = v42;
        sub_22BAD4EF0(v27, v42);
        v16 = v56;

        sub_22BB1E54C();
        v29 = *v44;
        (*v44)(v28, v7);
        (*v49)(v19, v16);
        v29(v26, v7);
        v30 = v26;
        v6 = v46;
        result = (*v43)(v30, v25, v7);
      }

      v24 += v53;
      if (!--v21)
      {
        break;
      }

      v54(v19, v24, v16);
    }
  }

  return result;
}

void *sub_22BAD5458(uint64_t a1, uint64_t a2)
{
  v176 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF5B0, &qword_22BB22BA8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v153 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v153 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF5B8, &qword_22BB22BB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v153 - v10);
  v156 = type metadata accessor for FragmentCollator.WindowOcclusionInfo(0);
  v200 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v201 = &v153 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v198 = &v153 - v14;
  MEMORY[0x28223BE20](v15);
  v161 = &v153 - v16;
  MEMORY[0x28223BE20](v17);
  v155 = &v153 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF5A8, &qword_22BB22BA0);
  MEMORY[0x28223BE20](v19 - 8);
  v158 = &v153 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v172 = &v153 - v22;
  MEMORY[0x28223BE20](v23);
  v190 = &v153 - v24;
  MEMORY[0x28223BE20](v25);
  v162 = &v153 - v26;
  MEMORY[0x28223BE20](v27);
  v168 = &v153 - v28;
  v186 = sub_22BB1E55C();
  v29 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v160 = &v153 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v159 = &v153 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v153 - v34;
  v189 = sub_22BB1E93C();
  v36 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v166 = &v153 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v177 = &v153 - v39;
  v173 = sub_22BB1E91C();
  v40 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v175 = &v153 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_22BB1E96C();
  v42 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v192 = &v153 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_22BAD694C(MEMORY[0x277D84F90]);
  v180 = *(a1 + 16);
  if (!v180)
  {
    return v44;
  }

  v45 = v8;
  v46 = 0;
  v48 = *(v42 + 16);
  v47 = v42 + 16;
  v184 = a1 + ((*(v47 + 64) + 32) & ~*(v47 + 64));
  v185 = v48;
  v188 = (v36 + 88);
  v174 = (v36 + 8);
  v183 = (v29 + 48);
  v182 = *MEMORY[0x277D74670];
  v163 = (v29 + 32);
  v153 = (v29 + 56);
  v165 = *MEMORY[0x277D74668];
  v179 = (v47 - 8);
  v171 = (v36 + 96);
  v170 = (v40 + 32);
  v154 = (v29 + 16);
  v157 = (v29 + 8);
  v169 = (v40 + 8);
  v181 = *(v47 + 56);
  v196 = v11;
  v197 = v45;
  v164 = v35;
  v49 = v177;
  v50 = v175;
  v167 = v5;
  v178 = v47;
  v48(v192, v184, v191);
  while (1)
  {
    sub_22BB1E94C();
    v52 = v189;
    v53 = *v188;
    v54 = (*v188)(v49, v189);
    if (v54 != v182)
    {
      break;
    }

    (*v171)(v49, v52);
    v55 = v173;
    (*v170)(v50, v49, v173);
    v203 = sub_22BB1E8AC();
    v57 = v183;
    if (v56)
    {
      v58 = v56;
      v199 = v44;
      v59 = v168;
      sub_22BAD6B34(v176, v168, &qword_27D8DF5A8, &qword_22BB22BA0);
      v60 = *v57;
      v61 = v186;
      if ((*v57)(v59, 1, v186) == 1)
      {

        (*v169)(v50, v55);
        v51 = v192;
        (*v179)(v192, v191);
        sub_22BAC81E8(v59, &qword_27D8DF5A8, &qword_22BB22BA0);
        v5 = v167;
        v49 = v177;
        v44 = v199;
      }

      else
      {
        v187 = v46;
        v73 = v164;
        v74 = *v163;
        (*v163)(v164, v59, v61);
        v75 = v162;
        sub_22BB1E71C();
        v76 = v75;
        if (v60(v75, 1, v61) == 1)
        {

          (*v157)(v73, v61);
          v50 = v175;
          (*v169)(v175, v55);
          v51 = v192;
          (*v179)(v192, v191);
          sub_22BAC81E8(v76, &qword_27D8DF5A8, &qword_22BB22BA0);
          v5 = v167;
          v49 = v177;
          v46 = v187;
          v44 = v199;
        }

        else
        {
          v74(v159, v75, v61);
          v77 = *v154;
          v78 = v160;
          (*v154)(v160, v73, v61);
          sub_22BB1E50C();
          v79 = sub_22BB1E89C();
          v80 = v155;
          v77(v155, v78, v61);
          *(v80 + *(v156 + 20)) = v79 & 1;
          sub_22BABE43C(v80, v161, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
          v81 = v199;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v204 = v81;
          v83 = v203;
          v84 = sub_22BAD6B9C(v203, v58);
          v86 = v81[2];
          v87 = (v85 & 1) == 0;
          v88 = __OFADD__(v86, v87);
          v89 = v86 + v87;
          if (v88)
          {
            goto LABEL_65;
          }

          v90 = v85;
          if (v81[3] >= v89)
          {
            v5 = v167;
            v92 = v164;
            v93 = v173;
            v46 = v187;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v151 = v84;
              sub_22BAEBC50();
              v84 = v151;
              v92 = v164;
            }
          }

          else
          {
            sub_22BAD6CCC(v89, isUniquelyReferenced_nonNull_native);
            v84 = sub_22BAD6B9C(v83, v58);
            v5 = v167;
            v92 = v164;
            v93 = v173;
            v46 = v187;
            if ((v90 & 1) != (v91 & 1))
            {
              goto LABEL_67;
            }
          }

          v50 = v175;
          if (v90)
          {
            v143 = v84;

            v44 = v204;
            sub_22BB10E4C(v161, v204[7] + *(v200 + 72) * v143);
            v144 = *v157;
            v145 = v186;
            (*v157)(v160, v186);
            v144(v159, v145);
            v144(v92, v145);
            (*v169)(v50, v93);
            v51 = v192;
            (*v179)(v192, v191);
          }

          else
          {
            v44 = v204;
            v204[(v84 >> 6) + 8] |= 1 << v84;
            v146 = (v44[6] + 16 * v84);
            *v146 = v83;
            v146[1] = v58;
            sub_22BABE43C(v161, v44[7] + *(v200 + 72) * v84, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
            v147 = *v157;
            v148 = v186;
            (*v157)(v160, v186);
            v147(v159, v148);
            v147(v92, v148);
            (*v169)(v50, v93);
            v51 = v192;
            (*v179)(v192, v191);
            v149 = v44[2];
            v88 = __OFADD__(v149, 1);
            v150 = v149 + 1;
            if (v88)
            {
              goto LABEL_66;
            }

            v44[2] = v150;
          }

          v49 = v177;
        }
      }
    }

    else
    {
      (*v169)(v50, v55);
      v51 = v192;
      (*v179)(v192, v191);
    }

LABEL_4:
    if (++v46 == v180)
    {
      return v44;
    }

    v185(v51, v184 + v181 * v46, v191);
  }

  v62 = v49;
  v63 = *v174;
  (*v174)(v62, v52);
  v64 = v190;
  v199 = v44;
  sub_22BAD6B34(v176, v190, &qword_27D8DF5A8, &qword_22BB22BA0);
  v65 = v172;
  sub_22BAD6B34(v64, v172, &qword_27D8DF5A8, &qword_22BB22BA0);
  v66 = *v183;
  LODWORD(v64) = (*v183)(v65, 1, v186);
  v67 = v199;
  sub_22BAC81E8(v65, &qword_27D8DF5A8, &qword_22BB22BA0);
  if (v64 == 1)
  {
    v68 = v166;
    sub_22BB1E94C();
    v69 = v189;
    v70 = v53(v68, v189);
    v63(v68, v69);
    if (v70 == v165)
    {
      v71 = v158;
      sub_22BB1E71C();
      v72 = v186;
      if (v66(v71, 1, v186) == 1)
      {
        sub_22BAC81E8(v71, &qword_27D8DF5A8, &qword_22BB22BA0);
      }

      else
      {
        v94 = v190;
        sub_22BAC81E8(v190, &qword_27D8DF5A8, &qword_22BB22BA0);
        (*v163)(v94, v71, v72);
        (*v153)(v94, 0, 1, v72);
      }
    }
  }

  v187 = v46;
  v95 = sub_22BB1E73C();
  v96 = sub_22BAD5458(v95, v190);

  v97 = swift_isUniquelyReferenced_nonNull_native();
  v204 = v67;
  v98 = *(v96 + 64);
  v194 = v96 + 64;
  v195 = v96;
  v99 = 1 << *(v96 + 32);
  if (v99 < 64)
  {
    v100 = ~(-1 << v99);
  }

  else
  {
    v100 = -1;
  }

  v101 = v100 & v98;
  v193 = (v99 + 63) >> 6;

  v102 = 0;
  v103 = v197;
  v44 = v199;
  v104 = v5;
  while (1)
  {
    LODWORD(v203) = v97;
    if (!v101)
    {
      break;
    }

    v199 = v44;
    v107 = v103;
    v108 = v102;
LABEL_37:
    v110 = __clz(__rbit64(v101));
    v101 &= v101 - 1;
    v111 = v110 | (v108 << 6);
    v112 = (*(v195 + 48) + 16 * v111);
    v114 = *v112;
    v113 = v112[1];
    v115 = v198;
    sub_22BABE3D4(*(v195 + 56) + *(v200 + 72) * v111, v198, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF5C0, &qword_22BB22BB8);
    v117 = *(v116 + 48);
    *v107 = v114;
    v103 = v107;
    v107[1] = v113;
    sub_22BABE43C(v115, v107 + v117, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
    (*(*(v116 - 8) + 56))(v107, 0, 1, v116);

    v202 = v108;
    v44 = v199;
LABEL_38:
    sub_22BAD7044(v103, v104, &qword_27D8DF5B0, &qword_22BB22BA8);
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF5C0, &qword_22BB22BB8);
    if ((*(*(v118 - 8) + 48))(v104, 1, v118) == 1)
    {
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF2C8, &qword_22BB22BC0);
      v120 = v196;
      (*(*(v119 - 8) + 56))(v196, 1, 1, v119);
    }

    else
    {
      v121 = *(v118 + 48);
      v122 = v44;
      v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF2C8, &qword_22BB22BC0);
      v125 = *v104;
      v124 = v104[1];
      v126 = v196;
      sub_22BABE3D4(v104 + v121, v196 + *(v123 + 48), type metadata accessor for FragmentCollator.WindowOcclusionInfo);
      *v126 = v125;
      v126[1] = v124;
      v120 = v126;

      sub_22BAC81E8(v104, &unk_27D8DF5C0, &qword_22BB22BB8);
      v44 = v122;
      (*(*(v123 - 8) + 56))(v126, 0, 1, v123);
    }

    v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF2C8, &qword_22BB22BC0);
    if ((*(*(v127 - 8) + 48))(v120, 1, v127) == 1)
    {
      v5 = v104;

      sub_22BAC81E8(v190, &qword_27D8DF5A8, &qword_22BB22BA0);
      v51 = v192;
      (*v179)(v192, v191);
      v49 = v177;
      v50 = v175;
      v46 = v187;
      goto LABEL_4;
    }

    v128 = v104;
    v130 = *v120;
    v129 = v120[1];
    sub_22BABE43C(v120 + *(v127 + 48), v201, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
    v132 = sub_22BAD6B9C(v130, v129);
    v133 = v44[2];
    v134 = (v131 & 1) == 0;
    v135 = v133 + v134;
    if (__OFADD__(v133, v134))
    {
      goto LABEL_63;
    }

    v136 = v131;
    if (v44[3] >= v135)
    {
      if (v203)
      {
        v44 = v204;
        if (v131)
        {
          goto LABEL_26;
        }
      }

      else
      {
        sub_22BAEBC50();
        v44 = v204;
        if (v136)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      sub_22BAD6CCC(v135, v203 & 1);
      v137 = sub_22BAD6B9C(v130, v129);
      if ((v136 & 1) != (v138 & 1))
      {
        goto LABEL_67;
      }

      v132 = v137;
      v44 = v204;
      if (v136)
      {
LABEL_26:
        v105 = *(v200 + 72) * v132;
        v106 = v198;
        sub_22BABE3D4(v44[7] + v105, v198, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
        sub_22BAD2FB8(v201, type metadata accessor for FragmentCollator.WindowOcclusionInfo);

        sub_22BB10E4C(v106, v44[7] + v105);
        goto LABEL_27;
      }
    }

    v44[(v132 >> 6) + 8] |= 1 << v132;
    v139 = (v44[6] + 16 * v132);
    *v139 = v130;
    v139[1] = v129;
    sub_22BABE43C(v201, v44[7] + *(v200 + 72) * v132, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
    v140 = v44[2];
    v88 = __OFADD__(v140, 1);
    v141 = v140 + 1;
    if (v88)
    {
      goto LABEL_64;
    }

    v44[2] = v141;
LABEL_27:
    v97 = 1;
    v102 = v202;
    v104 = v128;
    v103 = v197;
  }

  if (v193 <= v102 + 1)
  {
    v109 = v102 + 1;
  }

  else
  {
    v109 = v193;
  }

  while (1)
  {
    v108 = v102 + 1;
    if (__OFADD__(v102, 1))
    {
      break;
    }

    if (v108 >= v193)
    {
      v202 = v109 - 1;
      v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF5C0, &qword_22BB22BB8);
      (*(*(v142 - 8) + 56))(v103, 1, 1, v142);
      v101 = 0;
      goto LABEL_38;
    }

    v101 = *(v194 + 8 * v108);
    ++v102;
    if (v101)
    {
      v199 = v44;
      v107 = v103;
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  result = sub_22BB1FDBC();
  __break(1u);
  return result;
}

unint64_t sub_22BAD694C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF2C8, &qword_22BB22BC0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF010, &qword_22BB21210);
    v7 = sub_22BB1FC2C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22BAD6B34(v9, v5, &qword_27D8DF2C8, &qword_22BB22BC0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_22BAD6B9C(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for FragmentCollator.WindowOcclusionInfo(0);
      result = sub_22BAF8248(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

uint64_t sub_22BAD6B34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_22BAD6B9C(uint64_t a1, uint64_t a2)
{
  sub_22BB1FDDC();
  sub_22BB1F6EC();
  v4 = sub_22BB1FE0C();

  return sub_22BAD6C14(a1, a2, v4);
}

unint64_t sub_22BAD6C14(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_22BB1FD9C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_22BAD6CCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for FragmentCollator.WindowOcclusionInfo(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF010, &qword_22BB21210);
  v40 = v4;
  result = sub_22BB1FC1C();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
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
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_22BAC3614(v28, v41, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
      }

      else
      {
        sub_22BABE90C(v28, v41, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
      }

      sub_22BB1FDDC();
      sub_22BB1F6EC();
      result = sub_22BB1FE0C();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_22BAC3614(v41, *(v9 + 56) + v27 * v17, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
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

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_22BAD7044(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_22BAD70AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF2C0, &qword_22BB21F88);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF008, &unk_22BB21F90);
    v7 = sub_22BB1FC2C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22BAD6B34(v9, v5, &qword_27D8DF2C0, &qword_22BB21F88);
      v11 = *v5;
      v12 = v5[1];
      result = sub_22BAD6B9C(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_22BB1E55C();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

uint64_t sub_22BAD7298(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF608, &unk_22BB22BF0);
    v1 = sub_22BB1FC2C();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v12 = __clz(__rbit64(v4)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(a1 + 56) + 8 * v12);
    v29 = &off_283F6BCA0;
    v28 = &type metadata for EmbeddedWindowVisibilityProvider.EmbeddedElementOverlayState;
    *&v27 = v16;
    sub_22BAD7560(&v27, v25);
    sub_22BAD7560(v25, &v26);
    sub_22BB1FDDC();
    if (v14 == 1)
    {
      MEMORY[0x23189D810](0);
    }

    else
    {
      MEMORY[0x23189D810](1);
      if (v14)
      {
        sub_22BB1FDFC();

        sub_22BABFC10(v15, v14);
        sub_22BB1F6EC();
        goto LABEL_21;
      }

      sub_22BB1FDFC();
    }

LABEL_21:
    result = sub_22BB1FE0C();
    v17 = -1 << *(v1 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v6 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v6 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_32;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v6 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v4 &= v4 - 1;
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = (*(v1 + 48) + 16 * v9);
    *v10 = v15;
    v10[1] = v14;
    result = sub_22BAD7560(&v26, *(v1 + 56) + 40 * v9);
    ++*(v1 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v4)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22BAD7560(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_22BAD7598()
{
  result = qword_2814240C8;
  if (!qword_2814240C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814240C8);
  }

  return result;
}

uint64_t sub_22BAD7618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF5D0, qword_22BB22830);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = sub_22BB1E96C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v34 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v32 = &v27 - v14;
  v15 = *(a2 + 16);
  if (v15)
  {
    v16 = *(type metadata accessor for FragmentCollator.RootElement(0) - 8);
    v17 = (v11 + 48);
    v29 = v11;
    v18 = (v11 + 32);
    v19 = (a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)));
    v33 = *(v16 + 72);
    v20 = MEMORY[0x277D84F90];
    v30 = a3;
    v31 = a4;
    v28 = v17;
    do
    {
      sub_22BAD7984(v19, a3, v9);
      if ((*v17)(v9, 1, v10) == 1)
      {
        sub_22BAC81E8(v9, &unk_27D8DF5D0, qword_22BB22830);
      }

      else
      {
        v21 = *v18;
        v22 = v32;
        (*v18)(v32, v9, v10);
        v21(v34, v22, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_22BAD34A8(0, *(v20 + 2) + 1, 1, v20);
        }

        v24 = *(v20 + 2);
        v23 = *(v20 + 3);
        if (v24 >= v23 >> 1)
        {
          v20 = sub_22BAD34A8((v23 > 1), v24 + 1, 1, v20);
        }

        *(v20 + 2) = v24 + 1;
        v21(&v20[((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v24], v34, v10);
        a3 = v30;
        v17 = v28;
      }

      v19 = (v19 + v33);
      --v15;
    }

    while (v15);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  v25 = v27;
  swift_beginAccess();
  *(v25 + 16) = v20;
}

uint64_t sub_22BAD7984@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEA0, &qword_22BB20A30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (v17 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF5E0, &qword_22BB22BC8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v17 - v10;
  v12 = *(type metadata accessor for FragmentCollator.RootElement(0) + 20);
  v13 = type metadata accessor for FragmentCollator.ElementVisibilityContext(0);
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = sub_22BB1EADC();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = a1[1];
  v17[0] = *a1;
  v17[1] = v15;
  v17[2] = a1[2];
  sub_22BAD7C38(a1 + v12, a2, 0, 2, v11, v8, v17, a3);
  sub_22BAC81E8(v8, &qword_27D8DEEA0, &qword_22BB20A30);
  return sub_22BAC81E8(v11, &qword_27D8DF5E0, &qword_22BB22BC8);
}

uint64_t __swift_store_extra_inhabitant_index_44Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22BB1E55C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_22BAD7C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)(char *, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, unsigned int (**a6)(uint64_t, uint64_t, uint64_t)@<X5>, double *a7@<X6>, uint64_t a8@<X8>)
{
  v385 = a6;
  v376 = a5;
  v384 = a4;
  v395 = a3;
  v396 = a2;
  v377 = a8;
  v10 = *a7;
  v344 = *(a7 + 1);
  v343 = v10;
  tx = a7[4];
  ty = a7[5];
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF5E8, &qword_22BB22BD0);
  MEMORY[0x28223BE20](v324);
  v325 = &v317 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF5E0, &qword_22BB22BC8);
  v358 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v389 = &v317 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF5D0, qword_22BB22830);
  MEMORY[0x28223BE20](v16 - 8);
  v388 = &v317 - v17;
  v351 = sub_22BB1E9DC();
  v350 = *(v351 - 8);
  MEMORY[0x28223BE20](v351);
  v349 = &v317 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v346 = sub_22BB1EA5C();
  v345 = *(v346 - 8);
  MEMORY[0x28223BE20](v346);
  v338 = &v317 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v362 = &v317 - v21;
  v378 = sub_22BB1E9AC();
  v373 = *(v378 - 8);
  MEMORY[0x28223BE20](v378);
  v321 = &v317 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v372 = &v317 - v24;
  v368 = sub_22BB1EADC();
  v363 = *(v368 - 8);
  MEMORY[0x28223BE20](v368);
  v323 = &v317 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v335 = &v317 - v27;
  MEMORY[0x28223BE20](v28);
  v318 = &v317 - v29;
  MEMORY[0x28223BE20](v30);
  v330 = &v317 - v31;
  v360 = sub_22BB1E91C();
  v359 = *(v360 - 8);
  MEMORY[0x28223BE20](v360);
  v369 = &v317 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF5F0, &qword_22BB22BD8);
  MEMORY[0x28223BE20](v33 - 8);
  v327 = &v317 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v339 = &v317 - v36;
  MEMORY[0x28223BE20](v37);
  v342 = &v317 - v38;
  v348 = sub_22BB1E68C();
  v347 = *(v348 - 8);
  MEMORY[0x28223BE20](v348);
  v322 = &v317 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v329 = &v317 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF588, &unk_22BB22BE0);
  MEMORY[0x28223BE20](v42 - 8);
  v340 = &v317 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v357 = &v317 - v45;
  v365 = sub_22BB1F2AC();
  v364 = *(v365 - 8);
  MEMORY[0x28223BE20](v365);
  v352 = &v317 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v370 = &v317 - v48;
  v354 = sub_22BB1E82C();
  v356 = *(v354 - 8);
  MEMORY[0x28223BE20](v354);
  v355 = &v317 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v353 = &v317 - v51;
  v382 = sub_22BB1E93C();
  v383 = *(v382 - 8);
  MEMORY[0x28223BE20](v382);
  v371 = &v317 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v55 = &v317 - v54;
  MEMORY[0x28223BE20](v56);
  v366 = &v317 - v57;
  MEMORY[0x28223BE20](v58);
  v60 = &v317 - v59;
  v375 = sub_22BB1E88C();
  v374 = *(v375 - 8);
  MEMORY[0x28223BE20](v375);
  v392 = (&v317 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEA0, &qword_22BB20A30);
  v333 = *(v62 - 8);
  v63 = *(v333 + 64);
  MEMORY[0x28223BE20](v62 - 8);
  v320 = &v317 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v326 = &v317 - v65;
  MEMORY[0x28223BE20](v66);
  v334 = &v317 - v67;
  MEMORY[0x28223BE20](v68);
  v390 = (&v317 - v69);
  MEMORY[0x28223BE20](v70);
  v332 = &v317 - v71;
  MEMORY[0x28223BE20](v72);
  v336 = &v317 - v73;
  MEMORY[0x28223BE20](v74);
  v337 = &v317 - v75;
  MEMORY[0x28223BE20](v76);
  v361 = &v317 - v77;
  MEMORY[0x28223BE20](v78);
  v319 = &v317 - v79;
  MEMORY[0x28223BE20](v80);
  v328 = &v317 - v81;
  MEMORY[0x28223BE20](v82);
  v341 = &v317 - v83;
  MEMORY[0x28223BE20](v84);
  v391 = &v317 - v85;
  v86 = type metadata accessor for FragmentCollator.ElementVisibilityResult(0);
  MEMORY[0x28223BE20](v86 - 8);
  v88 = &v317 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v89);
  v91 = &v317 - v90;
  v92 = sub_22BB1E96C();
  MEMORY[0x28223BE20](v92);
  v387 = &v317 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v94);
  v381 = &v317 - v95;
  v97 = MEMORY[0x28223BE20](v96);
  v99 = &v317 - v98;
  v379 = v100;
  v101 = *(v100 + 16);
  v397 = v102;
  v101(&v317 - v98, a1, v97);
  sub_22BB1E6CC();
  IsNull = CGRectIsNull(v402);
  sub_22BB1E6CC();
  v105 = v104;
  v107 = v106;
  v108 = v14;
  v380 = swift_allocBox();
  v109 = v376;
  v393 = v110;
  sub_22BAD6B34(v376, v110, &qword_27D8DF5E0, &qword_22BB22BC8);
  v386 = v99;
  v331 = IsNull;
  v367 = a7;
  if (!IsNull)
  {
    sub_22BB1E77C();
    sub_22BADADFC(v99, v396, v109, v91);
    sub_22BABE43C(v91, v88, type metadata accessor for FragmentCollator.ElementVisibilityResult);
    if ((*(v358 + 48))(v88, 1, v108) == 1)
    {
      LODWORD(v376) = 0;
      goto LABEL_6;
    }

    sub_22BADBC60(v88, v393);
  }

  LODWORD(v376) = 1;
LABEL_6:
  v111 = v382;
  v112 = v395;
  v113 = v385;
  v114 = v384;
  v115 = swift_allocObject();
  *(v115 + 16) = v112;
  v384 = (v115 + 16);
  v395 = v115;
  *(v115 + 24) = v114;
  sub_22BAD6B34(v113, v391, &qword_27D8DEEA0, &qword_22BB20A30);
  sub_22BADBCD0(v112, v114);
  sub_22BB1E94C();
  v116 = v383;
  v117 = v383 + 88;
  v118 = *(v383 + 88);
  v119 = (v118)(v60, v111);
  v120 = v119 == *MEMORY[0x277D74668];
  v385 = v118;
  if (v120)
  {
    LODWORD(v360) = v119;
    v369 = v63;
    v358 = v117;
    (*(v116 + 96))(v60, v111);
    (v374[4])(v392, v60, v375);
    v121 = v353;
    sub_22BB1E83C();
    v122 = v356;
    v123 = v355;
    v124 = v354;
    (*(v356 + 104))(v355, *MEMORY[0x277D74600], v354);
    sub_22BADBCE0(&qword_281425108, MEMORY[0x277D74610], MEMORY[0x277D74618]);
    v125 = sub_22BB1F65C();
    v126 = *(v122 + 8);
    v126(v123, v124);
    v126(v121, v124);
    v127 = v116;
    if (v125)
    {
      v128 = 0;
      v129 = 1;
      v130 = v365;
      v131 = v370;
    }

    else
    {
      v144 = sub_22BB1E7FC();
      if (v145)
      {
        v128 = v144;
      }

      else
      {
        v128 = 0;
      }

      if (v145 <= 1)
      {
        v129 = 1;
      }

      else
      {
        v129 = v145;
      }

      v130 = v365;
      v131 = v370;
    }

    v146 = v395;
    v147 = *(v395 + 16);
    v148 = *(v395 + 24);
    *(v395 + 16) = v128;
    *(v146 + 24) = v129;
    sub_22BADBD28(v147, v148);
    v149 = v357;
    sub_22BB1E84C();
    v150 = v364;
    v151 = (*(v364 + 48))(v149, 1, v130);
    v152 = v386;
    v63 = v369;
    if (v151 == 1)
    {
      sub_22BAC81E8(v149, &qword_27D8DF588, &unk_22BB22BE0);
      v370 = 0;
    }

    else
    {
      (*(v150 + 32))(v131, v149, v130);
      v156 = v150;
      v157 = v396 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent16FragmentCollatorP33_6BE94AAF2C91BC919D389B27AF47AB7925FragmentResolutionContext_snapshotter;
      v158 = type metadata accessor for Snapshotter(0);
      v159 = *(v157 + *(v158 + 24));
      MEMORY[0x28223BE20](v158);
      *(&v317 - 2) = v131;
      os_unfair_lock_lock((v159 + 24));
      v160 = v131;
      v161 = v342;
      sub_22BB1414C((v159 + 16), v342, v162);
      v370 = 0;
      os_unfair_lock_unlock((v159 + 24));
      v163 = v347;
      v164 = v348;
      if ((*(v347 + 48))(v161, 1, v348) == 1)
      {
        (*(v156 + 8))(v160, v130);
        sub_22BAC81E8(v161, &unk_27D8DF5F0, &qword_22BB22BD8);
      }

      else
      {
        v165 = v329;
        (*(v163 + 32))(v329, v161, v164);
        v166 = v339;
        (*(v163 + 16))(v339, v165, v164);
        (*(v163 + 56))(v166, 0, 1, v164);
        sub_22BB1E81C();
        (*(v163 + 8))(v165, v164);
        (*(v156 + 8))(v160, v130);
      }

      v111 = v382;
      v127 = v383;
    }

    v167 = v374;
    v168 = v366;
    v169 = v392;
    v170 = v375;
    (v374[2])(v366, v392, v375);
    (*(v127 + 104))(v168, v360, v111);
    sub_22BB1E95C();
    (v167[1])(v169, v170);
    v154 = v371;
    v153 = v380;
    goto LABEL_51;
  }

  v132 = *(v116 + 8);
  v132(v60, v111);
  sub_22BB1E94C();
  v133 = (v118)(v55, v111);
  v134 = v396;
  if (v133 != *MEMORY[0x277D74670])
  {
    v132(v55, v111);
    v370 = 0;
    v153 = v380;
    v152 = v386;
    v127 = v116;
    v154 = v371;
    v155 = v134;
    goto LABEL_52;
  }

  LODWORD(v392) = v133;
  v358 = v117;
  (*(v116 + 96))(v55, v111);
  (*(v359 + 32))(v369, v55, v360);
  v135 = v341;
  sub_22BAD6B34(v391, v341, &qword_27D8DEEA0, &qword_22BB20A30);
  v136 = v363;
  v137 = *(v363 + 48);
  v138 = v137(v135, 1, v368);
  sub_22BAC81E8(v135, &qword_27D8DEEA0, &qword_22BB20A30);
  v139 = v386;
  v140 = v352;
  v141 = v134;
  if (v138 == 1)
  {
    v142 = v328;
    sub_22BB1E8CC();
    v143 = v368;
    if (v137(v142, 1, v368) == 1)
    {
      sub_22BAC81E8(v142, &qword_27D8DEEA0, &qword_22BB20A30);
    }

    else
    {
      v171 = v134;
      v172 = *(v136 + 32);
      v172(v330, v142, v143);
      v173 = sub_22BB1EA9C();
      if (v174)
      {
        v175 = *(v134 + 24);
        if (*(v175 + 16))
        {
          v176 = sub_22BAD6B9C(v173, v174);
          v178 = v177;
          v140 = v352;

          if ((v178 & 1) != 0 && *(*(v175 + 56) + v176) == 1)
          {
            (*(v363 + 8))(v330, v368);
            (*(v359 + 8))(v369, v360);
            v179 = v379;
            v180 = v397;
            (*(v379 + 8))(v386, v397);
            (*(v179 + 56))(v377, 1, 1, v180);
            goto LABEL_73;
          }
        }

        else
        {
        }
      }

      v181 = v391;
      sub_22BAC81E8(v391, &qword_27D8DEEA0, &qword_22BB20A30);
      v182 = v368;
      v172(v181, v330, v368);
      (*(v363 + 56))(v181, 0, 1, v182);
      v141 = v171;
      v139 = v386;
    }
  }

  v183 = *(v395 + 24);
  v127 = v383;
  if (v183 != 2)
  {
    v184 = *(v141 + 96);
    if (*(v184 + 16))
    {
      v185 = *(v395 + 16);
      sub_22BABFC10(v185, *(v395 + 24));
      v186 = sub_22BACE4A8(v185, v183);
      v188 = v187;
      v189 = v185;
      v127 = v383;
      sub_22BADBD28(v189, v183);
      if (v188)
      {
        sub_22BB13D3C(*(v184 + 56) + 40 * v186, &t2);
        sub_22BAD7560(&t2, &t1);
        v190 = __swift_project_boxed_opaque_existential_1(&t1, *&t1.d);
        v191 = v369;
        v192 = sub_22BB1E8AC();
        sub_22BAEFC30(v192, v193, v391, *v190);
        v195 = v194;
        v196 = v194;

        v197 = v363;
        if (v196 < 2)
        {
LABEL_40:
          v198 = sub_22BB10EB0(v191, v195, v141);
          v127 = v383;
          v140 = v352;
          if (v198)
          {
            sub_22BB1E90C();
          }

          __swift_destroy_boxed_opaque_existential_0(&t1);
          goto LABEL_44;
        }

        v263 = v319;
        sub_22BB1E8CC();
        v264 = v368;
        if (v137(v263, 1, v368) == 1)
        {
          sub_22BAC81E8(v263, &qword_27D8DEEA0, &qword_22BB20A30);
        }

        else
        {
          v312 = v318;
          (*(v197 + 32))(v318, v263, v264);
          v313 = v264;
          v314 = sub_22BB1EA8C();
          (*(v197 + 8))(v312, v313);
          if (v314)
          {
            goto LABEL_40;
          }
        }

        (*(v359 + 8))(v191, v360);
        v315 = v379;
        v316 = v397;
        (*(v379 + 8))(v139, v397);
        (*(v315 + 56))(v377, 1, 1, v316);
        __swift_destroy_boxed_opaque_existential_0(&t1);
        goto LABEL_73;
      }
    }

    v140 = v352;
  }

LABEL_44:
  v199 = v340;
  sub_22BB1E8EC();
  v200 = v364;
  v201 = v365;
  if ((*(v364 + 48))(v199, 1, v365) == 1)
  {
    sub_22BAC81E8(v199, &qword_27D8DF588, &unk_22BB22BE0);
    v370 = 0;
    v153 = v380;
    v111 = v382;
    v154 = v371;
  }

  else
  {
    (*(v200 + 32))(v140, v199, v201);
    v202 = v200;
    v203 = v141 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent16FragmentCollatorP33_6BE94AAF2C91BC919D389B27AF47AB7925FragmentResolutionContext_snapshotter;
    v204 = type metadata accessor for Snapshotter(0);
    v205 = *(v203 + *(v204 + 24));
    MEMORY[0x28223BE20](v204);
    *(&v317 - 2) = v140;
    os_unfair_lock_lock((v205 + 24));
    v206 = v327;
    sub_22BB13D20((v205 + 16), v327, v207);
    v208 = v206;
    v370 = 0;
    os_unfair_lock_unlock((v205 + 24));
    v209 = v347;
    v210 = v348;
    v211 = (*(v347 + 48))(v206, 1, v348);
    v212 = v380;
    v154 = v371;
    if (v211 == 1)
    {
      (*(v202 + 8))(v352, v201);
      sub_22BAC81E8(v208, &unk_27D8DF5F0, &qword_22BB22BD8);
    }

    else
    {
      v213 = v322;
      (*(v209 + 32))(v322, v208, v210);
      v214 = v339;
      (*(v209 + 16))(v339, v213, v210);
      (*(v209 + 56))(v214, 0, 1, v210);
      sub_22BB1E8BC();
      (*(v209 + 8))(v213, v210);
      (*(v202 + 8))(v352, v201);
    }

    v111 = v382;
    v127 = v383;
    v153 = v212;
  }

  v215 = v359;
  v216 = v366;
  v217 = v369;
  v218 = v360;
  (*(v359 + 16))(v366, v369, v360);
  (*(v127 + 104))(v216, v392, v111);
  v219 = v386;
  sub_22BB1E95C();
  v220 = v217;
  v152 = v219;
  (*(v215 + 8))(v220, v218);
LABEL_51:
  v155 = v396;
LABEL_52:
  sub_22BB1E94C();
  if ((v385)(v154, v111) != *MEMORY[0x277D74658])
  {
    v238 = (*(v127 + 8))(v154, v111);
    v239 = v376;
LABEL_60:
    MEMORY[0x28223BE20](v238);
    *(&v317 - 6) = v240;
    *(&v317 - 5) = v155;
    v241 = v393;
    *(&v317 - 4) = v384;
    *(&v317 - 3) = v241;
    v242 = v367;
    *(&v317 - 2) = v391;
    *(&v317 - 1) = v242;
    sub_22BB1E7DC();
    goto LABEL_61;
  }

  (*(v127 + 96))(v154, v111);
  (*(v373 + 32))(v372, v154, v378);
  v221 = *(v155 + 16);
  v222 = v349;
  sub_22BB1E99C();
  v223 = v153;
  if (!*(v221 + 16) || (v224 = sub_22BB19424(v222), (v225 & 1) == 0))
  {
    (*(v350 + 8))(v222, v351);
    v238 = (*(v373 + 8))(v372, v378);
    v239 = v376;
    goto LABEL_60;
  }

  v226 = v345;
  v227 = *(v221 + 56) + *(v345 + 72) * v224;
  v228 = v338;
  v229 = v346;
  (*(v345 + 16))(v338, v227, v346);
  (*(v350 + 8))(v222, v351);
  (*(v226 + 32))(v362, v228, v229);
  v230 = v337;
  sub_22BB1E97C();
  v231 = v363;
  v233 = (v363 + 48);
  v232 = *(v363 + 48);
  v234 = v368;
  if (v232(v230, 1, v368) == 1)
  {
    v235 = v361;
    sub_22BAD6B34(v391, v361, &qword_27D8DEEA0, &qword_22BB20A30);
    v236 = v232(v230, 1, v234);
    v237 = v336;
    if (v236 != 1)
    {
      sub_22BAC81E8(v230, &qword_27D8DEEA0, &qword_22BB20A30);
    }
  }

  else
  {
    v235 = v361;
    (*(v231 + 32))(v361, v230, v234);
    (*(v231 + 56))(v235, 0, 1, v234);
    v237 = v336;
  }

  sub_22BAD6B34(v235, v237, &qword_27D8DEEA0, &qword_22BB20A30);
  v371 = v232;
  if (v232(v237, 1, v234) == 1)
  {
    sub_22BAC81E8(v237, &qword_27D8DEEA0, &qword_22BB20A30);
  }

  else
  {
    v255 = v234;
    v256 = sub_22BB1EA9C();
    v258 = v257;
    (*(v231 + 8))(v237, v255);
    if (v258)
    {
      v259 = *(v155 + 24);
      if (*(v259 + 16))
      {
        v260 = sub_22BAD6B9C(v256, v258);
        v262 = v261;

        if ((v262 & 1) != 0 && *(*(v259 + 56) + v260) == 1)
        {
          sub_22BAC81E8(v361, &qword_27D8DEEA0, &qword_22BB20A30);
          (*(v345 + 8))(v362, v346);
          (*(v373 + 8))(v372, v378);
          v250 = v379;
          v251 = *(v379 + 8);
          v252 = v386;
          goto LABEL_72;
        }
      }

      else
      {
      }
    }
  }

  v369 = v233;
  v265 = v223;
  if (!v331)
  {
    CGAffineTransformMakeTranslation(&t1, v105, v107);
    *&t2.a = v343;
    *&t2.c = v344;
    t2.tx = tx;
    t2.ty = ty;
    CGAffineTransformConcat(&v399, &t1, &t2);
    v344 = *&v399.c;
    v343 = *&v399.a;
    tx = v399.tx;
    ty = v399.ty;
  }

  v266 = v361;
  v267 = v333;
  sub_22BB1E9BC();
  v399 = t2;
  *&v398.c = v344;
  *&v398.a = v343;
  v398.tx = tx;
  v398.ty = ty;
  CGAffineTransformConcat(&t1, &v399, &v398);
  v268 = v332;
  sub_22BAD6B34(v266, v332, &qword_27D8DEEA0, &qword_22BB20A30);
  sub_22BAD6B34(v268, v390, &qword_27D8DEEA0, &qword_22BB20A30);
  v269 = (*(v267 + 80) + 48) & ~*(v267 + 80);
  v270 = swift_allocObject();
  v270[2] = v394;
  v270[3] = v155;
  v270[4] = v395;
  v270[5] = v265;
  sub_22BAD7044(v268, v270 + v269, &qword_27D8DEEA0, &qword_22BB20A30);
  v271 = (v270 + (&v63[v269 + 7] & 0xFFFFFFFFFFFFFFF8));
  v272 = *&t1.c;
  *v271 = *&t1.a;
  v271[1] = v272;
  v271[2] = *&t1.tx;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v273 = sub_22BB1E9FC();
  v274 = *(v273 + 16);
  v374 = v270;

  swift_beginAccess();
  swift_beginAccess();
  v367 = v273;
  if (v274)
  {
    v375 = (*(v379 + 80) + 32) & ~*(v379 + 80);
    v275 = v273 + v375;
    v385 = (v379 + 48);
    v384 = (v379 + 32);
    v392 = MEMORY[0x277D84F90];
    v276 = *(v379 + 72);
    do
    {
      v277 = *(v395 + 16);
      v278 = *(v395 + 24);
      v279 = v389;
      sub_22BAD6B34(v393, v389, &qword_27D8DF5E0, &qword_22BB22BC8);
      sub_22BADBCD0(v277, v278);
      v280 = v388;
      sub_22BAD7C38(v275, v396, v277, v278, v279, v390, &t1, v388);
      sub_22BADBD28(v277, v278);
      sub_22BAC81E8(v279, &qword_27D8DF5E0, &qword_22BB22BC8);
      v281 = v397;
      if ((*v385)(v280, 1, v397) == 1)
      {
        sub_22BAC81E8(v280, &unk_27D8DF5D0, qword_22BB22830);
      }

      else
      {
        v282 = *v384;
        v283 = v381;
        (*v384)(v381, v280, v281);
        v282(v387, v283, v281);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v392 = sub_22BAD34A8(0, v392[2] + 1, 1, v392);
        }

        v285 = v392[2];
        v284 = v392[3];
        if (v285 >= v284 >> 1)
        {
          v392 = sub_22BAD34A8((v284 > 1), v285 + 1, 1, v392);
        }

        v286 = v392;
        v392[2] = v285 + 1;
        v282(&v286[v375 + v285 * v276], v387, v397);
      }

      v275 += v276;
      --v274;
    }

    while (v274);
  }

  else
  {
    v392 = MEMORY[0x277D84F90];
  }

  v287 = v386;
  sub_22BB1E7DC();

  v288 = sub_22BB1E6EC();
  *&v399.a = v392;
  v152 = v287;
  sub_22BAE1E48(v288);
  sub_22BB1E6FC();
  v289 = v361;
  v290 = v334;
  sub_22BAD6B34(v361, v334, &qword_27D8DEEA0, &qword_22BB20A30);
  v291 = v368;
  v292 = v371;
  if ((v371)(v290, 1, v368) == 1)
  {
    sub_22BAC81E8(v290, &qword_27D8DEEA0, &qword_22BB20A30);
    v155 = v396;
    v293 = v383;
LABEL_109:
    if (*(v155 + 32) == 1)
    {
      (*(v293 + 104))(v366, *MEMORY[0x277D74648], v382);
      sub_22BB1E95C();
    }

    sub_22BAC81E8(v390, &qword_27D8DEEA0, &qword_22BB20A30);
    sub_22BAC81E8(v289, &qword_27D8DEEA0, &qword_22BB20A30);
    (*(v345 + 8))(v362, v346);
    (*(v373 + 8))(v372, v378);
    goto LABEL_112;
  }

  v294 = v363;
  v295 = v335;
  v393 = *(v363 + 32);
  (v393)(v335, v290, v291);
  v296 = v326;
  v394 = *(v294 + 16);
  v394(v326, v295, v291);
  (*(v294 + 56))(v296, 0, 1, v291);
  v297 = *(v324 + 48);
  v298 = v325;
  sub_22BAD6B34(v296, v325, &qword_27D8DEEA0, &qword_22BB20A30);
  v299 = v368;
  sub_22BAD6B34(v391, v298 + v297, &qword_27D8DEEA0, &qword_22BB20A30);
  if (v292(v298, 1, v299) == 1)
  {
    sub_22BAC81E8(v296, &qword_27D8DEEA0, &qword_22BB20A30);
    v300 = v292(v298 + v297, 1, v299);
    v155 = v396;
    if (v300 == 1)
    {
      sub_22BAC81E8(v298, &qword_27D8DEEA0, &qword_22BB20A30);
      v301 = *(v363 + 8);
LABEL_108:
      v152 = v386;
      v301(v335, v299);
      v293 = v383;
      v289 = v361;
      goto LABEL_109;
    }

    goto LABEL_105;
  }

  v302 = v320;
  sub_22BAD6B34(v298, v320, &qword_27D8DEEA0, &qword_22BB20A30);
  v303 = v292(v298 + v297, 1, v299);
  v155 = v396;
  if (v303 == 1)
  {
    sub_22BAC81E8(v326, &qword_27D8DEEA0, &qword_22BB20A30);
    (*(v363 + 8))(v302, v299);
LABEL_105:
    sub_22BAC81E8(v298, &qword_27D8DF5E8, &qword_22BB22BD0);
    goto LABEL_106;
  }

  v310 = v302;
  v311 = v323;
  (v393)(v323, v298 + v297, v299);
  sub_22BADBCE0(&unk_2814250D0, MEMORY[0x277D74708], MEMORY[0x277D74728]);
  LODWORD(v393) = sub_22BB1F65C();
  v301 = *(v363 + 8);
  v301(v311, v368);
  sub_22BAC81E8(v326, &qword_27D8DEEA0, &qword_22BB20A30);
  v301(v310, v368);
  v299 = v368;
  sub_22BAC81E8(v298, &qword_27D8DEEA0, &qword_22BB20A30);
  if (v393)
  {
    goto LABEL_108;
  }

LABEL_106:
  v304 = v335;
  v394(v323, v335, v299);
  v305 = v373;
  v306 = v372;
  (*(v373 + 16))(v321, v372, v378);
  v307 = v366;
  sub_22BB1E70C();
  (*(v383 + 104))(v307, *MEMORY[0x277D74638], v382);
  v308 = v299;
  v309 = v386;
  sub_22BB1E95C();

  sub_22BAC81E8(v390, &qword_27D8DEEA0, &qword_22BB20A30);
  (*(v363 + 8))(v304, v308);
  sub_22BAC81E8(v361, &qword_27D8DEEA0, &qword_22BB20A30);
  (*(v345 + 8))(v362, v346);
  (*(v305 + 8))(v306, v378);
  v152 = v309;
LABEL_112:
  v239 = v376;
LABEL_61:
  if (*(v155 + 88) == 1)
  {
    LOBYTE(v399.a) = sub_22BB1E6AC() & 1;
    if (!LOBYTE(v399.a))
    {
      v243 = sub_22BB1E7EC();
      if (v243)
      {
        MEMORY[0x28223BE20](v243);
        *(&v317 - 2) = &v399;
        sub_22BB1E78C();
      }
    }

    sub_22BB1E7BC();
  }

  if ((v239 & 1) == 0 && (sub_22BB1E7AC() & 1) == 0)
  {
    v250 = v379;
    v251 = *(v379 + 8);
    v252 = v152;
LABEL_72:
    v253 = v397;
    v251(v252, v397);
    (*(v250 + 56))(v377, 1, 1, v253);
    goto LABEL_73;
  }

  v244 = *(v155 + 40);

  v245 = sub_22BB1E6DC();
  sub_22BADBFDC(v246, v244);

  v245(&v399, 0);
  if (*(v155 + 32) == 1)
  {
    sub_22BB1E92C();
    (*(v379 + 8))(v152, v397);
  }

  else
  {
    v247 = v379;
    v248 = v377;
    v249 = v397;
    (*(v379 + 32))(v377, v152, v397);
    (*(v247 + 56))(v248, 0, 1, v249);
  }

LABEL_73:
  sub_22BAC81E8(v391, &qword_27D8DEEA0, &qword_22BB20A30);
}

uint64_t sub_22BADAB78()
{
  if ((*(v0 + 24) - 1) >= 2)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22BADABBC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEA0, &qword_22BB20A30) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_22BB1EADC();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 48, v2 | 7);
}

uint64_t __swift_get_extra_inhabitant_index_43Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BB1E55C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22BADADFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v116 = a1;
  v119 = a4;
  v6 = sub_22BB1E93C();
  v106 = *(v6 - 8);
  v107 = v6;
  MEMORY[0x28223BE20](v6);
  v105 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BB1E91C();
  v109 = *(v8 - 8);
  v110 = v8;
  MEMORY[0x28223BE20](v8);
  v104 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF5A8, &qword_22BB22BA0);
  MEMORY[0x28223BE20](v10 - 8);
  v101 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v97 = &v96 - v13;
  MEMORY[0x28223BE20](v14);
  v103 = &v96 - v15;
  MEMORY[0x28223BE20](v16);
  v112 = &v96 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v96 - v19;
  v120 = sub_22BB1E55C();
  v115 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v98 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v100 = &v96 - v23;
  MEMORY[0x28223BE20](v24);
  v99 = &v96 - v25;
  MEMORY[0x28223BE20](v26);
  v113 = &v96 - v27;
  v28 = type metadata accessor for FragmentCollator.ElementVisibilityContext(0);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v108 = &v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v114 = &v96 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF5E0, &qword_22BB22BC8);
  v117 = *(v33 - 8);
  v118 = v33;
  MEMORY[0x28223BE20](v33);
  v35 = &v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v96 - v37;
  sub_22BAD6B34(a3, &v96 - v37, &qword_27D8DF5E0, &qword_22BB22BC8);
  v111 = a2;
  v39 = *(a2 + 48);
  if (!v39)
  {
    goto LABEL_36;
  }

  v102 = v38;
  sub_22BAD6B34(a3, v35, &qword_27D8DF5E0, &qword_22BB22BC8);
  if ((*(v29 + 48))(v35, 1, v28) == 1)
  {
    sub_22BAC81E8(v35, &qword_27D8DF5E0, &qword_22BB22BC8);
    v40 = v105;
    sub_22BB1E94C();
    v42 = v106;
    v41 = v107;
    if ((*(v106 + 88))(v40, v107) != *MEMORY[0x277D74670])
    {
      (*(v42 + 8))(v40, v41);
LABEL_35:
      v38 = v102;
      goto LABEL_36;
    }

    v96 = v28;
    (*(v42 + 96))(v40, v41);
    v43 = v104;
    (*(v109 + 32))(v104, v40, v110);
    v44 = v115;
    v45 = *(v115 + 56);
    v46 = v103;
    v47 = v120;
    v45(v103, 1, 1, v120);
    if (sub_22BB1E8FC())
    {
      v48 = v112;
      sub_22BB1E71C();
      sub_22BAC81E8(v46, &qword_27D8DF5A8, &qword_22BB22BA0);
      v49 = v46;
      v50 = v101;
LABEL_32:
      sub_22BAD7044(v48, v49, &qword_27D8DF5A8, &qword_22BB22BA0);
      goto LABEL_33;
    }

    v65 = sub_22BB1E8AC();
    v49 = v46;
    v50 = v101;
    if (!v66)
    {
LABEL_33:
      sub_22BAD6B34(v49, v50, &qword_27D8DF5A8, &qword_22BB22BA0);
      if ((*(v44 + 48))(v50, 1, v47) == 1)
      {
        sub_22BAC81E8(v50, &qword_27D8DF5A8, &qword_22BB22BA0);
        sub_22BAC81E8(v49, &qword_27D8DF5A8, &qword_22BB22BA0);
        (*(v109 + 8))(v43, v110);
        goto LABEL_35;
      }

      v84 = v96;
      v85 = *(v44 + 32);
      v86 = v50;
      v87 = v98;
      v85(v98, v86, v47);
      v88 = v112;
      (*(v44 + 16))(v112, v87, v47);
      v45(v88, 0, 1, v47);
      sub_22BB1E72C();
      if ((sub_22BB1E52C() & 1) == 0)
      {
        v89 = *(v111 + 56);
        v90 = *(v111 + 64);
        v91 = COERCE_DOUBLE(sub_22BB1E74C());
        if ((v92 & 1) != 0 || (v93 = v91, v89 <= v91))
        {
          sub_22BAC81E8(v103, &qword_27D8DF5A8, &qword_22BB22BA0);
          (*(v109 + 8))(v104, v110);
          v38 = v102;
          sub_22BAC81E8(v102, &qword_27D8DF5E0, &qword_22BB22BC8);
        }

        else
        {
          sub_22BB1E6CC();
          Width = CGRectGetWidth(v123);
          sub_22BB1E6CC();
          Height = CGRectGetHeight(v124);
          sub_22BAC81E8(v103, &qword_27D8DF5A8, &qword_22BB22BA0);
          (*(v109 + 8))(v104, v110);
          v38 = v102;
          sub_22BAC81E8(v102, &qword_27D8DF5E0, &qword_22BB22BC8);
          if (v90 > Width * Height * v93)
          {
            (*(v44 + 8))(v87, v47);
            goto LABEL_40;
          }
        }

        v85(v38, v87, v47);
        v38[*(v84 + 20)] = 0;
        (*(v29 + 56))(v38, 0, 1, v84);
        goto LABEL_36;
      }

      (*(v44 + 8))(v87, v47);
      sub_22BAC81E8(v103, &qword_27D8DF5A8, &qword_22BB22BA0);
      (*(v109 + 8))(v104, v110);
      sub_22BAC81E8(v102, &qword_27D8DF5E0, &qword_22BB22BC8);
LABEL_40:
      v82 = 1;
      v81 = v119;
      return (*(v117 + 56))(v81, v82, 1, v118);
    }

    if (*(v39 + 16))
    {
      v67 = sub_22BAD6B9C(v65, v66);
      v69 = v68;

      if (v69)
      {
        v48 = v97;
        (*(v44 + 16))(v97, *(v39 + 56) + *(v44 + 72) * v67, v47);
        v49 = v103;
        sub_22BAC81E8(v103, &qword_27D8DF5A8, &qword_22BB22BA0);
        v70 = 0;
        v43 = v104;
LABEL_31:
        v45(v48, v70, 1, v47);
        goto LABEL_32;
      }

      v49 = v103;
      sub_22BAC81E8(v103, &qword_27D8DF5A8, &qword_22BB22BA0);
      v70 = 1;
      v43 = v104;
    }

    else
    {
      sub_22BAC81E8(v49, &qword_27D8DF5A8, &qword_22BB22BA0);

      v70 = 1;
    }

    v48 = v97;
    goto LABEL_31;
  }

  v96 = v28;
  v110 = v29;
  v51 = v35;
  v52 = v114;
  sub_22BABE43C(v51, v114, type metadata accessor for FragmentCollator.ElementVisibilityContext);
  v53 = v115;
  v54 = *(v115 + 16);
  v55 = v113;
  v56 = v120;
  v54(v113, v52, v120);
  sub_22BB1E71C();
  if ((*(v53 + 48))(v20, 1, v56) == 1)
  {
    sub_22BAC81E8(v20, &qword_27D8DF5A8, &qword_22BB22BA0);
  }

  else
  {
    v109 = *(v53 + 32);
    v58 = v99;
    (v109)(v99, v20, v120);
    v59 = v100;
    v54(v100, v52, v120);
    sub_22BB1E50C();
    v60 = *(v53 + 8);
    v60(v58, v120);
    v60(v55, v120);
    (v109)(v55, v59, v120);
    v56 = v120;
  }

  v57 = v108;
  v61 = v112;
  v54(v112, v55, v56);
  (*(v53 + 56))(v61, 0, 1, v56);
  sub_22BB1E72C();
  v62 = 0;
  v63 = v111;
  v64 = v96;
  if (*(v111 + 88) == 1)
  {
    if (*(v114 + *(v96 + 20)))
    {
      v62 = 1;
    }

    else
    {
      v62 = sub_22BB1E6AC();
    }
  }

  v71 = v113;
  v54(v57, v113, v56);
  *(v57 + *(v64 + 20)) = v62 & 1;
  if (sub_22BB1E52C())
  {
    (*(v115 + 8))(v71, v56);
    sub_22BAD2FB8(v114, type metadata accessor for FragmentCollator.ElementVisibilityContext);
    v38 = v102;
    sub_22BAC81E8(v102, &qword_27D8DF5E0, &qword_22BB22BC8);
    v72 = v110;
    if ((v62 & 1) == 0)
    {
LABEL_20:
      sub_22BAD2FB8(v57, type metadata accessor for FragmentCollator.ElementVisibilityContext);
      goto LABEL_40;
    }
  }

  else
  {
    v72 = v110;
    v73 = v114;
    if (v62 & 1) != 0 || (v74 = *(v63 + 72), v75 = *(v63 + 80), v76 = COERCE_DOUBLE(sub_22BB1E74C()), (v77) || (v78 = v76, v74 <= v76))
    {
      (*(v115 + 8))(v71, v56);
      sub_22BAD2FB8(v73, type metadata accessor for FragmentCollator.ElementVisibilityContext);
      v38 = v102;
      sub_22BAC81E8(v102, &qword_27D8DF5E0, &qword_22BB22BC8);
    }

    else
    {
      sub_22BB1E6CC();
      v79 = CGRectGetWidth(v121);
      sub_22BB1E6CC();
      v80 = CGRectGetHeight(v122);
      (*(v115 + 8))(v71, v56);
      sub_22BAD2FB8(v73, type metadata accessor for FragmentCollator.ElementVisibilityContext);
      v38 = v102;
      sub_22BAC81E8(v102, &qword_27D8DF5E0, &qword_22BB22BC8);
      if (v75 > v79 * v80 * v78)
      {
        goto LABEL_20;
      }
    }
  }

  sub_22BABE43C(v57, v38, type metadata accessor for FragmentCollator.ElementVisibilityContext);
  (*(v72 + 56))(v38, 0, 1, v64);
LABEL_36:
  v81 = v119;
  sub_22BAD7044(v38, v119, &qword_27D8DF5E0, &qword_22BB22BC8);
  v82 = 0;
  return (*(v117 + 56))(v81, v82, 1, v118);
}

uint64_t sub_22BADBC60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF5E0, &qword_22BB22BC8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BADBCD0(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return sub_22BABFC10(a1, a2);
  }

  return a1;
}

uint64_t sub_22BADBCE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BADBD28(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return sub_22BABFC24(a1, a2);
  }

  return a1;
}

uint64_t sub_22BADBD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v23 = a2;
  v24 = a7;
  v21 = a1;
  v22 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEA0, &qword_22BB20A30);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v21 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF5E0, &qword_22BB22BC8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v21 - v16;
  v19 = *a4;
  v18 = a4[1];
  sub_22BAD6B34(a5, &v21 - v16, &qword_27D8DF5E0, &qword_22BB22BC8);
  sub_22BAD6B34(a6, v14, &qword_27D8DEEA0, &qword_22BB20A30);
  sub_22BADBCD0(v19, v18);
  sub_22BAD7C38(v21, v22, v19, v18, v17, v14, v24, a8);
  sub_22BADBD28(v19, v18);
  sub_22BAC81E8(v14, &qword_27D8DEEA0, &qword_22BB20A30);
  return sub_22BAC81E8(v17, &qword_27D8DF5E0, &qword_22BB22BC8);
}

unint64_t sub_22BADBEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12 == 1)
      {
        if (a2 == 1)
        {
          return v6;
        }
      }

      else if (a2 != 1)
      {
        if (v12)
        {
          if (a2)
          {
            v13 = *v11 == a1 && v12 == a2;
            if (v13 || (sub_22BB1FD9C() & 1) != 0)
            {
              return v6;
            }
          }
        }

        else if (!a2)
        {
          return v6;
        }
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_22BADBFDC(uint64_t *a1, uint64_t a2)
{
  v4 = *(sub_22BB1E96C() - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_22BADC0C8(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_22BADC0DC(v8, a2);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_22BADC0DC(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_22BB1FD6C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22BB1E96C();
        v8 = sub_22BB1F80C();
        *(v8 + 16) = v7;
      }

      v9 = *(sub_22BB1E96C() - 8);
      v10[0] = (v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)));
      v10[1] = v7;

      sub_22BB12098(v10, v11, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_22BB134E4(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_22BADC260(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ConnectionID(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_22BADC30C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ConnectionID(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22BADC3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ConnectionID(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22BADC46C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ConnectionID(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22BADC56C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_22BADC5E8()
{
  v1 = _s17AsyncProviderTaskVMa(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v1 + 20);
  v6 = sub_22BB1F2EC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22BADC6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_22BB1EADC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_22BADC768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_22BB1EADC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_22BADC7E4()
{
  v1 = (_s17AsyncProviderTaskVMa(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_22BB1F2EC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22BADC8F4()
{
  v1 = (_s17AsyncProviderTaskVMa(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_22BB1F2EC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22BADC9F4()
{
  v1 = _s17AsyncProviderTaskVMa(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v1 + 20);
  v6 = sub_22BB1F2EC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

double sub_22BADCB8C@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_22BADCB98(uint64_t *a1, void *a2)
{
  v3 = *a1;
  result = sub_22BB1EAEC();
  *a2 = v3;
  return result;
}

double sub_22BADCC20@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

uint64_t sub_22BADCC2C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = sub_22BB1EAEC();
  *(a2 + 8) = v3;
  return result;
}

double sub_22BADCCB4@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 16);
  *a2 = result;
  return result;
}

uint64_t sub_22BADCCC0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = sub_22BB1EAEC();
  *(a2 + 16) = v3;
  return result;
}

double sub_22BADCD48@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 24);
  *a2 = result;
  return result;
}

uint64_t sub_22BADCD54(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = sub_22BB1EAEC();
  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_22BADCE48(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[19];
LABEL_15:
    v16 = *(v10 + 48);

    return v16(a1 + v11, a2, v9);
  }

  v12 = sub_22BB1EC9C();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[20];
    goto LABEL_15;
  }

  v13 = sub_22BB1EC5C();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[21];
    goto LABEL_15;
  }

  v14 = sub_22BB1EC7C();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[22];
    goto LABEL_15;
  }

  v15 = sub_22BB1F0BC();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[31];
    goto LABEL_15;
  }

  v17 = sub_22BB1EE9C();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[34];

  return v18(v19, a2, v17);
}

uint64_t sub_22BADD098(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[19];
LABEL_13:
    v16 = *(v10 + 56);

    return v16(v5 + v11, a2, a2, v9);
  }

  v12 = sub_22BB1EC9C();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[20];
    goto LABEL_13;
  }

  v13 = sub_22BB1EC5C();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[21];
    goto LABEL_13;
  }

  v14 = sub_22BB1EC7C();
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[22];
    goto LABEL_13;
  }

  v15 = sub_22BB1F0BC();
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[31];
    goto LABEL_13;
  }

  v17 = sub_22BB1EE9C();
  v18 = *(*(v17 - 8) + 56);
  v19 = v5 + a4[34];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_22BADD2F8()
{
  v1 = _s17AsyncProviderTaskVMa(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*(v1 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v1 + 20);
  v7 = sub_22BB1F2EC();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_22BADD420()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22BADD458()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22BADD4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BB1E9DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22BB1EADC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_22BADD5C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22BB1E9DC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22BB1EADC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22BADD6CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF5E0, &qword_22BB22BC8);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BADD744(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF5E0, &qword_22BB22BC8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_22BADD7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_22BB1E96C();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_22BADD84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_22BB1E96C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_22BADD8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BB1F5BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22BB1F11C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_22BADD9DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22BB1F5BC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22BB1F11C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22BADDAE4()
{
  v1 = (_s17AsyncProviderTaskVMa(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_22BB1F2AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = (type metadata accessor for Snapshotter(0) - 8);
  v11 = *(*v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v20 = *(*v10 + 64);
  v13 = v2 | v7 | v11;
  v14 = v1[7];
  v15 = sub_22BB1F2EC();
  (*(*(v15 - 8) + 8))(v0 + v3 + v14, v15);

  (*(v6 + 8))(v0 + v8, v5);
  v16 = sub_22BB1F5BC();
  (*(*(v16 - 8) + 8))(v0 + v12, v16);
  v17 = v10[7];
  v18 = sub_22BB1F11C();
  (*(*(v18 - 8) + 8))(v0 + v12 + v17, v18);

  return MEMORY[0x2821FE8E8](v0, v12 + v20, v13 | 7);
}

uint64_t sub_22BADDE08(uint64_t a1, uint64_t a2)
{
  sub_22BB1FDDC();
  swift_getWitnessTable();
  sub_22BB1E59C();
  return sub_22BB1FE0C();
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_22BADDEA4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BADDEC4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
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

  *(result + 128) = v3;
  return result;
}

uint64_t sub_22BADDF58(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BADDF78(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_22BADDFC8(uint64_t a1, int a2)
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

uint64_t sub_22BADDFE8(uint64_t result, int a2, int a3)
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

void sub_22BADE034(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_22BADE080(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_22BB1E58C();
}

uint64_t sub_22BADE154(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BADE198()
{
  v1 = v0;
  v2 = sub_22BB1F45C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BB1E5BC();
  v6 = sub_22BB1F6CC();

  mach_service = xpc_connection_create_mach_service((v6 + 32), 0, 1uLL);

  xpc_connection_set_non_launching();
  v8 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_22BABD7B0;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22BABD7B8;
  aBlock[3] = &block_descriptor;
  v9 = _Block_copy(aBlock);

  xpc_connection_set_event_handler(mach_service, v9);
  _Block_release(v9);
  sub_22BB1F42C();
  v10 = sub_22BB1F44C();
  v11 = sub_22BB1F89C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_22BABB000, v10, v11, "Activating xpc listener", v12, 2u);
    MEMORY[0x23189DF20](v12, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  xpc_connection_activate(mach_service);
  *(v1 + 32) = mach_service;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();

  sub_22BB1F12C();
  swift_unknownObjectRelease();
}

uint64_t sub_22BADE400(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = sub_22BB1EA5C();
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v22 = MEMORY[0x277D84F90];
  sub_22BB033E8(0, v9, 0);
  v10 = v22;
  v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = a3 + v18;
  v17 = (v6 + 32);
  v12 = *(v6 + 72);
  while (1)
  {
    v20(v11);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v10;
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_22BB033E8((v13 > 1), v14 + 1, 1);
      v10 = v22;
    }

    *(v10 + 16) = v14 + 1;
    (*v17)(v10 + v18 + v14 * v12, v8, v19);
    v11 += v12;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BADE5BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEA0, &qword_22BB20A30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_22BB1EA5C();
  (*(*(v9 - 8) + 16))(a3, a1, v9);
  v10 = sub_22BB1EADC();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v8, a2, v10);
  (*(v11 + 56))(v8, 0, 1, v10);
  return sub_22BB1E98C();
}

uint64_t sub_22BADE704()
{
  sub_22BADE8C8(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_22BADE81C(uint64_t a1)
{
  if (!qword_281424170)
  {
    type metadata accessor for ConnectionID(255);
    sub_22BB1F4CC();
    sub_22BABDC04(qword_281424A20, type metadata accessor for ConnectionID, &unk_22BB21488);
    v1 = sub_22BB1F60C();
    if (!v2)
    {
      atomic_store(v1, &qword_281424170);
    }
  }
}

void *sub_22BADE8F0()
{
  v1 = v0;
  v2 = type metadata accessor for IntelligenceSupportAgentXPCListener.State(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = (v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v0[3] = 0;
  swift_unknownObjectWeakInit();
  v0[4] = 0;
  sub_22BB1F14C();
  v0[5] = sub_22BB1F13C();
  *v5 = sub_22BAF6664(MEMORY[0x277D84F90]);
  v6 = (v5 + *(v3 + 28));
  memset(v9, 0, sizeof(v9));
  v10 = 1;
  type metadata accessor for ConnectionID(0);
  sub_22BB1EA6C();
  *v6 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEA8, &qword_22BB20A38);
  v7 = swift_allocObject();
  *(v7 + ((*(*v7 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_22BABE0FC(v5, v7 + *(*v7 + *MEMORY[0x277D841D0] + 16), type metadata accessor for IntelligenceSupportAgentXPCListener.State);
  v1[6] = v7;
  return v1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_22BADEAF4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_22BADEB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BADEC04(uint64_t a1)
{
  v35 = sub_22BB1F2EC();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v27 = v1;
    v39 = MEMORY[0x277D84F90];
    sub_22BAC8968(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = sub_22BB1FA9C();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = sub_22BB1F2BC();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = *(v38 + 16);
      v17 = *(v38 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_22BAC8968((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v37;
      *(v19 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_22BADEAF4(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_22BADEAF4(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
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

uint64_t sub_22BADEF0C(uint64_t a1)
{
  v3 = type metadata accessor for ConnectionID(0);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BB1EADC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v37 = v8;
  v31[1] = v1;
  v44 = MEMORY[0x277D84F90];
  sub_22BB0342C(0, v9, 0);
  v10 = v44;
  v11 = a1 + 56;
  result = sub_22BB1FA9C();
  v13 = v6;
  v14 = result;
  v15 = 0;
  v38 = v13;
  v35 = v13 + 32;
  v36 = (v13 + 16);
  v32 = a1 + 64;
  v33 = v9;
  v34 = a1 + 56;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    v17 = v14 >> 6;
    if ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_21;
    }

    v18 = *(a1 + 36);
    v42 = v15;
    v43 = v18;
    v19 = v39;
    sub_22BABE90C(*(a1 + 48) + *(v40 + 72) * v14, v39, type metadata accessor for ConnectionID);
    v20 = v37;
    (*v36)(v37, v19 + *(v41 + 20), v5);
    sub_22BAC1514(v19, type metadata accessor for ConnectionID);
    v44 = v10;
    v21 = v5;
    v23 = *(v10 + 16);
    v22 = *(v10 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_22BB0342C((v22 > 1), v23 + 1, 1);
      v10 = v44;
    }

    *(v10 + 16) = v23 + 1;
    result = (*(v38 + 32))(v10 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v23, v20, v21);
    v16 = 1 << *(a1 + 32);
    if (v14 >= v16)
    {
      goto LABEL_22;
    }

    v5 = v21;
    v11 = v34;
    v24 = *(v34 + 8 * v17);
    if ((v24 & (1 << v14)) == 0)
    {
      goto LABEL_23;
    }

    if (v43 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v25 = v24 & (-2 << (v14 & 0x3F));
    if (v25)
    {
      v16 = __clz(__rbit64(v25)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = v17 << 6;
      v27 = v17 + 1;
      v28 = (v32 + 8 * v17);
      while (v27 < (v16 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = sub_22BADEAF4(v14, v43, 0);
          v16 = __clz(__rbit64(v29)) + v26;
          goto LABEL_4;
        }
      }

      result = sub_22BADEAF4(v14, v43, 0);
    }

LABEL_4:
    v15 = v42 + 1;
    v14 = v16;
    if (v42 + 1 == v33)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_22BADF2E8()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0xD000000000000013;
  v4 = 0x6867696C746F7073;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1769105779;
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

uint64_t sub_22BADF38C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22BAEDB3C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22BADF3CC(uint64_t a1)
{
  v2 = sub_22BADFBE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BADF408(uint64_t a1)
{
  v2 = sub_22BADFBE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BADF450(uint64_t a1)
{
  v2 = sub_22BADFC3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BADF48C(uint64_t a1)
{
  v2 = sub_22BADFC3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BADF4C8(uint64_t a1)
{
  v2 = sub_22BADFD38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BADF504(uint64_t a1)
{
  v2 = sub_22BADFD38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BADF540(uint64_t a1)
{
  v2 = sub_22BADFC90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BADF57C(uint64_t a1)
{
  v2 = sub_22BADFC90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BADF5B8(uint64_t a1)
{
  v2 = sub_22BADFCE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BADF5F4(uint64_t a1)
{
  v2 = sub_22BADFCE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BADF630(uint64_t a1)
{
  v2 = sub_22BADFD8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BADF66C(uint64_t a1)
{
  v2 = sub_22BADFD8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntelligenceSupportAgent.Client.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEB0, &qword_22BB20A80);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEB8, &qword_22BB20A88);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEC0, &qword_22BB20A90);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v33 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEC8, &qword_22BB20A98);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEED0, &qword_22BB20AA0);
  v42 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEED8, &qword_22BB20AA8);
  v15 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v16 = *v1;
  v17 = a1[3];
  v18 = a1;
  v20 = &v33 - v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_22BADFBE8();
  sub_22BB1FE2C();
  v21 = (v15 + 8);
  if (v16 <= 1)
  {
    v26 = v20;
    v28 = v42;
    v27 = v43;
    v29 = v11;
    v30 = v44;
    if (v16)
    {
      v47 = 1;
      sub_22BADFD38();
      v31 = v45;
      sub_22BB1FCDC();
      (*(v27 + 8))(v29, v30);
    }

    else
    {
      v46 = 0;
      sub_22BADFD8C();
      v31 = v45;
      sub_22BB1FCDC();
      (*(v28 + 8))(v14, v12);
    }

    return (*v21)(v26, v31);
  }

  else
  {
    if (v16 == 2)
    {
      v48 = 2;
      sub_22BADFCE4();
      v22 = v33;
      v23 = v45;
      sub_22BB1FCDC();
      v25 = v34;
      v24 = v35;
    }

    else if (v16 == 3)
    {
      v49 = 3;
      sub_22BADFC90();
      v22 = v36;
      v23 = v45;
      sub_22BB1FCDC();
      v25 = v37;
      v24 = v38;
    }

    else
    {
      v50 = 4;
      sub_22BADFC3C();
      v22 = v39;
      v23 = v45;
      sub_22BB1FCDC();
      v25 = v40;
      v24 = v41;
    }

    (*(v25 + 8))(v22, v24);
    return (*v21)(v20, v23);
  }
}

unint64_t sub_22BADFBE8()
{
  result = qword_27D8DEEE0;
  if (!qword_27D8DEEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEEE0);
  }

  return result;
}

unint64_t sub_22BADFC3C()
{
  result = qword_27D8DEEE8;
  if (!qword_27D8DEEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEEE8);
  }

  return result;
}

unint64_t sub_22BADFC90()
{
  result = qword_27D8DEEF0;
  if (!qword_27D8DEEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEEF0);
  }

  return result;
}

unint64_t sub_22BADFCE4()
{
  result = qword_27D8DEEF8;
  if (!qword_27D8DEEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEEF8);
  }

  return result;
}

unint64_t sub_22BADFD38()
{
  result = qword_27D8DEF00;
  if (!qword_27D8DEF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEF00);
  }

  return result;
}

unint64_t sub_22BADFD8C()
{
  result = qword_27D8DEF08;
  if (!qword_27D8DEF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEF08);
  }

  return result;
}

uint64_t IntelligenceSupportAgent.Client.hashValue.getter()
{
  v1 = *v0;
  sub_22BB1FDDC();
  MEMORY[0x23189D810](v1);
  return sub_22BB1FE0C();
}

uint64_t IntelligenceSupportAgent.Client.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v43 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEF10, &qword_22BB20AB0);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v45 = &v30[-v3];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEF18, &qword_22BB20AB8);
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v42 = &v30[-v4];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEF20, &qword_22BB20AC0);
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v44 = &v30[-v5];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEF28, &qword_22BB20AC8);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v7 = &v30[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEF30, &qword_22BB20AD0);
  v33 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v30[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEF38, &qword_22BB20AD8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30[-v13];
  v15 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_22BADFBE8();
  v16 = v46;
  sub_22BB1FE1C();
  if (!v16)
  {
    v32 = v8;
    v17 = v44;
    v18 = v45;
    v46 = v12;
    v19 = v14;
    v20 = sub_22BB1FCCC();
    v21 = *(v20 + 16);
    if (!v21 || ((v22 = *(v20 + 32), v21 == 1) ? (v23 = v22 == 5) : (v23 = 1), v23))
    {
      v24 = sub_22BB1FBAC();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEF40, &qword_22BB20AE0);
      *v26 = &type metadata for IntelligenceSupportAgent.Client;
      sub_22BB1FC4C();
      sub_22BB1FB9C();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v46 + 8))(v19, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = *(v20 + 32);
      if (v22 <= 1)
      {
        if (v22)
        {
          v49 = 1;
          sub_22BADFD38();
          sub_22BB1FC3C();
          (*(v34 + 8))(v7, v36);
        }

        else
        {
          v48 = 0;
          sub_22BADFD8C();
          sub_22BB1FC3C();
          (*(v33 + 8))(v10, v32);
        }

        (*(v46 + 8))(v14, v11);
      }

      else
      {
        v36 = v20;
        v28 = v46;
        if (v22 == 2)
        {
          v50 = 2;
          sub_22BADFCE4();
          sub_22BB1FC3C();
          (*(v35 + 8))(v17, v37);
          (*(v28 + 8))(v19, v11);
        }

        else
        {
          if (v22 == 3)
          {
            v51 = 3;
            sub_22BADFC90();
            v29 = v42;
            sub_22BB1FC3C();
            (*(v38 + 8))(v29, v40);
          }

          else
          {
            v52 = 4;
            sub_22BADFC3C();
            sub_22BB1FC3C();
            (*(v39 + 8))(v18, v41);
          }

          (*(v28 + 8))(v19, v11);
        }
      }

      swift_unknownObjectRelease();
      *v43 = v31;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v47);
}

uint64_t sub_22BAE05B4()
{
  v1 = *v0;
  sub_22BB1FDDC();
  MEMORY[0x23189D810](v1);
  return sub_22BB1FE0C();
}

uint64_t sub_22BAE05FC(uint64_t a1)
{
  v2 = *v1;
  sub_22BB1FDDC();
  MEMORY[0x23189D810](v2);
  return sub_22BB1FE0C();
}

uint64_t static IntelligenceSupportAgent.initialize()()
{
  if (qword_281424D70 != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t static IntelligenceSupportAgent.fetchElementHierarchy(for:parameters:)(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  *(v4 + 56) = *a2;
  return MEMORY[0x2822009F8](sub_22BAC2C0C, 0, 0);
}

uint64_t sub_22BAE06D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22BAE07E0(uint64_t *a1)
{
  sub_22BAEE694(*a1, a1[1], a1[2], a1[3]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DEFB8, &qword_22BB211C8);
  return sub_22BB1F81C();
}

uint64_t sub_22BAE0860()
{
  type metadata accessor for IntelligenceSupportAgent();
  swift_allocObject();
  result = sub_22BAE30A4();
  qword_281425148 = result;
  return result;
}

uint64_t sub_22BAE089C()
{
  v0 = sub_22BB1F8EC();
  MEMORY[0x28223BE20](v0);
  v1 = sub_22BB1F90C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BB1F56C();
  MEMORY[0x28223BE20](v5 - 8);
  sub_22BAC83C0(0, &qword_2814240C8, 0x277D85C78);
  sub_22BB1F55C();
  (*(v2 + 104))(v4, *MEMORY[0x277D85268], v1);
  v7[1] = MEMORY[0x277D84F90];
  sub_22BAC36FC(&unk_2814240D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF0C8, &qword_22BB21710);
  sub_22BAC8324(&qword_281424140, &unk_27D8DF0C8, &qword_22BB21710, MEMORY[0x277D83970]);
  sub_22BB1FA8C();
  result = sub_22BB1F93C();
  qword_281425060 = result;
  return result;
}

uint64_t sub_22BAE0B10()
{
  v0 = sub_22BB1F8EC();
  MEMORY[0x28223BE20](v0);
  v1 = sub_22BB1F90C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BB1F56C();
  MEMORY[0x28223BE20](v5 - 8);
  sub_22BAC83C0(0, &qword_2814240C8, 0x277D85C78);
  sub_22BB1F55C();
  (*(v2 + 104))(v4, *MEMORY[0x277D85268], v1);
  v7[1] = MEMORY[0x277D84F90];
  sub_22BAC36FC(&unk_2814240D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF0C8, &qword_22BB21710);
  sub_22BAC8324(&qword_281424140, &unk_27D8DF0C8, &qword_22BB21710, MEMORY[0x277D83970]);
  sub_22BB1FA8C();
  result = sub_22BB1F93C();
  qword_281425048 = result;
  return result;
}

uint64_t sub_22BAE0D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v51 = a3;
  v52 = a4;
  v50 = a2;
  v54 = a1;
  v6 = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
  MEMORY[0x28223BE20](v6 - 8);
  v48 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_22BB1F2EC();
  v49 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BB1F11C();
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x28223BE20](v9);
  v47 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BB1F5BC();
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x28223BE20](v11);
  v41 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BB1F95C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_timeoutTimer;
  sub_22BAC83C0(0, &qword_2814240B0, 0x277D85CA0);
  if (qword_281425040 != -1)
  {
    swift_once();
  }

  *&v55[0] = MEMORY[0x277D84F90];
  sub_22BAC36FC(&qword_2814240B8, MEMORY[0x277D85278], MEMORY[0x277D85280]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF060, &qword_22BB21250);
  sub_22BAC8324(&qword_281424138, &unk_27D8DF060, &qword_22BB21250, MEMORY[0x277D83970]);
  sub_22BB1FA8C();
  v17 = sub_22BB1F96C();
  (*(v14 + 8))(v16, v13);
  *(v5 + v40) = v17;
  v18 = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_timedOutAsyncTasksByClient;
  v19 = MEMORY[0x277D84F90];
  *(v5 + v18) = sub_22BAF6E94(MEMORY[0x277D84F90]);
  *(v5 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_timedOutAsyncProviderTasks) = v19;
  *(v5 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_pendingClients) = MEMORY[0x277D84FA0];
  *(v5 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_doneAddingPendingClients) = 0;
  v20 = (v5 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_completionHandler);
  *v20 = 0;
  v20[1] = 0;
  v21 = v41;
  sub_22BB1F59C();
  v22 = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_startTime;
  v24 = v42;
  v23 = v43;
  (*(v42 + 32))(v5 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_startTime, v21, v43);
  *(v5 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_signpostStartTime) = mach_continuous_time();
  v25 = v50;
  sub_22BABE90C(v50, v5 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_parameters, type metadata accessor for IntelligenceSupportAgent.RequestParameters);
  v26 = v49;
  v27 = v44;
  (*(v49 + 16))(v44, v54, v53);
  v28 = v48;
  sub_22BABE90C(v25, v48, type metadata accessor for IntelligenceSupportAgent.RequestParameters);
  (*(v24 + 16))(v21, v5 + v22, v23);
  v29 = v47;
  sub_22BAF85B8(v27, v28, v21);
  v30 = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_request;
  v32 = v45;
  v31 = v46;
  (*(v45 + 32))(v5 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_request, v29, v46);
  (*(v32 + 16))(v29, v5 + v30, v31);
  type metadata accessor for FragmentCollator(0);
  memset(v55, 0, sizeof(v55));
  v56 = 0;
  swift_allocObject();
  v33 = sub_22BB0D58C(v29, v55);
  sub_22BAC1514(v25, type metadata accessor for IntelligenceSupportAgent.RequestParameters);
  (*(v26 + 8))(v54, v53);
  *(v5 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_collator) = v33;
  v34 = (v5 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_completionHandler);
  v35 = *(v5 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_completionHandler);
  v36 = *(v5 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_completionHandler + 8);
  v37 = v52;
  *v34 = v51;
  v34[1] = v37;
  sub_22BAD162C(v35, v36);
  return v5;
}

uint64_t sub_22BAE1358()
{
  v1 = sub_22BB1F52C();
  v56 = *(v1 - 8);
  v57 = v1;
  MEMORY[0x28223BE20](v1);
  v54 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_22BB1F56C();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_22BB1F53C();
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BB1F5BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF048, &unk_22BB216E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v41 - v10;
  v58 = _s17AsyncProviderTaskVMa(0);
  v12 = *(v58 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v58);
  v44 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v49 = &v41 - v15;
  v16 = sub_22BB1F51C();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v19 = 40;
  v20 = *MEMORY[0x277D85178];
  v59 = v22;
  v60 = v21;
  (*(v22 + 104))(v19, v20, v17);
  v48 = v0;
  sub_22BB1F0DC();
  aBlock = 0;
  v63 = 0xE000000000000000;
  sub_22BB1FB7C();

  aBlock = 0xD000000000000014;
  v63 = 0x800000022BB26EA0;
  v23 = sub_22BB1F4FC();
  MEMORY[0x23189D130](v23);

  MEMORY[0x23189D130](41, 0xE100000000000000);
  sub_22BAC8A94(v8, aBlock, v63, v11);

  v24 = *(v6 + 8);
  v50 = v6 + 8;
  v51 = v5;
  v24(v8, v5);
  v43 = v12;
  if ((*(v12 + 48))(v11, 1, v58) == 1)
  {
    (*(v59 + 8))(v19, v60);
    return sub_22BAC81E8(v11, &qword_27D8DF048, &unk_22BB216E0);
  }

  else
  {
    v26 = v11;
    v27 = v49;
    sub_22BAC3614(v26, v49, _s17AsyncProviderTaskVMa);
    sub_22BAC83C0(0, &qword_2814240C8, 0x277D85C78);
    v58 = v24;
    v28 = v46;
    v29 = v45;
    v30 = v47;
    (*(v46 + 104))(v45, *MEMORY[0x277D851C0], v47);
    v42 = sub_22BB1F94C();
    (*(v28 + 8))(v29, v30);
    v31 = v8;
    MEMORY[0x23189CFF0](v48 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_startTime, v19);
    v32 = v27;
    v33 = v44;
    sub_22BABE90C(v27, v44, _s17AsyncProviderTaskVMa);
    v34 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v35 = swift_allocObject();
    sub_22BAC3614(v33, v35 + v34, _s17AsyncProviderTaskVMa);
    v66 = sub_22BACE2E0;
    v67 = v35;
    aBlock = MEMORY[0x277D85DD0];
    v63 = 1107296256;
    v64 = sub_22BAC37D4;
    v65 = &block_descriptor_53;
    v36 = _Block_copy(&aBlock);
    v37 = v52;
    sub_22BB1F54C();
    v61 = MEMORY[0x277D84F90];
    sub_22BAC36FC(&qword_281424180, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFC8, &qword_22BB211D0);
    sub_22BAC8324(&qword_281424150, &qword_27D8DEFC8, &qword_22BB211D0, MEMORY[0x277D83970]);
    v38 = v54;
    v39 = v57;
    sub_22BB1FA8C();
    v40 = v42;
    MEMORY[0x23189D320](v31, v37, v38, v36);
    _Block_release(v36);

    (*(v56 + 8))(v38, v39);
    (*(v53 + 8))(v37, v55);
    v58(v31, v51);
    sub_22BAC1514(v32, _s17AsyncProviderTaskVMa);
    (*(v59 + 8))(v19, v60);
  }
}

uint64_t sub_22BAE1B54(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = type metadata accessor for ConnectionID(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_timedOutAsyncTasksByClient;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + v9);
  v21 = v11;
  *(v4 + v9) = 0x8000000000000000;
  v13 = sub_22BABE164(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v12;
  if (v11[3] >= v16)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v4 + v9) = v11;
      if (v12)
      {
LABEL_9:

        sub_22BAE1D54(v19);
        return swift_endAccess();
      }

LABEL_8:
      sub_22BABE90C(a2, v8, type metadata accessor for ConnectionID);
      sub_22BABE4A4(v13, v8, MEMORY[0x277D84F90], v11);
      goto LABEL_9;
    }

LABEL_11:
    sub_22BAEB8A8();
    v11 = v21;
    *(v4 + v9) = v21;
    if (v3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_22BAE9194(v16, isUniquelyReferenced_nonNull_native);
  v11 = v21;
  v17 = sub_22BABE164(a2);
  if ((v3 & 1) == (v18 & 1))
  {
    v13 = v17;
    *(v4 + v9) = v11;
    if (v3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  result = sub_22BB1FDBC();
  __break(1u);
  return result;
}

char *sub_22BAE1D54(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_22BACE678(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22BAE1E74(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_22BAE1FD4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v101 = type metadata accessor for ConnectionID(0);
  v97 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v96 = v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFE8, &qword_22BB211F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v102 = v90 - v10;
  v105 = sub_22BB1EADC();
  v95 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v106 = v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v90 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v90 - v16;
  if (a1 || (v18 = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_timedOutAsyncTasksByClient, swift_beginAccess(), *(*(v2 + v18) + 16)) || (v19 = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_timedOutAsyncProviderTasks, result = swift_beginAccess(), *(*(v2 + v19) + 16)))
  {
    v108 = 0;
    *&v109 = MEMORY[0x277D84FA0];
    *(&v109 + 1) = sub_22BAF7078(MEMORY[0x277D84F90]);
    v92 = v2;
    v103 = v8;
    v90[0] = a2;
    if (a1 && (v21 = *(a1 + 16)) != 0)
    {
      v90[1] = v17;
      v91 = v14;
      v22 = 0;
      v23 = 0;
      v24 = a1 + 32;
      v25 = v95 + 16;
      v26 = (v95 + 8);
      v98 = v21;
      v94 = v24;
      v27 = v17;
      do
      {
        v28 = v24 + 16 * v22;
        if (*(v28 + 8) - 1 < 2)
        {
          HIBYTE(v108) = 1;
        }

        else if (*(v28 + 8))
        {
          LOBYTE(v108) = 1;
        }

        else
        {
          v29 = *v28;

          v31 = sub_22BADEF0C(v30);
          v32 = *(v31 + 16);
          if (v32)
          {
            v99 = v29;
            v100 = v22;
            v93 = v23;
            v33 = *(v95 + 80);
            v104 = v31;
            v34 = v25;
            v35 = v31 + ((v33 + 32) & ~v33);
            v36 = *(v95 + 72);
            v37 = *(v95 + 16);
            v38 = v105;
            v39 = v91;
            do
            {
              v37(v27, v35, v38);
              sub_22BB197C4(v39, v27);
              (*v26)(v39, v38);
              v35 += v36;
              --v32;
            }

            while (v32);

            v8 = v103;
            v23 = v93;
            v21 = v98;
            v24 = v94;
            v25 = v34;
            v22 = v100;
          }

          else
          {

            v8 = v103;
          }
        }

        v22 = (v22 + 1);
      }

      while (v22 != v21);
    }

    else
    {
      v23 = 0;
    }

    v93 = v23;
    v40 = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_timedOutAsyncTasksByClient;
    v41 = v92;
    swift_beginAccess();
    v42 = *(v41 + v40);
    v43 = (v42 + 64);
    v44 = 1 << v42[32];
    v45 = -1;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    v46 = v45 & *(v42 + 8);
    v94 = (v44 + 63) >> 6;
    v104 = (v95 + 16);
    v100 = (v95 + 8);
    v98 = v42;

    v47 = 0;
    a2 = 0;
    v48 = &unk_27D8DEFF0;
    v49 = &unk_22BB211F8;
    v99 = v43;
    while (v46)
    {
      v50 = v47;
      v51 = a2;
LABEL_32:
      v54 = __clz(__rbit64(v46));
      v46 &= v46 - 1;
      v55 = v54 | (v51 << 6);
      v56 = v98;
      v57 = v96;
      sub_22BABE90C(v98[6] + *(v97 + 72) * v55, v96, type metadata accessor for ConnectionID);
      v58 = *(v56[7] + v55);
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(v48, v49);
      v60 = v48;
      v61 = *(v59 + 48);
      sub_22BAC3614(v57, v8, type metadata accessor for ConnectionID);
      *&v8[v61] = v58;
      (*(*(v59 - 8) + 56))(v8, 0, 1, v59);

      v62 = v49;
      v47 = v50;
LABEL_33:
      v63 = v102;
      sub_22BAD7044(v8, v102, &qword_27D8DEFE8, &qword_22BB211F0);
      v64 = v60;
      v49 = v62;
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(v60, v62);
      if ((*(*(v65 - 8) + 48))(v63, 1, v65) == 1)
      {

        v84 = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_timedOutAsyncProviderTasks;
        v85 = v92;
        swift_beginAccess();
        v86 = *(v85 + v84);
        v87 = 256;
        if (!HIBYTE(v108))
        {
          v87 = 0;
        }

        v88 = v87 | v108;
        v89 = v90[0];
        *v90[0] = v88;
        *(v89 + 8) = v109;
        *(v89 + 24) = v86;

        return sub_22BAD162C(v47, 0);
      }

      v66 = *(v63 + *(v65 + 48));
      v67 = *v104;
      v68 = v106;
      (*v104)(v106, v63 + *(v101 + 20), v105);
      sub_22BAC1514(v63, type metadata accessor for ConnectionID);
      sub_22BAD162C(v47, 0);
      v69 = *(&v109 + 1);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v107 = v69;
      v72 = sub_22BB1927C(v68);
      v73 = v69[2];
      v74 = (v71 & 1) == 0;
      v75 = v73 + v74;
      if (__OFADD__(v73, v74))
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        result = sub_22BB1FDBC();
        __break(1u);
        return result;
      }

      v76 = v71;
      if (v69[3] >= v75)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22BAEC128(&unk_27D8DEFF8, &unk_22BB21200);
          v69 = v107;
        }
      }

      else
      {
        sub_22BAE9B98(v75, isUniquelyReferenced_nonNull_native, &unk_27D8DEFF8, &unk_22BB21200);
        v69 = v107;
        v77 = sub_22BB1927C(v106);
        if ((v76 & 1) != (v78 & 1))
        {
          goto LABEL_51;
        }

        v72 = v77;
      }

      v79 = v105;
      *(&v109 + 1) = v69;
      if ((v76 & 1) == 0)
      {
        v69[(v72 >> 6) + 8] |= 1 << v72;
        v67(v69[6] + *(v95 + 72) * v72, v106, v79);
        *(v69[7] + 8 * v72) = MEMORY[0x277D84F90];
        v80 = v69[2];
        v81 = __OFADD__(v80, 1);
        v82 = v80 + 1;
        if (v81)
        {
          goto LABEL_50;
        }

        v69[2] = v82;
      }

      sub_22BAE1D54(v66);
      result = (*v100)(v106, v79);
      v47 = sub_22BAE1D18;
      v8 = v103;
      v48 = v64;
      v43 = v99;
    }

    if (v94 <= a2 + 1)
    {
      v52 = a2 + 1;
    }

    else
    {
      v52 = v94;
    }

    v53 = v52 - 1;
    while (1)
    {
      v51 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      if (v51 >= v94)
      {
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(v48, v49);
        (*(*(v83 - 8) + 56))(v8, 1, 1, v83);
        v46 = 0;
        a2 = v53;
        v60 = v48;
        v62 = v49;
        goto LABEL_33;
      }

      v46 = v43[v51];
      a2 = (a2 + 1);
      if (v46)
      {
        v50 = v47;
        a2 = v51;
        goto LABEL_32;
      }
    }

    __break(1u);
  }

  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

unint64_t sub_22BAE2918(uint64_t a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for FragmentCollator.PendingRemoteDetails(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      return 0xD000000000000014;
    }

    v9 = *(a1 + 16);
    v10 = MEMORY[0x277D84F90];
    if (v9)
    {
      v37 = MEMORY[0x277D84F90];
      sub_22BAC8968(0, v9, 0);
      v10 = v37;
      v11 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v34 = *(v5 + 72);
      do
      {
        sub_22BABE90C(v11, v7, type metadata accessor for FragmentCollator.PendingRemoteDetails);
        v35 = 40;
        v36 = 0xE100000000000000;
        sub_22BB1E9DC();
        sub_22BAC36FC(&qword_2814250E8, MEMORY[0x277D746D8], MEMORY[0x277D746F0]);
        v12 = sub_22BB1FD7C();
        MEMORY[0x23189D130](v12);

        MEMORY[0x23189D130](0x65746F6D6572202CLL, 0xE90000000000003DLL);
        sub_22BB1EADC();
        sub_22BAC36FC(&unk_2814250C0, MEMORY[0x277D74708], MEMORY[0x277D74740]);
        v13 = sub_22BB1FD7C();
        MEMORY[0x23189D130](v13);

        MEMORY[0x23189D130](41, 0xE100000000000000);
        v14 = v35;
        v15 = v36;
        sub_22BAC1514(v7, type metadata accessor for FragmentCollator.PendingRemoteDetails);
        v37 = v10;
        v17 = *(v10 + 16);
        v16 = *(v10 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_22BAC8968((v16 > 1), v17 + 1, 1);
          v10 = v37;
        }

        *(v10 + 16) = v17 + 1;
        v18 = v10 + 16 * v17;
        *(v18 + 32) = v14;
        *(v18 + 40) = v15;
        v11 += v34;
        --v9;
      }

      while (v9);
    }

    v35 = 0;
    v36 = 0xE000000000000000;
    sub_22BB1FB7C();

    v29 = 0x800000022BB26FA0;
    v30 = 0xD000000000000019;
    goto LABEL_20;
  }

  if (a2)
  {
    v19 = *(a1 + 16);
    v10 = MEMORY[0x277D84F90];
    if (v19)
    {
      v37 = MEMORY[0x277D84F90];
      sub_22BAC8968(0, v19, 0);
      v10 = v37;
      v20 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v34 = *(v5 + 72);
      do
      {
        sub_22BABE90C(v20, v7, type metadata accessor for FragmentCollator.PendingRemoteDetails);
        v35 = 40;
        v36 = 0xE100000000000000;
        sub_22BB1E9DC();
        sub_22BAC36FC(&qword_2814250E8, MEMORY[0x277D746D8], MEMORY[0x277D746F0]);
        v21 = sub_22BB1FD7C();
        MEMORY[0x23189D130](v21);

        MEMORY[0x23189D130](0x656372756F73202CLL, 0xE90000000000003DLL);
        sub_22BB1EADC();
        sub_22BAC36FC(&unk_2814250C0, MEMORY[0x277D74708], MEMORY[0x277D74740]);
        v22 = sub_22BB1FD7C();
        MEMORY[0x23189D130](v22);

        MEMORY[0x23189D130](41, 0xE100000000000000);
        v23 = v35;
        v24 = v36;
        sub_22BAC1514(v7, type metadata accessor for FragmentCollator.PendingRemoteDetails);
        v37 = v10;
        v26 = *(v10 + 16);
        v25 = *(v10 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_22BAC8968((v25 > 1), v26 + 1, 1);
          v10 = v37;
        }

        *(v10 + 16) = v26 + 1;
        v27 = v10 + 16 * v26;
        *(v27 + 32) = v23;
        *(v27 + 40) = v24;
        v20 += v34;
        --v19;
      }

      while (v19);
    }

    v35 = 0;
    v36 = 0xE000000000000000;
    sub_22BB1FB7C();

    v29 = 0x800000022BB26FC0;
    v30 = 0xD00000000000001ALL;
LABEL_20:
    v35 = v30;
    v36 = v29;
    v31 = MEMORY[0x23189D210](v10, MEMORY[0x277D837D0]);
    v33 = v32;

    MEMORY[0x23189D130](v31, v33);
    goto LABEL_21;
  }

  v35 = 0;
  v36 = 0xE000000000000000;
  sub_22BB1FB7C();

  v35 = 0xD00000000000001ALL;
  v36 = 0x800000022BB26FE0;
  type metadata accessor for ConnectionID(0);
  sub_22BAC36FC(qword_281424A20, type metadata accessor for ConnectionID, &unk_22BB21488);
  v8 = sub_22BB1F85C();
  MEMORY[0x23189D130](v8);
LABEL_21:

  MEMORY[0x23189D130](41, 0xE100000000000000);
  return v35;
}

uint64_t sub_22BAE2F28()
{
  v1 = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_startTime;
  v2 = sub_22BB1F5BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  sub_22BAC1514(v0 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_parameters, type metadata accessor for IntelligenceSupportAgent.RequestParameters);
  v3 = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_request;
  v4 = sub_22BB1F11C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_22BAD162C(*(v0 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_completionHandler), *(v0 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_completionHandler + 8));
  return v0;
}

uint64_t sub_22BAE3050()
{
  sub_22BAE2F28();

  return swift_deallocClassInstance();
}

uint64_t sub_22BAE30A4()
{
  v1 = v0;
  type metadata accessor for IntelligenceSupportAgentXPCListener();
  swift_allocObject();
  *(v0 + 16) = sub_22BADE8F0();
  v2 = sub_22BAF6848(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF0F8, &qword_22BB212B8);
  v3 = swift_allocObject();
  *(v3 + 40) = 0;
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v1 + 24) = v3;
  sub_22BB097DC();
  *(*(v1 + 16) + 24) = &off_283F6B498;
  swift_unknownObjectWeakAssign();

  sub_22BADE198();

  v4 = *(v1 + 24);

  os_unfair_lock_lock((v4 + 40));
  sub_22BB1E5DC();
  *(v4 + 32) = sub_22BB1E5CC();

  os_unfair_lock_unlock((v4 + 40));

  return v1;
}

uint64_t sub_22BAE31B0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionID(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BB1EADC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BABE90C(a1, v7, type metadata accessor for ConnectionID);
  (*(v9 + 32))(v11, &v7[*(v5 + 28)], v8);
  if (sub_22BAC50E4(v11, v2[5]) & 1) != 0 || (v12 = sub_22BB1EA9C(), v13) && (v14 = sub_22BAC52FC(v12, v13, v2[6]), , (v14) || (v15 = v2[3]) != 0 && (sub_22BAC50E4(v11, v15) & 1) == 0)
  {
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v16 = v2[4];
    if (!v16 || (v17 = sub_22BB1EA9C(), !v18))
    {
      (*(v9 + 8))(v11, v8);
      return 1;
    }

    v19 = sub_22BAC52FC(v17, v18, v16);

    (*(v9 + 8))(v11, v8);
    if (v19)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_22BAE33C0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D85180];
  v3 = sub_22BB1F51C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22BAE3434@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x277D85168];
  v3 = sub_22BB1F51C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22BAE34AC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 24);
    MEMORY[0x28223BE20](result);
    os_unfair_lock_lock((v2 + 40));
    sub_22BAEEDA8((v2 + 16));
    os_unfair_lock_unlock((v2 + 40));
  }

  return result;
}

uint64_t sub_22BAE3564()
{
  sub_22BB1F52C();
  sub_22BAC36FC(&qword_281424180, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFC8, &qword_22BB211D0);
  sub_22BAC8324(&qword_281424150, &qword_27D8DEFC8, &qword_22BB211D0, MEMORY[0x277D83970]);
  return sub_22BB1FA8C();
}

uint64_t sub_22BAE3650(void *a1, uint64_t a2)
{
  v4 = sub_22BB1F2EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  v11 = sub_22BB1F45C();
  v54 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - v15;
  v52 = a1;
  v17 = *a1;
  if (*(v17 + 16) && (v18 = sub_22BACB688(a2), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 8 * v18);

    v21 = a2;
    v22 = sub_22BACB200(1);
    sub_22BB1F43C();
    v23 = *(v5 + 16);
    v50 = v21;
    v23(v10, v21, v4);

    v24 = sub_22BB1F44C();
    v25 = sub_22BB1F8BC();
    v51 = v22;

    v49 = v25;
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v48 = v20;
      v27 = v26;
      v28 = swift_slowAlloc();
      v55 = v28;
      *v27 = 136446466;
      v29 = v24;
      v30 = sub_22BB1F2BC();
      v53 = v11;
      v32 = v31;
      (*(v5 + 8))(v10, v4);
      v33 = sub_22BABDC4C(v30, v32, &v55);

      *(v27 + 4) = v33;
      *(v27 + 12) = 2082;
      v34 = v51;
      v35 = MEMORY[0x23189D210](v51, &type metadata for IntelligenceSupportAgent.ActiveRequest.CompletionActivity);
      v37 = sub_22BABDC4C(v35, v36, &v55);

      *(v27 + 14) = v37;
      _os_log_impl(&dword_22BABB000, v29, v49, "timed out %{public}s because %{public}s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23189DF20](v28, -1, -1);
      MEMORY[0x23189DF20](v27, -1, -1);

      (*(v54 + 8))(v16, v53);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
      (*(v54 + 8))(v16, v11);
      v34 = v51;
    }

    sub_22BACFB24(v50, v34);
  }

  else
  {
    v53 = v11;
    sub_22BB1F43C();
    (*(v5 + 16))(v7, a2, v4);
    v38 = sub_22BB1F44C();
    v39 = sub_22BB1F8BC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v52 = v4;
      v41 = v40;
      v42 = swift_slowAlloc();
      v55 = v42;
      *v41 = 136446210;
      v43 = sub_22BB1F2BC();
      v45 = v44;
      (*(v5 + 8))(v7, v52);
      v46 = sub_22BABDC4C(v43, v45, &v55);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_22BABB000, v38, v39, "timed out invalid %{public}s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x23189DF20](v42, -1, -1);
      MEMORY[0x23189DF20](v41, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    return (*(v54 + 8))(v13, v53);
  }
}

void sub_22BAE3B70(uint64_t *a1)
{
  v57 = sub_22BB1F2EC();
  v54 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v4 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v51 = v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF080, &qword_22BB21260);
  MEMORY[0x28223BE20](v7 - 8);
  v53 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = v46 - v10;
  v11 = sub_22BB1F45C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1[1] & 1) == 0)
  {
    v46[0] = v1;
    *(a1 + 8) = 1;
    sub_22BB1F43C();
    v15 = sub_22BB1F44C();
    v16 = sub_22BB1F8CC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22BABB000, v15, v16, "Launch completed", v17, 2u);
      MEMORY[0x23189DF20](v17, -1, -1);
    }

    (*(v12 + 8))(v14, v11);
    if (a1[2])
    {
      sub_22BB1F4BC();
    }

    a1[2] = 0;
    v18 = *a1;
    v20 = (*a1 + 64);
    v19 = *v20;
    v46[1] = a1;
    v47 = v20;
    v21 = 1 << *(v18 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v19;
    v24 = (v21 + 63) >> 6;
    v48 = v54 + 16;
    v55 = (v54 + 8);
    v56 = (v54 + 32);
    v50 = v18;

    v25 = 0;
    v49 = v4;
    v26 = v52;
    v27 = v53;
    if (!v23)
    {
      goto LABEL_12;
    }

    do
    {
      while (1)
      {
        v28 = v25;
LABEL_19:
        v31 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        v32 = v31 | (v28 << 6);
        v34 = v50;
        v33 = v51;
        v35 = v54;
        v36 = v57;
        (*(v54 + 16))(v51, *(v50 + 48) + *(v54 + 72) * v32, v57);
        v37 = *(*(v34 + 56) + 8 * v32);
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFE0, &qword_22BB211E8);
        v39 = *(v38 + 48);
        v40 = *(v35 + 32);
        v27 = v53;
        v40(v53, v33, v36);
        *(v27 + v39) = v37;
        (*(*(v38 - 8) + 56))(v27, 0, 1, v38);

        v30 = v28;
        v4 = v49;
        v26 = v52;
LABEL_20:
        sub_22BAD7044(v27, v26, &qword_27D8DF080, &qword_22BB21260);
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFE0, &qword_22BB211E8);
        if ((*(*(v41 - 8) + 48))(v26, 1, v41) == 1)
        {

          return;
        }

        v42 = *(v26 + *(v41 + 48));
        v43 = v57;
        (*v56)(v4, v26, v57);
        *(v42 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_doneAddingPendingClients) = 1;
        v44 = *(sub_22BACB200(0) + 2);

        if (!v44)
        {
          break;
        }

        (*v55)(v4, v43);

        v25 = v30;
        if (!v23)
        {
          goto LABEL_12;
        }
      }

      sub_22BACFB24(v4, 0);

      (*v55)(v4, v43);
      v25 = v30;
    }

    while (v23);
LABEL_12:
    if (v24 <= v25 + 1)
    {
      v29 = v25 + 1;
    }

    else
    {
      v29 = v24;
    }

    v30 = v29 - 1;
    while (1)
    {
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v28 >= v24)
      {
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFE0, &qword_22BB211E8);
        (*(*(v45 - 8) + 56))(v27, 1, 1, v45);
        v23 = 0;
        goto LABEL_20;
      }

      v23 = v47[v28];
      ++v25;
      if (v23)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }
}

uint64_t IntelligenceSupportAgent.deinit()
{

  return v0;
}

uint64_t sub_22BAE4198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v54 = a4;
  v55 = type metadata accessor for ConnectionID(0);
  v58 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v10 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v49[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_22BB1F2EC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v49[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_22BB1F45C();
  v56 = *(v18 - 8);
  v57 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v49[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59 = a2;
  if (sub_22BAE31B0(a3))
  {
    v53 = a5;
    sub_22BB1F43C();
    (*(v15 + 16))(v17, a1, v14);
    v52 = a3;
    sub_22BABE90C(a3, v13, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
    v21 = sub_22BB1F44C();
    v22 = sub_22BB1F8CC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v50 = v22;
      v24 = v23;
      v51 = swift_slowAlloc();
      v62 = v51;
      *v24 = 136446722;
      if (v54)
      {
        v25 = 0x6F6320796C77656ELL;
      }

      else
      {
        v25 = 0x772D68636E75616CLL;
      }

      if (v54)
      {
        v26 = 0xEF64657463656E6ELL;
      }

      else
      {
        v26 = 0xEB00000000746961;
      }

      v27 = sub_22BABDC4C(v25, v26, &v62);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2082;
      v28 = sub_22BB1F2BC();
      v30 = v29;
      (*(v15 + 8))(v17, v14);
      v31 = sub_22BABDC4C(v28, v30, &v62);

      *(v24 + 14) = v31;
      *(v24 + 22) = 2080;
      sub_22BABE90C(v13, v10, type metadata accessor for ConnectionID);
      v61[0] = 0;
      v61[1] = 0xE000000000000000;
      sub_22BB1FB7C();

      strcpy(v61, "ConnectionID(");
      HIWORD(v61[1]) = -4864;
      v60 = *v10;
      v32 = sub_22BB1FD7C();
      MEMORY[0x23189D130](v32);

      MEMORY[0x23189D130](8236, 0xE200000000000000);
      sub_22BB1EADC();
      sub_22BAC36FC(&unk_2814250C0, MEMORY[0x277D74708], MEMORY[0x277D74740]);
      v33 = sub_22BB1FD7C();
      MEMORY[0x23189D130](v33);

      MEMORY[0x23189D130](41, 0xE100000000000000);
      v34 = v61[0];
      v35 = v61[1];
      sub_22BAC1514(v10, type metadata accessor for ConnectionID);
      sub_22BAC1514(v13, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
      v36 = sub_22BABDC4C(v34, v35, &v62);

      *(v24 + 24) = v36;
      _os_log_impl(&dword_22BABB000, v21, v50, "notifying %{public}s client for %{public}s: %s", v24, 0x20u);
      v37 = v51;
      swift_arrayDestroy();
      MEMORY[0x23189DF20](v37, -1, -1);
      MEMORY[0x23189DF20](v24, -1, -1);
    }

    else
    {

      sub_22BAC1514(v13, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
      (*(v15 + 8))(v17, v14);
    }

    (*(v56 + 8))(v20, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF110, &unk_22BB212D0);
    v41 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_22BB20A70;
    sub_22BABE90C(v52, v42 + v41, type metadata accessor for ConnectionID);
    v43 = v59;
    sub_22BACAF88(v42);
    swift_setDeallocating();
    sub_22BAC1514(v42 + v41, type metadata accessor for ConnectionID);
    swift_deallocClassInstance();
    v44 = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_request;
    v45 = sub_22BB1F11C();
    v46 = *(v45 - 8);
    v47 = v43 + v44;
    v48 = v53;
    (*(v46 + 16))(v53, v47, v45);
    return (*(v46 + 56))(v48, 0, 1, v45);
  }

  else
  {
    v38 = sub_22BB1F11C();
    v39 = *(*(v38 - 8) + 56);

    return v39(a5, 1, 1, v38);
  }
}

uint64_t sub_22BAE48DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a1;
  v7 = type metadata accessor for ConnectionID(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = (&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v41 = &v38 - v11;
  v12 = sub_22BB1F45C();
  v42 = *(v12 - 8);
  v43 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF030, &qword_22BB21228);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v38 - v16;
  swift_beginAccess();
  v44 = a2;
  sub_22BAECF9C(a3, v17);
  swift_endAccess();
  v18 = (*(v8 + 48))(v17, 1, v7);
  sub_22BAC81E8(v17, &unk_27D8DF030, &qword_22BB21228);
  if (v18 == 1)
  {
    v19 = sub_22BB1F2EC();
    return (*(*(v19 - 8) + 56))(a4, 1, 1, v19);
  }

  else
  {
    v38 = a4;
    v21 = v14;
    sub_22BB1F43C();
    v22 = v41;
    sub_22BABE90C(a3, v41, type metadata accessor for ConnectionID);
    v23 = sub_22BB1F44C();
    v24 = sub_22BB1F8CC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v46 = v26;
      *v25 = 136446210;
      v27 = v40;
      sub_22BABE90C(v22, v40, type metadata accessor for ConnectionID);
      v47[0] = 0;
      v47[1] = 0xE000000000000000;
      sub_22BB1FB7C();

      strcpy(v47, "ConnectionID(");
      HIWORD(v47[1]) = -4864;
      v45 = *v27;
      v28 = sub_22BB1FD7C();
      MEMORY[0x23189D130](v28);

      MEMORY[0x23189D130](8236, 0xE200000000000000);
      sub_22BB1EADC();
      sub_22BAC36FC(&unk_2814250C0, MEMORY[0x277D74708], MEMORY[0x277D74740]);
      v29 = sub_22BB1FD7C();
      MEMORY[0x23189D130](v29);

      MEMORY[0x23189D130](41, 0xE100000000000000);
      v30 = v47[0];
      v31 = v47[1];
      sub_22BAC1514(v27, type metadata accessor for ConnectionID);
      sub_22BAC1514(v22, type metadata accessor for ConnectionID);
      v32 = sub_22BABDC4C(v30, v31, &v46);

      *(v25 + 4) = v32;
      _os_log_impl(&dword_22BABB000, v23, v24, "client unexpectedly disconnected while pending: %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x23189DF20](v26, -1, -1);
      MEMORY[0x23189DF20](v25, -1, -1);
    }

    else
    {

      sub_22BAC1514(v22, type metadata accessor for ConnectionID);
    }

    (*(v42 + 8))(v21, v43);
    v33 = v38;
    v34 = *(sub_22BACB200(0) + 2);

    v35 = sub_22BB1F2EC();
    v36 = *(v35 - 8);
    v37 = v36;
    if (v34)
    {
      return (*(v36 + 56))(v33, 1, 1, v35);
    }

    else
    {
      (*(v36 + 16))(v33, v39, v35);
      return (*(v37 + 56))(v33, 0, 1, v35);
    }
  }
}

uint64_t sub_22BAE4E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a1;
  v40 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFD8, &qword_22BB211E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v37 - v8;
  v44 = sub_22BB1F2EC();
  v10 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v51 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22BB1EA5C();
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 16);
  v39 = a2;
  if (v17)
  {
    v19 = *(v13 + 16);
    v18 = v13 + 16;
    v20 = a2 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v49 = *(v18 + 56);
    v50 = v19;
    v46 = (v10 + 48);
    v42 = v10;
    v47 = (v10 + 32);
    v48 = (v18 - 8);
    v21 = MEMORY[0x277D84F90];
    v22 = v44;
    v43 = v6;
    v41 = v12;
    v45 = v18;
    v19(v16, v20, v12, v14);
    while (1)
    {
      sub_22BB1EA2C();
      sub_22BAD7044(v6, v9, &qword_27D8DEFD8, &qword_22BB211E0);
      (*v48)(v16, v12);
      if ((*v46)(v9, 1, v22) == 1)
      {
        sub_22BAC81E8(v9, &qword_27D8DEFD8, &qword_22BB211E0);
      }

      else
      {
        v24 = *v47;
        (*v47)(v51, v9, v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_22BAF604C(0, v21[2] + 1, 1, v21);
        }

        v26 = v21[2];
        v25 = v21[3];
        if (v26 >= v25 >> 1)
        {
          v21 = sub_22BAF604C((v25 > 1), v26 + 1, 1, v21);
        }

        v21[2] = v26 + 1;
        v27 = v21 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v26;
        v22 = v44;
        v24(v27, v51, v44);
        v6 = v43;
        v12 = v41;
      }

      v20 += v49;
      if (!--v17)
      {
        break;
      }

      v50(v16, v20, v12, v23);
    }
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v28 = sub_22BB1DB2C(v21);

  v29 = sub_22BADEC04(v28);

  v52 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF070, &qword_22BB21258);
  sub_22BAC8324(&qword_281424148, &unk_27D8DF070, &qword_22BB21258, MEMORY[0x277D83958]);
  v30 = sub_22BB1F63C();
  v32 = v31;

  v34 = *(v37[1] + 24);
  MEMORY[0x28223BE20](v33);
  v35 = v39;
  v37[-6] = v38;
  v37[-5] = v35;
  v37[-4] = v30;
  v37[-3] = v32;
  v37[-2] = v40;
  os_unfair_lock_lock((v34 + 40));
  sub_22BAEEE48((v34 + 16));
  os_unfair_lock_unlock((v34 + 40));
}

_BYTE *sub_22BAE52FC(uint64_t *a1, uint64_t *a2, uint64_t a3, void (**a4)(_BYTE *, uint64_t, uint64_t), unint64_t a5, uint64_t a6)
{
  v205 = a6;
  v214 = a4;
  v201 = a2;
  v209 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF030, &qword_22BB21228);
  MEMORY[0x28223BE20](v9 - 8);
  v182 = &v180[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF080, &qword_22BB21260);
  MEMORY[0x28223BE20](v11 - 8);
  v207 = &v180[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v200 = &v180[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFD8, &qword_22BB211E0);
  MEMORY[0x28223BE20](v15 - 8);
  v198 = &v180[-v16];
  v211 = sub_22BB1EA5C();
  v199 = *(v211 - 8);
  MEMORY[0x28223BE20](v211);
  v210 = &v180[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v217 = sub_22BB1F2EC();
  v213 = *(v217 - 8);
  MEMORY[0x28223BE20](v217 - 8);
  v206 = &v180[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v187 = &v180[-v20];
  MEMORY[0x28223BE20](v21);
  v202 = &v180[-v22];
  MEMORY[0x28223BE20](v23);
  v204 = &v180[-v24];
  MEMORY[0x28223BE20](v25);
  v212 = &v180[-v26];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF120, &qword_22BB212E0);
  MEMORY[0x28223BE20](v27 - 8);
  v203 = &v180[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v29);
  v208 = &v180[-v30];
  v31 = type metadata accessor for ConnectionID(0);
  MEMORY[0x28223BE20](v31);
  v186 = &v180[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v33);
  v195 = &v180[-v34];
  MEMORY[0x28223BE20](v35);
  v37 = &v180[-v36];
  MEMORY[0x28223BE20](v38);
  v40 = &v180[-v39];
  v41 = sub_22BB1F45C();
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v193 = &v180[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v44);
  v194 = &v180[-v45];
  MEMORY[0x28223BE20](v46);
  v48 = &v180[-v47];
  sub_22BB1F43C();
  sub_22BABE90C(a2, v40, type metadata accessor for ConnectionID);
  swift_bridgeObjectRetain_n();

  v216 = v48;
  v49 = sub_22BB1F44C();
  v50 = sub_22BB1F8CC();
  v215 = a5;

  v51 = os_log_type_enabled(v49, v50);
  v189 = v37;
  v192 = v41;
  v190 = v31;
  v185 = a3;
  v188 = v42;
  if (v51)
  {
    v52 = swift_slowAlloc();
    isa = swift_slowAlloc();
    v220 = isa;
    *v52 = 136446978;
    sub_22BABE90C(v40, v37, type metadata accessor for ConnectionID);
    v218[0] = 0;
    v218[1] = 0xE000000000000000;
    v196 = v49;
    sub_22BB1FB7C();

    strcpy(v218, "ConnectionID(");
    HIWORD(v218[1]) = -4864;
    v219 = *v37;
    v53 = sub_22BB1FD7C();
    v54 = v40;
    MEMORY[0x23189D130](v53);

    MEMORY[0x23189D130](8236, 0xE200000000000000);
    sub_22BB1EADC();
    sub_22BAC36FC(&unk_2814250C0, MEMORY[0x277D74708], MEMORY[0x277D74740]);
    v55 = sub_22BB1FD7C();
    MEMORY[0x23189D130](v55);

    MEMORY[0x23189D130](41, 0xE100000000000000);
    v56 = v218[0];
    v57 = v218[1];
    v58 = v50;
    sub_22BAC1514(v37, type metadata accessor for ConnectionID);
    sub_22BAC1514(v54, type metadata accessor for ConnectionID);
    v59 = sub_22BABDC4C(v56, v57, &v220);

    *(v52 + 4) = v59;
    *(v52 + 12) = 2050;
    v60 = *(a3 + 16);

    *(v52 + 14) = v60;

    *(v52 + 22) = 2082;
    if (v60 == 1)
    {
      v61 = 0;
    }

    else
    {
      v61 = 115;
    }

    if (v60 == 1)
    {
      v62 = 0xE000000000000000;
    }

    else
    {
      v62 = 0xE100000000000000;
    }

    v63 = sub_22BABDC4C(v61, v62, &v220);

    *(v52 + 24) = v63;
    *(v52 + 32) = 2082;
    *(v52 + 34) = sub_22BABDC4C(v214, v215, &v220);
    v64 = v196;
    _os_log_impl(&dword_22BABB000, v196, v58, "client %{public}s provided %{public}ld fragment%{public}s for [%{public}s]", v52, 0x2Au);
    v65 = isa;
    swift_arrayDestroy();
    MEMORY[0x23189DF20](v65, -1, -1);
    MEMORY[0x23189DF20](v52, -1, -1);

    isa = v188[1].isa;
    (isa)(v216, v41);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_22BAC1514(v40, type metadata accessor for ConnectionID);
    isa = v42[1].isa;
    (isa)(v216, v41);
  }

  v66 = *(v205 + 64);
  v196 = (v205 + 64);
  v67 = 1 << *(v205 + 32);
  v68 = -1;
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  v69 = v68 & v66;
  v191 = ((v67 + 63) >> 6);
  v214 = (v213 + 16);
  v70 = (v213 + 32);
  v216 = (v213 + 8);

  v72 = 0;
  v215 = v70;
  v74 = v203;
  v73 = v204;
  while (v69)
  {
    v75 = v72;
LABEL_24:
    v78 = __clz(__rbit64(v69));
    v69 &= v69 - 1;
    v79 = v78 | (v75 << 6);
    v80 = v205;
    v81 = v212;
    v82 = v213;
    v83 = v217;
    (*(v213 + 16))(v212, *(v205 + 48) + *(v213 + 72) * v79, v217);
    v84 = *(*(v80 + 56) + 8 * v79);
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF128, &qword_22BB212E8);
    v86 = *(v85 + 48);
    v87 = *(v82 + 32);
    v74 = v203;
    v88 = v81;
    v70 = v215;
    v87(v203, v88, v83);
    *(v74 + v86) = v84;
    (*(*(v85 - 8) + 56))(v74, 0, 1, v85);

    v77 = v75;
    v73 = v204;
LABEL_25:
    v89 = v208;
    sub_22BAD7044(v74, v208, &qword_27D8DF120, &qword_22BB212E0);
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF128, &qword_22BB212E8);
    if ((*(*(v90 - 8) + 48))(v89, 1, v90) == 1)
    {

      result = sub_22BAF6848(MEMORY[0x277D84F90]);
      v208 = result;
      v97 = *(v185 + 16);
      v98 = v217;
      if (v97)
      {
        v99 = *(v199 + 16);
        v100 = v185 + ((*(v199 + 80) + 32) & ~*(v199 + 80));
        v204 = (v199 + 8);
        v205 = v213 + 48;
        v199 += 16;
        v203 = *(v199 + 56);
        v196 = v188 + 1;
        *&v96 = 136446210;
        v183 = v96;
        *&v96 = 136446466;
        v181 = v96;
        v101 = v198;
        v102 = v202;
        v103 = v192;
        v188 = v99;
        (v99)(v210, v100, v211);
        while (1)
        {
          sub_22BB1EA2C();
          if ((*v205)(v101, 1, v98) == 1)
          {
            sub_22BAC81E8(v101, &qword_27D8DEFD8, &qword_22BB211E0);
            v105 = v194;
            sub_22BB1F43C();
            v106 = v195;
            sub_22BABE90C(v201, v195, type metadata accessor for ConnectionID);
            v107 = sub_22BB1F44C();
            v108 = sub_22BB1F8BC();
            if (os_log_type_enabled(v107, v108))
            {
              v109 = v106;
              v110 = swift_slowAlloc();
              v191 = swift_slowAlloc();
              v220 = v191;
              *v110 = v183;
              v111 = v189;
              sub_22BABE90C(v109, v189, type metadata accessor for ConnectionID);
              v218[0] = 0;
              v218[1] = 0xE000000000000000;
              sub_22BB1FB7C();

              strcpy(v218, "ConnectionID(");
              HIWORD(v218[1]) = -4864;
              v219 = *v111;
              v112 = sub_22BB1FD7C();
              MEMORY[0x23189D130](v112);

              MEMORY[0x23189D130](8236, 0xE200000000000000);
              sub_22BB1EADC();
              sub_22BAC36FC(&unk_2814250C0, MEMORY[0x277D74708], MEMORY[0x277D74740]);
              v113 = sub_22BB1FD7C();
              MEMORY[0x23189D130](v113);

              MEMORY[0x23189D130](41, 0xE100000000000000);
              v114 = v218[0];
              v115 = v218[1];
              v116 = v111;
              v103 = v192;
              sub_22BAC1514(v116, type metadata accessor for ConnectionID);
              v70 = v215;
              sub_22BAC1514(v195, type metadata accessor for ConnectionID);
              v117 = sub_22BABDC4C(v114, v115, &v220);
              v99 = v188;

              *(v110 + 4) = v117;
              _os_log_impl(&dword_22BABB000, v107, v108, "received fragment from client %{public}s with missing requestID", v110, 0xCu);
              v118 = v191;
              __swift_destroy_boxed_opaque_existential_0(v191);
              MEMORY[0x23189DF20](v118, -1, -1);
              MEMORY[0x23189DF20](v110, -1, -1);

              v104 = v194;
            }

            else
            {

              sub_22BAC1514(v106, type metadata accessor for ConnectionID);
              v104 = v105;
            }

            (isa)(v104, v103);
            result = (*v204)(v210, v211);
            v98 = v217;
            v102 = v202;
          }

          else
          {
            (*v70)(v102, v101, v98);
            v119 = *v209;
            if (*(*v209 + 16) && (v120 = sub_22BACB688(v102), (v121 & 1) != 0))
            {
              v122 = *(*(v119 + 56) + 8 * v120);
              swift_beginAccess();

              v123 = v182;
              sub_22BAECF9C(v201, v182);
              swift_endAccess();
              sub_22BAC81E8(v123, &unk_27D8DF030, &qword_22BB21228);
              v124 = v210;
              sub_22BB0A000(v210);

              v125 = v208;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v218[0] = v125;
              sub_22BB0ED68(v122, v202, isUniquelyReferenced_nonNull_native);

              (*v216)(v202, v98);
              v127 = v124;
              v102 = v202;
              result = (*v204)(v127, v211);
              v208 = v218[0];
            }

            else
            {
              sub_22BB1F43C();
              v128 = v186;
              sub_22BABE90C(v201, v186, type metadata accessor for ConnectionID);
              v129 = v187;
              (*v214)(v187, v102, v98);
              v130 = sub_22BB1F44C();
              v131 = sub_22BB1F8BC();
              v132 = v131;
              if (os_log_type_enabled(v130, v131))
              {
                v133 = swift_slowAlloc();
                v191 = swift_slowAlloc();
                v220 = v191;
                *v133 = v181;
                LODWORD(v185) = v132;
                v134 = v189;
                sub_22BABE90C(v128, v189, type metadata accessor for ConnectionID);
                v218[0] = 0;
                v218[1] = 0xE000000000000000;
                v184 = v130;
                sub_22BB1FB7C();

                strcpy(v218, "ConnectionID(");
                HIWORD(v218[1]) = -4864;
                v219 = *v134;
                v135 = sub_22BB1FD7C();
                MEMORY[0x23189D130](v135);

                MEMORY[0x23189D130](8236, 0xE200000000000000);
                sub_22BB1EADC();
                sub_22BAC36FC(&unk_2814250C0, MEMORY[0x277D74708], MEMORY[0x277D74740]);
                v136 = sub_22BB1FD7C();
                MEMORY[0x23189D130](v136);

                MEMORY[0x23189D130](41, 0xE100000000000000);
                v137 = v218[0];
                v138 = v218[1];
                sub_22BAC1514(v134, type metadata accessor for ConnectionID);
                v98 = v217;
                sub_22BAC1514(v128, type metadata accessor for ConnectionID);
                v139 = sub_22BABDC4C(v137, v138, &v220);

                *(v133 + 4) = v139;
                *(v133 + 12) = 2082;
                v140 = sub_22BB1F2BC();
                v142 = v141;
                v143 = *v216;
                (*v216)(v129, v98);
                v144 = sub_22BABDC4C(v140, v142, &v220);
                v99 = v188;

                *(v133 + 14) = v144;
                v145 = v184;
                _os_log_impl(&dword_22BABB000, v184, v185, "received fragment from client %{public}s for invalid or expired request %{public}s", v133, 0x16u);
                v146 = v191;
                swift_arrayDestroy();
                MEMORY[0x23189DF20](v146, -1, -1);
                v147 = v133;
                v70 = v215;
                MEMORY[0x23189DF20](v147, -1, -1);

                v148 = v192;
                (isa)(v193, v192);
                v149 = v202;
                v143(v202, v98);
                v103 = v148;
              }

              else
              {

                v150 = *v216;
                (*v216)(v129, v98);
                sub_22BAC1514(v128, type metadata accessor for ConnectionID);
                v103 = v192;
                (isa)(v193, v192);
                v149 = v202;
                v150(v202, v98);
              }

              result = (*v204)(v210, v211);
              v102 = v149;
            }
          }

          v100 += v203;
          --v97;
          v101 = v198;
          if (!v97)
          {
            break;
          }

          (v99)(v210, v100, v211);
        }
      }

      v151 = 0;
      v152 = *(v208 + 8);
      v211 = (v208 + 64);
      v153 = 1 << v208[32];
      v154 = -1;
      if (v153 < 64)
      {
        v154 = ~(-1 << v153);
      }

      v155 = v154 & v152;
      v156 = (v153 + 63) >> 6;
      v157 = v200;
      if ((v154 & v152) == 0)
      {
        goto LABEL_53;
      }

      do
      {
        while (1)
        {
          v158 = v151;
LABEL_60:
          v161 = __clz(__rbit64(v155));
          v155 &= v155 - 1;
          v162 = v161 | (v158 << 6);
          v163 = v208;
          v165 = v212;
          v164 = v213;
          v166 = v217;
          (*(v213 + 16))(v212, *(v208 + 6) + *(v213 + 72) * v162, v217);
          v167 = *(*(v163 + 7) + 8 * v162);
          v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFE0, &qword_22BB211E8);
          v169 = *(v168 + 48);
          v170 = *(v164 + 32);
          v171 = v207;
          v172 = v165;
          v70 = v215;
          v170(v207, v172, v166);
          *&v171[v169] = v167;
          (*(*(v168 - 8) + 56))(v171, 0, 1, v168);

          v160 = v158;
          v173 = v171;
          v157 = v200;
LABEL_61:
          sub_22BAD7044(v173, v157, &qword_27D8DF080, &qword_22BB21260);
          v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFE0, &qword_22BB211E8);
          if ((*(*(v174 - 8) + 48))(v157, 1, v174) == 1)
          {
          }

          v175 = v206;
          v176 = v217;
          (*v70)(v206, v157, v217);
          v177 = *(sub_22BACB200(0) + 2);

          if (!v177)
          {
            break;
          }

          (*v216)(v175, v176);

          v151 = v160;
          if (!v155)
          {
            goto LABEL_53;
          }
        }

        sub_22BACFB24(v175, 0);

        result = (*v216)(v175, v176);
        v151 = v160;
      }

      while (v155);
LABEL_53:
      if (v156 <= v151 + 1)
      {
        v159 = v151 + 1;
      }

      else
      {
        v159 = v156;
      }

      v160 = v159 - 1;
      while (1)
      {
        v158 = v151 + 1;
        if (__OFADD__(v151, 1))
        {
          goto LABEL_68;
        }

        if (v158 >= v156)
        {
          v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFE0, &qword_22BB211E8);
          v179 = v207;
          (*(*(v178 - 8) + 56))(v207, 1, 1, v178);
          v173 = v179;
          v155 = 0;
          goto LABEL_61;
        }

        v155 = *(v211 + 8 * v158);
        ++v151;
        if (v155)
        {
          goto LABEL_60;
        }
      }
    }

    v91 = *&v89[*(v90 + 48)];
    v92 = v89;
    v93 = v217;
    (*v70)(v73, v92, v217);
    if (*(v91 + 16) && *(*v209 + 16) && (sub_22BACB688(v73), (v94 & 1) != 0))
    {

      sub_22BAE1B54(v91, v201);

      result = (*v216)(v73, v93);
    }

    else
    {
      (*v216)(v73, v93);
    }

    v72 = v77;
  }

  if (v191 <= v72 + 1)
  {
    v76 = (v72 + 1);
  }

  else
  {
    v76 = v191;
  }

  v77 = v76 - 1;
  while (1)
  {
    v75 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      break;
    }

    if (v75 >= v191)
    {
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF128, &qword_22BB212E8);
      (*(*(v95 - 8) + 56))(v74, 1, 1, v95);
      v69 = 0;
      goto LABEL_25;
    }

    v69 = v196[v75].isa;
    ++v72;
    if (v69)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

uint64_t static IntelligenceSupportAgent.fetchScreenSnapshots(for:parameters:)(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 72) = a3;
  *(v4 + 80) = v3;
  *(v4 + 64) = a1;
  *(v4 + 88) = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 120) = *a2;

  return MEMORY[0x2822009F8](sub_22BAE6BE4, 0, 0);
}

uint64_t sub_22BAE6BE4()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  sub_22BABE90C(*(v0 + 72), v3, type metadata accessor for IntelligenceSupportAgent.RequestParameters);

  *(v3 + 24) = MEMORY[0x277D84FA0];
  v5 = *(v2 + 112);
  v6 = sub_22BB1EC7C();
  v7 = *(v6 - 8);
  (*(v7 + 8))(v3 + v5, v6);
  (*(v7 + 104))(v3 + v5, *MEMORY[0x277D74848], v6);
  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v1;
  *(v8 + 32) = v3;
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_22BAE6D9C;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000026, 0x800000022BB26BA0, sub_22BAEEF68, v8, &type metadata for IntelligenceSupportAgent.ElementHierarchy);
}

uint64_t sub_22BAE6D9C()
{

  return MEMORY[0x2822009F8](sub_22BAE6EB4, 0, 0);
}

uint64_t sub_22BAE6EB4()
{
  v1 = *(v0 + 64);
  sub_22BAC1514(*(v0 + 96), type metadata accessor for IntelligenceSupportAgent.RequestParameters);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  v1[2] = v3;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22BAE6F48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFD8, &qword_22BB211E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v44 = &v33 - v6;
  v7 = sub_22BB1F2EC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_22BB1EA5C();
  v11 = MEMORY[0x28223BE20](v45);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v34 = a1;
  if (v14)
  {
    v16 = *(v10 + 16);
    v15 = v10 + 16;
    v17 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v42 = *(v15 + 56);
    v43 = v16;
    v39 = (v8 + 48);
    v35 = v8;
    v40 = (v8 + 32);
    v41 = (v15 - 8);
    v18 = MEMORY[0x277D84F90];
    v36 = v7;
    v37 = v4;
    v38 = v15;
    do
    {
      v19 = v45;
      v43(v13, v17, v45, v11);
      sub_22BB1EA2C();
      v20 = v44;
      sub_22BAD7044(v4, v44, &qword_27D8DEFD8, &qword_22BB211E0);
      (*v41)(v13, v19);
      if ((*v39)(v20, 1, v7) == 1)
      {
        sub_22BAC81E8(v20, &qword_27D8DEFD8, &qword_22BB211E0);
      }

      else
      {
        v21 = *v40;
        (*v40)(v46, v20, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_22BAF604C(0, v18[2] + 1, 1, v18);
        }

        v23 = v18[2];
        v22 = v18[3];
        if (v23 >= v22 >> 1)
        {
          v18 = sub_22BAF604C((v22 > 1), v23 + 1, 1, v18);
        }

        v18[2] = v23 + 1;
        v24 = v18 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v23;
        v7 = v36;
        v21(v24, v46, v36);
        v4 = v37;
      }

      v17 += v42;
      --v14;
    }

    while (v14);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v25 = sub_22BB1DB2C(v18);

  v26 = sub_22BADEC04(v25);

  v47 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF070, &qword_22BB21258);
  sub_22BAC8324(&qword_281424148, &unk_27D8DF070, &qword_22BB21258, MEMORY[0x277D83958]);
  v27 = sub_22BB1F63C();
  v29 = v28;

  v31 = *(v33 + 24);
  MEMORY[0x28223BE20](v30);
  *(&v33 - 4) = v34;
  *(&v33 - 3) = v27;
  *(&v33 - 2) = v29;
  os_unfair_lock_lock((v31 + 40));
  sub_22BAEEDC4((v31 + 16));
  os_unfair_lock_unlock((v31 + 40));
}

uint64_t sub_22BAE73CC(uint64_t *a1, uint64_t a2, unsigned int (**a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(char *, uint64_t, uint64_t))
{
  v141 = a3;
  v142 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF080, &qword_22BB21260);
  MEMORY[0x28223BE20](v6 - 8);
  v152 = &v122[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v148 = &v122[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFD8, &qword_22BB211E0);
  MEMORY[0x28223BE20](v10 - 8);
  v150 = &v122[-v11];
  v12 = sub_22BB1F2EC();
  v146 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v147 = &v122[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v145 = &v122[-v15];
  MEMORY[0x28223BE20](v16);
  v18 = &v122[-v17];
  MEMORY[0x28223BE20](v19);
  v127 = &v122[-v20];
  MEMORY[0x28223BE20](v21);
  v23 = &v122[-v22];
  v132 = sub_22BB1EA5C();
  v144 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v25 = &v122[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v138 = sub_22BB1F45C();
  v149 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v131 = &v122[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27);
  v130 = &v122[-v28];
  MEMORY[0x28223BE20](v29);
  v31 = &v122[-v30];
  sub_22BB1F43C();
  v32 = a2;

  v33 = sub_22BB1F44C();
  v34 = sub_22BB1F8CC();
  v143 = a4;

  v35 = os_log_type_enabled(v33, v34);
  v151 = v12;
  v137 = v18;
  v126 = v23;
  v134 = v25;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v153 = v37;
    *v36 = 134349570;
    v38 = *(v32 + 16);
    *(v36 + 4) = v38;

    *(v36 + 12) = 2082;
    if (v38 == 1)
    {
      v39 = 0;
    }

    else
    {
      v39 = 115;
    }

    if (v38 == 1)
    {
      v40 = 0xE000000000000000;
    }

    else
    {
      v40 = 0xE100000000000000;
    }

    v41 = sub_22BABDC4C(v39, v40, &v153);
    v12 = v151;

    *(v36 + 14) = v41;
    v25 = v134;
    *(v36 + 22) = 2082;
    v42 = v126;
    *(v36 + 24) = sub_22BABDC4C(v141, v143, &v153);
    _os_log_impl(&dword_22BABB000, v33, v34, "    Provider returned %{public}ld fragment%{public}s \n    for [%{public}s]", v36, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23189DF20](v37, -1, -1);
    MEMORY[0x23189DF20](v36, -1, -1);
  }

  else
  {
    v42 = v23;
  }

  v43 = v149;
  v136 = *(v149 + 8);
  v136(v31, v138);
  v44 = v43;
  v149 = sub_22BAF6848(MEMORY[0x277D84F90]);
  v46 = *(v32 + 16);
  v47 = v132;
  if (v46)
  {
    v143 = *(v144 + 16);
    v48 = v32 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
    v141 = (v146 + 48);
    v129 = (v146 + 32);
    v133 = (v146 + 16);
    v128 = (v146 + 8);
    v135 = v44 + 8;
    v144 += 16;
    v139 = *(v144 + 56);
    v140 = (v144 - 8);
    *&v45 = 136446210;
    v123 = v45;
    v143(v25, v48, v132);
    while (1)
    {
      v49 = v150;
      sub_22BB1EA2C();
      if ((*v141)(v49, 1, v12) == 1)
      {
        v50 = v42;
        sub_22BAC81E8(v150, &qword_27D8DEFD8, &qword_22BB211E0);
        v51 = v130;
        sub_22BB1F43C();
        v52 = sub_22BB1F44C();
        v53 = sub_22BB1F8BC();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&dword_22BABB000, v52, v53, "received fragment from provider with missing requestID", v54, 2u);
          v55 = v54;
          v25 = v134;
          MEMORY[0x23189DF20](v55, -1, -1);
        }

        v136(v51, v138);
        (*v140)(v25, v47);
        v12 = v151;
        v42 = v50;
      }

      else
      {
        (*v129)(v42, v150, v12);
        v56 = *v142;
        if (*(*v142 + 16) && (v57 = sub_22BACB688(v42), (v58 & 1) != 0))
        {
          v59 = *(*(v56 + 56) + 8 * v57);

          sub_22BB0A000(v25);
          v60 = *v133;
          v61 = v127;
          (*v133)(v127, v42, v12);

          v62 = v149;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v153 = v62;
          v65 = sub_22BACB688(v61);
          v66 = *(v62 + 16);
          v67 = (v64 & 1) == 0;
          v68 = v66 + v67;
          if (__OFADD__(v66, v67))
          {
            goto LABEL_56;
          }

          v69 = v64;
          if (*(v62 + 24) >= v68)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_22BAEC3A0();
            }
          }

          else
          {
            sub_22BAE9F74(v68, isUniquelyReferenced_nonNull_native);
            v70 = sub_22BACB688(v127);
            if ((v69 & 1) != (v71 & 1))
            {
              goto LABEL_58;
            }

            v65 = v70;
          }

          v42 = v126;
          v149 = v153;
          if (v69)
          {
            *(v153[7] + 8 * v65) = v59;
          }

          else
          {
            v153[(v65 >> 6) + 8] |= 1 << v65;
            v60(*(v149 + 48) + *(v146 + 72) * v65, v127, v151);
            v86 = v149;
            *(*(v149 + 56) + 8 * v65) = v59;
            v87 = *(v86 + 16);
            v88 = __OFADD__(v87, 1);
            v89 = v87 + 1;
            if (v88)
            {
              goto LABEL_57;
            }

            *(v86 + 16) = v89;
          }

          v90 = *v128;
          v91 = v151;
          (*v128)(v127, v151);
          v90(v42, v91);
          v12 = v91;
          v25 = v134;
          v47 = v132;
          (*v140)(v134, v132);
        }

        else
        {
          v72 = v131;
          sub_22BB1F43C();
          (*v133)(v137, v42, v12);
          v73 = sub_22BB1F44C();
          v74 = v12;
          v75 = sub_22BB1F8BC();
          if (os_log_type_enabled(v73, v75))
          {
            v76 = swift_slowAlloc();
            v124 = swift_slowAlloc();
            v153 = v124;
            *v76 = v123;
            v77 = sub_22BB1F2BC();
            v79 = v78;
            v125 = *v128;
            v125(v137, v74);
            v80 = sub_22BABDC4C(v77, v79, &v153);

            *(v76 + 4) = v80;
            _os_log_impl(&dword_22BABB000, v73, v75, "received fragment from provider for invalid or expired request %{public}s", v76, 0xCu);
            v81 = v124;
            __swift_destroy_boxed_opaque_existential_0(v124);
            v82 = v81;
            v83 = v126;
            MEMORY[0x23189DF20](v82, -1, -1);
            v84 = v76;
            v25 = v134;
            MEMORY[0x23189DF20](v84, -1, -1);

            v136(v131, v138);
            v42 = v83;
            v125(v83, v74);
          }

          else
          {

            v85 = *v128;
            (*v128)(v137, v74);
            v136(v72, v138);
            v85(v42, v74);
          }

          v47 = v132;
          (*v140)(v25, v132);
          v12 = v74;
        }
      }

      v48 += v139;
      if (!--v46)
      {
        break;
      }

      v143(v25, v48, v47);
    }
  }

  v92 = 0;
  v94 = v149 + 64;
  v93 = *(v149 + 64);
  v95 = 1 << *(v149 + 32);
  v96 = -1;
  if (v95 < 64)
  {
    v96 = ~(-1 << v95);
  }

  v97 = v96 & v93;
  v98 = (v95 + 63) >> 6;
  v99 = (v146 + 32);
  v150 = (v146 + 8);
  v143 = (v146 + 32);
  v144 = v146 + 16;
  if ((v96 & v93) == 0)
  {
    goto LABEL_41;
  }

  do
  {
    while (1)
    {
      v100 = v92;
LABEL_48:
      v103 = __clz(__rbit64(v97));
      v97 &= v97 - 1;
      v104 = v103 | (v100 << 6);
      v105 = v149;
      v107 = v145;
      v106 = v146;
      (*(v146 + 16))(v145, *(v149 + 48) + *(v146 + 72) * v104, v12);
      v108 = *(*(v105 + 56) + 8 * v104);
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFE0, &qword_22BB211E8);
      v110 = v12;
      v111 = *(v109 + 48);
      v112 = *(v106 + 32);
      v113 = v152;
      v114 = v107;
      v99 = v143;
      v112(v152, v114, v110);
      *&v113[v111] = v108;
      (*(*(v109 - 8) + 56))(v113, 0, 1, v109);

      v102 = v100;
LABEL_49:
      v115 = v148;
      sub_22BAD7044(v152, v148, &qword_27D8DF080, &qword_22BB21260);
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFE0, &qword_22BB211E8);
      if ((*(*(v116 - 8) + 48))(v115, 1, v116) == 1)
      {
      }

      v117 = v147;
      v118 = v115;
      v12 = v151;
      (*v99)(v147, v118, v151);
      v119 = *(sub_22BACB200(0) + 2);

      if (!v119)
      {
        break;
      }

      (*v150)(v117, v12);

      v92 = v102;
      if (!v97)
      {
        goto LABEL_41;
      }
    }

    sub_22BACFB24(v117, 0);

    (*v150)(v117, v12);
    v92 = v102;
  }

  while (v97);
LABEL_41:
  if (v98 <= v92 + 1)
  {
    v101 = v92 + 1;
  }

  else
  {
    v101 = v98;
  }

  v102 = v101 - 1;
  while (1)
  {
    v100 = v92 + 1;
    if (__OFADD__(v92, 1))
    {
      break;
    }

    if (v100 >= v98)
    {
      v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFE0, &qword_22BB211E8);
      (*(*(v120 - 8) + 56))(v152, 1, 1, v120);
      v97 = 0;
      goto LABEL_49;
    }

    v97 = *(v94 + 8 * v100);
    ++v92;
    if (v97)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  result = sub_22BB1FDBC();
  __break(1u);
  return result;
}

unint64_t IntelligenceSupportAgent.Client.description.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E7528;
  v3 = 0xD000000000000013;
  v4 = 0x6867696C746F7053;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1769105747;
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

unint64_t sub_22BAE827C()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E7528;
  v3 = 0xD000000000000013;
  v4 = 0x6867696C746F7053;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1769105747;
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

uint64_t sub_22BAE8320(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_22BAE8330@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22BAE83EC(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_22BABDC4C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_22BAE8448(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFD0, &qword_22BB211D8);
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

_BYTE **sub_22BAE853C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_22BAE854C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_22BAE856C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ConnectionID(0);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF118, &unk_22BB22070);
  v39 = v4;
  result = sub_22BB1FC1C();
  v10 = v8;
  v11 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
    v36 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v37 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v39)
      {
        sub_22BAC3614(v25, v7, type metadata accessor for ConnectionID);
        v40 = *(*(v10 + 56) + 8 * v23);
      }

      else
      {
        sub_22BABE90C(v25, v7, type metadata accessor for ConnectionID);
        v40 = *(*(v10 + 56) + 8 * v23);
      }

      sub_22BB1FDDC();
      MEMORY[0x23189D810](*v7);
      sub_22BB1EADC();
      sub_22BAC36FC(&qword_2814250E0, MEMORY[0x277D74708], MEMORY[0x277D74720]);
      sub_22BB1F62C();
      result = sub_22BB1FE0C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v10 = v36;
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
      v10 = v36;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_22BAC3614(v7, *(v11 + 48) + v24 * v19, type metadata accessor for ConnectionID);
      *(*(v11 + 56) + 8 * v19) = v40;
      ++*(v11 + 16);
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

    v33 = 1 << *(v10 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_22BAE8950(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = _s17AsyncProviderTaskVMa(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF050, &qword_22BB21240);
  v43 = v4;
  result = sub_22BB1FC1C();
  v10 = result;
  if (*(v8 + 16))
  {
    v39 = v2;
    v40 = v7;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    v41 = v8;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v24 = v21 | (v11 << 6);
      v25 = *(v42 + 72);
      v26 = *(v8 + 48) + v25 * v24;
      if (v43)
      {
        sub_22BAC3614(v26, v7, _s17AsyncProviderTaskVMa);
        v27 = *(v8 + 56);
        v28 = v7;
        v29 = *(v27 + 8 * v24);
      }

      else
      {
        sub_22BABE90C(v26, v7, _s17AsyncProviderTaskVMa);
        v30 = *(v8 + 56);
        v28 = v7;
        v29 = *(v30 + 8 * v24);
        swift_unknownObjectRetain();
      }

      sub_22BB1FDDC();
      MEMORY[0x23189D810](*v28);
      result = sub_22BB1FE0C();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v8 = v41;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v8 = v41;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = *(v10 + 48) + v25 * v18;
      v20 = v40;
      result = sub_22BAC3614(v40, v19, _s17AsyncProviderTaskVMa);
      *(*(v10 + 56) + 8 * v18) = v29;
      v7 = v20;
      ++*(v10 + 16);
    }

    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v23 = v12[v11];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v15 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v8 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_22BAE8CEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_22BB1EA5C();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BB1E9DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF090, &qword_22BB21270);
  v47 = v4;
  result = sub_22BB1FC1C();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_22BAC36FC(&qword_281425100, MEMORY[0x277D746D8], MEMORY[0x277D746E0]);
      result = sub_22BB1F61C();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_22BAE9194(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ConnectionID(0);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF130, &qword_22BB212F0);
  v39 = v4;
  result = sub_22BB1FC1C();
  v10 = v8;
  v11 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
    v36 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v37 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v39)
      {
        sub_22BAC3614(v25, v7, type metadata accessor for ConnectionID);
        v40 = *(*(v10 + 56) + 8 * v23);
      }

      else
      {
        sub_22BABE90C(v25, v7, type metadata accessor for ConnectionID);
        v40 = *(*(v10 + 56) + 8 * v23);
      }

      sub_22BB1FDDC();
      MEMORY[0x23189D810](*v7);
      sub_22BB1EADC();
      sub_22BAC36FC(&qword_2814250E0, MEMORY[0x277D74708], MEMORY[0x277D74720]);
      sub_22BB1F62C();
      result = sub_22BB1FE0C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v10 = v36;
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
      v10 = v36;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_22BAC3614(v7, *(v11 + 48) + v24 * v19, type metadata accessor for ConnectionID);
      *(*(v11 + 56) + 8 * v19) = v40;
      ++*(v11 + 16);
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

    v33 = 1 << *(v10 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_22BAE9578(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF018, &qword_22BB21218);
  v34 = v4;
  result = sub_22BB1FC1C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      if ((v34 & 1) == 0)
      {
      }

      sub_22BB1FDDC();
      sub_22BB1F6EC();
      result = sub_22BB1FE0C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22BAE9818(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_22BB1E55C();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF008, &unk_22BB21F90);
  v42 = v4;
  result = sub_22BB1FC1C();
  v9 = result;
  if (*(v7 + 16))
  {
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
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_22BB1FDDC();
      sub_22BB1F6EC();
      result = sub_22BB1FE0C();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
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

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_22BAE9B98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_22BB1EADC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v43 = v8;
  result = sub_22BB1FC1C();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      sub_22BAC36FC(&qword_2814250E0, MEMORY[0x277D74708], MEMORY[0x277D74720]);
      result = sub_22BB1F61C();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

uint64_t sub_22BAE9F74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_22BB1F2EC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF028, &qword_22BB21220);
  v39 = v4;
  result = sub_22BB1FC1C();
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

      sub_22BAC36FC(&qword_281425070, MEMORY[0x277D74940], MEMORY[0x277D74948]);
      result = sub_22BB1F61C();
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

uint64_t sub_22BAEA350(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF610, &qword_22BB21248);
  v34 = v4;
  result = sub_22BB1FC1C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_22BB1FDDC();
      sub_22BB1F6EC();
      result = sub_22BB1FE0C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22BAEA5F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF0B8, &unk_22BB21290);
  v33 = v4;
  result = sub_22BB1FC1C();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_22BAEEDE4(v24, v34);
      }

      else
      {
        sub_22BABDE24(v24, v34);
      }

      sub_22BB1FDDC();
      sub_22BB1F6EC();
      result = sub_22BB1FE0C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_22BAEEDE4(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}