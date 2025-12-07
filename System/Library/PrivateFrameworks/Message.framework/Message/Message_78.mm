unint64_t sub_1B0CDAC90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  *&v18 = a2;
  *(&v18 + 1) = a3;
  *&v19 = a1;
  *(&v19 + 1) = sub_1B0E434F8();
  *&v20 = v7;
  *(&v20 + 1) = v8;
  v21 = 0;
  sub_1B0E43548();
  if (*(&v19 + 1))
  {
    v9 = sub_1B0E43508();
    do
    {
      v26 = v18;
      v27 = v19;
      v28 = v20;
      v29 = v21;
      result = sub_1B0E43528();
      if (v11)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v12 = *(a4 + 8);
      if (result >= *(v12 + 16))
      {
        goto LABEL_18;
      }

      v13 = *(v12 + 8 * result + 32);
      sub_1B0E46C28();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      SectionSpecifier.Part.hash(into:)(&v17, v13);
      v14 = sub_1B0E46CB8();

      v15 = 1 << *a2;
      if (__OFSUB__(v15, 1))
      {
        goto LABEL_19;
      }

      v16 = (v15 - 1) & v14;
      if (v6 >= v9)
      {
        if (v16 < v9)
        {
          goto LABEL_3;
        }
      }

      else if (v16 >= v9)
      {
        goto LABEL_13;
      }

      if (v6 >= v16)
      {
LABEL_13:
        v22 = v18;
        v23 = v19;
        v24 = v20;
        v25 = v21;
        sub_1B0E43528();
        v6 = v23;
        sub_1B0E43518();
      }

LABEL_3:
      sub_1B0E43548();
    }

    while (*(&v19 + 1));
  }

  return sub_1B0E43518();
}

uint64_t sub_1B0CDAE84(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_58;
  }

  if (v6 >= 1)
  {
    v10 = result;
    v11 = *(a3 + 16);
    if (result < (v11 - v6) / 2)
    {
      result = MEMORY[0x1B2725670](*a4 & 0x3FLL);
      if (result / 3 > v10)
      {
        if (v10 < 0)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v11 < v10)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v12 = a3;

        if (v10)
        {
          v13 = 0;
          while (1)
          {
            v14 = *(v12 + 32 + 8 * v13);
            sub_1B0E46C28();
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            SectionSpecifier.Part.hash(into:)(&v46, v14);
            result = sub_1B0E46CB8();
            v15 = 1 << *a4;
            v16 = __OFSUB__(v15, 1);
            v17 = v15 - 1;
            if (v16)
            {
              break;
            }

            v18 = v17 & result;
            v19 = sub_1B0E434F8();
            *&v46 = a4;
            *(&v46 + 1) = a5;
            *&v47 = v18;
            *(&v47 + 1) = v19;
            *&v48 = v20;
            *(&v48 + 1) = v21;
            v49 = 0;
            while (*(&v47 + 1))
            {
              v50 = v46;
              v51 = v47;
              v52 = v48;
              v53 = v49;
              v22 = sub_1B0E43528();
              if ((v23 & 1) == 0 && v22 == v13)
              {
                break;
              }

              sub_1B0E43548();
            }

            result = v13 + v6;
            if (__OFADD__(v13, v6))
            {
              goto LABEL_55;
            }

            ++v13;
            sub_1B0E43538();

            if (v13 == v10)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_17:

        goto LABEL_18;
      }

      *&v50 = a4;
      *(&v50 + 1) = a5;
      *&v51 = 0;
      *(&v51 + 1) = sub_1B0E434F8();
      *&v52 = v29;
      *(&v52 + 1) = v30;
      v53 = 0;
      v46 = v50;
      v47 = v51;
      v48 = v52;
      v49 = v53;
      v31 = sub_1B0E43528();
      if ((v32 & 1) != 0 || v31 >= v10)
      {
LABEL_33:
        result = sub_1B0E43548();
LABEL_18:
        v24 = a4[1];
        if (__OFSUB__(v24 >> 6, v6))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v25 = 1 << *a4;
        v16 = __OFSUB__(v25, 1);
        v26 = v25 - 1;
        if (v16)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v27 = (v26 & (((v24 >> 6) - v6) >> 63)) + (v24 >> 6) - v6;
        if (v27 < v26)
        {
          v26 = 0;
        }

        a4[1] = a4[1] & 0x3FLL | ((v27 - v26) << 6);
        return result;
      }

      if (!__OFADD__(v31, v6))
      {
        sub_1B0E43538();
        goto LABEL_33;
      }

      __break(1u);
LABEL_39:
      *&v50 = a4;
      *(&v50 + 1) = a5;
      *&v51 = 0;
      *(&v51 + 1) = sub_1B0E434F8();
      *&v52 = v33;
      *(&v52 + 1) = v34;
      v53 = 0;
      v46 = v50;
      v47 = v51;
      v48 = v52;
      v49 = v53;
      v35 = sub_1B0E43528();
      if ((v36 & 1) == 0 && v35 >= v5)
      {
        v16 = __OFSUB__(v35, v6);
        result = v35 - v6;
        if (v16)
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        sub_1B0E43538();
      }

      return sub_1B0E43548();
    }

    v5 = a2;
    v28 = v11 - a2;
    if (__OFSUB__(v11, a2))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    result = MEMORY[0x1B2725670](*a4 & 0x3FLL);
    if (v28 >= result / 3)
    {
      goto LABEL_39;
    }

    if (v11 < v5)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v5 < 0)
    {
LABEL_65:
      __break(1u);
      return result;
    }

    if (v11 != v5)
    {
      do
      {
        v37 = *(a3 + 32 + 8 * v5);
        sub_1B0E46C28();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        SectionSpecifier.Part.hash(into:)(&v46, v37);
        result = sub_1B0E46CB8();
        v38 = 1 << *a4;
        v16 = __OFSUB__(v38, 1);
        v39 = v38 - 1;
        if (v16)
        {
          goto LABEL_57;
        }

        v40 = v39 & result;
        v41 = sub_1B0E434F8();
        *&v46 = a4;
        *(&v46 + 1) = a5;
        *&v47 = v40;
        *(&v47 + 1) = v41;
        *&v48 = v42;
        *(&v48 + 1) = v43;
        v49 = 0;
        while (*(&v47 + 1))
        {
          v50 = v46;
          v51 = v47;
          v52 = v48;
          v53 = v49;
          v44 = sub_1B0E43528();
          if ((v45 & 1) == 0 && v44 == v5)
          {
            break;
          }

          sub_1B0E43548();
        }

        sub_1B0E43538();
      }

      while (++v5 != v11);
    }
  }

  return result;
}

uint64_t sub_1B0CDB2F4(uint64_t a1, uint64_t a2)
{
  if ((static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (v6 <= 2)
  {
    if (*(a1 + 24))
    {
      if (v6 == 1)
      {
        if (v9 != 1)
        {
          return 0;
        }

        goto LABEL_16;
      }

      if (v9 == 2)
      {
LABEL_16:
        if ((v4 != v7 || v5 != v8) && (sub_1B0E46A78() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_27;
      }
    }

    else if (!*(a2 + 24))
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v6 == 3)
  {
    if (v9 != 3)
    {
      return 0;
    }

    goto LABEL_16;
  }

  if (v6 == 4)
  {
    if (v9 != 4)
    {
      return 0;
    }

    goto LABEL_16;
  }

  if (v4 | v5)
  {
    if (v9 != 5 || v7 != 1 || v8)
    {
      return 0;
    }
  }

  else if (v9 != 5 || v8 | v7)
  {
    return 0;
  }

LABEL_27:
  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v10 = *(a1 + 40);
  v11 = *(a2 + 40);

  return sub_1B0CCACB0(v10, v11);
}

uint64_t sub_1B0CDB414(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      if (a6 == 3)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_1B0E46A78();
      }
    }

    else if (a3 == 4)
    {
      if (a6 == 4)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_1B0E46A78();
      }
    }

    else if (a1 | a2)
    {
      if (a6 == 5 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 5 && !(a5 | a4))
    {
      return 1;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_1B0E46A78();
      }
    }

    else if (a6 == 2)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_1B0E46A78();
    }
  }

  else if (!a6)
  {
    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    return sub_1B0E46A78();
  }

  return 0;
}

unint64_t *sub_1B0CDB548(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = 0;
  v8 = 0;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  while (v11)
  {
    v12 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v13 = v12 | (v8 << 6);
LABEL_11:
    v16 = *(*(a3 + 48) + 8 * v13);
    v17 = *(a4 + 16);
    if (v17 >= *(v16 + 16))
    {
LABEL_15:
      *(v6 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_18:

        return sub_1B0CDA264(v6, a2, v7, a3);
      }
    }

    else
    {
      v18 = (v16 + 32);
      v19 = (a4 + 32);
      while (v17)
      {
        v20 = *v19++;
        result = v20;
        v21 = *v18++;
        --v17;
        if (v21 != result)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v14 = v8;
  while (1)
  {
    v8 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v8 >= ((v9 + 63) >> 6))
    {
      goto LABEL_18;
    }

    v15 = *(a3 + 56 + 8 * v8);
    ++v14;
    if (v15)
    {
      v11 = (v15 - 1) & v15;
      v13 = __clz(__rbit64(v15)) | (v8 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CDB688(uint64_t a1, uint64_t a2)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  v8 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v5 > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    MEMORY[0x1EEE9AC00](v8);
    bzero(v29 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = 0;
    v10 = 0;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v15 = v14 | (v10 << 6);
LABEL_12:
      v18 = *(*(a1 + 48) + 8 * v15);
      v19 = *(a2 + 16);
      if (v19 >= *(v18 + 16))
      {
LABEL_16:
        *(v29 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v15;
        if (__OFADD__(v9++, 1))
        {
          __break(1u);
LABEL_19:
          v26 = sub_1B0CDA264((v29 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, v9, a1);
          goto LABEL_20;
        }
      }

      else
      {
        v20 = (v18 + 32);
        v21 = (a2 + 32);
        while (v19)
        {
          v23 = *v21++;
          v22 = v23;
          v24 = *v20++;
          --v19;
          if (v24 != v22)
          {
            goto LABEL_16;
          }
        }
      }
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= ((v11 + 63) >> 6))
      {
        goto LABEL_19;
      }

      v17 = *(a1 + 56 + 8 * v10);
      ++v16;
      if (v17)
      {
        v13 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v10 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v28 = swift_slowAlloc();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v26 = sub_1B0CDA1C0(v28, v6, a1, a2, sub_1B0CDB548);

  MEMORY[0x1B272C230](v28, -1, -1);
LABEL_20:

  return v26;
}

void sub_1B0CDB900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v5 = a1;
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;
  v28 = a3 + 32;
  v25 = a4 + 32;
  v11 = 0;
  v12 = 0;
  v24 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  while (v9)
  {
LABEL_11:
    v16 = *(*(v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v9)))));
    v17 = *(a3 + 16);
    if (v4)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v18 = sub_1B0CD9CEC(v16, v28, v17, (v4 + 16), v4 + 32);
      v20 = v19;

      if ((v20 & 1) == 0)
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_26;
        }

        goto LABEL_21;
      }

      v13 = 0;
    }

    else
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v17)
      {
        v18 = 0;
        while (1)
        {
          v21 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v22 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v21, v16);

          if (v22)
          {
            break;
          }

          if (v17 == ++v18)
          {
            goto LABEL_19;
          }
        }

        v4 = a2;
        v5 = v24;
LABEL_21:
        if (v18 >= *(a4 + 16))
        {
          goto LABEL_27;
        }

        v13 = *(v25 + 48 * v18 + 32);
        goto LABEL_5;
      }

LABEL_19:

      v13 = 0;
      v4 = a2;
      v5 = v24;
    }

