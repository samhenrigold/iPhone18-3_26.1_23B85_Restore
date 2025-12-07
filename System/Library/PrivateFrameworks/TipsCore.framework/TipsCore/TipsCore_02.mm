void *sub_1C0122218(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, id))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1C01237B8(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1C01222A8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06478, &unk_1C01571F0);
  result = sub_1C014C910();
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
  v32 = v4;
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
    v21 = *(v17 + 8 * v16);
    sub_1C014CAE0();

    v33 = v21;
    sub_1C014C2E0();
    result = sub_1C014CB10();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
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

unsigned __int8 *sub_1C01224E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1C014C380();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1C0122A74(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1C014C850();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1C0122A74(uint64_t a1, unint64_t a2)
{
  v2 = sub_1C014C390();
  v6 = sub_1C0122AF4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1C0122AF4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1C014C650();
    if (!v9 || (v10 = v9, v11 = sub_1C0120B80(v9, 0), v12 = sub_1C0122C4C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1C014C2D0();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1C014C2D0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1C014C850();
LABEL_4:

  return sub_1C014C2D0();
}

unint64_t sub_1C0122C4C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1C0145A18(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1C014C340();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1C014C850();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1C0145A18(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1C014C320();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void *sub_1C0122E6C(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(*(a5 + 56) + 8 * a2);
    *result = v6;

    v7 = v6;
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1C0122EFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C0122FD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C0123044()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 2);
  v6 = *(v0 + 3);
  v7 = *(v0 + 4);
  v8 = &v0[v3];
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = *&v0[v4];
  v12 = *&v0[v4 + 8];

  sub_1C011EEA0(v5, v6, v7, &v0[v2], v9, v10, v11, v12);
}

uint64_t sub_1C0123124(uint64_t a1)
{
  result = sub_1C014BF40();
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

uint64_t sub_1C012348C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C01234FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;
  v12 = swift_bridgeObjectRetain_n();
  if (v9 > 0xD)
  {
LABEL_24:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v26 = swift_slowAlloc();

      sub_1C0122054(v26, v10, a1, a2, a3);
      v24 = v27;
      MEMORY[0x1C68D7F30](v26, -1, -1);
      swift_bridgeObjectRelease_n();
      return v24;
    }
  }

  v29 = v10;
  v30 = v4;
  v28[1] = v28;
  MEMORY[0x1EEE9AC00](v12);
  v31 = v28 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v31, v11);
  v13 = 0;
  v14 = 0;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v11 = v16 & *(a1 + 64);
  v4 = (v15 + 63) >> 6;
  while (2)
  {
    v32 = v13;
    do
    {
      if (!v11)
      {
        v18 = v14;
        while (1)
        {
          v14 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v14 >= v4)
          {
            goto LABEL_21;
          }

          v19 = *(a1 + 64 + 8 * v14);
          ++v18;
          if (v19)
          {
            v17 = __clz(__rbit64(v19));
            v11 = (v19 - 1) & v19;
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_24;
      }

      v17 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_13:
      v20 = v17 | (v14 << 6);
      v10 = *(*(a1 + 56) + 8 * v20) + OBJC_IVAR___TPSSavedTipEntry_tipIdentifier;
      swift_beginAccess();
      v21 = *v10 == a2 && *(v10 + 8) == a3;
    }

    while (!v21 && (sub_1C014C9F0() & 1) == 0);
    v22 = v32;
    *&v31[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
    v23 = __OFADD__(v22, 1);
    v13 = v22 + 1;
    if (!v23)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_21:

  v24 = sub_1C01222A8(v31, v29, v32, a1);

  swift_bridgeObjectRelease_n();
  return v24;
}

void sub_1C01237B8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, id))
{
  v22 = 0;
  v4 = 0;
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
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a3 + 56) + 8 * v13);

    v18 = v17;
    LOBYTE(v15) = a4(v15, v16, v18);

    if (v15)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1C01222A8(a1, a2, v22, a3);
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
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1C0123928(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, id))
{
  v4 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      sub_1C0122218(v9, v6, v4, a2);
      MEMORY[0x1C68D7F30](v9, -1, -1);
      return;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v8 = v10 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_1C01237B8(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }
}

void sub_1C0123AD0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR___TPSSavedTipsManager__isCurrentTipSaved;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

unint64_t sub_1C0123BAC(char a1)
{
  result = 0x6369766544535054;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000028;
      break;
    case 2:
    case 23:
    case 37:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD00000000000002CLL;
      break;
    case 4:
      v3 = 17;
      goto LABEL_16;
    case 5:
      v3 = 5;
LABEL_16:
      result = v3 | 0xD000000000000022;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 7:
    case 31:
      result = 0xD000000000000012;
      break;
    case 8:
      return result;
    case 9:
    case 11:
    case 42:
      result = 0xD00000000000001BLL;
      break;
    case 10:
    case 21:
      result = 0xD00000000000001CLL;
      break;
    case 12:
    case 36:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0x726F6E6749535054;
      break;
    case 14:
    case 25:
    case 26:
    case 28:
      result = 0xD000000000000024;
      break;
    case 16:
    case 34:
      result = 0xD000000000000020;
      break;
    case 17:
      result = 0xD000000000000022;
      break;
    case 18:
      result = 0xD00000000000002ALL;
      break;
    case 19:
      result = 0xD000000000000022;
      break;
    case 20:
    case 29:
    case 38:
      result = 0xD00000000000001FLL;
      break;
    case 22:
      result = 0xD000000000000013;
      break;
    case 24:
    case 30:
      result = 0xD000000000000023;
      break;
    case 27:
    case 43:
      result = 0xD000000000000021;
      break;
    case 33:
      result = 0xD000000000000022;
      break;
    case 35:
      result = 0xD000000000000015;
      break;
    case 39:
      result = 0xD000000000000022;
      break;
    case 40:
      result = 0xD000000000000031;
      break;
    case 41:
      result = 0x5472657355535054;
      break;
    case 44:
      result = 0xD000000000000019;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1C0123FF8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1C0123BAC(*a1);
  v5 = v4;
  if (v3 == sub_1C0123BAC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C014C9F0();
  }

  return v8 & 1;
}

uint64_t sub_1C0124080()
{
  v1 = *v0;
  sub_1C014CAE0();
  sub_1C0123BAC(v1);
  sub_1C014C2E0();

  return sub_1C014CB10();
}

uint64_t sub_1C01240E4(uint64_t a1)
{
  sub_1C0123BAC(*v1);
  sub_1C014C2E0();
}

uint64_t sub_1C0124138()
{
  v1 = *v0;
  sub_1C014CAE0();
  sub_1C0123BAC(v1);
  sub_1C014C2E0();

  return sub_1C014CB10();
}

unint64_t sub_1C0124198@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C0125880(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1C01241C8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C0123BAC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C0124244()
{
  sub_1C01254E8(6, &v2);
  v0 = v3;
  sub_1C00FC158(&v2);
  if (v0)
  {
    return sub_1C01258D4(6);
  }

  else
  {
    return sub_1C014B910();
  }
}

uint64_t sub_1C01242A4()
{
  sub_1C01254E8(17, &v2);
  v0 = v3;
  sub_1C00FC158(&v2);
  if (v0)
  {
    return sub_1C01258D4(17);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C012437C()
{
  result = sub_1C01243A0();
  byte_1EDD44C08 = result & 1;
  return result;
}

uint64_t sub_1C01243A0()
{
  v0 = [objc_opt_self() clientBundleIdentifier];
  if (v0)
  {
    v1 = v0;
    sub_1C014C230();

    sub_1C014C2B0();
  }

  v2 = os_variant_allows_internal_security_policies();
  swift_unknownObjectRelease();
  if (!v2)
  {
    return 0;
  }

  v3 = [objc_opt_self() standardUserDefaults];
  v4 = sub_1C014C200();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_1C014C6E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {
    sub_1C00FC158(v14);
    return 1;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 1;
  }

  if (qword_1EDD44C50 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDD44C58;
  sub_1C014C800();

  *&v14[0] = 0xD00000000000002ELL;
  *(&v14[0] + 1) = 0x80000001C015CE70;
  if (v11)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v11)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1C68D6B10](v8, v9);

  v10 = v14[0];
  *&v14[0] = v7;
  TipsLog.log(_:)(v10);

  return v11;
}

uint64_t static TipsDefaultsManager.isInternalDevice.getter()
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return byte_1EDD44C08;
}

void static TipsDefaultsManager.isInternalDevice.setter(char a1)
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  byte_1EDD44C08 = a1 & 1;
}

uint64_t (*static TipsDefaultsManager.isInternalDevice.modify(uint64_t a1))()
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void sub_1C0124858(_BYTE *a1@<X8>)
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = byte_1EDD44C08;
}

void sub_1C01248D4(char *a1)
{
  v1 = *a1;
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  byte_1EDD44C08 = v1;
}

id sub_1C0124B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C01254E8(a3, &v6);
  if (v7)
  {
    if (swift_dynamicCast())
    {
      v3 = sub_1C014C200();

      v4 = v3;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1C00FC158(&v6);
  }

  v4 = 0;
LABEL_6:

  return v4;
}

uint64_t sub_1C0124BA8(uint64_t a1)
{
  sub_1C01254E8(a1, &v3);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1C00FC158(&v3);
    return 0;
  }
}

double sub_1C0124DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C01254E8(a3, &v5);
  if (v6)
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1C00FC158(&v5);
  }

  return 0.0;
}

double sub_1C0124E70(uint64_t a1)
{
  sub_1C01254E8(a1, &v3);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_1C00FC158(&v3);
  }

  return 0.0;
}

uint64_t sub_1C0124ED8()
{
  sub_1C01254E8(34, &v2);
  v0 = v3;
  sub_1C00FC158(&v2);
  if (v0)
  {
    *&result = sub_1C01258D4(34) / 100.0;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t sub_1C01250FC@<X0>(uint64_t a1@<X8>)
{
  sub_1C01254E8(16, &v6);
  if (v7)
  {
    v2 = sub_1C014BD40();
    v3 = swift_dynamicCast();
    return (*(*(v2 - 8) + 56))(a1, v3 ^ 1u, 1, v2);
  }

  else
  {
    sub_1C00FC158(&v6);
    v5 = sub_1C014BD40();
    return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }
}

id sub_1C01251F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C01254E8(a3, &v6);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE067C0, &qword_1C0157160);
    if (swift_dynamicCast())
    {
      v3 = sub_1C014C3B0();

      v4 = v3;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1C00FC158(&v6);
  }

  v4 = 0;
LABEL_6:

  return v4;
}

uint64_t sub_1C01252B0(uint64_t a1)
{
  sub_1C01254E8(a1, &v3);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE067C0, &qword_1C0157160);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1C00FC158(&v3);
    return 0;
  }
}

id sub_1C012532C(uint64_t a1)
{
  v1 = a1;
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = 0;
  if (byte_1EDD44C08 == 1)
  {
    sub_1C01254E8(v1, &v7);
    if (v8)
    {
      sub_1C00F9954(&v7, v9);
      sub_1C00FC1C0(v9, &v7);
      sub_1C010074C(0, &qword_1EBE05C58, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        return v6;
      }

      sub_1C00FC1C0(v9, &v7);
      if (swift_dynamicCast())
      {
        v3 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
        v4 = sub_1C014C200();

        v5 = [v3 numberFromString_];

        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        return v5;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v9);
    }

    else
    {
      sub_1C00FC158(&v7);
    }

    return 0;
  }

  return result;
}

void sub_1C01254E8(char a1@<W0>, Swift::String *a2@<X8>)
{
  *a2 = 0u;
  a2[1] = 0u;
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1EDD44C08 == 1)
  {
    v4 = [objc_opt_self() standardUserDefaults];
    sub_1C0123BAC(a1);
    v5 = sub_1C014C200();

    v6 = [v4 objectForKey_];

    if (v6)
    {
      sub_1C014C6E0();
      swift_unknownObjectRelease();
      sub_1C00FC158(a2);
    }

    else
    {
      sub_1C00FC158(a2);
      v15 = 0;
      v16 = 0;
    }

    v7 = v16;
    *a2 = v15;
    a2[1] = v7;
    sub_1C011C8B0(a2, &v15);
    if (v16._object)
    {
      sub_1C010074C(0, &qword_1EBE05C50, 0x1E69E58C0);
      if (swift_dynamicCast())
      {
        if (qword_1EDD44C50 != -1)
        {
          swift_once();
        }

        v8 = qword_1EDD44C58;
        v15._countAndFlagsBits = 0;
        v15._object = 0xE000000000000000;
        sub_1C014C800();
        MEMORY[0x1C68D6B10](0x20746C7561666544, 0xE800000000000000);
        sub_1C014C8B0();
        MEMORY[0x1C68D6B10](0xD000000000000015, 0x80000001C015CE50);
        v9 = [v14 description];
        v10 = sub_1C014C230();
        v12 = v11;

        MEMORY[0x1C68D6B10](v10, v12);

        v13 = v15;
        v15._countAndFlagsBits = v8;
        TipsLog.log(_:)(v13);
      }
    }

    else
    {
      sub_1C00FC158(&v15);
    }
  }
}

id TipsDefaultsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TipsDefaultsManager.init()(uint64_t a1, __n128 a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TipsDefaultsManager();
  return objc_msgSendSuper2(&v4, sel_init);
}

id TipsDefaultsManager.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TipsDefaultsManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1C0125880(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C014CA10();

  if (v2 >= 0x2D)
  {
    return 45;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C01258D4(uint64_t a1)
{
  v1 = a1;
  v2 = sub_1C014B910();
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1EDD44C08 == 1)
  {
    v3 = [objc_opt_self() standardUserDefaults];
    sub_1C0123BAC(v1);
    v4 = sub_1C014C200();

    v2 = [v3 integerForKey_];

    if (v2 >= 1)
    {
      if (qword_1EDD44C50 != -1)
      {
        swift_once();
      }

      sub_1C014C800();
      MEMORY[0x1C68D6B10](0x20746C7561666544, 0xE800000000000000);
      sub_1C014C8B0();
      MEMORY[0x1C68D6B10](0xD000000000000015, 0x80000001C015CE50);
      v5 = sub_1C014C9C0();
      MEMORY[0x1C68D6B10](v5);

      v6._countAndFlagsBits = 0;
      v6._object = 0xE000000000000000;
      TipsLog.log(_:)(v6);
    }
  }

  return v2;
}

uint64_t sub_1C0125AD4()
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1EDD44C08 != 1)
  {
    return 0;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1C014C200();
  v2 = [v0 BOOLForKey_];

  if (!v2)
  {
    return 0;
  }

  if (qword_1EDD44C50 != -1)
  {
    swift_once();
  }

  sub_1C014C800();
  MEMORY[0x1C68D6B10](0x20746C7561666544, 0xE800000000000000);
  sub_1C014C8B0();
  MEMORY[0x1C68D6B10](0xD000000000000015, 0x80000001C015CE50);
  MEMORY[0x1C68D6B10](1702195828, 0xE400000000000000);
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  TipsLog.log(_:)(v3);

  return 1;
}

uint64_t sub_1C0125CBC()
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1EDD44C08 != 1)
  {
    return 0;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1C014C200();
  v2 = [v0 BOOLForKey_];

  if (!v2)
  {
    return 0;
  }

  if (qword_1EDD44C50 != -1)
  {
    swift_once();
  }

  sub_1C014C800();
  MEMORY[0x1C68D6B10](0x20746C7561666544, 0xE800000000000000);
  sub_1C014C8B0();
  MEMORY[0x1C68D6B10](0xD000000000000015, 0x80000001C015CE50);
  MEMORY[0x1C68D6B10](1702195828, 0xE400000000000000);
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  TipsLog.log(_:)(v3);

  return 1;
}

uint64_t sub_1C0125EA4()
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1EDD44C08 != 1)
  {
    return 0;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1C014C200();
  v2 = [v0 BOOLForKey_];

  if (!v2)
  {
    return 0;
  }

  if (qword_1EDD44C50 != -1)
  {
    swift_once();
  }

  sub_1C014C800();
  MEMORY[0x1C68D6B10](0x20746C7561666544, 0xE800000000000000);
  sub_1C014C8B0();
  MEMORY[0x1C68D6B10](0xD000000000000015, 0x80000001C015CE50);
  MEMORY[0x1C68D6B10](1702195828, 0xE400000000000000);
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  TipsLog.log(_:)(v3);

  return 1;
}

uint64_t sub_1C0126090()
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1EDD44C08 != 1)
  {
    return 0;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1C014C200();
  v2 = [v0 BOOLForKey_];

  if (!v2)
  {
    return 0;
  }

  if (qword_1EDD44C50 != -1)
  {
    swift_once();
  }

  sub_1C014C800();
  MEMORY[0x1C68D6B10](0x20746C7561666544, 0xE800000000000000);
  sub_1C014C8B0();
  MEMORY[0x1C68D6B10](0xD000000000000015, 0x80000001C015CE50);
  MEMORY[0x1C68D6B10](1702195828, 0xE400000000000000);
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  TipsLog.log(_:)(v3);

  return 1;
}

uint64_t sub_1C0126278()
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1EDD44C08 != 1)
  {
    return 0;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1C014C200();
  v2 = [v0 BOOLForKey_];

  if (!v2)
  {
    return 0;
  }

  if (qword_1EDD44C50 != -1)
  {
    swift_once();
  }

  sub_1C014C800();
  MEMORY[0x1C68D6B10](0x20746C7561666544, 0xE800000000000000);
  sub_1C014C8B0();
  MEMORY[0x1C68D6B10](0xD000000000000015, 0x80000001C015CE50);
  MEMORY[0x1C68D6B10](1702195828, 0xE400000000000000);
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  TipsLog.log(_:)(v3);

  return 1;
}

uint64_t sub_1C0126460()
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1EDD44C08 != 1)
  {
    return 0;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1C014C200();
  v2 = [v0 BOOLForKey_];

  if (!v2)
  {
    return 0;
  }

  if (qword_1EDD44C50 != -1)
  {
    swift_once();
  }

  sub_1C014C800();
  MEMORY[0x1C68D6B10](0x20746C7561666544, 0xE800000000000000);
  sub_1C014C8B0();
  MEMORY[0x1C68D6B10](0xD000000000000015, 0x80000001C015CE50);
  MEMORY[0x1C68D6B10](1702195828, 0xE400000000000000);
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  TipsLog.log(_:)(v3);

  return 1;
}

uint64_t sub_1C0126648()
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1EDD44C08 != 1)
  {
    return 0;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1C014C200();
  v2 = [v0 BOOLForKey_];

  if (!v2)
  {
    return 0;
  }

  if (qword_1EDD44C50 != -1)
  {
    swift_once();
  }

  sub_1C014C800();
  MEMORY[0x1C68D6B10](0x20746C7561666544, 0xE800000000000000);
  sub_1C014C8B0();
  MEMORY[0x1C68D6B10](0xD000000000000015, 0x80000001C015CE50);
  MEMORY[0x1C68D6B10](1702195828, 0xE400000000000000);
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  TipsLog.log(_:)(v3);

  return 1;
}

