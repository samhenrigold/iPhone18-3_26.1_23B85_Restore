void AutoShortcutAppSection.applyingFilter(_:)()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v3 = v0[7];
  sub_1CA94C218();
  v4 = OUTLINED_FUNCTION_69();
  sub_1CA2B5ED4(v4, v5, v3);
  v7 = v6;
  v41 = v0[1];
  v42 = *v0;
  v8 = v0[2];
  v9 = v0[4];
  v44 = v0[3];
  v45 = v9;
  v46 = v0[5];
  v43 = v0[6];
  v39 = type metadata accessor for AutoShortcutAppSection(0);
  v10 = *(v39 + 32);
  v11 = sub_1CA948D28();
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6_0();
  v17 = (v16 - v15);
  v38 = v13;
  v18 = *(v13 + 16);
  v18(v16 - v15, v0 + v10, v11);
  *v2 = v42;
  v2[1] = v41;
  v2[2] = v8;
  v2[3] = v44;
  v2[4] = v9;
  v2[5] = v46;
  v2[6] = v43;
  v19 = *(v39 + 32);
  v40 = v2;
  v18(v2 + v19, v17, v11);
  v20 = objc_opt_self();
  sub_1CA280EAC(v42, v41, v8, v44);
  v21 = v43;
  sub_1CA94C218();
  v22 = [v20 lockedAppBundleIdentifiers];
  v23 = sub_1CA94C8F8();

  v24 = sub_1CA27AF18(v9, v46, v23);

  v25 = 0;
  OUTLINED_FUNCTION_60_1();
  v27 = MEMORY[0x1E69E7CC0];
  v47 = v26;
LABEL_2:
  for (i = (v26 + 16 * v25); ; i += 16)
  {
    if (v11 == v25)
    {
      (*(v38 + 8))(v17, v11);

      v40[7] = v27;
      OUTLINED_FUNCTION_36();
      return;
    }

    if (v25 >= *(v7 + 16))
    {
      break;
    }

    v29 = *(i - 1);
    v30 = *i;
    v31 = v29;
    if ((v24 & v30 & 1) == 0)
    {
      v35 = v45 & v30;
LABEL_10:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1CA27B0E8();
      }

      v36 = *(v27 + 16);
      if (v36 >= *(v27 + 24) >> 1)
      {
        sub_1CA27B0E8();
      }

      ++v25;
      *(v27 + 16) = v36 + 1;
      v37 = v27 + 16 * v36;
      *(v37 + 32) = v29;
      *(v37 + 40) = v35 & 1;
      v26 = v47;
      goto LABEL_2;
    }

    v32 = v31;
    v33 = [v31 entityInfo];
    if (!v33)
    {
      v35 = 1;
      goto LABEL_10;
    }

    v34 = v33;

    ++v25;
  }

  __break(1u);
}

void static AutoShortcutAppSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_49_0();
  v4 = v2[1];
  v6 = v2[2];
  v5 = v2[3];
  v7 = v3[1];
  v9 = v3[2];
  v8 = v3[3];
  if (!v4)
  {
    if (!v7)
    {
      OUTLINED_FUNCTION_25_1();
      sub_1CA2BBC74(v38, v39);
      OUTLINED_FUNCTION_50();
      goto LABEL_19;
    }

    sub_1CA94C218();
    sub_1CA94C218();
    goto LABEL_29;
  }

  if (!v7)
  {
    sub_1CA94C218();
    sub_1CA94C218();
    v24 = OUTLINED_FUNCTION_8_1();
    sub_1CA2BBC74(v24, v25);
LABEL_30:
    OUTLINED_FUNCTION_50();
    sub_1CA2BBC74(v52, v53);
    goto LABEL_31;
  }

  v10 = *v2 == *v3 && v4 == v7;
  if (!v10 && (sub_1CA94D7F8() & 1) == 0)
  {
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_50();
    sub_1CA280EAC(v42, v43, v44, v45);
    v46 = OUTLINED_FUNCTION_8_1();
    sub_1CA280EAC(v46, v47, v48, v49);
LABEL_29:
    OUTLINED_FUNCTION_25_1();
    sub_1CA2BBC74(v50, v51);
    OUTLINED_FUNCTION_35();
    goto LABEL_30;
  }

  if (v6 != v9 || v5 != v8)
  {
    OUTLINED_FUNCTION_50();
    v54 = sub_1CA94D7F8();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_50();
    sub_1CA280EAC(v12, v13, v14, v15);
    v16 = OUTLINED_FUNCTION_8_1();
    sub_1CA280EAC(v16, v17, v18, v19);
    v20 = OUTLINED_FUNCTION_8_1();
    sub_1CA2BBC74(v20, v21);
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_50();
    sub_1CA2BBC74(v22, v23);
    if ((v54 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_20;
  }

  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_25_1();
  sub_1CA280EAC(v26, v27, v28, v29);
  v30 = OUTLINED_FUNCTION_8_1();
  sub_1CA280EAC(v30, v31, v32, v33);
  v34 = OUTLINED_FUNCTION_8_1();
  sub_1CA2BBC74(v34, v35);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_25_1();
LABEL_19:
  sub_1CA2BBC74(v36, v37);
LABEL_20:
  v40 = v1[4] == v0[4] && v1[5] == v0[5];
  if (v40 || (sub_1CA94D7F8() & 1) != 0)
  {
    sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
    if (sub_1CA94CFD8())
    {
      sub_1CA2B642C(v1[7], v0[7]);
      if (v41)
      {
        type metadata accessor for AutoShortcutAppSection(0);
        sub_1CA948CE8();
      }
    }
  }

LABEL_31:
  OUTLINED_FUNCTION_70_2();
}

void AutoShortcutAppSection.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v2 = v1;
  if (*(v0 + 8))
  {
    MEMORY[0x1CCAA2780](1);
    sub_1CA94C458();
    sub_1CA94C458();
  }

  else
  {
    MEMORY[0x1CCAA2780](0);
  }

  sub_1CA94C458();
  sub_1CA94CFE8();
  sub_1CA2BB7D0(v2, *(v0 + 56));
  type metadata accessor for AutoShortcutAppSection(0);
  sub_1CA948D28();
  sub_1CA277284();
  sub_1CA94C298();
  OUTLINED_FUNCTION_76_0();
}

uint64_t AutoShortcutAppSection.hashValue.getter()
{
  sub_1CA94D918();
  AutoShortcutAppSection.hash(into:)();
  return sub_1CA94D968();
}

uint64_t sub_1CA2B78A8(uint64_t a1)
{
  sub_1CA94D918();
  AutoShortcutAppSection.hash(into:)();
  return sub_1CA94D968();
}

