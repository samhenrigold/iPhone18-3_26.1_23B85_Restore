void sub_1BF49C9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v6 = *(Strong + 24);
  v7 = Strong;
  os_unfair_lock_lock(*(v6 + 16));
  v8 = *(v7 + 64);
  os_unfair_lock_unlock(*(v6 + 16));

  if (!v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](24);
  MEMORY[0x1BFB58C90](0x46204554454C4544, 0xEC000000204D4F52);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](0x2045524548570ALL, 0xE700000000000000);
  v11 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);
  v12 = sub_1BF4E7354();
  v14 = v13;

  v16 = sub_1BF3D8148(v12, v14, v15);
  v18 = v17;
  v20 = v19;
  v21 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v21);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v16, v18, v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v16, v18, v20, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v23);

  sub_1BF3D88B8(v16, v18, v20);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  if (!swift_weakLoadStrong())
  {
LABEL_8:
    sub_1BF4E9464();
    __break(1u);
    return;
  }

  sub_1BF3E4F48(v9, 0, 0xE000000000000000);

  if (!v24)
  {
  }
}

void sub_1BF49CD2C(uint64_t a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v4 = *(Strong + 24);
  v5 = Strong;
  os_unfair_lock_lock(*(v4 + 16));
  v6 = *(v5 + 64);
  os_unfair_lock_unlock(*(v4 + 16));

  if (!v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](13);
  MEMORY[0x1BFB58C90](0x46204554454C4544, 0xEC000000204D4F52);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  if (!swift_weakLoadStrong())
  {
LABEL_8:
    sub_1BF4E9464();
    __break(1u);
    return;
  }

  sub_1BF3E4F48(v7, 0, 0xE000000000000000);

  if (!v2)
  {
  }
}

uint64_t sub_1BF49CEDC()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](40);
  MEMORY[0x1BFB58C90](0x200A5443454C4553, 0xEB00000000202020);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  if (swift_weakLoadStrong())
  {
    v7 = sub_1BF3E4F48(v1, 0, 0xE000000000000000);
    if (v0)
    {
    }

    else
    {
      v8 = v7;

      v1 = sub_1BF4A4DF8(v8);
    }

    return v1;
  }

  else
  {
    result = sub_1BF4E9464();
    __break(1u);
  }

  return result;
}

void sub_1BF49D17C(void *a1, uint64_t *a2)
{
  v76 = a1;
  v4 = type metadata accessor for WidgetExtensionInfo(0);
  v75 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v78 = &v71 - v8;
  v9 = *a2;
  v10 = sub_1BF4E92F4();
  v12 = sub_1BF48063C(v10, v11, v9);
  v14 = v13;
  v16 = v15;
  v17 = ~v15;

  if (!v17)
  {
    goto LABEL_9;
  }

  v18 = sub_1BF4244EC(v12, v14, v16);
  v20 = v19;
  sub_1BF3DB1FC(v12, v14, v16);
  if (!v20)
  {
    goto LABEL_9;
  }

  v73 = v18;
  v74 = v2;
  v21 = sub_1BF4E92F4();
  v23 = sub_1BF48063C(v21, v22, v9);
  v25 = v24;
  v27 = v26;
  v28 = ~v26;

  if (!v28 || (v29 = sub_1BF4244EC(v23, v25, v27), v31 = v30, sub_1BF3DB1FC(v23, v25, v27), !v31))
  {
LABEL_8:

LABEL_9:
    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v42 = sub_1BF4E7B54();
    __swift_project_value_buffer(v42, qword_1EDCA6898);
    v43 = sub_1BF4E7B34();
    v44 = sub_1BF4E8E64();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1BF389000, v43, v44, "Encountered malformed remote extension", v45, 2u);
      MEMORY[0x1BFB5A5D0](v45, -1, -1);
    }

LABEL_13:

    return;
  }

  v72 = v29;
  v32 = v31;
  v33 = sub_1BF4E92F4();
  v35 = sub_1BF48063C(v33, v34, v9);
  v37 = v36;
  v39 = v38;
  v40 = ~v38;

  if (!v40 || (sub_1BF424370(v35, v37, v39, &v77), sub_1BF3DB1FC(v35, v37, v39), v41 = *(&v77 + 1), *(&v77 + 1) >> 60 == 15))
  {

    goto LABEL_8;
  }

  v46 = v77;
  sub_1BF4E9034();
  v47 = sub_1BF4E9004();
  if (!v47)
  {

    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v52 = sub_1BF4E7B54();
    __swift_project_value_buffer(v52, qword_1EDCA6898);
    v43 = sub_1BF4E7B34();
    v53 = sub_1BF4E8E64();
    if (os_log_type_enabled(v43, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1BF389000, v43, v53, "Encountered malformed extension identity", v54, 2u);
      MEMORY[0x1BFB5A5D0](v54, -1, -1);
    }

    sub_1BF3DB210(v46, v41);
    goto LABEL_13;
  }

  v48 = v47;
  if (([v47 isRemote] & 1) == 0)
  {

    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v55 = sub_1BF4E7B54();
    __swift_project_value_buffer(v55, qword_1EDCA6898);
    v43 = sub_1BF4E7B34();
    v56 = sub_1BF4E8E64();
    if (os_log_type_enabled(v43, v56))
    {
      v57 = v48;
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_1BF389000, v43, v56, "Encountered non-remote extension", v58, 2u);
      MEMORY[0x1BFB5A5D0](v58, -1, -1);
      sub_1BF3DB210(v46, v41);
    }

    else
    {
      sub_1BF3DB210(v46, v41);
    }

    goto LABEL_13;
  }

  sub_1BF4E6DB4();
  swift_allocObject();
  sub_1BF4E6DA4();
  sub_1BF4A6514(&qword_1EBDD99F8, type metadata accessor for WidgetExtensionInfo, &protocol conformance descriptor for WidgetExtensionInfo);
  v49 = v46;
  v50 = v78;
  v51 = v74;
  sub_1BF4E6D94();
  if (v51)
  {
    sub_1BF3DB210(v49, v41);

    return;
  }

  v74 = v49;

  sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
  if ((sub_1BF4E90A4() & 1) == 0)
  {

    goto LABEL_33;
  }

  if (*(v50 + 8) != v72 || v32 != *(v50 + 16))
  {
    v66 = sub_1BF4E9734();

    v59 = v76;
    if (v66)
    {
      goto LABEL_39;
    }

LABEL_33:
    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v60 = sub_1BF4E7B54();
    __swift_project_value_buffer(v60, qword_1EDCA6898);
    v61 = sub_1BF4E7B34();
    v62 = sub_1BF4E8E64();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = v48;
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_1BF389000, v61, v62, "Unexpected mismatch in serialized info", v64, 2u);
      v65 = v64;
      v48 = v63;
      MEMORY[0x1BFB5A5D0](v65, -1, -1);
    }

    sub_1BF3DB210(v74, v41);

    goto LABEL_44;
  }

  v59 = v76;
LABEL_39:
  sub_1BF4A63E4(v50, v6, type metadata accessor for WidgetExtensionInfo);
  v67 = *v59;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v73 = v48;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v67 = sub_1BF432BA4(0, v67[2] + 1, 1, v67);
  }

  v70 = v67[2];
  v69 = v67[3];
  if (v70 >= v69 >> 1)
  {
    v67 = sub_1BF432BA4((v69 > 1), v70 + 1, 1, v67);
  }

  sub_1BF3DB210(v74, v41);

  v67[2] = v70 + 1;
  sub_1BF4A64AC(v6, v67 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v70, type metadata accessor for WidgetExtensionInfo);
  *v59 = v67;
LABEL_44:
  sub_1BF4A644C(v50, type metadata accessor for WidgetExtensionInfo);
}

uint64_t ChronoMetadataStore.RemoteExtensionStore.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