uint64_t sub_1C012682C()
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1EDD44C08 != 1)
  {
    return 0;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1C014C200();
  v2 = [v0 BOOLForKey_];

  if (!v2)
  {
    return 0;
  }

  if (qword_1EDD44C50 != -1)
  {
    swift_once();
  }

  sub_1C014C800();
  MEMORY[0x1C68D6B10](0x20746C7561666544, 0xE800000000000000);
  sub_1C014C8B0();
  MEMORY[0x1C68D6B10](0xD000000000000015, 0x80000001C015CE50);
  MEMORY[0x1C68D6B10](1702195828, 0xE400000000000000);
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  TipsLog.log(_:)(v3);

  return 1;
}

uint64_t sub_1C0126A14()
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1EDD44C08 != 1)
  {
    return 0;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1C014C200();
  v2 = [v0 BOOLForKey_];

  if (!v2)
  {
    return 0;
  }

  if (qword_1EDD44C50 != -1)
  {
    swift_once();
  }

  sub_1C014C800();
  MEMORY[0x1C68D6B10](0x20746C7561666544, 0xE800000000000000);
  sub_1C014C8B0();
  MEMORY[0x1C68D6B10](0xD000000000000015, 0x80000001C015CE50);
  MEMORY[0x1C68D6B10](1702195828, 0xE400000000000000);
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  TipsLog.log(_:)(v3);

  return 1;
}

uint64_t sub_1C0126BFC()
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1EDD44C08 != 1)
  {
    return 0;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1C014C200();
  v2 = [v0 BOOLForKey_];

  if (!v2)
  {
    return 0;
  }

  if (qword_1EDD44C50 != -1)
  {
    swift_once();
  }

  sub_1C014C800();
  MEMORY[0x1C68D6B10](0x20746C7561666544, 0xE800000000000000);
  sub_1C014C8B0();
  MEMORY[0x1C68D6B10](0xD000000000000015, 0x80000001C015CE50);
  MEMORY[0x1C68D6B10](1702195828, 0xE400000000000000);
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  TipsLog.log(_:)(v3);

  return 1;
}

uint64_t getEnumTagSinglePayload for TipsDefaultsManager.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD4)
  {
    goto LABEL_17;
  }

  if (a2 + 44 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 44) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 44;
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

      return (*a1 | (v4 << 8)) - 44;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 44;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2D;
  v8 = v6 - 45;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TipsDefaultsManager.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 44 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 44) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD4)
  {
    v4 = 0;
  }

  if (a2 > 0xD3)
  {
    v5 = ((a2 - 212) >> 8) + 1;
    *result = a2 + 44;
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
    *result = a2 + 44;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C012732C()
{
  result = qword_1EBE069B0;
  if (!qword_1EBE069B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE069B0);
  }

  return result;
}

id TPSAssetsInfo.__allocating_init(videoIdentifier:videoURL:imageIdentifier:imageURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = objc_allocWithZone(v6);
  v10 = &v9[OBJC_IVAR___TPSAssetsInfo_videoIdentifier];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = OBJC_IVAR___TPSAssetsInfo_videoURL;
  v12 = sub_1C014BC50();
  v13 = *(*(v12 - 8) + 56);
  v13(&v9[v11], 1, 1, v12);
  v14 = &v9[OBJC_IVAR___TPSAssetsInfo_imageIdentifier];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = OBJC_IVAR___TPSAssetsInfo_imageURL;
  v13(&v9[OBJC_IVAR___TPSAssetsInfo_imageURL], 1, 1, v12);
  swift_beginAccess();
  *v10 = a1;
  *(v10 + 1) = a2;
  swift_beginAccess();
  sub_1C01276F4(a3, &v9[v11]);
  swift_endAccess();
  swift_beginAccess();
  *v14 = a4;
  *(v14 + 1) = a5;

  swift_beginAccess();
  sub_1C01276F4(a6, &v9[v15]);
  swift_endAccess();
  v23.receiver = v9;
  v23.super_class = v22;
  v16 = objc_msgSendSuper2(&v23, sel_init);
  sub_1C00FCBD4(a6);
  sub_1C00FCBD4(a3);
  return v16;
}

id TPSAssetsInfo.init(videoIdentifier:videoURL:imageIdentifier:imageURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v9 = &v6[OBJC_IVAR___TPSAssetsInfo_videoIdentifier];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = OBJC_IVAR___TPSAssetsInfo_videoURL;
  v11 = sub_1C014BC50();
  v12 = *(*(v11 - 8) + 56);
  v12(&v6[v10], 1, 1, v11);
  v13 = &v6[OBJC_IVAR___TPSAssetsInfo_imageIdentifier];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = OBJC_IVAR___TPSAssetsInfo_imageURL;
  v12(&v6[OBJC_IVAR___TPSAssetsInfo_imageURL], 1, 1, v11);
  swift_beginAccess();
  *v9 = a1;
  *(v9 + 1) = a2;
  swift_beginAccess();
  sub_1C01276F4(a3, &v6[v10]);
  swift_endAccess();
  swift_beginAccess();
  *v13 = a4;
  *(v13 + 1) = a5;

  swift_beginAccess();
  sub_1C01276F4(a6, &v6[v14]);
  swift_endAccess();
  v22.receiver = v6;
  v22.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v22, sel_init);
  sub_1C00FCBD4(a6);
  sub_1C00FCBD4(a3);
  return v15;
}

uint64_t sub_1C01276F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0127A14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0127A9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1C0127C08(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = *a3;
  swift_beginAccess();
  sub_1C0127A14(a1 + v8, v7);
  v9 = sub_1C014BC50();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_1C014BBB0();
    (*(v10 + 8))(v7, v9);
    v12 = v13;
  }

  return v12;
}

uint64_t sub_1C0127D50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_1C0127A14(v2 + v4, a2);
}

void sub_1C0127DB0(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  if (a3)
  {
    sub_1C014BBC0();
    v10 = sub_1C014BC50();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_1C014BC50();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = *a4;
  swift_beginAccess();
  v13 = a1;
  sub_1C0127A9C(v9, &a1[v12]);
  swift_endAccess();
}

uint64_t sub_1C0127EFC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_1C0127A9C(a1, v2 + v4);
  return swift_endAccess();
}

id TPSAssetsInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TPSAssetsInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall TPSAssetsInfo.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25[-v8];
  v10 = v2 + OBJC_IVAR___TPSAssetsInfo_videoIdentifier;
  swift_beginAccess();
  if (*(v10 + 8))
  {

    v11 = sub_1C014C200();
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
  swift_unknownObjectRelease();

  v13 = OBJC_IVAR___TPSAssetsInfo_videoURL;
  swift_beginAccess();
  sub_1C0127A14(v2 + v13, v9);
  v14 = sub_1C014BC50();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = 0;
  if (v16(v9, 1, v14) != 1)
  {
    v17 = sub_1C014BBB0();
    (*(v15 + 8))(v9, v14);
  }

  v18 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];
  swift_unknownObjectRelease();

  v19 = v2 + OBJC_IVAR___TPSAssetsInfo_imageIdentifier;
  swift_beginAccess();
  if (*(v19 + 8))
  {

    v20 = sub_1C014C200();
  }

  else
  {
    v20 = 0;
  }

  v21 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v20 forKey:v21];
  swift_unknownObjectRelease();

  v22 = OBJC_IVAR___TPSAssetsInfo_imageURL;
  swift_beginAccess();
  sub_1C0127A14(v2 + v22, v7);
  v23 = 0;
  if (v16(v7, 1, v14) != 1)
  {
    v23 = sub_1C014BBB0();
    (*(v15 + 8))(v7, v14);
  }

  v24 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v23 forKey:v24];
  swift_unknownObjectRelease();
}

id TPSAssetsInfo.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TPSAssetsInfo.init(coder:)(void *a1)
{
  v2 = sub_1C0128960();

  return v2;
}

uint64_t TPSAssetsInfo.description.getter()
{
  v1 = v0;
  v2 = sub_1C014BC50();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = 0xE000000000000000;
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_1C014C800();
  v29 = v27;
  v30 = v28;
  MEMORY[0x1C68D6B10](0xD000000000000012, 0x80000001C015CEC0);
  v7 = (v0 + OBJC_IVAR___TPSAssetsInfo_videoIdentifier);
  swift_beginAccess();
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v7[1];
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  MEMORY[0x1C68D6B10](v9, v10);

  MEMORY[0x1C68D6B10](0x556F65646976202CLL, 0xEC000000203A4C52);
  v11 = OBJC_IVAR___TPSAssetsInfo_videoURL;
  swift_beginAccess();
  v12 = *(v3 + 48);
  if (v12(v1 + v11, 1, v2))
  {
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  else
  {
    (*(v3 + 16))(v5, v1 + v11, v2);
    v15 = sub_1C014BBA0();
    v14 = v16;
    (*(v3 + 8))(v5, v2);
    v13 = v15;
  }

  MEMORY[0x1C68D6B10](v13, v14);

  MEMORY[0x1C68D6B10](0xD000000000000013, 0x80000001C015CEE0);
  v17 = (v1 + OBJC_IVAR___TPSAssetsInfo_imageIdentifier);
  swift_beginAccess();
  v18 = v17[1];
  if (v18)
  {
    v19 = *v17;
  }

  else
  {
    v19 = 0;
  }

  if (v18)
  {
    v20 = v17[1];
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  MEMORY[0x1C68D6B10](v19, v20);

  MEMORY[0x1C68D6B10](0x556567616D69202CLL, 0xEC000000203A4C52);
  v21 = OBJC_IVAR___TPSAssetsInfo_imageURL;
  swift_beginAccess();
  if (v12(v1 + v21, 1, v2))
  {
    v22 = 0;
  }

  else
  {
    (*(v3 + 16))(v5, v1 + v21, v2);
    v23 = sub_1C014BBA0();
    v6 = v24;
    (*(v3 + 8))(v5, v2);
    v22 = v23;
  }

  MEMORY[0x1C68D6B10](v22, v6);

  return v29;
}

id sub_1C0128960()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v33 - v5;
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v33 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v36 = &v33 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - v15;
  sub_1C010074C(0, &qword_1EDD44B60, 0x1E696AEC0);
  v34 = sub_1C014C5E0();
  sub_1C010074C(0, &qword_1EBE069C8, 0x1E695DFF8);
  v17 = sub_1C014C5E0();
  if (v17)
  {
    v18 = v17;
    sub_1C014BBC0();

    v19 = sub_1C014BC50();
    (*(*(v19 - 8) + 56))(v14, 0, 1, v19);
  }

  else
  {
    v20 = sub_1C014BC50();
    (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  }

  sub_1C0128F0C(v14, v16);
  v21 = sub_1C014C5E0();
  v22 = sub_1C014C5E0();
  if (v22)
  {
    v23 = v22;
    sub_1C014BBC0();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = sub_1C014BC50();
  v26 = *(v25 - 8);
  (*(v26 + 56))(v9, v24, 1, v25);
  sub_1C0128F0C(v9, v36);
  sub_1C0127A14(v16, v6);
  v27 = *(v26 + 48);
  v28 = 0;
  if (v27(v6, 1, v25) != 1)
  {
    v28 = sub_1C014BBB0();
    (*(v26 + 8))(v6, v25);
  }

  sub_1C0127A14(v36, v3);
  if (v27(v3, 1, v25) == 1)
  {
    v29 = 0;
  }

  else
  {
    v29 = sub_1C014BBB0();
    (*(v26 + 8))(v3, v25);
  }

  v30 = v34;
  v31 = [v35 initWithVideoIdentifier:v34 videoURL:v28 imageIdentifier:v21 imageURL:v29];

  sub_1C00FCBD4(v36);
  sub_1C00FCBD4(v16);
  return v31;
}

uint64_t type metadata accessor for TPSAssetsInfo(uint64_t a1)
{
  result = qword_1EDD44C38;
  if (!qword_1EDD44C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C0128DE8(uint64_t a1)
{
  sub_1C0128EB4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C0128EB4(uint64_t a1)
{
  if (!qword_1EDD44C78)
  {
    sub_1C014BC50();
    v1 = sub_1C014C640();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD44C78);
    }
  }
}

uint64_t sub_1C0128F0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *TipsAnalyticsEvent.init(identifier:)(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v14 = a2;
  v12 = sub_1C014C5A0();
  v3 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C014C580();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C014C0D0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11[1] = sub_1C010074C(0, &qword_1EDD44B68, 0x1E69E9610);
  sub_1C014C0C0();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1C01297D8(&qword_1EDD44B70, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE067E0, &qword_1C01568E0);
  sub_1C0129820(&qword_1EDD44B90, &qword_1EBE067E0, &qword_1C01568E0);
  sub_1C014C700();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v12);
  v8 = sub_1C014C5D0();
  v9 = v14;
  v2[2] = v13;
  v2[3] = v9;
  v2[4] = v8;
  return v2;
}

uint64_t TipsAnalyticsEvent.deinit()
{

  return v0;
}

uint64_t sub_1C012921C()
{
  v1 = sub_1C014C0A0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C014C0D0();
  v5 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + 32);
  aBlock[4] = sub_1C01297B8;
  v14 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C011431C;
  aBlock[3] = &block_descriptor_5;
  v8 = _Block_copy(aBlock);

  sub_1C014C0B0();
  v12 = MEMORY[0x1E69E7CC0];
  sub_1C01297D8(&qword_1EBE05D10, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066C0, &unk_1C01576F0);
  sub_1C0129820(&qword_1EBE05C68, &qword_1EBE066C0, &unk_1C01576F0);
  sub_1C014C700();
  MEMORY[0x1C68D6DD0](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

uint64_t TipsAnalyticsEvent.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TipsAnalyticsEvent.init(identifier:)(a1, a2);
  return v4;
}

void sub_1C0129568(void *a1)
{
  if (qword_1EDD44C28 != -1)
  {
    swift_once();
  }

  sub_1C014C800();

  aBlock = 0xD000000000000018;
  v12 = 0x80000001C015CFE0;
  swift_beginAccess();
  v2 = a1[2];
  v3 = a1[3];

  MEMORY[0x1C68D6B10](v2, v3);

  v4 = MEMORY[0x1C68D6B10](0x206874697720, 0xE600000000000000);
  (*(*a1 + 128))(v4);
  sub_1C010074C(0, &qword_1EBE05C50, 0x1E69E58C0);
  v5 = sub_1C014C180();
  v7 = v6;

  MEMORY[0x1C68D6B10](v5, v7);

  v8._countAndFlagsBits = 0xD000000000000018;
  v8._object = 0x80000001C015CFE0;
  TipsLog.debug(_:)(v8);

  v9 = sub_1C014C200();

  v15 = sub_1C0129A54;
  v16 = a1;
  aBlock = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_1C0129874;
  v14 = &block_descriptor_5;
  v10 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v10);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C01297D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C0129820(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id sub_1C0129874(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1C010074C(0, &qword_1EBE05C50, 0x1E69E58C0);
    v4 = sub_1C014C160();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t TipsAnalyticsEvent.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

BOOL static NetworkMonitor.isNetworkError(_:)(void *a1)
{
  v2 = [a1 domain];
  v3 = sub_1C014C230();
  v5 = v4;

  if (v3 == sub_1C014C230() && v5 == v6)
  {

    return [a1 code] == -1009;
  }

  v8 = sub_1C014C9F0();

  result = 0;
  if (v8)
  {
    return [a1 code] == -1009;
  }

  return result;
}

uint64_t sub_1C0129B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066B8, &qword_1C0156FE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1C00F99B0(a3, v22 - v9, &qword_1EBE066B8, &qword_1C0156FE0);
  v11 = sub_1C014C490();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1C00F98F4(v10, &qword_1EBE066B8, &qword_1C0156FE0);
  }

  else
  {
    sub_1C014C480();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1C014C420();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1C014C2B0() + 32;

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

      sub_1C00F98F4(a3, &qword_1EBE066B8, &qword_1C0156FE0);

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

  sub_1C00F98F4(a3, &qword_1EBE066B8, &qword_1C0156FE0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

unint64_t sub_1C0129DFC()
{
  type metadata accessor for NetworkMonitor(0);
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  v1 = OBJC_IVAR____TtC8TipsCore14NetworkMonitor_lastNetworkPath;
  v2 = sub_1C014C090();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC8TipsCore14NetworkMonitor_observers;
  result = sub_1C00F9450(MEMORY[0x1E69E7CC0]);
  *(v0 + v3) = result;
  qword_1EDD44A70 = v0;
  return result;
}

uint64_t static NetworkMonitor.shared.getter()
{
  if (qword_1EDD44A68 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C0129EFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066B8, &qword_1C0156FE0);
  result = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v8 - v3;
  if (!*(v0 + 112))
  {
    v5 = sub_1C014C490();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v6;
    *(v0 + 112) = sub_1C0129B50(0, 0, v4, &unk_1C0157380, v7);
  }

  return result;
}

uint64_t sub_1C012A030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a4;
  v5 = sub_1C014C090();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE069D0, &unk_1C0157388);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v6 = sub_1C014C000();
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C012A190, 0, 0);
}

uint64_t sub_1C012A190()
{
  sub_1C014C020();
  swift_allocObject();
  sub_1C014C010();
  sub_1C014BFE0();
  swift_beginAccess();
  swift_beginAccess();
  v1 = sub_1C0130B18(&qword_1EBE06A00, MEMORY[0x1E6977C78], MEMORY[0x1E6977C80]);
  v2 = swift_task_alloc();
  v0[24] = v2;
  *v2 = v0;
  v2[1] = sub_1C012A2C8;
  v3 = v0[20];
  v4 = v0[21];

  return MEMORY[0x1EEE6D8C8](v3, v4, v1);
}

uint64_t sub_1C012A2C8()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1C012A768;
  }

  else
  {
    v2 = sub_1C012A3DC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C012A3F8()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v0[26] = Strong;
    if (Strong)
    {
      v5 = Strong;
      v6 = sub_1C012ACF8;
LABEL_4:

      return MEMORY[0x1EEE6DFA0](v6, v5, 0);
    }

    v10 = v0[1];
    goto LABEL_14;
  }

  (*(v3 + 32))(v0[18], v1, v2);
  v7 = swift_weakLoadStrong();
  v0[27] = v7;
  if (v7)
  {
    v8 = swift_task_alloc();
    v0[28] = v8;
    *v8 = v0;
    v8[1] = sub_1C012A7F4;
    v9 = v0[18];

    return sub_1C012DC24(v9);
  }

  else
  {
    v11 = v0[25];
    sub_1C014C4C0();
    if (v11)
    {
      v13 = v0[22];
      v12 = v0[23];
      v14 = v0[21];
      (*(v0[17] + 8))(v0[18], v0[16]);
      (*(v13 + 8))(v12, v14);

      v10 = v0[1];
LABEL_14:

      return v10();
    }

    v15 = swift_weakLoadStrong();
    v0[29] = v15;
    if (v15)
    {
      v5 = v15;
      v6 = sub_1C012AB14;
      goto LABEL_4;
    }

    (*(v0[17] + 8))(v0[18], v0[16]);
    v16 = sub_1C0130B18(&qword_1EBE06A00, MEMORY[0x1E6977C78], MEMORY[0x1E6977C80]);
    v17 = swift_task_alloc();
    v0[24] = v17;
    *v17 = v0;
    v17[1] = sub_1C012A2C8;
    v18 = v0[20];
    v19 = v0[21];

    return MEMORY[0x1EEE6D8C8](v18, v19, v16);
  }
}

uint64_t sub_1C012A768()
{
  *(v0 + 112) = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06808, &unk_1C0156A20);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t sub_1C012A7F4()
{

  return MEMORY[0x1EEE6DFA0](sub_1C012A90C, 0, 0);
}

uint64_t sub_1C012A90C()
{
  v1 = v0[25];
  sub_1C014C4C0();
  if (v1)
  {
    v3 = v0[22];
    v2 = v0[23];
    v4 = v0[21];
    (*(v0[17] + 8))(v0[18], v0[16]);
    (*(v3 + 8))(v2, v4);

    v5 = v0[1];

    return v5();
  }

  else
  {
    Strong = swift_weakLoadStrong();
    v0[29] = Strong;
    if (Strong)
    {

      return MEMORY[0x1EEE6DFA0](sub_1C012AB14, Strong, 0);
    }

    else
    {
      (*(v0[17] + 8))(v0[18], v0[16]);
      v8 = sub_1C0130B18(&qword_1EBE06A00, MEMORY[0x1E6977C78], MEMORY[0x1E6977C80]);
      v9 = swift_task_alloc();
      v0[24] = v9;
      *v9 = v0;
      v9[1] = sub_1C012A2C8;
      v10 = v0[20];
      v11 = v0[21];

      return MEMORY[0x1EEE6D8C8](v10, v11, v8);
    }
  }
}

uint64_t sub_1C012AB14()
{
  v1 = v0[29];
  if (*(v1 + 112))
  {
    (*(v0[17] + 16))(v0[19], v0[18], v0[16]);
    v2 = 0;
    v1 = v0[29];
  }

  else
  {
    v2 = 1;
  }

  v3 = v0[19];
  (*(v0[17] + 56))(v3, v2, 1, v0[16]);
  v4 = OBJC_IVAR____TtC8TipsCore14NetworkMonitor_lastNetworkPath;
  swift_beginAccess();
  sub_1C012AF98(v3, v1 + v4);
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_1C012AC08, 0, 0);
}

