void sub_1CF8E0FB0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  MEMORY[0x1EEE9AC00](v71);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v62 - v18;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v22 = a2;
  v23 = a1;
  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_67;
  }

  v24 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v21 != -1)
  {
    v25 = (a2 - a1) / v21;
    v76 = a1;
    v26 = a4;
    v75 = a4;
    if (v25 < v24 / v21)
    {
      v27 = v25 * v21;
      if (a4 < v23 || v23 + v27 <= a4)
      {
        v28 = v23;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == v23)
        {
          goto LABEL_17;
        }

        v28 = v23;
        swift_arrayInitWithTakeBackToFront();
      }

      v23 = v28;
      v26 = a4;
      v22 = a2;
LABEL_17:
      v72 = v4;
      v70 = v26 + v27;
      v74 = v26 + v27;
      if (v27 >= 1 && v22 < a3)
      {
        v68 = v15;
        v69 = v19;
        v67 = a3;
        while (1)
        {
          v73 = v23;
          v33 = v21;
          v34 = v22;
          v35 = v69;
          sub_1CEFCCBDC(v22, v69, &unk_1EC4BF650, &unk_1CF9FCB40);
          sub_1CEFCCBDC(v26, v15, &unk_1EC4BF650, &unk_1CF9FCB40);
          v36 = v72;
          v37 = sub_1CF81BCDC(v35, v15);
          v72 = v36;
          if (v36)
          {
            sub_1CEFCCC44(v15, &unk_1EC4BF650, &unk_1CF9FCB40);
            sub_1CEFCCC44(v35, &unk_1EC4BF650, &unk_1CF9FCB40);
            goto LABEL_65;
          }

          v38 = v37;
          sub_1CEFCCC44(v15, &unk_1EC4BF650, &unk_1CF9FCB40);
          sub_1CEFCCC44(v35, &unk_1EC4BF650, &unk_1CF9FCB40);
          if ((v38 & 1) == 0)
          {
            v21 = v33;
            v40 = v26;
            v26 += v33;
            v39 = v73;
            if (v73 < v40 || v73 >= v26)
            {
              swift_arrayInitWithTakeFrontToBack();
              v39 = v73;
            }

            else if (v73 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
              v39 = v73;
            }

            v75 = v26;
            v22 = v34;
            goto LABEL_37;
          }

          v21 = v33;
          v39 = v73;
          if (v73 < v34 || v73 >= v34 + v33)
          {
            break;
          }

          if (v73 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
LABEL_33:
            v39 = v73;
          }

          v22 = v34 + v33;
LABEL_37:
          v23 = v39 + v21;
          v76 = v23;
          if (v26 < v70)
          {
            v15 = v68;
            if (v22 < v67)
            {
              continue;
            }
          }

          goto LABEL_65;
        }

        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_33;
      }

      goto LABEL_65;
    }

    v29 = v24 / v21 * v21;
    v69 = v17;
    if (a4 < v22 || v22 + v29 <= a4)
    {
      v30 = v22;
      v31 = v23;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == v22)
      {
LABEL_42:
        v41 = v26 + v29;
        if (v29 < 1)
        {
LABEL_60:
          v72 = v5;
          v76 = v22;
          v74 = v41;
          goto LABEL_65;
        }

        v42 = -v21;
        v43 = &unk_1EC4BF650;
        v44 = v26 + v29;
        v45 = &unk_1CF9FCB40;
        v65 = v26;
        v73 = v23;
        v68 = -v21;
LABEL_44:
        v63 = v41;
        v46 = v22 + v42;
        v66 = v22 + v42;
        v67 = v22;
        while (1)
        {
          if (v22 <= v23)
          {
            v72 = v5;
            v76 = v22;
            v74 = v63;
            goto LABEL_65;
          }

          v47 = a3;
          v64 = v41;
          v49 = v68;
          v48 = v69;
          v70 = v44;
          v50 = v44 + v68;
          v51 = v5;
          v52 = v43;
          v53 = v45;
          sub_1CEFCCBDC(v44 + v68, v69, v43, v45);
          sub_1CEFCCBDC(v46, v11, v52, v53);
          v54 = sub_1CF81BCDC(v48, v11);
          v55 = v11;
          if (v51)
          {
            break;
          }

          v56 = v54;
          a3 = v47 + v49;
          v57 = v55;
          sub_1CEFCCC44(v55, v52, v53);
          sub_1CEFCCC44(v48, v52, v53);
          if (v56)
          {
            v72 = 0;
            if (v47 < v67 || a3 >= v67)
            {
              v61 = v66;
              swift_arrayInitWithTakeFrontToBack();
              v11 = v57;
              v22 = v61;
              v23 = v73;
            }

            else
            {
              v11 = v57;
              v22 = v66;
              v23 = v73;
              if (v47 != v67)
              {
                v59 = v66;
                v60 = v73;
                swift_arrayInitWithTakeBackToFront();
                v23 = v60;
                v22 = v59;
              }
            }

            v41 = v64;
            v44 = v70;
            v42 = v68;
            v43 = v52;
            v45 = v53;
            v5 = v72;
            if (v70 <= v65)
            {
              goto LABEL_60;
            }

            goto LABEL_44;
          }

          v41 = v50;
          if (v47 < v70 || a3 >= v70)
          {
            swift_arrayInitWithTakeFrontToBack();
            v41 = v50;
            v11 = v57;
            v23 = v73;
          }

          else
          {
            v11 = v57;
            v23 = v73;
            if (v47 != v70)
            {
              v58 = v73;
              swift_arrayInitWithTakeBackToFront();
              v23 = v58;
              v41 = v50;
            }
          }

          v44 = v41;
          v46 = v66;
          v43 = v52;
          v45 = v53;
          v5 = 0;
          v22 = v67;
          if (v50 <= v65)
          {
            goto LABEL_60;
          }
        }

        sub_1CEFCCC44(v11, &unk_1EC4BF650, &unk_1CF9FCB40);
        sub_1CEFCCC44(v48, &unk_1EC4BF650, &unk_1CF9FCB40);
        v76 = v67;
        v74 = v64;
LABEL_65:
        sub_1CF31720C(&v76, &v75, &v74);
        return;
      }

      v30 = v22;
      v31 = v23;
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = v31;
    v26 = a4;
    v22 = v30;
    goto LABEL_42;
  }

LABEL_68:
  __break(1u);
}

uint64_t sub_1CF8E167C(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_1CF8E1840(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_1CF8DF3C4(v11, v6, a2, a1);

    MEMORY[0x1D386CDC0](v11, -1, -1);
  }

  return v9;
}

