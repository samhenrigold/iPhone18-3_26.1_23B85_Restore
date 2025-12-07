char *sub_1000352C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000352E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000352E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000388C(&qword_100094D10, &qword_100073E58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

unsigned __int8 *sub_1000353F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_100072BEC();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100035994(result, v5);
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
      result = sub_100072E8C();
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

uint64_t sub_100035994(uint64_t a1, unint64_t a2)
{
  v2 = sub_100072BFC();
  v6 = sub_100035A14(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100035A14(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_100072D7C();
    if (!v9 || (v10 = v9, v11 = sub_100035160(v9, 0), v12 = sub_100035B6C(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_100072B5C();

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
      return sub_100072B5C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_100072E8C();
LABEL_4:

  return sub_100072B5C();
}

unint64_t sub_100035B6C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_100035D8C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_100072BBC();
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
          result = sub_100072E8C();
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

    result = sub_100035D8C(v12, a6, a7);
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

    result = sub_100072B9C();
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

unint64_t sub_100035D8C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_100072BCC();
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
    v5 = sub_100072BAC();
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

void sub_100035E08(void (*a1)(void, void))
{
  v2 = [objc_opt_self() bagSubProfileVersion];
  if (!v2)
  {
    __break(1u);
  }

  v3 = v2;
  v4 = sub_100072B2C();
  v5 = [objc_opt_self() bagForProfile:v4 profileVersion:v3];

  v6 = sub_100072B2C();
  v7 = [v5 doubleForKey:v6];

  v35[0] = 0;
  v8 = [v7 valueWithError:v35];
  if (v8)
  {
    v9 = v8;
    v34 = v5;
    v10 = v35[0];
    v11 = arc4random_uniform(0x64u) / 100.0;
    [v9 doubleValue];
    if (v11 >= v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0x675F706D615F7078;
    }

    if (v11 >= v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0xEC00000073635F63;
    }

    if (qword_100094700 != -1)
    {
      swift_once();
    }

    v15 = sub_100071E7C();
    sub_100007DE8(v15, qword_1000999B0);

    v16 = v9;
    v17 = sub_100071E5C();
    v18 = sub_100072CFC();

    if (os_log_type_enabled(v17, v18))
    {
      v33 = a1;
      v19 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v19 = 136315906;
      *(v19 + 4) = sub_100034D20(0x697274656D2D6B67, 0xEE007463702D7363, &v36);
      *(v19 + 12) = 2048;
      [v16 doubleValue];
      *(v19 + 14) = v20;
      *(v19 + 22) = 2048;
      *(v19 + 24) = v11;
      *(v19 + 32) = 2080;
      v35[0] = v13;
      v35[1] = v14;

      sub_10000388C(&qword_100095C30, &qword_1000750B0);
      v21 = sub_100072B4C();
      v23 = sub_100034D20(v21, v22, &v36);

      *(v19 + 34) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "fetchMetricsPercentage %s - %f. Candidate Percentage: %f => Topic: %s", v19, 0x2Au);
      swift_arrayDestroy();

      a1 = v33;
    }

    a1(v13, v14);
  }

  else
  {
    v24 = v35[0];
    v25 = sub_100071C1C();

    swift_willThrow();
    if (qword_100094700 != -1)
    {
      swift_once();
    }

    v26 = sub_100071E7C();
    sub_100007DE8(v26, qword_1000999B0);
    swift_errorRetain();
    v27 = sub_100071E5C();
    v28 = sub_100072CFC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v35[0] = swift_slowAlloc();
      *v29 = 136315394;
      *(v29 + 4) = sub_100034D20(0x697274656D2D6B67, 0xEE007463702D7363, v35);
      *(v29 + 12) = 2080;
      v36 = v25;
      swift_errorRetain();
      sub_10000388C(&qword_100094BF8, qword_100073CB0);
      v30 = sub_100072B4C();
      v32 = sub_100034D20(v30, v31, v35);

      *(v29 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v27, v28, "fetchMetricsPercentage %s - defaulting to 0, unable to retrieve: %s", v29, 0x16u);
      swift_arrayDestroy();
    }

    a1(0, 0);
  }
}

void sub_10003638C(uint64_t a1, unint64_t a2, void (*a3)(id), uint64_t a4)
{
  v6 = [objc_opt_self() bagSubProfileVersion];
  if (!v6)
  {

    __break(1u);
  }

  v7 = v6;
  v8 = sub_100072B2C();
  v9 = [objc_opt_self() bagForProfile:v8 profileVersion:v7];

  v10 = sub_100072B2C();
  v31 = v9;
  v11 = [v9 doubleForKey:v10];

  v33 = 0;
  v12 = [v11 valueWithError:&v33];
  if (v12)
  {
    v13 = v12;
    v14 = qword_100094700;
    v15 = v33;
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = sub_100071E7C();
    sub_100007DE8(v16, qword_1000999B0);

    v17 = v13;
    v18 = sub_100071E5C();
    v19 = sub_100072CFC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33 = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_100034D20(a1, a2, &v33);
      *(v20 + 12) = 2048;
      [v17 doubleValue];
      *(v20 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "fetchLivePreviewRateInSeconds %s - %f", v20, 0x16u);
      sub_100007F50(v21);
    }

    a3([v17 doubleValue]);
  }

  else
  {
    v23 = v33;
    sub_100071C1C();

    swift_willThrow();
    if (qword_100094700 != -1)
    {
      swift_once();
    }

    v24 = sub_100071E7C();
    sub_100007DE8(v24, qword_1000999B0);

    swift_errorRetain();
    v25 = sub_100071E5C();
    v26 = sub_100072CFC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v27 = 136315650;
      *(v27 + 4) = sub_100034D20(a1, a2, &v33);
      *(v27 + 12) = 2048;
      *(v27 + 14) = 0x3FF0000000000000;
      *(v27 + 22) = 2080;
      swift_errorRetain();
      sub_10000388C(&qword_100094BF8, qword_100073CB0);
      v28 = sub_100072B4C();
      v30 = sub_100034D20(v28, v29, &v33);

      *(v27 + 24) = v30;
      _os_log_impl(&_mh_execute_header, v25, v26, "fetchLivePreviewRateInSeconds %s - defaulting to %f, unable to retrieve: %s", v27, 0x20u);
      swift_arrayDestroy();
    }

    (a3)(1.0);
  }
}

void sub_100036850(uint64_t a1)
{
  v2 = sub_100071C9C();
  v116 = *(v2 - 8);
  __chkstk_darwin(v2);
  v109 = (&v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v105 = &v104 - v5;
  __chkstk_darwin(v6);
  v8 = &v104 - v7;
  __chkstk_darwin(v9);
  v113 = &v104 - v10;
  v11 = type metadata accessor for GameCenterStore.CacheConfig(0);
  __chkstk_darwin(v11);
  v107 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v106 = &v104 - v14;
  __chkstk_darwin(v15);
  v17 = &v104 - v16;
  if (qword_1000946F8 != -1)
  {
    swift_once();
  }

  v18 = sub_100071E7C();
  v19 = sub_100007DE8(v18, qword_100099998);
  sub_10003B114(a1, v17, type metadata accessor for GameCenterStore.CacheConfig);
  v117 = v19;
  v20 = sub_100071E5C();
  v21 = sub_100072CFC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 136315138;
    v118 = v23;
    v119 = 0x5F726579616C70;
    v120 = 0xE700000000000000;
    sub_100072B7C(*&v17[*(v11 + 24)]);
    v108 = a1;
    v112 = v11;
    v24 = v2;
    v25 = v113;
    sub_100071C5C();

    sub_10003ACC8(&qword_100094C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v26 = sub_100072FEC();
    v28 = v27;
    (*(v116 + 8))(v25, v24);
    sub_10003B17C(v17, type metadata accessor for GameCenterStore.CacheConfig);
    v29 = sub_100034D20(v26, v28, &v118);
    v2 = v24;
    v11 = v112;
    a1 = v108;

    *(v22 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "Cache player metadata url = %s", v22, 0xCu);
    sub_100007F50(v23);
  }

  else
  {

    sub_10003B17C(v17, type metadata accessor for GameCenterStore.CacheConfig);
  }

  v30 = sub_10006CEA0();
  if (v30)
  {
    v31 = v30;
    v32 = [v30 alias];
    v33 = sub_100072B3C();
    v114 = v34;
    v115 = v33;
  }

  else
  {
    v115 = 0x6E776F6E6B6E75;
    v114 = 0xE700000000000000;
  }

  v119 = 0x5F726579616C70;
  v120 = 0xE700000000000000;
  v35 = (a1 + *(v11 + 24));
  v121._countAndFlagsBits = *v35;
  v110 = v35[1];
  v121._object = v110;
  countAndFlagsBits = v121._countAndFlagsBits;
  sub_100072B7C(v121);
  sub_100071C5C();

  v36 = sub_100071CAC();
  v38 = v37;
  v112 = v11;
  v39 = v116 + 8;
  v40 = *(v116 + 8);
  v40(v8, v2);
  sub_100071BBC();
  swift_allocObject();
  sub_100071BAC();
  sub_100071B9C();
  v116 = v39;
  v108 = a1;
  sub_1000086B8(v36, v38);

  v42 = v119;
  v41 = v120;
  v43 = sub_100071E5C();
  v44 = sub_100072CFC();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "Cached player appears to exist - comparing name to logged in player...", v45, 2u);
  }

  v46 = sub_100071E5C();
  v47 = sub_100072CFC();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = v2;
    v50 = swift_slowAlloc();
    v119 = v50;
    *v48 = 136315138;
    *(v48 + 4) = sub_100034D20(v42, v41, &v119);
    _os_log_impl(&_mh_execute_header, v46, v47, "Cached player is %s", v48, 0xCu);
    sub_100007F50(v50);
    v2 = v49;
  }

  v51 = v114;
  if (v42 == v115 && v41 == v114)
  {

LABEL_19:

    v53 = sub_100071E5C();
    v54 = sub_100072CFC();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "The cache is still valid. Deferring to it for data where possible.", v55, 2u);
    }

    return;
  }

  v52 = sub_100072FFC();

  if (v52)
  {
    goto LABEL_19;
  }

  v56 = sub_100071E5C();
  v57 = sub_100072CFC();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&_mh_execute_header, v56, v57, "The cache is out of date. Erasing it and fetching new data.", v58, 2u);
  }

  v59 = objc_opt_self();
  v60 = &SeededRandomNumberGenerator;
  v61 = [v59 defaultManager];
  v62 = v113;
  v63 = v108;
  sub_100071C4C();
  sub_100071C3C(v64);
  v66 = v65;
  v40(v62, v2);
  v119 = 0;
  LODWORD(v62) = [v61 removeItemAtURL:v66 error:&v119];

  v67 = v119;
  if (v62)
  {
    v68 = v106;
    sub_10003B114(v63, v106, type metadata accessor for GameCenterStore.CacheConfig);
    v69 = v67;
    v70 = sub_100071E5C();
    v71 = sub_100072CFC();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v119 = v104;
      *v72 = 136315138;
      v73 = v113;
      sub_100071C4C();
      v74 = sub_100071C7C();
      v109 = v59;
      v75 = v40;
      v76 = v2;
      v78 = v77;
      v75(v73, v76);
      sub_10003B17C(v68, type metadata accessor for GameCenterStore.CacheConfig);
      v79 = sub_100034D20(v74, v78, &v119);
      v2 = v76;
      v40 = v75;
      v59 = v109;

      *(v72 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v70, v71, "Deleted cache directory at %s", v72, 0xCu);
      sub_100007F50(v104);
      v51 = v114;

      v60 = &SeededRandomNumberGenerator;
    }

    else
    {

      sub_10003B17C(v68, type metadata accessor for GameCenterStore.CacheConfig);
    }
  }

  else
  {
    v80 = v119;
    sub_100071C1C();

    swift_willThrow();
  }

  v81 = [v59 *&v60[14].ivar_base_size];
  v82 = v113;
  v83 = v108;
  sub_100071C5C();
  sub_100071C3C(v84);
  v86 = v85;
  v40(v82, v2);
  v119 = 0;
  LODWORD(v82) = [v81 removeItemAtURL:v86 error:&v119];

  v87 = v119;
  if (v82)
  {
    v88 = v107;
    sub_10003B114(v83, v107, type metadata accessor for GameCenterStore.CacheConfig);
    v89 = v87;
    v90 = sub_100071E5C();
    v91 = sub_100072CFC();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v119 = v109;
      *v92 = 136315138;
      v93 = v113;
      sub_100071C5C();
      v94 = sub_100071C7C();
      v95 = v2;
      v97 = v96;
      v40(v93, v95);
      sub_10003B17C(v88, type metadata accessor for GameCenterStore.CacheConfig);
      v98 = sub_100034D20(v94, v97, &v119);
      v2 = v95;
      v51 = v114;

      *(v92 + 4) = v98;
      _os_log_impl(&_mh_execute_header, v90, v91, "Deleted cache metadata at %s", v92, 0xCu);
      sub_100007F50(v109);
    }

    else
    {

      sub_10003B17C(v88, type metadata accessor for GameCenterStore.CacheConfig);
    }
  }

  else
  {
    v99 = v119;
    sub_100071C1C();

    swift_willThrow();
  }

  sub_100071BEC();
  swift_allocObject();
  sub_100071BDC();
  v119 = v115;
  v120 = v51;
  v100 = sub_100071BCC();
  v102 = v101;

  v119 = 0x5F726579616C70;
  v120 = 0xE700000000000000;
  v122._object = v110;
  v122._countAndFlagsBits = countAndFlagsBits;
  sub_100072B7C(v122);
  v103 = v105;
  sub_100071C5C();

  sub_100071CDC();
  v40(v103, v2);
  sub_1000086B8(v100, v102);
}

uint64_t sub_1000379B0(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for GameCenterStore.CacheConfig(0);
  __chkstk_darwin(v3);
  v142 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v140 = &v134 - v6;
  v153 = sub_100071C9C();
  v144 = *(v153 - 8);
  v7 = v144;
  __chkstk_darwin(v153);
  v143 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v139 = &v134 - v10;
  __chkstk_darwin(v11);
  v141 = &v134 - v12;
  __chkstk_darwin(v13);
  v15 = &v134 - v14;
  v16 = sub_100071D4C();
  v155 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v134 - v20;
  __chkstk_darwin(v22);
  v24 = &v134 - v23;
  __chkstk_darwin(v25);
  v149 = &v134 - v26;
  __chkstk_darwin(v27);
  v29 = &v134 - v28;
  __chkstk_darwin(v30);
  v154 = &v134 - v31;
  sub_100071D3C();
  v32 = (a1 + *(v3 + 24));
  v33 = *v32;
  v145 = v32[1];
  v146 = v33;
  v151 = a1;
  sub_100071C5C();
  v147 = sub_100071CAC();
  v148 = v34;
  v134 = v24;
  v135 = v21;
  v136 = v18;
  v137 = v3;
  v138 = v29;
  v150 = *(v7 + 8);
  v150(v15, v153);
  sub_100071BBC();
  swift_allocObject();
  sub_100071BAC();
  sub_10003ACC8(&qword_100095C20, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v36 = v148;
  v35 = v149;
  v37 = v147;
  sub_100071B9C();
  v152 = 0;
  v38 = v7 + 8;
  sub_1000086B8(v37, v36);

  v39 = v155;
  v40 = v155[4];
  v41 = v138;
  v147 = v16;
  v40(v138, v35, v16);
  if (qword_1000946F8 != -1)
  {
    swift_once();
  }

  v42 = sub_100071E7C();
  v149 = sub_100007DE8(v42, qword_100099998);
  v43 = sub_100071E5C();
  v44 = sub_100072CFC();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "Cache appears to exist - checking creation date...", v45, 2u);
  }

  v144 = v38;

  v46 = v39[2];
  v47 = v134;
  v48 = v41;
  v49 = v147;
  v46(v134, v48, v147);
  v50 = sub_100071E5C();
  v51 = sub_100072CFC();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v156 = v53;
    *v52 = 136315138;
    sub_10003ACC8(&qword_100095C28, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v54 = sub_100072FEC();
    v56 = v55;
    v148 = v155[1];
    v148(v47, v49);
    v57 = sub_100034D20(v54, v56, &v156);

    *(v52 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v50, v51, "Decoded cache creation date %s", v52, 0xCu);
    sub_100007F50(v53);
  }

  else
  {

    v148 = v39[1];
    v148(v47, v49);
  }

  v58 = v49;
  v59 = v135;
  v60 = v138;
  v61 = v154;
  sub_100071CEC();
  v63 = v62;
  v46(v59, v61, v58);
  v64 = sub_100071E5C();
  v65 = sub_100072CFC();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v155 = v46;
    v67 = v59;
    v68 = v66;
    v69 = swift_slowAlloc();
    v156 = v69;
    *v68 = 136315138;
    sub_10003ACC8(&qword_100095C28, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v70 = sub_100072FEC();
    v72 = v71;
    v46 = v155;
    v148(v67, v147);
    v73 = sub_100034D20(v70, v72, &v156);
    v58 = v147;

    *(v68 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v64, v65, "Current date = %s", v68, 0xCu);
    sub_100007F50(v69);
  }

  else
  {

    v148(v59, v58);
  }

  v74 = v136;
  v46(v136, v60, v58);
  v75 = sub_100071E5C();
  v76 = sub_100072CFC();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v156 = v78;
    *v77 = 136315138;
    sub_10003ACC8(&qword_100095C28, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v79 = sub_100072FEC();
    v80 = v74;
    v82 = v81;
    v148(v80, v58);
    v83 = sub_100034D20(v79, v82, &v156);

    *(v77 + 4) = v83;
    _os_log_impl(&_mh_execute_header, v75, v76, "Cache creation date = %s", v77, 0xCu);
    sub_100007F50(v78);
  }

  else
  {

    v148(v74, v58);
  }

  v84 = v154;
  v85 = v151;
  v86 = v142;
  v87 = v137;
  v88 = sub_100071E5C();
  v89 = sub_100072CFC();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 134217984;
    *(v90 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v88, v89, "Time since cache creation date = %f", v90, 0xCu);
  }

  v91 = v140;
  sub_10003B114(v85, v140, type metadata accessor for GameCenterStore.CacheConfig);
  v92 = sub_100071E5C();
  v93 = sub_100072CFC();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = v91;
    v96 = v94;
    *v94 = 134217984;
    v97 = *(v95 + *(v87 + 28));
    sub_10003B17C(v95, type metadata accessor for GameCenterStore.CacheConfig);
    *(v96 + 1) = v97;
    _os_log_impl(&_mh_execute_header, v92, v93, "Cache TTL = %ld", v96, 0xCu);
  }

  else
  {
    sub_10003B17C(v91, type metadata accessor for GameCenterStore.CacheConfig);
  }

  v98 = v141;

  if (v63 > *(v85 + *(v87 + 28)) && [objc_opt_self() _gkIsOnline])
  {
    v99 = sub_100071E5C();
    v100 = sub_100072CFC();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&_mh_execute_header, v99, v100, "The cache is out of date. Erasing it and fetching new data.", v101, 2u);
    }

    v102 = [objc_opt_self() defaultManager];
    sub_100071C4C();
    sub_100071C3C(v103);
    v105 = v104;
    v150(v98, v153);
    v156 = 0;
    v106 = [v102 removeItemAtURL:v105 error:&v156];

    v107 = v156;
    if (v106)
    {
      sub_10003B114(v85, v86, type metadata accessor for GameCenterStore.CacheConfig);
      v108 = v107;
      v109 = sub_100071E5C();
      v110 = sub_100072CFC();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        v156 = v155;
        *v111 = 136315138;
        sub_100071C4C();
        v112 = sub_100071C7C();
        v113 = v86;
        v115 = v114;
        v150(v98, v153);
        sub_10003B17C(v113, type metadata accessor for GameCenterStore.CacheConfig);
        v116 = sub_100034D20(v112, v115, &v156);

        *(v111 + 4) = v116;
        _os_log_impl(&_mh_execute_header, v109, v110, "Deleted cache directory at %s", v111, 0xCu);
        sub_100007F50(v155);
      }

      else
      {

        sub_10003B17C(v86, type metadata accessor for GameCenterStore.CacheConfig);
      }

      v121 = v152;
    }

    else
    {
      v120 = v156;
      sub_100071C1C();

      swift_willThrow();

      v121 = 0;
    }

    sub_100071BEC();
    swift_allocObject();
    sub_100071BDC();
    sub_10003ACC8(&qword_100095C18, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v122 = sub_100071BCC();
    if (v121)
    {

      swift_errorRetain();
      v127 = sub_100071E5C();
      v128 = sub_100072CFC();

      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        *v129 = 138412290;
        swift_errorRetain();
        v131 = _swift_stdlib_bridgeErrorToNSError();
        *(v129 + 4) = v131;
        *v130 = v131;
        _os_log_impl(&_mh_execute_header, v127, v128, "Failed to write JSON data with error: %@", v129, 0xCu);
        sub_100004890(v130, &qword_100095BD8, &qword_100075090);
      }
    }

    else
    {
      v124 = v122;
      v125 = v123;

      v126 = v139;
      sub_100071C5C();
      sub_100071CDC();
      sub_1000086B8(v124, v125);
      v150(v126, v153);
    }
  }

  else
  {
    v117 = sub_100071E5C();
    v118 = sub_100072CFC();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&_mh_execute_header, v117, v118, "The cache is still valid. Deferring to it for data where possible.", v119, 2u);
    }
  }

  v132 = v148;
  v148(v138, v58);
  return v132(v84, v58);
}

uint64_t sub_100038D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v31 = a4;
  v32 = a2;
  v30 = type metadata accessor for GameCenterStore.CacheConfig(0);
  __chkstk_darwin(v30);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100071C9C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  v18 = [objc_opt_self() defaultManager];
  v19 = [v18 URLsForDirectory:13 inDomains:1];

  v20 = sub_100072C4C();
  if (*(v20 + 16))
  {
    v21 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v29 = a1;
    v22 = a3;
    v23 = *(v12 + 16);
    v23(v14, v20 + v21, v11);

    (*(v12 + 32))(v17, v14, v11);
    v23(v10, v17, v11);
    v24 = v30;
    v25 = &v10[*(v30 + 20)];
    *v25 = v31;
    v25[1] = a5;
    v26 = &v10[*(v24 + 24)];
    *v26 = v32;
    v26[1] = v22;
    *&v10[*(v24 + 28)] = v29;

    sub_100036850(v10);
    sub_1000379B0(v10, v27);
    sub_10003B17C(v10, type metadata accessor for GameCenterStore.CacheConfig);
    return (*(v12 + 8))(v17, v11);
  }

  else
  {
  }
}