uint64_t sub_1C012AC08()
{
  (*(v0[17] + 8))(v0[18], v0[16]);
  v1 = sub_1C0130B18(&qword_1EBE06A00, MEMORY[0x1E6977C78], MEMORY[0x1E6977C80]);
  v2 = swift_task_alloc();
  v0[24] = v2;
  *v2 = v0;
  v2[1] = sub_1C012A2C8;
  v3 = v0[20];
  v4 = v0[21];

  return MEMORY[0x1EEE6D8C8](v3, v4, v1);
}

uint64_t sub_1C012ACF8()
{
  *(*(v0 + 208) + 112) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C012AD9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C0103EAC;

  return sub_1C012A030(a1, v4, v5, v6);
}

uint64_t sub_1C012AE50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE069D0, &unk_1C0157388);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_1C014C090();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC8TipsCore14NetworkMonitor_lastNetworkPath;
  swift_beginAccess();
  sub_1C012AF98(v3, v0 + v5);
  swift_endAccess();
  if (*(v0 + 112))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06808, &unk_1C0156A20);
    sub_1C014C4A0();
  }

  *(v0 + 112) = 0;
}

uint64_t sub_1C012AF98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE069D0, &unk_1C0157388);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL static NetworkMonitor.isContentError(_:)(void *a1)
{
  v2 = [a1 domain];
  v3 = sub_1C014C230();
  v5 = v4;

  if (v3 == sub_1C014C230() && v5 == v6)
  {

    return [a1 code] == 404;
  }

  v8 = sub_1C014C9F0();

  result = 0;
  if (v8)
  {
    return [a1 code] == 404;
  }

  return result;
}

uint64_t static NetworkMonitor.isInternalVPNError(_:)(void *a1)
{
  v2 = sub_1C014BC50();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [a1 userInfo];
  v7 = sub_1C014C170();

  v8 = sub_1C014C230();
  if (!*(v7 + 16))
  {

    goto LABEL_8;
  }

  v10 = sub_1C012EBF4(v8, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  sub_1C00FC1C0(*(v7 + 56) + 32 * v10, v24);

  if (swift_dynamicCast())
  {
    v13 = [a1 domain];
    v14 = sub_1C014C230();
    v16 = v15;

    if (v14 == sub_1C014C230() && v16 == v17)
    {

      goto LABEL_12;
    }

    v20 = sub_1C014C9F0();

    if (v20)
    {
LABEL_12:
      if ([a1 code] == -1003)
      {
        v21 = [objc_opt_self() defaultHost];
        sub_1C014BBC0();

        sub_1C014BBA0();
        (*(v3 + 8))(v5, v2);
        v22 = sub_1C014C360();

        v18 = v22 ^ 1;
        return v18 & 1;
      }

      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1C012B3BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE068A0, &qword_1C0156FD8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - v11;
  sub_1C00F99B0(a1, &v20 - v11, &unk_1EBE068A0, &qword_1C0156FD8);
  v13 = sub_1C014BD80();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v12, 1, v13) == 1)
  {
    sub_1C014BD70();
    if (v15(v12, 1, v13) != 1)
    {
      sub_1C00F98F4(v12, &unk_1EBE068A0, &qword_1C0156FD8);
    }
  }

  else
  {
    (*(v14 + 32))(a4, v12, v13);
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = OBJC_IVAR____TtC8TipsCore14NetworkMonitor_observers;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v5 + v17);
  *(v5 + v17) = 0x8000000000000000;
  sub_1C00F88D8(sub_1C012EC6C, v16, a4, isUniquelyReferenced_nonNull_native);
  *(v5 + v17) = v20;
  return swift_endAccess();
}

uint64_t sub_1C012B5C8(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8TipsCore14NetworkMonitor_observers;
  swift_beginAccess();
  v5 = sub_1C012ECDC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v1 + v4);
    v13 = *(v2 + v4);
    *(v2 + v4) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C012FC10();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_1C014BD80();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);

    sub_1C012EF24(v7, v9);
    *(v2 + v4) = v9;
  }

  return swift_endAccess();
}

uint64_t sub_1C012B6C8()
{
  v1[5] = v0;
  v2 = sub_1C014C070();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE069D8, &qword_1C0157398);
  v1[10] = swift_task_alloc();
  v3 = sub_1C014C000();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE069D0, &unk_1C0157388);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE069E0, qword_1C01573A0);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C012B8B4, v0, 0);
}

uint64_t sub_1C012B8B4()
{
  v1 = v0[14];
  v2 = v0[5];
  v3 = OBJC_IVAR____TtC8TipsCore14NetworkMonitor_lastNetworkPath;
  swift_beginAccess();
  sub_1C00F99B0(v2 + v3, v1, &qword_1EBE069D0, &unk_1C0157388);
  v4 = sub_1C014C090();
  v0[19] = v4;
  v5 = *(v4 - 8);
  v0[20] = v5;
  v6 = *(v5 + 48);
  v0[21] = v6;
  v0[22] = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v7 = v6(v1, 1, v4);
  sub_1C00F98F4(v1, &qword_1EBE069D0, &unk_1C0157388);
  if (v7 == 1)
  {
    sub_1C014C020();
    swift_allocObject();
    sub_1C014C010();
    sub_1C014BFE0();
    v8 = swift_task_alloc();
    v0[23] = v8;
    *v8 = v0;
    v8[1] = sub_1C012BE60;
    v9 = v0[15];

    return MEMORY[0x1EEDD2800](v9);
  }

  sub_1C00F99B0(v2 + v3, v0[15], &qword_1EBE069D0, &unk_1C0157388);
  v10 = v0[19];
  v11 = v0[15];
  if ((v0[21])(v11, 1, v10) == 1)
  {
    sub_1C00F98F4(v11, &qword_1EBE069D0, &unk_1C0157388);
    v12 = 1;
  }

  else
  {
    v13 = v0[20];
    sub_1C014C080();
    (*(v13 + 8))(v11, v10);
    v12 = 0;
  }

  v15 = v0[17];
  v14 = v0[18];
  v17 = v0[9];
  v16 = v0[10];
  v18 = v0[6];
  v19 = v0[7];
  v20 = *(v19 + 56);
  v20(v14, v12, 1, v18);
  (*(v19 + 104))(v15, *MEMORY[0x1E6977D40], v18);
  v20(v15, 0, 1, v18);
  v21 = *(v17 + 48);
  sub_1C00F99B0(v14, v16, &qword_1EBE069E0, qword_1C01573A0);
  sub_1C00F99B0(v15, v16 + v21, &qword_1EBE069E0, qword_1C01573A0);
  v22 = *(v19 + 48);
  if (v22(v16, 1, v18) != 1)
  {
    v26 = v0[6];
    sub_1C00F99B0(v0[10], v0[16], &qword_1EBE069E0, qword_1C01573A0);
    v27 = v22(v16 + v21, 1, v26);
    v29 = v0[17];
    v28 = v0[18];
    v30 = v0[16];
    if (v27 != 1)
    {
      v39 = v0[10];
      v34 = v0[7];
      v33 = v0[8];
      v35 = v0[6];
      (*(v34 + 32))(v33, v16 + v21, v35);
      sub_1C0130B18(&qword_1EBE069E8, MEMORY[0x1E6977D48], MEMORY[0x1E6977D50]);
      v25 = sub_1C014C1D0();
      v36 = *(v34 + 8);
      v36(v33, v35);
      sub_1C00F98F4(v29, &qword_1EBE069E0, qword_1C01573A0);
      sub_1C00F98F4(v28, &qword_1EBE069E0, qword_1C01573A0);
      v36(v30, v35);
      sub_1C00F98F4(v39, &qword_1EBE069E0, qword_1C01573A0);
      goto LABEL_15;
    }

    v31 = v0[6];
    v32 = v0[7];
    sub_1C00F98F4(v0[17], &qword_1EBE069E0, qword_1C01573A0);
    sub_1C00F98F4(v28, &qword_1EBE069E0, qword_1C01573A0);
    (*(v32 + 8))(v30, v31);
    goto LABEL_13;
  }

  v23 = v0[18];
  v24 = v0[6];
  sub_1C00F98F4(v0[17], &qword_1EBE069E0, qword_1C01573A0);
  sub_1C00F98F4(v23, &qword_1EBE069E0, qword_1C01573A0);
  if (v22(v16 + v21, 1, v24) != 1)
  {
LABEL_13:
    sub_1C00F98F4(v0[10], &qword_1EBE069D8, &qword_1C0157398);
    v25 = 0;
    goto LABEL_15;
  }

  sub_1C00F98F4(v0[10], &qword_1EBE069E0, qword_1C01573A0);
  v25 = 1;
LABEL_15:

  v37 = v0[1];

  return v37(v25 & 1);
}

uint64_t sub_1C012BE60()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1C012BF70, v1, 0);
}

uint64_t sub_1C012BF70()
{
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  v1 = *(v0 + 152);
  v2 = *(v0 + 120);
  if ((*(v0 + 168))(v2, 1, v1) == 1)
  {
    sub_1C00F98F4(v2, &qword_1EBE069D0, &unk_1C0157388);
    v3 = 1;
  }

  else
  {
    v4 = *(v0 + 160);
    sub_1C014C080();
    (*(v4 + 8))(v2, v1);
    v3 = 0;
  }

  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  v9 = *(v0 + 48);
  v10 = *(v0 + 56);
  v11 = *(v10 + 56);
  v11(v5, v3, 1, v9);
  (*(v10 + 104))(v6, *MEMORY[0x1E6977D40], v9);
  v11(v6, 0, 1, v9);
  v12 = *(v8 + 48);
  sub_1C00F99B0(v5, v7, &qword_1EBE069E0, qword_1C01573A0);
  sub_1C00F99B0(v6, v7 + v12, &qword_1EBE069E0, qword_1C01573A0);
  v13 = *(v10 + 48);
  if (v13(v7, 1, v9) == 1)
  {
    v14 = *(v0 + 144);
    v15 = *(v0 + 48);
    sub_1C00F98F4(*(v0 + 136), &qword_1EBE069E0, qword_1C01573A0);
    sub_1C00F98F4(v14, &qword_1EBE069E0, qword_1C01573A0);
    if (v13(v7 + v12, 1, v15) == 1)
    {
      sub_1C00F98F4(*(v0 + 80), &qword_1EBE069E0, qword_1C01573A0);
      v16 = 1;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v17 = *(v0 + 48);
  sub_1C00F99B0(*(v0 + 80), *(v0 + 128), &qword_1EBE069E0, qword_1C01573A0);
  v18 = v13(v7 + v12, 1, v17);
  v20 = *(v0 + 136);
  v19 = *(v0 + 144);
  v21 = *(v0 + 128);
  if (v18 == 1)
  {
    v22 = *(v0 + 48);
    v23 = *(v0 + 56);
    sub_1C00F98F4(*(v0 + 136), &qword_1EBE069E0, qword_1C01573A0);
    sub_1C00F98F4(v19, &qword_1EBE069E0, qword_1C01573A0);
    (*(v23 + 8))(v21, v22);
LABEL_9:
    sub_1C00F98F4(*(v0 + 80), &qword_1EBE069D8, &qword_1C0157398);
    v16 = 0;
    goto LABEL_11;
  }

  v30 = *(v0 + 80);
  v25 = *(v0 + 56);
  v24 = *(v0 + 64);
  v26 = *(v0 + 48);
  (*(v25 + 32))(v24, v7 + v12, v26);
  sub_1C0130B18(&qword_1EBE069E8, MEMORY[0x1E6977D48], MEMORY[0x1E6977D50]);
  v16 = sub_1C014C1D0();
  v27 = *(v25 + 8);
  v27(v24, v26);
  sub_1C00F98F4(v20, &qword_1EBE069E0, qword_1C01573A0);
  sub_1C00F98F4(v19, &qword_1EBE069E0, qword_1C01573A0);
  v27(v21, v26);
  sub_1C00F98F4(v30, &qword_1EBE069E0, qword_1C01573A0);
LABEL_11:

  v28 = *(v0 + 8);

  return v28(v16 & 1);
}

uint64_t sub_1C012C3A4()
{
  v1[5] = v0;
  v2 = sub_1C014C000();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE069D0, &unk_1C0157388);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C012C4A8, v0, 0);
}

uint64_t sub_1C012C4A8()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = OBJC_IVAR____TtC8TipsCore14NetworkMonitor_lastNetworkPath;
  swift_beginAccess();
  sub_1C00F99B0(v2 + v3, v1, &qword_1EBE069D0, &unk_1C0157388);
  v4 = sub_1C014C090();
  v0[11] = v4;
  v5 = *(v4 - 8);
  v0[12] = v5;
  v6 = *(v5 + 48);
  v0[13] = v6;
  v0[14] = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v7 = v6(v1, 1, v4);
  sub_1C00F98F4(v1, &qword_1EBE069D0, &unk_1C0157388);
  if (v7 == 1)
  {
    sub_1C014C020();
    swift_allocObject();
    sub_1C014C010();
    sub_1C014BFE0();
    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v8[1] = sub_1C012C720;
    v9 = v0[10];

    return MEMORY[0x1EEDD2800](v9);
  }

  else
  {
    sub_1C00F99B0(v2 + v3, v0[10], &qword_1EBE069D0, &unk_1C0157388);
    v11 = v0[10];
    v10 = v0[11];
    if ((v0[13])(v11, 1, v10) == 1)
    {
      sub_1C00F98F4(v11, &qword_1EBE069D0, &unk_1C0157388);
      v12 = 2;
    }

    else
    {
      v13 = v0[12];
      v14 = sub_1C014C040();
      (*(v13 + 8))(v11, v10);
      v12 = v14 & 1;
    }

    v15 = v0[1];

    return v15(v12);
  }
}

uint64_t sub_1C012C720()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1C012C830, v1, 0);
}

uint64_t sub_1C012C830()
{
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  if ((*(v0 + 104))(v2, 1, v1) == 1)
  {
    sub_1C00F98F4(v2, &qword_1EBE069D0, &unk_1C0157388);
    v3 = 2;
  }

  else
  {
    v4 = *(v0 + 96);
    v5 = sub_1C014C040();
    (*(v4 + 8))(v2, v1);
    v3 = v5 & 1;
  }

  v6 = *(v0 + 8);

  return v6(v3);
}

uint64_t sub_1C012C930()
{
  v1[5] = v0;
  v2 = sub_1C014C000();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE069D0, &unk_1C0157388);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C012CA34, v0, 0);
}

uint64_t sub_1C012CA34()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = OBJC_IVAR____TtC8TipsCore14NetworkMonitor_lastNetworkPath;
  swift_beginAccess();
  sub_1C00F99B0(v2 + v3, v1, &qword_1EBE069D0, &unk_1C0157388);
  v4 = sub_1C014C090();
  v0[11] = v4;
  v5 = *(v4 - 8);
  v0[12] = v5;
  v6 = *(v5 + 48);
  v0[13] = v6;
  v0[14] = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v7 = v6(v1, 1, v4);
  sub_1C00F98F4(v1, &qword_1EBE069D0, &unk_1C0157388);
  if (v7 == 1)
  {
    sub_1C014C020();
    swift_allocObject();
    sub_1C014C010();
    sub_1C014BFE0();
    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v8[1] = sub_1C012CCAC;
    v9 = v0[10];

    return MEMORY[0x1EEDD2800](v9);
  }

  else
  {
    sub_1C00F99B0(v2 + v3, v0[10], &qword_1EBE069D0, &unk_1C0157388);
    v11 = v0[10];
    v10 = v0[11];
    if ((v0[13])(v11, 1, v10) == 1)
    {
      sub_1C00F98F4(v11, &qword_1EBE069D0, &unk_1C0157388);
      v12 = 2;
    }

    else
    {
      v13 = v0[12];
      v14 = sub_1C014C030();
      (*(v13 + 8))(v11, v10);
      v12 = v14 & 1;
    }

    v15 = v0[1];

    return v15(v12);
  }
}

