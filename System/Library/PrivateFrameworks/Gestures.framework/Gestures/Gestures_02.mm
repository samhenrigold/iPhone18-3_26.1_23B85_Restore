uint64_t sub_18E69B5B8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DA28, &unk_18E72C8E0);
  result = sub_18E72B5A8();
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
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    sub_18E72B888();
    MEMORY[0x193AD1DF0](v16);
    result = sub_18E72B8E8();
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
    *(*(v9 + 48) + 8 * v20) = v16;
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

uint64_t sub_18E69B7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v76 = a5;
  v77 = a4;
  v80 = a1;
  v81 = a2;
  v8 = sub_18E72AE18();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v84 = v73 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = v73 - v15;
  v17 = sub_18E680FFC();
  v18 = 0x1ED6F7000uLL;
  v74 = a3;
  v75 = a6;
  if (v17)
  {
    if (qword_1EAC8D8F8 != -1)
    {
      goto LABEL_50;
    }

    goto LABEL_3;
  }

  if (qword_1ED6F7F98 != -1)
  {
    swift_once();
  }

  v19 = qword_1ED6F7FA0;
LABEL_7:
  v78 = v12;
  v20 = __swift_project_value_buffer(v8, v19);
  v88 = *(v9 + 16);
  v89 = v9 + 16;
  v88(v16, v20, v8);
  v21 = sub_18E72ADF8();
  v22 = sub_18E72B3E8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_18E67C000, v21, v22, "Nodes relevant to exclusion:", v23, 2u);
    MEMORY[0x193AD25C0](v23, -1, -1);
  }

  v25 = *(v9 + 8);
  v9 += 8;
  v24 = v25;
  v25(v16, v8);
  v26 = *(v81 + 16);

  v28 = v84;
  v87 = v26;
  if (v26)
  {
    v12 = 0;
    v86 = v81 + 32;
    v79 = "Gestures/ScrollEvent.swift";
    v73[1] = "min duration expired";
    *&v27 = 136315138;
    v83 = v27;
    v82 = xmmword_18E7316A0;
    do
    {
      v29 = *(v86 + 8 * v12);
      v16 = qword_1ED6F7FC8;

      if (v16 != -1)
      {
        swift_once();
      }

      if (byte_1ED6F9348 == 1)
      {
        if (qword_1ED6F7F70 != -1)
        {
          swift_once();
        }

        if (byte_1ED6F7EF1)
        {
LABEL_34:
          v42 = qword_1EAC8E570;
          if (qword_1EAC8D8F8 != -1)
          {
            swift_once();
            v42 = qword_1EAC8E570;
          }

          goto LABEL_38;
        }

        if (qword_1ED6F7F80 != -1)
        {
          swift_once();
        }

        explicit = atomic_load_explicit(qword_1ED6F7F88, memory_order_acquire);
        if (explicit)
        {
          if (explicit == 1)
          {
            goto LABEL_34;
          }

          if (explicit != 2)
          {
            __break(1u);
LABEL_50:
            swift_once();
LABEL_3:
            v19 = qword_1EAC8E570;
            goto LABEL_7;
          }
        }

        else
        {
          v31 = objc_allocWithZone(MEMORY[0x1E695E000]);
          v32 = sub_18E72AFC8();
          v33 = [v31 initWithSuiteName_];

          if (v33)
          {
            v90 = v29;
            v34 = sub_18E72AFC8();
            v35 = [v33 BOOLForKey_];

            if (v35)
            {
              v36 = 1;
            }

            else
            {
              v36 = 2;
            }

            atomic_store(v36, qword_1ED6F7F88);
            if (qword_1ED6F7F58 != -1)
            {
              swift_once();
            }

            v37 = 0;
            atomic_compare_exchange_strong_explicit(&byte_1ED6F7F60, &v37, 1u, memory_order_acquire, memory_order_acquire);
            if (!v37)
            {
              v38 = CFNotificationCenterGetDarwinNotifyCenter();
              v39 = v12;
              v40 = v18;
              v41 = sub_18E72AFC8();
              CFNotificationCenterAddObserver(v38, 0, sub_18E6BE368, v41, 0, CFNotificationSuspensionBehaviorHold);

              v18 = v40;
              v12 = v39;
            }

            v29 = v90;
            if (v35)
            {
              goto LABEL_34;
            }
          }
        }
      }

      v42 = qword_1ED6F7FA0;
      if (*(v18 + 3992) != -1)
      {
        swift_once();
        v42 = qword_1ED6F7FA0;
      }

LABEL_38:
      v43 = __swift_project_value_buffer(v8, v42);
      v88(v28, v43, v8);

      v44 = sub_18E72ADF8();
      v45 = sub_18E72B3E8();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v90 = v29;
        v47 = v46;
        v85 = swift_slowAlloc();
        v91[0] = v85;
        *v47 = v83;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FA90, &qword_18E731718);
        v48 = swift_allocObject();
        *(v48 + 16) = v82;
        *(v48 + 56) = MEMORY[0x1E69E6530];
        *(v48 + 64) = MEMORY[0x1E69E65A8];
        *(v48 + 32) = v12;
        v49 = AnyGestureNode.debugLabel.getter();
        v50 = v12;
        v51 = v24;
        v52 = v9;
        v53 = v8;
        v55 = v54;
        *(v48 + 96) = MEMORY[0x1E69E6158];
        *(v48 + 104) = sub_18E71CAFC();
        *(v48 + 72) = v49;
        *(v48 + 80) = v55;
        v8 = v53;
        v9 = v52;
        v24 = v51;
        v12 = v50;
        v56 = sub_18E72AFE8();
        v58 = sub_18E6C5E8C(v56, v57, v91);

        *(v47 + 4) = v58;
        v28 = v84;
        _os_log_impl(&dword_18E67C000, v44, v45, "%s", v47, 0xCu);
        v59 = v85;
        __swift_destroy_boxed_opaque_existential_0(v85);
        v18 = 0x1ED6F7000uLL;
        MEMORY[0x193AD25C0](v59, -1, -1);
        MEMORY[0x193AD25C0](v47, -1, -1);
      }

      else
      {
      }

      v24(v28, v8);
      ++v12;
    }

    while (v87 != v12);
  }

  if (sub_18E680FFC())
  {
    v61 = v77;
    v60 = v78;
    v62 = v24;
    if (qword_1EAC8D8F8 != -1)
    {
      swift_once();
    }

    v63 = qword_1EAC8E570;
  }

  else
  {
    v61 = v77;
    v60 = v78;
    v62 = v24;
    if (*(v18 + 3992) != -1)
    {
      swift_once();
    }

    v63 = qword_1ED6F7FA0;
  }

  v64 = __swift_project_value_buffer(v8, v63);
  v88(v60, v64, v8);

  v65 = sub_18E72ADF8();
  v66 = sub_18E72B3E8();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v91[0] = v68;
    *v67 = 136315138;
    v69 = sub_18E6BFADC(0x6F6973756C637845, 0xE90000000000006ELL, v74, v61);
    v71 = sub_18E6C5E8C(v69, v70, v91);

    *(v67 + 4) = v71;
    _os_log_impl(&dword_18E67C000, v65, v66, "%s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v68);
    MEMORY[0x193AD25C0](v68, -1, -1);
    MEMORY[0x193AD25C0](v67, -1, -1);
  }

  return v62(v60, v8);
}

uint64_t initializeBufferWithCopyOfBuffer for GestureComponentContext(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_18E69C160(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1[1];
  LOBYTE(v17) = *a1;
  LOBYTE(v18) = (v5 & 1) == 0;
  v6 = sub_18E69917C(v3, &v17, &v18);
  v7 = *(v6 + 16);
  if (!v7)
  {

    goto LABEL_7;
  }

  v16 = v3;
  v8 = sub_18E69C2FC(v7, 0);
  v9 = sub_18E69C3F0(&v17, v8 + 32, v7, v6);
  v10 = v17;

  sub_18E687EE8(v10);
  if (v9 == v7)
  {
    v17 = v8;
    v7 = 0;
    sub_18E69C384(&v17);

    if (*(v17 + 2))
    {
      v11 = v17[32];
      v12 = v17[33];
      v13 = v17[34];

      if (a2 != v16)
      {
        LOBYTE(v17) = v11;
        BYTE1(v17) = v12;
        BYTE2(v17) = v13;
        (*(*a2 + 288))(&v18, &v17, v16);
        v14 = v18;
        return v14 & 1;
      }

LABEL_7:
      v14 = 0;
      return v14 & 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);

  __break(1u);
  return result;
}

void *sub_18E69C2FC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5E0, &unk_18E730EB8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x5555555555555556) >> 64;
  v4[2] = a1;
  v4[3] = 2 * (v7 + (v7 >> 63));
  return result;
}

uint64_t sub_18E69C384(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_18E72659C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_18E69C504(v5);
  *a1 = v2;
  return result;
}

void *sub_18E69C3F0(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = (*(a4 + 48) + 3 * (v14 | (v9 << 6)));
      v16 = *v15;
      v17 = v15[1];
      LOBYTE(v15) = v15[2];
      *a2 = v16;
      a2[1] = v17;
      a2[2] = v15;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 3;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v19 = v9 + 1;
    }

    else
    {
      v19 = (63 - v6) >> 6;
    }

    v9 = v19 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_18E69C504(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_18E72B768();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_18E72B1F8();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_18E71AF04(v7, v8, a1, v4);
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
    return sub_18E69C68C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_18E69C624(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = *a1;
  if (*a1 == 1)
  {
    v3 = a2();
    v5 = *a1;
    *a1 = v3;

    sub_18E688410(v5);
  }

  sub_18E69CD28(v2);
  return v3;
}

uint64_t sub_18E69C68C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 3 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 3 * a3 + 2);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      if (v7 == 2 || (v10 = *(v9 - 1), v10 != 2) && ((v7 ^ 1 | v10) & 1) != 0)
      {
LABEL_4:
        ++a3;
        v5 += 3;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v11 = *v9;
      v12 = v9[1];
      result = *(v9 - 3);
      *v9 = result;
      v9[2] = *(v9 - 1);
      *(v9 - 2) = v12;
      *(v9 - 1) = v7;
      *(v9 - 3) = v11;
      v9 -= 3;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_18E69C730(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v2;
  v30 = v7;
  v8 = sub_18E6879CC(a1);
  v10 = v9;
  v11 = v7[2];
  v12 = (v9 & 1) == 0;
  type metadata accessor for AnyGestureNode();
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v7[3] >= v13)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *v3 = v7;
      if (v10)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

LABEL_23:
    sub_18E70CB74();
    v7 = v30;
    *v3 = v30;
    if (v10)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  sub_18E69C9F0(v13, isUniquelyReferenced_nonNull_native);
  v7 = v30;
  v14 = sub_18E6879CC(a1);
  if ((v10 & 1) != (v15 & 1))
  {
    goto LABEL_30;
  }

  v8 = v14;
  *v3 = v30;
  if ((v10 & 1) == 0)
  {
LABEL_8:
    if (MEMORY[0x1E69E7CC0] >> 62 && sub_18E72B518())
    {
      v16 = sub_18E6BF1D4(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v16 = MEMORY[0x1E69E7CD0];
    }

    sub_18E69CC8C(v8, a1, v16, v7);
  }

LABEL_11:

  v17 = sub_18E6880B0(&v30, a2);

  if ((v17 & 1) == 0)
  {
    return v17 & 1;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = sub_18E69CCD0;
  *(v18 + 24) = 0;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v30 = v3[1];
  v20 = v30;
  v22 = sub_18E6879CC(a2);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
    goto LABEL_28;
  }

  LOBYTE(v11) = v21;
  if (v20[3] >= v25)
  {
    if (v19)
    {
      v3[1] = v20;
      if (v21)
      {
LABEL_20:

        sub_18E6880B0(&v30, a1);

        return v17 & 1;
      }

LABEL_19:
      v28 = sub_18E69CCD0();
      sub_18E69CC8C(v22, a2, v28, v20);

      goto LABEL_20;
    }

LABEL_28:
    sub_18E70CB74();
    v20 = v30;
    v3[1] = v30;
    if (v11)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  sub_18E69C9F0(v25, v19);
  v20 = v30;
  v26 = sub_18E6879CC(a2);
  if ((v11 & 1) == (v27 & 1))
  {
    v22 = v26;
    v3[1] = v20;
    if (v11)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_30:
  result = sub_18E72B818();
  __break(1u);
  return result;
}

uint64_t sub_18E69C9F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5C8, &qword_18E730E88);
  v31 = v4;
  result = sub_18E72B728();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_18E72B888();
      v22 = sub_18E72AFA8();
      MEMORY[0x193AD1DF0](v22);
      result = sub_18E72B8E8();
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
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

unint64_t sub_18E69CC8C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

unint64_t sub_18E69CCD0()
{
  if (!(MEMORY[0x1E69E7CC0] >> 62) || !sub_18E72B518())
  {
    return MEMORY[0x1E69E7CD0];
  }

  v2 = MEMORY[0x1E69E7CC0];

  return sub_18E6BF1D4(v2);
}

uint64_t sub_18E69CD28(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_18E69CD38(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_18E69ECDC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_18E69D1A4(v6);
  return sub_18E72B638();
}

uint64_t sub_18E69CDB4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v37 = *a4;
    v4 = (*a4 + 8 * a3 - 8);
    v5 = result - a3;
LABEL_6:
    v31 = v4;
    v32 = a3;
    v6 = *(v37 + 8 * a3);
    v30 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = (*(*v6 + 192))();
      if (!v8)
      {
        break;
      }

      v10 = v8;
      v11 = v9;
      v12 = (*(*v7 + 192))();
      if (!v12)
      {

        v24 = swift_unknownObjectRelease();
        goto LABEL_16;
      }

      v14 = v12;
      v15 = v13;
      ObjectType = swift_getObjectType();
      v36 = v15;
      if (v10 == v14)
      {
        v33 = ObjectType;
        v17 = swift_getObjectType();
        v34 = *(v11 + 8);

        v18 = v34(v6, v17, v11);
        if (v19)
        {

          swift_unknownObjectRelease();
          result = swift_unknownObjectRelease();
LABEL_5:
          a3 = v32 + 1;
          v4 = v31 + 1;
          v5 = v30 - 1;
          if (v32 + 1 == a2)
          {
            return result;
          }

          goto LABEL_6;
        }

        v20 = v18;
        v21 = (*(v36 + 8))(v7, v33);
        v23 = v22;

        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        if ((v23 & 1) != 0 || v20 >= v21)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v35 = *(v15 + 24);
        v26 = ObjectType;

        LOBYTE(v26) = v35(v10, v11, v6, v26, v36);

        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        if ((v26 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

LABEL_19:
      if (!v37)
      {
        __break(1u);
        return result;
      }

      v27 = *v4;
      v6 = v4[1];
      *v4 = v6;
      v4[1] = v27;
      --v4;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

LABEL_16:
    v25 = (*(*v7 + 192))(v24);

    if (!v25)
    {
      goto LABEL_5;
    }

    result = swift_unknownObjectRelease();
    goto LABEL_19;
  }

  return result;
}

BOOL sub_18E69D0A4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  if (*(v2 + 32) == 1)
  {

    v7 = sub_18E6BEA28(a2, a1, v6, v5);

    return v7 & 1;
  }

  if (*(v6 + 16))
  {

    v9 = sub_18E6879CC(a2);
    if (v10)
    {
      v11 = *(*(v6 + 56) + 8 * v9);

      v12 = sub_18E68CE2C(a1, v11);

      return v12;
    }
  }

  return 0;
}

uint64_t sub_18E69D1A4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_18E72B768();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for AnyGestureNode();
        v6 = sub_18E72B1F8();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_18E71B540(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_18E69CDB4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_18E69D2D0()
{
  result = *v0;
  if (!*v0)
  {
    return result;
  }

  result = swift_isUniquelyReferenced_native();
  v2 = *v0;
  if ((result & 1) == 0)
  {
    if (!v2)
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v3 = sub_18E72ADC8();

    *v0 = v3;
    v2 = v3;
  }

  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_18E72AD68();

  sub_18E69E124(v4, v2 + 16, v2 + 32);
}

uint64_t sub_18E69D38C@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v3 = *result;
  if (*(*result + 16) && (result = sub_18E68EA90(), (v4 & 1) != 0) && (v5 = *(*(v3 + 56) + 8 * result), *(v5 + 16)) && (result = sub_18E68EA90(), (v6 & 1) != 0))
  {
    v7 = *(*(v5 + 56) + result);
  }

  else
  {
    v7 = 2;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_18E69D400(uint64_t a1, uint64_t a2, char a3)
{
  v6 = (*(*a1 + 168))(&v27);
  if ((v27 & 4) == 0)
  {
    (*(*a2 + 168))(&v27, v6);
    if ((v27 & 4) == 0 && (sub_18E69D78C(a2) & 1) == 0)
    {
      return 0;
    }
  }

  LOBYTE(v27) = a3;
  LOBYTE(v28) = 0;
  v7 = sub_18E69917C(a1, &v27, &v28);
  v8 = *(v7 + 16);
  v26 = a2;
  if (!v8)
  {

    goto LABEL_14;
  }

  v24 = a3;
  v9 = sub_18E69C2FC(v8, 0);
  v10 = sub_18E69C3F0(&v27, v9 + 32, v8, v7);
  v11 = v27;

  sub_18E687EE8(v11);
  if (v10 != v8)
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v27 = v9;
  v10 = 0;
  sub_18E69C384(&v27);

  a2 = v26;
  if (!*(v27 + 2))
  {
    goto LABEL_28;
  }

  v12 = v27[32];
  v13 = v27[33];
  v14 = v27[34];

  if (v26 == a1 || (LOBYTE(v27) = v12, BYTE1(v27) = v13, BYTE2(v27) = v14, (*(*v26 + 288))(&v28, &v27, a1), v28 == 2))
  {
    LODWORD(v8) = 0;
    a3 = v24;
  }

  else
  {
    a3 = v24;
    if (v28)
    {
      return 0;
    }

    LODWORD(v8) = 1;
  }

LABEL_14:
  LOBYTE(v27) = a3;
  LOBYTE(v28) = 1;
  v15 = sub_18E69917C(a2, &v27, &v28);
  v16 = *(v15 + 16);
  if (!v16)
  {

    goto LABEL_23;
  }

  v25 = v8;
  v17 = sub_18E69C2FC(v16, 0);
  v10 = sub_18E69C3F0(&v27, v17 + 32, v16, v15);
  v18 = v27;

  sub_18E687EE8(v18);
  if (v10 != v16)
  {
    goto LABEL_29;
  }

  v27 = v17;
  v10 = 0;
  sub_18E69C384(&v27);

  LODWORD(v8) = v25;
  if (*(v27 + 2))
  {
    v19 = v27[32];
    v20 = v27[33];
    v21 = v27[34];

    if (a1 != v26)
    {
      LOBYTE(v27) = v19;
      BYTE1(v27) = v20;
      BYTE2(v27) = v21;
      (*(*a1 + 288))(&v28, &v27, v26);
      if (v28 != 2)
      {
        if (v28)
        {
          return 0;
        }

        v23 = 1;
        return v8 | v23;
      }
    }

LABEL_23:
    v23 = 0;
    return v8 | v23;
  }

LABEL_30:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_18E69D78C(uint64_t a1)
{
  v3 = (*(*v1 + 192))();
  if (v3)
  {
    v5 = v3;
    v6 = v4;
    v7 = (*(*a1 + 192))();
    if (v7)
    {
      v9 = v7;
      v10 = v8;
      ObjectType = swift_getObjectType();
      if (v5 == v9 || (v12 = ObjectType, v13 = swift_getObjectType(), ((*(v6 + 16))(v9, v10, a1, v13, v6) & 1) != 0))
      {
        v14 = 1;
      }

      else
      {
        v14 = (*(v10 + 16))(v5, v6, v1, v12, v10);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_18E69D8D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5D0, &unk_18E730E90);
  v30 = v4;
  result = sub_18E72B728();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_18E72B888();
      sub_18E72B8C8();
      result = sub_18E72B8E8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_18E69DB7C()
{
  result = qword_1ED6F7EF8;
  if (!qword_1ED6F7EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6F7EF8);
  }

  return result;
}

unint64_t sub_18E69DBD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E8F0, &qword_18E72EA08);
    v3 = sub_18E72B738();
    for (i = (a1 + 36); ; i += 8)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_18E68EA90();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_18E69DCB0(unint64_t result, int a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
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

unint64_t sub_18E69DCF4(char a1, int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_18E68EA90();
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_18E691334();
    result = v17;
    goto LABEL_8;
  }

  sub_18E69DE20(v14, a3 & 1);
  result = sub_18E68EA90();
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + result) = a1 & 1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 4 * result) = a2;
    *(v19[7] + result) = a1 & 1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_18E72B818();
  __break(1u);
  return result;
}

uint64_t sub_18E69DE20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E8F0, &qword_18E72EA08);
  result = sub_18E72B728();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + v19);
      sub_18E72B888();
      sub_18E72B8C8();
      result = sub_18E72B8E8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_18E69E0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_18E6944E0();
  result = sub_18E72B428();
  *a4 = result;
  return result;
}

uint64_t sub_18E69E13C(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v40 = a1;
  v7 = *(a2 + 16);
  v8 = type metadata accessor for GesturePhase(255, v7, a3, a4);
  v9 = sub_18E72B438();
  v38 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v35 - v14;
  v16 = *(v8 - 8);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v35 - v20;
  v22 = *(v16 + 16);
  v39 = *(a2 + 28);
  v22(&v35 - v20, v5 + v39, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v37 = v9;
  if (EnumCaseMultiPayload)
  {
    v24 = v40;
    (*(v16 + 8))(v21, v8);
  }

  else
  {
    v27 = *(swift_getTupleTypeMetadata2() + 48);
    v36 = v5;
    v28 = *&v21[v27];
    (*(*(v7 - 8) + 8))(v21, v7);
    v24 = v40;
    v29 = v28 == v40;
    v5 = v36;
    if (v29)
    {
      return 0;
    }
  }

  v31 = type metadata accessor for RingBuffer(0, v8, v25, v26);
  sub_18E69E4DC(v31, v12);
  v32 = *(v16 + 48);
  if (v32(v12, 1, v8) == 1)
  {
    v33 = *(v38 + 8);
    v34 = v37;
    v33(v12);
    (*(v16 + 56))(v15, 1, 1, v8);
LABEL_12:
    result = (v33)(v15, v34);
    __break(1u);
    return result;
  }

  sub_18E69E590(v24, v8, v15);
  (*(v16 + 8))(v12, v8);
  if (v32(v15, 1, v8) == 1)
  {
    v34 = v37;
    v33 = *(v38 + 8);
    goto LABEL_12;
  }

  (*(v16 + 32))(v19, v15, v8);
  (*(v16 + 40))(v5 + v39, v19, v8);
  return 1;
}

uint64_t sub_18E69E4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getWitnessTable();
  if (sub_18E72B378())
  {
    v4 = 1;
  }

  else
  {
    sub_18E68BD30(0, a1);
    v4 = 0;
  }

  v5 = *(*(*(a1 + 16) - 8) + 56);

  return v5(a2, v4, 1);
}

uint64_t sub_18E69E590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v9, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      (*(v6 + 8))(v8, a2);
    }

    v13 = 1;
  }

  else
  {
    v11 = *(a2 + 16);
    v12 = *(swift_getTupleTypeMetadata2() + 48);
    (*(*(v11 - 8) + 32))(a3, v8, v11);
    *(a3 + v12) = v4;
    swift_storeEnumTagMultiPayload();
    v13 = 0;
  }

  return (*(v6 + 56))(a3, v13, 1, a2);
}