unint64_t sub_1BF49DA68@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
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

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1BF4E8AA4();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1BF432788(0, 1, 1, MEMORY[0x1E69E7CC0]);
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
    v14 = sub_1BF432788((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
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
        v19 = sub_1BF4E8A94();
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

        v14 = sub_1BF4E8A14();
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
        v18 = sub_1BF4E8A14();
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
          v7 = sub_1BF4E8AA4();
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

        v14 = sub_1BF432788(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1BF4E8AA4();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1BF432788(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1BF432788((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1BF4E8A14();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void sub_1BF49DE28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87E8, &unk_1BF4EB300);
  v39 = v4;
  v6 = sub_1BF4E94A4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v2;
    v38 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v40 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v41 = *v22;
      v24 = *(v5 + 56) + 24 * v21;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      if ((v39 & 1) == 0)
      {

        sub_1BF3D8840(v25, v26, v27);
      }

      sub_1BF4E9804();
      sub_1BF4E89F4();
      v28 = sub_1BF4E9844();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v41;
      v16[1] = v23;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v25;
      *(v17 + 8) = v26;
      *(v17 + 16) = v27;
      ++*(v7 + 16);
      v5 = v38;
      v12 = v40;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1BF49E108(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87C8, &qword_1BF4EB2E0);
  v34 = v4;
  v6 = sub_1BF4E94A4();
  v7 = v6;
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
    v14 = v6 + 64;
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
      if (v34)
      {
        sub_1BF38EB2C(v24, v35);
      }

      else
      {
        sub_1BF38D324(v24, v35);
      }

      sub_1BF4E9804();
      sub_1BF4E89F4();
      v25 = sub_1BF4E9844();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_1BF38EB2C(v35, (*(v7 + 56) + 32 * v15));
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1BF49E3C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87C0, &unk_1BF4F5460);
  v36 = v4;
  v6 = sub_1BF4E94A4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
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
    v14 = v6 + 64;
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
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1BF4E9804();
      sub_1BF4E89F4();
      v26 = sub_1BF4E9844();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1BF49E68C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - v6;
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A50, &qword_1BF4F5438);
  v41 = v4;
  v9 = sub_1BF4E94A4();
  v10 = v9;
  if (*(v8 + 16))
  {
    v36 = v3;
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
    v17 = v9 + 64;
    v37 = v9;
    v38 = v8;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v20 = (v15 - 1) & v15;
LABEL_15:
      v23 = v19 | (v11 << 6);
      v24 = *(v8 + 48);
      v42 = *(v39 + 72);
      v43 = v20;
      v25 = v24 + v42 * v23;
      if (v41)
      {
        sub_1BF411AF0(v25, v7);
        sub_1BF38E610((*(v8 + 56) + 40 * v23), v44);
      }

      else
      {
        sub_1BF38C94C(v25, v7, &qword_1EBDD87A8, &unk_1BF4EB2C0);
        sub_1BF38E49C(*(v8 + 56) + 40 * v23, v44);
      }

      sub_1BF4E9804();
      sub_1BF4E90B4();
      type metadata accessor for ActivityKey(0);
      sub_1BF4E7454();
      sub_1BF4A6514(&qword_1EDC9F0A8, MEMORY[0x1E6959BC8], MEMORY[0x1E6959BD8]);
      sub_1BF4E8884();
      sub_1BF4E89F4();
      sub_1BF4E8674();
      sub_1BF4A6514(&unk_1EDC9D760, MEMORY[0x1E6985AA8], MEMORY[0x1E6985AB8]);
      sub_1BF4E8884();
      type metadata accessor for ActivityVariantKey(0);
      sub_1BF4E8364();
      sub_1BF4A6514(&qword_1EDC9D798, MEMORY[0x1E69858D8], MEMORY[0x1E69858E8]);
      sub_1BF4E8884();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
      sub_1BF38C8B4(&unk_1EDC9F018, &unk_1EBDD85B0, &unk_1BF4EA9E0, MEMORY[0x1E6994140]);
      sub_1BF4E8884();
      v26 = sub_1BF4E9844();
      v10 = v37;
      v27 = -1 << *(v37 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v8 = v38;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v8 = v38;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      sub_1BF411AF0(v7, v10[6] + v42 * v18);
      sub_1BF38E610(v44, v10[7] + 40 * v18);
      ++v10[2];
      v15 = v43;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v19 = __clz(__rbit64(v22));
        v20 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v12, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_1BF49EBB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A58, &qword_1BF4F5440);
  v35 = v4;
  v6 = sub_1BF4E94A4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = v6 + 64;
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
      if ((v35 & 1) == 0)
      {
      }

      sub_1BF4E9804();
      sub_1BF4E89F4();
      v25 = sub_1BF4E9844();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1BF49EE60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v53 = sub_1BF4E7334();
  v5 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v41 - v9;
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A0, &qword_1BF4EB2B8);
  v48 = v4;
  v11 = sub_1BF4E94A4();
  v12 = v11;
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
    v44 = (v14 + 16);
    v45 = v14;
    v42 = v2;
    v43 = v5 + 16;
    v46 = v10;
    v47 = v5;
    v49 = (v5 + 32);
    v50 = (v14 + 32);
    v20 = v11 + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v51 = *(v21 + 72);
      v28 = v27 + v51 * v26;
      if (v48)
      {
        (*v50)(v54, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 32))(v52, v29 + v30 * v26, v53);
      }

      else
      {
        (*v44)(v54, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 16))(v52, v31 + v30 * v26, v53);
      }

      sub_1BF38C8B4(&unk_1EDC9F018, &unk_1EBDD85B0, &unk_1BF4EA9E0, MEMORY[0x1E6994140]);
      v32 = sub_1BF4E8874();
      v33 = -1 << *(v12 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v20 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v20 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v20 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v50)((*(v12 + 48) + v51 * v22), v54, v7);
      (*v49)(*(v12 + 56) + v30 * v22, v52, v53);
      ++*(v12 + 16);
      v21 = v45;
      v10 = v46;
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

    if ((v48 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v10 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v15, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v40;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_1BF49F30C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v41 - v7;
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A48, &unk_1BF4F5428);
  v46 = v4;
  v9 = sub_1BF4E94A4();
  v10 = v9;
  if (*(v8 + 16))
  {
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
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v8;
    v45 = v6;
    v48 = (v6 + 32);
    v17 = v9 + 64;
    v52 = v5;
    v18 = v47;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v22 = (v15 - 1) & v15;
LABEL_15:
      v25 = v21 | (v11 << 6);
      v26 = *(v8 + 48);
      v50 = *(v45 + 72);
      v51 = v22;
      v27 = v26 + v50 * v25;
      if (v46)
      {
        (*v48)(v18, v27, v52);
        v28 = (*(v8 + 56) + 24 * v25);
        v29 = v28[1];
        v49 = *v28;
        v30 = v28[2];
      }

      else
      {
        (*v43)(v18, v27, v52);
        v31 = (*(v8 + 56) + 24 * v25);
        v29 = v31[1];
        v30 = v31[2];
        v49 = *v31;
        sub_1BF3D8864(v49, v29);
      }

      sub_1BF38C8B4(&qword_1EDC9D5A8, &qword_1EBDD8A38, &unk_1BF4EC4D0, MEMORY[0x1E69940C0]);
      v32 = sub_1BF4E8874();
      v33 = -1 << *(v10 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v17 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v18 = v47;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v17 + 8 * v35);
          if (v39 != -1)
          {
            v19 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v34) & ~*(v17 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v18 = v47;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v48)((*(v10 + 48) + v50 * v19), v18, v52);
      v20 = (*(v10 + 56) + 24 * v19);
      *v20 = v49;
      v20[1] = v29;
      v20[2] = v30;
      ++*(v10 + 16);
      v8 = v44;
      v15 = v51;
    }

    v23 = v11;
    while (1)
    {
      v11 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v24 = v12[v11];
      ++v23;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v22 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v8 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v12, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v40;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_1BF49F724(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - v7;
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD8760, &unk_1BF4EB280);
  v39 = v4;
  v10 = sub_1BF4E94A4();
  v11 = v10;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
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
    v37 = v6;
    v40 = (v6 + 32);
    v18 = v10 + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        sub_1BF38E610((*(v9 + 56) + 40 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        sub_1BF38E49C(*(v9 + 56) + 40 * v23, v44);
      }

      sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994140]);
      v26 = sub_1BF4E8874();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      sub_1BF38E610(v44, *(v11 + 56) + 40 * v19);
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

    v34 = 1 << *(v9 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1BF49FB0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for RemoteActivityArchiveBudget(0);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD99F0, &qword_1BF4F53B8);
  v41 = v4;
  v8 = sub_1BF4E94A4();
  v9 = v8;
  if (*(v7 + 16))
  {
    v38 = v2;
    v39 = v7;
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
    v16 = v8 + 64;
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
      v27 = *(v40 + 72);
      v28 = v23 + v27 * v22;
      if (v41)
      {
        sub_1BF4A64AC(v28, v42, type metadata accessor for RemoteActivityArchiveBudget);
      }

      else
      {
        sub_1BF4A63E4(v28, v42, type metadata accessor for RemoteActivityArchiveBudget);
      }

      sub_1BF4E9804();
      sub_1BF4E89F4();
      v29 = sub_1BF4E9844();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      sub_1BF4A64AC(v42, *(v9 + 56) + v27 * v17, type metadata accessor for RemoteActivityArchiveBudget);
      ++*(v9 + 16);
      v7 = v39;
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

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_1BF49FE84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A40, &unk_1BF4F5418);
  v6 = sub_1BF4E94A4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 40 * v19);
      if (v4)
      {
        sub_1BF38E610(v21, v33);
      }

      else
      {
        sub_1BF38E49C(v21, v33);
        v22 = v20;
      }

      v23 = sub_1BF4E9094();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      sub_1BF38E610(v33, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1BF4A0104(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A78, &unk_1BF4F5470);
  v34 = v4;
  v6 = sub_1BF4E94A4();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v35 = *(*(v5 + 56) + v21);
      if ((v34 & 1) == 0)
      {
      }

      sub_1BF4E9804();
      sub_1BF4E89F4();
      v25 = sub_1BF4E9844();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v35;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1BF4A03BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87F0, &qword_1BF4F5410);
  v38 = v4;
  v6 = sub_1BF4E94A4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      sub_1BF4E9804();
      sub_1BF4E89F4();
      v28 = sub_1BF4E9844();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1BF4A067C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A38, &qword_1BF4F5408);
  v6 = sub_1BF4E94A4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v2;
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
    v14 = v6 + 64;
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

      v23 = sub_1BF4E9094();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
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

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1BF4A08EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8788, &qword_1BF4EB2A0);
  v35 = v4;
  v6 = sub_1BF4E94A4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = v6 + 64;
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
      if ((v35 & 1) == 0)
      {
      }

      sub_1BF4E9804();
      sub_1BF4E89F4();
      v25 = sub_1BF4E9844();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1BF4A0B94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for RemoteActivitySubscription(0);
  v43 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BF4E7394();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A28, &unk_1BF4F53E0);
  v44 = v4;
  v11 = sub_1BF4E94A4();
  v12 = v11;
  if (*(v10 + 16))
  {
    v39 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = (v8 + 16);
    v41 = v8;
    v45 = (v8 + 32);
    v19 = v11 + 64;
    v42 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v46 = *(v8 + 72);
      v26 = v25 + v46 * v24;
      if (v44)
      {
        (*v45)(v47, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v43 + 72);
        sub_1BF4A64AC(v27 + v28 * v24, v48, type metadata accessor for RemoteActivitySubscription);
      }

      else
      {
        (*v40)(v47, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v43 + 72);
        sub_1BF4A63E4(v29 + v28 * v24, v48, type metadata accessor for RemoteActivitySubscription);
      }

      sub_1BF4A6514(&qword_1EBDD8948, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v30 = sub_1BF4E8874();
      v31 = -1 << *(v12 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v19 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v19 + 8 * v33);
          if (v37 != -1)
          {
            v20 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v32) & ~*(v19 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v45)((*(v12 + 48) + v46 * v20), v47, v7);
      sub_1BF4A64AC(v48, *(v12 + 56) + v28 * v20, type metadata accessor for RemoteActivitySubscription);
      ++*(v12 + 16);
      v8 = v41;
      v10 = v42;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v14, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_1BF4A1034(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A20, &unk_1BF4F7D20);
  v32 = v4;
  v6 = sub_1BF4E94A4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v33 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v32 & 1) == 0)
      {
      }

      sub_1BF4E79A4();
      sub_1BF4A6514(&qword_1EBDD8B08, MEMORY[0x1E69C7338], MEMORY[0x1E69C7340]);
      v22 = sub_1BF4E8874();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
      v5 = v31;
      v12 = v33;
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
        v33 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero(v9, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1BF4A1318(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8740, &qword_1BF4EB260);
  v32 = v4;
  v6 = sub_1BF4E94A4();
  v7 = v6;
  v34 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v33 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v34[6] + 8 * v19);
      v21 = *(v34[7] + 8 * v19);
      if ((v32 & 1) == 0)
      {
      }

      sub_1BF4E9804();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
      v22 = v20;
      sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994140]);
      sub_1BF4E8884();
      if (*(v20 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8))
      {
        sub_1BF4E9824();
        v22 = v20;
        sub_1BF4E89F4();
      }

      else
      {
        sub_1BF4E9824();
      }

      v23 = sub_1BF4E9844();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v22;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
      v12 = v33;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_39;
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
        v33 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_37;
    }

    v31 = 1 << *(v34 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero(v9, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    v34[2] = 0;
  }

LABEL_37:
  *v3 = v7;
}