uint64_t sub_1CF8E1840(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v53 = result;
  v55 = a4;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v29 = 0;
    v30 = a3 + 56;
    v31 = 1 << *(a3 + 32);
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v33 = v32 & *(a3 + 56);
    v34 = (v31 + 63) >> 6;
    v35 = a4 + 56;
    v54 = 0;
    while (1)
    {
LABEL_46:
      if (v33)
      {
        v36 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
      }

      else
      {
        v37 = v29;
        do
        {
          v29 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            __break(1u);
LABEL_84:
            __break(1u);
            goto LABEL_85;
          }

          if (v29 >= v34)
          {
LABEL_82:

            return sub_1CF8E2168(v53, a2, v54, v4);
          }

          v38 = *(v30 + 8 * v29);
          ++v37;
        }

        while (!v38);
        v36 = __clz(__rbit64(v38));
        v33 = (v38 - 1) & v38;
      }

      v39 = v36 | (v29 << 6);
      v40 = *(v4 + 48) + 16 * v39;
      v41 = *v40;
      v42 = *(v40 + 8);
      sub_1CF9E81D8();
      if (v42)
      {
        if (v42 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v41);
        }

        else
        {
          if (v41)
          {
            v43 = 3;
          }

          else
          {
            v43 = 2;
          }

          MEMORY[0x1D386A470](v43);
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }

      result = sub_1CF9E8228();
      v44 = -1 << *(v55 + 32);
      v45 = result & ~v44;
      v4 = a3;
      if ((*(v35 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
      {
        v46 = ~v44;
        v47 = v42 == 2;
        v48 = v41 == 1 && v42 == 2;
        if (v41)
        {
          v47 = 0;
        }

        while (1)
        {
          v49 = *(v55 + 48) + 16 * v45;
          v50 = *v49;
          v51 = *(v49 + 8);
          if (v51)
          {
            if (v51 == 1)
            {
              if (v42 == 1 && v50 == v41)
              {
                goto LABEL_80;
              }
            }

            else if (v50)
            {
              if (v48)
              {
                goto LABEL_80;
              }
            }

            else if (v47)
            {
              goto LABEL_80;
            }
          }

          else if (!v42 && v50 == v41)
          {
LABEL_80:
            *(v53 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
            if (!__OFADD__(v54, 1))
            {
              ++v54;
              goto LABEL_46;
            }

LABEL_85:
            __break(1u);
            goto LABEL_86;
          }

          v45 = (v45 + 1) & v46;
          if (((*(v35 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
          {
            goto LABEL_46;
          }
        }
      }
    }
  }

  v5 = 0;
  v6 = a4 + 56;
  v7 = 1 << *(a4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = a3 + 56;
  v54 = 0;
  do
  {
LABEL_6:
    if (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
    }

    else
    {
      v13 = v5;
      do
      {
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_84;
        }

        if (v5 >= v10)
        {
          goto LABEL_82;
        }

        v14 = *(v6 + 8 * v5);
        ++v13;
      }

      while (!v14);
      v12 = __clz(__rbit64(v14));
      v9 = (v14 - 1) & v14;
    }

    v15 = *(a4 + 48) + 16 * (v12 | (v5 << 6));
    v16 = *v15;
    v17 = *(v15 + 8);
    sub_1CF9E81D8();
    if (v17)
    {
      if (v17 == 1)
      {
        MEMORY[0x1D386A470](1);
        MEMORY[0x1D386A4A0](v16);
      }

      else
      {
        if (v16)
        {
          v18 = 3;
        }

        else
        {
          v18 = 2;
        }

        MEMORY[0x1D386A470](v18);
      }
    }

    else
    {
      MEMORY[0x1D386A470](0);
      sub_1CF9E8208();
    }

    result = sub_1CF9E8228();
    v4 = a3;
    v19 = -1 << *(a3 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    a4 = v55;
  }

  while (((1 << v20) & *(v11 + 8 * (v20 >> 6))) == 0);
  v23 = ~v19;
  v24 = v17 == 2;
  v25 = v16 == 1 && v17 == 2;
  if (v16)
  {
    v24 = 0;
  }

  while (1)
  {
    v26 = *(a3 + 48) + 16 * v20;
    v27 = *v26;
    v28 = *(v26 + 8);
    if (!v28)
    {
      break;
    }

    if (v28 == 1)
    {
      if (v17 == 1 && v27 == v16)
      {
        goto LABEL_40;
      }
    }

    else if (v27)
    {
      if (v25)
      {
        goto LABEL_40;
      }
    }

    else if (v24)
    {
      goto LABEL_40;
    }

LABEL_29:
    v20 = (v20 + 1) & v23;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if ((*(v11 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (v17 || v27 != v16)
  {
    goto LABEL_29;
  }

LABEL_40:
  v53[v21] |= v22;
  if (!__OFADD__(v54, 1))
  {
    ++v54;
    goto LABEL_6;
  }

LABEL_86:
  __break(1u);
  return result;
}

void sub_1CF8E1C98(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a3)
  {
    v5 = a3;
    if (*(a4 + 16) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C27B8, &qword_1CFA129C8);
      v8 = sub_1CF9E7908();
      v9 = v8;
      if (a2 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *a1;
      }

      v11 = 0;
      v12 = v8 + 56;
      v37 = v4;
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v38 = (v10 - 1) & v10;
LABEL_16:
        v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v18 = v17;
        sub_1CF9E81D8();
        v19 = v16;
        sub_1CF9E69C8();
        v20 = sub_1CF9E8228();
        v18, v21, v22, v23, v24, v25, v26, v27;
        v28 = -1 << *(v9 + 32);
        v29 = v20 & ~v28;
        v30 = v29 >> 6;
        if (((-1 << v29) & ~*(v12 + 8 * (v29 >> 6))) == 0)
        {
          v32 = 0;
          v33 = (63 - v28) >> 6;
          while (++v30 != v33 || (v32 & 1) == 0)
          {
            v34 = v30 == v33;
            if (v30 == v33)
            {
              v30 = 0;
            }

            v32 |= v34;
            v35 = *(v12 + 8 * v30);
            if (v35 != -1)
            {
              v31 = __clz(__rbit64(~v35)) + (v30 << 6);
              goto LABEL_26;
            }
          }

          goto LABEL_30;
        }

        v31 = __clz(__rbit64((-1 << v29) & ~*(v12 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v12 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        *(*(v9 + 48) + 8 * v31) = v19;
        ++*(v9 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_31;
        }

        v4 = v37;
        v10 = v38;
        if (!v5)
        {
          goto LABEL_5;
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
          goto LABEL_5;
        }

        v15 = a1[v11];
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v38 = (v15 - 1) & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_1CF8E1EDC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x1E69E7CD0];
LABEL_30:

    return v11;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4E70, &qword_1CFA18030);
  result = sub_1CF9E7908();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v12 = 0;
  v13 = result + 56;
  v40 = result;
  v41 = v4;
  while (v10)
  {
    v14 = __clz(__rbit64(v10));
    v42 = (v10 - 1) & v10;
LABEL_15:
    v17 = *(v4 + 48) + 24 * (v14 | (v12 << 6));
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    sub_1CF9E81D8();
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v22 = v21;
    v43 = v18;
    sub_1CF9E69C8();
    v22, v23, v24, v25, v26, v27, v28, v29;
    sub_1CF9E81F8();
    if (v20 != 1)
    {
      MEMORY[0x1D386A470](v19);
    }

    result = sub_1CF9E8228();
    v9 = v40;
    v4 = v41;
    v30 = -1 << *(v40 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v13 + 8 * (v31 >> 6))) == 0)
    {
      v34 = 0;
      v35 = (63 - v30) >> 6;
      while (++v32 != v35 || (v34 & 1) == 0)
      {
        v36 = v32 == v35;
        if (v32 == v35)
        {
          v32 = 0;
        }

        v34 |= v36;
        v37 = *(v13 + 8 * v32);
        if (v37 != -1)
        {
          v33 = __clz(__rbit64(~v37)) + (v32 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_33;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v13 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v13 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    v38 = *(v40 + 48) + 24 * v33;
    *v38 = v43;
    *(v38 + 8) = v19;
    *(v38 + 16) = v20;
    ++*(v40 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_34;
    }

    v10 = v42;
    if (!v5)
    {
LABEL_29:
      v11 = v9;
      goto LABEL_30;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      goto LABEL_29;
    }

    v16 = a1[v12];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v42 = (v16 - 1) & v16;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1CF8E2168(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2768, &qword_1CFA12980);
  result = sub_1CF9E7908();
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
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v4 + 48) + 16 * (v13 | (v11 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    sub_1CF9E81D8();
    if (v18)
    {
      if (v18 == 1)
      {
        MEMORY[0x1D386A470](1);
        MEMORY[0x1D386A4A0](v17);
      }

      else
      {
        if (v17)
        {
          v19 = 3;
        }

        else
        {
          v19 = 2;
        }

        MEMORY[0x1D386A470](v19);
      }
    }

    else
    {
      MEMORY[0x1D386A470](0);
      sub_1CF9E8208();
    }

    result = sub_1CF9E8228();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_35;
        }
      }

      goto LABEL_39;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_35:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v9 + 48) + 16 * v23;
    *v28 = v17;
    *(v28 + 8) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_40;
    }

    v4 = v30;
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
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

void *sub_1CF8E23D0(uint64_t a1, void *a2)
{
  v2 = a2;
  v150[2] = *MEMORY[0x1E69E9840];
  if (a2[2])
  {
    v3 = a1;
    v150[0] = a1;
    v4 = *(a1 + 16);

    v145 = v4;
    if (!v4)
    {
      goto LABEL_41;
    }

    v12 = 0;
    v13 = v3 + 1;
    v14 = v2 + 7;
    v149 = v2 + 7;
    v146 = v3 + 1;
    while (1)
    {
      v15 = *(&v13->super.isa + v12);
      v147 = (&v12->super.isa + 1);
      v150[1] = &v12->super.isa + 1;
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v16 = v2;
      v18 = v17;
      sub_1CF9E81D8();
      v148 = v15;
      sub_1CF9E69C8();
      v19 = sub_1CF9E8228();
      v18, v20, v21, v22, v23, v24, v25, v26;
      v27 = -1 << *(v2 + 32);
      v28 = v19 & ~v27;
      v29 = v28 >> 6;
      v30 = 1 << v28;
      if (((1 << v28) & v14[v28 >> 6]) != 0)
      {
        break;
      }

LABEL_4:

      v12 = v147;
      v13 = v146;
      if (v147 == v145)
      {
        goto LABEL_41;
      }
    }

    v31 = ~v27;
    while (1)
    {
      v32 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v34 = v33;
      v36 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v37 = v32;
      v38 = v35;
      if (v37 == v36 && v34 == v35)
      {

        v34, v55, v56, v57, v58, v59, v60, v61;
        v38, v62, v63, v64, v65, v66, v67, v68;
        goto LABEL_17;
      }

      v40 = sub_1CF9E8048();
      v34, v41, v42, v43, v44, v45, v46, v47;
      v38, v48, v49, v50, v51, v52, v53, v54;
      if (v40)
      {
        break;
      }

      v28 = (v28 + 1) & v31;
      v29 = v28 >> 6;
      v14 = v149;
      v30 = 1 << v28;
      v2 = v16;
      if (((1 << v28) & v149[v28 >> 6]) == 0)
      {
        goto LABEL_4;
      }
    }

    v14 = v149;
LABEL_17:
    v70 = v16;
    v71 = *(v16 + 32);
    v141[0] = ((1 << v71) + 63) >> 6;
    v72 = 8 * v141[0];
    v145 = v3;
    if ((v71 & 0x3Fu) > 0xD)
    {
LABEL_45:
      v130 = v72;

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v131 = swift_slowAlloc();
        memcpy(v131, v14, v130);
        sub_1CF8E2FB0(v131, v141[0], v70, v28, v150);
        v133 = v132;

        MEMORY[0x1D386CDC0](v131, -1, -1);
        v145, v134, v135, v136, v137, v138, v139, v140;
        return v133;
      }

      v3 = v145;
    }

    v141[1] = v141;
    MEMORY[0x1EEE9AC00](v69);
    v28 = v141 - ((v73 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v28, v14, v73);
    v74 = *(v70 + 16);
    *(v28 + 8 * v29) &= ~v30;
    v75 = v74 - 1;
    v76 = *v3->tree;
    v77 = v147;
    v143 = v28;
    v144 = v76;
LABEL_19:
    v142 = v75;
    if (v77 != v76)
    {
      v78 = v77;
      v147 = v77;
      do
      {
        if ((v77 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        if (v78 >= *v3->tree)
        {
          goto LABEL_44;
        }

        v79 = *(&v146->super.isa + v78);
        v78 = (v78 + 1);
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v30 = v80;
        sub_1CF9E81D8();
        v148 = v79;
        sub_1CF9E69C8();
        v28 = sub_1CF9E8228();
        v30, v81, v82, v83, v84, v85, v86, v87;
        v88 = -1 << *(v70 + 32);
        v29 = v28 & ~v88;
        v89 = v29 >> 6;
        v90 = v14[v29 >> 6];
        v91 = 1 << v29;
        if (((1 << v29) & v90) != 0)
        {
          v92 = ~v88;
          while (1)
          {
            v93 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v30 = v94;
            v95 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v28 = v96;
            if (v93 == v95 && v30 == v96)
            {

              v30, v113, v114, v115, v116, v117, v118, v119;
              v28, v120, v121, v122, v123, v124, v125, v126;
              goto LABEL_36;
            }

            v98 = sub_1CF9E8048();
            v30, v99, v100, v101, v102, v103, v104, v105;
            v28, v106, v107, v108, v109, v110, v111, v112;
            if (v98)
            {
              break;
            }

            v29 = (v29 + 1) & v92;
            v89 = v29 >> 6;
            v91 = 1 << v29;
            if (((1 << v29) & v149[v29 >> 6]) == 0)
            {
              goto LABEL_21;
            }
          }

LABEL_36:
          v76 = v144;
          v127 = v143[v89];
          v143[v89] = v127 & ~v91;
          v3 = v145;
          if ((v127 & v91) != 0)
          {
            v75 = v142 - 1;
            v14 = v149;
            if (__OFSUB__(v142, 1))
            {
              __break(1u);
            }

            v70 = v16;
            v77 = v78;
            if (v142 == 1)
            {

              v2 = MEMORY[0x1E69E7CD0];
              goto LABEL_41;
            }

            goto LABEL_19;
          }
        }

        else
        {
LABEL_21:

          v76 = v144;
          v3 = v145;
        }

        v14 = v149;
        v70 = v16;
        v77 = v147;
      }

      while (v78 != v76);
    }

    sub_1CF8E1C98(v143, v141[0], v142, v70);
    v2 = v128;
LABEL_41:
    v3, v5, v6, v7, v8, v9, v10, v11;
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1CF8E2944(_TtC18FileProviderDaemon8FSTester *a1, uint64_t a2)
{
  v2 = a2;
  v165[2] = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v165[0] = a1;
    v3 = *a1->tree;
    v155 = a1;

    v158 = v3;
    if (!v3)
    {
LABEL_54:
      v138 = v155;
      goto LABEL_55;
    }

    v11 = 0;
    v156 = v155 + 1;
    v162 = v2;
    v163 = (v2 + 56);
    while (1)
    {
      v12 = v156 + 24 * v11;
      v14 = *v12;
      v13 = *(v12 + 1);
      v15 = v12[16];
      v165[1] = v11 + 1;
      sub_1CF9E81D8();
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v17 = v16;
      v18 = v14;
      sub_1CF9E69C8();
      v17, v19, v20, v21, v22, v23, v24, v25;
      v161 = v15;
      v157 = v11 + 1;
      v159 = v18;
      v160 = v13;
      sub_1CF9E81F8();
      if (v15 != 1)
      {
        MEMORY[0x1D386A470](v13);
      }

      v26 = sub_1CF9E8228();
      v27 = -1 << *(v2 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = 1 << v28;
      if (((1 << v28) & v163[v28 >> 6]) != 0)
      {
        break;
      }

LABEL_4:

      v11 = v157;
      if (v157 == v158)
      {
        goto LABEL_54;
      }
    }

    v31 = ~v27;
    while (1)
    {
      v33 = *(v2 + 48) + 24 * v28;
      v34 = *(v33 + 8);
      v35 = *(v33 + 16);
      v36 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v38 = v37;
      v40 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v46 = v36;
      v47 = v39;
      if (v46 == v40 && v38 == v39)
      {
        break;
      }

      v49 = sub_1CF9E8048();
      v38, v50, v51, v52, v53, v54, v55, v56;
      v47, v57, v58, v59, v60, v61, v62, v63;
      v2 = v162;
      if ((v49 & 1) == 0)
      {
        goto LABEL_12;
      }

      if ((v35 & 1) == 0)
      {
        goto LABEL_9;
      }

LABEL_21:
      if (v161)
      {
        goto LABEL_22;
      }

LABEL_12:
      v28 = (v28 + 1) & v31;
      v29 = v28 >> 6;
      v30 = 1 << v28;
      if ((v163[v28 >> 6] & (1 << v28)) == 0)
      {
        goto LABEL_4;
      }
    }

    v38, v39, v40, v41, v42, v43, v44, v45;
    v47, v64, v65, v66, v67, v68, v69, v70;
    v2 = v162;
    if (v35)
    {
      goto LABEL_21;
    }

LABEL_9:
    v32 = v161;
    if (v34 != v160)
    {
      v32 = 1;
    }

    if (v32)
    {
      goto LABEL_12;
    }

LABEL_22:

    v72 = *(v2 + 32);
    v151[0] = ((1 << v72) + 63) >> 6;
    v73 = 8 * v151[0];
    if ((v72 & 0x3Fu) > 0xD)
    {
LABEL_59:
      v140 = v73;

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v141 = swift_slowAlloc();
        memcpy(v141, v163, v140);
        sub_1CF8E31EC(v141, v151[0], v2, v28, v165);
        v143 = v142;

        MEMORY[0x1D386CDC0](v141, -1, -1);
        v155, v144, v145, v146, v147, v148, v149, v150;
        return v143;
      }
    }

    v151[1] = v151;
    MEMORY[0x1EEE9AC00](v71);
    v75 = v151 - ((v74 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v75, v163, v74);
    v76 = *&v75[8 * v29] & ~v30;
    v153 = v75;
    *&v75[8 * v29] = v76;
    v77 = *(v2 + 16) - 1;
    v78 = v155;
    v79 = *v155->tree;
    v80 = v157;
    v154 = v79;
LABEL_24:
    v152 = v77;
    if (v80 != v79)
    {
      v81 = v80;
      v157 = v80;
      do
      {
        if ((v80 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        if (v81 >= *v78->tree)
        {
          goto LABEL_58;
        }

        v82 = v156 + 24 * v81;
        v84 = *v82;
        v83 = *(v82 + 1);
        v85 = v82[16];
        sub_1CF9E81D8();
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v87 = v86;
        v158 = v84;
        sub_1CF9E69C8();
        v87, v88, v89, v90, v91, v92, v93, v94;
        v161 = v85;
        v160 = v83;
        v28 = v164;
        sub_1CF9E81F8();
        if (v85 != 1)
        {
          MEMORY[0x1D386A470](v83);
        }

        v159 = (v81 + 1);
        v95 = sub_1CF9E8228();
        v96 = -1 << *(v2 + 32);
        v29 = v95 & ~v96;
        v30 = v29 >> 6;
        v97 = 1 << v29;
        if (((1 << v29) & v163[v29 >> 6]) == 0)
        {
LABEL_26:

          goto LABEL_27;
        }

        v98 = ~v96;
        while (1)
        {
          v100 = *(v2 + 48) + 24 * v29;
          v101 = *(v100 + 8);
          v102 = *(v100 + 16);
          v103 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v105 = v104;
          v106 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v28 = v107;
          if (v103 == v106 && v105 == v107)
          {
            break;
          }

          v115 = sub_1CF9E8048();
          v105, v116, v117, v118, v119, v120, v121, v122;
          v28, v123, v124, v125, v126, v127, v128, v129;
          if ((v115 & 1) == 0)
          {
            goto LABEL_37;
          }

          if ((v102 & 1) == 0)
          {
            goto LABEL_34;
          }

LABEL_46:
          if (v161)
          {
            goto LABEL_47;
          }

LABEL_37:
          v29 = (v29 + 1) & v98;
          v30 = v29 >> 6;
          v2 = v162;
          v97 = 1 << v29;
          if ((v163[v29 >> 6] & (1 << v29)) == 0)
          {
            goto LABEL_26;
          }
        }

        v105, v107, v108, v109, v110, v111, v112, v113;
        v28, v130, v131, v132, v133, v134, v135, v136;
        if (v102)
        {
          goto LABEL_46;
        }

LABEL_34:
        v99 = v161;
        if (v101 != v160)
        {
          v99 = 1;
        }

        if (v99)
        {
          goto LABEL_37;
        }

LABEL_47:

        v137 = v153[v30];
        v153[v30] = v137 & ~v97;
        v2 = v162;
        if ((v137 & v97) != 0)
        {
          v77 = v152 - 1;
          v78 = v155;
          v79 = v154;
          v80 = v159;
          if (__OFSUB__(v152, 1))
          {
            __break(1u);
          }

          if (v152 == 1)
          {

            v2 = MEMORY[0x1E69E7CD0];
            goto LABEL_53;
          }

          goto LABEL_24;
        }

LABEL_27:
        v81 = v159;
        v78 = v155;
        v80 = v157;
      }

      while (v159 != v154);
    }

    v2 = sub_1CF8E1EDC(v153, v151[0], v152, v2);
LABEL_53:
    v138 = v78;
LABEL_55:
    v138, v4, v5, v6, v7, v8, v9, v10;
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

void sub_1CF8E2FB0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v68 = a3 + 56;
  v66 = a5;
  while (2)
  {
    v64 = v7;
    do
    {
      while (1)
      {
        v8 = a5[1];
        v9 = *(*a5 + 16);
        if (v8 == v9)
        {

          sub_1CF8E1C98(a1, a2, v64, a3);
          return;
        }

        if (v8 >= v9)
        {
          __break(1u);
          goto LABEL_23;
        }

        v10 = *(*a5 + 8 * v8 + 32);
        a5[1] = v8 + 1;
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v12 = v11;
        sub_1CF9E81D8();
        v67 = v10;
        sub_1CF9E69C8();
        v13 = sub_1CF9E8228();
        v12, v14, v15, v16, v17, v18, v19, v20;
        v21 = -1 << *(a3 + 32);
        v22 = v13 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v68 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        a5 = v66;
      }

      v25 = ~v21;
      while (1)
      {
        v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v28 = v27;
        v29 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v31 = v30;
        if (v26 == v29 && v28 == v30)
        {

          v28, v48, v49, v50, v51, v52, v53, v54;
          v31, v55, v56, v57, v58, v59, v60, v61;
          goto LABEL_17;
        }

        v33 = sub_1CF9E8048();
        v28, v34, v35, v36, v37, v38, v39, v40;
        v31, v41, v42, v43, v44, v45, v46, v47;
        if (v33)
        {
          break;
        }

        v22 = (v22 + 1) & v25;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v68 + 8 * (v22 >> 6))) == 0)
        {
          goto LABEL_3;
        }
      }

LABEL_17:
      a5 = v66;
      v62 = a1[v23];
      a1[v23] = v62 & ~v24;
    }

    while ((v62 & v24) == 0);
    v7 = v64 - 1;
    if (__OFSUB__(v64, 1))
    {
LABEL_23:
      __break(1u);
      return;
    }

    if (v64 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_1CF8E31EC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v75 = a3 + 56;
  v71 = a5;
  while (2)
  {
    v69 = v6;
    while (2)
    {
      while (2)
      {
        v7 = a5[1];
        v8 = *(*a5 + 16);
        if (v7 == v8)
        {

          sub_1CF8E1EDC(a1, a2, v69, a3);
          return;
        }

        if (v7 >= v8)
        {
          __break(1u);
          goto LABEL_30;
        }

        v9 = *a5 + 24 * v7;
        v10 = *(v9 + 32);
        v11 = *(v9 + 40);
        v12 = *(v9 + 48);
        a5[1] = v7 + 1;
        sub_1CF9E81D8();
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v14 = v13;
        v72 = v10;
        sub_1CF9E69C8();
        v14, v15, v16, v17, v18, v19, v20, v21;
        v74 = v12;
        v73 = v11;
        sub_1CF9E81F8();
        if (v12 != 1)
        {
          MEMORY[0x1D386A470](v11);
        }

        v22 = sub_1CF9E8228();
        v23 = -1 << *(a3 + 32);
        v24 = v22 & ~v23;
        v25 = v24 >> 6;
        v26 = 1 << v24;
        if (((1 << v24) & *(v75 + 8 * (v24 >> 6))) == 0)
        {
LABEL_3:

          a5 = v71;
          continue;
        }

        break;
      }

      v27 = ~v23;
      while (1)
      {
        v29 = *(a3 + 48) + 24 * v24;
        v30 = *(v29 + 8);
        v31 = *(v29 + 16);
        v32 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v34 = v33;
        v35 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v43 = v36;
        if (v32 == v35 && v34 == v36)
        {
          break;
        }

        v45 = sub_1CF9E8048();
        v34, v46, v47, v48, v49, v50, v51, v52;
        v43, v53, v54, v55, v56, v57, v58, v59;
        if ((v45 & 1) == 0)
        {
          goto LABEL_13;
        }

        if ((v31 & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_22:
        if (v74)
        {
          goto LABEL_23;
        }

LABEL_13:
        v24 = (v24 + 1) & v27;
        v25 = v24 >> 6;
        v26 = 1 << v24;
        if ((*(v75 + 8 * (v24 >> 6)) & (1 << v24)) == 0)
        {
          goto LABEL_3;
        }
      }

      v34, v36, v37, v38, v39, v40, v41, v42;
      v43, v60, v61, v62, v63, v64, v65, v66;
      if (v31)
      {
        goto LABEL_22;
      }

LABEL_10:
      v28 = v74;
      if (v30 != v73)
      {
        v28 = 1;
      }

      if (v28)
      {
        goto LABEL_13;
      }

LABEL_23:

      v67 = a1[v25];
      a1[v25] = v67 & ~v26;
      if ((v67 & v26) == 0)
      {
        a5 = v71;
        continue;
      }

      break;
    }

    v6 = v69 - 1;
    a5 = v71;
    if (__OFSUB__(v69, 1))
    {
LABEL_30:
      __break(1u);
      return;
    }

    if (v69 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1CF8E34A4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v9 = sub_1CF7BFED0(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v10;
  if (v8[3] < v14)
  {
    sub_1CF7CBE18(v14, isUniquelyReferenced_nonNull_native);
    v9 = sub_1CF7BFED0(a2);
    if ((v3 & 1) == (v15 & 1))
    {
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
    v9 = sub_1CF9E8108();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v18 = v9;
    sub_1CF7D34F0();
    v9 = v18;
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_1CF1D5A08();

    v17 = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v16 = v8[7];
  v17 = *(v16 + 8 * v9);
  *(v16 + 8 * v9) = a1;
LABEL_11:
  *v4 = v8;
  return v17;
}

uint64_t sub_1CF8E35C8(uint64_t a1, void *a2)
{
  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v9 = sub_1CF7BF8D8(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v10;
  if (v8[3] < v14)
  {
    sub_1CF7CBBA8(v14, isUniquelyReferenced_nonNull_native);
    v9 = sub_1CF7BF8D8(a2);
    if ((v3 & 1) == (v15 & 1))
    {
      goto LABEL_6;
    }

    sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
    v9 = sub_1CF9E8108();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v18 = v9;
    sub_1CF7D338C();
    v9 = v18;
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_1CF1D5A08();
    v19 = a2;
    v17 = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v16 = v8[7];
  v17 = *(v16 + 8 * v9);
  *(v16 + 8 * v9) = a1;
LABEL_11:
  *v4 = v8;
  return v17;
}

void (*sub_1CF8E36EC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D3869C30](a2, a3);
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
    return sub_1CF902E94;
  }

  __break(1u);
  return result;
}

void (*sub_1CF8E376C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D3869C30](a2, a3);
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
    return sub_1CF8E37EC;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF8E37F4(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  if (a4 < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v20 = result;
      sub_1CF0BA900(result, a2, a3 & 1);
      return v20;
    }

    v8 = 0;
    v9 = a3 | a7;
    while ((v9 & 1) == 0)
    {
      if (a2 != a6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (result == a5)
      {
        return 0;
      }

      if (result < 0)
      {
        goto LABEL_23;
      }

      v11 = 1 << *(a8 + 32);
      if (result >= v11)
      {
        goto LABEL_23;
      }

      v12 = result >> 6;
      v13 = *(a8 + 64 + 8 * (result >> 6));
      if (((v13 >> result) & 1) == 0)
      {
        goto LABEL_24;
      }

      if (*(a8 + 36) != a6)
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (result & 0x3F));
      if (v14)
      {
        result = __clz(__rbit64(v14)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v12 << 6;
        v16 = v12 + 1;
        v17 = (a8 + 72 + 8 * v12);
        while (v16 < (v11 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = __clz(__rbit64(v18)) + v15;
            goto LABEL_5;
          }
        }

        result = 1 << *(a8 + 32);
      }

LABEL_5:
      LODWORD(a2) = a6;
      v9 = a7;
      if (v8++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF8E3958(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v13 - v5;
  v7 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v6, v2, v11);
  sub_1CF9E5E98();
  (*(v7 + 8))(v10, v3);
  return sub_1CF9E75C8();
}

void *sub_1CF8E3AB0@<X0>(void *a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, _BYTE *a3@<X8>)
{
  result = a2(&v10);
  if (!v3)
  {
    v7 = a1[3];
    v8 = a1[4];
    v9 = __swift_project_boxed_opaque_existential_1(a1, v7);
    result = sub_1CF5A62B4(v9, v7, v8);
    *a3 = v10;
  }

  return result;
}

uint64_t sub_1CF8E3B30(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF8E3BE4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

void sub_1CF8E3C48(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  sub_1CF7F8CA8(a1, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), a3, a4, a5);
  if (!v6)
  {
    *a6 = v8;
  }
}

uint64_t sub_1CF8E3C90(__int128 *a1, uint64_t a2)
{
  v2 = a1[3];
  v38 = a1[2];
  v39 = v2;
  v3 = a1[5];
  v40 = a1[4];
  v41 = v3;
  v4 = a1[1];
  v36 = *a1;
  v37 = v4;
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 9);
  v8 = *(&v2 + 1);
  sub_1CEFCCBDC(&v36, v35, &qword_1EC4BE6B8, &unk_1CF9FE530);
  v8, v9, v10, v11, v12, v13, v14, v15;
  *(&v41 + 1), v16, v17, v18, v19, v20, v21, v22;
  v23 = v36;
  v24 = BYTE8(v36);
  v25 = BYTE9(v36);
  v26 = *(&v37 + 1);
  sub_1CEFD0988(v36, BYTE8(v36), SBYTE9(v36));
  sub_1CEFD0994(v23, v24, v25);
  v26, v27, v28, v29, v30, v31, v32, v33;
  LOBYTE(v5) = sub_1CF7BC790(v23, v24 | (v25 << 8), v5, v6 | (v7 << 8));
  sub_1CEFD0994(v23, v24, v25);
  return v5 & 1;
}

uint64_t sub_1CF8E3D98(uint64_t *a1, __int128 *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1];
  v14 = *a2;
  v15[0] = v6;
  *(v15 + 11) = *(a2 + 27);
  if (v4 == *(a2 + 6) && v5 == *(a2 + 7))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1CF9E8048();
  }

  v9 = a2[1];
  v12 = *a2;
  v13[0] = v9;
  *(v13 + 11) = *(a2 + 27);
  sub_1CEFCCBDC(&v14, &v11, &qword_1EC4BE1A0, &unk_1CFA17130);
  sub_1CEFCCC44(&v12, &qword_1EC4BE1A0, &unk_1CFA17130);
  return v8 & 1;
}

uint64_t sub_1CF8E3E58@<X0>(void *a1@<X0>, uint64_t *a2@<X2>, _BYTE *a3@<X8>)
{
  v5 = *(a2 + 8);
  v6 = *(a2 + 9);
  v7 = *(a2 + 10);
  v13 = *a2;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, v8);
  v11 = sub_1CF2C9F28(v10);
  result = sub_1CF2C0070(&v13, v11, v10, v8, v9);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

void sub_1CF8E3F4C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _TtC18FileProviderDaemon8FSTester *a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  v13 = *(a2 + 16);

  v15 = sub_1CF8E43C8(v14);
  a4, v16, v17, v18, v19, v20, v21, v22;
  v23 = (*(*v13 + 512))(a3, v15, v12, v10, v11);
  v15, v24, v25, v26, v27, v28, v29, v30;
  if (!v5)
  {
    *a5 = v23;
  }
}

void sub_1CF8E4038(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 40);
  sub_1CF1A722C();
  if (!v2)
  {
    swift_beginAccess();
    v5 = *(v4 + 80);

    sub_1CF7F00D4(v6);
    v8 = v7;
    v5, v9, v10, v11, v12, v13, v14, v15;
    v16 = sub_1CF8E48FC(v8);
    v8, v17, v18, v19, v20, v21, v22, v23;
    *a2 = v16;
  }
}

void sub_1CF8E40CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *a4;
  v8 = *(a4 + 8);
  v9 = objc_autoreleasePoolPush();
  if (v6 < 0)
  {
    (*(*a2 + 176))();
    sub_1CF7EA114(v6 & 0x7FFFFFFFFFFFFFFFLL, a3, v7, v8);
  }

  else
  {
    sub_1CF7EA114(v6, a3, v7, v8);
  }

  objc_autoreleasePoolPop(v9);
}

void sub_1CF8E41A0(char a1, void *a2, uint64_t a3, void **a4, unint64_t a5, void (*a6)(void *, void *, uint64_t, void **, unint64_t), uint64_t a7)
{
  if (a1)
  {
    v12 = *a4;
    v13 = swift_allocObject();
    v13[2] = a2;
    v13[3] = a6;
    v13[4] = a7;
    v14 = swift_allocObject();
    v14[2] = a3;
    v14[3] = v12;
    v14[4] = a5;
    v14[5] = sub_1CF901D00;
    v14[6] = v13;
    v15 = a2;

    v16 = v12;
    sub_1CEFD09A0(a5);

    sub_1CF817EE4(v16, a5, sub_1CF90343C, v14);
  }

  else
  {
    a6(a2, a2, a3, a4, a5);
  }
}

unint64_t sub_1CF8E42DC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F00, &unk_1CF9FE4A0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF8E43C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1CF4C6170();
  result = MEMORY[0x1D3869250](v2, &type metadata for VFSItemID, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v5 += 16;
      sub_1CF6E9500(v8, v6, v7);
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_1CF8E4440(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for URLResourceKey(0);
  v4 = v3;
  v5 = sub_1CEFCCCA4(&qword_1EDEA3660, type metadata accessor for URLResourceKey, &unk_1CF9F5F44);
  result = MEMORY[0x1D3869250](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_1CF6E94D8(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_1CF8E44FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1D3869250](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v15 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1CF6E9AF0(v14, v6, v5);
      v14[1], v7, v8, v9, v10, v11, v12, v13;
      v4 += 2;
      --v2;
    }

    while (v2);
    return v15;
  }

  return result;
}

uint64_t sub_1CF8E4594(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0670, &qword_1CFA129D0);
  v4 = sub_1CEFCCCEC(&qword_1EC4C0678, &qword_1EC4C0670, &qword_1CFA129D0, &unk_1CFA0A0B8);
  result = MEMORY[0x1D3869250](v2, v3, v4);
  v13 = result;
  if (v2)
  {
    v6 = (a1 + 56);
    do
    {
      v8 = *(v6 - 2);
      v7 = *(v6 - 1);
      v9 = *(v6 - 3);
      v10 = *v6;
      v6 += 32;
      sub_1CF1FB2C0(v9, v8, v7, v10);
      sub_1CF6EA118(v11, v9, v8, v7, v10);
      sub_1CF484340(v11[0], v11[1], v11[2], v12);
      --v2;
    }

    while (v2);
    return v13;
  }

  return result;
}

uint64_t sub_1CF8E4694(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4EF0, &unk_1CFA05A90);
  v4 = sub_1CEFCCCEC(qword_1EDEAA350, &unk_1EC4C4EF0, &unk_1CFA05A90, &unk_1CFA0A0B8);
  result = MEMORY[0x1D3869250](v2, v3, v4);
  v9 = result;
  if (v2)
  {
    v6 = (a1 + 32);
    do
    {
      v7 = v6[1];
      v10 = *v6;
      v11[0] = v7;
      *(v11 + 10) = *(v6 + 26);
      sub_1CF6EA310(v8, &v10);
      v6 += 3;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_1CF8E4764(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BD0, &unk_1CF9FE500);
  v4 = sub_1CEFCCCEC(&qword_1EC4C4E78, &unk_1EC4C4BD0, &unk_1CF9FE500, &unk_1CF9FEDD0);
  result = MEMORY[0x1D3869250](v2, v3, v4);
  v8 = result;
  if (v2)
  {
    v6 = (a1 + 48);
    do
    {
      sub_1CF6EA8A8(v7, *(v6 - 2), *(v6 - 1), *v6);

      v6 += 24;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1CF8E4840(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for NSFileProviderItemIdentifier(0);
  v4 = v3;
  v5 = sub_1CEFCCCA4(&qword_1EDEAB550, type metadata accessor for NSFileProviderItemIdentifier, &unk_1CF9F76A8);
  result = MEMORY[0x1D3869250](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_1CF6EA6C4(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_1CF8E48FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFC10, &qword_1CF9FE510);
  v4 = sub_1CEFCCCEC(qword_1EDEA7220, &unk_1EC4BFC10, &qword_1CF9FE510, &unk_1CFA13A28);
  result = MEMORY[0x1D3869250](v2, v3, v4);
  v13 = result;
  if (v2)
  {
    v6 = (a1 + 41);
    do
    {
      v7 = *v6;
      v8 = *(v6 - 1);
      v9 = *(v6 - 9);
      sub_1CEFD0988(v9, *(v6 - 1), *v6);
      sub_1CF6E9D5C(&v10, v9, v8 | (v7 << 8));
      sub_1CEFD0994(v10, v11, v12);
      v6 += 16;
      --v2;
    }

    while (v2);
    return v13;
  }

  return result;
}

uint64_t sub_1CF8E49EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1CEFCCCEC(&unk_1EC4C4F80, &unk_1EC4BF650, &unk_1CF9FCB40, &unk_1CFA196E0);
  result = MEMORY[0x1D3869250](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1CEFCCBDC(v12, v5, &unk_1EC4BF650, &unk_1CF9FCB40);
      sub_1CF6EAC38(v8, v5);
      sub_1CEFCCC44(v8, &unk_1EC4BF650, &unk_1CF9FCB40);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

void sub_1CF8E4B7C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(unint64_t *))
{
  v30 = a4;
  v8 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1CF9E5268();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  v13 = sub_1CF7D55FC(sub_1CF355FA4, v26, a2, a3);
  if (v4)
  {
    return;
  }

  v14 = v13;
  v15 = v30;
  v25 = v12;
  if (![v13 next])
  {
    goto LABEL_15;
  }

  v23 = v10;
  v24 = v9;
  v16 = v15;
  while (1)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = [v14 longAtIndex_];
    if (v18 == 0x8000000000000000)
    {
      v19 = 2;
      v18 = 1;
      goto LABEL_12;
    }

    if (v18)
    {
      break;
    }

    v19 = 2;
LABEL_12:
    v28 = v18;
    v29 = v19;
    v16(&v28);
    objc_autoreleasePoolPop(v17);
    if (([v14 next] & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if ((v18 & 0x8000000000000000) == 0)
  {
    v19 = 1;
    goto LABEL_12;
  }

  v18 = -v18;
  if (!HIDWORD(v18))
  {
    v19 = 0;
    goto LABEL_12;
  }

  sub_1CF9E51B8();
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
  v20 = v24;
  v21 = v25;
  sub_1CF9E57D8();
  sub_1CF9E50D8();
  (*(v23 + 8))(v21, v20);
  swift_willThrow();
  objc_autoreleasePoolPop(v17);
LABEL_15:
}

void sub_1CF8E4E8C()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1CF83204C(v3, v0 + v2, v4);
}

id sub_1CF8E4F20(uint64_t a1)
{
  v2 = sub_1CF9E6938();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v38 = *a1;
  *&v38[9] = *(a1 + 9);
  sub_1CF9E6948();
  v7 = v6;
  sub_1CF9E6918();
  v8 = sub_1CF9E68C8();
  v10 = v9;
  v7, v9, v11, v12, v13, v14, v15, v16;
  v17 = *(v3 + 8);
  result = v17(v5, v2);
  if (v10 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_8;
  }

  v19 = *(a1 + 56);
  *v38 = *(a1 + 40);
  *&v38[16] = v19;
  v36 = *v38;
  v37 = v19;
  sub_1CEFCCBDC(v38, v35, &qword_1EC4BEA18, &qword_1CF9FFB00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEA18, &qword_1CF9FFB00);
  sub_1CF9E6948();
  v21 = v20;
  sub_1CF9E6918();
  v22 = sub_1CF9E68C8();
  v24 = v23;
  v21, v23, v25, v26, v27, v28, v29, v30;
  result = v17(v5, v2);
  if (v24 >> 60 == 15)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v31 = sub_1CF9E5B48();
  v32 = sub_1CF9E5B48();
  if (*(a1 + 88))
  {
    v33 = sub_1CF9E6888();
  }

  else
  {
    v33 = 0;
  }

  v34 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v31 metadataVersion:v32 lastEditorDeviceName:v33];
  sub_1CEFE48D8(v22, v24);
  sub_1CEFE48D8(v8, v10);

  return v34;
}

void sub_1CF8E518C(uint64_t a1, void *a2)
{
  v3 = v2;
  v149 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v148 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v147 = &v132 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v146 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v145 = &v132 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v144 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v132 - v17;
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v132 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v132 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v32 = *(a1 + 16);
  if (v32)
  {
    v152 = &v132 - v28;
    v134 = v27;
    v135 = v18;
    v143 = v31;
    v136 = v30;
    v137 = v29;
    v132 = v3;
    v157 = MEMORY[0x1E69E7CC0];
    sub_1CF9E7A48();
    v153 = a1 + 56;
    v33 = sub_1CF9E77C8();
    v34 = 0;
    v154 = *(a1 + 36);
    v133 = a1 + 64;
    v141 = v13;
    v142 = v22;
    v139 = v32;
    v140 = v25;
    v150 = a1;
    while ((v33 & 0x8000000000000000) == 0 && v33 < 1 << *(a1 + 32))
    {
      v37 = v33 >> 6;
      if ((*(v153 + 8 * (v33 >> 6)) & (1 << v33)) == 0)
      {
        goto LABEL_35;
      }

      if (v154 != *(a1 + 36))
      {
        goto LABEL_36;
      }

      v151 = 1 << v33;
      v38 = v152;
      sub_1CEFCCBDC(*(a1 + 48) + *(v144 + 72) * v33, v152, &unk_1EC4BF650, &unk_1CF9FCB40);
      sub_1CEFCCBDC(v38, v25, &unk_1EC4BF650, &unk_1CF9FCB40);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v138 = v34;
        sub_1CEFE55D0(v25, v148, &unk_1EC4BFD70, &qword_1CFA12AC0);
        v39 = v38;
        v40 = v136;
        sub_1CEFCCBDC(v39, v136, &unk_1EC4BF650, &unk_1CF9FCB40);
        v41 = swift_getEnumCaseMultiPayload() == 1;
        v42 = v40;
        if (v41)
        {
          v43 = v147;
          sub_1CEFE55D0(v42, v147, &unk_1EC4BFD70, &qword_1CFA12AC0);
          v49 = v143;
          sub_1CF46AEEC(1, v143);
          sub_1CEFCCC44(v43, &unk_1EC4BFD70, &qword_1CFA12AC0);
        }

        else
        {
          v48 = v146;
          sub_1CEFE55D0(v42, v146, &unk_1EC4BFCC0, &unk_1CF9FCB50);
          v49 = v143;
          sub_1CF46A9E4(1, v143);
          sub_1CEFCCC44(v48, &unk_1EC4BFCC0, &unk_1CF9FCB50);
        }

        swift_storeEnumTagMultiPayload();
        v50 = v137;
        sub_1CEFCCBDC(v49, v137, &unk_1EC4BF650, &unk_1CF9FCB40);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v51 = v147;
          sub_1CEFE55D0(v50, v147, &unk_1EC4BFD70, &qword_1CFA12AC0);
          v155 = 0x205046206D6F7266;
          v156 = 0xE800000000000000;
          v52 = sub_1CF467CBC();
          v54 = v53;
          MEMORY[0x1D3868CC0](v52);
          v54, v55, v56, v57, v58, v59, v60, v61;
          v62 = v155;
          v63 = v156;
          sub_1CEFCCC44(v51, &unk_1EC4BFD70, &qword_1CFA12AC0);
        }

        else
        {
          v80 = v146;
          sub_1CEFE55D0(v50, v146, &unk_1EC4BFCC0, &unk_1CF9FCB50);
          v155 = 0x205346206D6F7266;
          v156 = 0xE800000000000000;
          v81 = sub_1CF46879C();
          v83 = v82;
          MEMORY[0x1D3868CC0](v81);
          v83, v84, v85, v86, v87, v88, v89, v90;
          v62 = v155;
          v63 = v156;
          sub_1CEFCCC44(v80, &unk_1EC4BFCC0, &unk_1CF9FCB50);
        }

        sub_1CEFCCC44(v143, &unk_1EC4BF650, &unk_1CF9FCB40);
        v91 = v62;
        v92 = v148;
        sub_1CF8DAA38(v149, v91, v63);
        v63, v93, v94, v95, v96, v97, v98, v99;
        sub_1CEFCCC44(v92, &unk_1EC4BFD70, &qword_1CFA12AC0);
        v34 = v138;
      }

      else
      {
        v138 = v33 >> 6;
        sub_1CEFE55D0(v25, v145, &unk_1EC4BFCC0, &unk_1CF9FCB50);
        v44 = v38;
        v45 = v134;
        sub_1CEFCCBDC(v44, v134, &unk_1EC4BF650, &unk_1CF9FCB40);
        v41 = swift_getEnumCaseMultiPayload() == 1;
        v46 = v45;
        if (v41)
        {
          v47 = v147;
          sub_1CEFE55D0(v46, v147, &unk_1EC4BFD70, &qword_1CFA12AC0);
          v65 = v142;
          sub_1CF46AEEC(1, v142);
          sub_1CEFCCC44(v47, &unk_1EC4BFD70, &qword_1CFA12AC0);
        }

        else
        {
          v64 = v146;
          sub_1CEFE55D0(v46, v146, &unk_1EC4BFCC0, &unk_1CF9FCB50);
          v65 = v142;
          sub_1CF46A9E4(1, v142);
          sub_1CEFCCC44(v64, &unk_1EC4BFCC0, &unk_1CF9FCB50);
        }

        swift_storeEnumTagMultiPayload();
        v66 = v135;
        sub_1CEFCCBDC(v65, v135, &unk_1EC4BF650, &unk_1CF9FCB40);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v67 = v147;
          sub_1CEFE55D0(v66, v147, &unk_1EC4BFD70, &qword_1CFA12AC0);
          v155 = 0x205046206D6F7266;
          v156 = 0xE800000000000000;
          v68 = sub_1CF467CBC();
          v70 = v69;
          MEMORY[0x1D3868CC0](v68);
          v70, v71, v72, v73, v74, v75, v76, v77;
          v78 = v155;
          v79 = v156;
          sub_1CEFCCC44(v67, &unk_1EC4BFD70, &qword_1CFA12AC0);
        }

        else
        {
          v100 = v146;
          sub_1CEFE55D0(v66, v146, &unk_1EC4BFCC0, &unk_1CF9FCB50);
          v155 = 0x205346206D6F7266;
          v156 = 0xE800000000000000;
          v101 = sub_1CF46879C();
          v103 = v102;
          MEMORY[0x1D3868CC0](v101);
          v103, v104, v105, v106, v107, v108, v109, v110;
          v78 = v155;
          v79 = v156;
          sub_1CEFCCC44(v100, &unk_1EC4BFCC0, &unk_1CF9FCB50);
        }

        sub_1CEFCCC44(v142, &unk_1EC4BF650, &unk_1CF9FCB40);
        v111 = v78;
        v112 = v145;
        sub_1CF8D9998(v149, v111, v79);
        v79, v113, v114, v115, v116, v117, v118, v119;
        sub_1CEFCCC44(v112, &unk_1EC4BFCC0, &unk_1CF9FCB50);
        v37 = v138;
      }

      sub_1CEFCCC44(v152, &unk_1EC4BF650, &unk_1CF9FCB40);
      sub_1CF9E7A18();
      sub_1CF9E7A58();
      sub_1CF9E7A68();
      sub_1CF9E7A28();
      a1 = v150;
      v35 = 1 << *(v150 + 32);
      if (v33 >= v35)
      {
        goto LABEL_37;
      }

      v125 = *(v153 + 8 * v37);
      if ((v125 & v151) == 0)
      {
        goto LABEL_38;
      }

      if (v154 != *(v150 + 36))
      {
        goto LABEL_39;
      }

      v126 = v125 & (-2 << (v33 & 0x3F));
      if (v126)
      {
        v35 = __clz(__rbit64(v126)) | v33 & 0x7FFFFFFFFFFFFFC0;
        v36 = v139;
      }

      else
      {
        v127 = v37 << 6;
        v128 = v37 + 1;
        v129 = (v133 + 8 * v37);
        v36 = v139;
        while (v128 < (v35 + 63) >> 6)
        {
          v131 = *v129++;
          v130 = v131;
          v127 += 64;
          ++v128;
          if (v131)
          {
            sub_1CF0663D8(v33, v154, 0, v120, v121, v122, v123, v124);
            a1 = v150;
            v35 = __clz(__rbit64(v130)) + v127;
            goto LABEL_4;
          }
        }

        sub_1CF0663D8(v33, v154, 0, v120, v121, v122, v123, v124);
        a1 = v150;
      }

LABEL_4:
      ++v34;
      v33 = v35;
      v25 = v140;
      if (v34 == v36)
      {
        return;
      }
    }

    __break(1u);
LABEL_35:
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
}

unint64_t sub_1CF8E5BBC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFC10, &qword_1CF9FE510);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  v14 = 16 * v12;
  v15 = v13 + 16 * v12;
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF8E5C8C(uint64_t a1)
{
  swift_weakInit();
  swift_weakAssign();
  v2 = objc_opt_self();
  v3 = [v2 defaultStore];
  v4 = [v3 targetedSPSErrorsPayload];
  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v7 = v6;

  v8 = sub_1CF2C8330(v5, v7);
  v7, v9, v10, v11, v12, v13, v14, v15;
  *(v1 + 24) = v8;
  v16 = [v2 defaultStore];
  [v16 addObserver_];

  return v1;
}

uint64_t sub_1CF8E5D7C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (fpfs_is_internal_build() && (v8 = objc_allocWithZone(MEMORY[0x1E695E000]), v9 = sub_1CF9E6888(), v10 = [v8 initWithSuiteName_], v9, v10))
  {
    v11 = sub_1CF9E6888();
    v12 = [v10 objectForKey_];

    if (v12)
    {
      sub_1CF9E7728();
      swift_unknownObjectRelease();
      sub_1CEFCCC44(v36, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      v13 = sub_1CF9E6888();
      v14 = [v10 stringForKey_];

      if (v14)
      {
        v22 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v24 = v23;

        v25 = HIBYTE(a4);
        if (HIBYTE(a4))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v22 = 0;
        v24 = 0;
        v25 = HIBYTE(a4);
        if (HIBYTE(a4))
        {
LABEL_6:
          if (v25 == 1)
          {
            if (v24)
            {
              v16 = 0x687370616E737066;
              if (v22 != 0x687370616E737066 || v24 != 0xEA0000000000746FLL)
              {
                goto LABEL_36;
              }

              goto LABEL_34;
            }

LABEL_35:

            v26 = 0;
            return v26 & 1;
          }

          v28 = a4 & 0xFFFFFF;
          if (!(a3 | a2 | a1) && !v28)
          {
            if (!v24)
            {
              goto LABEL_35;
            }

            if (v22 != 1801678950 || v24 != 0xE400000000000000)
            {
              goto LABEL_36;
            }

LABEL_34:
            v24, v15, v16, v17, v18, v19, v20, v21;

            v26 = 1;
            return v26 & 1;
          }

          if (a1 != 1 || a3 | a2 || v28)
          {
            if (!v24)
            {
              goto LABEL_35;
            }

            v16 = 0x72656469766F7270;
            if (v22 != 0x72656469766F7270 || v24 != 0xE800000000000000)
            {
              goto LABEL_36;
            }

            goto LABEL_34;
          }

          if (!v24)
          {
            goto LABEL_35;
          }

          v17 = 0x80000001CFA3DCA0;
          v16 = 0xD000000000000014;
          if (v22 != 0xD000000000000014)
          {
LABEL_36:
            v26 = sub_1CF9E8048();
            v24, v29, v30, v31, v32, v33, v34, v35;

            return v26 & 1;
          }

LABEL_17:
          if (v24 == v17)
          {
            goto LABEL_34;
          }

          goto LABEL_36;
        }
      }

      if (!v24)
      {
        goto LABEL_35;
      }

      v17 = 0xED000073726F7272;
      v16 = 0x4563696D616E7964;
      if (v22 != 0x4563696D616E7964)
      {
        goto LABEL_36;
      }

      goto LABEL_17;
    }

    memset(v36, 0, sizeof(v36));
    sub_1CEFCCC44(v36, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v26 = 1;
  }

  else
  {
    v26 = 1;
  }

  return v26 & 1;
}

void sub_1CF8E60B8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = 0;
  v26 = a4;
  v23 = a2;
  v24 = a1;
  v4 = 0;
  v27 = a3;
  v5 = a3 + 64;
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
    v29 = (v8 - 1) & v8;
LABEL_11:
    v28 = &v22;
    v13 = v10 | (v4 << 6);
    v14 = *(v27 + 48) + 16 * v13;
    v16 = *(v14 + 9);
    v17 = *(v14 + 8);
    v30 = *v14;
    v15 = v30;
    v31 = v17;
    v32 = v16;
    MEMORY[0x1EEE9AC00](a1);
    v21[2] = &v30;
    sub_1CEFD0988(v15, v17, v16);
    swift_bridgeObjectRetain_n();
    sub_1CEFD0988(v15, v17, v16);
    v18 = v33;
    v19 = sub_1CF7F74E4(sub_1CF902DE4, v21, v26);
    v33 = v18;
    sub_1CEFD0994(v15, v17, v16);
    swift_bridgeObjectRelease_n();
    sub_1CEFD0994(v15, v17, v16);
    v8 = v29;
    if (v19)
    {
      *(v24 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1CF4F59C0(v24, v23, v25, v27);
        return;
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

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_1CF8E62D8(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v20 = swift_slowAlloc();

      v11 = sub_1CF8DF328(v20, v7, a1, a2);
      MEMORY[0x1D386CDC0](v20, -1, -1);
      swift_bridgeObjectRelease_n();
      return v11;
    }
  }

  MEMORY[0x1EEE9AC00](v9);
  bzero(v21 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  sub_1CF8E60B8((v21 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v11 = v10;
  a2, v12, v13, v14, v15, v16, v17, v18;
  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v11;
}

unint64_t sub_1CF8E6498(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF8E6558(void *a1, unint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA427E0);
  if (!a3)
  {
    goto LABEL_5;
  }

  if (a3 != 1)
  {
    a2 = (a2 != 0) << 63;
    goto LABEL_7;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    a2 = -a2;
  }

LABEL_7:
  v14 = [a1 bindLongParameter_];
  v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v17 = v16;

  MEMORY[0x1D3868CC0](v15, v17);
  v17, v18, v19, v20, v21, v22, v23, v24;
  MEMORY[0x1D3868CC0](0x2020200A444E4120, 0xEF20202020202020);
  v25 = sub_1CF355B94(a1, a4, a5 & 1, a6, a7 & 1);
  v27 = v26;
  MEMORY[0x1D3868CC0](v25);
  v27, v28, v29, v30, v31, v32, v33, v34;
  return v36;
}

uint64_t sub_1CF8E66B4(void *a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  v48[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v49 = 0;
  v50 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA42770);
  v48[3] = MEMORY[0x1E69E6530];
  v48[0] = a2;
  v16 = sub_1CEFF8EA0(v48);
  v18 = v17;
  sub_1CEFCCC44(v48, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v18)
  {
    MEMORY[0x1D3868CC0](v16, v18);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
    if (a4)
    {
      if (a4 != 1)
      {
        a3 = (a3 != 0) << 63;
        goto LABEL_8;
      }

      if ((a3 & 0x8000000000000000) == 0)
      {
LABEL_8:
        v26 = [a1 bindLongParameter_];
        v27 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v29 = v28;

        MEMORY[0x1D3868CC0](v27, v29);
        v29, v30, v31, v32, v33, v34, v35, v36;
        MEMORY[0x1D3868CC0](0x2020200A444E4120, 0xED00002020202020);
        v37 = sub_1CF355B94(a1, a5, a6 & 1, a7, a8 & 1);
        v39 = v38;
        MEMORY[0x1D3868CC0](v37);
        v39, v40, v41, v42, v43, v44, v45, v46;
        return v49;
      }

      __break(1u);
    }

    a3 = -a3;
    goto LABEL_8;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

void sub_1CF8E68F4(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v291 = v3;
  v292 = v2;
  v5 = v4;
  v7 = v6;
  v284 = v8;
  v288 = v9;
  v322 = *MEMORY[0x1E69E9840];
  v282 = sub_1CF9E6118();
  v287 = *(v282 - 8);
  MEMORY[0x1EEE9AC00](v282);
  v283 = &v271[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v290 = sub_1CF9E5CF8();
  v286 = *(v290 - 8);
  MEMORY[0x1EEE9AC00](v290);
  v289 = &v271[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v12 - 8);
  *&v285 = &v271[-v13];
  v14 = sub_1CF9E64A8();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v271[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v296 = v7;
  v305 = v7;
  v295 = v5;
  v306 = v5;
  v294 = v1;
  v19 = *(v1 + 64);
  *v18 = v19;
  v20 = *MEMORY[0x1E69E8020];
  v21 = *(v15 + 104);
  v21(v18, v20, v14, v16);
  v293 = v19;
  LOBYTE(v19) = sub_1CF9E64D8();
  v22 = *(v15 + 8);
  v22(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_103;
  }

  v319[0] = v296;
  LOBYTE(v319[1]) = v295;
  *v18 = v293;
  (v21)(v18, v20, v14);
  v23 = sub_1CF9E64D8();
  v24 = (v22)(v18, v14);
  if ((v23 & 1) == 0)
  {
LABEL_103:
    __break(1u);
    v248 = v302;
    v249 = v287;

    v248, v250, v251, v252, v253, v254, v255, v256;
    sub_1CEFCCC44(v313, &unk_1EC4BFC90, &unk_1CFA053E0);
    v249, v257, v258, v259, v260, v261, v262, v263;
    v292, v264, v265, v266, v267, v268, v269, v270;

    return;
  }

  v25 = MEMORY[0x1E69E7CD0];
  v316[0] = MEMORY[0x1E69E7CD0];
  v26 = v294;
  v27 = *(v294 + 40);
  v28 = MEMORY[0x1EEE9AC00](v24);
  *&v271[-16] = v316;
  v29 = *v27;
  v31 = v292;
  if ((v30 & 0x40000) != 0)
  {
    (*(v29 + 704))(v291, v319, sub_1CF902E00, &v271[-32], &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970, v28);
  }

  else
  {
    (*(v29 + 696))(v288, v291, v319, sub_1CF8F91F8, &v271[-32], &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970, v28);
  }

  v39 = v31;
  if (v31)
  {
    v40 = v316[0];
    goto LABEL_9;
  }

  v303 = v25;
  v304 = v316[0];
  v41 = *(v26 + 24);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  v43 = swift_dynamicCastClassUnconditional();
  MEMORY[0x1EEE9AC00](v43);
  *&v271[-32] = v26;
  *&v271[-24] = &v305;
  *&v271[-16] = &v303;
  *&v271[-8] = &v304;

  sub_1CF8E4B7C(64, v296, v295, sub_1CF8F9214);
  v280 = v42;
  v281 = v41;
  v279 = v27;

  v44 = v303 + 56;
  v45 = 1 << *(v303 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & *(v303 + 56);
  v48 = (v45 + 63) >> 6;
  v292 = v303;

  v49 = 0;
  if (v47)
  {
    while (1)
    {
      v50 = v49;
LABEL_17:
      v51 = *v292[1].tree + ((v50 << 10) | (16 * __clz(__rbit64(v47))));
      v52 = *v51;
      v53 = *(v51 + 8);
      swift_dynamicCastClassUnconditional();

      sub_1CF7FEF8C(v52, v53, 64, v296, v295);
      v39 = 0;
      v47 &= v47 - 1;

      v49 = v50;
      if (!v47)
      {
        goto LABEL_14;
      }
    }
  }

  while (1)
  {
LABEL_14:
    v50 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
      goto LABEL_98;
    }

    if (v50 >= v48)
    {
      break;
    }

    v47 = *(v44 + 8 * v50);
    ++v49;
    if (v47)
    {
      goto LABEL_17;
    }
  }

  v302 = MEMORY[0x1E69E7CD0];
  v54 = v304 + 56;
  v55 = 1 << *(v304 + 32);
  v56 = -1;
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  v57 = v56 & *(v304 + 56);
  v278 = (v55 + 63) >> 6;
  v291 = (v286 + 8);
  anon_8 = v287->_anon_8;
  v276 = &v315[2];
  v287 = v304;

  v277 = 0;
  v58 = 0;
  *&v59 = 136446466;
  v274 = v59;
  v286 = v54;
  while (2)
  {
    while (2)
    {
      while (2)
      {
        v60 = v58;
        while (2)
        {
          while (2)
          {
            if (!v57)
            {
              while (1)
              {
                v58 = v60 + 1;
                if (__OFADD__(v60, 1))
                {
                  break;
                }

                if (v58 >= v278)
                {

                  v168 = 0;
                  v170 = v302 + 56;
                  v169 = *(v302 + 56);
                  v286 = v302;
                  v171 = 1 << *(v302 + 32);
                  v172 = -1;
                  if (v171 < 64)
                  {
                    v172 = ~(-1 << v171);
                  }

                  v173 = v172 & v169;
                  v174 = (v171 + 63) >> 6;
                  v285 = xmmword_1CFA04E70;
                  if ((v172 & v169) != 0)
                  {
                    while (1)
                    {
                      v293 = v39;
                      v175 = v168;
LABEL_85:
                      v149 = *(*(v286 + 48) + ((v175 << 9) | (8 * __clz(__rbit64(v173)))));
                      v288 = sub_1CF033A74();
                      v176 = v289;
                      sub_1CF9E5CE8();
                      sub_1CF9E5C98();
                      v178 = v177;
                      v47 = *v291;
                      (*v291)(v176, v290);
                      v179 = v178 * 1000000000.0;
                      if (COERCE__INT64(fabs(v178 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
                      {
                        break;
                      }

                      if (v179 <= -9.22337204e18)
                      {
                        goto LABEL_105;
                      }

                      if (v179 >= 9.22337204e18)
                      {
                        goto LABEL_106;
                      }

                      v180 = v179;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0220, &unk_1CFA05730);
                      v181 = swift_allocObject();
                      *(v181 + 16) = 0u;
                      *(v181 + 32) = 0u;
                      *(v181 + 48) = 1;
                      *(v181 + 56) = 0u;
                      *(v181 + 72) = 0u;
                      *(v181 + 88) = 0;
                      *(v181 + 120) = 0;
                      *(v181 + 128) = v180;
                      *(v181 + 136) = 0x4000000000;
                      *(v181 + 144) = v149;
                      *(v181 + 96) = v285;
                      *(v181 + 112) = 0;
                      v182 = v289;
                      sub_1CF9E5CE8();
                      sub_1CF9E5C98();
                      v184 = v183;
                      (v47)(v182, v290);
                      v185 = v184 * 1000000000.0;
                      if (COERCE__INT64(fabs(v184 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
                      {
                        goto LABEL_107;
                      }

                      if (v185 <= -9.22337204e18)
                      {
                        goto LABEL_108;
                      }

                      if (v185 >= 9.22337204e18)
                      {
                        goto LABEL_109;
                      }

                      v186 = v293;
                      sub_1CF7EA114(v181, v185, v296, v295);
                      v39 = v186;
                      if (v186)
                      {
                        v287, v187, v188, v189, v190, v191, v192, v193;
                        v292, v224, v225, v226, v227, v228, v229, v230;

                        return;
                      }

                      v173 &= v173 - 1;

                      v168 = v175;
                      if (!v173)
                      {
                        goto LABEL_81;
                      }
                    }

                    __break(1u);
LABEL_105:
                    __break(1u);
LABEL_106:
                    __break(1u);
LABEL_107:
                    __break(1u);
LABEL_108:
                    __break(1u);
LABEL_109:
                    __break(1u);
                    goto LABEL_110;
                  }

LABEL_81:
                  while (1)
                  {
                    v175 = v168 + 1;
                    if (__OFADD__(v168, 1))
                    {
                      goto LABEL_99;
                    }

                    if (v175 >= v174)
                    {
                      v287, v161, v162, v163, v164, v165, v166, v167;
                      v292, v194, v195, v196, v197, v198, v199, v200;

                      return;
                    }

                    v173 = *(v170 + 8 * v175);
                    ++v168;
                    if (v173)
                    {
                      v293 = v39;
                      goto LABEL_85;
                    }
                  }
                }

                v57 = *(v54 + 8 * v58);
                ++v60;
                if (v57)
                {
                  v61 = v39;
                  goto LABEL_30;
                }
              }

LABEL_98:
              __break(1u);
LABEL_99:
              __break(1u);
LABEL_100:
              v231 = v287;

              sub_1CEFCCC44(v313, &unk_1EC4BFC90, &unk_1CFA053E0);

              sub_1CEFD0994(v311, v312, SHIBYTE(v312));
              v239 = v302;
              v240 = v231;
              goto LABEL_101;
            }

            v61 = v39;
            v58 = v60;
LABEL_30:
            v47 = *(*v287[1].tree + ((v58 << 9) | (8 * __clz(__rbit64(v57)))));
            v301 = v47;
            v62 = *(v294 + 16);
            v299 = v296;
            v300 = v295;
            v317 = v47;
            v318 = 256;
            v63 = *(*v62 + 168);
            v288 = v47;
            v63(v319, &v317, 1, &v299, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
            if (v61)
            {
              v201 = v287;

              sub_1CEFD0994(v317, v318, SHIBYTE(v318));
              v202 = v302;
              v201, v203, v204, v205, v206, v207, v208, v209;
              v292, v210, v211, v212, v213, v214, v215, v216;

              v202, v217, v218, v219, v220, v221, v222, v223;
              return;
            }

            v57 &= v57 - 1;
            sub_1CEFD0994(v317, v318, SHIBYTE(v318));
            memcpy(v316, v319, sizeof(v316));
            if (sub_1CF08B99C(v316) == 1)
            {
              memcpy(v315, v319, sizeof(v315));
              sub_1CEFCCC44(v315, &unk_1EC4BFD20, &unk_1CFA05440);

              v60 = v58;
              v39 = 0;
              v54 = v286;
              continue;
            }

            break;
          }

          memcpy(v321, v319, sizeof(v321));
          sub_1CF7F62D0(v315);
          memcpy(v313, v315, sizeof(v313));
          memcpy(v314, v319, sizeof(v314));
          sub_1CEFCCC44(v314, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
          if (LOBYTE(v313[27]) == 255)
          {
            (*(*v279 + 288))(v315, &v301, &v305, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
            v293 = 0;
            v64 = v315[0];
            if (!v315[0])
            {
              goto LABEL_39;
            }

            v65 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v47 = v66;
            v68 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v69 = v65;
            v70 = v67;
            if (v69 == v68 && v47 == v67)
            {

              v47, v71, v72, v73, v74, v75, v76, v77;
              v70, v78, v79, v80, v81, v82, v83, v84;
LABEL_39:
              sub_1CEFCCC44(v313, &unk_1EC4BFC90, &unk_1CFA053E0);

              v60 = v58;
              v39 = v293;
              v54 = v286;
              continue;
            }

            LODWORD(v273) = sub_1CF9E8048();
            v47, v85, v86, v87, v88, v89, v90, v91;
            v70, v92, v93, v94, v95, v96, v97, v98;
            if (v273)
            {

              goto LABEL_39;
            }

            v297 = v296;
            v298 = v295;
            v311 = v64;
            v312 = 256;
            v47 = v64;
            v99 = v293;
            v63(v315, &v311, 1, &v297, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
            v39 = v99;
            if (v99)
            {
              goto LABEL_100;
            }

            sub_1CEFD0994(v311, v312, SHIBYTE(v312));
            memcpy(v310, v315, sizeof(v310));
            if (sub_1CF08B99C(v310) == 1)
            {
              memcpy(v309, v315, sizeof(v309));
              sub_1CEFCCC44(v309, &unk_1EC4BFD20, &unk_1CFA05440);
              v100 = v313;
              goto LABEL_45;
            }

            memcpy(v320, v315, sizeof(v320));
            sub_1CF7F62D0(v307);
            memcpy(v308, v307, sizeof(v308));
            memcpy(v309, v315, 0x208uLL);
            sub_1CEFCCC44(v309, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
            if (LOBYTE(v308[12]) == 2)
            {
              sub_1CEFCCC44(v313, &unk_1EC4BFC90, &unk_1CFA053E0);
              v100 = v308;
LABEL_45:
              sub_1CEFCCC44(v100, &unk_1EC4BFC90, &unk_1CFA053E0);
            }

            else
            {
              v101 = v47;
              sub_1CF6EA6C4(v307, v101);
              sub_1CEFCCC44(v308, &unk_1EC4BFC90, &unk_1CFA053E0);
              sub_1CEFCCC44(v313, &unk_1EC4BFC90, &unk_1CFA053E0);

              v102 = v307[0];
            }

            v60 = v58;
            v54 = v286;
            continue;
          }

          break;
        }

        v310[0] = v313[26];
        LOBYTE(v310[1]) = v313[27];
        v103 = v285;
        (*(**(v294 + 32) + 240))(v310, 1, &v305, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        v39 = 0;
        v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
        if ((*(*(v104 - 8) + 48))(v103, 1, v104) == 1)
        {
          sub_1CEFCCC44(v313, &unk_1EC4BFC90, &unk_1CFA053E0);

          sub_1CEFCCC44(v103, &qword_1EC4C1B40, &unk_1CF9FCB70);
          v54 = v286;
          continue;
        }

        break;
      }

      v105 = v103 + *(v104 + 48);
      LOBYTE(v105) = *(v105 + *(type metadata accessor for ItemMetadata(0) + 80));
      sub_1CEFCCC44(v103, &unk_1EC4BE360, &qword_1CF9FE650);
      if ((v105 & 1) == 0)
      {
LABEL_76:
        sub_1CEFCCC44(v313, &unk_1EC4BFC90, &unk_1CFA053E0);

        v54 = v286;
        continue;
      }

      break;
    }

    if (v284 <= 0)
    {
      sub_1CEFCCC44(v313, &unk_1EC4BFC90, &unk_1CFA053E0);

      if (!__OFADD__(v277++, 1))
      {
        v54 = v286;
        continue;
      }

      goto LABEL_118;
    }

    break;
  }

  v106 = *(swift_dynamicCastClassUnconditional() + 32);

  v107 = v289;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v109 = v108;
  (*v291)(v107, v290);
  v110 = v109 * 1000000000.0;
  if ((*&v110 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_115;
  }

  v111 = v283;
  if (v110 <= -9.22337204e18)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v273 = v106;
  if (v110 >= 9.22337204e18)
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v309[0] = v310[0];
  LOBYTE(v309[1]) = v310[1];
  v112 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v113 = v309[0];
  v114 = v309[1];
  v115 = sub_1CF9E6108();
  v116 = sub_1CF9E7288();
  v117 = os_log_type_enabled(v115, v116);
  v293 = 0;
  if (v117)
  {
    v118 = swift_slowAlloc();
    v272 = v116;
    v119 = v118;
    v120 = swift_slowAlloc();
    v308[0] = v120;
    *v119 = v274;
    v315[0] = v113;
    LOBYTE(v315[1]) = v114;
    v121 = VFSItemID.description.getter(v120);
    v123 = v122;
    v124 = sub_1CEFD0DF0(v121, v122, v308);
    v123, v125, v126, v127, v128, v129, v130, v131;
    *(v119 + 4) = v124;
    *(v119 + 12) = 2082;
    v132 = sub_1CF7F5068(64);
    v134 = v133;
    v135 = sub_1CEFD0DF0(v132, v133, v308);
    v134, v136, v137, v138, v139, v140, v141, v142;
    *(v119 + 14) = v135;
    _os_log_impl(&dword_1CEFC7000, v115, v272, "⏰  scheduling background download <i:%{public}s reason:%{public}s>", v119, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v120, -1, -1);
    MEMORY[0x1D386CDC0](v119, -1, -1);

    (*anon_8)(v283, v282);
  }

  else
  {

    (*anon_8)(v111, v282);
  }

  v144 = sub_1CF9E5278();
  MEMORY[0x1EEE9AC00](v144);
  v145 = v273;
  *&v271[-48] = v309;
  *&v271[-40] = v145;
  *&v271[-32] = 0;
  v271[-24] = 1;
  *&v271[-16] = 0;
  v271[-8] = 1;
  v146 = swift_allocObject();
  v146[2] = sub_1CF9032F4;
  v146[3] = &v271[-64];
  v315[4] = sub_1CF9034B4;
  v315[5] = v146;
  v315[0] = MEMORY[0x1E69E9820];
  v315[1] = 1107296256;
  v315[2] = sub_1CEFE7548;
  v315[3] = &block_descriptor_1956;
  v147 = _Block_copy(v315);

  v315[0] = 0;
  v148 = [v296 fetchSwift:v147 error:v315];
  _Block_release(v147);
  v149 = v315[0];
  LOBYTE(v147) = swift_isEscapingClosureAtFileLocation();

  if (v147)
  {
    goto LABEL_117;
  }

  if (!v148)
  {
LABEL_110:
    sub_1CF9E57F8();

    swift_willThrow();

    goto LABEL_113;
  }

  --v284;
  v150 = [v148 next];
  v47 = v271;
  if ((v150 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v150);
    *&v271[-64] = v309;
    *&v271[-56] = 0;
    v271[-48] = 1;
    *&v271[-40] = 0;
    v271[-32] = 1;
    *&v271[-24] = v155;
    *&v271[-16] = 64;
    v156 = v296;
    v157 = v295;
    v158 = v293;
    sub_1CF7D5920(sub_1CF9032F8, &v271[-80], v296);
    v39 = v158;
    if (v158)
    {
      goto LABEL_112;
    }

    v159 = v157;
    v160 = v273;
    sub_1CF800340(v156, v159);
    if (*(v160 + qword_1EDEBBAE8))
    {
      if (qword_1EDEAD4D8 != -1)
      {
        swift_once();
      }

      sub_1CF06779C(sub_1CF9032F0, v273);
    }

    else
    {
      *(v160 + qword_1EDEBBAE8) = 1;
      if (qword_1EDEAD4D8 != -1)
      {
        swift_once();
      }

      [qword_1EDEBBC10 addWatcher_];
    }

LABEL_75:

    goto LABEL_76;
  }

  MEMORY[0x1EEE9AC00](v150);
  *&v271[-64] = 64;
  *&v271[-56] = v309;
  *&v271[-48] = v145;
  *&v271[-40] = 0;
  v271[-32] = 1;
  *&v271[-24] = 0;
  v271[-16] = 1;
  v151 = swift_allocObject();
  v151[2] = sub_1CF9032FC;
  v151[3] = &v271[-80];
  v315[4] = sub_1CF9034B4;
  v315[5] = v151;
  v315[0] = MEMORY[0x1E69E9820];
  v315[1] = 1107296256;
  v315[2] = sub_1CEFE7548;
  v315[3] = &block_descriptor_1966;
  v152 = _Block_copy(v315);

  v315[0] = 0;
  v153 = [v296 executeSwift:v152 error:v315];
  _Block_release(v152);
  v154 = v315[0];
  LOBYTE(v152) = swift_isEscapingClosureAtFileLocation();

  if ((v152 & 1) == 0)
  {
    if (v153)
    {
      sub_1CF800340(v296, v295);

      v39 = v293;
      goto LABEL_75;
    }

    sub_1CF9E57F8();

    swift_willThrow();
LABEL_112:

LABEL_113:
    sub_1CEFCCC44(v313, &unk_1EC4BFC90, &unk_1CFA053E0);

    v239 = v302;
    v240 = v287;
LABEL_101:
    v240, v232, v233, v234, v235, v236, v237, v238;
    v292, v241, v242, v243, v244, v245, v246, v247;

    v40 = v239;
LABEL_9:
    v40, v32, v33, v34, v35, v36, v37, v38;
    return;
  }

LABEL_119:
  __break(1u);
}

uint64_t sub_1CF8E812C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v8 = sub_1CF9E6118();
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E5CF8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  result = sub_1CF9E5CC8();
  v50 = v4;
  if ((*(v4 + qword_1EDEBB798) * -86400) >> 64 == (-86400 * *(v4 + qword_1EDEBB798)) >> 63)
  {
    v45 = a1;
    v46 = a2;
    v47 = a3;
    sub_1CF9E5C38();
    v21 = *(v11 + 8);
    v21(v16, v10);
    v22 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    (*(v11 + 16))(v13, v19, v10);
    v23 = sub_1CF9E6108();
    v24 = sub_1CF9E7298();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v43 = v21;
      v26 = v25;
      v44 = swift_slowAlloc();
      v52 = v44;
      *v26 = 136446210;
      sub_1CEFCCCA4(&unk_1EDEAECD0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v27 = sub_1CF9E7F98();
      v29 = v28;
      v30 = v13;
      v31 = v43;
      v43(v30, v10);
      v32 = sub_1CEFD0DF0(v27, v29, &v52);
      v29, v33, v34, v35, v36, v37, v38, v39;
      *(v26 + 4) = v32;
      _os_log_impl(&dword_1CEFC7000, v23, v24, "🔮  refreshing speculative set with threshold %{public}s", v26, 0xCu);
      v40 = v44;
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x1D386CDC0](v40, -1, -1);
      MEMORY[0x1D386CDC0](v26, -1, -1);

      (*(v48 + 8))(v51, v49);
    }

    else
    {

      v21(v13, v10);
      (*(v48 + 8))(v51, v49);
      v31 = v21;
    }

    sub_1CF8E68F4(v19);
    v42 = v41;
    v31(v19, v10);
    return v42;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF8E8524()
{
  v0 = sub_1CF9E6938();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v85 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v85 - v4;
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v88 = v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v87 = v85 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C46F0, &qword_1CFA16870);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v90 = v85 - v15;
  v16 = sub_1CF9E5A58();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v85 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v85 - v24;
  v26 = [objc_opt_self() fp_backupManifestDirectory];
  if (!v26)
  {
    return 0;
  }

  v85[1] = v2;
  v27 = v26;
  sub_1CF9E59D8();

  v28 = *(v17 + 32);
  v89 = v16;
  v28(v25, v22, v16);
  sub_1CF9E5968();
  v86 = objc_opt_self();
  v29 = [v86 defaultManager];
  sub_1CF9E5A18();
  v31 = v30;
  v32 = sub_1CF9E6888();
  v31, v33, v34, v35, v36, v37, v38, v39;
  LODWORD(v31) = [v29 fileExistsAtPath_];

  if (!v31)
  {
    v45 = 0;
LABEL_20:
    v82 = *(v17 + 8);
    v83 = v19;
    v84 = v89;
    v82(v83, v89);
    v82(v25, v84);
    return v45;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4700, &qword_1CFA00810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  v41 = *MEMORY[0x1E695DAA8];
  *(inited + 32) = *MEMORY[0x1E695DAA8];
  v42 = v41;
  sub_1CEFF8A84(inited);
  v44 = v43;
  swift_setDeallocating();
  sub_1CEFD5338(inited + 32, type metadata accessor for URLResourceKey);
  sub_1CF9E58A8();
  v85[0] = v7;
  v44, v46, v47, v48, v49, v50, v51, v52;
  v53 = sub_1CF9E5648();
  v54 = *(v53 - 8);
  v55 = v90;
  (*(v54 + 56))(v90, 0, 1, v53);
  sub_1CEFCCBDC(v55, v13, &unk_1EC4C46F0, &qword_1CFA16870);
  if ((*(v54 + 48))(v13, 1, v53) == 1)
  {
    sub_1CEFCCC44(v13, &unk_1EC4C46F0, &qword_1CFA16870);
    (*(v85[0] + 56))(v5, 1, 1, v6);
LABEL_9:
    sub_1CEFCCC44(v5, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v45 = 0;
LABEL_17:
    v67 = [v86 defaultManager];
    sub_1CF9E5A18();
    v69 = v68;
    v70 = sub_1CF9E6888();
    v69, v71, v72, v73, v74, v75, v76, v77;
    v78 = [v67 contentsAtPath_];

    if (v78)
    {
      v79 = sub_1CF9E5B88();
      v81 = v80;

      sub_1CF9E6918();
      sub_1CF9E68D8();
      sub_1CEFE4714(v79, v81);
    }

    sub_1CEFCCC44(v90, &unk_1EC4C46F0, &qword_1CFA16870);
    goto LABEL_20;
  }

  sub_1CF9E5588();
  (*(v54 + 8))(v13, v53);
  v56 = v85[0];
  if ((*(v85[0] + 48))(v5, 1, v6) == 1)
  {
    goto LABEL_9;
  }

  v57 = v87;
  (*(v56 + 32))(v87, v5, v6);
  v58 = v88;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v60 = v59;
  v61 = *(v56 + 8);
  result = v61(v58, v6);
  v63 = v60 * 1000000000.0;
  if (COERCE__INT64(fabs(v60 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v63 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v63 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  (*(v56 + 16))(v58, v57, v6);
  sub_1CF9E5C98();
  v65 = v64;
  v61(v58, v6);
  result = v61(v57, v6);
  v66 = v65 * 1000000000.0;
  if (COERCE__INT64(fabs(v65 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v66 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v66 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v45 = v63 - v66;
  if (!__OFSUB__(v63, v66))
  {
    goto LABEL_17;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_1CF8E8D5C(uint64_t a1)
{
  v136 = *MEMORY[0x1E69E9840];
  v121 = sub_1CF9E5D98();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v119 = &v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v125 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v127 = &v113 - v7;
  v132 = sub_1CF9E5A58();
  v126 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v117 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v129 = &v113 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v113 - v12;
  v128 = sub_1CF9E6118();
  v131 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v118 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v130 = &v113 - v16;
  v17 = sub_1CF9E5648();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4700, &qword_1CFA00810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  v22 = *MEMORY[0x1E695DB78];
  *(inited + 32) = *MEMORY[0x1E695DB78];
  v23 = v22;
  sub_1CEFF8A84(inited);
  v25 = v24;
  swift_setDeallocating();
  sub_1CEFD5338(inited + 32, type metadata accessor for URLResourceKey);
  sub_1CF9E58A8();
  if (v1)
  {
    v25, v26, v27, v28, v29, v30, v31, v32;
    v122 = 0;
    v34 = fpfs_current_or_default_log();
    v35 = v130;
    sub_1CF9E6128();
    v36 = v126;
    v37 = *(v126 + 16);
    v123 = a1;
    v37(v13, a1, v132);
    v38 = v1;
    v39 = sub_1CF9E6108();
    v40 = sub_1CF9E72A8();

    v41 = os_log_type_enabled(v39, v40);
    v124 = v1;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v135 = v115;
      *v42 = 136315394;
      v43 = sub_1CF9E5928();
      v44 = [v43 fp_shortDescription];

      v45 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v47 = v46;

      v116 = *(v36 + 8);
      v116(v13, v132);
      v48 = sub_1CEFD0DF0(v45, v47, &v135);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v42 + 4) = v48;
      *(v42 + 12) = 2112;
      swift_getErrorValue();
      v56 = Error.prettyDescription.getter(v133, v134);
      *(v42 + 14) = v56;
      v57 = v114;
      *v114 = v56;
      _os_log_impl(&dword_1CEFC7000, v39, v40, "Can't unlink %s: %@", v42, 0x16u);
      sub_1CEFCCC44(v57, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v57, -1, -1);
      v58 = v115;
      __swift_destroy_boxed_opaque_existential_1(v115);
      MEMORY[0x1D386CDC0](v58, -1, -1);
      MEMORY[0x1D386CDC0](v42, -1, -1);

      v59 = v130;
      v60 = *(v131 + 8);
    }

    else
    {

      v116 = *(v36 + 8);
      v116(v13, v132);
      v60 = *(v131 + 8);
      v59 = v35;
    }

    v61 = v128;
    v60(v59, v128);
    v62 = v36;
    v63 = v125;
    v64 = [objc_opt_self() fp_secureTempDirectory];
    v65 = v129;
    v66 = v127;
    if (v64)
    {
      v67 = v64;
      sub_1CF9E59D8();

      v68 = 0;
    }

    else
    {
      v68 = 1;
    }

    v69 = v132;
    (*(v62 + 56))(v63, v68, 1, v132);
    sub_1CEFE55D0(v63, v66, &unk_1EC4BE310, qword_1CF9FCBE0);
    if ((*(v62 + 48))(v66, 1, v69) == 1)
    {
      sub_1CEFCCC44(v66, &unk_1EC4BE310, qword_1CF9FCBE0);
      v70 = fpfs_current_or_default_log();
      v71 = v118;
      sub_1CF9E6128();
      v72 = sub_1CF9E6108();
      v73 = sub_1CF9E72A8();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_1CEFC7000, v72, v73, "Couldn't get tmp URL for fallback for forceRecursiveRemove", v74, 2u);
        MEMORY[0x1D386CDC0](v74, -1, -1);
      }

      else
      {
      }

      v60(v71, v61);
    }

    else
    {
      v75 = v62;
      v76 = v119;
      sub_1CF9E5D88();
      sub_1CF9E5D18();
      v78 = v77;
      (*(v120 + 8))(v76, v121);
      v79 = v117;
      sub_1CF9E5968();
      v78, v80, v81, v82, v83, v84, v85, v86;
      v87 = v66;
      v88 = v132;
      v89 = v116;
      v116(v87, v132);
      (*(v75 + 32))(v65, v79, v88);
      v90 = [objc_opt_self() defaultManager];
      sub_1CF9E5A18();
      v92 = v91;
      v93 = sub_1CF9E6888();
      v92, v94, v95, v96, v97, v98, v99, v100;
      sub_1CF9E5A18();
      v102 = v101;
      v103 = sub_1CF9E6888();
      v102, v104, v105, v106, v107, v108, v109, v110;
      v135 = 0;
      LODWORD(v102) = [v90 moveItemAtPath:v93 toPath:v103 error:&v135];

      if (v102)
      {
        v111 = v135;
        v89(v65, v132);
      }

      else
      {
        v112 = v135;
        sub_1CF9E57F8();

        swift_willThrow();
        v89(v65, v132);
      }
    }
  }

  else
  {
    v25, v26, v27, v28, v29, v30, v31, v32;
    MEMORY[0x1EEE9AC00](v33);
    *(&v113 - 2) = a1;
    *(&v113 - 1) = v20;
    sub_1CEFE1894(sub_1CF1B808C);
    (*(v18 + 8))(v20, v17);
  }
}

uint64_t sub_1CF8E976C(uint64_t a1)
{
  v3 = objc_sync_enter(v1);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v6 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  *&v1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs] = a1;

  result = objc_sync_exit(v1);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v6 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return result;
}

uint64_t sub_1CF8E9878(void *a1)
{
  v3 = objc_sync_enter(v1);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v8 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v7, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v4 = *&v1[qword_1EDEADB40];
  *&v1[qword_1EDEADB40] = a1;
  v5 = a1;

  result = objc_sync_exit(v1);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v8 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v7, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return result;
}

uint64_t sub_1CF8E997C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C06F0, &qword_1CFA05B00);
  sub_1CEFCCCEC(qword_1EDEA5AE0, &qword_1EC4C06F0, &qword_1CFA05B00, &unk_1CFA0A6F0);
  v4 = sub_1CF9E6EC8();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1CF8E9A44, v4, v3);
}

void sub_1CF8E9A44()
{
  v1 = sub_1CF7F7E74(sub_1CF8E4038, 0, "FileProviderDaemon/FPDiagnosticsManager.swift", 45, 2u, 515);
  v2 = v1;
  v3 = v1 + 56;
  v4 = -1;
  v5 = -1 << *(v1 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v1 + 56);
  v7 = (63 - v5) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = *v2[1].tree + ((v8 << 10) | (16 * v10));
      if ((*(v11 + 9) & 1) == 0)
      {
        break;
      }

      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v63 = *v11;
    v62 = *(v11 + 8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1CF1F67E4(0, *v9->tree + 1, 1, v9, v13, v14, v15, v16);
    }

    v18 = *v9->tree;
    v17 = *v9->tester;
    if (v18 >= v17 >> 1)
    {
      v9 = sub_1CF1F67E4((v17 > 1), v18 + 1, 1, v9, v13, v14, v15, v16);
    }

    *v9->tree = v18 + 1;
    v19 = v9 + 16 * v18;
    *(v19 + 4) = v63;
    v19[40] = v62;
  }

  while (v6);
  while (1)
  {
LABEL_6:
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v12);
    ++v8;
    if (v6)
    {
      v8 = v12;
      goto LABEL_4;
    }
  }

  v20 = v0[3];

  v2, v21, v22, v23, v24, v25, v26, v27;
  v28 = swift_task_alloc();
  v28[2] = v20;
  v28[3] = 100;
  v28[4] = v9;
  v29 = *(*v20 + 432);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4CF0, qword_1CFA0A740);
  v29(2, sub_1CF8F8E94, v28, v30);
  v31 = v0[4];
  v9, v32, v33, v34, v35, v36, v37, v38;

  v39 = v0[2];
  v0[7] = v39;
  v40 = *(v31 + 56);

  v42 = sub_1CF8E167C(v41, v39);
  v40, v43, v44, v45, v46, v47, v48, v49;
  if (*(v42 + 16))
  {
    v50 = sub_1CF7EFEA0(v42);
    v0[8] = v50;

    v51 = swift_task_alloc();
    v0[9] = v51;
    *v51 = v0;
    v51[1] = sub_1CF8E9E1C;

    sub_1CF7F8760(v50, 1, 0, 0, 0x2000000);
  }

  else
  {

    v52 = v0[4];
    v53 = *(v52 + 56);
    *(v52 + 56) = v0[7];
    v53, v54, v55, v56, v57, v58, v59, v60;
    v61 = v0[1];

    v61();
  }
}

uint64_t sub_1CF8E9E1C()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *v1;

  v12 = *(v2 + 64);
  if (v0)
  {
    *(v3 + 56), v5, v6, v7, v8, v9, v10, v11;
    v12, v13, v14, v15, v16, v17, v18, v19;
    v20 = *(v4 + 8);

    return v20();
  }

  else
  {
    v12, v5, v6, v7, v8, v9, v10, v11;
    v22 = *(v3 + 40);
    v23 = *(v3 + 48);

    return MEMORY[0x1EEE6DFA0](sub_1CF8E9F84, v22, v23);
  }
}

uint64_t sub_1CF8E9F84(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = v8[4];
  v10 = *(v9 + 56);
  *(v9 + 56) = v8[7];
  v10, a2, a3, a4, a5, a6, a7, a8;
  v11 = v8[1];

  return v11();
}

void sub_1CF8E9FF4(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, _BYTE *a6, void (*a7)(id, void, void, uint64_t), uint64_t a8)
{
  v73 = a4;
  v74 = a1;
  LODWORD(v76) = a3;
  v75 = a2;
  v12 = sub_1CF9E63A8();
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v79 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E6448();
  v78 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v77 = v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a7;
  *(v17 + 24) = a8;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1CF8F9A1C;
  *(v18 + 24) = v17;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong unableToStartup])
    {
      v19 = sub_1CF8403B4();

      a7(v19, 0, 0, 1);

      v20 = Strong;

      return;
    }
  }

  v69[2] = v17;
  v71 = v15;
  v72 = v13;
  Strong = v12;
  v21 = a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started];
  v22 = MEMORY[0x1E69E7CC0];
  v70 = v18;
  if ((v21 & 1) == 0)
  {
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      v24 = v23;
      v25 = [v23 serialQueue];

      v86 = nullsub_1;
      v87 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v83 = 1107296256;
      v84 = sub_1CEFCA444;
      v85 = &block_descriptor_2137;
      v26 = _Block_copy(&aBlock);
      v27 = v77;
      sub_1CF9E63F8();
      v81 = v22;
      sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
      v28 = v79;
      v29 = Strong;
      sub_1CF9E77B8();
      MEMORY[0x1D3869630](0, v27, v28, v26);
      _Block_release(v26);

      (*(v72 + 8))(v28, v29);
      v30 = v27;
      v18 = v70;
      (*(v78 + 8))(v30, v71);
    }
  }

  v69[1] = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup];
  v31 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
  v32 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v33 = swift_allocObject();
  v33[2] = a6;
  v33[3] = sub_1CF796A94;
  v34 = v73;
  v33[4] = v18;
  v33[5] = v34;
  v33[6] = a5;
  v35 = a6;

  v36 = v31;
  v73 = fpfs_adopt_log();
  v37 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v83 = v38;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v39 = v74;
  v40 = v75;
  v41 = v76;
  v42 = sub_1CF9E7988();
  v44 = v43;
  MEMORY[0x1D3868CC0](v42);
  v44, v45, v46, v47, v48, v49, v50, v51;
  v52 = v83;
  sub_1CF9E6978();
  v52, v53, v54, v55, v56, v57, v58, v59;
  v60 = __fp_log_fork();

  *(v37 + 16) = v60;
  v61 = swift_allocObject();
  *(v61 + 16) = v31;
  *(v61 + 24) = v37;
  *(v61 + 32) = v32;
  *(v61 + 40) = v39;
  *(v61 + 48) = v40;
  *(v61 + 56) = v41;
  *(v61 + 64) = sub_1CF902D8C;
  *(v61 + 72) = v33;
  v86 = sub_1CF2B9F54;
  v87 = v61;
  aBlock = MEMORY[0x1E69E9820];
  v83 = 1107296256;
  v84 = sub_1CEFCA444;
  v85 = &block_descriptor_2149;
  v62 = _Block_copy(&aBlock);
  v76 = v36;

  v63 = v32;

  v64 = v77;
  sub_1CF9E63F8();
  v81 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  v65 = v79;
  v66 = Strong;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v62);
  (*(v72 + 8))(v65, v66);
  (*(v78 + 8))(v64, v71);

  v67 = v73;
  v68 = fpfs_adopt_log();
}

void sub_1CF8EA768(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, _BYTE *a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v70 = a4;
  v71 = a1;
  LODWORD(v73) = a3;
  v72 = a2;
  v12 = sub_1CF9E63A8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v75 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1CF9E6448();
  v15 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a7;
  *(v17 + 24) = a8;
  v18 = v17;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong unableToStartup])
    {
      v20 = sub_1CF8403B4();
      v79 = 0;
      v80 = 0;
      aBlock = v20;
      LOBYTE(v81) = 1;
      a7(&aBlock);

      return;
    }
  }

  v67 = v15;
  v68 = v13;
  v69 = v12;
  if ((a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started] & 1) == 0)
  {
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      v66[0] = [v21 serialQueue];

      v82 = nullsub_1;
      v83 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v79 = 1107296256;
      v80 = sub_1CEFCA444;
      v81 = &block_descriptor_2115;
      v23 = _Block_copy(&aBlock);
      v24 = v74;
      sub_1CF9E63F8();
      v77 = MEMORY[0x1E69E7CC0];
      sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
      v25 = v75;
      v26 = v69;
      sub_1CF9E77B8();
      v27 = v66[0];
      MEMORY[0x1D3869630](0, v24, v25, v23);
      _Block_release(v23);

      (*(v68 + 8))(v25, v26);
      (*(v67 + 8))(v24, v76);
    }
  }

  v66[0] = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup];
  v28 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
  v29 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v30 = swift_allocObject();
  v30[2] = a6;
  v30[3] = sub_1CF79603C;
  v66[1] = v18;
  v31 = v70;
  v30[4] = v18;
  v30[5] = v31;
  v30[6] = a5;
  v32 = a6;

  v33 = v28;
  v70 = fpfs_adopt_log();
  v34 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v79 = v35;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v36 = v71;
  v37 = v72;
  v38 = v73;
  v39 = sub_1CF9E7988();
  v41 = v40;
  MEMORY[0x1D3868CC0](v39);
  v41, v42, v43, v44, v45, v46, v47, v48;
  v49 = v79;
  sub_1CF9E6978();
  v49, v50, v51, v52, v53, v54, v55, v56;
  v57 = __fp_log_fork();

  *(v34 + 16) = v57;
  v58 = swift_allocObject();
  *(v58 + 16) = v28;
  *(v58 + 24) = v34;
  *(v58 + 32) = v29;
  *(v58 + 40) = v36;
  *(v58 + 48) = v37;
  *(v58 + 56) = v38;
  *(v58 + 64) = sub_1CF902D8C;
  *(v58 + 72) = v30;
  v82 = sub_1CF2B9F54;
  v83 = v58;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = sub_1CEFCA444;
  v81 = &block_descriptor_2127;
  v59 = _Block_copy(&aBlock);
  v73 = v33;

  v60 = v29;

  v61 = v74;
  sub_1CF9E63F8();
  v77 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  v62 = v75;
  v63 = v69;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v59);
  (*(v68 + 8))(v62, v63);
  (*(v67 + 8))(v61, v76);

  v64 = v70;
  v65 = fpfs_adopt_log();
}

void sub_1CF8EAE58(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_1CF9E77C8();
    v7 = *(a2 + 36);
    v8 = -1 << *(a2 + 32);
    v9 = sub_1CF8E37F4(v6, v7, 0, a1, -v8, *(a2 + 36), 0, a2);
    v11 = v10;
    v13 = v12;
    v14 = v12;
    v15 = sub_1CF9E77C8();
    if (v14 == 255)
    {
      v16 = -v8;
    }

    else
    {
      v16 = v9;
    }

    if (v14 == 255)
    {
      v17 = v7;
    }

    else
    {
      v17 = v11;
    }

    if (v14 != 255 && (v13 & 1) != 0)
    {
      goto LABEL_16;
    }

    v18 = *(a2 + 36);
    if (v18 == v17)
    {
      if (v16 >= v15)
      {
        v22[0] = v15;
        v22[1] = v18;
        v23 = 0;
        v24 = v16;
        v25 = v17;
        v26 = 0;
        sub_1CF7ABFD0(v22, a2, v20);
        v19 = v20[1];
        *a3 = v20[0];
        *(a3 + 16) = v19;
        *(a3 + 32) = v20[2];
        *(a3 + 48) = v21;
        return;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_1CF8EAF78(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = 0xEB00000000737265;
  v11 = a1 == 0x746E756F43736676 && a2 == 0xEB00000000737265;
  if (v11 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x65746E756F436264 && a2 == 0xEA00000000007372 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else
  {
    v13 = 0x80000001CFA5DAE0;
    if (a1 == 0xD000000000000012 && 0x80000001CFA5DAE0 == a2 || (sub_1CF9E8048() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else if (a1 == 0xD000000000000012 && 0x80000001CFA5DB00 == a2)
    {
      a2, 0x80000001CFA5DB00, a3, a4, a5, a6, a7, a8;
      return 3;
    }

    else
    {
      v14 = sub_1CF9E8048();
      a2, v15, v16, v17, v18, v19, v20, v21;
      if (v14)
      {
        return 3;
      }

      else
      {
        return 4;
      }
    }
  }
}

void sub_1CF8EB0F8(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, _BYTE *a6, void (*a7)(void), uint64_t a8)
{
  v71 = a4;
  v72 = a1;
  LODWORD(v74) = a3;
  v73 = a2;
  v12 = sub_1CF9E63A8();
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v76 = v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E6448();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v75 = v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a7;
  *(v18 + 24) = a8;
  v19 = v18;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong unableToStartup])
    {
      v20 = sub_1CF8403B4();
      a7();

      v21 = Strong;

      return;
    }
  }

  v68 = v16;
  v69 = v15;
  v70 = v13;
  Strong = v12;
  if ((a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started] & 1) == 0)
  {
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = v22;
      v67[0] = [v22 serialQueue];

      v83 = nullsub_1;
      v84 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v80 = 1107296256;
      v81 = sub_1CEFCA444;
      v82 = &block_descriptor_6054;
      v24 = _Block_copy(&aBlock);
      v25 = v75;
      sub_1CF9E63F8();
      v78 = MEMORY[0x1E69E7CC0];
      sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
      v27 = v76;
      v26 = Strong;
      sub_1CF9E77B8();
      v28 = v67[0];
      MEMORY[0x1D3869630](0, v25, v27, v24);
      _Block_release(v24);

      (*(v70 + 8))(v27, v26);
      (*(v68 + 8))(v25, v69);
    }
  }

  v67[0] = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup];
  v29 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
  v30 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v31 = swift_allocObject();
  v31[2] = a6;
  v31[3] = sub_1CF90324C;
  v67[1] = v19;
  v32 = v71;
  v31[4] = v19;
  v31[5] = v32;
  v31[6] = a5;
  v33 = a6;

  v34 = v29;
  v71 = fpfs_adopt_log();
  v35 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v80 = v36;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v37 = v72;
  v38 = v73;
  v39 = v74;
  v40 = sub_1CF9E7988();
  v42 = v41;
  MEMORY[0x1D3868CC0](v40);
  v42, v43, v44, v45, v46, v47, v48, v49;
  v50 = v80;
  sub_1CF9E6978();
  v50, v51, v52, v53, v54, v55, v56, v57;
  v58 = __fp_log_fork();

  *(v35 + 16) = v58;
  v59 = swift_allocObject();
  *(v59 + 16) = v29;
  *(v59 + 24) = v35;
  *(v59 + 32) = v30;
  *(v59 + 40) = v37;
  *(v59 + 48) = v38;
  *(v59 + 56) = v39;
  *(v59 + 64) = sub_1CF902D8C;
  *(v59 + 72) = v31;
  v83 = sub_1CF2B9F54;
  v84 = v59;
  aBlock = MEMORY[0x1E69E9820];
  v80 = 1107296256;
  v81 = sub_1CEFCA444;
  v82 = &block_descriptor_6066;
  v60 = _Block_copy(&aBlock);
  v74 = v34;

  v61 = v30;

  v62 = v75;
  sub_1CF9E63F8();
  v78 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  v64 = v76;
  v63 = Strong;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v60);
  (*(v70 + 8))(v64, v63);
  (*(v68 + 8))(v62, v69);

  v65 = v71;
  v66 = fpfs_adopt_log();
}

void sub_1CF8EB84C(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, _BYTE *a6, void *a7, uint64_t a8)
{
  v73 = a4;
  v74 = a1;
  LODWORD(v76) = a3;
  v75 = a2;
  v12 = sub_1CF9E63A8();
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v79 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1CF9E6448();
  v78 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v77 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a7;
  *(v16 + 24) = a8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1CF902E90;
  *(v17 + 24) = v16;
  Strong = swift_unknownObjectWeakLoadStrong();
  v18 = a7;

  if (Strong)
  {
    if ([Strong unableToStartup])
    {
      v19 = sub_1CF8403B4();
      v20 = v18;

      sub_1CEFCC8E0(v20, a8);

      v21 = Strong;

      return;
    }
  }

  v70[2] = v16;
  v72 = v13;
  Strong = v12;
  v22 = a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started];
  v23 = MEMORY[0x1E69E7CC0];
  v71 = v17;
  if ((v22 & 1) == 0)
  {
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v25 = v24;
      v26 = [v24 serialQueue];

      v87 = nullsub_1;
      v88 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v84 = 1107296256;
      v85 = sub_1CEFCA444;
      v86 = &block_descriptor_1985;
      v27 = _Block_copy(&aBlock);
      v28 = v77;
      sub_1CF9E63F8();
      v82 = v23;
      sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
      v29 = v79;
      v30 = Strong;
      sub_1CF9E77B8();
      MEMORY[0x1D3869630](0, v28, v29, v27);
      _Block_release(v27);

      (*(v72 + 8))(v29, v30);
      v31 = v28;
      v17 = v71;
      (*(v78 + 8))(v31, v80);
    }
  }

  v70[1] = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup];
  v32 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
  v33 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v34 = swift_allocObject();
  v34[2] = a6;
  v34[3] = sub_1CEFFD05C;
  v35 = v73;
  v34[4] = v17;
  v34[5] = v35;
  v34[6] = a5;
  v36 = a6;

  v37 = v32;
  v73 = fpfs_adopt_log();
  v38 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v84 = v39;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v40 = v74;
  v41 = v75;
  v42 = v76;
  v43 = sub_1CF9E7988();
  v45 = v44;
  MEMORY[0x1D3868CC0](v43);
  v45, v46, v47, v48, v49, v50, v51, v52;
  v53 = v84;
  sub_1CF9E6978();
  v53, v54, v55, v56, v57, v58, v59, v60;
  v61 = __fp_log_fork();

  *(v38 + 16) = v61;
  v62 = swift_allocObject();
  *(v62 + 16) = v32;
  *(v62 + 24) = v38;
  *(v62 + 32) = v33;
  *(v62 + 40) = v40;
  *(v62 + 48) = v41;
  *(v62 + 56) = v42;
  *(v62 + 64) = sub_1CF902D8C;
  *(v62 + 72) = v34;
  v87 = sub_1CF2B9F54;
  v88 = v62;
  aBlock = MEMORY[0x1E69E9820];
  v84 = 1107296256;
  v85 = sub_1CEFCA444;
  v86 = &block_descriptor_1997;
  v63 = _Block_copy(&aBlock);
  v76 = v37;

  v64 = v33;

  v65 = v77;
  sub_1CF9E63F8();
  v82 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  v66 = v79;
  v67 = Strong;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v63);
  (*(v72 + 8))(v66, v67);
  (*(v78 + 8))(v65, v80);

  v68 = v73;
  v69 = fpfs_adopt_log();
}

void sub_1CF8EBFCC(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, _BYTE *a6, void (*a7)(void, id), uint64_t a8)
{
  v71 = a4;
  v72 = a1;
  LODWORD(v74) = a3;
  v73 = a2;
  v12 = sub_1CF9E63A8();
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v76 = v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E6448();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v75 = v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a7;
  *(v18 + 24) = a8;
  v19 = v18;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong unableToStartup])
    {
      v20 = sub_1CF8403B4();
      a7(0, v20);

      v21 = Strong;

      return;
    }
  }

  v68 = v16;
  v69 = v15;
  v70 = v13;
  Strong = v12;
  if ((a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started] & 1) == 0)
  {
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = v22;
      v67[0] = [v22 serialQueue];

      v83 = nullsub_1;
      v84 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v80 = 1107296256;
      v81 = sub_1CEFCA444;
      v82 = &block_descriptor_2761;
      v24 = _Block_copy(&aBlock);
      v25 = v75;
      sub_1CF9E63F8();
      v78 = MEMORY[0x1E69E7CC0];
      sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
      v27 = v76;
      v26 = Strong;
      sub_1CF9E77B8();
      v28 = v67[0];
      MEMORY[0x1D3869630](0, v25, v27, v24);
      _Block_release(v24);

      (*(v70 + 8))(v27, v26);
      (*(v68 + 8))(v25, v69);
    }
  }

  v67[0] = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup];
  v29 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
  v30 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v31 = swift_allocObject();
  v31[2] = a6;
  v31[3] = sub_1CF903254;
  v67[1] = v19;
  v32 = v71;
  v31[4] = v19;
  v31[5] = v32;
  v31[6] = a5;
  v33 = a6;

  v34 = v29;
  v71 = fpfs_adopt_log();
  v35 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v80 = v36;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v37 = v72;
  v38 = v73;
  v39 = v74;
  v40 = sub_1CF9E7988();
  v42 = v41;
  MEMORY[0x1D3868CC0](v40);
  v42, v43, v44, v45, v46, v47, v48, v49;
  v50 = v80;
  sub_1CF9E6978();
  v50, v51, v52, v53, v54, v55, v56, v57;
  v58 = __fp_log_fork();

  *(v35 + 16) = v58;
  v59 = swift_allocObject();
  *(v59 + 16) = v29;
  *(v59 + 24) = v35;
  *(v59 + 32) = v30;
  *(v59 + 40) = v37;
  *(v59 + 48) = v38;
  *(v59 + 56) = v39;
  *(v59 + 64) = sub_1CF902D8C;
  *(v59 + 72) = v31;
  v83 = sub_1CF2B9F54;
  v84 = v59;
  aBlock = MEMORY[0x1E69E9820];
  v80 = 1107296256;
  v81 = sub_1CEFCA444;
  v82 = &block_descriptor_2773;
  v60 = _Block_copy(&aBlock);
  v74 = v34;

  v61 = v30;

  v62 = v75;
  sub_1CF9E63F8();
  v78 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  v64 = v76;
  v63 = Strong;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v60);
  (*(v70 + 8))(v64, v63);
  (*(v68 + 8))(v62, v69);

  v65 = v71;
  v66 = fpfs_adopt_log();
}

void sub_1CF8EC6D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5, _BYTE *a6, void (*a7)(char *, id), uint64_t a8)
{
  v72 = a4;
  v73 = a5;
  LODWORD(v76) = a3;
  v74 = a1;
  v75 = a2;
  v11 = sub_1CF9E63A8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v79 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E6448();
  v78 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v77 = v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v68 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a7;
  *(v19 + 24) = a8;
  v20 = v19;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong unableToStartup])
    {
      v22 = sub_1CF8403B4();
      v23 = sub_1CF9E5A58();
      (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
      a7(v18, v22);
      sub_1CEFCCC44(v18, &unk_1EC4BE310, qword_1CF9FCBE0);

      goto LABEL_9;
    }
  }

  v69 = v14;
  v70 = v12;
  v71 = v11;
  if ((a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started] & 1) == 0)
  {
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v25 = v24;
      v26 = [v24 serialQueue];

      v85 = nullsub_1;
      v86 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v82 = 1107296256;
      v83 = sub_1CEFCA444;
      v84 = &block_descriptor_5483;
      v27 = _Block_copy(&aBlock);
      v28 = v77;
      sub_1CF9E63F8();
      v80 = MEMORY[0x1E69E7CC0];
      sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
      v29 = v79;
      v30 = v71;
      sub_1CF9E77B8();
      MEMORY[0x1D3869630](0, v28, v29, v27);
      _Block_release(v27);

      (*(v70 + 8))(v29, v30);
      (*(v78 + 8))(v28, v69);
    }
  }

  v68[1] = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup];
  v31 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
  v32 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v33 = swift_allocObject();
  v33[2] = a6;
  v33[3] = sub_1CF901090;
  v68[2] = v20;
  v34 = v72;
  v33[4] = v20;
  v33[5] = v34;
  v33[6] = v73;
  v35 = a6;

  v36 = v31;
  v73 = fpfs_adopt_log();
  v37 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v82 = v38;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v39 = v74;
  v40 = v75;
  v41 = v76;
  v42 = sub_1CF9E7988();
  v44 = v43;
  MEMORY[0x1D3868CC0](v42);
  v44, v45, v46, v47, v48, v49, v50, v51;
  v52 = v82;
  sub_1CF9E6978();
  v52, v53, v54, v55, v56, v57, v58, v59;
  v60 = __fp_log_fork();

  *(v37 + 16) = v60;
  v61 = swift_allocObject();
  *(v61 + 16) = v31;
  *(v61 + 24) = v37;
  *(v61 + 32) = v32;
  *(v61 + 40) = v39;
  *(v61 + 48) = v40;
  *(v61 + 56) = v41;
  *(v61 + 64) = sub_1CF902D8C;
  *(v61 + 72) = v33;
  v85 = sub_1CF2B9F54;
  v86 = v61;
  aBlock = MEMORY[0x1E69E9820];
  v82 = 1107296256;
  v83 = sub_1CEFCA444;
  v84 = &block_descriptor_5495;
  v62 = _Block_copy(&aBlock);
  v76 = v36;

  v63 = v32;

  v64 = v77;
  sub_1CF9E63F8();
  v80 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  v65 = v79;
  v66 = v71;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v62);
  (*(v70 + 8))(v65, v66);
  (*(v78 + 8))(v64, v69);

  v67 = v73;
  Strong = fpfs_adopt_log();

LABEL_9:
}

void sub_1CF8ECE60(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5, _BYTE *a6, void (*a7)(uint64_t *, char *, id), uint64_t a8)
{
  v73 = a4;
  v74 = a5;
  LODWORD(v77) = a3;
  v75 = a1;
  v76 = a2;
  v11 = sub_1CF9E63A8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v80 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E6448();
  v79 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v78 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v69 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a7;
  *(v19 + 24) = a8;
  v20 = v19;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong unableToStartup])
    {
      v22 = sub_1CF8403B4();
      aBlock = 0;
      v23 = sub_1CF9E5A58();
      (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
      a7(&aBlock, v18, v22);
      sub_1CEFCCC44(v18, &unk_1EC4BE310, qword_1CF9FCBE0);

      return;
    }
  }

  v70 = v14;
  v71 = v12;
  v72 = v11;
  if ((a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started] & 1) == 0)
  {
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v25 = v24;
      v26 = [v24 serialQueue];

      v86 = nullsub_1;
      v87 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v83 = 1107296256;
      v84 = sub_1CEFCA444;
      v85 = &block_descriptor_5280;
      v27 = _Block_copy(&aBlock);
      v28 = v78;
      sub_1CF9E63F8();
      v81 = MEMORY[0x1E69E7CC0];
      sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
      v29 = v80;
      v30 = v72;
      sub_1CF9E77B8();
      MEMORY[0x1D3869630](0, v28, v29, v27);
      _Block_release(v27);

      (*(v71 + 8))(v29, v30);
      (*(v79 + 8))(v28, v70);
    }
  }

  v69[1] = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup];
  v31 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
  v32 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v33 = swift_allocObject();
  v33[2] = a6;
  v33[3] = sub_1CF9003D0;
  v69[2] = v20;
  v34 = v73;
  v33[4] = v20;
  v33[5] = v34;
  v33[6] = v74;
  v35 = a6;

  v36 = v31;
  v74 = fpfs_adopt_log();
  v37 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v83 = v38;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v39 = v75;
  v40 = v76;
  v41 = v77;
  v42 = sub_1CF9E7988();
  v44 = v43;
  MEMORY[0x1D3868CC0](v42);
  v44, v45, v46, v47, v48, v49, v50, v51;
  v52 = v83;
  sub_1CF9E6978();
  v52, v53, v54, v55, v56, v57, v58, v59;
  v60 = __fp_log_fork();

  *(v37 + 16) = v60;
  v61 = swift_allocObject();
  *(v61 + 16) = v31;
  *(v61 + 24) = v37;
  *(v61 + 32) = v32;
  *(v61 + 40) = v39;
  *(v61 + 48) = v40;
  *(v61 + 56) = v41;
  *(v61 + 64) = sub_1CF902D8C;
  *(v61 + 72) = v33;
  v86 = sub_1CF2B9F54;
  v87 = v61;
  aBlock = MEMORY[0x1E69E9820];
  v83 = 1107296256;
  v84 = sub_1CEFCA444;
  v85 = &block_descriptor_5292;
  v62 = _Block_copy(&aBlock);
  v77 = v36;

  v63 = v32;

  v64 = v78;
  sub_1CF9E63F8();
  v81 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  v65 = v80;
  v66 = v72;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v62);
  (*(v71 + 8))(v65, v66);
  (*(v79 + 8))(v64, v70);

  v67 = v74;
  v68 = fpfs_adopt_log();
}

void sub_1CF8ED5F4(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, _BYTE *a6, void (*a7)(void), uint64_t a8)
{
  v72 = a4;
  v73 = a1;
  LODWORD(v75) = a3;
  v74 = a2;
  v12 = sub_1CF9E63A8();
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v77 = v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E6448();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v76 = v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a7;
  *(v18 + 24) = a8;
  v19 = v18;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong unableToStartup])
    {
      v20 = sub_1CF8403B4();
      v21 = [objc_opt_self() providingNotRequiredResponseWithSyncRootID_];
      a7();

      v22 = Strong;

      return;
    }
  }

  v69 = v16;
  v70 = v15;
  v71 = v13;
  Strong = v12;
  if ((a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started] & 1) == 0)
  {
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      v24 = v23;
      v68[0] = [v23 serialQueue];

      v84 = nullsub_1;
      v85 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v81 = 1107296256;
      v82 = sub_1CEFCA444;
      v83 = &block_descriptor_5238;
      v25 = _Block_copy(&aBlock);
      v26 = v76;
      sub_1CF9E63F8();
      v79 = MEMORY[0x1E69E7CC0];
      sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
      v28 = v77;
      v27 = Strong;
      sub_1CF9E77B8();
      v29 = v68[0];
      MEMORY[0x1D3869630](0, v26, v28, v25);
      _Block_release(v25);

      (*(v71 + 8))(v28, v27);
      (*(v69 + 8))(v26, v70);
    }
  }

  v68[0] = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup];
  v30 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
  v31 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v32 = swift_allocObject();
  v32[2] = a6;
  v32[3] = sub_1CF900330;
  v68[1] = v19;
  v33 = v72;
  v32[4] = v19;
  v32[5] = v33;
  v32[6] = a5;
  v34 = a6;

  v35 = v30;
  v72 = fpfs_adopt_log();
  v36 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v81 = v37;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v38 = v73;
  v39 = v74;
  v40 = v75;
  v41 = sub_1CF9E7988();
  v43 = v42;
  MEMORY[0x1D3868CC0](v41);
  v43, v44, v45, v46, v47, v48, v49, v50;
  v51 = v81;
  sub_1CF9E6978();
  v51, v52, v53, v54, v55, v56, v57, v58;
  v59 = __fp_log_fork();

  *(v36 + 16) = v59;
  v60 = swift_allocObject();
  *(v60 + 16) = v30;
  *(v60 + 24) = v36;
  *(v60 + 32) = v31;
  *(v60 + 40) = v38;
  *(v60 + 48) = v39;
  *(v60 + 56) = v40;
  *(v60 + 64) = sub_1CF902D8C;
  *(v60 + 72) = v32;
  v84 = sub_1CF2B9F54;
  v85 = v60;
  aBlock = MEMORY[0x1E69E9820];
  v81 = 1107296256;
  v82 = sub_1CEFCA444;
  v83 = &block_descriptor_5250;
  v61 = _Block_copy(&aBlock);
  v75 = v35;

  v62 = v31;

  v63 = v76;
  sub_1CF9E63F8();
  v79 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  v65 = v77;
  v64 = Strong;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v61);
  (*(v71 + 8))(v65, v64);
  (*(v69 + 8))(v63, v70);

  v66 = v72;
  v67 = fpfs_adopt_log();
}