uint64_t sub_1C012CCAC()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1C012CDBC, v1, 0);
}

uint64_t sub_1C012CDBC()
{
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  if ((*(v0 + 104))(v2, 1, v1) == 1)
  {
    sub_1C00F98F4(v2, &qword_1EBE069D0, &unk_1C0157388);
    v3 = 2;
  }

  else
  {
    v4 = *(v0 + 96);
    v5 = sub_1C014C030();
    (*(v4 + 8))(v2, v1);
    v3 = v5 & 1;
  }

  v6 = *(v0 + 8);

  return v6(v3);
}

uint64_t sub_1C012CEBC()
{
  v1[5] = v0;
  v2 = sub_1C014BFD0();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_1C014C000();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE069D0, &unk_1C0157388);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C012D01C, v0, 0);
}

uint64_t sub_1C012D01C()
{
  v1 = v0[12];
  v2 = v0[5];
  v3 = OBJC_IVAR____TtC8TipsCore14NetworkMonitor_lastNetworkPath;
  swift_beginAccess();
  sub_1C00F99B0(v2 + v3, v1, &qword_1EBE069D0, &unk_1C0157388);
  v4 = sub_1C014C090();
  v0[14] = v4;
  v5 = *(v4 - 8);
  v0[15] = v5;
  v6 = *(v5 + 48);
  v0[16] = v6;
  v0[17] = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v7 = v6(v1, 1, v4);
  sub_1C00F98F4(v1, &qword_1EBE069D0, &unk_1C0157388);
  if (v7 == 1)
  {
    sub_1C014C020();
    swift_allocObject();
    sub_1C014C010();
    sub_1C014BFE0();
    v8 = swift_task_alloc();
    v0[18] = v8;
    *v8 = v0;
    v8[1] = sub_1C012D2F8;
    v9 = v0[13];

    return MEMORY[0x1EEDD2800](v9);
  }

  else
  {
    sub_1C00F99B0(v2 + v3, v0[13], &qword_1EBE069D0, &unk_1C0157388);
    v11 = v0[13];
    v10 = v0[14];
    if ((v0[16])(v11, 1, v10) == 1)
    {
      sub_1C00F98F4(v11, &qword_1EBE069D0, &unk_1C0157388);
      v12 = 2;
    }

    else
    {
      v13 = v0[15];
      v15 = v0[7];
      v14 = v0[8];
      v16 = v0[6];
      (*(v15 + 104))(v14, *MEMORY[0x1E6977B50], v16);
      v17 = sub_1C014C050();
      (*(v15 + 8))(v14, v16);
      (*(v13 + 8))(v11, v10);
      v12 = v17 & 1;
    }

    v18 = v0[1];

    return v18(v12);
  }
}

uint64_t sub_1C012D2F8()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1C012D408, v1, 0);
}

uint64_t sub_1C012D408()
{
  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  if ((*(v0 + 128))(v2, 1, v1) == 1)
  {
    sub_1C00F98F4(v2, &qword_1EBE069D0, &unk_1C0157388);
    v3 = 2;
  }

  else
  {
    v4 = *(v0 + 120);
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v7 = *(v0 + 48);
    (*(v6 + 104))(v5, *MEMORY[0x1E6977B50], v7);
    v8 = sub_1C014C050();
    (*(v6 + 8))(v5, v7);
    (*(v4 + 8))(v2, v1);
    v3 = v8 & 1;
  }

  v9 = *(v0 + 8);

  return v9(v3);
}

uint64_t sub_1C012D570()
{
  v1[5] = v0;
  v2 = sub_1C014BFD0();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_1C014C000();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE069D0, &unk_1C0157388);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C012D6D0, v0, 0);
}

uint64_t sub_1C012D6D0()
{
  v1 = v0[12];
  v2 = v0[5];
  v3 = OBJC_IVAR____TtC8TipsCore14NetworkMonitor_lastNetworkPath;
  swift_beginAccess();
  sub_1C00F99B0(v2 + v3, v1, &qword_1EBE069D0, &unk_1C0157388);
  v4 = sub_1C014C090();
  v0[14] = v4;
  v5 = *(v4 - 8);
  v0[15] = v5;
  v6 = *(v5 + 48);
  v0[16] = v6;
  v0[17] = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v7 = v6(v1, 1, v4);
  sub_1C00F98F4(v1, &qword_1EBE069D0, &unk_1C0157388);
  if (v7 == 1)
  {
    sub_1C014C020();
    swift_allocObject();
    sub_1C014C010();
    sub_1C014BFE0();
    v8 = swift_task_alloc();
    v0[18] = v8;
    *v8 = v0;
    v8[1] = sub_1C012D9AC;
    v9 = v0[13];

    return MEMORY[0x1EEDD2800](v9);
  }

  else
  {
    sub_1C00F99B0(v2 + v3, v0[13], &qword_1EBE069D0, &unk_1C0157388);
    v11 = v0[13];
    v10 = v0[14];
    if ((v0[16])(v11, 1, v10) == 1)
    {
      sub_1C00F98F4(v11, &qword_1EBE069D0, &unk_1C0157388);
      v12 = 2;
    }

    else
    {
      v13 = v0[15];
      v15 = v0[7];
      v14 = v0[8];
      v16 = v0[6];
      (*(v15 + 104))(v14, *MEMORY[0x1E6977B40], v16);
      v17 = sub_1C014C050();
      (*(v15 + 8))(v14, v16);
      (*(v13 + 8))(v11, v10);
      v12 = v17 & 1;
    }

    v18 = v0[1];

    return v18(v12);
  }
}

uint64_t sub_1C012D9AC()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1C012DABC, v1, 0);
}

uint64_t sub_1C012DABC()
{
  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  if ((*(v0 + 128))(v2, 1, v1) == 1)
  {
    sub_1C00F98F4(v2, &qword_1EBE069D0, &unk_1C0157388);
    v3 = 2;
  }

  else
  {
    v4 = *(v0 + 120);
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v7 = *(v0 + 48);
    (*(v6 + 104))(v5, *MEMORY[0x1E6977B40], v7);
    v8 = sub_1C014C050();
    (*(v6 + 8))(v5, v7);
    (*(v4 + 8))(v2, v1);
    v3 = v8 & 1;
  }

  v9 = *(v0 + 8);

  return v9(v3);
}

uint64_t sub_1C012DC24(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE069F0, &qword_1C0157480);
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v2[14] = v4;
  v2[15] = swift_task_alloc();
  v5 = sub_1C014BD80();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE069F8, &unk_1C0157488);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v6 = sub_1C014C070();
  v2[22] = v6;
  v2[23] = *(v6 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE069D0, &unk_1C0157388);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C012DE48, v1, 0);
}

uint64_t sub_1C012DE48()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 88);
  v3 = OBJC_IVAR____TtC8TipsCore14NetworkMonitor_lastNetworkPath;
  swift_beginAccess();
  sub_1C00F99B0(v2 + v3, v1, &qword_1EBE069D0, &unk_1C0157388);
  v4 = sub_1C014C090();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(v1, 1, v4);
  sub_1C00F98F4(v1, &qword_1EBE069D0, &unk_1C0157388);
  if (v7 == 1)
  {
    goto LABEL_4;
  }

  v8 = *(v0 + 208);
  sub_1C00F99B0(v2 + v3, v8, &qword_1EBE069D0, &unk_1C0157388);
  v9 = v6(v8, 1, v4);
  if (v9 == 1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  v13 = *(v0 + 200);
  v12 = *(v0 + 208);
  v15 = *(v0 + 184);
  v14 = *(v0 + 192);
  v16 = *(v0 + 176);
  sub_1C014C080();
  (*(v5 + 8))(v12, v4);
  sub_1C014C080();
  sub_1C0130B18(&qword_1EBE069E8, MEMORY[0x1E6977D48], MEMORY[0x1E6977D50]);
  LOBYTE(v12) = sub_1C014C1D0();
  v17 = *(v15 + 8);
  v17(v14, v16);
  v17(v13, v16);
  if ((v12 & 1) == 0)
  {
LABEL_4:
    if (qword_1EDD44C50 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 200);
    v19 = *(v0 + 176);
    v20 = *(v0 + 184);
    v21 = *(v0 + 88);
    sub_1C014C800();
    *(v0 + 64) = 0;
    *(v0 + 72) = 0xE000000000000000;
    MEMORY[0x1C68D6B10](0xD000000000000020, 0x80000001C015D080);
    sub_1C014C080();
    sub_1C014C8B0();
    v22 = *(v20 + 8);
    *(v0 + 224) = v22;
    *(v0 + 232) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v22(v18, v19);
    TipsLog.log(_:)(*(v0 + 64));

    v23 = OBJC_IVAR____TtC8TipsCore14NetworkMonitor_observers;
    swift_beginAccess();
    v24 = *(v21 + v23);
    *(v0 + 240) = v24;
    v25 = *(v24 + 32);
    *(v0 + 292) = v25;
    v26 = -1;
    v27 = -1 << v25;
    if (-(-1 << v25) < 64)
    {
      v26 = ~(-1 << -(-1 << v25));
    }

    v28 = v26 & *(v24 + 64);
    *(v0 + 288) = *MEMORY[0x1E6977D40];

    if (v28)
    {
      v29 = 0;
LABEL_13:
      v33 = *(v0 + 144);
      v32 = *(v0 + 152);
      v34 = *(v0 + 128);
      v35 = *(v0 + 136);
      v36 = *(v0 + 96);
      v60 = *(v0 + 104);
      v61 = (v28 - 1) & v28;
      v37 = __clz(__rbit64(v28)) | (v29 << 6);
      (*(v35 + 16))(v33, *(v24 + 48) + *(v35 + 72) * v37, v34);
      v38 = *(v24 + 56);
      v39 = *(v36 + 48);
      v62 = *(v38 + 16 * v37);
      (*(v35 + 32))(v32, v33, v34);
      *(v32 + v39) = v62;
      (*(v60 + 56))(v32, 0, 1, v36);

      v40 = v61;
      v31 = v29;
    }

    else
    {
      v30 = 0;
      v31 = ((63 - v27) >> 6) - 1;
      while (v31 != v30)
      {
        v29 = v30 + 1;
        v28 = *(v24 + 72 + 8 * v30++);
        if (v28)
        {
          goto LABEL_13;
        }
      }

      (*(*(v0 + 104) + 56))(*(v0 + 152), 1, 1);
      v40 = 0;
    }

    *(v0 + 248) = v40;
    *(v0 + 256) = v31;
    v41 = *(v0 + 152);
    v42 = *(v0 + 96);
    v43 = 1;
    if ((*(*(v0 + 104) + 48))(v41, 1, v42) != 1)
    {
      v44 = *(v0 + 160);
      v45 = *(v0 + 128);
      v46 = *(v0 + 120);
      v47 = *(v42 + 48);
      v48 = *(*(v0 + 136) + 32);
      v48(v46, v41, v45);
      v49 = swift_allocObject();
      *(v49 + 16) = *(v41 + v47);
      v50 = (v44 + *(v42 + 48));
      v48(v44, v46, v45);
      v43 = 0;
      *v50 = sub_1C0130A84;
      v50[1] = v49;
      v42 = *(v0 + 96);
    }

    v52 = *(v0 + 160);
    v51 = *(v0 + 168);
    v53 = *(v0 + 112);
    (*(v53 + 56))(v52, v43, 1, v42);
    sub_1C0130A14(v52, v51);
    if ((*(v53 + 48))(v51, 1, v42) == 1)
    {

      goto LABEL_18;
    }

    v56 = (*(v0 + 168) + *(*(v0 + 96) + 48));
    *(v0 + 264) = *v56;
    *(v0 + 272) = v56[1];
    sub_1C014C470();
    *(v0 + 280) = sub_1C014C460();
    v57 = sub_1C014C420();
    v59 = v58;
    v9 = sub_1C012E534;
    v10 = v57;
    v11 = v59;

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

LABEL_18:

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_1C012E534()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 224);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v9 = *(v0 + 264);
  v10 = *(v0 + 88);

  sub_1C014C080();
  (*(v6 + 104))(v4, v1, v5);
  v7 = sub_1C014C060();
  v2(v4, v5);
  v2(v3, v5);
  v9(v7 & 1);

  return MEMORY[0x1EEE6DFA0](sub_1C012E638, v10, 0);
}

uint64_t sub_1C012E638()
{
  (*(*(v0 + 136) + 8))(*(v0 + 168), *(v0 + 128));

  v4 = *(v0 + 248);
  v5 = *(v0 + 256);
  if (!v4)
  {
    v7 = ((1 << *(v0 + 292)) + 63) >> 6;
    if (v7 <= (v5 + 1))
    {
      v8 = v5 + 1;
    }

    else
    {
      v8 = ((1 << *(v0 + 292)) + 63) >> 6;
    }

    v9 = v8 - 1;
    while (1)
    {
      v10 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        (*(*(v0 + 104) + 56))(*(v0 + 152), 1, 1);
        v19 = 0;
        goto LABEL_12;
      }

      v6 = *(v0 + 240);
      v4 = *(v6 + 8 * v10 + 64);
      ++v5;
      if (v4)
      {
        v5 = v10;
        goto LABEL_11;
      }
    }

    __break(1u);
    return MEMORY[0x1EEE6DFA0](v1, v2, v3);
  }

  v6 = *(v0 + 240);
LABEL_11:
  v11 = *(v0 + 144);
  v12 = *(v0 + 152);
  v13 = *(v0 + 128);
  v14 = *(v0 + 136);
  v15 = *(v0 + 96);
  v39 = *(v0 + 104);
  v40 = (v4 - 1) & v4;
  v16 = __clz(__rbit64(v4)) | (v5 << 6);
  (*(v14 + 16))(v11, *(v6 + 48) + *(v14 + 72) * v16, v13);
  v17 = *(v6 + 56);
  v18 = *(v15 + 48);
  v41 = *(v17 + 16 * v16);
  (*(v14 + 32))(v12, v11, v13);
  *(v12 + v18) = v41;
  (*(v39 + 56))(v12, 0, 1, v15);

  v19 = v40;
  v9 = v5;
LABEL_12:
  *(v0 + 248) = v19;
  *(v0 + 256) = v9;
  v20 = *(v0 + 152);
  v21 = *(v0 + 96);
  v22 = 1;
  if ((*(*(v0 + 104) + 48))(v20, 1, v21) != 1)
  {
    v23 = *(v0 + 160);
    v24 = *(v0 + 128);
    v25 = *(v0 + 120);
    v26 = *(v21 + 48);
    v27 = *(*(v0 + 136) + 32);
    v27(v25, v20, v24);
    v28 = swift_allocObject();
    *(v28 + 16) = *(v20 + v26);
    v29 = (v23 + *(v21 + 48));
    v27(v23, v25, v24);
    v22 = 0;
    *v29 = sub_1C0130A84;
    v29[1] = v28;
    v21 = *(v0 + 96);
  }

  v31 = *(v0 + 160);
  v30 = *(v0 + 168);
  v32 = *(v0 + 112);
  (*(v32 + 56))(v31, v22, 1, v21);
  sub_1C0130A14(v31, v30);
  if ((*(v32 + 48))(v30, 1, v21) != 1)
  {
    v35 = (*(v0 + 168) + *(*(v0 + 96) + 48));
    *(v0 + 264) = *v35;
    *(v0 + 272) = v35[1];
    sub_1C014C470();
    *(v0 + 280) = sub_1C014C460();
    v36 = sub_1C014C420();
    v38 = v37;
    v1 = sub_1C012E534;
    v2 = v36;
    v3 = v38;

    return MEMORY[0x1EEE6DFA0](v1, v2, v3);
  }

  v33 = *(v0 + 8);

  return v33();
}

uint64_t NetworkMonitor.deinit()
{
  if (*(v0 + 112))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06808, &unk_1C0156A20);
    sub_1C014C4A0();
  }

  sub_1C00F98F4(v0 + OBJC_IVAR____TtC8TipsCore14NetworkMonitor_lastNetworkPath, &qword_1EBE069D0, &unk_1C0157388);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t NetworkMonitor.__deallocating_deinit()
{
  if (*(v0 + 112))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06808, &unk_1C0156A20);
    sub_1C014C4A0();
  }

  sub_1C00F98F4(v0 + OBJC_IVAR____TtC8TipsCore14NetworkMonitor_lastNetworkPath, &qword_1EBE069D0, &unk_1C0157388);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

unint64_t sub_1C012EBF4(uint64_t a1, uint64_t a2)
{
  sub_1C014CAE0();
  sub_1C014C2E0();
  v4 = sub_1C014CB10();

  return sub_1C012F5B0(a1, a2, v4);
}

unint64_t sub_1C012EC98(uint64_t a1)
{
  v2 = sub_1C014C780();

  return sub_1C012F668(a1, v2);
}