uint64_t sub_100039054()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000390B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000390CC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100039110()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100039148(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_100072FFC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646944726F727265 && a2 == 0xED0000727563634FLL || (sub_100072FFC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D69547972746572 && a2 == 0xE900000000000065 || (sub_100072FFC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x44496568636163 && a2 == 0xE700000000000000 || (sub_100072FFC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6146746567646977 && a2 == 0xEC000000796C696DLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_100072FFC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void sub_10003930C(uint64_t a1, unint64_t a2, void (*a3)(id), uint64_t a4)
{
  v6 = [objc_opt_self() bagSubProfileVersion];
  if (!v6)
  {

    __break(1u);
  }

  v7 = v6;
  v8 = sub_100072B2C();
  v9 = [objc_opt_self() bagForProfile:v8 profileVersion:v7];

  v10 = sub_100072B2C();
  v11 = [v9 integerForKey:v10];

  v31 = 0;
  v12 = [v11 valueWithError:&v31];
  if (v12)
  {
    v13 = v12;
    v14 = qword_100094700;
    v15 = v31;
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = sub_100071E7C();
    sub_100007DE8(v16, qword_1000999B0);

    v17 = v13;
    v18 = sub_100071E5C();
    v19 = sub_100072CFC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_100034D20(a1, a2, &v31);
      *(v20 + 12) = 2048;
      *(v20 + 14) = [v17 integerValue];

      _os_log_impl(&_mh_execute_header, v18, v19, "fetchTTLInSeconds %s - %ld", v20, 0x16u);
      sub_100007F50(v21);
    }

    else
    {
    }

    a3([v17 integerValue]);
  }

  else
  {
    v22 = v31;
    sub_100071C1C();

    swift_willThrow();
    if (qword_100094700 != -1)
    {
      swift_once();
    }

    v23 = sub_100071E7C();
    sub_100007DE8(v23, qword_1000999B0);

    swift_errorRetain();
    v24 = sub_100071E5C();
    v25 = sub_100072CFC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v26 = 136315650;
      *(v26 + 4) = sub_100034D20(a1, a2, &v31);
      *(v26 + 12) = 2048;
      *(v26 + 14) = 86400;
      *(v26 + 22) = 2080;
      swift_errorRetain();
      sub_10000388C(&qword_100094BF8, qword_100073CB0);
      v27 = sub_100072B4C();
      v29 = sub_100034D20(v27, v28, &v31);

      *(v26 + 24) = v29;
      _os_log_impl(&_mh_execute_header, v24, v25, "fetchTTLInSeconds %s - defaulting to %ld, unable to retrieve: %s", v26, 0x20u);
      swift_arrayDestroy();
    }

    a3(86400);
  }
}

void sub_1000397D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t), uint64_t a6)
{
  v51 = a4;
  v48 = a1;
  v10 = sub_1000729DC();
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  __chkstk_darwin(v10);
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v52 = v12;
  v13 = qword_1000946F8;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = sub_100071E7C();
  sub_100007DE8(v14, qword_100099998);
  v15 = sub_100071E5C();
  v16 = sub_100072CFC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "fetchAppDisplayDataForContinuePlaying", v17, 2u);
  }

  v18 = sub_10006CEA0();
  if (v18)
  {
    v19 = v18;
    v20 = v18;
    v21 = sub_100071E5C();
    v22 = sub_100072CFC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v24 = v19;
      v25 = v20;
      _os_log_impl(&_mh_execute_header, v21, v22, "Current player is %@", v23, 0xCu);
      sub_100004890(v24, &qword_100095BD8, &qword_100075090);
    }

    v46 = a2;

    v26 = [objc_opt_self() proxyForPlayer:v20];
    v47 = [v26 gameServicePrivate];

    v27 = [v20 internal];
    v28 = [v27 playerID];

    if (!v28)
    {
      sub_100072B3C();
      v28 = sub_100072B2C();
    }

    v44 = v20;
    v45 = a3;
    if (qword_100094710 != -1)
    {
      swift_once();
    }

    v43 = qword_100095B38;
    isa = sub_100072CBC().super.super.isa;
    v30 = v49;
    v31 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = v50;
    (*(v49 + 16))(v31, v48, v50);
    v33 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v34 = (v11 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    v36 = v52;
    *(v35 + 16) = sub_10003AE98;
    *(v35 + 24) = v36;
    (*(v30 + 32))(v35 + v33, v31, v32);
    *(v35 + v34) = v51;
    v37 = (v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8));
    v38 = v45;
    *v37 = v46;
    v37[1] = v38;
    aBlock[4] = sub_10003AFA4;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100032D0C;
    aBlock[3] = &unk_100092868;
    v39 = _Block_copy(aBlock);

    [v47 getGamesPlayedSummaries:v28 limit:v43 withinSecs:isa handler:v39];
    _Block_release(v39);

    swift_unknownObjectRelease();
  }

  else
  {
    v40 = sub_100071E5C();
    v41 = sub_100072CFC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Unable to get local player!", v42, 2u);
    }

    a5(&_swiftEmptyArrayStorage, 1);
  }
}

void *sub_100039D70(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return &_swiftEmptyArrayStorage;
    }

    v3 = result;
    sub_10000388C(&qword_100095C78, &qword_1000750F8);
    v4 = sub_100072C7C();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