void sub_1CF8EDD24(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, _BYTE *a6, void (*a7)(uint64_t *, id), uint64_t a8)
{
  v70 = a4;
  v71 = a1;
  LODWORD(v73) = a3;
  v72 = a2;
  v12 = sub_1CF9E63A8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v75 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1CF9E6448();
  v15 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a7;
  *(v17 + 24) = a8;
  v18 = v17;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong unableToStartup])
    {
      v20 = sub_1CF8403B4();
      aBlock = 0;
      a7(&aBlock, v20);

      return;
    }
  }

  v67 = v15;
  v68 = v13;
  v69 = v12;
  if ((a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started] & 1) == 0)
  {
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      v66[0] = [v21 serialQueue];

      v82 = nullsub_1;
      v83 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v79 = 1107296256;
      v80 = sub_1CEFCA444;
      v81 = &block_descriptor_5220;
      v23 = _Block_copy(&aBlock);
      v24 = v74;
      sub_1CF9E63F8();
      v77 = MEMORY[0x1E69E7CC0];
      sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
      v25 = v75;
      v26 = v69;
      sub_1CF9E77B8();
      v27 = v66[0];
      MEMORY[0x1D3869630](0, v24, v25, v23);
      _Block_release(v23);

      (*(v68 + 8))(v25, v26);
      (*(v67 + 8))(v24, v76);
    }
  }

  v66[0] = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup];
  v28 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
  v29 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v30 = swift_allocObject();
  v30[2] = a6;
  v30[3] = sub_1CF903280;
  v66[1] = v18;
  v31 = v70;
  v30[4] = v18;
  v30[5] = v31;
  v30[6] = a5;
  v32 = a6;

  v33 = v28;
  v70 = fpfs_adopt_log();
  v34 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v79 = v35;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v36 = v71;
  v37 = v72;
  v38 = v73;
  v39 = sub_1CF9E7988();
  v41 = v40;
  MEMORY[0x1D3868CC0](v39);
  v41, v42, v43, v44, v45, v46, v47, v48;
  v49 = v79;
  sub_1CF9E6978();
  v49, v50, v51, v52, v53, v54, v55, v56;
  v57 = __fp_log_fork();

  *(v34 + 16) = v57;
  v58 = swift_allocObject();
  *(v58 + 16) = v28;
  *(v58 + 24) = v34;
  *(v58 + 32) = v29;
  *(v58 + 40) = v36;
  *(v58 + 48) = v37;
  *(v58 + 56) = v38;
  *(v58 + 64) = sub_1CF902D8C;
  *(v58 + 72) = v30;
  v82 = sub_1CF2B9F54;
  v83 = v58;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = sub_1CEFCA444;
  v81 = &block_descriptor_5232;
  v59 = _Block_copy(&aBlock);
  v73 = v33;

  v60 = v29;

  v61 = v74;
  sub_1CF9E63F8();
  v77 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  v62 = v75;
  v63 = v69;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v59);
  (*(v68 + 8))(v62, v63);
  (*(v67 + 8))(v61, v76);

  v64 = v70;
  v65 = fpfs_adopt_log();
}