unint64_t sub_18E69E760(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = a2;
    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAC8DD60, &unk_18E7318B0);
    v6 = sub_18E72B1F8();
    v7 = v6;
    *(v6 + 16) = a3;
    *(v6 + 32) = v5;
    *(v6 + 40) = v4;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = (v6 + 56);
      do
      {
        sub_18E6AA03C(v5, v4);
        *(v9 - 1) = v5;
        *v9 = v4;
        v9 += 16;
        --v8;
      }

      while (v8);
    }

    sub_18E6AA03C(v5, v4);
    return v7;
  }

  return result;
}

void sub_18E69E818(unint64_t a1, char a2)
{
  if (a2 == 3)
  {
    sub_18E683B98(a1);
  }
}

uint64_t sub_18E69E83C(char a1, uint64_t a2)
{
  if (a2 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2 + 63;
  }

  if ((a2 - (v7 & 0xFFFFFFFFFFFFFFC0)) < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = a2;
  v5 = v7 >> 6;
  v6 = 1 << (a2 - (v7 & 0xC0u));
  v2 = *(v3 + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (a1)
  {
    if (result)
    {
      if (v4 >= -63)
      {
        goto LABEL_8;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      result = sub_18E6F0710(v2);
      v2 = result;
      if (v4 < -63)
      {
        goto LABEL_19;
      }

      goto LABEL_12;
    }

LABEL_16:
    result = sub_18E6F0710(v2);
    v2 = result;
    if (v4 >= -63)
    {
LABEL_8:
      if (v5 < *(v2 + 16))
      {
        *(v2 + 8 * v5 + 32) |= v6;
LABEL_14:
        *(v3 + 8) = v2;
        return result;
      }

      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if ((result & 1) == 0)
  {
    goto LABEL_18;
  }

  if (v4 < -63)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_12:
  if (v5 < *(v2 + 16))
  {
    *(v2 + 8 * v5 + 32) &= ~v6;
    goto LABEL_14;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_18E69E93C(uint64_t a1)
{
  v3 = sub_18E72AE18();
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(*v1 + 296))(&v6, v4);
  v5 = v6;
  if (v7 == 3)
  {

    sub_18E69E818(v5, 3);
  }

  else
  {
    sub_18E69E818(v6, v7);
    v6 = *(a1 + 16);
    (*(*v1 + 344))(&v6, 0);
  }
}

uint64_t sub_18E69ECF0(NSObject *a1)
{
  v2 = v1;
  v4 = sub_18E72AE18();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v5);
  v11 = &v58 - v10;
  if (*(v1 + 144))
  {
    return result;
  }

  v13 = (v1 + 152);
  v12 = *(v1 + 152);
  isa = a1[2].isa;
  v15 = *(v12 + 16);
  v16 = (v12 + 32);
  while (v15)
  {
    v17 = *v16++;
    --v15;
    if (v17 == isa)
    {
      return result;
    }
  }

  v64 = v9;
  v19 = (v1 + 128);
  v18 = *(v1 + 128);

  v20 = sub_18E68CE2C(a1, v18);
  v21 = v64;

  if (!v20)
  {
    return result;
  }

  if (sub_18E680FFC())
  {
    if (qword_1EAC8D8F8 != -1)
    {
      swift_once();
    }

    v22 = qword_1EAC8E570;
  }

  else
  {
    if (qword_1ED6F7F98 != -1)
    {
      swift_once();
    }

    v22 = qword_1ED6F7FA0;
  }

  v23 = __swift_project_value_buffer(v4, v22);
  v62 = *(v21 + 16);
  v63 = v21 + 16;
  v62(v11, v23, v4);

  v24 = sub_18E72ADF8();
  v25 = sub_18E72B3E8();

  LODWORD(v61) = v25;
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v59 = v26;
    v60 = swift_slowAlloc();
    v68 = v60;
    *v26 = 136315138;
    v66 = 0;
    v67 = 0xE000000000000000;
    v58 = v24;
    sub_18E72B5C8();

    v66 = 0xD000000000000015;
    v67 = 0x800000018E73AA00;
    v65 = isa;
    v27 = sub_18E72B778();
    MEMORY[0x193AD15C0](v27);

    MEMORY[0x193AD15C0](41, 0xE100000000000000);
    v28 = sub_18E6C5E8C(v66, v67, &v68);

    v29 = v59;
    *(v59 + 1) = v28;
    v30 = v61;
    v61 = v7;
    v31 = v58;
    _os_log_impl(&dword_18E67C000, v58, v30, "Update began, source: %s", v29, 0xCu);
    v32 = v60;
    __swift_destroy_boxed_opaque_existential_0(v60);
    MEMORY[0x193AD25C0](v32, -1, -1);
    MEMORY[0x193AD25C0](v29, -1, -1);

    v7 = v61;
  }

  else
  {
  }

  v33 = *(v64 + 8);
  v33(v11, v4);
  v34 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v34;
  v61 = v33;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = sub_18E6EDB48(0, *(v34 + 16) + 1, 1, v34);
    v34 = isUniquelyReferenced_nonNull_native;
    *v13 = isUniquelyReferenced_nonNull_native;
  }

  v37 = *(v34 + 16);
  v36 = *(v34 + 24);
  if (v37 >= v36 >> 1)
  {
    isUniquelyReferenced_nonNull_native = sub_18E6EDB48((v36 > 1), v37 + 1, 1, v34);
    v34 = isUniquelyReferenced_nonNull_native;
  }

  *(v34 + 16) = v37 + 1;
  *(v34 + 4 * v37 + 32) = isa;
  v2[19].isa = v34;
  while (1)
  {
    v39 = *v19;
    if ((*v19 & 0xC000000000000001) == 0)
    {
      break;
    }

    v40 = sub_18E72B558();

    if ((v40 & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_33:
    v46 = (*(a1->isa + 38))(&v68, isUniquelyReferenced_nonNull_native);
    v47 = v69;
    if (v69 == 255)
    {
      (*(a1->isa + 37))(&v66, v46);
      v48 = v66;
      v47 = v67;
    }

    else
    {
      v48 = v68;
      v66 = v68;
    }

    v49 = v47 & 0xFE;
    sub_18E69E818(v48, v47);
    if (v49 == 2)
    {
      v50 = sub_18E687600(a1);
      sub_18E687F10(v50);
    }

    sub_18E689A70(a1);

    MEMORY[0x1EEE9AC00](v38);
    *(&v58 - 2) = v2;
    *(&v58 - 1) = a1;
    isUniquelyReferenced_nonNull_native = (*(a1->isa + 45))(sub_18E69C5FC);
  }

  if (!*(v39 + 16))
  {
    goto LABEL_39;
  }

  sub_18E72B888();

  v41 = sub_18E72AFA8();
  MEMORY[0x193AD1DF0](v41);
  v42 = sub_18E72B8E8();
  v43 = -1 << *(v39 + 32);
  v44 = v42 & ~v43;
  if ((*(v39 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
  {
    v45 = ~v43;
    while (*(*(v39 + 48) + 8 * v44) != a1)
    {
      v44 = (v44 + 1) & v45;
      if (((*(v39 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    goto LABEL_33;
  }

LABEL_38:

LABEL_39:
  v51 = *(*v13 + 16);
  if (v51)
  {
    isUniquelyReferenced_nonNull_native = 0;
    while (*(*v13 + 32 + 4 * isUniquelyReferenced_nonNull_native) != isa)
    {
      if (v51 == ++isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_43;
      }
    }
  }

  else
  {
LABEL_43:
    __break(1u);
  }

  sub_18E6EE430(isUniquelyReferenced_nonNull_native);
  if (sub_18E680FFC())
  {
    v52 = v62;
    if (qword_1EAC8D8F8 != -1)
    {
      swift_once();
    }

    v53 = qword_1EAC8E570;
  }

  else
  {
    v52 = v62;
    if (qword_1ED6F7F98 != -1)
    {
      swift_once();
    }

    v53 = qword_1ED6F7FA0;
  }

  v54 = __swift_project_value_buffer(v4, v53);
  v52(v7, v54, v4);
  v55 = sub_18E72ADF8();
  v56 = sub_18E72B3E8();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_18E67C000, v55, v56, "Update ended", v57, 2u);
    MEMORY[0x193AD25C0](v57, -1, -1);
  }

  return (v61)(v7, v4);
}

uint64_t sub_18E69F494(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    result = swift_unknownObjectRelease();
    if (v5 == v2)
    {
      return result;
    }
  }

  if (swift_unknownObjectUnownedLoadStrong())
  {

    return swift_unknownObjectRelease();
  }

  sub_18E6880B0(&v14, a1);

  v7 = *(v2 + 64);
  if ((v7 & 0xC000000000000001) != 0)
  {

    v8 = sub_18E72B518();

    if (v8 != 1)
    {
      goto LABEL_13;
    }

LABEL_11:
    if (*(v2 + 204) == 1)
    {
      v9 = *(v2 + 184);
      v10 = *(v2 + 192);
      __swift_project_boxed_opaque_existential_1((v2 + 160), v9);
      swift_unownedRetainStrong();
      swift_unownedRetain();
      swift_unownedRetain();

      v11 = swift_allocObject();
      *(v11 + 16) = v2;
      v12 = (*(v10 + 8))(sub_18E6908DC, v11, v9, v10);

      swift_unownedRelease();
      *(v2 + 200) = v12;
      *(v2 + 204) = 0;
    }

    goto LABEL_13;
  }

  if (*(v7 + 16) == 1)
  {
    goto LABEL_11;
  }

LABEL_13:
  sub_18E69379C(v2 + 72, &v14);
  (*(*a1 + 224))(&v14);
  a1[18] = &off_1F01A7450;
  v13 = swift_unknownObjectUnownedAssign();
  (*(*a1 + 296))(&v14, v13);
  if (v15 == 4 && !v14)
  {
    return (*(*a1 + 320))();
  }

  sub_18E69E818(v14, v15);
  v14 = 0xC000000000000004;
  return (*(*a1 + 344))(&v14, 0);
}

uint64_t sub_18E69F77C()
{
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18E69F7B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_18E69F810(uint64_t a1, unint64_t a2)
{
  v8 = v3[3];
  v9 = *(v8 + 16);
  if (v9 != *v3)
  {
    __break(1u);
    goto LABEL_27;
  }

  v2 = v3;
  v5 = v3[4];
  if (*(v5 + 2) != v9)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v6 = a1;
  v10 = a1 * v9;
  if ((a1 * v9) >> 64 != (a1 * v9) >> 63)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v4 = a2;
  v11 = v10 + a2;
  if (__OFADD__(v10, a2))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v12 = v3[1];
  v13 = v3[2];
  ++v3;
  v7 = sub_18E69F9E8(v11, v12, v13);
  if ((v7 & 1) == 0)
  {
    return v7 & 1;
  }

  sub_18E69E83C(0, v11);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_30:
  v5 = sub_18E6F0724(v5);
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

LABEL_8:
  if (*(v5 + 2) <= v6)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v3 = v5 + 32;
  v14 = *&v5[8 * v6 + 32];
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v3[v6] = v16;
  v2[4] = v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_34:
  result = sub_18E6F0724(v8);
  v8 = result;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

LABEL_12:
  v18 = *(v8 + 16);
  if (v18 <= v4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v19 = v8 + 32;
  v20 = *(v8 + 32 + 8 * v4);
  v15 = __OFSUB__(v20, 1);
  v21 = v20 - 1;
  if (v15)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  *(v19 + 8 * v4) = v21;
  v2[3] = v8;
  if (v18 <= v6)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (*(v19 + 8 * v6))
  {
    goto LABEL_18;
  }

  if (*(v5 + 2) <= v6)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v3[v6])
  {
LABEL_18:
    if (*(v19 + 8 * v4))
    {
      return v7 & 1;
    }

LABEL_19:
    if (*(v5 + 2) > v4)
    {
      if (v3[v4] >= 1)
      {
        v22 = v2[5];
        v15 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (!v15)
        {
          v2[5] = v23;
          return v7 & 1;
        }

        goto LABEL_41;
      }

      return v7 & 1;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v24 = v2[5];
  v15 = __OFSUB__(v24, 1);
  v25 = v24 - 1;
  if (!v15)
  {
    v2[5] = v25;
    if (*(v19 + 8 * v4))
    {
      return v7 & 1;
    }

    goto LABEL_19;
  }

LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_18E69F9E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= 0)
  {
    v3 = result;
  }

  else
  {
    v3 = result + 63;
  }

  v4 = result - (v3 & 0xC0);
  if ((result - (v3 & 0xFFFFFFFFFFFFFFC0)) < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (result < -63)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = v3 >> 6;
  if (v5 < *(a3 + 16))
  {
    return (*(a3 + 8 * v5 + 32) >> v4) & 1;
  }

LABEL_10:
  __break(1u);
  return result;
}

void *sub_18E69FA38(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E5D0, &qword_18E72E030);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_18E69FABC(void *a1, uint64_t a2)
{
  v3 = a2;
  v5 = sub_18E69FB8C(a1, a2, *v2, *(v2 + 16));
  v6 = v5[2];
  if (v6)
  {
    v7 = 0;
    v8 = v5 + 4;
    do
    {
      v10 = *v8++;
      v9 = v10;
      if (v10 != a1)
      {
        if ((v3 | 2) == 2)
        {
          v7 |= sub_18E69F810(v9, a1);
        }

        if ((v3 - 1) <= 1u)
        {
          v7 |= sub_18E69F810(a1, v9);
        }
      }

      --v6;
    }

    while (v6);
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

void *sub_18E69FB8C(void *result, char a2, uint64_t a3, void *a4)
{
  v32 = MEMORY[0x1E69E7CD0];
  if (a3 < 0)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    return result;
  }

  v5 = a3;
  v7 = result;
  if (!a3)
  {
    goto LABEL_52;
  }

  v8 = sub_18E69FA38(a3, 0);
  result = sub_18E69FEB4(&v31, (v8 + 4), v5, 0, v5);
  if (result != v5)
  {
    goto LABEL_76;
  }

  v9 = v8[2];
  if (!v9)
  {
    goto LABEL_53;
  }

LABEL_5:
  v10 = v7 * v5;
  v11 = a4 + 4;
  v12 = 4;
  do
  {
    v13 = v8[v12];
    if (v13 == v7)
    {
      goto LABEL_7;
    }

    if (!a2)
    {
      v18 = v13 * v5;
      if ((v13 * v5) >> 64 != (v13 * v5) >> 63)
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
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
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v19 = v18 + v7;
      if (__OFADD__(v18, v7))
      {
        goto LABEL_61;
      }

      if (v19 >= 0)
      {
        v20 = v18 + v7;
      }

      else
      {
        v20 = v19 + 63;
      }

      v16 = v19 - (v20 & 0xC0);
      if ((v19 - (v20 & 0xFFFFFFFFFFFFFFC0)) < 0)
      {
        goto LABEL_63;
      }

      if (v19 < -63)
      {
        goto LABEL_65;
      }

      v17 = v20 >> 6;
      if (v20 >> 6 >= a4[2])
      {
        goto LABEL_68;
      }

LABEL_28:
      if ((v11[v17] & (1 << v16)) != 0)
      {
        goto LABEL_6;
      }

      goto LABEL_7;
    }

    if (a2 == 1)
    {
      if ((v7 * v5) >> 64 != (v7 * v5) >> 63)
      {
        goto LABEL_58;
      }

      v14 = v10 + v13;
      if (__OFADD__(v10, v13))
      {
        goto LABEL_60;
      }

      if (v14 >= 0)
      {
        v15 = v10 + v13;
      }

      else
      {
        v15 = v14 + 63;
      }

      v16 = v14 - (v15 & 0xC0);
      if ((v14 - (v15 & 0xFFFFFFFFFFFFFFC0)) < 0)
      {
        goto LABEL_64;
      }

      if (v14 < -63)
      {
        goto LABEL_66;
      }

      v17 = v15 >> 6;
      if (v15 >> 6 >= a4[2])
      {
        goto LABEL_70;
      }

      goto LABEL_28;
    }

    if ((v7 * v5) >> 64 != (v7 * v5) >> 63)
    {
      goto LABEL_57;
    }

    v21 = v10 + v13;
    if (__OFADD__(v10, v13))
    {
      goto LABEL_59;
    }

    if (v21 >= 0)
    {
      v22 = v10 + v13;
    }

    else
    {
      v22 = v21 + 63;
    }

    v23 = v21 - (v22 & 0xC0);
    if ((v21 - (v22 & 0xFFFFFFFFFFFFFFC0)) < 0)
    {
      goto LABEL_62;
    }

    if (v21 < -63)
    {
      goto LABEL_67;
    }

    v24 = v22 >> 6;
    v25 = a4[2];
    if (v24 >= v25)
    {
      goto LABEL_69;
    }

    if ((v11[v24] & (1 << v23)) != 0)
    {
      goto LABEL_6;
    }

    v26 = v13 * v5;
    if ((v13 * v5) >> 64 != (v13 * v5) >> 63)
    {
      goto LABEL_71;
    }

    v27 = v26 + v7;
    if (__OFADD__(v26, v7))
    {
      goto LABEL_72;
    }

    if (v27 >= 0)
    {
      v28 = v26 + v7;
    }

    else
    {
      v28 = v27 + 63;
    }

    if ((v27 - (v28 & 0xFFFFFFFFFFFFFFC0)) < 0)
    {
      goto LABEL_73;
    }

    if (v27 < -63 || v28 >> 6 >= v25)
    {
      goto LABEL_74;
    }

    if ((v11[v28 >> 6] >> (v27 - (v28 & 0xC0u))))
    {
LABEL_6:
      result = sub_18E69FF50(&v31, v13);
    }

LABEL_7:
    ++v12;
    --v9;
  }

  while (v9);

  v29 = v32;
  v30 = *(v32 + 16);
  if (v30)
  {
    while (1)
    {
      a4 = sub_18E69FA38(v30, 0);
      v5 = sub_18E6A0340(&v31, a4 + 4, v30, v29);
      result = sub_18E687EE8(v31);
      if (v5 == v30)
      {
        break;
      }

      __break(1u);
LABEL_52:
      v8 = MEMORY[0x1E69E7CC0];
      v9 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v9)
      {
        goto LABEL_5;
      }

LABEL_53:

      v29 = MEMORY[0x1E69E7CD0];
      v30 = *(MEMORY[0x1E69E7CD0] + 16);
      if (!v30)
      {
        goto LABEL_54;
      }
    }
  }

  else
  {
LABEL_54:

    return MEMORY[0x1E69E7CC0];
  }

  return a4;
}

uint64_t *sub_18E69FEB4(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18E69FF50(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_18E72B878();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_18E6A0220(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_18E6A0030(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E730, &qword_18E72E4B0);
  result = sub_18E72B588();
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
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_18E72B878();
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

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_18E6A0220(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_18E6C6914(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_18E6C7034();
      a2 = v7;
      goto LABEL_12;
    }

    sub_18E6A0030(v5 + 1);
  }

  v8 = *v3;
  result = sub_18E72B878();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_18E72B808();
  __break(1u);
  return result;
}

void *sub_18E6A0340(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for Timestamp(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Timestamp(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void *sub_18E6A048C@<X0>(void *a1@<X8>)
{
  result = GFGestureNode.traits.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_18E6A04C8(uint64_t *a1)
{
  v2 = *a1;

  return GFGestureNode.traits.setter(&v2);
}

uint64_t sub_18E6A051C@<X0>(void *a1@<X8>)
{
  result = GFGestureNode.options.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_18E6A059C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18E6A0614()
{
  sub_18E682A3C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18E6A065C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t *_s8Gestures22GestureTraitCollectionVwCP_0(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

void *sub_18E6A06C8@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_18E6A06D4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E6A071C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for EventSource(255, *a1, *(v4 + 8), a4);
  WitnessTable = swift_getWitnessTable();
  v8 = type metadata accessor for DynamicCombinerComponent(255, v5, WitnessTable, v7);
  v9 = swift_getWitnessTable();
  v11 = type metadata accessor for TimeoutComponent(255, v8, v9, v10);
  v12 = swift_getWitnessTable();
  v13 = sub_18E72B278();
  type metadata accessor for ExpirationRecord(255, v13, v14, v15);
  v16 = swift_getWitnessTable();
  v17 = type metadata accessor for ExpirationComponent(255, v11, v12, v16);
  v18 = swift_getWitnessTable();
  v20 = type metadata accessor for DurationGate(255, v17, v18, v19);
  v21 = swift_getWitnessTable();
  v22 = type metadata accessor for ExpirationComponent(255, v20, v21, v16);
  v23 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v25 = *(v4 + 16);
  v46 = v22;
  v47 = v23;
  v48 = v24;
  v49 = v25;
  v26 = type metadata accessor for SeparationDistanceGate(255, &v46);
  type metadata accessor for CGPoint(255);
  v28 = v27;
  v29 = swift_getWitnessTable();
  v30 = type metadata accessor for MapComponent(255, v26, v28, v29);
  v31 = swift_getWitnessTable();
  v32 = type metadata accessor for ValueTracker(255, v30, v28, v31);
  v33 = swift_getWitnessTable();
  v46 = v32;
  v47 = v28;
  v48 = v33;
  v49 = &protocol witness table for CGPoint;
  v34 = type metadata accessor for MovementGate(255, &v46);
  v35 = swift_getWitnessTable();
  v37 = type metadata accessor for RepeatComponent(255, v34, v35, v36);
  v38 = swift_getWitnessTable();
  v39 = sub_18E6B04D4();
  v40 = type metadata accessor for ExpirationComponent(255, v37, v38, v39);
  v41 = swift_getWitnessTable();
  v42 = type metadata accessor for MapComponent(255, v40, v28, v41);
  v43 = swift_getWitnessTable();
  type metadata accessor for DiscreteGate(255, v42, v43, v44);
  return swift_getWitnessTable();
}

uint64_t sub_18E6A0A68(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E6A0AA4@<X0>(uint64_t *a2@<X8>)
{
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_18E6A0AD8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18E6A0B10()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_18E6A0B48(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18E6A0B68(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

float64x2_t sub_18E6A0BB8@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X8>, double a3@<D0>)
{
  result = vmulq_n_f64(*a1, a3);
  *a2 = result;
  return result;
}

uint64_t sub_18E6A0BC8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_18E6A0BD8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
}

uint64_t sub_18E6A0C2C(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 40) = *a1;
}

void *sub_18E6A0C70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 168))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_18E6A0CCC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 176))(&v4);
}

uint64_t sub_18E6A0D24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_18E6A0D70(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(**a2 + 200);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_18E6A0DD4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 192);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_18E6A0E38(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(v6 + 8);
  v8 = type metadata accessor for EventSource(255, *a1, v7, a4);
  WitnessTable = swift_getWitnessTable();
  v11 = type metadata accessor for DynamicCombinerComponent(255, v8, WitnessTable, v10);
  v12 = swift_getWitnessTable();
  v14 = type metadata accessor for TimeoutComponent(255, v11, v12, v13);
  v15 = swift_getWitnessTable();
  v16 = sub_18E72B278();
  type metadata accessor for ExpirationRecord(255, v16, v17, v18);
  v19 = swift_getWitnessTable();
  v20 = type metadata accessor for ExpirationComponent(255, v14, v15, v19);
  v21 = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  v23 = *(v6 + 16);
  v44 = v20;
  v45 = v21;
  v46 = v22;
  v47 = v23;
  v24 = type metadata accessor for SeparationDistanceGate(255, &v44);
  v25 = swift_getWitnessTable();
  v26 = *(v7 + 8);
  v44 = v24;
  v45 = v25;
  v46 = v22;
  v47 = v23;
  v48 = v26;
  v27 = type metadata accessor for StationaryLocationFilter(255, &v44);
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8E7A0, &qword_18E72E760);
  v29 = swift_getWitnessTable();
  v49[0] = type metadata accessor for MapComponent(255, v27, v28, v29);
  v49[1] = type metadata accessor for ScrollPositionListener(255, v4, v5, v30);
  v43[0] = swift_getWitnessTable();
  v43[1] = &off_1EE4C9C68;
  v44 = 2;
  v45 = v49;
  v46 = v28;
  v47 = v43;
  v31 = type metadata accessor for CombinerComponent(255, &v44);
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8E7A8, &qword_18E72E768);
  v33 = swift_getWitnessTable();
  v34 = type metadata accessor for ReduceComponent(255, v31, v32, v33);
  v35 = swift_getWitnessTable();
  v36 = sub_18E6CB950(&qword_1EAC8E7B0, &unk_18E72E9DC);
  v37 = type metadata accessor for ThresholdComponent(255, v34, v35, v36);
  v38 = swift_getWitnessTable();
  v39 = sub_18E6CB950(&qword_1EAC8E7B8, &unk_18E72E9C0);
  v44 = v37;
  v45 = v38;
  v46 = v39;
  v47 = &off_1F01A6538;
  v40 = type metadata accessor for VelocityComponent(255, &v44);
  v41 = swift_getWitnessTable();
  type metadata accessor for MapComponent(255, v40, &type metadata for PanComponentValue, v41);
  return swift_getWitnessTable();
}

__n128 sub_18E6A1204@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_18E6A1210(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E6A124C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for EventSource(255, *a1, *(v4 + 8), a4);
  WitnessTable = swift_getWitnessTable();
  v8 = type metadata accessor for DynamicCombinerComponent(255, v5, WitnessTable, v7);
  v9 = swift_getWitnessTable();
  v11 = type metadata accessor for TimeoutComponent(255, v8, v9, v10);
  v12 = swift_getWitnessTable();
  v13 = sub_18E72B278();
  type metadata accessor for ExpirationRecord(255, v13, v14, v15);
  v16 = swift_getWitnessTable();
  v17 = type metadata accessor for ExpirationComponent(255, v11, v12, v16);
  v18 = swift_getWitnessTable();
  v20 = type metadata accessor for DurationGate(255, v17, v18, v19);
  v21 = swift_getWitnessTable();
  v22 = type metadata accessor for ExpirationComponent(255, v20, v21, v16);
  v23 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v25 = *(v4 + 16);
  v43 = v22;
  v44 = v23;
  v45 = v24;
  v46 = v25;
  v26 = type metadata accessor for SeparationDistanceGate(255, &v43);
  type metadata accessor for CGPoint(255);
  v28 = v27;
  v29 = swift_getWitnessTable();
  v30 = type metadata accessor for MapComponent(255, v26, v28, v29);
  v31 = swift_getWitnessTable();
  v32 = type metadata accessor for ValueTracker(255, v30, v28, v31);
  v33 = swift_getWitnessTable();
  v43 = v32;
  v44 = v28;
  v45 = v33;
  v46 = &protocol witness table for CGPoint;
  v34 = type metadata accessor for MovementGate(255, &v43);
  v35 = swift_getWitnessTable();
  v37 = type metadata accessor for RepeatComponent(255, v34, v35, v36);
  v38 = swift_getWitnessTable();
  v39 = sub_18E6B04D4();
  v40 = type metadata accessor for ExpirationComponent(255, v37, v38, v39);
  v41 = swift_getWitnessTable();
  type metadata accessor for MapComponent(255, v40, v28, v41);
  return swift_getWitnessTable();
}

uint64_t sub_18E6A1568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 16);
  if (v7 == 1)
  {
    TupleTypeMetadata = type metadata accessor for CombinerElement(0, *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL), *(*(a3 + 40) & 0xFFFFFFFFFFFFFFFELL), a4);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v7)
    {
      v11 = (*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
      v12 = (*(a3 + 40) & 0xFFFFFFFFFFFFFFFELL);
      v13 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v14 = v7;
      do
      {
        v16 = *v11++;
        v15 = v16;
        v17 = *v12++;
        *v13++ = type metadata accessor for CombinerElement(255, v15, v17, v9);
        --v14;
      }

      while (v14);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v18 = *(TupleTypeMetadata - 8);
  if (*(v18 + 84) == a2)
  {
    return (*(v18 + 48))(a1, a2);
  }

  v20 = *(a1 + *(a3 + 52) + 32);
  if (v20 >= 0xFFFFFFFF)
  {
    LODWORD(v20) = -1;
  }

  return (v20 + 1);
}

uint64_t sub_18E6A16DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  if (v8 == 1)
  {
    result = type metadata accessor for CombinerElement(0, *(*(a4 + 24) & 0xFFFFFFFFFFFFFFFELL), *(*(a4 + 40) & 0xFFFFFFFFFFFFFFFELL), a4);
    v10 = result;
  }

  else
  {
    v21[1] = v21;
    MEMORY[0x1EEE9AC00](a1);
    if (v8)
    {
      v13 = (*(a4 + 24) & 0xFFFFFFFFFFFFFFFELL);
      v14 = (*(a4 + 40) & 0xFFFFFFFFFFFFFFFELL);
      v15 = (v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      v16 = v8;
      do
      {
        v18 = *v13++;
        v17 = v18;
        v19 = *v14++;
        *v15++ = type metadata accessor for CombinerElement(255, v17, v19, v11);
        --v16;
      }

      while (v16);
    }

    result = swift_getTupleTypeMetadata();
    v10 = result;
  }

  v20 = *(v10 - 8);
  if (*(v20 + 84) == a3)
  {
    return (*(v20 + 56))(a1, a2, a2);
  }

  *(a1 + *(a4 + 52) + 32) = (a2 - 1);
  return result;
}

uint64_t sub_18E6A1858(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E6A18BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18E6A1910(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t _s8Gestures5TraceVwCP_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t sub_18E6A1994()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18E6A19CC()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for GestureOutput(255, AssociatedTypeWitness, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EAC8E2E8, &qword_18E72DA00);
  v4 = *(sub_18E72B928() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  v8 = v0 + v6;
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v6, AssociatedTypeWitness);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
    if (!*(v8 + *(swift_getTupleTypeMetadata2() + 48)))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!EnumCaseMultiPayload && *(v8 + 8))
  {
LABEL_9:
  }

LABEL_10:

  return MEMORY[0x1EEE6BDD0](v0, v6 + v7, v5 | 7);
}

uint64_t sub_18E6A1BAC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_18E6A1BE4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t *_s8Gestures20GestureFailureReasonOwCP_0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  sub_18E683B80(*a2);
  *a1 = v3;
  return a1;
}

void *_s8Gestures27GestureOutputStatusCombinerVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

_OWORD *_s8Gestures27GestureOutputStatusCombinerVwta_0(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_18E6A1CC4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *sub_18E6A1D10(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_18E6A1E74()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_18E6A1EB0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E6A1EEC()
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_18E6A1FC4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E6A2010()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

float64x2_t sub_18E6A2050(float64x2_t *a1, float64x2_t *a2)
{
  result = vsubq_f64(*a1, *a2);
  *a1 = result;
  return result;
}

uint64_t sub_18E6A2104()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void *assignWithTake for GestureTag(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for GestureNodeOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GestureNodeOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t destroy for SubgraphResetTracker(void *a1)
{
}

uint64_t initializeWithCopy for SubgraphResetTracker(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = a2[4];

  return a1;
}

uint64_t *assignWithCopy for SubgraphResetTracker(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  v4 = *(a2 + 1);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 1) = v4;
  a1[4] = a2[4];

  return a1;
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

uint64_t *assignWithTake for SubgraphResetTracker(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);
  *(a1 + 24) = *(a2 + 24);
  a1[4] = a2[4];

  return a1;
}

uint64_t getEnumTagSinglePayload for SubgraphResetTracker(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for SubgraphResetTracker(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void *sub_18E6A251C(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x1E69E9840];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_18E6A26BC(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_18E6A2E98(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x193AD25C0](v14, -1, -1);
  }

  return v10;
}

void *sub_18E6A26BC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_18E72B4D8();
    type metadata accessor for AnyGestureNode();
    sub_18E6A2ECC();
    result = sub_18E72B2D8();
    v4 = v39;
    v6 = v40;
    v8 = v41;
    v7 = v42;
    v9 = v43;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v7 = 0;
  }

  v34 = 0;
  v13 = (v8 + 64) >> 6;
  v14 = a4 + 56;
  v36 = v6;
LABEL_8:
  v15 = v7;
  v16 = v9;
  while (v4 < 0)
  {
    if (!sub_18E72B548())
    {
      goto LABEL_29;
    }

    type metadata accessor for AnyGestureNode();
    swift_dynamicCast();
    v20 = v38;
    v7 = v15;
    v19 = v16;
    if (!v38)
    {
      goto LABEL_29;
    }

LABEL_19:
    v16 = v19;
    v21 = v4;
    sub_18E72B888();
    v22 = sub_18E72AFA8();
    MEMORY[0x193AD1DF0](v22);
    v23 = sub_18E72B8E8();
    v24 = -1 << *(a4 + 32);
    v25 = v23 & ~v24;
    v26 = v25 >> 6;
    v27 = 1 << v25;
    if (((1 << v25) & *(v14 + 8 * (v25 >> 6))) == 0)
    {
      goto LABEL_9;
    }

    v28 = *(a4 + 48);
    if (*(v28 + 8 * v25) == v20)
    {
LABEL_24:

      v30 = a1[v26];
      a1[v26] = v30 | v27;
      v15 = v7;
      v31 = (v30 & v27) == 0;
      v4 = v21;
      v6 = v36;
      if (v31)
      {
        v9 = v19;
        if (!__OFADD__(v34++, 1))
        {
          goto LABEL_8;
        }

        __break(1u);
LABEL_29:
        sub_18E687EE8(v4);

        return sub_18E68E670(a1, a2, v34, a4);
      }
    }

    else
    {
      v29 = ~v24;
      while (1)
      {
        v25 = (v25 + 1) & v29;
        v26 = v25 >> 6;
        v27 = 1 << v25;
        if (((1 << v25) & *(v14 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        if (*(v28 + 8 * v25) == v20)
        {
          goto LABEL_24;
        }
      }

LABEL_9:

      v15 = v7;
      v4 = v21;
      v6 = v36;
    }
  }

  v17 = v15;
  v18 = v16;
  v7 = v15;
  if (v16)
  {
LABEL_15:
    v19 = (v18 - 1) & v18;
    v20 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v18)))));

    if (!v20)
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v7 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v7 >= v13)
    {
      goto LABEL_29;
    }

    v18 = *(v6 + 8 * v7);
    ++v17;
    if (v18)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void *sub_18E6A299C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

void *sub_18E6A2A34(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    result = sub_18E72B518();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(*v1 + 16);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_18E72B4D8();
    type metadata accessor for AnyGestureNode();
    sub_18E6A2ECC();
    result = sub_18E72B2D8();
    a1 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
      return sub_18E687EE8(a1);
    }

    while (1)
    {
      sub_18E689A70(v15);

      v6 = v13;
      v7 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_18E72B548())
      {
        type metadata accessor for AnyGestureNode();
        swift_dynamicCast();
        v15 = v16;
        v13 = v6;
        v14 = v7;
        if (v16)
        {
          continue;
        }
      }

      return sub_18E687EE8(a1);
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      return sub_18E687EE8(a1);
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_18E6A2C3C(unsigned int *a1, void *a2, void *a3)
{
  v6 = &v27;
  v7 = (*(*a1 + 304))(&v27);
  v8 = v28;
  if (v28 == 255)
  {
    v6 = &v29;
    (*(*a1 + 296))(&v29, v7);
    v8 = v30;
  }

  v9 = *v6;
  if (v8 == 4 && v9 == 0)
  {
    v16 = sub_18E68EA90();
    if (v17)
    {
      a3 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = a2[4];
      v29 = v19;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_15:
        sub_18E693034(a3, v19);
        a2[4] = v19;
        return;
      }

LABEL_19:
      sub_18E70C724();
      v19 = v29;
      goto LABEL_15;
    }
  }

  else
  {
    sub_18E69E818(v9, v8);
    v11 = *a2;
    v12 = *(*a2 + 16);
    if (v12)
    {
      v13 = 0;
      v14 = (v11 + 40);
      while (v13 < *(v11 + 16))
      {
        v15 = *v14;
        swift_unownedRetainStrong();

        swift_unownedRetain();

        if (v15 == a1)
        {
          v20 = a1[4];
          v21 = a3[12];
          v22 = a3[13];
          __swift_project_boxed_opaque_existential_1(a3 + 9, v21);
          v23 = (*(v22 + 8))(v21, v22);
          v25 = v24;
          v26 = swift_isUniquelyReferenced_nonNull_native();
          v29 = a2[4];
          sub_18E6B1B60(v23, v25, v20, v26);

          swift_unownedRelease();
          a2[4] = v29;
          return;
        }

        ++v13;
        swift_unownedRelease();
        v14 += 4;
        if (v12 == v13)
        {
          return;
        }
      }

      __break(1u);
      goto LABEL_19;
    }
  }
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

void *sub_18E6A2E98@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_18E6A26BC(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_18E6A2ECC()
{
  result = qword_1ED6F7F48;
  if (!qword_1ED6F7F48)
  {
    type metadata accessor for AnyGestureNode();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6F7F48);
  }

  return result;
}

uint64_t sub_18E6A2F30(uint64_t a1, int a2)
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

uint64_t sub_18E6A2F50(uint64_t result, int a2, int a3)
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

void sub_18E6A2F8C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t destroy for SubgraphResetTracker.SubgraphRecord(void *a1)
{

  return swift_unownedRelease();
}

uint64_t initializeWithCopy for SubgraphResetTracker.SubgraphRecord(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = *a2;

  swift_unownedRetain();
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 1);
  return a1;
}

uint64_t *assignWithCopy for SubgraphResetTracker.SubgraphRecord(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = swift_unownedRetain();
  swift_unownedRelease();
  a1[2] = a2[2];
  a1[3] = a2[3];
  return a1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

_OWORD *assignWithTake for SubgraphResetTracker.SubgraphRecord(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;
  swift_unownedRelease();
  a1[1] = a2[1];
  return a1;
}

uint64_t getEnumTagSinglePayload for SubgraphResetTracker.SubgraphRecord(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for SubgraphResetTracker.SubgraphRecord(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

Swift::Void __swiftcall StatefulGestureComponent.reset()()
{
  v2 = v1;
  v3 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v8 - v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v2 + 40))(v6, v3, v2);
}

void sub_18E6A3304(uint64_t a1)
{
  swift_getWitnessTable();

  StatefulGestureComponent.reset()();
}

uint64_t sub_18E6A3554@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 120);
  v6 = sub_18E72B438();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - v8;
  v19 = v1[2];
  sub_18E72B278();

  swift_getWitnessTable();
  sub_18E72B128();

  v10 = *(v5 - 8);
  if ((*(v10 + 48))(v9, 1, v5) == 1)
  {
    (*(v7 + 8))(v9, v6);
    v11 = 1;
  }

  else
  {
    (*(v10 + 32))(a1, v9, v5);
    (*(*(v4 + 128) + 16))(&v19, v5);
    v12 = v19;
    v13 = v1[3];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2[3] = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_18E6ED920(0, *(v13 + 2) + 1, 1, v13);
      v2[3] = v13;
    }

    v16 = *(v13 + 2);
    v15 = *(v13 + 3);
    if (v16 >= v15 >> 1)
    {
      v13 = sub_18E6ED920((v15 > 1), v16 + 1, 1, v13);
    }

    v11 = 0;
    *(v13 + 2) = v16 + 1;
    *&v13[8 * v16 + 32] = v12;
    v2[3] = v13;
  }

  return (*(v10 + 56))(a1, v11, 1, v5);
}

BOOL sub_18E6A3820(uint64_t a1, void *a2)
{
  v2 = a2[3];
  v3 = *(*a2 + 128);
  v4 = *(v3 + 16);
  v5 = *(*a2 + 120);

  v4(&v12, v5, v3);
  v6 = *(v2 + 16);
  v7 = 32;
  do
  {
    v8 = v6;
    if (!v6)
    {
      break;
    }

    v9 = *(v2 + v7);
    v7 += 8;
    --v6;
  }

  while (v9 != v12);
  v10 = v8 == 0;

  return v10;
}

uint64_t sub_18E6A38F4(uint64_t *a1)
{
  sub_18E72B278();

  swift_getWitnessTable();
  sub_18E72B128();
}

void *sub_18E6A39CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v30 = *(*v3 + 120);
  v6 = *(v30 - 8);
  v31 = *(v6 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v29 = &v28 - v8;
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v7);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v28 - v15;
  v39 = v3;
  sub_18E6A3D78(v14);
  result = sub_18E72B228();
  if (!result)
  {
    return result;
  }

  v18 = 0;
  v36 = *(v40 + 16);
  v37 = v40 + 16;
  v34 = *(v40 + 24);
  v35 = v40 + 24;
  v38 = (v10 + 16);
  v33 = (v10 + 32);
  v28 = (v6 + 16);
  while (1)
  {
    v19 = sub_18E72B208();
    sub_18E72B1A8();
    if (v19)
    {
      result = (*(v10 + 16))(v16, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18, a2);
      v20 = __OFADD__(v18, 1);
      v18 = (v18 + 1);
      if (v20)
      {
        goto LABEL_17;
      }
    }

    else
    {
      result = sub_18E72B5F8();
      if (v32 != 8)
      {
        goto LABEL_20;
      }

      v41 = result;
      (*v38)(v16, &v41, a2);
      result = swift_unknownObjectRelease();
      v20 = __OFADD__(v18, 1);
      v18 = (v18 + 1);
      if (v20)
      {
LABEL_17:
        __break(1u);
        return result;
      }
    }

    v21 = v16;
    (*v33)(v13, v16, a2);
    v22 = *(v39 + 24);

    v36(&v41, a2, v40);
    v23 = *(v22 + 16);
    v24 = 32;
    do
    {
      v25 = v23;
      if (v23-- == 0)
      {
        break;
      }

      v27 = *(v22 + v24);
      v24 += 8;
    }

    while (v27 != v41);

    result = v34(&v41, a2, v40);
    if (v25 || !v41)
    {
      break;
    }

LABEL_3:
    (*(v10 + 8))(v13, a2);
    result = sub_18E72B228();
    v16 = v21;
    if (v18 == result)
    {
      return result;
    }
  }

  if (v32 == v31)
  {
    (*v28)(v29, v13, v30);
    sub_18E72B278();
    sub_18E72B238();
    goto LABEL_3;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_18E6A3D78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 120);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v29 - v9;
  v39 = v2;
  v12 = v2[2];
  v10 = v2 + 2;
  v11 = v12;

  if (!sub_18E72B228())
  {
LABEL_23:

    sub_18E72B278();
    return sub_18E72B268();
  }

  v30 = v6;
  v31 = v10;
  v13 = 0;
  v14 = *(v3 + 128);
  v16 = v14 + 24;
  v15 = *(v14 + 24);
  v37 = (v5 + 32);
  v38 = (v5 + 16);
  v35 = v14 + 16;
  v36 = (v5 + 8);
  v17 = v32;
  v33 = v15;
  v34 = v5;
  while (1)
  {
    v18 = sub_18E72B208();
    sub_18E72B1A8();
    if ((v18 & 1) == 0)
    {
      break;
    }

    result = (*(v5 + 16))(v17, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v4);
    v20 = __OFADD__(v13++, 1);
    if (v20)
    {
      goto LABEL_24;
    }

LABEL_7:
    (*v37)(v8, v17, v4);
    v15(&v40, v4, v14);
    if (v40 == 2 || (v15(&v40, v4, v14), v40 == 3))
    {
      v21 = v16;
      v22 = v39[3];
      v23 = *(v14 + 16);

      v23(&v40, v4, v14);
      v24 = *(v22 + 16);
      if (v24)
      {
        v25 = 0;
        while (*(v22 + 8 * v25 + 32) != v40)
        {
          if (v24 == ++v25)
          {
            goto LABEL_13;
          }
        }

        v26 = v39[3];
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_18E6F06FC(v26);
          v26 = result;
        }

        v27 = *(v26 + 16);
        if (v27 <= v25)
        {
          goto LABEL_25;
        }

        v28 = v27 - 1;
        memmove((v26 + 8 * v25 + 32), (v26 + 8 * v25 + 40), 8 * (v27 - v25) - 8);
        *(v26 + 16) = v28;
        v17 = v32;
        v39[3] = v26;
        (*v36)(v8, v4);
      }

      else
      {
LABEL_13:
        (*v36)(v8, v4);
      }

      v16 = v21;
      v15 = v33;
      v5 = v34;
    }

    else
    {
      (*v36)(v8, v4);
    }

    if (v13 == sub_18E72B228())
    {
      goto LABEL_23;
    }
  }

  result = sub_18E72B5F8();
  if (v30 != 8)
  {
    goto LABEL_26;
  }

  v40 = result;
  (*v38)(v17, &v40, v4);
  result = swift_unknownObjectRelease();
  v20 = __OFADD__(v13++, 1);
  if (!v20)
  {
    goto LABEL_7;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_18E6A4194()
{
  sub_18E72B278();
  sub_18E72B268();
  *(v0 + 24) = MEMORY[0x1E69E7CC0];
}

void *sub_18E6A4200()
{
  v0 = swift_allocObject();
  v1 = sub_18E72AEB8();
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  return v0;
}

uint64_t sub_18E6A4258()
{
}

uint64_t sub_18E6A4288()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_18E6A42E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E6A4334(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

uint64_t sub_18E6A4388(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

BOOL sub_18E6A43E8()
{
  v1 = v0[4];
  (*(v0[3] + 16))(&v3, v0[2]);
  return v3 == v1;
}

uint64_t GFGestureComponentControllerSetNode(uint64_t a1, void *a2)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  gfGestureComponentControllerSetNode(controller:node:)(a1, a2);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t gfGestureComponentControllerSetNode(controller:node:)(uint64_t a1, void *a2)
{
  if (a2)
  {
    (*((*MEMORY[0x1E69E7D40] & *a2) + 0x78))();
  }

  Strong = swift_weakLoadStrong();
  swift_weakAssign();
  if (swift_weakLoadStrong())
  {
  }

  else
  {
    if (!Strong)
    {
      goto LABEL_8;
    }

    (*(*a1 + 152))();
  }

LABEL_8:
}

void *sub_18E6A45A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a1;
  v9 = sub_18E72B918();
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v47 + 1) = &type metadata for GestureOutputMetadata;
  v12 = swift_allocObject();
  *&v46 = v12;
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;

  sub_18E72B8F8();
  v29 = v11;
  sub_18E72B908();
  v13 = sub_18E72B6B8();

  sub_18E72B748();
  v47 = v44;
  v48 = v45;
  v46 = v43;
  if (!*(&v45 + 1))
  {
LABEL_20:
    (*(v30 + 8))(v29, v31);
  }

  v32 = v13;
  while (1)
  {
    v15 = v46;
    sub_18E68A8E4(&v47, v42);
    v14 = v42;
    if (!*(&v15 + 1))
    {
      goto LABEL_4;
    }

    sub_18E69F7B4(v42, &v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DD20, &qword_18E72CD38);
    if (swift_dynamicCast())
    {
      break;
    }

    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    sub_18E68B548(&v34, &qword_1EAC8DD28, &unk_18E72CD40);
    sub_18E69F7B4(v42, &v38);
LABEL_14:
    sub_18E68A8E4(&v38, &v40);
    sub_18E69F7B4(&v40, &v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DD30, "8g");
    if ((swift_dynamicCast() & 1) == 0)
    {
      v36 = 0;
      v34 = 0u;
      v35 = 0u;
      sub_18E68B548(&v34, &qword_1EAC8DD38, &qword_18E72CD50);
      goto LABEL_18;
    }

    sub_18E689D58(&v34, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
    if ((sub_18E72B318() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v43);
LABEL_18:
      v21 = v41;
      v22 = __swift_project_boxed_opaque_existential_1(&v40, v41);
      v23 = sub_18E72B438();
      v24 = *(v23 - 8);
      MEMORY[0x1EEE9AC00](v23);
      v26 = &v28 - v25;
      v27 = *(v21 - 8);
      (*(v27 + 16))(&v28 - v25, v22, v21);
      (*(v27 + 56))(v26, 0, 1, v21);
      sub_18E6C9080(v26, v15, *(&v15 + 1), v21);

      (*(v24 + 8))(v26, v23);
      __swift_destroy_boxed_opaque_existential_0(v42);
      __swift_destroy_boxed_opaque_existential_0(&v40);
      goto LABEL_5;
    }

    __swift_destroy_boxed_opaque_existential_0(v42);

    __swift_destroy_boxed_opaque_existential_0(&v43);
    v14 = &v40;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0(v14);
LABEL_5:
    sub_18E72B748();
    v47 = v44;
    v48 = v45;
    v46 = v43;
    if (!*(&v45 + 1))
    {
      goto LABEL_20;
    }
  }

  sub_18E689D58(&v34, &v43);
  v16 = *(&v44 + 1);
  v17 = v45;
  __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
  if ((*(v17 + 8))(v16, v17))
  {
    v38 = 0u;
    v39 = 0u;
    goto LABEL_13;
  }

  v18 = *(&v44 + 1);
  v19 = v45;
  __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
  result = (*(v19 + 16))(&v34, v18, v19);
  if (*(&v35 + 1))
  {
    sub_18E68A8E4(&v34, &v38);
LABEL_13:
    __swift_destroy_boxed_opaque_existential_0(&v43);
    if (!*(&v39 + 1))
    {
      __swift_destroy_boxed_opaque_existential_0(v42);

      sub_18E68B548(&v38, &qword_1EAC8DD40, &qword_18E72CD58);
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void *sub_18E6A4AD8(uint64_t a1)
{
  v28 = a1;
  v2 = sub_18E72B918();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v42 + 1) = &type metadata for ConcreteScrollEvent;
  v5 = swift_allocObject();
  *&v41 = v5;
  v6 = v1[3];
  v5[3] = v1[2];
  v5[4] = v6;
  v5[5] = v1[4];
  v7 = v1[1];
  v5[1] = *v1;
  v5[2] = v7;
  sub_18E72B8F8();
  v24 = v4;
  sub_18E72B908();
  v8 = sub_18E72B6B8();

  sub_18E72B748();
  v42 = v39;
  v43 = v40;
  v41 = v38;
  if (!*(&v40 + 1))
  {
LABEL_20:
    (*(v25 + 8))(v24, v26);
  }

  v27 = v8;
  while (1)
  {
    v10 = v41;
    sub_18E68A8E4(&v42, v37);
    v9 = v37;
    if (!*(&v10 + 1))
    {
      goto LABEL_4;
    }

    sub_18E69F7B4(v37, &v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DD20, &qword_18E72CD38);
    if (swift_dynamicCast())
    {
      break;
    }

    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    sub_18E68B548(&v29, &qword_1EAC8DD28, &unk_18E72CD40);
    sub_18E69F7B4(v37, &v33);
LABEL_14:
    sub_18E68A8E4(&v33, &v35);
    sub_18E69F7B4(&v35, &v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DD30, "8g");
    if ((swift_dynamicCast() & 1) == 0)
    {
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
      sub_18E68B548(&v29, &qword_1EAC8DD38, &qword_18E72CD50);
      goto LABEL_18;
    }

    sub_18E689D58(&v29, &v38);
    __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
    if ((sub_18E72B318() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v38);
LABEL_18:
      v16 = v36;
      v17 = __swift_project_boxed_opaque_existential_1(&v35, v36);
      v18 = sub_18E72B438();
      v19 = *(v18 - 8);
      MEMORY[0x1EEE9AC00](v18);
      v21 = &v23 - v20;
      v22 = *(v16 - 8);
      (*(v22 + 16))(&v23 - v20, v17, v16);
      (*(v22 + 56))(v21, 0, 1, v16);
      sub_18E6C9080(v21, v10, *(&v10 + 1), v16);

      (*(v19 + 8))(v21, v18);
      __swift_destroy_boxed_opaque_existential_0(v37);
      __swift_destroy_boxed_opaque_existential_0(&v35);
      goto LABEL_5;
    }

    __swift_destroy_boxed_opaque_existential_0(v37);

    __swift_destroy_boxed_opaque_existential_0(&v38);
    v9 = &v35;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0(v9);
LABEL_5:
    sub_18E72B748();
    v42 = v39;
    v43 = v40;
    v41 = v38;
    if (!*(&v40 + 1))
    {
      goto LABEL_20;
    }
  }

  sub_18E689D58(&v29, &v38);
  v11 = *(&v39 + 1);
  v12 = v40;
  __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
  if ((*(v12 + 8))(v11, v12))
  {
    v33 = 0u;
    v34 = 0u;
    goto LABEL_13;
  }

  v13 = *(&v39 + 1);
  v14 = v40;
  __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
  result = (*(v14 + 16))(&v29, v13, v14);
  if (*(&v30 + 1))
  {
    sub_18E68A8E4(&v29, &v33);
LABEL_13:
    __swift_destroy_boxed_opaque_existential_0(&v38);
    if (!*(&v34 + 1))
    {
      __swift_destroy_boxed_opaque_existential_0(v37);

      sub_18E68B548(&v33, &qword_1EAC8DD40, &qword_18E72CD58);
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void *sub_18E6A500C(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v4 = sub_18E72B918();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v43 + 1) = a2;
  v7 = swift_allocObject();
  *&v42 = v7;
  v8 = v2[1];
  v7[1] = *v2;
  v7[2] = v8;
  v7[3] = v2[2];
  sub_18E72B8F8();
  v25 = v6;
  sub_18E72B908();
  v9 = sub_18E72B6B8();

  sub_18E72B748();
  v43 = v40;
  v44 = v41;
  v42 = v39;
  if (!*(&v41 + 1))
  {
LABEL_20:
    (*(v26 + 8))(v25, v27);
  }

  v28 = v9;
  while (1)
  {
    v11 = v42;
    sub_18E68A8E4(&v43, v38);
    v10 = v38;
    if (!*(&v11 + 1))
    {
      goto LABEL_4;
    }

    sub_18E69F7B4(v38, &v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DD20, &qword_18E72CD38);
    if (swift_dynamicCast())
    {
      break;
    }

    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    sub_18E68B548(&v30, &qword_1EAC8DD28, &unk_18E72CD40);
    sub_18E69F7B4(v38, &v34);
LABEL_14:
    sub_18E68A8E4(&v34, &v36);
    sub_18E69F7B4(&v36, &v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DD30, "8g");
    if ((swift_dynamicCast() & 1) == 0)
    {
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      sub_18E68B548(&v30, &qword_1EAC8DD38, &qword_18E72CD50);
      goto LABEL_18;
    }

    sub_18E689D58(&v30, &v39);
    __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
    if ((sub_18E72B318() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v39);
LABEL_18:
      v17 = v37;
      v18 = __swift_project_boxed_opaque_existential_1(&v36, v37);
      v19 = sub_18E72B438();
      v20 = *(v19 - 8);
      MEMORY[0x1EEE9AC00](v19);
      v22 = &v24 - v21;
      v23 = *(v17 - 8);
      (*(v23 + 16))(&v24 - v21, v18, v17);
      (*(v23 + 56))(v22, 0, 1, v17);
      sub_18E6C9080(v22, v11, *(&v11 + 1), v17);

      (*(v20 + 8))(v22, v19);
      __swift_destroy_boxed_opaque_existential_0(v38);
      __swift_destroy_boxed_opaque_existential_0(&v36);
      goto LABEL_5;
    }

    __swift_destroy_boxed_opaque_existential_0(v38);

    __swift_destroy_boxed_opaque_existential_0(&v39);
    v10 = &v36;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0(v10);
LABEL_5:
    sub_18E72B748();
    v43 = v40;
    v44 = v41;
    v42 = v39;
    if (!*(&v41 + 1))
    {
      goto LABEL_20;
    }
  }

  sub_18E689D58(&v30, &v39);
  v12 = *(&v40 + 1);
  v13 = v41;
  __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
  if ((*(v13 + 8))(v12, v13))
  {
    v34 = 0u;
    v35 = 0u;
    goto LABEL_13;
  }

  v14 = *(&v40 + 1);
  v15 = v41;
  __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
  result = (*(v15 + 16))(&v30, v14, v15);
  if (*(&v31 + 1))
  {
    sub_18E68A8E4(&v30, &v34);
LABEL_13:
    __swift_destroy_boxed_opaque_existential_0(&v39);
    if (!*(&v35 + 1))
    {
      __swift_destroy_boxed_opaque_existential_0(v38);

      sub_18E68B548(&v34, &qword_1EAC8DD40, &qword_18E72CD58);
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void *sub_18E6A551C(uint64_t a1)
{
  v27 = a1;
  v2 = sub_18E72B918();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v41 + 1) = &type metadata for MouseEvent;
  v5 = swift_allocObject();
  *&v40 = v5;
  v6 = *(v1 + 16);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v1 + 32);
  *(v5 + 64) = *(v1 + 48);
  sub_18E72B8F8();
  v23 = v4;
  sub_18E72B908();
  v7 = sub_18E72B6B8();

  sub_18E72B748();
  v41 = v38;
  v42 = v39;
  v40 = v37;
  if (!*(&v39 + 1))
  {
LABEL_20:
    (*(v24 + 8))(v23, v25);
  }

  v26 = v7;
  while (1)
  {
    v9 = v40;
    sub_18E68A8E4(&v41, v36);
    v8 = v36;
    if (!*(&v9 + 1))
    {
      goto LABEL_4;
    }

    sub_18E69F7B4(v36, &v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DD20, &qword_18E72CD38);
    if (swift_dynamicCast())
    {
      break;
    }

    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    sub_18E68B548(&v28, &qword_1EAC8DD28, &unk_18E72CD40);
    sub_18E69F7B4(v36, &v32);
LABEL_14:
    sub_18E68A8E4(&v32, &v34);
    sub_18E69F7B4(&v34, &v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DD30, "8g");
    if ((swift_dynamicCast() & 1) == 0)
    {
      v30 = 0;
      v28 = 0u;
      v29 = 0u;
      sub_18E68B548(&v28, &qword_1EAC8DD38, &qword_18E72CD50);
      goto LABEL_18;
    }

    sub_18E689D58(&v28, &v37);
    __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
    if ((sub_18E72B318() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v37);
LABEL_18:
      v15 = v35;
      v16 = __swift_project_boxed_opaque_existential_1(&v34, v35);
      v17 = sub_18E72B438();
      v18 = *(v17 - 8);
      MEMORY[0x1EEE9AC00](v17);
      v20 = &v22 - v19;
      v21 = *(v15 - 8);
      (*(v21 + 16))(&v22 - v19, v16, v15);
      (*(v21 + 56))(v20, 0, 1, v15);
      sub_18E6C9080(v20, v9, *(&v9 + 1), v15);

      (*(v18 + 8))(v20, v17);
      __swift_destroy_boxed_opaque_existential_0(v36);
      __swift_destroy_boxed_opaque_existential_0(&v34);
      goto LABEL_5;
    }

    __swift_destroy_boxed_opaque_existential_0(v36);

    __swift_destroy_boxed_opaque_existential_0(&v37);
    v8 = &v34;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0(v8);
LABEL_5:
    sub_18E72B748();
    v41 = v38;
    v42 = v39;
    v40 = v37;
    if (!*(&v39 + 1))
    {
      goto LABEL_20;
    }
  }

  sub_18E689D58(&v28, &v37);
  v10 = *(&v38 + 1);
  v11 = v39;
  __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
  if ((*(v11 + 8))(v10, v11))
  {
    v32 = 0u;
    v33 = 0u;
    goto LABEL_13;
  }

  v12 = *(&v38 + 1);
  v13 = v39;
  __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
  result = (*(v13 + 16))(&v28, v12, v13);
  if (*(&v29 + 1))
  {
    sub_18E68A8E4(&v28, &v32);
LABEL_13:
    __swift_destroy_boxed_opaque_existential_0(&v37);
    if (!*(&v33 + 1))
    {
      __swift_destroy_boxed_opaque_existential_0(v36);

      sub_18E68B548(&v32, &qword_1EAC8DD40, &qword_18E72CD58);
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_18E6A5D80(unint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = MEMORY[0x1E69E7D40];
  v8 = *((*((*MEMORY[0x1E69E7D40] & *a3) + 0x78))() + 16);

  v18 = v8;
  v19 = 0;
  v9 = sub_18E684B74(a1, a2, &v18, &v20);
  v10 = v20;
  v11 = v21;
  v12 = v22;
  v13 = v23;
  v14 = v24;
  v15 = v25;
  v16 = (*((*v7 & *v4) + 0x78))(v9);
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  (*(*v16 + 272))(&v20);

  return sub_18E682A3C(v13, v14, v15);
}

id sub_18E6A5F30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnyGestureNodeShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_18E6A5F64()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = [Strong indexOfGestureNode_];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_18E6A5FCC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0x74696E696564;
  }

  return v2;
}

uint64_t sub_18E6A6034(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (!Strong || (v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x88))(), swift_unknownObjectRelease(), !v2))
  {
    if (!swift_unknownObjectUnownedLoadStrong())
    {
      return 7104878;
    }
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v5 = sub_18E72B9C8();
  MEMORY[0x193AD15C0](8250, 0xE200000000000000);
  sub_18E6A9FC4();
  v3 = sub_18E72B098();
  MEMORY[0x193AD15C0](v3);

  MEMORY[0x193AD15C0](30768, 0xE200000000000000);
  swift_unknownObjectRelease_n();

  return v5;
}

id sub_18E6A618C(void *a1)
{
  v1 = a1;
  sub_18E6A61F4();

  v2 = sub_18E72AFC8();

  return v2;
}

uint64_t sub_18E6A61F4()
{
  ObjectType = swift_getObjectType();
  WitnessTable = swift_getWitnessTable();
  return sub_18E6C8EC8(ObjectType, WitnessTable);
}

uint64_t sub_18E6A6254()
{

  sub_18E6A6AD8(v1, 1701080942, 0xE400000000000000);

  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18E6A6EAC(Strong, 0x616E6964726F6F63, 0xEB00000000726F74);
  swift_unknownObjectRelease();
  return sub_18E6A7E24(*(v0 + qword_1EAC8DC88), 0, 0x7367616C66, 0xE500000000000000, &type metadata for NodeShimFlags);
}

uint64_t sub_18E6A6314(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {
    if (a3)
    {

      MEMORY[0x193AD15C0](8250, 0xE200000000000000);
      MEMORY[0x193AD15C0](a2, a3);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DCF0, &unk_18E72CD20);
    sub_18E72B6C8();
    MEMORY[0x193AD15C0](0, 0xE000000000000000);
  }

  return result;
}

uint64_t sub_18E6A647C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    if (a4)
    {

      MEMORY[0x193AD15C0](8250, 0xE200000000000000);
      MEMORY[0x193AD15C0](a3, a4);
    }

    sub_18E72B6C8();
    MEMORY[0x193AD15C0](0, 0xE000000000000000);
  }

  return v4;
}

uint64_t sub_18E6A65D8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    return result;
  }

  v4 = v3;
  v5 = result;
  v6 = &v35;
  v47 = 0;
  v48 = 0xE000000000000000;
  if (a3)
  {
    *v42 = a2;
    *&v42[8] = a3;

    MEMORY[0x193AD15C0](8250, 0xE200000000000000);
    MEMORY[0x193AD15C0](*v42, *&v42[8]);
  }

  v46[3] = &type metadata for GestureTraitCollection;
  v46[4] = sub_18E6A9E14();
  v46[0] = v5;
  v41[3] = &type metadata for GestureTraitCollection;
  v41[0] = v5;
  sub_18E6A9C30(v3, &v35);
  v30 = 0u;
  v31 = 0u;
  *&v32 = 0;
  v34 = MEMORY[0x1E69E7CC0];
  sub_18E69F7B4(v41, v33);
  v28[3] = v38;
  v28[4] = v39;
  v28[1] = v36;
  v28[2] = v37;
  v29 = v40;
  v28[0] = v35;
  if (!*(&v39 + 1))
  {
    swift_bridgeObjectRetain_n();
    __swift_destroy_boxed_opaque_existential_0(v41);
    sub_18E68B548(v28, &qword_1EAC8DCC8, &qword_18E72CD10);
    *(&v32 + 1) = 0;
LABEL_8:
    *&v42[32] = v32;
    v43 = v33[0];
    v44 = v33[1];
    v45 = v34;
    *v42 = v30;
    *&v42[16] = v31;
    __swift_project_boxed_opaque_existential_1(v46, &type metadata for GestureTraitCollection);
    if ((~v42[0] & 9) != 0)
    {
      *v42 |= 9uLL;
    }

    *&v42[8] = xmmword_18E72CA30;

    *&v42[24] = xmmword_18E72CA30;

    sub_18E6A6314(v12, 0, 0);

    v13 = sub_18E6C96B4();
    v15 = v14;
    sub_18E6C9B94();
    v17 = v16;
    v19 = v18;
    *&v35 = v13;
    *(&v35 + 1) = v15;

    MEMORY[0x193AD15C0](v17, v19);

    v20 = v35;
    v21 = sub_18E6C9D10();
    v23 = v22;
    v35 = v20;

    MEMORY[0x193AD15C0](v21, v23);

    MEMORY[0x193AD15C0](v35, *(&v35 + 1));

    sub_18E6A9C8C(v42);
    __swift_destroy_boxed_opaque_existential_0(v46);
    v6 = v47;
    v7 = v48;
    v24 = HIBYTE(v48) & 0xF;
    if ((v48 & 0x2000000000000000) == 0)
    {
      v24 = v47 & 0xFFFFFFFFFFFFLL;
    }

    if (!v24)
    {
    }

    v5 = *(v4 + 80);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  *&v42[32] = v37;
  v43 = v38;
  v44 = v39;
  v45 = v40;
  *v42 = v35;
  *&v42[16] = v36;
  v7 = *(&v37 + 1);
  v8 = v35;
  swift_bridgeObjectRetain_n();
  sub_18E6A9C8C(v42);
  __swift_destroy_boxed_opaque_existential_0(v41);
  v9 = (v8 & 8) == 0;
  v10 = __OFADD__(v7, v9);
  v11 = v7 + v9;
  if (!v10)
  {
    *(&v32 + 1) = v11;
    goto LABEL_8;
  }

  __break(1u);
LABEL_20:
  result = sub_18E6ED4A8(0, *(v5 + 16) + 1, 1, v5);
  v5 = result;
LABEL_14:
  v26 = *(v5 + 16);
  v25 = *(v5 + 24);
  if (v26 >= v25 >> 1)
  {
    result = sub_18E6ED4A8((v25 > 1), v26 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v26 + 1;
  v27 = v5 + 16 * v26;
  *(v27 + 32) = v6;
  *(v27 + 40) = v7;
  *(v4 + 80) = v5;
  return result;
}

uint64_t sub_18E6A6968(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (result != 3)
  {
    if (a3)
    {

      MEMORY[0x193AD15C0](8250, 0xE200000000000000);
      MEMORY[0x193AD15C0](a2, a3);
    }

    sub_18E72B6C8();
    MEMORY[0x193AD15C0](0, 0xE000000000000000);
  }

  return result;
}

uint64_t sub_18E6A6AD8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v4 = v3;
    v5 = result;
    v55 = 0;
    v56 = 0xE000000000000000;
    if (a3)
    {
      *&v46 = a2;
      *(&v46 + 1) = a3;

      MEMORY[0x193AD15C0](8250, 0xE200000000000000);
      MEMORY[0x193AD15C0](v46, *(&v46 + 1));
    }

    *&v39 = v5;
    v6 = type metadata accessor for AnyGestureNode();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DCB8, &qword_18E72CD00);
    if (swift_dynamicCast())
    {
      sub_18E689D58(&v46, v52);
      v45[3] = v6;
      v45[0] = v5;
      sub_18E6A9C30(v4, &v39);
      v34 = 0u;
      v35 = 0u;
      *&v36 = 0;
      v38 = MEMORY[0x1E69E7CC0];
      sub_18E69F7B4(v45, v37);
      v32[3] = v42;
      v32[4] = v43;
      v32[1] = v40;
      v32[2] = v41;
      v33 = v44;
      v32[0] = v39;
      if (*(&v43 + 1))
      {
        v48 = v41;
        v49 = v42;
        v50 = v43;
        v51 = v44;
        v46 = v39;
        v47 = v40;
        v7 = *(&v41 + 1);
        v8 = v39;

        sub_18E6A9C8C(&v46);
        result = __swift_destroy_boxed_opaque_existential_0(v45);
        v9 = (v8 & 8) == 0;
        v10 = __OFADD__(v7, v9);
        v11 = v7 + v9;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(&v36 + 1) = v11;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v45);
        sub_18E68B548(v32, &qword_1EAC8DCC8, &qword_18E72CD10);
        *(&v36 + 1) = 0;
      }

      v48 = v36;
      v49 = v37[0];
      v50 = v37[1];
      v51 = v38;
      v46 = v34;
      v47 = v35;
      v12 = v53;
      v13 = v54;
      __swift_project_boxed_opaque_existential_1(v52, v53);
      (*(v13 + 24))(&v46, v12, v13);
      v14 = sub_18E6C96B4();
      v16 = v15;
      sub_18E6C9B94();
      v18 = v17;
      v20 = v19;
      *&v39 = v14;
      *(&v39 + 1) = v16;

      MEMORY[0x193AD15C0](v18, v20);

      v21 = v39;
      v22 = sub_18E6C9D10();
      v24 = v23;
      v39 = v21;

      MEMORY[0x193AD15C0](v22, v24);

      MEMORY[0x193AD15C0](v39, *(&v39 + 1));

      sub_18E6A9C8C(&v46);
      __swift_destroy_boxed_opaque_existential_0(v52);
    }

    else
    {
      *&v48 = 0;
      v46 = 0u;
      v47 = 0u;
      sub_18E68B548(&v46, &qword_1EAC8DCC0, &qword_18E72CD08);
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      *&v39 = v5;
      sub_18E72B6C8();
      MEMORY[0x193AD15C0](v46, *(&v46 + 1));
    }

    v26 = v55;
    v25 = v56;
    v27 = HIBYTE(v56) & 0xF;
    if ((v56 & 0x2000000000000000) == 0)
    {
      v27 = v55 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      v28 = *(v4 + 80);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_18E6ED4A8(0, *(v28 + 16) + 1, 1, v28);
        v28 = result;
      }

      v30 = *(v28 + 16);
      v29 = *(v28 + 24);
      if (v30 >= v29 >> 1)
      {
        result = sub_18E6ED4A8((v29 > 1), v30 + 1, 1, v28);
        v28 = result;
      }

      *(v28 + 16) = v30 + 1;
      v31 = v28 + 16 * v30;
      *(v31 + 32) = v26;
      *(v31 + 40) = v25;
      *(v4 + 80) = v28;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_18E6A6EAC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v4 = v3;
    v5 = result;
    v55 = 0;
    v56 = 0xE000000000000000;
    if (a3)
    {
      *&v46 = a2;
      *(&v46 + 1) = a3;

      MEMORY[0x193AD15C0](8250, 0xE200000000000000);
      MEMORY[0x193AD15C0](v46, *(&v46 + 1));
    }

    *&v39 = v5;
    swift_unknownObjectRetain();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DCB0, &qword_18E72CCF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DCB8, &qword_18E72CD00);
    if (swift_dynamicCast())
    {
      sub_18E689D58(&v46, v52);
      v45[3] = v6;
      v45[0] = v5;
      sub_18E6A9C30(v4, &v39);
      v34 = 0u;
      v35 = 0u;
      *&v36 = 0;
      v38 = MEMORY[0x1E69E7CC0];
      sub_18E69F7B4(v45, v37);
      v32[3] = v42;
      v32[4] = v43;
      v32[1] = v40;
      v32[2] = v41;
      v33 = v44;
      v32[0] = v39;
      if (*(&v43 + 1))
      {
        v48 = v41;
        v49 = v42;
        v50 = v43;
        v51 = v44;
        v46 = v39;
        v47 = v40;
        v7 = *(&v41 + 1);
        v8 = v39;
        swift_unknownObjectRetain();
        sub_18E6A9C8C(&v46);
        result = __swift_destroy_boxed_opaque_existential_0(v45);
        v9 = (v8 & 8) == 0;
        v10 = __OFADD__(v7, v9);
        v11 = v7 + v9;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(&v36 + 1) = v11;
      }

      else
      {
        swift_unknownObjectRetain();
        __swift_destroy_boxed_opaque_existential_0(v45);
        sub_18E68B548(v32, &qword_1EAC8DCC8, &qword_18E72CD10);
        *(&v36 + 1) = 0;
      }

      v48 = v36;
      v49 = v37[0];
      v50 = v37[1];
      v51 = v38;
      v46 = v34;
      v47 = v35;
      v12 = v53;
      v13 = v54;
      __swift_project_boxed_opaque_existential_1(v52, v53);
      (*(v13 + 24))(&v46, v12, v13);
      v14 = sub_18E6C96B4();
      v16 = v15;
      sub_18E6C9B94();
      v18 = v17;
      v20 = v19;
      *&v39 = v14;
      *(&v39 + 1) = v16;

      MEMORY[0x193AD15C0](v18, v20);

      v21 = v39;
      v22 = sub_18E6C9D10();
      v24 = v23;
      v39 = v21;

      MEMORY[0x193AD15C0](v22, v24);

      MEMORY[0x193AD15C0](v39, *(&v39 + 1));

      sub_18E6A9C8C(&v46);
      __swift_destroy_boxed_opaque_existential_0(v52);
    }

    else
    {
      *&v48 = 0;
      v46 = 0u;
      v47 = 0u;
      sub_18E68B548(&v46, &qword_1EAC8DCC0, &qword_18E72CD08);
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      *&v39 = v5;
      sub_18E72B6C8();
      MEMORY[0x193AD15C0](v46, *(&v46 + 1));
    }

    v26 = v55;
    v25 = v56;
    v27 = HIBYTE(v56) & 0xF;
    if ((v56 & 0x2000000000000000) == 0)
    {
      v27 = v55 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      v28 = *(v4 + 80);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_18E6ED4A8(0, *(v28 + 16) + 1, 1, v28);
        v28 = result;
      }

      v30 = *(v28 + 16);
      v29 = *(v28 + 24);
      if (v30 >= v29 >> 1)
      {
        result = sub_18E6ED4A8((v29 > 1), v30 + 1, 1, v28);
        v28 = result;
      }

      *(v28 + 16) = v30 + 1;
      v31 = v28 + 16 * v30;
      *(v31 + 32) = v26;
      *(v31 + 40) = v25;
      *(v4 + 80) = v28;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_18E6A728C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!result)
  {
    return result;
  }

  v7 = v6;
  v11 = result;
  v56 = 0;
  v57 = 0xE000000000000000;
  if (a6)
  {
    *&v49 = a5;
    *(&v49 + 1) = a6;

    MEMORY[0x193AD15C0](8250, 0xE200000000000000);
    MEMORY[0x193AD15C0](v49, *(&v49 + 1));
  }

  v55[3] = &type metadata for GestureOutputMetadata;
  v55[4] = sub_18E6A9ECC();
  v12 = swift_allocObject();
  v55[0] = v12;
  v12[2] = v11;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v48[3] = &type metadata for GestureOutputMetadata;
  v13 = swift_allocObject();
  v48[0] = v13;
  v13[2] = v11;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  sub_18E6A9C30(v6, &v42);
  v37 = 0u;
  v38 = 0u;
  *&v39 = 0;
  v41 = MEMORY[0x1E69E7CC0];
  sub_18E69F7B4(v48, v40);
  v35[3] = v45;
  v35[4] = v46;
  v35[1] = v43;
  v35[2] = v44;
  v36 = v47;
  v35[0] = v42;
  if (!*(&v46 + 1))
  {
    sub_18E6A9F20(v11, a2, a3, a4);

    __swift_destroy_boxed_opaque_existential_0(v48);
    sub_18E68B548(v35, &qword_1EAC8DCC8, &qword_18E72CD10);
    *(&v39 + 1) = 0;
LABEL_8:
    v51 = v39;
    v52 = v40[0];
    v53 = v40[1];
    v54 = v41;
    v49 = v37;
    v50 = v38;
    v19 = __swift_project_boxed_opaque_existential_1(v55, &type metadata for GestureOutputMetadata);
    sub_18E6A45A4(&v49, *v19, v19[1], v19[2], v19[3]);
    v20 = sub_18E6C96B4();
    v22 = v21;
    sub_18E6C9B94();
    v24 = v23;
    v26 = v25;
    *&v42 = v20;
    *(&v42 + 1) = v22;

    MEMORY[0x193AD15C0](v24, v26);

    v27 = v42;
    v28 = sub_18E6C9D10();
    v30 = v29;
    v42 = v27;

    MEMORY[0x193AD15C0](v28, v30);

    MEMORY[0x193AD15C0](v42, *(&v42 + 1));

    sub_18E6A9C8C(&v49);
    __swift_destroy_boxed_opaque_existential_0(v55);
    a4 = v56;
    v14 = v57;
    v31 = HIBYTE(v57) & 0xF;
    if ((v57 & 0x2000000000000000) == 0)
    {
      v31 = v56 & 0xFFFFFFFFFFFFLL;
    }

    if (!v31)
    {
    }

    a2 = *(v7 + 80);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  v51 = v44;
  v52 = v45;
  v53 = v46;
  v54 = v47;
  v49 = v42;
  v50 = v43;
  v14 = *(&v44 + 1);
  v15 = v42;
  sub_18E6A9F20(v11, a2, a3, a4);

  sub_18E6A9C8C(&v49);
  __swift_destroy_boxed_opaque_existential_0(v48);
  v16 = (v15 & 8) == 0;
  v17 = __OFADD__(v14, v16);
  v18 = v14 + v16;
  if (!v17)
  {
    *(&v39 + 1) = v18;
    goto LABEL_8;
  }

  __break(1u);
LABEL_18:
  result = sub_18E6ED4A8(0, *(a2 + 16) + 1, 1, a2);
  a2 = result;
LABEL_12:
  v33 = *(a2 + 16);
  v32 = *(a2 + 24);
  if (v33 >= v32 >> 1)
  {
    result = sub_18E6ED4A8((v32 > 1), v33 + 1, 1, a2);
    a2 = result;
  }

  *(a2 + 16) = v33 + 1;
  v34 = a2 + 16 * v33;
  *(v34 + 32) = a4;
  *(v34 + 40) = v14;
  *(v7 + 80) = a2;
  return result;
}

uint64_t sub_18E6A7638(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    return result;
  }

  v4 = v3;
  v5 = result;
  v49 = 0;
  v50 = 0xE000000000000000;
  if (a3)
  {
    *&v42 = a2;
    *(&v42 + 1) = a3;

    MEMORY[0x193AD15C0](8250, 0xE200000000000000);
    MEMORY[0x193AD15C0](v42, *(&v42 + 1));
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DCD0, &qword_18E72CD18);
  v48[3] = v6;
  v48[4] = sub_18E6A9CE0();
  v48[0] = v5;
  v41[3] = v6;
  v41[0] = v5;
  sub_18E6A9C30(v4, &v35);
  v30 = 0u;
  v31 = 0u;
  *&v32 = 0;
  v34 = MEMORY[0x1E69E7CC0];
  sub_18E69F7B4(v41, v33);
  v28[3] = v38;
  v28[4] = v39;
  v28[1] = v36;
  v28[2] = v37;
  v29 = v40;
  v28[0] = v35;
  if (!*(&v39 + 1))
  {
    swift_bridgeObjectRetain_n();
    __swift_destroy_boxed_opaque_existential_0(v41);
    sub_18E68B548(v28, &qword_1EAC8DCC8, &qword_18E72CD10);
    *(&v32 + 1) = 0;
LABEL_8:
    v44 = v32;
    v45 = v33[0];
    v46 = v33[1];
    v47 = v34;
    v42 = v30;
    v43 = v31;
    v12 = __swift_project_boxed_opaque_existential_1(v48, v6);
    sub_18E6A8FB4(&v42, *v12);
    v13 = sub_18E6C96B4();
    v15 = v14;
    sub_18E6C9B94();
    v17 = v16;
    v19 = v18;
    *&v35 = v13;
    *(&v35 + 1) = v15;

    MEMORY[0x193AD15C0](v17, v19);

    v20 = v35;
    v21 = sub_18E6C9D10();
    v23 = v22;
    v35 = v20;

    MEMORY[0x193AD15C0](v21, v23);

    MEMORY[0x193AD15C0](v35, *(&v35 + 1));

    sub_18E6A9C8C(&v42);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v8 = v49;
    v6 = v50;
    v24 = HIBYTE(v50) & 0xF;
    if ((v50 & 0x2000000000000000) == 0)
    {
      v24 = v49 & 0xFFFFFFFFFFFFLL;
    }

    if (!v24)
    {
    }

    v5 = *(v4 + 80);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  v44 = v37;
  v45 = v38;
  v46 = v39;
  v47 = v40;
  v42 = v35;
  v43 = v36;
  v7 = *(&v37 + 1);
  v8 = v35;
  swift_bridgeObjectRetain_n();
  sub_18E6A9C8C(&v42);
  __swift_destroy_boxed_opaque_existential_0(v41);
  v9 = (v8 & 8) == 0;
  v10 = __OFADD__(v7, v9);
  v11 = v7 + v9;
  if (!v10)
  {
    *(&v32 + 1) = v11;
    goto LABEL_8;
  }

  __break(1u);
LABEL_18:
  result = sub_18E6ED4A8(0, *(v5 + 16) + 1, 1, v5);
  v5 = result;
LABEL_12:
  v26 = *(v5 + 16);
  v25 = *(v5 + 24);
  if (v26 >= v25 >> 1)
  {
    result = sub_18E6ED4A8((v25 > 1), v26 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v26 + 1;
  v27 = v5 + 16 * v26;
  *(v27 + 32) = v8;
  *(v27 + 40) = v6;
  *(v4 + 80) = v5;
  return result;
}

uint64_t sub_18E6A7960(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 == 0xFF)
  {
    return result;
  }

  v6 = v5;
  v7 = a3;
  v9 = result;
  v56 = 0;
  v57 = 0xE000000000000000;
  if (a5)
  {
    *&v46 = a4;
    *(&v46 + 1) = a5;

    MEMORY[0x193AD15C0](8250, 0xE200000000000000);
    MEMORY[0x193AD15C0](v46, *(&v46 + 1));
  }

  v54 = &type metadata for GestureNodeMatcher;
  v55 = sub_18E6A9DAC();
  v52[0] = v9;
  v52[1] = a2;
  v53 = v7;
  v45 = &type metadata for GestureNodeMatcher;
  v43[0] = v9;
  v43[1] = a2;
  v44 = v7;
  sub_18E6A9C30(v5, &v37);
  v32 = 0u;
  v33 = 0u;
  *&v34 = 0;
  v36 = MEMORY[0x1E69E7CC0];
  sub_18E69F7B4(v43, v35);
  v30[3] = v40;
  v30[4] = v41;
  v30[1] = v38;
  v30[2] = v39;
  v31 = v42;
  v30[0] = v37;
  if (!*(&v41 + 1))
  {
    sub_18E6A9E00(v9, a2, v7);
    sub_18E67EEC4(v9, a2, v7);
    __swift_destroy_boxed_opaque_existential_0(v43);
    sub_18E68B548(v30, &qword_1EAC8DCC8, &qword_18E72CD10);
    *(&v34 + 1) = 0;
LABEL_8:
    v48 = v34;
    v49 = v35[0];
    v50 = v35[1];
    v51 = v36;
    v46 = v32;
    v47 = v33;
    __swift_project_boxed_opaque_existential_1(v52, &type metadata for GestureNodeMatcher);
    sub_18E711EE8(&v46);
    v15 = sub_18E6C96B4();
    v17 = v16;
    sub_18E6C9B94();
    v19 = v18;
    v21 = v20;
    *&v37 = v15;
    *(&v37 + 1) = v17;

    MEMORY[0x193AD15C0](v19, v21);

    v22 = v37;
    v23 = sub_18E6C9D10();
    v25 = v24;
    v37 = v22;

    MEMORY[0x193AD15C0](v23, v25);

    MEMORY[0x193AD15C0](v37, *(&v37 + 1));

    sub_18E6A9C8C(&v46);
    __swift_destroy_boxed_opaque_existential_0(v52);
    v9 = v56;
    v10 = v57;
    v26 = HIBYTE(v57) & 0xF;
    if ((v57 & 0x2000000000000000) == 0)
    {
      v26 = v56 & 0xFFFFFFFFFFFFLL;
    }

    if (!v26)
    {
    }

    v7 = *(v6 + 80);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  v48 = v39;
  v49 = v40;
  v50 = v41;
  v51 = v42;
  v46 = v37;
  v47 = v38;
  v10 = *(&v39 + 1);
  v11 = v37;
  sub_18E6A9E00(v9, a2, v7);
  sub_18E67EEC4(v9, a2, v7);
  sub_18E6A9C8C(&v46);
  __swift_destroy_boxed_opaque_existential_0(v43);
  v12 = (v11 & 8) == 0;
  v13 = __OFADD__(v10, v12);
  v14 = v10 + v12;
  if (!v13)
  {
    *(&v34 + 1) = v14;
    goto LABEL_8;
  }

  __break(1u);
LABEL_18:
  result = sub_18E6ED4A8(0, *(v7 + 16) + 1, 1, v7);
  v7 = result;
LABEL_12:
  v28 = *(v7 + 16);
  v27 = *(v7 + 24);
  if (v28 >= v27 >> 1)
  {
    result = sub_18E6ED4A8((v27 > 1), v28 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 16) = v28 + 1;
  v29 = v7 + 16 * v28;
  *(v29 + 32) = v9;
  *(v29 + 40) = v10;
  *(v6 + 80) = v7;
  return result;
}

uint64_t sub_18E6A7CBC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    if (a4)
    {

      MEMORY[0x193AD15C0](8250, 0xE200000000000000);
      MEMORY[0x193AD15C0](a3, a4);
    }

    sub_18E72B6C8();
    MEMORY[0x193AD15C0](0, 0xE000000000000000);
  }

  return v4;
}

uint64_t sub_18E6A7E24(uint64_t result, char a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a2 & 1) == 0)
  {
    if (a4)
    {

      MEMORY[0x193AD15C0](8250, 0xE200000000000000);
      MEMORY[0x193AD15C0](a3, a4);
    }

    sub_18E72B6C8();
    MEMORY[0x193AD15C0](0, 0xE000000000000000);
  }

  return v5;
}

uint64_t sub_18E6A7F8C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    return result;
  }

  v6 = v5;
  v9 = result;
  v52 = 0;
  v53 = 0xE000000000000000;
  if (a5)
  {
    *&v45 = a4;
    *(&v45 + 1) = a5;

    MEMORY[0x193AD15C0](8250, 0xE200000000000000);
    MEMORY[0x193AD15C0](v45, *(&v45 + 1));
  }

  v51[3] = &type metadata for RelationMap;
  v51[0] = v9;
  v51[1] = a2;
  v51[4] = sub_18E6A9F70();
  v51[2] = a3;
  v44[0] = v9;
  v44[1] = a2;
  v44[2] = a3;
  v44[3] = &type metadata for RelationMap;
  sub_18E6A9C30(v5, &v38);
  v33 = 0u;
  v34 = 0u;
  *&v35 = 0;
  v37 = MEMORY[0x1E69E7CC0];
  sub_18E69F7B4(v44, v36);
  v31[3] = v41;
  v31[4] = v42;
  v31[1] = v39;
  v31[2] = v40;
  v32 = v43;
  v31[0] = v38;
  if (!*(&v42 + 1))
  {
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    __swift_destroy_boxed_opaque_existential_0(v44);
    sub_18E68B548(v31, &qword_1EAC8DCC8, &qword_18E72CD10);
    *(&v35 + 1) = 0;
LABEL_8:
    v47 = v35;
    v48 = v36[0];
    v49 = v36[1];
    v50 = v37;
    v45 = v33;
    v46 = v34;
    v15 = __swift_project_boxed_opaque_existential_1(v51, &type metadata for RelationMap);
    sub_18E724C68(&v45, *v15, v15[1], v15[2]);
    v16 = sub_18E6C96B4();
    v18 = v17;
    sub_18E6C9B94();
    v20 = v19;
    v22 = v21;
    *&v38 = v16;
    *(&v38 + 1) = v18;

    MEMORY[0x193AD15C0](v20, v22);

    v23 = v38;
    v24 = sub_18E6C9D10();
    v26 = v25;
    v38 = v23;

    MEMORY[0x193AD15C0](v24, v26);

    MEMORY[0x193AD15C0](v38, *(&v38 + 1));

    sub_18E6A9C8C(&v45);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v9 = v52;
    v10 = v53;
    v27 = HIBYTE(v53) & 0xF;
    if ((v53 & 0x2000000000000000) == 0)
    {
      v27 = v52 & 0xFFFFFFFFFFFFLL;
    }

    if (!v27)
    {
    }

    a3 = *(v6 + 80);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  v47 = v40;
  v48 = v41;
  v49 = v42;
  v50 = v43;
  v45 = v38;
  v46 = v39;
  v10 = *(&v40 + 1);
  v11 = v38;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_18E6A9C8C(&v45);
  __swift_destroy_boxed_opaque_existential_0(v44);
  v12 = (v11 & 8) == 0;
  v13 = __OFADD__(v10, v12);
  v14 = v10 + v12;
  if (!v13)
  {
    *(&v35 + 1) = v14;
    goto LABEL_8;
  }

  __break(1u);
LABEL_18:
  result = sub_18E6ED4A8(0, *(a3 + 16) + 1, 1, a3);
  a3 = result;
LABEL_12:
  v29 = *(a3 + 16);
  v28 = *(a3 + 24);
  if (v29 >= v28 >> 1)
  {
    result = sub_18E6ED4A8((v28 > 1), v29 + 1, 1, a3);
    a3 = result;
  }

  *(a3 + 16) = v29 + 1;
  v30 = a3 + 16 * v29;
  *(v30 + 32) = v9;
  *(v30 + 40) = v10;
  *(v6 + 80) = a3;
  return result;
}

uint64_t sub_18E6A82E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v4 = v3;
    v5 = result;
    v55 = 0;
    v56 = 0xE000000000000000;
    if (a3)
    {
      *&v46 = a2;
      *(&v46 + 1) = a3;

      MEMORY[0x193AD15C0](8250, 0xE200000000000000);
      MEMORY[0x193AD15C0](v46, *(&v46 + 1));
    }

    *&v39 = v5;

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DD48, &unk_18E72CD60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DCB8, &qword_18E72CD00);
    if (swift_dynamicCast())
    {
      sub_18E689D58(&v46, v52);
      v45[3] = v6;
      v45[0] = v5;
      sub_18E6A9C30(v4, &v39);
      v34 = 0u;
      v35 = 0u;
      *&v36 = 0;
      v38 = MEMORY[0x1E69E7CC0];
      sub_18E69F7B4(v45, v37);
      v32[3] = v42;
      v32[4] = v43;
      v32[1] = v40;
      v32[2] = v41;
      v33 = v44;
      v32[0] = v39;
      if (*(&v43 + 1))
      {
        v48 = v41;
        v49 = v42;
        v50 = v43;
        v51 = v44;
        v46 = v39;
        v47 = v40;
        v7 = *(&v41 + 1);
        v8 = v39;

        sub_18E6A9C8C(&v46);
        result = __swift_destroy_boxed_opaque_existential_0(v45);
        v9 = (v8 & 8) == 0;
        v10 = __OFADD__(v7, v9);
        v11 = v7 + v9;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(&v36 + 1) = v11;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v45);
        sub_18E68B548(v32, &qword_1EAC8DCC8, &qword_18E72CD10);
        *(&v36 + 1) = 0;
      }

      v48 = v36;
      v49 = v37[0];
      v50 = v37[1];
      v51 = v38;
      v46 = v34;
      v47 = v35;
      v12 = v53;
      v13 = v54;
      __swift_project_boxed_opaque_existential_1(v52, v53);
      (*(v13 + 24))(&v46, v12, v13);
      v14 = sub_18E6C96B4();
      v16 = v15;
      sub_18E6C9B94();
      v18 = v17;
      v20 = v19;
      *&v39 = v14;
      *(&v39 + 1) = v16;

      MEMORY[0x193AD15C0](v18, v20);

      v21 = v39;
      v22 = sub_18E6C9D10();
      v24 = v23;
      v39 = v21;

      MEMORY[0x193AD15C0](v22, v24);

      MEMORY[0x193AD15C0](v39, *(&v39 + 1));

      sub_18E6A9C8C(&v46);
      __swift_destroy_boxed_opaque_existential_0(v52);
    }

    else
    {
      *&v48 = 0;
      v46 = 0u;
      v47 = 0u;
      sub_18E68B548(&v46, &qword_1EAC8DCC0, &qword_18E72CD08);
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      *&v39 = v5;
      sub_18E72B6C8();
      MEMORY[0x193AD15C0](v46, *(&v46 + 1));
    }

    v26 = v55;
    v25 = v56;
    v27 = HIBYTE(v56) & 0xF;
    if ((v56 & 0x2000000000000000) == 0)
    {
      v27 = v55 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      v28 = *(v4 + 80);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_18E6ED4A8(0, *(v28 + 16) + 1, 1, v28);
        v28 = result;
      }

      v30 = *(v28 + 16);
      v29 = *(v28 + 24);
      if (v30 >= v29 >> 1)
      {
        result = sub_18E6ED4A8((v29 > 1), v30 + 1, 1, v28);
        v28 = result;
      }

      *(v28 + 16) = v30 + 1;
      v31 = v28 + 16 * v30;
      *(v31 + 32) = v26;
      *(v31 + 40) = v25;
      *(v4 + 80) = v28;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_18E6A86EC(uint64_t a1)
{
  if (!a1)
  {
    return 1701736302;
  }

  v1 = a1;
  if ((a1 & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((a1 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v2 = sub_18E6ED4A8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  if (v5 >= v4 >> 1)
  {
    v2 = sub_18E6ED4A8((v4 > 1), v5 + 1, 1, v2);
  }

  *(v2 + 2) = v5 + 1;
  v6 = &v2[16 * v5];
  *(v6 + 4) = 0xD000000000000012;
  *(v6 + 5) = 0x800000018E73A170;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_18E6ED4A8(0, *(v2 + 2) + 1, 1, v2);
    }

    v8 = *(v2 + 2);
    v7 = *(v2 + 3);
    if (v8 >= v7 >> 1)
    {
      v2 = sub_18E6ED4A8((v7 > 1), v8 + 1, 1, v2);
    }

    *(v2 + 2) = v8 + 1;
    v9 = &v2[16 * v8];
    *(v9 + 4) = 0xD00000000000001BLL;
    *(v9 + 5) = 0x800000018E73A150;
  }

LABEL_14:
  if ((v1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_18E6ED4A8(0, *(v2 + 2) + 1, 1, v2);
    }

    v11 = *(v2 + 2);
    v10 = *(v2 + 3);
    if (v11 >= v10 >> 1)
    {
      v2 = sub_18E6ED4A8((v10 > 1), v11 + 1, 1, v2);
    }

    *(v2 + 2) = v11 + 1;
    v12 = &v2[16 * v11];
    *(v12 + 4) = 0xD000000000000012;
    *(v12 + 5) = 0x800000018E73A130;
    if ((v1 & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  if ((v1 & 8) != 0)
  {
LABEL_22:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_18E6ED4A8(0, *(v2 + 2) + 1, 1, v2);
    }

    v14 = *(v2 + 2);
    v13 = *(v2 + 3);
    if (v14 >= v13 >> 1)
    {
      v2 = sub_18E6ED4A8((v13 > 1), v14 + 1, 1, v2);
    }

    *(v2 + 2) = v14 + 1;
    v15 = &v2[16 * v14];
    *(v15 + 4) = 0xD000000000000014;
    *(v15 + 5) = 0x800000018E73A110;
  }

LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DCF8, &qword_18E72CEB0);
  sub_18E6A9E68();
  v16 = sub_18E72AF58();
  v18 = v17;

  MEMORY[0x193AD15C0](v16, v18);

  MEMORY[0x193AD15C0](32032, 0xE200000000000000);

  return 8315;
}

BOOL sub_18E6A8A1C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_18E6A8A4C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_18E6A8A78@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_18E6A8B3C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_18E6A8B4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_18E6A9A28(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_18E6A8B8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

id makeGfNode<A>(with:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for GestureNodeShim(0, *(*a1 + 368), a3, a4);

  v7 = objc_allocWithZone(v6);
  v8 = sub_18E6A9908(a1, a2);

  swift_unknownObjectUnownedAssign();
  return v8;
}

uint64_t sub_18E6A8C70(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v12 = a1 & 0x1FF;
  v13 = BYTE2(a1);
  v10[0] = a2;
  v10[1] = a3;
  v11 = a4;
  result = sub_18E67E800(&v12, v10);
  if (result)
  {
    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      sub_18E6A90C4(a1 & 0xFF01FF, v4, a2, a3, v5);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id GFGestureNodeDefaultValue(uint64_t a1)
{
  v1 = sub_18E72B7F8();

  return v1;
}

uint64_t GFGestureNode.traits.getter@<X0>(void *a1@<X8>)
{
  v3 = *((*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))() + 40);

  *a1 = v3;
  return result;
}

uint64_t GFGestureNode.traits.setter(uint64_t *a1)
{
  v2 = *a1;
  *((*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))() + 40) = v2;
}

uint64_t (*GFGestureNode.traits.modify(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[1] = a2;
  a1[2] = v2;
  GFGestureNode.traits.getter(a1);
  return sub_18E6A8EC4;
}

uint64_t sub_18E6A8EC4(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return GFGestureNode.traits.setter(a1);
  }

  v3 = *a1;

  GFGestureNode.traits.setter(&v3);
}

uint64_t (*GFGestureNode.options.modify(uint64_t a1, uint64_t a2))(uint64_t *a1, char a2)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = v2;
  GFGestureNode.options.getter();
  return sub_18E6A8F78;
}

uint64_t sub_18E6A8F78(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = *a1;
    a1 = &v3;
  }

  return GFGestureNode.options.setter(a1);
}

uint64_t sub_18E6A8FB4(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  if (v4 >= 2)
  {
    if ((v5 & 1) == 0)
    {
      *a1 = v5 | 1;
    }

    *(a1 + 1) = xmmword_18E72CA40;

    *(a1 + 3) = xmmword_18E72CA50;
LABEL_8:
    v7 = (a2 + 48);
    do
    {
      v9 = *(v7 - 2);
      v8 = *(v7 - 1);
      v10 = *v7;
      v7 += 24;
      sub_18E67EEC4(v9, v8, v10);
      sub_18E6A7960(v9, v8, v10, 0, 0);
      result = sub_18E682A3C(v9, v8, v10);
      --v4;
    }

    while (v4);
    return result;
  }

  if ((~v5 & 9) != 0)
  {
    *a1 = v5 | 9;
  }

  *(a1 + 1) = xmmword_18E72CA40;

  *(a1 + 3) = xmmword_18E72CA50;
  if (v4)
  {
    goto LABEL_8;
  }

  return result;
}

void sub_18E6A90C4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_18E72AE18();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 != 2)
  {
    return;
  }

  sub_18E6C4348(&v87);
  if (v88 == 255)
  {
    if ((*(a2 + 248) & 0xFE) == 2)
    {
      return;
    }
  }

  else
  {
    v16 = v88 & 0xFE;
    sub_18E6AA028(v87, v88);
    if (v16 == 2)
    {
      return;
    }
  }

  v76 = v15;
  v77 = v13;
  v79 = v12;
  v80 = BYTE2(a1);
  v78 = a1;
  v74 = a1 & 0x100;
  v81 = v6;
  v17 = *(v6 + 64);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  *(v18 + 32) = a5;
  *(v18 + 40) = a2;

  sub_18E67EEC4(a3, a4, a5);

  sub_18E6F0618(v17, sub_18E6AA018, v18, &v87);
  v19 = v87;
  v20 = v88;
  v21 = v90;
  v22 = v91;
  v82 = v92;
  v83 = v93;
  v75 = v89;
  v23 = (v89 + 64) >> 6;
  if ((v87 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v24 = sub_18E72B548();
  if (v24)
  {
    v84 = v24;
    type metadata accessor for AnyGestureNode();
    swift_dynamicCast();
    v25 = v85;
    v26 = v21;
    v27 = v22;
    if (v85)
    {
      while (1)
      {
        v86 = v25;
        if ((v82(&v86) & 1) == 0 || v25 == a2)
        {
          goto LABEL_31;
        }

        v30 = *(v81 + 112);
        v31 = (*(*v25 + 168))(&v86);
        if ((v86 & 4) != 0 || (*(a2 + 48) & 4) != 0)
        {
          goto LABEL_24;
        }

        v32 = (*(*v25 + 192))(v31);
        if (!v32)
        {
          goto LABEL_31;
        }

        v34 = v32;
        v35 = v33;
        v73 = v30;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          break;
        }

        swift_unknownObjectRelease();
LABEL_32:
        v21 = v26;
        v22 = v27;
        if (v19 < 0)
        {
          goto LABEL_7;
        }

LABEL_10:
        v28 = v21;
        v29 = v22;
        v26 = v21;
        if (!v22)
        {
          while (1)
          {
            v26 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              break;
            }

            if (v26 >= v23)
            {
              goto LABEL_50;
            }

            v29 = *(v20 + 8 * v26);
            ++v28;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_61:
          swift_once();
LABEL_52:
          v56 = qword_1EAC8E570;
          goto LABEL_56;
        }

LABEL_14:
        v27 = (v29 - 1) & v29;
        v25 = *(*(v19 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v29)))));

        if (!v25)
        {
          goto LABEL_50;
        }
      }

      v37 = Strong;
      v72 = *(a2 + 64);
      ObjectType = swift_getObjectType();
      if (v37 == v34 || (v70 = ObjectType, v39 = swift_getObjectType(), v40 = *(v35 + 16), v71 = v35, (v40(v37, v72, a2, v39, v35) & 1) != 0))
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v30 = v73;
      }

      else
      {
        v55 = (*(v72 + 16))(v34, v71, v25, v70);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v30 = v73;
        if ((v55 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

LABEL_24:
      if (v80 == 2)
      {
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_31;
        }

        v73 = v30;
        v41 = v74 >> 8;
        v42 = *(a2 + 192);
        v43 = swift_getObjectType();
        LOBYTE(v85) = v78;
        LOBYTE(v84) = v41;
        v30 = v73;
        (*(v42 + 40))(&v86, a2, &v85, &v84, v25, v43, v42);
        swift_unknownObjectRelease();
        if (v86 == 2)
        {
          goto LABEL_31;
        }

        v44 = v78;
        if (v86)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v44 = v78;
        if ((v78 & 0x10000) != 0)
        {
LABEL_31:

          goto LABEL_32;
        }
      }

      LOBYTE(v86) = v44;
      v45 = v74;
      BYTE1(v86) = BYTE1(v74);
      BYTE2(v86) = v80;
      if (sub_18E69C160(&v86, v25))
      {
        goto LABEL_31;
      }

      v46 = v45 == 0;
      if (v45)
      {
        v47 = v25;
      }

      else
      {
        v47 = a2;
      }

      v48 = v30;
      if (v46)
      {
        v49 = v25;
      }

      else
      {
        v49 = a2;
      }

      v50 = *(v48 + 16);
      v73 = v48 + 16;
      v71 = *(v48 + 24);
      v72 = v50;
      v51 = *(v50 + 16);

      if (v51)
      {

        v70 = v47;
        v52 = sub_18E6879CC(v47);
        if (v53)
        {
          v54 = *(*(v72 + 56) + 8 * v52);

          HIDWORD(v69) = sub_18E68CE2C(v49, v54);

          v47 = v70;
          if ((v69 & 0x100000000) != 0)
          {
            goto LABEL_47;
          }
        }

        else
        {

          v47 = v70;
        }
      }

      sub_18E69C730(v49, v47);
LABEL_47:

      goto LABEL_31;
    }
  }

LABEL_50:
  sub_18E687EE8(v19);

  if (sub_18E680FFC())
  {
    v26 = v79;
    v20 = v77;
    v23 = v81;
    if (qword_1EAC8D8F8 != -1)
    {
      goto LABEL_61;
    }

    goto LABEL_52;
  }

  v26 = v79;
  v20 = v77;
  v23 = v81;
  if (qword_1ED6F7F98 != -1)
  {
    swift_once();
  }

  v56 = qword_1ED6F7FA0;
LABEL_56:
  v57 = __swift_project_value_buffer(v26, v56);
  v58 = v76;
  (*(v20 + 16))(v76, v57, v26);

  v59 = sub_18E72ADF8();
  v60 = sub_18E72B3E8();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v86 = v62;
    *v61 = 136315138;
    v63 = *(*(v23 + 112) + 16);

    v64 = v20;
    v65 = sub_18E6BF464(0xD000000000000014, 0x800000018E73A1E0, v63);
    v67 = v66;

    v68 = sub_18E6C5E8C(v65, v67, &v86);

    *(v61 + 4) = v68;
    _os_log_impl(&dword_18E67C000, v59, v60, "Updated failure deps:\n%s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x193AD25C0](v62, -1, -1);
    MEMORY[0x193AD25C0](v61, -1, -1);

    (*(v64 + 8))(v58, v79);
  }

  else
  {

    (*(v20 + 8))(v58, v26);
  }
}

id sub_18E6A9908(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  *(v2 + qword_1EAC8DC88) = 0;
  *(v2 + qword_1EAC8DC80) = a1;
  v7 = *((v6 & v5) + 0x188) == MEMORY[0x1E69E7CA8] + 8;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectUnownedInit();
  *(v2 + OBJC_IVAR____TtC8Gestures18AnyGestureNodeShim_platformKey) = a2;
  *(v2 + OBJC_IVAR____TtC8Gestures18AnyGestureNodeShim_isValueless) = v7;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for AnyGestureNodeShim();

  v8 = objc_msgSendSuper2(&v12, sel_init);
  v9 = *(a1 + 120);
  v10 = *(a1 + 128);
  *(a1 + 120) = sub_18E6A6034;
  *(a1 + 128) = 0;
  sub_18E6826D0(v9, v10);
  return v8;
}

uint64_t sub_18E6A9A28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_18E6A9A74()
{
  result = qword_1EAC8DC90;
  if (!qword_1EAC8DC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8DC90);
  }

  return result;
}

unint64_t sub_18E6A9ACC()
{
  result = qword_1EAC8DC98;
  if (!qword_1EAC8DC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8DC98);
  }

  return result;
}

unint64_t sub_18E6A9B24()
{
  result = qword_1EAC8DCA0;
  if (!qword_1EAC8DCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8DCA0);
  }

  return result;
}

unint64_t sub_18E6A9B7C()
{
  result = qword_1EAC8DCA8;
  if (!qword_1EAC8DCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8DCA8);
  }

  return result;
}

uint64_t sub_18E6A9BD0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_18E6A9CE0()
{
  result = qword_1EAC8DCD8;
  if (!qword_1EAC8DCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DCD0, &qword_18E72CD18);
    sub_18E6A9DAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8DCD8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_18E6A9DAC()
{
  result = qword_1EAC8DCE0;
  if (!qword_1EAC8DCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8DCE0);
  }

  return result;
}

uint64_t sub_18E6A9E00(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_18E67EEC4(result, a2, a3);
  }

  return result;
}

unint64_t sub_18E6A9E14()
{
  result = qword_1EAC8DCE8;
  if (!qword_1EAC8DCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8DCE8);
  }

  return result;
}