void sub_1CA2B78E4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_7(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1CA32E48C(v4, 1);
  OUTLINED_FUNCTION_29_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443A60, &qword_1CA981B48);
  OUTLINED_FUNCTION_45_1(v8);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_28_0();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1CA2B798C(uint64_t a1)
{
  v5 = *(a1 + 16);
  v6 = *(*v2 + 16);
  if (__OFADD__(v6, v5))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1CA32E48C(v6 + v5, 1);
  v1 = *v2;
  v7 = *(*v2 + 16);
  v8 = (*(*v2 + 24) >> 1) - v7;
  v9 = sub_1CA2BAA48(&v39, *v2 + 40 * v7 + 32, v8, a1);
  if (v9 < v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v9)
  {
    v11 = *(v1 + 16);
    v12 = __OFADD__(v11, v9);
    v13 = v9 + v11;
    if (v12)
    {
      __break(1u);
LABEL_24:
      *(v1 + 16) = v10 + v3 + 1;
      goto LABEL_7;
    }

    *(v1 + 16) = v13;
  }

  if (v9 != v8)
  {
LABEL_7:

    *v2 = v1;
    return;
  }

LABEL_10:
  if (!v40)
  {
    goto LABEL_7;
  }

  v14 = v40 - 1;
  if (__OFSUB__(v40, 1))
  {
    goto LABEL_26;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v14 < *(v39 + 16))
  {
    v15 = *(v1 + 16);
    v16 = v39 + 40 * v14;
    v17 = *(v16 + 48);
    v18 = *(v16 + 56);
    v19 = *(v16 + 64);
    v20 = *(v16 + 65);
    OUTLINED_FUNCTION_54();
    v22 = v21;
    v24 = v23;
    sub_1CA2BC124();
    v10 = v15;
    v25 = v22;
    v32 = v24 + 25;
    v33 = v24;
LABEL_15:
    v35 = v25;
    v36 = *(v1 + 24) >> 1;
    v34 = v10;
    if (v36 < v10 + 1)
    {
      sub_1CA2E4ABC();
      v10 = v34;
      v25 = v35;
      v1 = v31;
      v36 = *(v31 + 24) >> 1;
    }

    v3 = 0;
    v26 = 40 * v10;
    v27 = (v32 + 40 * v25);
    for (i = -1; ; --i)
    {
      if (v10 + v3 >= v36)
      {
        *(v1 + 16) = v10 + v3;
        v25 -= v3;
        v10 += v3;
        goto LABEL_15;
      }

      v29 = v1 + v26;
      *(v29 + 32) = v38;
      *(v29 + 40) = v37;
      *(v29 + 48) = v17;
      *(v29 + 56) = v18;
      *(v29 + 64) = v19;
      *(v29 + 65) = v20 & 1;
      if (v25 == v3)
      {
        goto LABEL_24;
      }

      if (v25 + i >= *(v33 + 16))
      {
        break;
      }

      v17 = *(v27 - 17);
      v18 = *(v27 - 9);
      v19 = *(v27 - 1);
      v30 = *v27;
      v27 -= 40;
      v20 = v30;
      OUTLINED_FUNCTION_54();
      sub_1CA2BC124();
      v10 = v34;
      v25 = v35;
      ++v3;
      v26 += 40;
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_28:
  __break(1u);
}

void sub_1CA2B7CFC()
{
  OUTLINED_FUNCTION_77_1();
  v4 = OUTLINED_FUNCTION_55_0(v3);
  if (v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v6;
  v5(v4, 1);
  v11 = *v1;
  if (!*(v2 + 16))
  {

    if (!v0)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v11 + 24) >> 1) - *(v11 + 16) < v0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v9);
  swift_arrayInitWithCopy();

  if (!v0)
  {
LABEL_8:
    *v1 = v11;
    OUTLINED_FUNCTION_76_0();
    return;
  }

  v12 = *(v11 + 16);
  v8 = __OFADD__(v12, v0);
  v13 = v12 + v0;
  if (!v8)
  {
    *(v11 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1CA2B7DD0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_7(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1CA32E4EC(v4, 1);
  OUTLINED_FUNCTION_29_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A40, &qword_1CA981B28);
  OUTLINED_FUNCTION_45_1(v8);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_28_0();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1CA2B7EA0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_7(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1CA32E51C(v4, 1);
  OUTLINED_FUNCTION_29_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_34_1();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_28_0();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1CA2B7F60(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_7(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1CA32E54C(v4, 1);
  OUTLINED_FUNCTION_29_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_34_1();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_28_0();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1CA2B7FF4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_7(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1CA274DD0(v4, 1);
  OUTLINED_FUNCTION_29_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_34_1();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_28_0();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1CA2B80DC()
{
  OUTLINED_FUNCTION_37_0();
  v4 = v3;
  v5 = _s17ControlFlowBranchVMa(0);
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_0();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438E8, &qword_1CA9819D8);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v41 - v18;
  v20 = *(v4 + 16);
  v21 = *(*v0 + 16);
  if (__OFADD__(v21, v20))
  {
    __break(1u);
    goto LABEL_10;
  }

  v48 = v17;
  v49 = v5;
  sub_1CA32E57C(v21 + v20, 1);
  v2 = *v0;
  v1 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v5 = *(v7 + 72);
  v22 = *(*v0 + 16);
  v23 = (*(*v0 + 24) >> 1) - v22;
  v24 = sub_1CA2BB06C(&v50, *v0 + v1 + v5 * v22, v23, v4);
  if (v24 < v20)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v24)
  {
    v27 = *(v2 + 16);
    v28 = __OFADD__(v27, v24);
    v29 = v27 + v24;
    if (v28)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v2 + 16) = v29;
  }

  if (v24 != v23)
  {
    sub_1CA28A224(v50);
LABEL_8:
    *v0 = v2;
    OUTLINED_FUNCTION_36();
    return;
  }

LABEL_11:
  v23 = *(v2 + 16);
  v25 = v51;
  v43 = v51;
  v44 = v50;
  v26 = v52;
  v20 = v53;
  v41 = v52;
  if (v54)
  {
    v30 = (v54 - 1) & v54;
    v31 = __clz(__rbit64(v54)) | (v53 << 6);
    v42 = (v52 + 64) >> 6;
LABEL_19:
    OUTLINED_FUNCTION_30_0(*(v44 + 56) + v31 * v5);
    v34 = 0;
LABEL_20:
    v47 = v23;
    __swift_storeEnumTagSinglePayload(v19, v34, 1, v49);
    while (2)
    {
      v35 = v48;
      sub_1CA2BBE68(v19, v48);
      if (__swift_getEnumTagSinglePayload(v35, 1, v49) != 1)
      {
        sub_1CA2BBED8(v35);
        v46 = *(v2 + 24) >> 1;
        if (v46 < v47 + 1)
        {
          sub_1CA2E6984();
          v2 = v40;
          v46 = *(v40 + 24) >> 1;
        }

        v45 = v2 + v1;
        v36 = v49;
        while (1)
        {
          sub_1CA2BBE68(v19, v15);
          if (__swift_getEnumTagSinglePayload(v15, 1, v36) == 1)
          {
            break;
          }

          sub_1CA2BBF40(v15, v11);
          v35 = v47;
          if (v47 >= v46)
          {
            sub_1CA2BC0CC(v11, _s17ControlFlowBranchVMa);
            goto LABEL_38;
          }

          sub_1CA2BBED8(v19);
          sub_1CA2BBF40(v11, v45 + v35 * v5);
          if (!v30)
          {
            while (1)
            {
              v37 = v20 + 1;
              if (__OFADD__(v20, 1))
              {
                break;
              }

              if (v37 >= v42)
              {
                v30 = 0;
                v39 = 1;
                goto LABEL_34;
              }

              v30 = *(v43 + 8 * v37);
              ++v20;
              if (v30)
              {
                v20 = v37;
                goto LABEL_33;
              }
            }

            __break(1u);
            goto LABEL_40;
          }

          v37 = v20;
LABEL_33:
          v38 = __clz(__rbit64(v30));
          v30 &= v30 - 1;
          OUTLINED_FUNCTION_30_0(*(v44 + 56) + (v38 | (v37 << 6)) * v5);
          v39 = 0;
LABEL_34:
          v47 = v35 + 1;
          v36 = v49;
          __swift_storeEnumTagSinglePayload(v19, v39, 1, v49);
        }

        sub_1CA2BBED8(v15);
        v35 = v47;
LABEL_38:
        *(v2 + 16) = v35;
        continue;
      }

      break;
    }

LABEL_40:
    sub_1CA2BBED8(v19);
    sub_1CA28A224(v44);
    sub_1CA2BBED8(v35);
    goto LABEL_8;
  }

LABEL_14:
  v42 = (v26 + 64) >> 6;
  while (1)
  {
    v32 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v32 >= ((v26 + 64) >> 6))
    {
      v30 = 0;
      v34 = 1;
      goto LABEL_20;
    }

    v33 = *(v25 + 8 * v32);
    ++v20;
    if (v33)
    {
      v30 = (v33 - 1) & v33;
      v31 = __clz(__rbit64(v33)) | (v32 << 6);
      v20 = v32;
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_1CA2B8514(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_7(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1CA32E5AC(v4, 1);
  OUTLINED_FUNCTION_29_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_34_1();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_28_0();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1CA2B85A8(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  v9 = sub_1CA2B8B40(a1);
  v10 = sub_1CA25B418(*v1);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1CA277E18(result, 1);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = (*(v3 + 0x18) >> 1) - v13;
  result = sub_1CA2BB294(&v26, (v3 + 8 * v13 + 32), (*((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - v13, v8);
  if (result < v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v11 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v11)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v3 + 16) = v16;
  }

  if (result != v14)
  {
LABEL_7:
    result = sub_1CA28A224(v26);
    *v7 = v2;
    return result;
  }

LABEL_10:
  v3 = *(v3 + 16);
  v4 = v26;
  v5 = v27;
  v6 = v29;
  v24 = v28;
  v8 = v30;
  if (v26 < 0)
  {
LABEL_14:
    if (!sub_1CA94D358())
    {
      goto LABEL_7;
    }

    sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
    result = swift_dynamicCast();
    v18 = v25;
    goto LABEL_22;
  }

  if (v30)
  {
    v17 = v29;
LABEL_20:
    v19 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v18 = *(*(v26 + 48) + ((v17 << 9) | (8 * v19)));
    result = v18;
  }

  else
  {
    while (1)
    {
      v17 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_44;
      }

      if (v17 >= ((v28 + 64) >> 6))
      {
        break;
      }

      v8 = *(v27 + 8 * v17);
      ++v6;
      if (v8)
      {
        v6 = v17;
        goto LABEL_20;
      }
    }

    v18 = 0;
    v8 = 0;
  }

  v29 = v6;
  v30 = v8;
LABEL_22:
  if (!v18)
  {
    goto LABEL_7;
  }

LABEL_23:
  if (v3 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_1CA94C698();
  }

  v2 = *v7;
  v20 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v23 = *v7 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v3 >= v20)
    {
      *(v23 + 16) = v3;
      goto LABEL_23;
    }

    *(v23 + 32 + 8 * v3++) = v18;
    if ((v4 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!sub_1CA94D358())
    {
      goto LABEL_41;
    }

    sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
    result = swift_dynamicCast();
    v18 = v25;
LABEL_37:
    if (!v18)
    {
LABEL_41:
      *(v23 + 16) = v3;
      goto LABEL_7;
    }
  }

  if (v8)
  {
LABEL_33:
    v22 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v18 = *(*(v4 + 48) + ((v6 << 9) | (8 * v22)));
    result = v18;
LABEL_34:
    v26 = v4;
    v27 = v5;
    v28 = v24;
    v29 = v6;
    v30 = v8;
    goto LABEL_37;
  }

  while (1)
  {
    v21 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v21 >= ((v24 + 64) >> 6))
    {
      v18 = 0;
      v8 = 0;
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v21);
    ++v6;
    if (v8)
    {
      v6 = v21;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

void sub_1CA2B88B4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_7(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1CA32E5C4(v4, 1);
  OUTLINED_FUNCTION_29_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443F50, &qword_1CA981A60);
  OUTLINED_FUNCTION_45_1(v8);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_28_0();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1CA2B8988()
{
  OUTLINED_FUNCTION_77_1();
  v4 = OUTLINED_FUNCTION_55_0(v3);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  v5(v4, 1);
  v9 = *v1;
  if (!*(v2 + 16))
  {

    if (!v0)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  v8(0);
  if (v10 < v0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v0)
  {
LABEL_8:
    *v1 = v9;
    OUTLINED_FUNCTION_76_0();
    return;
  }

  v11 = *(v9 + 16);
  v7 = __OFADD__(v11, v0);
  v12 = v11 + v0;
  if (!v7)
  {
    *(v9 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1CA2B8A88(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1CA32E5F4(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v7 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1CA2B8B40(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1CA94D328();
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t sub_1CA2B8B60(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_1CA25B3D0(0, &qword_1EDB9F740, off_1E836F5A8);
      result = sub_1CA94C6C8();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1CA2B8C14(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  if (dynamic_cast_existential_0_class_conditional(v6, v6))
  {
    v7 = &unk_1EC443910;
    v8 = &unk_1CA981A00;
  }

  else
  {
    v7 = a3;
    v8 = a4;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
}

uint64_t sub_1CA2B8C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CA2B92E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CA2B8D44(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CA2B95C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1CA2B8DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CA2B96DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1CA2B8EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CA2B98D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1CA2B8ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CA2B99EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CA2B8EF4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CA2B9B04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1CA2B8F14()
{
  OUTLINED_FUNCTION_43_1();
  sub_1CA2BA79C();
  *v0 = v1;
}

void sub_1CA2B8F5C()
{
  OUTLINED_FUNCTION_42_1();
  sub_1CA2BA79C();
  *v0 = v1;
}

uint64_t sub_1CA2B8FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CA2B9F6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1CA2B8FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CA2BA058(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CA2B8FE4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CA2BA168(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1CA2B9090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CA2BA3F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CA2B9128(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CA2BA684(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1CA2B91F8()
{
  OUTLINED_FUNCTION_39_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_15_0();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443930, &qword_1CA981A28);
      v7 = OUTLINED_FUNCTION_31_0(v6);
      OUTLINED_FUNCTION_5_7(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_14_3();
        sub_1CA43F004(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447350, &unk_1CA981A30);
    OUTLINED_FUNCTION_24_2(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1CA2B92E8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443A50, &qword_1CA986840);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1CA26E4B4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446580, &qword_1CA981B40);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1CA2B93F8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4439D8, &unk_1CA981AD0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1CA270D10(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1CA2B95C4(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A90, &qword_1CA981B78);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_1CA278E60(a4 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A98, &unk_1CA981B80);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA2B96DC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1CA2B8C14(&qword_1EC443A70, &unk_1CA9843A0, &qword_1EC443A78, &qword_1CA981B60);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1CA440434((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1CA2B97F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_1();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      OUTLINED_FUNCTION_75_0(a1, a2, a3, a4, a5, a6);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 8);
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v11)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1CA2B98D4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443940, &unk_1CA982570);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1CA440440((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443948, &unk_1CA981A40);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA2B99EC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443F30, &unk_1CA981AA0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1CA440440((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4448C0, &qword_1CA981A50);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1CA2B9B04(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A38, &qword_1CA981B20);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1CA43F0B8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A40, &qword_1CA981B28);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1CA2B9D04()
{
  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_39_2();
  if (v3)
  {
    OUTLINED_FUNCTION_7_1();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_22_0();
      if (v5)
      {
LABEL_23:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_3();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  if (v4 <= v7)
  {
    v8 = *(v0 + 16);
  }

  else
  {
    v8 = v4;
  }

  if (!v8)
  {
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443A10, &unk_1CA9826E0);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4440B0, &unk_1CA981B10) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  v13 = _swift_stdlib_malloc_size(v12);
  if (!v10)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v13 - v11 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_22;
  }

  v12[2] = v7;
  v12[3] = 2 * ((v13 - v11) / v10);
LABEL_17:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4440B0, &unk_1CA981B10);
  OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    sub_1CA43F2A4();
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_76_0();
}

void sub_1CA2B9EAC()
{
  OUTLINED_FUNCTION_39_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_15_0();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444090, &unk_1CA981AF0);
      v7 = OUTLINED_FUNCTION_31_0(v6);
      OUTLINED_FUNCTION_5_7(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_14_3();
        sub_1CA43F004(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A00, &qword_1CA987610);
    OUTLINED_FUNCTION_24_2(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1CA2B9F6C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4439F0, &qword_1CA981AE8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * v11 - 64;
      if (v5)
      {
LABEL_13:
        sub_1CA2729F0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA2BA058(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4439E0, &unk_1CA982680);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1CA440434((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444060, &qword_1CA981AE0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1CA2BA168(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4439B8, &unk_1CA981AB0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 2);
      if (v5)
      {
LABEL_13:
        sub_1CA43F2B8(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), a4 + 32, 2 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1CA2BA260()
{
  OUTLINED_FUNCTION_39_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_15_0();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4439C0, &unk_1CA982640);
      v7 = OUTLINED_FUNCTION_31_0(v6);
      OUTLINED_FUNCTION_5_7(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_14_3();
        sub_1CA27B60C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444000, &unk_1CA981AC0);
    OUTLINED_FUNCTION_24_2(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1CA2BA320()
{
  OUTLINED_FUNCTION_65_0();
  if ((v5 & 1) == 0)
  {
    v9 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_1();
  if (v10 == v11)
  {
LABEL_7:
    v12 = *(v0 + 16);
    if (v9 <= v12)
    {
      v13 = *(v0 + 16);
    }

    else
    {
      v13 = v9;
    }

    if (v13)
    {
      OUTLINED_FUNCTION_75_0(v3, v4, v5, v6, v7, v8);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      v14[2] = v12;
      v14[3] = 2 * ((v15 - 32) / 32);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v12, v14 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_74_0();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v10)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1CA2BA3F0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1CA2B8C14(&qword_1EC443900, &qword_1CA9819F0, &qword_1EC443908, &qword_1CA9819F8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1CA440434((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1CA2BA504()
{
  OUTLINED_FUNCTION_39_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_15_0();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443990, &qword_1CA981A88);
      v7 = OUTLINED_FUNCTION_31_0(v6);
      OUTLINED_FUNCTION_5_7(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_14_3();
        sub_1CA278E64(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1CA2BA5C4()
{
  OUTLINED_FUNCTION_39_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_15_0();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443980, &qword_1CA981A78);
      v7 = OUTLINED_FUNCTION_31_0(v6);
      OUTLINED_FUNCTION_5_7(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_14_3();
        sub_1CA278E60(v8);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443F70, &qword_1CA981A80);
    OUTLINED_FUNCTION_24_2(v9);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_1CA2BA684(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443960, &qword_1CA981A58);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_1CA278E60(a4 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443F50, &qword_1CA981A60);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1CA2BA79C()
{
  OUTLINED_FUNCTION_37_0();
  v7 = v6;
  v9 = v8;
  v10 = v3;
  v11 = v0;
  if (v2)
  {
    OUTLINED_FUNCTION_7_1();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_22_0();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_3();
    }
  }

  else
  {
    v12 = v1;
  }

  v15 = *(v10 + 16);
  if (v12 <= v15)
  {
    v16 = *(v10 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_75_0(v0, v1, v2, v3, v4, v5);
  v17 = *(v9(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v9(0);
  OUTLINED_FUNCTION_68_0();
  if (v11)
  {
    v7(v10 + v23, v15, v20 + v23);
    *(v10 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_36();
}

void sub_1CA2BA934()
{
  OUTLINED_FUNCTION_72();
  v2 = v1 + 64;
  OUTLINED_FUNCTION_12_2();
  v6 = v5 & v4;
  if (!v7)
  {
    OUTLINED_FUNCTION_51_1();
LABEL_17:
    OUTLINED_FUNCTION_56_0(v9);
    OUTLINED_FUNCTION_70_2();
    return;
  }

  v8 = v3;
  if (!v3)
  {
    v9 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_10_0();
    v13 = (v11 - v12) >> 6;
    while (v10 < v8)
    {
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_21;
      }

      if (!v6)
      {
        while (1)
        {
          v15 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v15 >= v13)
          {
            goto LABEL_17;
          }

          v6 = *(v2 + 8 * v15);
          ++v9;
          if (v6)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v15 = v9;
LABEL_12:
      OUTLINED_FUNCTION_18_4();
      if (v16)
      {
        sub_1CA94C218();
        swift_unknownObjectRetain();
        v9 = v15;
        goto LABEL_17;
      }

      v0 += 24;
      sub_1CA94C218();
      swift_unknownObjectRetain();
      v10 = v14;
      v9 = v15;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void *sub_1CA2BAA48(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v12 = *(a4 + 16);
    v6 = 0;
LABEL_13:
    *v5 = a4;
    v5[1] = v12;
    return v6;
  }

  if (!a3)
  {
    v12 = *(a4 + 16);
LABEL_12:
    v6 = a3;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v9 = 0;
    v10 = a3 - 1;
    for (i = (a4 + 40 * v6 + 25); ; i -= 40)
    {
      v12 = v6 + v9;
      if (!(v6 + v9))
      {
        break;
      }

      if (v12 > *(a4 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v13 = *(i - 25);
      v14 = *(i - 17);
      v15 = *(i - 9);
      v16 = *(i - 1);
      v17 = *i;
      *v8 = *(i - 33);
      *(v8 + 8) = v13;
      *(v8 + 16) = v14;
      *(v8 + 24) = v15;
      *(v8 + 32) = v16;
      *(v8 + 33) = v17;
      if (!(v10 + v9))
      {
        sub_1CA2BC124();
        v12 = v6 + v9 - 1;
        goto LABEL_12;
      }

      v8 += 40;
      result = sub_1CA2BC124();
      --v9;
    }

    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1CA2BAB3C()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_4_2();
  if (!v4)
  {
    OUTLINED_FUNCTION_51_1();
LABEL_17:
    OUTLINED_FUNCTION_11_4(v10);
    OUTLINED_FUNCTION_36();
    return;
  }

  v5 = v3;
  if (!v3)
  {
    v10 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_67_0();
    while (v7 < v5)
    {
      if (__OFADD__(v7, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (!__OFADD__(v6, 1))
        {
          if (v6 + 1 >= v2)
          {
            OUTLINED_FUNCTION_61_0();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_66_0();
        }

        __break(1u);
        break;
      }

      v8 = v6;
      OUTLINED_FUNCTION_21_3();
      if (v9)
      {
        sub_1CA94C218();
        v10 = v8;
        goto LABEL_17;
      }

      v0 += 16;
      sub_1CA94C218();
      OUTLINED_FUNCTION_64_0();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1CA2BAC10()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1CA94B1C8();
  OUTLINED_FUNCTION_1_0();
  v41 = v8;
  v42 = v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v40 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v32 - v12;
  v38 = -1 << *(v1 + 32);
  OUTLINED_FUNCTION_12_2();
  v16 = v15 & v14;
  if (!v5)
  {
    v19 = 0;
LABEL_19:
    v31 = ~v38;
    *v7 = v1;
    v7[1] = v13;
    v7[2] = v31;
    v7[3] = v19;
    v7[4] = v16;
    OUTLINED_FUNCTION_36();
    return;
  }

  v17 = v3;
  if (!v3)
  {
    v19 = 0;
    goto LABEL_19;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v33 = v7;
    v34 = v13;
    v18 = 0;
    v19 = 0;
    v20 = (63 - v38) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    v37 = v17;
    while (v18 < v17)
    {
      if (__OFADD__(v18, 1))
      {
        goto LABEL_23;
      }

      if (!v16)
      {
        v13 = v34;
        while (1)
        {
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v21 >= v20)
          {
            v16 = 0;
            v7 = v33;
            goto LABEL_19;
          }

          v16 = *(v34 + 8 * v21);
          ++v19;
          if (v16)
          {
            v43 = v18 + 1;
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

      v43 = v18 + 1;
      v21 = v19;
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v1;
      v24 = *(v1 + 56);
      v26 = v41;
      v25 = v42;
      v27 = *(v42 + 72);
      v28 = v40;
      (*(v42 + 16))(v40, v24 + v27 * (v22 | (v21 << 6)), v41);
      v29 = *(v25 + 32);
      v30 = v39;
      v29(v39, v28, v26);
      v29(v5, v30, v26);
      v17 = v37;
      v18 = v43;
      if (v43 == v37)
      {
        v19 = v21;
        v7 = v33;
        v13 = v34;
        v1 = v23;
        goto LABEL_19;
      }

      v5 += v27;
      v19 = v21;
      v1 = v23;
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  __break(1u);
}

void sub_1CA2BAE84()
{
  OUTLINED_FUNCTION_72();
  v2 = v1 + 64;
  OUTLINED_FUNCTION_12_2();
  v6 = v5 & v4;
  if (!v7)
  {
    OUTLINED_FUNCTION_51_1();
LABEL_17:
    OUTLINED_FUNCTION_56_0(v9);
    OUTLINED_FUNCTION_70_2();
    return;
  }

  v8 = v3;
  if (!v3)
  {
    v9 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_10_0();
    v13 = (v11 - v12) >> 6;
    while (v10 < v8)
    {
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_21;
      }

      if (!v6)
      {
        while (1)
        {
          v15 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v15 >= v13)
          {
            goto LABEL_17;
          }

          v6 = *(v2 + 8 * v15);
          ++v9;
          if (v6)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v15 = v9;
LABEL_12:
      OUTLINED_FUNCTION_18_4();
      if (v16)
      {
        sub_1CA94C218();
        sub_1CA94C218();
        v9 = v15;
        goto LABEL_17;
      }

      v0 += 24;
      sub_1CA94C218();
      sub_1CA94C218();
      v10 = v14;
      v9 = v15;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1CA2BAF98()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_4_2();
  if (!v4)
  {
    OUTLINED_FUNCTION_51_1();
LABEL_17:
    OUTLINED_FUNCTION_11_4(v12);
    OUTLINED_FUNCTION_36();
    return;
  }

  v5 = v3;
  if (!v3)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_67_0();
    while (v7 < v5)
    {
      if (__OFADD__(v7, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (!__OFADD__(v6, 1))
        {
          if (v6 + 1 >= v2)
          {
            OUTLINED_FUNCTION_61_0();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_66_0();
        }

        __break(1u);
        break;
      }

      v8 = v6;
      OUTLINED_FUNCTION_26_2();
      if (v10)
      {
        v13 = v9;
        v12 = v8;
        goto LABEL_17;
      }

      v0 += 8;
      v11 = v9;
      OUTLINED_FUNCTION_64_0();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1CA2BB06C(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = _s17ControlFlowBranchVMa(0);
  v30 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v28 - v13;
  v31 = a4;
  v17 = *(a4 + 64);
  v16 = a4 + 64;
  v15 = v17;
  v18 = -1 << *(v16 - 32);
  if (-v18 < 64)
  {
    v19 = ~(-1 << -v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v15;
  if (!a2)
  {
    v22 = 0;
    a3 = 0;
LABEL_21:
    *a1 = v31;
    a1[1] = v16;
    a1[2] = ~v18;
    a1[3] = v22;
    a1[4] = v20;
    return a3;
  }

  if (!a3)
  {
    v22 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v28 = -1 << *(v16 - 32);
    v29 = a1;
    v21 = 0;
    v22 = 0;
    v23 = (63 - v18) >> 6;
    while (1)
    {
      if (v21 >= a3)
      {
        goto LABEL_24;
      }

      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_25;
      }

      if (!v20)
      {
        while (1)
        {
          v25 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v25 >= v23)
          {
            v20 = 0;
            a3 = v21;
            goto LABEL_19;
          }

          v20 = *(v16 + 8 * v25);
          ++v22;
          if (v20)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v25 = v22;
LABEL_15:
      v26 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v27 = *(v30 + 72);
      sub_1CA2BC070(*(v31 + 56) + v27 * (v26 | (v25 << 6)), v11, _s17ControlFlowBranchVMa);
      sub_1CA2BBF40(v11, v14);
      result = sub_1CA2BBF40(v14, a2);
      if (v24 == a3)
      {
        break;
      }

      a2 += v27;
      v21 = v24;
      v22 = v25;
    }

    v22 = v25;
LABEL_19:
    v18 = v28;
    a1 = v29;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t *sub_1CA2BB294(uint64_t *result, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v7 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    sub_1CA94D2F8();
    sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
    sub_1CA28D4F8();
    result = sub_1CA94C948();
    v4 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
    v11 = v27;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    v12 = 0;
LABEL_27:
    *v7 = v4;
    v7[1] = v8;
    v7[2] = v9;
    v7[3] = v10;
    v7[4] = v11;
    return v12;
  }

  v10 = 0;
  v17 = -1 << *(a4 + 32);
  v8 = a4 + 56;
  v9 = ~v17;
  v18 = -v17;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v11 = v19 & *(a4 + 56);
  if (!a2)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_27;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = v9;
    v21 = v7;
    v12 = 0;
    v13 = (v9 + 64) >> 6;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v4 < 0)
      {
        if (!sub_1CA94D358())
        {
          goto LABEL_25;
        }

        sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
        swift_dynamicCast();
        result = v22;
        if (!v22)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (!v11)
        {
          while (1)
          {
            v15 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            if (v15 >= v13)
            {
              v11 = 0;
              goto LABEL_25;
            }

            v11 = *(v8 + 8 * v15);
            ++v10;
            if (v11)
            {
              v10 = v15;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        v16 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        result = *(*(v4 + 48) + ((v10 << 9) | (8 * v16)));
        if (!result)
        {
          goto LABEL_25;
        }
      }

      *v6++ = result;
      ++v12;
      if (v14 == a3)
      {
        v12 = a3;
LABEL_25:
        v9 = v20;
        v7 = v21;
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1CA2BB48C()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_4_2();
  if (!v4)
  {
    OUTLINED_FUNCTION_51_1();
LABEL_17:
    OUTLINED_FUNCTION_11_4(v10);
    OUTLINED_FUNCTION_36();
    return;
  }

  v5 = v3;
  if (!v3)
  {
    v10 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_67_0();
    while (v7 < v5)
    {
      if (__OFADD__(v7, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (!__OFADD__(v6, 1))
        {
          if (v6 + 1 >= v2)
          {
            OUTLINED_FUNCTION_61_0();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_66_0();
        }

        __break(1u);
        break;
      }

      v8 = v6;
      OUTLINED_FUNCTION_21_3();
      if (v9)
      {
        sub_1CA94C218();
        v10 = v8;
        goto LABEL_17;
      }

      v0 += 16;
      sub_1CA94C218();
      OUTLINED_FUNCTION_64_0();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1CA2BB560()
{
  OUTLINED_FUNCTION_71_0();
  v1 = v0 + 64;
  OUTLINED_FUNCTION_12_2();
  v9 = v8 & v7;
  if (!v3)
  {
    v12 = 0;
LABEL_18:
    *v2 = v5;
    v2[1] = v1;
    v2[2] = ~v6;
    v2[3] = v12;
    v2[4] = v9;
    OUTLINED_FUNCTION_73();
    return;
  }

  if (!v4)
  {
    v12 = 0;
    goto LABEL_18;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v10 = v3;
    v25 = v6;
    v26 = v2;
    v11 = 0;
    v12 = 0;
    v13 = (63 - v6) >> 6;
    v27 = v5;
    while (1)
    {
      if (v11 >= v4)
      {
        goto LABEL_21;
      }

      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_22;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v15 >= v13)
          {
            v9 = 0;
            v2 = v26;
            goto LABEL_16;
          }

          v9 = *(v1 + 8 * v15);
          ++v12;
          if (v9)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v15 = v12;
LABEL_12:
      v16 = (*(v5 + 56) + 48 * (__clz(__rbit64(v9)) | (v15 << 6)));
      v17 = v16[1];
      v9 &= v9 - 1;
      v18 = v16[2];
      v19 = v16[3];
      v20 = v16[4];
      v21 = v16[5];
      *v10 = *v16;
      v10[1] = v17;
      v10[2] = v18;
      v10[3] = v19;
      v10[4] = v20;
      v10[5] = v21;
      v22 = v4;
      if (v14 == v4)
      {
        break;
      }

      v10 += 6;
      v23 = v20;
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      v11 = v14;
      v12 = v15;
      v5 = v27;
      v4 = v22;
    }

    v24 = v20;
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    v12 = v15;
    v2 = v26;
    v5 = v27;
LABEL_16:
    v6 = v25;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

void sub_1CA2BB6FC()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_4_2();
  if (!v4)
  {
    OUTLINED_FUNCTION_51_1();
LABEL_17:
    OUTLINED_FUNCTION_11_4(v12);
    OUTLINED_FUNCTION_36();
    return;
  }

  v5 = v3;
  if (!v3)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_67_0();
    while (v7 < v5)
    {
      if (__OFADD__(v7, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (!__OFADD__(v6, 1))
        {
          if (v6 + 1 >= v2)
          {
            OUTLINED_FUNCTION_61_0();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_66_0();
        }

        __break(1u);
        break;
      }

      v8 = v6;
      OUTLINED_FUNCTION_26_2();
      if (v10)
      {
        v13 = v9;
        v12 = v8;
        goto LABEL_17;
      }

      v0 += 8;
      v11 = v9;
      OUTLINED_FUNCTION_64_0();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1CA2BB7D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x1CCAA2780](v3);
  if (v3)
  {
    v4 = (a2 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v4 += 16;
      MEMORY[0x1CCAA2780](v6);
      v7 = v5;
      sub_1CA94CFE8();

      --v3;
    }

    while (v3);
  }
}

void sub_1CA2BB848()
{
  OUTLINED_FUNCTION_77_1();
  v1 = v0;
  type metadata accessor for DrawerAction(0);
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  v7 = v6 - v5;
  v8 = *(v1 + 16);
  MEMORY[0x1CCAA2780](v8);
  if (v8)
  {
    OUTLINED_FUNCTION_68_0();
    v10 = v1 + v9;
    v11 = *(v3 + 72);
    do
    {
      sub_1CA2BC070(v10, v7, type metadata accessor for DrawerAction);
      sub_1CA94C458();
      sub_1CA2BC0CC(v7, type metadata accessor for DrawerAction);
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  OUTLINED_FUNCTION_76_0();
}

uint64_t sub_1CA2BB954(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AutoShortcutAppSection(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x1CCAA2780](v7);
  if (v7)
  {
    v9 = 0;
    v10 = *(v3 + 32);
    v18[0] = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v18[1] = v10;
    v11 = *(v4 + 72);
    do
    {
      sub_1CA2BC070(v18[0] + v11 * v9, v6, type metadata accessor for AutoShortcutAppSection);
      if (*(v6 + 1))
      {
        MEMORY[0x1CCAA2780](1);
        sub_1CA94C458();
        sub_1CA94C458();
      }

      else
      {
        MEMORY[0x1CCAA2780](0);
      }

      sub_1CA94C458();
      sub_1CA94CFE8();
      v12 = *(v6 + 7);
      MEMORY[0x1CCAA2780](*(v12 + 16));
      v13 = *(v12 + 16);
      if (v13)
      {
        v14 = (v12 + 40);
        do
        {
          v15 = *(v14 - 1);
          v16 = *v14;
          v14 += 16;
          MEMORY[0x1CCAA2780](v16);
          v17 = v15;
          sub_1CA94CFE8();

          --v13;
        }

        while (v13);
      }

      ++v9;
      sub_1CA948D28();
      sub_1CA277284();
      sub_1CA94C298();
      result = sub_1CA2BC0CC(v6, type metadata accessor for AutoShortcutAppSection);
    }

    while (v9 != v7);
  }

  return result;
}

void sub_1CA2BBB6C()
{
  OUTLINED_FUNCTION_49_0();
  v2 = sub_1CA25B418(v1);
  MEMORY[0x1CCAA2780](v2);
  v3 = sub_1CA25B418(v0);
  if (v3)
  {
    v4 = v3;
    if (v3 < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v4; ++i)
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1CCAA22D0](i, v0);
        }

        else
        {
          v6 = *(v0 + 8 * i + 32);
        }

        v7 = v6;
        sub_1CA94CFE8();
      }
    }
  }
}

uint64_t sub_1CA2BBC0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1CCAA2780](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (v6 == 0.0)
      {
        v7 = 0.0;
      }

      result = MEMORY[0x1CCAA27B0](*&v7);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1CA2BBC74(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1CA2BBCBC()
{
  result = qword_1EC4438D0;
  if (!qword_1EC4438D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4438D0);
  }

  return result;
}

unint64_t sub_1CA2BBD14()
{
  result = qword_1EC4438D8;
  if (!qword_1EC4438D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4438D8);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CA2BBDC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1CA2BBE10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1CA2BBE68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438E8, &qword_1CA9819D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA2BBED8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438E8, &qword_1CA9819D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA2BBF40(uint64_t a1, uint64_t a2)
{
  v4 = _s17ControlFlowBranchVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA2BBFA4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_7(a1, a2, a3);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_47_0();
  }

  else
  {
    OUTLINED_FUNCTION_48();
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_17();
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA2BC028(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CA2BC070(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_52();
  v4 = OUTLINED_FUNCTION_23();
  v5(v4);
  return a2;
}

uint64_t sub_1CA2BC0CC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_52();
  (*(v3 + 8))(a1);
  return a1;
}

id OUTLINED_FUNCTION_47_0()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

void sub_1CA2BC194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1CA271524(0, v7, 0, a4, a5, a6, a7);
    v11 = sub_1CA2BE090(v8);
    v12 = 0;
    v13 = v8 + 56;
    v33 = v8 + 64;
    v34 = v7;
    v35 = v8 + 56;
    v36 = v8;
    if ((v11 & 0x8000000000000000) == 0)
    {
      while (v11 < 1 << *(v8 + 32))
      {
        v14 = v11 >> 6;
        if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v8 + 36) != v9)
        {
          goto LABEL_25;
        }

        v38 = v10;
        v37 = v9;
        v19 = sub_1CA94C3A8();
        v21 = v20;
        v23 = *(v39 + 16);
        v22 = *(v39 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1CA271524(v22 > 1, v23 + 1, 1, v15, v16, v17, v18);
        }

        *(v39 + 16) = v23 + 1;
        v24 = v39 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
        if (v38)
        {
          goto LABEL_29;
        }

        v13 = v35;
        v8 = v36;
        v25 = 1 << *(v36 + 32);
        if (v11 >= v25)
        {
          goto LABEL_26;
        }

        v26 = *(v35 + 8 * v14);
        if ((v26 & (1 << v11)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v36 + 36) != v37)
        {
          goto LABEL_28;
        }

        v27 = v26 & (-2 << (v11 & 0x3F));
        if (v27)
        {
          v25 = __clz(__rbit64(v27)) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v28 = v14 << 6;
          v29 = v14 + 1;
          v30 = (v33 + 8 * v14);
          while (v29 < (v25 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              sub_1CA2974B8(v11, v37, 0);
              v25 = __clz(__rbit64(v31)) + v28;
              goto LABEL_19;
            }
          }

          sub_1CA2974B8(v11, v37, 0);
        }

LABEL_19:
        if (++v12 == v34)
        {
          return;
        }

        v10 = 0;
        v9 = *(v36 + 36);
        v11 = v25;
        if (v25 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_1CA2BC3E0(uint64_t a1)
{
  v2 = v1;
  v4 = v1[2];
  if ((v4 & 0x1C) != 0)
  {
    sub_1CA94C438("Date", 4);
  }

  else
  {
    sub_1CA94C438("Time", 4);
  }

  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDB9F690;
  v6 = sub_1CA94C368();
  v7 = sub_1CA94C368();

  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  v9 = sub_1CA94C3A8();
  v11 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981350;
  *(inited + 32) = @"Key";
  v13 = *(a1 + 48);
  v14 = MEMORY[0x1E69E6158];
  *(inited + 40) = *(a1 + 40);
  *(inited + 48) = v13;
  *(inited + 64) = v14;
  *(inited + 72) = @"Label";
  *(inited + 80) = v9;
  *(inited + 88) = v11;
  *(inited + 104) = v14;
  *(inited + 112) = @"DatePickerMode";
  v15 = @"Key";
  sub_1CA94C218();
  v16 = @"Label";
  v17 = @"DatePickerMode";
  v18 = WFDatePickerModeFromCalendarUnits(v4);
  v19 = sub_1CA94C3A8();
  v21 = v20;

  *(inited + 120) = v19;
  *(inited + 128) = v21;
  *(inited + 144) = v14;
  *(inited + 152) = @"DisallowedVariableTypes";
  v22 = @"DisallowedVariableTypes";
  if (RowTemplateParameterOptions.variablesDisabled.getter())
  {
    sub_1CA25B3D0(0, &qword_1EC443AC8, off_1E836E208);
    v23 = [swift_getObjCClassFromMetadata() allInsertableVariableTypes];
    type metadata accessor for WFVariableType(0);
    sub_1CA2BE130(&qword_1EC441A60, type metadata accessor for WFVariableType);
    v24 = sub_1CA94C8F8();

    sub_1CA2BC194(v24, v25, v26, v27, v28, v29, v30);
    v32 = v31;
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = v32;
  _s3__C3KeyVMa_0(0);
  sub_1CA2BE130(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  OUTLINED_FUNCTION_7_6();
  v33 = sub_1CA94C1E8();
  v34 = sub_1CA2F864C(v33);
  v35 = &unk_1CA981000;
  if (v2[5])
  {
    sub_1CA2BDFE4(a1, v64, &unk_1EC4456C0, &qword_1CA987A30);
    if (v65)
    {
      __swift_project_boxed_opaque_existential_1(v64, v65);
      v36 = OUTLINED_FUNCTION_8_2();
      v38 = v37(v36);
      __swift_destroy_boxed_opaque_existential_0(v64);
      if (v38)
      {
        objc_opt_self();
        OUTLINED_FUNCTION_5_3();
        v39 = swift_dynamicCastObjCClass();
        v35 = &unk_1CA981000;
        if (v39 && (v40 = [v39 value]) != 0)
        {
          v41 = v40;
          v42 = swift_initStackObject();
          *(v42 + 16) = xmmword_1CA981310;
          *(v42 + 32) = @"MaximumValue";
          *(v42 + 64) = sub_1CA25B3D0(0, &qword_1EC443AC0, 0x1E695DF00);
          *(v42 + 40) = v41;
          v43 = @"MaximumValue";
          v44 = v41;
          OUTLINED_FUNCTION_7_6();
          sub_1CA94C1E8();
          OUTLINED_FUNCTION_7_6();
          v45 = sub_1CA94C1A8();

          v46 = [v34 definitionByAddingEntriesInDictionary_];

          v35 = &unk_1CA981000;
          swift_unknownObjectRelease();
          v34 = v46;
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v35 = &unk_1CA981000;
      }
    }

    else
    {
      sub_1CA27080C(v64, &unk_1EC4456C0, &qword_1CA987A30);
    }
  }

  if (v2[7])
  {
    sub_1CA2BDFE4(a1, v64, &unk_1EC4456C0, &qword_1CA987A30);
    if (v65)
    {
      __swift_project_boxed_opaque_existential_1(v64, v65);
      v47 = OUTLINED_FUNCTION_8_2();
      v49 = v48(v47);
      __swift_destroy_boxed_opaque_existential_0(v64);
      if (v49)
      {
        objc_opt_self();
        OUTLINED_FUNCTION_5_3();
        v50 = swift_dynamicCastObjCClass();
        if (v50 && (v51 = [v50 value]) != 0)
        {
          v52 = v51;
          v53 = swift_initStackObject();
          *(v53 + 16) = v35[49];
          *(v53 + 32) = @"MinimumValue";
          *(v53 + 64) = sub_1CA25B3D0(0, &qword_1EC443AC0, 0x1E695DF00);
          *(v53 + 40) = v52;
          v54 = @"MinimumValue";
          v55 = v52;
          OUTLINED_FUNCTION_7_6();
          sub_1CA94C1E8();
          OUTLINED_FUNCTION_7_6();
          v56 = sub_1CA94C1A8();

          v57 = [v34 definitionByAddingEntriesInDictionary_];

          swift_unknownObjectRelease();
          v34 = v57;
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      sub_1CA27080C(v64, &unk_1EC4456C0, &qword_1CA987A30);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446D90, &unk_1CA981540);
  v58 = swift_initStackObject();
  *(v58 + 16) = v35[49];
  v59 = *v2;
  v60 = v2[1];
  *(v58 + 32) = v59;
  *(v58 + 40) = v60;
  v61 = objc_allocWithZone(WFDatePickerParameter);
  sub_1CA94C218();
  *(v58 + 48) = [v61 initWithDefinition_];
  sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
  v62 = sub_1CA94C1E8();

  return v62;
}

uint64_t sub_1CA2BCAE8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1CA2BCB0C, 0, 0);
}

uint64_t sub_1CA2BCB0C()
{
  if (*(*(v0 + 16) + 16) && (v1 = sub_1CA271BF8(**(v0 + 32), *(*(v0 + 32) + 8)), (v2 & 1) != 0))
  {
    v3 = *(*(*(v0 + 16) + 56) + 8 * v1);
    *(v0 + 40) = v3;
    swift_unknownObjectRetain();
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRetain();
      v4 = swift_task_alloc();
      *(v0 + 48) = v4;
      *v4 = v0;
      v4[1] = sub_1CA2BCCCC;
      v5 = *(v0 + 24);

      return sub_1CA32B590(v5);
    }

    else
    {
      sub_1CA2A741C();
      swift_allocError();
      *v8 = v3;
      *(v8 + 32) = 1;
      swift_willThrow();
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_5();

      return v9();
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_4();

    return v7(0);
  }
}

uint64_t sub_1CA2BCCCC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 56) = v4;
  *(v2 + 64) = v0;

  if (v0)
  {
    v5 = sub_1CA2BCF10;
  }

  else
  {
    v5 = sub_1CA2BCDD0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA2BCDD0()
{
  v1 = *(v0 + 56);
  if (!v1)
  {
    swift_unknownObjectRelease();
    v3 = 0;
    goto LABEL_5;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_5_3();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectRelease();
LABEL_5:
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_2_4();

    return v4(v3);
  }

  sub_1CA2A741C();
  swift_allocError();
  v7 = v6;
  *(v6 + 24) = swift_getObjectType();
  *v7 = v1;
  *(v7 + 32) = 2;
  swift_willThrow();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v8();
}

uint64_t sub_1CA2BCF10()
{
  OUTLINED_FUNCTION_0();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v0();
}

uint64_t sub_1CA2BCF74(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  *(v2 + 64) = *(a2 + 16);
  *(v2 + 24) = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466D0, &qword_1CA991AA0) - 8) + 64);
  *(v2 + 32) = swift_task_alloc();
  v5 = swift_task_alloc();
  *(v2 + 40) = v5;
  *v5 = v2;
  v5[1] = sub_1CA2BD05C;

  return sub_1CA2BCAE8(v3, v4);
}

uint64_t sub_1CA2BD05C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 48) = v4;
  *(v2 + 56) = v0;

  if (v0)
  {
    v5 = sub_1CA2BD3A4;
  }

  else
  {
    v5 = sub_1CA2BD160;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA2BD160()
{
  v1 = *(v0 + 48);
  if (!v1)
  {
    v5 = *(v0 + 32);
    v3 = sub_1CA948CB8();
    goto LABEL_5;
  }

  v2 = swift_task_alloc();
  v3 = sub_1CA948CB8();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  sub_1CA2BE044();
  sub_1CA94D6D8();

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v3);
  v5 = *(v0 + 32);
  if (EnumTagSinglePayload == 1)
  {

LABEL_5:
    v6 = v5;
    v7 = 1;
    goto LABEL_7;
  }

  (*(*(v3 - 8) + 32))(*(v0 + 32), v2, v3);

  v6 = v5;
  v7 = 0;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v6, v7, 1, v3);
  v8 = *(v0 + 32);
  v9 = swift_task_alloc();
  sub_1CA2BDFE4(v8, v9, &qword_1EC4466D0, &qword_1CA991AA0);
  sub_1CA948CB8();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) != 1)
  {
    v10 = sub_1CA948C58();
    (*(*(v3 - 8) + 8))(v9, v3);
  }

  v11 = *(v0 + 32);
  v12 = *(v0 + 64);
  v13 = *(v0 + 16);

  v14 = &selRef_setAnotherDate_;
  if (!v12)
  {
    v14 = &selRef_setDate_;
  }

  [v13 *v14];

  sub_1CA27080C(v11, &qword_1EC4466D0, &qword_1CA991AA0);

  OUTLINED_FUNCTION_5();

  return v15();
}

uint64_t sub_1CA2BD3A4()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_5();

  return v0();
}

uint64_t sub_1CA2BD400()
{
  OUTLINED_FUNCTION_0();
  *(v1 + 16) = v0;
  *(v1 + 24) = *v2;
  v3 = sub_1CA25B3D0(0, &qword_1EC443AC0, 0x1E695DF00);
  v4 = swift_task_alloc();
  *(v1 + 40) = v4;
  *v4 = v1;
  v4[1] = sub_1CA2BD4C0;

  return MEMORY[0x1EEDF81A0](v3);
}

uint64_t sub_1CA2BD4C0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 48) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_2_4();

    return v5(0);
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1CA2BD5F0, 0, 0);
  }
}

uint64_t sub_1CA2BD5F0()
{
  OUTLINED_FUNCTION_0();
  if (v0[6])
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    v1 = swift_dynamicCastObjCClass();
    v0[7] = v1;
    if (v1)
    {
      v2 = swift_task_alloc();
      v0[8] = v2;
      *v2 = v0;
      v2[1] = sub_1CA2BD6F0;
      v4 = v0[3];
      v3 = v0[4];

      return sub_1CA2BCAE8(v4, v3);
    }

    swift_unknownObjectRelease_n();
  }

  OUTLINED_FUNCTION_2_4();

  return v6(0);
}

uint64_t sub_1CA2BD6F0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v4;
  *(v2 + 80) = v0;

  if (v0)
  {
    v5 = sub_1CA2BD8A0;
  }

  else
  {
    v5 = sub_1CA2BD7F4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA2BD7F4()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = WFDateComparisonResultForComparisonOperator(4uLL, *(v0 + 56), *(v0 + 72), 0, *(*(v0 + 16) + 24), 0);
  }

  else
  {
    v2 = 0;
  }

  swift_unknownObjectRelease_n();
  OUTLINED_FUNCTION_2_4();

  return v3(v2);
}

uint64_t sub_1CA2BD8A0()
{
  OUTLINED_FUNCTION_0();
  swift_unknownObjectRelease_n();
  OUTLINED_FUNCTION_2_4();

  return v0(0);
}

uint64_t sub_1CA2BD904(uint64_t a1, uint64_t a2)
{
  v6 = v2[1];
  *(v3 + 16) = *v2;
  *(v3 + 32) = v6;
  v7 = v2[3];
  *(v3 + 48) = v2[2];
  *(v3 + 64) = v7;
  v8 = swift_task_alloc();
  *(v3 + 80) = v8;
  *v8 = v3;
  v8[1] = sub_1CA2BD9BC;

  return sub_1CA2BCF74(a1, a2);
}

uint64_t sub_1CA2BD9BC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_5();

  return v0();
}

uint64_t sub_1CA2BDAA4()
{
  v2 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  v3 = v0[3];
  *(v1 + 48) = v0[2];
  *(v1 + 64) = v3;
  v4 = swift_task_alloc();
  *(v1 + 80) = v4;
  *v4 = v1;
  v4[1] = sub_1CA2BDB5C;

  return sub_1CA2BD400();
}

uint64_t sub_1CA2BDB5C()
{
  OUTLINED_FUNCTION_0();
  v2 = v1;
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_2_4();
  if (v0)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2 & 1;
  }

  return v3(v4);
}

BOOL sub_1CA2BDC78(unsigned __int8 *a1, unsigned __int8 a2)
{
  v3 = (*v2 & a2);
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1CA2BDCA8(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443AD8, &qword_1CA981BC8);
  OUTLINED_FUNCTION_52();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  v9 = sub_1CA94ACC8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - v14;
  v16 = *(v10 + 16);
  v28 = v2;
  v16(v13, v2, v9);
  v17 = MEMORY[0x1E69DAEB0];
  v26 = sub_1CA2BE130(&qword_1EC4468A0, MEMORY[0x1E69DAEB0]);
  sub_1CA94D278();
  v18 = v17;
  v19 = v29;
  sub_1CA2BE130(&qword_1EC443AE0, v18);
  v27 = a2;
  v20 = sub_1CA94C358();
  v21 = *(v19 + 48);
  *v8 = (v20 & 1) == 0;
  if (v20)
  {
    (*(v10 + 32))(&v8[v21], v15, v9);
  }

  else
  {
    (*(v10 + 8))(v15, v9);
    v22 = v27;
    v16(&v8[v21], v27, v9);
    v16(v13, v22, v9);
    sub_1CA94D288();
  }

  v23 = v30;
  sub_1CA2BE174(v8, v30);
  v24 = *v23;
  (*(v10 + 32))(v31, &v23[*(v19 + 48)], v9);
  return v24;
}

id WFDatePickerModeFromCalendarUnits(__int16 a1)
{
  v1 = *MEMORY[0x1E69E0FF8];
  v2 = *MEMORY[0x1E69E1008];
  if ((a1 & 0xE0) != 0)
  {
    v1 = *MEMORY[0x1E69E1000];
  }

  else
  {
    v2 = *MEMORY[0x1E69E0FF8];
  }

  if ((a1 & 0x201C) != 0)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1CA2BDFE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_52();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1CA2BE044()
{
  result = qword_1EC443AD0;
  if (!qword_1EC443AD0)
  {
    sub_1CA948CB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC443AD0);
  }

  return result;
}

uint64_t sub_1CA2BE0D0(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1CA94D2E8();
  }

  else
  {
    return sub_1CA94D2B8();
  }
}

uint64_t sub_1CA2BE130(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_5_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA2BE174(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443AD8, &qword_1CA981BC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1CA2BE1F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA2BE238(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1CA2BE2DC()
{
  v160 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA99E4C0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("song|identification|shazam|music", 32);
  v6 = v5;
  v7 = sub_1CA94C438("song|identification|shazam|music", 32);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v169 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  *&v170 = v11;
  v12 = &v147 - v169;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v165 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v167 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v168 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v147 - v168;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v164 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  *&v163 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  v159 = xmmword_1CA97EDF0;
  *(v20 + 16) = xmmword_1CA97EDF0;
  *(v20 + 32) = @"DescriptionAttribution";
  v21 = @"Description";
  v22 = @"DescriptionAttribution";
  v161 = sub_1CA94C438("Recognize Music - Attribution", 29);
  v158 = v23;
  v24 = sub_1CA94C438("Media identification provided by [Shazam](https://www.shazam.com).", 66);
  v26 = v25;
  v162 = &v147;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v147 - v169;
  sub_1CA948D98();
  v28 = v165;
  v29 = [v165 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v166 = inited;
  v30 = v168;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 40) = sub_1CA2F9F14(v161, v158, v24, v26, 0, 0, v27, &v147 - v30);
  v32 = v164;
  *(v20 + 64) = v164;
  *(v20 + 72) = @"DescriptionSummary";
  v33 = @"DescriptionSummary";
  v161 = sub_1CA94C438("Uses the microphone to listen to and identify nearby media.", 59);
  v158 = v34;
  v35 = sub_1CA94C438("Uses the microphone to listen to and identify nearby media.", 59);
  v37 = v36;
  v162 = &v147;
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v147 - v169;
  sub_1CA948D98();
  v39 = [v28 bundleURL];
  MEMORY[0x1EEE9AC00](v39);
  sub_1CA948B68();

  v40 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v41 = sub_1CA2F9F14(v161, v158, v35, v37, 0, 0, v38, &v147 - v30);
  *(v20 + 104) = v32;
  *(v20 + 80) = v41;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v42 = sub_1CA94C1E8();
  v43 = v163;
  v44 = sub_1CA6B3784(v42);
  v45 = v166;
  v166[15] = v44;
  v45[18] = v43;
  v45[19] = @"Discoverable";
  v46 = MEMORY[0x1E69E6370];
  *(v45 + 160) = 0;
  v45[23] = v46;
  v45[24] = @"IconName";
  v45[25] = 0x6D617A616853;
  v45[26] = 0xE600000000000000;
  v45[28] = MEMORY[0x1E69E6158];
  v45[29] = @"InputPassthrough";
  *(v45 + 240) = 0;
  v45[33] = v46;
  v45[34] = @"Name";
  v47 = @"Discoverable";
  v48 = @"IconName";
  v49 = @"InputPassthrough";
  v50 = @"Name";
  v51 = sub_1CA94C438("Shazam It (Action Name)", 23);
  v53 = v52;
  v54 = sub_1CA94C438("Shazam It", 9);
  v56 = v55;
  *&v163 = &v147;
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v147 - v169;
  sub_1CA948D98();
  v58 = [v165 bundleURL];
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v147 - v168;
  sub_1CA948B68();

  v60 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v61 = sub_1CA2F9F14(v51, v53, v54, v56, 0, 0, v57, v59);
  v62 = v166;
  v166[35] = v61;
  v62[38] = v164;
  v62[39] = @"Output";
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v63 = swift_initStackObject();
  v163 = xmmword_1CA981350;
  *(v63 + 16) = xmmword_1CA981350;
  *(v63 + 32) = 0x75736F6C63736944;
  *(v63 + 40) = 0xEF6C6576654C6572;
  *(v63 + 48) = 0x63696C627550;
  *(v63 + 56) = 0xE600000000000000;
  *(v63 + 72) = MEMORY[0x1E69E6158];
  *(v63 + 80) = 0x656C7069746C754DLL;
  *(v63 + 88) = 0xE800000000000000;
  *(v63 + 96) = 0;
  *(v63 + 120) = MEMORY[0x1E69E6370];
  *(v63 + 128) = 0x614E74757074754FLL;
  *(v63 + 136) = 0xEA0000000000656DLL;
  v64 = @"Output";
  v65 = sub_1CA94C438("Shazam Media (Default Output Name)", 34);
  v161 = v66;
  v67 = sub_1CA94C438("Shazam Media", 12);
  v69 = v68;
  v162 = &v147;
  MEMORY[0x1EEE9AC00](v67);
  v70 = &v147 - v169;
  sub_1CA948D98();
  v71 = [v165 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v147 - v168;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v63 + 144) = sub_1CA2F9F14(v65, v161, v67, v69, 0, 0, v70, v72);
  *(v63 + 168) = v164;
  *(v63 + 176) = 0x7365707954;
  *(v63 + 184) = 0xE500000000000000;
  *(v63 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v63 + 192) = &unk_1F49F27E0;
  v74 = MEMORY[0x1E69E6158];
  v75 = sub_1CA94C1E8();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v157 = v76;
  v77 = v166;
  v166[40] = v75;
  v77[43] = v76;
  v77[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v162 = swift_allocObject();
  *(v162 + 1) = xmmword_1CA981360;
  v161 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v78 = swift_allocObject();
  *(v78 + 16) = v163;
  v153 = 0x80000001CA99E620;
  *(v78 + 32) = @"Class";
  *(v78 + 40) = 0xD000000000000011;
  *(v78 + 48) = 0x80000001CA99E620;
  *(v78 + 64) = v74;
  *(v78 + 72) = @"DefaultValue";
  *(v78 + 80) = 1;
  *(v78 + 104) = MEMORY[0x1E69E6370];
  *(v78 + 112) = @"Key";
  v155 = 0xD00000000000001ELL;
  v156 = 0x80000001CA99E640;
  *(v78 + 120) = 0xD00000000000001ELL;
  *(v78 + 128) = 0x80000001CA99E640;
  *(v78 + 144) = v74;
  *(v78 + 152) = @"Label";
  v79 = @"Class";
  v80 = @"DefaultValue";
  v81 = @"Key";
  v82 = @"Label";
  v151 = v79;
  v150 = v80;
  v149 = v81;
  v152 = v82;
  v83 = @"Parameters";
  v84 = sub_1CA94C438("Show When Run (WFShazamMediaActionShowWhenRun)", 46);
  v147 = v85;
  v86 = sub_1CA94C438("Show When Run", 13);
  v88 = v87;
  v148 = &v147;
  MEMORY[0x1EEE9AC00](v86);
  v89 = v169;
  sub_1CA948D98();
  v90 = [v165 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v147 - v168;
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v93 = sub_1CA2F9F14(v84, v147, v86, v88, 0, 0, &v147 - v89, v91);
  *(v78 + 184) = v164;
  *(v78 + 160) = v93;
  _s3__C3KeyVMa_0(0);
  v148 = v94;
  v147 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v95 = sub_1CA94C1E8();
  v96 = sub_1CA2F864C(v95);
  v162[4] = v96;
  v97 = swift_allocObject();
  *(v97 + 16) = v163;
  *(v97 + 32) = v151;
  *(v97 + 40) = 0xD000000000000011;
  *(v97 + 48) = v153;
  v98 = MEMORY[0x1E69E6158];
  v99 = v150;
  *(v97 + 64) = MEMORY[0x1E69E6158];
  *(v97 + 72) = v99;
  *(v97 + 80) = 1;
  v100 = v149;
  *(v97 + 104) = MEMORY[0x1E69E6370];
  *(v97 + 112) = v100;
  *(v97 + 120) = 0xD000000000000027;
  *(v97 + 128) = 0x80000001CA99E690;
  v101 = v152;
  *(v97 + 144) = v98;
  *(v97 + 152) = v101;
  v102 = sub_1CA94C438("Error If Not Recognized (WFShazamMediaActionErrorIfNotRecognized)", 65);
  v154 = v103;
  v104 = sub_1CA94C438("Error If Not Recognized", 23);
  v106 = v105;
  *&v163 = &v147;
  MEMORY[0x1EEE9AC00](v104);
  v107 = &v147 - v89;
  sub_1CA948D98();
  v108 = v165;
  v109 = [v165 bundleURL];
  MEMORY[0x1EEE9AC00](v109);
  v110 = &v147 - v168;
  sub_1CA948B68();

  v111 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v112 = sub_1CA2F9F14(v102, v154, v104, v106, 0, 0, v107, v110);
  *(v97 + 184) = v164;
  *(v97 + 160) = v112;
  v113 = sub_1CA94C1E8();
  v114 = sub_1CA2F864C(v113);
  v115 = v162;
  v162[5] = v114;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v117 = v166;
  v166[45] = v115;
  v117[48] = v116;
  v117[49] = @"ParameterSummary";
  v118 = @"ParameterSummary";
  v119 = sub_1CA94C438("Shazam it (Parameter Summary)", 29);
  v121 = v120;
  v122 = sub_1CA94C438("Shazam it", 9);
  v124 = v123;
  v164 = &v147;
  MEMORY[0x1EEE9AC00](v122);
  v125 = &v147 - v169;
  sub_1CA948D98();
  v126 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v126);
  v127 = &v147 - v168;
  sub_1CA948B68();

  v128 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v129 = sub_1CA2F9F14(v119, v121, v122, v124, 0, 0, v125, v127);
  v130 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v131 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v132 = v166;
  v166[50] = v130;
  v132[53] = v131;
  v132[54] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v133 = swift_allocObject();
  v170 = xmmword_1CA9813C0;
  *(v133 + 16) = xmmword_1CA9813C0;
  *(v133 + 32) = 0xD00000000000001ALL;
  *(v133 + 40) = 0x80000001CA993FA0;
  v134 = MEMORY[0x1E69E6158];
  *(v133 + 88) = MEMORY[0x1E69E6158];
  *(v133 + 56) = v134;
  *(v133 + 64) = 0xD00000000000001CLL;
  *(v133 + 72) = 0x80000001CA993620;
  v135 = swift_initStackObject();
  *(v135 + 16) = v159;
  *(v135 + 32) = 0xD000000000000011;
  *(v135 + 40) = 0x80000001CA99B240;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v136 = swift_allocObject();
  *(v136 + 16) = xmmword_1CA981310;
  v137 = swift_allocObject();
  *(v137 + 16) = v170;
  strcpy((v137 + 32), "WFParameterKey");
  *(v137 + 47) = -18;
  v138 = v156;
  *(v137 + 48) = v155;
  *(v137 + 56) = v138;
  *(v137 + 72) = v134;
  *(v137 + 80) = 0xD000000000000010;
  *(v137 + 88) = 0x80000001CA993570;
  *(v137 + 96) = 1;
  *(v137 + 120) = MEMORY[0x1E69E6370];
  *(v137 + 128) = 0x72756F7365524657;
  *(v137 + 168) = v134;
  *(v137 + 136) = 0xEF7373616C436563;
  *(v137 + 144) = 0xD00000000000001BLL;
  *(v137 + 152) = 0x80000001CA993590;
  v139 = @"RequiredResources";
  *(v136 + 32) = sub_1CA94C1E8();
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v135 + 48) = v136;
  *(v135 + 72) = v140;
  *(v135 + 80) = 0x72756F7365524657;
  *(v135 + 120) = v134;
  *(v135 + 88) = 0xEF7373616C436563;
  *(v135 + 96) = 0xD000000000000019;
  *(v135 + 104) = 0x80000001CA9932D0;
  v141 = sub_1CA94C1E8();
  *(v133 + 120) = v157;
  *(v133 + 96) = v141;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v143 = v166;
  v166[55] = v133;
  v143[58] = v142;
  v143[59] = @"UserInterfaceClasses";
  v144 = @"UserInterfaceClasses";
  v145 = sub_1CA94C1E8();
  v143[63] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v143[60] = v145;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA2BF578(uint64_t a1, uint64_t a2)
{
  v2 = sub_1CA94C3A8();
  v4 = v3;
  v5 = sub_1CA94C3A8();
  if (v2 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_5(v2, v6, v5);
  }

  return v8 & 1;
}

uint64_t sub_1CA2BF5F0()
{
  OUTLINED_FUNCTION_7_7();
  v3 = "VariableOverrides";
  v4 = v2;
  switch(v5)
  {
    case 1:
      v4 = OUTLINED_FUNCTION_4_3(0x704Fu);
      break;
    case 2:
      v4 = 0x6C6261766F6D6552;
      v0 = 0xE900000000000065;
      break;
    case 3:
      v0 = 0xE700000000000000;
      v4 = 0x6465646E756F42;
      break;
    case 4:
      v0 = 0xE600000000000000;
      v4 = 0x6E6564646948;
      break;
    case 5:
      v0 = 0xE600000000000000;
      v4 = 0x7365756C6156;
      break;
    case 6:
      v4 = 0xD000000000000011;
      v0 = 0x80000001CA99A950;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_5_8();
      break;
    case 2:
      v2 = 0x6C6261766F6D6552;
      v6 = 0xE900000000000065;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x6465646E756F42;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v2 = 0x6E6564646948;
      break;
    case 5:
      v6 = 0xE600000000000000;
      v2 = 0x7365756C6156;
      break;
    case 6:
      v2 = 0xD000000000000011;
      v6 = (v3 - 32) | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v4 == v2 && v0 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_5(v4, v1, v2);
  }

  return v8 & 1;
}

uint64_t sub_1CA2BF790()
{
  OUTLINED_FUNCTION_7_7();
  v3 = v2;
  switch(v4)
  {
    case 1:
      v3 = OUTLINED_FUNCTION_4_3(0x706Fu);
      break;
    case 2:
      v3 = OUTLINED_FUNCTION_4_3(0x706Fu);
      v0 = 0xEC000000646E615FLL;
      break;
    case 3:
      v0 = 0xE500000000000000;
      v3 = 0x65756C6176;
      break;
    case 4:
      v3 = 0x61765F726568746FLL;
      v0 = 0xEB0000000065756CLL;
      break;
    case 5:
      v0 = 0xE400000000000000;
      v3 = 1953066613;
      break;
    default:
      break;
  }

  v5 = 0xE800000000000000;
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_5_8();
      break;
    case 2:
      OUTLINED_FUNCTION_5_8();
      v5 = 0xEC000000646E615FLL;
      break;
    case 3:
      v5 = 0xE500000000000000;
      v2 = 0x65756C6176;
      break;
    case 4:
      v2 = 0x61765F726568746FLL;
      v5 = 0xEB0000000065756CLL;
      break;
    case 5:
      v5 = 0xE400000000000000;
      v2 = 1953066613;
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_3_5(v3, v1, v2);
  }

  return v7 & 1;
}

uint64_t sub_1CA2BF900(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x746C7561666564;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x746C7561666564;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1701667182;
      break;
    case 2:
      v5 = 0x776F6C666B726F77;
      v3 = 0xEA00000000006449;
      break;
    case 3:
      v5 = 0xD000000000000010;
      v3 = 0x80000001CA99A760;
      break;
    case 4:
      v5 = 0x456E75527473616CLL;
      v3 = 0xEC000000746E6576;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1701667182;
      break;
    case 2:
      v2 = 0x776F6C666B726F77;
      v6 = 0xEA00000000006449;
      break;
    case 3:
      v2 = 0xD000000000000010;
      v6 = 0x80000001CA99A760;
      break;
    case 4:
      v2 = 0x456E75527473616CLL;
      v6 = 0xEC000000746E6576;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_5(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1CA2BFA78(unsigned __int8 a1, char a2)
{
  v2 = 0xEC000000736E6F69;
  v3 = 0x7469646E6F434657;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0x756F706D6F434657;
    }

    if (v4 == 1)
    {
      v6 = 0x80000001CA996FE0;
    }

    else
    {
      v6 = 0xEE0065707954646ELL;
    }
  }

  else
  {
    v5 = 0x7469646E6F434657;
    v6 = 0xEC000000736E6F69;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = 0x756F706D6F434657;
    }

    if (a2 == 1)
    {
      v2 = 0x80000001CA996FE0;
    }

    else
    {
      v2 = 0xEE0065707954646ELL;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1CA94D7F8();
  }

  return v8 & 1;
}

uint64_t sub_1CA2BFB90()
{
  sub_1CA94A378();
  sub_1CA2C0C14();
  sub_1CA94C628();
  sub_1CA94C628();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1CA94D7F8();
  }

  return v1 & 1;
}

BOOL static iWorkActionsMigration.workflowNeedsMigration(_:fromClientVersion:)(uint64_t a1)
{
  v1 = 4;
  v2 = &off_1F49F28B8;
  do
  {
    if (!--v1)
    {
      break;
    }

    v3 = v2 + 2;
    sub_1CA94C218();
    v4 = sub_1CA94C368();
    v5 = sub_1CA94C1A8();
    HasActionsWithBundleIdentifier = WFWorkflowHasActionsWithBundleIdentifier(v4, v5);

    v2 = v3;
  }

  while (!HasActionsWithBundleIdentifier);
  return v1 != 0;
}

BOOL sub_1CA2BFD14(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;
    sub_1CA94C218();
    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void sub_1CA2BFDF4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a4(a3);
  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (v6 == v7)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1CCAA22D0](v7, a3);
    }

    else
    {
      if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v13 = v9;
    v11 = a1(&v13);

    if (!v4)
    {
      v7 = v8 + 1;
      if ((v11 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

Swift::Void __swiftcall iWorkActionsMigration.migrateWorkflow()()
{
  v1 = v0;
  v2 = [v0 actions];
  if (v2)
  {
    v3 = v2;
    v72 = &v64;
    v71 = sub_1CA948AF8();
    v70 = *(v71 - 8);
    MEMORY[0x1EEE9AC00](v71);
    v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v73 = v3;
    sub_1CA94CF68();
    v69 = 0x80000001CA99E7A0;
    v68 = 0x80000001CA993290;
    v6 = 0x80000001CA9936D0;
    v76 = 0x80000001CA9936F0;
    v67 = 0x80000001CA99E760;
    v75 = 0x80000001CA99E780;
    v78 = 0x80000001CA9936D0;
    v81 = v5;
    v77 = v0;
    v74 = 0x80000001CA993710;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          do
          {
            sub_1CA948AE8();
            if (!v93)
            {
              (*(v70 + 8))(v5, v71);
              [v1 finish];

              return;
            }

            sub_1CA2C0A20(&v92, &v90);
            sub_1CA2C0A30();
          }

          while ((OUTLINED_FUNCTION_8_3() & 1) == 0);
          v7 = v88;
          v8 = [v1 actionIdentifierKey];
          v9 = sub_1CA94C3A8();
          v11 = v10;

          v88 = v9;
          v89 = v11;
          v12 = [v7 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (v12)
          {
            sub_1CA94D258();
            swift_unknownObjectRelease();
          }

          else
          {
            OUTLINED_FUNCTION_9_0();
          }

          OUTLINED_FUNCTION_2_7();
          if (v13)
          {
            break;
          }

          sub_1CA2C0A74(&v90);
        }

        if (swift_dynamicCast())
        {
          break;
        }
      }

      v14 = v86;
      v15 = v87;
      v16 = [v1 actionParametersKey];
      v17 = sub_1CA94C3A8();
      v19 = v18;

      v88 = v17;
      v89 = v19;
      v20 = [v7 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v20)
      {
        sub_1CA94D258();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_9_0();
      }

      OUTLINED_FUNCTION_2_7();
      v21 = MEMORY[0x1E69E6158];
      v84 = v7;
      if (!v22)
      {
        break;
      }

      if ((OUTLINED_FUNCTION_8_3() & 1) == 0 || !v86)
      {
        goto LABEL_21;
      }

      v88 = 0xD000000000000013;
      v89 = v69;
      v23 = v86;
      v24 = [v23 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      v85 = v23;

      if (v24)
      {
        sub_1CA94D258();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_9_0();
      }

      OUTLINED_FUNCTION_2_7();
      v21 = MEMORY[0x1E69E6158];
      if (!v54)
      {
        goto LABEL_22;
      }

      if ((OUTLINED_FUNCTION_8_3() & 1) == 0)
      {
        goto LABEL_23;
      }

      v55 = v88;
      if (!v88)
      {
        goto LABEL_23;
      }

      v88 = 0xD000000000000010;
      v89 = v68;
      v25 = v55;
      v56 = [v25 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();

      if (v56)
      {
        sub_1CA94D258();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_9_0();
      }

      OUTLINED_FUNCTION_2_7();
      v21 = MEMORY[0x1E69E6158];
      if (v61)
      {
        v62 = swift_dynamicCast();
        v80 = 0;
        v63 = v88;
        if (!v62)
        {
          v63 = 0;
        }

        v82 = v63;
        if (v62)
        {
          v26 = v89;
        }

        else
        {
          v26 = 0;
        }

        goto LABEL_25;
      }

      v80 = 0;
LABEL_24:
      sub_1CA2C0A74(&v90);
      v82 = 0;
      v26 = 0;
LABEL_25:
      OUTLINED_FUNCTION_10_1();
      if (sub_1CA94C528())
      {
        v83 = v25;
        v27 = v21;
        v28 = [v1 actionIdentifierKey];
        v29 = sub_1CA94C3A8();
        v30 = v6;
        v32 = v31;

        *&v90 = v14;
        *(&v90 + 1) = v15;
        v88 = 0xD000000000000015;
        v89 = v30;
        v86 = 0x6C7070612E6D6F63;
        v87 = 0xEF73656761502E65;
        sub_1CA27BAF0();
        OUTLINED_FUNCTION_0_8();
        v64 = v27;
        v65 = v28;
        OUTLINED_FUNCTION_1_8();
        sub_1CA94D1B8();

        v33 = sub_1CA94C368();

        *&v90 = v29;
        *(&v90 + 1) = v32;
        v34 = v26;
        v35 = sub_1CA94D848();
        v36 = v84;
        [v84 __swift_setObject_forKeyedSubscript_];

        swift_unknownObjectRelease();
        if (v34)
        {
          *&v90 = v82;
          *(&v90 + 1) = v34;
          v88 = 0xD000000000000015;
          v89 = v30;
          v37 = sub_1CA94D1C8();

          v1 = v77;
          if (v37)
          {
            goto LABEL_39;
          }

          v15 = 0xD000000000000017;
          v5 = v81;
          if (v80)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        }

        v1 = v77;
        v5 = v81;
        v6 = v30;
      }

      else
      {
        v79 = v26;
        v38 = v76;
        OUTLINED_FUNCTION_10_1();
        if (sub_1CA94C528())
        {
          v83 = v25;
          v39 = [v1 actionIdentifierKey];
          v40 = sub_1CA94C3A8();
          v42 = v41;

          *&v90 = v14;
          *(&v90 + 1) = v15;
          v88 = 0xD000000000000017;
          v89 = v38;
          v66 = 0xD000000000000011;
          v86 = 0xD000000000000011;
          v87 = v75;
          sub_1CA27BAF0();
          OUTLINED_FUNCTION_0_8();
          v64 = v21;
          v65 = v21;
          OUTLINED_FUNCTION_1_8();
          sub_1CA94D1B8();
          OUTLINED_FUNCTION_12_3();
          v43 = sub_1CA94C368();

          *&v90 = v40;
          *(&v90 + 1) = v42;
          v44 = sub_1CA94D848();
          v36 = v84;
          [v84 __swift_setObject_forKeyedSubscript_];

          swift_unknownObjectRelease();
          if (!v79)
          {
            goto LABEL_39;
          }

          OUTLINED_FUNCTION_11_5();
          v88 = 0xD000000000000017;
          v89 = v38;
          v45 = OUTLINED_FUNCTION_6_7();

          v5 = v81;
          if (!v45)
          {
            if (v80)
            {
              goto LABEL_50;
            }

LABEL_49:
            v57 = v83;
            v58 = sub_1CA94C368();
            *&v90 = v15 - 7;
            *(&v90 + 1) = v68;
            sub_1CA94D848();
            OUTLINED_FUNCTION_10_1();
            [v59 v60];

            swift_unknownObjectRelease();
            goto LABEL_50;
          }

LABEL_38:

          v53 = v83;
LABEL_51:

LABEL_52:
          v6 = v78;
        }

        else
        {
          v46 = v74;
          OUTLINED_FUNCTION_10_1();
          v47 = sub_1CA94C528();
          v36 = v84;
          if (v47)
          {
            v83 = v25;
            v48 = [v1 actionIdentifierKey];
            v49 = sub_1CA94C3A8();
            v66 = v50;

            *&v90 = v14;
            *(&v90 + 1) = v15;
            v88 = 0xD000000000000017;
            v89 = v46;
            v65 = 0xD000000000000011;
            v86 = 0xD000000000000011;
            v87 = v67;
            sub_1CA27BAF0();
            OUTLINED_FUNCTION_0_8();
            v64 = v21;
            v65 = v21;
            OUTLINED_FUNCTION_1_8();
            sub_1CA94D1B8();
            OUTLINED_FUNCTION_12_3();
            v51 = sub_1CA94C368();

            *&v90 = v49;
            *(&v90 + 1) = v66;
            [v36 __swift_setObject_forKeyedSubscript_];

            swift_unknownObjectRelease();
            if (!v79)
            {
LABEL_39:

              v5 = v81;
              goto LABEL_52;
            }

            OUTLINED_FUNCTION_11_5();
            v88 = 0xD000000000000017;
            v89 = v46;
            v52 = OUTLINED_FUNCTION_6_7();

            v5 = v81;
            if (!v52)
            {
              if ((v80 & 1) == 0)
              {
                goto LABEL_49;
              }

LABEL_50:
              v53 = v85;
              goto LABEL_51;
            }

            goto LABEL_38;
          }

          v5 = v81;
        }
      }
    }

    sub_1CA2C0A74(&v90);
LABEL_21:
    v85 = 0;
    v90 = 0u;
    v91 = 0u;
LABEL_22:
    sub_1CA2C0A74(&v90);
LABEL_23:
    v25 = 0;
    v90 = 0u;
    v91 = 0u;
    v80 = 1;
    goto LABEL_24;
  }
}

_OWORD *sub_1CA2C0A20(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1CA2C0A30()
{
  result = qword_1EC443AE8;
  if (!qword_1EC443AE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC443AE8);
  }

  return result;
}

uint64_t sub_1CA2C0A74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444650, &unk_1CA981C70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id iWorkActionsMigration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id iWorkActionsMigration.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id iWorkActionsMigration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1CA2C0C14()
{
  result = qword_1EC443AF0;
  if (!qword_1EC443AF0)
  {
    sub_1CA94A378();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC443AF0);
  }

  return result;
}

id sub_1CA2C0CAC()
{
  v0 = sub_1CA949D18();
  v168 = *(v0 - 8);
  v169 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v167 = v158 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v3 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA99E800;
  *(inited + 64) = v3;
  *(inited + 72) = @"ActionKeywords";
  v4 = @"ActionClass";
  v5 = @"ActionKeywords";
  v175 = sub_1CA94C438("portrait|landscape|horizontal|vertical|photos", 45);
  v7 = v6;
  v8 = sub_1CA94C438("portrait|landscape|horizontal|vertical|photos", 45);
  v10 = v9;
  v11 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v178 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v179 = v12;
  v13 = v158 - v178;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDB9F690;
  v176 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v180 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v177 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = v158 - v177;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v175, v7, v8, v10, 0, 0, v13, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v175 = v21;
  *(inited + 80) = v20;
  *(inited + 104) = v21;
  *(inited + 112) = @"Description";
  v174 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v22 = swift_initStackObject();
  v166 = xmmword_1CA981310;
  *(v22 + 16) = xmmword_1CA981310;
  *(v22 + 32) = @"DescriptionSummary";
  v23 = @"Description";
  v24 = @"DescriptionSummary";
  v25 = sub_1CA94C438("Reverses the direction of images either horizontally or vertically.", 67);
  v172 = v26;
  v27 = sub_1CA94C438("Reverses the direction of images either horizontally or vertically.", 67);
  v29 = v28;
  v173 = v158;
  MEMORY[0x1EEE9AC00](v27);
  v30 = v158 - v178;
  sub_1CA948D98();
  v31 = [v14 bundleURL];
  MEMORY[0x1EEE9AC00](v31);
  v32 = v158 - v177;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v34 = sub_1CA2F9F14(v25, v172, v27, v29, 0, 0, v30, v32);
  *(v22 + 64) = v175;
  *(v22 + 40) = v34;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v35 = sub_1CA94C1E8();
  v36 = v174;
  *(inited + 120) = sub_1CA6B3784(v35);
  *(inited + 144) = v36;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1702194242;
  *(inited + 168) = 0xE400000000000000;
  v37 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000040;
  *(inited + 208) = 0x80000001CA99E8A0;
  *(inited + 224) = v37;
  *(inited + 232) = @"Input";
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  v171 = xmmword_1CA981350;
  *(v38 + 16) = xmmword_1CA981350;
  *(v38 + 32) = 0x656C7069746C754DLL;
  *(v38 + 40) = 0xE800000000000000;
  v39 = MEMORY[0x1E69E6370];
  *(v38 + 48) = 1;
  *(v38 + 72) = v39;
  strcpy((v38 + 80), "ParameterKey");
  *(v38 + 93) = 0;
  *(v38 + 94) = -5120;
  *(v38 + 96) = 0x7475706E494657;
  *(v38 + 104) = 0xE700000000000000;
  *(v38 + 120) = v37;
  *(v38 + 128) = 0x6465726975716552;
  *(v38 + 136) = 0xE800000000000000;
  *(v38 + 144) = 1;
  *(v38 + 168) = v39;
  *(v38 + 176) = 0x7365707954;
  v40 = v39;
  *(v38 + 184) = 0xE500000000000000;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v38 + 216) = v172;
  *(v38 + 192) = &unk_1F49F28E0;
  v41 = @"IconColor";
  v42 = @"IconSymbol";
  v43 = @"Input";
  v44 = sub_1CA94C1E8();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v174 = v45;
  *(inited + 240) = v44;
  *(inited + 264) = v45;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 280) = 0;
  *(inited + 304) = v40;
  *(inited + 312) = @"Name";
  v46 = @"InputPassthrough";
  v47 = @"Name";
  v48 = sub_1CA94C438("Flip Image (Action Name)", 24);
  v164 = v49;
  v50 = sub_1CA94C438("Flip Image", 10);
  v52 = v51;
  *&v165 = v158;
  MEMORY[0x1EEE9AC00](v50);
  v53 = v158 - v178;
  sub_1CA948D98();
  v54 = v176;
  v55 = [v176 bundleURL];
  MEMORY[0x1EEE9AC00](v55);
  v56 = v158 - v177;
  sub_1CA948B68();

  v57 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v48, v164, v50, v52, 0, 0, v53, v56);
  v58 = v175;
  *(inited + 344) = v175;
  *(inited + 352) = @"Output";
  v59 = swift_allocObject();
  *(v59 + 16) = v171;
  *(v59 + 32) = 0x75736F6C63736944;
  *(v59 + 40) = 0xEF6C6576654C6572;
  *(v59 + 48) = 0x63696C627550;
  *(v59 + 56) = 0xE600000000000000;
  *(v59 + 72) = MEMORY[0x1E69E6158];
  *(v59 + 80) = 0x656C7069746C754DLL;
  *(v59 + 88) = 0xE800000000000000;
  *(v59 + 96) = 1;
  *(v59 + 120) = MEMORY[0x1E69E6370];
  *(v59 + 128) = 0x614E74757074754FLL;
  *(v59 + 136) = 0xEA0000000000656DLL;
  v60 = @"Output";
  *&v171 = sub_1CA94C438("Flipped Image (Default Output Name)", 35);
  *&v165 = v61;
  v62 = sub_1CA94C438("Flipped Image", 13);
  v64 = v63;
  v173 = v158;
  MEMORY[0x1EEE9AC00](v62);
  v65 = v158 - v178;
  sub_1CA948D98();
  v66 = [v54 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = v158 - v177;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v69 = sub_1CA2F9F14(v171, v165, v62, v64, 0, 0, v65, v67);
  v70 = v172;
  *(v59 + 144) = v69;
  *(v59 + 168) = v58;
  *(v59 + 176) = 0x7365707954;
  *(v59 + 216) = v70;
  *(v59 + 184) = 0xE500000000000000;
  *(v59 + 192) = &unk_1F49F2910;
  v71 = MEMORY[0x1E69E6158];
  *(inited + 360) = sub_1CA94C1E8();
  *(inited + 384) = v174;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v174 = swift_allocObject();
  v165 = xmmword_1CA981360;
  *(v174 + 16) = xmmword_1CA981360;
  v173 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1CA981380;
  *(v72 + 32) = @"Class";
  *(v72 + 40) = 0xD000000000000016;
  *(v72 + 48) = 0x80000001CA99C4A0;
  *(v72 + 64) = v71;
  *(v72 + 72) = @"DefaultValue";
  *(v72 + 80) = 0x746E6F7A69726F48;
  *(v72 + 88) = 0xEA00000000006C61;
  *(v72 + 104) = v71;
  *(v72 + 112) = @"Items";
  *(v72 + 120) = &unk_1F49F2940;
  *(v72 + 144) = v70;
  *(v72 + 152) = @"ItemDisplayNames";
  *&v171 = swift_allocObject();
  *(v171 + 16) = v165;
  v163 = @"Class";
  v73 = @"Parameters";
  v74 = @"DefaultValue";
  v75 = @"Items";
  v76 = @"ItemDisplayNames";
  v77 = sub_1CA94C438("Horizontally", 12);
  v160 = v78;
  v161 = v77;
  v79 = sub_1CA94C438("Horizontally", 12);
  v159 = v80;
  v162 = v158;
  MEMORY[0x1EEE9AC00](v79);
  v81 = v178;
  sub_1CA948D98();
  v82 = v176;
  v83 = [v176 bundleURL];
  v158[1] = v158;
  MEMORY[0x1EEE9AC00](v83);
  *&v165 = inited;
  v84 = v177;
  sub_1CA948B68();

  v85 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v86 = sub_1CA2F9F14(v161, v160, v79, v159, 0, 0, v158 - v81, v158 - v84);
  *(v171 + 32) = v86;
  v87 = sub_1CA94C438("Vertically", 10);
  v160 = v88;
  v161 = v87;
  v89 = sub_1CA94C438("Vertically", 10);
  v91 = v90;
  v162 = v158;
  MEMORY[0x1EEE9AC00](v89);
  sub_1CA948D98();
  v92 = [v82 bundleURL];
  MEMORY[0x1EEE9AC00](v92);
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v94 = sub_1CA2F9F14(v161, v160, v89, v91, 0, 0, v158 - v81, v158 - v84);
  v95 = v171;
  *(v171 + 40) = v94;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v72 + 160) = v95;
  *(v72 + 184) = v96;
  *(v72 + 192) = @"Key";
  *(v72 + 200) = 0xD000000000000014;
  *(v72 + 208) = 0x80000001CA99E970;
  *(v72 + 224) = MEMORY[0x1E69E6158];
  *(v72 + 232) = @"Label";
  v97 = @"Key";
  v98 = @"Label";
  v161 = v97;
  v160 = v98;
  v99 = sub_1CA94C438("Direction (WFImageFlipDirection)", 32);
  v162 = v100;
  v101 = sub_1CA94C438("Direction", 9);
  v103 = v102;
  *&v171 = v158;
  MEMORY[0x1EEE9AC00](v101);
  v104 = v158 - v178;
  sub_1CA948D98();
  v105 = [v176 bundleURL];
  MEMORY[0x1EEE9AC00](v105);
  v106 = v158 - v177;
  sub_1CA948B68();

  v107 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v108 = sub_1CA2F9F14(v99, v162, v101, v103, 0, 0, v104, v106);
  *(v72 + 264) = v175;
  *(v72 + 240) = v108;
  _s3__C3KeyVMa_0(0);
  *&v171 = v109;
  v162 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v110 = sub_1CA94C1E8();
  v111 = sub_1CA2F864C(v110);
  *(v174 + 32) = v111;
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_1CA981370;
  *(v112 + 32) = v163;
  *(v112 + 40) = 0xD000000000000019;
  *(v112 + 48) = 0x80000001CA99B030;
  v113 = MEMORY[0x1E69E6158];
  v114 = v161;
  *(v112 + 64) = MEMORY[0x1E69E6158];
  *(v112 + 72) = v114;
  *(v112 + 80) = 0x7475706E494657;
  *(v112 + 88) = 0xE700000000000000;
  v115 = v160;
  *(v112 + 104) = v113;
  *(v112 + 112) = v115;
  v163 = sub_1CA94C438("Image (WFInput)", 15);
  v161 = v116;
  v117 = sub_1CA94C438("Image", 5);
  v160 = v118;
  v164 = v158;
  MEMORY[0x1EEE9AC00](v117);
  v119 = v178;
  sub_1CA948D98();
  v120 = v176;
  v121 = [v176 bundleURL];
  MEMORY[0x1EEE9AC00](v121);
  v122 = v177;
  sub_1CA948B68();

  v123 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v112 + 120) = sub_1CA2F9F14(v163, v161, v117, v160, 0, 0, v158 - v119, v158 - v122);
  v124 = v175;
  *(v112 + 144) = v175;
  *(v112 + 152) = @"Placeholder";
  v125 = @"Placeholder";
  v163 = sub_1CA94C438("Image (WFInput)", 15);
  v161 = v126;
  v127 = sub_1CA94C438("Image", 5);
  v160 = v128;
  v164 = v158;
  MEMORY[0x1EEE9AC00](v127);
  sub_1CA948D98();
  v129 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v129);
  sub_1CA948B68();

  v130 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v112 + 160) = sub_1CA2F9F14(v163, v161, v127, v160, 0, 0, v158 - v119, v158 - v122);
  *(v112 + 184) = v124;
  *(v112 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v131 = swift_allocObject();
  *(v131 + 16) = v166;
  v132 = @"PreferredTypes";
  v133 = v167;
  sub_1CA949CB8();
  v134 = sub_1CA949C68();
  v136 = v135;
  (*(v168 + 8))(v133, v169);
  *(v131 + 32) = v134;
  *(v131 + 40) = v136;
  *(v112 + 224) = v172;
  *(v112 + 200) = v131;
  v137 = sub_1CA94C1E8();
  v138 = sub_1CA2F864C(v137);
  v139 = v174;
  *(v174 + 40) = v138;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v141 = v165;
  *(v165 + 400) = v139;
  *(v141 + 424) = v140;
  *(v141 + 432) = @"ParameterSummary";
  v142 = @"ParameterSummary";
  v143 = sub_1CA94C438("Flip ${WFInput} ${WFImageFlipDirection} (Parameter Summary)", 59);
  v145 = v144;
  v146 = sub_1CA94C438("Flip ${WFInput} ${WFImageFlipDirection}", 39);
  v148 = v147;
  v175 = v158;
  MEMORY[0x1EEE9AC00](v146);
  v149 = v158 - v178;
  sub_1CA948D98();
  v150 = [v176 bundleURL];
  MEMORY[0x1EEE9AC00](v150);
  v151 = v158 - v177;
  sub_1CA948B68();

  v152 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v153 = sub_1CA2F9F14(v143, v145, v146, v148, 0, 0, v149, v151);
  v154 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v155 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v141 + 440) = v154;
  *(v141 + 464) = v155;
  *(v141 + 472) = @"ResidentCompatible";
  *(v141 + 504) = MEMORY[0x1E69E6370];
  *(v141 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v156 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA2C2140()
{
  sub_1CA2C2738();

  return sub_1CA94C1E8();
}

uint64_t sub_1CA2C21B0()
{
  v1 = [*(v0 + 16) numberOfItems] > 0;
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1CA2C2224(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA2C22B8;

  return sub_1CA2C219C(a1);
}

uint64_t sub_1CA2C22B8(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_1CA2C23E8()
{
  v1 = [*(v0 + 16) numberOfItems] == 0;
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1CA2C245C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA2C27A0;

  return sub_1CA2C23D4(a1);
}

unint64_t sub_1CA2C24F0(uint64_t a1)
{
  result = sub_1CA2C2518();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA2C2518()
{
  result = qword_1EC443AF8;
  if (!qword_1EC443AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC443AF8);
  }

  return result;
}

unint64_t sub_1CA2C256C(uint64_t a1)
{
  result = sub_1CA2C2594();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA2C2594()
{
  result = qword_1EC443B00;
  if (!qword_1EC443B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC443B00);
  }

  return result;
}

unint64_t sub_1CA2C25E8()
{
  result = qword_1EC447320;
  if (!qword_1EC447320)
  {
    type metadata accessor for WFContentOperator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447320);
  }

  return result;
}

unint64_t sub_1CA2C2640(uint64_t a1)
{
  result = sub_1CA2C2668();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA2C2668()
{
  result = qword_1EC443B08;
  if (!qword_1EC443B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC443B08);
  }

  return result;
}

unint64_t sub_1CA2C26BC(uint64_t a1)
{
  result = sub_1CA2C26E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA2C26E4()
{
  result = qword_1EC443B10;
  if (!qword_1EC443B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC443B10);
  }

  return result;
}

unint64_t sub_1CA2C2738()
{
  result = qword_1EC441AA0;
  if (!qword_1EC441AA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC441AA0);
  }

  return result;
}

id sub_1CA2C27E0()
{
  v140 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981340;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x80000001CA99EA40;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("delete|files|remove|obliterate", 30);
  v6 = v5;
  v7 = sub_1CA94C438("delete|files|remove|obliterate", 30);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v146 = v11;
  v149 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v130 - v149;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v148 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v147 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v145 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v130 - v145;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v144 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 152) = sub_1CA94C368();
  v22 = MEMORY[0x1E69E6370];
  *(inited + 160) = 1;
  *(inited + 184) = v22;
  *(inited + 192) = @"DeletesInput";
  *(inited + 200) = 1;
  *(inited + 224) = v22;
  *(inited + 232) = @"Description";
  v143 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"DeletesInput";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438("Deletes the files passed in as input.", 37);
  v141 = v28;
  v29 = sub_1CA94C438("Deletes the files passed in as input.", 37);
  v31 = v30;
  v142 = &v130;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v130 - v149;
  sub_1CA948D98();
  v33 = [v148 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v130 - v145;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v141, v29, v31, 0, 0, v32, v34);
  *(v23 + 64) = v144;
  *(v23 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v37 = sub_1CA94C1E8();
  v38 = v143;
  *(inited + 240) = sub_1CA6B3784(v37);
  *(inited + 264) = v38;
  *(inited + 272) = @"IconColor";
  *(inited + 280) = 1953392980;
  *(inited + 288) = 0xE400000000000000;
  v39 = MEMORY[0x1E69E6158];
  *(inited + 304) = MEMORY[0x1E69E6158];
  *(inited + 312) = @"IconSymbol";
  *(inited + 320) = 0x69662E6873617274;
  *(inited + 328) = 0xEA00000000006C6CLL;
  *(inited + 344) = v39;
  *(inited + 352) = @"IconSymbolColor";
  *(inited + 360) = 1702194242;
  *(inited + 368) = 0xE400000000000000;
  *(inited + 384) = v39;
  *(inited + 392) = @"Input";
  v40 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_1CA981350;
  *(v41 + 32) = 0x656C7069746C754DLL;
  *(v41 + 40) = 0xE800000000000000;
  *(v41 + 48) = 1;
  v42 = MEMORY[0x1E69E6370];
  *(v41 + 72) = MEMORY[0x1E69E6370];
  strcpy((v41 + 80), "ParameterKey");
  *(v41 + 93) = 0;
  *(v41 + 94) = -5120;
  *(v41 + 96) = 0x7475706E494657;
  *(v41 + 104) = 0xE700000000000000;
  *(v41 + 120) = v40;
  *(v41 + 128) = 0x6465726975716552;
  *(v41 + 136) = 0xE800000000000000;
  *(v41 + 144) = 1;
  *(v41 + 168) = v42;
  *(v41 + 176) = 0x7365707954;
  *(v41 + 184) = 0xE500000000000000;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v41 + 216) = v143;
  *(v41 + 192) = &unk_1F49F29C0;
  v43 = @"IconColor";
  v44 = @"IconSymbol";
  v45 = @"IconSymbolColor";
  v46 = @"Input";
  v47 = sub_1CA94C1E8();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 400) = v47;
  *(inited + 424) = v48;
  *(inited + 432) = @"Name";
  v49 = @"Name";
  v50 = sub_1CA94C438("Delete Files (Action Name)", 26);
  v52 = v51;
  v53 = sub_1CA94C438("Delete Files", 12);
  v55 = v54;
  v142 = &v130;
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v130 - v149;
  sub_1CA948D98();
  v57 = [v148 bundleURL];
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v130 - v145;
  sub_1CA948B68();

  v59 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 440) = sub_1CA2F9F14(v50, v52, v53, v55, 0, 0, v56, v58);
  *(inited + 464) = v144;
  *(inited + 472) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v142 = swift_allocObject();
  *(v142 + 1) = xmmword_1CA981360;
  v141 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v60 = swift_allocObject();
  v136 = xmmword_1CA981370;
  *(v60 + 16) = xmmword_1CA981370;
  *(v60 + 32) = @"Class";
  *(v60 + 40) = 0xD000000000000015;
  *(v60 + 48) = 0x80000001CA99B1E0;
  v61 = MEMORY[0x1E69E6158];
  *(v60 + 64) = MEMORY[0x1E69E6158];
  *(v60 + 72) = @"FilePickerSupportedTypes";
  *(v60 + 80) = &unk_1F49F29F0;
  *(v60 + 104) = v143;
  *(v60 + 112) = @"Key";
  *(v60 + 120) = 0x7475706E494657;
  *(v60 + 128) = 0xE700000000000000;
  *(v60 + 144) = v61;
  *(v60 + 152) = @"Label";
  v62 = @"Class";
  v63 = @"Key";
  v64 = @"Label";
  v135 = v62;
  v138 = v63;
  v139 = v64;
  v65 = @"Parameters";
  v66 = @"FilePickerSupportedTypes";
  v67 = sub_1CA94C438("Files (WFInput)", 15);
  v132 = v68;
  v133 = v67;
  v131 = sub_1CA94C438("Files", 5);
  v70 = v69;
  v134 = &v130;
  MEMORY[0x1EEE9AC00](v131);
  v71 = &v130 - v149;
  sub_1CA948D98();
  v72 = v148;
  v73 = [v148 bundleURL];
  v130 = &v130;
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v130 - v145;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v60 + 160) = sub_1CA2F9F14(v133, v132, v131, v70, 0, 0, v71, v74);
  v76 = v144;
  *(v60 + 184) = v144;
  *(v60 + 192) = @"Placeholder";
  v77 = @"Placeholder";
  v78 = sub_1CA94C438("Files (WFInput)", 15);
  v132 = v79;
  v133 = v78;
  v80 = sub_1CA94C438("Files", 5);
  v131 = v81;
  v134 = &v130;
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v130 - v149;
  sub_1CA948D98();
  v83 = [v72 bundleURL];
  MEMORY[0x1EEE9AC00](v83);
  v84 = v145;
  sub_1CA948B68();

  v85 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v86 = sub_1CA2F9F14(v133, v132, v80, v131, 0, 0, v82, &v130 - v84);
  *(v60 + 224) = v76;
  *(v60 + 200) = v86;
  _s3__C3KeyVMa_0(0);
  v134 = v87;
  v133 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v88 = sub_1CA94C1E8();
  v89 = sub_1CA2F864C(v88);
  v142[4] = v89;
  v90 = swift_allocObject();
  *(v90 + 16) = v136;
  *(v90 + 32) = v135;
  *(v90 + 40) = 0xD000000000000011;
  *(v90 + 48) = 0x80000001CA99E620;
  *(v90 + 64) = MEMORY[0x1E69E6158];
  *(v90 + 72) = @"DefaultValue";
  *(v90 + 80) = 0;
  *(v90 + 104) = MEMORY[0x1E69E6370];
  *(v90 + 112) = @"Description";
  v91 = @"DefaultValue";
  v92 = @"Description";
  v93 = sub_1CA94C438("When enabled, this action will delete files immediately, instead of moving to the Trash or Recently Deleted folder. (WFDeleteImmediatelyDelete)", 143);
  v135 = v94;
  *&v136 = v93;
  v95 = sub_1CA94C438("When enabled, this action will delete files immediately, instead of moving to the Trash or Recently Deleted folder.", 115);
  v132 = v96;
  v137 = &v130;
  MEMORY[0x1EEE9AC00](v95);
  v97 = &v130 - v149;
  sub_1CA948D98();
  v98 = [v148 bundleURL];
  MEMORY[0x1EEE9AC00](v98);
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v90 + 120) = sub_1CA2F9F14(v136, v135, v95, v132, 0, 0, v97, &v130 - v84);
  v100 = v138;
  *(v90 + 144) = v144;
  *(v90 + 152) = v100;
  *(v90 + 160) = 0xD000000000000019;
  *(v90 + 168) = 0x80000001CA99EC10;
  v101 = v139;
  *(v90 + 184) = MEMORY[0x1E69E6158];
  *(v90 + 192) = v101;
  v102 = sub_1CA94C438("Delete Immediately (WFDeleteImmediatelyDelete)", 46);
  v137 = v103;
  v138 = v102;
  v104 = sub_1CA94C438("Delete Immediately", 18);
  v106 = v105;
  v139 = &v130;
  MEMORY[0x1EEE9AC00](v104);
  v107 = &v130 - v149;
  sub_1CA948D98();
  v108 = [v148 bundleURL];
  MEMORY[0x1EEE9AC00](v108);
  sub_1CA948B68();

  v109 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v110 = sub_1CA2F9F14(v138, v137, v104, v106, 0, 0, v107, &v130 - v84);
  *(v90 + 224) = v144;
  *(v90 + 200) = v110;
  v111 = sub_1CA94C1E8();
  v112 = sub_1CA2F864C(v111);
  v113 = v142;
  v142[5] = v112;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 480) = v113;
  *(inited + 504) = v114;
  *(inited + 512) = @"ParameterSummary";
  v115 = @"ParameterSummary";
  v116 = sub_1CA94C438("Delete ${WFInput} (Parameter Summary)", 37);
  v118 = v117;
  v119 = sub_1CA94C438("Delete ${WFInput}", 17);
  v121 = v120;
  v144 = &v130;
  MEMORY[0x1EEE9AC00](v119);
  v122 = &v130 - v149;
  sub_1CA948D98();
  v123 = [v148 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  v124 = &v130 - v145;
  sub_1CA948B68();

  v125 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v126 = sub_1CA2F9F14(v116, v118, v119, v121, 0, 0, v122, v124);
  v127 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(inited + 544) = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 520) = v127;
  *(inited + 552) = @"RemoteExecuteOnPlatforms";
  *(inited + 584) = v143;
  *(inited + 560) = &unk_1F49F2A20;
  v128 = @"RemoteExecuteOnPlatforms";
  *(inited + 592) = sub_1CA94C368();
  *(inited + 624) = MEMORY[0x1E69E6158];
  *(inited + 600) = 0xD000000000000018;
  *(inited + 608) = 0x80000001CA9933D0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2C3918()
{
  v250 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA99ED00;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v265 = sub_1CA94C438("message|sms|send|text", 21);
  v5 = v4;
  v6 = sub_1CA94C438("message|sms|send|text", 21);
  v8 = v7;
  v9 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v268 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  *&v269 = v10;
  v11 = &v235 - v268;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDB9F690;
  v264 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v266 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v267 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v235 - v267;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v265, v5, v6, v8, 0, 0, v11, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v265 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v263 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  v249 = xmmword_1CA981310;
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Sends a message. Pass images, videos, or other files as input to include attachments.", 85);
  v260 = v24;
  v25 = sub_1CA94C438("Sends a message. Pass images, videos, or other files as input to include attachments.", 85);
  v27 = v26;
  v262 = &v235;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v235 - v268;
  sub_1CA948D98();
  v29 = [v12 bundleURL];
  v30 = inited;
  v31 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v235 - v267;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v34 = sub_1CA2F9F14(v23, v260, v25, v27, 0, 0, v28, v32);
  *(v20 + 64) = v265;
  *(v20 + 40) = v34;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v35 = sub_1CA94C1E8();
  v36 = v263;
  *(v30 + 120) = sub_1CA6B3784(v35);
  *(v30 + 144) = v36;
  *(v30 + 152) = @"Input";
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v37 = swift_initStackObject();
  v256 = xmmword_1CA981350;
  *(v37 + 16) = xmmword_1CA981350;
  *(v37 + 32) = 0x656C7069746C754DLL;
  *(v37 + 40) = 0xE800000000000000;
  v38 = MEMORY[0x1E69E6370];
  *(v37 + 48) = 1;
  *(v37 + 72) = v38;
  strcpy((v37 + 80), "ParameterKey");
  v244 = 0x80000001CA99EDA0;
  v255 = 0xD000000000000014;
  *(v37 + 93) = 0;
  *(v37 + 94) = -5120;
  *(v37 + 96) = 0xD000000000000014;
  *(v37 + 104) = 0x80000001CA99EDA0;
  v39 = MEMORY[0x1E69E6158];
  *(v37 + 120) = MEMORY[0x1E69E6158];
  *(v37 + 128) = 0x6465726975716552;
  *(v37 + 136) = 0xE800000000000000;
  *(v37 + 144) = 0;
  *(v37 + 168) = v38;
  *(v37 + 176) = 0x7365707954;
  v40 = v38;
  *(v37 + 184) = 0xE500000000000000;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v37 + 216) = v257;
  *(v37 + 192) = &unk_1F49F2A50;
  v41 = @"Input";
  v42 = sub_1CA94C1E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v248 = v43;
  *(v30 + 160) = v42;
  *(v30 + 184) = v43;
  *(v30 + 192) = @"InputPassthrough";
  *(v30 + 224) = v40;
  *(v30 + 200) = 1;
  v44 = @"InputPassthrough";
  v246 = 0xD000000000000010;
  v45 = sub_1CA94C368();
  v261 = v30;
  *(v30 + 232) = v45;
  *(v30 + 240) = 0xD000000000000029;
  *(v30 + 248) = 0x80000001CA99EDC0;
  *(v30 + 264) = v39;
  *(v30 + 272) = @"Name";
  v46 = @"Name";
  v47 = sub_1CA94C438("Send Message (Action Name)", 26);
  v49 = v48;
  v50 = sub_1CA94C438("Send Message", 12);
  v52 = v51;
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v235 - v268;
  sub_1CA948D98();
  v54 = [v264 bundleURL];
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v235 - v267;
  sub_1CA948B68();

  v56 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v57 = sub_1CA2F9F14(v47, v49, v50, v52, 0, 0, v53, v55);
  v58 = v261;
  v261[35] = v57;
  v58[38] = v265;
  v58[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v263 = swift_allocObject();
  *(v263 + 16) = xmmword_1CA981560;
  v262 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v59 = swift_allocObject();
  v241 = xmmword_1CA981300;
  *(v59 + 16) = xmmword_1CA981300;
  *(v59 + 32) = @"Class";
  *(v59 + 40) = 0xD00000000000001ALL;
  *(v59 + 48) = 0x80000001CA99B690;
  v60 = MEMORY[0x1E69E6158];
  *(v59 + 64) = MEMORY[0x1E69E6158];
  *(v59 + 72) = @"DefaultValue";
  v61 = @"Class";
  v62 = @"DefaultValue";
  v252 = v61;
  v253 = v62;
  v63 = @"Parameters";
  v64 = sub_1CA94C1E8();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v245 = v65;
  *(v59 + 80) = v64;
  *(v59 + 104) = v65;
  *(v59 + 112) = @"DisallowedVariableTypes";
  *(v59 + 120) = &unk_1F49F2AC0;
  *(v59 + 144) = v257;
  *(v59 + 152) = @"Hidden";
  *(v59 + 184) = MEMORY[0x1E69E6370];
  *(v59 + 160) = 1;
  v242 = @"Hidden";
  v66 = @"DisallowedVariableTypes";
  *(v59 + 192) = sub_1CA94C368();
  *(v59 + 200) = 0xD000000000000013;
  *(v59 + 208) = 0x80000001CA99EE20;
  *(v59 + 224) = v60;
  *(v59 + 232) = @"Key";
  *(v59 + 240) = 0xD000000000000013;
  *(v59 + 248) = 0x80000001CA99B6D0;
  *(v59 + 264) = v60;
  *(v59 + 272) = @"Label";
  v67 = @"Key";
  v68 = @"Label";
  v69 = v67;
  v70 = v68;
  v240 = v69;
  v251 = v70;
  v258 = sub_1CA94C438("App (IntentAppDefinition)", 25);
  v254 = v71;
  v72 = sub_1CA94C438("App", 3);
  v74 = v73;
  v259 = &v235;
  MEMORY[0x1EEE9AC00](v72);
  v75 = v268;
  sub_1CA948D98();
  v76 = [v264 bundleURL];
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v235 - v267;
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 280) = sub_1CA2F9F14(v258, v254, v72, v74, 0, 0, &v235 - v75, v77);
  v79 = v265;
  *(v59 + 304) = v265;
  *(v59 + 312) = @"Prompt";
  v254 = @"Prompt";
  v258 = sub_1CA94C438("Which app? (IntentAppDefinition)", 32);
  v243 = v80;
  v81 = sub_1CA94C438("Which app?", 10);
  v239 = v82;
  v259 = &v235;
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v235 - v75;
  sub_1CA948D98();
  v84 = v264;
  v85 = [v264 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  v86 = &v235 - v267;
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v88 = sub_1CA2F9F14(v258, v243, v81, v239, 0, 0, v83, v86);
  *(v59 + 344) = v79;
  *(v59 + 320) = v88;
  _s3__C3KeyVMa_0(0);
  v259 = v89;
  v258 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v90 = sub_1CA94C1E8();
  v91 = sub_1CA2F864C(v90);
  *(v263 + 32) = v91;
  v92 = swift_allocObject();
  *(v92 + 16) = v256;
  v243 = 0xD000000000000011;
  v93 = v252;
  *(v92 + 32) = v252;
  *(v92 + 40) = 0xD000000000000011;
  *(v92 + 48) = 0x80000001CA99E620;
  v94 = MEMORY[0x1E69E6158];
  v95 = v253;
  *(v92 + 64) = MEMORY[0x1E69E6158];
  *(v92 + 72) = v95;
  *(v92 + 80) = 0;
  v96 = v240;
  *(v92 + 104) = MEMORY[0x1E69E6370];
  *(v92 + 112) = v96;
  *(v92 + 120) = 0x6E656857776F6853;
  *(v92 + 128) = 0xEB000000006E7552;
  v97 = v251;
  *(v92 + 144) = v94;
  *(v92 + 152) = v97;
  v239 = v93;
  v252 = v96;
  v253 = v97;
  v98 = sub_1CA94C438("Show Compose Sheet (ShowWhenRun)", 32);
  v100 = v99;
  v101 = sub_1CA94C438("Show Compose Sheet", 18);
  v103 = v102;
  v251 = &v235;
  MEMORY[0x1EEE9AC00](v101);
  v104 = &v235 - v268;
  sub_1CA948D98();
  v105 = [v84 bundleURL];
  MEMORY[0x1EEE9AC00](v105);
  v106 = &v235 - v267;
  sub_1CA948B68();

  v107 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v108 = sub_1CA2F9F14(v98, v100, v101, v103, 0, 0, v104, v106);
  *(v92 + 184) = v265;
  *(v92 + 160) = v108;
  v109 = sub_1CA94C1E8();
  v110 = sub_1CA2F864C(v109);
  *(v263 + 40) = v110;
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_1CA981380;
  *(v111 + 32) = @"AllowsMultipleValues";
  *(v111 + 40) = 1;
  v112 = v239;
  *(v111 + 64) = MEMORY[0x1E69E6370];
  *(v111 + 72) = v112;
  *(v111 + 80) = 0xD00000000000001DLL;
  *(v111 + 88) = 0x80000001CA99EEC0;
  v113 = MEMORY[0x1E69E6158];
  *(v111 + 104) = MEMORY[0x1E69E6158];
  *(v111 + 112) = @"IntentSlotName";
  *(v111 + 120) = 0x6E65697069636572;
  *(v111 + 128) = 0xEA00000000007374;
  v114 = v252;
  v115 = v253;
  *(v111 + 144) = v113;
  *(v111 + 152) = v114;
  *(v111 + 160) = 0xD00000000000001DLL;
  *(v111 + 168) = 0x80000001CA99EEE0;
  *(v111 + 184) = v113;
  *(v111 + 192) = v115;
  v116 = @"IntentSlotName";
  v251 = v112;
  v252 = v114;
  v253 = v115;
  v240 = v116;
  v117 = @"AllowsMultipleValues";
  v118 = sub_1CA94C438("Recipients (WFSendMessageActionRecipients)", 42);
  v237 = v119;
  v238 = v118;
  v120 = sub_1CA94C438("Recipients", 10);
  v236 = v121;
  v239 = &v235;
  MEMORY[0x1EEE9AC00](v120);
  v122 = &v235 - v268;
  sub_1CA948D98();
  v123 = v264;
  v124 = [v264 bundleURL];
  MEMORY[0x1EEE9AC00](v124);
  v125 = v267;
  sub_1CA948B68();

  v126 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v111 + 200) = sub_1CA2F9F14(v238, v237, v120, v236, 0, 0, v122, &v235 - v125);
  v127 = v265;
  v128 = v254;
  *(v111 + 224) = v265;
  *(v111 + 232) = v128;
  v129 = sub_1CA94C438("Who do you want to send it to? (WFSendMessageActionRecipients)", 62);
  v237 = v130;
  v238 = v129;
  v131 = sub_1CA94C438("Who do you want to send it to?", 30);
  v236 = v132;
  v239 = &v235;
  MEMORY[0x1EEE9AC00](v131);
  v133 = &v235 - v268;
  sub_1CA948D98();
  v134 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v134);
  sub_1CA948B68();

  v135 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v136 = sub_1CA2F9F14(v238, v237, v131, v236, 0, 0, v133, &v235 - v125);
  *(v111 + 264) = v127;
  *(v111 + 240) = v136;
  v137 = sub_1CA94C1E8();
  v138 = sub_1CA2F864C(v137);
  *(v263 + 48) = v138;
  v139 = swift_allocObject();
  *(v139 + 16) = v241;
  *&v241 = 0x80000001CA99B500;
  v140 = v255;
  *(v139 + 32) = v251;
  *(v139 + 40) = v140;
  *(v139 + 48) = 0x80000001CA99B500;
  v141 = MEMORY[0x1E69E6158];
  v142 = v240;
  *(v139 + 64) = MEMORY[0x1E69E6158];
  *(v139 + 72) = v142;
  *(v139 + 80) = 0x746E65746E6F63;
  *(v139 + 88) = 0xE700000000000000;
  v143 = v252;
  *(v139 + 104) = v141;
  *(v139 + 112) = v143;
  v144 = v244;
  *(v139 + 120) = v140;
  *(v139 + 128) = v144;
  v145 = v253;
  *(v139 + 144) = v141;
  *(v139 + 152) = v145;
  v146 = sub_1CA94C438("Message (WFSendMessageContent)", 30);
  v239 = v147;
  v240 = v146;
  v148 = sub_1CA94C438("Message", 7);
  v238 = v149;
  v244 = &v235;
  MEMORY[0x1EEE9AC00](v148);
  v150 = v268;
  sub_1CA948D98();
  v151 = v264;
  v152 = [v264 bundleURL];
  MEMORY[0x1EEE9AC00](v152);
  v153 = &v235 - v267;
  sub_1CA948B68();

  v154 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v139 + 160) = sub_1CA2F9F14(v240, v239, v148, v238, 0, 0, &v235 - v150, v153);
  v155 = v265;
  *(v139 + 184) = v265;
  *(v139 + 192) = @"Multiline";
  *(v139 + 200) = 1;
  *(v139 + 224) = MEMORY[0x1E69E6370];
  *(v139 + 232) = @"Placeholder";
  v156 = @"Multiline";
  v157 = @"Placeholder";
  v158 = sub_1CA94C438("Message (WFSendMessageContent)", 30);
  v239 = v159;
  v240 = v158;
  v160 = sub_1CA94C438("Message", 7);
  v238 = v161;
  v244 = &v235;
  MEMORY[0x1EEE9AC00](v160);
  v162 = &v235 - v150;
  sub_1CA948D98();
  v163 = [v151 bundleURL];
  MEMORY[0x1EEE9AC00](v163);
  v164 = v267;
  sub_1CA948B68();

  v165 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v166 = sub_1CA2F9F14(v240, v239, v160, v238, 0, 0, v162, &v235 - v164);
  *(v139 + 264) = v155;
  *(v139 + 240) = v166;
  v244 = 0xD000000000000017;
  *(v139 + 272) = sub_1CA94C368();
  *(v139 + 280) = 1;
  v167 = v254;
  *(v139 + 304) = MEMORY[0x1E69E6370];
  *(v139 + 312) = v167;
  v168 = sub_1CA94C438("What's the message? (WFSendMessageContent)", 42);
  v239 = v169;
  v240 = v168;
  v170 = sub_1CA94C438("What's the message?", 19);
  v172 = v171;
  v254 = &v235;
  MEMORY[0x1EEE9AC00](v170);
  v173 = &v235 - v268;
  sub_1CA948D98();
  v174 = [v264 bundleURL];
  MEMORY[0x1EEE9AC00](v174);
  sub_1CA948B68();

  v175 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v176 = sub_1CA2F9F14(v240, v239, v170, v172, 0, 0, v173, &v235 - v164);
  *(v139 + 344) = v265;
  *(v139 + 320) = v176;
  v177 = sub_1CA94C1E8();
  v178 = sub_1CA2F864C(v177);
  *(v263 + 56) = v178;
  v179 = swift_allocObject();
  *(v179 + 16) = v256;
  v180 = v255;
  *(v179 + 32) = v251;
  *(v179 + 40) = v180;
  *(v179 + 48) = v241;
  v181 = MEMORY[0x1E69E6158];
  v182 = v242;
  *(v179 + 64) = MEMORY[0x1E69E6158];
  *(v179 + 72) = v182;
  *(v179 + 80) = 1;
  v183 = v252;
  *(v179 + 104) = MEMORY[0x1E69E6370];
  *(v179 + 112) = v183;
  *(v179 + 120) = 0xD000000000000013;
  *(v179 + 128) = 0x80000001CA99F010;
  v184 = v253;
  *(v179 + 144) = v181;
  *(v179 + 152) = v184;
  v185 = sub_1CA94C438("Prefix (WFSendMessagePrefix)", 28);
  v187 = v186;
  v188 = sub_1CA94C438("Prefix", 6);
  v190 = v189;
  v260 = &v235;
  MEMORY[0x1EEE9AC00](v188);
  v191 = &v235 - v268;
  sub_1CA948D98();
  v192 = [v264 bundleURL];
  MEMORY[0x1EEE9AC00](v192);
  v193 = &v235 - v267;
  sub_1CA948B68();

  v194 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v195 = sub_1CA2F9F14(v185, v187, v188, v190, 0, 0, v191, v193);
  *(v179 + 184) = v265;
  *(v179 + 160) = v195;
  v196 = sub_1CA94C1E8();
  v197 = sub_1CA2F864C(v196);
  v198 = v263;
  *(v263 + 64) = v197;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v200 = v261;
  v261[40] = v198;
  v200[43] = v199;
  v200[44] = @"ParameterSummary";
  v201 = @"ParameterSummary";
  v202 = sub_1CA94C438("Send ${WFSendMessageContent} to ${WFSendMessageActionRecipients} (Parameter Summary)", 84);
  v204 = v203;
  v205 = sub_1CA94C438("Send ${WFSendMessageContent} to ${WFSendMessageActionRecipients}", 64);
  v207 = v206;
  MEMORY[0x1EEE9AC00](v205);
  v208 = &v235 - v268;
  sub_1CA948D98();
  v209 = [v264 bundleURL];
  MEMORY[0x1EEE9AC00](v209);
  v210 = &v235 - v267;
  sub_1CA948B68();

  v211 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v212 = sub_1CA2F9F14(v202, v204, v205, v207, 0, 0, v208, v210);
  v213 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v214 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v215 = v261;
  v261[45] = v213;
  v215[48] = v214;
  v215[49] = @"RateLimit";
  v216 = @"RateLimit";
  v217 = MEMORY[0x1E69E6158];
  v218 = sub_1CA94C1E8();
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B18, "~R\t");
  v215[50] = v218;
  v215[53] = v219;
  v215[54] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v220 = swift_allocObject();
  v269 = xmmword_1CA97EDF0;
  *(v220 + 16) = xmmword_1CA97EDF0;
  v221 = swift_initStackObject();
  *(v221 + 16) = v269;
  *(v221 + 32) = v243;
  *(v221 + 40) = 0x80000001CA99B240;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v222 = swift_allocObject();
  *(v222 + 16) = v249;
  v223 = swift_allocObject();
  *(v223 + 16) = xmmword_1CA9813C0;
  strcpy((v223 + 32), "WFParameterKey");
  *(v223 + 47) = -18;
  *(v223 + 48) = 0x6E656857776F6853;
  *(v223 + 56) = 0xEB000000006E7552;
  v224 = v246;
  *(v223 + 72) = v217;
  *(v223 + 80) = v224;
  *(v223 + 88) = 0x80000001CA993570;
  *(v223 + 96) = 1;
  *(v223 + 120) = MEMORY[0x1E69E6370];
  *(v223 + 128) = 0x72756F7365524657;
  *(v223 + 168) = v217;
  *(v223 + 136) = 0xEF7373616C436563;
  *(v223 + 144) = 0xD00000000000001BLL;
  *(v223 + 152) = 0x80000001CA993590;
  v225 = @"RequiredResources";
  *(v222 + 32) = sub_1CA94C1E8();
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v221 + 48) = v222;
  *(v221 + 72) = v226;
  *(v221 + 80) = 0x72756F7365524657;
  *(v221 + 120) = v217;
  *(v221 + 88) = 0xEF7373616C436563;
  *(v221 + 96) = 0xD000000000000019;
  *(v221 + 104) = 0x80000001CA9932D0;
  *(v220 + 32) = sub_1CA94C1E8();
  *(v220 + 88) = v217;
  v227 = v244;
  *(v220 + 56) = v248;
  *(v220 + 64) = v227;
  *(v220 + 72) = 0x80000001CA9943F0;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v229 = v261;
  v261[55] = v220;
  v229[58] = v228;
  v229[59] = @"SuggestedAsInitialAction";
  *(v229 + 480) = 1;
  v229[63] = MEMORY[0x1E69E6370];
  v229[64] = @"UserInterfaceClasses";
  v230 = @"SuggestedAsInitialAction";
  v231 = @"UserInterfaceClasses";
  v232 = sub_1CA94C1E8();
  v229[68] = v245;
  v229[65] = v232;
  v229[69] = @"UserInterfaces";
  v229[73] = v257;
  v229[70] = &unk_1F49F2BE8;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v233 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2C5534()
{
  v103 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA99F120;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("show|file|document", 18);
  v6 = v5;
  v7 = sub_1CA94C438("show|file|document", 18);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v108 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v109 = v11;
  v12 = &v95 - v108;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v107 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v105 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v106 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v95 - v106;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v104 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v102 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Opens windows in the Finder with the specified files selected.", 62);
  *&v100 = v27;
  v28 = sub_1CA94C438("Opens windows in the Finder with the specified files selected.", 62);
  v30 = v29;
  v101 = &v95;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v95 - v108;
  sub_1CA948D98();
  v32 = [v107 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v95 - v106;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v100, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v104;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v102;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  v99 = xmmword_1CA981350;
  *(v38 + 16) = xmmword_1CA981350;
  *(v38 + 32) = 0x656C7069746C754DLL;
  *(v38 + 40) = 0xE800000000000000;
  v39 = MEMORY[0x1E69E6370];
  *(v38 + 48) = 1;
  *(v38 + 72) = v39;
  strcpy((v38 + 80), "ParameterKey");
  *(v38 + 93) = 0;
  *(v38 + 94) = -5120;
  *(v38 + 96) = 0x656C69464657;
  *(v38 + 104) = 0xE600000000000000;
  *(v38 + 120) = MEMORY[0x1E69E6158];
  *(v38 + 128) = 0x6465726975716552;
  *(v38 + 136) = 0xE800000000000000;
  *(v38 + 144) = 1;
  *(v38 + 168) = v39;
  *(v38 + 176) = 0x7365707954;
  *(v38 + 184) = 0xE500000000000000;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v38 + 216) = v102;
  *(v38 + 192) = &unk_1F49F2C78;
  v40 = @"Input";
  v41 = sub_1CA94C1E8();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 200) = v41;
  *(inited + 224) = v42;
  *(inited + 232) = @"Name";
  v43 = @"Name";
  v44 = sub_1CA94C438("Reveal Files in Finder (Action Name)", 36);
  v46 = v45;
  v47 = sub_1CA94C438("Reveal Files in Finder", 22);
  v49 = v48;
  v101 = &v95;
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v95 - v108;
  sub_1CA948D98();
  v51 = [v107 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v95 - v106;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v44, v46, v47, v49, 0, 0, v50, v52);
  *(inited + 264) = v104;
  *(inited + 272) = @"Parameters";
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v98 = swift_allocObject();
  v100 = xmmword_1CA9813B0;
  *(v98 + 16) = xmmword_1CA9813B0;
  v97 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v54 = swift_initStackObject();
  *(v54 + 16) = v99;
  *(v54 + 32) = @"AllowsMultipleValues";
  *(v54 + 40) = 1;
  *(v54 + 64) = MEMORY[0x1E69E6370];
  *(v54 + 72) = @"Class";
  *(v54 + 80) = 0xD000000000000015;
  *(v54 + 88) = 0x80000001CA99B1E0;
  v55 = MEMORY[0x1E69E6158];
  *(v54 + 104) = MEMORY[0x1E69E6158];
  *(v54 + 112) = @"Key";
  *(v54 + 120) = 0x656C69464657;
  *(v54 + 128) = 0xE600000000000000;
  *(v54 + 144) = v55;
  *(v54 + 152) = @"Label";
  v56 = @"Parameters";
  v57 = @"AllowsMultipleValues";
  v58 = @"Class";
  v59 = @"Key";
  v60 = @"Label";
  v61 = sub_1CA94C438("Files (WFFile)", 14);
  v96 = v62;
  v63 = sub_1CA94C438("Files", 5);
  v65 = v64;
  *&v99 = &v95;
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v95 - v108;
  sub_1CA948D98();
  v67 = [v107 bundleURL];
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v95 - v106;
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v70 = sub_1CA2F9F14(v61, v96, v63, v65, 0, 0, v66, v68);
  *(v54 + 184) = v104;
  *(v54 + 160) = v70;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v71 = sub_1CA94C1E8();
  v72 = sub_1CA2F864C(v71);
  v73 = v98;
  *(v98 + 32) = v72;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 280) = v73;
  *(inited + 304) = v74;
  *(inited + 312) = @"ParameterSummary";
  v75 = @"ParameterSummary";
  v76 = sub_1CA94C438("Reveal ${WFFile} (Parameter Summary)", 36);
  v78 = v77;
  v79 = sub_1CA94C438("Reveal ${WFFile}", 16);
  v81 = v80;
  v104 = &v95;
  MEMORY[0x1EEE9AC00](v79);
  v82 = &v95 - v108;
  sub_1CA948D98();
  v83 = [v107 bundleURL];
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v95 - v106;
  sub_1CA948B68();

  v85 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v86 = sub_1CA2F9F14(v76, v78, v79, v81, 0, 0, v82, v84);
  v87 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v88 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 320) = v87;
  *(inited + 344) = v88;
  *(inited + 352) = @"RemoteExecuteOnPlatforms";
  *(inited + 360) = &unk_1F49F2CA8;
  *(inited + 384) = v102;
  *(inited + 392) = @"RequiredResources";
  v89 = swift_allocObject();
  *(v89 + 16) = v100;
  v110 = 2;
  v111 = 0;
  v90 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v91 = @"RemoteExecuteOnPlatforms";
  v92 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v110);
  *(v89 + 32) = v93;
  *(inited + 424) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(inited + 400) = v89;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA2C6164()
{
  if (sub_1CA94ADB8())
  {
    type metadata accessor for DatabaseTypeDefinitionProvider.CacheKey(0);

    JUMPOUT(0x1CCA9FFB0);
  }

  return 0;
}

uint64_t sub_1CA2C61C4()
{
  OUTLINED_FUNCTION_30();
  sub_1CA94ADC8();
  OUTLINED_FUNCTION_11_6();
  sub_1CA2C814C(v0, v1, MEMORY[0x1E69DB0C8]);
  sub_1CA94C298();
  type metadata accessor for DatabaseTypeDefinitionProvider.CacheKey(0);
  sub_1CA94B168();
  OUTLINED_FUNCTION_10_2();
  sub_1CA2C814C(v2, v3, MEMORY[0x1E69DB2F8]);
  return sub_1CA94C298();
}

uint64_t sub_1CA2C6278()
{
  sub_1CA94D918();
  sub_1CA94ADC8();
  sub_1CA2C814C(&qword_1EC441D00, MEMORY[0x1E69DB0B8], MEMORY[0x1E69DB0C8]);
  sub_1CA94C298();
  type metadata accessor for DatabaseTypeDefinitionProvider.CacheKey(0);
  sub_1CA94B168();
  sub_1CA2C814C(&qword_1EC443B20, MEMORY[0x1E69DB2F0], MEMORY[0x1E69DB2F8]);
  sub_1CA94C298();
  return sub_1CA94D968();
}

uint64_t sub_1CA2C6370(uint64_t a1)
{
  sub_1CA94D918();
  sub_1CA94ADC8();
  OUTLINED_FUNCTION_11_6();
  sub_1CA2C814C(v1, v2, MEMORY[0x1E69DB0C8]);
  sub_1CA94C298();
  sub_1CA94B168();
  OUTLINED_FUNCTION_10_2();
  sub_1CA2C814C(v3, v4, MEMORY[0x1E69DB2F8]);
  sub_1CA94C298();
  return sub_1CA94D968();
}

uint64_t sub_1CA2C643C()
{
  sub_1CA94A138();
  sub_1CA94A118();
  type metadata accessor for DatabaseTypeDefinitionProvider();
  v0 = swift_allocObject();

  v2 = sub_1CA2C9498(v1, v0);

  qword_1EC4420F8 = v2;
  return result;
}

uint64_t static DatabaseTypeDefinitionProvider.shared.getter()
{
  if (qword_1EC4420F0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1CA2C6500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B48, &qword_1CA981F78);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1CA94B298();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B50, &qword_1CA981F80);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for DatabaseTypeDefinitionProvider.CacheKey(0);
  v3[15] = swift_task_alloc();
  v6 = sub_1CA949F78();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA2C6708, 0, 0);
}

uint64_t sub_1CA2C6708()
{
  v23 = v0;
  v1 = v0[15];
  v2 = v0[3];
  sub_1CA949C58();
  sub_1CA2C9194(v2, v1);
  v3 = sub_1CA949F68();
  v4 = sub_1CA94CBF8();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[15];
  v9 = v0[16];
  if (v5)
  {
    v21 = v0[18];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    v12 = sub_1CA94ADA8();
    v14 = v13;
    sub_1CA2C7D54(v8);
    v15 = sub_1CA26B54C(v12, v14, &v22);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1CA256000, v3, v4, "Fetching definition for type: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1CCAA4BF0](v11, -1, -1);
    MEMORY[0x1CCAA4BF0](v10, -1, -1);

    (*(v6 + 8))(v21, v9);
  }

  else
  {

    sub_1CA2C7D54(v8);
    (*(v6 + 8))(v7, v9);
  }

  v16 = v0[4];
  v17 = v16[3];
  v18 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v19 = swift_task_alloc();
  v0[19] = v19;
  *v19 = v0;
  v19[1] = sub_1CA2C6924;

  return MEMORY[0x1EEE4AAA0](v17, v18);
}

uint64_t sub_1CA2C6924()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 160) = v5;
  *(v3 + 168) = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_5();

    return v6();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1CA2C6AB4, 0, 0);
  }
}

uint64_t sub_1CA2C6AB4()
{
  v34 = v0[21];
  v1 = v0[10];
  v2 = v0[9];
  v33 = v0[8];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];
  v6 = v0[3];
  v32 = *(v0[14] + 20);
  sub_1CA94B268();
  swift_getKeyPath();
  v7 = sub_1CA94ADC8();
  v8 = swift_allocBox();
  v31 = *(*(v7 - 8) + 16);
  v31(v9, v6, v7);
  *v4 = v8;
  (*(v3 + 104))(v4, *MEMORY[0x1E69DA9C0], v5);
  sub_1CA2C814C(&qword_1EC443B58, MEMORY[0x1E69DB360], MEMORY[0x1E69DB358]);
  sub_1CA25C3BC(&qword_1EC443B60, &qword_1EC443B48, &qword_1CA981F78, MEMORY[0x1E69DA9C8]);
  sub_1CA94A838();

  (*(v3 + 8))(v4, v5);
  v10 = *(v2 + 8);
  v10(v1, v33);
  v11 = sub_1CA948E58();
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  v14 = OUTLINED_FUNCTION_45();
  sub_1CA948D98();
  sub_1CA94A6F8();
  if (v34)
  {
    v15 = v0[11];
    v16 = v0[8];

    (*(v13 + 8))(v14, v11);
    v10(v15, v16);

LABEL_5:

    OUTLINED_FUNCTION_5();
    goto LABEL_6;
  }

  v17 = v0[12];
  v35 = v7;
  v36 = v0[13];
  v18 = v0[11];
  v19 = v0[8];
  (*(v13 + 8))(v14, v11);
  v10(v18, v19);

  sub_1CA2C967C(v36, v17);
  v20 = sub_1CA94AD48();
  if (__swift_getEnumTagSinglePayload(v17, 1, v20) == 1)
  {
    v21 = v0[13];
    v22 = v0[3];
    sub_1CA2C96EC(v0[12]);
    type metadata accessor for DatabaseTypeDefinitionProvider.Error(0);
    sub_1CA2C814C(&qword_1EC443B68, type metadata accessor for DatabaseTypeDefinitionProvider.Error, &unk_1CA981FC8);
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B70, &qword_1CA981FB8) + 48);
    v31(v24, v22, v35);
    sub_1CA94B168();
    OUTLINED_FUNCTION_0_1();
    (*(v26 + 16))(v24 + v25, v6 + v32);
    swift_willThrow();

    sub_1CA2C96EC(v21);
    goto LABEL_5;
  }

  v29 = v0[12];
  v30 = v0[2];
  sub_1CA2C96EC(v0[13]);

  (*(*(v20 - 8) + 32))(v30, v29, v20);

  OUTLINED_FUNCTION_3_6();
LABEL_6:

  return v27();
}

uint64_t sub_1CA2C6FB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B48, &qword_1CA981F78);
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - v3, a1);
  return sub_1CA94B288();
}

uint64_t sub_1CA2C7080()
{
  OUTLINED_FUNCTION_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for DatabaseTypeDefinitionProvider.CacheKey(0);
  v1[6] = v5;
  OUTLINED_FUNCTION_18_0(v5);
  v1[7] = OUTLINED_FUNCTION_45();

  return MEMORY[0x1EEE6DFA0](sub_1CA2C7108, v0, 0);
}

uint64_t sub_1CA2C7108()
{
  OUTLINED_FUNCTION_6();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[3];
  sub_1CA94ADC8();
  OUTLINED_FUNCTION_0_1();
  (*(v5 + 16))(v1, v4);
  v6 = *(v2 + 20);
  sub_1CA94B168();
  OUTLINED_FUNCTION_0_1();
  (*(v7 + 16))(v1 + v6, v3);
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_1CA2C7234;
  v9 = v0[7];
  v10 = v0[2];

  return sub_1CA2C7650(v10, v9);
}

uint64_t sub_1CA2C7234()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_2_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v0;

  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_15_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA2C7348()
{
  OUTLINED_FUNCTION_0();
  sub_1CA2C7D54(*(v0 + 56));

  OUTLINED_FUNCTION_3_6();

  return v1();
}

uint64_t sub_1CA2C73AC()
{
  OUTLINED_FUNCTION_0();
  sub_1CA2C7D54(*(v0 + 56));

  OUTLINED_FUNCTION_5();

  return v1();
}

uint64_t DatabaseTypeDefinitionProvider.deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 120));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t DatabaseTypeDefinitionProvider.__deallocating_deinit()
{
  DatabaseTypeDefinitionProvider.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1CA2C74B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2C756C;

  return sub_1CA2C7080();
}

uint64_t sub_1CA2C756C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v1 = *v0;
  OUTLINED_FUNCTION_1();
  *v2 = v1;

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA2C7650(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *(type metadata accessor for DatabaseTypeDefinitionProvider.CacheKey(0) - 8);
  v3[11] = v4;
  v3[12] = *(v4 + 64);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA2C7750, v2, 0);
}

uint64_t sub_1CA2C7750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_33_1();
  v16 = *(v15 + 112);
  sub_1CA94C218();
  v17 = sub_1CA3117E8(v12, v16);
  v13[15] = v17;

  if (v17)
  {
    v18 = swift_task_alloc();
    v13[16] = v18;
    sub_1CA94AD48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443898, &unk_1CA9855B0);
    OUTLINED_FUNCTION_34_2();
    *v18 = v19;
    v18[1] = sub_1CA2C7984;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_42(v20);
    sub_1CA2C9194(v16, v14);
    OUTLINED_FUNCTION_13_3(&qword_1EC443B38, &qword_1EC443B40, &qword_1CA981F40);
    OUTLINED_FUNCTION_35_0();
    v21 = OUTLINED_FUNCTION_44_2();
    OUTLINED_FUNCTION_21_4(v21);
    swift_retain_n();
    OUTLINED_FUNCTION_12_4();
    sub_1CA5E49EC();
    OUTLINED_FUNCTION_22_2(v22);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_19_2();
    sub_1CA321F8C();
    *(v15 + 112) = a9;
    swift_endAccess();
    v23 = swift_task_alloc();
    v13[19] = v23;
    sub_1CA94AD48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443898, &unk_1CA9855B0);
    OUTLINED_FUNCTION_34_2();
    *v23 = v24;
    v23[1] = sub_1CA2C7A98;
  }

  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x1EEE6DA10](v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_1CA2C7984()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_2_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 136) = v0;

  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_15_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA2C7A98()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_2_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 160) = v0;

  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_15_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA2C7BAC()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_3_6();

  return v0();
}

uint64_t sub_1CA2C7C14()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_5();

  return v0();
}

uint64_t sub_1CA2C7C80()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_3_6();

  return v0();
}

uint64_t sub_1CA2C7CE8()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_5();

  return v0();
}

uint64_t sub_1CA2C7D54(uint64_t a1)
{
  v2 = type metadata accessor for DatabaseTypeDefinitionProvider.CacheKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of TypeDefinitionProvider.type(with:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(a5 + 8) + **(a5 + 8));
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4_4(v10);
  *v11 = v12;
  v11[1] = sub_1CA2C99BC;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of DatabaseTypeDefinitionProvider.type(with:from:)()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v11 = (*(*v0 + 112) + **(*v0 + 112));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_4_4(v7);
  *v8 = v9;
  v8[1] = sub_1CA2C99BC;

  return v11(v6, v4, v2);
}

uint64_t sub_1CA2C8080(uint64_t a1)
{
  result = sub_1CA94ADC8();
  if (v2 <= 0x3F)
  {
    result = sub_1CA94B168();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CA2C814C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CA2C8194()
{
  OUTLINED_FUNCTION_0();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  v4 = *(type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey(0) - 8);
  v1[11] = v4;
  v1[12] = *(v4 + 64);
  v1[13] = OUTLINED_FUNCTION_45();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  OUTLINED_FUNCTION_18_0(v5);
  v1[14] = OUTLINED_FUNCTION_45();

  return MEMORY[0x1EEE6DFA0](sub_1CA2C827C, v0, 0);
}

uint64_t sub_1CA2C827C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_33_1();
  v16 = *(v15 + 112);
  sub_1CA94C218();
  v17 = sub_1CA31184C(v12, v16);
  v13[15] = v17;

  if (v17)
  {
    v18 = swift_task_alloc();
    v13[16] = v18;
    sub_1CA94B1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443898, &unk_1CA9855B0);
    OUTLINED_FUNCTION_34_2();
    *v18 = v19;
    v18[1] = sub_1CA2C84B0;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_42(v20);
    sub_1CA2C9194(v16, v14);
    OUTLINED_FUNCTION_13_3(&qword_1EC443B28, &qword_1EC443B30, &qword_1CA981F10);
    OUTLINED_FUNCTION_35_0();
    v21 = OUTLINED_FUNCTION_44_2();
    OUTLINED_FUNCTION_21_4(v21);
    swift_retain_n();
    OUTLINED_FUNCTION_12_4();
    sub_1CA5E4C34();
    OUTLINED_FUNCTION_22_2(v22);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_19_2();
    sub_1CA3220E8();
    *(v15 + 112) = a9;
    swift_endAccess();
    v23 = swift_task_alloc();
    v13[19] = v23;
    sub_1CA94B1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443898, &unk_1CA9855B0);
    OUTLINED_FUNCTION_34_2();
    *v23 = v24;
    v23[1] = sub_1CA2C85C4;
  }

  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x1EEE6DA10](v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_1CA2C84B0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_2_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 136) = v0;

  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_15_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA2C85C4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_2_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 160) = v0;

  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_15_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA2C86D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v7 = sub_1CA94AD48();
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v5[10] = *(v8 + 64);
  v5[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA2C87E0, a4, 0);
}

uint64_t sub_1CA2C87E0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_9();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_27_6(v1);

  return v3(v2);
}

uint64_t sub_1CA2C8890()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_15_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1CA2C89CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v14 = OUTLINED_FUNCTION_31_1();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v14);
  v15 = OUTLINED_FUNCTION_26_3();
  v16(v15);
  v17 = OUTLINED_FUNCTION_44_2();
  v18 = OUTLINED_FUNCTION_16_3(v17);
  v19(v18);
  OUTLINED_FUNCTION_12_4();
  sub_1CA5E49EC();
  OUTLINED_FUNCTION_32_0();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_20_2();
  sub_1CA321F8C();
  *(v13 + 112) = a9;
  swift_endAccess();

  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_23_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1CA2C8AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v7 = sub_1CA94B1C8();
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v5[10] = *(v8 + 64);
  v5[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA2C8BD0, a4, 0);
}

uint64_t sub_1CA2C8BD0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_9();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_27_6(v1);

  return v3(v2);
}

uint64_t sub_1CA2C8C80()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_15_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1CA2C8DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v14 = OUTLINED_FUNCTION_31_1();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v14);
  v15 = OUTLINED_FUNCTION_26_3();
  v16(v15);
  v17 = OUTLINED_FUNCTION_44_2();
  v18 = OUTLINED_FUNCTION_16_3(v17);
  v19(v18);
  OUTLINED_FUNCTION_12_4();
  sub_1CA5E4C34();
  OUTLINED_FUNCTION_32_0();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_20_2();
  sub_1CA3220E8();
  *(v13 + 112) = a9;
  swift_endAccess();

  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_23_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1CA2C8EB8()
{
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_30();
  v2 = type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey(v1);
  OUTLINED_FUNCTION_18_0(v2);
  OUTLINED_FUNCTION_36_1();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4_4(v3);
  *v4 = v5;
  v4[1] = sub_1CA2C99BC;
  v6 = OUTLINED_FUNCTION_6_8();

  return sub_1CA2C8AC8(v6, v7, v8, v0, v9);
}

uint64_t sub_1CA2C8F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1CA2C8FA4, 0, 0);
}

uint64_t sub_1CA2C8FA4()
{
  OUTLINED_FUNCTION_0();
  sub_1CA94AD48();
  OUTLINED_FUNCTION_0_1();
  v0 = OUTLINED_FUNCTION_23();
  v1(v0);
  OUTLINED_FUNCTION_3_6();

  return v2();
}

uint64_t sub_1CA2C9024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1CA2C9044, 0, 0);
}

uint64_t sub_1CA2C9044()
{
  OUTLINED_FUNCTION_0();
  sub_1CA94B1C8();
  OUTLINED_FUNCTION_0_1();
  v0 = OUTLINED_FUNCTION_23();
  v1(v0);
  OUTLINED_FUNCTION_3_6();

  return v2();
}

uint64_t sub_1CA2C90C4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_30();
  v0 = sub_1CA94B1C8();
  OUTLINED_FUNCTION_18_0(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_4_4(v1);
  *v2 = v3;
  v2[1] = sub_1CA2C99BC;
  v4 = OUTLINED_FUNCTION_6_8();

  return sub_1CA2C9024(v4, v5, v6, v7);
}

uint64_t sub_1CA2C9194(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_40();
  v4(v3);
  OUTLINED_FUNCTION_0_1();
  v5 = OUTLINED_FUNCTION_23();
  v6(v5);
  return a2;
}

uint64_t sub_1CA2C91E8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_40();
  v4(v3);
  OUTLINED_FUNCTION_0_1();
  v5 = OUTLINED_FUNCTION_23();
  v6(v5);
  return a2;
}

uint64_t sub_1CA2C923C()
{
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_30();
  v2 = type metadata accessor for DatabaseTypeDefinitionProvider.CacheKey(v1);
  OUTLINED_FUNCTION_18_0(v2);
  OUTLINED_FUNCTION_36_1();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4_4(v3);
  *v4 = v5;
  v4[1] = sub_1CA2C756C;
  v6 = OUTLINED_FUNCTION_6_8();

  return sub_1CA2C86D8(v6, v7, v8, v0, v9);
}

uint64_t objectdestroy_16Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 32) & ~v5;
  v8 = *(v7 + 64);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v1 + v6, v2);

  return MEMORY[0x1EEE6BDD0](v1, v6 + v8, v5 | 7);
}

uint64_t sub_1CA2C93C8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_30();
  v0 = sub_1CA94AD48();
  OUTLINED_FUNCTION_18_0(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_4_4(v1);
  *v2 = v3;
  v2[1] = sub_1CA2C99BC;
  v4 = OUTLINED_FUNCTION_6_8();

  return sub_1CA2C8F84(v4, v5, v6, v7);
}

uint64_t sub_1CA2C9498(uint64_t a1, uint64_t a2)
{
  v8[3] = sub_1CA94A138();
  v8[4] = MEMORY[0x1E69DA938];
  v8[0] = a1;
  swift_defaultActor_initialize();
  sub_1CA2C9578(v8, a2 + 120);
  sub_1CA2C9578(v8, v7);
  v4 = swift_allocObject();
  sub_1CA27F268(v7, v4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B40, &qword_1CA981F40);
  swift_allocObject();
  v5 = sub_1CA442000(&unk_1CA981F70, v4);
  __swift_destroy_boxed_opaque_existential_0(v8);
  *(a2 + 112) = v5;
  return a2;
}

uint64_t sub_1CA2C9578(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1CA2C95DC()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v4 = v3;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4_4(v5);
  *v6 = v7;
  v6[1] = sub_1CA2C99BC;

  return sub_1CA2C6500(v4, v2, v0 + 16);
}

uint64_t sub_1CA2C967C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B50, &qword_1CA981F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA2C96EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B50, &qword_1CA981F80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA2C9774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B70, &qword_1CA981FB8);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1CA2C97C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B70, &qword_1CA981FB8);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t sub_1CA2C982C(uint64_t a1)
{
  sub_1CA2C9938(319);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = sub_1CA94ADC8();
    if (v5 <= 0x3F)
    {
      v3 = sub_1CA94B168();
      if (v6 <= 0x3F)
      {
        swift_getTupleTypeLayout2();
        v3 = 0;
        *(*(a1 - 8) + 84) = v8;
      }
    }
  }

  return v3;
}

void sub_1CA2C9938(uint64_t a1)
{
  if (!qword_1EC443B88)
  {
    sub_1CA94ADC8();
    sub_1CA94B168();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC443B88);
    }
  }
}

uint64_t OUTLINED_FUNCTION_44_2()
{

  return swift_allocObject();
}

void sub_1CA2C99D8()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v2 = sub_1CA94C168();
  v3 = OUTLINED_FUNCTION_18_0(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_62();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE0, &qword_1CA982090);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_37_1();
  sub_1CA94C218();
  OUTLINED_FUNCTION_69();
  sub_1CA94C178();
  sub_1CA2D9B68();
  OUTLINED_FUNCTION_91();
  sub_1CA94C078();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  sub_1CA94C058();
  if (v11)
  {

    sub_1CA94C218();
    OUTLINED_FUNCTION_69();
    sub_1CA94C178();
    sub_1CA2D9968();
    sub_1CA94BE48();
    v5 = OUTLINED_FUNCTION_195();
    v6(v5);
    v7 = 0;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_195();
    v9(v8);
    v7 = 1;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  __swift_storeEnumTagSinglePayload(v1, v7, 1, v10);
  OUTLINED_FUNCTION_36();
}

void sub_1CA2C9BB4()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v32 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C08, &qword_1CA9820B0);
  OUTLINED_FUNCTION_18_0(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_4();
  v8 = sub_1CA94C168();
  v9 = OUTLINED_FUNCTION_18_0(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_62();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C10, &qword_1CA9820B8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_37_1();
  sub_1CA94C218();
  OUTLINED_FUNCTION_69();
  sub_1CA94C178();
  v11 = type metadata accessor for LibraryModel.FolderCollection(0);
  OUTLINED_FUNCTION_13_4();
  sub_1CA25C558(v12, v13, "9\bP$43\v");
  OUTLINED_FUNCTION_91();
  sub_1CA94C078();
  if (sub_1CA94C3A8() == v4 && v14 == v2)
  {

    goto LABEL_9;
  }

  v16 = v0;
  OUTLINED_FUNCTION_69();
  v17 = sub_1CA94D7F8();

  if (v17)
  {
LABEL_9:
    v24 = OUTLINED_FUNCTION_140();
    v25(v24);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
    v23 = v32;
    v27 = v32;
    v28 = 1;
LABEL_10:
    __swift_storeEnumTagSinglePayload(v27, v28, 1, v26);
    EnumTagSinglePayload = 0;
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  sub_1CA94C058();
  v18 = OUTLINED_FUNCTION_50_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, v19, v11);
  sub_1CA27080C(v16, &qword_1EC443C08, &qword_1CA9820B0);
  if (EnumTagSinglePayload != 1)
  {
    sub_1CA94C218();
    OUTLINED_FUNCTION_69();
    sub_1CA94C178();
    sub_1CA2D9968();
    v23 = v32;
    sub_1CA94BE48();
    v30 = OUTLINED_FUNCTION_140();
    v31(v30);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
    v27 = v32;
    v28 = 0;
    goto LABEL_10;
  }

  v21 = OUTLINED_FUNCTION_140();
  v22(v21);
  v23 = v32;
LABEL_11:
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF0, &qword_1CA9820A0);
  __swift_storeEnumTagSinglePayload(v23, EnumTagSinglePayload, 1, v29);
  OUTLINED_FUNCTION_36();
}

void sub_1CA2C9ED0()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v2 = sub_1CA94C168();
  v3 = OUTLINED_FUNCTION_18_0(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_62();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE0, &qword_1CA982090);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_37_1();
  sub_1CA94C218();
  OUTLINED_FUNCTION_188();
  sub_1CA94C178();
  sub_1CA2D9B68();
  OUTLINED_FUNCTION_91();
  sub_1CA94C078();
  sub_1CA94BFC8();
  if (v11)
  {
    sub_1CA94C218();

    OUTLINED_FUNCTION_188();
    sub_1CA94C178();
    sub_1CA2D9968();
    sub_1CA94BE58();
    v5 = OUTLINED_FUNCTION_103();
    v6(v5);
    v7 = 0;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_103();
    v9(v8);
    v7 = 1;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  __swift_storeEnumTagSinglePayload(v1, v7, 1, v10);
  OUTLINED_FUNCTION_36();
}

void sub_1CA2CA09C()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v37 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C08, &qword_1CA9820B0);
  OUTLINED_FUNCTION_18_0(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_43();
  v9 = v8;
  v10 = OUTLINED_FUNCTION_25_0();
  type metadata accessor for LibraryModel.FolderCollection(v10);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_1();
  v36 = v12;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_60_2();
  v14 = sub_1CA94C168();
  v15 = OUTLINED_FUNCTION_18_0(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C10, &qword_1CA9820B8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_20_3();
  sub_1CA94C218();
  OUTLINED_FUNCTION_69();
  sub_1CA94C178();
  OUTLINED_FUNCTION_13_4();
  sub_1CA25C558(v17, v18, "9\bP$43\v");
  OUTLINED_FUNCTION_95();
  sub_1CA94C078();
  v20 = sub_1CA94C3A8() == v4 && v19 == v2;
  if (v20)
  {

    goto LABEL_10;
  }

  v35 = v0;
  OUTLINED_FUNCTION_69();
  v21 = sub_1CA94D7F8();

  if (v21)
  {
LABEL_10:
    v25 = OUTLINED_FUNCTION_138_1();
    v26(v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
    v28 = v37;
    v33 = OUTLINED_FUNCTION_201_0();
    goto LABEL_11;
  }

  sub_1CA94BFC8();
  OUTLINED_FUNCTION_41(v9);
  if (!v20)
  {
    sub_1CA2D9C14(v9, v35);
    sub_1CA2D9BBC(v35, v36);
    sub_1CA94C218();

    OUTLINED_FUNCTION_69();
    sub_1CA94C178();
    sub_1CA2D9968();
    v28 = v37;
    sub_1CA94BE68();
    OUTLINED_FUNCTION_4_5();
    sub_1CA26F808(v35, v29);
    v30 = OUTLINED_FUNCTION_138_1();
    v31(v30);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
    v33 = v37;
    v34 = 0;
LABEL_11:
    __swift_storeEnumTagSinglePayload(v33, v34, 1, v32);
    v24 = 0;
    goto LABEL_12;
  }

  v22 = OUTLINED_FUNCTION_138_1();
  v23(v22);
  sub_1CA27080C(v9, &qword_1EC443C08, &qword_1CA9820B0);
  v24 = 1;
  v28 = v37;
LABEL_12:
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF0, &qword_1CA9820A0);
  __swift_storeEnumTagSinglePayload(v28, v24, 1, v27);
  OUTLINED_FUNCTION_36();
}

void sub_1CA2CA42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37_0();
  v184 = v20;
  v159[0] = v22;
  v171 = v23;
  v25 = v24;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA8, &unk_1CA983A80);
  OUTLINED_FUNCTION_1_0();
  v160 = v26;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_43();
  v29 = OUTLINED_FUNCTION_19_0(v28);
  v30 = type metadata accessor for LibraryModel.FolderCollection(v29);
  v31 = OUTLINED_FUNCTION_18_0(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_6_2();
  v174 = v32;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444100, &qword_1CA982730);
  OUTLINED_FUNCTION_1_0();
  v169 = v33;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_172(v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4440F0, &qword_1CA982720);
  OUTLINED_FUNCTION_1_0();
  v181 = v37;
  v182 = v36;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_45_0();
  v179 = v39;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_60_2();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB8, &unk_1CA983A70);
  v42 = OUTLINED_FUNCTION_18_0(v41);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_45_0();
  v172 = v44;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_48_0();
  v186 = v46;
  OUTLINED_FUNCTION_25_0();
  v47 = sub_1CA94C168();
  v48 = OUTLINED_FUNCTION_18_0(v47);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_6_2();
  v183 = v49;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_45_0();
  v180 = v54;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_45_0();
  v175 = v56;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v57);
  v60 = v159 - v59;
  v61 = *(v25 + 16);
  v176 = v58;
  if (v61)
  {
    v177 = (v58 + 8);
    v178 = (v58 + 16);
    v62 = v25 + 40;
    v63 = MEMORY[0x1E69E7CC0];
    v64 = v185;
    do
    {
      v187 = MEMORY[0x1E69E7CC8];
      sub_1CA94C218();

      sub_1CA94C178();
      sub_1CA2D9968();
      OUTLINED_FUNCTION_156();
      sub_1CA94BE58();
      v65 = v186;
      v66 = OUTLINED_FUNCTION_35_1();
      __swift_storeEnumTagSinglePayload(v66, v67, v68, v64);
      v69 = *(v182 + 48);
      (*v178)(v21, v60, v64);
      sub_1CA2D9CD4(v65, v21 + v69, &qword_1EC443BB8, &unk_1CA983A70);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_21();
        sub_1CA2E49E8();
        v63 = v74;
      }

      v71 = v63[2];
      v70 = v63[3];
      if (v71 >= v70 >> 1)
      {
        OUTLINED_FUNCTION_17_1(v70);
        sub_1CA2E49E8();
        v63 = v75;
      }

      v64 = v185;
      (*v177)(v60, v185);
      v63[2] = v71 + 1;
      OUTLINED_FUNCTION_47();
      sub_1CA2D9CD4(v21, v63 + v72 + *(v73 + 72) * v71, &qword_1EC4440F0, &qword_1CA982720);
      v62 += 16;
      --v61;
    }

    while (v61);
  }

  else
  {
    v63 = MEMORY[0x1E69E7CC0];
  }

  v76 = sub_1CA94C1E8();
  if (*(v171 + 16))
  {
    OUTLINED_FUNCTION_68_0();
    v79 = v78 + v77;
    v178 = (v176 + 16);
    v171 = *(v170 + 48);
    v165 = v176 + 32;
    v170 = *(v80 + 72);
    v164 = v176 + 40;
    OUTLINED_FUNCTION_135(v176 + 8);
    while (1)
    {
      v177 = v81;
      v186 = v63;
      v82 = v173;
      sub_1CA2D9D20(v79, v173, &qword_1EC444100, &qword_1CA982730);
      v84 = *v82;
      v83 = v82[1];
      OUTLINED_FUNCTION_12_5();
      sub_1CA2D9C14(v82 + v171, v174);

      sub_1CA94C218();
      OUTLINED_FUNCTION_116_0();
      sub_1CA94C178();
      sub_1CA2D9968();
      sub_1CA94BE68();
      v85 = *v178;
      OUTLINED_FUNCTION_134_1();
      v85();
      swift_isUniquelyReferenced_nonNull_native();
      v187 = v76;
      v86 = OUTLINED_FUNCTION_116_0();
      v88 = sub_1CA271BF8(v86, v87);
      if (__OFADD__(v76[2], (v89 & 1) == 0))
      {
        break;
      }

      v90 = v88;
      v91 = v89;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C18, &qword_1CA9820C0);
      if (sub_1CA94D588())
      {
        v92 = OUTLINED_FUNCTION_116_0();
        v94 = sub_1CA271BF8(v92, v93);
        if ((v91 & 1) != (v95 & 1))
        {
          goto LABEL_41;
        }

        v90 = v94;
      }

      v76 = v187;
      if (v91)
      {
        OUTLINED_FUNCTION_189_0();
        OUTLINED_FUNCTION_169();
        v96();
      }

      else
      {
        v187[(v90 >> 6) + 8] |= 1 << v90;
        v97 = (v76[6] + 16 * v90);
        *v97 = v84;
        v97[1] = v83;
        OUTLINED_FUNCTION_189_0();
        OUTLINED_FUNCTION_169();
        v98();
        v99 = v76[2];
        v100 = __OFADD__(v99, 1);
        v101 = v99 + 1;
        if (v100)
        {
          goto LABEL_40;
        }

        v76[2] = v101;
      }

      v102 = v172;
      OUTLINED_FUNCTION_46();
      __swift_storeEnumTagSinglePayload(v103, v104, v105, v91);
      v106 = *(v182 + 48);
      v107 = v179;
      OUTLINED_FUNCTION_134_1();
      v85();
      sub_1CA2D9CD4(v102, v107 + v106, &qword_1EC443BB8, &unk_1CA983A70);
      v63 = v186;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_21();
        sub_1CA2E49E8();
        v63 = v115;
      }

      v108 = v184;
      v110 = v63[2];
      v109 = v63[3];
      if (v110 >= v109 >> 1)
      {
        OUTLINED_FUNCTION_17_1(v109);
        sub_1CA2E49E8();
        v63 = v116;
      }

      OUTLINED_FUNCTION_38_1();
      v111 = OUTLINED_FUNCTION_126();
      v112(v111);
      v63[2] = v110 + 1;
      OUTLINED_FUNCTION_47();
      sub_1CA2D9CD4(v179, v63 + v113 + *(v114 + 72) * v110, &qword_1EC4440F0, &qword_1CA982720);
      v79 += v170;
      v81 = (v177 - 1);
      if (v177 == 1)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    sub_1CA94D878();
    __break(1u);
  }

  else
  {
    v108 = v184;
LABEL_27:
    v117 = *(v159[0] + 16);
    if (v117)
    {
      v178 = v76;
      v179 = v176 + 16;
      v177 = (v176 + 32);
      v175 = (v176 + 8);
      v118 = (v159[0] + 56);
      do
      {
        if (v76[2])
        {
          v186 = v63;
          v119 = *(v118 - 1);
          v120 = *v118;
          sub_1CA94C218();
          sub_1CA94C218();
          v121 = sub_1CA271BF8(v119, v120);
          v123 = v122;

          if (v123)
          {
            v124 = v76[7] + *(v176 + 72) * v121;
            v180 = *(v176 + 16);
            v125 = v185;
            v180(v162, v124, v185);
            v126 = v166;
            v127 = OUTLINED_FUNCTION_61();
            v128(v127);
            v187 = MEMORY[0x1E69E7CC8];

            sub_1CA94C178();
            sub_1CA2D9968();
            OUTLINED_FUNCTION_156();
            OUTLINED_FUNCTION_181();
            sub_1CA94BE58();
            v129 = v163;
            v130 = v126;
            v131 = v180;
            v180(v163, v130, v125);
            OUTLINED_FUNCTION_89();
            __swift_storeEnumTagSinglePayload(v132, v133, v134, v125);
            v135 = *(v182 + 48);
            v136 = v168;
            v137 = OUTLINED_FUNCTION_122_0();
            v131(v137);
            sub_1CA2D9CD4(v129, v136 + v135, &qword_1EC443BB8, &unk_1CA983A70);
            v63 = v186;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_21();
              sub_1CA2E49E8();
              v63 = v144;
            }

            v139 = v63[2];
            v138 = v63[3];
            v108 = v184;
            v76 = v178;
            if (v139 >= v138 >> 1)
            {
              OUTLINED_FUNCTION_64(v138);
              sub_1CA2E49E8();
              v63 = v145;
            }

            v140 = *v175;
            v141 = v185;
            (*v175)(v167, v185);
            v140(v166, v141);
            v63[2] = v139 + 1;
            OUTLINED_FUNCTION_47();
            sub_1CA2D9CD4(v168, v63 + v142 + *(v143 + 72) * v139, &qword_1EC4440F0, &qword_1CA982720);
          }

          else
          {

            v63 = v186;
          }
        }

        v118 += 4;
        --v117;
      }

      while (v117);
    }

    v187 = v63;
    v146 = OUTLINED_FUNCTION_23();
    __swift_instantiateConcreteTypeFromMangledNameV2(v146, v147);
    OUTLINED_FUNCTION_76();
    sub_1CA25C3BC(v148, &unk_1EC443950, &unk_1CA982580, v149);
    OUTLINED_FUNCTION_75();
    sub_1CA25C3BC(v150, &unk_1EC443950, &unk_1CA982580, v151);
    OUTLINED_FUNCTION_68_1();
    sub_1CA25C3BC(v152, v153, v154, v155);
    v156 = v159[1];
    sub_1CA94BD68();
    sub_1CA94BFA8();
    OUTLINED_FUNCTION_69_1();
    v157 = type metadata accessor for LibraryModel(0);
    (*(v160 + 40))(v108 + *(v157 + 20), v156, v161);
    v158 = OUTLINED_FUNCTION_53_1();
    (unk_1EC443C20)(v158);

    OUTLINED_FUNCTION_36();
  }
}