unint64_t sub_1C012ECDC(uint64_t a1)
{
  sub_1C014BD80();
  sub_1C0130B18(&qword_1EBE05D20, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v2 = sub_1C014C1A0();

  return sub_1C012F730(a1, v2);
}

uint64_t sub_1C012ED74(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C014C720() + 1) & ~v5;
    do
    {
      sub_1C014CAE0();

      sub_1C014C2E0();
      v10 = sub_1C014CB10();

      v11 = v10 & v7;
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
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
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

unint64_t sub_1C012EF24(int64_t a1, uint64_t a2)
{
  v40 = sub_1C014BD80();
  v4 = *(v40 - 8);
  result = MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_1C014C720();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_1C0130B18(&qword_1EBE05D20, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v23 = sub_1C014C1A0();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 16 * a1);
          v30 = (v28 + 16 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_1C012F244(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C014C720() + 1) & ~v5;
    do
    {
      sub_1C014CAE0();

      sub_1C014C2E0();
      v11 = sub_1C014CB10();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1C012F400(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C014C720() + 1) & ~v5;
    do
    {
      sub_1C014CAE0();

      sub_1C014C2E0();
      v9 = sub_1C014CB10();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1C012F5B0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1C014C9F0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1C012F668(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1C0130ABC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1C68D6FA0](v9, a1);
      sub_1C00FC104(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1C012F730(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1C014BD80();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1C0130B18(&qword_1EBE05D18, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v15 = sub_1C014C1D0();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

void *sub_1C012F904()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06498, &qword_1C0155FA8);
  v2 = *v0;
  v3 = sub_1C014C8F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1C00FC1C0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1C00F9954(v25, (*(v4 + 56) + v22));
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

  return result;
}

void *sub_1C012FAA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE063E8, &qword_1C0155F58);
  v2 = *v0;
  v3 = sub_1C014C8F0();
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
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_1C012FC10()
{
  v1 = v0;
  v30 = sub_1C014BD80();
  v32 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06488, &qword_1C0155F98);
  v3 = *v0;
  v4 = sub_1C014C8F0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v3 + 64;
    for (i = v32 + 32; v12; result = )
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v32;
      v19 = *(v32 + 72) * v17;
      v20 = v29;
      v21 = v30;
      (*(v32 + 16))(v29, *(v3 + 48) + v19, v30);
      v17 *= 16;
      v22 = v31;
      v23 = *(v31 + 48);
      v24 = *(v18 + 32);
      v33 = *(*(v3 + 56) + v17);
      v24(v23 + v19, v20, v21);
      *(*(v22 + 56) + v17) = v33;
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

        v1 = v25;
        v5 = v31;
        goto LABEL_18;
      }

      v16 = *(v26 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

uint64_t type metadata accessor for NetworkMonitor(uint64_t a1)
{
  result = qword_1EDD44A48;
  if (!qword_1EDD44A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C012FEE4(uint64_t a1)
{
  sub_1C0130690(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of NetworkMonitor.isNetworkReachable.getter()
{
  v4 = (*(*v0 + 224) + **(*v0 + 224));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C013014C;

  return v4();
}

uint64_t sub_1C013014C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of NetworkMonitor.isNetworkConstrained.getter()
{
  v4 = (*(*v0 + 232) + **(*v0 + 232));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C013014C;

  return v4();
}

uint64_t dispatch thunk of NetworkMonitor.isNetworkExpensive.getter()
{
  v4 = (*(*v0 + 240) + **(*v0 + 240));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C0130B60;

  return v4();
}

uint64_t dispatch thunk of NetworkMonitor.usesCellularConnection.getter()
{
  v4 = (*(*v0 + 248) + **(*v0 + 248));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C0130B60;

  return v4();
}

uint64_t dispatch thunk of NetworkMonitor.usesWifiConnection.getter()
{
  v4 = (*(*v0 + 256) + **(*v0 + 256));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C0130B60;

  return v4();
}

void sub_1C0130690(uint64_t a1)
{
  if (!qword_1EDD44AD8)
  {
    sub_1C014C090();
    v1 = sub_1C014C640();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD44AD8);
    }
  }
}

void *sub_1C01306FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06468, &qword_1C0155F78);
  v2 = *v0;
  v3 = sub_1C014C8F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_1C0107D00(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1C00F98DC(v25, *(v4 + 56) + v22);
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

  return result;
}

id sub_1C01308B8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1C014C8F0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
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

  return result;
}

uint64_t sub_1C0130A14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE069F8, &unk_1C0157488);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0130A84(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1C0130B18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1C0130D58(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1C014C200();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1C014BB70();

    swift_willThrow();
  }

  return v6;
}

void sub_1C0130E34(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t AssistantSupportClient.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1C014CAE0();
  MEMORY[0x1C68D7300](v1);
  return sub_1C014CB10();
}

uint64_t AssistantSupportClient.__allocating_init()()
{
  v0 = swift_allocObject();
  AssistantSupportClient.init()();
  return v0;
}

uint64_t AssistantSupportClient.init()()
{
  v1 = v0;
  v2 = sub_1C014C580();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1C014C0D0();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1C014C5A0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0111504();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8098], v4);
  sub_1C014C0B0();
  v14[1] = MEMORY[0x1E69E7CC0];
  sub_1C0111550();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE067E0, &qword_1C01568E0);
  sub_1C01115A8();
  sub_1C014C700();
  *(v0 + 16) = sub_1C014C5D0();
  v8 = objc_allocWithZone(TPSServiceConnection);
  v9 = sub_1C014C200();
  v10 = [v8 initWithServiceName_];

  *(v1 + 24) = v10;
  v11 = v10;
  v12 = _sSo14NSXPCInterfaceC8TipsCoreE25assistantSupportInterfaceABvgZ_0();
  [v11 setRemoteInterfaceInstance_];

  return v1;
}

uint64_t AssistantSupportClient.findMatchingResultId(from:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C013120C, 0, 0);
}

uint64_t sub_1C013120C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  v4[2] = v2;
  v4[3] = sub_1C01333F0;
  v4[4] = v3;
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A08, &qword_1C01574A0);
  *v5 = v0;
  v5[1] = sub_1C013133C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000001BLL, 0x80000001C015D0F0, sub_1C01333F8, v4, v6);
}

uint64_t sub_1C013133C()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C01314B0, 0, 0);
  }

  else
  {
    v4 = v2[2];
    v3 = v2[3];

    v5 = v2[1];

    return v5(v4, v3);
  }
}

uint64_t sub_1C01314B0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1C0131514(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A50, &qword_1C0157600);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - v7;
  type metadata accessor for ResultContext();
  v9 = sub_1C014C3B0();
  (*(v6 + 16))(v8, a2, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v8, v5);
  aBlock[4] = sub_1C0133814;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C0131770;
  aBlock[3] = &block_descriptor_56;
  v12 = _Block_copy(aBlock);

  [a1 findMatchingResultIdFromContexts:v9 reply:v12];
  _Block_release(v12);
}

uint64_t sub_1C01316E8(uint64_t a1, uint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A50, &qword_1C0157600);
    return sub_1C014C430();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A50, &qword_1C0157600);
    return sub_1C014C440();
  }
}

uint64_t sub_1C0131770(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1C014C230();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t sub_1C0131828()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  v2[2] = v1;
  v2[3] = sub_1C0131ABC;
  v2[4] = 0;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE067C0, &qword_1C0157160);
  *v3 = v0;
  v3[1] = sub_1C0131944;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000001FLL, 0x80000001C015D110, sub_1C0133404, v2, v4);
}

uint64_t sub_1C0131944()
{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C0131AA4, 0, 0);
  }

  else
  {
    v3 = v2[2];
    v4 = v2[1];

    return v4(v3);
  }
}

void sub_1C0131ABC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A48, &qword_1C01575F8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a2, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_1C0133700;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C013A22C;
  aBlock[3] = &block_descriptor_44;
  v10 = _Block_copy(aBlock);

  [a1 availableUserGuideIdentifiersWithReply_];
  _Block_release(v10);
}

uint64_t sub_1C0131C6C(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A48, &qword_1C01575F8);
  return sub_1C014C440();
}

uint64_t AssistantSupportClient.fetchDocument(identifier:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C0131CE0, 0, 0);
}

uint64_t sub_1C0131CE0()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v2;
  v5[3] = sub_1C0133410;
  v5[4] = v4;
  v6 = swift_task_alloc();
  v0[8] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A10, &qword_1C01574C0);
  *v6 = v0;
  v6[1] = sub_1C0131E1C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000001ALL, 0x80000001C015D130, sub_1C0133418, v5, v7);
}

uint64_t sub_1C0131E1C()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C01314B0, 0, 0);
  }

  else
  {
    v3 = v2[2];

    v4 = v2[1];

    return v4(v3);
  }
}

void sub_1C0131F8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A40, &qword_1C01575F0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  v10 = sub_1C014C200();
  (*(v7 + 16))(v9, a2, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_1C013362C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C01321E0;
  aBlock[3] = &block_descriptor_32;
  v13 = _Block_copy(aBlock);

  [a1 fetchDocumentWithIdentifier:v10 reply:v13];
  _Block_release(v13);
}

uint64_t sub_1C013215C(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A40, &qword_1C01575F0);
    return sub_1C014C430();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A40, &qword_1C01575F0);
    return sub_1C014C440();
  }
}

void sub_1C01321E0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t AssistantSupportClient.resolveContext(_:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C013228C, 0, 0);
}

uint64_t sub_1C013228C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v2;
  v4[3] = sub_1C0133424;
  v4[4] = v3;
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A18, &qword_1C01574D0);
  *v5 = v0;
  v5[1] = sub_1C01323BC;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000012, 0x80000001C015D150, sub_1C013342C, v4, v6);
}

uint64_t sub_1C01323BC()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C013252C, 0, 0);
  }

  else
  {
    v3 = v2[2];

    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_1C013252C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1C0132590(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A28, &unk_1C01575D8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a2, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_1C0133570;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C01327F4;
  aBlock[3] = &block_descriptor_20;
  v12 = _Block_copy(aBlock);

  [a1 resolveContextForKeys:a3 reply:v12];
  _Block_release(v12);
}

uint64_t sub_1C0132748(unint64_t a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A28, &unk_1C01575D8);
    return sub_1C014C430();
  }

  else
  {
    if (!a1)
    {
      sub_1C00F930C(MEMORY[0x1E69E7CC0]);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A28, &unk_1C01575D8);
    return sub_1C014C440();
  }
}

uint64_t sub_1C01327F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1C014C170();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t AssistantSupportClient.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1C0132904(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A50, &qword_1C0157600);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - v8;
  v10 = [*(a2 + 24) connection];
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_1C013377C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C0130E34;
  aBlock[3] = &block_descriptor_50;
  v13 = _Block_copy(aBlock);

  v14 = [v10 remoteObjectProxyWithErrorHandler_];
  _Block_release(v13);

  sub_1C014C6E0();
  swift_unknownObjectRelease();
  sub_1C00FC1C0(aBlock, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A30, &qword_1C01575E8);
  if (swift_dynamicCast())
  {
    a3(v18[1], a1);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C013351C();
    v15 = swift_allocError();
    *v16 = 1;
    v19[0] = v15;
    sub_1C014C430();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
}

uint64_t sub_1C0132BA8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A48, &qword_1C01575F8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - v8;
  v10 = [*(a2 + 24) connection];
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_1C01336EC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C0130E34;
  aBlock[3] = &block_descriptor_38;
  v13 = _Block_copy(aBlock);

  v14 = [v10 remoteObjectProxyWithErrorHandler_];
  _Block_release(v13);

  sub_1C014C6E0();
  swift_unknownObjectRelease();
  sub_1C00FC1C0(aBlock, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A30, &qword_1C01575E8);
  if (swift_dynamicCast())
  {
    a3(v18[1], a1);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C013351C();
    v15 = swift_allocError();
    *v16 = 1;
    v19[0] = v15;
    sub_1C014C430();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
}

uint64_t sub_1C0132E4C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A40, &qword_1C01575F0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - v8;
  v10 = [*(a2 + 24) connection];
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_1C0133598;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C0130E34;
  aBlock[3] = &block_descriptor_26;
  v13 = _Block_copy(aBlock);

  v14 = [v10 remoteObjectProxyWithErrorHandler_];
  _Block_release(v13);

  sub_1C014C6E0();
  swift_unknownObjectRelease();
  sub_1C00FC1C0(aBlock, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A30, &qword_1C01575E8);
  if (swift_dynamicCast())
  {
    a3(v18[1], a1);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C013351C();
    v15 = swift_allocError();
    *v16 = 1;
    v19[0] = v15;
    sub_1C014C430();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
}

uint64_t sub_1C01330F0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A28, &unk_1C01575D8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - v8;
  v10 = [*(a2 + 24) connection];
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_1C01334F0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C0130E34;
  aBlock[3] = &block_descriptor_6;
  v13 = _Block_copy(aBlock);

  v14 = [v10 remoteObjectProxyWithErrorHandler_];
  _Block_release(v13);

  sub_1C014C6E0();
  swift_unknownObjectRelease();
  sub_1C00FC1C0(aBlock, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A30, &qword_1C01575E8);
  if (swift_dynamicCast())
  {
    a3(v18[1], a1);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C013351C();
    v15 = swift_allocError();
    *v16 = 1;
    v19[0] = v15;
    sub_1C014C430();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
}

uint64_t sub_1C0133394(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return sub_1C014C430();
}

unint64_t sub_1C013343C()
{
  result = qword_1EBE06A20;
  if (!qword_1EBE06A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06A20);
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C013351C()
{
  result = qword_1EBE06A38;
  if (!qword_1EBE06A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06A38);
  }

  return result;
}

uint64_t sub_1C0133654(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

uint64_t sub_1C0133700(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A48, &qword_1C01575F8);

  return sub_1C0131C6C(a1);
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1C0133814(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A50, &qword_1C0157600);

  return sub_1C01316E8(a1, a2, a3);
}

uint64_t sub_1C013395C()
{
  v1 = (v0 + OBJC_IVAR___TPSUserGuideTopic_productId);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1C0133A20(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___TPSUserGuideTopic_productId);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1C0133C84()
{
  v1 = sub_1C014BD80();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + OBJC_IVAR___TPSUserGuideTopic_topicId);
  swift_beginAccess();
  if (v5[1])
  {
    v6 = *v5;
  }

  else
  {
    sub_1C014BD70();
    v6 = sub_1C014BD50();
    (*(v2 + 8))(v4, v1);
  }

  return v6;
}

BOOL static UserGuideTopic.isValidIdentifier(_:)(char *a1, uint64_t a2)
{
  objc_allocWithZone(type metadata accessor for UserGuideTopic());

  v4 = UserGuideTopic.init(searchableItemUniqueIdentifier:)(a1, a2);
  v5 = v4;
  if (v4)
  {
  }

  return v5 != 0;
}

uint64_t sub_1C0133FEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v47 = &v40 - v7;
  v42 = sub_1C014B9A0();
  v44 = *(v42 - 8);
  v8 = v44;
  v9 = MEMORY[0x1EEE9AC00](v42);
  v43 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - v11;
  v13 = sub_1C014BA60();
  v45 = *(v13 - 8);
  v46 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C014BA50();
  sub_1C014BA30();
  v48 = a1;
  v49 = a2;

  MEMORY[0x1C68D6B10](46, 0xE100000000000000);
  v16 = v48;
  v17 = v49;
  v18 = (v2 + OBJC_IVAR___TPSUserGuideTopic_productId);
  swift_beginAccess();
  v20 = *v18;
  v19 = v18[1];
  v48 = v16;
  v49 = v17;

  MEMORY[0x1C68D6B10](v20, v19);

  MEMORY[0x1C68D6220](v48, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065F0, &qword_1C01563D8);
  v21 = v8;
  v22 = v44;
  v23 = *(v21 + 72);
  v24 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  *(swift_allocObject() + 16) = xmmword_1C0156330;
  swift_beginAccess();

  sub_1C014B970();

  sub_1C014B9D0();
  v25 = v3 + OBJC_IVAR___TPSUserGuideTopic_version;
  swift_beginAccess();
  if (*(v25 + 8))
  {

    sub_1C014B970();

    v27 = sub_1C014B9B0();
    if (*v26)
    {
      v28 = v26;
      v29 = *(v22 + 16);
      v30 = v42;
      v41 = v12;
      v29(v43, v12, v42);
      v31 = *v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v28 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_1C00FE568(0, v31[2] + 1, 1, v31);
        *v28 = v31;
      }

      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        v31 = sub_1C00FE568((v33 > 1), v34 + 1, 1, v31);
        *v28 = v31;
      }

      v31[2] = v34 + 1;
      (*(v22 + 32))(v31 + v24 + v34 * v23, v43, v30);
      v27(&v48, 0);
      v12 = v41;
    }

    else
    {
      v27(&v48, 0);
      v30 = v42;
    }

    (*(v22 + 8))(v12, v30);
  }

  v35 = v47;
  sub_1C014B9F0();
  v36 = sub_1C014BC50();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    (*(v45 + 8))(v15, v46);
    sub_1C00F98F4(v35, &qword_1EBE06970, &qword_1C0156340);
    return 0;
  }

  else
  {
    v39 = sub_1C014BBA0();
    (*(v45 + 8))(v15, v46);
    (*(v37 + 8))(v35, v36);
    return v39;
  }
}

id UserGuideTopic.__allocating_init(productIdentifier:topicIdentifier:version:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR___TPSUserGuideTopic_topicId];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v13[OBJC_IVAR___TPSUserGuideTopic_version];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v13[OBJC_IVAR___TPSUserGuideTopic_title];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v13[OBJC_IVAR___TPSUserGuideTopic_body];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v13[OBJC_IVAR___TPSUserGuideTopic_productId];
  *v18 = a1;
  *(v18 + 1) = a2;
  swift_beginAccess();
  *v14 = a3;
  *(v14 + 1) = a4;
  swift_beginAccess();
  *v15 = a5;
  *(v15 + 1) = a6;
  v20.receiver = v13;
  v20.super_class = v6;
  return objc_msgSendSuper2(&v20, sel_init);
}

id UserGuideTopic.init(productIdentifier:topicIdentifier:version:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = &v6[OBJC_IVAR___TPSUserGuideTopic_topicId];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v6[OBJC_IVAR___TPSUserGuideTopic_version];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v6[OBJC_IVAR___TPSUserGuideTopic_title];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v6[OBJC_IVAR___TPSUserGuideTopic_body];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v6[OBJC_IVAR___TPSUserGuideTopic_productId];
  *v15 = a1;
  *(v15 + 1) = a2;
  swift_beginAccess();
  *v11 = a3;
  *(v11 + 1) = a4;
  swift_beginAccess();
  *v12 = a5;
  *(v12 + 1) = a6;
  v17.receiver = v6;
  v17.super_class = type metadata accessor for UserGuideTopic();
  return objc_msgSendSuper2(&v17, sel_init);
}