unint64_t sub_18E6A9E68()
{
  result = qword_1EAC8D8C0;
  if (!qword_1EAC8D8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAC8DCF8, &qword_18E72CEB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8D8C0);
  }

  return result;
}

unint64_t sub_18E6A9ECC()
{
  result = qword_1EAC8DD18;
  if (!qword_1EAC8DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8DD18);
  }

  return result;
}

uint64_t sub_18E6A9F20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_18E6A9F70()
{
  result = qword_1EAC8DD50;
  if (!qword_1EAC8DD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8DD50);
  }

  return result;
}

unint64_t sub_18E6A9FC4()
{
  result = qword_1EAC8D8C8;
  if (!qword_1EAC8D8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8D8C8);
  }

  return result;
}

void sub_18E6AA028(unint64_t a1, char a2)
{
  if (a2 != -1)
  {
    sub_18E69E818(a1, a2);
  }
}

unint64_t sub_18E6AA03C(unint64_t result, char a2)
{
  if (a2 == 3)
  {
    return sub_18E683B80(result);
  }

  return result;
}

void *assignWithCopy for GestureTag(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

uint64_t sub_18E6AA094(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18E6AA0E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_18E6AA138(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_18E6AA150(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_18E6AA178(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_18E6AA208(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && *(*(*(a3 + 16) - 8) + 64) <= 0x18uLL && (*(v4 + 80) & 0x100000) == 0)
  {
    (*(v4 + 16))(a1, a2);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 + 16) & ~v5));
  }

  return v3;
}

uint64_t sub_18E6AA42C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_18E6AA56C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_18E6AA794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  return (*(v4 + 32))(a2, v6, a1);
}