void sub_1BF4A1688(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ExtensionMetadata(0);
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8750, &qword_1BF4EB270);
  v39 = v4;
  v9 = sub_1BF4E94A4();
  v10 = v9;
  if (*(v8 + 16))
  {
    v37 = v2;
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
    v17 = v9 + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v38 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v39)
      {
        sub_1BF4A64AC(v25, v7, type metadata accessor for ExtensionMetadata);
      }

      else
      {
        sub_1BF4A63E4(v25, v7, type metadata accessor for ExtensionMetadata);
        v26 = v23;
      }

      v27 = sub_1BF4E9094();
      v28 = -1 << *(v10 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      sub_1BF4A64AC(v7, *(v10 + 56) + v24 * v18, type metadata accessor for ExtensionMetadata);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero((v8 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_1BF4A19D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD99E8, &unk_1BF4F53A8);
  v39 = v4;
  v6 = sub_1BF4E94A4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v2;
    v38 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v40 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v41 = *v22;
      v24 = (*(v5 + 56) + 24 * v21);
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      if ((v39 & 1) == 0)
      {

        sub_1BF3D8864(v25, v26);
      }

      sub_1BF4E9804();
      sub_1BF4E89F4();
      v28 = sub_1BF4E9844();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v41;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v25;
      v17[1] = v26;
      v17[2] = v27;
      ++*(v7 + 16);
      v5 = v38;
      v12 = v40;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

unint64_t sub_1BF4A1CB4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a7[7] + 24 * result;
  *v8 = a4;
  *(v8 + 8) = a5;
  *(v8 + 16) = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

_OWORD *sub_1BF4A1D08(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1BF38EB2C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1BF4A1D74(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1BF4E7334();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1BF4A1E24(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  sub_1BF411AF0(a2, v8 + *(*(v9 - 8) + 72) * a1);
  result = sub_1BF38E610(a3, a4[7] + 40 * a1);
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

unint64_t sub_1BF4A1EDC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1BF4A1F24(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_1BF4E7334();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1BF4A2024(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_1BF38E610(a3, a4[7] + 40 * a1);
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

uint64_t sub_1BF4A20F4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for RemoteActivityArchiveBudget(0);
  result = sub_1BF4A64AC(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for RemoteActivityArchiveBudget);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1BF4A21A0(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1BF38E610(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1BF4A220C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_1BF4A225C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1BF4E7394();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for RemoteActivitySubscription(0);
  result = sub_1BF4A64AC(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for RemoteActivitySubscription);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_1BF4A234C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_1BF4A2390(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for ExtensionMetadata(0);
  result = sub_1BF4A64AC(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for ExtensionMetadata);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_1BF4A2438(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = (a7[7] + 24 * result);
  *v8 = a4;
  v8[1] = a5;
  v8[2] = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

void sub_1BF4A248C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87E8, &unk_1BF4EB300);
  v2 = *v0;
  v3 = sub_1BF4E9494();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 16);
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v26;

        sub_1BF3D8840(v23, v24, v26);
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
}

void sub_1BF4A2624()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87C8, &qword_1BF4EB2E0);
  v2 = *v0;
  v3 = sub_1BF4E9494();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1BF38D324(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1BF38EB2C(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_1BF4A27C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8730, &unk_1BF4EB250);
  v2 = *v0;
  v3 = sub_1BF4E9494();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        sub_1BF38D324(*(v2 + 56) + 32 * v17, v20);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1BF38EB2C(v20, (*(v4 + 56) + 32 * v17));
        v19 = v18;
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
}

void sub_1BF4A2948()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87C0, &unk_1BF4F5460);
  v2 = *v0;
  v3 = sub_1BF4E9494();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        v22 = v20;
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
}

void sub_1BF4A2ADC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A70, &qword_1BF4F5458);
  v2 = *v0;
  v3 = sub_1BF4E9494();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + (v17 << 6));
        v20 = v18[1];
        v19 = v18[2];
        v21 = *v18;
        *&v25[9] = *(v18 + 41);
        v24[1] = v20;
        *v25 = v19;
        v24[0] = v21;
        v22 = *(*(v2 + 56) + 8 * v17);
        memmove((*(v4 + 48) + (v17 << 6)), v18, 0x39uLL);
        *(*(v4 + 56) + 8 * v17) = v22;
        sub_1BF3EE1EC(v24, &v23);
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
}

void sub_1BF4A2C80()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A68, &qword_1BF4F5450);
  v2 = *v0;
  v3 = sub_1BF4E9494();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(v2 + 48) + 40 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v22 = *(v18 + 16);
        v21 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(*(v2 + 56) + 8 * v17);
        LOBYTE(v18) = *(v18 + 33);
        v25 = *(v4 + 48) + 40 * v17;
        *v25 = v19;
        *(v25 + 8) = v20;
        *(v25 + 16) = v22;
        *(v25 + 24) = v21;
        *(v25 + 32) = v23;
        *(v25 + 33) = v18;
        *(*(v4 + 56) + 8 * v17) = v24;
        v26 = v19;
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
}

void sub_1BF4A2E1C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A50, &qword_1BF4F5438);
  v6 = *v0;
  v7 = sub_1BF4E9494();
  v8 = v7;
  if (*(v6 + 16))
  {
    v23 = v1;
    v9 = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    v15 = *(v6 + 64);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v3 + 72) * v21;
        sub_1BF38C94C(*(v6 + 48) + v22, v5, &qword_1EBDD87A8, &unk_1BF4EB2C0);
        v21 *= 40;
        sub_1BF38E49C(*(v6 + 56) + v21, v24);
        sub_1BF411AF0(v5, *(v8 + 48) + v22);
        sub_1BF38E610(v24, *(v8 + 56) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_1BF4A3058()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A58, &qword_1BF4F5440);
  v2 = *v0;
  v3 = sub_1BF4E9494();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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
}

void sub_1BF4A31F0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v43 = a1(0);
  v45 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v37 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *v3;
  v9 = sub_1BF4E9494();
  v10 = v9;
  if (*(v8 + 16))
  {
    v38 = v6;
    v11 = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || v11 >= v8 + 64 + 8 * v13)
    {
      memmove(v11, (v8 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v8 + 16);
    v44 = v10;
    *(v10 + 16) = v16;
    v17 = 1 << *(v8 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v8 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = v45 + 32;
    v40 = v45 + 16;
    v41 = v8;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v46 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = 16 * v24;
        v26 = *(v8 + 56);
        v27 = (*(v8 + 48) + 16 * v24);
        v28 = *v27;
        v29 = v27[1];
        v30 = v45;
        v31 = *(v45 + 72) * v24;
        v32 = v42;
        v33 = v43;
        (*(v45 + 16))(v42, v26 + v31, v43);
        v34 = v44;
        v35 = (*(v44 + 48) + v25);
        *v35 = v28;
        v35[1] = v29;
        v36 = *(v34 + 56) + v31;
        v8 = v41;
        (*(v30 + 32))(v36, v32, v33);

        v19 = v46;
      }

      while (v46);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v38;
        v10 = v44;
        goto LABEL_21;
      }

      v23 = *(v12 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v46 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }
}

void sub_1BF4A3478()
{
  v1 = v0;
  v41 = sub_1BF4E7334();
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v43 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v30 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A0, &qword_1BF4EB2B8);
  v4 = *v0;
  v5 = sub_1BF4E9494();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_1BF4A37D4()
{
  v1 = v0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v41 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v31 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A48, &unk_1BF4F5428);
  v3 = *v0;
  v4 = sub_1BF4E9494();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v40 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v34 = v41 + 32;
    v35 = v41 + 16;
    v36 = v14;
    v37 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v42 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v41;
        v20 = *(v41 + 72) * v18;
        v22 = v38;
        v21 = v39;
        (*(v41 + 16))(v38, *(v3 + 48) + v20, v39);
        v23 = 24 * v18;
        v24 = (*(v3 + 56) + 24 * v18);
        v25 = *v24;
        v26 = v24[1];
        v27 = v24[2];
        v28 = v40;
        (*(v19 + 32))(*(v40 + 48) + v20, v22, v21);
        v29 = *(v28 + 56);
        v3 = v37;
        v30 = (v29 + v23);
        *v30 = v25;
        v30[1] = v26;
        v30[2] = v27;
        sub_1BF3D8864(v25, v26);

        v14 = v36;
        v13 = v42;
      }

      while (v42);
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

        v1 = v32;
        v5 = v40;
        goto LABEL_18;
      }

      v17 = *(v33 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v42 = (v17 - 1) & v17;
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
}

void sub_1BF4A3A84()
{
  v1 = v0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD8760, &unk_1BF4EB280);
  v3 = *v0;
  v4 = sub_1BF4E9494();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v7 + 8 * v8)
    {
      memmove(v6, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26 = v31 + 32;
    v27 = v31 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v32 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v31;
        v20 = *(v31 + 72) * v18;
        v21 = v28;
        v22 = v29;
        (*(v31 + 16))(v28, *(v3 + 48) + v20, v29);
        v18 *= 40;
        sub_1BF38E49C(*(v3 + 56) + v18, v33);
        v23 = v30;
        (*(v19 + 32))(*(v30 + 48) + v20, v21, v22);
        sub_1BF38E610(v33, *(v23 + 56) + v18);
        v13 = v32;
      }

      while (v32);
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

        v1 = v25;
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v32 = (v17 - 1) & v17;
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
}

void sub_1BF4A3D14()
{
  v1 = v0;
  v2 = type metadata accessor for RemoteActivityArchiveBudget(0);
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD99F0, &qword_1BF4F53B8);
  v4 = *v0;
  v5 = sub_1BF4E9494();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
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
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1BF4A63E4(*(v4 + 56) + v26, v30, type metadata accessor for RemoteActivityArchiveBudget);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_1BF4A64AC(v25, *(v27 + 56) + v26, type metadata accessor for RemoteActivityArchiveBudget);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }
}

void sub_1BF4A3F6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A40, &unk_1BF4F5418);
  v2 = *v0;
  v3 = sub_1BF4E9494();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        sub_1BF38E49C(*(v2 + 56) + 40 * v17, v20);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1BF38E610(v20, *(v4 + 56) + 40 * v17);
        v19 = v18;
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
}

void sub_1BF4A40F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A78, &unk_1BF4F5470);
  v2 = *v0;
  v3 = sub_1BF4E9494();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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
}

void sub_1BF4A4270()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87F0, &qword_1BF4F5410);
  v2 = *v0;
  v3 = sub_1BF4E9494();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
}

void sub_1BF4A43E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8788, &qword_1BF4EB2A0);
  v2 = *v0;
  v3 = sub_1BF4E9494();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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
}

void sub_1BF4A4558()
{
  v1 = v0;
  v2 = type metadata accessor for RemoteActivitySubscription(0);
  v36 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1BF4E7394();
  v37 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A28, &unk_1BF4F53E0);
  v5 = *v0;
  v6 = sub_1BF4E9494();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || v8 >= &v9[8 * v10])
    {
      memmove(v8, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_1BF4A63E4(*(v5 + 56) + v26, v35, type metadata accessor for RemoteActivitySubscription);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        sub_1BF4A64AC(v25, *(v27 + 56) + v26, type metadata accessor for RemoteActivitySubscription);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
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
}

void sub_1BF4A48AC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1BF4E9494();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1BF4A4A00()
{
  v1 = v0;
  v2 = type metadata accessor for ExtensionMetadata(0);
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8750, &qword_1BF4EB270);
  v5 = *v0;
  v6 = sub_1BF4E9494();
  v7 = v6;
  if (*(v5 + 16))
  {
    v24 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
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
        v22 = *(v25 + 72) * v20;
        sub_1BF4A63E4(*(v5 + 56) + v22, v4, type metadata accessor for ExtensionMetadata);
        *(*(v7 + 48) + 8 * v20) = v21;
        sub_1BF4A64AC(v4, *(v7 + 56) + v22, type metadata accessor for ExtensionMetadata);
        v23 = v21;
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

        v1 = v24;
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
}

void sub_1BF4A4C38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD99E8, &unk_1BF4F53A8);
  v2 = *v0;
  v3 = sub_1BF4E9494();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v21 = v20[1];
        v17 *= 24;
        v22 = *(v19 + v17);
        v23 = *(v19 + v17 + 8);
        v24 = *(v19 + v17 + 16);
        v25 = (*(v4 + 48) + v18);
        *v25 = *v20;
        v25[1] = v21;
        v26 = (*(v4 + 56) + v17);
        *v26 = v22;
        v26[1] = v23;
        v26[2] = v24;

        sub_1BF3D8864(v22, v23);
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
}

uint64_t sub_1BF4A4DF8(uint64_t a1)
{
  result = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  if (v4)
  {
    for (i = (a1 + 32); ; ++i)
    {
      v6 = *i;

      sub_1BF49D17C(&v7, &v6);
      if (v1)
      {
        break;
      }

      if (!--v4)
      {
        return v7;
      }
    }
  }

  return result;
}