id UserGuideTopic.init(searchableItemUniqueIdentifier:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v58 = a1;
  v59 = sub_1C014B9A0();
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065E0, &unk_1C0157A70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v52 - v6;
  v8 = sub_1C014BA60();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v3[OBJC_IVAR___TPSUserGuideTopic_topicId];
  *v12 = 0;
  v12[1] = 0;
  v13 = v12;
  v14 = &v3[OBJC_IVAR___TPSUserGuideTopic_version];
  *v14 = 0;
  v14[1] = 0;
  v15 = v14;
  v16 = &v3[OBJC_IVAR___TPSUserGuideTopic_title];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = v3;
  v18 = &v3[OBJC_IVAR___TPSUserGuideTopic_body];
  *v18 = 0;
  *(v18 + 1) = 0;
  sub_1C014BA40();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1C00F98F4(v7, &qword_1EBE065E0, &unk_1C0157A70);
LABEL_30:

    type metadata accessor for UserGuideTopic();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v55 = v9;
  (*(v9 + 32))(v11, v7, v8);
  v58 = v11;
  v19 = sub_1C014BA20();
  v21 = v8;
  v22 = v15;
  v23 = v56;
  v24 = v13;
  if (!v20)
  {
LABEL_9:
    (*(v55 + 8))(v58, v8);
    goto LABEL_30;
  }

  if (v19 == 0x32766470682D78 && v20 == 0xE700000000000000)
  {
  }

  else
  {
    v26 = sub_1C014C9F0();

    if ((v26 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v27 = v58;
  v28 = sub_1C014BA00();
  if (!v29)
  {
    (*(v55 + 8))(v27, v21);
    goto LABEL_30;
  }

  v62 = v28;
  v63 = v29;
  v60 = 46;
  v61 = 0xE100000000000000;
  sub_1C00FCDA8();
  v30 = sub_1C014C690();

  if (v30[2] <= 1uLL)
  {
    (*(v55 + 8))(v27, v21);

    goto LABEL_30;
  }

  v31 = v30[6];
  v32 = v30[7];

  v33 = &v17[OBJC_IVAR___TPSUserGuideTopic_productId];
  *v33 = v31;
  *(v33 + 1) = v32;
  v34 = sub_1C014B9C0();
  if (v34)
  {
    v52 = v21;
    v35 = *(v34 + 16);
    if (v35)
    {
      v36 = v57;
      v37 = v34 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
      swift_beginAccess();
      swift_beginAccess();
      v38 = *(v36 + 16);
      v36 += 16;
      v53 = *(v36 + 56);
      v54 = v38;
      v57 = v36;
      v39 = (v36 - 8);
      do
      {
        v54(v23, v37, v59);
        v41 = sub_1C014B980();
        v42 = v40;
        if (v41 == 0x64496369706F74 && v40 == 0xE700000000000000 || (sub_1C014C9F0() & 1) != 0)
        {

          v43 = sub_1C014B990();
          v45 = v44;
          (*v39)(v23, v59);
          *v24 = v43;
          v24[1] = v45;
        }

        else
        {
          if (v41 == 0x6E6F6973726576 && v42 == 0xE700000000000000)
          {
          }

          else
          {
            v46 = sub_1C014C9F0();

            if ((v46 & 1) == 0)
            {
              (*v39)(v23, v59);
              goto LABEL_21;
            }
          }

          v47 = sub_1C014B990();
          v49 = v48;
          (*v39)(v23, v59);
          *v22 = v47;
          v22[1] = v49;
        }

LABEL_21:
        v37 += v53;
        --v35;
      }

      while (v35);
    }

    v21 = v52;
    v27 = v58;
  }

  (*(v55 + 8))(v27, v21);
  v51 = type metadata accessor for UserGuideTopic();
  v64.receiver = v17;
  v64.super_class = v51;
  return objc_msgSendSuper2(&v64, sel_init);
}

id UserGuideTopic.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UserGuideTopic.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserGuideTopic();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void UserGuideTopic.supportSiteURL.getter(char *a1@<X8>)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1C014BB90();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  sub_1C00FCF48();
  sub_1C014BC10();

  v11 = sub_1C014BC50();
  v12 = *(v11 - 8);
  v25 = *(v12 + 48);
  if (v25(v10, 1, v11) == 1)
  {
    sub_1C00F98F4(v10, &qword_1EBE06970, &qword_1C0156340);
    v13 = 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065A8, &qword_1C0156720);
    v14 = swift_allocObject();
    v24 = a1;
    v15 = v14;
    *(v14 + 16) = xmmword_1C0156390;
    *(v14 + 32) = 0x6564697567;
    *(v14 + 40) = 0xE500000000000000;
    v16 = (v1 + OBJC_IVAR___TPSUserGuideTopic_productId);
    swift_beginAccess();
    v17 = *v16;
    v18 = v16[1];
    *(v15 + 48) = v17;
    *(v15 + 56) = v18;
    (*(v5 + 104))(v7, *MEMORY[0x1E6968F70], v4);
    sub_1C00FCDA8();
    v23 = v5;

    v5 = v23;
    sub_1C014BC20();
    a1 = v24;

    (*(v5 + 8))(v7, v4);
    (*(v12 + 8))(v10, v11);
    v13 = 0;
  }

  (*(v12 + 56))(a1, v13, 1, v11);
  v19 = (v2 + OBJC_IVAR___TPSUserGuideTopic_topicId);
  swift_beginAccess();
  v20 = v19[1];
  if (v20)
  {
    v21 = *v19;
    if (!v25(a1, 1, v11))
    {
      v26 = v21;
      v27 = v20;
      (*(v5 + 104))(v7, *MEMORY[0x1E6968F70], v4);
      sub_1C00FCDA8();

      sub_1C014BBF0();
      (*(v5 + 8))(v7, v4);
    }
  }
}

id sub_1C013576C()
{
  result = [objc_allocWithZone(type metadata accessor for SearchQueryManager()) init];
  qword_1EBE06A80 = result;
  return result;
}

id SearchQueryManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static SearchQueryManager.shared.getter()
{
  if (qword_1EBE06380 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBE06A80;

  return v1;
}

id SearchQueryManager.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v12 = sub_1C014C5A0();
  v2 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C014C580();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C014C0D0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v11 = OBJC_IVAR___TPSSearchQueryManager_syncQueue;
  v7 = sub_1C0111504();
  v10[0] = "ortSiteURL";
  v10[1] = v7;
  sub_1C014C0B0();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1C01297D8(&qword_1EDD44B70, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE067E0, &qword_1C01568E0);
  sub_1C0129820(&qword_1EDD44B90, &qword_1EBE067E0, &qword_1C01568E0);
  sub_1C014C700();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8090], v12);
  *&v0[v11] = sub_1C014C5D0();
  v8 = OBJC_IVAR___TPSSearchQueryManager_pendingQueries;
  *&v1[v8] = sub_1C00F964C(MEMORY[0x1E69E7CC0]);
  v14.receiver = v1;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_1C0135B48(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22[0] = a2;
  v7 = sub_1C014C0A0();
  v24 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1C014C0D0();
  v10 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &a1[OBJC_IVAR___TPSSearchQuery_identifier];
  swift_beginAccess();
  v15 = *v13;
  v14 = *(v13 + 1);
  v22[1] = *(v4 + OBJC_IVAR___TPSSearchQueryManager_syncQueue);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = v15;
  v18 = v22[0];
  v17[4] = v14;
  v17[5] = v18;
  v17[6] = a3;
  v17[7] = a1;
  aBlock[4] = sub_1C0136A10;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C011431C;
  aBlock[3] = &block_descriptor_14_0;
  v19 = _Block_copy(aBlock);

  v20 = a1;
  sub_1C014C0B0();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1C01297D8(&qword_1EBE05D10, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066C0, &unk_1C01576F0);
  sub_1C0129820(&qword_1EBE05C68, &qword_1EBE066C0, &unk_1C01576F0);
  sub_1C014C700();
  MEMORY[0x1C68D6DD0](0, v12, v9, v19);
  _Block_release(v19);
  (*(v24 + 8))(v9, v7);
  (*(v10 + 8))(v12, v23);
}

char *sub_1C0135E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    swift_beginAccess();
    sub_1C0136914(a2, a3, &v31);
    swift_endAccess();
    if (v32)
    {
      sub_1C00F98DC(&v31, v34);
      v13 = v35;
      v14 = v36;
      __swift_project_boxed_opaque_existential_0(v34, v35);
      (*(v14 + 16))(v13, v14);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
    }

    else
    {
      sub_1C0136A20(&v31);
    }

    v15 = swift_allocObject();
    *(v15 + 2) = v12;
    *(v15 + 3) = a2;
    *(v15 + 4) = a3;
    *(v15 + 5) = a4;
    *(v15 + 6) = a5;
    v16 = OBJC_IVAR___TPSSearchQuery_contentTypeFilter;
    swift_beginAccess();
    v17 = *&v12[OBJC_IVAR___TPSSearchQueryManager_syncQueue];
    if (*&a6[v16] == 1)
    {
      v18 = type metadata accessor for PegasusKitQuery();
      v19 = objc_allocWithZone(v18);
      *&v19[OBJC_IVAR____TtC8TipsCore15PegasusKitQuery_proxyTask] = 0;
      *&v19[OBJC_IVAR____TtC8TipsCore15PegasusKitQuery_searchQuery] = a6;
      v20 = &v19[OBJC_IVAR____TtC8TipsCore15PegasusKitQuery_completion];
      *v20 = sub_1C0136A88;
      v20[1] = v15;
      *&v19[OBJC_IVAR____TtC8TipsCore15PegasusKitQuery_queue] = v17;
      v30.receiver = v19;
      v30.super_class = v18;
      v21 = v12;

      v22 = v17;

      v23 = a6;
      v24 = objc_msgSendSuper2(&v30, sel_init);
      v25 = &off_1F3F2D0A8;
    }

    else
    {
      v18 = type metadata accessor for CoreSpotlightQuery(0);
      v26 = objc_allocWithZone(v18);
      v27 = v12;

      v24 = sub_1C013A29C(a6, v17, sub_1C0136A88, v15);
      v25 = &off_1F3F2E298;
    }

    v32 = v18;
    v33 = v25;
    *&v31 = v24;
    sub_1C00F98DC(&v31, v34);
    sub_1C0107D00(v34, &v31);
    swift_beginAccess();

    sub_1C00F8004(&v31, a2, a3);
    swift_endAccess();
    v28 = v35;
    v29 = v36;
    __swift_project_boxed_opaque_existential_0(v34, v35);
    (*(v29 + 8))(v28, v29);

    return __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  return result;
}

uint64_t sub_1C01361A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  if (a1)
  {
    v10 = a1;
    (a6)(a1, 0);
  }

  else
  {
    (a6)(0, a2);
  }

  swift_beginAccess();
  sub_1C0136914(a4, a5, v12);
  swift_endAccess();
  return sub_1C0136A20(v12);
}

void sub_1C0136300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1C014BB60();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_1C0136370(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C014C0A0();
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C014C0D0();
  v9 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + OBJC_IVAR___TPSSearchQueryManager_syncQueue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_1C01369E4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C011431C;
  aBlock[3] = &block_descriptor_7;
  v14 = _Block_copy(aBlock);

  sub_1C014C0B0();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1C01297D8(&qword_1EBE05D10, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066C0, &unk_1C01576F0);
  sub_1C0129820(&qword_1EBE05C68, &qword_1EBE066C0, &unk_1C01576F0);
  sub_1C014C700();
  MEMORY[0x1C68D6DD0](0, v11, v8, v14);
  _Block_release(v14);
  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);
}

void sub_1C013667C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = OBJC_IVAR___TPSSearchQueryManager_pendingQueries;
    swift_beginAccess();
    v8 = *&v6[v7];
    if (*(v8 + 16) && (v9 = sub_1C012EBF4(a2, a3), (v10 & 1) != 0))
    {
      sub_1C0107D00(*(v8 + 56) + 40 * v9, v13);
      sub_1C00F98DC(v13, v14);
      swift_endAccess();
      v11 = v15;
      v12 = v16;
      __swift_project_boxed_opaque_existential_0(v14, v15);
      (*(v12 + 16))(v11, v12);

      __swift_destroy_boxed_opaque_existential_1Tm(v14);
    }

    else
    {
      swift_endAccess();
    }
  }
}

id SearchQueryManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1C0136870@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1C012EBF4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C012F904();
      v10 = v12;
    }

    sub_1C00F9954((*(v10 + 56) + 32 * v8), a3);
    sub_1C012ED74(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_1C0136914@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1C012EBF4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C01306FC();
      v10 = v12;
    }

    sub_1C00F98DC((*(v10 + 56) + 40 * v8), a3);
    sub_1C012F244(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C0136A20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06458, &qword_1C0157670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C0136BA8()
{
  result = qword_1EDD44928;
  if (!qword_1EDD44928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE06A98, &qword_1C0157678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD44928);
  }

  return result;
}

uint64_t sub_1C0136CA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  a6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE06900, &qword_1C0157710);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C0156330;
  *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A98, &qword_1C0157678);
  *(v7 + 64) = sub_1C0136BA8();
  *(v7 + 32) = a5;

  sub_1C014BFB0();
}

id sub_1C0137084(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    v6 = *a4;
  }

  else
  {
    swift_once();
    v6 = *a4;
  }

  return v6;
}

id sub_1C013710C(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

id TPSLogger.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TPSLogger.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TPSLogger();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TPSLogger.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TPSLogger();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C013726C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___TPSSearchResultItem_relevance;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = OBJC_IVAR___TPSSearchResultItem_relevance;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (v5 != v7)
  {
    v19 = v7 < v5;
    return v19 & 1;
  }

  v8 = (v2 + OBJC_IVAR___TPSSearchResultItem_title);
  swift_beginAccess();
  v9 = v8[1];
  if (!v9 || (v10 = *v8, v11 = (v3 + OBJC_IVAR___TPSSearchResultItem_title), swift_beginAccess(), (v12 = v11[1]) == 0))
  {
    v14 = (v2 + OBJC_IVAR___TPSSearchResultItem_documentIdentifier);
    swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];
    v17 = (v3 + OBJC_IVAR___TPSSearchResultItem_documentIdentifier);
    swift_beginAccess();
    if (*v17 != v15 || v17[1] != v16)
    {
      goto LABEL_13;
    }

LABEL_15:
    v19 = 0;
    return v19 & 1;
  }

  if (v10 == *v11 && v9 == v12)
  {
    goto LABEL_15;
  }

LABEL_13:
  v19 = sub_1C014C9F0();
  return v19 & 1;
}

uint64_t sub_1C0137488(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C0106990(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v34 = v2 + 32;
  v40[0] = v2 + 32;
  v40[1] = v4;
  v5 = sub_1C014C9B0();
  if (v5 >= v4)
  {
    if (v4 < 2)
    {
      return sub_1C014C870();
    }

    v9 = -1;
    v10 = 1;
    v11 = (v2 + 32);
    v33 = v4;
LABEL_9:
    v36 = v10;
    v37 = v9;
    v12 = *(v34 + 8 * v10);
    v35 = v11;
    v13 = v11;
    while (1)
    {
      v16 = *v13;
      v17 = OBJC_IVAR___TPSSearchResultItem_relevance;
      swift_beginAccess();
      v18 = *(v12 + v17);
      v19 = OBJC_IVAR___TPSSearchResultItem_relevance;
      swift_beginAccess();
      v20 = *(v16 + v19);
      if (v18 == v20)
      {
        v21 = (v12 + OBJC_IVAR___TPSSearchResultItem_title);
        swift_beginAccess();
        v22 = v21[1];
        if (v22 && (v23 = *v21, v24 = (v16 + OBJC_IVAR___TPSSearchResultItem_title), swift_beginAccess(), (v25 = v24[1]) != 0))
        {
          if (v23 == *v24 && v22 == v25)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v27 = (v12 + OBJC_IVAR___TPSSearchResultItem_documentIdentifier);
          swift_beginAccess();
          v28 = *v27;
          v29 = v27[1];
          v30 = (v16 + OBJC_IVAR___TPSSearchResultItem_documentIdentifier);
          swift_beginAccess();
          if (*v30 == v28 && v30[1] == v29)
          {
LABEL_8:
            v10 = v36 + 1;
            v11 = v35 + 1;
            v9 = v37 - 1;
            if (v36 + 1 == v33)
            {
              return sub_1C014C870();
            }

            goto LABEL_9;
          }
        }

        if ((sub_1C014C9F0() & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else if (v20 >= v18)
      {
        goto LABEL_8;
      }

      v14 = *v13;
      v12 = v13[1];
      *v13 = v12;
      v13[1] = v14;
      --v13;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_8;
      }
    }
  }

  v6 = v5;
  v7 = (v4 >> 1);
  if (v4 >= 2)
  {
    type metadata accessor for SearchResult.Item();
    v8 = sub_1C014C3F0();
    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v39[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
  v39[1] = v7;
  sub_1C0137738(v39, v38, v40, v6);
  *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

  return sub_1C014C870();
}

void sub_1C0137738(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_125:
    v5 = v10;
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_163;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_127;
    }

    goto LABEL_157;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v12 >= v8)
    {
      v125 = v12;
      goto LABEL_41;
    }

    v13 = *v7;
    v14 = *(*v7 + 8 * v12);
    v127 = *(*v7 + 8 * v11);
    v128 = v14;
    v123 = sub_1C013726C(&v128, &v127);
    if (v6)
    {
LABEL_135:

      return;
    }

    v125 = v11 + 2;
    if (v11 + 2 >= v8)
    {
      goto LABEL_32;
    }

    v115 = v11;
    v117 = v10;
    v15 = (v13 + 8 * v11 + 16);
    do
    {
      v17 = *(v15 - 1);
      v18 = *v15;
      v5 = &OBJC_IVAR___TPSSearchResultItem_relevance;
      v19 = OBJC_IVAR___TPSSearchResultItem_relevance;
      swift_beginAccess();
      v20 = *(v18 + v19);
      v21 = OBJC_IVAR___TPSSearchResultItem_relevance;
      swift_beginAccess();
      v22 = *(v17 + v21);
      if (v20 != v22)
      {
        v28 = v22 < v20;
LABEL_24:
        v16 = v125;
        goto LABEL_25;
      }

      v23 = (v18 + OBJC_IVAR___TPSSearchResultItem_title);
      swift_beginAccess();
      v5 = v23[1];
      if (!v5 || (v24 = *v23, v25 = (v17 + OBJC_IVAR___TPSSearchResultItem_title), swift_beginAccess(), (v26 = v25[1]) == 0))
      {
        v29 = (v18 + OBJC_IVAR___TPSSearchResultItem_documentIdentifier);
        swift_beginAccess();
        v5 = *v29;
        v30 = v29[1];
        v31 = (v17 + OBJC_IVAR___TPSSearchResultItem_documentIdentifier);
        swift_beginAccess();
        if (*v31 == v5 && v31[1] == v30)
        {
          v7 = a3;
          v16 = v125;
          if (v123)
          {
            goto LABEL_29;
          }

          goto LABEL_26;
        }

        v28 = sub_1C014C9F0();
        v7 = a3;
        goto LABEL_24;
      }

      v27 = v24 == *v25 && v5 == v26;
      v16 = v125;
      if (v27)
      {
        v7 = a3;
        if (v123)
        {
LABEL_29:
          v11 = v115;
          v10 = v117;
          goto LABEL_33;
        }

        goto LABEL_26;
      }

      v28 = sub_1C014C9F0();
      v7 = a3;
LABEL_25:
      if ((v123 ^ v28))
      {
        goto LABEL_31;
      }

LABEL_26:
      ++v15;
      v125 = v16 + 1;
    }

    while (v8 != v16 + 1);
    v125 = v8;
LABEL_31:
    v11 = v115;
    v10 = v117;
LABEL_32:
    if (v123)
    {
LABEL_33:
      v33 = v125;
      if (v125 < v11)
      {
        goto LABEL_154;
      }

      if (v11 < v125)
      {
        v34 = 8 * v125 - 8;
        v35 = 8 * v11;
        v36 = v11;
        do
        {
          if (v36 != --v33)
          {
            v38 = *v7;
            if (!*v7)
            {
              goto LABEL_160;
            }

            v37 = *(v38 + v35);
            *(v38 + v35) = *(v38 + v34);
            *(v38 + v34) = v37;
          }

          ++v36;
          v34 -= 8;
          v35 += 8;
        }

        while (v36 < v33);
      }
    }

LABEL_41:
    v39 = v7[1];
    if (v125 >= v39)
    {
      goto LABEL_73;
    }

    if (__OFSUB__(v125, v11))
    {
      goto LABEL_153;
    }

    if (v125 - v11 >= a4)
    {
LABEL_73:
      if (v125 < v11)
      {
        goto LABEL_152;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1C00FE794(0, *(v10 + 2) + 1, 1, v10);
      }

      v64 = *(v10 + 2);
      v63 = *(v10 + 3);
      v65 = v64 + 1;
      if (v64 >= v63 >> 1)
      {
        v10 = sub_1C00FE794((v63 > 1), v64 + 1, 1, v10);
      }

      *(v10 + 2) = v65;
      v66 = &v10[16 * v64];
      *(v66 + 4) = v11;
      *(v66 + 5) = v125;
      v67 = *a1;
      if (!*a1)
      {
        goto LABEL_162;
      }

      if (!v64)
      {
LABEL_3:
        v8 = v7[1];
        v9 = v125;
        if (v125 >= v8)
        {
          goto LABEL_125;
        }

        continue;
      }

      while (1)
      {
        v5 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v68 = *(v10 + 4);
          v69 = *(v10 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_93:
          if (v71)
          {
            goto LABEL_141;
          }

          v84 = &v10[16 * v65];
          v86 = *v84;
          v85 = *(v84 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_144;
          }

          v90 = &v10[16 * v5 + 32];
          v92 = *v90;
          v91 = *(v90 + 1);
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_147;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_148;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              v5 = v65 - 2;
            }

            goto LABEL_114;
          }

          goto LABEL_107;
        }

        v94 = &v10[16 * v65];
        v96 = *v94;
        v95 = *(v94 + 1);
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_107:
        if (v89)
        {
          goto LABEL_143;
        }

        v97 = &v10[16 * v5];
        v99 = *(v97 + 4);
        v98 = *(v97 + 5);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_146;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_114:
        v105 = v5 - 1;
        if (v5 - 1 >= v65)
        {
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
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
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
          goto LABEL_156;
        }

        if (!*v7)
        {
          goto LABEL_159;
        }

        v106 = *&v10[16 * v105 + 32];
        v107 = *&v10[16 * v5 + 40];
        sub_1C0137FB4((*v7 + 8 * v106), (*v7 + 8 * *&v10[16 * v5 + 32]), (*v7 + 8 * v107), v67);
        if (v6)
        {
          goto LABEL_135;
        }

        if (v107 < v106)
        {
          goto LABEL_137;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1C010685C(v10);
        }

        if (v105 >= *(v10 + 2))
        {
          goto LABEL_138;
        }

        v108 = &v10[16 * v105];
        *(v108 + 4) = v106;
        *(v108 + 5) = v107;
        v129 = v10;
        sub_1C01067D0(v5);
        v10 = v129;
        v65 = *(v129 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = &v10[16 * v65 + 32];
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_139;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_140;
      }

      v79 = &v10[16 * v65];
      v81 = *v79;
      v80 = *(v79 + 1);
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_142;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_145;
      }

      if (v83 >= v75)
      {
        v101 = &v10[16 * v5 + 32];
        v103 = *v101;
        v102 = *(v101 + 1);
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_149;
        }

        if (v70 < v104)
        {
          v5 = v65 - 2;
        }

        goto LABEL_114;
      }

      goto LABEL_93;
    }

    break;
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_155;
  }

  if (v11 + a4 >= v39)
  {
    v40 = v7[1];
  }

  else
  {
    v40 = v11 + a4;
  }

  if (v40 < v11)
  {
LABEL_156:
    __break(1u);
LABEL_157:
    v5 = sub_1C010685C(v5);
LABEL_127:
    v109 = v6;
    v129 = v5;
    v110 = *(v5 + 16);
    if (v110 >= 2)
    {
      while (*v7)
      {
        v6 = v110 - 1;
        v111 = *(v5 + 16 * v110);
        v112 = *(v5 + 16 * (v110 - 1) + 40);
        sub_1C0137FB4((*v7 + 8 * v111), (*v7 + 8 * *(v5 + 16 * (v110 - 1) + 32)), (*v7 + 8 * v112), v10);
        if (v109)
        {
          goto LABEL_135;
        }

        if (v112 < v111)
        {
          goto LABEL_150;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1C010685C(v5);
        }

        if (v110 - 2 >= *(v5 + 16))
        {
          goto LABEL_151;
        }

        v113 = (v5 + 16 * v110);
        *v113 = v111;
        v113[1] = v112;
        v129 = v5;
        sub_1C01067D0(v110 - 1);
        v5 = v129;
        v110 = *(v129 + 16);
        if (v110 <= 1)
        {
          goto LABEL_135;
        }
      }

      goto LABEL_161;
    }

    goto LABEL_135;
  }

  if (v125 == v40)
  {
    goto LABEL_73;
  }

  v116 = v11;
  v118 = v10;
  v114 = v6;
  v41 = *v7;
  v42 = (v41 + 8 * v125 - 8);
  v43 = v11 - v125;
  v44 = v125;
  v122 = v40;