void sub_100039E0C(void **a1, NSObject *a2, uint64_t a3)
{
  v7 = sub_10000388C(&qword_100094E50, &qword_100074180);
  __chkstk_darwin(v7 - 8);
  v9 = &v49[-v8];
  v10 = sub_100071C9C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v49[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = &v49[-v16];
  v18 = *a1;
  v19 = [v18 identifier];
  if (!v19)
  {
    goto LABEL_4;
  }

  v57 = a2;
  v55 = a3;
  v20 = v19;
  v54 = sub_100072B3C();
  v22 = v21;

  sub_100072D4C();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_100004890(v9, &qword_100094E50, &qword_100074180);
    a3 = v55;
    a2 = v57;
LABEL_4:
    v23 = [v18 playerInternal];
    if (v23)
    {
      v24 = v23;
      dispatch_group_enter(a2);
      v25 = [objc_allocWithZone(GKPlayer) initWithInternalRepresentation:v24];
      v26 = swift_allocObject();
      v26[2] = a3;
      v26[3] = v24;
      v26[4] = a2;
      aBlock[4] = sub_10003ACBC;
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000348E4;
      aBlock[3] = &unk_1000927A0;
      v27 = a2;
      v28 = _Block_copy(aBlock);

      v29 = v27;
      v30 = v24;

      [v25 playerAvatarImageWithSize:0x10000 completionHandler:v28];
      _Block_release(v28);
    }

    return;
  }

  (*(v11 + 32))(v17, v9, v10);
  v31 = v57;
  dispatch_group_enter(v57);
  if (qword_100094708 != -1)
  {
    swift_once();
  }

  v32 = sub_100071E7C();
  sub_100007DE8(v32, qword_1000999C8);
  (*(v11 + 16))(v13, v17, v10);

  v33 = sub_100071E5C();
  v34 = sub_100072CFC();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v52 = v3;
    v36 = v35;
    v51 = swift_slowAlloc();
    aBlock[0] = v51;
    *v36 = 136315394;
    sub_10003ACC8(&qword_100094C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v50 = v34;
    v37 = sub_100072FEC();
    v39 = v38;
    v40 = *(v11 + 8);
    v53 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v41 = v13;
    v42 = v40;
    v40(v41, v10);
    v43 = sub_100034D20(v37, v39, aBlock);
    v31 = v57;

    *(v36 + 4) = v43;
    *(v36 + 12) = 2080;
    v44 = v54;
    *(v36 + 14) = sub_100034D20(v54, v22, aBlock);
    _os_log_impl(&_mh_execute_header, v33, v50, "Fetching avatar %s for %s", v36, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v45 = *(v11 + 8);
    v53 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v46 = v13;
    v42 = v45;
    v45(v46, v10);
    v44 = v54;
  }

  v47 = v55;

  v48 = v31;
  sub_10000997C(v17, v44, v22, v47, v44, v22, v48);

  swift_bridgeObjectRelease_n();

  v42(v17, v10);
}

id sub_10003A3B0(void **a1, NSObject *a2, uint64_t a3)
{
  v46 = a3;
  v5 = sub_10000388C(&qword_100094E50, &qword_100074180);
  __chkstk_darwin(v5 - 8);
  v7 = &v41[-v6];
  v8 = sub_100071C9C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v45 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v47 = &v41[-v12];
  v13 = *a1;
  if (qword_100094708 != -1)
  {
    swift_once();
  }

  v14 = sub_100071E7C();
  v15 = sub_100007DE8(v14, qword_1000999C8);
  v16 = v13;
  v44 = v15;
  v17 = sub_100071E5C();
  v18 = sub_100072CFC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v43 = v9;
    v20 = v19;
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v16;
    *v21 = v16;
    v22 = v16;
    _os_log_impl(&_mh_execute_header, v17, v18, "game is %@", v20, 0xCu);
    sub_100004890(v21, &qword_100095BD8, &qword_100075090);

    v9 = v43;
  }

  result = [v16 identifier];
  if (result)
  {
    v24 = result;
    v25 = sub_100072B3C();
    v27 = v26;

    sub_100072D3C();
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {

      return sub_100004890(v7, &qword_100094E50, &qword_100074180);
    }

    else
    {
      v43 = v25;
      v28 = v47;
      (*(v9 + 32))(v47, v7, v8);
      dispatch_group_enter(a2);
      v29 = v45;
      (*(v9 + 16))(v45, v28, v8);

      v30 = sub_100071E5C();
      v31 = sub_100072CFC();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v48 = v44;
        *v32 = 136315394;
        sub_10003ACC8(&qword_100094C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v42 = v31;
        v33 = sub_100072FEC();
        v35 = v34;
        v45 = *(v9 + 8);
        (v45)(v29, v8);
        v36 = sub_100034D20(v33, v35, &v48);

        *(v32 + 4) = v36;
        *(v32 + 12) = 2080;
        v37 = v43;
        *(v32 + 14) = sub_100034D20(v43, v27, &v48);
        _os_log_impl(&_mh_execute_header, v30, v42, "Fetching icon %s for %s", v32, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v45 = *(v9 + 8);
        (v45)(v29, v8);
        v37 = v43;
      }

      v38 = v46;

      v39 = a2;
      v40 = v47;
      sub_10000997C(v47, v37, v27, v38, v37, v27, v39);

      swift_bridgeObjectRelease_n();

      return (v45)(v40, v8);
    }
  }

  return result;
}

void sub_10003A92C(id *a1, NSObject *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = [*a1 relationships];
  v6 = [v5 players];

  if (v6)
  {
    sub_10000F74C(0, &qword_100094D00, GKPlayerActivityRelationshipPlayer_ptr);
    v7 = sub_100072C4C();

    if (v7 >> 62)
    {
      goto LABEL_14;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v4; v8; i = v4)
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = sub_100072E6C();
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v4 = (v9 + 1);
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v22 = v10;
        sub_100039E0C(&v22, a2, a3);

        ++v9;
        if (v4 == v8)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v8 = sub_100072EDC();
    }

LABEL_15:

    v4 = i;
  }

  v12 = [v4 relationships];
  v13 = [v12 games];

  if (v13)
  {
    sub_10000F74C(0, &qword_100094CF8, GKPlayerActivityRelationshipGame_ptr);
    v14 = sub_100072C4C();

    if (v14 >> 62)
    {
      goto LABEL_29;
    }

    for (j = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_100072EDC())
    {
      v16 = 0;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = sub_100072E6C();
        }

        else
        {
          if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v17 = *(v14 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        v22 = v17;
        sub_10003A3B0(&v22, a2, a3);

        ++v16;
        if (v19 == j)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      ;
    }

LABEL_30:
  }
}

uint64_t sub_10003ABBC()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_10003AC10()
{
  result = qword_100095BF8;
  if (!qword_100095BF8)
  {
    sub_1000038D4(&qword_100095BF0, &qword_100075098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095BF8);
  }

  return result;
}

uint64_t sub_10003AC74()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003ACC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003AD30()
{
  v1 = sub_1000729DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10003ADE4(uint64_t a1)
{
  v3 = *(sub_1000729DC() - 8);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = (v1 + v6);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v7);
  v13 = *(v1 + v7 + 8);

  return sub_10002D05C(a1, v8, v1 + v5, v10, v11, v12, v13, v4);
}

uint64_t sub_10003AEC0()
{
  v1 = sub_1000729DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10003AFA4(unint64_t a1, uint64_t a2)
{
  v5 = *(sub_1000729DC() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  return sub_10002D114(a1, a2, v9, v10, v2 + v6, v8, v12, v13);
}

uint64_t sub_10003B114(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003B17C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003B1DC()
{
  v1 = sub_1000729DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

void sub_10003B2A8(uint64_t a1)
{
  v3 = *(sub_1000729DC() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_10002F27C(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v6, *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

_OWORD *sub_10003B36C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10003B398(__n128 a1)
{
  v2 = *(type metadata accessor for AppMetadata(0) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1 + v4;
  v7 = sub_100071D4C();
  (*(*(v7 - 8) + 8))(v6, v7);

  return _swift_deallocObject(v1, v5 + 8, v3 | 7);
}

uint64_t sub_10003B500(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t), __n128 a4)
{
  v7 = *(type metadata accessor for AppMetadata(0) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v4 + 16);
  v11 = *(v4 + v9);
  v12 = *(v4 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, a2, v10, v4 + v8, v11, v12);
}

uint64_t sub_10003B5D0(__n128 a1)
{
  v2 = *(type metadata accessor for AppMetadata(0) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = sub_1000729DC();
  v6 = *(v13 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + ((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7;
  v12 = v3 | v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = sub_100071D4C();
  (*(*(v10 - 8) + 8))(v1 + v4, v10);

  (*(v6 + 8))(v1 + v8, v13);

  return _swift_deallocObject(v1, v9 + 8, v12 | 7);
}

void sub_10003B7F4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v6 = *(type metadata accessor for AppMetadata(0) - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(sub_1000729DC() - 8);
  v13 = (*(v12 + 80) + v11 + 16) & ~*(v12 + 80);
  sub_1000306E4(a1, a2, *(v3 + 16), (v3 + v7), *(v3 + v8), *(v3 + v9), *(v3 + v10), *(v3 + v11), *(v3 + v11 + 8), (v3 + v13), *(v3 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10003B94C()
{
  v1 = sub_1000729DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10003BA40()
{
  v1 = *(sub_1000729DC() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_100031A08(v4, (v0 + v2), v5, v7, v8);
}

uint64_t sub_10003BB00(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003BB38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003BBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100071D4C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10003BC88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100071D4C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003BD44(uint64_t a1)
{
  result = sub_100071D4C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CacheType(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CacheType(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_10003BED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100071C9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10003BFA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100071C9C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003C060(uint64_t a1)
{
  result = sub_100071C9C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10003C0E4()
{
  result = qword_100095DD8;
  if (!qword_100095DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095DD8);
  }

  return result;
}

void *sub_10003C138(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10003C17C()
{
  result = qword_100095DE8;
  if (!qword_100095DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095DE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WidgetCreationAttempt.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WidgetCreationAttempt.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10003C340()
{
  result = qword_100095DF8;
  if (!qword_100095DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095DF8);
  }

  return result;
}

unint64_t sub_10003C398()
{
  result = qword_100095E00;
  if (!qword_100095E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095E00);
  }

  return result;
}

unint64_t sub_10003C3F0()
{
  result = qword_100095E08;
  if (!qword_100095E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095E08);
  }

  return result;
}

uint64_t sub_10003C4A0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for CPTimelineEntry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_100071F5C();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 254)
  {
    v15 = *(a1 + a3[8]);
    if (v15 >= 2)
    {
      return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v16 = sub_10000388C(&qword_100095568, &unk_100074960);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[9];
    goto LABEL_5;
  }

  v17 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[10];
    goto LABEL_5;
  }

  v18 = sub_10000388C(&qword_1000947E0, qword_100074040);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[11];
    goto LABEL_5;
  }

  v19 = sub_10000388C(&qword_100095260, qword_100074600);
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[12];

  return v20(v21, a2, v19);
}

uint64_t sub_10003C73C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for CPTimelineEntry(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_100071F5C();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 254)
  {
    *(a1 + a4[8]) = a2 + 1;
    return result;
  }

  v16 = sub_10000388C(&qword_100095568, &unk_100074960);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_5;
  }

  v17 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[10];
    goto LABEL_5;
  }

  v18 = sub_10000388C(&qword_1000947E0, qword_100074040);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[11];
    goto LABEL_5;
  }

  v19 = sub_10000388C(&qword_100095260, qword_100074600);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[12];

  return v20(v21, a2, a2, v19);
}

uint64_t type metadata accessor for CPAppGridView(uint64_t a1)
{
  result = qword_100095E68;
  if (!qword_100095E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003CA00(uint64_t a1)
{
  type metadata accessor for CPTimelineEntry(319);
  if (v1 <= 0x3F)
  {
    sub_100071F5C();
    if (v2 <= 0x3F)
    {
      sub_10003CB68(319, &qword_1000955D8, &type metadata accessor for RedactionReasons);
      if (v3 <= 0x3F)
      {
        sub_10003CB68(319, &qword_100094850, &type metadata accessor for WidgetRenderingMode);
        if (v4 <= 0x3F)
        {
          sub_10003CB68(319, &qword_100094858, &type metadata accessor for WidgetFamily);
          if (v5 <= 0x3F)
          {
            sub_10003CB68(319, &unk_1000952D0, &type metadata accessor for ColorScheme);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10003CB68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100071EBC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10003CBD8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007218C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CPAppGridView(0);
  sub_100004C94(v1 + *(v10 + 44), v9, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000729DC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_100072CEC();
    v13 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10003CDE0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007218C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000388C(&qword_100094900, &qword_1000762D0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CPAppGridView(0);
  sub_100004C94(v1 + *(v10 + 48), v9, &qword_100094900, &qword_1000762D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100071EAC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_100072CEC();
    v13 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10003CFE8()
{
  v1 = sub_100071EAC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = sub_10007297C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v21 - v13;
  type metadata accessor for CPAppGridView(0);
  v22 = v0;
  sub_1000129F8(v14);
  sub_10007296C();
  v15 = sub_10007295C();
  v16 = *(v9 + 8);
  v16(v11, v8);
  v16(v14, v8);
  v17 = [objc_opt_self() systemGray4Color];
  sub_10007274C();
  if ((v15 & 1) == 0)
  {
    sub_10003CDE0(v7);
    (*(v2 + 104))(v4, enum case for ColorScheme.dark(_:), v1);
    sub_100071E9C();
    v18 = *(v2 + 8);
    v18(v4, v1);
    v18(v7, v1);
  }

  v19 = sub_1000726FC();

  return v19;
}

uint64_t sub_10003D284@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = sub_100071EAC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = sub_10007297C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v26 - v14;
  type metadata accessor for CPAppGridView(0);
  v26 = v1;
  sub_1000129F8(v15);
  sub_10007296C();
  sub_10004279C(&qword_1000949D0, &type metadata accessor for WidgetRenderingMode, &protocol conformance descriptor for WidgetRenderingMode);
  v16 = sub_100072B1C();
  v17 = *(v10 + 8);
  v17(v12, v9);
  v17(v15, v9);
  if (v16)
  {
    v18 = enum case for BlendMode.normal(_:);
    v19 = sub_1000728BC();
    return (*(*(v19 - 8) + 104))(v27, v18, v19);
  }

  else
  {
    v21 = v27;
    sub_10003CDE0(v8);
    (*(v3 + 104))(v5, enum case for ColorScheme.dark(_:), v2);
    v22 = sub_100071E9C();
    v23 = *(v3 + 8);
    v23(v5, v2);
    v23(v8, v2);
    v24 = sub_1000728BC();
    if (v22)
    {
      v25 = &enum case for BlendMode.plusLighter(_:);
    }

    else
    {
      v25 = &enum case for BlendMode.plusDarker(_:);
    }

    return (*(*(v24 - 8) + 104))(v21, *v25, v24);
  }
}

double sub_10003D5A4()
{
  v0 = sub_1000729DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003CBD8(v3);
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for WidgetFamily.systemSmall(_:) || v4 == enum case for WidgetFamily.systemMedium(_:))
  {
    type metadata accessor for CPAppGridView(0);
    sub_100071F3C();
    v7 = 0.43;
LABEL_7:
    v8 = v6 * v7;
    return round(v8);
  }

  if (v4 == enum case for WidgetFamily.systemLarge(_:))
  {
    type metadata accessor for CPAppGridView(0);
    sub_100071F3C();
    v8 = v9 * 0.26;
    return round(v8);
  }

  if (v4 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    type metadata accessor for CPAppGridView(0);
    sub_100071F3C();
    v7 = 0.28;
    goto LABEL_7;
  }

  v12 = enum case for WidgetFamily.accessoryCircular(_:);
  v13 = enum case for WidgetFamily.accessoryRectangular(_:);
  v14 = enum case for WidgetFamily.accessoryInline(_:);
  v15 = v4;
  type metadata accessor for CPAppGridView(0);
  sub_100071F3C();
  v10 = round(v16 * 0.43);
  if (v15 != v12 && v15 != v13 && v15 != v14)
  {
    (*(v1 + 8))(v3, v0);
  }

  return v10;
}

double sub_10003D7B4()
{
  v0 = sub_1000729DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10003D5A4();
  sub_10003CBD8(v3);
  v5 = (*(v1 + 88))(v3, v0);
  if (v5 == enum case for WidgetFamily.systemSmall(_:) || v5 == enum case for WidgetFamily.systemMedium(_:))
  {
    v7 = 4.0;
    return v4 + v7;
  }

  if (v5 == enum case for WidgetFamily.systemLarge(_:))
  {
    return v4;
  }

  if (v5 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v7 = 8.0;
    return v4 + v7;
  }

  if (v5 != enum case for WidgetFamily.accessoryCircular(_:) && v5 != enum case for WidgetFamily.accessoryRectangular(_:) && v5 != enum case for WidgetFamily.accessoryInline(_:))
  {
    (*(v1 + 8))(v3, v0);
  }

  return v4;
}

double sub_10003D93C()
{
  v1 = sub_10007218C();
  v18 = *(v1 - 8);
  v19 = v1;
  __chkstk_darwin(v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = sub_1000729DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for CPAppGridView(0) + 44);
  v17 = v0;
  sub_100004C94(v0 + v11, v6, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_100072CEC();
    v12 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    (*(v18 + 8))(v3, v19);
  }

  v13 = (*(v8 + 88))(v10, v7);
  result = 0.0;
  if (v13 != enum case for WidgetFamily.systemSmall(_:) && v13 != enum case for WidgetFamily.systemMedium(_:) && v13 != enum case for WidgetFamily.systemLarge(_:))
  {
    if (v13 == enum case for WidgetFamily.systemExtraLarge(_:))
    {
      sub_100071F3C();
      return round(v15 * 0.08);
    }

    else if (v13 != enum case for WidgetFamily.accessoryCircular(_:) && v13 != enum case for WidgetFamily.accessoryRectangular(_:) && v13 != enum case for WidgetFamily.accessoryInline(_:))
    {
      (*(v8 + 8))(v10, v7, 0.0);
      return 0.0;
    }
  }

  return result;
}

double sub_10003DC90()
{
  v1 = sub_10007218C();
  v16 = *(v1 - 8);
  v17 = v1;
  __chkstk_darwin(v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_1000729DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for CPAppGridView(0) + 44);
  v18 = v0;
  sub_100004C94(v0 + v11, v6, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_100072CEC();
    v12 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    (*(v16 + 8))(v3, v17);
  }

  if ((*(v8 + 88))(v10, v7) == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    sub_100071F3C();
    return round(v13 * 0.14);
  }

  else
  {
    (*(v8 + 8))(v10, v7);
    return 0.0;
  }
}

double sub_10003DF68()
{
  v16 = sub_10007218C();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_1000729DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CPAppGridView(0);
  sub_100004C94(v0 + *(v11 + 44), v6, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_100072CEC();
    v12 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = (*(v8 + 88))(v10, v7);
  result = 16.0;
  if (v13 != enum case for WidgetFamily.systemExtraLarge(_:))
  {
    (*(v8 + 8))(v10, v7, 16.0);
    return 0.0;
  }

  return result;
}

uint64_t sub_10003E21C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CPAppGridView(0);
  v5 = v4 - 8;
  v65 = *(v4 - 8);
  v6 = *(v65 + 64);
  __chkstk_darwin(v4);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000388C(&qword_100095EC0, &qword_1000753D8);
  __chkstk_darwin(v8 - 8);
  v10 = (&v63 - v9);
  v66 = sub_10000388C(&qword_100095EC8, &qword_1000753E0);
  __chkstk_darwin(v66);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v63 - v14;
  __chkstk_darwin(v16);
  v18 = &v63 - v17;
  v19 = sub_10000388C(&qword_100095ED0, &qword_1000753E8);
  __chkstk_darwin(v19 - 8);
  v21 = &v63 - v20;
  sub_10003DC90();
  sub_10003DF68();
  *v21 = sub_10007223C();
  *(v21 + 1) = 0;
  v67 = v21;
  v21[16] = 0;
  v22 = sub_10003D5A4();
  v24 = v23;
  v25 = sub_10003D7B4();
  v26 = sub_10003D93C();
  result = sub_10007223C();
  *v10 = result;
  v10[1] = v26;
  *(v10 + 16) = 0;
  if ((*(a1 + *(v5 + 32)) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v63 = v12;
    v64 = a2;
    sub_10000388C(&qword_100095ED8, &qword_1000753F0);
    sub_100041758(a1, &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v29 = (v6 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    sub_100041AB4(v7, v30 + v28);
    v31 = (v30 + v29);
    *v31 = v22;
    *(v31 + 1) = v24;
    *(v30 + ((v29 + 23) & 0xFFFFFFFFFFFFFFF8)) = v25;
    sub_10000388C(&qword_100095EE0, &qword_1000753F8);
    sub_100004C3C(&qword_100095EE8, &qword_100095EE0, &qword_1000753F8, &protocol conformance descriptor for TupleView<A>);
    sub_10007285C();
    LOBYTE(v30) = sub_1000723BC();
    v32 = sub_1000723EC();
    sub_1000723EC();
    if (sub_1000723EC() != v30)
    {
      v32 = sub_1000723EC();
    }

    v33 = sub_10000388C(&qword_100095EF0, &qword_100075400);
    v34 = v67;
    v35 = &v67[*(v33 + 44)];
    sub_100071E8C();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    sub_100014DEC(v10, v15, &qword_100095EC0, &qword_1000753D8);
    v44 = &v15[*(v66 + 36)];
    *v44 = v32;
    *(v44 + 1) = v37;
    *(v44 + 2) = v39;
    *(v44 + 3) = v41;
    *(v44 + 4) = v43;
    v44[40] = 0;
    sub_100014DEC(v15, v18, &qword_100095EC8, &qword_1000753E0);
    v45 = v63;
    sub_100004C94(v18, v63, &qword_100095EC8, &qword_1000753E0);
    *v35 = 0;
    v35[8] = 0;
    v46 = sub_10000388C(&qword_100095EF8, &qword_100075408);
    sub_100004C94(v45, &v35[*(v46 + 48)], &qword_100095EC8, &qword_1000753E0);
    v47 = &v35[*(v46 + 64)];
    *v47 = 0;
    v47[8] = 0;
    sub_100004890(v18, &qword_100095EC8, &qword_1000753E0);
    sub_100004890(v45, &qword_100095EC8, &qword_1000753E0);
    sub_10000388C(&qword_100094F68, &qword_1000740E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100074030;
    LOBYTE(v46) = sub_1000723CC();
    *(inited + 32) = v46;
    v49 = sub_1000723FC();
    *(inited + 33) = v49;
    v50 = sub_1000723DC();
    *(inited + 34) = v50;
    v51 = sub_1000723EC();
    sub_1000723EC();
    if (sub_1000723EC() != v46)
    {
      v51 = sub_1000723EC();
    }

    sub_1000723EC();
    v52 = sub_1000723EC();
    v53 = v64;
    if (v52 != v49)
    {
      v51 = sub_1000723EC();
    }

    sub_1000723EC();
    if (sub_1000723EC() != v50)
    {
      v51 = sub_1000723EC();
    }

    sub_100071E8C();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    sub_100014DEC(v34, v53, &qword_100095ED0, &qword_1000753E8);
    result = sub_10000388C(&qword_100095F00, &qword_100075410);
    v62 = v53 + *(result + 36);
    *v62 = v51;
    *(v62 + 8) = v55;
    *(v62 + 16) = v57;
    *(v62 + 24) = v59;
    *(v62 + 32) = v61;
    *(v62 + 40) = 0;
  }

  return result;
}

uint64_t sub_10003E7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v45 = a3;
  v11 = type metadata accessor for CPAppGridView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000388C(&qword_100095F08, &qword_100075418);
  __chkstk_darwin(v15);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v39 - v19;
  *v20 = sub_1000721CC();
  *(v20 + 1) = 0;
  v20[16] = 0;
  result = sub_10000388C(&qword_100095F10, &qword_100075420);
  v22 = *(a2 + *(v11 + 28));
  v23 = a1 * v22;
  if ((a1 * v22) >> 64 != (a1 * v22) >> 63)
  {
    __break(1u);
    goto LABEL_15;
  }

  v24 = v23 + 1;
  if (__OFADD__(v23, 1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v26 = v25 * v22;
  if ((v25 * v22) >> 64 != (v25 * v22) >> 63)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27 = v26 + 1;
  if (__OFADD__(v26, 1))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v27 < v24)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v43 = *(result + 44);
  v39[1] = v24;
  sub_100041758(a2, v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(v12 + 80);
  v44 = a1;
  v29 = (v28 + 16) & ~v28;
  v40 = v15;
  v41 = a2;
  v30 = (v13 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = v11;
  v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF8;
  v32 = v45;
  v33 = swift_allocObject();
  sub_100041AB4(v14, v33 + v29);
  v34 = (v33 + v30);
  *v34 = a4;
  v34[1] = a5;
  *(v33 + v31) = a6;
  *(v33 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;
  sub_10000388C(&qword_100095F18, &qword_100075428);
  sub_100004C3C(&qword_100095F20, &qword_100095F18, &qword_100075428, &protocol conformance descriptor for TupleView<A>);
  sub_10007285C();
  *&v20[*(v40 + 36)] = 0x4024000000000000;
  v35 = *(v41 + *(v42 + 24));
  v37 = v35 < 2 || v35 - 1 != v44;
  sub_100004C94(v20, v17, &qword_100095F08, &qword_100075418);
  sub_100004C94(v17, v32, &qword_100095F08, &qword_100075418);
  v38 = v32 + *(sub_10000388C(&qword_100095F28, &qword_100075430) + 48);
  *v38 = 0;
  *(v38 + 8) = 0;
  *(v38 + 9) = v37;
  sub_100004890(v20, &qword_100095F08, &qword_100075418);
  return sub_100004890(v17, &qword_100095F08, &qword_100075418);
}

uint64_t sub_10003EB88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  v84 = a3;
  v86 = a1;
  v12 = sub_10000388C(&qword_100095F30, &qword_100075438);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v67 - v14;
  v83 = sub_10000388C(&qword_100095F38, &qword_100075440);
  __chkstk_darwin(v83);
  v17 = &v67 - v16;
  v79 = sub_10007221C();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_10007234C();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000388C(&qword_100095F40, &qword_100075448);
  __chkstk_darwin(v20 - 8);
  v22 = (&v67 - v21);
  v80 = sub_10000388C(&qword_100095F48, &qword_100075450);
  __chkstk_darwin(v80);
  v69 = &v67 - v23;
  v75 = sub_10000388C(&qword_100095F50, &qword_100075458);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v81 = &v67 - v24;
  v85 = sub_10000388C(&qword_100095F58, &qword_100075460);
  __chkstk_darwin(v85);
  v72 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v76 = &v67 - v27;
  v28 = sub_10000388C(&qword_100095F60, &qword_100075468);
  __chkstk_darwin(v28 - 8);
  v30 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v67 - v32;
  v82 = *(a2 + *(type metadata accessor for CPAppGridView(0) + 32));
  v34 = type metadata accessor for CPTimelineEntry(0);
  if (*(a2 + v34[6]) != 1 || *(a2 + v34[9]) != 1)
  {
    goto LABEL_18;
  }

  v35 = *(a2 + v34[5]);
  if (v35 >> 62)
  {
    if (v35 < 0)
    {
      v60 = *(a2 + v34[5]);
    }

    else
    {
      v60 = v35 & 0xFFFFFFFFFFFFFF8;
    }

    v68 = v60;
    if (!sub_100072EDC() || v86 < 0)
    {
      goto LABEL_18;
    }

    v36 = sub_100072EDC();
  }

  else
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v36 || v86 < 0)
    {
      goto LABEL_18;
    }
  }

  if (v36 <= v86)
  {
LABEL_18:
    sub_10003F680(a5, a6, a7);
    (*(v13 + 16))(v17, v15, v12);
    swift_storeEnumTagMultiPayload();
    a2 = sub_10004233C();
    v22 = sub_1000038D4(&qword_100095F80, &qword_100075470);
    v61 = sub_1000424EC();
    *&v89 = v22;
    *(&v89 + 1) = v61;
    swift_getOpaqueTypeConformance2();
    sub_10007230C();
    (*(v13 + 8))(v15, v12);
    goto LABEL_19;
  }

  if ((v35 & 0xC000000000000001) != 0)
  {
    goto LABEL_22;
  }

  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v86)
  {
    __break(1u);
    sub_100072CEC();
    v66 = sub_10007239C();
    sub_100071E4C();

    v37 = v68;
    goto LABEL_11;
  }

  v37 = *(v35 + 8 * v86 + 32);

  while (1)
  {
    *v22 = sub_10007289C();
    v22[1] = v38;
    v39 = sub_10000388C(&qword_100095FA8, &qword_100075488);
    sub_10003F8BC(v37, a2, v22 + *(v39 + 44), a5, a6, a7);
    sub_1000728AC();
    v68 = v37;
LABEL_11:
    sub_100071FFC();
    v40 = v69;
    sub_100014DEC(v22, v69, &qword_100095F40, &qword_100075448);
    v41 = (v40 + *(v80 + 36));
    v42 = v94;
    v41[4] = v93;
    v41[5] = v42;
    v41[6] = v95;
    v43 = v90;
    *v41 = v89;
    v41[1] = v43;
    v44 = v92;
    v41[2] = v91;
    v41[3] = v44;
    v45 = v70;
    sub_10007232C();
    v46 = sub_100042434();
    sub_10007266C();
    (*(v71 + 8))(v45, v73);
    sub_100004890(v40, &qword_100095F48, &qword_100075450);
    v47 = *(v37 + 48);
    v87 = *(v37 + 40);
    v88 = v47;
    sub_100004A78();

    v48 = sub_10007259C();
    v50 = v49;
    LODWORD(v71) = v51;
    v73 = v52;
    v87 = v80;
    v88 = v46;
    swift_getOpaqueTypeConformance2();
    v53 = v72;
    v54 = v75;
    v55 = v81;
    sub_10007260C();
    sub_100004C84(v48, v50, v71 & 1);

    (*(v74 + 8))(v55, v54);
    v56 = v77;
    sub_10007220C();
    v57 = v76;
    sub_100071FAC();
    (*(v78 + 8))(v56, v79);
    a2 = &qword_100095F58;
    v22 = &qword_100075460;
    sub_100004890(v53, &qword_100095F58, &qword_100075460);
    sub_100004C94(v57, v17, &qword_100095F58, &qword_100075460);
    swift_storeEnumTagMultiPayload();
    sub_10004233C();
    v58 = sub_1000038D4(&qword_100095F80, &qword_100075470);
    v59 = sub_1000424EC();
    v87 = v58;
    v88 = v59;
    swift_getOpaqueTypeConformance2();
    sub_10007230C();

    sub_100004890(v57, &qword_100095F58, &qword_100075460);
LABEL_19:
    if (!__OFSUB__(v84, 1))
    {
      break;
    }

    __break(1u);
LABEL_22:
    v37 = sub_100072E6C();
  }

  v62 = v84 - 1 <= v86;
  sub_100004C94(v33, v30, &qword_100095F60, &qword_100075468);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 9) = v82 ^ 1;
  v63 = sub_10000388C(&qword_100095FA0, &qword_100075480);
  sub_100004C94(v30, a4 + *(v63 + 48), &qword_100095F60, &qword_100075468);
  v64 = a4 + *(v63 + 64);
  *v64 = 0;
  *(v64 + 8) = 0;
  *(v64 + 9) = v62;
  sub_100004890(v33, &qword_100095F60, &qword_100075468);
  return sub_100004890(v30, &qword_100095F60, &qword_100075468);
}

uint64_t sub_10003F680(double a1, double a2, double a3)
{
  v5 = sub_10000388C(&qword_100095F98, &qword_100075478);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_10000388C(&qword_100095F80, &qword_100075470);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  *v7 = sub_10007223C();
  *(v7 + 1) = 0x4018000000000000;
  v7[16] = 0;
  v11 = sub_10000388C(&qword_100096030, &qword_100075550);
  v12.n128_f64[0] = a1;
  sub_100040F14(&v7[*(v11 + 44)], v12, a3);
  sub_1000728AC();
  sub_100071FFC();
  sub_10004272C(v7, v10);
  v13 = &v10[*(v8 + 36)];
  v14 = v24;
  *(v13 + 4) = v23;
  *(v13 + 5) = v14;
  *(v13 + 6) = v25;
  v15 = v20;
  *v13 = v19;
  *(v13 + 1) = v15;
  v16 = v22;
  *(v13 + 2) = v21;
  *(v13 + 3) = v16;
  sub_1000424EC();
  sub_1000725FC();
  return sub_100004890(v10, &qword_100095F80, &qword_100075470);
}

uint64_t sub_10003F8BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v89 = a2;
  v87 = a3;
  v10 = sub_10000388C(&qword_100095FB0, &qword_100075490);
  v86 = *(v10 - 8);
  __chkstk_darwin(v10);
  v85 = &v70 - v11;
  v78 = sub_1000729DC();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100071C9C();
  __chkstk_darwin(v13 - 8);
  v79 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000388C(&qword_100095FB8, &qword_100075498);
  v83 = *(v15 - 8);
  v84 = v15;
  __chkstk_darwin(v15);
  v81 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v80 = &v70 - v18;
  v19 = sub_10000388C(&qword_1000956E0, &qword_100074AA0);
  __chkstk_darwin(v19 - 8);
  v21 = &v70 - v20;
  v73 = sub_10007277C();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000388C(&qword_100095FC0, &qword_1000754A0);
  v74 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v70 - v25;
  v27 = sub_10007297C();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v70 - v32;
  v34 = sub_10000388C(&qword_100095FC8, &qword_1000754A8);
  __chkstk_darwin(v34 - 8);
  v75 = &v70 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v90 = &v70 - v37;
  v82 = a1;
  v38 = sub_10004D174(0x6C616D726F6ELL, 0xE600000000000000);
  if (v38)
  {
    v88 = v38;
    v71 = v10;
    type metadata accessor for CPAppGridView(0);
    sub_1000129F8(v33);
    sub_10007296C();
    v39 = sub_10007295C();
    v40 = *(v28 + 8);
    v40(v30, v27);
    v40(v33, v27);
    v41 = 1;
    v42 = v24;
    if (v39)
    {
      v43 = v88;
      sub_10007275C();
      v44 = v72;
      v45 = v73;
      (*(v72 + 104))(v23, enum case for Image.ResizingMode.stretch(_:), v73);
      sub_1000727DC();

      (*(v44 + 8))(v23, v45);
      sub_1000729AC();
      v46 = sub_1000729BC();
      (*(*(v46 - 8) + 56))(v21, 0, 1, v46);
      sub_1000727CC();

      sub_100004890(v21, &qword_1000956E0, &qword_100074AA0);
      v47 = &v26[*(sub_10000388C(&qword_100095FE8, &qword_1000754C0) + 36)];
      *v47 = 0;
      *(v47 + 4) = 1;
      *&v26[*(sub_10000388C(&qword_100095FF0, &qword_1000754C8) + 36)] = a4;
      sub_1000728AC();
      sub_100071F2C();
      v48 = &v26[*(v42 + 36)];
      v49 = v92;
      *v48 = v91;
      *(v48 + 1) = v49;
      *(v48 + 2) = v93;
      sub_100014DEC(v26, v90, &qword_100095FC0, &qword_1000754A0);
      v41 = 0;
    }

    v50 = v90;
    (*(v74 + 56))(v90, v41, 1, v42);
    v51 = v76;
    v52 = v89;
    sub_10003CBD8(v76);
    v53 = v82;
    sub_10004CE40(0xD000000000000015, 0x80000001000776C0, v51, v79);
    v54 = (*(v77 + 8))(v51, v78);
    __chkstk_darwin(v54);
    v55 = v88;
    *(&v70 - 6) = v52;
    *(&v70 - 5) = v55;
    *(&v70 - 4) = a4;
    *(&v70 - 3) = a5;
    *(&v70 - 2) = v53;
    *(&v70 - 1) = a6;
    sub_10000388C(&qword_100095FD0, &qword_1000754B0);
    sub_100004C3C(&qword_100095FD8, &qword_100095FD0, &qword_1000754B0, &protocol conformance descriptor for VStack<A>);
    v56 = v80;
    sub_10007254C();
    v57 = v50;
    v58 = v75;
    sub_100004C94(v57, v75, &qword_100095FC8, &qword_1000754A8);
    v60 = v83;
    v59 = v84;
    v61 = *(v83 + 16);
    v62 = v81;
    v61(v81, v56, v84);
    v63 = v85;
    sub_100004C94(v58, v85, &qword_100095FC8, &qword_1000754A8);
    v64 = sub_10000388C(&qword_100095FE0, &qword_1000754B8);
    v61((v63 + *(v64 + 48)), v62, v59);

    v65 = *(v60 + 8);
    v65(v56, v59);
    sub_100004890(v90, &qword_100095FC8, &qword_1000754A8);
    v65(v62, v59);
    sub_100004890(v58, &qword_100095FC8, &qword_1000754A8);
    v66 = v87;
    sub_100014DEC(v63, v87, &qword_100095FB0, &qword_100075490);
    return (*(v86 + 56))(v66, 0, 1, v71);
  }

  else
  {
    v68 = v87;
    v69 = *(v86 + 56);

    return v69(v68, 1, 1, v10);
  }
}

void *sub_1000402A0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, __n128 a5@<Q0>, double a7@<D2>)
{
  v9 = a5.n128_f64[0];
  v64 = a4;
  v12 = sub_1000724DC();
  v57 = *(v12 - 8);
  v58 = v12;
  __chkstk_darwin(v12);
  v54 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000729DC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_10007223C();
  v104 = 0;
  sub_100040AD0(a2, &v81, v9);
  v61 = *(&v81 + 1);
  v62 = v81;
  v60 = v82;
  v66 = v83;
  LODWORD(a2) = v84;
  sub_1000728AC();
  sub_100071F2C();
  v65 = a2;
  LOBYTE(v81) = a2;
  *&v102[7] = v105;
  *&v102[23] = v106;
  *&v102[39] = v107;
  v18 = *(a3 + 48);
  *&v81 = *(a3 + 40);
  *(&v81 + 1) = v18;
  sub_100004A78();

  v56 = sub_10007259C();
  v20 = v19;
  v55 = v21;
  v59 = a1;
  sub_10003CBD8(v17);
  v22 = *(v15 + 88);
  v53 = v14;
  v23 = v22(v17, v14);
  if (v23 == enum case for WidgetFamily.systemSmall(_:) || v23 == enum case for WidgetFamily.systemMedium(_:) || v23 == enum case for WidgetFamily.systemLarge(_:))
  {
    v26 = v20;
    sub_10007251C();
LABEL_12:
    v28 = v58;
    goto LABEL_13;
  }

  v27 = v23;
  if (v23 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v26 = v20;
    sub_10007252C();
    goto LABEL_12;
  }

  v51 = enum case for WidgetFamily.accessoryCircular(_:);
  sub_10007251C();
  if (v27 != v51)
  {
    if (v27 == enum case for WidgetFamily.accessoryRectangular(_:) || v27 == enum case for WidgetFamily.accessoryInline(_:))
    {
      v26 = v20;
    }

    else
    {
      v26 = v20;
      (*(v15 + 8))(v17, v53);
    }

    goto LABEL_12;
  }

  v26 = v20;
  v28 = v58;
LABEL_13:
  v29 = v57;
  v30 = v54;
  (*(v57 + 104))(v54, enum case for Font.Leading.tight(_:), v28);
  sub_10007250C();

  (*(v29 + 8))(v30, v28);
  v31 = v55;
  v32 = v56;
  v33 = sub_10007257C();
  v35 = v34;
  v37 = v36;

  sub_100004C84(v32, v26, v31 & 1);

  sub_100043050();
  v38 = sub_10007256C();
  v57 = v39;
  v58 = v38;
  v41 = v40;
  v59 = v42;

  sub_100004C84(v33, v35, v37 & 1);

  KeyPath = swift_getKeyPath();
  v56 = swift_getKeyPath();
  v100 = v41 & 1;
  v97 = 0;
  sub_1000728AC();
  if (a7 < 0.0)
  {
    sub_100072CEC();
    v44 = sub_10007239C();
    sub_100071E4C();
  }

  sub_100071FFC();
  *&v101[55] = v108[3];
  *&v101[71] = v108[4];
  *&v101[87] = v108[5];
  *&v101[103] = v109;
  *&v101[7] = v108[0];
  *&v101[23] = v108[1];
  *&v101[39] = v108[2];
  v46 = v61;
  v45 = v62;
  *&v73 = v62;
  *(&v73 + 1) = v61;
  v47 = v60;
  *&v74 = v60;
  *(&v74 + 1) = v66;
  v75[0] = v65;
  *&v75[1] = *v102;
  *&v75[17] = *&v102[16];
  *&v75[33] = *&v102[32];
  v72[0] = v73;
  v72[1] = v74;
  v72[2] = *v75;
  v72[3] = *&v75[16];
  v72[4] = *&v75[32];
  *&v76 = v58;
  *(&v76 + 1) = v57;
  LOBYTE(v77) = v41 & 1;
  DWORD1(v77) = *&v99[3];
  *(&v77 + 1) = *v99;
  *(&v77 + 1) = v59;
  *&v78 = KeyPath;
  BYTE8(v78) = 1;
  HIDWORD(v78) = *&v98[3];
  *(&v78 + 9) = *v98;
  *&v79 = v56;
  *(&v79 + 1) = 1;
  v80[0] = 0;
  *&v80[49] = *&v101[48];
  *&v80[33] = *&v101[32];
  *&v80[17] = *&v101[16];
  *&v80[1] = *v101;
  *&v80[112] = *(&v109 + 1);
  *&v80[97] = *&v101[96];
  *&v80[81] = *&v101[80];
  *&v80[65] = *&v101[64];
  *(&v72[8] + 8) = v79;
  *(&v72[7] + 8) = v78;
  *(&v72[6] + 8) = v77;
  *(&v72[5] + 8) = v76;
  *(&v72[12] + 8) = *&v80[48];
  *(&v72[11] + 8) = *&v80[32];
  *(&v72[10] + 8) = *&v80[16];
  *(&v72[9] + 8) = *v80;
  *(&v72[15] + 8) = *&v80[96];
  *(&v72[14] + 8) = *&v80[80];
  *(&v72[13] + 8) = *&v80[64];
  v93 = *&v101[48];
  v92 = *&v101[32];
  *&v75[48] = *&v102[47];
  *&v72[5] = *&v102[47];
  *(&v72[16] + 1) = *&v80[112];
  *&v81 = v58;
  *(&v81 + 1) = v57;
  LOBYTE(v82) = v41 & 1;
  *(&v82 + 1) = *v99;
  HIDWORD(v82) = *&v99[3];
  v83 = v59;
  v84 = KeyPath;
  v85 = 1;
  *v86 = *v98;
  *&v86[3] = *&v98[3];
  v87 = v56;
  v88 = 1;
  v89 = 0;
  v91 = *&v101[16];
  v90 = *v101;
  *(v96 + 15) = *(&v109 + 1);
  v96[0] = *&v101[96];
  v95 = *&v101[80];
  v94 = *&v101[64];
  sub_100004C94(&v73, v67, &qword_100095FF8, &qword_100075530);
  sub_100004C94(&v76, v67, &qword_100096000, &qword_100075538);
  sub_100004890(&v81, &qword_100096000, &qword_100075538);
  v67[0] = v45;
  v67[1] = v46;
  v67[2] = v47;
  v67[3] = v66;
  v68 = v65;
  v69 = *v102;
  v70 = *&v102[16];
  v71[0] = *&v102[32];
  *(v71 + 15) = *&v102[47];
  sub_100004890(v67, &qword_100095FF8, &qword_100075530);
  memcpy(&v103[7], v72, 0x110uLL);
  v48 = v104;
  v49 = v64;
  *v64 = v63;
  v49[1] = 0x4020000000000000;
  *(v49 + 16) = v48;
  return memcpy(v49 + 17, v103, 0x117uLL);
}

double sub_100040AD0@<D0>(void *a1@<X1>, _OWORD *a2@<X8>, double a3@<D0>)
{
  v34 = a1;
  v38 = a2;
  v4 = sub_10007277C();
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100071FCC();
  v33 = *(v6 - 8);
  __chkstk_darwin(v6);
  v32 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = sub_10007297C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  type metadata accessor for CPAppGridView(0);
  sub_1000129F8(v17);
  sub_10007296C();
  v18 = sub_10007295C();
  v19 = *(v12 + 8);
  v19(v14, v11);
  v19(v17, v11);
  if (v18 & 1) != 0 && (sub_100012A48(v10), sub_10004279C(&qword_100095708, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons), v20 = v32, sub_100072DAC(), sub_10004279C(&qword_100095710, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons), v21 = sub_100072B1C(), v22 = *(v33 + 8), v22(v20, v6), v22(v10, v6), (v21))
  {
    v39 = sub_1000726DC();
    v40 = 0uLL;
    v41 = 0.0;
    v42 = 0;
  }

  else
  {
    v23 = v34;
    sub_10007275C();
    v25 = v35;
    v24 = v36;
    v26 = v37;
    (*(v36 + 104))(v35, enum case for Image.ResizingMode.stretch(_:), v37);
    v27 = sub_1000727DC();

    (*(v24 + 8))(v25, v26);
    v39 = v27;
    v40 = xmmword_100075360;
    v41 = a3;
    v42 = 1;
  }

  sub_10000388C(&qword_100096008, &qword_100075540);
  sub_1000425C8();
  sub_10007230C();
  result = *&v43;
  v29 = v44;
  v30 = v45;
  v31 = v38;
  *v38 = v43;
  v31[1] = v29;
  *(v31 + 32) = v30;
  return result;
}

uint64_t sub_100040F14@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, double a4@<D2>)
{
  v5 = a2.n128_u64[0];
  v66 = a1;
  v6 = sub_1000724DC();
  *(&v64 + 1) = *(v6 - 8);
  v65 = v6;
  __chkstk_darwin(v6);
  *&v64 = &v60[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000729DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v60[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_10000388C(&qword_100096038, &qword_100075558);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v67 = &v60[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v60[-v16];
  v18 = sub_10003CFE8();
  v19 = sub_10000388C(&qword_100096040, &qword_100075560);
  sub_10003D284(&v17[*(v19 + 36)]);
  *v17 = v18;
  *(v17 + 4) = 256;
  sub_1000728AC();
  v20 = v9;
  sub_100071F2C();
  v21 = &v17[*(sub_10000388C(&qword_100096048, &qword_100075568) + 36)];
  v22 = *(&v94[8] + 8);
  *v21 = *(&v94[7] + 8);
  v21[1] = v22;
  v21[2] = *(&v94[9] + 8);
  v23 = *(v13 + 44);
  v24 = v8;
  *&v17[v23] = v5;
  sub_1000721DC();
  v25 = sub_10007258C();
  v62 = v26;
  KeyPath = v27;
  v29 = v28;
  sub_10003CBD8(v11);
  v30 = (*(v9 + 88))(v11, v24);
  if (v30 == enum case for WidgetFamily.systemSmall(_:) || (v31 = v30, v30 == enum case for WidgetFamily.systemMedium(_:)) || v30 == enum case for WidgetFamily.systemLarge(_:))
  {
    sub_10007251C();
    v32 = v64;
  }

  else
  {
    v32 = v64;
    if (v30 == enum case for WidgetFamily.systemExtraLarge(_:))
    {
      sub_10007252C();
    }

    else
    {
      v61 = enum case for WidgetFamily.accessoryCircular(_:);
      sub_10007251C();
      if (v31 != v61 && v31 != enum case for WidgetFamily.accessoryRectangular(_:) && v31 != enum case for WidgetFamily.accessoryInline(_:))
      {
        (*(v20 + 8))(v11, v24);
      }
    }
  }

  v33 = *(&v64 + 1);
  v34 = v65;
  (*(*(&v64 + 1) + 104))(v32, enum case for Font.Leading.tight(_:), v65);
  sub_10007250C();

  (*(v33 + 8))(v32, v34);
  v35 = v62;
  *&v64 = sub_10007257C();
  *(&v64 + 1) = v36;
  v38 = v37;
  v65 = v39;

  sub_100004C84(v25, v35, v29 & 1);

  KeyPath = swift_getKeyPath();
  v40 = swift_getKeyPath();
  v41 = v38 & 1;
  v93 = v38 & 1;
  v90 = 0;
  sub_1000728AC();
  if (a4 < 0.0)
  {
    sub_100072CEC();
    v42 = sub_10007239C();
    sub_100071E4C();
  }

  sub_100071FFC();
  *(&v94[3] + 7) = *(&v94[13] + 8);
  *(&v94[4] + 7) = *(&v94[14] + 8);
  *(&v94[5] + 7) = *(&v94[15] + 8);
  *(&v94[6] + 7) = *(&v94[16] + 8);
  *(v94 + 7) = *(&v94[10] + 8);
  *(&v94[1] + 7) = *(&v94[11] + 8);
  *(&v94[2] + 7) = *(&v94[12] + 8);
  v43 = v67;
  sub_100004C94(v17, v67, &qword_100096038, &qword_100075558);
  v44 = v43;
  v45 = v66;
  sub_100004C94(v44, v66, &qword_100096038, &qword_100075558);
  v46 = v45 + *(sub_10000388C(&qword_100096050, &qword_100075570) + 48);
  v47 = v64;
  v68 = v64;
  LOBYTE(v69) = v41;
  *(&v69 + 1) = *v92;
  DWORD1(v69) = *&v92[3];
  v48 = v65;
  v49 = KeyPath;
  *(&v69 + 1) = v65;
  *&v70 = KeyPath;
  BYTE8(v70) = 1;
  *(&v70 + 9) = *v91;
  HIDWORD(v70) = *&v91[3];
  LODWORD(v66) = v41;
  *&v71 = v40;
  *(&v71 + 1) = 1;
  v72[0] = 0;
  *&v72[1] = v94[0];
  *&v72[49] = v94[3];
  *&v72[33] = v94[2];
  *&v72[17] = v94[1];
  *&v72[112] = *(&v94[6] + 15);
  *&v72[97] = v94[6];
  *&v72[81] = v94[5];
  *&v72[65] = v94[4];
  v50 = v64;
  v51 = v69;
  v52 = v71;
  *(v46 + 32) = v70;
  *(v46 + 48) = v52;
  *v46 = v50;
  *(v46 + 16) = v51;
  v53 = *v72;
  v54 = *&v72[16];
  v55 = *&v72[48];
  *(v46 + 96) = *&v72[32];
  *(v46 + 112) = v55;
  *(v46 + 64) = v53;
  *(v46 + 80) = v54;
  v56 = *&v72[64];
  v57 = *&v72[80];
  v58 = *&v72[96];
  *(v46 + 176) = *&v72[112];
  *(v46 + 144) = v57;
  *(v46 + 160) = v58;
  *(v46 + 128) = v56;
  sub_100004C94(&v68, &v73, &qword_100096000, &qword_100075538);
  sub_100004890(v17, &qword_100096038, &qword_100075558);
  v87 = v94[4];
  v88 = v94[5];
  *v89 = v94[6];
  v83 = v94[0];
  v84 = v94[1];
  v85 = v94[2];
  v73 = v47;
  v74 = v66;
  *v75 = *v92;
  *&v75[3] = *&v92[3];
  v76 = v48;
  v77 = v49;
  v78 = 1;
  *v79 = *v91;
  *&v79[3] = *&v91[3];
  v80 = v40;
  v81 = 1;
  v82 = 0;
  *&v89[15] = *(&v94[6] + 15);
  v86 = v94[3];
  sub_100004890(&v73, &qword_100096000, &qword_100075538);
  return sub_100004890(v67, &qword_100096038, &qword_100075558);
}

uint64_t sub_10004166C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_100041758(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_100041AB4(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_100041B18;
  a2[1] = v7;
  return result;
}

uint64_t sub_100041758(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CPAppGridView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000417BC()
{
  v1 = type metadata accessor for CPAppGridView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_100071D4C();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  type metadata accessor for CPTimelineEntry(0);

  v7 = v1[5];
  v8 = sub_100071F5C();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[9];
  sub_10000388C(&qword_100094908, &qword_100073A20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_100071FCC();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = v1[10];
  sub_10000388C(&qword_100094910, &unk_100076340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_10007297C();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
  }

  v13 = v1[11];
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1000729DC();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
  }

  v15 = v1[12];
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_100071EAC();
    (*(*(v16 - 8) + 8))(v5 + v15, v16);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100041AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CPAppGridView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100041B18@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CPAppGridView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10003E21C(v4, a1);
}

uint64_t sub_100041B98()
{
  v1 = type metadata accessor for CPAppGridView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_100071D4C();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  type metadata accessor for CPTimelineEntry(0);

  v7 = v1[5];
  v8 = sub_100071F5C();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[9];
  sub_10000388C(&qword_100094908, &qword_100073A20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_100071FCC();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = v1[10];
  sub_10000388C(&qword_100094910, &unk_100076340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_10007297C();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
  }

  v13 = v1[11];
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1000729DC();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
  }

  v15 = v1[12];
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_100071EAC();
    (*(*(v16 - 8) + 8))(v5 + v15, v16);
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100041EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CPAppGridView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v2 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v2 + v8);

  return sub_10003E7FC(a1, v2 + v6, a2, v10, v11, v12);
}

uint64_t sub_100041F60()
{
  v1 = type metadata accessor for CPAppGridView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_100071D4C();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  type metadata accessor for CPTimelineEntry(0);

  v7 = v1[5];
  v8 = sub_100071F5C();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[9];
  sub_10000388C(&qword_100094908, &qword_100073A20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_100071FCC();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = v1[10];
  sub_10000388C(&qword_100094910, &unk_100076340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_10007297C();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
  }

  v13 = v1[11];
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1000729DC();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
  }

  v15 = v1[12];
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_100071EAC();
    (*(*(v16 - 8) + 8))(v5 + v15, v16);
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100042274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CPAppGridView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v2 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v2 + v8);
  v13 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10003EB88(a1, (v2 + v6), v13, a2, v10, v11, v12);
}

unint64_t sub_10004233C()
{
  result = qword_100095F68;
  if (!qword_100095F68)
  {
    sub_1000038D4(&qword_100095F58, &qword_100075460);
    sub_1000038D4(&qword_100095F48, &qword_100075450);
    sub_100042434();
    swift_getOpaqueTypeConformance2();
    sub_10004279C(&qword_1000949C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095F68);
  }

  return result;
}

unint64_t sub_100042434()
{
  result = qword_100095F70;
  if (!qword_100095F70)
  {
    sub_1000038D4(&qword_100095F48, &qword_100075450);
    sub_100004C3C(&qword_100095F78, &qword_100095F40, &qword_100075448, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095F70);
  }

  return result;
}

unint64_t sub_1000424EC()
{
  result = qword_100095F88;
  if (!qword_100095F88)
  {
    sub_1000038D4(&qword_100095F80, &qword_100075470);
    sub_100004C3C(&qword_100095F90, &qword_100095F98, &qword_100075478, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095F88);
  }

  return result;
}

unint64_t sub_1000425C8()
{
  result = qword_100096010;
  if (!qword_100096010)
  {
    sub_1000038D4(&qword_100096008, &qword_100075540);
    sub_100042654();
    sub_1000426D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096010);
  }

  return result;
}

unint64_t sub_100042654()
{
  result = qword_100096018;
  if (!qword_100096018)
  {
    sub_1000038D4(&qword_100096020, &qword_100075548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096018);
  }

  return result;
}

unint64_t sub_1000426D8()
{
  result = qword_100096028;
  if (!qword_100096028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096028);
  }

  return result;
}

uint64_t sub_10004272C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000388C(&qword_100095F98, &qword_100075478);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004279C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100042828()
{

  sub_10000388C(&qword_100096070, &qword_1000755E8);
  sub_100071EDC();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000428DC();
  sub_100071F1C();
  return 0;
}

unint64_t sub_1000428DC()
{
  result = qword_100096068;
  if (!qword_100096068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096068);
  }

  return result;
}

unint64_t sub_100042960()
{
  result = qword_100096078;
  if (!qword_100096078)
  {
    sub_1000038D4(&qword_100096080, &qword_1000755F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096078);
  }

  return result;
}

uint64_t sub_1000429F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v35 = a1;
  v5 = sub_100071FEC();
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = sub_10000388C(&qword_100096088, &qword_100075680);
  __chkstk_darwin(v36);
  v10 = &v34 - v9;
  v11 = a3 / 4.7;
  v12 = (a2 + *(sub_10000388C(&qword_100096090, &qword_100075688) + 36));
  v13 = *(v6 + 28);
  v14 = enum case for RoundedCornerStyle.continuous(_:);
  v15 = sub_1000721FC();
  v16 = *(*(v15 - 8) + 104);
  v16(v12 + v13, v14, v15);
  *v12 = v11;
  v12[1] = v11;
  *(v12 + *(sub_10000388C(&qword_100096098, &qword_100075690) + 36)) = 256;
  v17 = sub_10000388C(&qword_1000960A0, &qword_100075698);
  (*(*(v17 - 8) + 16))(a2, v35, v17);
  v16(v8 + *(v6 + 28), v14, v15);
  *v8 = v11;
  v8[1] = v11;
  LODWORD(v16) = sub_10007231C();
  sub_100071ECC();
  sub_100042D88(v8, v10);
  v18 = *&v37 * 0.5;
  v19 = &v10[*(v36 + 68)];
  sub_100042D88(v8, v19);
  *(v19 + *(sub_100071FDC() + 20)) = v18;
  v20 = v19 + *(sub_10000388C(&qword_1000960A8, &qword_1000756A0) + 36);
  v21 = v38;
  *v20 = v37;
  *(v20 + 16) = v21;
  *(v20 + 32) = v39;
  v22 = sub_10000388C(&qword_1000960B0, &qword_1000756A8);
  v23 = (v19 + *(v22 + 52));
  *v23 = v16;
  v23[1] = 1034147594;
  *(v19 + *(v22 + 56)) = 256;
  v24 = sub_1000728AC();
  v26 = v25;
  sub_100042DEC(v8);
  v27 = (v19 + *(sub_10000388C(&qword_1000960B8, &qword_1000756B0) + 36));
  *v27 = v24;
  v27[1] = v26;
  v28 = a2 + *(sub_10000388C(&qword_1000960C0, &qword_1000756B8) + 36);
  sub_100004C3C(&qword_1000960C8, &qword_100096088, &qword_100075680, &protocol conformance descriptor for StrokeBorderShapeView<A, B, C>);
  sub_10007264C();
  sub_100042E48(v10);
  v29 = sub_1000728AC();
  v31 = v30;
  result = sub_10000388C(&qword_1000960D0, &qword_1000756C0);
  v33 = (v28 + *(result + 36));
  *v33 = v29;
  v33[1] = v31;
  return result;
}

uint64_t sub_100042D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100071FEC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100042DEC(uint64_t a1)
{
  v2 = sub_100071FEC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100042E48(uint64_t a1)
{
  v2 = sub_10000388C(&qword_100096088, &qword_100075680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100042EB4()
{
  result = qword_1000960D8;
  if (!qword_1000960D8)
  {
    sub_1000038D4(&qword_1000960C0, &qword_1000756B8);
    sub_100042F6C();
    sub_100004C3C(&qword_1000960F8, &qword_1000960D0, &qword_1000756C0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000960D8);
  }

  return result;
}

unint64_t sub_100042F6C()
{
  result = qword_1000960E0;
  if (!qword_1000960E0)
  {
    sub_1000038D4(&qword_100096090, &qword_100075688);
    sub_100004C3C(&qword_1000960E8, &qword_1000960A0, &qword_100075698, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100004C3C(&qword_1000960F0, &qword_100096098, &qword_100075690, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000960E0);
  }

  return result;
}

int *sub_100043050()
{
  result = type metadata accessor for CPTimelineEntry(0);
  if (*(v0 + result[6]) != 1 || (*(v0 + result[7]) & 1) != 0 || (*(v0 + result[8]) & 1) != 0 || *(v0 + result[9]) != 1)
  {
    goto LABEL_20;
  }

  v2 = *(v0 + result[5]);
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_20:

    return sub_10007270C();
  }

  if (sub_100072EDC() < 1)
  {
    goto LABEL_20;
  }

  result = sub_100072EDC();
  if (!result)
  {

    return sub_1000726EC();
  }

LABEL_7:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = sub_100072E6C();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v2 + 32);
  }

  v4 = *(v3 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor);
  if (!v4)
  {
    v5 = *(v3 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_iconBackgroundColor);
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.431372549 blue:0.62745098 alpha:1.0];
    }
  }

  v7 = v4;
  sub_1000726AC();

  v8 = sub_1000726EC();

  return v8;
}

uint64_t sub_100043208()
{
  v1 = *(v0 + *(type metadata accessor for CPTimelineEntry(0) + 20));
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:
    sub_1000726EC();
    v8 = sub_1000726FC();
LABEL_13:

    return v8;
  }

  result = sub_100072EDC();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = sub_100072E6C();
    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);

LABEL_6:
    v4 = *(v3 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor);
    if (!v4)
    {
      v5 = *(v3 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_iconBackgroundColor);
      if (v5)
      {
        v6 = v5;
      }

      else
      {
        [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.431372549 blue:0.62745098 alpha:1.0];
      }
    }

    v7 = v4;
    sub_1000726AC();

    sub_1000726EC();
    v8 = sub_1000726FC();

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_100043374(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_10000388C(&qword_1000947E0, qword_100074040);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = sub_10000388C(&qword_100095260, qword_100074600);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = type metadata accessor for CPTimelineEntry(0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v16 = sub_100071F5C();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[9];
    goto LABEL_11;
  }

  v18 = *(a1 + a3[10] + 8);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

uint64_t sub_100043594(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_10000388C(&qword_1000947E0, qword_100074040);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_10000388C(&qword_100095260, qword_100074600);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        v17 = type metadata accessor for CPTimelineEntry(0);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[8];
        }

        else
        {
          result = sub_100071F5C();
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[10] + 8) = (a2 - 1);
            return result;
          }

          v10 = result;
          v14 = *(result - 8);
          v15 = a4[9];
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for CPMessageView(uint64_t a1)
{
  result = qword_100096158;
  if (!qword_100096158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000437E8(uint64_t a1)
{
  sub_100043980(319, &qword_100094850, &type metadata accessor for WidgetRenderingMode);
  if (v1 <= 0x3F)
  {
    sub_100043980(319, &qword_100094858, &type metadata accessor for WidgetFamily);
    if (v2 <= 0x3F)
    {
      sub_100043980(319, &unk_1000952D0, &type metadata accessor for ColorScheme);
      if (v3 <= 0x3F)
      {
        sub_1000439D4(319, &qword_100094860, &type metadata for Bool, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CPTimelineEntry(319);
          if (v5 <= 0x3F)
          {
            sub_100071F5C();
            if (v6 <= 0x3F)
            {
              sub_1000439D4(319, &qword_100096168, &type metadata for String, &type metadata accessor for Optional);
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

void sub_100043980(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100071EBC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000439D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100043A64(uint64_t a1, __n128 a2)
{
  v3 = sub_100071FCC();
  v4 = __chkstk_darwin(v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1000720BC();
}

uint64_t sub_100043B2C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007218C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CPMessageView(0);
  sub_100004C94(v1 + *(v10 + 20), v9, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000729DC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_100072CEC();
    v13 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100043D34@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007218C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000388C(&qword_100094900, &qword_1000762D0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CPMessageView(0);
  sub_100004C94(v1 + *(v10 + 24), v9, &qword_100094900, &qword_1000762D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100071EAC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_100072CEC();
    v13 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_100043F3C()
{
  v0 = sub_1000729DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v12 - v5;
  sub_100043B2C(v12 - v5);
  (*(v1 + 104))(v3, enum case for WidgetFamily.systemLarge(_:), v0);
  sub_10004C730(&qword_100094BF0, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_100072C1C();
  sub_100072C1C();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v7(v6, v0);
  v9 = v12[0];
  v8 = v12[1];
  type metadata accessor for CPMessageView(0);
  sub_100071F3C();
  result = v10 * 0.5629;
  if (v8 != v9)
  {
    return v10;
  }

  return result;
}

uint64_t sub_1000440FC()
{
  v0 = sub_1000729DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100043B2C(v3);
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for WidgetFamily.systemSmall(_:) || v4 == enum case for WidgetFamily.systemMedium(_:))
  {
    return sub_10007252C();
  }

  if (v4 == enum case for WidgetFamily.systemLarge(_:) || v4 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    return sub_1000724EC();
  }

  v6 = enum case for WidgetFamily.accessoryCircular(_:);
  v7 = enum case for WidgetFamily.accessoryRectangular(_:);
  v8 = enum case for WidgetFamily.accessoryInline(_:);
  v9 = v4;
  result = sub_10007252C();
  if (v9 != v6 && v9 != v7 && v9 != v8)
  {
    v12 = result;
    (*(v1 + 8))(v3, v0);
    return v12;
  }

  return result;
}

uint64_t sub_10004428C@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = sub_100071EAC();
  v38 = *(v1 - 8);
  v39 = v1;
  __chkstk_darwin(v1);
  v37 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v36 = &v35 - v4;
  v5 = sub_1000729DC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007297C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  sub_1000129F8(&v35 - v14);
  sub_10007296C();
  sub_10004C730(&qword_1000949D0, &type metadata accessor for WidgetRenderingMode, &protocol conformance descriptor for WidgetRenderingMode);
  v16 = sub_100072B1C();
  v17 = *(v10 + 8);
  v17(v12, v9);
  v17(v15, v9);
  if ((v16 & 1) == 0)
  {
    sub_100043B2C(v8);
    v22 = (*(v6 + 88))(v8, v5);
    v23 = v40;
    if (v22 == enum case for WidgetFamily.systemSmall(_:))
    {
      goto LABEL_4;
    }

    if (v22 != enum case for WidgetFamily.systemMedium(_:))
    {
      if (v22 == enum case for WidgetFamily.systemLarge(_:) || v22 == enum case for WidgetFamily.systemExtraLarge(_:))
      {
LABEL_4:
        v24 = v36;
        sub_100043D34(v36);
        v26 = v37;
        v25 = v38;
        v27 = v39;
        (*(v38 + 104))(v37, enum case for ColorScheme.dark(_:), v39);
        v28 = sub_100071E9C();
        v29 = *(v25 + 8);
        v29(v26, v27);
        v29(v24, v27);
        v19 = sub_1000728BC();
        v20 = *(*(v19 - 8) + 104);
        if (v28)
        {
          v30 = &enum case for BlendMode.plusLighter(_:);
        }

        else
        {
          v30 = &enum case for BlendMode.plusDarker(_:);
        }

        v31 = *v30;
        v21 = v23;
        return v20(v21, v31, v19);
      }

      if (v22 != enum case for WidgetFamily.accessoryCircular(_:) && v22 != enum case for WidgetFamily.accessoryRectangular(_:) && v22 != enum case for WidgetFamily.accessoryInline(_:))
      {
        v33 = enum case for BlendMode.normal(_:);
        v34 = sub_1000728BC();
        (*(*(v34 - 8) + 104))(v23, v33, v34);
        return (*(v6 + 8))(v8, v5);
      }
    }

    v18 = enum case for BlendMode.normal(_:);
    v19 = sub_1000728BC();
    v20 = *(*(v19 - 8) + 104);
    v21 = v23;
    goto LABEL_8;
  }

  v18 = enum case for BlendMode.normal(_:);
  v19 = sub_1000728BC();
  v20 = *(*(v19 - 8) + 104);
  v21 = v40;
LABEL_8:
  v31 = v18;
  return v20(v21, v31, v19);
}

uint64_t sub_10004477C()
{
  v0 = sub_1000729DC();
  v20 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v19 - v4;
  v6 = sub_10007297C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  sub_1000129F8(&v19 - v11);
  sub_10007296C();
  v13 = sub_10007295C();
  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
  sub_10007270C();
  if ((v13 & 1) == 0)
  {
    sub_100043B2C(v5);
    v15 = v20;
    (*(v20 + 104))(v2, enum case for WidgetFamily.systemMedium(_:), v0);
    sub_10004C730(&qword_100094BF0, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    sub_100072C1C();
    sub_100072C1C();
    v16 = *(v15 + 8);
    v16(v2, v0);
    v16(v5, v0);
  }

  v17 = sub_1000726FC();

  return v17;
}

uint64_t sub_100044A4C()
{
  v16 = sub_10007218C();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_1000729DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CPMessageView(0);
  sub_100004C94(v0 + *(v11 + 20), v6, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_100072CEC();
    v12 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = (*(v8 + 88))(v10, v7);
  result = 4;
  if (v13 != enum case for WidgetFamily.systemSmall(_:) && v13 != enum case for WidgetFamily.systemMedium(_:) && v13 != enum case for WidgetFamily.systemLarge(_:))
  {
    if (v13 == enum case for WidgetFamily.systemExtraLarge(_:))
    {
      return 5;
    }

    else
    {
      result = 4;
      if (v13 != enum case for WidgetFamily.accessoryCircular(_:) && v13 != enum case for WidgetFamily.accessoryRectangular(_:) && v13 != enum case for WidgetFamily.accessoryInline(_:))
      {
        (*(v8 + 8))(v10, v7);
        return 4;
      }
    }
  }

  return result;
}

double sub_100044D88()
{
  v16 = sub_10007218C();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_1000729DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CPMessageView(0);
  sub_100004C94(v0 + *(v11 + 20), v6, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_100072CEC();
    v12 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = (*(v8 + 88))(v10, v7);
  result = 2.0;
  if (v13 != enum case for WidgetFamily.systemSmall(_:))
  {
    result = 3.0;
    if (v13 != enum case for WidgetFamily.systemMedium(_:))
    {
      result = 6.0;
      if (v13 != enum case for WidgetFamily.systemLarge(_:) && v13 != enum case for WidgetFamily.systemExtraLarge(_:) && v13 != enum case for WidgetFamily.accessoryCircular(_:) && v13 != enum case for WidgetFamily.accessoryRectangular(_:) && v13 != enum case for WidgetFamily.accessoryInline(_:))
      {
        (*(v8 + 8))(v10, v7, 6.0);
        return 6.0;
      }
    }
  }

  return result;
}

double sub_1000450BC()
{
  v16 = sub_10007218C();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_1000729DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CPMessageView(0);
  sub_100004C94(v0 + *(v11 + 20), v6, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_100072CEC();
    v12 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = (*(v8 + 88))(v10, v7);
  result = 4.0;
  if (v13 != enum case for WidgetFamily.systemSmall(_:))
  {
    result = 5.0;
    if (v13 != enum case for WidgetFamily.systemMedium(_:))
    {
      result = 6.0;
      if (v13 != enum case for WidgetFamily.systemLarge(_:))
      {
        result = 8.0;
        if (v13 != enum case for WidgetFamily.systemExtraLarge(_:) && v13 != enum case for WidgetFamily.accessoryCircular(_:) && v13 != enum case for WidgetFamily.accessoryRectangular(_:) && v13 != enum case for WidgetFamily.accessoryInline(_:))
        {
          (*(v8 + 8))(v10, v7, 8.0);
          return 8.0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000453F4@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = sub_100071EAC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = sub_10007297C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v26 - v14;
  v26 = v1;
  sub_1000129F8(&v26 - v14);
  sub_10007296C();
  sub_10004C730(&qword_1000949D0, &type metadata accessor for WidgetRenderingMode, &protocol conformance descriptor for WidgetRenderingMode);
  v16 = sub_100072B1C();
  v17 = *(v10 + 8);
  v17(v12, v9);
  v17(v15, v9);
  if (v16)
  {
    v18 = enum case for BlendMode.normal(_:);
    v19 = sub_1000728BC();
    return (*(*(v19 - 8) + 104))(v27, v18, v19);
  }

  else
  {
    v21 = v27;
    sub_100043D34(v8);
    (*(v3 + 104))(v5, enum case for ColorScheme.dark(_:), v2);
    v22 = sub_100071E9C();
    v23 = *(v3 + 8);
    v23(v5, v2);
    v23(v8, v2);
    v24 = sub_1000728BC();
    if (v22)
    {
      v25 = &enum case for BlendMode.plusLighter(_:);
    }

    else
    {
      v25 = &enum case for BlendMode.plusDarker(_:);
    }

    return (*(*(v24 - 8) + 104))(v21, *v25, v24);
  }
}

uint64_t sub_100045704@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v210 = a1;
  v198 = a2;
  v195 = sub_10000388C(&qword_100096340, &qword_100075938);
  v194 = *(v195 - 8);
  __chkstk_darwin(v195);
  v165 = (&v164 - v2);
  v3 = sub_10000388C(&qword_100096348, &qword_100075940);
  __chkstk_darwin(v3 - 8);
  v197 = &v164 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v196 = &v164 - v6;
  v185 = sub_10000388C(&qword_100096350, &qword_100075948);
  __chkstk_darwin(v185);
  v184 = &v164 - v7;
  v192 = sub_10000388C(&qword_100096358, &qword_100075950);
  v191 = *(v192 - 8);
  __chkstk_darwin(v192);
  v190 = &v164 - v8;
  v189 = sub_10000388C(&qword_100096360, &qword_100075958);
  __chkstk_darwin(v189);
  v193 = &v164 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v188 = &v164 - v11;
  __chkstk_darwin(v12);
  v208 = &v164 - v13;
  v204 = sub_1000724DC();
  v206 = *(v204 - 8);
  __chkstk_darwin(v204);
  v203 = &v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000729DC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v201 = &v164 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v200 = &v164 - v19;
  __chkstk_darwin(v20);
  v22 = &v164 - v21;
  v175 = sub_10000388C(&qword_100096368, &qword_100075960);
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v173 = &v164 - v23;
  v172 = sub_10000388C(&qword_100096370, &qword_100075968);
  __chkstk_darwin(v172);
  v199 = &v164 - v24;
  v180 = sub_10000388C(&qword_100096378, &qword_100075970);
  __chkstk_darwin(v180);
  v181 = &v164 - v25;
  v183 = sub_10000388C(&qword_100096380, &qword_100075978);
  __chkstk_darwin(v183);
  v182 = &v164 - v26;
  v187 = sub_10000388C(&qword_100096388, &qword_100075980);
  v186 = *(v187 - 8);
  __chkstk_darwin(v187);
  v205 = &v164 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v207 = &v164 - v29;
  sub_1000721DC();
  v30 = sub_10007258C();
  v32 = v31;
  v34 = v33;
  sub_10007248C();
  v35 = sub_10007255C();
  v37 = v36;
  v39 = v38;
  v202 = v40;
  sub_100004C84(v30, v32, v34 & 1);

  sub_100043B2C(v22);
  v209 = v16;
  v41 = (*(v16 + 88))(v22, v15);
  v171 = enum case for WidgetFamily.systemSmall(_:);
  if (v41 == enum case for WidgetFamily.systemSmall(_:))
  {
    sub_10007251C();
  }

  else
  {
    v42 = v41;
    if (v41 == enum case for WidgetFamily.systemMedium(_:))
    {
      sub_10007252C();
    }

    else if (v41 == enum case for WidgetFamily.systemLarge(_:) || v41 == enum case for WidgetFamily.systemExtraLarge(_:))
    {
      sub_1000724EC();
    }

    else
    {
      v43 = enum case for WidgetFamily.accessoryCircular(_:);
      sub_10007252C();
      if (v42 != v43 && v42 != enum case for WidgetFamily.accessoryRectangular(_:) && v42 != enum case for WidgetFamily.accessoryInline(_:))
      {
        (*(v209 + 8))(v22, v15);
      }
    }
  }

  v44 = v206;
  v45 = *(v206 + 104);
  v46 = v203;
  v178 = enum case for Font.Leading.tight(_:);
  v47 = v204;
  v179 = v206 + 104;
  v177 = v45;
  v45(v203);
  sub_10007250C();

  v48 = *(v44 + 8);
  v206 = v44 + 8;
  v176 = v48;
  v48(v46, v47);
  v49 = sub_10007257C();
  v51 = v50;
  v53 = v52;

  sub_100004C84(v35, v37, v39 & 1);

  v202 = type metadata accessor for CPMessageView(0);
  sub_100043050();
  v167 = sub_10007256C();
  v166 = v54;
  v56 = v55;
  v58 = v57;

  sub_100004C84(v49, v51, v53 & 1);

  v59 = v200;
  sub_100043B2C(v200);
  v60 = v209;
  v61 = *(v209 + 104);
  v62 = v201;
  v63 = v171;
  v170 = v209 + 104;
  v169 = v61;
  v61(v201, v171, v15);
  sub_10004C730(&qword_100094BF0, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_100072C1C();
  sub_100072C1C();
  v64 = *(v60 + 8);
  v64(v62, v15);
  v209 = v60 + 8;
  v168 = v64;
  v64(v59, v15);
  if (*&v218[0] == v212)
  {
    v65 = 2;
  }

  else
  {
    v65 = 1;
  }

  KeyPath = swift_getKeyPath();
  v67 = v56 & 1;
  v221 = v67;
  v220 = 0;
  v68 = swift_getKeyPath();
  v69 = swift_getKeyPath();
  *&v212 = v167;
  *(&v212 + 1) = v166;
  LOBYTE(v213) = v67;
  *(&v213 + 1) = v58;
  *&v214 = KeyPath;
  *(&v214 + 1) = v65;
  LOBYTE(v215) = 0;
  *(&v215 + 1) = 256;
  *(&v215 + 1) = v68;
  LOBYTE(v216) = 1;
  *(&v216 + 1) = v69;
  v217 = 0x3FE8000000000000;
  sub_10000388C(&qword_100096390, &qword_100075A18);
  sub_10004BA10();
  v70 = v173;
  sub_1000725FC();
  v218[2] = v214;
  v218[3] = v215;
  v218[4] = v216;
  v219 = v217;
  v218[0] = v212;
  v218[1] = v213;
  sub_100004890(v218, &qword_100096390, &qword_100075A18);
  sub_1000726CC();
  v71 = sub_1000726FC();

  v72 = v199;
  (*(v174 + 32))(v199, v70, v175);
  v73 = v72 + *(v172 + 36);
  *v73 = v71;
  *(v73 + 8) = xmmword_1000756D0;
  *(v73 + 24) = 0x3FF0000000000000;
  LOBYTE(v71) = sub_1000723FC();
  v74 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v71)
  {
    v74 = sub_1000723EC();
  }

  v75 = v200;
  sub_100043B2C(v200);
  v76 = v201;
  v77 = v169;
  v169(v201, v63, v15);
  sub_100072C1C();
  sub_100072C1C();
  v78 = v168;
  v168(v76, v15);
  v78(v75, v15);
  if (v212 != v211)
  {
    LODWORD(v175) = v74;
    sub_100043B2C(v75);
    v77(v76, enum case for WidgetFamily.systemLarge(_:), v15);
    sub_100072C1C();
    sub_100072C1C();
    v78(v76, v15);
    v78(v75, v15);
    LOBYTE(v74) = v175;
  }

  sub_100071E8C();
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v87 = v181;
  sub_100014DEC(v199, v181, &qword_100096370, &qword_100075968);
  v88 = v87 + *(v180 + 36);
  *v88 = v74;
  *(v88 + 8) = v80;
  *(v88 + 16) = v82;
  *(v88 + 24) = v84;
  *(v88 + 32) = v86;
  *(v88 + 40) = 0;
  v89 = sub_1000723CC();
  v90 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v89)
  {
    v90 = sub_1000723EC();
  }

  sub_100044D88();
  sub_100071E8C();
  v92 = v91;
  v94 = v93;
  v96 = v95;
  v98 = v97;
  v99 = v182;
  sub_100014DEC(v87, v182, &qword_100096378, &qword_100075970);
  v100 = v99 + *(v183 + 36);
  *v100 = v90;
  *(v100 + 8) = v92;
  *(v100 + 16) = v94;
  *(v100 + 24) = v96;
  *(v100 + 32) = v98;
  *(v100 + 40) = 0;
  sub_10004BCC4();
  sub_1000725AC();
  sub_100004890(v99, &qword_100096380, &qword_100075978);

  sub_1000721EC();
  v201 = sub_10007258C();
  v102 = v101;
  v104 = v103;
  v209 = v105;
  sub_1000440FC();
  v106 = v203;
  v107 = v204;
  v177(v203, v178, v204);
  v108 = sub_10007250C();

  v176(v106, v107);
  v109 = sub_10000388C(&qword_100095388, &qword_100074738);
  v110 = v184;
  v111 = &v184[*(v109 + 36)];
  v112 = type metadata accessor for DynamicTypeFont(0);
  v113 = v112[6];
  v114 = enum case for ContentSizeCategory.extraLarge(_:);
  v115 = sub_10007222C();
  v116 = *(v115 - 8);
  (*(v116 + 104))(v111 + v113, v114, v115);
  (*(v116 + 56))(v111 + v113, 0, 1, v115);
  sub_10007248C();
  v118 = v117;
  *v111 = swift_getKeyPath();
  sub_10000388C(&qword_100095390, &qword_100074770);
  swift_storeEnumTagMultiPayload();
  *(v111 + v112[5]) = v108;
  v119 = v112[7];
  v120 = v210;
  *(v111 + v119) = v118;
  *v110 = v201;
  *(v110 + 8) = v102;
  *(v110 + 16) = v104 & 1;
  *(v110 + 24) = v209;
  v121 = sub_10004477C();
  v122 = swift_getKeyPath();
  v123 = (v110 + *(sub_10000388C(&qword_100095398, &qword_100074778) + 36));
  *v123 = v122;
  v123[1] = v121;
  v124 = sub_10000388C(&qword_1000953A0, &unk_100074780);
  sub_10004428C(v110 + *(v124 + 36));
  v125 = sub_100044A4C();
  v126 = swift_getKeyPath();
  v127 = v110 + *(sub_10000388C(&qword_1000963F8, &qword_100075A90) + 36);
  *v127 = v126;
  *(v127 + 8) = v125;
  *(v127 + 16) = 0;
  *(v110 + *(sub_10000388C(&qword_100096400, &qword_100076E60) + 36)) = 256;
  v128 = swift_getKeyPath();
  v129 = v110 + *(sub_10000388C(&qword_100096408, &qword_100075A98) + 36);
  *v129 = v128;
  *(v129 + 8) = 1;
  v130 = swift_getKeyPath();
  v131 = (v110 + *(v185 + 36));
  *v131 = v130;
  v131[1] = 0x3FE3333333333333;
  sub_10004BEB4();
  v132 = v190;
  sub_1000725FC();
  sub_100004890(v110, &qword_100096350, &qword_100075948);
  LOBYTE(v128) = sub_1000723CC();
  v133 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v128)
  {
    v133 = sub_1000723EC();
  }

  v134 = (v120 + *(v202 + 44));
  v136 = *v134;
  v135 = v134[1];
  v137 = v196;
  if (v135)
  {
    sub_1000450BC();
  }

  sub_100071E8C();
  v139 = v138;
  v141 = v140;
  v143 = v142;
  v145 = v144;
  v146 = v188;
  (*(v191 + 32))(v188, v132, v192);
  v147 = v146 + *(v189 + 36);
  *v147 = v133;
  *(v147 + 8) = v139;
  *(v147 + 16) = v141;
  *(v147 + 24) = v143;
  *(v147 + 32) = v145;
  *(v147 + 40) = 0;
  sub_100014DEC(v146, v208, &qword_100096360, &qword_100075958);
  if (v135)
  {
    v148 = sub_1000721CC();
    v149 = v165;
    *v165 = v148;
    *(v149 + 8) = 0x4010000000000000;
    *(v149 + 16) = 0;
    v150 = sub_10000388C(&qword_100096438, &qword_100075AA8);
    sub_100046D34(v136, v120, (v149 + *(v150 + 44)));
    sub_100014DEC(v149, v137, &qword_100096340, &qword_100075938);
    v151 = 0;
  }

  else
  {
    v151 = 1;
  }

  (*(v194 + 56))(v137, v151, 1, v195);
  v152 = v186;
  v153 = *(v186 + 16);
  v154 = v205;
  v155 = v187;
  v153(v205, v207, v187);
  v156 = v137;
  v157 = v193;
  sub_100004C94(v208, v193, &qword_100096360, &qword_100075958);
  v158 = v197;
  sub_100004C94(v156, v197, &qword_100096348, &qword_100075940);
  v159 = v198;
  v153(v198, v154, v155);
  v160 = sub_10000388C(&qword_100096430, &qword_100075AA0);
  sub_100004C94(v157, &v159[v160[12]], &qword_100096360, &qword_100075958);
  sub_100004C94(v158, &v159[v160[16]], &qword_100096348, &qword_100075940);
  v161 = &v159[v160[20]];
  *v161 = 0;
  v161[8] = 1;
  sub_100004890(v156, &qword_100096348, &qword_100075940);
  sub_100004890(v208, &qword_100096360, &qword_100075958);
  v162 = *(v152 + 8);
  v162(v207, v155);
  sub_100004890(v158, &qword_100096348, &qword_100075940);
  sub_100004890(v157, &qword_100096360, &qword_100075958);
  return (v162)(v205, v155);
}

uint64_t sub_100046D34@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v160 = a1;
  v155 = a4;
  v143 = sub_10000388C(&qword_100096440, &unk_100076E00);
  __chkstk_darwin(v143);
  v148 = &v114 - v5;
  v146 = sub_10000388C(&qword_100096448, &qword_100075AB0);
  __chkstk_darwin(v146);
  v147 = &v114 - v6;
  v145 = sub_10000388C(&qword_100096450, &qword_100076E10);
  __chkstk_darwin(v145);
  v152 = &v114 - v7;
  v144 = sub_10000388C(&qword_100096458, &qword_100075AB8);
  __chkstk_darwin(v144);
  v149 = &v114 - v8;
  v151 = sub_10000388C(&qword_100096460, &qword_100075AC0);
  __chkstk_darwin(v151);
  v150 = &v114 - v9;
  v10 = sub_10000388C(&qword_100096468, &unk_100076DE0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v161 = &v114 - v15;
  v158 = sub_1000724DC();
  v163 = *(v158 - 8);
  __chkstk_darwin(v158);
  v157 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000729DC();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v140 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v114 - v21;
  v127 = sub_10000388C(&qword_100095388, &qword_100074738);
  __chkstk_darwin(v127);
  v24 = &v114 - v23;
  v138 = sub_10000388C(&qword_100095398, &qword_100074778);
  __chkstk_darwin(v138);
  v139 = &v114 - v25;
  v131 = sub_10000388C(&qword_1000953A0, &unk_100074780);
  __chkstk_darwin(v131);
  v136 = &v114 - v26;
  v133 = sub_10000388C(&qword_1000963F8, &qword_100075A90);
  __chkstk_darwin(v133);
  v135 = &v114 - v27;
  v132 = sub_10000388C(&qword_100096470, &qword_100075AC8);
  __chkstk_darwin(v132);
  v134 = &v114 - v28;
  v137 = sub_10000388C(&qword_100096478, &qword_100075AD0);
  __chkstk_darwin(v137);
  v30 = &v114 - v29;
  v142 = sub_10000388C(&qword_100096480, &qword_100075AD8);
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v159 = &v114 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v164 = &v114 - v33;

  sub_1000721EC();
  v118 = sub_10007258C();
  v117 = v34;
  v116 = v35;
  v119 = v36;
  v160 = a3;
  sub_100043B2C(v22);
  v114 = v18;
  v37 = *(v18 + 88);
  v156 = v17;
  v129 = v37;
  v38 = v37(v22, v17);
  v128 = enum case for WidgetFamily.systemSmall(_:);
  v153 = v11;
  v154 = v10;
  v162 = v13;
  v130 = v18 + 88;
  v115 = enum case for WidgetFamily.systemMedium(_:);
  v123 = v30;
  if (v38 == enum case for WidgetFamily.systemSmall(_:) || v38 == enum case for WidgetFamily.systemMedium(_:))
  {
    sub_1000724FC();
  }

  else if (v38 == enum case for WidgetFamily.systemLarge(_:) || v38 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    sub_10007241C();
  }

  else
  {
    v39 = enum case for WidgetFamily.accessoryCircular(_:);
    v40 = v38;
    sub_1000724FC();
    if (v40 != v39 && v40 != enum case for WidgetFamily.accessoryRectangular(_:) && v40 != enum case for WidgetFamily.accessoryInline(_:))
    {
      (*(v114 + 8))(v22, v156);
    }
  }

  v41 = v163;
  v42 = *(v163 + 104);
  v43 = v157;
  v126 = enum case for Font.Leading.tight(_:);
  v44 = v158;
  v125 = v42;
  v42(v157);
  v45 = sub_10007250C();

  v46 = *(v41 + 8);
  v163 = v41 + 8;
  v124 = v46;
  v46(v43, v44);
  v47 = &v24[*(v127 + 36)];
  v48 = type metadata accessor for DynamicTypeFont(0);
  v49 = v48[6];
  v50 = enum case for ContentSizeCategory.extraLarge(_:);
  v51 = sub_10007222C();
  v52 = *(v51 - 8);
  v53 = *(v52 + 104);
  LODWORD(v127) = v50;
  v122 = v53;
  v53(v47 + v49, v50, v51);
  v121 = *(v52 + 56);
  v121(v47 + v49, 0, 1, v51);
  sub_10007246C();
  v55 = v54;
  *v47 = swift_getKeyPath();
  v120 = sub_10000388C(&qword_100095390, &qword_100074770);
  swift_storeEnumTagMultiPayload();
  *(v47 + v48[5]) = v45;
  *(v47 + v48[7]) = v55;
  v56 = v117;
  *v24 = v118;
  *(v24 + 1) = v56;
  v24[16] = v116 & 1;
  *(v24 + 3) = v119;
  v57 = sub_10007271C();
  KeyPath = swift_getKeyPath();
  v59 = v24;
  v60 = v139;
  sub_100014DEC(v59, v139, &qword_100095388, &qword_100074738);
  v61 = (v60 + *(v138 + 36));
  *v61 = KeyPath;
  v61[1] = v57;
  v62 = v136;
  sub_1000453F4(&v136[*(v131 + 36)]);
  sub_100014DEC(v60, v62, &qword_100095398, &qword_100074778);
  v63 = swift_getKeyPath();
  v64 = v135;
  sub_100014DEC(v62, v135, &qword_1000953A0, &unk_100074780);
  v65 = v64 + *(v133 + 36);
  *v65 = v63;
  *(v65 + 8) = 2;
  *(v65 + 16) = 0;
  v66 = swift_getKeyPath();
  v67 = v64;
  v68 = v134;
  sub_100014DEC(v67, v134, &qword_1000963F8, &qword_100075A90);
  v69 = v68 + *(v132 + 36);
  *v69 = v66;
  *(v69 + 8) = 1;
  v70 = swift_getKeyPath();
  v71 = v123;
  sub_100014DEC(v68, v123, &qword_100096470, &qword_100075AC8);
  v72 = (v71 + *(v137 + 36));
  *v72 = v70;
  v72[1] = 0x3FECCCCCCCCCCCCDLL;
  sub_10004C168();
  sub_1000725FC();
  sub_100004890(v71, &qword_100096478, &qword_100075AD0);
  v73 = sub_10007276C();
  v74 = v140;
  sub_100043B2C(v140);
  v75 = v129(v74, v156);
  if (v75 == v128 || v75 == v115)
  {
    sub_1000724FC();
  }

  else if (v75 == enum case for WidgetFamily.systemLarge(_:) || v75 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    sub_10007241C();
  }

  else
  {
    v76 = enum case for WidgetFamily.accessoryCircular(_:);
    v77 = v75;
    sub_1000724FC();
    if (v77 != v76 && v77 != enum case for WidgetFamily.accessoryRectangular(_:) && v77 != enum case for WidgetFamily.accessoryInline(_:))
    {
      (*(v114 + 8))(v74, v156);
    }
  }

  v79 = v157;
  v78 = v158;
  v125(v157, v126, v158);
  v80 = sub_10007250C();

  v124(v79, v78);
  v81 = v148;
  v82 = &v148[*(v143 + 36)];
  v83 = v48[6];
  v122(v82 + v83, v127, v51);
  v121(v82 + v83, 0, 1, v51);
  sub_10007248C();
  v85 = v84;
  *v82 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v82 + v48[5]) = v80;
  *(v82 + v48[7]) = v85;
  *v81 = v73;
  *(v81 + 8) = 1;
  v86 = sub_10007271C();
  v87 = swift_getKeyPath();
  v88 = v147;
  sub_100014DEC(v81, v147, &qword_100096440, &unk_100076E00);
  v89 = (v88 + *(v146 + 36));
  *v89 = v87;
  v89[1] = v86;
  v90 = v152;
  sub_1000453F4(&v152[*(v145 + 36)]);
  sub_100014DEC(v88, v90, &qword_100096448, &qword_100075AB0);
  v91 = v149;
  v92 = &v149[*(v144 + 36)];
  v93 = *(sub_10000388C(&qword_100096498, &qword_100076930) + 28);
  v94 = enum case for Image.Scale.small(_:);
  v95 = sub_1000727BC();
  (*(*(v95 - 8) + 104))(v92 + v93, v94, v95);
  *v92 = swift_getKeyPath();
  sub_100014DEC(v90, v91, &qword_100096450, &qword_100076E10);
  v96 = swift_getKeyPath();
  v97 = v150;
  sub_100014DEC(v91, v150, &qword_100096458, &qword_100075AB8);
  v98 = (v97 + *(v151 + 36));
  *v98 = v96;
  v98[1] = 0x3FECCCCCCCCCCCCDLL;
  sub_10004C2E0();
  v99 = v161;
  sub_1000725FC();
  sub_100004890(v97, &qword_100096460, &qword_100075AC0);
  v100 = v141;
  v101 = *(v141 + 16);
  v102 = v159;
  v103 = v142;
  v101(v159, v164, v142);
  v105 = v153;
  v104 = v154;
  v106 = *(v153 + 16);
  v106(v162, v99, v154);
  v107 = v155;
  v101(v155, v102, v103);
  v108 = sub_10000388C(&qword_1000964E8, &qword_100075B18);
  v109 = v162;
  v106(&v107[*(v108 + 48)], v162, v104);
  v110 = &v107[*(v108 + 64)];
  *v110 = 0;
  v110[8] = 1;
  v111 = *(v105 + 8);
  v111(v161, v104);
  v112 = *(v100 + 8);
  v112(v164, v103);
  v111(v109, v104);
  return (v112)(v159, v103);
}

uint64_t sub_100047DF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v66 = a2;
  v3 = type metadata accessor for CPAppGridView(0);
  v4 = (v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_10000388C(&qword_1000962C0, &qword_100076240);
  __chkstk_darwin(v59);
  v8 = &v59 - v7;
  v60 = sub_10000388C(&qword_1000962C8, &qword_100077400);
  __chkstk_darwin(v60);
  v10 = &v59 - v9;
  v61 = sub_10000388C(&qword_1000962D0, &qword_1000774A0);
  __chkstk_darwin(v61);
  v63 = &v59 - v11;
  v62 = sub_10000388C(&qword_1000962D8, &qword_100075810);
  __chkstk_darwin(v62);
  v65 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v59 - v14;
  __chkstk_darwin(v16);
  v64 = &v59 - v17;
  v18 = type metadata accessor for CPMessageView(0);
  sub_100016544(a1 + *(v18 + 32), v6);
  v19 = *(v18 + 36);
  v20 = v4[7];
  v21 = sub_100071F5C();
  (*(*(v21 - 8) + 16))(&v6[v20], a1 + v19, v21);
  *&v6[v4[13]] = swift_getKeyPath();
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  swift_storeEnumTagMultiPayload();
  *&v6[v4[14]] = swift_getKeyPath();
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  swift_storeEnumTagMultiPayload();
  *&v6[v4[8]] = 1;
  *&v6[v4[9]] = 2;
  v6[v4[10]] = 0;
  v22 = v4[11];
  *&v6[v22] = swift_getKeyPath();
  sub_10000388C(&qword_100094908, &qword_100073A20);
  swift_storeEnumTagMultiPayload();
  v23 = v4[12];
  *&v6[v23] = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  sub_10000388C(&qword_100094F68, &qword_1000740E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100074490;
  v25 = sub_1000723FC();
  *(inited + 32) = v25;
  v26 = sub_1000723CC();
  *(inited + 33) = v26;
  v27 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v25)
  {
    v27 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v26)
  {
    v27 = sub_1000723EC();
  }

  sub_100041AB4(v6, v8);
  v28 = &v8[*(v59 + 36)];
  *v28 = v27;
  *(v28 + 8) = 0u;
  *(v28 + 24) = 0u;
  v28[40] = 1;
  v29 = sub_1000723DC();
  v30 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v29)
  {
    v30 = sub_1000723EC();
  }

  sub_100071F3C();
  sub_100071E8C();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_100014DEC(v8, v10, &qword_1000962C0, &qword_100076240);
  v39 = &v10[*(v60 + 36)];
  *v39 = v30;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  v40 = sub_1000723BC();
  v41 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v40)
  {
    v41 = sub_1000723EC();
  }

  sub_100071E8C();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v63;
  sub_100014DEC(v10, v63, &qword_1000962C8, &qword_100077400);
  v51 = v50 + *(v61 + 36);
  *v51 = v41;
  *(v51 + 8) = v43;
  *(v51 + 16) = v45;
  *(v51 + 24) = v47;
  *(v51 + 32) = v49;
  *(v51 + 40) = 0;
  sub_100071F3C();
  sub_100071F3C();
  sub_1000728AC();
  sub_100071F2C();
  sub_100014DEC(v50, v15, &qword_1000962D0, &qword_1000774A0);
  v52 = &v15[*(v62 + 36)];
  v53 = v68;
  *v52 = v67;
  *(v52 + 1) = v53;
  *(v52 + 2) = v69;
  v54 = v64;
  sub_100014DEC(v15, v64, &qword_1000962D8, &qword_100075810);
  v55 = v65;
  sub_100004C94(v54, v65, &qword_1000962D8, &qword_100075810);
  v56 = v66;
  *v66 = 0;
  *(v56 + 8) = 1;
  v57 = sub_10000388C(&qword_1000962E0, &qword_1000758D8);
  sub_100004C94(v55, v56 + *(v57 + 48), &qword_1000962D8, &qword_100075810);
  sub_100004890(v54, &qword_1000962D8, &qword_100075810);
  return sub_100004890(v55, &qword_1000962D8, &qword_100075810);
}

uint64_t sub_1000484CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000388C(&qword_1000962E8, &qword_1000758E0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v23 - v9;
  v11 = type metadata accessor for CPMessageView(0);
  sub_100016544(a1 + *(v11 + 32), v10);
  v12 = *(v11 + 36);
  v13 = type metadata accessor for CPAppGridView(0);
  v14 = v13[5];
  v15 = sub_100071F5C();
  (*(*(v15 - 8) + 16))(&v10[v14], a1 + v12, v15);
  *&v10[v13[11]] = swift_getKeyPath();
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  swift_storeEnumTagMultiPayload();
  *&v10[v13[12]] = swift_getKeyPath();
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  swift_storeEnumTagMultiPayload();
  *&v10[v13[6]] = 1;
  *&v10[v13[7]] = 3;
  v10[v13[8]] = 0;
  v16 = v13[9];
  *&v10[v16] = swift_getKeyPath();
  sub_10000388C(&qword_100094908, &qword_100073A20);
  swift_storeEnumTagMultiPayload();
  v17 = v13[10];
  *&v10[v17] = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v13) = sub_1000723AC();
  v18 = &v10[*(sub_10000388C(&qword_1000962C0, &qword_100076240) + 36)];
  *v18 = v13;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  v18[40] = 1;
  sub_100071F3C();
  sub_100043F3C();
  sub_1000728AC();
  sub_100071F2C();
  v19 = &v10[*(v5 + 44)];
  v20 = v23[1];
  *v19 = v23[0];
  *(v19 + 1) = v20;
  *(v19 + 2) = v23[2];
  sub_100004C94(v10, v7, &qword_1000962E8, &qword_1000758E0);
  *a2 = 0;
  *(a2 + 8) = 1;
  v21 = sub_10000388C(&qword_1000962F0, &qword_1000758E8);
  sub_100004C94(v7, a2 + *(v21 + 48), &qword_1000962E8, &qword_1000758E0);
  sub_100004890(v10, &qword_1000962E8, &qword_1000758E0);
  return sub_100004890(v7, &qword_1000962E8, &qword_1000758E0);
}

uint64_t sub_100048804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = sub_1000729DC();
  v4 = *(v26 - 8);
  __chkstk_darwin(v26);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000388C(&qword_1000962F8, &qword_1000758F0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for CPMessageView(0);
  sub_100016544(a1 + *(v14 + 32), v13);
  v15 = *(v14 + 36);
  v16 = type metadata accessor for CPAppGridView(0);
  v17 = v16[5];
  v18 = sub_100071F5C();
  (*(*(v18 - 8) + 16))(&v13[v17], a1 + v15, v18);
  *&v13[v16[11]] = swift_getKeyPath();
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  swift_storeEnumTagMultiPayload();
  *&v13[v16[12]] = swift_getKeyPath();
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  swift_storeEnumTagMultiPayload();
  *&v13[v16[6]] = 2;
  *&v13[v16[7]] = 3;
  v13[v16[8]] = 0;
  v19 = v16[9];
  *&v13[v19] = swift_getKeyPath();
  sub_10000388C(&qword_100094908, &qword_100073A20);
  swift_storeEnumTagMultiPayload();
  v20 = v16[10];
  *&v13[v20] = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  sub_100071F3C();
  sub_100043B2C(v6);
  sub_100022F7C(a1 + v15, v6);
  (*(v4 + 8))(v6, v26);
  sub_1000728AC();
  sub_100071F2C();
  v21 = &v13[*(v8 + 44)];
  v22 = v28;
  *v21 = v27;
  *(v21 + 1) = v22;
  *(v21 + 2) = v29;
  sub_100004C94(v13, v10, &qword_1000962F8, &qword_1000758F0);
  *a2 = 0;
  *(a2 + 8) = 1;
  v23 = sub_10000388C(&qword_100096300, &qword_1000758F8);
  sub_100004C94(v10, a2 + *(v23 + 48), &qword_1000962F8, &qword_1000758F0);
  sub_100004890(v13, &qword_1000962F8, &qword_1000758F0);
  return sub_100004890(v10, &qword_1000962F8, &qword_1000758F0);
}

double sub_100048BB0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000729DC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000946E0 != -1)
  {
    swift_once();
  }

  v8 = qword_100099978;
  v9 = *(type metadata accessor for CPMessageView(0) + 36);

  sub_100071F3C();
  sub_100043B2C(v7);
  sub_100022F7C(a1 + v9, v7);
  (*(v5 + 8))(v7, v4);
  sub_1000728AC();
  sub_100071F2C();
  v10 = v15[1];
  v11 = v16;
  v12 = v17;
  v13 = v18;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  *(a2 + 48) = v13;
  result = *&v19;
  *(a2 + 56) = v19;
  return result;
}

uint64_t sub_100048D6C@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v43 = sub_10000388C(&qword_100096218, &qword_1000757A0);
  __chkstk_darwin(v43);
  v38 = (&v36 - v2);
  v40 = sub_10000388C(&qword_100096220, &qword_1000757A8);
  __chkstk_darwin(v40);
  v42 = &v36 - v3;
  v50 = sub_10000388C(&qword_100096228, &qword_1000757B0);
  __chkstk_darwin(v50);
  v44 = &v36 - v4;
  v41 = sub_10000388C(&qword_100096230, &qword_1000757B8);
  __chkstk_darwin(v41);
  v39 = (&v36 - v5);
  v48 = sub_10000388C(&qword_100096238, &qword_1000757C0);
  __chkstk_darwin(v48);
  v45 = (&v36 - v6);
  v51 = sub_10000388C(&qword_100096240, &qword_1000757C8);
  __chkstk_darwin(v51);
  v49 = &v36 - v7;
  v47 = sub_10000388C(&qword_100096248, &qword_1000757D0);
  __chkstk_darwin(v47);
  v9 = &v36 - v8;
  v10 = sub_10000388C(&qword_100096250, &qword_1000757D8);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = sub_10000388C(&qword_100096258, &qword_1000757E0);
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  v52 = sub_10000388C(&qword_100096260, &qword_1000757E8);
  __chkstk_darwin(v52);
  v17 = &v36 - v16;
  v18 = sub_1000729DC();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v1;
  sub_100043B2C(v21);
  v37 = v19;
  v22 = (*(v19 + 88))(v21, v18);
  if (v22 == enum case for WidgetFamily.systemSmall(_:))
  {
    swift_storeEnumTagMultiPayload();
    sub_100004C3C(&qword_100096280, &qword_100096238, &qword_1000757C0, &protocol conformance descriptor for HStack<A>);
    sub_10007230C();
    sub_100004C94(v15, v9, &qword_100096258, &qword_1000757E0);
    swift_storeEnumTagMultiPayload();
    sub_10004B7A4();
    sub_10004B85C();
    sub_10007230C();
    sub_100004890(v15, &qword_100096258, &qword_1000757E0);
    sub_100004C94(v17, v49, &qword_100096260, &qword_1000757E8);
    swift_storeEnumTagMultiPayload();
    sub_10000388C(&qword_100096268, &qword_1000757F0);
    sub_10004B718();
    sub_10004B940();
    sub_10007230C();
    return sub_100004890(v17, &qword_100096260, &qword_1000757E8);
  }

  else
  {
    v24 = v49;
    v36 = v13;
    if (v22 == enum case for WidgetFamily.systemMedium(_:))
    {
      v25 = sub_1000721CC();
      v26 = v45;
      *v45 = v25;
      *(v26 + 8) = 0;
      *(v26 + 16) = 0;
      v27 = sub_10000388C(&qword_1000962B8, &qword_100075808);
      sub_100047DF0(v46, (v26 + *(v27 + 44)));
      sub_100004C94(v26, v12, &qword_100096238, &qword_1000757C0);
      swift_storeEnumTagMultiPayload();
      sub_100004C3C(&qword_100096280, &qword_100096238, &qword_1000757C0, &protocol conformance descriptor for HStack<A>);
      sub_10007230C();
      sub_100004C94(v15, v9, &qword_100096258, &qword_1000757E0);
      swift_storeEnumTagMultiPayload();
      sub_10004B7A4();
      sub_10004B85C();
      sub_10007230C();
      sub_100004890(v15, &qword_100096258, &qword_1000757E0);
      sub_100004C94(v17, v24, &qword_100096260, &qword_1000757E8);
      swift_storeEnumTagMultiPayload();
      sub_10000388C(&qword_100096268, &qword_1000757F0);
      sub_10004B718();
      sub_10004B940();
      sub_10007230C();
      sub_100004890(v17, &qword_100096260, &qword_1000757E8);
      return sub_100004890(v26, &qword_100096238, &qword_1000757C0);
    }

    else if (v22 == enum case for WidgetFamily.systemLarge(_:))
    {
      v28 = sub_10007223C();
      v29 = v39;
      *v39 = v28;
      *(v29 + 8) = 0;
      *(v29 + 16) = 0;
      v30 = sub_10000388C(&qword_1000962B0, &qword_100075800);
      sub_1000484CC(v46, v29 + *(v30 + 44));
      sub_100004C94(v29, v42, &qword_100096230, &qword_1000757B8);
      swift_storeEnumTagMultiPayload();
      sub_100004C3C(&qword_100096290, &qword_100096230, &qword_1000757B8, &protocol conformance descriptor for VStack<A>);
      sub_100004C3C(&qword_100096298, &qword_100096218, &qword_1000757A0, &protocol conformance descriptor for HStack<A>);
      v31 = v44;
      sub_10007230C();
      sub_100004C94(v31, v9, &qword_100096228, &qword_1000757B0);
      swift_storeEnumTagMultiPayload();
      sub_10004B7A4();
      sub_10004B85C();
      sub_10007230C();
      sub_100004890(v31, &qword_100096228, &qword_1000757B0);
      sub_100004C94(v17, v24, &qword_100096260, &qword_1000757E8);
      swift_storeEnumTagMultiPayload();
      sub_10000388C(&qword_100096268, &qword_1000757F0);
      sub_10004B718();
      sub_10004B940();
      sub_10007230C();
      sub_100004890(v17, &qword_100096260, &qword_1000757E8);
      return sub_100004890(v29, &qword_100096230, &qword_1000757B8);
    }

    else if (v22 == enum case for WidgetFamily.systemExtraLarge(_:))
    {
      v32 = sub_1000721CC();
      v33 = v38;
      *v38 = v32;
      *(v33 + 8) = 0;
      *(v33 + 16) = 0;
      v34 = sub_10000388C(&qword_1000962A8, &qword_1000757F8);
      sub_100048804(v46, v33 + *(v34 + 44));
      sub_100004C94(v33, v42, &qword_100096218, &qword_1000757A0);
      swift_storeEnumTagMultiPayload();
      sub_100004C3C(&qword_100096290, &qword_100096230, &qword_1000757B8, &protocol conformance descriptor for VStack<A>);
      sub_100004C3C(&qword_100096298, &qword_100096218, &qword_1000757A0, &protocol conformance descriptor for HStack<A>);
      v35 = v44;
      sub_10007230C();
      sub_100004C94(v35, v9, &qword_100096228, &qword_1000757B0);
      swift_storeEnumTagMultiPayload();
      sub_10004B7A4();
      sub_10004B85C();
      sub_10007230C();
      sub_100004890(v35, &qword_100096228, &qword_1000757B0);
      sub_100004C94(v17, v24, &qword_100096260, &qword_1000757E8);
      swift_storeEnumTagMultiPayload();
      sub_10000388C(&qword_100096268, &qword_1000757F0);
      sub_10004B718();
      sub_10004B940();
      sub_10007230C();
      sub_100004890(v17, &qword_100096260, &qword_1000757E8);
      return sub_100004890(v33, &qword_100096218, &qword_1000757A0);
    }

    else if (v22 == enum case for WidgetFamily.accessoryCircular(_:) || v22 == enum case for WidgetFamily.accessoryRectangular(_:) || v22 == enum case for WidgetFamily.accessoryInline(_:))
    {
      v54 = 0;
      sub_10007230C();
      *v24 = v55;
      swift_storeEnumTagMultiPayload();
      sub_10000388C(&qword_100096268, &qword_1000757F0);
      sub_10004B718();
      sub_10004B940();
      return sub_10007230C();
    }

    else
    {
      v56 = 1;
      sub_10007230C();
      *v24 = v57;
      swift_storeEnumTagMultiPayload();
      sub_10000388C(&qword_100096268, &qword_1000757F0);
      sub_10004B718();
      sub_10004B940();
      sub_10007230C();
      return (*(v37 + 8))(v21, v18);
    }
  }
}

uint64_t sub_100049A74@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000729DC();
  v49 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v48 = &v46 - v7;
  v8 = sub_10007297C();
  v52 = *(v8 - 8);
  v53 = v8;
  __chkstk_darwin(v8);
  v51 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v46 - v11;
  v12 = sub_10007218C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for CPMessageView(0);
  v17 = *(result + 28);
  v54 = v1;
  v18 = v1 + v17;
  v19 = *v18;
  if (*(v18 + 8) == 1)
  {
    v76 = v19 & 1;
    if ((v19 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {

    sub_100072CEC();
    v47 = v12;
    v20 = v3;
    v21 = sub_10007239C();
    sub_100071E4C();

    v3 = v20;
    sub_10007217C();
    swift_getAtKeyPath();
    sub_100004E00(v19, 0);
    result = (*(v13 + 8))(v15, v47);
    if (v76 != 1)
    {
LABEL_6:
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 255;
      goto LABEL_15;
    }
  }

  v22 = v50;
  sub_1000129F8(v50);
  v23 = v51;
  sub_10007296C();
  sub_10004C730(&qword_1000949D0, &type metadata accessor for WidgetRenderingMode, &protocol conformance descriptor for WidgetRenderingMode);
  v24 = v53;
  v25 = sub_100072B1C();
  v26 = *(v52 + 8);
  v26(v23, v24);
  result = (v26)(v22, v24);
  if (v25)
  {
    goto LABEL_6;
  }

  v42 = v48;
  sub_100043B2C(v48);
  v43 = v49;
  (*(v49 + 104))(v5, enum case for WidgetFamily.systemSmall(_:), v3);
  sub_10004C730(&qword_100094BF0, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_100072C1C();
  sub_100072C1C();
  v44 = *(v43 + 8);
  v44(v5, v3);
  v44(v42, v3);
  if (*&v74[0] == v68)
  {
    if (qword_1000946E0 != -1)
    {
      swift_once();
    }

    *&v68 = qword_100099978;
    BYTE8(v68) = 0;
  }

  else
  {
    if (qword_1000946D8 != -1)
    {
      swift_once();
    }

    *&v68 = qword_100099970;
    BYTE8(v68) = 1;
  }

  sub_10007230C();
  v27 = *&v74[0];
  v45 = BYTE8(v74[0]);

  sub_10004A108(&v62);
  v60 = v66;
  *v61 = *v67;
  *&v61[15] = *&v67[15];
  v56 = v62;
  v57 = v63;
  v58 = v64;
  v59 = v65;
  v55 = v45;
  v68 = v62;
  v69 = v63;
  v70 = v64;
  v71 = v65;
  *(v73 + 15) = *&v67[15];
  v73[0] = *v67;
  v72 = v66;

  sub_100004C94(&v68, v74, &qword_1000964F0, &qword_100075B20);

  v53 = *(&v68 + 1);
  v54 = v68;
  v51 = *(&v69 + 1);
  v52 = v69;
  v49 = *(&v70 + 1);
  v50 = v70;
  v35 = *(&v71 + 1);
  v48 = v71;
  v37 = *(&v72 + 1);
  v36 = v72;
  v39 = *(&v73[0] + 1);
  v38 = *&v73[0];
  v40 = LOWORD(v73[1]) | (BYTE2(v73[1]) << 16);
  v41 = v55;
  v74[0] = v56;
  v74[1] = v57;
  v74[2] = v58;
  *&v75[15] = *&v61[15];
  v74[4] = v60;
  *v75 = *v61;
  v74[3] = v59;
  sub_100004890(v74, &qword_1000964F0, &qword_100075B20);

  v34 = v48;
  v33 = v49;
  v32 = v50;
  v31 = v51;
  v30 = v52;
  v29 = v53;
  v28 = v54;
LABEL_15:
  *a1 = v27;
  *(a1 + 8) = v41;
  *(a1 + 16) = v28;
  *(a1 + 24) = v29;
  *(a1 + 32) = v30;
  *(a1 + 40) = v31;
  *(a1 + 48) = v32;
  *(a1 + 56) = v33;
  *(a1 + 64) = v34;
  *(a1 + 72) = v35;
  *(a1 + 80) = v36;
  *(a1 + 88) = v37;
  *(a1 + 96) = v38;
  *(a1 + 104) = v39;
  *(a1 + 112) = v40;
  *(a1 + 114) = BYTE2(v40);
  return result;
}

__n128 sub_10004A108@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000729DC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100043B2C(v7);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 != enum case for WidgetFamily.systemSmall(_:))
  {
    if (v8 == enum case for WidgetFamily.systemMedium(_:))
    {
      v9 = sub_1000721CC();
      v19[0] = 0;
      if (qword_1000946E0 != -1)
      {
        swift_once();
      }

      v10 = qword_100099978;
      type metadata accessor for CPMessageView(0);

      sub_100071F3C();
      sub_100071F3C();
      sub_1000728AC();
      sub_100071F2C();
      v22 = 1;
      v21 = BYTE8(v30);
      v20 = BYTE8(v31);
      v35 = v9;
      LOBYTE(v36[0]) = v19[0];
      *(&v36[0] + 1) = 0;
      LOBYTE(v36[1]) = 1;
      *(&v36[1] + 1) = v10;
      *&v36[2] = v30;
      BYTE8(v36[2]) = BYTE8(v30);
      *&v36[3] = v31;
      BYTE8(v36[3]) = BYTE8(v31);
      v36[4] = v32;
      *&v46[32] = v36[1];
      *&v46[48] = v36[2];
      *&v46[64] = v36[3];
      *v47 = v32;
      *v46 = v9;
      *&v46[16] = *&v36[0];
      v37 = 1;
      v47[16] = 1;
      sub_100004C94(&v35, &v40, &qword_100096520, &qword_100075B38);
      sub_10000388C(&qword_100096520, &qword_100075B38);
      sub_100004C3C(&qword_100096518, &qword_100096520, &qword_100075B38, &protocol conformance descriptor for HStack<A>);
      sub_10007230C();
      *&v46[64] = v44;
      *v47 = v45[0];
      *&v47[16] = LOBYTE(v45[1]);
      *v46 = v40;
      *&v46[16] = v41;
      *&v46[32] = v42;
      *&v46[48] = v43;
      v38 = 0;
    }

    else
    {
      if (v8 == enum case for WidgetFamily.systemLarge(_:))
      {
        v11 = sub_10007223C();
        v19[0] = 0;
        if (qword_1000946E0 != -1)
        {
          swift_once();
        }

        v12 = qword_100099978;
        type metadata accessor for CPMessageView(0);

        sub_100071F3C();
        sub_100043F3C();
        sub_1000728AC();
        sub_100071F2C();
        v22 = 1;
        v21 = BYTE8(v30);
        v20 = BYTE8(v31);
        v35 = v11;
        LOBYTE(v36[0]) = v19[0];
        *(&v36[0] + 1) = 0;
        LOBYTE(v36[1]) = 1;
        *(&v36[1] + 1) = v12;
        *&v36[2] = v30;
        BYTE8(v36[2]) = BYTE8(v30);
        *&v36[3] = v31;
        BYTE8(v36[3]) = BYTE8(v31);
        v36[4] = v32;
        *&v46[32] = v36[1];
        *&v46[48] = v36[2];
        *&v46[64] = v36[3];
        *v47 = v32;
        *v46 = v11;
        *&v46[16] = *&v36[0];
        v37 = 0;
        v47[16] = 0;
        sub_100004C94(&v35, &v40, &qword_100096540, &qword_100075B48);
        sub_10000388C(&qword_100096540, &qword_100075B48);
        sub_10000388C(&qword_100096520, &qword_100075B38);
        sub_100004C3C(&qword_100096538, &qword_100096540, &qword_100075B48, &protocol conformance descriptor for VStack<A>);
        sub_100004C3C(&qword_100096518, &qword_100096520, &qword_100075B38, &protocol conformance descriptor for HStack<A>);
        sub_10007230C();
        *&v46[64] = v44;
        *v47 = v45[0];
        v47[16] = v45[1];
        *v46 = v40;
        *&v46[16] = v41;
        *&v46[32] = v42;
        *&v46[48] = v43;
        v38 = 1;
        v47[17] = 1;
        sub_10000388C(&qword_100096510, &qword_100075B30);
        sub_10000388C(&qword_100096530, &qword_100075B40);
        sub_10004C804();
        sub_10004C8BC();
        sub_10007230C();
        *&v46[64] = v27;
        *v47 = v28;
        *&v47[16] = v29;
        *v46 = v23;
        *&v46[16] = v24;
        *&v46[32] = v25;
        *&v46[48] = v26;
        v39 = 0;
        v47[18] = 0;
        sub_10000388C(&qword_1000964F8, &qword_100075B28);
        sub_10000388C(&qword_100096268, &qword_1000757F0);
        sub_10004C778();
        sub_10004B940();
        sub_10007230C();
        sub_100004890(&v35, &qword_100096540, &qword_100075B48);
        *&v46[64] = v44;
        *v47 = v45[0];
        goto LABEL_14;
      }

      if (v8 != enum case for WidgetFamily.systemExtraLarge(_:))
      {
        if (v8 == enum case for WidgetFamily.accessoryCircular(_:) || v8 == enum case for WidgetFamily.accessoryRectangular(_:) || v8 == enum case for WidgetFamily.accessoryInline(_:))
        {
          v46[0] = 0;
          sub_10007230C();
          LOBYTE(v35) = 1;
          LOBYTE(v40) = v23;
          BYTE2(v45[1]) = 1;
          goto LABEL_3;
        }

        v46[0] = 1;
        sub_10007230C();
        LOBYTE(v35) = 1;
        v46[0] = v23;
        v47[18] = 1;
        sub_10000388C(&qword_1000964F8, &qword_100075B28);
        sub_10000388C(&qword_100096268, &qword_1000757F0);
        sub_10004C778();
        sub_10004B940();
        sub_10007230C();
        (*(v5 + 8))(v7, v4);
        goto LABEL_9;
      }

      v16 = sub_1000721CC();
      LOBYTE(v40) = 0;
      sub_100048BB0(v2, &v30);
      *&v46[7] = v30;
      *&v46[23] = v31;
      *&v46[39] = v32;
      *&v46[55] = v33;
      *&v46[71] = v34;
      v35 = v16;
      LOBYTE(v36[0]) = v40;
      *(v36 + 1) = *v46;
      v36[4] = *&v46[63];
      *(&v36[3] + 1) = *&v46[48];
      *(&v36[2] + 1) = *&v46[32];
      *(&v36[1] + 1) = *&v46[16];
      *&v46[32] = v36[1];
      *&v46[48] = v36[2];
      *&v46[64] = v36[3];
      *v47 = v36[4];
      *v46 = v16;
      *&v46[16] = v36[0];
      v37 = 1;
      v47[16] = 1;
      sub_100004C94(&v35, &v40, &qword_100096520, &qword_100075B38);
      sub_10000388C(&qword_100096540, &qword_100075B48);
      sub_10000388C(&qword_100096520, &qword_100075B38);
      sub_100004C3C(&qword_100096538, &qword_100096540, &qword_100075B48, &protocol conformance descriptor for VStack<A>);
      sub_100004C3C(&qword_100096518, &qword_100096520, &qword_100075B38, &protocol conformance descriptor for HStack<A>);
      sub_10007230C();
      *&v46[64] = v44;
      *v47 = v45[0];
      v47[16] = v45[1];
      *v46 = v40;
      *&v46[16] = v41;
      *&v46[32] = v42;
      *&v46[48] = v43;
      v38 = 1;
      v47[17] = 1;
    }

    sub_10000388C(&qword_100096510, &qword_100075B30);
    sub_10000388C(&qword_100096530, &qword_100075B40);
    sub_10004C804();
    sub_10004C8BC();
    sub_10007230C();
    *&v46[64] = v27;
    *v47 = v28;
    *&v47[16] = v29;
    *v46 = v23;
    *&v46[16] = v24;
    *&v46[32] = v25;
    *&v46[48] = v26;
    v39 = 0;
    v47[18] = 0;
    sub_10000388C(&qword_1000964F8, &qword_100075B28);
    sub_10000388C(&qword_100096268, &qword_1000757F0);
    sub_10004C778();
    sub_10004B940();
    sub_10007230C();
    sub_100004890(&v35, &qword_100096520, &qword_100075B38);
LABEL_9:
    *&v46[64] = v44;
    *v47 = v45[0];
LABEL_14:
    *&v47[15] = *(v45 + 15);
    *v46 = v40;
    *&v46[16] = v41;
    *&v46[32] = v42;
    *&v46[48] = v43;
    goto LABEL_15;
  }

  v39 = 0;
  v47[16] = 0;
  sub_10000388C(&qword_100096520, &qword_100075B38);
  sub_100004C3C(&qword_100096518, &qword_100096520, &qword_100075B38, &protocol conformance descriptor for HStack<A>);
  sub_10007230C();
  *&v46[64] = v44;
  *v47 = v45[0];
  *&v47[16] = LOBYTE(v45[1]);
  *v46 = v40;
  *&v46[16] = v41;
  *&v46[32] = v42;
  *&v46[48] = v43;
  LOBYTE(v30) = 0;
  sub_10000388C(&qword_100096510, &qword_100075B30);
  sub_10000388C(&qword_100096530, &qword_100075B40);
  sub_10004C804();
  sub_10004C8BC();
  sub_10007230C();
  v44 = v27;
  v45[0] = v28;
  LOWORD(v45[1]) = v29;
  v40 = v23;
  v41 = v24;
  v42 = v25;
  v43 = v26;
  LOBYTE(v35) = 0;
  BYTE2(v45[1]) = 0;
LABEL_3:
  sub_10000388C(&qword_1000964F8, &qword_100075B28);
  sub_10000388C(&qword_100096268, &qword_1000757F0);
  sub_10004C778();
  sub_10004B940();
  sub_10007230C();
LABEL_15:
  v13 = *v47;
  *(a1 + 64) = *&v46[64];
  *(a1 + 80) = v13;
  *(a1 + 95) = *&v47[15];
  v14 = *&v46[16];
  *a1 = *v46;
  *(a1 + 16) = v14;
  result = *&v46[48];
  *(a1 + 32) = *&v46[32];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10004AC24()
{
  v1 = sub_10007236C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000388C(&qword_1000961B0, &qword_100075748);
  __chkstk_darwin(v5);
  v7 = (v13 - v6);
  *v7 = sub_1000728AC();
  v7[1] = v8;
  v9 = sub_10000388C(&qword_1000961B8, &qword_100075750);
  sub_10004AE60(v0, v7 + *(v9 + 44));
  type metadata accessor for CPMessageView(0);
  sub_100071F3C();
  sub_100071F3C();
  sub_1000728AC();
  sub_100071F2C();
  v10 = (v7 + *(v5 + 36));
  v11 = v13[1];
  *v10 = v13[0];
  v10[1] = v11;
  v10[2] = v13[2];
  sub_10007235C();
  sub_1000728AC();
  sub_10004B660();
  sub_10007265C();
  (*(v2 + 8))(v4, v1);
  return sub_100004890(v7, &qword_1000961B0, &qword_100075748);
}

uint64_t sub_10004AE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000388C(&qword_1000961D8, &qword_100075760);
  __chkstk_darwin(v4 - 8);
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v34 = &v34 - v7;
  v8 = sub_10000388C(&qword_1000961E0, &qword_100075768);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  v14 = sub_10000388C(&qword_1000961E8, &qword_100075770);
  __chkstk_darwin(v14 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  sub_100049A74(v43);
  *v19 = sub_10007223C();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v20 = &v19[*(sub_10000388C(&qword_1000961F0, &qword_100075778) + 44)];
  *v13 = sub_1000721CC();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v21 = sub_10000388C(&qword_1000961F8, &qword_100075780);
  sub_10004B2A4(a1, &v13[*(v21 + 44)]);
  sub_100004C94(v13, v10, &qword_1000961E0, &qword_100075768);
  sub_100004C94(v10, v20, &qword_1000961E0, &qword_100075768);
  v22 = v20 + *(sub_10000388C(&qword_100096200, &qword_100075788) + 48);
  *v22 = 0;
  *(v22 + 8) = 1;
  sub_100004890(v13, &qword_1000961E0, &qword_100075768);
  sub_100004890(v10, &qword_1000961E0, &qword_100075768);
  v23 = v34;
  sub_100048D6C(v34);
  v40 = v43[4];
  v41 = v43[5];
  *v42 = *v44;
  v36 = v43[0];
  v37 = v43[1];
  *&v42[15] = *&v44[15];
  v38 = v43[2];
  v39 = v43[3];
  sub_100004C94(v19, v16, &qword_1000961E8, &qword_100075770);
  v24 = v35;
  sub_100004C94(v23, v35, &qword_1000961D8, &qword_100075760);
  v25 = v40;
  v26 = v41;
  v45[4] = v40;
  v45[5] = v41;
  v27 = *v42;
  v46[0] = *v42;
  *(v46 + 15) = *&v42[15];
  v28 = v36;
  v29 = v37;
  v45[0] = v36;
  v45[1] = v37;
  v30 = v38;
  v31 = v39;
  v45[2] = v38;
  v45[3] = v39;
  *(a2 + 111) = *&v42[15];
  *(a2 + 80) = v26;
  *(a2 + 96) = v27;
  *(a2 + 48) = v31;
  *(a2 + 64) = v25;
  *(a2 + 16) = v29;
  *(a2 + 32) = v30;
  *a2 = v28;
  v32 = sub_10000388C(&qword_100096208, &qword_100075790);
  sub_100004C94(v16, a2 + *(v32 + 48), &qword_1000961E8, &qword_100075770);
  sub_100004C94(v24, a2 + *(v32 + 64), &qword_1000961D8, &qword_100075760);
  sub_100004C94(v45, v47, &qword_100096210, &qword_100075798);
  sub_100004890(v23, &qword_1000961D8, &qword_100075760);
  sub_100004890(v19, &qword_1000961E8, &qword_100075770);
  sub_100004890(v24, &qword_1000961D8, &qword_100075760);
  sub_100004890(v16, &qword_1000961E8, &qword_100075770);
  v47[4] = v40;
  v47[5] = v41;
  v48[0] = *v42;
  *(v48 + 15) = *&v42[15];
  v47[0] = v36;
  v47[1] = v37;
  v47[2] = v38;
  v47[3] = v39;
  return sub_100004890(v47, &qword_100096210, &qword_100075798);
}

uint64_t sub_10004B2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_1000729DC();
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000388C(&qword_100096308, &qword_100075900);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = sub_10000388C(&qword_100096310, &qword_100075908);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  *v18 = sub_1000721CC();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v19 = &v18[*(sub_10000388C(&qword_100096318, &qword_100075910) + 44)];
  *v11 = sub_10007224C();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v20 = sub_10000388C(&qword_100096320, &qword_100075918);
  sub_100045704(a1, &v11[*(v20 + 44)]);
  sub_100004C94(v11, v8, &qword_100096308, &qword_100075900);
  sub_100004C94(v8, v19, &qword_100096308, &qword_100075900);
  v21 = v19 + *(sub_10000388C(&qword_100096328, &qword_100075920) + 48);
  *v21 = 0;
  *(v21 + 8) = 1;
  sub_100004890(v11, &qword_100096308, &qword_100075900);
  sub_100004890(v8, &qword_100096308, &qword_100075900);
  v22 = sub_1000723AC();
  v23 = &v18[*(sub_10000388C(&qword_100096330, &qword_100075928) + 36)];
  *v23 = v22;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  v23[40] = 1;
  v24 = *(type metadata accessor for CPMessageView(0) + 36);
  sub_100043B2C(v5);
  sub_100022F7C(a1 + v24, v5);
  (*(v31 + 8))(v5, v32);
  sub_100043F3C();
  sub_1000728AC();
  sub_100071F2C();
  v25 = &v18[*(v13 + 44)];
  v26 = v35;
  *v25 = v34;
  *(v25 + 1) = v26;
  *(v25 + 2) = v36;
  sub_100004C94(v18, v15, &qword_100096310, &qword_100075908);
  v27 = v33;
  sub_100004C94(v15, v33, &qword_100096310, &qword_100075908);
  v28 = v27 + *(sub_10000388C(&qword_100096338, &qword_100075930) + 48);
  *v28 = 0;
  *(v28 + 8) = 1;
  sub_100004890(v18, &qword_100096310, &qword_100075908);
  return sub_100004890(v15, &qword_100096310, &qword_100075908);
}

unint64_t sub_10004B660()
{
  result = qword_1000961C0;
  if (!qword_1000961C0)
  {
    sub_1000038D4(&qword_1000961B0, &qword_100075748);
    sub_100004C3C(&qword_1000961C8, &qword_1000961D0, &qword_100075758, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000961C0);
  }

  return result;
}

unint64_t sub_10004B718()
{
  result = qword_100096270;
  if (!qword_100096270)
  {
    sub_1000038D4(&qword_100096260, &qword_1000757E8);
    sub_10004B7A4();
    sub_10004B85C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096270);
  }

  return result;
}

unint64_t sub_10004B7A4()
{
  result = qword_100096278;
  if (!qword_100096278)
  {
    sub_1000038D4(&qword_100096258, &qword_1000757E0);
    sub_100004C3C(&qword_100096280, &qword_100096238, &qword_1000757C0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096278);
  }

  return result;
}

unint64_t sub_10004B85C()
{
  result = qword_100096288;
  if (!qword_100096288)
  {
    sub_1000038D4(&qword_100096228, &qword_1000757B0);
    sub_100004C3C(&qword_100096290, &qword_100096230, &qword_1000757B8, &protocol conformance descriptor for VStack<A>);
    sub_100004C3C(&qword_100096298, &qword_100096218, &qword_1000757A0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096288);
  }

  return result;
}

unint64_t sub_10004B940()
{
  result = qword_1000962A0;
  if (!qword_1000962A0)
  {
    sub_1000038D4(&qword_100096268, &qword_1000757F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000962A0);
  }

  return result;
}

unint64_t sub_10004BA10()
{
  result = qword_100096398;
  if (!qword_100096398)
  {
    sub_1000038D4(&qword_100096390, &qword_100075A18);
    sub_10004BAC8();
    sub_100004C3C(&qword_1000963D0, &qword_1000963D8, &qword_100076920, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096398);
  }

  return result;
}

unint64_t sub_10004BAC8()
{
  result = qword_1000963A0;
  if (!qword_1000963A0)
  {
    sub_1000038D4(&qword_1000963A8, &qword_100075A20);
    sub_10004BB80();
    sub_100004C3C(&qword_1000953F0, &qword_1000953F8, &qword_1000747C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000963A0);
  }

  return result;
}

unint64_t sub_10004BB80()
{
  result = qword_1000963B0;
  if (!qword_1000963B0)
  {
    sub_1000038D4(&qword_1000963B8, &qword_100075A28);
    sub_10004BC0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000963B0);
  }

  return result;
}

unint64_t sub_10004BC0C()
{
  result = qword_1000963C0;
  if (!qword_1000963C0)
  {
    sub_1000038D4(&qword_1000963C8, &unk_100076910);
    sub_100004C3C(&qword_100095788, &qword_100095790, &qword_100074BA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000963C0);
  }

  return result;
}

unint64_t sub_10004BCC4()
{
  result = qword_1000963E0;
  if (!qword_1000963E0)
  {
    sub_1000038D4(&qword_100096380, &qword_100075978);
    sub_10004BD50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000963E0);
  }

  return result;
}

unint64_t sub_10004BD50()
{
  result = qword_1000963E8;
  if (!qword_1000963E8)
  {
    sub_1000038D4(&qword_100096378, &qword_100075970);
    sub_10004BDDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000963E8);
  }

  return result;
}

unint64_t sub_10004BDDC()
{
  result = qword_1000963F0;
  if (!qword_1000963F0)
  {
    sub_1000038D4(&qword_100096370, &qword_100075968);
    sub_1000038D4(&qword_100096390, &qword_100075A18);
    sub_10004BA10();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000963F0);
  }

  return result;
}

unint64_t sub_10004BEB4()
{
  result = qword_100096410;
  if (!qword_100096410)
  {
    sub_1000038D4(&qword_100096350, &qword_100075948);
    sub_10004BF6C();
    sub_100004C3C(&qword_1000963D0, &qword_1000963D8, &qword_100076920, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096410);
  }

  return result;
}

unint64_t sub_10004BF6C()
{
  result = qword_100096418;
  if (!qword_100096418)
  {
    sub_1000038D4(&qword_100096408, &qword_100075A98);
    sub_10004C024();
    sub_100004C3C(&qword_1000953F0, &qword_1000953F8, &qword_1000747C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096418);
  }

  return result;
}

unint64_t sub_10004C024()
{
  result = qword_100096420;
  if (!qword_100096420)
  {
    sub_1000038D4(&qword_100096400, &qword_100076E60);
    sub_10004C0B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096420);
  }

  return result;
}

unint64_t sub_10004C0B0()
{
  result = qword_100096428;
  if (!qword_100096428)
  {
    sub_1000038D4(&qword_1000963F8, &qword_100075A90);
    sub_10001D1D4();
    sub_100004C3C(&qword_100095788, &qword_100095790, &qword_100074BA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096428);
  }

  return result;
}

unint64_t sub_10004C168()
{
  result = qword_100096488;
  if (!qword_100096488)
  {
    sub_1000038D4(&qword_100096478, &qword_100075AD0);
    sub_10004C220();
    sub_100004C3C(&qword_1000963D0, &qword_1000963D8, &qword_100076920, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096488);
  }

  return result;
}

unint64_t sub_10004C220()
{
  result = qword_100096490;
  if (!qword_100096490)
  {
    sub_1000038D4(&qword_100096470, &qword_100075AC8);
    sub_10004C0B0();
    sub_100004C3C(&qword_1000953F0, &qword_1000953F8, &qword_1000747C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096490);
  }

  return result;
}

unint64_t sub_10004C2E0()
{
  result = qword_1000964A0;
  if (!qword_1000964A0)
  {
    sub_1000038D4(&qword_100096460, &qword_100075AC0);
    sub_10004C398();
    sub_100004C3C(&qword_1000963D0, &qword_1000963D8, &qword_100076920, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000964A0);
  }

  return result;
}

unint64_t sub_10004C398()
{
  result = qword_1000964A8;
  if (!qword_1000964A8)
  {
    sub_1000038D4(&qword_100096458, &qword_100075AB8);
    sub_10004C450();
    sub_100004C3C(&qword_1000964E0, &qword_100096498, &qword_100076930, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000964A8);
  }

  return result;
}

unint64_t sub_10004C450()
{
  result = qword_1000964B0;
  if (!qword_1000964B0)
  {
    sub_1000038D4(&qword_100096450, &qword_100076E10);
    sub_10004C4DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000964B0);
  }

  return result;
}

unint64_t sub_10004C4DC()
{
  result = qword_1000964B8;
  if (!qword_1000964B8)
  {
    sub_1000038D4(&qword_100096448, &qword_100075AB0);
    sub_10004C594();
    sub_100004C3C(&qword_1000953D0, &qword_1000953D8, &qword_1000769A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000964B8);
  }

  return result;
}

unint64_t sub_10004C594()
{
  result = qword_1000964C0;
  if (!qword_1000964C0)
  {
    sub_1000038D4(&qword_100096440, &unk_100076E00);
    sub_10004C650();
    sub_10004C730(&qword_1000953C8, type metadata accessor for DynamicTypeFont, &unk_100074F44);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000964C0);
  }

  return result;
}

unint64_t sub_10004C650()
{
  result = qword_1000964C8;
  if (!qword_1000964C8)
  {
    sub_1000038D4(&qword_1000964D0, &qword_100075B10);
    sub_10004C6DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000964C8);
  }

  return result;
}

unint64_t sub_10004C6DC()
{
  result = qword_1000964D8;
  if (!qword_1000964D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000964D8);
  }

  return result;
}

uint64_t sub_10004C730(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10004C778()
{
  result = qword_100096500;
  if (!qword_100096500)
  {
    sub_1000038D4(&qword_1000964F8, &qword_100075B28);
    sub_10004C804();
    sub_10004C8BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096500);
  }

  return result;
}

unint64_t sub_10004C804()
{
  result = qword_100096508;
  if (!qword_100096508)
  {
    sub_1000038D4(&qword_100096510, &qword_100075B30);
    sub_100004C3C(&qword_100096518, &qword_100096520, &qword_100075B38, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096508);
  }

  return result;
}

unint64_t sub_10004C8BC()
{
  result = qword_100096528;
  if (!qword_100096528)
  {
    sub_1000038D4(&qword_100096530, &qword_100075B40);
    sub_100004C3C(&qword_100096538, &qword_100096540, &qword_100075B48, &protocol conformance descriptor for VStack<A>);
    sub_100004C3C(&qword_100096518, &qword_100096520, &qword_100075B38, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096528);
  }

  return result;
}

uint64_t sub_10004C9A0()
{
  sub_1000038D4(&qword_1000961B0, &qword_100075748);
  sub_10004B660();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10004CA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_10004EA7C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_10004DCC0(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_10004EF04();
        v16 = v18;
      }

      result = sub_10004E71C(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_10004CB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_10004ED8C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_10004DCC0(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_10004F1F0();
        v14 = v16;
      }

      result = sub_10004E8CC(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_10004CC18()
{
  v1 = v0;
  v2 = sub_100071D4C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC9GCWidgets14AppDisplayData_lastPlayedDate;
  swift_beginAccess();
  v7 = *(v3 + 16);
  v7(v5, v1 + v6, v2);
  sub_100071D1C();
  v9 = v8;
  v10 = *(v3 + 8);
  v10(v5, v2);
  if (v9 > -3600.0)
  {
    return 0x414C505F5453554ALL;
  }

  v12 = [objc_allocWithZone(NSRelativeDateTimeFormatter) init];
  [v12 setUnitsStyle:0];
  v7(v5, v1 + v6, v2);
  isa = sub_100071CFC().super.isa;
  v10(v5, v2);
  sub_100071D3C();
  v14 = sub_100071CFC().super.isa;
  v10(v5, v2);
  v15 = [v12 localizedStringForDate:isa relativeToDate:v14];

  v16 = sub_100072B3C();
  return v16;
}

void sub_10004CE40(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v23 = a1;
  v24 = a2;
  v25 = a4;
  v7 = sub_10000388C(&qword_100094E50, &qword_100074180);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v26 = *(v4 + 16);
  v22 = sub_100072FEC();
  v19 = v4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_bundleID;

  v21 = a3;
  sub_1000729CC();
  v20 = v4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_metricsTopic;

  sub_100071E0C();

  v10 = sub_100071C9C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100012BA4(v9);
    v26 = *(v5 + 16);
    sub_100072FEC();
    v12 = sub_100072B2C();

    v13 = sub_100072B2C();

    v14 = sub_100072B2C();
    v15 = sub_1000729CC();

    v16 = sub_100072B2C();

    if (*(v20 + 8))
    {

      v17 = sub_100072B2C();
    }

    else
    {
      v17 = 0;
    }

    v18 = [objc_opt_self() URLWithAdamId:v12 bundleId:v13 widgetId:v14 widgetSize:v15 localizedName:v16 topic:v17];

    sub_100071C6C();
  }

  else
  {
    (*(v11 + 32))(v25, v9, v10);
  }
}

id sub_10004D174(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = OBJC_IVAR____TtC9GCWidgets14AppDisplayData_icons;
  if (!v3)
  {
    swift_beginAccess();
    if (*(*(v2 + v4) + 16))
    {

      sub_10004DCC0(a1, a2);
      if (v13)
      {

        v14 = objc_allocWithZone(UIImage);
        v15 = sub_100072B2C();

        v10 = [v14 initWithContentsOfFile:v15];

        return v10;
      }
    }

    return 0;
  }

  v5 = *(v2 + 24);
  result = swift_beginAccess();
  if (*(*(v2 + v4) + 16))
  {

    sub_10004DCC0(v5, v3);
    v8 = v7;

    if (v8)
    {

      v9 = sub_100072B2C();

      v10 = [objc_opt_self() imageNamed:v9];

      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10004D34C()
{
  v0 = sub_100071D4C();
  v16 = *(v0 - 8);
  v17 = v0;
  __chkstk_darwin(v0);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100094718 != -1)
  {
    swift_once();
  }

  sub_100071D0C();
  v3 = sub_10004F35C(&_swiftEmptyArrayStorage);
  type metadata accessor for AppDisplayData(0);
  v4 = swift_allocObject();
  v4[2] = 973039644;
  v4[3] = 0;
  v15 = v2;
  v4[4] = 0;
  v4[5] = 0xD000000000000011;
  v4[6] = 0x8000000100077C60;
  v5 = OBJC_IVAR____TtC9GCWidgets14AppDisplayData_lastPlayedDate;
  sub_100071D3C();
  v6 = (v4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_bundleID);
  *v6 = 0xD00000000000001FLL;
  v6[1] = 0x8000000100077C80;
  v7 = OBJC_IVAR____TtC9GCWidgets14AppDisplayData_icons;
  *(v4 + v7) = sub_10004F35C(&_swiftEmptyArrayStorage);
  *(v4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_iconBackgroundColor) = 0;
  *(v4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor) = 0;
  v8 = (v4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_metricsTopic);
  *v8 = 0;
  v8[1] = 0;
  v4[2] = 973039644;
  v4[5] = 0xD000000000000011;
  v4[6] = 0x8000000100077C60;

  swift_beginAccess();
  v10 = v16;
  v9 = v17;
  v11 = v4 + v5;
  v12 = v15;
  (*(v16 + 24))(v11, v15, v17);
  swift_endAccess();
  *v6 = 0xD00000000000001FLL;
  v6[1] = 0x8000000100077C80;

  swift_beginAccess();
  *(v4 + v7) = v3;

  *v8 = 0;
  v8[1] = 0;

  *(v4 + 3) = xmmword_100075B50;

  *(v4 + v7) = sub_10004F35C(&_swiftEmptyArrayStorage);

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v4 + v7);
  *(v4 + v7) = 0x8000000000000000;
  sub_10004EA7C(0x6E6F63496B636F4DLL, 0xE900000000000036, 0x6E6F63496B636F4DLL, 0xE900000000000036, isUniquelyReferenced_nonNull_native);
  *(v4 + v7) = v18;
  swift_endAccess();
  result = (*(v10 + 8))(v12, v9);
  qword_100096550 = v4;
  return result;
}

uint64_t sub_10004D680()
{
  sub_10000388C(&qword_100094CE8, &qword_100073E40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100075B60;
  if (qword_100094720 != -1)
  {
    v3 = v0;
    swift_once();
    v0 = v3;
  }

  v1 = qword_100096550;
  *(v0 + 32) = qword_100096550;
  *(v0 + 40) = v1;
  *(v0 + 48) = v1;
  *(v0 + 56) = v1;
  *(v0 + 64) = v1;
  *(v0 + 72) = v1;
  *(v0 + 80) = v1;
  *(v0 + 88) = v1;
  *(v0 + 96) = v1;
  *(v0 + 104) = v1;
  *(v0 + 112) = v1;
  qword_1000999E8 = v0;
  return swift_retain_n();
}

uint64_t sub_10004D738()
{

  v1 = OBJC_IVAR____TtC9GCWidgets14AppDisplayData_lastPlayedDate;
  v2 = sub_100071D4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_10004D800()
{
  sub_10004D738();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppDisplayData(uint64_t a1)
{
  result = qword_100096580;
  if (!qword_100096580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004D8AC(uint64_t a1)
{
  result = sub_100071D4C();
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

Swift::Int sub_10004D984()
{
  v1 = *v0;
  sub_10007303C();
  sub_10007304C(*(v1 + 16));
  return sub_10007305C();
}

Swift::Int sub_10004D9FC(uint64_t a1)
{
  sub_10007303C();
  sub_10007304C(*(*v1 + 16));
  return sub_10007305C();
}

uint64_t sub_10004DA5C()
{
  sub_100072E4C(71);
  v9._object = 0x8000000100077DB0;
  v9._countAndFlagsBits = 0xD000000000000019;
  sub_100072B7C(v9);
  v10._countAndFlagsBits = sub_100072FEC();
  sub_100072B7C(v10);

  v11._countAndFlagsBits = 0x6C746974090A202CLL;
  v11._object = 0xEB00000000203A65;
  sub_100072B7C(v11);
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  v12._countAndFlagsBits = v1;
  v12._object = v2;
  sub_100072B7C(v12);

  v13._countAndFlagsBits = 0x646E7562090A202CLL;
  v13._object = 0xEE00203A4449656CLL;
  sub_100072B7C(v13);
  v3 = *(v0 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_bundleID);
  v4 = *(v0 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_bundleID + 8);

  v14._countAndFlagsBits = v3;
  v14._object = v4;
  sub_100072B7C(v14);

  v15._countAndFlagsBits = 0x6E6F6369090A202CLL;
  v15._object = 0xEB00000000203A73;
  sub_100072B7C(v15);
  swift_beginAccess();

  v5 = sub_100072ADC();
  v7 = v6;

  v16._countAndFlagsBits = v5;
  v16._object = v7;
  sub_100072B7C(v16);

  v17._countAndFlagsBits = 10506;
  v17._object = 0xE200000000000000;
  sub_100072B7C(v17);
  return 0;
}

unint64_t sub_10004DC68()
{
  result = qword_100096778;
  if (!qword_100096778)
  {
    type metadata accessor for AppDisplayData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096778);
  }

  return result;
}

unint64_t sub_10004DCC0(uint64_t a1, uint64_t a2)
{
  sub_10007303C();
  sub_100072B6C();
  v4 = sub_10007305C();

  return sub_10004DD7C(a1, a2, v4);
}

unint64_t sub_10004DD38(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100072DDC(*(v2 + 40));

  return sub_10004DE34(a1, v4);
}

unint64_t sub_10004DD7C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100072FFC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10004DE34(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10003B064(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100072DEC();
      sub_10003B0C0(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_10004DEFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000388C(&qword_100096780, &qword_100075C80);
  v37 = v4;
  result = sub_100072F0C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_10007303C();
      sub_100072B6C();
      result = sub_10007305C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10004E1BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000388C(&qword_100096798, &qword_100075C98);
  v38 = v4;
  result = sub_100072F0C();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + v22;
      v27 = *v26;
      v39 = *(v26 + 8);
      if ((v38 & 1) == 0)
      {

        v28 = v27;
      }

      sub_10007303C();
      sub_100072B6C();
      result = sub_10007305C();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v27;
      v18[1] = v39;
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
  return result;
}

uint64_t sub_10004E478(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000388C(&qword_100094D18, &unk_100073E60);
  v35 = v4;
  result = sub_100072F0C();
  v7 = result;
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_10007303C();
      sub_100072B6C();
      result = sub_10007305C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
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
        return result;
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
  return result;
}

uint64_t sub_10004E71C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100072DCC() + 1) & ~v5;
    do
    {
      sub_10007303C();

      sub_100072B6C();
      v9 = sub_10007305C();

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
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
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

uint64_t sub_10004E8CC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100072DCC() + 1) & ~v5;
    do
    {
      sub_10007303C();

      sub_100072B6C();
      v9 = sub_10007305C();

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

uint64_t sub_10004EA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10004DCC0(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_10004DEFC(v18, a5 & 1);
      v13 = sub_10004DCC0(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_10007302C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_10004EF04();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void sub_10004EC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10004DCC0(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_10004E1BC(v18, a5 & 1);
      v13 = sub_10004DCC0(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_10007302C();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_10004F07C();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * v13;
    v25 = *v24;
    *v24 = a1;
    *(v24 + 8) = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_10004ED8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10004DCC0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10004E478(v16, a4 & 1);
      v11 = sub_10004DCC0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_10007302C();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_10004F1F0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void *sub_10004EF04()
{
  v1 = v0;
  sub_10000388C(&qword_100096780, &qword_100075C80);
  v2 = *v0;
  v3 = sub_100072EFC();
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

  return result;
}

id sub_10004F07C()
{
  v1 = v0;
  sub_10000388C(&qword_100096798, &qword_100075C98);
  v2 = *v0;
  v3 = sub_100072EFC();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v2 + 56) + v17;
        v23 = *v21;
        v22 = *(v21 + 8);
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v23;
        v25[1] = v22;

        result = v23;
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

id sub_10004F1F0()
{
  v1 = v0;
  sub_10000388C(&qword_100094D18, &unk_100073E60);
  v2 = *v0;
  v3 = sub_100072EFC();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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