void *sub_1BF4A4E98(uint64_t a1)
{
  type metadata accessor for ChronoMetadataStore.MutableExtensionStore();
  v2 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v1[2] = v2;
  type metadata accessor for ChronoMetadataStore.MutableRemoteExtensionStore();
  v3 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v1[3] = v3;
  type metadata accessor for ChronoMetadataStore.MutableConfiguredWidgetStore();
  v4 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v1[4] = v4;
  type metadata accessor for ChronoMetadataStore.MutableHostConfigurationStore();
  v5 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v1[5] = v5;
  type metadata accessor for ChronoMetadataStore.MutablePreviewConfigurationStore();
  v6 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v1[6] = v6;
  type metadata accessor for ChronoMetadataStore.MutableStateReplicatorDeviceMetadataStore();
  v7 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v1[7] = v7;
  type metadata accessor for ChronoMetadataStore.MutableStateReplicatorRecordMetadataStore();
  v8 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v1[8] = v8;
  type metadata accessor for ChronoMetadataStore.MutableStateReplicatorPairingRelationshipStore();
  v9 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v1[9] = v9;
  type metadata accessor for ChronoMetadataStore.MutableReloadStateStore();
  v10 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v1[10] = v10;
  type metadata accessor for ChronoMetadataStore.MutableRemoteActivitySubscriptionStore();
  v11 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v1[11] = v11;
  type metadata accessor for ChronoMetadataStore.MutableRemoteActivityArchiveBudgetStore();
  v12 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v1[12] = v12;
  type metadata accessor for ChronoMetadataStore.MutablePushSubcriptionStore();
  v13 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v1[13] = v13;
  type metadata accessor for ChronoMetadataStore.MutablePublicTokenStore();
  v14 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v1[14] = v14;
  type metadata accessor for ChronoMetadataStore.MutablePushTokenStore();
  v15 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v1[15] = v15;
  return v1;
}