LABEL_52:
  v124 = v42;
  v126 = v44;
  v45 = *(v41 + 8 * v44);
  v46 = v43;
  while (1)
  {
    v47 = *v42;
    v5 = &OBJC_IVAR___TPSSearchResultItem_relevance;
    v48 = OBJC_IVAR___TPSSearchResultItem_relevance;
    swift_beginAccess();
    v49 = *(v45 + v48);
    v50 = OBJC_IVAR___TPSSearchResultItem_relevance;
    swift_beginAccess();
    v51 = *(v47 + v50);
    if (v49 == v51)
    {
      v52 = (v45 + OBJC_IVAR___TPSSearchResultItem_title);
      swift_beginAccess();
      v53 = v52[1];
      if (v53)
      {
        v5 = *v52;
        v54 = (v47 + OBJC_IVAR___TPSSearchResultItem_title);
        swift_beginAccess();
        v55 = v54[1];
        if (v55)
        {
          if (v5 == *v54 && v53 == v55)
          {
            goto LABEL_51;
          }

LABEL_65:
          if ((sub_1C014C9F0() & 1) == 0)
          {
            goto LABEL_51;
          }

          goto LABEL_68;
        }
      }

      v57 = (v45 + OBJC_IVAR___TPSSearchResultItem_documentIdentifier);
      swift_beginAccess();
      v58 = *v57;
      v5 = v57[1];
      v59 = (v47 + OBJC_IVAR___TPSSearchResultItem_documentIdentifier);
      swift_beginAccess();
      if (*v59 != v58 || v59[1] != v5)
      {
        goto LABEL_65;
      }

LABEL_51:
      v44 = v126 + 1;
      v42 = v124 + 1;
      --v43;
      if (v126 + 1 == v122)
      {
        v125 = v122;
        v6 = v114;
        v11 = v116;
        v7 = a3;
        v10 = v118;
        goto LABEL_73;
      }

      goto LABEL_52;
    }

    if (v51 >= v49)
    {
      goto LABEL_51;
    }

LABEL_68:
    if (!v41)
    {
      break;
    }

    v61 = *v42;
    v45 = v42[1];
    *v42 = v45;
    v42[1] = v61;
    --v42;
    if (__CFADD__(v46++, 1))
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
}