void sub_1CF8EE40C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5, _BYTE *a6, void (**a7)(void, void, void))
{
  v76 = a4;
  v77 = a5;
  LODWORD(v80) = a3;
  v78 = a1;
  v79 = a2;
  v9 = sub_1CF9E63A8();
  v84 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v82 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1CF9E6448();
  v11 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v73 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a7;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1CF902DE0;
  *(v20 + 24) = v19;
  Strong = swift_unknownObjectWeakLoadStrong();
  _Block_copy(a7);
  v86 = v19;

  v85 = v20;
  if (Strong)
  {
    if ([Strong unableToStartup])
    {
      v22 = sub_1CF8403B4();
      v23 = sub_1CF9E5A58();
      v24 = *(v23 - 8);
      (*(v24 + 56))(v18, 1, 1, v23);
      sub_1CEFCCBDC(v18, v15, &unk_1EC4BE310, qword_1CF9FCBE0);
      v25 = (*(v24 + 48))(v15, 1, v23);
      _Block_copy(a7);
      v26 = 0;
      if (v25 != 1)
      {
        v26 = sub_1CF9E5928();
        (*(v24 + 8))(v15, v23);
      }

      v27 = sub_1CF9E57E8();
      (a7)[2](a7, v26, v27);

      sub_1CEFCCC44(v18, &unk_1EC4BE310, qword_1CF9FCBE0);
      _Block_release(a7);

      goto LABEL_11;
    }
  }

  v74 = v11;
  v75 = v9;
  if ((a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started] & 1) == 0)
  {
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = v28;
      v30 = [v28 serialQueue];

      v92 = nullsub_1;
      v93 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v89 = 1107296256;
      v90 = sub_1CEFCA444;
      v91 = &block_descriptor_1304;
      v31 = _Block_copy(&aBlock);
      v32 = v81;
      sub_1CF9E63F8();
      v87 = MEMORY[0x1E69E7CC0];
      sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
      v33 = v82;
      v34 = v75;
      sub_1CF9E77B8();
      MEMORY[0x1D3869630](0, v32, v33, v31);
      _Block_release(v31);

      (*(v84 + 8))(v33, v34);
      (*(v74 + 8))(v32, v83);
    }
  }

  v73 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup];
  v35 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
  v36 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v37 = swift_allocObject();
  v37[2] = a6;
  v37[3] = sub_1CF9034CC;
  v38 = v76;
  v39 = v77;
  v37[4] = v20;
  v37[5] = v38;
  v37[6] = v39;
  v40 = a6;

  v41 = v35;
  v77 = fpfs_adopt_log();
  v42 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v89 = v43;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v44 = v78;
  v45 = v79;
  v46 = v80;
  v47 = sub_1CF9E7988();
  v49 = v48;
  MEMORY[0x1D3868CC0](v47);
  v49, v50, v51, v52, v53, v54, v55, v56;
  v57 = v89;
  sub_1CF9E6978();
  v57, v58, v59, v60, v61, v62, v63, v64;
  v65 = __fp_log_fork();

  *(v42 + 16) = v65;
  v66 = swift_allocObject();
  *(v66 + 16) = v35;
  *(v66 + 24) = v42;
  *(v66 + 32) = v36;
  *(v66 + 40) = v44;
  *(v66 + 48) = v45;
  *(v66 + 56) = v46;
  *(v66 + 64) = sub_1CEFD3C24;
  *(v66 + 72) = v37;
  v92 = sub_1CEFD5064;
  v93 = v66;
  aBlock = MEMORY[0x1E69E9820];
  v89 = 1107296256;
  v90 = sub_1CEFCA444;
  v91 = &block_descriptor_1316;
  v67 = _Block_copy(&aBlock);
  v80 = v41;

  v68 = v36;

  v69 = v81;
  sub_1CF9E63F8();
  v87 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  v70 = v82;
  v71 = v75;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v67);
  (*(v84 + 8))(v70, v71);
  (*(v74 + 8))(v69, v83);

  v72 = v77;
  Strong = fpfs_adopt_log();