uint64_t sub_1BF4A5180(uint64_t a1)
{
  v3 = type metadata accessor for ExtensionMetadata(0);
  v26 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v31 = MEMORY[0x1E69E7CC0];
  sub_1BF3E1604(0, v5, 0);
  v6 = v31;
  v29 = a1 + 64;
  result = sub_1BF4E91B4();
  v8 = result;
  v9 = 0;
  v25 = a1 + 72;
  v10 = a1;
  v27 = a1;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v10 + 32))
  {
    v12 = v8 >> 6;
    if ((*(v29 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_25;
    }

    v13 = v5;
    v14 = *(v10 + 36);

    sub_1BF48FB24(v15, v30);
    if (v1)
    {

      return v6;
    }

    v28 = 0;

    v31 = v6;
    v17 = *(v6 + 16);
    v16 = *(v6 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1BF3E1604((v16 > 1), v17 + 1, 1);
      v6 = v31;
    }

    *(v6 + 16) = v17 + 1;
    result = sub_1BF4A64AC(v30, v6 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v17, type metadata accessor for ExtensionMetadata);
    v10 = v27;
    v11 = 1 << *(v27 + 32);
    if (v8 >= v11)
    {
      goto LABEL_26;
    }

    v18 = *(v29 + 8 * v12);
    if ((v18 & (1 << v8)) == 0)
    {
      goto LABEL_27;
    }

    if (v14 != *(v27 + 36))
    {
      goto LABEL_28;
    }

    v19 = v18 & (-2 << (v8 & 0x3F));
    if (v19)
    {
      v11 = __clz(__rbit64(v19)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v12 << 6;
      v21 = v12 + 1;
      v22 = (v25 + 8 * v12);
      while (v21 < (v11 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_1BF404DA8(v8, v14, 0);
          v11 = __clz(__rbit64(v23)) + v20;
          goto LABEL_20;
        }
      }

      result = sub_1BF404DA8(v8, v14, 0);
LABEL_20:
      v10 = v27;
    }

    ++v9;
    v8 = v11;
    v5 = v13;
    v1 = v28;
    if (v9 == v13)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1BF4A55A4(uint64_t result, void *a2, uint64_t a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    for (i = (result + 32); ; ++i)
    {
      v8 = *i;

      sub_1BF48E1BC(&v8, a2, a3);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

unint64_t sub_1BF4A563C(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

void sub_1BF4A564C()
{
  v0 = sub_1BF4E73D4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = 0;
  v33 = 0xE000000000000000;
  v4 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](27);
  MEMORY[0x1BFB58C90](0x200A5443454C4553, 0xEB00000000202020);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  v8 = v32;
  v9 = v33;
  v10 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  sub_1BF4E73C4();
  v11 = sub_1BF4E73A4();
  (*(v1 + 8))(v3, v0);
  [v10 setTimeZone_];

  v12 = v31;
  v13 = sub_1BF3E4F48(v4, v8, v9);

  if (v12)
  {
  }

  else
  {
    v36 = sub_1BF39419C(MEMORY[0x1E69E7CC0]);
    v14 = v10;
    sub_1BF4A55A4(v13, v14, &v36);

    v31 = v14;

    v15 = v36;
    v16 = v36 + 64;
    v17 = 1 << *(v36 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v36 + 64);
    v20 = (v17 + 63) >> 6;

    for (i = 0; v19; i = v22)
    {
      v22 = i;
LABEL_10:
      v23 = (v22 << 10) | (16 * __clz(__rbit64(v19)));
      v24 = (*(v15 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v15 + 56) + v23);
      v28 = *v27;
      v29 = v27[1];
      v32 = v25;
      v33 = v26;
      v34 = v28;
      v35 = v29;

      sub_1BF48E838(&v32);
      v19 &= v19 - 1;
    }

    while (1)
    {
      v22 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v22 >= v20)
      {

        return;
      }

      v19 = *(v16 + 8 * v22);
      ++i;
      if (v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1BF4A59F0(uint64_t a1)
{
  result = MEMORY[0x1E69E7CC8];
  v7 = MEMORY[0x1E69E7CC8];
  v4 = *(a1 + 16);
  if (v4)
  {
    for (i = (a1 + 32); ; ++i)
    {
      v6 = *i;

      sub_1BF49700C(&v7, &v6);
      if (v1)
      {
        break;
      }

      if (!--v4)
      {
        return v7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BF4A5A9C(uint64_t a1)
{
  result = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  if (v4)
  {
    for (i = (a1 + 32); ; ++i)
    {
      v6 = *i;

      sub_1BF499A1C(&v7, &v6);
      if (v1)
      {
        break;
      }

      if (!--v4)
      {
        return v7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BF4A63E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BF4A644C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BF4A64AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BF4A6514(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BF4A655C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BF4E9734() & 1;
  }
}

unint64_t sub_1BF4A65B4()
{
  result = qword_1EBDD9A80;
  if (!qword_1EBDD9A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9A80);
  }

  return result;
}

unint64_t sub_1BF4A663C()
{
  result = qword_1EBDD9A88;
  if (!qword_1EBDD9A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9A88);
  }

  return result;
}

unint64_t sub_1BF4A6694()
{
  result = qword_1EBDD9A90;
  if (!qword_1EBDD9A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9A90);
  }

  return result;
}

uint64_t sub_1BF4A6794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1 + 32;
    do
    {
      sub_1BF38E49C(v7, v11);
      v8 = v12;
      v9 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      (*(v9 + 8))(v8, v9);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  return (*(a4 + 8))(a3, a4);
}

void *BlockAssertion.init(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *v6 = 0;
  *(v5 + 16) = v6;
  v2[2] = v5;
  v2[3] = a1;
  v2[4] = a2;
  return v2;
}

uint64_t BlockAssertion.deinit()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = *(v0 + 32);

    v2(v4);
    sub_1BF3B0E64(v2, v3);
  }

  sub_1BF3B0E64(*(v1 + 24), *(v1 + 32));
  return v1;
}

uint64_t ActivityKey.init(extensionIdentity:activityAttributesType:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for ActivityKey(0);
  v10 = *(v9 + 20);
  v11 = sub_1BF4E7454();
  result = (*(*(v11 - 8) + 32))(&a5[v10], a2, v11);
  v13 = &a5[*(v9 + 24)];
  *v13 = a3;
  *(v13 + 1) = a4;
  return result;
}

uint64_t sub_1BF4A6A24()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85C8, &unk_1BF4F20E0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  __swift_allocate_value_buffer(v1, qword_1EDC9F030);
  __swift_project_value_buffer(v1, qword_1EDC9F030);
  sub_1BF4E7694();
  return sub_1BF4E77A4();
}

uint64_t static DeviceScopedIdentity<>.anonymousLocalActivityHost.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDC9F028 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v3 = __swift_project_value_buffer(v2, qword_1EDC9F030);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ActivityKey.activityAttributesType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActivityKey(0) + 20);
  v4 = sub_1BF4E7454();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActivityKey.activityAttributesType.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ActivityKey(0) + 20);
  v4 = sub_1BF4E7454();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ActivityKey.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityKey(0) + 24));

  return v1;
}

uint64_t ActivityKey.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ActivityKey(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ActivityKey.description.getter()
{
  v1 = v0;
  v2 = [*v0 description];
  v3 = sub_1BF4E8914();
  v5 = v4;

  MEMORY[0x1BFB58C90](v3, v5);

  MEMORY[0x1BFB58C90](58, 0xE100000000000000);
  v6 = type metadata accessor for ActivityKey(0);
  sub_1BF4E7454();
  sub_1BF4A8050(&qword_1EDC9F098, MEMORY[0x1E6959BC8], MEMORY[0x1E6959BF0]);
  v7 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](58, 0xE100000000000000);
  MEMORY[0x1BFB58C90](*(v1 + *(v6 + 24)), *(v1 + *(v6 + 24) + 8));
  MEMORY[0x1BFB58C90](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_1BF4A6F60(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (v4 == 1)
  {
    v6 = 0x80000001BF4F8640;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000001BF4F8620;
  }

  if (*a2 == 1)
  {
    v3 = 0xD000000000000016;
    v2 = 0x80000001BF4F8640;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000011;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000001BF4F8620;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BF4E9734();
  }

  return v11 & 1;
}

uint64_t sub_1BF4A7040(double a1)
{
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF4A70EC(uint64_t a1)
{
  sub_1BF4E89F4();
}

uint64_t sub_1BF4A7184(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

unint64_t sub_1BF4A722C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BF4A8320(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1BF4A725C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0x696669746E656469;
  if (v2 == 1)
  {
    v4 = 0xD000000000000016;
    v3 = 0x80000001BF4F8640;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (v5)
  {
    v3 = 0x80000001BF4F8620;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_1BF4A72C4()
{
  v1 = 0x696669746E656469;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

unint64_t sub_1BF4A7328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF4A8320(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF4A7350(uint64_t a1)
{
  v2 = sub_1BF4A7874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF4A738C(uint64_t a1)
{
  v2 = sub_1BF4A7874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActivityKey.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_1BF4E7454();
  v30 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A98, &qword_1BF4F5690);
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for ActivityKey(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1BF4A7874();
  v13 = v32;
  sub_1BF4E9854();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
  }

  else
  {
    v32 = v5;
    v14 = v11;
    v15 = v31;
    sub_1BF4E9034();
    v36 = 0;
    sub_1BF4A8050(&qword_1EDC9D6C8, MEMORY[0x1E69941C0], MEMORY[0x1E69941D0]);
    sub_1BF4E95B4();
    v16 = v8;
    v17 = v34;
    *v14 = v34;
    v36 = 1;
    sub_1BF3BCF88();
    sub_1BF4E95B4();
    v26 = v17;
    v27 = v34;
    v28 = v35;
    sub_1BF4E6F84();
    swift_allocObject();
    sub_1BF4E6F74();
    sub_1BF4A8050(&qword_1EDC9F0A0, MEMORY[0x1E6959BC8], MEMORY[0x1E6959BE0]);
    v18 = v32;
    v25 = v3;
    sub_1BF4E6F64();

    (*(v30 + 32))(v14 + *(v9 + 20), v18, v25);
    LOBYTE(v34) = 2;
    v19 = sub_1BF4E9564();
    v20 = v16;
    v22 = v21;
    (*(v15 + 8))(v20, v6);
    sub_1BF3B03C0(v27, v28);
    v23 = (v14 + *(v9 + 24));
    *v23 = v19;
    v23[1] = v22;
    sub_1BF3F35E8(v14, v29);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    sub_1BF4711F8(v14);
  }
}

unint64_t sub_1BF4A7874()
{
  result = qword_1EDC9EF60;
  if (!qword_1EDC9EF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9EF60);
  }

  return result;
}

void ActivityKey.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9AA0, &qword_1BF4F5698);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF4A7874();
  sub_1BF4E9864();
  v12 = *v3;
  v14 = 0;
  sub_1BF4E9034();
  sub_1BF4A8050(&qword_1EDC9D6D0, MEMORY[0x1E69941C0], MEMORY[0x1E69941C8]);
  sub_1BF4E9674();
  if (!v2)
  {
    sub_1BF4E6FB4();
    swift_allocObject();
    sub_1BF4E6FA4();
    type metadata accessor for ActivityKey(0);
    sub_1BF4E7454();
    sub_1BF4A8050(&unk_1EDC9F0B0, MEMORY[0x1E6959BC8], MEMORY[0x1E6959BD0]);
    v9 = sub_1BF4E6F94();
    v11 = v10;

    v12 = v9;
    v13 = v11;
    v14 = 1;
    sub_1BF3B01D8();
    sub_1BF4E9674();
    sub_1BF3B03C0(v12, v13);
    LOBYTE(v12) = 2;
    sub_1BF4E9624();
  }

  (*(v6 + 8))(v8, v5);
}

uint64_t static ActivityKey.== infix(_:_:)(void *a1, void *a2)
{
  sub_1BF3F1508();
  if ((sub_1BF4E90A4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ActivityKey(0);
  if ((sub_1BF4E7434() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  if (v6 == *v8 && v7 == v8[1])
  {
    return 1;
  }

  return sub_1BF4E9734();
}

uint64_t ActivityKey.hash(into:)(uint64_t a1)
{
  sub_1BF4E90B4();
  type metadata accessor for ActivityKey(0);
  sub_1BF4E7454();
  sub_1BF4A8050(&qword_1EDC9F0A8, MEMORY[0x1E6959BC8], MEMORY[0x1E6959BD8]);
  sub_1BF4E8884();

  return sub_1BF4E89F4();
}

uint64_t ActivityKey.hashValue.getter(double a1)
{
  sub_1BF4E9804();
  sub_1BF4E90B4();
  type metadata accessor for ActivityKey(0);
  sub_1BF4E7454();
  sub_1BF4A8050(&qword_1EDC9F0A8, MEMORY[0x1E6959BC8], MEMORY[0x1E6959BD8]);
  sub_1BF4E8884();
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF4A7DD4(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  sub_1BF4E90B4();
  sub_1BF4E7454();
  sub_1BF4A8050(&qword_1EDC9F0A8, MEMORY[0x1E6959BC8], MEMORY[0x1E6959BD8]);
  sub_1BF4E8884();
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF4A7E94(uint64_t a1, uint64_t a2)
{
  sub_1BF4E90B4();
  sub_1BF4E7454();
  sub_1BF4A8050(&qword_1EDC9F0A8, MEMORY[0x1E6959BC8], MEMORY[0x1E6959BD8]);
  sub_1BF4E8884();

  return sub_1BF4E89F4();
}

uint64_t sub_1BF4A7F4C(uint64_t a1, uint64_t a2, double a3)
{
  sub_1BF4E9804();
  sub_1BF4E90B4();
  sub_1BF4E7454();
  sub_1BF4A8050(&qword_1EDC9F0A8, MEMORY[0x1E6959BC8], MEMORY[0x1E6959BD8]);
  sub_1BF4E8884();
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF4A8050(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BF4A80CC(void *a1, void *a2, uint64_t a3)
{
  sub_1BF3F1508();
  if ((sub_1BF4E90A4() & 1) == 0 || (sub_1BF4E7434() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_1BF4E9734();
}

uint64_t sub_1BF4A817C(uint64_t a1)
{
  result = sub_1BF4E9034();
  if (v2 <= 0x3F)
  {
    result = sub_1BF4E7454();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BF4A821C()
{
  result = qword_1EBDD9AA8;
  if (!qword_1EBDD9AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9AA8);
  }

  return result;
}

unint64_t sub_1BF4A8274()
{
  result = qword_1EDC9EF50;
  if (!qword_1EDC9EF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9EF50);
  }

  return result;
}

unint64_t sub_1BF4A82CC()
{
  result = qword_1EDC9EF58;
  if (!qword_1EDC9EF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9EF58);
  }

  return result;
}

unint64_t sub_1BF4A8320(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BF4E9514();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BF4A836C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v7, a1, v4);
  v8 = sub_1BF4E96D4();
  if (v8)
  {
    v9 = v8;
    (*(v3 + 8))(v6, a1);
  }

  else
  {
    v9 = swift_allocError();
    (*(v3 + 32))(v10, v6, a1);
  }

  v11 = sub_1BF4E6FE4();

  v12 = [v11 debugDescription];
  v13 = sub_1BF4E8914();

  return v13;
}

uint64_t sub_1BF4A850C()
{
  v0 = sub_1BF4E7B54();
  __swift_allocate_value_buffer(v0, qword_1EDCA68E0);
  __swift_project_value_buffer(v0, qword_1EDCA68E0);
  return sub_1BF4E7B44();
}

uint64_t sub_1BF4A85DC()
{
  v0 = sub_1BF4E7B54();
  __swift_allocate_value_buffer(v0, qword_1EDCA68F8);
  __swift_project_value_buffer(v0, qword_1EDCA68F8);
  return sub_1BF4E7B44();
}

uint64_t sub_1BF4A86A0()
{
  v0 = sub_1BF4E7B54();
  __swift_allocate_value_buffer(v0, qword_1EDCA6928);
  __swift_project_value_buffer(v0, qword_1EDCA6928);
  return sub_1BF4E7B44();
}

uint64_t sub_1BF4A88C4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1BF4E7B54();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1BF4E7B44();
}

void sub_1BF4A893C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1BF4E6FE4();
  if (a2)
  {
    v34 = v6;

    v7 = sub_1BF4E7B34();
    v8 = sub_1BF4E8E64();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v35 = v10;
      *v9 = 136446978;
      *(v9 + 4) = sub_1BF38D65C(a1, a2, &v35);
      *(v9 + 12) = 2082;
      v11 = [v34 domain];
      v12 = sub_1BF4E8914();
      v14 = v13;

      v15 = sub_1BF38D65C(v12, v14, &v35);

      *(v9 + 14) = v15;
      *(v9 + 22) = 2050;
      v16 = [v34 code];

      *(v9 + 24) = v16;
      *(v9 + 32) = 2082;
      v17 = [v34 debugDescription];
      v18 = sub_1BF4E8914();
      v20 = v19;

      v21 = sub_1BF38D65C(v18, v20, &v35);

      *(v9 + 34) = v21;
      _os_log_impl(&dword_1BF389000, v7, v8, "%{public}s: %{public}s (%{public}ld) %{public}s", v9, 0x2Au);
LABEL_6:
      swift_arrayDestroy();
      MEMORY[0x1BFB5A5D0](v10, -1, -1);
      MEMORY[0x1BFB5A5D0](v9, -1, -1);

      return;
    }
  }

  else
  {
    v34 = v6;
    v7 = sub_1BF4E7B34();
    v22 = sub_1BF4E8E64();
    if (os_log_type_enabled(v7, v22))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v35 = v10;
      *v9 = 136446722;
      v23 = [v34 domain];
      v24 = sub_1BF4E8914();
      v26 = v25;

      v27 = sub_1BF38D65C(v24, v26, &v35);

      *(v9 + 4) = v27;
      *(v9 + 12) = 2050;
      v28 = [v34 code];

      *(v9 + 14) = v28;
      *(v9 + 22) = 2082;
      v29 = [v34 debugDescription];
      v30 = sub_1BF4E8914();
      v32 = v31;

      v33 = sub_1BF38D65C(v30, v32, &v35);

      *(v9 + 24) = v33;
      _os_log_impl(&dword_1BF389000, v7, v22, "%{public}s (%{public}ld) %{public}s", v9, 0x20u);
      goto LABEL_6;
    }
  }
}

void TimelineKey.init(widget:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 extensionIdentity];
  v5 = [a1 kind];
  v6 = sub_1BF4E8914();
  v8 = v7;

  v9 = [a1 intentReference];
  *a2 = v4;
  a2[1] = v6;
  a2[2] = v8;
  a2[3] = v9;
}

uint64_t TimelineKey.extensionBundleIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t TimelineKey.containerBundleIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69941B0];
  swift_beginAccess();
  return sub_1BF40A05C(v3 + v4, a1);
}

uint64_t TimelineKey.kind.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void *TimelineKey.intentReference.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t TimelineKey.init(extensionIdentity:kind:intentReference:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t TimelineKey.matches(identifiable:)(void *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
  v5 = [a1 extensionIdentity];
  v6 = sub_1BF4E90A4();

  if (v6)
  {
    v7 = [a1 kind];
    v8 = sub_1BF4E8914();
    v10 = v9;

    if (v3 == v8 && v4 == v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_1BF4E9734();
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t TimelineKey.matches(personality:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v11 = *v1;
  v10 = v1[1];
  v23 = v1[2];
  v12 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  (*(v4 + 16))(v9, v11 + v12, v3);
  v13 = [a1 extensionBundleIdentifier];
  sub_1BF4E8914();

  sub_1BF4E7694();
  sub_1BF4A92C4();
  sub_1BF4E8B54();
  sub_1BF4E8B54();
  if (v25 == v24)
  {
    v14 = *(v4 + 8);
    v14(v6, v3);
    v14(v9, v3);
  }

  else
  {
    v15 = sub_1BF4E9734();
    v16 = *(v4 + 8);
    v16(v6, v3);
    v16(v9, v3);

    v17 = 0;
    if ((v15 & 1) == 0)
    {
      return v17 & 1;
    }
  }

  v18 = [a1 kind];
  v19 = sub_1BF4E8914();
  v21 = v20;

  if (v10 == v19 && v23 == v21)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1BF4E9734();
  }

  return v17 & 1;
}

unint64_t sub_1BF4A92C4()
{
  result = qword_1EDC9D578;
  if (!qword_1EDC9D578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9D578);
  }

  return result;
}

void TimelineKey.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  if (v2)
  {
    sub_1BF4E9824();
    v3 = v2;
    sub_1BF4E90B4();
  }

  else
  {
    sub_1BF4E9824();
  }
}

uint64_t TimelineKey.hashValue.getter(double a1)
{
  v2 = *(v1 + 24);
  sub_1BF4E9804();
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  sub_1BF4E9824();
  if (v2)
  {
    v3 = v2;
    sub_1BF4E90B4();
  }

  return sub_1BF4E9844();
}

uint64_t sub_1BF4A9480(double a1)
{
  v2 = *(v1 + 24);
  sub_1BF4E9804();
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  sub_1BF4E9824();
  if (v2)
  {
    v3 = v2;
    sub_1BF4E90B4();
  }

  return sub_1BF4E9844();
}

void sub_1BF4A951C(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  if (v2)
  {
    sub_1BF4E9824();
    v3 = v2;
    sub_1BF4E90B4();
  }

  else
  {
    sub_1BF4E9824();
  }
}

unint64_t sub_1BF4A95D8()
{
  result = qword_1EDC9B458;
  if (!qword_1EDC9B458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9B458);
  }

  return result;
}

uint64_t sub_1BF4A962C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - v5;
  if (*(a2 + 16) && (sub_1BF38C8B4(&qword_1EDC9D588, &qword_1EBDD8B48, &unk_1BF4EC990, MEMORY[0x1E69940C0]), v7 = sub_1BF4E8874(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1BF38C8B4(&qword_1EDC9D580, &qword_1EBDD8B48, &unk_1BF4EC990, MEMORY[0x1E69940C8]);
      v15 = sub_1BF4E88C4();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1BF4A9844(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1BF4E9804();
  sub_1BF4E89F4();
  v7 = sub_1BF4E9844();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1BF4E9734() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void *sub_1BF4A993C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BF4E9204())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFB59570](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t DescriptorCollection.count.getter()
{
  DescriptorCollection.descriptors.getter();
  v0 = sub_1BF4E8C34();

  return v0;
}

uint64_t DescriptorCollection.__allocating_init(descriptors:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DescriptorCollection.init(descriptors:)(a1);
  return v2;
}

void *sub_1BF4A9BEC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a3, uint64_t *a4)
{
  v9 = *v4;
  v10 = sub_1BF3AF970(a1, v9, a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = swift_allocObject();
  v12 = type metadata accessor for DefaultFeatureFlagEvaluator();
  v13 = swift_allocObject();
  v11[6] = v12;
  v11[7] = &off_1F3DF42A8;
  v11[2] = v10;
  v11[3] = v13;
  return v11;
}

uint64_t ContainerKindDescriptorPredicate.containerBundleIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ContainerKindDescriptorPredicate.containerBundleIdentifier.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ContainerKindDescriptorPredicate.kind.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContainerKindDescriptorPredicate(0) + 20));

  return v1;
}

uint64_t ContainerKindDescriptorPredicate.kind.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContainerKindDescriptorPredicate(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void ContainerKindDescriptorPredicate.evaluate(with:)(uint64_t a1)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
    v10 = v9;
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = *(*(a1 + 56) + ((v10 << 9) | (8 * v11)));
    MEMORY[0x1EEE9AC00](v8);
    v14[2] = v1;

    v13 = sub_1BF4A993C(sub_1BF4B0C94, v14, v12);

    if (v13)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      goto LABEL_11;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1BF4A9FEC(id *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v38[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9288, &unk_1BF4F5A20);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9290, &qword_1BF4EE4B0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v43 = &v38[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38[-v14];
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v38[-v18];
  v41 = *a1;
  v20 = [v41 extensionIdentity];
  v21 = *MEMORY[0x1E69941B0];
  swift_beginAccess();
  sub_1BF40A05C(v20 + v21, v19);

  v22 = *(v5 + 16);
  v42 = a2;
  v22(v15, a2, v4);
  (*(v5 + 56))(v15, 0, 1, v4);
  v23 = *(v8 + 56);
  sub_1BF40A05C(v19, v10);
  sub_1BF40A05C(v15, &v10[v23]);
  v24 = v5;
  v25 = *(v5 + 48);
  if (v25(v10, 1, v4) != 1)
  {
    sub_1BF40A05C(v10, v43);
    if (v25(&v10[v23], 1, v4) != 1)
    {
      v27 = v24;
      v28 = *(v24 + 32);
      v29 = v40;
      v28(v40, &v10[v23], v4);
      sub_1BF38C8B4(&qword_1EDC9F050, &qword_1EBDD8A38, &unk_1BF4EC4D0, MEMORY[0x1E69940C8]);
      v30 = v43;
      v39 = sub_1BF4E88C4();
      v31 = *(v27 + 8);
      v31(v29, v4);
      sub_1BF38C9B4(v15, &qword_1EBDD9290, &qword_1BF4EE4B0);
      sub_1BF38C9B4(v19, &qword_1EBDD9290, &qword_1BF4EE4B0);
      v31(v30, v4);
      sub_1BF38C9B4(v10, &qword_1EBDD9290, &qword_1BF4EE4B0);
      if (v39)
      {
        goto LABEL_9;
      }

LABEL_7:
      v26 = 0;
      return v26 & 1;
    }

    sub_1BF38C9B4(v15, &qword_1EBDD9290, &qword_1BF4EE4B0);
    sub_1BF38C9B4(v19, &qword_1EBDD9290, &qword_1BF4EE4B0);
    (*(v24 + 8))(v43, v4);
LABEL_6:
    sub_1BF38C9B4(v10, &qword_1EBDD9288, &unk_1BF4F5A20);
    goto LABEL_7;
  }

  sub_1BF38C9B4(v15, &qword_1EBDD9290, &qword_1BF4EE4B0);
  sub_1BF38C9B4(v19, &qword_1EBDD9290, &qword_1BF4EE4B0);
  if (v25(&v10[v23], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1BF38C9B4(v10, &qword_1EBDD9290, &qword_1BF4EE4B0);
LABEL_9:
  v32 = [v41 kind];
  v33 = sub_1BF4E8914();
  v35 = v34;

  v36 = (v42 + *(type metadata accessor for ContainerKindDescriptorPredicate(0) + 20));
  if (v33 == *v36 && v35 == v36[1])
  {

    v26 = 1;
  }

  else
  {
    v26 = sub_1BF4E9734();
  }

  return v26 & 1;
}

double static DescriptorPredicate<>.container(_:kind:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  (*(*(v8 - 8) + 16))(a4, a1, v8);
  v9 = (a4 + *(type metadata accessor for ContainerKindDescriptorPredicate(0) + 20));
  *v9 = a2;
  v9[1] = a3;

  return result;
}

double DescriptorCollectionFilter.filterTypes.getter()
{
  sub_1BF4B0CB4();

  return result;
}

uint64_t *DescriptorCollection.init(descriptors:)(uint64_t a1)
{
  v2 = type metadata accessor for DefaultFeatureFlagEvaluator();
  v1[3] = swift_allocObject();
  v1[6] = v2;
  v1[7] = &off_1F3DF42A8;
  sub_1BF4E9034();
  sub_1BF4E8CA4();
  sub_1BF391F90(&qword_1EDC9F128, MEMORY[0x1E69941C0], MEMORY[0x1E69E81B8]);
  swift_getWitnessTable();
  v1[2] = sub_1BF4E8814();
  return v1;
}

void *DescriptorCollection.init(descriptorsByExtensionIdentity:)(uint64_t a1)
{
  v3 = type metadata accessor for DefaultFeatureFlagEvaluator();
  v4 = swift_allocObject();
  v1[6] = v3;
  v1[7] = &off_1F3DF42A8;
  v1[2] = a1;
  v1[3] = v4;
  return v1;
}

void *DescriptorCollection.filter(_:)(uint64_t a1)
{
  v3 = a1;

  v1 = DescriptorCollection.filter(_:)(&v3);

  return v1;
}

BOOL sub_1BF4AA814(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  v9 = *a1;
  v10 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  (*(v6 + 16))(v8, v9 + v10, v5);
  LOBYTE(a3) = sub_1BF4A962C(v8, a3);
  (*(v6 + 8))(v8, v5);
  return (a3 & 1) == 0;
}

uint64_t sub_1BF4AA954@<X0>(uint64_t *a5@<X8>)
{
  sub_1BF4E8CA4();

  swift_getWitnessTable();
  v6 = sub_1BF4E9364();
  swift_getWitnessTable();
  result = sub_1BF4E8DE4();
  if (result)
  {

    v6 = 0;
  }

  *a5 = v6;
  return result;
}

void DescriptorCollection.filter(_:)(uint64_t a1, uint64_t a2)
{
  sub_1BF4E9034();
  sub_1BF4E8CA4();
  sub_1BF391F90(&qword_1EDC9F128, MEMORY[0x1E69941C0], MEMORY[0x1E69E81B8]);
  v17 = sub_1BF4E8724();
  v3 = *(v2 + 16);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = 1 << *(*(v2 + 16) + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return;
    }

    if (v13 >= v10)
    {

      DescriptorCollection.__allocating_init(descriptorsByExtensionIdentity:)(v17);
      return;
    }

    v9 = *(v5 + 8 * v13);
    ++v12;
  }

  while (!v9);
  while (1)
  {
    MEMORY[0x1EEE9AC00](v11);
    v15 = v14;

    swift_getWitnessTable();
    sub_1BF4E9364();
    if (v16)
    {
      break;
    }

    v9 &= v9 - 1;
    swift_getWitnessTable();
    if (sub_1BF4E8DE4())
    {

      v12 = v13;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_1BF4E8834();
      v11 = sub_1BF4E8864();
      v12 = v13;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v13 = v12;
  }
}

void DescriptorCollection.filterIdentities(_:)(uint64_t (*a1)(id))
{
  sub_1BF4E9034();
  sub_1BF4E8CA4();
  sub_1BF391F90(&qword_1EDC9F128, MEMORY[0x1E69941C0], MEMORY[0x1E69E81B8]);
  v13 = sub_1BF4E8724();
  v3 = *(v1 + 16);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (v6)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v7)
    {

      DescriptorCollection.__allocating_init(descriptorsByExtensionIdentity:)(v13);
      return;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v8;
  }

  while (!v6);
  while (1)
  {
    v10 = *(*(v3 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v6)))));

    v11 = a1(v10);
    if (v2)
    {
      break;
    }

    v6 &= v6 - 1;
    if (v11)
    {
      sub_1BF4E8834();
      sub_1BF4E8864();
      v8 = v9;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else
    {

      v8 = v9;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v9 = v8;
  }
}

uint64_t DescriptorCollection.compactMapDescriptors<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DescriptorCollection.descriptors.getter();
  sub_1BF4E8CA4();
  swift_getWitnessTable();
  v3 = sub_1BF4E8AD4();

  return v3;
}

uint64_t DescriptorCollection.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  return v0;
}

void sub_1BF4AB090(uint64_t *a1@<X8>)
{
  v2 = DescriptorCollection.makeIterator()();

  *a1 = v2;
  a1[1] = 0;
}

uint64_t sub_1BF4AB0D0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BF4B0C90(v2, a1, a2);

  return v3;
}

void *DescriptorCollection<>.descriptor(matching:)(void *a1)
{
  v3 = *(v1 + 16);
  v13 = sub_1BF3901C0(0, &qword_1EDC96348, 0x1E6994248);
  KeyPath = swift_getKeyPath();

  sub_1BF488A30(v3, KeyPath);
  v6 = v5;

  if (v6 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BF4E9204())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1BFB59570](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ([a1 matches_])
      {

        return v10;
      }

      ++v8;
      if (v11 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

void DescriptorCollection<>.descriptor(for:containedBy:)(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  v71 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v3 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v55 = &v48 - v4;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9288, &unk_1BF4F5A20);
  MEMORY[0x1EEE9AC00](v63);
  v6 = &v48 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9290, &qword_1BF4EE4B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v66 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v70 = &v48 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v48 - v12;
  v67 = sub_1BF4E7454();
  MEMORY[0x1EEE9AC00](v67);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + 16);
  v17 = *(v16 + 64);
  v50 = v16 + 64;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v49 = (v18 + 63) >> 6;
  v21 = (v13 + 8);
  v61 = (v3 + 56);
  v62 = (v3 + 16);
  v69 = (v3 + 48);
  v54 = (v3 + 32);
  v57 = (v3 + 8);
  v53 = v16;

  v22 = 0;
  v73 = v6;
  v59 = v21;
  v60 = v15;
  while (1)
  {
    if (!v20)
    {
      do
      {
        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_37;
        }

        if (v23 >= v49)
        {

          return;
        }

        v20 = *(v50 + 8 * v23);
        ++v22;
      }

      while (!v20);
      v22 = v23;
    }

    v24 = *(v53 + 56);
    v51 = v22;
    v25 = *(v24 + ((v22 << 9) | (8 * __clz(__rbit64(v20)))));
    v52 = v20;
    v26 = v25 >> 62 ? sub_1BF4E9204() : *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v26)
    {
      break;
    }

LABEL_4:
    v20 = (v52 - 1) & v52;

    v22 = v51;
  }

  v27 = 0;
  v28 = v25 & 0xC000000000000001;
  v72 = v25 & 0xFFFFFFFFFFFFFF8;
  v58 = v25 & 0xC000000000000001;
  while (v28)
  {
    v29 = MEMORY[0x1BFB59570](v27, v25);
    v30 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_35;
    }

LABEL_20:
    v31 = v29;
    v32 = [v29 activityAttributesType];
    if (!v32)
    {
      goto LABEL_38;
    }

    v33 = v32;
    sub_1BF391F90(&qword_1EDC9F090, MEMORY[0x1E6959BC8], MEMORY[0x1E6959BC0]);
    v34 = v67;
    sub_1BF4E7554();

    LOBYTE(v33) = sub_1BF4E7434();
    (*v21)(v15, v34);
    if (v33)
    {
      v35 = [v31 extensionIdentity];
      v36 = *MEMORY[0x1E69941B0];
      swift_beginAccess();
      v37 = v68;
      sub_1BF40A05C(v35 + v36, v68);

      v38 = v70;
      v39 = v64;
      (*v62)(v70, v65, v64);
      (*v61)(v38, 0, 1, v39);
      v40 = *(v63 + 48);
      v41 = v37;
      v42 = v73;
      sub_1BF40A05C(v41, v73);
      sub_1BF40A05C(v38, v42 + v40);
      v43 = *v69;
      if ((*v69)(v42, 1, v39) == 1)
      {
        v28 = v58;
        sub_1BF38C9B4(v70, &qword_1EBDD9290, &qword_1BF4EE4B0);
        sub_1BF38C9B4(v68, &qword_1EBDD9290, &qword_1BF4EE4B0);
        if (v43(&v73[v40], 1, v39) == 1)
        {
          sub_1BF38C9B4(v73, &qword_1EBDD9290, &qword_1BF4EE4B0);
LABEL_33:

          return;
        }

        goto LABEL_15;
      }

      v44 = v73;
      sub_1BF40A05C(v73, v66);
      if (v43(v44 + v40, 1, v39) == 1)
      {
        sub_1BF38C9B4(v70, &qword_1EBDD9290, &qword_1BF4EE4B0);
        sub_1BF38C9B4(v68, &qword_1EBDD9290, &qword_1BF4EE4B0);
        (*v57)(v66, v39);
LABEL_15:
        sub_1BF38C9B4(v73, &qword_1EBDD9288, &unk_1BF4F5A20);
        v21 = v59;
        v15 = v60;
        goto LABEL_16;
      }

      v45 = &v73[v40];
      v46 = v55;
      (*v54)(v55, v45, v39);
      sub_1BF38C8B4(&qword_1EDC9F050, &qword_1EBDD8A38, &unk_1BF4EC4D0, MEMORY[0x1E69940C8]);
      v56 = sub_1BF4E88C4();
      v47 = *v57;
      (*v57)(v46, v39);
      sub_1BF38C9B4(v70, &qword_1EBDD9290, &qword_1BF4EE4B0);
      sub_1BF38C9B4(v68, &qword_1EBDD9290, &qword_1BF4EE4B0);
      v47(v66, v39);
      v28 = v58;
      sub_1BF38C9B4(v73, &qword_1EBDD9290, &qword_1BF4EE4B0);
      v21 = v59;
      v15 = v60;
      if (v56)
      {
        goto LABEL_33;
      }
    }

LABEL_16:

    ++v27;
    if (v30 == v26)
    {
      goto LABEL_4;
    }
  }

  if (v27 >= *(v72 + 16))
  {
    goto LABEL_36;
  }

  v29 = *(v25 + 8 * v27 + 32);
  v30 = v27 + 1;
  if (!__OFADD__(v27, 1))
  {
    goto LABEL_20;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

void CHSSessionPlatterDescriptor.activityAttributes.getter()
{
  v1 = [v0 activityAttributesType];
  if (v1)
  {
    sub_1BF4E7454();
    sub_1BF391F90(&qword_1EDC9F090, MEMORY[0x1E6959BC8], MEMORY[0x1E6959BC0]);
    sub_1BF4E7554();
  }

  else
  {
    __break(1u);
  }
}

void DescriptorCollection<>.descriptor(targeting:)(void *a1)
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v3 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v52 = &v46 - v4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9288, &unk_1BF4F5A20);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9290, &qword_1BF4EE4B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v46 - v10;
  v64 = sub_1BF4E7454();
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 16);
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;
  v62 = (v11 + 8);
  v51 = (v3 + 32);
  v54 = (v3 + 8);
  v50 = v13;

  v19 = 0;
  v47 = v14;
  v58 = a1;
  v60 = v8;
  v46 = v18;
  v55 = (v3 + 48);
  while (1)
  {
    if (!v17)
    {
      do
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_35;
        }

        if (v20 >= v18)
        {

          return;
        }

        v17 = *(v14 + 8 * v20);
        ++v19;
      }

      while (!v17);
      v19 = v20;
    }

    v49 = v17;
    v21 = *(v50 + 56);
    v48 = v19;
    v22 = *(v21 + ((v19 << 9) | (8 * __clz(__rbit64(v17)))));
    v23 = v22 >> 62 ? sub_1BF4E9204() : *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v23)
    {
      break;
    }

LABEL_4:
    v17 = (v49 - 1) & v49;

    v14 = v47;
    v18 = v46;
    v19 = v48;
  }

  v24 = 0;
  v65 = v22 & 0xFFFFFFFFFFFFFF8;
  v66 = v22 & 0xC000000000000001;
  while (1)
  {
    if (v66)
    {
      v26 = MEMORY[0x1BFB59570](v24, v22);
    }

    else
    {
      if (v24 >= *(v65 + 16))
      {
        goto LABEL_34;
      }

      v26 = *(v22 + 8 * v24 + 32);
    }

    v27 = v26;
    v28 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    v29 = [v26 activityAttributesType];
    if (!v29)
    {
      goto LABEL_36;
    }

    v30 = v29;
    sub_1BF391F90(&qword_1EDC9F090, MEMORY[0x1E6959BC8], MEMORY[0x1E6959BC0]);
    v32 = v63;
    v31 = v64;
    sub_1BF4E7554();

    type metadata accessor for ActivityKey(0);
    LOBYTE(v30) = sub_1BF4E7434();
    (*v62)(v32, v31);
    if (v30)
    {
      v33 = [v27 extensionIdentity];
      v34 = MEMORY[0x1E69941B0];
      v35 = *MEMORY[0x1E69941B0];
      swift_beginAccess();
      v36 = v61;
      sub_1BF40A05C(v33 + v35, v61);

      v37 = *a1;
      v38 = *v34;
      swift_beginAccess();
      v39 = v56;
      v40 = *(v57 + 48);
      sub_1BF40A05C(v36, v56);
      sub_1BF40A05C(v37 + v38, v39 + v40);
      v41 = *v55;
      v42 = v59;
      if ((*v55)(v39, 1, v59) == 1)
      {
        sub_1BF38C9B4(v61, &qword_1EBDD9290, &qword_1BF4EE4B0);
        v25 = v41(v39 + v40, 1, v42);
        a1 = v58;
        if (v25 == 1)
        {
          sub_1BF38C9B4(v39, &qword_1EBDD9290, &qword_1BF4EE4B0);
LABEL_32:

          return;
        }

        goto LABEL_15;
      }

      sub_1BF40A05C(v39, v60);
      if (v41(v39 + v40, 1, v42) == 1)
      {
        sub_1BF38C9B4(v61, &qword_1EBDD9290, &qword_1BF4EE4B0);
        (*v54)(v60, v42);
        a1 = v58;
LABEL_15:
        sub_1BF38C9B4(v39, &qword_1EBDD9288, &unk_1BF4F5A20);
        goto LABEL_16;
      }

      v43 = v52;
      (*v51)(v52, v39 + v40, v42);
      sub_1BF38C8B4(&qword_1EDC9F050, &qword_1EBDD8A38, &unk_1BF4EC4D0, MEMORY[0x1E69940C8]);
      v53 = sub_1BF4E88C4();
      v44 = v42;
      v45 = *v54;
      (*v54)(v43, v44);
      sub_1BF38C9B4(v61, &qword_1EBDD9290, &qword_1BF4EE4B0);
      v45(v60, v44);
      sub_1BF38C9B4(v39, &qword_1EBDD9290, &qword_1BF4EE4B0);
      a1 = v58;
      if (v53)
      {
        goto LABEL_32;
      }
    }

LABEL_16:

    ++v24;
    if (v28 == v23)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t DescriptorCollection<>.descriptors(matching:)(uint64_t a1)
{
  v60 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v44 - v4;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9288, &unk_1BF4F5A20);
  MEMORY[0x1EEE9AC00](v59);
  v64 = &v44 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9290, &qword_1BF4EE4B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v58 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - v12;
  v14 = *(v1 + 16);
  v15 = *(v14 + 64);
  v48 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v52 = MEMORY[0x1E69E7CC0];
  v65 = MEMORY[0x1E69E7CC0];
  v18 = v17 & v15;
  v47 = (v16 + 63) >> 6;
  v56 = (v3 + 56);
  v57 = (v3 + 16);
  v63 = (v3 + 48);
  v44 = (v3 + 32);
  v49 = v14;
  v50 = (v3 + 8);

  v19 = 0;
  v61 = v13;
LABEL_4:
  v21 = v48;
  result = v49;
  v22 = v47;
  do
  {
    if (v18)
    {
      goto LABEL_10;
    }

    do
    {
      v23 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v23 >= v22)
      {

        return v52;
      }

      v18 = *(v21 + 8 * v23);
      ++v19;
    }

    while (!v18);
    v19 = v23;
LABEL_10:
    v24 = *(*(result + 56) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    if (v24 >> 62)
    {
      v26 = sub_1BF4E9204();
      v22 = v47;
      v25 = v26;
      v21 = v48;
      result = v49;
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 &= v18 - 1;
  }

  while (!v25);
  v55 = v2;
  if (v25 >= 1)
  {
    v53 = v24 & 0xC000000000000001;

    v27 = 0;
    v51 = v24;
    v54 = v25;
    while (1)
    {
      v30 = v53 ? MEMORY[0x1BFB59570](v27, v24) : *(v24 + 8 * v27 + 32);
      v62 = v30;
      v31 = [v30 extensionIdentity];
      v32 = *MEMORY[0x1E69941B0];
      swift_beginAccess();
      sub_1BF40A05C(v31 + v32, v13);

      v33 = v55;
      (*v57)(v10, v60, v55);
      (*v56)(v10, 0, 1, v33);
      v34 = *(v59 + 48);
      v35 = v64;
      sub_1BF40A05C(v13, v64);
      sub_1BF40A05C(v10, v35 + v34);
      v36 = *v63;
      if ((*v63)(v35, 1, v33) == 1)
      {
        break;
      }

      v38 = v64;
      sub_1BF40A05C(v64, v58);
      if (v36(v38 + v34, 1, v33) == 1)
      {
        sub_1BF38C9B4(v10, &qword_1EBDD9290, &qword_1BF4EE4B0);
        sub_1BF38C9B4(v13, &qword_1EBDD9290, &qword_1BF4EE4B0);
        (*v50)(v58, v33);
LABEL_18:
        sub_1BF38C9B4(v64, &qword_1EBDD9288, &unk_1BF4F5A20);
        v28 = v54;
        v29 = v62;
        goto LABEL_19;
      }

      v39 = v64 + v34;
      v40 = v45;
      (*v44)(v45, v39, v33);
      sub_1BF38C8B4(&qword_1EDC9F050, &qword_1EBDD8A38, &unk_1BF4EC4D0, MEMORY[0x1E69940C8]);
      v41 = v58;
      v46 = sub_1BF4E88C4();
      v42 = *v50;
      (*v50)(v40, v33);
      sub_1BF38C9B4(v10, &qword_1EBDD9290, &qword_1BF4EE4B0);
      sub_1BF38C9B4(v61, &qword_1EBDD9290, &qword_1BF4EE4B0);
      v42(v41, v33);
      v24 = v51;
      sub_1BF38C9B4(v64, &qword_1EBDD9290, &qword_1BF4EE4B0);
      v28 = v54;
      v29 = v62;
      if (v46)
      {
        goto LABEL_29;
      }

LABEL_19:

      v13 = v61;
LABEL_20:
      if (v28 == ++v27)
      {

        v2 = v55;
        goto LABEL_4;
      }
    }

    sub_1BF38C9B4(v10, &qword_1EBDD9290, &qword_1BF4EE4B0);
    v37 = v64;
    v24 = v51;
    sub_1BF38C9B4(v13, &qword_1EBDD9290, &qword_1BF4EE4B0);
    if (v36(v37 + v34, 1, v33) == 1)
    {
      sub_1BF38C9B4(v64, &qword_1EBDD9290, &qword_1BF4EE4B0);
      v28 = v54;
      v29 = v62;
LABEL_29:
      v43 = v29;
      MEMORY[0x1BFB58DD0]();
      v13 = v61;
      if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BF4E8BE4();
      }

      sub_1BF4E8C24();

      v52 = v65;
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1BF4AC8C8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1BF4E8454();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1BF391F90(&qword_1EDC9F1A0, MEMORY[0x1E6985A18], MEMORY[0x1E6985A20]);
  v33 = a2;
  v11 = sub_1BF4E8874();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1BF391F90(&qword_1EBDD9840, MEMORY[0x1E6985A18], MEMORY[0x1E6985A30]);
      v21 = sub_1BF4E88C4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1BF4AE760(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1BF4ACBA8(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = *v4;
  sub_1BF4E9804();
  sub_1BF4E89F4();
  v9 = sub_1BF4E9844();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v8 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1BF4E9734() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v17 = (*(v8 + 48) + 16 * v11);
    v18 = v17[1];
    *a1 = *v17;
    a1[1] = v18;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v4;

    sub_1BF4AEA28(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v4 = v19;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1BF4ACCF8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - v8;
  v10 = *v2;
  sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994140]);
  v31 = a2;
  v11 = sub_1BF4E8874();
  v29 = v10 + 56;
  v30 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = a1;
    v28 = ~v12;
    v25 = v7;
    v15 = v7 + 16;
    v14 = *(v7 + 16);
    v16 = (v7 + 8);
    v17 = *(v15 + 56);
    v24[1] = v15 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v18 = v14;
      v14(v9, *(v30 + 48) + v17 * v13, v6);
      sub_1BF38C8B4(&qword_1EDC9D538, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994148]);
      v19 = sub_1BF4E88C4();
      v20 = *v16;
      (*v16)(v9, v6);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v28;
      v14 = v18;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v3 = v26;
        a1 = v27;
        v7 = v25;
        goto LABEL_7;
      }
    }

    v20(v31, v6);
    v18(v27, *(v30 + 48) + v17 * v13, v6);
    return 0;
  }

  else
  {
    v14 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v31;
    v14(v9, v31, v6);
    v32 = *v3;
    sub_1BF4AEBA8(v9, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v32;
    (*(v7 + 32))(a1, v22, v6);
    return 1;
  }
}

uint64_t sub_1BF4ACFDC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - v8;
  v10 = *v2;
  sub_1BF38C8B4(&qword_1EDC9D588, &qword_1EBDD8B48, &unk_1BF4EC990, MEMORY[0x1E69940C0]);
  v31 = a2;
  v11 = sub_1BF4E8874();
  v29 = v10 + 56;
  v30 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = a1;
    v28 = ~v12;
    v25 = v7;
    v15 = v7 + 16;
    v14 = *(v7 + 16);
    v16 = (v7 + 8);
    v17 = *(v15 + 56);
    v24[1] = v15 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v18 = v14;
      v14(v9, *(v30 + 48) + v17 * v13, v6);
      sub_1BF38C8B4(&qword_1EDC9D580, &qword_1EBDD8B48, &unk_1BF4EC990, MEMORY[0x1E69940C8]);
      v19 = sub_1BF4E88C4();
      v20 = *v16;
      (*v16)(v9, v6);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v28;
      v14 = v18;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v3 = v26;
        a1 = v27;
        v7 = v25;
        goto LABEL_7;
      }
    }

    v20(v31, v6);
    v18(v27, *(v30 + 48) + v17 * v13, v6);
    return 0;
  }

  else
  {
    v14 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v31;
    v14(v9, v31, v6);
    v32 = *v3;
    sub_1BF4AF134(v9, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v32;
    (*(v7 + 32))(a1, v22, v6);
    return 1;
  }
}

uint64_t sub_1BF4AD2C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9590, &unk_1BF4F1930);
    v2 = sub_1BF4E92A4();
    v15 = v2;
    sub_1BF4E91F4();
    if (sub_1BF4E9234())
    {
      sub_1BF3901C0(0, &qword_1EDC9F9C0, 0x1E69943A0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1BF4ADE00(v9 + 1, &qword_1EBDD9590, &unk_1BF4F1930);
        }

        v2 = v15;
        result = sub_1BF4E9094();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1BF4E9234());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

void sub_1BF4AD4D0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1BF4E8454();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9AC0, &unk_1BF4F5DC0);
  v6 = sub_1BF4E9294();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_1BF391F90(&qword_1EDC9F1A0, MEMORY[0x1E6985A18], MEMORY[0x1E6985A20]);
      v21 = sub_1BF4E8874();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_1BF4AD840(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9568, &qword_1BF4F1910);
  v4 = sub_1BF4E9294();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1BF4E9804();
      sub_1BF4E89F4();
      v21 = sub_1BF4E9844();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
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

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1BF4ADAA0(uint64_t a1)
{
  v2 = v1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - v4;
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9AC8, &qword_1BF4F5DD0);
  v6 = sub_1BF4E9294();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994140]);
      v21 = sub_1BF4E8874();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_1BF4ADE00(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_1BF4E9294();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = sub_1BF4E9094();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void sub_1BF4AE020(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1BF4E8174();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9AD0, &qword_1BF4F5DD8);
  v6 = sub_1BF4E9294();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_1BF391F90(qword_1EDC9FA00, MEMORY[0x1E6985750], MEMORY[0x1E6985760]);
      v21 = sub_1BF4E8874();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_1BF4AE37C(uint64_t a1)
{
  v2 = v1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - v4;
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9598, &unk_1BF4F1940);
  v6 = sub_1BF4E9294();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_1BF38C8B4(&qword_1EDC9D588, &qword_1EBDD8B48, &unk_1BF4EC990, MEMORY[0x1E69940C0]);
      v21 = sub_1BF4E8874();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

unint64_t sub_1BF4AE6DC(uint64_t a1, uint64_t a2)
{
  sub_1BF4E9094();
  result = sub_1BF4E91E4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1BF4AE760(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1BF4E8454();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BF4AD4D0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1BF4AF6C8(MEMORY[0x1E6985A18], &qword_1EBDD9AC0, &unk_1BF4F5DC0);
      goto LABEL_12;
    }

    sub_1BF4AFB2C(v11 + 1);
  }

  v13 = *v3;
  sub_1BF391F90(&qword_1EDC9F1A0, MEMORY[0x1E6985A18], MEMORY[0x1E6985A20]);
  v14 = sub_1BF4E8874();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1BF391F90(&qword_1EBDD9840, MEMORY[0x1E6985A18], MEMORY[0x1E6985A30]);
      v22 = sub_1BF4E88C4();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BF4E9784();
  __break(1u);
  return result;
}