uint64_t sub_18E6AA86C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a4@<X8>)
{
  if (a2)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
    v7 = (a4 + *(swift_getTupleTypeMetadata2() + 48));
    (*(*(AssociatedTypeWitness - 8) + 16))(a4, a1, AssociatedTypeWitness);
    type metadata accessor for GestureOutput(0, AssociatedTypeWitness, v8, v9);
    *v7 = 0u;
    v7[1] = 0u;
  }

  else
  {
    *a4 = 1;
    v10 = MEMORY[0x1E69E7CC0];
    *(a4 + 8) = MEMORY[0x1E69E7CC0];
    *(a4 + 16) = v10;
    *(a4 + 24) = xmmword_18E72CDF0;
    v11 = swift_getAssociatedTypeWitness();
    type metadata accessor for GestureOutput(0, v11, v12, v13);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18E6AAA58(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t GestureNodeOptions.description.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    return 1701736302;
  }

  if (v1)
  {
    v2 = sub_18E6ED4A8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v5 = *(v2 + 2);
    v4 = *(v2 + 3);
    if (v5 >= v4 >> 1)
    {
      v2 = sub_18E6ED4A8((v4 > 1), v5 + 1, 1, v2);
    }

    *(v2 + 2) = v5 + 1;
    v6 = &v2[16 * v5];
    *(v6 + 4) = 0x6C62617369447369;
    *(v6 + 5) = 0xEA00000000006465;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  if ((v1 & 2) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_18E6ED4A8(0, *(v2 + 2) + 1, 1, v2);
    }

    v8 = *(v2 + 2);
    v7 = *(v2 + 3);
    if (v8 >= v7 >> 1)
    {
      v2 = sub_18E6ED4A8((v7 > 1), v8 + 1, 1, v2);
    }

    *(v2 + 2) = v8 + 1;
    v9 = &v2[16 * v8];
    *(v9 + 4) = 0xD000000000000032;
    *(v9 + 5) = 0x800000018E73A010;
  }

  if ((v1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_18E6ED4A8(0, *(v2 + 2) + 1, 1, v2);
    }

    v11 = *(v2 + 2);
    v10 = *(v2 + 3);
    if (v11 >= v10 >> 1)
    {
      v2 = sub_18E6ED4A8((v10 > 1), v11 + 1, 1, v2);
    }

    *(v2 + 2) = v11 + 1;
    v12 = &v2[16 * v11];
    *(v12 + 4) = 0xD000000000000010;
    *(v12 + 5) = 0x800000018E73A200;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DCF8, &qword_18E72CEB0);
  sub_18E6A9E68();
  v13 = sub_18E72AF58();
  v15 = v14;

  MEMORY[0x193AD15C0](v13, v15);

  MEMORY[0x193AD15C0](32032, 0xE200000000000000);

  return 8315;
}