LABEL_11:
}

void sub_1CF8EECC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5, _BYTE *a6, void (*a7)(char *, id), uint64_t a8)
{
  v72 = a4;
  v73 = a5;
  LODWORD(v76) = a3;
  v74 = a1;
  v75 = a2;
  v11 = sub_1CF9E63A8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v79 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E6448();
  v78 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v77 = v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v68 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a7;
  *(v19 + 24) = a8;
  v20 = v19;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong unableToStartup])
    {
      v22 = sub_1CF8403B4();
      v23 = sub_1CF9E5A58();
      (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
      a7(v18, v22);
      sub_1CEFCCC44(v18, &unk_1EC4BE310, qword_1CF9FCBE0);

      goto LABEL_9;
    }
  }

  v69 = v14;
  v70 = v12;
  v71 = v11;
  if ((a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started] & 1) == 0)
  {
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v25 = v24;
      v26 = [v24 serialQueue];

      v85 = nullsub_1;
      v86 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v82 = 1107296256;
      v83 = sub_1CEFCA444;
      v84 = &block_descriptor_3707;
      v27 = _Block_copy(&aBlock);
      v28 = v77;
      sub_1CF9E63F8();
      v80 = MEMORY[0x1E69E7CC0];
      sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
      v29 = v79;
      v30 = v71;
      sub_1CF9E77B8();
      MEMORY[0x1D3869630](0, v28, v29, v27);
      _Block_release(v27);

      (*(v70 + 8))(v29, v30);
      (*(v78 + 8))(v28, v69);
    }
  }

  v68[1] = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup];
  v31 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
  v32 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v33 = swift_allocObject();
  v33[2] = a6;
  v33[3] = sub_1CF9034CC;
  v68[2] = v20;
  v34 = v72;
  v33[4] = v20;
  v33[5] = v34;
  v33[6] = v73;
  v35 = a6;

  v36 = v31;
  v73 = fpfs_adopt_log();
  v37 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v82 = v38;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v39 = v74;
  v40 = v75;
  v41 = v76;
  v42 = sub_1CF9E7988();
  v44 = v43;
  MEMORY[0x1D3868CC0](v42);
  v44, v45, v46, v47, v48, v49, v50, v51;
  v52 = v82;
  sub_1CF9E6978();
  v52, v53, v54, v55, v56, v57, v58, v59;
  v60 = __fp_log_fork();

  *(v37 + 16) = v60;
  v61 = swift_allocObject();
  *(v61 + 16) = v31;
  *(v61 + 24) = v37;
  *(v61 + 32) = v32;
  *(v61 + 40) = v39;
  *(v61 + 48) = v40;
  *(v61 + 56) = v41;
  *(v61 + 64) = sub_1CF902D8C;
  *(v61 + 72) = v33;
  v85 = sub_1CF2B9F54;
  v86 = v61;
  aBlock = MEMORY[0x1E69E9820];
  v82 = 1107296256;
  v83 = sub_1CEFCA444;
  v84 = &block_descriptor_3719;
  v62 = _Block_copy(&aBlock);
  v76 = v36;

  v63 = v32;

  v64 = v77;
  sub_1CF9E63F8();
  v80 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  v65 = v79;
  v66 = v71;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v62);
  (*(v70 + 8))(v65, v66);
  (*(v78 + 8))(v64, v69);

  v67 = v73;
  Strong = fpfs_adopt_log();