uint64_t sub_1C0137FB4(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    if (a4 != __src || &__src[8 * v9] <= a4)
    {
      v13 = __dst;
      memmove(a4, __src, 8 * v9);
      __dst = v13;
    }

    v58 = &v4[8 * v9];
    if (v7 < 8 || __dst >= v5)
    {
      __dst = v6;
      goto LABEL_66;
    }

    v14 = &v4[8 * v9];
    while (1)
    {
      v60 = __dst;
      v15 = *__dst;
      v16 = *v4;
      v17 = OBJC_IVAR___TPSSearchResultItem_relevance;
      swift_beginAccess();
      v18 = *(v15 + v17);
      v19 = OBJC_IVAR___TPSSearchResultItem_relevance;
      swift_beginAccess();
      v20 = *(v16 + v19);
      if (v18 == v20)
      {
        v21 = (v15 + OBJC_IVAR___TPSSearchResultItem_title);
        swift_beginAccess();
        v22 = v21[1];
        if (v22 && (v23 = *v21, v24 = (v16 + OBJC_IVAR___TPSSearchResultItem_title), swift_beginAccess(), (v25 = v24[1]) != 0))
        {
          v26 = v23 == *v24 && v22 == v25;
          v14 = v58;
          if (v26)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v27 = (v15 + OBJC_IVAR___TPSSearchResultItem_documentIdentifier);
          swift_beginAccess();
          v28 = *v27;
          v29 = v27[1];
          v30 = (v16 + OBJC_IVAR___TPSSearchResultItem_documentIdentifier);
          swift_beginAccess();
          v31 = *v30 == v28 && v30[1] == v29;
          v14 = v58;
          if (v31)
          {
LABEL_25:
            v32 = v4;
            v26 = v6 == v4;
            v4 += 8;
            __dst = v60;
            if (v26)
            {
              goto LABEL_27;
            }

LABEL_26:
            *v6 = *v32;
            goto LABEL_27;
          }
        }

        if ((sub_1C014C9F0() & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else if (v20 >= v18)
      {
        goto LABEL_25;
      }

      v32 = v60;
      __dst = v60 + 8;
      if (v6 != v60)
      {
        goto LABEL_26;
      }

LABEL_27:
      v6 += 8;
      if (v4 >= v14 || __dst >= v5)
      {
        __dst = v6;
        goto LABEL_66;
      }
    }
  }

  if (a4 != __dst || &__dst[8 * v12] <= a4)
  {
    v33 = __dst;
    memmove(a4, __dst, 8 * v12);
    __dst = v33;
  }

  v58 = &v4[8 * v12];
  if (v10 >= 8 && __dst > v6)
  {
    v57 = v4;
    while (1)
    {
      v34 = __dst - 8;
      v5 -= 8;
      v35 = v58;
      v36 = v58;
      v59 = __dst - 8;
      v61 = __dst;
      while (1)
      {
        v38 = *(v36 - 1);
        v36 -= 8;
        v37 = v38;
        v39 = *v34;
        v40 = OBJC_IVAR___TPSSearchResultItem_relevance;
        swift_beginAccess();
        v41 = *(v38 + v40);
        v42 = OBJC_IVAR___TPSSearchResultItem_relevance;
        swift_beginAccess();
        v43 = *(v39 + v42);
        if (v41 != v43)
        {
          break;
        }

        v44 = v35;
        v45 = (v37 + OBJC_IVAR___TPSSearchResultItem_title);
        swift_beginAccess();
        v46 = v45[1];
        if (v46 && (v47 = *v45, v48 = (v39 + OBJC_IVAR___TPSSearchResultItem_title), swift_beginAccess(), (v49 = v48[1]) != 0))
        {
          v50 = v47 == *v48 && v46 == v49;
          v35 = v44;
          v4 = v57;
          if (v50)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v51 = (v37 + OBJC_IVAR___TPSSearchResultItem_documentIdentifier);
          swift_beginAccess();
          v52 = *v51;
          v53 = v51[1];
          v54 = (v39 + OBJC_IVAR___TPSSearchResultItem_documentIdentifier);
          swift_beginAccess();
          v55 = *v54 == v52 && v54[1] == v53;
          v35 = v44;
          v4 = v57;
          if (v55)
          {
            goto LABEL_56;
          }
        }

        if (sub_1C014C9F0())
        {
          goto LABEL_58;
        }

LABEL_56:
        if (v5 + 8 != v35)
        {
          *v5 = *v36;
        }

        v5 -= 8;
        v35 = v36;
        v34 = v59;
        if (v36 <= v4)
        {
          v58 = v36;
          __dst = v61;
          goto LABEL_66;
        }
      }

      if (v43 >= v41)
      {
        goto LABEL_56;
      }

LABEL_58:
      if (v5 + 8 != v61)
      {
        *v5 = *v59;
      }

      v58 = v35;
      if (v35 > v4)
      {
        __dst = v59;
        if (v59 > v6)
        {
          continue;
        }
      }

      __dst = v59;
      break;
    }
  }

LABEL_66:
  if (__dst != v4 || __dst >= &v4[(v58 - v4 + (v58 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(__dst, v4, 8 * ((v58 - v4) / 8));
  }

  return 1;
}

unint64_t sub_1C0138490(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1C014C750();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1C013C2B8(v3, 0);
  sub_1C0138524(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1C0138524(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C014C750();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C014C750();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C013941C();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE067B0, &qword_1C0156890);
            v9 = sub_1C0110BE0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SearchResult.Item();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1C01386A4(void *a1)
{
  v2 = [a1 attributeSet];
  v3 = [v2 contentType];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1C014C230();
  v6 = v5;

  v7 = v4 == 0xD000000000000014 && 0x80000001C015BBA0 == v6;
  if (!v7 && (sub_1C014C9F0() & 1) == 0)
  {
    v30 = v4 == 0x6C7070612E6D6F63 && v6 == 0xEE00737069742E65;
    if (v30 || (sub_1C014C9F0() & 1) != 0)
    {
      v31 = [a1 uniqueIdentifier];
      v32 = sub_1C014C230();
      v34 = v33;

      v35 = [a1 attributeSet];
      v36 = CSSearchableItemAttributeSet.collectionIdentifier.getter();
      v38 = v37;

      if (v38)
      {
        v39 = v38;
      }

      else
      {
        v36 = 0;
        v39 = 0xE000000000000000;
      }

      v40 = type metadata accessor for SearchResult.Item();
      v41 = objc_allocWithZone(v40);
      v42 = &v41[OBJC_IVAR___TPSSearchResultItem_correlationIdentifier];
      *v42 = 0;
      *(v42 + 1) = 0;
      v43 = &v41[OBJC_IVAR___TPSSearchResultItem_contentType];
      *v43 = 0;
      *(v43 + 1) = 0;
      v44 = &v41[OBJC_IVAR___TPSSearchResultItem_title];
      *v44 = 0;
      *(v44 + 1) = 0;
      v45 = &v41[OBJC_IVAR___TPSSearchResultItem_body];
      *v45 = 0;
      *(v45 + 1) = 0;
      *&v41[OBJC_IVAR___TPSSearchResultItem_relevance] = 0x3FF0000000000000;
      v46 = &v41[OBJC_IVAR___TPSSearchResultItem_documentIdentifier];
      *v46 = v32;
      v46[1] = v34;
      v47 = &v41[OBJC_IVAR___TPSSearchResultItem_collectionIdentifier];
      *v47 = v36;
      v47[1] = v39;
      v86.receiver = v41;
      v86.super_class = v40;
      v16 = objc_msgSendSuper2(&v86, sel_init);
      v48 = [a1 attributeSet];
    }

    else
    {
      if ((v4 != 0xD00000000000001ALL || 0x80000001C015C2D0 != v6) && (sub_1C014C9F0() & 1) == 0)
      {
        goto LABEL_36;
      }

      v67 = [a1 uniqueIdentifier];
      v68 = sub_1C014C230();
      v70 = v69;

      v71 = [a1 attributeSet];
      v72 = CSSearchableItemAttributeSet.collectionIdentifier.getter();
      v74 = v73;

      if (v74)
      {
        v75 = v74;
      }

      else
      {
        v72 = 0;
        v75 = 0xE000000000000000;
      }

      v76 = type metadata accessor for SearchResult.Item();
      v77 = objc_allocWithZone(v76);
      v78 = &v77[OBJC_IVAR___TPSSearchResultItem_correlationIdentifier];
      *v78 = 0;
      *(v78 + 1) = 0;
      v79 = &v77[OBJC_IVAR___TPSSearchResultItem_contentType];
      *v79 = 0;
      *(v79 + 1) = 0;
      v80 = &v77[OBJC_IVAR___TPSSearchResultItem_title];
      *v80 = 0;
      *(v80 + 1) = 0;
      v81 = &v77[OBJC_IVAR___TPSSearchResultItem_body];
      *v81 = 0;
      *(v81 + 1) = 0;
      *&v77[OBJC_IVAR___TPSSearchResultItem_relevance] = 0x3FF0000000000000;
      v82 = &v77[OBJC_IVAR___TPSSearchResultItem_documentIdentifier];
      *v82 = v68;
      v82[1] = v70;
      v83 = &v77[OBJC_IVAR___TPSSearchResultItem_collectionIdentifier];
      *v83 = v72;
      v83[1] = v75;
      v87.receiver = v77;
      v87.super_class = v76;
      v16 = objc_msgSendSuper2(&v87, sel_init);
      v48 = [a1 attributeSet];
    }

    v49 = v48;
    v50 = CSSearchableItemAttributeSet.correlationIdentifier.getter();
    v52 = v51;

    v53 = &v16[OBJC_IVAR___TPSSearchResultItem_correlationIdentifier];
    swift_beginAccess();
    *v53 = v50;
    v53[1] = v52;

    goto LABEL_20;
  }

  v8 = [a1 uniqueIdentifier];
  v9 = sub_1C014C230();
  v11 = v10;

  v12 = objc_allocWithZone(type metadata accessor for UserGuideTopic());
  v13 = UserGuideTopic.init(searchableItemUniqueIdentifier:)(v9, v11);
  if (!v13)
  {
LABEL_36:

    return 0;
  }

  v14 = v13;
  v15 = &v13[OBJC_IVAR___TPSUserGuideTopic_topicId];
  swift_beginAccess();
  v16 = *(v15 + 1);
  if (v16)
  {
    v17 = *v15;
    v18 = &v14[OBJC_IVAR___TPSUserGuideTopic_productId];
    swift_beginAccess();
    v20 = *v18;
    v19 = *(v18 + 1);
    v21 = type metadata accessor for SearchResult.Item();
    v22 = objc_allocWithZone(v21);
    v23 = &v22[OBJC_IVAR___TPSSearchResultItem_correlationIdentifier];
    *v23 = 0;
    *(v23 + 1) = 0;
    v24 = &v22[OBJC_IVAR___TPSSearchResultItem_contentType];
    *v24 = 0;
    *(v24 + 1) = 0;
    v25 = &v22[OBJC_IVAR___TPSSearchResultItem_title];
    *v25 = 0;
    *(v25 + 1) = 0;
    v26 = &v22[OBJC_IVAR___TPSSearchResultItem_body];
    *v26 = 0;
    *(v26 + 1) = 0;
    *&v22[OBJC_IVAR___TPSSearchResultItem_relevance] = 0x3FF0000000000000;
    v27 = &v22[OBJC_IVAR___TPSSearchResultItem_documentIdentifier];
    *v27 = v17;
    *(v27 + 1) = v16;
    v28 = &v22[OBJC_IVAR___TPSSearchResultItem_collectionIdentifier];
    *v28 = v20;
    *(v28 + 1) = v19;
    v85.receiver = v22;
    v85.super_class = v21;

    v29 = objc_msgSendSuper2(&v85, sel_init);

    v16 = v29;
LABEL_20:
    v54 = [a1 attributeSet];
    v55 = [v54 displayName];

    if (v55)
    {
      v56 = sub_1C014C230();
      v58 = v57;
    }

    else
    {
      v56 = 0;
      v58 = 0;
    }

    v59 = &v16[OBJC_IVAR___TPSSearchResultItem_title];
    swift_beginAccess();
    *v59 = v56;
    v59[1] = v58;

    v60 = [a1 attributeSet];
    v61 = [v60 contentDescription];

    if (v61)
    {
      v62 = sub_1C014C230();
      v64 = v63;
    }

    else
    {
      v62 = 0;
      v64 = 0;
    }

    v65 = &v16[OBJC_IVAR___TPSSearchResultItem_body];
    swift_beginAccess();
    *v65 = v62;
    v65[1] = v64;

    v66 = &v16[OBJC_IVAR___TPSSearchResultItem_contentType];
    swift_beginAccess();
    *v66 = v4;
    v66[1] = v6;

    goto LABEL_28;
  }

LABEL_28:

  return v16;
}

char *sub_1C0138D7C(char *a1, unint64_t a2, uint64_t a3)
{
  v55 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066D0, &unk_1C0156640);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v56 = &v53 - v6;
  v59[0] = MEMORY[0x1E69E7CC0];
  if (a2 >> 62)
  {
LABEL_61:
    v7 = sub_1C014C750();
  }

  else
  {
    v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    v8 = 0;
    v53 = &a1[OBJC_IVAR___TPSSearchQuery_rankingModifier];
    v54 = *MEMORY[0x1E6964D98];
    do
    {
      v9 = v8;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1C68D7040](v9, a2);
        }

        else
        {
          if (v9 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_60;
          }

          v10 = *(a2 + 8 * v9 + 32);
        }

        v11 = v10;
        v8 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v12 = sub_1C01386A4(v10);
        if (v12)
        {
          break;
        }

        ++v9;
        if (v8 == v7)
        {
          goto LABEL_28;
        }
      }

      v13 = v12;
      v14 = [v11 attributeSet];
      if ([v14 attributeForKey_])
      {
        sub_1C014C6E0();
        swift_unknownObjectRelease();
      }

      else
      {
        v60 = 0u;
        v61 = 0u;
      }

      v62[0] = v60;
      v62[1] = v61;
      if (*(&v61 + 1))
      {
        if (swift_dynamicCast())
        {
          v15 = v58;

          v16 = *v53;
          if (*v53)
          {
            v17 = *(v53 + 1);

            v19 = v16(v18, v15);

            sub_1C0113884(v16, v17);
            v20 = OBJC_IVAR___TPSSearchResultItem_relevance;
            v21 = swift_beginAccess();
            *&v13[v20] = v19;
          }

          else
          {
          }

          goto LABEL_23;
        }
      }

      else
      {
        sub_1C00F98F4(v62, &qword_1EBE06490, &qword_1C0155FA0);
      }

LABEL_23:
      MEMORY[0x1C68D6BB0](v21);
      if (*((v59[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C014C3E0();
      }

      sub_1C014C400();
    }

    while (v8 != v7);
  }

LABEL_28:

  *&v62[0] = sub_1C0138490(v22);
  v23 = 0;
  sub_1C0137488(v62);

  v24 = *&v62[0];
  v25 = OBJC_IVAR___TPSSearchQuery_maxCount;
  swift_beginAccess();
  v26 = *&a1[v25];
  if (v26 < 0)
  {
    __break(1u);
  }

  else
  {
    LODWORD(v25) = v24 < 0 || (v24 & 0x4000000000000000) != 0;
    if ((v25 & 1) == 0)
    {
      v27 = *(v24 + 16);
      if (v27 >= v26)
      {
        v28 = v26;
      }

      else
      {
        v28 = *(v24 + 16);
      }

      if (v26)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      if (v27 >= v29)
      {
        goto LABEL_40;
      }

      goto LABEL_73;
    }
  }

  v23 = sub_1C014C750();
  if ((sub_1C014C750() & 0x8000000000000000) == 0)
  {
    if (v23 >= v26)
    {
      v52 = v26;
    }

    else
    {
      v52 = v23;
    }

    if (v23 < 0)
    {
      v52 = v26;
    }

    if (v26)
    {
      v29 = v52;
    }

    else
    {
      v29 = 0;
    }

    if (sub_1C014C750() >= v29)
    {
LABEL_40:
      if ((v24 & 0xC000000000000001) != 0 && v29)
      {
        type metadata accessor for SearchResult.Item();

        v30 = 0;
        do
        {
          v31 = v30 + 1;
          sub_1C014C820();
          v30 = v31;
        }

        while (v29 != v31);
      }

      else
      {
      }

      if (v25)
      {
        v32 = sub_1C014C8E0();
        v7 = v33;
        v23 = v34;
        v29 = v35;

        v24 = v32;
        if (v29)
        {
LABEL_51:
          sub_1C014CA00();
          swift_unknownObjectRetain_n();
          v38 = swift_dynamicCastClass();
          if (!v38)
          {
            swift_unknownObjectRelease();
            v38 = MEMORY[0x1E69E7CC0];
          }

          v39 = *(v38 + 16);

          if (!__OFSUB__(v29 >> 1, v23))
          {
            if (v39 == (v29 >> 1) - v23)
            {
              v37 = swift_dynamicCastClass();
              swift_unknownObjectRelease_n();
              if (v37)
              {
LABEL_58:
                v40 = sub_1C014BE60();
                v41 = *(*(v40 - 8) + 56);
                v42 = v56;
                v41(v56, 1, 1, v40);
                v43 = type metadata accessor for SearchResult(0);
                v44 = objc_allocWithZone(v43);
                v45 = OBJC_IVAR___TPSSearchResult_deviceExpertResponse;
                v41(&v44[OBJC_IVAR___TPSSearchResult_deviceExpertResponse], 1, 1, v40);
                v46 = OBJC_IVAR___TPSSearchResult_items;
                v47 = MEMORY[0x1E69E7CC0];
                *&v44[OBJC_IVAR___TPSSearchResult_items] = MEMORY[0x1E69E7CC0];
                v48 = OBJC_IVAR___TPSSearchResult_suggestions;
                *&v44[OBJC_IVAR___TPSSearchResult_suggestions] = v47;
                *&v44[OBJC_IVAR___TPSSearchResult_query] = a1;
                swift_beginAccess();
                *&v44[v46] = v37;
                swift_beginAccess();
                *&v44[v48] = v55;
                swift_beginAccess();
                v49 = a1;

                sub_1C0107C90(v42, &v44[v45]);
                swift_endAccess();
                v57.receiver = v44;
                v57.super_class = v43;
                v50 = objc_msgSendSuper2(&v57, sel_init);
                sub_1C00F98F4(v42, &qword_1EBE066D0, &unk_1C0156640);
                return v50;
              }

              v37 = MEMORY[0x1E69E7CC0];
LABEL_57:
              swift_unknownObjectRelease();
              goto LABEL_58;
            }

            goto LABEL_75;
          }

LABEL_74:
          __break(1u);
LABEL_75:
          swift_unknownObjectRelease_n();
        }
      }

      else
      {
        v23 = 0;
        v7 = v24 + 32;
        v29 = (2 * v29) | 1;
        if (v29)
        {
          goto LABEL_51;
        }
      }

      sub_1C013C344(v24, v7, v23, v29);
      v37 = v36;
      goto LABEL_57;
    }

LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_1C013941C()
{
  result = qword_1EBE06AA0;
  if (!qword_1EBE06AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE067B0, &qword_1C0156890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06AA0);
  }

  return result;
}

unint64_t sub_1C0139480()
{
  result = qword_1EBE067D0;
  if (!qword_1EBE067D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBE067D0);
  }

  return result;
}

uint64_t CSSearchableItemAttributeSet.relevanceScore.getter()
{
  if ([v0 attributeForKey_])
  {
    sub_1C014C6E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_1C00FC158(v5);
  }

  return 0;
}

uint64_t CSSearchableItemAttributeSet.collectionIdentifier.getter()
{
  v1 = sub_1C014C200();
  v2 = [v0 attributeForKey_];

  if (v2)
  {
    sub_1C014C6E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1C00FC158(v7);
    return 0;
  }
}

uint64_t CSSearchableItemAttributeSet.correlationIdentifier.getter()
{
  v1 = sub_1C014C200();
  v2 = [v0 attributeForKey_];

  if (v2)
  {
    sub_1C014C6E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1C00FC158(v7);
    return 0;
  }
}

void CSSearchableItemAttributeSet.correlationIdentifier.setter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1C014C200();

    v4 = objc_allocWithZone(MEMORY[0x1E6964E00]);
    v5 = v3;
    v6 = sub_1C014C200();
    v7 = [v4 initWithKeyName:v6 searchable:0 searchableByDefault:0 unique:0 multiValued:0];

    if (v7)
    {
      [v2 setValue:v5 forCustomKey:v7];
    }

    else
    {
      sub_1C014C8C0();
      __break(1u);
    }
  }
}

void (*CSSearchableItemAttributeSet.correlationIdentifier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CSSearchableItemAttributeSet.correlationIdentifier.getter();
  a1[1] = v3;
  return sub_1C0139904;
}

void sub_1C0139904(uint64_t *a1, char a2)
{
  v3 = a1[1];
  if (a2)
  {
    if (!v3)
    {
LABEL_5:

      return;
    }

    v4 = sub_1C014C200();

    v5 = objc_allocWithZone(MEMORY[0x1E6964E00]);
    v6 = v4;
    v7 = sub_1C014C200();
    v8 = [v5 initWithKeyName:v7 searchable:0 searchableByDefault:0 unique:0 multiValued:0];

    if (v8)
    {
      [a1[2] setValue:v6 forCustomKey:v8];

      goto LABEL_5;
    }

LABEL_14:
    sub_1C014C8C0();
    __break(1u);
    return;
  }

  if (!v3)
  {
    return;
  }

  v9 = sub_1C014C200();

  v10 = objc_allocWithZone(MEMORY[0x1E6964E00]);
  v13 = v9;
  v11 = sub_1C014C200();
  v12 = [v10 initWithKeyName:v11 searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  if (!v12)
  {
    goto LABEL_14;
  }

  [a1[2] setValue:v13 forCustomKey:v12];
}

void sub_1C0139B80(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a1[1])
  {
    v6 = *a2;
    v7 = sub_1C014C200();
    v8 = a5();
    [v6 setValue:v7 forCustomKey:v8];
  }
}

void CSSearchableItemAttributeSet.collectionIdentifier.setter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1C014C200();

    v4 = objc_allocWithZone(MEMORY[0x1E6964E00]);
    v5 = v3;
    v6 = sub_1C014C200();
    v7 = [v4 initWithKeyName:v6 searchable:1 searchableByDefault:0 unique:0 multiValued:0];

    if (v7)
    {
      [v2 setValue:v5 forCustomKey:v7];
    }

    else
    {
      sub_1C014C8C0();
      __break(1u);
    }
  }
}

void (*CSSearchableItemAttributeSet.collectionIdentifier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CSSearchableItemAttributeSet.collectionIdentifier.getter();
  a1[1] = v3;
  return sub_1C0139DB8;
}

void sub_1C0139DB8(uint64_t *a1, char a2)
{
  v3 = a1[1];
  if (a2)
  {
    if (!v3)
    {
LABEL_5:

      return;
    }

    v4 = sub_1C014C200();

    v5 = objc_allocWithZone(MEMORY[0x1E6964E00]);
    v6 = v4;
    v7 = sub_1C014C200();
    v8 = [v5 initWithKeyName:v7 searchable:1 searchableByDefault:0 unique:0 multiValued:0];

    if (v8)
    {
      [a1[2] setValue:v6 forCustomKey:v8];

      goto LABEL_5;
    }

LABEL_14:
    sub_1C014C8C0();
    __break(1u);
    return;
  }

  if (!v3)
  {
    return;
  }

  v9 = sub_1C014C200();

  v10 = objc_allocWithZone(MEMORY[0x1E6964E00]);
  v13 = v9;
  v11 = sub_1C014C200();
  v12 = [v10 initWithKeyName:v11 searchable:1 searchableByDefault:0 unique:0 multiValued:0];

  if (!v12)
  {
    goto LABEL_14;
  }

  [a1[2] setValue:v13 forCustomKey:v12];
}

id _sSo20CSCustomAttributeKeyC8TipsCoreE022correlationIDAttributeC0ABvgZ_0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6964E00]);
  v1 = sub_1C014C200();
  v2 = [v0 initWithKeyName:v1 searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  if (v2)
  {
    return v2;
  }

  result = sub_1C014C8C0();
  __break(1u);
  return result;
}

id _sSo20CSCustomAttributeKeyC8TipsCoreE021collectionIDAttributeC0ABvgZ_0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6964E00]);
  v1 = sub_1C014C200();
  v2 = [v0 initWithKeyName:v1 searchable:1 searchableByDefault:0 unique:0 multiValued:0];

  if (v2)
  {
    return v2;
  }

  result = sub_1C014C8C0();
  __break(1u);
  return result;
}

uint64_t sub_1C013A22C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_1C014C3C0();

  v2(v3);
}

id sub_1C013A29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = MEMORY[0x1E69E7CD0];
  v11 = MEMORY[0x1E69E7CD0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    if (sub_1C014C750())
    {
      sub_1C013DDFC(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v11 = MEMORY[0x1E69E7CD0];
    }
  }

  *&v4[OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_searchResults] = v11;
  *&v4[OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_completions] = v10;
  *&v4[OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_query] = 0;
  v12 = OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_startDate;
  v13 = sub_1C014BD40();
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  *&v4[OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_searchQuery] = a1;
  *&v4[OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_queue] = a2;
  v14 = &v4[OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_completion];
  *v14 = a3;
  *(v14 + 1) = a4;
  v16.receiver = v4;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t sub_1C013A3E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - v2;
  v4 = sub_1C014BD40();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  v11 = OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_startDate;
  swift_beginAccess();
  sub_1C010225C(v0 + v11, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C012348C(v3);
    return 0x6E776F6E6B6E75;
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE06900, &qword_1C0157710);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C0156330;
    sub_1C014BD30();
    sub_1C014BCD0();
    v15 = v14;
    v16 = *(v5 + 8);
    v16(v8, v4);
    v17 = MEMORY[0x1E69E6438];
    *(v13 + 56) = MEMORY[0x1E69E63B0];
    *(v13 + 64) = v17;
    *(v13 + 32) = v15;
    v18 = sub_1C014C250();
    v16(v10, v4);
    return v18;
  }
}

void sub_1C013A64C()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &aBlock - v4;
  v6 = sub_1C014C130();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&aBlock._countAndFlagsBits - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_queue);
  *v9 = v10;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v11 = v10;
  LOBYTE(v10) = sub_1C014C150();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v1 = 0xD000000000000015;
  v12 = OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_query;
  if (*(v2 + OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_query))
  {
    if (qword_1EBE06360 == -1)
    {
LABEL_4:
      v13 = qword_1EBE06738;
      aBlock._countAndFlagsBits = 0;
      aBlock._object = 0xE000000000000000;
      sub_1C014C800();

      v54._countAndFlagsBits = v1 + 2;
      v54._object = 0x80000001C015D5C0;
      v14 = (*(v2 + OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_searchQuery) + OBJC_IVAR___TPSSearchQuery_identifier);
      swift_beginAccess();
      v16 = *v14;
      v15 = v14[1];

      MEMORY[0x1C68D6B10](v16, v15);

      v17 = v54;
      v54._countAndFlagsBits = v13;
      TipsLog.error(_:)(v17);

      return;
    }

LABEL_12:
    swift_once();
    goto LABEL_4;
  }

  v18 = OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_searchQuery;
  v19 = *(v2 + OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_searchQuery);
  v20 = sub_1C01125D0(MEMORY[0x1E69E7CC0]);

  v21 = *(v2 + v12);
  *(v2 + v12) = v20;
  v22 = v20;

  if (qword_1EBE06360 != -1)
  {
    swift_once();
  }

  aBlock._countAndFlagsBits = qword_1EBE06738;
  v23._countAndFlagsBits = 0xD000000000000022;
  v23._object = 0x80000001C015D570;
  TipsLog.info(_:)(v23);
  v24 = qword_1EBE06738;
  v25 = 0xE000000000000000;
  aBlock._countAndFlagsBits = 0;
  aBlock._object = 0xE000000000000000;
  sub_1C014C800();
  MEMORY[0x1C68D6B10](0xD000000000000015, 0x80000001C015BB30);
  v26 = [v22 queryString];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1C014C230();
    v25 = v29;
  }

  else
  {
    v28 = 0;
  }

  MEMORY[0x1C68D6B10](v28, v25);

  MEMORY[0x1C68D6B10](0xD00000000000001ALL, 0x80000001C015D5A0);
  v30 = *(v2 + v18);
  v31 = OBJC_IVAR___TPSSearchQuery_maxCount;
  swift_beginAccess();
  v53 = *(v30 + v31);
  v32 = sub_1C014C9C0();
  MEMORY[0x1C68D6B10](v32);

  v33 = aBlock;
  aBlock._countAndFlagsBits = v24;
  TipsLog.debug(_:)(v33);

  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v35;
  v51 = sub_1C013BAC0;
  v52 = v36;
  aBlock._countAndFlagsBits = MEMORY[0x1E69E9820];
  aBlock._object = 1107296256;
  v49 = sub_1C013A22C;
  v50 = &block_descriptor_8;
  v37 = _Block_copy(&aBlock);

  [v22 setCompletionsHandler_];
  _Block_release(v37);
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  *(v40 + 16) = v38;
  *(v40 + 24) = v39;
  v51 = sub_1C013BAE0;
  v52 = v40;
  aBlock._countAndFlagsBits = MEMORY[0x1E69E9820];
  aBlock._object = 1107296256;
  v49 = sub_1C013B170;
  v50 = &block_descriptor_16;
  v41 = _Block_copy(&aBlock);

  [v22 setFoundItemsHandler_];
  _Block_release(v41);
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v44 = swift_allocObject();
  *(v44 + 16) = v42;
  *(v44 + 24) = v43;
  v51 = sub_1C013BB28;
  v52 = v44;
  aBlock._countAndFlagsBits = MEMORY[0x1E69E9820];
  aBlock._object = 1107296256;
  v49 = sub_1C010DBF8;
  v50 = &block_descriptor_24;
  v45 = _Block_copy(&aBlock);

  [v22 setCompletionHandler_];
  _Block_release(v45);
  sub_1C014BD30();
  v46 = sub_1C014BD40();
  (*(*(v46 - 8) + 56))(v5, 0, 1, v46);
  v47 = OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_startDate;
  swift_beginAccess();
  sub_1C013BB30(v5, v2 + v47);
  swift_endAccess();
  [v22 start];
}