unint64_t sub_18E6AAD44()
{
  result = qword_1EAC8DDF0;
  if (!qword_1EAC8DDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8DDF0);
  }

  return result;
}

unint64_t sub_18E6AAD9C()
{
  result = qword_1EAC8DDF8;
  if (!qword_1EAC8DDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8DDF8);
  }

  return result;
}

uint64_t GestureComponentContext.startTime.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t GestureComponentContext.currentTime.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

uint64_t destroy for GestureComponentContext(void *a1)
{
}

uint64_t initializeWithCopy for GestureComponentContext(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

void *assignWithCopy for GestureComponentContext(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];

  a1[5] = a2[5];

  a1[6] = a2[6];

  return a1;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t assignWithTake for GestureComponentContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t getEnumTagSinglePayload for GestureComponentContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GestureComponentContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *assignWithCopy for GestureTraitCollection(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for GestureTraitCollection(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for GestureUpdateSource(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GestureUpdateSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_18E6AB234(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_18E6AB24C(void *result, int a2)
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

uint64_t sub_18E6AB27C()
{
  v1 = *(v0 + 48);
  if (((*(*v1 + 80))() & 1) == 0)
  {
    return 0;
  }

  return v1;
}

uint64_t sub_18E6AB2D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3)
    {
      return sub_18E6AB300(v2, v3);
    }

    return 0;
  }

  return !v3;
}

uint64_t sub_18E6AB300(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 4 * (v10 | (v4 << 6)));
    result = MEMORY[0x193AD1DC0](*(a2 + 40), v13, 4);
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 4 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E6AB458(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    sub_18E72B888();
    MEMORY[0x193AD1DF0](v13);
    result = sub_18E72B8E8();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t ConcreteScrollEvent.timestamp.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

void *ConcreteScrollEvent.init(id:phase:timestamp:location:delta:acceleratedDelta:)@<X0>(void *result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>, double a11@<D5>)
{
  v11 = *a2;
  *a5 = *result;
  *(a5 + 8) = v11;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = a6;
  *(a5 + 40) = a7;
  *(a5 + 48) = a8;
  *(a5 + 56) = a9;
  *(a5 + 64) = a10;
  *(a5 + 72) = a11;
  return result;
}

unint64_t sub_18E6AB828(uint64_t a1)
{
  result = sub_18E6AB850();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E6AB850()
{
  result = qword_1EAC8DE00;
  if (!qword_1EAC8DE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8DE00);
  }

  return result;
}

unint64_t sub_18E6AB8A4(uint64_t a1)
{
  result = sub_18E6AB8CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E6AB8CC()
{
  result = qword_1EAC8DE08;
  if (!qword_1EAC8DE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8DE08);
  }

  return result;
}

unint64_t sub_18E6AB920(uint64_t a1)
{
  result = sub_18E6AB948();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E6AB948()
{
  result = qword_1EAC8DE10;
  if (!qword_1EAC8DE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8DE10);
  }

  return result;
}

unint64_t sub_18E6AB9A0()
{
  result = qword_1EAC8DE18;
  if (!qword_1EAC8DE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8DE18);
  }

  return result;
}

unint64_t sub_18E6AB9F4(uint64_t a1)
{
  *(a1 + 8) = sub_18E6ABA24();
  result = sub_18E6ABA78();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_18E6ABA24()
{
  result = qword_1EAC8DE20;
  if (!qword_1EAC8DE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8DE20);
  }

  return result;
}

unint64_t sub_18E6ABA78()
{
  result = qword_1EAC8DE28[0];
  if (!qword_1EAC8DE28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAC8DE28);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ConcreteScrollEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 80))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ConcreteScrollEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_18E6ABCA8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_18E6ABD40(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 56 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (*(v11 + 48) == 1)
    {
      v12 = *v11;
      v13 = *(v11 + 16);
      v14 = *(v11 + 32);
      *(v10 + 48) = *(v11 + 48);
      *(v10 + 16) = v13;
      *(v10 + 32) = v14;
      *v10 = v12;
    }

    else
    {
      *v10 = *v11;
      *(v10 + 8) = *(v11 + 8);
      *(v10 + 24) = *(v11 + 24);
      *(v10 + 40) = *(v11 + 40);
      *(v10 + 48) = *(v11 + 48);
    }
  }

  return v3;
}