LABEL_9:
}

void sub_1CF8EF448(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, _BYTE *a6, void (*a7)(uint64_t *, uint64_t *, id), uint64_t a8)
{
  v70 = a4;
  v71 = a1;
  LODWORD(v73) = a3;
  v72 = a2;
  v12 = sub_1CF9E63A8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v75 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1CF9E6448();
  v15 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a7;
  *(v17 + 24) = a8;
  v18 = v17;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong unableToStartup])
    {
      v20 = sub_1CF8403B4();
      v77 = 0;
      aBlock = 0;
      a7(&aBlock, &v77, v20);

      return;
    }
  }

  v67 = v15;
  v68 = v13;
  v69 = v12;
  if ((a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started] & 1) == 0)
  {
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      v66[0] = [v21 serialQueue];

      v82 = nullsub_1;
      v83 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v79 = 1107296256;
      v80 = sub_1CEFCA444;
      v81 = &block_descriptor_3580;
      v23 = _Block_copy(&aBlock);
      v24 = v74;
      sub_1CF9E63F8();
      v77 = MEMORY[0x1E69E7CC0];
      sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
      v25 = v75;
      v26 = v69;
      sub_1CF9E77B8();
      v27 = v66[0];
      MEMORY[0x1D3869630](0, v24, v25, v23);
      _Block_release(v23);

      (*(v68 + 8))(v25, v26);
      (*(v67 + 8))(v24, v76);
    }
  }

  v66[0] = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup];
  v28 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
  v29 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v30 = swift_allocObject();
  v30[2] = a6;
  v30[3] = sub_1CF903284;
  v66[1] = v18;
  v31 = v70;
  v30[4] = v18;
  v30[5] = v31;
  v30[6] = a5;
  v32 = a6;

  v33 = v28;
  v70 = fpfs_adopt_log();
  v34 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v79 = v35;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v36 = v71;
  v37 = v72;
  v38 = v73;
  v39 = sub_1CF9E7988();
  v41 = v40;
  MEMORY[0x1D3868CC0](v39);
  v41, v42, v43, v44, v45, v46, v47, v48;
  v49 = v79;
  sub_1CF9E6978();
  v49, v50, v51, v52, v53, v54, v55, v56;
  v57 = __fp_log_fork();

  *(v34 + 16) = v57;
  v58 = swift_allocObject();
  *(v58 + 16) = v28;
  *(v58 + 24) = v34;
  *(v58 + 32) = v29;
  *(v58 + 40) = v36;
  *(v58 + 48) = v37;
  *(v58 + 56) = v38;
  *(v58 + 64) = sub_1CF902D8C;
  *(v58 + 72) = v30;
  v82 = sub_1CF2B9F54;
  v83 = v58;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = sub_1CEFCA444;
  v81 = &block_descriptor_3592;
  v59 = _Block_copy(&aBlock);
  v73 = v33;

  v60 = v29;

  v61 = v74;
  sub_1CF9E63F8();
  v77 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  v62 = v75;
  v63 = v69;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v59);
  (*(v68 + 8))(v62, v63);
  (*(v67 + 8))(v61, v76);

  v64 = v70;
  v65 = fpfs_adopt_log();
}

void sub_1CF8EFB34(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, _BYTE *a6, void (*a7)(uint64_t *, uint64_t *, id), uint64_t a8)
{
  v70 = a4;
  v71 = a1;
  LODWORD(v73) = a3;
  v72 = a2;
  v12 = sub_1CF9E63A8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v75 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1CF9E6448();
  v15 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a7;
  *(v17 + 24) = a8;
  v18 = v17;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong unableToStartup])
    {
      v20 = sub_1CF8403B4();
      aBlock = 0;
      v79 = 0;
      v77 = 0;
      a7(&aBlock, &v77, v20);

      return;
    }
  }

  v67 = v15;
  v68 = v13;
  v69 = v12;
  if ((a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started] & 1) == 0)
  {
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      v66[0] = [v21 serialQueue];

      v82 = nullsub_1;
      v83 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v79 = 1107296256;
      v80 = sub_1CEFCA444;
      v81 = &block_descriptor_2412;
      v23 = _Block_copy(&aBlock);
      v24 = v74;
      sub_1CF9E63F8();
      v77 = MEMORY[0x1E69E7CC0];
      sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
      v25 = v75;
      v26 = v69;
      sub_1CF9E77B8();
      v27 = v66[0];
      MEMORY[0x1D3869630](0, v24, v25, v23);
      _Block_release(v23);

      (*(v68 + 8))(v25, v26);
      (*(v67 + 8))(v24, v76);
    }
  }

  v66[0] = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup];
  v28 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
  v29 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v30 = swift_allocObject();
  v30[2] = a6;
  v30[3] = sub_1CF8FA66C;
  v66[1] = v18;
  v31 = v70;
  v30[4] = v18;
  v30[5] = v31;
  v30[6] = a5;
  v32 = a6;

  v33 = v28;
  v70 = fpfs_adopt_log();
  v34 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v79 = v35;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v36 = v71;
  v37 = v72;
  v38 = v73;
  v39 = sub_1CF9E7988();
  v41 = v40;
  MEMORY[0x1D3868CC0](v39);
  v41, v42, v43, v44, v45, v46, v47, v48;
  v49 = v79;
  sub_1CF9E6978();
  v49, v50, v51, v52, v53, v54, v55, v56;
  v57 = __fp_log_fork();

  *(v34 + 16) = v57;
  v58 = swift_allocObject();
  *(v58 + 16) = v28;
  *(v58 + 24) = v34;
  *(v58 + 32) = v29;
  *(v58 + 40) = v36;
  *(v58 + 48) = v37;
  *(v58 + 56) = v38;
  *(v58 + 64) = sub_1CF902D8C;
  *(v58 + 72) = v30;
  v82 = sub_1CF2B9F54;
  v83 = v58;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = sub_1CEFCA444;
  v81 = &block_descriptor_2424;
  v59 = _Block_copy(&aBlock);
  v73 = v33;

  v60 = v29;

  v61 = v74;
  sub_1CF9E63F8();
  v77 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  v62 = v75;
  v63 = v69;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v59);
  (*(v68 + 8))(v62, v63);
  (*(v67 + 8))(v61, v76);

  v64 = v70;
  v65 = fpfs_adopt_log();
}

id _s18FileProviderDaemon20FPDDomainFPFSBackendC21registerXPCActivitiesyyFZ_0()
{
  v0 = sub_1CF9E6118();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v5 = sub_1CF9E6108();
  v6 = sub_1CF9E7288();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1CEFC7000, v5, v6, "registering xpc activities", v7, 2u);
    MEMORY[0x1D386CDC0](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  if (qword_1EDEAD4D8 != -1)
  {
    swift_once();
  }

  [qword_1EDEBBC10 ping];
  if (qword_1EDEAC5D0 != -1)
  {
    swift_once();
  }

  [qword_1EDEBBAB8 ping];
  if (qword_1EDEA5178 != -1)
  {
    swift_once();
  }

  [qword_1EDEBB778 ping];
  if (qword_1EDEACC50 != -1)
  {
    swift_once();
  }

  [qword_1EDEBBB28 ping];
  if (qword_1EDEAC220[0] != -1)
  {
    swift_once();
  }

  [qword_1EDEBBA80 ping];
  if (qword_1EDEAC3C8 != -1)
  {
    swift_once();
  }

  [qword_1EDEBBA88 ping];
  if (qword_1EDEA5DA0 != -1)
  {
    swift_once();
  }

  [qword_1EDEBB830 ping];
  if (qword_1EDEADB60 != -1)
  {
    swift_once();
  }

  [qword_1EDEBBD10 ping];
  if (qword_1EDEACD48 != -1)
  {
    swift_once();
  }

  [qword_1EDEBBBF8 ping];
  if (qword_1EDEA5A98 != -1)
  {
    swift_once();
  }

  return [qword_1EDEBB818 ping];
}

void sub_1CF8F0650(void *a1, char a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  if (a2 != -1)
  {
    sub_1CF481340(a1, (a2 & 1), a3, a4, a5, a6, a7, a8);
  }
}

void sub_1CF8F067C(char *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = 1;
  if ((*(v2 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_invalidated) & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_invalidated) = 1;
    if ((*(v2 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started) & 1) == 0)
    {
      v4 = a1;
      dispatch_group_leave(*(v2 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup));
      a1 = v4;
    }

    v3 = 0;
  }

  *a1 = v3;
}

double sub_1CF8F0788()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = ((v3 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 8);
  v7 = *(v0 + v4);
  v8 = v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_1CF850240(v0 + v2, v5, v6, v7, v9, v10);
}