LABEL_5:
    v9 &= v9 - 1;
    v14 = __OFADD__(v12, v13);
    v12 += v13;
    if (v14)
    {
      goto LABEL_25;
    }
  }

  while (1)
  {
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return;
    }

    v9 = *(v6 + 8 * v15);
    ++v11;
    if (v9)
    {
      v11 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_1B0CDBB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v8 = a1;
  v9 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v48 = MEMORY[0x1E69E7CC0];
    sub_1B0CDEAF0(0, v9, 0);
    v11 = v48;
    v12 = v8 + 56;
    result = sub_1B0E460B8();
    v13 = result;
    v14 = 0;
    v37 = v8 + 64;
    v38 = v9;
    v39 = v8 + 56;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(v8 + 32))
    {
      v16 = v13 >> 6;
      if ((*(v12 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_22;
      }

      v43 = v14;
      v45 = *(v8 + 36);
      v17 = *(*(v8 + 48) + 8 * v13);
      swift_bridgeObjectRetain_n();
      v18 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v19 = sub_1B0CDB688(v18, v17);
      v44 = v7;

      v47 = v19;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0CC91C4(&v46, v17);

      v20 = v47;
      v21 = v8;

      sub_1B0CDB900(v20, a4, a5, a6);
      v23 = v22;
      v25 = v24;

      v26 = v11;
      v48 = v11;
      v27 = *(v11 + 16);
      v28 = *(v26 + 24);
      if (v27 >= v28 >> 1)
      {
        result = sub_1B0CDEAF0((v28 > 1), v27 + 1, 1);
        v26 = v48;
      }

      *(v26 + 16) = v27 + 1;
      v29 = v26 + 16 * v27;
      *(v29 + 32) = v23;
      *(v29 + 40) = v25;
      v15 = 1 << *(v21 + 32);
      if (v13 >= v15)
      {
        goto LABEL_23;
      }

      v8 = v21;
      v12 = v39;
      v30 = *(v39 + 8 * v16);
      if ((v30 & (1 << v13)) == 0)
      {
        goto LABEL_24;
      }

      v11 = v26;
      if (v45 != *(v8 + 36))
      {
        goto LABEL_25;
      }

      v31 = v30 & (-2 << (v13 & 0x3F));
      if (v31)
      {
        v15 = __clz(__rbit64(v31)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v7 = v44;
      }

      else
      {
        v32 = v16 << 6;
        v33 = v16 + 1;
        v34 = (v37 + 8 * v16);
        v7 = v44;
        while (v33 < (v15 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            result = sub_1B0425168(v13, v45, 0);
            v15 = __clz(__rbit64(v35)) + v32;
            goto LABEL_4;
          }
        }

        result = sub_1B0425168(v13, v45, 0);
      }

LABEL_4:
      v14 = v43 + 1;
      v13 = v15;
      if (v43 + 1 == v38)
      {
        return v11;
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

uint64_t sub_1B0CDBDE4(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v23 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  sub_1B0CD9FE0(v3, 0);
  sub_1B0CDEAD0(0, v3, 0);
  v19 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v18 = a1 + 32;
  while (1)
  {
    v5 = v18 + 56 * v4;
    v7 = *v5;
    v6 = *(v5 + 8);
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
    v21 = *(v5 + 32);
    v20 = *(v5 + 40);
    v10 = v23 + 32;
    v11 = *(v23 + 16);
    v22 = *(v5 + 48);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0CDD108(v6, v8, v9);
    if (v11)
    {
      break;
    }

LABEL_6:
    sub_1B0CD98E4(v7, v11);
    v16 = *(v2 + 16);
    v15 = *(v2 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1B0CDEAD0((v15 > 1), v16 + 1, 1);
    }

    ++v4;
    *(v2 + 16) = v16 + 1;
    v17 = v2 + 48 * v16;
    *(v17 + 32) = v6;
    *(v17 + 40) = v8;
    *(v17 + 48) = v9;
    *(v17 + 56) = v21;
    *(v17 + 64) = v20;
    *(v17 + 72) = v22;
    if (v4 == v19)
    {
      return 0;
    }
  }

  while (1)
  {
    v12 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v13 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v12, v7);

    if (v13)
    {
      break;
    }

    v10 += 8;
    if (!--v11)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void sub_1B0CDC00C(uint64_t a1, uint64_t a2, void (*a3)(__int128 *__return_ptr, uint64_t, __int128 *))
{
  v5 = *(a2 + 16);
  v33 = MEMORY[0x1E69E7CC0];
  sub_1B0CDEAB0(0, v5, 0);
  v6 = v33;
  if (v5)
  {
    v7 = (a1 + 32);
    v8 = *(a1 + 16);

    v9 = (a2 + 72);
    while (v8)
    {
      v10 = *v7;
      v11 = *(v9 - 4);
      v13 = *(v9 - 2);
      v14 = *(v9 - 8);
      v15 = *v9;
      v16 = *(v9 - 24);
      *&v34 = *(v9 - 5);
      v12 = v34;
      *(&v34 + 1) = v11;
      v35 = v16;
      v36 = v13;
      v37 = v14;
      v38 = v15;
      v40 = v16;
      v39 = v34;
      v41 = v15;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0CDD108(v12, v11, v16);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      a3(&v27, v10, &v34);
      v26 = v27;
      v17 = v28;
      v18 = v29;
      v25 = v30;
      v23 = v32;
      v24 = v31;

      sub_1B0CDD138(&v39);
      sub_1B039E440(&v41);
      v33 = v6;
      v20 = *(v6 + 16);
      v19 = *(v6 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1B0CDEAB0((v19 > 1), v20 + 1, 1);
        v6 = v33;
      }

      *(v6 + 16) = v20 + 1;
      v21 = v6 + 56 * v20;
      *(v21 + 32) = v26;
      *(v21 + 48) = v17;
      *(v21 + 56) = v18;
      *(v21 + 64) = v25;
      *(v21 + 72) = v24;
      *(v21 + 80) = v23;
      --v8;
      ++v7;
      v9 += 6;
      if (!--v5)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_9:
  }
}

uint64_t sub_1B0CDC1E4(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v24 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  sub_1B0CD9FE0(v3, 0);
  sub_1B0CDEA70(0, v3, 0);
  v4 = v2;
  v19 = v3;
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v20 = v4;
    v6 = a1 + 32 + 56 * v5;
    v7 = *v6;
    v9 = *(v6 + 16);
    v8 = *(v6 + 24);
    v10 = *(v6 + 32);
    v22 = *(v6 + 40);
    v11 = v24 + 32;
    v12 = *(v24 + 16);
    v23 = *(v6 + 8);
    v21 = *(v6 + 48);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0CDD108(v9, v8, v10);
    if (v12)
    {
      break;
    }

LABEL_6:
    sub_1B0CD98E4(v7, v12);
    v4 = v20;
    v17 = *(v20 + 16);
    v16 = *(v20 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1B0CDEA70((v16 > 1), v17 + 1, 1);

      v4 = v20;
    }

    else
    {
    }

    ++v5;
    *(v4 + 16) = v17 + 1;
    v18 = v4 + 48 * v17;
    *(v18 + 32) = v23;
    *(v18 + 40) = v9;
    *(v18 + 48) = v8;
    *(v18 + 56) = v10;
    *(v18 + 64) = v22;
    *(v18 + 72) = v21;
    if (v5 == v19)
    {
      return 0;
    }
  }

  while (1)
  {
    v13 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v14 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v13, v7);

    if (v14)
    {
      break;
    }

    v11 += 8;
    if (!--v12)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CDC414(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a3 + 16);
  if (!v7)
  {
    return result;
  }

  v47 = a6 + 32;
  v48 = a3 + 32;
  v41 = a7 + 32;

  v8 = 0;
  v9 = 0;
  v43 = v7;
  while (1)
  {
    v13 = v48 + 48 * v9;
    v15 = *v13;
    v14 = *(v13 + 8);
    v16 = *(v13 + 16);
    v17 = *(v13 + 24);
    if (v8)
    {
      break;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0CDD108(v14, v16, v17);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v17 == 2)
    {
      goto LABEL_16;
    }

LABEL_12:
    if (v17 == 5 && !(v16 | v14))
    {

      v8 = v15;
      goto LABEL_5;
    }

    v10 = v14;
    v11 = v16;
    v12 = v17;
LABEL_4:
    sub_1B0CDD120(v10, v11, v12);

    v8 = 0;
LABEL_5:
    if (++v9 == v7)
    {
    }
  }

  v18 = v8[2];
  if (v18 < v15[2])
  {
    v19 = 4;
    while (v18)
    {
      v20 = v8[v19];
      v21 = v15[v19++];
      --v18;
      if (v21 != v20)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_5;
  }

LABEL_11:
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0CDD108(v14, v16, v17);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  if (v17 != 2)
  {
    goto LABEL_12;
  }

LABEL_16:
  if (sub_1B0E44B98() == v14 && v16 == v22)
  {

    goto LABEL_20;
  }

  v23 = sub_1B0E46A78();

  if (v23)
  {
LABEL_20:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    goto LABEL_21;
  }

  v24 = v15[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (!v24)
  {
    goto LABEL_21;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v25 = sub_1B0CD82C4(1, v15);
  v26 = *(a6 + 16);
  if (!a5)
  {
    if (!v26)
    {
      goto LABEL_45;
    }

    v28 = 0;
    while (1)
    {
      v32 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v33 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v32, v25);

      if (v33)
      {
        break;
      }

      if (v26 == ++v28)
      {
        goto LABEL_44;
      }
    }

    v31 = v46;
    goto LABEL_35;
  }

  v28 = sub_1B0CD9CEC(v25, v47, v26, (v27 + 16), v27 + 32);
  v30 = v29;

  if (v30)
  {
LABEL_44:
    v7 = v43;
LABEL_45:

    goto LABEL_21;
  }

  v31 = v46;
  if ((v28 & 0x8000000000000000) == 0)
  {
LABEL_35:
    if (v28 >= *(a7 + 16))
    {
      goto LABEL_51;
    }

    v46 = v31;
    v34 = v41 + 48 * v28;
    v35 = *(v34 + 8);
    v36 = *(v34 + 16);
    v37 = *(v34 + 24);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0CDD108(v35, v36, v37);

    if (v37 == 4)
    {
      v38 = Media.Subtype.alternative.unsafeMutableAddressor();
      if (*v38 == v35 && v36 == v38[1])
      {

        sub_1B0CDD120(v35, v36, 4u);
      }

      else
      {
        v40 = sub_1B0E46A78();

        sub_1B0CDD120(v35, v36, 4u);

        if ((v40 & 1) == 0)
        {
          v7 = v43;
          goto LABEL_21;
        }
      }

      LOBYTE(v49) = 0;
      sub_1B0CD7020(v15, a5, a6, a7, &v49);
      v7 = v43;
      if (v49)
      {
        swift_bridgeObjectRelease_n();
        goto LABEL_22;
      }

LABEL_21:
      sub_1B0CC91C4(&v49, v15);

LABEL_22:
      v10 = v14;
      v11 = v16;
      v12 = 2;
      goto LABEL_4;
    }

    sub_1B0CDD120(v35, v36, v37);
    goto LABEL_44;
  }

  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

unint64_t *sub_1B0CDC878(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = result;
  v20 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v22 = *(*(a3 + 48) + 8 * v15);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v16 = sub_1B0CD619C(&v22, a4);

    if (v4)
    {
      return result;
    }

    if (v16)
    {
      *(v19 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_1B0CDA264(v19, a2, v20, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CDC9DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v28 = a2;
  v9 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v6 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v24 = v7;
    v26 = &v23;
    MEMORY[0x1EEE9AC00](v9);
    v25 = &v23 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v25, v8);
    v27 = 0;
    v10 = 0;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v7 = v12 & *(a1 + 56);
    v8 = (v11 + 63) >> 6;
    while (v7)
    {
      v13 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v16 = v13 | (v10 << 6);
      v29[0] = *(*(a1 + 48) + 8 * v16);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v17 = sub_1B0CD619C(v29, v28);
      if (v3)
      {

        swift_willThrow();
        goto LABEL_18;
      }

      v18 = v17;

      if (v18)
      {
        *&v25[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
LABEL_17:
          v10 = sub_1B0CDA264(v25, v24, v27, a1);
          goto LABEL_18;
        }
      }
    }

    v14 = v10;
    while (1)
    {
      v10 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
        goto LABEL_17;
      }

      v15 = *(a1 + 56 + 8 * v10);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v7 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v21 = swift_slowAlloc();
  v22 = v28;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10 = sub_1B0CDA1C0(v21, v7, a1, v22, sub_1B0CDC878);

  MEMORY[0x1B272C230](v21, -1, -1);
LABEL_18:

  return v10;
}

uint64_t sub_1B0CDCCA8(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1E69E7CD0];
  v25 = MEMORY[0x1E69E7CD0];
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = a2 + 32;
    v22 = *(a2 + 16);
    v23 = a1 + 32;
    v21 = a2 + 32;
    do
    {
      v7 = v6 + 48 * v5;
      v8 = *(v7 + 24);
      if (v8 != 4)
      {
        v10 = *v7;
        v9 = *(v7 + 8);
        v11 = *(v7 + 16);
        v12 = a1;
        v13 = *(a1 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0CDD108(v9, v11, v8);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (v13)
        {
          v14 = 0;
          while (1)
          {
            v15 = *(v23 + 8 * v14);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v16 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            if (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v16, v10))
            {

              goto LABEL_19;
            }

            v17 = *(v15 + 16);
            if (v17 < *(v10 + 16))
            {
              break;
            }

LABEL_16:
            ++v14;

            if (v14 == v13)
            {
              goto LABEL_3;
            }
          }

          v18 = 32;
          while (v17)
          {
            v19 = *(v15 + v18);
            v20 = *(v10 + v18);
            --v17;
            v18 += 8;
            if (v20 != v19)
            {
              swift_unknownObjectRelease();
              goto LABEL_16;
            }
          }

          swift_unknownObjectRelease();
LABEL_19:
          sub_1B0CC91C4(&v24, v10);

          sub_1B0CDD120(v9, v11, v8);
        }

        else
        {
LABEL_3:

          sub_1B0CDD120(v9, v11, v8);
        }

        a1 = v12;
        v6 = v21;
        v4 = v22;
      }

      ++v5;
    }

    while (v5 != v4);
    return v25;
  }

  return result;
}

uint64_t sub_1B0CDCEB0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = 0;
    v5 = (a2 + 56);
    v6 = 1;
    while (v4 < *(v3 + 16))
    {
      if (*v5 != 4 || ((v7 = *(v5 - 2), v8 = *(v5 - 1), v7 == 0x64656E676973) ? (v9 = v8 == 0xE600000000000000) : (v9 = 0), !v9 && (sub_1B0E46A78() & 1) == 0 && (v7 != 0x6574707972636E65 || v8 != 0xE900000000000064) && (result = sub_1B0E46A78(), (result & 1) == 0)))
      {
        v6 = ++v4 < v2;
        v5 += 48;
        if (v2 != v4)
        {
          continue;
        }
      }

      return v6;
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B0CDCFCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1B041D32C(0, v1, 0);
    v3 = v14;
    v4 = a1 + 32;
    do
    {
      v5 = sub_1B0CD6DC0();
      v15 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_1B041D32C((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v3 = v15;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v4 += 48;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v12 = sub_1B0E448E8();

  return v12;
}

double sub_1B0CDD108(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0CDD120(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_1B0CDD18C(uint64_t result, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    sub_1B0CDD120(result, a2, a3);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore213BodyStructureO16IMAP2PersistenceE4TreeV9MediaKindO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1B0CDD228(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0CDD270(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0CDD2B4(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t RemoteMailbox.path.setter(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  v5 = HIDWORD(a2);

  *v2 = a1;
  *(v2 + 8) = v3;
  *(v2 + 12) = v5;
  return result;
}

__n128 RemoteMailbox.status.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 65);
  result = *(v1 + 24);
  v6 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v6;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  *(a1 + 41) = v4;
  return result;
}

__n128 RemoteMailbox.status.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v2;
  result = *(a1 + 26);
  *(v1 + 50) = result;
  return result;
}

__n128 RemoteMailbox.init(path:attributes:specialUse:status:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, char a4@<W3>, _OWORD *a5@<X4>, uint64_t a6@<X8>)
{
  *&v7[7] = *a5;
  *&v7[23] = a5[1];
  *&v7[33] = *(a5 + 26);
  *(a6 + 17) = *v7;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 12) = BYTE4(a2);
  *(a6 + 14) = a3;
  *(a6 + 16) = a4;
  *(a6 + 33) = *&v7[16];
  result = *&v7[32];
  *(a6 + 49) = *&v7[32];
  *(a6 + 65) = v7[48];
  return result;
}

uint64_t sub_1B0CDD4BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s16IMAP2Persistence13RemoteMailboxV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v9) & 1;
}

uint64_t RemoteMailbox.Status.unreadMessagesCount.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t RemoteMailbox.Status.highestModificationSequence.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t RemoteMailbox.Status.init(messageCount:nextUID:uidValidity:unreadMessagesCount:highestModificationSequence:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 12) = a3;
  *(a8 + 16) = a4;
  *(a8 + 24) = a5 & 1;
  *(a8 + 32) = a6;
  *(a8 + 40) = a7 & 1;
  return result;
}

BOOL sub_1B0CDD648(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return _s16IMAP2Persistence13RemoteMailboxV6StatusV23__derived_struct_equalsySbAE_AEtFZ_0(&v5, &v7);
}

double RemoteMailbox.withStatus(_:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  *&v10[7] = *a1;
  v11[0] = *v2;
  *(v11 + 5) = *(v2 + 5);
  v5 = *(v2 + 14);
  v6 = *(v2 + 16);
  *&v10[23] = v4;
  *&v10[33] = *(a1 + 26);
  sub_1B03BB0B4(v2, &v9);
  *a2 = v11[0];
  *(a2 + 6) = *(v11 + 6);
  *(a2 + 14) = v5;
  *(a2 + 16) = v6;
  v7 = *&v10[16];
  *(a2 + 17) = *v10;
  *(a2 + 33) = v7;
  result = *&v10[32];
  *(a2 + 49) = *&v10[32];
  *(a2 + 65) = v10[48];
  return result;
}

uint64_t RemoteMailbox.Status.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B0B11B9C(a1);
  if (a1[1] & 1) != 0 || (a1[4] & 1) != 0 || (a1[5])
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v11 = 0;
    v5 = *a1;
    v7 = a1[6];
    v8 = *(a1 + 56);
    v9 = a1[10];
    v10 = *(a1 + 88);
    v6 = *(a1 + 7) | (*(a1 + 9) << 32);
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  *(a2 + 41) = v11;
  return result;
}

uint64_t RemoteMailbox.init(attributes:path:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = result;
  v6 = 0;
  v7 = 0;
  v8 = *(result + 16);
  v29 = result + 32;
  v9 = result + 40;
LABEL_2:
  v10 = (v9 + 16 * v6);
  while (1)
  {
    v11 = *(v4 + 16);
    if (v8 == v6)
    {
      break;
    }

    if (v6 >= v11)
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    ++v6;
    v12 = v10 + 2;
    v14 = *(v10 - 1);
    v13 = *v10;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    result = _s16IMAP2Persistence13RemoteMailboxV9AttributeO3nioAESg12NIOIMAPCore20D4InfoVADV_tcfC_0(v14, v13, v15);
    v10 = v12;
    if (result != 9)
    {
      if (result == 7)
      {
        v16 = 128;
      }

      else
      {
        v16 = 256;
      }

      if (result == 6)
      {
        v16 = 64;
      }

      if (result == 4)
      {
        v17 = 16;
      }

      else
      {
        v17 = 32;
      }

      if (result <= 5u)
      {
        v16 = v17;
      }

      if (result == 2)
      {
        v18 = 4;
      }

      else
      {
        v18 = 8;
      }

      if (result)
      {
        v19 = 2;
      }

      else
      {
        v19 = 1;
      }

      if (result <= 1u)
      {
        v18 = v19;
      }

      if (result <= 3u)
      {
        v16 = v18;
      }

      v7 |= v16;
      goto LABEL_2;
    }
  }

  if (v11)
  {
    v20 = 0;
    v21 = (v4 + 40);
    while (1)
    {
      v22 = *(v21 - 1);
      v23 = *v21;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result = _s16IMAP2Persistence13RemoteMailboxV10SpecialUseOyAESg12NIOIMAPCore20D4InfoV9AttributeVcfC_0(v22, v23);
      if (result != 7)
      {
        break;
      }

      ++v20;
      v21 += 2;
      if (v11 == v20)
      {
        goto LABEL_33;
      }
    }

    v11 = v20;
  }

LABEL_33:
  v24 = *(v4 + 16);
  if (v11 == v24)
  {
    v25 = 7;
    goto LABEL_37;
  }

  if (v11 >= v24)
  {
    goto LABEL_39;
  }

  v26 = (v29 + 16 * v11);
  v27 = *v26;
  v28 = v26[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = _s16IMAP2Persistence13RemoteMailboxV10SpecialUseOyAESg12NIOIMAPCore20D4InfoV9AttributeVcfC_0(v27, v28);
  v25 = result;
  if (result != 7)
  {
LABEL_37:

    *a4 = a2;
    *(a4 + 8) = a3;
    *(a4 + 12) = BYTE4(a3);
    *(a4 + 14) = v7;
    *(a4 + 16) = v25;
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 49) = 0u;
    *(a4 + 65) = 1;
    return result;
  }

LABEL_40:
  __break(1u);
  return result;
}

BOOL RemoteMailbox.isInbox.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = MailboxName.inbox.unsafeMutableAddressor();
  return (*(v3 + 2) | (*(v3 + 2) << 32)) == (v2 | (v2 << 32)) && (sub_1B04520BC(*v3, v1) & 1) != 0;
}

BOOL _s16IMAP2Persistence13RemoteMailboxV6StatusV23__derived_struct_equalsySbAE_AEtFZ_0(_BOOL8 result, uint64_t a2)
{
  if (*result != *a2 || *(a2 + 8) != *(result + 8) || *(result + 12) != *(a2 + 12))
  {
    return 0;
  }

  v2 = *(a2 + 24);
  if (*(result + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(result + 16) != *(a2 + 16))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(result + 40))
  {
    return (*(a2 + 40) & 1) != 0;
  }

  if (*(a2 + 40))
  {
    return 0;
  }

  v3 = *(result + 32);
  v4 = *(a2 + 32);
  if (((v4 | v3) & 0x8000000000000000) == 0)
  {
    return v4 == v3;
  }

  __break(1u);
  return result;
}

uint64_t _s16IMAP2Persistence13RemoteMailboxV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (!static MailboxPath.__derived_struct_equals(_:_:)(*a1, *(a1 + 8) | (*(a1 + 12) << 32), *a2, *(a2 + 8) | (*(a2 + 12) << 32)) || *(a1 + 14) != *(a2 + 14))
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (*(a1 + 16) != 7)
  {
    if (v4 == 7 || (sub_1B0CED00C() & 1) == 0)
    {
      return 0;
    }

LABEL_8:
    if (*(a1 + 65))
    {
      if ((*(a2 + 65) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(a2 + 65))
      {
        return 0;
      }

      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      v9 = *(a1 + 64);
      v10 = *(a2 + 24);
      v11 = *(a2 + 32);
      v12 = *(a2 + 40);
      v13 = *(a2 + 48);
      v14 = *(a2 + 56);
      v15 = *(a2 + 64);
      v17[0] = *(a1 + 24);
      v17[1] = v5;
      v17[2] = v6;
      v18 = v7 & 1;
      v19 = v8;
      v20 = v9 & 1;
      v21[0] = v10;
      v21[1] = v11;
      v21[2] = v12;
      v22 = v13 & 1;
      v23 = v14;
      v24 = v15 & 1;
      if (!_s16IMAP2Persistence13RemoteMailboxV6StatusV23__derived_struct_equalsySbAE_AEtFZ_0(v17, v21))
      {
        return 0;
      }
    }

    return 1;
  }

  if (v4 == 7)
  {
    goto LABEL_8;
  }

  return 0;
}

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B0CDDC10(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
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

uint64_t sub_1B0CDDC58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0CDDCBC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0CDDCDC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

uint64_t sub_1B0CDDD24(uint64_t a1, unsigned __int8 a2)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t RemoteMailbox.Attribute.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7463656C65536F6ELL;
    v6 = 0x64656B72616D6E75;
    if (a1 != 2)
    {
      v6 = 0x74736978456E6F6ELL;
    }

    if (a1)
    {
      v5 = 0x64656B72616DLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x65746F6D6572;
    v2 = 0x646C696843736168;
    if (a1 != 7)
    {
      v2 = 0x6968436F4E736168;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x697265666E496F6ELL;
    if (a1 != 4)
    {
      v3 = 0x6269726373627573;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_1B0CDE004@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s16IMAP2Persistence13RemoteMailboxV9AttributeO8rawValueAESgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1B0CDE034@<X0>(uint64_t *a1@<X8>)
{
  result = RemoteMailbox.Attribute.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B0CDE060()
{
  v1 = *v0;
  sub_1B0E46C28();
  sub_1B0CDDD24(v3, v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CDE0B0(uint64_t a1)
{
  v2 = *v1;
  sub_1B0E46C28();
  sub_1B0CDDD24(v4, v2);
  return sub_1B0E46CB8();
}

BOOL sub_1B0CDE220(_WORD *a1, unsigned __int16 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int16 *sub_1B0CDE250@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

unsigned __int16 *sub_1B0CDE27C@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

uint64_t sub_1B0CDE33C@<X0>(_WORD *a1@<X8>, uint64_t a2@<X0>)
{
  v3 = sub_1B0CDF9FC(a2);

  *a1 = v3;
  return result;
}

uint64_t RemoteMailbox.Attributes.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v18 - v10;
  v20 = v5;
  v21 = a1;
  (*(v5 + 16))(v7, a1, a2, v9);
  sub_1B0E44F08();
  v22 = a2;
  swift_getAssociatedConformanceWitness();
  for (i = 0; ; i = i | 0x100)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          sub_1B0E45E38();
          if (v23 > 4u)
          {
            break;
          }

          if (v23 == 3)
          {
            v13 = 8;
          }

          else
          {
            v13 = 16;
          }

          if (v23 == 2)
          {
            v13 = 4;
          }

          if (v23)
          {
            v14 = 2;
          }

          else
          {
            v14 = 1;
          }

          if (v23 <= 1u)
          {
            v15 = v14;
          }

          else
          {
            v15 = v13;
          }

          i = v15 | i;
        }

        if (v23 > 6u)
        {
          break;
        }

        if (v23 == 5)
        {
          v16 = 32;
        }

        else
        {
          v16 = 64;
        }

        i = v16 | i;
      }

      if (v23 != 7)
      {
        break;
      }

      i = i | 0x80;
    }

    if (v23 != 8)
    {
      break;
    }
  }

  (*(v20 + 8))(v21, v22);
  (*(v19 + 8))(v11, AssociatedTypeWitness);
  return i;
}

uint64_t RemoteMailbox.Attributes.allAttributes.getter@<X0>(__int16 a1@<W0>, void *a2@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = &unk_1F27269F0;
  a2[1] = sub_1B0CDF82C;
  a2[2] = result;
  return result;
}

uint64_t RemoteMailbox.Attributes.debugDescription.getter(__int16 a1)
{
  v18 = MEMORY[0x1E69E7CC0];
  sub_1B041D32C(0, 0, 0);
  v2 = 0;
  v3 = v18;
  v4 = 0x7463656C65536F6ELL;
  result = 0xEB0000000073726FLL;
LABEL_2:
  v6 = 0;
  if (v2 <= 9)
  {
    v7 = 9;
  }

  else
  {
    v7 = v2;
  }

  v8 = &unk_1F2726A10;
  while (v2 != v7)
  {
    v9 = v8[v2];
    if (v9 <= 3)
    {
      if (v8[v2] > 1u)
      {
        if (v9 == 2)
        {
          if ((a1 & 4) != 0)
          {
            v11 = 0xE800000000000000;
            v10 = 0x64656B72616D6E75;
            goto LABEL_34;
          }
        }

        else if ((a1 & 8) != 0)
        {
          v10 = 0x74736978456E6F6ELL;
          v11 = 0xEB00000000746E65;
          goto LABEL_34;
        }
      }

      else if (v8[v2])
      {
        if ((a1 & 2) != 0)
        {
          v11 = 0xE600000000000000;
          v10 = 0x64656B72616DLL;
          goto LABEL_34;
        }
      }

      else if (a1)
      {
        v11 = 0xE800000000000000;
        v10 = v4;
        goto LABEL_34;
      }
    }

    else if (v8[v2] <= 5u)
    {
      if (v9 == 4)
      {
        if ((a1 & 0x10) != 0)
        {
          v10 = 0x697265666E496F6ELL;
          v11 = 0xEB0000000073726FLL;
          goto LABEL_34;
        }
      }

      else if ((a1 & 0x20) != 0)
      {
        v11 = 0xEA00000000006465;
        v10 = 0x6269726373627573;
        goto LABEL_34;
      }
    }

    else if (v9 == 6)
    {
      if ((a1 & 0x40) != 0)
      {
        v11 = 0xE600000000000000;
        v10 = 0x65746F6D6572;
LABEL_34:
        v19 = v3;
        v13 = *(v3 + 16);
        v12 = *(v3 + 24);
        if (v13 >= v12 >> 1)
        {
          v16 = v4;
          sub_1B041D32C((v12 > 1), v13 + 1, 1);
          result = 0xEB0000000073726FLL;
          v4 = v16;
          v3 = v19;
        }

        v14 = v2 - 8;
        v2 = v2 - v6 + 1;
        *(v3 + 16) = v13 + 1;
        v15 = v3 + 16 * v13;
        *(v15 + 32) = v10;
        *(v15 + 40) = v11;
        if (v14 == v6)
        {
LABEL_37:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
          sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0, MEMORY[0x1E69E6310]);
          v17 = sub_1B0E448E8();

          return v17;
        }

        goto LABEL_2;
      }
    }

    else if (v9 == 7)
    {
      if ((a1 & 0x80) != 0)
      {
        v10 = 0x646C696843736168;
        v11 = 0xEB000000006E6572;
        goto LABEL_34;
      }
    }

    else if ((a1 & 0x100) != 0)
    {
      v10 = 0x6968436F4E736168;
      v11 = 0xED00006E6572646CLL;
      goto LABEL_34;
    }

    --v7;
    ++v8;
    if (v2 - 9 == --v6)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
  return result;
}

char *sub_1B0CDEA70(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0CDEB48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0CDEA90(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0CDEC68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0CDEAB0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0CDED74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0CDEAD0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0CDEEC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0CDEAF0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0CDEFE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0CDEB10(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0CDF10C(a1, a2, a3, *v3, &qword_1EB6E6288, &unk_1B0EE4E60, &type metadata for RenameRollback.Step);
  *v3 = result;
  return result;
}

char *sub_1B0CDEB48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E62A0, &qword_1B0EE4E88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0CDEC68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4520, &unk_1B0EC52B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B0CDED74(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E62A8, &qword_1B0EE4E90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E62B0, &qword_1B0EE4E98);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0CDEEC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E62B8, &unk_1B0EE4EA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0CDEFE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6298, &qword_1B0EE4E78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0CDF10C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size_0(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 1;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 5);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[32 * v11])
    {
      memmove(v16, v17, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t _s16IMAP2Persistence13RemoteMailboxV9AttributeO3nioAESg12NIOIMAPCore20D4InfoVADV_tcfC_0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = sub_1B0E44B98();
  v5 = v4;
  if (v3 == sub_1B0E44B98() && v5 == v6)
  {

LABEL_8:

    return 0;
  }

  v8 = sub_1B0E46A78();

  if (v8)
  {
    goto LABEL_8;
  }

  v10 = sub_1B0E44B98();
  v12 = v11;
  if (v10 == sub_1B0E44B98() && v12 == v13)
  {

LABEL_13:

    return 1;
  }

  v14 = sub_1B0E46A78();

  if (v14)
  {
    goto LABEL_13;
  }

  v15 = sub_1B0E44B98();
  v17 = v16;
  if (v15 == sub_1B0E44B98() && v17 == v18)
  {

LABEL_18:

    return 2;
  }

  v19 = sub_1B0E46A78();

  if (v19)
  {
    goto LABEL_18;
  }

  v20 = sub_1B0E44B98();
  v22 = v21;
  if (v20 == sub_1B0E44B98() && v22 == v23)
  {

LABEL_23:

    return 3;
  }

  v24 = sub_1B0E46A78();

  if (v24)
  {
    goto LABEL_23;
  }

  v25 = sub_1B0E44B98();
  v27 = v26;
  if (v25 == sub_1B0E44B98() && v27 == v28)
  {

LABEL_28:

    return 4;
  }

  v29 = sub_1B0E46A78();

  if (v29)
  {
    goto LABEL_28;
  }

  v30 = sub_1B0E44B98();
  v32 = v31;
  if (v30 == sub_1B0E44B98() && v32 == v33)
  {

LABEL_33:

    return 5;
  }

  v34 = sub_1B0E46A78();

  if (v34)
  {
    goto LABEL_33;
  }

  v35 = sub_1B0E44B98();
  v37 = v36;
  if (v35 == sub_1B0E44B98() && v37 == v38)
  {

LABEL_38:

    return 6;
  }

  v39 = sub_1B0E46A78();

  if (v39)
  {
    goto LABEL_38;
  }

  v40 = sub_1B0E44B98();
  v42 = v41;
  if (v40 == sub_1B0E44B98() && v42 == v43)
  {

LABEL_43:

    return 7;
  }

  v44 = sub_1B0E46A78();

  if (v44)
  {
    goto LABEL_43;
  }

  v45 = sub_1B0E44B98();
  v47 = v46;
  if (v45 == sub_1B0E44B98() && v47 == v48)
  {

    return 8;
  }

  else
  {
    v49 = sub_1B0E46A78();

    if (v49)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t _s16IMAP2Persistence13RemoteMailboxV9AttributeO8rawValueAESgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E467E8();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B0CDF838()
{
  result = qword_1EB6E6258;
  if (!qword_1EB6E6258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6258);
  }

  return result;
}

unint64_t sub_1B0CDF8D4()
{
  result = qword_1EB6E6270;
  if (!qword_1EB6E6270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6270);
  }

  return result;
}

unint64_t sub_1B0CDF930()
{
  result = qword_1EB6E6278;
  if (!qword_1EB6E6278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6278);
  }

  return result;
}

unint64_t sub_1B0CDF988()
{
  result = qword_1EB6E6280;
  if (!qword_1EB6E6280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6280);
  }

  return result;
}

uint64_t sub_1B0CDF9FC(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

void sub_1B0CDFA38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1B03A8208(0, v1, 0);
    v3 = a1 + 56;
    v4 = sub_1B0E460B8();
    v5 = 0;
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v21 = *(a1 + 36);
      v8 = *(a1 + 48) + 32 * v4;
      v9 = *(v8 + 16);
      v22 = *(v8 + 24);
      v10 = *(v23 + 16);
      v11 = *(v23 + 24);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v10 >= v11 >> 1)
      {
        sub_1B03A8208((v11 > 1), v10 + 1, 1);
      }

      *(v23 + 16) = v10 + 1;
      v12 = v23 + 16 * v10;
      *(v12 + 32) = v9;
      *(v12 + 40) = v22;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 56;
      v13 = *(a1 + 56 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 64 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_1B0425168(v4, v21, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_1B0425168(v4, v21, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
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
  }
}

uint64_t sub_1B0CDFC68(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0CE35B8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B0CE255C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B0CDFCD4(void *a1, uint64_t a2, uint64_t *a3)
{
  v3 = a1;
  v4 = a1[3];
  v35 = MEMORY[0x1E69E7CC0];
  result = sub_1B0CDEB10(0, v4 & ~(v4 >> 63), 0);
  v6 = v3[4];
  v7 = v3[3] + v6;
  if (v3[2] < v7)
  {
    v7 = v3[2];
  }

  v32 = v3;
  v33 = v3[4];
  v34 = v7;
  if (v4 < 0)
  {
    goto LABEL_21;
  }

  if (!v4)
  {
    v8 = v6;
    goto LABEL_17;
  }

  while (v6 != v34)
  {
LABEL_8:
    v8 = v6 + 1;
    v33 = v6 + 1;
    v9 = &v3[4 * v6];
    v10 = v9[7];
    v11 = *(v9 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_bridgeObjectRetain_n();
    v12 = sub_1B0CE1608(v10, v11, a2, a3);
    v29 = v13;

    v15 = *(v35 + 16);
    v14 = *(v35 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1B0CDEB10((v14 > 1), v15 + 1, 1);
    }

    *(v35 + 16) = v15 + 1;
    v16 = v35 + 32 * v15;
    *(v16 + 32) = v10;
    *(v16 + 40) = v11;
    *(v16 + 48) = v12;
    *(v16 + 56) = v29;
    ++v6;
    if (!--v4)
    {
      while (1)
      {
LABEL_17:
        if (v8 == v34)
        {
          v28 = sub_1B0CE46C4();
          v17 = v32;
          if ((v28 & 1) == 0)
          {

            return v35;
          }
        }

        else
        {
          v17 = v32;
        }

        v18 = v33;
        v8 = ++v33;
        v19 = &v17[4 * v18];
        v20 = v19[7];
        v21 = *(v19 + 16);
        swift_bridgeObjectRetain_n();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v22 = sub_1B0CE1608(v20, v21, a2, a3);
        v24 = v23;

        v26 = *(v35 + 16);
        v25 = *(v35 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1B0CDEB10((v25 > 1), v26 + 1, 1);
        }

        *(v35 + 16) = v26 + 1;
        v27 = v35 + 32 * v26;
        *(v27 + 32) = v20;
        *(v27 + 40) = v21;
        *(v27 + 48) = v22;
        *(v27 + 56) = v24;
      }
    }
  }

  result = sub_1B0CE46C4();
  if (result)
  {
    v3 = v32;
    v6 = v33;
    goto LABEL_8;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t static RenameRollback.makeSteps(failedRenames:allMailboxes:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = sub_1B0E435B8();
  v7 = v6;
  v8 = *v6;
  v44 = *v6;
  v9 = *(a1 + 16);
  if (v9)
  {
    v37 = v6;
    v10 = sub_1B0CE2400(v9, 0);
    v38 = sub_1B0CE4148(&v42, (v10 + 4), v9, a1);
    v11 = v42;

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03D91F8(v11);
    if (v38 != v9)
    {
LABEL_27:
      __break(1u);

      __break(1u);
      return result;
    }

    v7 = v37;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v42 = v10;
  v10 = 0;
  sub_1B0CDFC68(&v42);
  v12 = v42;
  v13 = *(v42 + 2);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E62C0, &qword_1B0EE4EE0);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size_0(v14);
    v16 = v15 - 40;
    if (v15 < 40)
    {
      v16 = v15 - 9;
    }

    v14[2] = v16 >> 5;
    v14[3] = 0;
    v14[4] = 0;
    sub_1B0CE35CC((v14 + 2), (v14 + 5), v13, v12);
  }

  else
  {
    v14 = *v7;
  }

  v43 = v14;
  sub_1B0CDFA38(a1);
  v18 = v17;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19 = sub_1B0CC03D0(v18, a2);

  v41[0] = v19;
  v20 = v14[3];
  v21 = v8[3];
  swift_beginAccess();
  if (v14[3])
  {
    while (1)
    {
      sub_1B0CE02EC(&v43, v41, a3);
      v23 = *(v22 + 16);
      v24 = v8[3];
      v25 = v24 + v23;
      if (__OFADD__(v24, v23))
      {
        break;
      }

      v26 = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (v8[2] < v25 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B0CE363C(isUniquelyReferenced_nonNull_native, v25, 0, &type metadata for RenameRollback.Step, &qword_1EB6E62D8, &unk_1B0EE4F60);
        v8 = v44;
      }

      sub_1B0CE37E8(v8 + 2, (v8 + 5), v26 + 32, v23, &type metadata for RenameRollback.Step);

      v14 = v43;
      v28 = v43[3];
      if (v8[3] != v21 || v28 != v20)
      {
        v20 = v43[3];
        v21 = v8[3];
        if (v28)
        {
          continue;
        }
      }

      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_20:
  v30 = sub_1B0CDFCD4(v14, a3, v41);
  swift_beginAccess();
  v31 = *(v30 + 16);
  v32 = v8[3];
  v33 = v32 + v31;
  if (__OFADD__(v32, v31))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v34 = swift_isUniquelyReferenced_nonNull_native();
  v35 = v44;
  if (v44[2] < v33 || (v34 & 1) == 0)
  {
    sub_1B0CE363C(v34, v33, 0, &type metadata for RenameRollback.Step, &qword_1EB6E62D8, &unk_1B0EE4F60);
    v35 = v44;
  }

  sub_1B0CE37E8(v35 + 2, (v35 + 5), v30 + 32, v31, &type metadata for RenameRollback.Step);
  swift_endAccess();

  *a4 = v35;
}

void sub_1B0CE02EC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v130 = 0;
  v131 = a3;
  v119 = sub_1B0E42FC8();
  v5 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v118 = &v115[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v126 = sub_1B0E44B68();
  v7 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v125 = &v115[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v137 = *sub_1B0E435B8();
  v9 = v137;
  v138 = v137;
  v10 = *(*a1 + 24);
  swift_retain_n();
  if (!v10)
  {
    v121 = v9;
    v11 = v9;
LABEL_112:
    sub_1B0CE0EE8(v11);
    v112 = v121;
    v113 = *(v121 + 24);
    if (v113 < 0)
    {
      goto LABEL_126;
    }

    if (v113)
    {
      v114 = sub_1B0E45278();
      *(v114 + 16) = v113;
    }

    else
    {
      v114 = MEMORY[0x1E69E7CC0];
    }

    v133 = 0;
    v134 = v114 + 32;
    v135 = v113;
    sub_1B0CE4580((v112 + 16), v112 + 40, &v134, &v133);
    if (v113 < v133)
    {
      goto LABEL_127;
    }

    *(v114 + 16) = v133;

    return;
  }

  v123 = (v7 + 8);
  v117 = (v5 + 8);
  v121 = v9;
  v124 = a1;
  v127 = a2;
  v11 = v9;
  while (1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B0CE4824();
    }

    v12 = *a1;
    v13 = *(*a1 + 24);
    v14 = __OFSUB__(v13, 1);
    v15 = v13 - 1;
    if (v14)
    {
      goto LABEL_120;
    }

    v16 = v12[4] + v15;
    v17 = v12[2];
    if (v16 < v17)
    {
      v17 = 0;
    }

    v18 = &v12[4 * (v16 - v17)];
    v19 = v18[5];
    v20 = *(v18 + 12);
    v21 = v18[7];
    v22 = *(v18 + 16);
    v12[3] = v15;
    v129 = *a2;
    if (sub_1B03B5DDC(v19, v20, v129))
    {
      goto LABEL_27;
    }

    v128 = v11;
    v23 = v12[4];
    v24 = v12[2];
    if (v24 >= (v12[3] + v23))
    {
      v24 = v12[3] + v23;
    }

    v134 = v12;
    v135 = v23;
    v136 = v24;
    v25 = v12;
    while (1)
    {
      if (v23 == v24)
      {
        if ((sub_1B0CE46C4() & 1) == 0)
        {

          swift_beginAccess();
          v39 = *(v121 + 24);
          v40 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            goto LABEL_128;
          }

          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v121 = v138;
          if (*(v138 + 16) < v40 || (isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B0CE363C(isUniquelyReferenced_nonNull_native, v40, 0, &type metadata for RenameRollback.Step, &qword_1EB6E62D8, &unk_1B0EE4F60);
            v121 = v138;
          }

          v42 = v21;
          v43 = v21;
          v44 = v130;
          sub_1B0CE3E6C((v121 + 16), v121 + 40, v42, v22, v19, v20);
          v130 = v44;
          swift_endAccess();
          v45 = v127;
          sub_1B0B93AEC(v43, v22);

          sub_1B03AB2E0(&v134, v19, v20);

          v11 = v128;
          a2 = v45;
          goto LABEL_33;
        }

        v25 = v134;
        v23 = v135;
      }

      v26 = v23 + 1;
      v135 = v23 + 1;
      v27 = &v25[4 * v23];
      if ((*(v27 + 12) | (*(v27 + 12) << 32)) == (v20 | (v20 << 32)))
      {
        v28 = v27[5];
        v29 = *(v28 + 16);
        if (v29 == *(v19 + 16))
        {
          break;
        }
      }

LABEL_12:
      v24 = v136;
      v23 = v26;
    }

    if (v29)
    {
      v30 = v28 == v19;
    }

    else
    {
      v30 = 1;
    }

    if (!v30)
    {
      v31 = (v28 + 32);
      v32 = (v19 + 32);
      while (v29)
      {
        if (*v31 != *v32)
        {
          goto LABEL_12;
        }

        ++v31;
        ++v32;
        if (!--v29)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

LABEL_26:

    v11 = v128;
    a2 = v127;
LABEL_27:
    sub_1B0CE1A04(v19, v20, v21, v22, a1, &v137);
    if (v33)
    {
      break;
    }

    swift_beginAccess();
    v34 = v11[3];
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      goto LABEL_121;
    }

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v11 = v137;
    if (v137[2] < v35 || (v36 & 1) == 0)
    {
      sub_1B0CE363C(v36, v35, 0, &type metadata for MailboxToRename, &qword_1EB6E62C0, &qword_1B0EE4EE0);
      v11 = v137;
    }

    v37 = v21;
    v38 = v130;
    sub_1B0CE3E6C(v11 + 2, (v11 + 5), v19, v20, v37, v22);
    v130 = v38;
    swift_endAccess();

LABEL_33:
    if (!*(*a1 + 24))
    {
      goto LABEL_112;
    }
  }

  v128 = v11;
  v46 = sub_1B0CE3F00(0x15F90uLL);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v47 = sub_1B0CE2090(v19);
  v48 = sub_1B0CE220C(v46 + 10000, v47);
  v50 = v49;

  v51 = sub_1B03B5DDC(v48, v50, v129);
  v116 = v22;
  if (v51)
  {
    goto LABEL_59;
  }

  v52 = v12[4];
  v53 = v12[2];
  if (v53 >= (v12[3] + v52))
  {
    v53 = v12[3] + v52;
  }

  v134 = v12;
  v135 = v52;
  v136 = v53;
  v120 = v50;
  v54 = v50 | (v50 << 32);
  v55 = v12;
  while (v52 != v53)
  {
LABEL_48:
    v56 = v52 + 1;
    v135 = v52 + 1;
    v57 = &v55[4 * v52];
    if ((*(v57 + 12) | (*(v57 + 12) << 32)) == v54)
    {
      v58 = v57[5];
      v59 = *(v58 + 16);
      if (v59 == *(v48 + 16))
      {
        if (v59)
        {
          v60 = v58 == v48;
        }

        else
        {
          v60 = 1;
        }

        if (!v60)
        {
          v61 = (v58 + 32);
          v62 = (v48 + 32);
          while (v59)
          {
            if (*v61 != *v62)
            {
              goto LABEL_44;
            }

            ++v61;
            ++v62;
            if (!--v59)
            {
              goto LABEL_58;
            }
          }

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
          goto LABEL_130;
        }

LABEL_58:

LABEL_59:

        v122 = v21;
        do
        {
LABEL_61:
          v63 = 90000 * PCG32Random.next()();
        }

        while (v63 < 0x12DF0);
        v64 = HIDWORD(v63) + 10000;
        v65 = v19;
        v66 = v20;
        v133 = sub_1B0CE2090(v19);
        v134 = 45;
        v135 = 0xE100000000000000;
        v132 = v64;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v67 = sub_1B0E469C8();
        MEMORY[0x1B2726E80](v67);

        v68 = v125;
        sub_1B0E44B48();
        v69 = sub_1B0E44AE8();
        v71 = v70;

        (*v123)(v68, v126);
        if (v71 >> 60 == 15)
        {
          goto LABEL_134;
        }

        v72 = v71 >> 62;
        if ((v71 >> 62) > 1)
        {
          v20 = v66;
          if (v72 != 2)
          {
            goto LABEL_74;
          }

          v75 = *(v69 + 16);
          v74 = *(v69 + 24);
          v73 = v74 - v75;
          if (__OFSUB__(v74, v75))
          {
            goto LABEL_124;
          }

          if (!v73)
          {
            goto LABEL_74;
          }
        }

        else
        {
          if (v72)
          {
            if (__OFSUB__(HIDWORD(v69), v69))
            {
              goto LABEL_125;
            }

            v73 = HIDWORD(v69) - v69;
          }

          else
          {
            v73 = BYTE6(v71);
          }

          v20 = v66;
          if (!v73)
          {
LABEL_74:
            sub_1B070E144(v69, v71);
            v76 = MEMORY[0x1E69E7CC0];
            a2 = v127;
            a1 = v124;
            v21 = v122;
LABEL_75:
            sub_1B0C31A28(v76);
            v48 = MailboxName.init(_:)(v133);
            v81 = v80;

            if ((sub_1B03B5DDC(v48, v81, v129) & 1) == 0)
            {
              v82 = v12[4];
              v83 = v12[2];
              if (v83 >= (v12[3] + v82))
              {
                v83 = v12[3] + v82;
              }

              v134 = v12;
              v135 = v82;
              v136 = v83;
              v120 = v81;
              v84 = v12;
              while (1)
              {
                if (v82 == v83)
                {
                  if ((sub_1B0CE46C4() & 1) == 0)
                  {

                    goto LABEL_95;
                  }

                  v84 = v134;
                  v82 = v135;
                }

                v85 = v82 + 1;
                v135 = v82 + 1;
                v86 = &v84[4 * v82];
                if ((*(v86 + 12) | (*(v86 + 12) << 32)) == (v81 | (v81 << 32)))
                {
                  v87 = v86[5];
                  v88 = *(v87 + 16);
                  if (v88 == *(v48 + 16))
                  {
                    break;
                  }
                }

LABEL_79:
                v83 = v136;
                v82 = v85;
              }

              if (v88)
              {
                v89 = v87 == v48;
              }

              else
              {
                v89 = 1;
              }

              if (v89)
              {
LABEL_93:

                goto LABEL_61;
              }

              v90 = 32;
              while (v88)
              {
                if (*(v87 + v90) != *(v48 + v90))
                {
                  goto LABEL_79;
                }

                ++v90;
                if (!--v88)
                {
                  goto LABEL_93;
                }
              }

              goto LABEL_119;
            }

            goto LABEL_61;
          }
        }

        v76 = sub_1B03B7A3C(v73, 0);
        v77 = v118;
        v78 = sub_1B0E42EB8();
        sub_1B070E144(v69, v71);
        v79 = v77;
        v19 = v65;
        (*v117)(v79, v119);
        v30 = v78 == v73;
        v20 = v66;
        a1 = v124;
        a2 = v127;
        v21 = v122;
        if (!v30)
        {
          goto LABEL_123;
        }

        goto LABEL_75;
      }
    }

LABEL_44:
    v53 = v136;
    v52 = v56;
  }

  if (sub_1B0CE46C4())
  {
    v55 = v134;
    v52 = v135;
    goto LABEL_48;
  }

  a1 = v124;
LABEL_95:
  swift_beginAccess();
  v91 = *(v121 + 24);
  v92 = v91 + 1;
  v93 = v116;
  if (__OFADD__(v91, 1))
  {
    goto LABEL_129;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v94 = swift_isUniquelyReferenced_nonNull_native();
  v121 = v138;
  if (*(v138 + 16) < v92 || (v94 & 1) == 0)
  {
    sub_1B0CE363C(v94, v92, 0, &type metadata for RenameRollback.Step, &qword_1EB6E62D8, &unk_1B0EE4F60);
    v121 = v138;
  }

  v95 = v21;
  v96 = v93;
  v97 = v120;
  v98 = v93;
  v99 = v21;
  v100 = v130;
  sub_1B0CE3E6C((v121 + 16), v121 + 40, v95, v96, v48, v120);
  v130 = v100;
  swift_endAccess();
  sub_1B0B93AEC(v99, v98);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03AB2E0(&v134, v48, v97);

  swift_bridgeObjectRelease_n();

  v101 = v12[3];
  v102 = v101 + 1;
  if (__OFADD__(v101, 1))
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v103 = swift_isUniquelyReferenced_nonNull_native();
  v104 = *a1;
  if (*(*a1 + 16) < v102 || (v103 & 1) == 0)
  {
    sub_1B0CE363C(v103, v102, 0, &type metadata for MailboxToRename, &qword_1EB6E62C0, &qword_1B0EE4EE0);
    v104 = *a1;
  }

  v105 = v104[4];
  v106 = v120;
  if (v105)
  {
    v14 = __OFSUB__(v105, 1);
    v107 = v105 - 1;
    if (!v14)
    {
LABEL_108:
      v109 = &v104[4 * v107];
      v109[5] = v19;
      *(v109 + 12) = v20;
      v109[7] = v48;
      *(v109 + 16) = v106;
      v104[4] = v107;
      v110 = v104[3];
      v14 = __OFADD__(v110, 1);
      v111 = v110 + 1;
      if (!v14)
      {
        v104[3] = v111;
        v11 = v128;
        goto LABEL_33;
      }

LABEL_131:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v108 = v104[2];
    v14 = __OFSUB__(v108, 1);
    v107 = v108 - 1;
    if (!v14)
    {
      goto LABEL_108;
    }
  }

  __break(1u);
LABEL_134:
  __break(1u);
}

void sub_1B0CE0EE8(void *a1)
{
  v4 = a1 + 2;
  v5 = a1 + 5;
  v6 = a1[3];
  v7 = a1[4];
  v8 = v6 + v7;
  if (a1[2] < v6 + v7)
  {
    if (v6 <= 0)
    {
      return;
    }

    v2 = a1;
    v9 = (*v1)[3];
    v10 = v9 + v6;
    if (__OFADD__(v9, v6))
    {
      goto LABEL_79;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v1;
    if ((*v1)[2] < v10 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B0CE363C(isUniquelyReferenced_nonNull_native, v10, 0, &type metadata for MailboxToRename, &qword_1EB6E62C0, &qword_1B0EE4EE0);
      v12 = *v1;
    }

    sub_1B0CE38AC(v12 + 2, (v12 + 5), v76);
    v13 = sub_1B0CE3958(v6, &v77);
    v14 = v77;
    v3 = v78;
    if (v81)
    {
      v15 = v2[4];
      v16 = v2[3] + v15;
      if (v2[2] < v16)
      {
        v73 = sub_1B0CE43F4(v4, v5, v77, v78, v2);
        v74 = v17;
        v75 = v18;
        if (v17 != v18 || (sub_1B0CE46C4() & 1) != 0)
        {
          goto LABEL_90;
        }

        goto LABEL_68;
      }

LABEL_33:
      v38 = v16 - v15;
      if (v16 < v15)
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      if (__OFSUB__(v16, v15))
      {
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      if (v38)
      {
        if (v3 < v38)
        {
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

        swift_arrayInitWithCopy();
      }

      goto LABEL_68;
    }

    if (v78 < 0)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v71 = v12;
    if (v2[3] < v78)
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v23 = v79;
    v72 = v80;
    MEMORY[0x1EEE9AC00](v13);
    v67 = v14;
    v68 = v3;
    v73 = 0;
    v74 = v3;
    v75 = v2;
    MEMORY[0x1EEE9AC00](v24);
    v63 = &v73;
    v64 = sub_1B0CE4A2C;
    v65 = v25;

    v26 = sub_1B0CE42D8(v4, v5, sub_1B0CE4A44);
    v70 = v3;
    if (v27)
    {
      v73 = 0;
      v74 = v3;
      v75 = v2;
      MEMORY[0x1EEE9AC00](v26);
      v67 = v14;
      v68 = v3;
      MEMORY[0x1EEE9AC00](v28);
      v12 = &v62;
      v63 = &v73;
      v64 = sub_1B0CE4A64;
      v65 = v29;

      sub_1B0CE4360(v4, v5, sub_1B0CE4A7C);
      if (v31)
      {
        if (v14)
        {
          if (v3)
          {
            v15 = v2[3];
            if (v15 < 1)
            {
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

            v3 = 0;
            v32 = (v70 - 1);
            while (1)
            {
              v33 = v2[4];
              v34 = v3 + v33 >= v2[2] ? v2[2] : 0;
              v35 = &v5[4 * v3 + 4 * (v33 - v34)];
              v36 = *v35;
              v37 = *(v35 + 2);
              v12 = v35[2];
              LODWORD(v35) = *(v35 + 6);
              *v14 = v36;
              *(v14 + 8) = v37;
              *(v14 + 16) = v12;
              *(v14 + 24) = v35;
              if (v32 == v3)
              {
                break;
              }

              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v15 = v2[3];
              ++v3;
              v14 += 32;
              if (v3 >= v15)
              {
                goto LABEL_32;
              }
            }

            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v3 = v70;
          }
        }

        else if (v3)
        {
LABEL_91:
          v30 = 0;
LABEL_92:
          if (v30 >= v3)
          {
LABEL_97:
            __break(1u);
            goto LABEL_98;
          }

          if (v30 >= v2[3])
          {
LABEL_98:
            __break(1u);
            return;
          }

          __break(1u);
          goto LABEL_95;
        }
      }

      else if (v30 != v3)
      {
        goto LABEL_92;
      }
    }

    else
    {
    }

    v40 = v2[3];
    if (v40 < v3)
    {
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    MEMORY[0x1EEE9AC00](v39);
    v3 = &v66;
    v67 = v23;
    v68 = v72;
    v73 = v41;
    v74 = v40;
    v75 = v2;
    MEMORY[0x1EEE9AC00](v42);
    v63 = &v73;
    v64 = sub_1B0CE4B40;
    v65 = v43;

    v44 = sub_1B0CE42D8(v4, v5, sub_1B0CE4B70);
    if ((v45 & 1) == 0)
    {

LABEL_67:
      v12 = v71;
LABEL_68:
      v59 = v12[3];
      v60 = __OFADD__(v59, v6);
      v61 = v59 + v6;
      if (!v60)
      {
        v12[3] = v61;
        return;
      }

      goto LABEL_80;
    }

    v69 = &v69;
    v3 = v70;
    v73 = v70;
    v74 = v40;
    v75 = v2;
    MEMORY[0x1EEE9AC00](v44);
    v46 = v72;
    v67 = v23;
    v68 = v72;
    MEMORY[0x1EEE9AC00](v47);
    v63 = &v73;
    v64 = sub_1B0CE4B58;
    v65 = v48;

    sub_1B0CE4360(v4, v5, sub_1B0CE4B88);
    if (v50)
    {
      if (v23 && v46)
      {
        if (v46 < 0)
        {
LABEL_89:
          __break(1u);
LABEL_90:

          __break(1u);
          goto LABEL_91;
        }

        if (v3 != v40)
        {
          v51 = v46 - 1;
          v52 = v3;
          while (v40 != v52)
          {
            if (v52 >= v2[3])
            {
              goto LABEL_85;
            }

            v53 = v2[4];
            if (v52 + v53 >= v2[2])
            {
              v54 = v2[2];
            }

            else
            {
              v54 = 0;
            }

            v55 = &v5[4 * v52 + 4 * (v53 - v54)];
            v56 = *v55;
            v57 = v55[2];
            ++v52;
            v58 = *(v55 + 6);
            LODWORD(v55) = *(v55 + 2);
            *v23 = v56;
            *(v23 + 8) = v55;
            *(v23 + 16) = v57;
            *(v23 + 24) = v58;
            if (!v51)
            {
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              if (v52 == v40)
              {
                goto LABEL_66;
              }

              goto LABEL_72;
            }

            v23 += 32;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            --v51;
            if (v40 == v52)
            {
              goto LABEL_66;
            }
          }

          goto LABEL_84;
        }

        goto LABEL_66;
      }
    }

    else
    {
      v52 = v3 + v49;
      if (!__OFADD__(v3, v49))
      {
        goto LABEL_65;
      }

      __break(1u);
    }

    v52 = v3;
LABEL_65:
    if (v52 == v40)
    {
LABEL_66:

      goto LABEL_67;
    }

LABEL_72:
    if (v52 < v3 || v52 >= v40)
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    if (v52 >= v2[3])
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    __break(1u);
    goto LABEL_76;
  }

  if (v8 < v7)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (__OFSUB__(v8, v7))
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v19 = (*v1)[3];
  v20 = v19 + v6;
  if (__OFADD__(v19, v6))
  {
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v21 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v1;
  if ((*v1)[2] < v20 || (v21 & 1) == 0)
  {
    sub_1B0CE363C(v21, v20, 0, &type metadata for MailboxToRename, &qword_1EB6E62C0, &qword_1B0EE4EE0);
    v22 = *v1;
  }

  sub_1B0CE37E8(v22 + 2, (v22 + 5), &v5[4 * v7], v6, &type metadata for MailboxToRename);
}

uint64_t sub_1B0CE1608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2;
  v39 = sub_1B0E42FC8();
  v7 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1B0E44B68();
  v9 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B0CE3F00(0x15F90uLL);
  v43 = a1;
  v12 = v5;
  v13 = sub_1B0CE2090(a1);
  v14 = sub_1B0CE220C(v11 + 10000, v13);
  v16 = v15;

  v44 = a4;
  if ((sub_1B03B5DDC(v14, v16, *a4) & 1) == 0)
  {
LABEL_19:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03AB2E0(v46, v14, v16);

    return v14;
  }

  v40 = (v9 + 8);
  v36 = (v7 + 8);
  v37 = v12;
  while (1)
  {
    do
    {
      v17 = 90000 * PCG32Random.next()();
    }

    while (v17 < 0x12DF0);
    v18 = HIDWORD(v17) + 10000;
    v19 = sub_1B0CE2090(v43);
    v46[0] = 45;
    v46[1] = 0xE100000000000000;
    v47 = v19;
    v45 = v18;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v20 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v20);

    v21 = v41;
    sub_1B0E44B48();
    v22 = sub_1B0E44AE8();
    v24 = v23;

    result = (*v40)(v21, v42);
    if (v24 >> 60 == 15)
    {
      break;
    }

    v26 = v24 >> 62;
    if ((v24 >> 62) > 1)
    {
      if (v26 != 2)
      {
        goto LABEL_16;
      }

      v29 = *(v22 + 16);
      v28 = *(v22 + 24);
      v27 = v28 - v29;
      if (__OFSUB__(v28, v29))
      {
        goto LABEL_21;
      }

      if (!v27)
      {
        goto LABEL_16;
      }
    }

    else if (v26)
    {
      v33 = HIDWORD(v22) - v22;
      if (__OFSUB__(HIDWORD(v22), v22))
      {
        goto LABEL_20;
      }

      v27 = v33;
      if (!v33)
      {
LABEL_16:
        sub_1B070E144(v22, v24);
        v30 = MEMORY[0x1E69E7CC0];
        goto LABEL_17;
      }
    }

    else
    {
      v27 = BYTE6(v24);
      if (!BYTE6(v24))
      {
        goto LABEL_16;
      }
    }

    v30 = sub_1B03B7A3C(v27, 0);
    v31 = v38;
    v32 = sub_1B0E42EB8();
    sub_1B070E144(v22, v24);
    result = (*v36)(v31, v39);
    if (v32 != v27)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      break;
    }

LABEL_17:
    sub_1B0C31A28(v30);
    v14 = MailboxName.init(_:)(v47);
    v16 = v34;

    if ((sub_1B03B5DDC(v14, v16, *v44) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

void sub_1B0CE1A04(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t *a5, uint64_t *a6)
{
  v71 = a2;
  v75 = a4;
  if (a2 != a4 || (v7 = a1, (sub_1B04520BC(a1, a3) & 1) == 0))
  {
    v10 = v75 | (v75 << 32);
    v11 = *a5;
    v12 = *(*a5 + 32);
    v13 = *(*a5 + 16);
    if (v13 >= *(*a5 + 24) + v12)
    {
      v13 = *(*a5 + 24) + v12;
    }

    v82 = *(*a5 + 32);
    v84 = v13;
    v14 = *a5;
    while (1)
    {
      if (v12 == v13)
      {
        if ((sub_1B0CE46C4() & 1) == 0)
        {

          swift_beginAccess();
          v55 = *a6;
          v56 = *(*a6 + 32);
          v57 = *(*a6 + 16);
          if (v57 >= *(*a6 + 24) + v56)
          {
            v57 = *(*a6 + 24) + v56;
          }

          v83 = *(*a6 + 32);
          v85 = v57;
          v58 = *a6;
          while (1)
          {
            if (v56 == v57)
            {
              if ((sub_1B0CE46C4() & 1) == 0)
              {
                goto LABEL_111;
              }

              v58 = v55;
              v56 = v83;
            }

            v59 = v56 + 1;
            v83 = v56 + 1;
            v60 = v58 + 32 * v56;
            v74 = *(v60 + 48);
            if ((v74 | (v74 << 32)) == v10)
            {
              v8 = *(v60 + 40);
              v61 = *(v8 + 16);
              if (v61 == *(a3 + 16))
              {
                v18 = *(v60 + 56);
                v69 = *(v60 + 64);
                if (v61)
                {
                  v62 = v8 == a3;
                }

                else
                {
                  v62 = 1;
                }

                if (v62)
                {
                  goto LABEL_21;
                }

                v63 = (v8 + 32);
                v64 = (a3 + 32);
                while (1)
                {
                  if (!v61)
                  {
                    __break(1u);
                    return;
                  }

                  if (*v63 != *v64)
                  {
                    break;
                  }

                  ++v63;
                  ++v64;
                  if (!--v61)
                  {
                    goto LABEL_21;
                  }
                }
              }
            }

            v57 = v85;
            v56 = v59;
          }
        }

        v14 = v11;
        v12 = v82;
      }

      v15 = v12 + 1;
      v82 = v12 + 1;
      v16 = v14 + 32 * v12;
      v74 = *(v16 + 48);
      if ((v74 | (v74 << 32)) == v10)
      {
        v8 = *(v16 + 40);
        v17 = *(v8 + 16);
        if (v17 == *(a3 + 16))
        {
          v18 = *(v16 + 56);
          v69 = *(v16 + 64);
          if (v17)
          {
            v19 = v8 == a3;
          }

          else
          {
            v19 = 1;
          }

          if (v19)
          {
LABEL_21:

            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v9 = v18;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

            v7 = a1;
            goto LABEL_22;
          }

          v20 = (v8 + 32);
          v21 = (a3 + 32);
          while (1)
          {
            if (!v17)
            {
              goto LABEL_110;
            }

            if (*v20 != *v21)
            {
              break;
            }

            ++v20;
            ++v21;
            if (!--v17)
            {
              goto LABEL_21;
            }
          }
        }
      }

      v13 = v84;
      v12 = v15;
    }
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = v7;
  v74 = v75;
  v9 = a3;
  v69 = v75;
LABEL_22:
  swift_beginAccess();
  v72 = v8;
  v66 = (v8 + 32);
  v68 = v9;
  v65 = (v9 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v22 = v71;
  while (v22 == v75)
  {
    v23 = *(a3 + 16);
    if (v23 != *(v7 + 16))
    {
      break;
    }

    if (v23)
    {
      v24 = v7 == a3;
    }

    else
    {
      v24 = 1;
    }

    if (!v24)
    {
      v25 = (v7 + 32);
      v26 = (a3 + 32);
      while (v23)
      {
        if (*v26 != *v25)
        {
          goto LABEL_35;
        }

        ++v26;
        ++v25;
        if (!--v23)
        {
          goto LABEL_34;
        }
      }

LABEL_109:
      __break(1u);
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:

      goto LABEL_89;
    }

LABEL_34:
    v27 = a1;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v22 = v71;
    v28 = a3;
    v29 = v75;
LABEL_53:
    if (v22 == v74)
    {
      v40 = *(v27 + 16);
      if (v40 == *(v72 + 16))
      {
        if (!v40 || v27 == v72)
        {
LABEL_60:
          if (v29 == v69)
          {
            v43 = *(v28 + 16);
            if (v43 == *(v68 + 16))
            {
              if (!v43 || v28 == v68)
              {
LABEL_86:

                return;
              }

              v44 = (v28 + 32);
              v45 = v65;
              while (*v44 == *v45)
              {
                ++v44;
                ++v45;
                if (!--v43)
                {
                  goto LABEL_86;
                }
              }
            }
          }
        }

        else
        {
          v41 = (v27 + 32);
          v42 = v66;
          while (*v41 == *v42)
          {
            ++v41;
            ++v42;
            if (!--v40)
            {
              goto LABEL_60;
            }
          }
        }
      }
    }

    v7 = v27;
  }

LABEL_35:
  v30 = 0x100000001 * v22;
  v31 = *(*a5 + 32);
  v32 = *(*a5 + 16);
  if (v32 >= *(*a5 + 24) + v31)
  {
    v32 = *(*a5 + 24) + v31;
  }

  v76 = *a5;
  v78 = *(*a5 + 32);
  v80 = v32;
  v33 = *a5;
  while (1)
  {
    if (v31 == v32)
    {
      if ((sub_1B0CE46C4() & 1) == 0)
      {

        v46 = *(*a6 + 32);
        v47 = *(*a6 + 16);
        if (v47 >= *(*a6 + 24) + v46)
        {
          v47 = *(*a6 + 24) + v46;
        }

        v77 = *a6;
        v79 = *(*a6 + 32);
        v81 = v47;
        v48 = *a6;
        while (1)
        {
          if (v46 == v47)
          {
            if ((sub_1B0CE46C4() & 1) == 0)
            {
              goto LABEL_88;
            }

            v48 = v77;
            v46 = v79;
          }

          v49 = v46 + 1;
          v79 = v46 + 1;
          v50 = v48 + 32 * v46;
          v29 = *(v50 + 64);
          if ((v29 | (v29 << 32)) == v30)
          {
            v28 = *(v50 + 56);
            v51 = *(v28 + 16);
            if (v51 == *(v7 + 16))
            {
              break;
            }
          }

LABEL_71:
          v47 = v81;
          v46 = v49;
        }

        v27 = *(v50 + 40);
        v22 = *(v50 + 48);
        if (v51)
        {
          v52 = v28 == v7;
        }

        else
        {
          v52 = 1;
        }

        if (!v52)
        {
          v53 = (v28 + 32);
          v54 = (v7 + 32);
          while (v51)
          {
            if (*v53 != *v54)
            {
              goto LABEL_71;
            }

            ++v53;
            ++v54;
            if (!--v51)
            {
              goto LABEL_52;
            }
          }

          __break(1u);
          goto LABEL_109;
        }

LABEL_52:

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

        goto LABEL_53;
      }

      v33 = v76;
      v31 = v78;
    }

    v34 = v31 + 1;
    v78 = v31 + 1;
    v35 = v33 + 32 * v31;
    v29 = *(v35 + 64);
    if ((v29 | (v29 << 32)) == v30)
    {
      v28 = *(v35 + 56);
      v36 = *(v28 + 16);
      if (v36 == *(v7 + 16))
      {
        break;
      }
    }

LABEL_38:
    v32 = v80;
    v31 = v34;
  }

  v27 = *(v35 + 40);
  v22 = *(v35 + 48);
  if (v36)
  {
    v37 = v28 == v7;
  }

  else
  {
    v37 = 1;
  }

  if (v37)
  {
    goto LABEL_52;
  }

  v38 = (v28 + 32);
  v39 = (v7 + 32);
  while (v36)
  {
    if (*v38 != *v39)
    {
      goto LABEL_38;
    }

    ++v38;
    ++v39;
    if (!--v36)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_88:

LABEL_89:
}

uint64_t sub_1B0CE2090(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 16);
  if (v3 >= 6)
  {
    v4 = v3 - 6;
  }

  else
  {
    v4 = 0;
  }

  if (v4 == v3)
  {
LABEL_15:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v2;
  }

  v5 = 6;
  if (v3 < 6)
  {
    v5 = *(a1 + 16);
  }

  while (1)
  {
    if (v4 >= v3)
    {
      __break(1u);
LABEL_27:
      swift_unknownObjectRelease();
      sub_1B0C14438(v2, v2 + 32, 0, (2 * v1) | 1);
      goto LABEL_25;
    }

    if (*(a1 + v4 + 32) == 45)
    {
      break;
    }

    ++v4;
    if (!--v5)
    {
      goto LABEL_15;
    }
  }

  if (v5 < 1)
  {
    goto LABEL_15;
  }

  v6 = -v5;
  while (v6 != -1)
  {
    v7 = *(v3 + a1 + 33 + v6++) - 58;
    if (v7 < 0xFFFFFFF6)
    {
      goto LABEL_15;
    }
  }

  v9 = v3 >= v5;
  v10 = v3 - v5;
  if (v9)
  {
    v1 = v10;
  }

  else
  {
    v1 = 0;
  }

  sub_1B0E46AD8();
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain_n();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v11 + 16);

  if (v12 != v1)
  {
    goto LABEL_27;
  }

  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = MEMORY[0x1E69E7CC0];
  }

LABEL_25:
  v14 = MailboxName.init(_:)(v13);
  swift_unknownObjectRelease();

  return v14;
}

uint64_t sub_1B0CE220C(int a1, uint64_t a2)
{
  v4 = sub_1B0E44B68();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 45;
  v16 = 0xE100000000000000;
  v17 = a2;
  v14[1] = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v8);

  sub_1B0E44B48();
  v9 = sub_1B0E44AE8();
  v11 = v10;

  result = (*(v5 + 8))(v7, v4);
  if (v11 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B03B207C(v9, v11);
    sub_1B0C31A28(v13);
    return MailboxName.init(_:)(v17);
  }

  return result;
}

void *sub_1B0CE237C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4520, &unk_1B0EC52B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
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

void *sub_1B0CE2400(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6290, &qword_1B0EE4E70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void sub_1B0CE2484(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4520, &unk_1B0EC52B0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size_0(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1B0CE255C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B0E469A8();
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
        v5 = sub_1B0E45278();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1B0CE2848(v7, v8, a1, v4);
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
    return sub_1B0CE2654(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B0CE2654(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    type metadata accessor for ComparisonResult(0);
    v27 = v6;
    v7 = v6 + 32 * v4;
    v8 = v5 - v4;
LABEL_5:
    v25 = v7;
    v26 = v4;
    v24 = v8;
    while (1)
    {
      v9 = *v7;
      v28 = *(v7 + 8);
      v10 = *(v7 + 16);
      v11 = *(v7 + 24);
      v12 = *(v7 - 32);
      v13 = *(v7 - 24);
      v14 = *(v7 - 16);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v15 = static MailboxName.stableOrderCompare(_:_:)(v10, v11, v14);
      if (v15 == -1)
      {
      }

      else
      {
        if (v15)
        {
          if (v15 != 1)
          {
            goto LABEL_18;
          }

LABEL_4:
          v4 = v26 + 1;
          v7 = v25 + 32;
          v8 = v24 - 1;
          if (v26 + 1 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }

        v16 = static MailboxName.stableOrder(_:_:)(v9, v28, v12, v13);

        if (!v16)
        {
          goto LABEL_4;
        }
      }

      if (!v27)
      {
        break;
      }

      v17 = *v7;
      v18 = *(v7 + 8);
      v19 = *(v7 + 16);
      v20 = *(v7 + 24);
      v21 = *(v7 - 16);
      *v7 = *(v7 - 32);
      *(v7 + 16) = v21;
      *(v7 - 24) = v18;
      *(v7 - 16) = v19;
      *(v7 - 8) = v20;
      *(v7 - 32) = v17;
      v7 -= 32;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_18:
    result = sub_1B0E46B28();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0CE2848(char **isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3[1];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v10 = v8 + 1;
      v130 = v9;
      if (v8 + 1 >= v7)
      {
        goto LABEL_35;
      }

      v124 = v7;
      v11 = *a3;
      v128 = v8 + 1;
      v12 = *a3 + 32 * v10;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      v120 = v8;
      v17 = *a3 + 32 * v8;
      v18 = *v17;
      v19 = *(v17 + 8);
      v5 = *(v17 + 16);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v20 = static MailboxName.stableOrderCompare(_:_:)(v15, v16, v5);
      type metadata accessor for ComparisonResult(0);
      v117 = v6;
      if (v20 == -1)
      {
        v126 = 1;
      }

      else if (v20 == 1)
      {
        v126 = 0;
      }

      else
      {
        if (v20)
        {
          goto LABEL_149;
        }

        v126 = static MailboxName.stableOrder(_:_:)(v13, v14, v18, v19);
      }

      v21 = 0;
      v122 = 32 * v120;
      v22 = v11 + 32 * v120 + 48;
      v23 = v120 + 2;
      v24 = v128;
      v9 = v130;
      do
      {
        v10 = v23;
        v26 = v21;
        v27 = v24;
        if (v23 >= v124)
        {
          break;
        }

        v134 = v23;
        v28 = *(v22 + 16);
        v132 = *(v22 + 24);
        v29 = *(v22 + 32);
        v30 = *(v22 + 40);
        v31 = *(v22 - 16);
        v32 = *(v22 - 8);
        v5 = *v22;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v33 = static MailboxName.stableOrderCompare(_:_:)(v29, v30, v5);
        if (v33 == -1)
        {
          v25 = 1;
        }

        else if (v33 == 1)
        {
          v25 = 0;
        }

        else
        {
          if (v33)
          {
            goto LABEL_149;
          }

          v25 = static MailboxName.stableOrder(_:_:)(v28, v132, v31, v32);
        }

        v22 += 32;
        v10 = v134;
        v23 = v134 + 1;
        v21 = v26 + 32;
        v24 = v27 + 1;
        v9 = v130;
      }

      while (v126 == v25);
      v6 = v117;
      if (!v126)
      {
        goto LABEL_33;
      }

      v34 = v120;
      if (v10 < v120)
      {
        goto LABEL_139;
      }

      if (v120 < v10)
      {
        break;
      }

      v8 = v120;
LABEL_35:
      v46 = a3[1];
      if (v10 >= v46)
      {
        goto LABEL_59;
      }

      if (__OFSUB__(v10, v8))
      {
        goto LABEL_138;
      }

      if (v10 - v8 >= a4)
      {
        goto LABEL_59;
      }

      if (__OFADD__(v8, a4))
      {
        goto LABEL_140;
      }

      if (v8 + a4 >= v46)
      {
        v47 = a3[1];
      }

      else
      {
        v47 = v8 + a4;
      }

      if (v47 < v8)
      {
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

      if (v10 == v47)
      {
        goto LABEL_59;
      }

      v118 = v6;
      v48 = *a3;
      type metadata accessor for ComparisonResult(0);
      v133 = v48;
      v49 = v48 + 32 * v10;
      v121 = v8;
      v123 = v47;
      v50 = v8 - v10;
      while (2)
      {
        v127 = v49;
        v129 = v10;
        v125 = v50;
        v51 = v49;
        while (1)
        {
          v52 = *v51;
          v135 = *(v51 + 8);
          v5 = *(v51 + 16);
          v53 = *(v51 + 24);
          v54 = *(v51 - 32);
          v55 = *(v51 - 24);
          v56 = *(v51 - 16);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v57 = static MailboxName.stableOrderCompare(_:_:)(v5, v53, v56);
          if (v57 == -1)
          {

            goto LABEL_52;
          }

          if (v57)
          {
            break;
          }

          v58 = static MailboxName.stableOrder(_:_:)(v52, v135, v54, v55);

          if (!v58)
          {
            goto LABEL_45;
          }

LABEL_52:
          if (!v133)
          {
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
            while (1)
            {
LABEL_149:
              sub_1B0E46B28();
              __break(1u);
            }
          }

          v59 = *v51;
          v60 = *(v51 + 8);
          v61 = *(v51 + 16);
          v62 = *(v51 + 24);
          v63 = *(v51 - 16);
          *v51 = *(v51 - 32);
          *(v51 + 16) = v63;
          *(v51 - 24) = v60;
          *(v51 - 16) = v61;
          *(v51 - 8) = v62;
          *(v51 - 32) = v59;
          v51 -= 32;
          if (__CFADD__(v50++, 1))
          {
            goto LABEL_45;
          }
        }

        if (v57 != 1)
        {
          goto LABEL_149;
        }

LABEL_45:
        v10 = v129 + 1;
        v49 = v127 + 32;
        v50 = v125 - 1;
        if (v129 + 1 != v123)
        {
          continue;
        }

        break;
      }

      v10 = v123;
      v6 = v118;
      v9 = v130;
      v8 = v121;
LABEL_59:
      if (v10 < v8)
      {
        goto LABEL_137;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1B0AFF300(0, *(v9 + 2) + 1, 1, v9);
      }

      v66 = *(v9 + 2);
      v65 = *(v9 + 3);
      v67 = v66 + 1;
      if (v66 >= v65 >> 1)
      {
        v9 = sub_1B0AFF300((v65 > 1), v66 + 1, 1, v9);
      }

      *(v9 + 2) = v67;
      v68 = &v9[16 * v66];
      *(v68 + 4) = v8;
      *(v68 + 5) = v10;
      v8 = v10;
      v69 = *isUniquelyReferenced_nonNull_native;
      if (!*isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_147;
      }

      if (v66)
      {
        while (2)
        {
          v70 = v67 - 1;
          if (v67 >= 4)
          {
            v75 = &v9[16 * v67 + 32];
            v76 = *(v75 - 64);
            v77 = *(v75 - 56);
            v81 = __OFSUB__(v77, v76);
            v78 = v77 - v76;
            if (v81)
            {
              goto LABEL_124;
            }

            v80 = *(v75 - 48);
            v79 = *(v75 - 40);
            v81 = __OFSUB__(v79, v80);
            v73 = v79 - v80;
            v74 = v81;
            if (v81)
            {
              goto LABEL_125;
            }

            v82 = &v9[16 * v67];
            v84 = *v82;
            v83 = *(v82 + 1);
            v81 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v81)
            {
              goto LABEL_127;
            }

            v81 = __OFADD__(v73, v85);
            v86 = v73 + v85;
            if (v81)
            {
              goto LABEL_130;
            }

            if (v86 >= v78)
            {
              v104 = &v9[16 * v70 + 32];
              v106 = *v104;
              v105 = *(v104 + 1);
              v81 = __OFSUB__(v105, v106);
              v107 = v105 - v106;
              if (v81)
              {
                goto LABEL_134;
              }

              if (v73 < v107)
              {
                v70 = v67 - 2;
              }
            }

            else
            {
LABEL_79:
              if (v74)
              {
                goto LABEL_126;
              }

              v87 = &v9[16 * v67];
              v89 = *v87;
              v88 = *(v87 + 1);
              v90 = __OFSUB__(v88, v89);
              v91 = v88 - v89;
              v92 = v90;
              if (v90)
              {
                goto LABEL_129;
              }

              v93 = &v9[16 * v70 + 32];
              v95 = *v93;
              v94 = *(v93 + 1);
              v81 = __OFSUB__(v94, v95);
              v96 = v94 - v95;
              if (v81)
              {
                goto LABEL_132;
              }

              if (__OFADD__(v91, v96))
              {
                goto LABEL_133;
              }

              if (v91 + v96 < v73)
              {
                goto LABEL_93;
              }

              if (v73 < v96)
              {
                v70 = v67 - 2;
              }
            }
          }

          else
          {
            if (v67 == 3)
            {
              v71 = *(v9 + 4);
              v72 = *(v9 + 5);
              v81 = __OFSUB__(v72, v71);
              v73 = v72 - v71;
              v74 = v81;
              goto LABEL_79;
            }

            v97 = &v9[16 * v67];
            v99 = *v97;
            v98 = *(v97 + 1);
            v81 = __OFSUB__(v98, v99);
            v91 = v98 - v99;
            v92 = v81;
LABEL_93:
            if (v92)
            {
              goto LABEL_128;
            }

            v100 = &v9[16 * v70];
            v102 = *(v100 + 4);
            v101 = *(v100 + 5);
            v81 = __OFSUB__(v101, v102);
            v103 = v101 - v102;
            if (v81)
            {
              goto LABEL_131;
            }

            if (v103 < v91)
            {
              break;
            }
          }

          v108 = v70 - 1;
          if (v70 - 1 >= v67)
          {
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
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
            goto LABEL_141;
          }

          if (!*a3)
          {
            goto LABEL_144;
          }

          v109 = *&v9[16 * v108 + 32];
          v5 = *&v9[16 * v70 + 40];
          sub_1B0CE312C((*a3 + 32 * v109), (*a3 + 32 * *&v9[16 * v70 + 32]), (*a3 + 32 * v5), v69);
          if (v6)
          {
          }

          if (v5 < v109)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1B0B9443C(v9);
          }

          if (v108 >= *(v9 + 2))
          {
            goto LABEL_123;
          }

          v110 = &v9[16 * v108];
          *(v110 + 4) = v109;
          *(v110 + 5) = v5;
          sub_1B0B943B0(v70);
          v67 = *(v9 + 2);
          if (v67 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v7 = a3[1];
      if (v8 >= v7)
      {
        goto LABEL_110;
      }
    }

    v35 = 0;
    do
    {
      if (v34 != v27)
      {
        v39 = *a3;
        if (!*a3)
        {
          goto LABEL_145;
        }

        v40 = v39 + v122 + v35;
        v41 = v39 + v122 + v26;
        v42 = *v40;
        v43 = *(v40 + 8);
        v44 = *(v40 + 16);
        v45 = *(v40 + 24);
        if (v122 + v35 != v122 + v26 + 32 || v40 >= v41 + 64)
        {
          v36 = *(v41 + 48);
          *v40 = *(v41 + 32);
          *(v40 + 16) = v36;
        }

        *(v41 + 32) = v42;
        v37 = v39 + v122 + v26;
        *(v37 + 40) = v43;
        *(v37 + 48) = v44;
        *(v37 + 56) = v45;
      }

      ++v34;
      v26 -= 32;
      v35 += 32;
    }

    while (v34 < v27--);
LABEL_33:
    v8 = v120;
    goto LABEL_35;
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_110:
  v5 = *isUniquelyReferenced_nonNull_native;
  if (!*isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_148;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_142:
    v9 = sub_1B0B9443C(v9);
  }

  v111 = *(v9 + 2);
  if (v111 >= 2)
  {
    while (*a3)
    {
      v112 = *&v9[16 * v111];
      v113 = *&v9[16 * v111 + 24];
      sub_1B0CE312C((*a3 + 32 * v112), (*a3 + 32 * *&v9[16 * v111 + 16]), (*a3 + 32 * v113), v5);
      if (v6)
      {
      }

      if (v113 < v112)
      {
        goto LABEL_135;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1B0B9443C(v9);
      }

      if (v111 - 2 >= *(v9 + 2))
      {
        goto LABEL_136;
      }

      v114 = &v9[16 * v111];
      *v114 = v112;
      *(v114 + 1) = v113;
      sub_1B0B943B0(v111 - 1);
      v111 = *(v9 + 2);
      if (v111 <= 1)
      {
      }
    }

    goto LABEL_146;
  }
}

uint64_t sub_1B0CE312C(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 31;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 5;
  v10 = a3 - a2;
  v11 = a3 - a2 + 31;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 5;
  if (v9 >= v12)
  {
    v28 = 32 * v12;
    if (__dst != a2 || &a2[v28] <= __dst)
    {
      v29 = __dst;
      memmove(__dst, a2, 32 * v12);
      __dst = v29;
    }

    v51 = __dst;
    v15 = &__dst[v28];
    if (v10 >= 32 && v5 > __src)
    {
LABEL_31:
      v30 = 0;
      v31 = v15;
      v55 = v4;
      __dstb = v5;
      v48 = v5 - 32;
      v50 = v15;
      while (1)
      {
        v32 = &v31[v30];
        v33 = &v31[v30 - 32];
        v34 = *v33;
        v53 = *&v31[v30 - 24];
        v35 = *&v31[v30 - 16];
        v36 = *&v31[v30 - 8];
        v37 = *(__dstb - 4);
        v38 = *(__dstb - 6);
        v39 = *(__dstb - 2);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v40 = static MailboxName.stableOrderCompare(_:_:)(v35, v36, v39);
        type metadata accessor for ComparisonResult(0);
        if (v40 == -1)
        {
          v41 = 1;
        }

        else if (v40 == 1)
        {
          v41 = 0;
        }

        else
        {
          if (v40)
          {
LABEL_54:
            result = sub_1B0E46B28();
            __break(1u);
            return result;
          }

          v41 = static MailboxName.stableOrder(_:_:)(v34, v53, v37, v38);
        }

        v42 = &v55[v30];
        if (v41)
        {
          v4 = v42 - 32;
          v44 = v48;
          if (v42 != __dstb)
          {
            v45 = *(v48 + 1);
            *v4 = *v48;
            *(v42 - 1) = v45;
          }

          v14 = v51;
          v15 = &v50[v30];
          if (&v50[v30] <= v51 || (v5 = v48, v48 <= __src))
          {
            v15 = &v50[v30];
            goto LABEL_50;
          }

          goto LABEL_31;
        }

        if (v42 != v32)
        {
          v43 = *(v33 + 16);
          *(v42 - 2) = *v33;
          *(v42 - 1) = v43;
        }

        v30 -= 32;
        v31 = v50;
        v14 = v51;
        v15 = &v50[v30];
        if (&v50[v30] <= v51)
        {
          v44 = __dstb;
          goto LABEL_50;
        }
      }
    }

    v44 = v5;
    v14 = __dst;
  }

  else
  {
    v13 = 32 * v9;
    v14 = __dst;
    if (__dst != __src || &__src[v13] <= __dst)
    {
      memmove(__dst, __src, v13);
    }

    v15 = &v14[v13];
    if (v7 >= 32 && v5 < v4)
    {
      v54 = v4;
      while (1)
      {
        v16 = *v5;
        v52 = *(v5 + 2);
        v17 = *(v5 + 2);
        __dsta = v5;
        v18 = *(v5 + 6);
        v19 = *v14;
        v20 = *(v14 + 2);
        v21 = *(v14 + 2);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v22 = static MailboxName.stableOrderCompare(_:_:)(v17, v18, v21);
        type metadata accessor for ComparisonResult(0);
        if (v22 == 1)
        {
          break;
        }

        if (v22)
        {
          if (v22 != -1)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v23 = static MailboxName.stableOrder(_:_:)(v16, v52, v19, v20);

          if (!v23)
          {
            goto LABEL_17;
          }
        }

        v26 = v54;
        v24 = __dsta;
        v5 = __dsta + 32;
        if (v6 != __dsta)
        {
          goto LABEL_18;
        }

LABEL_19:
        v6 += 32;
        if (v14 >= v15 || v5 >= v26)
        {
          goto LABEL_47;
        }
      }

LABEL_17:
      v24 = v14;
      v25 = v6 == v14;
      v14 += 32;
      v26 = v54;
      v5 = __dsta;
      if (v25)
      {
        goto LABEL_19;
      }

LABEL_18:
      v27 = *(v24 + 1);
      *v6 = *v24;
      *(v6 + 1) = v27;
      goto LABEL_19;
    }

LABEL_47:
    v44 = v6;
  }

LABEL_50:
  v46 = (v15 - v14 + (v15 - v14 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
  if (v44 != v14 || v44 >= &v14[v46])
  {
    memmove(v44, v14, v46);
  }

  return 1;
}

uint64_t sub_1B0CE35CC(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = *(a4 + 16);
    if (!v6)
    {
LABEL_5:
      *(v5 + 8) = a3;
      return result;
    }

    if (v6 <= a3)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CE363C(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = *v6;
  v11 = (*v6 + 16);
  v12 = *v11;
  if (*v11 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v15 = swift_allocObject();
    v18 = *(v10 + 24);
    *(v15 + 16) = v12;
    *(v15 + 24) = v18;
    if (v18 >= 1)
    {
      sub_1B0CE3D18(v15 + 16, v15 + 40, v11, v10 + 40, a4);
    }
  }

  else
  {
    sub_1B0E435C8();
    if (a1)
    {
      v14 = *(v10 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size_0(v15);
      v17 = v16 - 40;
      if (v16 < 40)
      {
        v17 = v16 - 9;
      }

      *(v15 + 16) = v17 >> 5;
      *(v15 + 24) = v14;
      *(v15 + 32) = 0;
      if (v14 >= 1)
      {
        sub_1B0CE3B0C(v15 + 16, (v15 + 40), v11, (v10 + 40));
        *(v10 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = swift_allocObject();
      v19 = _swift_stdlib_malloc_size_0(v15);
      v20 = v19 - 40;
      if (v19 < 40)
      {
        v20 = v19 - 9;
      }

      v21 = *(v10 + 24);
      *(v15 + 16) = v20 >> 5;
      *(v15 + 24) = v21;
      *(v15 + 32) = 0;
      if (v21 >= 1)
      {
        sub_1B0CE3C34(v15 + 16, v15 + 40, v11, v10 + 40, a4);
      }
    }
  }

  *v6 = v15;
  return result;
}

uint64_t *sub_1B0CE37E8(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 1)
  {
    return result;
  }

  v8 = result;
  result = result[1];
  v9 = result + a4;
  if (__OFADD__(result, a4))
  {
    __break(1u);
    goto LABEL_14;
  }

  v8[1] = v9;
  if (v9 < result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  sub_1B0CE3DF4(result, v9, v8, a2, &v14);
  v11 = v15;
  v12 = v16;
  if (v16)
  {
    v13 = v17;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v11 = 0;
  }

  if (v17)
  {
    v12 = 0;
  }

  v18 = v14;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  return sub_1B0CE3A00(a3, a4, a5);
}

void *sub_1B0CE38AC@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result[1];
  v3 = result[2];
  v5 = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    __break(1u);
    goto LABEL_24;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = *result;
    v7 = __OFSUB__(v5, *result);
    if (v5 < *result)
    {
      goto LABEL_9;
    }

    v5 -= *result;
    if (!v7)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v6 = *result;
  if (v5 < 0)
  {
    v7 = __OFADD__(v5, v6);
    v5 += v6;
    if (v7)
    {
      goto LABEL_26;
    }
  }

LABEL_9:
  if (v4 >= v6)
  {
    goto LABEL_14;
  }

  if (v5 < v3)
  {
    v8 = v3 - v5;
    if (!__OFSUB__(v3, v5))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_14:
    v8 = 0;
LABEL_15:
    v9 = 0;
    v3 = 0;
    v10 = 1;
LABEL_22:
    *a3 = a2 + 32 * v5;
    *(a3 + 8) = v8;
    *(a3 + 16) = v9;
    *(a3 + 24) = v3;
    *(a3 + 32) = v10;
    return result;
  }

  v8 = v6 - v5;
  if (!__OFSUB__(v6, v5))
  {
    if ((v3 & 0x8000000000000000) == 0 && v6 >= v5)
    {
      v10 = v3 == 0;
      if (v3)
      {
        v9 = a2;
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_22;
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1B0CE3958@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v2 + 24);
  }

  if (__OFADD__(v3, v6))
  {
    __break(1u);
    goto LABEL_25;
  }

  v7 = *(v2 + 16);
  if (v3 + v6 <= result)
  {
LABEL_23:
    *a2 = *v2;
    *(a2 + 8) = v3;
    *(a2 + 16) = v7;
    *(a2 + 24) = v4;
    *(a2 + 32) = v5 & 1;
    return result;
  }

  if (v3 >= result)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      v7 = 0;
      v4 = 0;
      v5 = 1;
      v3 = result;
      goto LABEL_23;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((*(v2 + 32) & 1) == 0)
  {
    v8 = result - v3;
    if (!__OFSUB__(result, v3))
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        if (v4 >= v8)
        {
          v9 = result - v3;
        }

        else
        {
          v9 = *(v2 + 24);
        }

        if (v4 >= 0)
        {
          v4 = v9;
        }

        else
        {
          v4 = result - v3;
        }

        if (!v8)
        {
          v4 = 0;
        }

        v5 = v4 == 0;
        if (!v4)
        {
          v7 = 0;
        }

        goto LABEL_23;
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CE3A00(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if (*(v3 + 32))
  {
    if (!result || !a2)
    {
      return result;
    }

    if (*(v3 + 8) >= a2)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v6 = *(v3 + 8);
  if (v6 < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = *(v3 + 24);
  if (result && v6)
  {
    result = swift_arrayInitWithCopy();
  }

  if (__OFADD__(v6, a2 - v6))
  {
    goto LABEL_20;
  }

  if (a2 < v6)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v5 || a2 == v6)
  {
    return result;
  }

  if (v7 < a2 - v6)
  {
LABEL_23:
    __break(1u);
    return result;
  }

LABEL_16:

  return swift_arrayInitWithCopy();
}

void sub_1B0CE3B0C(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = &a4[32 * v4];
  if (v12 != __dst || &v12[32 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 32 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = &__dst[32 * v8];
  if (v16 != v11 || v16 >= &v11[32 * v7])
  {

    memmove(v16, v11, 32 * v7);
  }
}

uint64_t sub_1B0CE3C34(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a3[2];
  v6 = *a3 - v5;
  if (__OFSUB__(*a3, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  if (v6 < v7)
  {
    v8 = v7 - v6;
    if (!__OFSUB__(v7, v6))
    {
      v9 = a4;
      if (v6 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = 0;
  v8 = 0;
  if (v7 >= 1)
  {
LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v6 < v7 && v8 >= 1)
  {
    if (v9)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0CE3D18(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a3[2];
  v6 = *a3 - v5;
  if (__OFSUB__(*a3, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  if (v6 >= v7)
  {
    v9 = 0;
    v8 = 0;
    if (v7 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = a4;
  if (v6 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v6 < v7 && v8 >= 1)
  {
    if (v9)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0CE3DF4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a3[2];
  v6 = v5 + result;
  v7 = *a3;
  if (v5 + result >= *a3)
  {
    v8 = *a3;
  }

  else
  {
    v8 = 0;
  }

  v9 = v5 + a2;
  if (v5 + a2 >= v7)
  {
    v10 = *a3;
  }

  else
  {
    v10 = 0;
  }

  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v12 = v6 - v8;
    v13 = v9 - v10;
    if (v11)
    {
      v14 = v12 < v13;
    }

    else
    {
      v14 = 1;
    }

    v15 = v14;
    if (v15 == 1)
    {
      v16 = 0;
      v13 = 0;
LABEL_18:
      *a5 = a4 + 32 * v12;
      *(a5 + 8) = v11;
      *(a5 + 16) = v16;
      *(a5 + 24) = v13;
      *(a5 + 32) = v15;
      return result;
    }

    v11 = v7 - v12;
    if (!__OFSUB__(v7, v12))
    {
      v16 = a4;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

void sub_1B0CE3E6C(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v6 = a1[1];
  v7 = a1[2];
  v9 = __OFADD__(v7, v6);
  v8 = v7 + v6;
  if (!v9)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v8, *a1);
      if (v8 < *a1 || (v8 -= *a1, !v9))
      {
LABEL_9:
        v10 = a2 + 32 * v8;
        *v10 = a3;
        *(v10 + 8) = a4;
        *(v10 + 16) = a5;
        *(v10 + 24) = a6;
        v9 = __OFADD__(v6, 1);
        v11 = v6 + 1;
        if (!v9)
        {
          a1[1] = v11;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          return;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v8 < 0)
    {
      v9 = __OFADD__(v8, *a1);
      v8 += *a1;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
}

unint64_t sub_1B0CE3F00(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    v3 = PCG32Random.next()() * result;
    if (v3 < v1)
    {
        ;
      }
    }

    return HIDWORD(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0CE3F74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && a4)
  {
    if (a2 >= a4)
    {
      v4 = a4;
    }

    else
    {
      v4 = a2;
    }

    v5 = result;
    swift_arrayInitWithCopy();
    return v5 + 32 * v4;
  }

  return result;
}

void *sub_1B0CE3FF4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        goto LABEL_24;
      }

      ++v11;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1B0CE4148(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v24 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + ((v12 << 11) | (32 * v17));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      LODWORD(v18) = *(v18 + 24);
      *v11 = v19;
      *(v11 + 8) = v20;
      *(v11 + 16) = v21;
      *(v11 + 24) = v18;
      if (v14 == v10)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        goto LABEL_23;
      }

      v11 += 32;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v24;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1B0CE42D8(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, void))
{
  v4 = result[2];
  v5 = result[1] + v4;
  if (*result < v5)
  {
    return 0;
  }

  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(v5, v4))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  result = a3(&v6, a2 + 32 * v4, result[1]);
  if (!v3)
  {
    return v6;
  }

  return result;
}

void *sub_1B0CE4360(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, void))
{
  v4 = result[2];
  v5 = result[1] + v4;
  if (*result < v5)
  {
    return 0;
  }

  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(v5, v4))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  result = a3(&v6, a2 + 32 * v4, result[1]);
  if (!v3)
  {
    return v6;
  }

  return result;
}

void *sub_1B0CE43F4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = result[2];
  v6 = *result - v5;
  if (__OFSUB__(*result, v5))
  {
    __break(1u);
    goto LABEL_28;
  }

  v9 = result[1];
  if (v6 < v9)
  {
    v11 = v9 - v6;
    if (__OFSUB__(v9, v6))
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v12 = *result - v5;
    v10 = a2;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = result[1];
  }

  v16 = v6 >= v9;
  if (v12 >= a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = v12;
  }

  if (v13 < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (a2 && v13)
  {
    result = swift_arrayInitWithCopy();
  }

  if (v12 >= a4 || v16)
  {
    sub_1B0CE4938((a5 + 16), v13, a5);
  }

  if (a4 - v13 >= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = a4 - v13;
  }

  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    goto LABEL_30;
  }

  if (v15 < v13)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    if (v10)
    {
      if (v14)
      {
        swift_arrayInitWithCopy();
      }
    }

    sub_1B0CE4938((a5 + 16), v15, a5);
  }

LABEL_32:
  __break(1u);
  __break(1u);
  return result;
}

void *sub_1B0CE4580(void *result, uint64_t a2, void *a3, void *a4)
{
  v4 = result[2];
  v5 = *result - v4;
  if (__OFSUB__(*result, v4))
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = result[1];
  if (v5 < v8)
  {
    v10 = v8 - v5;
    if (__OFSUB__(v8, v5))
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v11 = *result - v4;
    v9 = a2;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = result[1];
  }

  v15 = v5 >= v8;
  if (v11 < 0)
  {
    goto LABEL_24;
  }

  if (a2 && v11)
  {
    result = swift_arrayInitWithCopy();
  }

  v12 = *a4 + v11;
  if (__OFADD__(*a4, v11))
  {
    goto LABEL_25;
  }

  *a4 = v12;
  if (v15)
  {
    return result;
  }

  if (__OFADD__(v11, v10))
  {
    goto LABEL_27;
  }

  if (v11 + v10 < v11)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    __break(1u);
    return result;
  }

  if (*a3)
  {
    result = (*a3 + 32 * v11);
  }

  else
  {
    result = 0;
  }

  if (v9)
  {
    if (v10)
    {
      result = swift_arrayInitWithCopy();
      v12 = *a4;
    }
  }

  v13 = __OFADD__(v12, v10);
  v14 = v12 + v10;
  if (v13)
  {
    goto LABEL_29;
  }

  *a4 = v14;
  return result;
}

uint64_t sub_1B0CE46C4()
{
  v1 = *v0;
  v3 = *(*v0 + 24);
  v2 = *(*v0 + 32);
  v6 = __OFADD__(v2, v3);
  v4 = v2 + v3;
  if (v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v3 < 0)
  {
LABEL_7:
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(v1 + 16);
    v6 = __OFADD__(v4, v7);
    v4 += v7;
    if (!v6)
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  v5 = *(v1 + 16);
  v6 = __OFSUB__(v4, v5);
  v1 = v4 - v5;
  if (v1 < 0 == v6)
  {
    v4 = v1;
    if (v6)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

LABEL_9:
  if (!v4 || v4 == v0[1])
  {
    return 0;
  }

  v0[1] = 0;
  v0[2] = v4;
  return 1;
}

void *sub_1B0CE472C@<X0>(void *result@<X0>, void *a2@<X2>, void *(*a3)(__int128 *__return_ptr, void *, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = __OFSUB__(v7, *a2);
  v9 = v7 - *a2;
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = __OFADD__(v6, v9);
  v10 = v6 + v9;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10 - v6;
  if (v10 < v6)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = &result[4 * v6];
  if (result)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  result = a3(&v15, v13, v11);
  if (!v4)
  {
    v14 = v16;
    *a4 = v15;
    *(a4 + 16) = v14;
  }

  return result;
}

void *sub_1B0CE47AC@<X0>(void *result@<X0>, void *a2@<X2>, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t)@<X3>, void *a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = __OFSUB__(v7, *a2);
  v9 = v7 - *a2;
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = __OFADD__(v6, v9);
  v10 = v6 + v9;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10 - v6;
  if (v10 < v6)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = &result[4 * v6];
  if (result)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  result = a3(&v14, v13, v11);
  if (!v4)
  {
    *a4 = v14;
  }

  return result;
}

uint64_t sub_1B0CE4824()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E62C0, &qword_1B0EE4EE0);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    sub_1B0CE3D18(v4 + 16, v4 + 40, v2, v1 + 40, &type metadata for MailboxToRename);
  }

  *v0 = v4;
  return result;
}

uint64_t *sub_1B0CE4938(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result[1];
  v3 = result[2];
  v5 = *result;
  if (v4 == a2)
  {
    return a3;
  }

  v6 = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    __break(1u);
  }

  else
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v7 = __OFSUB__(v6, v5);
      if (v6 < v5)
      {
        return a3;
      }

      v6 -= v5;
      if (!v7)
      {
        return a3;
      }

      __break(1u);
    }

    if ((v6 & 0x8000000000000000) == 0 || !__OFADD__(v6, v5))
    {
      return a3;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0CE49C8()
{
  result = qword_1EB6E62C8;
  if (!qword_1EB6E62C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E62D0, "2");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E62C8);
  }

  return result;
}

uint64_t sub_1B0CE4A9C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = a2;
  if (!a2)
  {
LABEL_6:
    *a3 = v5;
    return result;
  }

  if (*(v3 + 24) >= a2)
  {
    result = swift_arrayInitWithCopy();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CE4B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1B0CE3F74(a1, a2, *(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
    a3[2] = v8;
  }

  return result;
}

void sub_1B0CE4BA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v64 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v60 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v55 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E62F8, &qword_1B0EE59B8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v62 = (&v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v61 = (&v55 - v14);
  if (a1 == a2)
  {
    v63 = 1;
  }

  else if (*(a1 + 16) == *(a2 + 16))
  {
    v15 = 0;
    v57 = a2;
    v58 = a1;
    v18 = *(a1 + 64);
    v17 = a1 + 64;
    v16 = v18;
    v19 = 1 << *(v17 - 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & v16;
    v55 = (v19 + 63) >> 6;
    v56 = v17;
    while (v21)
    {
      v22 = __clz(__rbit64(v21));
      v23 = (v21 - 1) & v21;
      v24 = v22 | (v15 << 6);
LABEL_16:
      v29 = v59;
      v30 = *(v58 + 48) + 16 * v24;
      v31 = *v30;
      v32 = *(v30 + 8);
      sub_1B03B5C80(*(v58 + 56) + *(v64 + 72) * v24, v59, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6300, &unk_1B0EE59C0);
      v34 = *(v33 + 48);
      v35 = v62;
      *v62 = v31;
      *(v35 + 2) = v32;
      v36 = v35;
      sub_1B03C60A4(v29, v35 + v34, &unk_1EB6E26C0, &unk_1B0E9DE10);
      (*(*(v33 - 8) + 56))(v36, 0, 1, v33);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      a2 = v57;
LABEL_17:
      v37 = v36;
      v38 = v61;
      sub_1B03C60A4(v37, v61, &qword_1EB6E62F8, &qword_1B0EE59B8);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6300, &unk_1B0EE59C0);
      v40 = (*(*(v39 - 8) + 48))(v38, 1, v39);
      v63 = v40 == 1;
      if (v40 == 1)
      {
        return;
      }

      v41 = v23;
      v42 = v64;
      v43 = *(v39 + 48);
      v44 = v38;
      v45 = *v38;
      v46 = *(v44 + 2);
      sub_1B03C60A4(v44 + v43, v8, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v47 = sub_1B03AB888(v45, v46);
      v49 = v48;

      if ((v49 & 1) == 0)
      {
        sub_1B0398EFC(v8, &unk_1EB6E26C0, &unk_1B0E9DE10);
        goto LABEL_24;
      }

      v50 = *(a2 + 56) + *(v42 + 72) * v47;
      v51 = v60;
      sub_1B03B5C80(v50, v60, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B03D06F8();
      v52 = sub_1B0E46E08();
      sub_1B0398EFC(v51, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0398EFC(v8, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v21 = v41;
      if ((v52 & 1) == 0)
      {
        return;
      }
    }

    if (v55 <= v15 + 1)
    {
      v25 = v15 + 1;
    }

    else
    {
      v25 = v55;
    }

    v26 = v25 - 1;
    while (1)
    {
      v27 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v27 >= v55)
      {
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6300, &unk_1B0EE59C0);
        v54 = v62;
        (*(*(v53 - 8) + 56))(v62, 1, 1, v53);
        v23 = 0;
        v15 = v26;
        v36 = v54;
        goto LABEL_17;
      }

      v28 = *(v56 + 8 * v27);
      ++v15;
      if (v28)
      {
        v23 = (v28 - 1) & v28;
        v24 = __clz(__rbit64(v28)) | (v27 << 6);
        v15 = v27;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    v63 = 0;
  }
}

void sub_1B0CE5080(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v31 = (v7 - 1) & v7;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = *(a1 + 48) + 16 * v12;
      v14 = *(a1 + 56) + 24 * v12;
      v15 = *v14;
      v30 = *(v14 + 8);
      v16 = *(v14 + 16);
      v17 = sub_1B03AB888(*v13, *(v13 + 8));
      v19 = v18;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if ((v19 & 1) == 0 || (v20 = *(a2 + 56) + 24 * v17, v21 = *v20, v22 = *(*v20 + 16), v22 != *(v15 + 16)))
      {
LABEL_34:

        return;
      }

      v23 = *(v20 + 8);
      v24 = *(v20 + 16);
      if (v22)
      {
        v25 = v21 == v15;
      }

      else
      {
        v25 = 1;
      }

      if (!v25)
      {
        v26 = (v21 + 36);
        v27 = (v15 + 36);
        while (v22)
        {
          if (*(v27 - 1) != *(v26 - 1))
          {
            goto LABEL_34;
          }

          v28 = *v26;
          v26 += 2;
          if (*v27 != v28)
          {
            goto LABEL_34;
          }

          v27 += 2;
          if (!--v22)
          {
            goto LABEL_20;
          }
        }

        goto LABEL_37;
      }

LABEL_20:

      if (v24)
      {
        v7 = v31;
        if ((v16 & 1) == 0)
        {
          return;
        }
      }

      else
      {
        v7 = v31;
        if (v23 == v30)
        {
          v29 = v16;
        }

        else
        {
          v29 = 1;
        }

        if (v29)
        {
          return;
        }
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v31 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
  }
}

unint64_t sub_1B0CE526C(unint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_17:
    v13 = v10 | (v4 << 6);
    v14 = *(v3 + 56) + 16 * v13;
    v15 = *v14;
    v16 = *(v14 + 8);
    result = sub_1B0CBF490(*(*(v3 + 48) + v13));
    if ((v17 & 1) == 0)
    {
      return 0;
    }

    v18 = *(a2 + 56) + 16 * result;
    if (*(v18 + 8) == 1)
    {
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*v18 == v15)
      {
        v9 = v16;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
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

    v12 = *(v3 + 64 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0CE5398(unint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_1B03B8A9C(*(*(v3 + 48) + 16 * v12), *(*(v3 + 48) + 16 * v12 + 8));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CE54A4(uint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    v14 = sub_1B03FE284(*(*(v3 + 48) + 4 * v12));
    if (v15)
    {
      result = sub_1B0BE9028(*(*(a2 + 56) + 8 * v14), v13);
      if (result)
      {
        continue;
      }
    }

    return 0;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CE55B0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v29 = result + 64;
  v30 = result;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 64);
  v28 = (v3 + 63) >> 6;
  while (v5)
  {
    v6 = __clz(__rbit64(v5));
    v32 = (v5 - 1) & v5;
LABEL_13:
    v9 = v6 | (v2 << 6);
    v10 = (*(result + 48) + 40 * v9);
    v11 = *v10;
    v12 = *(v10 + 1);
    v13 = *(v10 + 1);
    v14 = *(v10 + 4);
    v15 = *(v10 + 3);
    v16 = *(v10 + 4);
    v17 = *(result + 56) + 12 * v9;
    v18 = *v17;
    v19 = *(v17 + 8);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B2000(v15, v16);
    v20 = v13 == 0;
    if (!v13)
    {
      return v20;
    }

    v33[0] = v11 | (v12 << 32);
    v33[1] = v13;
    v33[2] = v14;
    v33[3] = v15;
    v33[4] = v16;
    v21 = sub_1B0AE0250(v33);
    v23 = v22;
    sub_1B0929338(v33);
    if ((v23 & 1) == 0)
    {
      return v20;
    }

    v24 = *(a2 + 56) + 12 * v21;
    v25 = *v24;
    if (*(v24 + 8) != 1)
    {
      if (v19)
      {
        return v20;
      }

      v27 = v18 == v25;
      goto LABEL_28;
    }

    if (v25)
    {
      if (v19)
      {
        v26 = v18 == 0;
      }

      else
      {
        v26 = 1;
      }

      result = v30;
      v5 = v32;
      if (v26)
      {
        return v20;
      }
    }

    else
    {
      if (v19)
      {
        v27 = v18 == 0;
      }

      else
      {
        v27 = 0;
      }

LABEL_28:
      result = v30;
      v5 = v32;
      if (!v27)
      {
        return v20;
      }
    }
  }

  v7 = v2;
  while (1)
  {
    v2 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v2 >= v28)
    {
      return 1;
    }

    v8 = *(v29 + 8 * v2);
    ++v7;
    if (v8)
    {
      v6 = __clz(__rbit64(v8));
      v32 = (v8 - 1) & v8;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CE5798(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v27 = (v7 - 1) & v7;
LABEL_17:
    v13 = v10 | (v3 << 6);
    v14 = result;
    v15 = (*(result + 48) + 16 * v13);
    v16 = *(result + 56) + 24 * v13;
    v17 = *v16;
    v18 = *(v16 + 4);
    v19 = *(v16 + 8);
    v20 = *(v16 + 16);
    v21 = sub_1B03B8A9C(*v15, v15[1]);
    if ((v22 & 1) == 0)
    {
      return 0;
    }

    v23 = *(a2 + 56) + 24 * v21;
    v24 = *(v23 + 8);
    v25 = *(v23 + 16);
    if (*(v23 + 4))
    {
      if (!v18)
      {
        return 0;
      }
    }

    else
    {
      if (*v23 == v17)
      {
        v26 = v18;
      }

      else
      {
        v26 = 1;
      }

      if (v26)
      {
        return 0;
      }
    }

    if (v25)
    {
      result = v14;
      v7 = v27;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v24 == v19)
      {
        v9 = v20;
      }

      else
      {
        v9 = 1;
      }

      result = v14;
      v7 = v27;
      if (v9)
      {
        return 0;
      }
    }
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v27 = (v12 - 1) & v12;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

void sub_1B0CE5920(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v64 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v60 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v55 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6320, &qword_1B0EE59F8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v62 = (&v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v61 = (&v55 - v14);
  if (a1 == a2)
  {
    v63 = 1;
  }

  else if (*(a1 + 16) == *(a2 + 16))
  {
    v15 = 0;
    v57 = a2;
    v58 = a1;
    v18 = *(a1 + 64);
    v17 = a1 + 64;
    v16 = v18;
    v19 = 1 << *(v17 - 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & v16;
    v55 = (v19 + 63) >> 6;
    v56 = v17;
    while (v21)
    {
      v22 = __clz(__rbit64(v21));
      v23 = (v21 - 1) & v21;
      v24 = v22 | (v15 << 6);
LABEL_16:
      v29 = v59;
      v30 = *(v58 + 48) + 16 * v24;
      v31 = *v30;
      v32 = *(v30 + 8);
      sub_1B03B5C80(*(v58 + 56) + *(v64 + 72) * v24, v59, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6328, &qword_1B0EE5A00);
      v34 = *(v33 + 48);
      v35 = v62;
      *v62 = v31;
      *(v35 + 2) = v32;
      v36 = v35;
      sub_1B03C60A4(v29, v35 + v34, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      (*(*(v33 - 8) + 56))(v36, 0, 1, v33);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      a2 = v57;
LABEL_17:
      v37 = v36;
      v38 = v61;
      sub_1B03C60A4(v37, v61, &qword_1EB6E6320, &qword_1B0EE59F8);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6328, &qword_1B0EE5A00);
      v40 = (*(*(v39 - 8) + 48))(v38, 1, v39);
      v63 = v40 == 1;
      if (v40 == 1)
      {
        return;
      }

      v41 = v23;
      v42 = v64;
      v43 = *(v39 + 48);
      v44 = v38;
      v45 = *v38;
      v46 = *(v44 + 2);
      sub_1B03C60A4(v44 + v43, v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v47 = sub_1B03AB888(v45, v46);
      v49 = v48;

      if ((v49 & 1) == 0)
      {
        sub_1B0398EFC(v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        goto LABEL_24;
      }

      v50 = *(a2 + 56) + *(v42 + 72) * v47;
      v51 = v60;
      sub_1B03B5C80(v50, v60, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03D06F8();
      v52 = sub_1B0E46E08();
      sub_1B0398EFC(v51, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0398EFC(v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v21 = v41;
      if ((v52 & 1) == 0)
      {
        return;
      }
    }

    if (v55 <= v15 + 1)
    {
      v25 = v15 + 1;
    }

    else
    {
      v25 = v55;
    }

    v26 = v25 - 1;
    while (1)
    {
      v27 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v27 >= v55)
      {
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6328, &qword_1B0EE5A00);
        v54 = v62;
        (*(*(v53 - 8) + 56))(v62, 1, 1, v53);
        v23 = 0;
        v15 = v26;
        v36 = v54;
        goto LABEL_17;
      }

      v28 = *(v56 + 8 * v27);
      ++v15;
      if (v28)
      {
        v23 = (v28 - 1) & v28;
        v24 = __clz(__rbit64(v28)) | (v27 << 6);
        v15 = v27;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    v63 = 0;
  }
}

uint64_t SearchRequest.Query.mailboxes.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

unint64_t SearchRequest.Query.predicate.setter(uint64_t a1)
{
  result = sub_1B09AEA14(*(v1 + 8));
  *(v1 + 8) = a1;
  return result;
}

unint64_t static SearchRequest.Query.__derived_struct_equals(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1B0CE5080(a1, a3);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  return static SearchRequest.Predicate.__derived_enum_equals(_:_:)(a2, a4);
}

unint64_t static SearchRequest.Predicate.__derived_enum_equals(_:_:)(unint64_t a1, unint64_t a2)
{
  while (2)
  {
    switch(a1 >> 60)
    {
      case 1uLL:
        if (a2 >> 60 != 1)
        {
          goto LABEL_60;
        }

        return *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10) && *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18) && *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      case 2uLL:
        if (a2 >> 60 != 2)
        {
          goto LABEL_60;
        }

        goto LABEL_37;
      case 3uLL:
        if (a2 >> 60 != 3)
        {
          goto LABEL_60;
        }

        goto LABEL_37;
      case 4uLL:
        if (a2 >> 60 != 4)
        {
          goto LABEL_60;
        }

        return *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      case 5uLL:
        if (a2 >> 60 != 5)
        {
          goto LABEL_60;
        }

        goto LABEL_37;
      case 6uLL:
        if (a2 >> 60 != 6)
        {
          goto LABEL_60;
        }

        v11 = a1 & 0xFFFFFFFFFFFFFFFLL;
        v12 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v13 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v14 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v15 = *(v11 + 40);
        v16 = a2 & 0xFFFFFFFFFFFFFFFLL;
        v17 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v18 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v19 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v20 = *(v16 + 40);
        v21 = v12 == v17 && v13 == v18;
        if (!v21 && (sub_1B0E46A78() & 1) == 0)
        {
          goto LABEL_60;
        }

        if (v14 != v19 || v15 != v20)
        {
          goto LABEL_41;
        }

        goto LABEL_59;
      case 7uLL:
        if (a2 >> 60 != 7)
        {
          goto LABEL_60;
        }

        v24 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v25 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        sub_1B09AE83C(v25);
        LOBYTE(v24) = static SearchRequest.Predicate.__derived_enum_equals(_:_:)(v24, v25);
        sub_1B09AEA14(v25);
        return v24 & 1;
      case 8uLL:
        if (a2 >> 60 == 8)
        {
          v7 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          a1 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v8 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          a2 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          if (static SearchRequest.Predicate.__derived_enum_equals(_:_:)(v7, v8))
          {
            continue;
          }
        }

        goto LABEL_60;
      case 9uLL:
        if (a2 >> 60 != 9)
        {
          goto LABEL_60;
        }

        return *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10) && *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18) && *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      case 0xAuLL:
        if (a2 >> 60 == 10)
        {
          goto LABEL_37;
        }

        goto LABEL_60;
      case 0xBuLL:
        if (a2 >> 60 != 11)
        {
          goto LABEL_60;
        }

LABEL_37:
        if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10) && *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18))
        {
          goto LABEL_59;
        }

LABEL_41:

        return sub_1B0E46A78();
      case 0xCuLL:
        v9 = __ROR8__(a1 + 0x4000000000000000, 3);
        if (v9 > 1)
        {
          if (v9 == 2)
          {
            v10 = 0xC000000000000010;
          }

          else
          {
            v10 = 0xC000000000000018;
          }
        }

        else if (v9)
        {
          v10 = 0xC000000000000008;
        }

        else
        {
          v10 = 0xC000000000000000;
        }

        if (a2 != v10)
        {
          goto LABEL_60;
        }

LABEL_59:
        result = 1;
        break;
      default:
        if (!(a2 >> 60))
        {
          v4 = *(a1 + 24);
          v5 = *(a2 + 16);
          a2 = *(a2 + 24);
          v6 = static SearchRequest.Predicate.__derived_enum_equals(_:_:)(*(a1 + 16), v5);
          a1 = v4;
          if (v6)
          {
            continue;
          }
        }

LABEL_60:
        result = 0;
        break;
    }

    return result;
  }
}

unint64_t sub_1B0CE61C8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_1B0CE5080(*a1, *a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  return static SearchRequest.Predicate.__derived_enum_equals(_:_:)(v2, v3);
}

void static SearchRequest.Kind.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a2 & 4) != 0)
  {
    if ((a4 & 4) != 0)
    {

      sub_1B0CE4BA0(a1, a3);
    }
  }

  else if ((a4 & 4) == 0)
  {
    sub_1B0CE5080(a1, a3);
    if (v6)
    {
      static SearchRequest.Predicate.__derived_enum_equals(_:_:)(a2, a4);
    }
  }
}

void sub_1B0CE629C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if ((v5 & 4) != 0)
  {
    if ((v7 & 4) != 0)
    {

      sub_1B0CE4BA0(v4, v6);
    }
  }

  else if ((v7 & 4) == 0)
  {
    sub_1B0CE5080(v4, v6);
    if (v8)
    {
      static SearchRequest.Predicate.__derived_enum_equals(_:_:)(v5, v7);
    }
  }
}