uint64_t sub_18E6ABE80(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  result = *(((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8) + 48);
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_18E6ABF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  if (*(v8 + 48) == 1)
  {
    v9 = *v8;
    v10 = *(v8 + 16);
    v11 = *(v8 + 32);
    *(v7 + 48) = *(v8 + 48);
    *(v7 + 16) = v10;
    *(v7 + 32) = v11;
    *v7 = v9;
  }

  else
  {
    *v7 = *v8;
    *(v7 + 8) = *(v8 + 8);
    *(v7 + 24) = *(v8 + 24);
    *(v7 + 40) = *(v8 + 40);
    *(v7 + 48) = *(v8 + 48);
  }

  return a1;
}

uint64_t sub_18E6ABFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 48);
  if (*(v7 + 48) == 1)
  {
    if (v9 == 1)
    {
      v10 = *v8;
      v11 = *(v8 + 16);
      v12 = *(v8 + 32);
      *(v7 + 48) = *(v8 + 48);
      *(v7 + 16) = v11;
      *(v7 + 32) = v12;
      *v7 = v10;
    }

    else
    {
      *v7 = *v8;
      *(v7 + 8) = *(v8 + 8);
      *(v7 + 24) = *(v8 + 24);
      *(v7 + 40) = *(v8 + 40);
      *(v7 + 48) = *(v8 + 48);
    }
  }

  else if (v9 == 1)
  {
    sub_18E6AC114(v7);
    v14 = *(v8 + 16);
    v13 = *(v8 + 32);
    v15 = *v8;
    *(v7 + 48) = *(v8 + 48);
    *(v7 + 16) = v14;
    *(v7 + 32) = v13;
    *v7 = v15;
  }

  else
  {
    *v7 = *v8;
    *(v7 + 8) = *(v8 + 8);
    *(v7 + 16) = *(v8 + 16);
    *(v7 + 24) = *(v8 + 24);
    *(v7 + 32) = *(v8 + 32);
    *(v7 + 40) = *(v8 + 40);
    *(v7 + 48) = *(v8 + 48);
  }

  return a1;
}