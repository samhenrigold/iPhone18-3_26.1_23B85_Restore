unsigned __int8 *sub_10001F0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_10002E97C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10001F62C(result, v5);
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
      result = sub_10002EBFC();
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

uint64_t sub_10001F62C(uint64_t a1, unint64_t a2)
{
  v2 = sub_10002E98C();
  v6 = sub_10001F6AC(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_10001F6AC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_10002EB8C();
    if (!v9 || (v10 = v9, v11 = sub_100019C90(v9, 0), v12 = sub_10001F804(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_10002E8EC();

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
      return sub_10002E8EC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_10002EBFC();
LABEL_4:

  return sub_10002E8EC();
}

unint64_t sub_10001F804(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_10001FA24(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_10002E94C();
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
          result = sub_10002EBFC();
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

    result = sub_10001FA24(v12, a6, a7);
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

    result = sub_10002E92C();
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

unint64_t sub_10001FA24(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_10002E95C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_10002E93C();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_10001FAA0(uint64_t a1, uint64_t a2)
{
  sub_10002EDCC();
  sub_10002E8FC();
  v4 = sub_10002EDEC();

  return sub_10001FB88(a1, a2, v4);
}

uint64_t sub_10001FB18(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C0EC(&qword_100043260, &qword_100034B60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001FB88(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10002ED5C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

BOOL sub_10001FC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_10002EBBC();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

_OWORD *sub_10001FD38(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_BYTE *sub_10001FD48@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_10001FDC8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10001FDE0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t *sub_10001FE28(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_10001FE8C(void *result)
{
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

uint64_t sub_10001FEDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001FF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v38 = a3;
  v4 = sub_10000C0EC(&qword_1000432C8, &qword_100034C18);
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v34 = &v28 - v5;
  v33 = sub_10002E74C();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10002DEBC();
  v32 = *(v29 - 8);
  __chkstk_darwin(v29);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002E71C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002EA6C();
  sub_10001FDE0(0, &qword_100042EB0, OS_os_log_ptr);
  v15 = sub_10002EB4C();
  v16 = *(v11 + 16);
  v35 = a1;
  v16(v13, a1, v10);
  v30 = v14;
  if (os_log_type_enabled(v15, v14))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v4;
    v19 = v18;
    v39 = v18;
    *v17 = 136446210;
    sub_10002E70C();
    sub_10002E73C();
    (*(v31 + 8))(v7, v33);
    sub_10002A20C(&qword_1000432D8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v20 = v29;
    v21 = sub_10002ED4C();
    v23 = v22;
    (*(v32 + 8))(v9, v20);
    (*(v11 + 8))(v13, v10);
    v24 = sub_100019850(v21, v23, &v39);

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v15, v30, "BlastDoor processing thumbnail for video: %{public}s)", v17, 0xCu);
    sub_1000121A8(v19);
    v4 = v28;
  }

  else
  {

    v25 = (*(v11 + 8))(v13, v10);
  }

  __chkstk_darwin(v25);
  v26 = v37;
  *(&v28 - 2) = v35;
  *(&v28 - 1) = v26;
  sub_10000C0EC(&qword_1000432D0, &qword_100034C20);
  (*(v36 + 104))(v34, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v4);
  return sub_10002E9FC();
}

uint64_t sub_100020440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v29 = a3;
  v30 = a1;
  v31 = sub_10000C0EC(&qword_1000432E0, &qword_100034C28);
  v3 = *(v31 - 8);
  v27 = *(v3 + 64);
  __chkstk_darwin(v31);
  v26 = &v22 - v4;
  v5 = sub_10002E2FC();
  v24 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v25 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002E71C();
  v23 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C0EC(&qword_1000432E8, &qword_100034C30);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  v15 = sub_10002E9CC();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, v28, v8);
  (*(v6 + 16))(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v5);
  v16 = v26;
  (*(v3 + 16))(v26, v30, v31);
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = (v10 + *(v6 + 80) + v17) & ~*(v6 + 80);
  v19 = (v7 + *(v3 + 80) + v18) & ~*(v3 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  (*(v9 + 32))(v20 + v17, v11, v23);
  (*(v6 + 32))(v20 + v18, v25, v24);
  (*(v3 + 32))(v20 + v19, v16, v31);
  sub_100028C98(0, 0, v14, &unk_100034C40, v20);
}

uint64_t sub_1000207CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_10000C0EC(&qword_1000432E0, &qword_100034C28);
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v6[8] = *(v8 + 64);
  v6[9] = swift_task_alloc();
  v9 = sub_10002E2FC();
  v6[10] = v9;
  v10 = *(v9 - 8);
  v6[11] = v10;
  v6[12] = *(v10 + 64);
  v6[13] = swift_task_alloc();
  v11 = sub_10002E74C();
  v6[14] = v11;
  v6[15] = *(v11 - 8);
  v6[16] = swift_task_alloc();
  v12 = sub_10002DEBC();
  v6[17] = v12;
  v6[18] = *(v12 - 8);
  v6[19] = swift_task_alloc();
  v13 = sub_10002E71C();
  v6[20] = v13;
  v14 = *(v13 - 8);
  v6[21] = v14;
  v6[22] = *(v14 + 64);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();

  return _swift_task_switch(sub_100020A30, 0, 0);
}

uint64_t sub_100020A30(uint64_t a1)
{
  v51 = v1;
  v2 = v1[24];
  v4 = v1[20];
  v3 = v1[21];
  v5 = v1[3];
  v6 = sub_10002EA6C();
  v1[25] = sub_10001FDE0(0, &qword_100042EB0, OS_os_log_ptr);
  v7 = sub_10002EB4C();
  v49 = *(v3 + 16);
  (v49)(v2, v5, v4);
  v8 = os_log_type_enabled(v7, v6);
  v9 = v1[24];
  v10 = v1[20];
  v11 = v1[21];
  if (v8)
  {
    v13 = v1[18];
    v12 = v1[19];
    v14 = v1[16];
    v43 = v1[17];
    v47 = v6;
    v15 = v1[15];
    v40 = v1[14];
    v16 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v50 = v45;
    *v16 = 136446210;
    v41 = v10;
    sub_10002E70C();
    sub_10002E73C();
    (*(v15 + 8))(v14, v40);
    sub_10002A20C(&qword_1000432D8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v17 = sub_10002ED4C();
    v19 = v18;
    (*(v13 + 8))(v12, v43);
    (*(v11 + 8))(v9, v41);
    v20 = sub_100019850(v17, v19, &v50);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v7, v47, "Task running for video: %{public}s)", v16, 0xCu);
    sub_1000121A8(v45);
  }

  else
  {

    (*(v11 + 8))(v9, v10);
  }

  v21 = v1[21];
  v42 = v1[20];
  v44 = v1[23];
  v22 = v1[13];
  v38 = v1[22];
  v39 = v1[12];
  v24 = v1[10];
  v23 = v1[11];
  v25 = v1[9];
  v46 = v22;
  v48 = v25;
  v26 = v1[6];
  v27 = v1[7];
  v29 = v1[4];
  v28 = v1[5];
  v49();
  v30 = v22;
  v31 = v24;
  (*(v23 + 16))(v30, v29, v24);
  (*(v27 + 16))(v25, v28, v26);
  v32 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v33 = (v38 + *(v23 + 80) + v32) & ~*(v23 + 80);
  v34 = (v39 + *(v27 + 80) + v33) & ~*(v27 + 80);
  v35 = swift_allocObject();
  v1[26] = v35;
  (*(v21 + 32))(v35 + v32, v44, v42);
  (*(v23 + 32))(v35 + v33, v46, v31);
  (*(v27 + 32))(v35 + v34, v48, v26);
  v36 = swift_task_alloc();
  v1[27] = v36;
  *v36 = v1;
  v36[1] = sub_100020E3C;

  return File.withResource<A>(_:)();
}

uint64_t sub_100020E3C()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_100021000;
  }

  else
  {

    v2 = sub_100020F58;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100020F58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100021000()
{

  v1 = sub_10002EA7C();
  v2 = sub_10002EB4C();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v2, v1, "Caught error: %@", v3, 0xCu);
    sub_10000E76C(v4, &qword_1000432F0, &qword_100034C70);
  }

  v6 = v0[28];

  v0[2] = v6;
  sub_10002E9EC();

  v7 = v0[1];

  return v7();
}

uint64_t sub_10002118C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[67] = a4;
  v4[66] = a3;
  v4[65] = a2;
  sub_10000C0EC(&qword_1000432D0, &qword_100034C20);
  v4[68] = swift_task_alloc();
  v5 = sub_10000C0EC(&qword_1000432F8, &qword_100034C78);
  v4[69] = v5;
  v4[70] = *(v5 - 8);
  v4[71] = swift_task_alloc();
  v6 = sub_10002E3BC();
  v4[72] = v6;
  v4[73] = *(v6 - 8);
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  v7 = sub_10002E2DC();
  v4[76] = v7;
  v4[77] = *(v7 - 8);
  v4[78] = swift_task_alloc();
  v4[79] = swift_task_alloc();
  v8 = sub_10002E2BC();
  v4[80] = v8;
  v4[81] = *(v8 - 8);
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();
  sub_10000C0EC(&qword_100043300, &qword_100034C80);
  v4[84] = swift_task_alloc();
  v9 = sub_10002E78C();
  v4[85] = v9;
  v4[86] = *(v9 - 8);
  v4[87] = swift_task_alloc();
  v4[88] = swift_task_alloc();
  v10 = sub_10002EA4C();
  v4[89] = v10;
  v4[90] = *(v10 - 8);
  v4[91] = swift_task_alloc();
  v4[92] = swift_task_alloc();
  v11 = sub_10002E37C();
  v4[93] = v11;
  v4[94] = *(v11 - 8);
  v4[95] = swift_task_alloc();
  v4[96] = swift_task_alloc();
  v4[97] = swift_task_alloc();
  v12 = sub_10002E39C();
  v4[98] = v12;
  v4[99] = *(v12 - 8);
  v4[100] = swift_task_alloc();
  v13 = sub_10002E30C();
  v4[101] = v13;
  v4[102] = *(v13 - 8);
  v4[103] = swift_task_alloc();
  v4[104] = swift_task_alloc();
  v4[105] = swift_task_alloc();
  v4[106] = swift_task_alloc();
  v4[107] = swift_task_alloc();
  v14 = sub_10002DEBC();
  v4[108] = v14;
  v4[109] = *(v14 - 8);
  v4[110] = swift_task_alloc();
  v15 = sub_10002E74C();
  v4[111] = v15;
  v4[112] = *(v15 - 8);
  v4[113] = swift_task_alloc();

  return _swift_task_switch(sub_100021718, 0, 0);
}

uint64_t sub_100021718(uint64_t a1)
{
  v2 = v1[113];
  v3 = v1[112];
  v4 = v1[111];
  v5 = v1[110];
  v6 = v1[109];
  v7 = v1[108];
  sub_10002E70C();
  sub_10002E73C();
  (*(v3 + 8))(v2, v4);
  v1[114] = sub_10000C0EC(&qword_100043308, &qword_100034C88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100033FF0;
  *(inited + 32) = sub_10002E87C();
  *(inited + 40) = v9;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  sub_10002A0C4(inited);
  swift_setDeallocating();
  sub_10000E76C(inited + 32, &qword_100043310, &qword_100034C90);
  v10 = objc_allocWithZone(AVURLAsset);
  sub_10002DE9C(v11);
  v13 = v12;
  isa = sub_10002E82C().super.isa;

  v15 = [v10 initWithURL:v13 options:isa];
  v1[115] = v15;

  (*(v6 + 8))(v5, v7);
  v1[2] = v1;
  v1[7] = v1 + 60;
  v1[3] = sub_1000219F4;
  v16 = swift_continuation_init();
  v1[27] = sub_10000C0EC(&qword_100043318, &qword_100034C98);
  v1[20] = _NSConcreteStackBlock;
  v1[21] = 1107296256;
  v1[22] = sub_100028BA8;
  v1[23] = &unk_10003E740;
  v1[24] = v16;
  [v15 loadTracksWithMediaType:AVMediaTypeVideo completionHandler:v1 + 20];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_1000219F4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 928) = v2;
  if (v2)
  {
    v3 = *(v1 + 920);

    v4 = sub_100026E40;
  }

  else
  {
    v4 = sub_100021B3C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100021B3C()
{
  v1 = *(v0 + 480);
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 936) = v2;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_22:
    v40 = *(v0 + 920);

    sub_10002E7DC();
    sub_10002A20C(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    swift_willThrow();

    goto LABEL_23;
  }

  v39 = sub_10002EC0C();
  v2 = sub_10002EC0C();
  *(v0 + 936) = v39;
  if (!v2)
  {
    goto LABEL_22;
  }

LABEL_3:
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_27;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_27:
    v5 = sub_10002EBDC();
    goto LABEL_8;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_29:
    __break(1u);
  }

  if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

  v5 = *(v1 + 8 * v4 + 32);
LABEL_8:
  v6 = v5;
  *(v0 + 944) = v5;
  v7 = *(v0 + 856);
  v8 = *(v0 + 816);
  v9 = *(v0 + 808);

  v10 = v6;
  sub_10002E2EC();
  v11 = *(v8 + 88);
  *(v0 + 952) = v11;
  *(v0 + 960) = (v8 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v12 = v11(v7, v9);
  *(v0 + 1540) = v12;
  v13 = enum case for VideoPreview.FrameConstraints.singleFrame(_:);
  *(v0 + 1544) = enum case for VideoPreview.FrameConstraints.singleFrame(_:);
  if (v12 == v13)
  {
    v14 = *(v0 + 856);
    v15 = *(v0 + 808);
    v16 = *(v0 + 800);
    v17 = *(v0 + 792);
    v18 = *(v0 + 784);
    v19 = *(*(v0 + 816) + 96);
    *(v0 + 968) = v19;
    v19(v14, v15);
    (*(v17 + 32))(v16, v14, v18);
    sub_10000C0EC(&qword_100043350, &qword_100034CC0);
    v20 = sub_10002DF2C();
    *(v0 + 976) = v20;
    v21 = swift_task_alloc();
    *(v0 + 984) = v21;
    *v21 = v0;
    v21[1] = sub_100022350;

    return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 448, v20, 0, 0);
  }

  if (v12 == enum case for VideoPreview.FrameConstraints.multiFrame(_:))
  {
    v22 = *(v0 + 856);
    v23 = *(v0 + 776);
    v24 = *(v0 + 752);
    v25 = *(v0 + 744);
    v26 = *(*(v0 + 816) + 96);
    v26(v22, *(v0 + 808));
    (*(v24 + 32))(v23, v22, v25);
    if (sub_10002E34C() >= 1 && sub_10002E35C() >= 1)
    {
      v27 = *(v0 + 776);
      v28 = *(v0 + 752);
      v29 = *(v0 + 744);
      v30 = sub_10002E34C();
      v31 = sub_10002E35C();
      v32 = sub_10002E31C();
      (*(v28 + 8))(v27, v29);
      *(v0 + 1064) = v31;
      *(v0 + 1056) = v30;
      *(v0 + 1048) = v32;
      *(v0 + 1040) = v26;
      v33 = swift_task_alloc();
      *(v0 + 1072) = v33;
      *v33 = v0;
      v33[1] = sub_100022A28;
      v34 = *(v0 + 736);

      return AVAssetTrack.info.getter(v34);
    }

    v35 = *(v0 + 920);
    v36 = *(v0 + 776);
    v37 = *(v0 + 752);
    v38 = *(v0 + 744);

    sub_10002E7DC();
    sub_10002A20C(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    swift_willThrow();
  }

  else
  {
    v35 = *(v0 + 920);
    v36 = *(v0 + 856);
    v37 = *(v0 + 816);
    v38 = *(v0 + 808);

    sub_10002E7DC();
    sub_10002A20C(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    swift_willThrow();
  }

  (*(v37 + 8))(v36, v38);
LABEL_23:

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_100022350()
{
  v2 = *v1;
  *(*v1 + 992) = v0;

  if (v0)
  {
    v3 = *(v2 + 920);

    v4 = sub_100027038;
  }

  else
  {

    v4 = sub_1000224D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000224D0()
{
  *(v0 + 1000) = *(v0 + 448);
  sub_10000C0EC(&qword_100043358, &qword_100034CC8);
  v1 = sub_10002DF4C();
  *(v0 + 1016) = v1;
  v2 = swift_task_alloc();
  *(v0 + 1024) = v2;
  *v2 = v0;
  v2[1] = sub_1000225DC;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 224, v1, 0, 0);
}

uint64_t sub_1000225DC()
{
  v2 = *v1;
  *(*v1 + 1032) = v0;

  if (v0)
  {
    v3 = *(v2 + 920);

    v4 = sub_100027258;
  }

  else
  {

    v4 = sub_10002275C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10002275C()
{
  v29 = v0;
  v1 = *(v0 + 1008);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 240);
  v4 = *(v0 + 256);
  *(v0 + 272) = *(v0 + 224);
  *(v0 + 288) = v3;
  *(v0 + 304) = v4;
  v5 = 0;
  *&v3 = 0;
  v31 = CGRectApplyAffineTransform(*(&v1 - 3), (v0 + 272));
  width = v31.size.width;
  height = v31.size.height;
  v8 = sub_10002E38C();
  v9 = fmin(width / height, 1.77777778);
  if (width / height < 0.75)
  {
    v10 = 0.75;
  }

  else
  {
    v10 = v9;
  }

  v11 = ceil(v8 / v10);
  if (height == 0.0 || width == 0.0)
  {
    v13 = sub_10002EA6C();
    sub_10001FDE0(0, &qword_100042EB0, OS_os_log_ptr);
    v14 = sub_10002EB4C();
    v15 = os_log_type_enabled(v14, v13);
    v16 = *(v0 + 800);
    v17 = *(v0 + 792);
    v18 = *(v0 + 784);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315138;
      *(v0 + 464) = v8;
      *(v0 + 472) = v11;
      type metadata accessor for CGSize(0);
      v21 = sub_10002E8BC();
      v23 = sub_100019850(v21, v22, &v28);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v14, v13, "video size is zero, falling back to maxPtSize: %s", v19, 0xCu);
      sub_1000121A8(v20);
    }

    (*(v17 + 8))(v16, v18);
  }

  else
  {
    v12 = v8 / width;
    if (v8 / width <= v11 / height)
    {
      v12 = v11 / height;
    }

    v8 = ceil(width * v12);
    v11 = ceil(height * v12);
    (*(*(v0 + 792) + 8))(*(v0 + 800), *(v0 + 784));
  }

  v24 = *(v0 + 968);
  *(v0 + 1064) = v11;
  *(v0 + 1056) = v8;
  *(v0 + 1048) = 0;
  *(v0 + 1040) = v24;
  v25 = swift_task_alloc();
  *(v0 + 1072) = v25;
  *v25 = v0;
  v25[1] = sub_100022A28;
  v26 = *(v0 + 736);

  return AVAssetTrack.info.getter(v26);
}

uint64_t sub_100022A28()
{
  v2 = *v1;
  *(*v1 + 1080) = v0;

  if (v0)
  {
    v3 = *(v2 + 920);

    v4 = sub_100027478;
  }

  else
  {
    v4 = sub_100022B84;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100022B84(uint64_t a1)
{
  v2 = sub_10002EA6C();
  v1[136] = sub_10001FDE0(0, &qword_100042EB0, OS_os_log_ptr);
  v3 = sub_10002EB2C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = v1[133];
    v5 = v1[132];
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v3, v2, "thumbnailFitPxSize: %f x %f", v6, 0x16u);
  }

  v7 = swift_task_alloc();
  v1[137] = v7;
  *v7 = v1;
  v7[1] = sub_100022CFC;

  return AVAsset.isAutoLoop.getter();
}

uint64_t sub_100022CFC(char a1)
{
  v3 = *v2;
  *(v3 + 1564) = a1;
  *(v3 + 1104) = v1;

  if (v1)
  {
    v4 = *(v3 + 920);

    v5 = sub_100027670;
  }

  else
  {
    v5 = sub_100022E54;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100022E54()
{
  v1 = *(v0 + 920);

  v2 = objc_allocWithZone(AVAssetReader);
  *(v0 + 488) = 0;
  v3 = [v2 initWithAsset:v1 error:v0 + 488];
  *(v0 + 1112) = v3;
  v4 = *(v0 + 488);
  v5 = *(v0 + 920);
  if (!v3)
  {
    v36 = *(v0 + 944);
    v37 = *(v0 + 736);
    v38 = *(v0 + 720);
    v39 = *(v0 + 712);
    v40 = v4;
    sub_10002DE8C();

    swift_willThrow();
    (*(v38 + 8))(v37, v39);

    goto LABEL_32;
  }

  v6 = *(v0 + 1056);
  v7 = v4;

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100034B50;
  *(v8 + 32) = sub_10002E87C();
  *(v8 + 40) = v9;
  *(v8 + 72) = sub_10000C0EC(&qword_100043320, &qword_100034CA0);
  *(v8 + 48) = &off_10003DE08;
  *(v8 + 80) = sub_10002E87C();
  *(v8 + 88) = v10;
  if ((v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v11 = *(v0 + 1056);
  if (v11 <= -9.22337204e18)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v12 = *(v0 + 1064);
  *(v8 + 120) = &type metadata for Int;
  *(v8 + 96) = v11;
  *(v8 + 128) = sub_10002E87C();
  *(v8 + 136) = v13;
  if ((v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v14 = *(v0 + 1064);
  if (v14 <= -9.22337204e18)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
  }

  if (v14 >= 9.22337204e18)
  {
    goto LABEL_66;
  }

  v15 = *(v0 + 952);
  v16 = *(v0 + 848);
  v17 = *(v0 + 808);
  *(v8 + 168) = &type metadata for Int;
  *(v8 + 144) = v14;
  v18 = sub_10002A0C4(v8);
  swift_setDeallocating();
  sub_10000C0EC(&qword_100043310, &qword_100034C90);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_10002E2EC();
  v19 = v15(v16, v17);
  v20 = enum case for VideoPreview.FrameConstraints.multiFrame(_:);
  *(v0 + 1548) = enum case for VideoPreview.FrameConstraints.multiFrame(_:);
  if (v19 == v20)
  {
    v21 = *(v0 + 848);
    v22 = *(v0 + 768);
    v23 = v0 + 752;
    v24 = *(v0 + 752);
    v25 = (v0 + 744);
    v26 = *(v0 + 744);
    (*(v0 + 1040))(v21, *(v0 + 808));
    (*(v24 + 32))(v22, v21, v26);
    if (sub_10002E32C() >= 1)
    {
      v27 = sub_10002E87C();
      v29 = v28;
      v30 = sub_10002E32C();
      *(v0 + 408) = &type metadata for Int;
      *(v0 + 384) = v30;
      sub_10001FD38((v0 + 384), (v0 + 416));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100029D64((v0 + 416), v27, v29, isUniquelyReferenced_nonNull_native);
    }

    v32 = (v0 + 768);
    *(v0 + 1120) = v18;
    if (sub_10002E31C() >= 1 && (sub_10002E33C() & 1) != 0)
    {
      sub_10000C0EC(&qword_100043340, &qword_100034CB8);
      v33 = sub_10002DF6C();
      *(v0 + 1128) = v33;
      v34 = swift_task_alloc();
      *(v0 + 1136) = v34;
      *v34 = v0;
      v34[1] = sub_100024368;
      v35 = v0 + 1464;
LABEL_23:

      return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v35, v33, 0, 0);
    }
  }

  else
  {
    v32 = (v0 + 848);
    v25 = (v0 + 808);
    v23 = v0 + 816;
  }

  (*(*v23 + 8))(*v32, *v25);
  *(v0 + 1152) = v18;
  v174 = *(v0 + 1548);
  v41 = *(v0 + 952);
  v42 = *(v0 + 944);
  v43 = *(v0 + 840);
  v44 = *(v0 + 808);
  v45 = objc_allocWithZone(AVAssetReaderTrackOutput);
  v46 = v42;
  isa = sub_10002E82C().super.isa;
  v48 = [v45 initWithTrack:v46 outputSettings:isa];
  *(v0 + 1160) = v48;

  sub_10002E2EC();
  if (v41(v43, v44) == v174)
  {
    v49 = *(v0 + 840);
    v50 = *(v0 + 760);
    v51 = *(v0 + 752);
    v52 = *(v0 + 744);
    (*(v0 + 1040))(v49, *(v0 + 808));
    (*(v51 + 32))(v50, v49, v52);
    [v48 setAppliesPreferredTrackTransform:sub_10002E36C() & 1];
    if (sub_10002E32C() == 1)
    {
      [v48 setLimitsImageQueueCapacityToOneFrame:1];
    }

    (*(*(v0 + 752) + 8))(*(v0 + 760), *(v0 + 744));
  }

  else
  {
    (*(*(v0 + 816) + 8))(*(v0 + 840), *(v0 + 808));
    [v48 setAppliesPreferredTrackTransform:1];
  }

  v53 = *(v0 + 1112);
  v54 = *(v0 + 1544);
  v55 = *(v0 + 952);
  v56 = *(v0 + 832);
  v57 = *(v0 + 816);
  v58 = *(v0 + 808);
  [v48 setAlwaysCopiesSampleData:0];
  [v53 addOutput:v48];
  sub_10002E2EC();
  v59 = v55(v56, v58);
  (*(v57 + 8))(v56, v58);
  if (v59 == v54)
  {
    sub_10000C0EC(&qword_100043330, &qword_100034CA8);
    v33 = sub_10002DF3C();
    *(v0 + 1168) = v33;
    v60 = swift_task_alloc();
    *(v0 + 1176) = v60;
    *v60 = v0;
    v60[1] = sub_100025870;
    v35 = v0 + 1536;
    goto LABEL_23;
  }

  v61 = *(v0 + 1160);
  [*(v0 + 1112) startReading];
  v62 = [v61 copyNextSampleBuffer];
  if (!v62)
  {
    v75 = *(v0 + 1160);
    v76 = *(v0 + 1112);
    v77 = *(v0 + 944);
    v78 = *(v0 + 920);
    v175 = *(v0 + 736);
    v79 = *(v0 + 720);
    v80 = *(v0 + 712);

    sub_10002E7DC();
    sub_10002A20C(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    swift_willThrow();

    (*(v79 + 8))(v175, v80);
    goto LABEL_32;
  }

  v63 = *(v0 + 1048);
  v64 = *(v0 + 1544);
  v65 = *(v0 + 1540);
  v66 = v62;
  v67 = v66;
  if (v65 != v64 && !v63)
  {
LABEL_29:
    v68 = *(v0 + 1160);
    v69 = *(v0 + 1112);
    v70 = *(v0 + 944);
    v71 = *(v0 + 920);
    v72 = *(v0 + 736);
    v73 = *(v0 + 720);
    v74 = *(v0 + 712);

    (*(v73 + 8))(v72, v74);
LABEL_30:

    goto LABEL_32;
  }

  v82 = 0;
  v83 = *(v0 + 688);
  v141 = (v83 + 16);
  v142 = (*(v0 + 720) + 16);
  v84 = *(v0 + 648);
  v85 = *(v0 + 616);
  v86 = *(v0 + 584);
  v139 = (v85 + 16);
  v140 = (v84 + 16);
  v143 = (*(v0 + 816) + 8);
  v133 = (v86 + 16);
  v134 = (*(v0 + 560) + 8);
  v135 = (v86 + 8);
  v136 = (v85 + 8);
  v137 = (v84 + 8);
  v138 = (v83 + 8);
  if (CMSampleBufferGetNumSamples(v66))
  {
    goto LABEL_37;
  }

  do
  {
LABEL_36:
  }

  while (!CMSampleBufferGetNumSamples(v67));
  while (1)
  {
LABEL_37:

    v87 = sub_10002EABC();
    if (!v87)
    {
      v118 = *(v0 + 1160);
      v119 = *(v0 + 1112);
      v120 = *(v0 + 944);
      v121 = *(v0 + 920);
      v122 = *(v0 + 720);
      v172 = *(v0 + 712);
      v178 = *(v0 + 736);

      sub_10002E7DC();
      sub_10002A20C(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      sub_10002E7CC();
      swift_willThrow();

      (*(v122 + 8))(v178, v172);
      goto LABEL_32;
    }

    v88 = v87;
    v89 = sub_10002EA6C();
    v90 = sub_10002EB4C();
    if (os_log_type_enabled(v90, v89))
    {
      v91 = swift_slowAlloc();
      *v91 = 134217984;
      *(v91 + 4) = v82;
      _os_log_impl(&_mh_execute_header, v90, v89, "BlastDoor processing thumbnail %ld", v91, 0xCu);
    }

    v169 = *(v0 + 1544);
    v164 = *(v0 + 952);
    v160 = *(v0 + 824);
    v162 = *(v0 + 808);
    v92 = *(v0 + 736);
    v176 = v82;
    v93 = *(v0 + 728);
    v94 = *(v0 + 712);
    v95 = *(v0 + 704);
    v146 = *(v0 + 696);
    v147 = *(v0 + 680);
    v96 = *(v0 + 672);
    v97 = *(v0 + 664);
    v148 = *(v0 + 656);
    v150 = *(v0 + 640);
    v145 = *(v0 + 632);
    v152 = *(v0 + 624);
    v154 = *(v0 + 608);

    sub_10002EACC();
    sub_10002EB0C();
    type metadata accessor for CVBuffer(0);
    v98 = sub_10002E75C();
    (*(*(v98 - 8) + 56))(v96, 1, 1, v98);
    v99 = v88;
    sub_10002E76C();
    v100 = *v142;
    (*v142)(v93, v92, v94);
    sub_10002E2AC();
    v100(v93, v92, v94);
    sub_10002E2CC();
    (*v141)(v146, v95, v147);
    (*v140)(v148, v97, v150);
    (*v139)(v152, v145, v154);
    sub_10002E3AC();
    sub_10002E2EC();
    v101 = v164(v160, v162);
    v102 = *(v0 + 1160);
    v144 = v99;
    if (v101 == v169)
    {
      break;
    }

    (*v143)(*(v0 + 824), *(v0 + 808));
    v103 = [v102 copyNextSampleBuffer];
    v104 = v176 + 1;
    if (__OFADD__(v176, 1))
    {
      __break(1u);
      goto LABEL_61;
    }

    v105 = v103;
    v177 = v176 + 1;
    if (v103)
    {
      v106 = *(v0 + 1540) != *(v0 + 1544) && v104 == *(v0 + 1048);
      v107 = v106;
    }

    else
    {
      v107 = 1;
    }

    v108 = *(v0 + 568);
    v170 = *(v0 + 552);
    (*v133)(*(v0 + 592), *(v0 + 600), *(v0 + 576));
    sub_10002A20C(&qword_100043328, &type metadata accessor for VideoPreview, &protocol conformance descriptor for VideoPreview);
    sub_10002E55C();
    sub_10000C0EC(&qword_1000432E0, &qword_100034C28);
    sub_10002E9DC();
    (*v134)(v108, v170);
    v109 = *(v0 + 704);
    v167 = *(v0 + 664);
    v171 = *(v0 + 680);
    v165 = *(v0 + 640);
    v110 = *(v0 + 632);
    v111 = *(v0 + 608);
    v112 = *(v0 + 600);
    v113 = *(v0 + 576);
    if (v107)
    {
      *(v0 + 496) = 0;
      sub_10002E9EC();
    }

    (*v135)(v112, v113);
    (*v136)(v110, v111);
    (*v137)(v167, v165);
    (*v138)(v109, v171);
    if (!v105)
    {
      v128 = *(v0 + 1160);
      v129 = *(v0 + 1112);
      v130 = *(v0 + 944);
      v131 = *(v0 + 920);
      (*(*(v0 + 720) + 8))(*(v0 + 736), *(v0 + 712));

      goto LABEL_30;
    }

    v114 = *(v0 + 1048);
    v115 = *(v0 + 1544);
    v116 = *(v0 + 1540);
    v117 = v105;
    v67 = v117;
    v106 = v116 == v115;
    v82 = v177;
    if (!v106 && v177 == v114)
    {
      goto LABEL_29;
    }

    if (!CMSampleBufferGetNumSamples(v117))
    {
      goto LABEL_36;
    }
  }

  v153 = *(v0 + 1112);
  v155 = *(v0 + 944);
  v158 = *(v0 + 920);
  v123 = *(v0 + 824);
  v124 = *(v0 + 808);
  v173 = *(v0 + 712);
  v179 = *(v0 + 736);
  v166 = *(v0 + 704);
  v168 = *(v0 + 720);
  v161 = *(v0 + 664);
  v163 = *(v0 + 680);
  v159 = *(v0 + 640);
  v156 = *(v0 + 608);
  v157 = *(v0 + 632);
  v125 = *(v0 + 600);
  v126 = *(v0 + 592);
  v127 = *(v0 + 576);
  v149 = *(v0 + 568);
  v151 = *(v0 + 552);

  (*v143)(v123, v124);
  (*v133)(v126, v125, v127);
  sub_10002A20C(&qword_100043328, &type metadata accessor for VideoPreview, &protocol conformance descriptor for VideoPreview);
  sub_10002E55C();
  sub_10000C0EC(&qword_1000432E0, &qword_100034C28);
  sub_10002E9DC();
  (*v134)(v149, v151);
  *(v0 + 504) = 0;
  sub_10002E9EC();

  (*v135)(v125, v127);
  (*v136)(v157, v156);
  (*v137)(v161, v159);
  (*v138)(v166, v163);
  (*(v168 + 8))(v179, v173);
LABEL_32:

  v81 = *(v0 + 8);

  return v81();
}

uint64_t sub_100024368()
{
  *(*v1 + 1144) = v0;

  if (v0)
  {

    v2 = sub_100027890;
  }

  else
  {

    v2 = sub_1000244E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000244E4()
{
  v173 = v0;
  v1 = *(v0 + 1480);
  v2 = *(v0 + 1472);
  *(v0 + 1488) = *(v0 + 1464);
  *(v0 + 1496) = v2;
  *(v0 + 1504) = v1;
  Seconds = CMTimeGetSeconds((v0 + 1488));
  v4 = sub_10002E31C();
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
LABEL_51:
    __break(1u);
  }

  v5 = Seconds / ((v4 - 1) + 0.1);
  if (v5 <= 0.0)
  {
    (*(*(v0 + 752) + 8))(*(v0 + 768), *(v0 + 744));
    value = *(v0 + 1120);
  }

  else
  {
    v6 = *(v0 + 752);
    CMTimeMakeWithSeconds(&v170, v5, 1000);
    epoch = v170.epoch;
    v8 = *&v170.timescale;
    *(v0 + 1512) = v170.value;
    *(v0 + 1520) = v8;
    *(v0 + 1528) = epoch;
    v9 = CMTimeCopyAsDictionary((v0 + 1512), kCFAllocatorDefault);
    v10 = (v6 + 8);
    v11 = *(v0 + 1120);
    if (!v9)
    {
      v56 = *(v0 + 1112);
      v57 = *(v0 + 944);
      v58 = *(v0 + 920);
      v150 = *(v0 + 744);
      v154 = *(v0 + 768);
      v59 = *(v0 + 720);
      v157 = *(v0 + 712);
      v164 = *(v0 + 736);

      sub_10002E7DC();
      sub_10002A20C(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      sub_10002E7CC();
      swift_willThrow();

      (*v10)(v154, v150);
      (*(v59 + 8))(v164, v157);
      goto LABEL_22;
    }

    v12 = v9;
    v13 = *(v0 + 768);
    v14 = *(v0 + 744);
    v15 = sub_10002E87C();
    v17 = v16;
    *(v0 + 344) = sub_10001FDE0(0, &qword_100043348, NSDictionary_ptr);
    *(v0 + 320) = v12;
    sub_10001FD38((v0 + 320), (v0 + 352));
    v18 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v170.value = v11;
    sub_100029D64((v0 + 352), v15, v17, isUniquelyReferenced_nonNull_native);

    (*v10)(v13, v14);
    value = v170.value;
  }

  *(v0 + 1152) = value;
  v163 = *(v0 + 1548);
  v21 = *(v0 + 952);
  v22 = *(v0 + 944);
  v23 = *(v0 + 840);
  v24 = *(v0 + 808);
  v25 = objc_allocWithZone(AVAssetReaderTrackOutput);
  v26 = v22;
  isa = sub_10002E82C().super.isa;
  v28 = [v25 initWithTrack:v26 outputSettings:isa];
  *(v0 + 1160) = v28;

  sub_10002E2EC();
  if (v21(v23, v24) == v163)
  {
    v29 = *(v0 + 840);
    v30 = *(v0 + 760);
    v31 = *(v0 + 752);
    v32 = *(v0 + 744);
    (*(v0 + 1040))(v29, *(v0 + 808));
    (*(v31 + 32))(v30, v29, v32);
    [v28 setAppliesPreferredTrackTransform:sub_10002E36C() & 1];
    if (sub_10002E32C() == 1)
    {
      [v28 setLimitsImageQueueCapacityToOneFrame:1];
    }

    (*(*(v0 + 752) + 8))(*(v0 + 760), *(v0 + 744));
  }

  else
  {
    (*(*(v0 + 816) + 8))(*(v0 + 840), *(v0 + 808));
    [v28 setAppliesPreferredTrackTransform:1];
  }

  v33 = *(v0 + 1112);
  v34 = *(v0 + 1544);
  v35 = *(v0 + 952);
  v36 = *(v0 + 832);
  v37 = *(v0 + 816);
  v38 = *(v0 + 808);
  [v28 setAlwaysCopiesSampleData:0];
  [v33 addOutput:v28];
  sub_10002E2EC();
  v39 = v35(v36, v38);
  (*(v37 + 8))(v36, v38);
  if (v39 == v34)
  {
    sub_10000C0EC(&qword_100043330, &qword_100034CA8);
    v40 = sub_10002DF3C();
    *(v0 + 1168) = v40;
    v41 = swift_task_alloc();
    *(v0 + 1176) = v41;
    *v41 = v0;
    v41[1] = sub_100025870;

    return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 1536, v40, 0, 0);
  }

  v42 = *(v0 + 1160);
  [*(v0 + 1112) startReading];
  v43 = [v42 copyNextSampleBuffer];
  if (v43)
  {
    v44 = *(v0 + 1048);
    v45 = *(v0 + 1544);
    v46 = *(v0 + 1540);
    v47 = v43;
    v48 = v47;
    if (v46 == v45 || v44)
    {
      v67 = 0;
      v68 = *(v0 + 688);
      v127 = (v68 + 16);
      v128 = (*(v0 + 720) + 16);
      v69 = *(v0 + 648);
      v70 = *(v0 + 616);
      v71 = *(v0 + 584);
      v125 = (v70 + 16);
      v126 = (v69 + 16);
      v129 = (*(v0 + 816) + 8);
      v119 = (v71 + 16);
      v120 = (*(v0 + 560) + 8);
      v121 = (v71 + 8);
      v122 = (v70 + 8);
      v123 = (v69 + 8);
      v124 = (v68 + 8);
      if (CMSampleBufferGetNumSamples(v47))
      {
        goto LABEL_27;
      }

      do
      {
LABEL_26:
      }

      while (!CMSampleBufferGetNumSamples(v48));
      while (1)
      {
LABEL_27:

        v72 = sub_10002EABC();
        if (!v72)
        {
          v104 = *(v0 + 1160);
          v105 = *(v0 + 1112);
          v106 = *(v0 + 944);
          v107 = *(v0 + 920);
          v108 = *(v0 + 720);
          v161 = *(v0 + 712);
          v168 = *(v0 + 736);

          sub_10002E7DC();
          sub_10002A20C(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
          swift_allocError();
          sub_10002E7CC();
          swift_willThrow();

          (*(v108 + 8))(v168, v161);
          goto LABEL_22;
        }

        v73 = v72;
        v74 = sub_10002EA6C();
        v75 = sub_10002EB4C();
        if (os_log_type_enabled(v75, v74))
        {
          v76 = swift_slowAlloc();
          *v76 = 134217984;
          *(v76 + 4) = v67;
          _os_log_impl(&_mh_execute_header, v75, v74, "BlastDoor processing thumbnail %ld", v76, 0xCu);
        }

        v158 = *(v0 + 1544);
        v151 = *(v0 + 952);
        v146 = *(v0 + 824);
        v148 = *(v0 + 808);
        v77 = *(v0 + 736);
        v166 = v67;
        v78 = *(v0 + 728);
        v79 = *(v0 + 712);
        v80 = *(v0 + 704);
        v132 = *(v0 + 696);
        v133 = *(v0 + 680);
        v81 = *(v0 + 672);
        v82 = *(v0 + 664);
        v134 = *(v0 + 656);
        v136 = *(v0 + 640);
        v131 = *(v0 + 632);
        v138 = *(v0 + 624);
        v140 = *(v0 + 608);

        sub_10002EACC();
        sub_10002EB0C();
        type metadata accessor for CVBuffer(0);
        v171 = v83;
        v172 = &protocol witness table for CVBufferRef;
        v170.value = v73;
        v84 = sub_10002E75C();
        (*(*(v84 - 8) + 56))(v81, 1, 1, v84);
        v85 = v73;
        sub_10002E76C();
        v86 = *v128;
        (*v128)(v78, v77, v79);
        sub_10002E2AC();
        v86(v78, v77, v79);
        sub_10002E2CC();
        (*v127)(v132, v80, v133);
        (*v126)(v134, v82, v136);
        (*v125)(v138, v131, v140);
        sub_10002E3AC();
        sub_10002E2EC();
        v87 = v151(v146, v148);
        v88 = *(v0 + 1160);
        v130 = v85;
        if (v87 == v158)
        {
          v139 = *(v0 + 1112);
          v141 = *(v0 + 944);
          v144 = *(v0 + 920);
          v109 = *(v0 + 824);
          v110 = *(v0 + 808);
          v162 = *(v0 + 712);
          v169 = *(v0 + 736);
          v153 = *(v0 + 704);
          v156 = *(v0 + 720);
          v147 = *(v0 + 664);
          v149 = *(v0 + 680);
          v145 = *(v0 + 640);
          v142 = *(v0 + 608);
          v143 = *(v0 + 632);
          v111 = *(v0 + 600);
          v112 = *(v0 + 592);
          v113 = *(v0 + 576);
          v135 = *(v0 + 568);
          v137 = *(v0 + 552);

          (*v129)(v109, v110);
          (*v119)(v112, v111, v113);
          sub_10002A20C(&qword_100043328, &type metadata accessor for VideoPreview, &protocol conformance descriptor for VideoPreview);
          sub_10002E55C();
          sub_10000C0EC(&qword_1000432E0, &qword_100034C28);
          sub_10002E9DC();
          (*v120)(v135, v137);
          *(v0 + 504) = 0;
          sub_10002E9EC();

          (*v121)(v111, v113);
          (*v122)(v143, v142);
          (*v123)(v147, v145);
          (*v124)(v153, v149);
          (*(v156 + 8))(v169, v162);
          goto LABEL_22;
        }

        (*v129)(*(v0 + 824), *(v0 + 808));
        v89 = [v88 copyNextSampleBuffer];
        v90 = v166 + 1;
        if (__OFADD__(v166, 1))
        {
          goto LABEL_51;
        }

        v91 = v89;
        v167 = v166 + 1;
        if (v89)
        {
          v92 = *(v0 + 1540) != *(v0 + 1544) && v90 == *(v0 + 1048);
          v93 = v92;
        }

        else
        {
          v93 = 1;
        }

        v94 = *(v0 + 568);
        v159 = *(v0 + 552);
        (*v119)(*(v0 + 592), *(v0 + 600), *(v0 + 576));
        sub_10002A20C(&qword_100043328, &type metadata accessor for VideoPreview, &protocol conformance descriptor for VideoPreview);
        sub_10002E55C();
        sub_10000C0EC(&qword_1000432E0, &qword_100034C28);
        sub_10002E9DC();
        (*v120)(v94, v159);
        v95 = *(v0 + 704);
        v155 = *(v0 + 664);
        v160 = *(v0 + 680);
        v152 = *(v0 + 640);
        v96 = *(v0 + 632);
        v97 = *(v0 + 608);
        v98 = *(v0 + 600);
        v99 = *(v0 + 576);
        if (v93)
        {
          *(v0 + 496) = 0;
          sub_10002E9EC();
        }

        (*v121)(v98, v99);
        (*v122)(v96, v97);
        (*v123)(v155, v152);
        (*v124)(v95, v160);
        if (!v91)
        {
          break;
        }

        v100 = *(v0 + 1048);
        v101 = *(v0 + 1544);
        v102 = *(v0 + 1540);
        v103 = v91;
        v48 = v103;
        v92 = v102 == v101;
        v67 = v167;
        if (!v92 && v167 == v100)
        {
          goto LABEL_18;
        }

        if (!CMSampleBufferGetNumSamples(v103))
        {
          goto LABEL_26;
        }
      }

      v114 = *(v0 + 1160);
      v115 = *(v0 + 1112);
      v116 = *(v0 + 944);
      v117 = *(v0 + 920);
      (*(*(v0 + 720) + 8))(*(v0 + 736), *(v0 + 712));
    }

    else
    {
LABEL_18:
      v49 = *(v0 + 1160);
      v50 = *(v0 + 1112);
      v51 = *(v0 + 944);
      v52 = *(v0 + 920);
      v53 = *(v0 + 736);
      v54 = *(v0 + 720);
      v55 = *(v0 + 712);

      (*(v54 + 8))(v53, v55);
    }
  }

  else
  {
    v60 = *(v0 + 1160);
    v61 = *(v0 + 1112);
    v62 = *(v0 + 944);
    v63 = *(v0 + 920);
    v165 = *(v0 + 736);
    v64 = *(v0 + 720);
    v65 = *(v0 + 712);

    sub_10002E7DC();
    sub_10002A20C(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    swift_willThrow();

    (*(v64 + 8))(v165, v65);
  }

LABEL_22:

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_100025870()
{
  *(*v1 + 1184) = v0;

  if (v0)
  {

    v2 = sub_100027ADC;
  }

  else
  {

    v2 = sub_1000259EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000259EC()
{
  v1 = ceilf(*(v0 + 1536));
  *(v0 + 1552) = v1;
  if ((LODWORD(v1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v1 <= -2147500000.0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (v1 >= 2147500000.0)
  {
    goto LABEL_9;
  }

  *(v0 + 1192) = kCMTimeZero.value;
  *(v0 + 1556) = *&kCMTimeZero.timescale;
  *(v0 + 1200) = kCMTimeZero.epoch;
  sub_10000C0EC(&qword_100043338, &qword_100034CB0);
  v2 = sub_10002DF5C();
  *(v0 + 1208) = v2;
  v3 = swift_task_alloc();
  *(v0 + 1216) = v3;
  *v3 = v0;
  v3[1] = sub_100025B5C;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 512, v2, 0, 0);
}

uint64_t sub_100025B5C()
{

  if (v0)
  {

    v1 = sub_100027D0C;
  }

  else
  {

    v1 = sub_100025CD0;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100025CD0()
{
  v164 = v0;
  v1 = *(v0 + 512);
  if (v1 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10002EC0C())
  {
    v3 = v0 + 1384;
    if (!i)
    {
      break;
    }

    v4 = 0;
    v5 = v1 & 0xC000000000000001;
    p_weak_ivar_lyt = &MBDSMSToSuper_AUDIO_Frame__metaData.weak_ivar_lyt;
    v143 = i;
    while (1)
    {
      if (v5)
      {
        v7 = sub_10002EBDC();
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v7 = *(v1 + 32 + 8 * v4);
      }

      v8 = v7;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      if (([v7 p_weak_ivar_lyt[376]] & 1) == 0)
      {
        v10 = *(v0 + 944);
        [v8 timeMapping];
        v11 = v157;
        v12 = *(&v156 + 1);
        *(v0 + 1416) = v156;
        *(v0 + 1424) = v12;
        *(v0 + 1432) = v11;
        v13 = [v10 makeSampleCursorWithPresentationTimeStamp:v0 + 1416];
        if (v13)
        {
          v14 = v13;
          do
          {
            if (([v14 currentSampleDependencyInfo] & 0x1000000) == 0)
            {
              break;
            }

            if ([v14 stepInPresentationOrderByCount:1] != 1)
            {
              break;
            }

            [v14 presentationTimeStamp];
            [v8 timeMapping];
            v15 = v157;
            *(v0 + 1224) = v156;
            *(v0 + 1240) = v15;
            *(v0 + 1256) = v158;
            sub_10002EA3C();
          }

          while ((sub_10002EAEC() & 1) == 0);
          if (([v14 currentSampleDependencyInfo] & 0x1000000) == 0)
          {

            [v14 presentationTimeStamp];
            v82 = v156;
            v83 = v157;
            v84 = *(&v156 + 1);
            [v8 timeMapping];
            v85 = v156;
            v86 = v157;
            v87 = *(&v158 + 1);
            v88 = v158;
            v89 = *(&v156 + 1);
            [v8 timeMapping];
            v90 = v159;
            v91 = v163;
            v92 = v162;
            v93 = v161;
            v94 = v160;
            *(v0 + 1440) = v82;
            *(v0 + 1448) = v84;
            *(v0 + 1456) = v83;
            *(v0 + 1320) = v85;
            *(v0 + 1328) = v89;
            *(v0 + 1336) = v86;
            *(v0 + 1352) = v88;
            *(v0 + 1360) = v87;
            *(v0 + 1368) = v90;
            *(v0 + 1376) = v94;
            *(v0 + 1384) = v93;
            *(v0 + 1400) = v92;
            *(v0 + 1408) = v91;
            CMTimeMapTimeFromRangeToRange(&v156, (v0 + 1440), (v0 + 1320), (v0 + 1368));
            v17 = *(&v156 + 1);
            v18 = v156;
            v16 = v157;

            goto LABEL_22;
          }

          i = v143;
          v5 = v1 & 0xC000000000000001;
          p_weak_ivar_lyt = (&MBDSMSToSuper_AUDIO_Frame__metaData + 56);
        }
      }

      if (v4 == i)
      {

        v16 = *(v0 + 1200);
        v3 = v0 + 1384;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

  v16 = *(v0 + 1200);
LABEL_21:
  v17 = *(v3 + 172);
  v18 = *(v0 + 1192);
LABEL_22:
  v19 = *(v0 + 1112);
  v20 = sub_10002EAFC(1, *(v0 + 1552));
  *(v0 + 1272) = v18;
  *(v0 + 1280) = v17;
  *(v0 + 1288) = v16;
  *(v0 + 1296) = v20;
  *(v0 + 1304) = v21;
  *(v0 + 1308) = v22;
  *(v0 + 1312) = v23;
  [v19 setTimeRange:v0 + 1272];
  v24 = *(v0 + 1160);
  [*(v0 + 1112) startReading];
  v25 = [v24 copyNextSampleBuffer];
  if (v25)
  {
    v26 = *(v0 + 1048);
    v27 = *(v0 + 1544);
    v28 = *(v0 + 1540);
    v29 = v25;
    v30 = v29;
    if (v28 == v27 || v26)
    {
      v46 = 0;
      v47 = *(v0 + 688);
      v117 = (v47 + 16);
      v118 = (*(v0 + 720) + 16);
      v48 = *(v0 + 648);
      v49 = *(v0 + 616);
      v50 = *(v0 + 584);
      v115 = (v49 + 16);
      v116 = (v48 + 16);
      v119 = (*(v0 + 816) + 8);
      v109 = (v50 + 16);
      v110 = (*(v0 + 560) + 8);
      v111 = (v50 + 8);
      v112 = (v49 + 8);
      v113 = (v48 + 8);
      v114 = (v47 + 8);
      if (CMSampleBufferGetNumSamples(v29))
      {
        goto LABEL_33;
      }

      do
      {
LABEL_32:
      }

      while (!CMSampleBufferGetNumSamples(v30));
      while (1)
      {
LABEL_33:

        v51 = sub_10002EABC();
        if (!v51)
        {
          v95 = *(v0 + 1160);
          v96 = *(v0 + 1112);
          v97 = *(v0 + 944);
          v98 = *(v0 + 920);
          v99 = *(v0 + 720);
          v149 = *(v0 + 712);
          v154 = *(v0 + 736);

          sub_10002E7DC();
          sub_10002A20C(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
          swift_allocError();
          sub_10002E7CC();
          swift_willThrow();

          (*(v99 + 8))(v154, v149);
          goto LABEL_28;
        }

        v52 = v51;
        v53 = sub_10002EA6C();
        v54 = sub_10002EB4C();
        if (os_log_type_enabled(v54, v53))
        {
          v55 = swift_slowAlloc();
          *v55 = 134217984;
          *(v55 + 4) = v46;
          _os_log_impl(&_mh_execute_header, v54, v53, "BlastDoor processing thumbnail %ld", v55, 0xCu);
        }

        v146 = *(v0 + 1544);
        v136 = *(v0 + 824);
        v138 = *(v0 + 808);
        v140 = *(v0 + 952);
        v152 = v46;
        v56 = *(v0 + 736);
        v57 = *(v0 + 728);
        v58 = *(v0 + 712);
        v59 = *(v0 + 704);
        v122 = *(v0 + 696);
        v123 = *(v0 + 680);
        v60 = *(v0 + 672);
        v61 = *(v0 + 664);
        v124 = *(v0 + 656);
        v126 = *(v0 + 640);
        v121 = *(v0 + 632);
        v128 = *(v0 + 624);
        v130 = *(v0 + 608);

        sub_10002EACC();
        sub_10002EB0C();
        type metadata accessor for CVBuffer(0);
        *(&v157 + 1) = v62;
        *&v158 = &protocol witness table for CVBufferRef;
        *&v156 = v52;
        v63 = sub_10002E75C();
        (*(*(v63 - 8) + 56))(v60, 1, 1, v63);
        v64 = v52;
        sub_10002E76C();
        v65 = *v118;
        (*v118)(v57, v56, v58);
        sub_10002E2AC();
        v65(v57, v56, v58);
        sub_10002E2CC();
        (*v117)(v122, v59, v123);
        (*v116)(v124, v61, v126);
        (*v115)(v128, v121, v130);
        sub_10002E3AC();
        sub_10002E2EC();
        v66 = v140(v136, v138);
        v1 = *(v0 + 1160);
        v120 = v64;
        if (v66 == v146)
        {
          v129 = *(v0 + 1112);
          v131 = *(v0 + 944);
          v134 = *(v0 + 920);
          v100 = *(v0 + 824);
          v101 = *(v0 + 808);
          v145 = *(v0 + 720);
          v150 = *(v0 + 712);
          v155 = *(v0 + 736);
          v139 = *(v0 + 680);
          v142 = *(v0 + 704);
          v135 = *(v0 + 640);
          v137 = *(v0 + 664);
          v132 = *(v0 + 608);
          v133 = *(v0 + 632);
          v102 = *(v0 + 600);
          v103 = *(v0 + 592);
          v104 = *(v0 + 576);
          v125 = *(v0 + 568);
          v127 = *(v0 + 552);

          (*v119)(v100, v101);
          (*v109)(v103, v102, v104);
          sub_10002A20C(&qword_100043328, &type metadata accessor for VideoPreview, &protocol conformance descriptor for VideoPreview);
          sub_10002E55C();
          sub_10000C0EC(&qword_1000432E0, &qword_100034C28);
          sub_10002E9DC();
          (*v110)(v125, v127);
          *(v0 + 504) = 0;
          sub_10002E9EC();

          (*v111)(v102, v104);
          (*v112)(v133, v132);
          (*v113)(v137, v135);
          (*v114)(v142, v139);
          (*(v145 + 8))(v155, v150);
          goto LABEL_28;
        }

        (*v119)(*(v0 + 824), *(v0 + 808));
        v67 = [v1 copyNextSampleBuffer];
        v68 = v152 + 1;
        if (__OFADD__(v152, 1))
        {
          goto LABEL_59;
        }

        v69 = v67;
        v153 = v152 + 1;
        if (v67)
        {
          v71 = *(v0 + 1540) != *(v0 + 1544) && v68 == *(v0 + 1048);
        }

        else
        {
          v71 = 1;
        }

        v72 = *(v0 + 568);
        v147 = *(v0 + 552);
        (*v109)(*(v0 + 592), *(v0 + 600), *(v0 + 576));
        sub_10002A20C(&qword_100043328, &type metadata accessor for VideoPreview, &protocol conformance descriptor for VideoPreview);
        sub_10002E55C();
        sub_10000C0EC(&qword_1000432E0, &qword_100034C28);
        sub_10002E9DC();
        (*v110)(v72, v147);
        v73 = *(v0 + 704);
        v144 = *(v0 + 664);
        v148 = *(v0 + 680);
        v141 = *(v0 + 640);
        v74 = *(v0 + 632);
        v75 = *(v0 + 608);
        v76 = *(v0 + 600);
        v77 = *(v0 + 576);
        if (v71)
        {
          *(v0 + 496) = 0;
          sub_10002E9EC();
        }

        (*v111)(v76, v77);
        (*v112)(v74, v75);
        (*v113)(v144, v141);
        (*v114)(v73, v148);
        v46 = v153;
        if (!v69)
        {
          break;
        }

        v78 = *(v0 + 1048);
        v79 = *(v0 + 1544);
        v80 = *(v0 + 1540);
        v81 = v69;
        v30 = v81;
        if (v80 != v79 && v153 == v78)
        {
          goto LABEL_25;
        }

        if (!CMSampleBufferGetNumSamples(v81))
        {
          goto LABEL_32;
        }
      }

      v105 = *(v0 + 1160);
      v106 = *(v0 + 1112);
      v107 = *(v0 + 944);
      v108 = *(v0 + 920);
      (*(*(v0 + 720) + 8))(*(v0 + 736), *(v0 + 712));
    }

    else
    {
LABEL_25:
      v31 = *(v0 + 1160);
      v32 = *(v0 + 1112);
      v33 = *(v0 + 944);
      v34 = *(v0 + 920);
      v35 = *(v0 + 736);
      v36 = *(v0 + 720);
      v37 = *(v0 + 712);

      (*(v36 + 8))(v35, v37);
    }
  }

  else
  {
    v38 = *(v0 + 1160);
    v39 = *(v0 + 1112);
    v40 = *(v0 + 944);
    v41 = *(v0 + 920);
    v151 = *(v0 + 736);
    v42 = *(v0 + 720);
    v43 = *(v0 + 712);

    sub_10002E7DC();
    sub_10002A20C(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    swift_willThrow();

    (*(v42 + 8))(v151, v43);
  }

LABEL_28:

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_100026E40(uint64_t a1)
{
  v2 = *(v1 + 920);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100027038()
{
  v1 = v0[118];
  v2 = v0[115];
  v3 = v0[100];
  v4 = v0[99];
  v5 = v0[98];

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100027258()
{
  v1 = v0[118];
  v2 = v0[115];
  v3 = v0[100];
  v4 = v0[99];
  v5 = v0[98];

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100027478()
{
  v1 = *(v0 + 920);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100027670()
{
  v1 = v0[118];
  v2 = v0[115];
  v3 = v0[92];
  v4 = v0[90];
  v5 = v0[89];

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100027890()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 920);
  v3 = *(v0 + 768);
  v4 = *(v0 + 752);
  v5 = *(v0 + 744);
  v6 = *(v0 + 736);
  v7 = *(v0 + 720);
  v8 = *(v0 + 712);

  (*(v4 + 8))(v3, v5);
  (*(v7 + 8))(v6, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100027ADC()
{
  v1 = *(v0 + 1160);
  v2 = *(v0 + 944);
  v3 = *(v0 + 920);
  v4 = *(v0 + 736);
  v5 = *(v0 + 720);
  v6 = *(v0 + 712);

  (*(v5 + 8))(v4, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100027D0C()
{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1192);
  v3 = *(v0 + 1112);
  v4 = *(v0 + 1556);
  v5 = sub_10002EAFC(1, *(v0 + 1552));
  *(v0 + 1272) = v2;
  *(v0 + 1280) = v4;
  *(v0 + 1288) = v1;
  *(v0 + 1296) = v5;
  *(v0 + 1304) = v6;
  *(v0 + 1308) = v7;
  *(v0 + 1312) = v8;
  [v3 setTimeRange:v0 + 1272];
  v9 = *(v0 + 1160);
  [*(v0 + 1112) startReading];
  v10 = [v9 copyNextSampleBuffer];
  if (v10)
  {
    v11 = *(v0 + 1048);
    v12 = *(v0 + 1544);
    v13 = *(v0 + 1540);
    v14 = v10;
    v15 = v14;
    if (v13 == v12 || v11)
    {
      v31 = 0;
      v32 = *(v0 + 688);
      v89 = (v32 + 16);
      v90 = (*(v0 + 720) + 16);
      v33 = *(v0 + 648);
      v34 = *(v0 + 616);
      v35 = *(v0 + 584);
      v87 = (v34 + 16);
      v88 = (v33 + 16);
      v91 = (*(v0 + 816) + 8);
      v81 = (v35 + 16);
      v82 = (*(v0 + 560) + 8);
      v83 = (v35 + 8);
      v84 = (v34 + 8);
      v85 = (v33 + 8);
      v86 = (v32 + 8);
      if (CMSampleBufferGetNumSamples(v14))
      {
        goto LABEL_12;
      }

      do
      {
LABEL_11:
      }

      while (!CMSampleBufferGetNumSamples(v15));
      while (1)
      {
LABEL_12:

        v36 = sub_10002EABC();
        if (!v36)
        {
          v67 = *(v0 + 1160);
          v68 = *(v0 + 1112);
          v69 = *(v0 + 944);
          v70 = *(v0 + 920);
          v71 = *(v0 + 720);
          v120 = *(v0 + 712);
          v125 = *(v0 + 736);

          sub_10002E7DC();
          sub_10002A20C(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
          swift_allocError();
          sub_10002E7CC();
          swift_willThrow();

          (*(v71 + 8))(v125, v120);
          goto LABEL_7;
        }

        v37 = v36;
        v38 = sub_10002EA6C();
        v39 = sub_10002EB4C();
        if (os_log_type_enabled(v39, v38))
        {
          v40 = swift_slowAlloc();
          *v40 = 134217984;
          *(v40 + 4) = v31;
          _os_log_impl(&_mh_execute_header, v39, v38, "BlastDoor processing thumbnail %ld", v40, 0xCu);
        }

        v117 = *(v0 + 1544);
        v112 = *(v0 + 952);
        v108 = *(v0 + 824);
        v110 = *(v0 + 808);
        v41 = *(v0 + 736);
        v123 = v31;
        v42 = *(v0 + 728);
        v43 = *(v0 + 712);
        v44 = *(v0 + 704);
        v94 = *(v0 + 696);
        v95 = *(v0 + 680);
        v45 = *(v0 + 672);
        v46 = *(v0 + 664);
        v96 = *(v0 + 656);
        v98 = *(v0 + 640);
        v93 = *(v0 + 632);
        v100 = *(v0 + 624);
        v102 = *(v0 + 608);

        sub_10002EACC();
        sub_10002EB0C();
        type metadata accessor for CVBuffer(0);
        v47 = sub_10002E75C();
        (*(*(v47 - 8) + 56))(v45, 1, 1, v47);
        v48 = v37;
        sub_10002E76C();
        v49 = *v90;
        (*v90)(v42, v41, v43);
        sub_10002E2AC();
        v49(v42, v41, v43);
        sub_10002E2CC();
        (*v89)(v94, v44, v95);
        (*v88)(v96, v46, v98);
        (*v87)(v100, v93, v102);
        sub_10002E3AC();
        sub_10002E2EC();
        v50 = v112(v108, v110);
        v51 = *(v0 + 1160);
        v92 = v48;
        if (v50 == v117)
        {
          v101 = *(v0 + 1112);
          v103 = *(v0 + 944);
          v106 = *(v0 + 920);
          v72 = *(v0 + 824);
          v73 = *(v0 + 808);
          v121 = *(v0 + 712);
          v126 = *(v0 + 736);
          v114 = *(v0 + 704);
          v116 = *(v0 + 720);
          v109 = *(v0 + 664);
          v111 = *(v0 + 680);
          v107 = *(v0 + 640);
          v104 = *(v0 + 608);
          v105 = *(v0 + 632);
          v74 = *(v0 + 600);
          v75 = *(v0 + 592);
          v76 = *(v0 + 576);
          v97 = *(v0 + 568);
          v99 = *(v0 + 552);

          (*v91)(v72, v73);
          (*v81)(v75, v74, v76);
          sub_10002A20C(&qword_100043328, &type metadata accessor for VideoPreview, &protocol conformance descriptor for VideoPreview);
          sub_10002E55C();
          sub_10000C0EC(&qword_1000432E0, &qword_100034C28);
          sub_10002E9DC();
          (*v82)(v97, v99);
          *(v0 + 504) = 0;
          sub_10002E9EC();

          (*v83)(v74, v76);
          (*v84)(v105, v104);
          (*v85)(v109, v107);
          (*v86)(v114, v111);
          (*(v116 + 8))(v126, v121);
          goto LABEL_7;
        }

        (*v91)(*(v0 + 824), *(v0 + 808));
        v52 = [v51 copyNextSampleBuffer];
        v53 = v123 + 1;
        if (__OFADD__(v123, 1))
        {
          __break(1u);
        }

        v54 = v52;
        v124 = v123 + 1;
        if (v52)
        {
          v55 = *(v0 + 1540) != *(v0 + 1544) && v53 == *(v0 + 1048);
          v56 = v55;
        }

        else
        {
          v56 = 1;
        }

        v57 = *(v0 + 568);
        v118 = *(v0 + 552);
        (*v81)(*(v0 + 592), *(v0 + 600), *(v0 + 576));
        sub_10002A20C(&qword_100043328, &type metadata accessor for VideoPreview, &protocol conformance descriptor for VideoPreview);
        sub_10002E55C();
        sub_10000C0EC(&qword_1000432E0, &qword_100034C28);
        sub_10002E9DC();
        (*v82)(v57, v118);
        v58 = *(v0 + 704);
        v115 = *(v0 + 664);
        v119 = *(v0 + 680);
        v113 = *(v0 + 640);
        v59 = *(v0 + 632);
        v60 = *(v0 + 608);
        v61 = *(v0 + 600);
        v62 = *(v0 + 576);
        if (v56)
        {
          *(v0 + 496) = 0;
          sub_10002E9EC();
        }

        (*v83)(v61, v62);
        (*v84)(v59, v60);
        (*v85)(v115, v113);
        (*v86)(v58, v119);
        if (!v54)
        {
          break;
        }

        v63 = *(v0 + 1048);
        v64 = *(v0 + 1544);
        v65 = *(v0 + 1540);
        v66 = v54;
        v15 = v66;
        v55 = v65 == v64;
        v31 = v124;
        if (!v55 && v124 == v63)
        {
          goto LABEL_4;
        }

        if (!CMSampleBufferGetNumSamples(v66))
        {
          goto LABEL_11;
        }
      }

      v77 = *(v0 + 1160);
      v78 = *(v0 + 1112);
      v79 = *(v0 + 944);
      v80 = *(v0 + 920);
      (*(*(v0 + 720) + 8))(*(v0 + 736), *(v0 + 712));
    }

    else
    {
LABEL_4:
      v16 = *(v0 + 1160);
      v17 = *(v0 + 1112);
      v18 = *(v0 + 944);
      v19 = *(v0 + 920);
      v20 = *(v0 + 736);
      v21 = *(v0 + 720);
      v22 = *(v0 + 712);

      (*(v21 + 8))(v20, v22);
    }
  }

  else
  {
    v23 = *(v0 + 1160);
    v24 = *(v0 + 1112);
    v25 = *(v0 + 944);
    v26 = *(v0 + 920);
    v122 = *(v0 + 736);
    v27 = *(v0 + 720);
    v28 = *(v0 + 712);

    sub_10002E7DC();
    sub_10002A20C(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    swift_willThrow();

    (*(v27 + 8))(v122, v28);
  }

LABEL_7:

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_100028BA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1000106D4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10000C0EC(&qword_100042EC0, &qword_100034A10);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_10001FDE0(0, &qword_100043368, AVAssetTrack_ptr);
    **(*(v4 + 64) + 40) = sub_10002E99C();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_100028C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000C0EC(&qword_1000432E8, &qword_100034C30);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000E7CC(a3, v25 - v10, &qword_1000432E8, &qword_100034C30);
  v12 = sub_10002E9CC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000E76C(v11, &qword_1000432E8, &qword_100034C30);
  }

  else
  {
    sub_10002E9BC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10002E9AC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10002E8CC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000E76C(a3, &qword_1000432E8, &qword_100034C30);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000E76C(a3, &qword_1000432E8, &qword_100034C30);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100028F9C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100029094;

  return v6(a1);
}

uint64_t sub_100029094()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100029194()
{
  v17 = sub_10002E71C();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v16 = sub_10002E2FC();
  v5 = *(v16 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_10000C0EC(&qword_1000432E0, &qword_100034C28);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v15 = *(v10 + 64);
  v13 = v2 | v6 | v11;
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v3, v17);
  (*(v5 + 8))(v0 + v7, v16);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v12 + v15, v13 | 7);
}

uint64_t sub_10002937C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10002E71C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10002E2FC() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_10000C0EC(&qword_1000432E0, &qword_100034C28) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_10002953C;

  return sub_1000207CC(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_10002953C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100029630()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100029668(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002A258;

  return sub_100028F9C(a1, v4);
}

uint64_t sub_100029720()
{
  v17 = sub_10002E71C();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v16 = sub_10002E2FC();
  v5 = *(v16 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_10000C0EC(&qword_1000432E0, &qword_100034C28);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v15 = *(v10 + 64);
  v13 = v2 | v6 | v11;
  (*(v1 + 8))(v0 + v3, v17);
  (*(v5 + 8))(v0 + v7, v16);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v12 + v15, v13 | 7);
}

uint64_t sub_100029900(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10002E71C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10002E2FC() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_10000C0EC(&qword_1000432E0, &qword_100034C28) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10002953C;

  return sub_10002118C(a1, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_100029AAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C0EC(&qword_100043360, &unk_100034CD0);
  v33 = v4;
  result = sub_10002EC2C();
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
        sub_10001FD38(v24, v34);
      }

      else
      {
        sub_100019DF8(v24, v34);
      }

      sub_10002EDCC();
      sub_10002E8FC();
      result = sub_10002EDEC();
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
      result = sub_10001FD38(v34, (*(v7 + 56) + 32 * v15));
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

_OWORD *sub_100029D64(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10001FAA0(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100029F20();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100029AAC(v16, a4 & 1);
    v11 = sub_10001FAA0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_10002ED7C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_1000121A8(v22);

    return sub_10001FD38(a1, v22);
  }

  else
  {
    sub_100029EB4(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_100029EB4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10001FD38(a4, (a5[7] + 32 * a1));
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

void *sub_100029F20()
{
  v1 = v0;
  sub_10000C0EC(&qword_100043360, &unk_100034CD0);
  v2 = *v0;
  v3 = sub_10002EC1C();
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
        sub_100019DF8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10001FD38(v25, (*(v4 + 56) + v22));
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

unint64_t sub_10002A0C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C0EC(&qword_100043360, &unk_100034CD0);
    v3 = sub_10002EC3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000E7CC(v4, &v13, &qword_100043310, &qword_100034C90);
      v5 = v13;
      v6 = v14;
      result = sub_10001FAA0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10001FD38(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10002A20C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10002A25C(uint64_t a1@<X8>)
{
  v4 = sub_10000C0EC(&qword_100042EA0, &qword_100034CE0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v88 - v9;
  __chkstk_darwin(v8);
  v105 = v88 - v11;
  v104 = sub_10002E41C();
  v107 = *(v104 - 8);
  __chkstk_darwin(v104);
  v106 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_10002E63C();
  v110 = *(v108 - 8);
  __chkstk_darwin(v108);
  v114 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_10002E50C();
  v113 = *(v111 - 8);
  __chkstk_darwin(v111);
  v116 = v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_10002E52C();
  v15 = *(v115 - 8);
  __chkstk_darwin(v115);
  v109 = v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C0EC(&qword_100043370, &qword_100034CE8);
  __chkstk_darwin(v17 - 8);
  v18 = sub_10000C0EC(&qword_100043378, &qword_100034CF0);
  __chkstk_darwin(v18 - 8);
  v19 = sub_10002E8AC();
  __chkstk_darwin(v19 - 8);
  v20 = v1[6];
  v21 = v1[7];
  if (v21 >> 60 == 15)
  {
    sub_10002E54C();
    if (!v2)
    {
      v22 = enum case for SMSCTPart.Content.attachment(_:);
      v23 = sub_10002E7FC();
      (*(*(v23 - 8) + 104))(a1, v22, v23);
    }

    return;
  }

  v102 = v15;
  v103 = a1;
  v112 = v20;
  v117 = v21;
  v24 = v1[1];
  if (!v24)
  {
    goto LABEL_32;
  }

  v25 = *v1;
  if (*v1 == 0x616C702F74786574 && v24 == 0xEA00000000006E69 || (sub_10002ED5C() & 1) != 0)
  {
    v26 = v112;
    v27 = v117;
    sub_10000F7EC(v112, v117);
    sub_10002E89C();
    sub_10002E88C();
    v28 = v103;
    sub_10002E43C();
    if (v2)
    {
      v29 = v26;
    }

    else
    {
      v30 = v26;
      v31 = enum case for SMSCTPart.Content.plain(_:);
      v32 = sub_10002E7FC();
      (*(*(v32 - 8) + 104))(v28, v31, v32);
      v29 = v30;
    }

    v33 = v27;
    goto LABEL_36;
  }

  if (v25 == 0xD000000000000018 && 0x80000001000339B0 == v24 || (sub_10002ED5C() & 1) != 0)
  {
    v34 = v112;
    v35 = v117;
    sub_1000196A8(v112, v117);
    sub_10000F7EC(v34, v35);
    sub_10002E15C();
    if (v2)
    {
LABEL_16:
      v29 = v34;
LABEL_17:
      v33 = v35;
LABEL_36:
      sub_10000F894(v29, v33);
      return;
    }

    v36 = v103;
    sub_10002E67C();
    sub_10000F894(v34, v35);
    v37 = &enum case for SMSCTPart.Content.attributedChipList(_:);
LABEL_19:
    v38 = *v37;
    v39 = sub_10002E7FC();
    (*(*(v39 - 8) + 104))(v36, v38, v39);
    return;
  }

  if (v25 == 0xD000000000000019 && 0x8000000100033990 == v24 || (sub_10002ED5C() & 1) != 0)
  {
    v34 = v112;
    v35 = v117;
    sub_1000196A8(v112, v117);
    sub_10000F7EC(v34, v35);
    sub_10002E24C();
    if (v2)
    {
      goto LABEL_16;
    }

    v36 = v103;
    sub_10002E69C();
    sub_10000F894(v34, v35);
    v37 = &enum case for SMSCTPart.Content.attributedRichCards(_:);
    goto LABEL_19;
  }

  if ((v25 != 0xD000000000000010 || 0x80000001000338D0 != v24) && (sub_10002ED5C() & 1) == 0)
  {
LABEL_32:
    v50 = v112;
    v49 = v117;
    sub_1000196A8(v112, v117);
    sub_1000196A8(v50, v49);

    v51 = v103;
    sub_10002E54C();
    if (!v2)
    {
      v52 = enum case for SMSCTPart.Content.attachment(_:);
      v53 = sub_10002E7FC();
      (*(*(v53 - 8) + 104))(v51, v52, v53);
    }

    v29 = v50;
    goto LABEL_35;
  }

  v40 = v112;
  v41 = v117;
  sub_10000F7EC(v112, v117);
  sub_10002E89C();
  sub_10002E88C();
  if (!v42)
  {
    (*(v102 + 56))(v7, 1, 1, v115);
    v36 = v103;
    sub_10002E3FC();
    sub_10000F894(v40, v41);
    if (v2)
    {
      return;
    }

    goto LABEL_74;
  }

  v43 = [objc_opt_self() sharedInstance];
  v44 = objc_allocWithZone(MBDSMSToSuperParserContext);
  v45 = sub_10002E84C();

  v46 = [v44 initWithContent:v45];

  if (![v43 parseContext:v46])
  {
    (*(v102 + 56))(v10, 1, 1, v115);
    v36 = v103;
    sub_10002E3FC();
    v35 = v117;
    if (v2)
    {

      v29 = v112;
      goto LABEL_17;
    }

    sub_10000F894(v112, v117);

    goto LABEL_74;
  }

  v47 = [v46 body];
  v48 = v109;
  _AttributedString.init(fromNSAttributedString:)(v47, v109);
  v49 = v117;
  if (v2)
  {

    v29 = v112;
LABEL_35:
    v33 = v49;
    goto LABEL_36;
  }

  v94 = v43;
  v93 = v46;
  v54 = [v46 orderedParts];
  v55 = sub_10002E99C();

  v56 = *(v55 + 16);
  if (!v56)
  {
    v96 = &_swiftEmptyArrayStorage;
    v85 = v112;
    v59 = v115;
LABEL_76:

    v86 = v102;
    v87 = v105;
    (*(v102 + 16))(v105, v48, v59);
    (*(v86 + 56))(v87, 0, 1, v59);
    v36 = v103;
    sub_10002E3FC();
    (*(v86 + 8))(v48, v59);
    sub_10000F894(v85, v49);

LABEL_74:
    v37 = &enum case for SMSCTPart.Content.smil(_:);
    goto LABEL_19;
  }

  v57 = 0;
  v58 = v55 + 32;
  v98 = v113 + 32;
  v97 = v110 + 32;
  v88[1] = v107 + 32;
  v96 = &_swiftEmptyArrayStorage;
  v59 = v115;
  v92 = v55;
  v90 = v56;
  v89 = v55 + 32;
  while (1)
  {
    if (v57 >= *(v55 + 16))
    {
      goto LABEL_83;
    }

    v91 = v57;
    sub_100019DF8(v58 + 32 * v57, v118);
    sub_10001FDE0(0, &qword_100043380, off_10003CC90);
    if (!swift_dynamicCast())
    {

      sub_10002E7DC();
      sub_10000EFF0();
      swift_allocError();
      sub_10002E7CC();
      swift_willThrow();

      sub_10000F894(v112, v49);
      (*(v102 + 8))(v48, v59);
      return;
    }

    v95 = v119;
    v60 = [v119 textParts];
    v61 = sub_10002E99C();

    v100 = *(v61 + 16);
    if (v100)
    {
      break;
    }

    v64 = &_swiftEmptyArrayStorage;
LABEL_57:
    v100 = v64;

    v71 = [v95 attachmentParts];
    v72 = sub_10002E99C();

    v101 = *(v72 + 16);
    if (v101)
    {
      v73 = 0;
      v74 = v72 + 32;
      v75 = &_swiftEmptyArrayStorage;
      while (v73 < *(v72 + 16))
      {
        sub_100019DF8(v74, v118);
        sub_10001FDE0(0, &qword_100043390, off_10003CC88);
        if (!swift_dynamicCast())
        {

          sub_10002E7DC();
          sub_10000EFF0();
          swift_allocError();
          goto LABEL_79;
        }

        v76 = v119;
        v77 = [v119 contentLocation];
        sub_10002E87C();

        sub_10002E62C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v75 = sub_10002C67C(0, v75[2] + 1, 1, v75, &qword_1000433A0, &qword_100034D00, &type metadata accessor for SMSParserAttachmentPart);
        }

        v79 = v75[2];
        v78 = v75[3];
        if (v79 >= v78 >> 1)
        {
          v75 = sub_10002C67C((v78 > 1), v79 + 1, 1, v75, &qword_1000433A0, &qword_100034D00, &type metadata accessor for SMSParserAttachmentPart);
        }

        ++v73;

        v75[2] = v79 + 1;
        (*(v110 + 32))(v75 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v79, v114, v108);
        v74 += 32;
        if (v101 == v73)
        {
          goto LABEL_66;
        }
      }

LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return;
    }

LABEL_66:

    sub_10002E40C();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v96 = sub_10002C67C(0, v96[2] + 1, 1, v96, &qword_100043398, &qword_100034CF8, &type metadata accessor for SMSParserPart);
    }

    v81 = v96[2];
    v80 = v96[3];
    if (v81 >= v80 >> 1)
    {
      v96 = sub_10002C67C((v80 > 1), v81 + 1, 1, v96, &qword_100043398, &qword_100034CF8, &type metadata accessor for SMSParserPart);
    }

    v82 = v91 + 1;

    v83 = v96;
    v96[2] = v81 + 1;
    (*(v107 + 32))(v83 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v81, v106, v104);
    v57 = v82;
    v84 = v82 == v90;
    v49 = v117;
    v85 = v112;
    v59 = v115;
    v48 = v109;
    v55 = v92;
    v58 = v89;
    if (v84)
    {
      goto LABEL_76;
    }
  }

  v62 = 0;
  v63 = v61 + 32;
  v64 = &_swiftEmptyArrayStorage;
  v99 = v61;
  while (1)
  {
    if (v62 >= *(v61 + 16))
    {
      __break(1u);
      goto LABEL_82;
    }

    v101 = v63;
    sub_100019DF8(v63, v118);
    sub_10001FDE0(0, &qword_100043388, &off_10003CC98);
    if (!swift_dynamicCast())
    {
      break;
    }

    v65 = v119;
    v66 = [v119 contentLocation];
    sub_10002E87C();

    v67 = [v65 text];
    sub_10002E87C();

    sub_10002E4FC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v64 = sub_10002C67C(0, v64[2] + 1, 1, v64, &qword_1000433A8, &qword_100034D08, &type metadata accessor for SMSParserTextPart);
    }

    v61 = v99;
    v68 = v101;
    v70 = v64[2];
    v69 = v64[3];
    if (v70 >= v69 >> 1)
    {
      v64 = sub_10002C67C((v69 > 1), v70 + 1, 1, v64, &qword_1000433A8, &qword_100034D08, &type metadata accessor for SMSParserTextPart);
    }

    v62 = (v62 + 1);

    v64[2] = v70 + 1;
    (*(v113 + 32))(v64 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v70, v116, v111);
    v63 = v68 + 32;
    if (v100 == v62)
    {
      goto LABEL_57;
    }
  }

  sub_10002E7DC();
  sub_10000EFF0();
  swift_allocError();
LABEL_79:
  sub_10002E7CC();
  swift_willThrow();

  sub_10000F894(v112, v117);
  (*(v102 + 8))(v109, v115);
}

uint64_t sub_10002B794()
{
  v1 = sub_10000C0EC(&qword_100042E40, &unk_100034D10);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v33 = &v30 - v5;
  v6 = sub_10000C0EC(&qword_100042E48, &unk_100033F80);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_10000C0EC(&qword_100042E50, &qword_100034D20);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v34 = &v30 - v11;
  v12 = sub_10000C0EC(&qword_100042E58, &qword_100033F90);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v30 - v17;
  sub_10000C0EC(&qword_100042E80, &qword_100033FB0);
  sub_10002DF8C();
  if (!*(v0 + 24))
  {
    (*(v13 + 8))(v18, v12);
    (*(v10 + 56))(v8, 1, 1, v9);
LABEL_6:
    v22 = &qword_100042E48;
    v23 = &unk_100033F80;
    v24 = v8;
    goto LABEL_7;
  }

  v35 = v10;
  v36 = v9;
  v32 = v4;
  sub_10002E98C();
  sub_10000E6C0();
  sub_10002DF7C();
  sub_10002DF9C();
  v19 = *(v13 + 8);
  v19(v16, v12);

  v21 = v35;
  v20 = v36;
  if ((*(v35 + 48))(v8, 1, v36) == 1)
  {
    v19(v18, v12);
    goto LABEL_6;
  }

  (*(v21 + 32))(v34, v8, v20);
  swift_getKeyPath();
  sub_10002DFAC();

  sub_10002E8DC();

  v26 = v33;
  sub_10002DEFC();

  v27 = v32;
  sub_10000E7CC(v26, v32, &qword_100042E40, &unk_100034D10);
  v28 = sub_10002DF1C();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v27, 1, v28) != 1)
  {
    v31 = sub_10002DF0C();
    sub_10000E76C(v26, &qword_100042E40, &unk_100034D10);
    (*(v21 + 8))(v34, v36);
    v19(v18, v12);
    (*(v29 + 8))(v27, v28);
    return v31;
  }

  sub_10000E76C(v26, &qword_100042E40, &unk_100034D10);
  (*(v21 + 8))(v34, v36);
  v19(v18, v12);
  v24 = v27;
  v22 = &qword_100042E40;
  v23 = &unk_100034D10;
LABEL_7:
  sub_10000E76C(v24, v22, v23);
  return 0;
}

uint64_t sub_10002BD78(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x2D746E65746E6F63;
    }

    else
    {
      v3 = 1701869940;
    }

    if (v2)
    {
      v4 = 0xEA00000000006469;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000010;
    v4 = 0x8000000100033090;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 1635017060;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2 == 3)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0x80000001000330B0;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x2D746E65746E6F63;
    }

    else
    {
      v9 = 1701869940;
    }

    if (a2)
    {
      v8 = 0xEA00000000006469;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v5 = 1635017060;
    v6 = 0x80000001000330B0;
    if (a2 == 3)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x8000000100033090;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v8)
  {
LABEL_37:
    v10 = sub_10002ED5C();
    goto LABEL_38;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_10002BEFC(void *a1)
{
  v3 = v1;
  v5 = sub_10000C0EC(&qword_1000433D8, &unk_100034EA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000106D4(a1, a1[3]);
  sub_10002CE94();
  sub_10002EE0C();
  LOBYTE(v12) = 0;
  sub_10002ECDC();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_10002ECDC();
    LOBYTE(v12) = 2;
    sub_10002ECDC();
    v12 = *(v3 + 48);
    v13 = v12;
    v11[23] = 3;
    sub_10000E7CC(&v13, v11, &qword_100042F20, &qword_100034150);
    sub_1000107DC();
    sub_10002ED1C();
    sub_10000F894(v12, *(&v12 + 1));
    LOBYTE(v12) = 4;
    sub_10002ECDC();
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 sub_10002C14C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10002CA90(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

Swift::Int sub_10002C1BC()
{
  sub_10002EDCC();
  sub_10002E8FC();

  return sub_10002EDEC();
}

uint64_t sub_10002C29C(uint64_t a1)
{
  sub_10002E8FC();
}

Swift::Int sub_10002C368(uint64_t a1)
{
  sub_10002EDCC();
  sub_10002E8FC();

  return sub_10002EDEC();
}

unint64_t sub_10002C444@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002D140(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10002C474(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  v5 = 0x8000000100033090;
  v6 = 0xD000000000000010;
  v7 = 0xE400000000000000;
  v8 = 1635017060;
  if (v2 != 3)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001000330B0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x2D746E65746E6F63;
    v3 = 0xEA00000000006469;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_10002C510()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0xD000000000000010;
  v4 = 1635017060;
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
    v2 = 0x2D746E65746E6F63;
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

unint64_t sub_10002C5A8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002D140(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10002C5DC(uint64_t a1)
{
  v2 = sub_10002CE94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002C618(uint64_t a1)
{
  v2 = sub_10002CE94();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10002C67C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000C0EC(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_10002C858(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C0EC(&qword_1000433B8, &qword_100034D50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C0EC(&qword_1000433C0, &qword_100034D58);
    swift_arrayInitWithCopy();
  }

  return v10;
}

__n128 sub_10002C9A0(uint64_t a1, uint64_t a2)
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

uint64_t sub_10002C9BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10002CA18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10002CA90@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10000C0EC(&qword_1000433C8, &qword_100034E98);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - v7;
  sub_1000106D4(a1, a1[3]);
  sub_10002CE94();
  sub_10002EDFC();
  if (v2)
  {
    v41 = v2;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0xF000000000000000;
LABEL_4:
    sub_1000121A8(a1);
    v47 = v15;
    v48 = v14;
    v49 = v13;
    v50 = v12;
    v51 = v11;
    v52 = v10;
    v53 = v9;
    v54 = v16;
    v55 = 0;
    v56 = 0;
    return sub_10000E610(&v47);
  }

  LOBYTE(v47) = 0;
  v40 = sub_10002EC6C();
  v39 = v18;
  LOBYTE(v47) = 1;
  v19 = sub_10002EC6C();
  v36 = a2;
  v38 = v19;
  v37 = v20;
  LOBYTE(v47) = 2;
  v21 = sub_10002EC6C();
  v41 = 0;
  v11 = v21;
  v10 = v22;
  LOBYTE(v42) = 3;
  sub_100012260();
  v23 = v41;
  sub_10002ECAC();
  v41 = v23;
  if (v23)
  {
    (*(v6 + 8))(v8, v5);
    v9 = 0;
    v16 = 0xF000000000000000;
LABEL_9:
    v14 = v39;
    v15 = v40;
    v12 = v37;
    v13 = v38;
    goto LABEL_4;
  }

  v9 = v47;
  v16 = v48;
  sub_10000F894(0, 0xF000000000000000);
  v57 = 4;
  v24 = v41;
  v25 = sub_10002EC6C();
  v41 = v24;
  if (v24)
  {
    (*(v6 + 8))(v8, v5);
    goto LABEL_9;
  }

  v27 = v25;
  v28 = v8;
  v29 = v26;
  (*(v6 + 8))(v28, v5);
  v30 = v39;
  *&v42 = v40;
  *(&v42 + 1) = v39;
  v31 = v37;
  *&v43 = v38;
  *(&v43 + 1) = v37;
  *&v44 = v11;
  *(&v44 + 1) = v10;
  *&v45 = v9;
  *(&v45 + 1) = v16;
  *&v46 = v27;
  *(&v46 + 1) = v29;
  sub_10000E5B4(&v42, &v47);
  sub_1000121A8(a1);
  v47 = v40;
  v48 = v30;
  v49 = v38;
  v50 = v31;
  v51 = v11;
  v52 = v10;
  v53 = v9;
  v54 = v16;
  v55 = v27;
  v56 = v29;
  result = sub_10000E610(&v47);
  v32 = v45;
  v33 = v36;
  v36[2] = v44;
  v33[3] = v32;
  v33[4] = v46;
  v34 = v43;
  *v33 = v42;
  v33[1] = v34;
  return result;
}

unint64_t sub_10002CE94()
{
  result = qword_1000433D0;
  if (!qword_1000433D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000433D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SMSCTPartDictionary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SMSCTPartDictionary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002D03C()
{
  result = qword_1000433E0;
  if (!qword_1000433E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000433E0);
  }

  return result;
}

unint64_t sub_10002D094()
{
  result = qword_1000433E8;
  if (!qword_1000433E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000433E8);
  }

  return result;
}

unint64_t sub_10002D0EC()
{
  result = qword_1000433F0;
  if (!qword_1000433F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000433F0);
  }

  return result;
}

unint64_t sub_10002D140(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10003DE38;
  v6._object = a2;
  v4 = sub_10002EC5C(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10002D1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[1] = a3;
  v5 = sub_10002E74C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F74C();
  v9 = sub_10002EB6C();
  sub_10000C0EC(&qword_100042EB8, &unk_100034000);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100033FF0;
  sub_10002E70C();
  v11 = sub_10002E72C();
  v13 = v12;
  (*(v6 + 8))(v8, v5);
  v19[6] = v11;
  v19[7] = v13;
  v14 = sub_10002E6CC();
  v16 = v15;

  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_10000F798();
  *(v10 + 32) = v14;
  *(v10 + 40) = v16;
  v17 = sub_10002EA8C();
  sub_10002E03C("Unpacking image at path %{public}@", 34, 2, &_mh_execute_header, v9, v17, v10);

  v19[4] = a1;
  v19[5] = a2;
  sub_10002E29C();
  return sub_10002E6DC();
}

uint64_t sub_10002D3D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_10002E42C();
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C0EC(&qword_100043400, &unk_100035060);
  v7 = __chkstk_darwin(v6 - 8);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v41 - v10;
  __chkstk_darwin(v9);
  v13 = &v41 - v12;
  v14 = sub_10000C0EC(&qword_100043300, &qword_100034C80);
  __chkstk_darwin(v14 - 8);
  v16 = &v41 - v15;
  v17 = sub_10002E78C();
  v57 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v41 - v21;
  if (sub_10002E6FC())
  {
    sub_10002EA6C();
    sub_10000F74C();
    v23 = sub_10002EB6C();
    sub_10002E04C();

    sub_10002E7DC();
    sub_10002DD44(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    return swift_willThrow();
  }

  else
  {
    v49 = v17;
    v25 = sub_10002E71C();
    v55 = v25;
    v56 = &protocol witness table for File;
    v26 = sub_10001FE28(v54);
    (*(*(v25 - 8) + 16))(v26, a1, v25);
    sub_10002E27C();
    v27 = sub_10002E75C();
    (*(*(v27 - 8) + 56))(v16, 1, 1, v27);
    sub_10002E76C();
    v28 = sub_10000F74C();
    v29 = sub_10002EB6C();
    v30 = sub_10002EA8C();
    sub_10002E03C("Unpacking image with software HEIF->ASTC decoder", 48, 2, &_mh_execute_header, v29, v30, &_swiftEmptyArrayStorage);

    sub_10002E77C();
    sub_1000106D4(v54, v55);
    sub_10000C0EC(&qword_100043408, &unk_100035070);
    v31 = v50;
    sub_10002E3CC();
    if (v31)
    {
      (*(v57 + 8))(v22, v49);
      return sub_1000121A8(v54);
    }

    else
    {
      v41 = v28;
      v32 = v51;
      v33 = v53;
      if (v52 == 1)
      {
        v33 = 1;
        v32 = 0;
      }

      v50 = v32;
      if (v52 == 1)
      {
        v34 = 0;
      }

      else
      {
        v34 = v52;
      }

      v43 = v33;
      v44 = v34;
      sub_1000121A8(v54);
      v35 = sub_10002E29C();
      v42 = *(v35 - 8);
      v36 = *(v42 + 56);
      v36(v13, 1, 1, v35);
      (*(v57 + 16))(v20, v22, v49);
      (*(v46 + 104))(v5, enum case for StickerEffect.none(_:), v47);
      sub_10002E28C();
      sub_10002DBFC(v13);
      v36(v11, 0, 1, v35);
      v37 = v42;
      sub_10002DC64(v11, v13);
      v38 = v48;
      sub_10002DCD4(v13, v48);
      if ((*(v37 + 48))(v38, 1, v35) == 1)
      {
        sub_10002DBFC(v38);
        v39 = sub_10002EB6C();
        v40 = sub_10002EA8C();
        sub_10002E03C("Failed to generate astc iamge", 29, 2, &_mh_execute_header, v39, v40, &_swiftEmptyArrayStorage, v41);

        sub_10002E7DC();
        sub_10002DD44(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
        swift_allocError();
        sub_10002E7CC();
        swift_willThrow();
        sub_10002DBFC(v13);
        return (*(v57 + 8))(v22, v49);
      }

      else
      {
        sub_10002DBFC(v13);
        (*(v57 + 8))(v22, v49);
        return (*(v37 + 32))(v45, v38, v35);
      }
    }
  }
}

uint64_t sub_10002DB74@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10002EAAC();
  v4 = v3;
  result = sub_10002EA9C();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = result;
  return result;
}

uint64_t sub_10002DBFC(uint64_t a1)
{
  v2 = sub_10000C0EC(&qword_100043400, &unk_100035060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002DC64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C0EC(&qword_100043400, &unk_100035060);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002DCD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C0EC(&qword_100043400, &unk_100035060);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002DD44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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