void sub_1BF4AEA28(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1BF4AD840(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1BF4AF3F8();
      goto LABEL_16;
    }

    sub_1BF4AFE48(v8 + 1);
  }

  v10 = *v4;
  sub_1BF4E9804();
  sub_1BF4E89F4();
  v11 = sub_1BF4E9844();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1BF4E9734() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1BF4E9784();
  __break(1u);
}

uint64_t sub_1BF4AEBA8(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v7;
  v30 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BF4ADAA0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1BF4AF900(&unk_1EBDD91A0, &unk_1BF4EC4E0, &qword_1EBDD9AC8, &qword_1BF4F5DD0);
      goto LABEL_12;
    }

    sub_1BF4B0080(v11 + 1);
  }

  v13 = *v3;
  sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994140]);
  v14 = sub_1BF4E8874();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v18 = v7 + 16;
    v19 = v20;
    v21 = *(v18 + 56);
    do
    {
      v19(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1BF38C8B4(&qword_1EDC9D538, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994148]);
      v22 = sub_1BF4E88C4();
      (*(v18 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v29;
  v24 = *v30;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BF4E9784();
  __break(1u);
  return result;
}

uint64_t sub_1BF4AEE6C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1BF4E8174();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BF4AE020(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1BF4AF6C8(MEMORY[0x1E6985750], &unk_1EBDD9AD0, &qword_1BF4F5DD8);
      goto LABEL_12;
    }

    sub_1BF4B05B4(v11 + 1);
  }

  v13 = *v3;
  sub_1BF391F90(qword_1EDC9FA00, MEMORY[0x1E6985750], MEMORY[0x1E6985760]);
  v14 = sub_1BF4E8874();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1BF391F90(&qword_1EDC96498, MEMORY[0x1E6985750], MEMORY[0x1E6985768]);
      v22 = sub_1BF4E88C4();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BF4E9784();
  __break(1u);
  return result;
}