double sub_1CF8F0894(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF85A228(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, v1 + v5, *(v1 + ((v5 + 39) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v5 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

double sub_1CF8F095C(uint64_t a1)
{
  v3 = *(type metadata accessor for Signpost(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_1CF85FD5C(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_1CF8F0A30(uint64_t a1)
{
  v3 = *(type metadata accessor for Signpost(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_1CF9E5A58() - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v5);
  v10 = *(v1 + v5 + 8);
  v11 = (v1 + ((v5 + *(v6 + 80) + 16) & ~*(v6 + 80)));

  return sub_1CF861890(a1, v7, v8, v1 + v4, v9, v10, v11);
}

void sub_1CF8F0B4C(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 19) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 11) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1 + v5;
  v9 = *(v1 + v6);
  v10 = *v8;
  v11 = *(v8 + 8);
  v12 = *(v1 + v7);
  v13 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1CF8651E8(a1, v1 + v4, v10, v11, v9, v12, v13);
}

void *sub_1CF8F0F1C@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

void sub_1CF8F0FE0(char a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_beginAccess();
  *(v4 + 16) = a1;
  dispatch_group_leave(v3);
}

unint64_t sub_1CF8F10A4(uint64_t a1, int a2, unint64_t a3, char *a4, void (*a5)(id), uint64_t a6, void *a7, void *a8, unint64_t a9)
{
  v148 = a3;
  LODWORD(v147) = a2;
  v152 = a1;
  v139 = sub_1CF9E6118();
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v140 = &v138 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E63A8();
  v145 = *(v15 - 8);
  v146 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v143 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_1CF9E6448();
  v142 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v141 = &v138 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_1CF9E5A58();
  v18 = *(v150 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v20 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v138 - v22;
  v24 = swift_allocObject();
  v151 = a5;
  v24[2] = a5;
  v24[3] = a6;
  v24[4] = a7;
  v24[5] = a8;
  v149 = a8;
  v155 = v24;
  v24[6] = a9;
  v25 = *&a4[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID];

  v26 = a7;
  sub_1CEFD09A0(a9);
  v156 = a6;

  v27 = v26;
  v153 = a9;
  sub_1CEFD09A0(a9);
  v28 = sub_1CEFCE64C();
  v154 = a4;
  v36 = v140;
  if (!*v28->tree)
  {
    v47 = v25;
    v48 = v27;
    v28, v29, v30, v31, v32, v33, v34, v35;
    v38 = v150;
    goto LABEL_8;
  }

  v37 = v28;
  v38 = v150;
  (*(v18 + 16))(v23, v28 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v150);
  v37, v39, v40, v41, v42, v43, v44, v45;
  if ((sub_1CF9E59A8() & 1) == 0)
  {
    v49 = v23;
    v47 = v25;
    v48 = v27;
    (*(v18 + 8))(v49, v38);
LABEL_8:
    (*(v18 + 16))(v20, v152, v38);
    v50 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v51 = swift_allocObject();
    v52 = v155;
    *(v51 + 16) = sub_1CF8F9E7C;
    *(v51 + 24) = v52;
    (*(v18 + 32))(v51 + v50, v20, v38);
    v53 = v51 + ((v50 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
    v54 = v148;
    *v53 = v148;
    *(v53 + 8) = v147 & 1;
    v152 = v51;
    v55 = v47;
    *(v51 + ((v50 + v19 + 23) & 0xFFFFFFFFFFFFFFF8)) = v47;
    v56 = swift_allocObject();
    v57 = v156;
    v56[2] = v151;
    v56[3] = v57;
    v58 = v149;
    v56[4] = v48;
    v56[5] = v58;
    v59 = v153;
    v56[6] = v153;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_1CF903388;
    *(v60 + 24) = v56;
    v150 = v60;
    Strong = swift_unknownObjectWeakLoadStrong();

    v62 = v48;
    sub_1CEFD09A0(v59);

    v63 = v62;
    sub_1CEFD09A0(v59);

    sub_1CEFD09A0(v54);
    v64 = v55;
    v149 = v56;

    if (Strong)
    {
      if ([Strong unableToStartup])
      {
        v65 = sub_1CF8403B4();

        v66 = v63;
        sub_1CEFD09A0(v59);
        v151(v65);
        sub_1CEFD0A98(v59);

LABEL_16:

        sub_1CEFD0A98(v59);

        return sub_1CEFD0A98(v59);
      }
    }

    v151 = v63;
    v67 = v154;
    if ((v154[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started] & 1) == 0)
    {
      v68 = swift_unknownObjectWeakLoadStrong();
      if (v68)
      {
        v69 = v68;
        v70 = [v68 serialQueue];

        v162 = nullsub_1;
        v163 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v159 = 1107296256;
        v160 = sub_1CEFCA444;
        v161 = &block_descriptor_2279;
        v71 = _Block_copy(&aBlock);
        v72 = v141;
        sub_1CF9E63F8();
        v157 = MEMORY[0x1E69E7CC0];
        sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
        sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
        v73 = v143;
        v74 = v146;
        sub_1CF9E77B8();
        MEMORY[0x1D3869630](0, v72, v73, v71);
        _Block_release(v71);

        (*(v145 + 8))(v73, v74);
        (*(v142 + 8))(v72, v144);
      }
    }

    v148 = *&v67[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup];
    v75 = *&v67[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
    v76 = *&v67[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
    v77 = swift_allocObject();
    v77[2] = v67;
    v77[3] = sub_1CF8F9E94;
    v77[4] = v150;
    v77[5] = sub_1CF8F9E80;
    v77[6] = v152;
    v78 = v67;

    v79 = v75;
    v154 = fpfs_adopt_log();
    v80 = swift_allocObject();
    aBlock = sub_1CF9E73C8();
    v159 = v81;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v82 = sub_1CF9E7988();
    v84 = v83;
    MEMORY[0x1D3868CC0](v82);
    v84, v85, v86, v87, v88, v89, v90, v91;
    v92 = v159;
    sub_1CF9E6978();
    v92, v93, v94, v95, v96, v97, v98, v99;
    v100 = __fp_log_fork();

    *(v80 + 16) = v100;
    v101 = swift_allocObject();
    *(v101 + 16) = v75;
    *(v101 + 24) = v80;
    *(v101 + 32) = v76;
    *(v101 + 40) = "itemID(for:requireProviderItemID:userRequest:completionHandler:)";
    *(v101 + 48) = 64;
    *(v101 + 56) = 2;
    *(v101 + 64) = sub_1CF902D8C;
    *(v101 + 72) = v77;
    v162 = sub_1CF2B9F54;
    v163 = v101;
    aBlock = MEMORY[0x1E69E9820];
    v159 = 1107296256;
    v160 = sub_1CEFCA444;
    v161 = &block_descriptor_2291;
    v102 = _Block_copy(&aBlock);
    v147 = v79;

    v103 = v76;

    v104 = v141;
    sub_1CF9E63F8();
    v157 = MEMORY[0x1E69E7CC0];
    sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
    v105 = v143;
    v106 = v146;
    sub_1CF9E77B8();
    sub_1CF9E7308();
    _Block_release(v102);
    (*(v145 + 8))(v105, v106);
    (*(v142 + 8))(v104, v144);

    v107 = v154;
    Strong = fpfs_adopt_log();

    v59 = v153;
    v63 = v151;
    goto LABEL_16;
  }

  v46 = v23;
  if (*&a4[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs] || a4[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_invalidated] == 1)
  {
    v47 = v25;
    v48 = v27;
    (*(v18 + 8))(v46, v38);
    goto LABEL_8;
  }

  v109 = fpfs_current_or_default_log();
  v110 = v36;
  sub_1CF9E6128();
  v111 = v148;
  sub_1CEFD09A0(v148);
  v112 = sub_1CF9E6108();
  v113 = sub_1CF9E7298();
  sub_1CEFD0A98(v111);
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    aBlock = v115;
    *v114 = 136446210;
    v116 = sub_1CEFD11AC(v111);
    v118 = v117;
    v119 = sub_1CEFD0DF0(v116, v117, &aBlock);
    v118, v120, v121, v122, v123, v124, v125, v126;
    *(v114 + 4) = v119;
    _os_log_impl(&dword_1CEFC7000, v112, v113, "Going through fast-path for the rootItem at startup for %{public}s", v114, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v115);
    MEMORY[0x1D386CDC0](v115, -1, -1);
    MEMORY[0x1D386CDC0](v114, -1, -1);

    (*(v138 + 8))(v140, v139);
  }

  else
  {

    (*(v138 + 8))(v110, v139);
  }

  v59 = v153;
  v127 = v151;
  v128 = v46;
  v129 = sub_1CF75C4E8(*MEMORY[0x1E6967258], 1);
  v130 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:v25 itemIdentifier:v129];

  v131 = swift_allocObject();
  v132 = v156;
  *(v131 + 16) = v127;
  *(v131 + 24) = v132;
  v133 = swift_allocObject();
  v133[2] = v127;
  v133[3] = v132;
  v134 = v149;
  v133[4] = v130;
  v133[5] = v134;
  v133[6] = v59;
  v135 = v130;
  swift_retain_n();
  v136 = v135;
  sub_1CEFD09A0(v59);
  v137 = v136;
  sub_1CEFD4024("uploadLocalVersionOfItem(at:policy:request:completionHandler:)", 62, 2, sub_1CF90324C, v131, sub_1CF8F9EC4, v133);

  (*(v18 + 8))(v128, v150);

  return sub_1CEFD0A98(v59);
}

void sub_1CF8F1EA0(void *a1, uint64_t a2, uint64_t a3, char *a4, void (**a5)(void, void, void))
{
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  _Block_copy(a5);
  v15 = [a1 searchQuery];
  if (v15)
  {
    v16 = v15;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      v19 = [Strong extensionBackend];
      v20 = swift_allocObject();
      v20[2] = sub_1CF8F75E0;
      v20[3] = v14;
      v20[4] = a2;
      v20[5] = a3;
      v20[6] = a4;
      v20[7] = v16;
      aBlock[4] = sub_1CF90336C;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CF03FCFC;
      aBlock[3] = &block_descriptor_1523;
      v21 = _Block_copy(aBlock);

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v22 = a4;
      v23 = v16;

      [v19 enumerateWithSettings:a1 lifetimeExtender:a2 observer:a3 completionHandler:v21];

      _Block_release(v21);

      swift_unknownObjectRelease();
    }

    else
    {
      v53 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v54 = sub_1CF9E6108();
      v55 = sub_1CF9E72A8();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_1CEFC7000, v54, v55, "Missing domain in enumerateWithSettings for search", v56, 2u);
        MEMORY[0x1D386CDC0](v56, -1, -1);
      }

      (*(v11 + 8))(v13, v10);
      v57 = FPNotSupportedError();
      if (v57)
      {
        v58 = sub_1CF9E57E8();
      }

      else
      {
        v58 = 0;
      }

      (a5)[2](a5, 0, v58);
    }

    return;
  }

  v78 = [a1 enumeratedItemID];
  v24 = [v78 identifier];
  v25 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v27 = v26;
  v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v30 = v29;
  if (v25 == v28 && v27 == v29)
  {

    v27, v59, v60, v61, v62, v63, v64, v65;
    v30, v66, v67, v68, v69, v70, v71, v72;
  }

  else
  {
    v32 = sub_1CF9E8048();

    v27, v33, v34, v35, v36, v37, v38, v39;
    v30, v40, v41, v42, v43, v44, v45, v46;
    if ((v32 & 1) == 0)
    {
      v47 = swift_allocObject();
      *(v47 + 16) = sub_1CF8F75E0;
      *(v47 + 24) = v14;
      v48 = swift_allocObject();
      v48[2] = sub_1CF8F75E0;
      v48[3] = v14;
      v49 = v78;
      v48[4] = a1;
      v48[5] = v49;
      v48[6] = a2;
      v48[7] = a3;
      v48[8] = a4;
      v50 = swift_allocObject();
      *(v50 + 16) = sub_1CF90325C;
      *(v50 + 24) = v47;
      swift_retain_n();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      a4;
      v51 = a1;
      v52 = v49;

      sub_1CEFD4024("enumerate(with:lifetimeExtender:observer:completionHandler:)", 60, 2, sub_1CF903280, v50, sub_1CF9032C8, v48);

      return;
    }
  }

  v73 = FPNotSupportedError();
  if (v73)
  {
    v74 = sub_1CF9E57E8();
  }

  else
  {
    v74 = 0;
  }

  v75 = a5[2];
  v77 = v74;
  v75(a5, 0);

  v76 = v77;
}

void *sub_1CF8F2468(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v87[30] = *MEMORY[0x1E69E9840];
  v8 = sub_1CF9E6938();
  MEMORY[0x1EEE9AC00](v8 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5060, &qword_1CFA052D0);
  swift_dynamicCastClassUnconditional();
  v9 = sub_1CF4AF818(3);
  if (!v4)
  {
    v10 = v9;
    swift_dynamicCastClassUnconditional();
    v85 = sub_1CF4AF818(501);
    swift_dynamicCastClassUnconditional();
    v83 = sub_1CF4AF818(2);
    swift_dynamicCastClassUnconditional();
    v81 = sub_1CF4AF818(1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5070, &qword_1CFA18208);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CF9FC330;
    *(inited + 32) = 0xD000000000000023;
    *(inited + 40) = 0x80000001CFA5EE00;
    v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1CF5174A4(2);
    v14 = v13;

    *(inited + 48) = v14;
    *(inited + 56) = 0xD00000000000001FLL;
    *(inited + 64) = 0x80000001CFA5EE30;
    v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1CF5174A4(2);
    v17 = v16;

    *(inited + 72) = v17;
    *(inited + 80) = 0xD000000000000023;
    *(inited + 88) = 0x80000001CFA5EE50;
    v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1CF5174A4(2);
    v20 = v19;

    *(inited + 96) = v20;
    *(inited + 104) = 0xD000000000000018;
    *(inited + 112) = 0x80000001CFA5EE80;
    v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1CF5174A4(2);
    v23 = v22;

    *(inited + 120) = v23;
    v86 = sub_1CF4E44D8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5078, &qword_1CFA18210);
    swift_arrayDestroy();
    swift_dynamicCastClassUnconditional();
    v84 = sub_1CF4AF268(a2, a3, a4);
    swift_dynamicCastClassUnconditional();
    v82 = sub_1CF4AF520(a2, a3, a4);
    swift_dynamicCastClassUnconditional();
    v25 = sub_1CF4AF4EC(a2, a3, a4);
    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_1CF9FC3C0;
    *(v26 + 32) = 0xD00000000000002DLL;
    *(v26 + 40) = 0x80000001CFA5EEA0;
    v27 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1CF5174A4(2);
    v29 = v28;

    *(v26 + 48) = v29;
    *(v26 + 56) = 0xD000000000000022;
    *(v26 + 64) = 0x80000001CFA5EED0;
    v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1CF5174A4(2);
    v32 = v31;

    *(v26 + 72) = v32;
    *(v26 + 80) = 0xD000000000000034;
    *(v26 + 88) = 0x80000001CFA5EF00;
    v33 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1CF5174A4(2);
    v35 = v34;

    *(v26 + 96) = v35;
    v36 = sub_1CF4E44D8(v26);
    swift_setDeallocating();
    swift_arrayDestroy();
    v37 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5080, &qword_1CFA18218);
    v38 = sub_1CF9E6618();
    v86, v39, v40, v41, v42, v43, v44, v45;
    v87[0] = 0;
    v46 = [v37 dataWithJSONObject:v38 options:0 error:v87];

    v47 = v87[0];
    if (v46)
    {
      v55 = sub_1CF9E5B88();
      v57 = v56;

      sub_1CF9E6918();
      a2 = sub_1CF9E68D8();
      v59 = v58;
      sub_1CEFE4714(v55, v57);
      v60 = sub_1CF9E6618();
      v36, v61, v62, v63, v64, v65, v66, v67;
      v87[0] = 0;
      v68 = [v37 dataWithJSONObject:v60 options:0 error:v87];

      v69 = v87[0];
      if (v68)
      {
        v77 = sub_1CF9E5B88();
        v79 = v78;

        sub_1CF9E6918();
        sub_1CF9E68D8();
        sub_1CEFE4714(v77, v79);
        return a2;
      }

      v80 = v69;
      v59, v70, v71, v72, v73, v74, v75, v76;
      sub_1CF9E57F8();
    }

    else
    {
      a2 = v47;
      v36, v48, v49, v50, v51, v52, v53, v54;
      sub_1CF9E57F8();
    }

    swift_willThrow();
  }

  return a2;
}

void _s18FileProviderDaemon20FPDDomainFPFSBackendC14forceIngestion2aty10Foundation3URLV_tF_0(uint64_t a1)
{
  v2 = sub_1CF9E53C8();
  v99 = *(v2 - 8);
  v100 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1CF9E5A58();
  v5 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v7 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E6118();
  v103 = *(v8 - 8);
  v104 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v98 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v97 - v11;
  v101 = a1;
  sub_1CF9E5A18();
  v14 = v13;
  v113 = 0;
  v114 = 1;
  v112 = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = &v113;
  *(v15 + 24) = sub_1CF891A4C;
  *(v15 + 32) = 0;
  *(v15 + 40) = &v112;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1CF1B7F70;
  *(v16 + 24) = v15;
  v110 = sub_1CF50EB9C;
  v111 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v107 = 1107296256;
  v108 = sub_1CF005DF8;
  v109 = &block_descriptor_4332;
  v17 = _Block_copy(&aBlock);

  sub_1CF9E6978();
  v18 = fpfs_openat();

  _Block_release(v17);

  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v27 = v112;
  if (v112)
  {
LABEL_3:
    swift_willThrow();
    v14, v28, v29, v30, v31, v32, v33, v34;
    v35 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v36 = v102;
    (*(v5 + 16))(v7, v101, v102);
    v37 = sub_1CF9E6108();
    v38 = sub_1CF9E72A8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock = v40;
      *v39 = 136315138;
      sub_1CEFCCCA4(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v41 = sub_1CF9E7F98();
      v42 = v36;
      v44 = v43;
      (*(v5 + 8))(v7, v42);
      v45 = sub_1CEFD0DF0(v41, v44, &aBlock);
      v44, v46, v47, v48, v49, v50, v51, v52;
      *(v39 + 4) = v45;
      _os_log_impl(&dword_1CEFC7000, v37, v38, "can't force ingestion of item at %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1D386CDC0](v40, -1, -1);
      MEMORY[0x1D386CDC0](v39, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v36);
    }

    (*(v103 + 8))(v12, v104);
    return;
  }

  if ((v18 & 0x80000000) == 0)
  {
    if ((v114 & 1) == 0)
    {
      v14, v20, v21, v22, v23, v24, v25, v26;
      return;
    }

    goto LABEL_19;
  }

  if (MEMORY[0x1D38683F0](v19))
  {
    if (MEMORY[0x1D38683F0]() == 9939394)
    {
      v27 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
    }

    else
    {
      MEMORY[0x1D38683F0]();
      v53 = sub_1CF9E6138();
      if ((v53 & 0x100000000) != 0)
      {
        LODWORD(aBlock) = 22;
      }

      else
      {
        LODWORD(aBlock) = v53;
      }

      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      v54 = v100;
      sub_1CF9E57D8();
      v27 = sub_1CF9E53A8();
      (*(v99 + 8))(v4, v54);
    }

    goto LABEL_3;
  }

LABEL_20:
  aBlock = 0;
  v107 = 0xE000000000000000;
  sub_1CF9E7948();
  v107, v55, v56, v57, v58, v59, v60, v61;
  aBlock = 0xD00000000000001ALL;
  v107 = 0x80000001CFA2DF30;
  v105 = v18;
  v62 = sub_1CF9E7F98();
  v64 = v63;
  MEMORY[0x1D3868CC0](v62);
  v64, v65, v66, v67, v68, v69, v70, v71;
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v72 = aBlock;
  v73 = v107;
  v74 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v75 = sub_1CF9E6108();
  v76 = sub_1CF9E72B8();
  v73, v77, v78, v79, v80, v81, v82, v83;
  if (os_log_type_enabled(v75, v76))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    aBlock = v85;
    *v84 = 136315650;
    v86 = sub_1CF9E7988();
    v88 = v87;
    v89 = sub_1CEFD0DF0(v86, v87, &aBlock);
    v88, v90, v91, v92, v93, v94, v95, v96;
    *(v84 + 4) = v89;
    *(v84 + 12) = 2048;
    *(v84 + 14) = 315;
    *(v84 + 22) = 2080;
    *(v84 + 24) = sub_1CEFD0DF0(v72, v73, &aBlock);
    _os_log_impl(&dword_1CEFC7000, v75, v76, "[ASSERT] ‼️  %s:%lu: %s", v84, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v85, -1, -1);
    MEMORY[0x1D386CDC0](v84, -1, -1);
  }

  (*(v103 + 8))(v98, v104);
  sub_1CF9E7B68();
  __break(1u);
}

uint64_t sub_1CF8F37DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CF0264D8;

  return sub_1CF8D40EC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1CF8F38BC(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1CF0264D8;

  return sub_1CF8D6330(a1, v5, v6, v7, v8, v1 + v4, v10, v11);
}

void sub_1CF8F3A1C(uint64_t a1)
{
  v3 = sub_1CF9E5A58();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (a1 + 32);
    v12 = (v7 + 8);
    while (1)
    {
      v13 = *v11;
      v14 = [v13 knownFolder];
      sub_1CF9E59D8();

      v15 = [v13 logicalLocation];
      sub_1CF9E59D8();

      sub_1CF7A41CC();
      if (v1)
      {
        break;
      }

      v16 = *v12;
      (*v12)(v5, v3);
      v16(v9, v3);
      v11 += 2;
      if (!--v10)
      {
        return;
      }
    }

    v17 = *v12;
    (*v12)(v5, v3);
    v17(v9, v3);
  }
}

void sub_1CF8F3BF0(uint64_t a1, void *a2, char *a3, _TtC18FileProviderDaemon8FSTester *a4, void *a5)
{
  v56 = a5;
  v58 = a2;
  v8 = sub_1CF9E64A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for VFSFileTree(0);
  v12 = *(swift_dynamicCastClassUnconditional() + 216);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v13 = v12;
  LOBYTE(v12) = sub_1CF9E64D8();
  v14 = (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  [*(swift_dynamicCastClassUnconditional() + 232) suspend];
  [*(swift_dynamicCastClassUnconditional() + 248) suspend];
  sub_1CF8F3A1C(a4);
  if (v5)
  {
    goto LABEL_6;
  }

  v14 = objc_sync_enter(a3);
  if (v14)
  {
LABEL_8:
    MEMORY[0x1EEE9AC00](v14);
    *(&v55 - 2) = a3;

    a4, v41, v42, v43, v44, v45, v46, v47;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v55 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  a3[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_urlsAreInTransientState] = 0;
  v21 = &a3[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___cachedURLs];
  v22 = *&a3[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___cachedURLs];
  *v21 = 0;
  v23 = v21[8];
  v21[8] = -1;
  sub_1CF8F0650(v22, v23, v15, v16, v17, v18, v19, v20);
  v24 = objc_sync_exit(a3);
  if (v24)
  {
    MEMORY[0x1EEE9AC00](v24);
    *(&v55 - 2) = a3;

    a4, v48, v49, v50, v51, v52, v53, v54;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v55 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  swift_dynamicCastClassUnconditional();

  v25 = sub_1CEFCE64C();
  sub_1CF261A18(v25);

  v25, v26, v27, v28, v29, v30, v31, v32;
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_4084;
  v33 = _Block_copy(aBlock);
  [v58 didRefreshRootURLsWithCompletionHandler_];
  _Block_release(v33);
LABEL_6:
  [*(swift_dynamicCastClassUnconditional() + 232) resume];
  [*(swift_dynamicCastClassUnconditional() + 248) resume];
  a4, v34, v35, v36, v37, v38, v39, v40;
}

uint64_t sub_1CF8F4034(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v188 = &v185 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v193 = &v185 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v189 = (&v185 - v16);
  v192 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v200 = &v185 - v19;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
  MEMORY[0x1EEE9AC00](v186);
  v187 = &v185 - v20;
  v21 = sub_1CF9E6118();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v196 = &v185 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v185 - v25;
  v201 = *(a2 + 16);
  v191 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
  v27 = swift_allocObject();
  *(v27 + 2) = a1;
  *(v27 + 3) = a4;
  v199 = v27;
  *(v27 + 4) = a5;

  v28 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a3);

  sub_1CEFD09A0(a3);
  v29 = sub_1CF9E6108();
  v30 = sub_1CF9E7298();
  v31 = os_log_type_enabled(v29, v30);
  v194 = a1;
  v197 = v22;
  v198 = v21;
  if (v31)
  {
    v185 = v13;
    v32 = swift_slowAlloc();
    v190 = swift_slowAlloc();
    v202[0] = v190;
    *v32 = 136315394;
    v33 = swift_beginAccess();
    v34 = *(a1 + 32);
    v35 = *(a1 + 40);
    if (*(a1 + 41))
    {
      v36 = NSFileProviderItemIdentifier.description.getter(v34);
      v38 = v37;
      sub_1CEFD0994(v34, v35, 1);
    }

    else
    {
      v204 = *(a1 + 32);
      v205 = v35;
      v36 = VFSItemID.description.getter(v33);
      v38 = v40;
    }

    v41 = sub_1CEFD0DF0(v36, v38, v202);
    v38, v42, v43, v44, v45, v46, v47, v48;
    *(v32 + 4) = v41;
    *(v32 + 12) = 2080;
    v49 = sub_1CEFD11AC(a3);
    v51 = v50;
    sub_1CEFD0A98(a3);
    sub_1CEFD0A98(a3);
    v52 = sub_1CEFD0DF0(v49, v51, v202);
    v51, v53, v54, v55, v56, v57, v58, v59;
    *(v32 + 14) = v52;
    _os_log_impl(&dword_1CEFC7000, v29, v30, "Request to materialize content of itemID %s reason %s", v32, 0x16u);
    v60 = v190;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v60, -1, -1);
    MEMORY[0x1D386CDC0](v32, -1, -1);

    v190 = *(v197 + 8);
    v190(v26, v198);
    v39 = v200;
    v13 = v185;
  }

  else
  {
    sub_1CEFD0A98(a3);
    sub_1CEFD0A98(a3);

    v190 = *(v22 + 8);
    v190(v26, v21);
    v39 = v200;
  }

  LODWORD(v185) = (a3 >> 58) & 0x3C | (a3 >> 1) & 3;
  if (v185 == 2)
  {
    v61 = swift_projectBox();
    v62 = v187;
    sub_1CEFCCBDC(v61, v187, &unk_1EC4C4F40, qword_1CFA0F4C0);
    *(v62 + 8), v63, v64, v65, v66, v67, v68, v69;
    v70 = v186;
    v71 = *(v186 + 48);

    v72 = *(v62 + *(v70 + 80));
    v73 = sub_1CF9E5A58();
    (*(*(v73 - 8) + 8))(v62 + v71, v73);
  }

  else
  {
    v72 = 0;
  }

  v74 = v188;
  sub_1CEFCCBDC(v201 + qword_1EDEBBC18, v188, &qword_1EC4BFB10, &unk_1CFA12AD0);
  v75 = type metadata accessor for TelemetrySignposter(0);
  v76 = (*(*(v75 - 8) + 48))(v74, 1, v75);
  v195 = a3;
  if (v76 == 1)
  {
    sub_1CEFCCC44(v74, &qword_1EC4BFB10, &unk_1CFA12AD0);
    v77 = 1;
  }

  else
  {
    sub_1CF519DE8(v72, v39);
    sub_1CEFD5338(v74, type metadata accessor for TelemetrySignposter);
    v77 = 0;
  }

  v78 = type metadata accessor for TelemetrySignpost(0);
  (*(*(v78 - 8) + 56))(v39, v77, 1, v78);
  v79 = v189;
  sub_1CEFCCBDC(v39, v189, qword_1EC4C1588, &unk_1CFA0A260);
  v80 = *(v13 + 80);
  v81 = (v80 + 16) & ~v80;
  v82 = v192;
  v83 = &v192[v81 + 7] & 0xFFFFFFFFFFFFFFF8;
  v84 = swift_allocObject();
  sub_1CEFE55D0(v79, v84 + v81, qword_1EC4C1588, &unk_1CFA0A260);
  v85 = (v84 + v83);
  v189 = sub_1CF8FDA38;
  v86 = v199;
  *v85 = sub_1CF8FDA38;
  v85[1] = v86;
  v87 = v193;
  sub_1CEFCCBDC(v39, v193, qword_1EC4C1588, &unk_1CFA0A260);
  v88 = (v80 + 24) & ~v80;
  v188 = &v82[v88 + 7] & 0xFFFFFFFFFFFFFFF8;
  v89 = &v82[v88 + 31] & 0xFFFFFFFFFFFFFFF8;
  v192 = ((v89 + 15) & 0xFFFFFFFFFFFFFFF8);
  v90 = (v89 + 31) & 0xFFFFFFFFFFFFFFF8;
  v91 = (v90 + 15) & 0xFFFFFFFFFFFFFFF8;
  v92 = (v91 + 15) & 0xFFFFFFFFFFFFFFF8;
  v93 = swift_allocObject();
  v94 = v195;
  *(v93 + 16) = v195;
  sub_1CEFE55D0(v87, v93 + v88, qword_1EC4C1588, &unk_1CFA0A260);
  v95 = v93 + v188;
  *v95 = v189;
  *(v95 + 8) = v86;
  *(v95 + 16) = 0;
  *(v93 + v89) = v201;
  v96 = &v192[v93];
  v97 = v194;
  *v96 = v194;
  v96[8] = 0;
  *(v93 + v90) = 0;
  v98 = v191;
  *(v93 + v91) = v191;
  v99 = v97;
  v100 = v93 + v92;
  *v100 = sub_1CF903314;
  *(v100 + 8) = v84;
  *(v100 + 16) = 1;
  v101 = objc_allocWithZone(MEMORY[0x1E696AE38]);

  sub_1CEFD09A0(v94);

  v192 = v98;
  v193 = v84;
  v102 = v94;

  v191 = [v101 init];
  v103 = swift_allocObject();
  *(v103 + 2) = sub_1CF903318;
  *(v103 + 3) = v93;
  v189 = v103;
  *(v103 + 4) = v94;
  sub_1CEFD09A0(v94);

  sub_1CEFD09A0(v94);
  v188 = v93;

  v104 = fpfs_current_or_default_log();
  v105 = v196;
  sub_1CF9E6128();
  sub_1CEFD09A0(v94);

  sub_1CEFD09A0(v94);
  v106 = sub_1CF9E6108();
  v107 = sub_1CF9E7298();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v203 = v109;
    *v108 = 136315906;
    v110 = swift_beginAccess();
    v111 = *(v99 + 32);
    v112 = *(v99 + 40);
    if (*(v99 + 41))
    {
      v113 = NSFileProviderItemIdentifier.description.getter(v111);
      v115 = v114;
      sub_1CEFD0994(v111, v112, 1);
    }

    else
    {
      v204 = *(v99 + 32);
      v205 = v112;
      v113 = VFSItemID.description.getter(v110);
      v115 = v117;
    }

    v118 = sub_1CEFD0DF0(v113, v115, &v203);
    v115, v119, v120, v121, v122, v123, v124, v125;
    *(v108 + 4) = v118;
    *(v108 + 12) = 2080;
    *(v108 + 14) = sub_1CEFD0DF0(0x74616761706F7270, 0xED000053466F5465, &v203);
    *(v108 + 22) = 2080;
    v126 = sub_1CEFD11AC(v102);
    v128 = v127;
    sub_1CEFD0A98(v102);
    sub_1CEFD0A98(v102);
    v129 = sub_1CEFD0DF0(v126, v128, &v203);
    v128, v130, v131, v132, v133, v134, v135, v136;
    *(v108 + 24) = v129;
    *(v108 + 32) = 2048;
    *(v108 + 34) = 0;
    _os_log_impl(&dword_1CEFC7000, v106, v107, "Lookup itemID %s with behavior %s request %s iteration %ld", v108, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v109, -1, -1);
    MEMORY[0x1D386CDC0](v108, -1, -1);

    v116 = v196;
  }

  else
  {
    sub_1CEFD0A98(v94);
    sub_1CEFD0A98(v94);

    v116 = v105;
  }

  v190(v116, v198);
  swift_beginAccess();
  v137 = *(v99 + 32);
  v138 = *(v99 + 40);
  if (*(v99 + 41))
  {
    v139 = qword_1EDEA34B0;
    v140 = v137;
    if (v139 != -1)
    {
      swift_once();
    }

    v141 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v143 = v142;
    v145 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v151 = v144;
    if (v141 == v145 && v143 == v144)
    {
      v143, v144, v145, v146, v147, v148, v149, v150;
      v151, v152, v153, v154, v155, v156, v157, v158;
      sub_1CEFD0994(v137, v138, 1);
LABEL_27:
      sub_1CF90CAC8(v102, sub_1CF796A0C, v189);
      v159 = v191;
      goto LABEL_33;
    }

    v160 = sub_1CF9E8048();
    v143, v161, v162, v163, v164, v165, v166, v167;
    v151, v168, v169, v170, v171, v172, v173, v174;
    sub_1CEFD0994(v137, v138, 1);
    if (v160)
    {
      goto LABEL_27;
    }
  }

  else if (!v137 && v138 == 2)
  {
    goto LABEL_27;
  }

  if (v185 == 30)
  {
    v175 = *((v102 & 0xFFFFFFFFFFFFFF9) + 0x10);
    v176 = v175;
  }

  else
  {
    v177 = swift_allocObject();
    *(v177 + 16) = v102;
    v176 = v177 | 0x7000000000000004;
    v175 = v102;
  }

  sub_1CEFD09A0(v175);
  v178 = swift_allocObject();
  v179 = v189;
  *(v178 + 16) = sub_1CF796A0C;
  *(v178 + 24) = v179;
  v180 = v201;
  *(v178 + 32) = v201;
  *(v178 + 40) = 1;
  *(v178 + 48) = v102;
  *(v178 + 56) = v99;
  *(v178 + 64) = 0;
  v159 = v191;
  *(v178 + 72) = v191;
  *(v178 + 80) = 0;
  v181 = swift_allocObject();
  *(v181 + 16) = v99;
  *(v181 + 24) = v180;
  *(v181 + 32) = 0;
  *(v181 + 40) = sub_1CF796A90;
  *(v181 + 48) = v178;
  *(v181 + 56) = v176;
  v182 = swift_allocObject();
  *(v182 + 16) = sub_1CF796A90;
  *(v182 + 24) = v178;
  swift_retain_n();

  sub_1CEFD09A0(v102);

  v183 = v159;
  sub_1CEFD09A0(v176);
  sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v182, sub_1CF796A9C, v181);

  sub_1CEFD0A98(v176);
LABEL_33:

  sub_1CEFD0A98(v102);

  return sub_1CEFCCC44(v200, qword_1EC4C1588, &unk_1CFA0A260);
}

void sub_1CF8F4EC0(void (**a1)(void, void, void), void *a2, char *a3, void (**a4)(void, void, void))
{
  v40 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v13 = sub_1CF9E5A58();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = *(v14 + 16);
    v39 = Strong;
    v19(&v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v40, v13);
    v20 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v21 = (v15 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = a2;
    v38 = a3;
    v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
    v40 = a4;
    v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    v24 = v17;
    v25 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    (*(v14 + 32))(&v26[v20], v16, v13);
    v27 = &v26[v21];
    *v27 = sub_1CF326F78;
    v27[1] = v24;
    v28 = v39;
    *&v26[v22] = v39;
    v30 = v37;
    v29 = v38;
    *&v26[v23] = v38;
    a4 = v40;
    *&v26[v25] = v30;
    swift_retain_n();
    _Block_copy(a4);

    _Block_copy(a4);
    v31 = v28;
    v32 = v29;
    v33 = v30;
    sub_1CF8EE40C("trashItem(at:request:completionHandler:)", 40, 2, sub_1CF9032A0, v26, v32, a4);
  }

  else
  {
    (*(v14 + 56))(v12, 1, 1, v13);
    _Block_copy(a4);
    _Block_copy(a4);
    v34 = sub_1CF8403B4();
    sub_1CEFCCBDC(v12, v9, &unk_1EC4BE310, qword_1CF9FCBE0);
    if ((*(v14 + 48))(v9, 1, v13) == 1)
    {
      v35 = 0;
    }

    else
    {
      v35 = sub_1CF9E5928();
      (*(v14 + 8))(v9, v13);
    }

    v36 = sub_1CF9E57E8();
    (a4)[2](a4, v35, v36);

    sub_1CEFCCC44(v12, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  _Block_release(a4);
}

uint64_t sub_1CF8F5280(uint64_t a1, char a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E7CC0];
  if ((a2 & 1) == 0)
  {
    v3 = [objc_allocWithZone(FPGSStorageManager) init];
    v4 = sub_1CF9E5928();
    *&v19[0] = 0;
    v5 = [v3 permanentStorageForItemAtURL:v4 allocateIfNone:0 error:v19];

    if (v5)
    {
      v6 = *MEMORY[0x1E69A0798];
      v7 = *&v19[0];
      v8 = [v5 enumeratorForAdditionsInNameSpace:v6 withOptions:0 withoutOptions:0 ordering:0];
      v14 = v2;
      if (v8)
      {
        v9 = v8;
        while (1)
        {
          if ([v9 nextObject])
          {
            sub_1CF9E7728();
            swift_unknownObjectRelease();
          }

          else
          {
            v15 = 0u;
            v16 = 0u;
          }

          v17 = v15;
          v18 = v16;
          if (!*(&v16 + 1))
          {
            break;
          }

          sub_1CEFE9EB8(&v17, v19);
          sub_1CEFD1104(v19, &v17);
          sub_1CEFD57E0(0, &qword_1EC4C4FE0, 0x1E69A07B0);
          if (swift_dynamicCast())
          {
            v10 = v15;
            MEMORY[0x1D3868FA0]();
            if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1CF9E6D88();
            }

            sub_1CF9E6DE8();

            __swift_destroy_boxed_opaque_existential_1(v19);
            v2 = v14;
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(v19);
          }
        }
      }

      else
      {

        v17 = 0u;
        v18 = 0u;
      }

      sub_1CEFCCC44(&v17, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    }

    else
    {
      v11 = *&v19[0];
      v12 = sub_1CF9E57F8();

      swift_willThrow();
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v2;
}

double sub_1CF8F5530(void *a1, void *a2, void (**a3)(const void *, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v95 = a3;
  _Block_copy(a3);
  v7 = a1;
  v8 = sub_1CF94C0CC(a1);
  v9 = sub_1CF9E57E8();
  v10 = [v9 userInfo];

  v11 = sub_1CF9E6638();
  if (*v11->tree && (v19 = sub_1CEFE4328(0xD00000000000001FLL, 0x80000001CFA5C3B0), (v12 & 1) != 0))
  {
    sub_1CEFD1104(*v11[1].tester + 32 * v19, v98);
    v11, v20, v21, v22, v23, v24, v25, v26;
    if (swift_dynamicCast())
    {
      v27 = v97;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v11, v12, v13, v14, v15, v16, v17, v18;
    v27 = 0;
  }

  v28 = sub_1CF9E57E8();
  v29 = [v28 userInfo];

  v30 = sub_1CF9E6638();
  v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v39 = v32;
  if (*v30->tree)
  {
    v40 = v8;
    v41 = a2;
    v42 = sub_1CEFE4328(v31, v32);
    v44 = v43;
    v39, v43, v45, v46, v47, v48, v49, v50;
    if (v44)
    {
      sub_1CEFD1104(*v30[1].tester + 32 * v42, v98);
      v30, v58, v59, v60, v61, v62, v63, v64;
      v65 = swift_dynamicCast();
      if (v65)
      {
        v73 = v96;
      }

      else
      {
        v73 = 0;
      }

      if (v65)
      {
        v74 = v97;
      }

      else
      {
        v74 = 0;
      }
    }

    else
    {
      v30, v51, v52, v53, v54, v55, v56, v57;
      v73 = 0;
      v74 = 0;
    }

    a2 = v41;
    v8 = v40;
    if (v40)
    {
LABEL_20:
      if (!v27)
      {
        v90 = 0;
        goto LABEL_23;
      }

LABEL_21:
      v82 = sub_1CF9E6888();
      v27, v83, v84, v85, v86, v87, v88, v89;
      v90 = sub_1CEFD4E9C(v82);

LABEL_23:
      v91 = swift_allocObject();
      *(v91 + 16) = sub_1CF067718;
      *(v91 + 24) = v6;
      *(v91 + 32) = a2;
      *(v91 + 40) = v8;
      *(v91 + 48) = v73;
      *(v91 + 56) = v74;
      *(v91 + 64) = v90;
      *(v91 + 72) = a1;
      v92 = a1;

      v93 = a2;
      sub_1CEFD4024("signalErrorResolved(_:completionHandler:)", 41, 2, nullsub_1, 0, sub_1CF903290, v91);

      goto LABEL_24;
    }
  }

  else
  {
    v30, v32, v33, v34, v35, v36, v37, v38;
    v39, v75, v76, v77, v78, v79, v80, v81;
    v73 = 0;
    v74 = 0;
    if (v8)
    {
      goto LABEL_20;
    }
  }

  if (v27)
  {
    goto LABEL_21;
  }

  v74, v66, v67, v68, v69, v70, v71, v72;
  v95[2](v95, 0);
LABEL_24:

  return result;
}

void sub_1CF8F58BC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v58 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v50 = v6;
  while (v9)
  {
    v53 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v57[0] = *v17;
    v57[1] = v18;
    v57[2] = v19;

    v20 = v19;
    a2(&v54, v57);

    v18, v21, v22, v23, v24, v25, v26, v27;
    v28 = v54;
    v29 = v55;
    v30 = v56;
    v31 = *v58;
    v39 = sub_1CEFE4328(v54, v55);
    v40 = v31[2];
    v41 = (v32 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      goto LABEL_25;
    }

    v43 = v32;
    if (v31[3] >= v42)
    {
      if ((v53 & 1) == 0)
      {
        sub_1CF7CF818();
      }
    }

    else
    {
      sub_1CF7C3E7C(v42, v53 & 1);
      v44 = sub_1CEFE4328(v28, v29);
      if ((v43 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v39 = v44;
    }

    v9 &= v9 - 1;
    v45 = *v58;
    if (v43)
    {
      v29, v32, v33, v34, v35, v36, v37, v38;
      v12 = v45[7];
      v13 = *(v12 + 8 * v39);
      *(v12 + 8 * v39) = v30;
    }

    else
    {
      v45[(v39 >> 6) + 8] |= 1 << v39;
      v46 = (v45[6] + 16 * v39);
      *v46 = v28;
      v46[1] = v29;
      *(v45[7] + 8 * v39) = v30;
      v47 = v45[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_26;
      }

      v45[2] = v49;
    }

    a4 = 1;
    v11 = v14;
    v6 = v50;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_1CEFCB59C(a1);

      return;
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v53 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1CF9E8108();
  __break(1u);
}

uint64_t sub_1CF8F5B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 152) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  sub_1CF9E5248();
  *(v6 + 56) = swift_task_alloc();
  v7 = sub_1CF9E5268();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  v8 = sub_1CF9E6118();
  *(v6 + 88) = v8;
  *(v6 + 96) = *(v8 - 8);
  *(v6 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CF8F5C98, 0, 0);
}

uint64_t sub_1CF8F5C98()
{
  v1 = [*(v0 + 16) provider];
  *(v0 + 112) = v1;
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = [v1 descriptor];
    v4 = [v3 localizedName];

    v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v7 = v6;

    v8 = [v2 providerDomainID];
    type metadata accessor for FPFeedbackUIManager();
    v9 = swift_allocObject();
    *(v0 + 120) = v9;
    v9[2] = v5;
    v9[3] = v7;
    v9[4] = v8;
    v10 = sub_1CF9E57E8();
    *(v0 + 128) = v10;
    v11 = swift_task_alloc();
    *(v0 + 136) = v11;
    *v11 = v0;
    v11[1] = sub_1CF8F5FC0;
    v12 = *(v0 + 152);
    v13 = *(v0 + 48);
    v15 = *(v0 + 24);
    v14 = *(v0 + 32);

    return sub_1CF36F790(v15, v14, v10, v13, v12, 0);
  }

  else
  {
    v17 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v18 = sub_1CF9E6108();
    v19 = sub_1CF9E72A8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1CEFC7000, v18, v19, "No provider for domain in launchFeedback", v20, 2u);
      MEMORY[0x1D386CDC0](v20, -1, -1);
    }

    v22 = *(v0 + 96);
    v21 = *(v0 + 104);
    v24 = *(v0 + 80);
    v23 = *(v0 + 88);
    v25 = *(v0 + 64);
    v26 = *(v0 + 72);

    (*(v22 + 8))(v21, v23);
    sub_1CF9E5108();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    (*(v26 + 8))(v24, v25);
    swift_willThrow();

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_1CF8F5FC0()
{
  v2 = *(*v1 + 128);
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1CF8F6180;
  }

  else
  {
    v3 = sub_1CF8F60EC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1CF8F60EC()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CF8F6180()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1CF8F6288(uint64_t a1)
{
  sub_1CF8F687C(319, qword_1EDEA5D18, type metadata accessor for FPDDomainFPFSBackend.PendingSetState, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1CF8F687C(319, &qword_1EDEAFE20, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1CF8F6D08(319, &qword_1EDEAEE00, MEMORY[0x1E69E6530], MEMORY[0x1E695C070]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1CF8F687C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1CF8F68F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CF8F693C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_18FileProviderDaemon20FPDDomainFPFSBackendC11StartStatusO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1CF8F69A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1CF8F6A04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1CF8F6A54(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

void sub_1CF8F6AA4(uint64_t a1)
{
  sub_1CF9E5D98();
  if (v1 <= 0x3F)
  {
    sub_1CF9E5CF8();
    if (v2 <= 0x3F)
    {
      sub_1CF8F687C(319, &qword_1EDEAFE00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1CF8F6C3C(319);
        if (v4 <= 0x3F)
        {
          sub_1CF8F687C(319, &qword_1EDEA3768, type metadata accessor for NSFileProviderItemIdentifier, MEMORY[0x1E69E62F8]);
          if (v5 <= 0x3F)
          {
            sub_1CF8F6CA0(319);
            if (v6 <= 0x3F)
            {
              sub_1CF8F6D08(319, &unk_1EDEAED90, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1CF8F6C3C(uint64_t a1)
{
  if (!qword_1EDEA37C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C4BD0, &unk_1CF9FE500);
    v1 = sub_1CF9E6E58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDEA37C8);
    }
  }
}

void sub_1CF8F6CA0(uint64_t a1)
{
  if (!qword_1EDEAB570)
  {
    sub_1CEFD57E0(255, &qword_1EDEAB580, 0x1E69674E0);
    v1 = sub_1CF9E75D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDEAB570);
    }
  }
}

void sub_1CF8F6D08(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1CF8F6DF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1CF9E5A58();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  v14 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager);
  v15 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_diagnosticsDirectoryURL;
  swift_beginAccess();
  sub_1CEFCCBDC(v14 + v15, v6, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1CEFCCC44(v6, &unk_1EC4BE310, qword_1CF9FCBE0);
    v16 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:0];
    v17 = sub_1CF9E57E8();
    (*(a2 + 16))(a2, 0, v17);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    sub_1CEFD57E0(0, &unk_1EDEA35A0, 0x1E6967408);
    (*(v8 + 16))(v10, v13, v7);
    v18 = sub_1CF02BFF8(v10, 0);
    (*(a2 + 16))(a2, v18, 0);

    (*(v8 + 8))(v13, v7);
  }
}

uint64_t sub_1CF8F70FC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1CF0264D8;

  return sub_1CF8D6EA8(v2, v3, v4, v5, v6, v8, v7);
}

uint64_t sub_1CF8F71D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1CF0264D8;

  return sub_1CF8DC5D4(v2, v3, v4);
}

uint64_t sub_1CF8F7298(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CF0264D8;

  return sub_1CF8DC6BC(a1, v4, v5, v6);
}

uint64_t sub_1CF8F7364(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CF0264D8;

  return sub_1CF025B7C(a1, v4);
}

uint64_t objectdestroy_700Tm()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroy_689Tm()
{
  swift_unknownObjectRelease();

  sub_1CEFE4714(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t objectdestroy_679Tm(void (*a1)(void))
{

  a1(*(v1 + 48));

  return swift_deallocObject();
}

uint64_t objectdestroy_643Tm()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF8F76D0(void *a1, uint64_t a2)
{
  v5 = *(sub_1CF9E5A58() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_1CF8CBCB0(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_1CF8F7758(void *a1, uint64_t a2)
{
  v5 = *(sub_1CF9E5A58() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v2[5];
  v11 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF8C5180(a1, a2, v7, v8, v9, v10, v2 + v6, v11);
}

uint64_t sub_1CF8F780C(void *a1, uint64_t a2)
{
  v5 = *(sub_1CF9E5A58() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF8C0C4C(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_499Tm()
{

  *(v0 + 56), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t objectdestroy_478Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_460Tm()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), v5, v6, v7, v8, v9, v10, v11;

  return swift_deallocObject();
}

void sub_1CF8F7B6C(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v1 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v6);
  v13 = *(v1 + v7);
  v14 = *(v1 + v8);
  v15 = *(v1 + v8 + 8);
  v16 = (v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
  v17 = *v16;
  v18 = v16[1];

  sub_1CF8B44F4(a1, v1 + v4, v10, v11, v12, v13, v17, v18, v14, v15);
}

uint64_t objectdestroy_457Tm()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroy_451Tm()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_1CF8F7E10(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = v7[1];

  sub_1CF8AEEB0(a1, v1 + v4, v9, v10, v8);
}