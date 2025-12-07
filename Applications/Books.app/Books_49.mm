void sub_100622E9C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1001F1160(&qword_100AEE558, &qword_10083F4D0);
  __chkstk_darwin(v4 - 8);
  v23 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v22 - v7;
  v9 = sub_10079A734();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v22 - v14;
  sub_100799464();
  v16 = sub_1007995A4();
  if (!v16)
  {
    sub_100627994();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();

    return;
  }

  v17 = v16;
  sub_100799314();
  if (swift_dynamicCastClass())
  {
    v18 = &enum case for Book.MediaType.ebook(_:);
  }

  else
  {
    sub_100798E84();
    if (!swift_dynamicCastClass())
    {
      sub_1006279E8();
      swift_allocError();
      swift_willThrow();

      return;
    }

    v18 = &enum case for Book.MediaType.audiobook(_:);
  }

  (*(v10 + 104))(v15, *v18, v9);
  v20 = sub_1006239D0(v15);
  sub_100623F68(v8);
  v21 = sub_1006234F8();
  if (v2)
  {
  }

  else
  {
    v22[2] = v21;
    (*(v10 + 16))(v12, v15, v9);
    v22[1] = sub_1006219CC(v17);

    if (*(v20 + 2))
    {
      v22[0] = *(v20 + 4);
    }

    else
    {
      v22[0] = 0;
    }

    sub_100627A3C(v8, v23);
    sub_10079A6A4();
  }

  sub_100007840(v8, &qword_100AEE558, &qword_10083F4D0);
  (*(v10 + 8))(v15, v9);
}

uint64_t sub_10062326C()
{
  v1 = OBJC_IVAR____TtC5Books23MediaAPIMetadataService_catalogService;
  v2 = sub_100798FE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100623320(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1002104D8;

  return sub_10061F550(a1, a2);
}

uint64_t sub_1006233C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10036D9C0;

  return sub_10061CB8C(a1);
}

uint64_t sub_100623460(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10036D9C0;

  return sub_100620CC0(a1);
}

void *sub_1006234F8()
{
  sub_100799314();
  if (swift_dynamicCastClass() || (sub_100798E84(), swift_dynamicCastClass()))
  {
    v1 = v0;
    v2 = sub_100799414();

    if (!v2)
    {
      v2 = _swiftEmptyArrayStorage;
    }

    v3 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
      goto LABEL_94;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
    {
      v5 = 0;
      v6 = v2 & 0xC000000000000001;
      v7 = v2 + 32;
      v37 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v6)
        {
          v8 = sub_1007A3784();
        }

        else
        {
          if (v5 >= *(v3 + 16))
          {
            goto LABEL_89;
          }

          v8 = *(v7 + 8 * v5);
        }

        v2 = v8;
        if (__OFADD__(v5++, 1))
        {
          break;
        }

        v10 = sub_100799574();
        v12 = HIBYTE(v11) & 0xF;
        v13 = v10 & 0xFFFFFFFFFFFFLL;
        if ((v11 & 0x2000000000000000) != 0)
        {
          v14 = HIBYTE(v11) & 0xF;
        }

        else
        {
          v14 = v10 & 0xFFFFFFFFFFFFLL;
        }

        if (!v14)
        {

          goto LABEL_76;
        }

        if ((v11 & 0x1000000000000000) == 0)
        {
          if ((v11 & 0x2000000000000000) != 0)
          {
            v38[0] = v10;
            v38[1] = v11 & 0xFFFFFFFFFFFFFFLL;
            if (v10 == 43)
            {
              if (!v12)
              {
                goto LABEL_91;
              }

              v13 = v12 - 1;
              if (v12 != 1)
              {
                v17 = 0;
                v25 = v38 + 1;
                while (1)
                {
                  v26 = *v25 - 48;
                  if (v26 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v17, 0xAuLL))
                  {
                    break;
                  }

                  v20 = __CFADD__(10 * v17, v26);
                  v17 = 10 * v17 + v26;
                  if (v20)
                  {
                    break;
                  }

                  ++v25;
                  if (!--v13)
                  {
                    goto LABEL_75;
                  }
                }
              }
            }

            else if (v10 == 45)
            {
              if (!v12)
              {
                goto LABEL_90;
              }

              v13 = v12 - 1;
              if (v12 != 1)
              {
                v17 = 0;
                v21 = v38 + 1;
                while (1)
                {
                  v22 = *v21 - 48;
                  if (v22 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v17, 0xAuLL))
                  {
                    break;
                  }

                  v20 = 10 * v17 >= v22;
                  v17 = 10 * v17 - v22;
                  if (!v20)
                  {
                    break;
                  }

                  ++v21;
                  if (!--v13)
                  {
                    goto LABEL_75;
                  }
                }
              }
            }

            else if (v12)
            {
              v17 = 0;
              v28 = v38;
              while (1)
              {
                v29 = *v28 - 48;
                if (v29 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v17, 0xAuLL))
                {
                  break;
                }

                v20 = __CFADD__(10 * v17, v29);
                v17 = 10 * v17 + v29;
                if (v20)
                {
                  break;
                }

                ++v28;
                if (!--v12)
                {
                  goto LABEL_73;
                }
              }
            }
          }

          else
          {
            if ((v10 & 0x1000000000000000) != 0)
            {
              v15 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v15 = sub_1007A37B4();
              v13 = v35;
            }

            v16 = *v15;
            if (v16 == 43)
            {
              if (v13 < 1)
              {
                goto LABEL_92;
              }

              if (--v13)
              {
                v17 = 0;
                if (!v15)
                {
                  goto LABEL_73;
                }

                v23 = v15 + 1;
                while (1)
                {
                  v24 = *v23 - 48;
                  if (v24 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v17, 0xAuLL))
                  {
                    break;
                  }

                  v20 = __CFADD__(10 * v17, v24);
                  v17 = 10 * v17 + v24;
                  if (v20)
                  {
                    break;
                  }

                  ++v23;
                  if (!--v13)
                  {
                    goto LABEL_75;
                  }
                }
              }
            }

            else if (v16 == 45)
            {
              if (v13 < 1)
              {
                goto LABEL_93;
              }

              if (--v13)
              {
                v17 = 0;
                if (v15)
                {
                  v18 = v15 + 1;
                  while (1)
                  {
                    v19 = *v18 - 48;
                    if (v19 > 9)
                    {
                      goto LABEL_74;
                    }

                    if (!is_mul_ok(v17, 0xAuLL))
                    {
                      goto LABEL_74;
                    }

                    v20 = 10 * v17 >= v19;
                    v17 = 10 * v17 - v19;
                    if (!v20)
                    {
                      goto LABEL_74;
                    }

                    ++v18;
                    if (!--v13)
                    {
                      goto LABEL_75;
                    }
                  }
                }

LABEL_73:
                LOBYTE(v13) = 0;
LABEL_75:
                v39 = v13;
                v30 = v13;

                if ((v30 & 1) == 0)
                {
                  goto LABEL_81;
                }

                goto LABEL_76;
              }
            }

            else
            {
              if (!v13)
              {
                goto LABEL_74;
              }

              v17 = 0;
              if (!v15)
              {
                goto LABEL_73;
              }

              while (1)
              {
                v27 = *v15 - 48;
                if (v27 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v17, 0xAuLL))
                {
                  break;
                }

                v20 = __CFADD__(10 * v17, v27);
                v17 = 10 * v17 + v27;
                if (v20)
                {
                  break;
                }

                ++v15;
                if (!--v13)
                {
                  goto LABEL_75;
                }
              }
            }
          }

LABEL_74:
          v17 = 0;
          LOBYTE(v13) = 1;
          goto LABEL_75;
        }

        v39 = 0;
        sub_10063E4AC(v10, v11, 10);
        v17 = v31;
        v40 = v32;

        if ((v40 & 1) == 0)
        {
LABEL_81:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = sub_10066C34C(0, *(v37 + 2) + 1, 1, v37);
          }

          v34 = *(v37 + 2);
          v33 = *(v37 + 3);
          v2 = v34 + 1;
          if (v34 >= v33 >> 1)
          {
            v37 = sub_10066C34C((v33 > 1), v34 + 1, 1, v37);
          }

          *(v37 + 2) = v2;
          *&v37[8 * v34 + 32] = v17;
        }

LABEL_76:
        if (v5 == i)
        {
          goto LABEL_96;
        }
      }

      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      ;
    }

    v37 = _swiftEmptyArrayStorage;
LABEL_96:

    v0 = sub_10040E40C(v37);
  }

  else
  {
    sub_1006279E8();
    swift_allocError();
    swift_willThrow();
  }

  return v0;
}

char *sub_1006239D0(uint64_t a1)
{
  v2 = sub_10079A734();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for Book.MediaType.ebook(_:))
  {
    sub_100799444();
    v8 = sub_1007995A4();
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }
  }

  else if (v7 == enum case for Book.MediaType.audiobook(_:))
  {
    sub_100799444();
    v10 = sub_1007995A4();
    if (v10)
    {
      v9 = v10;
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v9 >> 62)
  {
    goto LABEL_98;
  }

  v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v48 = v9;
  while (v12)
  {
    v13 = 0;
    v14 = v9 & 0xC000000000000001;
    v15 = v9 + 32;
    v49 = _swiftEmptyArrayStorage;
    v9 = 10;
    while (1)
    {
      if (v14)
      {
        v16 = sub_1007A3784();
      }

      else
      {
        if (v13 >= *(v11 + 16))
        {
          goto LABEL_93;
        }

        v16 = *(v15 + 8 * v13);
      }

      v17 = v16;
      if (__OFADD__(v13++, 1))
      {
        break;
      }

      v19 = sub_100799574();
      v21 = HIBYTE(v20) & 0xF;
      v22 = v19 & 0xFFFFFFFFFFFFLL;
      if ((v20 & 0x2000000000000000) != 0)
      {
        v23 = HIBYTE(v20) & 0xF;
      }

      else
      {
        v23 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (!v23)
      {

        goto LABEL_81;
      }

      if ((v20 & 0x1000000000000000) == 0)
      {
        if ((v20 & 0x2000000000000000) != 0)
        {
          v50[0] = v19;
          v50[1] = v20 & 0xFFFFFFFFFFFFFFLL;
          if (v19 == 43)
          {
            if (!v21)
            {
              goto LABEL_95;
            }

            v22 = v21 - 1;
            if (v21 != 1)
            {
              v26 = 0;
              v34 = v50 + 1;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v26, 0xAuLL))
                {
                  break;
                }

                v29 = __CFADD__(10 * v26, v35);
                v26 = 10 * v26 + v35;
                if (v29)
                {
                  break;
                }

                ++v34;
                if (!--v22)
                {
                  goto LABEL_80;
                }
              }
            }
          }

          else if (v19 == 45)
          {
            if (!v21)
            {
              goto LABEL_94;
            }

            v22 = v21 - 1;
            if (v21 != 1)
            {
              v26 = 0;
              v30 = v50 + 1;
              while (1)
              {
                v31 = *v30 - 48;
                if (v31 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v26, 0xAuLL))
                {
                  break;
                }

                v29 = 10 * v26 >= v31;
                v26 = 10 * v26 - v31;
                if (!v29)
                {
                  break;
                }

                ++v30;
                if (!--v22)
                {
                  goto LABEL_80;
                }
              }
            }
          }

          else if (v21)
          {
            v26 = 0;
            v37 = v50;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              if (!is_mul_ok(v26, 0xAuLL))
              {
                break;
              }

              v29 = __CFADD__(10 * v26, v38);
              v26 = 10 * v26 + v38;
              if (v29)
              {
                break;
              }

              ++v37;
              if (!--v21)
              {
                goto LABEL_78;
              }
            }
          }
        }

        else
        {
          if ((v19 & 0x1000000000000000) != 0)
          {
            v24 = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v24 = sub_1007A37B4();
            v22 = v45;
          }

          v25 = *v24;
          if (v25 == 43)
          {
            if (v22 < 1)
            {
              goto LABEL_96;
            }

            if (--v22)
            {
              v26 = 0;
              if (!v24)
              {
                goto LABEL_78;
              }

              v32 = v24 + 1;
              while (1)
              {
                v33 = *v32 - 48;
                if (v33 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v26, 0xAuLL))
                {
                  break;
                }

                v29 = __CFADD__(10 * v26, v33);
                v26 = 10 * v26 + v33;
                if (v29)
                {
                  break;
                }

                ++v32;
                if (!--v22)
                {
                  goto LABEL_80;
                }
              }
            }
          }

          else if (v25 == 45)
          {
            if (v22 < 1)
            {
              goto LABEL_97;
            }

            if (--v22)
            {
              v26 = 0;
              if (v24)
              {
                v27 = v24 + 1;
                while (1)
                {
                  v28 = *v27 - 48;
                  if (v28 > 9)
                  {
                    goto LABEL_79;
                  }

                  if (!is_mul_ok(v26, 0xAuLL))
                  {
                    goto LABEL_79;
                  }

                  v29 = 10 * v26 >= v28;
                  v26 = 10 * v26 - v28;
                  if (!v29)
                  {
                    goto LABEL_79;
                  }

                  ++v27;
                  if (!--v22)
                  {
                    goto LABEL_80;
                  }
                }
              }

LABEL_78:
              LOBYTE(v22) = 0;
LABEL_80:
              v51 = v22;
              v39 = v22;

              if ((v39 & 1) == 0)
              {
                goto LABEL_86;
              }

              goto LABEL_81;
            }
          }

          else
          {
            if (!v22)
            {
              goto LABEL_79;
            }

            v26 = 0;
            if (!v24)
            {
              goto LABEL_78;
            }

            while (1)
            {
              v36 = *v24 - 48;
              if (v36 > 9)
              {
                break;
              }

              if (!is_mul_ok(v26, 0xAuLL))
              {
                break;
              }

              v29 = __CFADD__(10 * v26, v36);
              v26 = 10 * v26 + v36;
              if (v29)
              {
                break;
              }

              ++v24;
              if (!--v22)
              {
                goto LABEL_80;
              }
            }
          }
        }

LABEL_79:
        v26 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_80;
      }

      v51 = 0;
      sub_10063E4AC(v19, v20, 10);
      v26 = v40;
      HIDWORD(v47) = v41;

      if ((v47 & 0x100000000) == 0)
      {
LABEL_86:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_10066C34C(0, *(v49 + 2) + 1, 1, v49);
        }

        v43 = *(v49 + 2);
        v42 = *(v49 + 3);
        if (v43 >= v42 >> 1)
        {
          v49 = sub_10066C34C((v42 > 1), v43 + 1, 1, v49);
        }

        v44 = v49;
        *(v49 + 2) = v43 + 1;
        *&v44[8 * v43 + 32] = v26;
      }

LABEL_81:
      if (v13 == v12)
      {
        goto LABEL_100;
      }
    }

    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    v12 = sub_1007A38D4();
    v48 = v9;
  }

  v49 = _swiftEmptyArrayStorage;
LABEL_100:

  return v49;
}

void sub_100623F68(uint64_t a1@<X8>)
{
  v2 = sub_10079A8B4();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100799394();
  if (!v3)
  {
    v17 = sub_10079A674();
    v18 = *(*(v17 - 8) + 56);

    v18(a1, 1, 1, v17);
    return;
  }

  v4 = v3;
  v5 = sub_100799574();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  v9 = v5 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v10 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

    goto LABEL_70;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {
    v46 = 0;
    sub_10063E4AC(v5, v7, 10);
    v33 = v44;
    goto LABEL_69;
  }

  if ((v7 & 0x2000000000000000) != 0)
  {
    v45[0] = v5;
    v45[1] = v7 & 0xFFFFFFFFFFFFFFLL;
    if (v5 == 43)
    {
      if (v8)
      {
        if (--v8)
        {
          v25 = 0;
          v26 = v45 + 1;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              break;
            }

            if (!is_mul_ok(v25, 0xAuLL))
            {
              break;
            }

            v16 = __CFADD__(10 * v25, v27);
            v25 = 10 * v25 + v27;
            if (v16)
            {
              break;
            }

            ++v26;
            if (!--v8)
            {
              goto LABEL_68;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_82:
      __break(1u);
      return;
    }

    if (v5 != 45)
    {
      if (v8)
      {
        v30 = 0;
        v31 = v45;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          if (!is_mul_ok(v30, 0xAuLL))
          {
            break;
          }

          v16 = __CFADD__(10 * v30, v32);
          v30 = 10 * v30 + v32;
          if (v16)
          {
            break;
          }

          ++v31;
          if (!--v8)
          {
            goto LABEL_68;
          }
        }
      }

      goto LABEL_67;
    }

    if (v8)
    {
      if (--v8)
      {
        v19 = 0;
        v20 = v45 + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          if (!is_mul_ok(v19, 0xAuLL))
          {
            break;
          }

          v16 = 10 * v19 >= v21;
          v19 = 10 * v19 - v21;
          if (!v16)
          {
            break;
          }

          ++v20;
          if (!--v8)
          {
            goto LABEL_68;
          }
        }
      }

      goto LABEL_67;
    }

    goto LABEL_80;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    v11 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_1007A37B4();
  }

  v12 = *v11;
  if (v12 == 43)
  {
    if (v9 < 1)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v8 = v9 - 1;
    if (v9 != 1)
    {
      v22 = 0;
      if (v11)
      {
        v23 = v11 + 1;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            goto LABEL_67;
          }

          if (!is_mul_ok(v22, 0xAuLL))
          {
            goto LABEL_67;
          }

          v16 = __CFADD__(10 * v22, v24);
          v22 = 10 * v22 + v24;
          if (v16)
          {
            goto LABEL_67;
          }

          ++v23;
          if (!--v8)
          {
            goto LABEL_68;
          }
        }
      }

      goto LABEL_59;
    }

LABEL_67:
    LOBYTE(v8) = 1;
    goto LABEL_68;
  }

  if (v12 != 45)
  {
    if (v9)
    {
      v28 = 0;
      if (v11)
      {
        while (1)
        {
          v29 = *v11 - 48;
          if (v29 > 9)
          {
            goto LABEL_67;
          }

          if (!is_mul_ok(v28, 0xAuLL))
          {
            goto LABEL_67;
          }

          v16 = __CFADD__(10 * v28, v29);
          v28 = 10 * v28 + v29;
          if (v16)
          {
            goto LABEL_67;
          }

          ++v11;
          if (!--v9)
          {
            goto LABEL_59;
          }
        }
      }

      goto LABEL_59;
    }

    goto LABEL_67;
  }

  if (v9 < 1)
  {
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v8 = v9 - 1;
  if (v9 == 1)
  {
    goto LABEL_67;
  }

  v13 = 0;
  if (v11)
  {
    v14 = v11 + 1;
    while (1)
    {
      v15 = *v14 - 48;
      if (v15 > 9)
      {
        goto LABEL_67;
      }

      if (!is_mul_ok(v13, 0xAuLL))
      {
        goto LABEL_67;
      }

      v16 = 10 * v13 >= v15;
      v13 = 10 * v13 - v15;
      if (!v16)
      {
        goto LABEL_67;
      }

      ++v14;
      if (!--v8)
      {
        goto LABEL_68;
      }
    }
  }

LABEL_59:
  LOBYTE(v8) = 0;
LABEL_68:
  v46 = v8;
  v33 = v8;
LABEL_69:

  if (v33)
  {
LABEL_70:

    v34 = sub_10079A674();
    (*(*(v34 - 8) + 56))(a1, 1, 1, v34);
    return;
  }

  v35 = v4;
  sub_100799384();
  if ((v37 & 0x100000000) == 0)
  {
    sub_1007A3314(v36);
    v39 = v38;
    [v38 integerValue];
  }

  sub_1007994C4();

  if (sub_100799484())
  {
    v40 = sub_100798FF4();
    sub_10063D7E8(v40, v41, v42);
  }

  sub_10079A894();
  sub_10079A654();

  v43 = sub_10079A674();
  (*(*(v43 - 8) + 56))(a1, 0, 1, v43);
}

uint64_t sub_100624468(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  v6 = sub_1007A3C44();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1007A3AB4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1006EBE40();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_100624C44(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_1006245A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100796C04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100628298(&qword_100ADAD88, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v32 = a1;
  v10 = sub_1007A2074();
  v11 = v9 + 56;
  v30 = v9 + 56;
  v31 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v27 = v2;
    v28 = v6;
    v29 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v31 + 48) + v18 * v13, v5);
      sub_100628298(&qword_100ADAD90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = sub_1007A2124();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v30 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v28;
        a2 = v29;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v21;
    v33 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1006EC100(v23);
      v24 = v33;
    }

    v6 = v28;
    a2 = v29;
    (*(v28 + 32))(v29, *(v24 + 48) + v18 * v13, v5);
    sub_100624E08(v13);
    v20 = 0;
    *v21 = v33;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_10062484C(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_1007A3664();

    if (v6)
    {
      v7 = sub_100624AEC(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for BKTapActionView();
  v10 = sub_1007A3174(*(v3 + 40));
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_1007A3184();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1006EC128();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_100625110(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_1006249EC(uint64_t a1, void (*a2)(void))
{
  v5 = *v2;
  v6 = sub_1007A3BF4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (*(*(v5 + 48) + 8 * v8) != a1)
  {
    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v14 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v8);
  sub_1006252B0(v8);
  result = v13;
  *v2 = v14;
  return result;
}

uint64_t sub_100624AEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_1007A3624();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1006E8170(v5, v4);
  v16 = v6;
  v7 = *(v6 + 40);

  v8 = sub_1007A3174(v7);
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    type metadata accessor for BKTapActionView();
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_1007A3184();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v14 = *(*(v6 + 48) + 8 * v10);
  sub_100625110(v10);
  result = sub_1007A3184();
  if (result)
  {
    *v3 = v16;
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100624C44(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1007A35B4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1007A3C04();

        _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
        v10 = sub_1007A3C44();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

void sub_100624E08(int64_t a1)
{
  v3 = sub_100796C04();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_1007A35B4();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_100628298(&qword_100ADAD88, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v23 = sub_1007A2074();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

void sub_100625110(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1007A35B4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = sub_1007A3174(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }
}

void sub_1006252B0(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1007A35B4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_1007A3BF4() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }
}

void sub_100625434(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_100624468(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_100625560(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        sub_1006249EC(*(*(a1 + 48) + ((v9 << 9) | (8 * v10))), sub_1006EC27C);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void *sub_10062566C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v54 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v58 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v62 = a2 + 7;

  v15 = 0;
  v60 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v61 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_1007A3C04();

    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
    v23 = sub_1007A3C44();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v60;
    v15 = v61;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (v5[6] + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_1007A3AB4() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v60;
  v27 = v61;
  v64 = v58;
  v65 = v61;
  v66 = v11;
  v63[0] = v60;
  v63[1] = v7;

  v29 = *(v5 + 32);
  v55 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v55;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v56 = &v54;
    __chkstk_darwin(v28);
    v2 = &v54 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v62, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = v5[2];
    v59 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v57 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_10062642C(v59, v55, v57, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v61 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_1007A3C04();

            _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
            v41 = sub_1007A3C44();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v62[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v61;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (v5[6] + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_1007A3AB4() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v62[v8 >> 6]) == 0)
              {
                v3 = v60;
                goto LABEL_45;
              }

              v47 = (v5[6] + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v60;
          v34 = v59[v2];
          v59[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v61;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v57 - 1;
        if (__OFSUB__(v57, 1))
        {
          __break(1u);
        }

        if (v57 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v61;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v62, v49);
  v51 = v54;
  sub_100626038(v50, v55, v5, v2, v63);
  v53 = v52;

  if (!v51)
  {

    v3 = v63[0];
    v58 = v64;
    v5 = v53;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_10004DC54(v13);
    return v5;
  }

  __break(1u);
  return result;
}

void *sub_100625BDC(uint64_t a1, void *a2)
{
  v6 = a2;
  if (a2[2])
  {
    v47 = a1;
    v48 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v46 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v47;
          v16 = v48;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v48 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v47;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v4 = *(*(v15 + 48) + ((v48 << 9) | (8 * v18)));
        v19 = sub_1007A3BF4();
        v20 = -1 << *(v6 + 32);
        v5 = v19 & ~v20;
        v3 = v5 >> 6;
        v2 = 1 << v5;
      }

      while (((1 << v5) & v13[v5 >> 6]) == 0);
      v21 = v6[6];
      if (*(v21 + 8 * v5) == v4)
      {
        break;
      }

      while (1)
      {
        v5 = (v5 + 1) & ~v20;
        v3 = v5 >> 6;
        v2 = 1 << v5;
        if (((1 << v5) & v13[v5 >> 6]) == 0)
        {
          break;
        }

        if (*(v21 + 8 * v5) == v4)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v50 = v46;
    v51 = v48;
    v52 = v11;
    v49[0] = v47;
    v49[1] = v8;
    v4 = (63 - v20) >> 6;
    v14 = 8 * v4;

    if (v4 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v40 = swift_slowAlloc();
      memcpy(v40, v6 + 7, v14);
      v41 = sub_100626270(v40, v4, v6, v5, v49);

      v2 = v49[0];
      v46 = v50;
      v48 = v51;
      v6 = v41;
      goto LABEL_41;
    }

LABEL_18:
    v43 = v4;
    v44 = &v42;
    __chkstk_darwin(v22);
    v5 = &v42 - v23;
    memcpy(&v42 - v23, v6 + 7, v14);
    v24 = v6[2];
    *(v5 + 8 * v3) &= ~v2;
    v25 = v24 - 1;
    v14 = -1;
    v4 = 1;
    v2 = v47;
LABEL_19:
    v45 = v25;
    while (v11)
    {
LABEL_27:
      v29 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v3 = *(*(v2 + 48) + ((v48 << 9) | (8 * v29)));
      v30 = sub_1007A3BF4();
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & v13[v32 >> 6]) != 0)
      {
        v35 = v6[6];
        if (*(v35 + 8 * v32) == v3)
        {
LABEL_20:
          v26 = *(v5 + 8 * v33);
          *(v5 + 8 * v33) = v26 & ~v34;
          if ((v26 & v34) != 0)
          {
            v25 = v45 - 1;
            if (__OFSUB__(v45, 1))
            {
              __break(1u);
            }

            if (v45 == 1)
            {

              v6 = &_swiftEmptySetSingleton;
              goto LABEL_41;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v36 = ~v31;
          while (1)
          {
            v32 = (v32 + 1) & v36;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & v13[v32 >> 6]) == 0)
            {
              break;
            }

            if (*(v35 + 8 * v32) == v3)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v27 = v48;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v28 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v28);
      ++v27;
      if (v11)
      {
        v48 = v28;
        goto LABEL_27;
      }
    }

    if (v12 <= v48 + 1)
    {
      v37 = v48 + 1;
    }

    else
    {
      v37 = v12;
    }

    v48 = v37 - 1;
    v6 = sub_100626650(v5, v43, v45, v6);
LABEL_41:
    v38 = v2;
LABEL_43:
    sub_10004DC54(v38);
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v6;
}

void sub_100626038(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          sub_10062642C(a1, a2, v30, a3);
          return;
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_1007A3C04();

        _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
        v19 = sub_1007A3C44();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_1007A3AB4() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = a1[v22];
      a1[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_100626270(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = result;
  v9 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v11 = a3 + 56;
  while (1)
  {
    v13 = a5[3];
    v14 = a5[4];
    if (!v14)
    {
      break;
    }

    v15 = a5[3];
LABEL_9:
    v18 = *(*(*a5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    a5[3] = v15;
    a5[4] = (v14 - 1) & v14;
    result = sub_1007A3BF4();
    v19 = -1 << *(a3 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v11 + 8 * (v20 >> 6))) != 0)
    {
      v23 = *(a3 + 48);
      if (*(v23 + 8 * v20) == v18)
      {
LABEL_2:
        v12 = v8[v21];
        v8[v21] = v12 & ~v22;
        if ((v12 & v22) != 0)
        {
          if (__OFSUB__(v10--, 1))
          {
LABEL_23:
            __break(1u);
            return result;
          }

          if (!v10)
          {
            return &_swiftEmptySetSingleton;
          }
        }
      }

      else
      {
        v24 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v11 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          if (*(v23 + 8 * v20) == v18)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v16 = (a5[2] + 64) >> 6;
  v17 = a5[3];
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v15 >= v16)
    {
      break;
    }

    v14 = *(a5[1] + 8 * v15);
    ++v17;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  if (v16 <= v13 + 1)
  {
    v26 = v13 + 1;
  }

  else
  {
    v26 = (a5[2] + 64) >> 6;
  }

  a5[3] = v26 - 1;
  a5[4] = 0;

  return sub_100626650(v8, a2, v10, a3);
}

uint64_t sub_10062642C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1001F1160(&qword_100AEE530, &qword_100840510);
  result = sub_1007A36F4();
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
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1007A3C04();

    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
    result = sub_1007A3C44();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
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

uint64_t sub_100626650(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1001F1160(&qword_100AEE528, &unk_100836ED0);
  result = sub_1007A36F4();
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
    result = sub_1007A3BF4();
    v17 = -1 << v9[32];
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
    *(*(v9 + 6) + 8 * v20) = v16;
    ++*(v9 + 2);
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

uint64_t sub_10062683C@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = *(sub_1001F1160(&qword_100AEE548, &qword_100836EF0) + 48);
  v5 = *(sub_1001F1160(&qword_100AEE540, &qword_100836EE8) + 48);
  v6 = *a1;
  v7 = sub_10079A6D4();
  result = (*(*(v7 - 8) + 16))(&a2[v5], &a1[v4], v7);
  *a2 = v6;
  return result;
}

void sub_1006268E4(uint64_t a1@<X8>)
{
  v3 = sub_1001F1160(&qword_100AEE548, &qword_100836EF0);
  v41 = *(v3 - 8);
  v42 = v3;
  __chkstk_darwin(v3);
  v40 = &v40 - v4;
  v5 = sub_10079A6D4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001F1160(&qword_100AEE550, &qword_100836EF8);
  __chkstk_darwin(v9 - 8);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = __chkstk_darwin(v11);
  v14 = &v40 - v12;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v45 = a1;
  v43 = v18;
  if (v19)
  {
    v20 = v17;
LABEL_10:
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = *(*(v15 + 48) + 8 * v24);
    v26 = (v19 - 1) & v19;
    (*(v6 + 16))(v8, *(v15 + 56) + *(v6 + 72) * v24, v5, v13);
    v27 = v42;
    v28 = *(v42 + 48);
    *v14 = v25;
    v29 = v8;
    v30 = v27;
    (*(v6 + 32))(&v14[v28], v29, v5);
    v31 = v41;
    (*(v41 + 56))(v14, 0, 1, v30);
    v23 = v20;
LABEL_11:
    *v1 = v15;
    v1[1] = v16;
    v32 = v44;
    v1[2] = v43;
    v1[3] = v23;
    v1[4] = v26;
    v33 = v1[5];
    sub_10020B3C8(v14, v32, &qword_100AEE550, &qword_100836EF8);
    v34 = 1;
    v35 = (*(v31 + 48))(v32, 1, v30);
    v36 = v45;
    if (v35 != 1)
    {
      v37 = v32;
      v38 = v40;
      sub_10020B3C8(v37, v40, &qword_100AEE548, &qword_100836EF0);
      v33(v38);
      sub_100007840(v38, &qword_100AEE548, &qword_100836EF0);
      v34 = 0;
    }

    v39 = sub_1001F1160(&qword_100AEE540, &qword_100836EE8);
    (*(*(v39 - 8) + 56))(v36, v34, 1, v39);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v31 = v41;
        v30 = v42;
        (*(v41 + 56))(&v40 - v12, 1, 1, v42, v13);
        v26 = 0;
        goto LABEL_11;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

double sub_100626CAC@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;

  return result;
}

id sub_100626CF4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t sub_100626D40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002812C;

  return sub_10061F2D8(a1, v4, v5, v7, v6);
}

void sub_100626E00(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AED480, &unk_100835290);
  __chkstk_darwin(v2 - 8);
  v4 = &v71 - v3;
  v81 = _swiftEmptyDictionarySingleton;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  v71 = v79 + 1;

  v10 = 0;
  *&v11 = 136315138;
  v73 = v11;
  v74 = a1;
  v76 = v9;
  v77 = a1 + 64;
  v72 = v4;
  while (v8)
  {
    v12 = v10;
LABEL_13:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    v18 = *(*(a1 + 56) + 8 * v14);
    sub_100799444();
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      v20 = HIBYTE(v16) & 0xF;
      v21 = v17 & 0xFFFFFFFFFFFFLL;
      if ((v16 & 0x2000000000000000) != 0)
      {
        v22 = HIBYTE(v16) & 0xF;
      }

      else
      {
        v22 = v17 & 0xFFFFFFFFFFFFLL;
      }

      v78 = v18;
      if (v22)
      {
        v23 = v19;
        if ((v16 & 0x1000000000000000) != 0)
        {
          swift_bridgeObjectRetain_n();
          v63 = v18;
          sub_10063E4AC(v17, v16, 10);
          v26 = v64;
          v66 = v65;

          if (v66)
          {
            v53 = v78;
            goto LABEL_84;
          }

          v53 = v78;
          goto LABEL_93;
        }

        if ((v16 & 0x2000000000000000) != 0)
        {
          v79[0] = v17;
          v79[1] = v16 & 0xFFFFFFFFFFFFFFLL;
          if (v17 == 43)
          {
            if (!v20)
            {
              goto LABEL_100;
            }

            if (--v20)
            {
              v26 = 0;
              v47 = v71;
              while (1)
              {
                v48 = *v47 - 48;
                if (v48 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v26, 0xAuLL))
                {
                  break;
                }

                v29 = __CFADD__(10 * v26, v48);
                v26 = 10 * v26 + v48;
                if (v29)
                {
                  break;
                }

                ++v47;
                if (!--v20)
                {
                  goto LABEL_83;
                }
              }
            }
          }

          else if (v17 == 45)
          {
            if (!v20)
            {
              goto LABEL_101;
            }

            if (--v20)
            {
              v26 = 0;
              v43 = v71;
              while (1)
              {
                v44 = *v43 - 48;
                if (v44 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v26, 0xAuLL))
                {
                  break;
                }

                v29 = 10 * v26 >= v44;
                v26 = 10 * v26 - v44;
                if (!v29)
                {
                  break;
                }

                ++v43;
                if (!--v20)
                {
                  goto LABEL_83;
                }
              }
            }
          }

          else if (v20)
          {
            v26 = 0;
            v50 = v79;
            while (1)
            {
              v51 = *v50 - 48;
              if (v51 > 9)
              {
                break;
              }

              if (!is_mul_ok(v26, 0xAuLL))
              {
                break;
              }

              v29 = __CFADD__(10 * v26, v51);
              v26 = 10 * v26 + v51;
              if (v29)
              {
                break;
              }

              v50 = (v50 + 1);
              if (!--v20)
              {
                goto LABEL_83;
              }
            }
          }
        }

        else
        {
          if ((v17 & 0x1000000000000000) != 0)
          {
            v24 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v24 = sub_1007A37B4();
          }

          v25 = *v24;
          if (v25 == 43)
          {
            if (v21 < 1)
            {
              goto LABEL_99;
            }

            v20 = v21 - 1;
            if (v21 != 1)
            {
              v26 = 0;
              if (!v24)
              {
                goto LABEL_74;
              }

              v45 = v24 + 1;
              while (1)
              {
                v46 = *v45 - 48;
                if (v46 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v26, 0xAuLL))
                {
                  break;
                }

                v29 = __CFADD__(10 * v26, v46);
                v26 = 10 * v26 + v46;
                if (v29)
                {
                  break;
                }

                ++v45;
                if (!--v20)
                {
                  goto LABEL_83;
                }
              }
            }
          }

          else if (v25 == 45)
          {
            if (v21 < 1)
            {
              goto LABEL_102;
            }

            v20 = v21 - 1;
            if (v21 != 1)
            {
              v26 = 0;
              if (v24)
              {
                v27 = v24 + 1;
                while (1)
                {
                  v28 = *v27 - 48;
                  if (v28 > 9)
                  {
                    goto LABEL_82;
                  }

                  if (!is_mul_ok(v26, 0xAuLL))
                  {
                    goto LABEL_82;
                  }

                  v29 = 10 * v26 >= v28;
                  v26 = 10 * v26 - v28;
                  if (!v29)
                  {
                    goto LABEL_82;
                  }

                  ++v27;
                  if (!--v20)
                  {
                    goto LABEL_83;
                  }
                }
              }

LABEL_74:
              LOBYTE(v20) = 0;
LABEL_83:
              v80 = v20;
              v52 = v20;
              v53 = v78;
              v54 = v78;

              v55 = v54;
              if (v52)
              {
LABEL_84:

                goto LABEL_85;
              }

LABEL_93:

              v67 = v53;
              v68 = v72;
              v69 = v75;
              sub_100622E9C(v23, v72);
              v75 = v69;
              if (v69)
              {

                return;
              }

              v70 = sub_10079A6D4();
              (*(*(v70 - 8) + 56))(v68, 0, 1, v70);
              sub_1005E9F54(v68, v26);

LABEL_6:
              v10 = v12;
              goto LABEL_7;
            }
          }

          else
          {
            if (!v21)
            {
              goto LABEL_82;
            }

            v26 = 0;
            if (!v24)
            {
              goto LABEL_74;
            }

            while (1)
            {
              v49 = *v24 - 48;
              if (v49 > 9)
              {
                break;
              }

              if (!is_mul_ok(v26, 0xAuLL))
              {
                break;
              }

              v29 = __CFADD__(10 * v26, v49);
              v26 = 10 * v26 + v49;
              if (v29)
              {
                break;
              }

              ++v24;
              if (!--v21)
              {
                goto LABEL_74;
              }
            }
          }
        }

LABEL_82:
        v26 = 0;
        LOBYTE(v20) = 1;
        goto LABEL_83;
      }

      v62 = v18;
LABEL_85:
      if (qword_100AD1968 != -1)
      {
        swift_once();
      }

      v56 = sub_10079ACE4();
      sub_100008B98(v56, qword_100B236E8);

      v57 = sub_10079ACC4();
      v58 = sub_1007A29B4();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v79[0] = v60;
        *v59 = v73;
        v61 = sub_1000070F4(v17, v16, v79);

        *(v59 + 4) = v61;
        _os_log_impl(&_mh_execute_header, v57, v58, "_extractMetadata: Invalid adamID: %s", v59, 0xCu);
        sub_1000074E0(v60);

        a1 = v74;
      }

      else
      {
      }

      goto LABEL_6;
    }

    v30 = qword_100AD1968;
    v31 = v18;
    if (v30 != -1)
    {
      swift_once();
    }

    v32 = sub_10079ACE4();
    sub_100008B98(v32, qword_100B236E8);
    v33 = v31;
    v34 = sub_10079ACC4();
    v35 = sub_1007A29B4();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v79[0] = v78;
      *v36 = v73;
      v37 = v33;
      v38 = [v37 description];
      v39 = sub_1007A2254();
      v41 = v40;

      v42 = sub_1000070F4(v39, v41, v79);

      *(v36 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v34, v35, "_extractMetadata: Expected MAsset. resource: %s", v36, 0xCu);
      sub_1000074E0(v78);
    }

    else
    {
    }

    v10 = v12;
    a1 = v74;
LABEL_7:
    v9 = v76;
    v5 = v77;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return;
    }

    v8 = *(v5 + 8 * v12);
    ++v10;
    if (v8)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
}

void sub_1006275C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v55 = a5;
  v47 = sub_10079A6D4();
  v9 = *(v47 - 8);
  __chkstk_darwin(v47);
  v45 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v44 - v12;
  v14 = sub_1001F1160(&qword_100AEE538, &qword_100836EE0);
  __chkstk_darwin(v14 - 8);
  v16 = (v44 - v15);
  v17 = -1 << *(a1 + 32);
  v18 = ~v17;
  v19 = *(a1 + 64);
  v20 = -v17;
  v48 = a1;
  v49 = a1 + 64;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v50 = v18;
  v51 = 0;
  v52 = v21 & v19;
  v53 = a2;
  v54 = a3;
  v22 = (v9 + 32);
  v44[4] = v9 + 8;
  v44[5] = v9 + 16;
  v46 = v9;
  v44[3] = v9 + 40;

  v44[1] = a3;

  while (1)
  {
    sub_1006268E4(v16);
    v27 = sub_1001F1160(&qword_100AEE540, &qword_100836EE8);
    if ((*(*(v27 - 8) + 48))(v16, 1, v27) == 1)
    {
      sub_10004DC54(v48);

      return;
    }

    v28 = *v16;
    v29 = *v22;
    v30 = v13;
    (*v22)(v13, v16 + *(v27 + 48), v47);
    v31 = *v55;
    v33 = sub_1002F9CDC(v28);
    v34 = v31[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      break;
    }

    v37 = v32;
    if (v31[3] >= v36)
    {
      if ((a4 & 1) == 0)
      {
        sub_1002F2A40();
      }
    }

    else
    {
      sub_1003D6DB8(v36, a4 & 1);
      v38 = sub_1002F9CDC(v28);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_19;
      }

      v33 = v38;
    }

    v40 = *v55;
    if (v37)
    {
      v23 = v46;
      v24 = v47;
      v25 = *(v46 + 72) * v33;
      v26 = v45;
      (*(v46 + 16))(v45, v40[7] + v25, v47);
      v13 = v30;
      (*(v23 + 8))(v30, v24);
      (*(v23 + 40))(v40[7] + v25, v26, v24);
      a4 = 1;
    }

    else
    {
      v40[(v33 >> 6) + 8] |= 1 << v33;
      *(v40[6] + 8 * v33) = v28;
      v13 = v30;
      v29((v40[7] + *(v46 + 72) * v33), v30, v47);
      v41 = v40[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_18;
      }

      v40[2] = v43;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_1007A3B24();
  __break(1u);
}

unint64_t sub_100627994()
{
  result = qword_100AEE560;
  if (!qword_100AEE560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE560);
  }

  return result;
}

unint64_t sub_1006279E8()
{
  result = qword_100AEE568;
  if (!qword_100AEE568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE568);
  }

  return result;
}

uint64_t sub_100627A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AEE558, &qword_10083F4D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100627AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_100AEE570)
  {
    v4 = _s6ErrorsOMa(0, a2, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_100AEE570);
    }
  }
}

void sub_100627B0C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, __n128), uint64_t a3, int a4, void *a5)
{
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v46 = a5;
  v47 = v7;
  v45 = v11;
  while (v10)
  {
    v56 = a4;
    v18 = v12;
LABEL_14:
    v20 = (v18 << 10) | (16 * __clz(__rbit64(v10)));
    v21 = (*(a1 + 48) + v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = (*(a1 + 56) + v20);
    v25 = *v24;
    v26 = v24[1];
    v55[0] = v22;
    v55[1] = v23;
    v55[2] = v25;
    v55[3] = v26;

    (a2)(&v51, v55);

    v28 = v51;
    v27 = v52;
    v29 = v54;
    v50 = v53;
    v30 = *a5;
    v32 = sub_10000E53C(v51, v52);
    v33 = *(v30 + 16);
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      goto LABEL_25;
    }

    v36 = v31;
    if (*(v30 + 24) >= v35)
    {
      if ((v56 & 1) == 0)
      {
        sub_1002F0D14();
      }
    }

    else
    {
      sub_1003D3E94(v35, v56 & 1);
      v37 = sub_10000E53C(v28, v27);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_27;
      }

      v32 = v37;
    }

    v10 &= v10 - 1;
    v39 = *a5;
    if (v36)
    {
      v13 = 16 * v32;
      v14 = (v39[7] + 16 * v32);
      v16 = *v14;
      v15 = v14[1];

      v17 = (v39[7] + v13);
      *v17 = v16;
      v17[1] = v15;
    }

    else
    {
      v39[(v32 >> 6) + 8] |= 1 << v32;
      v40 = (v39[6] + 16 * v32);
      *v40 = v28;
      v40[1] = v27;
      v41 = (v39[7] + 16 * v32);
      *v41 = v50;
      v41[1] = v29;
      v42 = v39[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_26;
      }

      v39[2] = v44;
    }

    a4 = 1;
    v12 = v18;
    a5 = v46;
    v7 = v47;
    v11 = v45;
  }

  v19 = v12;
  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v11)
    {
      sub_10004DC54(a1);

      return;
    }

    v10 = *(v7 + 8 * v18);
    ++v19;
    if (v10)
    {
      v56 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1007A3B24();
  __break(1u);
}

uint64_t sub_100627DDC(uint64_t a1)
{
  v3 = *(sub_1001F1160(&qword_100AEE588, &unk_100836F10) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_100622664(a1, v4, v5, v6);
}

void sub_100627E64(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5, void (*a6)(void), void (*a7)(void))
{
  v50 = a5;
  v8 = a1 + 64;
  v9 = -1 << *(a1 + 32);
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a1 + 64);
  v12 = (63 - v9) >> 6;

  v13 = 0;
  v42 = v8;
  while (v11)
  {
    v45 = a4;
    v17 = v13;
LABEL_14:
    v19 = __clz(__rbit64(v11)) | (v17 << 6);
    v20 = (*(a1 + 48) + 16 * v19);
    v21 = v20[1];
    v22 = *(*(a1 + 56) + 8 * v19);
    v49[0] = *v20;
    v49[1] = v21;
    v49[2] = v22;

    v23 = v22;
    a2(&v46, v49);

    v25 = v46;
    v24 = v47;
    v26 = v48;
    v27 = *v50;
    v29 = sub_10000E53C(v46, v47);
    v30 = v27[2];
    v31 = (v28 & 1) == 0;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_25;
    }

    v32 = v28;
    if (v27[3] >= v30 + v31)
    {
      if ((v45 & 1) == 0)
      {
        a7();
      }
    }

    else
    {
      a6();
      v33 = sub_10000E53C(v25, v24);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v29 = v33;
    }

    v11 &= v11 - 1;
    v35 = *v50;
    if (v32)
    {
      v14 = *(v35[7] + 8 * v29);

      v15 = v35[7];
      v16 = *(v15 + 8 * v29);
      *(v15 + 8 * v29) = v14;
    }

    else
    {
      v35[(v29 >> 6) + 8] |= 1 << v29;
      v36 = (v35[6] + 16 * v29);
      *v36 = v25;
      v36[1] = v24;
      *(v35[7] + 8 * v29) = v26;
      v37 = v35[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_26;
      }

      v35[2] = v39;
    }

    a4 = 1;
    v13 = v17;
    v8 = v42;
  }

  v18 = v13;
  while (1)
  {
    v17 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v17 >= v12)
    {
      sub_10004DC54(a1);

      return;
    }

    v11 = *(v8 + 8 * v17);
    ++v18;
    if (v11)
    {
      v45 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1007A3B24();
  __break(1u);
}

unint64_t sub_100628114()
{
  result = qword_100AEE598[0];
  if (!qword_100AEE598[0])
  {
    sub_1001F1234(&qword_100AEE590, &qword_100836F28);
    result = swift_getWitnessTable();
    atomic_store(result, qword_100AEE598);
  }

  return result;
}

unint64_t sub_1006281A4()
{
  result = qword_100AEE620;
  if (!qword_100AEE620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE620);
  }

  return result;
}

unint64_t sub_1006281FC()
{
  result = qword_100AEE628;
  if (!qword_100AEE628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE628);
  }

  return result;
}

uint64_t sub_100628298(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100628480(const void *a1)
{
  v2 = _Block_copy(a1);
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, 1, 0);
    _Block_release(v3);
  }

  v4 = *(v1 + 8);

  return v4();
}

id sub_100628500@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for PriceTrackingService()) init];
  *a1 = result;
  return result;
}

void sub_100628550(uint64_t a1, id a2)
{
  v3 = [a2 priceTracker];
  v4 = [objc_opt_self() sharedInstance];
  sub_100798B74();
  sub_10068A63C(v4, v3);
  v5 = (a1 + OBJC_IVAR___BKPriceTrackingService__addToWTRDelegate);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v8;

  v10 = sub_1006286B8(v6, v7, v8);

  [objc_opt_self() setAddToWTRDelegate:v10];

  sub_100798B74();
}

uint64_t sub_1006286B8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    if (qword_100AD13A0 != -1)
    {
      swift_once();
    }

    v6 = sub_10079ACE4();
    sub_100008B98(v6, qword_100B22FB0);

    v7 = sub_10079ACC4();
    v8 = sub_1007A29B4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_1000070F4(a1, a2, &v12);
      _os_log_impl(&_mh_execute_header, v7, v8, "[get] Missing value for %{public}s! Did you forget to call setupService()?", v9, 0xCu);
      sub_1000074E0(v10);
    }
  }

  return a3;
}

uint64_t sub_100628814()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002812C;

  return sub_100628480(v2);
}

char *sub_1006288C4()
{
  v1 = sub_100796CF4();
  v2 = *(v1 - 8);
  v105 = v1;
  v106 = v2;
  __chkstk_darwin(v1);
  v99 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v88 = &v85 - v5;
  v6 = sub_1007A21D4();
  v94 = v6;
  v104 = *(v6 - 8);
  v7 = v104;
  __chkstk_darwin(v6);
  v9 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v85 - v11;
  v13 = sub_10079DD44();
  v91 = v13;
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v16;
  *(v0 + 2) = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v17 = enum case for Color.RGBColorSpace.sRGB(_:);
  v18 = *(v14 + 104);
  v90 = enum case for Color.RGBColorSpace.sRGB(_:);
  v18(v16, enum case for Color.RGBColorSpace.sRGB(_:), v13);
  v92 = v18;
  v93 = v14 + 104;
  *(v0 + 3) = sub_10079DE84();
  *(v0 + 4) = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v18(v16, v17, v13);
  *(v0 + 5) = sub_10079DE84();
  *(v0 + 6) = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  *(v0 + 7) = 0x4000000000000000;
  *(v0 + 28) = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  sub_1007A2154();
  v19 = v88;
  sub_100796C94();
  v20 = *(v7 + 16);
  v98 = v7 + 16;
  v103 = v20;
  v96 = v9;
  v20(v9, v12, v6);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v102 = ObjCClassFromMetadata;
  v101 = objc_opt_self();
  v22 = [v101 bundleForClass:ObjCClassFromMetadata];
  v24 = v105;
  v23 = v106;
  v25 = *(v106 + 16);
  v97 = v106 + 16;
  v100 = v25;
  v26 = v99;
  v25(v99, v19, v105);
  v27 = sub_1007A22D4(v9, 0, 0, v22, v26, "Title for Buy / Read button", 27, 2);
  v29 = v28;
  v30 = *(v23 + 8);
  v106 = v23 + 8;
  v30(v19, v24);
  v31 = v30;
  v95 = v30;
  v33 = v104 + 8;
  v32 = *(v104 + 8);
  v34 = v94;
  v32(v12, v94);
  v87 = v32;
  v104 = v33;
  *(v0 + 23) = v27;
  *(v0 + 24) = v29;
  v86 = v12;
  sub_1007A2154();
  v35 = v19;
  sub_100796C94();
  v36 = v96;
  v37 = v34;
  v103(v96, v12, v34);
  v38 = [v101 bundleForClass:v102];
  v39 = v99;
  v40 = v105;
  v100(v99, v35, v105);
  v41 = sub_1007A22D4(v36, 0, 0, v38, v39, "Title for Read button for audiobook", 35, 2);
  v43 = v42;
  v31(v35, v40);
  v44 = v86;
  v45 = v37;
  v32(v86, v37);
  *(v0 + 25) = v41;
  *(v0 + 26) = v43;
  v46 = v89;
  v47 = v90;
  v48 = v91;
  v49 = v92;
  v92(v89, v90, v91);
  *(v0 + 10) = sub_10079DE74();
  v49(v46, v47, v48);
  *(v0 + 8) = sub_10079DE74();
  *(v0 + 9) = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v50 = v44;
  sub_1007A2154();
  sub_100796C94();
  v51 = v96;
  v103(v96, v44, v45);
  v52 = [v101 bundleForClass:v102];
  v53 = v99;
  v54 = v105;
  v100(v99, v35, v105);
  v55 = sub_1007A22D4(v51, 0, 0, v52, v53, "Title for Buy button when a store book for no store info", 56, 2);
  v57 = v56;
  v95(v35, v54);
  v58 = v87;
  v87(v50, v45);
  *(v0 + 11) = v55;
  *(v0 + 12) = v57;
  *(v0 + 15) = sub_10079DDF4();
  *(v0 + 13) = sub_10079DDF4();
  *(v0 + 14) = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  sub_1007A2154();
  sub_100796C94();
  v103(v51, v50, v45);
  v59 = [v101 bundleForClass:v102];
  v60 = v99;
  v61 = v105;
  v100(v99, v35, v105);
  v62 = v60;
  v63 = sub_1007A22D4(v51, 0, 0, v59, v60, "Title for a book that can be Pre-ordered button", 47, 2);
  v65 = v64;
  v66 = v35;
  v67 = v95;
  v95(v35, v61);
  v68 = v50;
  v69 = v50;
  v70 = v94;
  v58(v68, v94);
  *(v0 + 16) = v63;
  *(v0 + 17) = v65;
  v71 = objc_opt_self();
  v72 = [v71 tertiaryLabelColor];
  *(v0 + 20) = sub_10079DEA4();
  *(v0 + 18) = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v73 = [v71 tertiaryLabelColor];
  *(v0 + 19) = sub_10079DEA4();
  v74 = v69;
  sub_1007A2154();
  sub_100796C94();
  v75 = v96;
  v103(v96, v74, v70);
  v76 = [v101 bundleForClass:v102];
  v77 = v105;
  v100(v62, v66, v105);
  v78 = sub_1007A22D4(v75, 0, 0, v76, v62, "Title for Pre-order button", 26, 2);
  v80 = v79;
  v67(v66, v77);
  v58(v74, v70);
  *(v0 + 21) = v78;
  *(v0 + 22) = v80;
  *(v0 + 27) = 0x4059000000000000;
  v81 = OBJC_IVAR____TtC5Books14BuyButtonStyle_maximumContentSizeCategory;
  v82 = enum case for ContentSizeCategory.extraExtraExtraLarge(_:);
  v83 = sub_10079CAE4();
  (*(*(v83 - 8) + 104))(&v0[v81], v82, v83);
  return v0;
}

char *BuyButtonStyle.deinit()
{

  v1 = OBJC_IVAR____TtC5Books14BuyButtonStyle_maximumContentSizeCategory;
  v2 = sub_10079CAE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t BuyButtonStyle.__deallocating_deinit()
{
  BuyButtonStyle.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BuyButtonStyle(uint64_t a1)
{
  result = qword_100AEE728;
  if (!qword_100AEE728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006293B0(uint64_t a1)
{
  result = sub_10079CAE4();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_100629488(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v21 = sub_100799B44();
  v7 = *(v21 - 8);
  __chkstk_darwin(v21);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  v10 = a4 + 56;
  v11 = 1 << *(a4 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a4 + 56);
  v14 = (v11 + 63) >> 6;
  v18[1] = v7 + 16;
  v20 = (v7 + 8);
  v22 = a4;

  v15 = 0;
  if (v13)
  {
    while (1)
    {
      v16 = v15;
      v17 = v21;
LABEL_9:
      (*(v7 + 16))(v9, *(v22 + 48) + *(v7 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v17);
      v19(&v23, v9);
      if (v4)
      {
        break;
      }

      v13 &= v13 - 1;
      (*v20)(v9, v17);
      v15 = v16;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    (*v20)(v9, v17);
  }

  else
  {
LABEL_5:
    v17 = v21;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v14)
      {

        return;
      }

      v13 = *(v10 + 8 * v16);
      ++v15;
      if (v13)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1006296A8()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AEEA88);
  sub_100008B98(v0, qword_100AEEA88);
  return sub_10079ACD4();
}

void sub_100629744(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x80000001008D8B70 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_1007A3AB4();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_1006297E4(uint64_t a1)
{
  v2 = sub_10063C594();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100629820(uint64_t a1)
{
  v2 = sub_10063C594();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10062985C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1001F1160(&qword_100AEEDC8, &qword_100837628);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10000E3E8(a1, a1[3]);
  sub_10063C594();
  sub_1007A3CB4();
  if (v2)
  {
    return sub_1000074E0(a1);
  }

  v9 = sub_1007A39C4();
  (*(v6 + 8))(v8, v5);
  result = sub_1000074E0(a1);
  *a2 = v9;
  return result;
}

uint64_t sub_1006299BC(void *a1)
{
  v2 = sub_1001F1160(&qword_100AEEDD8, &qword_100837630);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000E3E8(a1, a1[3]);
  sub_10063C594();
  sub_1007A3CC4();
  sub_1007A3A34();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int sub_100629AF4()
{
  v1 = *v0;
  sub_1007A3C04();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  sub_1007A3C14(v2);
  return sub_1007A3C44();
}

void sub_100629B44()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  sub_1007A3C14(v1);
}

Swift::Int sub_100629B7C(uint64_t a1)
{
  v2 = *v1;
  sub_1007A3C04();
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  sub_1007A3C14(v3);
  return sub_1007A3C44();
}

void *sub_100629BC8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_100629BE8(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t sub_100629CB0(void *a1)
{
  v3 = v1;
  v5 = sub_1001F1160(&qword_100AEEDE0, &qword_100837638);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000E3E8(a1, a1[3]);
  sub_10063C4B4();
  sub_1007A3CC4();
  LOBYTE(v10) = 0;
  sub_1007A39E4();
  if (!v2)
  {
    LOBYTE(v10) = 1;
    sub_1007A3A14();
    LOBYTE(v10) = *(v3 + 32);
    v11 = 2;
    sub_10063C5E8();
    sub_1007A3A44();
    LOBYTE(v10) = 3;
    sub_1007A3A24();
    LOBYTE(v10) = 4;
    sub_1007A3A24();
    LOBYTE(v10) = 5;
    sub_1007A3A24();
    v10 = *(v3 + 40);
    v11 = 6;
    sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
    sub_10063C63C(&qword_100AEEDF0, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1007A3A44();
    LOBYTE(v10) = 7;
    sub_1007A3A34();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100629F88(char a1)
{
  result = 0x6E656D7461657274;
  switch(a1)
  {
    case 1:
      return 0x444965726F7473;
    case 2:
      return 0xD000000000000012;
    case 3:
      return 0xD000000000000012;
    case 4:
      return 0x746963696C707865;
    case 5:
      return 0xD000000000000010;
    case 6:
      v4 = 1114532205;
      return v4 | 0x736B6F6F00000000;
    case 7:
      v4 = 1115185517;
      return v4 | 0x736B6F6F00000000;
    case 8:
      return 0xD000000000000019;
    case 9:
      return 0x697463656C6C6F63;
    case 10:
      return 0xD000000000000012;
    case 11:
      v3 = 5;
      goto LABEL_7;
    case 12:
      v3 = 9;
LABEL_7:
      result = v3 | 0xD000000000000012;
      break;
    case 13:
      result = 0xD000000000000020;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0x707954616964656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10062A178(void *a1)
{
  v3 = v1;
  v5 = sub_1001F1160(&qword_100AEEDF8, &qword_100837640);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000E3E8(a1, a1[3]);
  sub_10063C2E4();
  sub_1007A3CC4();
  LOBYTE(v11) = 0;
  sub_1007A39E4();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_1007A3A14();
    LOBYTE(v11) = 2;
    sub_1007A3A24();
    LOBYTE(v11) = 3;
    sub_1007A3A24();
    LOBYTE(v11) = 4;
    sub_1007A3A24();
    v11 = v3[5];
    HIBYTE(v10) = 5;
    sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
    sub_10063C63C(&qword_100AEEDF0, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1007A3A44();
    LOBYTE(v11) = 6;
    sub_1007A39F4();
    LOBYTE(v11) = 7;
    sub_1007A39F4();
    v11 = v3[10];
    HIBYTE(v10) = 8;
    sub_1001F1160(&unk_100AF23A0, &qword_100812D80);
    sub_10063C338(&qword_100AEEE00, &protocol witness table for Int, &protocol conformance descriptor for <A> [A]);
    sub_1007A3A04();
    v11 = v3[11];
    HIBYTE(v10) = 9;
    sub_1007A3A04();
    LOBYTE(v11) = 10;
    sub_1007A39F4();
    v11 = v3[14];
    HIBYTE(v10) = 11;
    sub_1001F1160(&qword_100AEEB30, &qword_100837330);
    sub_10063C6A8(&qword_100AEEE08, &protocol witness table for String, &protocol witness table for Int, &protocol conformance descriptor for <> [A : B]);
    sub_1007A3A04();
    v11 = v3[15];
    HIBYTE(v10) = 12;
    sub_1001F1160(&qword_100AEEB40, &qword_100837338);
    sub_10063C718();
    sub_1007A3A04();
    v11 = v3[16];
    HIBYTE(v10) = 13;
    sub_1007A3A04();
    LOBYTE(v11) = 14;
    sub_1007A39F4();
    type metadata accessor for CollectionRecommendationsConfiguration(0);
    LOBYTE(v11) = 15;
    sub_10079A0B4();
    sub_10063C7C4(&qword_100AEEE18, &type metadata accessor for MediaTypeMethod, &protocol conformance descriptor for MediaTypeMethod);
    sub_1007A3A04();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10062A6A4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v4 = sub_1001F1160(&qword_100AEEAF8, &qword_1008372F8);
  __chkstk_darwin(v4 - 8);
  v6 = v46 - v5;
  v53 = sub_1001F1160(&qword_100AEED78, &qword_100837618);
  v7 = *(v53 - 8);
  __chkstk_darwin(v53);
  v9 = v46 - v8;
  v10 = type metadata accessor for CollectionRecommendationsConfiguration(0);
  __chkstk_darwin(v10);
  v12 = (v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v54 = a1;
  sub_10000E3E8(a1, v13);
  sub_10063C2E4();
  v52 = v9;
  sub_1007A3CB4();
  if (v2)
  {
    sub_1000074E0(v54);
    return;
  }

  v49 = v6;
  v50 = v12;
  v14 = v7;
  LOBYTE(v56) = 0;
  v15 = v52;
  v16 = v53;
  v17 = sub_1007A3974();
  v18 = v50;
  *v50 = v17;
  v18[1] = v19;
  v47 = v19;
  LOBYTE(v56) = 1;
  v18[2] = sub_1007A39A4();
  v18[3] = v20;
  LOBYTE(v56) = 2;
  *(v18 + 32) = sub_1007A39B4() & 1;
  LOBYTE(v56) = 3;
  *(v18 + 33) = sub_1007A39B4() & 1;
  LOBYTE(v56) = 4;
  v24 = sub_1007A39B4();
  v48 = 0;
  *(v18 + 34) = v24 & 1;
  v25 = sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
  v55 = 5;
  v46[2] = sub_10063C63C(&qword_100AEED88, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  v26 = v48;
  sub_1007A39D4();
  if (v26)
  {
    v48 = v26;
    (*(v14 + 8))(v15, v16);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    goto LABEL_5;
  }

  v46[1] = v25;
  v18[5] = v56;
  LOBYTE(v56) = 6;
  v18[6] = sub_1007A3984();
  *(v18 + 56) = v27 & 1;
  LOBYTE(v56) = 7;
  v28 = sub_1007A3984();
  v48 = 0;
  v18[8] = v28;
  *(v18 + 72) = v29 & 1;
  sub_1001F1160(&unk_100AF23A0, &qword_100812D80);
  v55 = 8;
  sub_10063C338(&qword_100AEED90, &protocol witness table for Int, &protocol conformance descriptor for <A> [A]);
  v30 = v48;
  sub_1007A3994();
  v48 = v30;
  if (v30)
  {
    (*(v14 + 8))(v15, v16);
    v22 = 0;
    v23 = 0;
    v21 = 1;
    goto LABEL_5;
  }

  v18[10] = v56;
  v55 = 9;
  v31 = v48;
  sub_1007A3994();
  v48 = v31;
  if (v31)
  {
    (*(v14 + 8))(v52, v53);
    v23 = 0;
    v21 = 1;
    v22 = 1;
    goto LABEL_5;
  }

  v50[11] = v56;
  LOBYTE(v56) = 10;
  v32 = v48;
  v33 = sub_1007A3984();
  v48 = v32;
  if (v32 || (v35 = v50, v50[12] = v33, *(v35 + 104) = v34 & 1, sub_1001F1160(&qword_100AEEB30, &qword_100837330), v55 = 11, sub_10063C6A8(&qword_100AEED98, &protocol witness table for String, &protocol witness table for Int, &protocol conformance descriptor for <> [A : B]), v36 = v48, sub_1007A3994(), (v48 = v36) != 0))
  {
    (*(v14 + 8))(v52, v53);
    v21 = 1;
    v22 = 1;
    v23 = 1;
LABEL_5:
    sub_1000074E0(v54);

    if (v21)
    {

      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else if (!v22)
    {
LABEL_7:
      if (!v23)
      {
        return;
      }

      goto LABEL_11;
    }

    if ((v23 & 1) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

  v50[14] = v56;
  sub_1001F1160(&qword_100AEEB40, &qword_100837338);
  v55 = 12;
  sub_10063C3A4();
  v37 = v48;
  sub_1007A3994();
  v38 = v37;
  if (v37)
  {
    (*(v14 + 8))(v52, v53);
    sub_1000074E0(v54);
    v39 = 0;
    v48 = v37;
  }

  else
  {
    v50[15] = v56;
    v55 = 13;
    sub_1007A3994();
    v48 = 0;
    v50[16] = v56;
    LOBYTE(v56) = 14;
    v40 = v48;
    v41 = sub_1007A3984();
    v48 = v40;
    if (v40)
    {
      (*(v14 + 8))(v52, v53);
      sub_1000074E0(v54);
    }

    else
    {
      v43 = v50;
      v50[17] = v41;
      *(v43 + 144) = v42 & 1;
      sub_10079A0B4();
      LOBYTE(v56) = 15;
      sub_10063C7C4(&qword_100AEEDA8, &type metadata accessor for MediaTypeMethod, &protocol conformance descriptor for MediaTypeMethod);
      v44 = v48;
      sub_1007A3994();
      v48 = v44;
      if (!v44)
      {
        (*(v14 + 8))(v52, v53);
        v45 = v50;
        sub_10020B3C8(v49, v50 + *(v10 + 76), &qword_100AEEAF8, &qword_1008372F8);
        sub_10063C450(v45, v51);
        sub_1000074E0(v54);
        sub_10063A218(v45);
        return;
      }

      (*(v14 + 8))(v52, v53);
      sub_1000074E0(v54);
      v47 = v50[1];
    }

    v39 = 1;
  }

  if (v38)
  {
    if (v39)
    {
LABEL_11:
    }
  }

  else
  {

    if (v39)
    {
      goto LABEL_11;
    }
  }
}

uint64_t sub_10062AF30()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000010;
    v6 = 0xD000000000000012;
    if (v1 != 6)
    {
      v5 = 0xD000000000000012;
    }

    if (v1 != 4)
    {
      v6 = 0x746963696C707865;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6E656D7461657274;
    v3 = 0x707954616964656DLL;
    if (v1 != 2)
    {
      v3 = 0xD000000000000012;
    }

    if (*v0)
    {
      v2 = 0x444965726F7473;
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
}

uint64_t sub_10062B050@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1006391FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10062B084(uint64_t a1)
{
  v2 = sub_10063C4B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10062B0C0(uint64_t a1)
{
  v2 = sub_10063C4B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10062B0FC@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1006394B0(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_10062B198@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100639914(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10062B1CC(uint64_t a1)
{
  v2 = sub_10063C2E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10062B208(uint64_t a1)
{
  v2 = sub_10063C2E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10062B274(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___BKBookRecommendationProvider____lazy_storage___recommendationService;
  swift_beginAccess();
  sub_1000077D8(v1 + v3, &v6, &qword_100AEEC70, &qword_100837460);
  if (v7)
  {
    sub_1000077C0(&v6, a1);
  }

  else
  {
    v4 = v1;
    sub_100007840(&v6, &qword_100AEEC70, &qword_100837460);
    sub_100017E74();
    v5 = sub_1007A2D74();
    sub_1001F1160(&qword_100AEEC78, &qword_100837468);
    sub_1007A2CC4();

    if (v7)
    {
      sub_1000077C0(&v6, a1);
      sub_100009864(a1, &v6);
      swift_beginAccess();
      sub_1002391EC(&v6, v4 + v3, &qword_100AEEC70, &qword_100837460);
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10062B3D0(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___BKBookRecommendationProvider____lazy_storage___collectionRecommendationService;
  swift_beginAccess();
  sub_1000077D8(v1 + v3, &v6, &qword_100AEEC60, &qword_100837450);
  if (v7)
  {
    sub_1000077C0(&v6, a1);
  }

  else
  {
    v4 = v1;
    sub_100007840(&v6, &qword_100AEEC60, &qword_100837450);
    sub_100017E74();
    v5 = sub_1007A2D74();
    sub_1001F1160(&qword_100AEEC68, &qword_100837458);
    sub_1007A2CC4();

    if (v7)
    {
      sub_1000077C0(&v6, a1);
      sub_100009864(a1, &v6);
      swift_beginAccess();
      sub_1002391EC(&v6, v4 + v3, &qword_100AEEC60, &qword_100837450);
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10062B52C(uint64_t *a1, uint64_t *a2)
{
  v5 = [objc_opt_self() delegate];
  v6 = [v5 containerHost];
  sub_1000076D8(v8);

  sub_10000E3E8(v8, v8[3]);
  sub_1001F1160(a1, a2);
  sub_100798CD4();

  return sub_1000074E0(v8);
}

void sub_10062B5FC(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___BKBookRecommendationProvider____lazy_storage___postHydrationFilteringService;
  swift_beginAccess();
  sub_1000077D8(v1 + v3, &v6, &qword_100AEEC50, &qword_100837440);
  if (v7)
  {
    sub_1000077C0(&v6, a1);
  }

  else
  {
    v4 = v1;
    sub_100007840(&v6, &qword_100AEEC50, &qword_100837440);
    sub_100017E74();
    v5 = sub_1007A2D74();
    sub_1001F1160(&qword_100AEEC58, &qword_100837448);
    sub_1007A2CC4();

    if (v7)
    {
      sub_1000077C0(&v6, a1);
      sub_100009864(a1, &v6);
      swift_beginAccess();
      sub_1002391EC(&v6, v4 + v3, &qword_100AEEC50, &qword_100837440);
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10062B758(uint64_t a1, void *a2)
{
  v34 = a2;
  v3 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v3 - 8);
  v33 = &v31 - v4;
  v31 = sub_10079A734();
  v5 = *(v31 - 8);
  __chkstk_darwin(v31);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100799AC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  sub_100639E1C(a1);
  if (v15)
  {
    if (qword_100AD1990 != -1)
    {
      swift_once();
    }

    v16 = sub_10079ACE4();
    sub_100008B98(v16, qword_100AEEA88);
    v17 = sub_10079ACC4();
    v18 = sub_1007A29B4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to get hydrated books fetch limit from JS, fall back to use default value for booksYouMightLike", v19, 2u);
    }

    v20 = &unk_100837430;
  }

  else
  {
    v20 = &unk_100837438;
  }

  (*(v5 + 104))(v7, enum case for Book.MediaType.ebook(_:), v31);
  sub_100799A74();
  (*(v9 + 104))(v14, enum case for Collection.booksYouMightLike(_:), v8);
  v21 = sub_1007A2744();
  v22 = v33;
  (*(*(v21 - 8) + 56))(v33, 1, 1, v21);
  (*(v9 + 16))(v11, v14, v8);
  v23 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v24 = (v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  v26 = v32;
  *(v25 + 4) = v32;
  (*(v9 + 32))(&v25[v23], v11, v8);
  v27 = v34;
  *&v25[v24] = v34;
  v28 = v26;
  v29 = v27;
  sub_1005E3DA4(0, 0, v22, v20, v25);

  sub_100007840(v22, &qword_100AD67D0, &qword_100814660);
  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_10062BBA0(uint64_t a1, void *a2)
{
  v34 = a2;
  v3 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v3 - 8);
  v33 = &v31 - v4;
  v31 = sub_10079A734();
  v5 = *(v31 - 8);
  __chkstk_darwin(v31);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100799AC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  sub_100639E1C(a1);
  if (v15)
  {
    if (qword_100AD1990 != -1)
    {
      swift_once();
    }

    v16 = sub_10079ACE4();
    sub_100008B98(v16, qword_100AEEA88);
    v17 = sub_10079ACC4();
    v18 = sub_1007A29B4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to get hydrated books fetch limit from JS, fall back to use default value for audiobooksYouMightLike", v19, 2u);
    }

    v20 = &unk_100837420;
  }

  else
  {
    v20 = &unk_100837428;
  }

  (*(v5 + 104))(v7, enum case for Book.MediaType.audiobook(_:), v31);
  sub_100799A74();
  (*(v9 + 104))(v14, enum case for Collection.booksYouMightLike(_:), v8);
  v21 = sub_1007A2744();
  v22 = v33;
  (*(*(v21 - 8) + 56))(v33, 1, 1, v21);
  (*(v9 + 16))(v11, v14, v8);
  v23 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v24 = (v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  v26 = v32;
  *(v25 + 4) = v32;
  (*(v9 + 32))(&v25[v23], v11, v8);
  v27 = v34;
  *&v25[v24] = v34;
  v28 = v26;
  v29 = v27;
  sub_1005E3DA4(0, 0, v22, v20, v25);

  sub_100007840(v22, &qword_100AD67D0, &qword_100814660);
  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_10062BFE8(uint64_t a1, void *a2)
{
  v34 = a2;
  v3 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v3 - 8);
  v33 = &v31 - v4;
  v31 = sub_10079A734();
  v5 = *(v31 - 8);
  __chkstk_darwin(v31);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100799AC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  sub_100639E1C(a1);
  if (v15)
  {
    if (qword_100AD1990 != -1)
    {
      swift_once();
    }

    v16 = sub_10079ACE4();
    sub_100008B98(v16, qword_100AEEA88);
    v17 = sub_10079ACC4();
    v18 = sub_1007A29B4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to get hydrated books fetch limit from JS, fall back to use default value for moreFromYourAuthors", v19, 2u);
    }

    v20 = &unk_100837410;
  }

  else
  {
    v20 = &unk_100837418;
  }

  (*(v5 + 104))(v7, enum case for Book.MediaType.ebook(_:), v31);
  sub_10079A374();
  (*(v9 + 104))(v14, enum case for Collection.moreFromYourAuthors(_:), v8);
  v21 = sub_1007A2744();
  v22 = v33;
  (*(*(v21 - 8) + 56))(v33, 1, 1, v21);
  (*(v9 + 16))(v11, v14, v8);
  v23 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v24 = (v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  v26 = v32;
  *(v25 + 4) = v32;
  (*(v9 + 32))(&v25[v23], v11, v8);
  v27 = v34;
  *&v25[v24] = v34;
  v28 = v26;
  v29 = v27;
  sub_1005E3DA4(0, 0, v22, v20, v25);

  sub_100007840(v22, &qword_100AD67D0, &qword_100814660);
  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_10062C434(uint64_t a1, objc_class *a2)
{
  v46 = a1;
  v47 = a2;
  v2 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v2 - 8);
  v44 = &v38 - v3;
  v43 = sub_100799AC4();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v43);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v38 - v7;
  v9 = sub_10079A1C4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001F1160(&qword_100AEEC38, &qword_1008373E8);
  __chkstk_darwin(v13 - 8);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v38 - v17;
  sub_10062CD74(&v38 - v17);
  sub_1000077D8(v18, v15, &qword_100AEEC38, &qword_1008373E8);
  if ((*(v10 + 48))(v15, 1, v9) == 1)
  {
    sub_100007840(v15, &qword_100AEEC38, &qword_1008373E8);
    v19 = [objc_opt_self() sharedInstance];
    v49._countAndFlagsBits = 0x80000001008E2480;
    v20.super.isa = v47;
    v48.value._rawValue = 0;
    v48.is_nil = 108;
    v49._object = 216;
    sub_1007A32F4(v20, v48, v49, v21);
  }

  else
  {
    v22 = *(v10 + 32);
    v40 = v12;
    v41 = v9;
    v22(v12, v15, v9);
    v23 = v8;
    (*(v10 + 16))(v8, v12, v9);
    v24 = v4;
    v25 = *(v4 + 104);
    v39 = v23;
    v26 = v43;
    v25(v23, enum case for Collection.suggestions(_:), v43);
    v27 = sub_1007A2744();
    v28 = v44;
    (*(*(v27 - 8) + 56))(v44, 1, 1, v27);
    v29 = v42;
    (*(v24 + 16))(v42, v23, v26);
    v30 = (*(v24 + 80) + 40) & ~*(v24 + 80);
    v31 = (v5 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    v33 = v45;
    *(v32 + 4) = v45;
    (*(v24 + 32))(&v32[v30], v29, v26);
    v34 = v47;
    *&v32[v31] = v47;
    v35 = v33;
    v36 = v34;
    sub_1005E3DA4(0, 0, v28, &unk_1008373F8, v32);

    sub_100007840(v28, &qword_100AD67D0, &qword_100814660);
    (*(v24 + 8))(v39, v26);
    (*(v10 + 8))(v40, v41);
  }

  return sub_100007840(v18, &qword_100AEEC38, &qword_1008373E8);
}

uint64_t sub_10062C8F4(uint64_t a1, objc_class *a2)
{
  v35 = a2;
  v2 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v2 - 8);
  v34 = &v30 - v3;
  v4 = sub_10079A514();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v11 = sub_1001F1160(&qword_100AEEB78, &qword_100837358);
  __chkstk_darwin(v11 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v30 - v15;
  sub_10062D814(&v30 - v15);
  sub_1000077D8(v16, v13, &qword_100AEEB78, &qword_100837358);
  if ((*(v5 + 48))(v13, 1, v4) == 1)
  {
    sub_100007840(v13, &qword_100AEEB78, &qword_100837358);
    v17 = [objc_opt_self() sharedInstance];
    v37._countAndFlagsBits = 0x80000001008E2480;
    v18.super.isa = v35;
    v36.value._rawValue = 0;
    v36.is_nil = 108;
    v37._object = 226;
    sub_1007A32F4(v18, v36, v37, v19);
  }

  else
  {
    v32 = *(v5 + 32);
    v32(v10, v13, v4);
    v20 = sub_1007A2744();
    v21 = v34;
    (*(*(v20 - 8) + 56))(v34, 1, 1, v20);
    (*(v5 + 16))(v7, v10, v4);
    v22 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v23 = swift_allocObject();
    *(v23 + 2) = 0;
    *(v23 + 3) = 0;
    v31 = v10;
    v24 = v32;
    v25 = v33;
    *(v23 + 4) = v33;
    v24(&v23[v22], v7, v4);
    v26 = v35;
    *&v23[(v6 + v22 + 7) & 0xFFFFFFFFFFFFFFF8] = v35;
    v27 = v25;
    v28 = v26;
    sub_1005E3DA4(0, 0, v21, &unk_100837368, v23);

    sub_100007840(v21, &qword_100AD67D0, &qword_100814660);
    (*(v5 + 8))(v31, v4);
  }

  return sub_100007840(v16, &qword_100AEEB78, &qword_100837358);
}

double sub_10062CCD4(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, id))
{
  v8 = sub_1007A2044();
  v9 = a4;
  v10 = a1;
  a5(v8, v9);

  return result;
}

uint64_t sub_10062CD74@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_10079A734();
  v76 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10079AA24();
  __chkstk_darwin(v6 - 8);
  v75 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10079A9A4();
  __chkstk_darwin(v8 - 8);
  v74 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100799B74();
  v78 = *(v10 - 8);
  v79 = v10;
  __chkstk_darwin(v10);
  v81 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v68 - v13;
  __chkstk_darwin(v15);
  v17 = v68 - v16;
  __chkstk_darwin(v18);
  v20 = v68 - v19;
  __chkstk_darwin(v21);
  v23 = v68 - v22;
  __chkstk_darwin(v24);
  v73 = v68 - v25;
  v26 = objc_opt_self();
  isa = sub_1007A2024().super.isa;
  *&v85[0] = 0;
  v28 = [v26 dataWithJSONObject:isa options:0 error:v85];

  v29 = *&v85[0];
  if (v28)
  {
    v30 = sub_1007969D4();
    v32 = v31;

    sub_100796464();
    swift_allocObject();
    sub_100796454();
    sub_10063A274();
    v77 = v30;
    sub_100796444();

    v82[0] = v85[0];
    v82[1] = v85[1];
    v83 = v86;
    v84 = v87;
    if (BYTE1(v86) == 1)
    {
      v40 = v3;
      sub_100799B54();
      v41 = sub_10066C5F0(0, 1, 1, _swiftEmptyArrayStorage);
      v43 = v41[2];
      v42 = v41[3];
      if (v43 >= v42 >> 1)
      {
        v41 = sub_10066C5F0((v42 > 1), v43 + 1, 1, v41);
      }

      v41[2] = v43 + 1;
      v44 = v41;
      (*(v78 + 32))(v41 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v43, v23, v79);
      v3 = v40;
    }

    else
    {
      v44 = _swiftEmptyArrayStorage;
    }

    v47 = v17;
    v72 = v32;
    if (BYTE2(v83) == 1)
    {
      sub_100799B64();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v79;
      v50 = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v44 = sub_10066C5F0(0, v44[2] + 1, 1, v44);
      }

      v51 = v44;
      v53 = v44[2];
      v52 = v44[3];
      if (v53 >= v52 >> 1)
      {
        v51 = sub_10066C5F0((v52 > 1), v53 + 1, 1, v44);
      }

      v51[2] = v53 + 1;
      v54 = v20;
      v55 = v51;
      (*(v78 + 32))(v51 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v53, v54, v49);
      v3 = v50;
    }

    else
    {
      v55 = v44;
    }

    sub_10063C7C4(&qword_100AEEB68, &type metadata accessor for SaleOptions, &protocol conformance descriptor for SaleOptions);
    sub_1007A3584();
    v56 = v55[2];
    if (v56)
    {
      v69 = v3;
      v70 = v5;
      v71 = a2;
      v80 = *(v78 + 16);
      v57 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      v58 = v47;
      v68[1] = v55;
      v59 = v55 + v57;
      v60 = *(v78 + 72);
      v61 = (v78 + 8);
      v62 = v79;
      do
      {
        v80(v14, v59, v62);
        sub_1007A3564();
        (*v61)(v81, v62);
        v59 += v60;
        --v56;
      }

      while (v56);

      a2 = v71;
      v5 = v70;
      v3 = v69;
      v47 = v58;
    }

    else
    {
    }

    v63 = v78;
    v64 = v79;
    v65 = v73;
    (*(v78 + 32))(v73, v47, v79);

    sub_10079A994();

    sub_10079AA14();
    v66 = &enum case for Book.MediaType.audiobook(_:);
    if (!v83)
    {
      v66 = &enum case for Book.MediaType.ebook(_:);
    }

    (*(v76 + 104))(v5, *v66, v3);
    (*(v63 + 16))(v81, v65, v64);
    sub_10079A1B4();
    sub_10000ADCC(v77, v72);
    sub_10063A2C8(v82);
    (*(v63 + 8))(v65, v64);
    v67 = sub_10079A1C4();
    return (*(*(v67 - 8) + 56))(a2, 0, 1, v67);
  }

  else
  {
    v33 = v29;
    sub_1007967D4();

    swift_willThrow();
    if (qword_100AD1990 != -1)
    {
      swift_once();
    }

    v34 = sub_10079ACE4();
    sub_100008B98(v34, qword_100AEEA88);
    swift_errorRetain();
    v35 = sub_10079ACC4();
    v36 = sub_1007A29B4();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      swift_errorRetain();
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v39;
      *v38 = v39;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to convert provided configuration dictionary to JSON: %@", v37, 0xCu);
      sub_100007840(v38, &unk_100AD9480, &qword_1008113B0);
    }

    else
    {
    }

    v45 = sub_10079A1C4();
    return (*(*(v45 - 8) + 56))(a2, 1, 1, v45);
  }
}

uint64_t sub_10062D814@<X0>(int64_t a2@<X8>)
{
  v234 = a2;
  v2 = sub_1001F1160(&qword_100AEEAE8, &qword_1008372E8);
  __chkstk_darwin(v2 - 8);
  v4 = v191 - v3;
  v5 = sub_1001F1160(&qword_100AEEAF0, &qword_1008372F0);
  __chkstk_darwin(v5 - 8);
  v221 = v191 - v6;
  v7 = sub_1001F1160(&qword_100AEEAF8, &qword_1008372F8);
  __chkstk_darwin(v7 - 8);
  v9 = v191 - v8;
  v10 = sub_10079A154();
  __chkstk_darwin(v10 - 8);
  v228 = v191 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10079AA24();
  __chkstk_darwin(v12 - 8);
  v227 = v191 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10079A9A4();
  __chkstk_darwin(v14 - 8);
  v226 = v191 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001F1160(&qword_100AEEB00, &qword_100837300);
  __chkstk_darwin(v16 - 8);
  v239 = v191 - v17;
  v241 = sub_10079A184();
  v238 = *(v241 - 1);
  __chkstk_darwin(v241);
  v240 = v191 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = sub_10079A144();
  v217 = *(v237 - 1);
  __chkstk_darwin(v237);
  v208 = v191 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v207 = v191 - v21;
  v214 = sub_10079A4E4();
  v215 = *(v214 - 8);
  __chkstk_darwin(v214);
  v213 = v191 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v209 = v191 - v24;
  v25 = sub_1001F1160(&qword_100AEEB08, &qword_100837308);
  __chkstk_darwin(v25 - 8);
  v211 = v191 - v26;
  v222 = sub_10079A404();
  v216 = *(v222 - 8);
  __chkstk_darwin(v222);
  v220 = v191 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v212 = v191 - v29;
  v225 = sub_100799B74();
  v224 = *(v225 - 8);
  __chkstk_darwin(v225);
  v223 = v191 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v233 = v191 - v32;
  v33 = type metadata accessor for CollectionRecommendationsConfiguration(0);
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v232 = v191 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1001F1160(&qword_100AEEB10, &qword_100837310);
  __chkstk_darwin(v36 - 8);
  v38 = v191 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v41 = v191 - v40;
  __chkstk_darwin(v42);
  v44 = v191 - v43;
  v45 = objc_opt_self();
  isa = sub_1007A2024().super.isa;
  v242[0] = 0;
  v47 = [v45 dataWithJSONObject:isa options:0 error:v242];

  v48 = v242[0];
  if (!v47)
  {
    v60 = v234;
    v61 = v48;
    sub_1007967D4();

    swift_willThrow();
    if (qword_100AD1990 != -1)
    {
      swift_once();
    }

    v62 = sub_10079ACE4();
    sub_100008B98(v62, qword_100AEEA88);
    swift_errorRetain();
    v63 = sub_10079ACC4();
    v64 = sub_1007A29B4();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v65 = 138412290;
      swift_errorRetain();
      v67 = _swift_stdlib_bridgeErrorToNSError();
      *(v65 + 4) = v67;
      *v66 = v67;
      _os_log_impl(&_mh_execute_header, v63, v64, "Failed to convert provided configuration dictionary to JSON: %@", v65, 0xCu);
      sub_100007840(v66, &unk_100AD9480, &qword_1008113B0);
    }

    else
    {
    }

    v68 = 1;
    goto LABEL_91;
  }

  v210 = v9;
  v205 = v4;
  v49 = sub_1007969D4();
  v51 = v50;

  v236 = v34;
  v52 = *(v34 + 56);
  v52(v44, 1, 1, v33);
  sub_100796464();
  swift_allocObject();
  sub_100796454();
  sub_10063C7C4(&qword_100AEEB18, type metadata accessor for CollectionRecommendationsConfiguration, &unk_1008375F0);
  v218 = v49;
  v219 = v51;
  sub_100796444();
  sub_100007840(v44, &qword_100AEEB10, &qword_100837310);

  v52(v41, 0, 1, v33);
  sub_10020B3C8(v41, v44, &qword_100AEEB10, &qword_100837310);
  v69 = v44;
  v70 = v236;
  while (1)
  {
    sub_1000077D8(v69, v38, &qword_100AEEB10, &qword_100837310);
    if (v70[6](v38, 1, v33) == 1)
    {
      sub_100007840(v69, &qword_100AEEB10, &qword_100837310);
      sub_10000ADCC(v218, v219);
      sub_100007840(v38, &qword_100AEEB10, &qword_100837310);
      v68 = 1;
      v60 = v234;
      goto LABEL_91;
    }

    v203 = v33;
    v71 = v232;
    sub_100639198(v38, v232);
    sub_10062F86C(v71, v72);
    v33 = *(v71 + 56) ? 5 : *(v71 + 48);
    v73 = *(v71 + 72) ? 100 : *(v71 + 64);
    v38 = *(v71 + 112);
    v204 = v69;
    v202 = v33;
    v201 = v73;
    if (v38 && (v74 = *(v71 + 120)) != 0 && ((v242[0] = v38, sub_1001F1160(&qword_100AEEB30, &qword_100837330), sub_100005920(&qword_100AEEB38, &qword_100AEEB30, &qword_100837330, &protocol conformance descriptor for [A : B]), (sub_1007A28A4() & 1) != 0) || (v243 = v74, sub_1001F1160(&qword_100AEEB40, &qword_100837338), sub_100005920(&qword_100AEEB48, &qword_100AEEB40, &qword_100837338, &protocol conformance descriptor for [A : B]), v75 = sub_1007A28A4(), v71 = v232, (v75 & 1) != 0)))
    {

      v76 = sub_10040F850();

      sub_10061F1D4(v77, v76);
      v79 = v78;
      v243 = _swiftEmptyDictionarySingleton;
      v80 = v78 + 56;
      v81 = 1 << *(v78 + 32);
      v82 = -1;
      if (v81 < 64)
      {
        v82 = ~(-1 << v81);
      }

      v83 = v82 & *(v78 + 56);
      v84 = (v81 + 63) >> 6;

      v85 = 0;
      if (v83)
      {
        while (1)
        {
          v60 = v85;
LABEL_30:
          v86 = *(v79 + 48) + ((v60 << 10) | (16 * __clz(__rbit64(v83))));
          v33 = *(v86 + 8);
          v242[0] = *v86;
          v242[1] = v33;

          sub_10062FBC0(&v243, v242, v38, v74);
          v83 &= v83 - 1;

          v85 = v60;
          if (!v83)
          {
            goto LABEL_27;
          }
        }
      }

      while (1)
      {
LABEL_27:
        v60 = v85 + 1;
        if (__OFADD__(v85, 1))
        {
          goto LABEL_94;
        }

        if (v60 >= v84)
        {
          break;
        }

        v83 = *(v80 + 8 * v60);
        ++v85;
        if (v83)
        {
          goto LABEL_30;
        }
      }

      v126 = v243;
    }

    else
    {
      v87 = *(v71 + 88);
      if (!v87)
      {
        sub_1001F1160(&qword_100AEEB20, &qword_100837318);
        v127 = sub_1001F1160(&unk_100AD36B0, &unk_100837320);
        v128 = *(*(v127 - 8) + 72);
        v129 = (*(*(v127 - 8) + 80) + 32) & ~*(*(v127 - 8) + 80);
        v130 = swift_allocObject();
        v231 = v130;
        *(v130 + 16) = xmmword_100837290;
        v131 = *(v216 + 104);
        v132 = v130 + v129;
        v133 = v222;
        v131();
        v134 = sub_10079A114();
        sub_10040E480(v134);

        sub_10079A4D4();
        v235 = v132;
        (v131)(v128 + v132, enum case for CollectionRecommendationType.book(_:), v133);
        v135 = sub_10079A114();
        sub_10040E480(v135);

        sub_10079A4D4();
        (v131)(v132 + 2 * v128, enum case for CollectionRecommendationType.books(_:), v133);
        v136 = sub_10079A114();
        sub_10040E480(v136);

        sub_10079A4D4();
        v236 = v128;
        v137 = v235;
        (v131)(v235 + 3 * v128, enum case for CollectionRecommendationType.booksBySuggestedAuthors(_:), v133);
        v138 = sub_10079A114();
        sub_10040E480(v138);

        sub_10079A4D4();
        v230 = v127;
        (v131)(v137 + 4 * v128, enum case for CollectionRecommendationType.booksYouMightLike(_:), v133);
        v139 = sub_10079A114();
        sub_10040E480(v139);

        sub_10079A4D4();
        v229 = *(v127 + 48);
        (v131)(v236 + 4 * v128 + v137, enum case for CollectionRecommendationType.mangaYouMightLike(_:), v133);
        v140 = v131;
        sub_1001F1160(&qword_100AEEB28, &qword_10083AB10);
        v141 = v217;
        v142 = (*(v217 + 80) + 32) & ~*(v217 + 80);
        v143 = swift_allocObject();
        *(v143 + 16) = xmmword_10080B690;
        v144 = v237;
        (*(v141 + 104))(v143 + v142, enum case for ClusteringOptions.MediaType.ebook(_:), v237);
        sub_1001F3070(v143);
        swift_setDeallocating();
        (*(v141 + 8))(v143 + v142, v144);
        swift_deallocClassInstance();
        sub_10079A4D4();
        v145 = v236;
        v146 = v222;
        (v131)(v137 + 6 * v236, enum case for CollectionRecommendationType.moreFromYourAuthors(_:), v222);
        v147 = sub_10079A114();
        sub_10040E480(v147);

        sub_10079A4D4();
        v237 = (8 * v145);
        v148 = v137 + 7 * v145;
        v149 = v137;
        v150 = v146;
        (v140)(v148, enum case for CollectionRecommendationType.series(_:), v146);
        v151 = sub_10079A114();
        sub_10040E480(v151);

        sub_10079A4D4();
        v152 = v237;
        (v140)(v237 + v149, enum case for CollectionRecommendationType.booksBasedOnSeed(_:), v150);
        v153 = sub_10079A114();
        sub_10040E480(v153);

        sub_10079A4D4();
        v155 = v235;
        v154 = v236;
        (v140)(v236 + v152 + v235, enum case for CollectionRecommendationType.booksInGenre(_:), v150);
        v156 = sub_10079A114();
        sub_10040E480(v156);

        sub_10079A4D4();
        (v140)(v155 + 10 * v154, enum case for CollectionRecommendationType.booksByAuthor(_:), v150);
        v157 = sub_10079A114();
        sub_10040E480(v157);

        sub_10079A4D4();
        (v140)(v155 + 11 * v154, enum case for CollectionRecommendationType.nextInSeries(_:), v150);
        v158 = sub_10079A114();
        sub_10040E480(v158);

        sub_10079A4D4();
        (v140)(v155 + 12 * v154, enum case for CollectionRecommendationType.moreInSeries(_:), v150);
        v159 = sub_10079A114();
        v38 = sub_10040E480(v159);

        sub_10079A4D4();
        v206 = sub_1001EF9FC(v231);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        goto LABEL_62;
      }

      v88 = *(v87 + 16);
      if (v88)
      {
        v33 = 0;
        v236 = (v216 + 48);
        v197 = (v216 + 32);
        v200 = (v216 + 16);
        v60 = v217 + 8;
        v199 = (v215 + 32);
        v196 = (v216 + 8);
        v193 = v215 + 40;
        v89 = v87 + 40;
        v235 = v88;
        v194 = v88 - 1;
        v206 = _swiftEmptyDictionarySingleton;
        v90 = v222;
        v91 = v211;
        v231 = v217 + 16;
        v195 = v87 + 40;
        while (1)
        {
          v92 = (v89 + 16 * v33);
          v93 = v33;
          while (1)
          {
            if (v93 >= *(v87 + 16))
            {
              goto LABEL_95;
            }

            v33 = v93 + 1;
            v38 = *v92;

            sub_10079A3F4();
            if ((*v236)(v91, 1, v90) != 1)
            {
              break;
            }

            sub_100007840(v91, &qword_100AEEB08, &qword_100837308);
            v92 += 2;
            ++v93;
            if (v235 == v33)
            {
              goto LABEL_62;
            }
          }

          v94 = v212;
          (*v197)(v212, v91, v90);
          v192 = *v200;
          v192(v220, v94, v90);
          v95 = sub_10079A114();
          sub_10063C7C4(&qword_100AD36C8, &type metadata accessor for ClusteringOptions.MediaType, &protocol conformance descriptor for ClusteringOptions.MediaType);
          v96 = v237;
          v97 = sub_1007A2854();
          v98 = v95;
          v242[0] = v97;
          v99 = *(v95 + 16);
          v198 = v87;
          if (v99)
          {
            v100 = (*(v217 + 80) + 32) & ~*(v217 + 80);
            v191[1] = v98;
            v101 = v98 + v100;
            v102 = *(v217 + 72);
            v229 = *(v217 + 16);
            v230 = v102;
            v103 = v207;
            v104 = v208;
            do
            {
              v229(v103, v101, v96);
              sub_1006E74B4(v104, v103);
              v96 = v237;
              (*v60)(v104, v237);
              v101 += v230;
              --v99;
            }

            while (v99);

            v91 = v211;
            v105 = v206;
            v87 = v198;
          }

          else
          {

            v105 = v206;
          }

          v106 = v209;
          sub_10079A4D4();
          v230 = *v199;
          (v230)(v213, v106, v214);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v242[0] = v105;
          v108 = sub_1002ECD5C(v220);
          v110 = v105[2];
          v111 = (v109 & 1) == 0;
          v112 = __OFADD__(v110, v111);
          v113 = v110 + v111;
          v90 = v222;
          if (v112)
          {
            __break(1u);
LABEL_97:
            __break(1u);
          }

          if (v105[3] >= v113)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v124 = v108;
              v125 = v109;
              sub_1002F2C28();
              LOBYTE(v109) = v125;
              v108 = v124;
            }
          }

          else
          {
            LODWORD(v229) = v109;
            sub_1003D70E0(v113, isUniquelyReferenced_nonNull_native);
            v108 = sub_1002ECD5C(v220);
            v114 = v109 & 1;
            LOBYTE(v109) = v229;
            if ((v229 & 1) != v114)
            {
              result = sub_1007A3B24();
              __break(1u);
              return result;
            }
          }

          v115 = v242[0];
          v206 = v242[0];
          if (v109)
          {
            (*(v215 + 40))(*(v242[0] + 7) + *(v215 + 72) * v108, v213, v214);

            v38 = v196;
            v116 = *v196;
            (*v196)(v220, v90);
            v116(v212, v90);
          }

          else
          {
            *(v242[0] + (v108 >> 6) + 8) |= 1 << v108;
            v117 = v216;
            v118 = v108;
            v119 = v115;
            v120 = v220;
            v192(v115[6] + *(v216 + 72) * v108, v220, v90);
            (v230)(v119[7] + *(v215 + 72) * v118, v213, v214);

            v121 = *(v117 + 8);
            v121(v120, v90);
            v121(v212, v90);
            v122 = v119[2];
            v112 = __OFADD__(v122, 1);
            v123 = v122 + 1;
            if (v112)
            {
              goto LABEL_97;
            }

            v119[2] = v123;
            v87 = v198;
          }

          v89 = v195;
          if (v194 == v93)
          {
            goto LABEL_62;
          }
        }
      }

      v126 = _swiftEmptyDictionarySingleton;
    }

    v206 = v126;
LABEL_62:

    v160 = v232;
    v161 = *(v232 + 80);
    if (!v161)
    {
      v237 = &_swiftEmptySetSingleton;
      v33 = v239;
      v167 = v210;
      v60 = v234;
      v168 = *(v232 + 128);
      if (!v168)
      {
        goto LABEL_71;
      }

      goto LABEL_74;
    }

    v162 = *(v161 + 16);
    v163 = _swiftEmptyArrayStorage;
    if (!v162)
    {
      break;
    }

    v242[0] = _swiftEmptyArrayStorage;
    sub_1003BD8A8(0, v162, 0);
    v163 = v242[0];
    v33 = v161 + 32;
    v60 = v234;
    while (1)
    {
      v165 = *v33;
      v33 += 8;
      v164 = v165;
      if (v165 < 0)
      {
        break;
      }

      v242[0] = v163;
      v38 = v163[2];
      v166 = v163[3];
      if (v38 >= v166 >> 1)
      {
        sub_1003BD8A8((v166 > 1), v38 + 1, 1);
        v163 = v242[0];
      }

      v163[2] = v38 + 1;
      v163[v38 + 4] = v164;
      if (!--v162)
      {
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    swift_once();
    v53 = sub_10079ACE4();
    sub_100008B98(v53, qword_100AEEA88);
    swift_errorRetain();
    v54 = sub_10079ACC4();
    v55 = sub_1007A29B4();

    v56 = os_log_type_enabled(v54, v55);
    v69 = v60;
    v70 = v236;
    if (v56)
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 138412290;
      swift_errorRetain();
      v59 = _swift_stdlib_bridgeErrorToNSError();
      *(v57 + 4) = v59;
      *v58 = v59;
      _os_log_impl(&_mh_execute_header, v54, v55, "Failed to deserialize JSON into configuration object: %@", v57, 0xCu);
      sub_100007840(v58, &unk_100AD9480, &qword_1008113B0);
    }

    else
    {
    }
  }

  v60 = v234;
LABEL_73:
  v237 = sub_10040E40C(v163);

  v33 = v239;
  v167 = v210;
  v168 = *(v160 + 128);
  if (!v168)
  {
LABEL_71:
    v241 = &_swiftEmptySetSingleton;
    goto LABEL_87;
  }

LABEL_74:
  v169 = *(v168 + 16);
  if (v169)
  {
    v60 = 0;
    v170 = (v238 + 48);
    v171 = (v238 + 32);
    v172 = v168 + 40;
    v173 = _swiftEmptyArrayStorage;
    while (v60 < *(v168 + 16))
    {
      v38 = *(v172 - 8);

      v174 = v241;
      sub_10079A174();
      if ((*v170)(v33, 1, v174) == 1)
      {
        sub_100007840(v33, &qword_100AEEB00, &qword_100837300);
      }

      else
      {
        v38 = *v171;
        (*v171)(v240, v33, v174);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v173 = sub_10066C618(0, v173[2] + 1, 1, v173);
        }

        v176 = v173[2];
        v175 = v173[3];
        if (v176 >= v175 >> 1)
        {
          v173 = sub_10066C618((v175 > 1), v176 + 1, 1, v173);
        }

        v173[2] = v176 + 1;
        (v38)(v173 + ((*(v238 + 80) + 32) & ~*(v238 + 80)) + *(v238 + 72) * v176, v240, v241);
        v33 = v239;
      }

      ++v60;
      v172 += 16;
      if (v169 == v60)
      {
        goto LABEL_86;
      }
    }

    goto LABEL_93;
  }

  v173 = _swiftEmptyArrayStorage;
LABEL_86:
  v241 = sub_10040E61C(v173);

  v60 = v234;
  v167 = v210;
  v160 = v232;
LABEL_87:

  sub_10079A994();

  sub_10079AA14();
  (*(v224 + 16))(v223, v233, v225);
  sub_10079A104();
  sub_1000077D8(v160 + *(v203 + 76), v167, &qword_100AEEAF8, &qword_1008372F8);
  v177 = sub_10079A444();
  (*(*(v177 - 8) + 56))(v221, 1, 1, v177);
  v178 = [objc_opt_self() standardUserDefaults];
  v179 = sub_1007A2214();
  v180 = [v178 BOOLForKey:v179];

  if (v180)
  {
    v181 = enum case for CollectionRecommendationSource.derived(_:);
    v182 = sub_10079A454();
    v183 = *(v182 - 8);
    v184 = v205;
    (*(v183 + 104))(v205, v181, v182);
    (*(v183 + 56))(v184, 0, 1, v182);
  }

  else
  {
    v185 = sub_10079A454();
    (*(*(v185 - 8) + 56))(v205, 1, 1, v185);
  }

  v186 = v204;
  v187 = v219;
  v188 = v218;
  sub_10079A504();
  sub_10000ADCC(v188, v187);
  (*(v224 + 8))(v233, v225);
  sub_100007840(v186, &qword_100AEEB10, &qword_100837310);
  sub_10063A218(v160);
  v68 = 0;
LABEL_91:
  v189 = sub_10079A514();
  return (*(*(v189 - 8) + 56))(v60, v68, 1, v189);
}

double sub_10062F86C(uint64_t a1, double a2)
{
  v3 = sub_100799B74();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  if (*(a1 + 32) == 1)
  {
    sub_100799B54();
    v16 = sub_10066C5F0(0, 1, 1, _swiftEmptyArrayStorage);
    v18 = v16[2];
    v17 = v16[3];
    v19 = v16;
    if (v18 >= v17 >> 1)
    {
      v19 = sub_10066C5F0((v17 > 1), v18 + 1, 1, v16);
    }

    v19[2] = v18 + 1;
    v20 = v15;
    v21 = v19;
    (*(v4 + 32))(v19 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v18, v20, v3);
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  if (*(a1 + 33) == 1)
  {
    sub_100799B64();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_10066C5F0(0, v21[2] + 1, 1, v21);
    }

    v23 = v21[2];
    v22 = v21[3];
    if (v23 >= v22 >> 1)
    {
      v21 = sub_10066C5F0((v22 > 1), v23 + 1, 1, v21);
    }

    v21[2] = v23 + 1;
    (*(v4 + 32))(v21 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v23, v12, v3);
  }

  sub_10063C7C4(&qword_100AEEB68, &type metadata accessor for SaleOptions, &protocol conformance descriptor for SaleOptions);
  sub_1007A3584();
  v24 = v21[2];
  if (v24)
  {
    v26 = *(v4 + 16);
    v25 = v4 + 16;
    v31 = v21;
    v32 = v26;
    v27 = v21 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
    v28 = *(v25 + 56);
    v29 = (v25 - 8);
    do
    {
      v32(v9, v27, v3);
      sub_1007A3564();
      (*v29)(v6, v3);
      v27 += v28;
      --v24;
    }

    while (v24);
  }

  return result;
}

void sub_10062FBC0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v60 = a4;
  v56 = a1;
  v6 = sub_1001F1160(&qword_100AED4B0, &qword_100837340);
  __chkstk_darwin(v6 - 8);
  v8 = &v49 - v7;
  v9 = sub_1001F1160(&qword_100AEEB50, &qword_100837348);
  __chkstk_darwin(v9 - 8);
  v11 = &v49 - v10;
  v12 = sub_10079A144();
  v58 = *(v12 - 8);
  v59 = v12;
  __chkstk_darwin(v12);
  v61 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001F1160(&qword_100AEEB08, &qword_100837308);
  __chkstk_darwin(v14 - 8);
  v16 = &v49 - v15;
  v17 = sub_10079A404();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v55 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v49 - v21;
  v23 = *a2;
  v24 = a2[1];
  sub_10079A3F4();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_100007840(v16, &qword_100AEEB08, &qword_100837308);
    return;
  }

  v53 = v18;
  (*(v18 + 32))(v22, v16, v17);
  v25 = v17;
  if (*(a3 + 16) && (v26 = sub_10000E53C(v23, v24), (v27 & 1) != 0))
  {
    v51 = 0;
    v52 = *(*(a3 + 56) + 8 * v26);
  }

  else
  {
    v52 = sub_1006301C0();
    v51 = v28;
  }

  v30 = v59;
  v29 = v60;
  v31 = *(v60 + 16);
  v54 = v8;
  if (!v31 || (v32 = sub_10000E53C(v23, v24), (v33 & 1) == 0))
  {
    v39 = _swiftEmptyArrayStorage;
LABEL_23:
    v62 = v39;
    sub_1001F1160(&qword_100AEEB58, &qword_100837350);
    sub_100005920(&qword_100AEEB60, &qword_100AEEB58, &qword_100837350, &protocol conformance descriptor for [A]);
    if ((sub_1007A28A4() & 1) == 0)
    {

      v39 = sub_10079A114();
    }

    v46 = v53;
    v45 = v54;
    sub_10040E480(v39);

    v47 = v55;
    (*(v46 + 16))(v55, v22, v25);
    sub_10079A4D4();
    v48 = sub_10079A4E4();
    (*(*(v48 - 8) + 56))(v45, 0, 1, v48);
    sub_1005EA3F4(v45, v47);
    (*(v46 + 8))(v22, v25);
    return;
  }

  v49 = v22;
  v50 = v25;
  v34 = *(*(v29 + 56) + 8 * v32);
  v35 = *(v34 + 16);

  if (!v35)
  {
    v39 = _swiftEmptyArrayStorage;
LABEL_22:

    v22 = v49;
    v25 = v50;
    goto LABEL_23;
  }

  v36 = 0;
  v37 = (v58 + 48);
  v60 = v58 + 32;
  v38 = v34 + 40;
  v39 = _swiftEmptyArrayStorage;
  v57 = v35;
  while (v36 < *(v34 + 16))
  {

    sub_10079A124();
    if ((*v37)(v11, 1, v30) == 1)
    {
      sub_100007840(v11, &qword_100AEEB50, &qword_100837348);
    }

    else
    {
      v40 = v34;
      v41 = *v60;
      (*v60)(v61, v11, v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_10066C640(0, v39[2] + 1, 1, v39);
      }

      v43 = v39[2];
      v42 = v39[3];
      if (v43 >= v42 >> 1)
      {
        v39 = sub_10066C640((v42 > 1), v43 + 1, 1, v39);
      }

      v39[2] = v43 + 1;
      v44 = v39 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v43;
      v30 = v59;
      v41(v44, v61, v59);
      v34 = v40;
      v35 = v57;
    }

    ++v36;
    v38 += 16;
    if (v35 == v36)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
}

uint64_t sub_1006301C0()
{
  v1 = v0;
  v2 = sub_10079A404();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for CollectionRecommendationType.book(_:))
  {
    return 8;
  }

  if (v7 == enum case for CollectionRecommendationType.books(_:) || v7 == enum case for CollectionRecommendationType.booksBasedOnSeed(_:) || v7 == enum case for CollectionRecommendationType.booksByAuthor(_:) || v7 == enum case for CollectionRecommendationType.booksBySuggestedAuthors(_:) || v7 == enum case for CollectionRecommendationType.booksInGenre(_:) || v7 == enum case for CollectionRecommendationType.booksYouMightLike(_:) || v7 == enum case for CollectionRecommendationType.mangaYouMightLike(_:) || v7 == enum case for CollectionRecommendationType.moreFromYourAuthors(_:))
  {
    return 1;
  }

  if (v7 == enum case for CollectionRecommendationType.series(_:) || v7 == enum case for CollectionRecommendationType.nextInSeries(_:) || v7 == enum case for CollectionRecommendationType.moreInSeries(_:))
  {
    return 8;
  }

  if (v7 == enum case for CollectionRecommendationType.highlights(_:))
  {
    return 1;
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

double sub_1006304E8(unint64_t a1, uint64_t a2, uint64_t a3, objc_class *a4)
{
  v92 = a3;
  v96 = a4;
  v90 = a2;
  v5 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v5 - 8);
  v91 = v76 - v6;
  v7 = sub_1001F1160(&qword_100AEEAE0, &unk_1008372C8);
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  v10 = (v76 - v9);
  v11 = sub_10079A594();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v15 = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_104:
    v75 = v13;
    v101 = a1 & 0xFFFFFFFFFFFFFF8;
    v16 = sub_1007A38D4();
    v13 = v75;
  }

  else
  {
    v101 = a1 & 0xFFFFFFFFFFFFFF8;
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v100 = v16;
  v97 = a1;
  if (!v16)
  {
    v98 = _swiftEmptyArrayStorage;
    goto LABEL_94;
  }

  v85 = v15;
  v86 = v13;
  v87 = v8;
  v89 = v10;
  v15 = 0;
  v8 = 0;
  v17 = a1 & 0xC000000000000001;
  v18 = a1 + 32;
  v94 = v102 + 1;
  v98 = _swiftEmptyArrayStorage;
  v84 = v12 + 4;
  v10 = &qword_10081EB10;
  a1 = v100;
  v88 = v7;
  v99 = v17;
  while (2)
  {
    v7 = &unk_100AEF1B0;
    while (1)
    {
      if (v17)
      {
        v13 = sub_1007A3784();
        v19 = v13;
        v20 = __OFADD__(v15++, 1);
        if (v20)
        {
          goto LABEL_102;
        }
      }

      else
      {
        if (v15 >= *(v101 + 16))
        {
          goto LABEL_103;
        }

        v19 = *(v18 + 8 * v15);
        v13 = swift_unknownObjectRetain();
        v20 = __OFADD__(v15++, 1);
        if (v20)
        {
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }
      }

      v102[0] = v19;
      swift_unknownObjectRetain();
      sub_1001F1160(&unk_100AEF1B0, &qword_10081EB10);
      if (swift_dynamicCast())
      {
        break;
      }

      v13 = swift_unknownObjectRelease();
LABEL_7:
      if (v15 == a1)
      {
        goto LABEL_94;
      }
    }

    sub_100630F44(v103);

    sub_1007995B4();
    sub_100799444();
    v21 = sub_100799544();

    v12 = v21;
    v22 = sub_100799574();
    v24 = v23;

    v25 = HIBYTE(v24) & 0xF;
    v26 = v22 & 0xFFFFFFFFFFFFLL;
    if ((v24 & 0x2000000000000000) != 0)
    {
      v27 = HIBYTE(v24) & 0xF;
    }

    else
    {
      v27 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (!v27)
    {

      swift_unknownObjectRelease();

      v17 = v99;
      a1 = v100;
      goto LABEL_7;
    }

    if ((v24 & 0x1000000000000000) == 0)
    {
      if ((v24 & 0x2000000000000000) != 0)
      {
        v102[0] = v22;
        v102[1] = v24 & 0xFFFFFFFFFFFFFFLL;
        if (v22 == 43)
        {
          if (!v25)
          {
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
            goto LABEL_109;
          }

          if (--v25)
          {
            v30 = 0;
            v38 = v94;
            while (1)
            {
              v39 = *v38 - 48;
              if (v39 > 9)
              {
                break;
              }

              if (!is_mul_ok(v30, 0xAuLL))
              {
                break;
              }

              v33 = __CFADD__(10 * v30, v39);
              v30 = 10 * v30 + v39;
              if (v33)
              {
                break;
              }

              ++v38;
              if (!--v25)
              {
                goto LABEL_75;
              }
            }
          }
        }

        else if (v22 == 45)
        {
          if (!v25)
          {
            goto LABEL_107;
          }

          if (--v25)
          {
            v30 = 0;
            v34 = v94;
            while (1)
            {
              v35 = *v34 - 48;
              if (v35 > 9)
              {
                break;
              }

              if (!is_mul_ok(v30, 0xAuLL))
              {
                break;
              }

              v33 = 10 * v30 >= v35;
              v30 = 10 * v30 - v35;
              if (!v33)
              {
                break;
              }

              ++v34;
              if (!--v25)
              {
                goto LABEL_75;
              }
            }
          }
        }

        else if (v25)
        {
          v30 = 0;
          v41 = v102;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            if (!is_mul_ok(v30, 0xAuLL))
            {
              break;
            }

            v33 = __CFADD__(10 * v30, v42);
            v30 = 10 * v30 + v42;
            if (v33)
            {
              break;
            }

            ++v41;
            if (!--v25)
            {
              goto LABEL_75;
            }
          }
        }

        goto LABEL_74;
      }

      if ((v22 & 0x1000000000000000) != 0)
      {
        v28 = ((v24 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v28 = sub_1007A37B4();
      }

      v29 = *v28;
      if (v29 == 43)
      {
        if (v26 < 1)
        {
          goto LABEL_106;
        }

        v25 = v26 - 1;
        if (v26 == 1)
        {
          goto LABEL_74;
        }

        v30 = 0;
        if (v28)
        {
          v36 = v28 + 1;
          while (1)
          {
            v37 = *v36 - 48;
            if (v37 > 9)
            {
              goto LABEL_74;
            }

            if (!is_mul_ok(v30, 0xAuLL))
            {
              goto LABEL_74;
            }

            v33 = __CFADD__(10 * v30, v37);
            v30 = 10 * v30 + v37;
            if (v33)
            {
              goto LABEL_74;
            }

            ++v36;
            if (!--v25)
            {
              goto LABEL_75;
            }
          }
        }
      }

      else if (v29 == 45)
      {
        if (v26 < 1)
        {
          goto LABEL_108;
        }

        v25 = v26 - 1;
        if (v26 == 1)
        {
          goto LABEL_74;
        }

        v30 = 0;
        if (v28)
        {
          v31 = v28 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              goto LABEL_74;
            }

            if (!is_mul_ok(v30, 0xAuLL))
            {
              goto LABEL_74;
            }

            v33 = 10 * v30 >= v32;
            v30 = 10 * v30 - v32;
            if (!v33)
            {
              goto LABEL_74;
            }

            ++v31;
            if (!--v25)
            {
              goto LABEL_75;
            }
          }
        }
      }

      else
      {
        if (!v26)
        {
LABEL_74:
          v30 = 0;
          LOBYTE(v25) = 1;
          goto LABEL_75;
        }

        v30 = 0;
        if (v28)
        {
          do
          {
            v40 = *v28 - 48;
            if (v40 > 9)
            {
              goto LABEL_74;
            }

            if (!is_mul_ok(v30, 0xAuLL))
            {
              goto LABEL_74;
            }

            v33 = __CFADD__(10 * v30, v40);
            v30 = 10 * v30 + v40;
            if (v33)
            {
              goto LABEL_74;
            }

            ++v28;
          }

          while (--v26);
        }
      }

      LOBYTE(v25) = 0;
LABEL_75:
      LOBYTE(v103) = v25;
      v43 = v25;
      goto LABEL_76;
    }

    LOBYTE(v103) = 0;
    sub_10063E4AC(v22, v24, 10);
    v30 = v44;
    v43 = v45;
LABEL_76:

    if (v43)
    {
      swift_unknownObjectRelease();

      v17 = v99;
      a1 = v100;
      v7 = &unk_100AEF1B0;
      goto LABEL_7;
    }

    v82 = sub_1007993D4();
    v81 = v46;
    v80 = sub_100799364();
    v79 = v47;
    v78 = sub_100799404();
    v77 = v48;
    v76[1] = [v12 isPreorder];
    v49 = [v12 artworkURL];
    if (v49)
    {
      v83 = sub_1007A2254();
    }

    else
    {
      v83 = 0;
    }

    v50 = v88;
    sub_100799384();
    v51 = v85;
    sub_10079A584();
    v52 = *(v50 + 12);
    v53 = v89;
    *v89 = v30;
    (*v84)(&v53[v52], v51, v86);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v98 = sub_10066C668(0, v98[2] + 1, 1, v98);
    }

    v55 = v98[2];
    v54 = v98[3];
    if (v55 >= v54 >> 1)
    {
      v98 = sub_10066C668((v54 > 1), v55 + 1, 1, v98);
    }

    swift_unknownObjectRelease();

    v56 = v98;
    v98[2] = v55 + 1;
    v13 = sub_10020B3C8(v89, v56 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v55, &qword_100AEEAE0, &unk_1008372C8);
    v17 = v99;
    a1 = v100;
    if (v15 != v100)
    {
      continue;
    }

    break;
  }

LABEL_94:
  v57 = v98;
  v58 = v98[2];
  if (v95)
  {
    v59 = v97;
    if (v58 == sub_1007A38D4())
    {
      goto LABEL_101;
    }

LABEL_96:

    if (qword_100AD1990 != -1)
    {
LABEL_109:
      swift_once();
    }

    v60 = sub_10079ACE4();
    sub_100008B98(v60, qword_100AEEA88);
    v61 = sub_10079ACC4();
    v62 = sub_1007A29B4();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "Failed to decode array of resource objects", v63, 2u);
    }

    v64 = [objc_opt_self() sharedInstance];
    v105._countAndFlagsBits = 0x80000001008E2480;
    v65.super.isa = v96;
    v104.value._rawValue = 0;
    v104.is_nil = 108;
    v105._object = 420;
    sub_1007A32F4(v65, v104, v105, v66);
  }

  else
  {
    v59 = v97;
    if (v58 != *(v101 + 16))
    {
      goto LABEL_96;
    }

LABEL_101:
    v68 = sub_1007A2744();
    v69 = v91;
    (*(*(v68 - 8) + 56))(v91, 1, 1, v68);
    v70 = swift_allocObject();
    v70[2] = 0;
    v70[3] = 0;
    v71 = v93;
    v70[4] = v93;
    v70[5] = v57;
    v70[6] = v90;
    v70[7] = v92;
    v70[8] = v59;
    v72 = v96;
    v70[9] = v96;

    v73 = v72;
    v74 = v71;
    sub_1003457A0(0, 0, v69, &unk_1008372E0, v70);
  }

  return result;
}

uint64_t sub_100630F44(uint64_t a1)
{
  v72 = a1;
  v1 = sub_100799594();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v71 - v6;
  sub_1001F1160(qword_100AEA1F0, &unk_100828E80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080EFF0;
  *(inited + 32) = 0x657079745FLL;
  v75 = inited + 32;
  *(inited + 40) = 0xE500000000000000;
  v9 = *(v2 + 104);
  v9(v7, enum case for MResource.Keys.type(_:), v1);

  v10 = sub_100799584();
  v12 = v11;
  v13 = *(v2 + 8);
  v13(v7, v1);
  *(inited + 48) = v10;
  *(inited + 56) = v12;
  *(inited + 64) = 0x666572685FLL;
  *(inited + 72) = 0xE500000000000000;
  v9(v4, enum case for MResource.Keys.href(_:), v1);
  v14 = sub_100799584();
  v16 = v15;
  v13(v4, v1);
  v17 = v72;
  *(inited + 80) = v14;
  *(inited + 88) = v16;
  v18 = sub_1001ED994(inited);
  swift_setDeallocating();
  sub_1001F1160(&unk_100AE0920, &unk_100817F60);
  swift_arrayDestroy();
  v73 = 0;
  v19 = 0;
  v21 = v18 + 64;
  v20 = *(v18 + 64);
  v75 = v18;
  v22 = 1 << *(v18 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v20;
  v25 = (v22 + 63) >> 6;
  v74 = v17;
  if ((v23 & v20) == 0)
  {
    while (1)
    {
LABEL_7:
      v26 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v26 >= v25)
      {
        break;
      }

      v24 = *(v21 + 8 * v26);
      ++v19;
      if (v24)
      {
        v19 = v26;
        goto LABEL_11;
      }
    }

    if (v73)
    {
      return v74;
    }

    return v17;
  }

  while (1)
  {
LABEL_11:
    while (1)
    {
      v27 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v28 = (v19 << 10) | (16 * v27);
      v29 = (*(v75 + 48) + v28);
      v30 = *v29;
      v31 = v29[1];
      v32 = (*(v75 + 56) + v28);
      v33 = *v32;
      v34 = v32[1];
      *&v79 = *v29;
      *(&v79 + 1) = v31;
      swift_bridgeObjectRetain_n();

      sub_1007A36B4();
      if (*(v17 + 16))
      {
        v35 = sub_10000E2A4(v81);
        if (v36)
        {
          break;
        }
      }

      sub_10002899C(v81);

      v80 = 0u;
      v79 = 0u;
LABEL_6:
      sub_100007840(&v79, &unk_100AD5B40, &unk_100811300);
      if (!v24)
      {
        goto LABEL_7;
      }
    }

    sub_100007484(*(v17 + 56) + 32 * v35, &v79);
    sub_10002899C(v81);
    sub_100007840(&v79, &unk_100AD5B40, &unk_100811300);
    *&v79 = v33;
    *(&v79 + 1) = v34;

    sub_1007A36B4();
    if (*(v17 + 16))
    {
      v37 = sub_10000E2A4(v81);
      if (v38)
      {
        v39 = v37;

        sub_100007484(*(v17 + 56) + 32 * v39, &v79);
        sub_10002899C(v81);
        goto LABEL_6;
      }
    }

    sub_10002899C(v81);
    v79 = 0u;
    v80 = 0u;
    sub_100007840(&v79, &unk_100AD5B40, &unk_100811300);
    *&v79 = v33;
    *(&v79 + 1) = v34;
    sub_1007A36B4();
    v78[0] = v30;
    v78[1] = v31;

    sub_1007A36B4();
    if (!*(v17 + 16) || (v40 = sub_10000E2A4(&v79), (v41 & 1) == 0))
    {
      sub_10002899C(&v79);
      v52 = v74;
      v53 = sub_10000E2A4(v81);
      if (v54)
      {
        v55 = v53;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77[0] = v52;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1002F1744();
          v52 = v77[0];
        }

        sub_10002899C(*(v52 + 48) + 40 * v55);
        sub_1000076D4(*(v52 + 56) + 32 * v55, v78);
        v74 = v52;
        sub_1002EFB38(v55, v52);
        sub_10002899C(v81);
      }

      else
      {
        sub_10002899C(v81);
        memset(v78, 0, sizeof(v78));
      }

      sub_100007840(v78, &unk_100AD5B40, &unk_100811300);
      goto LABEL_28;
    }

    sub_100007484(*(v17 + 56) + 32 * v40, v78);
    sub_10002899C(&v79);
    sub_1000076D4(v78, v77);
    v42 = v74;
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v76 = v42;
    v44 = sub_10000E2A4(v81);
    v46 = v42[2];
    v47 = (v45 & 1) == 0;
    v48 = __OFADD__(v46, v47);
    v49 = v46 + v47;
    if (v48)
    {
      break;
    }

    if (v42[3] >= v49)
    {
      if ((v43 & 1) == 0)
      {
        v68 = v44;
        v69 = v45;
        sub_1002F1744();
        v45 = v69;
        v44 = v68;
      }
    }

    else
    {
      v50 = v45;
      sub_1003D5034(v49, v43);
      v44 = sub_10000E2A4(v81);
      if ((v50 & 1) != (v51 & 1))
      {
        goto LABEL_48;
      }

      v45 = v50;
    }

    v62 = v76;
    v74 = v76;
    if (v45)
    {
      v63 = (v76[7] + 32 * v44);
      sub_1000074E0(v63);
      sub_1000076D4(v77, v63);
      sub_10002899C(v81);
    }

    else
    {
      v64 = v17;
      v76[(v44 >> 6) + 8] |= 1 << v44;
      v65 = v44;
      sub_100028940(v81, v62[6] + 40 * v44);
      sub_1000076D4(v77, v62[7] + 32 * v65);
      sub_10002899C(v81);
      v66 = v62[2];
      v48 = __OFADD__(v66, 1);
      v67 = v66 + 1;
      if (v48)
      {
        goto LABEL_47;
      }

      v62[2] = v67;
      v17 = v64;
    }

LABEL_28:
    *&v79 = v30;
    *(&v79 + 1) = v31;
    sub_1007A36B4();
    v57 = v74;
    v58 = sub_10000E2A4(v81);
    if (v59)
    {
      v60 = v58;
      v61 = swift_isUniquelyReferenced_nonNull_native();
      v78[0] = v57;
      if (!v61)
      {
        sub_1002F1744();
        v57 = v78[0];
      }

      sub_10002899C(*(v57 + 48) + 40 * v60);
      sub_1000076D4(*(v57 + 56) + 32 * v60, &v79);
      v74 = v57;
      sub_1002EFB38(v60, v57);
      sub_10002899C(v81);
    }

    else
    {
      sub_10002899C(v81);
      v79 = 0u;
      v80 = 0u;
    }

    sub_100007840(&v79, &unk_100AD5B40, &unk_100811300);
    v73 = 1;
    if (!v24)
    {
      goto LABEL_7;
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = sub_1007A3B24();
  __break(1u);
  return result;
}

uint64_t sub_10063177C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[26] = a8;
  v8[27] = v12;
  v8[24] = a6;
  v8[25] = a7;
  v8[22] = a4;
  v8[23] = a5;
  v9 = sub_100799594();
  v8[28] = v9;
  v8[29] = *(v9 - 8);
  v8[30] = swift_task_alloc();

  return _swift_task_switch(sub_10063184C, 0, 0);
}

uint64_t sub_10063184C()
{
  sub_10062B5FC((v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  sub_10000E3E8(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[31] = v3;
  *v3 = v0;
  v3[1] = sub_100631918;
  v4 = v0[24];
  v5 = v0[25];
  v6 = v0[23];

  return dispatch thunk of BookRecommendationPostHydrationFilteringServiceType.storeIDsOfDuplicateAssets(fromCandidates:collectionType:)(v6, v4, v5, v1, v2);
}

uint64_t sub_100631918(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v1;

  if (v1)
  {
    v4 = sub_100632168;
  }

  else
  {
    v4 = sub_100631A2C;
  }

  return _swift_task_switch(v4, 0, 0);
}

unint64_t sub_100631A2C()
{
  v66 = v0;
  v1 = v0[26];
  sub_1000074E0(v0 + 2);
  v63 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
    goto LABEL_96;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
  {
    v3 = 0;
    v4 = v0[29];
    v5 = v1 & 0xC000000000000001;
    v6 = v1 & 0xFFFFFFFFFFFFFF8;
    v62 = enum case for MResource.Keys.id(_:);
    v60 = (v4 + 8);
    v61 = (v4 + 104);
    v58 = v0[32];
    v59 = v58 + 56;
    while (v5)
    {
      v7 = sub_1007A3784();
      v8 = __OFADD__(v3++, 1);
      if (v8)
      {
        goto LABEL_94;
      }

LABEL_7:
      v0[20] = v7;
      swift_unknownObjectRetain();
      sub_1001F1160(&unk_100AEF1B0, &qword_10081EB10);
      if (!swift_dynamicCast())
      {
        goto LABEL_32;
      }

      v9 = i;
      v10 = v6;
      v11 = v5;
      v12 = v0[30];
      v13 = v0[28];
      v14 = v0[21];
      (*v61)(v12, v62, v13);
      v15 = sub_100799584();
      v17 = v16;
      (*v60)(v12, v13);
      v0[16] = v15;
      v0[17] = v17;
      sub_1007A36B4();
      if (!*(v14 + 16) || (v18 = sub_10000E2A4((v0 + 7)), (v19 & 1) == 0))
      {

        sub_10002899C((v0 + 7));
        v5 = v11;
        v6 = v10;
        i = v9;
        goto LABEL_32;
      }

      sub_100007484(*(v14 + 56) + 32 * v18, (v0 + 12));
      sub_10002899C((v0 + 7));

      v5 = v11;
      v6 = v10;
      i = v9;
      if (swift_dynamicCast())
      {
        v21 = v0[18];
        result = v0[19];
        v22 = HIBYTE(result) & 0xF;
        v23 = v21 & 0xFFFFFFFFFFFFLL;
        if ((result & 0x2000000000000000) != 0)
        {
          v24 = HIBYTE(result) & 0xF;
        }

        else
        {
          v24 = v21 & 0xFFFFFFFFFFFFLL;
        }

        if (!v24)
        {

          goto LABEL_32;
        }

        if ((result & 0x1000000000000000) != 0)
        {
          sub_10063E4AC(v0[18], v0[19], 10);
          v1 = v46;
          v48 = v47;

          if ((v48 & 1) == 0)
          {
            goto LABEL_78;
          }

          goto LABEL_32;
        }

        if ((result & 0x2000000000000000) != 0)
        {
          v65[0] = v0[18];
          v65[1] = result & 0xFFFFFFFFFFFFFFLL;
          if (v21 == 43)
          {
            if (!v22)
            {
              goto LABEL_103;
            }

            v25 = (v22 - 1);
            if (v22 != 1)
            {
              v1 = 0;
              v36 = v65 + 1;
              while (1)
              {
                v37 = *v36 - 48;
                if (v37 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v1, 0xAuLL))
                {
                  break;
                }

                v30 = __CFADD__(10 * v1, v37);
                v1 = 10 * v1 + v37;
                if (v30)
                {
                  break;
                }

                ++v36;
                if (!--v25)
                {
                  goto LABEL_77;
                }
              }
            }
          }

          else if (v21 == 45)
          {
            if (!v22)
            {
              goto LABEL_104;
            }

            v25 = (v22 - 1);
            if (v22 != 1)
            {
              v1 = 0;
              v31 = v65 + 1;
              while (1)
              {
                v32 = *v31 - 48;
                if (v32 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v1, 0xAuLL))
                {
                  break;
                }

                v30 = 10 * v1 >= v32;
                v1 = 10 * v1 - v32;
                if (!v30)
                {
                  break;
                }

                ++v31;
                if (!--v25)
                {
                  goto LABEL_77;
                }
              }
            }
          }

          else if (v22)
          {
            v1 = 0;
            v39 = v65;
            while (1)
            {
              v40 = *v39 - 48;
              if (v40 > 9)
              {
                break;
              }

              if (!is_mul_ok(v1, 0xAuLL))
              {
                break;
              }

              v30 = __CFADD__(10 * v1, v40);
              v1 = 10 * v1 + v40;
              if (v30)
              {
                break;
              }

              ++v39;
              if (!--v22)
              {
LABEL_75:
                LOBYTE(v25) = 0;
                goto LABEL_77;
              }
            }
          }
        }

        else
        {
          if ((v21 & 0x1000000000000000) != 0)
          {
            v25 = ((result & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v49 = v0[19];
            v25 = sub_1007A37B4();
            result = v49;
          }

          v26 = *v25;
          if (v26 == 43)
          {
            if (v23 < 1)
            {
              __break(1u);
LABEL_102:
              __break(1u);
LABEL_103:
              __break(1u);
LABEL_104:
              __break(1u);
              return result;
            }

            v33 = v23 - 1;
            if (v23 != 1)
            {
              v1 = 0;
              if (!v25)
              {
                goto LABEL_77;
              }

              v34 = v25 + 1;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v1, 0xAuLL))
                {
                  break;
                }

                v30 = __CFADD__(10 * v1, v35);
                v1 = 10 * v1 + v35;
                if (v30)
                {
                  break;
                }

                ++v34;
                if (!--v33)
                {
                  goto LABEL_75;
                }
              }
            }
          }

          else if (v26 == 45)
          {
            if (v23 < 1)
            {
              goto LABEL_102;
            }

            v27 = v23 - 1;
            if (v23 != 1)
            {
              v1 = 0;
              if (!v25)
              {
                goto LABEL_77;
              }

              v28 = v25 + 1;
              while (1)
              {
                v29 = *v28 - 48;
                if (v29 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v1, 0xAuLL))
                {
                  break;
                }

                v30 = 10 * v1 >= v29;
                v1 = 10 * v1 - v29;
                if (!v30)
                {
                  break;
                }

                ++v28;
                if (!--v27)
                {
                  goto LABEL_75;
                }
              }
            }
          }

          else if (v23)
          {
            v1 = 0;
            if (!v25)
            {
              goto LABEL_77;
            }

            while (1)
            {
              v38 = *v25 - 48;
              if (v38 > 9)
              {
                break;
              }

              if (!is_mul_ok(v1, 0xAuLL))
              {
                break;
              }

              v30 = __CFADD__(10 * v1, v38);
              v1 = 10 * v1 + v38;
              if (v30)
              {
                break;
              }

              ++v25;
              if (!--v23)
              {
                goto LABEL_75;
              }
            }
          }
        }

        v1 = 0;
        LOBYTE(v25) = 1;
LABEL_77:
        v64 = v25;
        v41 = v25;

        if (v41)
        {
          goto LABEL_32;
        }

LABEL_78:
        if (!*(v58 + 16))
        {
          goto LABEL_32;
        }

        v42 = sub_1007A3BF4();
        v43 = -1 << *(v58 + 32);
        v44 = v42 & ~v43;
        if (((*(v59 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
        {
          goto LABEL_32;
        }

        v45 = ~v43;
        while (*(*(v58 + 48) + 8 * v44) != v1)
        {
          v44 = (v44 + 1) & v45;
          if (((*(v59 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        swift_unknownObjectRelease();
        if (v3 == v9)
        {
LABEL_93:
          v50 = v63;
          goto LABEL_98;
        }
      }

      else
      {
LABEL_32:
        sub_1007A37D4();
        sub_1007A3804();
        sub_1007A3814();
        v1 = &v63;
        sub_1007A37E4();
        if (v3 == i)
        {
          goto LABEL_93;
        }
      }
    }

    if (v3 >= *(v6 + 16))
    {
      goto LABEL_95;
    }

    v7 = swift_unknownObjectRetain();
    v8 = __OFADD__(v3++, 1);
    if (!v8)
    {
      goto LABEL_7;
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    ;
  }

  v50 = _swiftEmptyArrayStorage;
LABEL_98:
  v51 = v0[27];

  v52 = sub_1003BC474(v50);

  v53 = [objc_opt_self() sharedInstance];
  sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_10080B690;
  *(v54 + 56) = sub_1001F1160(&qword_100ADEC60, &unk_10081EB80);
  *(v54 + 32) = v52;
  v69._countAndFlagsBits = 0x80000001008E2480;
  v55.super.isa = v51;
  v68.value._rawValue = v54;
  v68.is_nil = 108;
  v69._object = 439;
  sub_1007A32F4(v55, v68, v69, v56);

  v57 = v0[1];

  return v57();
}

uint64_t sub_100632168()
{
  sub_1000074E0(v0 + 2);
  if (qword_100AD1990 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100AEEA88);
  swift_errorRetain();
  v2 = sub_10079ACC4();
  v3 = sub_1007A29B4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to deduplicate assets.  Error=%@", v4, 0xCu);
    sub_100007840(v5, &unk_100AD9480, &qword_1008113B0);
  }

  v7 = v0[27];

  v8 = [objc_opt_self() sharedInstance];
  v15._countAndFlagsBits = 0x80000001008E2480;
  v9.super.isa = v7;
  v14.value._rawValue = 0;
  v14.is_nil = 108;
  v15._object = 442;
  sub_1007A32F4(v9, v14, v15, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100632364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  v7 = sub_100799B14();
  v6[22] = v7;
  v6[23] = *(v7 - 8);
  v6[24] = swift_task_alloc();
  sub_1001F1160(&qword_100AE7680, &qword_10082BE70);
  v6[25] = swift_task_alloc();
  sub_1001F1160(&qword_100AEEC40, &qword_100837408);
  v6[26] = swift_task_alloc();
  v8 = sub_100799AC4();
  v6[27] = v8;
  v6[28] = *(v8 - 8);
  v6[29] = swift_task_alloc();
  v9 = sub_10079A2F4();
  v6[30] = v9;
  v6[31] = *(v9 - 8);
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_100632550, 0, 0);
}

uint64_t sub_100632550()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  v5 = v0[25];
  v6 = v0[20];
  sub_10062B274((v0 + 2));
  v7 = v0[5];
  v13 = v0[6];
  sub_10000E3E8(v0 + 2, v7);
  (*(v1 + 16))(v2, v6, v4);
  v8 = sub_10079A0E4();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = sub_10079A874();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_10079A2E4();
  v10 = swift_task_alloc();
  v0[33] = v10;
  *v10 = v0;
  v10[1] = sub_1006326F8;
  v11 = v0[32];

  return dispatch thunk of BookRecommendationServiceType.fetchRecommendations(for:)(v11, v7, v13);
}

uint64_t sub_1006326F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 248);
  v4[34] = v1;

  v6 = (v5 + 8);
  v7 = v4[32];
  v8 = v4[30];
  if (v1)
  {
    (*v6)(v7, v8);
    v9 = sub_100632BE4;
  }

  else
  {
    v4[35] = a1;
    (*v6)(v7, v8);
    v9 = sub_100632884;
  }

  return _swift_task_switch(v9, 0, 0);
}

void sub_100632884()
{
  v1 = v0[35];
  sub_1000074E0(v0 + 2);
  v2 = v0[34];
  sub_100796494();
  swift_allocObject();
  v19 = sub_100796484();
  if (!v1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_17:
    v11 = v0[21];
    v12 = [objc_opt_self() sharedInstance];
    sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10080B690;
    *(v13 + 56) = sub_1001F1160(&qword_100ADEC60, &unk_10081EB80);
    *(v13 + 32) = v7;
    v22._countAndFlagsBits = 0x80000001008E2480;
    v14.super.isa = v11;
    v21.value._rawValue = v13;
    v21.is_nil = 108;
    v22._object = 502;
    sub_1007A32F4(v14, v21, v22, v15);

    v16 = v0[1];

    v16();
    return;
  }

  v3 = *(v1 + 16);
  if (!v3)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_16:

    goto LABEL_17;
  }

  v4 = 0;
  v5 = v0[23];
  v6 = (v5 + 8);
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v4 >= *(v1 + 16))
    {
      __break(1u);
      return;
    }

    (*(v5 + 16))(v0[24], v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v4, v0[22]);
    sub_100632EB4(v19, v0 + 11);
    v8 = v0[22];
    if (v2)
    {
      break;
    }

    (*v6)(v0[24], v8);
    if (v0[14])
    {
      sub_1000076D4((v0 + 11), (v0 + 7));
      sub_1000076D4((v0 + 7), (v0 + 15));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_10066A640(0, *(v7 + 2) + 1, 1, v7);
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      if (v10 >= v9 >> 1)
      {
        v7 = sub_10066A640((v9 > 1), v10 + 1, 1, v7);
      }

      *(v7 + 2) = v10 + 1;
      sub_1000076D4((v0 + 15), &v7[32 * v10 + 32]);
    }

    else
    {
      sub_100007840((v0 + 11), &unk_100AD5B40, &unk_100811300);
    }

    v2 = 0;
    if (v3 == ++v4)
    {
      goto LABEL_16;
    }
  }

  v17 = v0[24];
  v18 = v8;

  (*v6)(v17, v18);
}

uint64_t sub_100632BE4()
{
  sub_1000074E0(v0 + 2);
  if (qword_100AD1990 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100AEEA88);
  swift_errorRetain();
  v2 = sub_10079ACC4();
  v3 = sub_1007A29B4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch recommendations. error: %@)", v4, 0xCu);
    sub_100007840(v5, &unk_100AD9480, &qword_1008113B0);
  }

  else
  {
  }

  sub_100796494();
  swift_allocObject();
  sub_100796484();
  v7 = v0[21];
  v8 = [objc_opt_self() sharedInstance];
  sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10080B690;
  *(v9 + 56) = sub_1001F1160(&qword_100ADEC60, &unk_10081EB80);
  *(v9 + 32) = _swiftEmptyArrayStorage;
  v16._countAndFlagsBits = 0x80000001008E2480;
  v10.super.isa = v7;
  v15.value._rawValue = v9;
  v15.is_nil = 108;
  v16._object = 502;
  sub_1007A32F4(v10, v15, v16, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100632EB4@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v31 = a1;
  v35 = a2;
  v34 = sub_10079A7A4();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100799AE4();
  v32 = sub_100633328();
  v33 = v6;
  v8 = v7;
  sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100812CF0;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  v38[0] = sub_10079A5F4();
  *(inited + 48) = sub_1007A3A74();
  *(inited + 56) = v10;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x73656372756F73;
  *(inited + 88) = 0xE700000000000000;
  v11 = sub_10079A5D4();
  v12 = sub_1001F1160(&qword_100AEEC00, &qword_1008373C8);
  *(inited + 96) = v11;
  *(inited + 120) = v12;
  *(inited + 128) = 0x65726F6373;
  *(inited + 136) = 0xE500000000000000;
  sub_100799AF4();
  *(inited + 168) = &type metadata for Double;
  *(inited + 144) = v13;
  v14 = sub_100019158(inited);
  swift_setDeallocating();
  sub_1001F1160(&unk_100ADD560, &unk_10080CDC0);
  swift_arrayDestroy();
  if (v8)
  {
    v38[0] = v8;
    sub_1001F1160(&qword_100AEEC10, &unk_1008373D0);
    sub_10063BAA8();
    v15 = sub_100796474();
    if (v2)
    {
    }

    else
    {
      v22 = v15;
      v23 = v16;

      v24 = objc_opt_self();
      isa = sub_1007969C4().super.isa;
      v38[0] = 0;
      v26 = [v24 JSONObjectWithData:isa options:0 error:{v38, v31}];

      if (v26)
      {
        v27 = v38[0];
        sub_1007A3504();
        swift_unknownObjectRelease();
        v28 = sub_1001F1160(&qword_100AD6710, &unk_10080B890);
        if (swift_dynamicCast())
        {
          v39 = v28;
          v38[0] = *&v37[0];
          sub_1000076D4(v38, v37);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v36 = v14;
          sub_1002F4B78(v37, 0x746E65746E6F63, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
          sub_10000ADCC(v22, v23);
          v14 = v36;
        }

        else
        {
          sub_10000ADCC(v22, v23);
        }
      }

      else
      {
        v30 = v38[0];
        sub_1007967D4();

        swift_willThrow();
        sub_10000ADCC(v22, v23);
      }
    }
  }

  if (v33)
  {
    v39 = &type metadata for String;
    v38[0] = v32;
    v38[1] = v33;
    sub_1000076D4(v38, v37);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v36 = v14;
    sub_1002F4B78(v37, 1684957547, 0xE400000000000000, v17);
    v14 = v36;
  }

  v18 = sub_1001F1160(&qword_100AD6710, &unk_10080B890);
  v19 = v34;
  v20 = v35;
  v35[3] = v18;
  *v20 = v14;
  return (*(v3 + 8))(v5, v19);
}

uint64_t sub_100633328()
{
  v0 = sub_1001F1160(&qword_100AD6730, &qword_100812D88);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_10079A5B4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  sub_10079A5C4();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_100007840(v2, &qword_100AD6730, &qword_100812D88);
    return 0;
  }

  (*(v4 + 32))(v9, v2, v3);
  (*(v4 + 16))(v6, v9, v3);
  v11 = (*(v4 + 88))(v6, v3);
  if (v11 == enum case for Book.Content.ebook(_:))
  {
    (*(v4 + 96))(v6, v3);
    (*(v4 + 8))(v9, v3);
    return 0x6B6F6F6265;
  }

  else
  {
    if (v11 != enum case for Book.Content.audiobook(_:))
    {
      v12 = *(v4 + 8);
      v12(v9, v3);
      v12(v6, v3);
      return 0;
    }

    (*(v4 + 96))(v6, v3);
    (*(v4 + 8))(v9, v3);
    return 0x6F6F626F69647561;
  }
}

uint64_t sub_1006335EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  return _swift_task_switch(sub_100633610, 0, 0);
}

uint64_t sub_100633610()
{
  sub_10062B3D0((v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  sub_10000E3E8(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_1006336DC;
  v4 = v0[13];

  return dispatch thunk of CollectionRecommendationServiceType.recommend(for:)(v0 + 7, v4, v1, v2);
}

uint64_t sub_1006336DC()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1006339C0;
  }

  else
  {
    v2 = sub_1006337F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006337F0()
{
  v1 = *(v0 + 112);
  v12 = *(v0 + 96);
  sub_10000E3E8((v0 + 56), *(v0 + 80));
  v2 = sub_10079A554();
  sub_1000074E0((v0 + 56));
  sub_1000074E0((v0 + 16));
  sub_100796494();
  swift_allocObject();
  v3 = sub_100796484();
  v4 = swift_task_alloc();
  *(v4 + 16) = v12;
  *(v4 + 32) = v3;
  v5 = sub_100401A7C(sub_10063A428, v4, v2);

  v6 = [objc_opt_self() sharedInstance];
  sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10080B690;
  *(v7 + 56) = sub_1001F1160(&qword_100ADEC60, &unk_10081EB80);
  *(v7 + 32) = v5;
  v15._countAndFlagsBits = 0x80000001008E2480;
  v8.super.isa = v1;
  v14.value._rawValue = v7;
  v14.is_nil = 108;
  v15._object = 643;
  sub_1007A32F4(v8, v14, v15, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1006339C0()
{
  sub_1000074E0(v0 + 2);
  if (qword_100AD1990 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100AEEA88);
  swift_errorRetain();
  v2 = sub_10079ACC4();
  v3 = sub_1007A29B4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch recommendations. error: %@)", v4, 0xCu);
    sub_100007840(v5, &unk_100AD9480, &qword_1008113B0);
  }

  else
  {
  }

  v7 = v0[14];
  v8 = [objc_opt_self() sharedInstance];
  v15._countAndFlagsBits = 0x80000001008E2480;
  v9.super.isa = v7;
  v14.value._rawValue = 0;
  v14.is_nil = 108;
  v15._object = 520;
  sub_1007A32F4(v9, v14, v15, v10);

  v11 = v0[1];

  return v11();
}

void sub_100633BC4(uint64_t a1@<X0>, double (*a2)(char *, char *, uint64_t)@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v584 = a3;
  v574 = a2;
  v575 = a4;
  v534 = sub_100799C14();
  v533 = *(v534 - 8);
  __chkstk_darwin(v534);
  v532 = &v521 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v558 = sub_10079A984();
  v557 = *(v558 - 8);
  __chkstk_darwin(v558);
  v554 = &v521 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10079A734();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v583 = &v521 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v582 = sub_10079A7A4();
  v559 = *(v582 - 8);
  __chkstk_darwin(v582);
  v581 = &v521 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v567 = sub_1001F1160(&qword_100AEEB80, &qword_100837370);
  v568 = *(v567 - 8);
  __chkstk_darwin(v567);
  v537 = &v521 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v540 = &v521 - v13;
  __chkstk_darwin(v14);
  v543 = &v521 - v15;
  __chkstk_darwin(v16);
  v547 = &v521 - v17;
  __chkstk_darwin(v18);
  v549 = &v521 - v19;
  __chkstk_darwin(v20);
  v553 = &v521 - v21;
  __chkstk_darwin(v22);
  v556 = &v521 - v23;
  __chkstk_darwin(v24);
  v525 = &v521 - v25;
  __chkstk_darwin(v26);
  v562 = &v521 - v27;
  __chkstk_darwin(v28);
  v566 = &v521 - v29;
  v570 = sub_10079A0E4();
  v571 = *(v570 - 8);
  __chkstk_darwin(v570);
  v535 = &v521 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v538 = &v521 - v32;
  __chkstk_darwin(v33);
  v536 = &v521 - v34;
  __chkstk_darwin(v35);
  v541 = &v521 - v36;
  __chkstk_darwin(v37);
  v539 = &v521 - v38;
  __chkstk_darwin(v39);
  v544 = &v521 - v40;
  __chkstk_darwin(v41);
  v524 = &v521 - v42;
  __chkstk_darwin(v43);
  v529 = &v521 - v44;
  __chkstk_darwin(v45);
  v527 = &v521 - v46;
  __chkstk_darwin(v47);
  v531 = &v521 - v48;
  __chkstk_darwin(v49);
  v542 = &v521 - v50;
  __chkstk_darwin(v51);
  v545 = &v521 - v52;
  __chkstk_darwin(v53);
  v546 = &v521 - v54;
  __chkstk_darwin(v55);
  v550 = &v521 - v56;
  __chkstk_darwin(v57);
  v548 = &v521 - v58;
  __chkstk_darwin(v59);
  v551 = &v521 - v60;
  __chkstk_darwin(v61);
  v552 = &v521 - v62;
  __chkstk_darwin(v63);
  v560 = &v521 - v64;
  __chkstk_darwin(v65);
  v523 = &v521 - v66;
  __chkstk_darwin(v67);
  v526 = &v521 - v68;
  __chkstk_darwin(v69);
  v555 = &v521 - v70;
  __chkstk_darwin(v71);
  v561 = &v521 - v72;
  __chkstk_darwin(v73);
  v563 = &v521 - v74;
  __chkstk_darwin(v75);
  v564 = &v521 - v76;
  v77 = sub_100799B14();
  v78 = *(v77 - 8);
  v585 = v77;
  v586 = v78;
  __chkstk_darwin(v77);
  v528 = &v521 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v80);
  v530 = &v521 - v81;
  __chkstk_darwin(v82);
  v580 = &v521 - v83;
  __chkstk_darwin(v84);
  v565 = &v521 - v85;
  v572 = sub_10079A274();
  v573 = *(v572 - 1);
  __chkstk_darwin(v572);
  v569 = &v521 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_10079A404();
  v88 = *(v87 - 8);
  __chkstk_darwin(v87);
  v90 = &v521 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1001F1160(&qword_100AE3180, &unk_100825550);
  __chkstk_darwin(v91 - 8);
  v93 = &v521 - v92;
  v94 = sub_10079A254();
  sub_100401E98(v94, v93);

  if ((*(v8 + 48))(v93, 1, v7) == 1)
  {
    sub_100007840(v93, &qword_100AE3180, &unk_100825550);
LABEL_8:
    v121 = v575;
    *v575 = 0u;
    *(v121 + 1) = 0u;
    return;
  }

  v522 = sub_10079A724();
  v96 = v95;
  v98 = *(v8 + 8);
  v97 = v8 + 8;
  v579 = v7;
  v578 = v98;
  v98(v93, v7);
  v99 = sub_10079A254();
  sub_10079A244();
  v100 = sub_10063A448(v99, v90);
  v102 = v101;

  (*(v88 + 8))(v90, v87);
  v574 = v102;
  if (!v102)
  {

    goto LABEL_8;
  }

  v103 = a1;
  v104 = v96;
  v105 = v100;
  v106 = v573;
  v107 = v569;
  v108 = v572;
  (*(v573 + 16))(v569, v103, v572);
  v109 = (*(v106 + 88))(v107, v108);
  if (v109 == enum case for CollectionRecommendation.book(_:))
  {

    (*(v106 + 96))(v107, v108);
    v110 = v565;
    (*(v586 + 32))(v565, v107, v585);
    v111 = sub_10063A938(v584, v522, v104);

    v590 = &type metadata for String;
    v589[0] = 1802465122;
    v589[1] = 0xE400000000000000;
    sub_1000076D4(v589, &v588);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v587 = v111;
    sub_1002F4B78(&v588, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v113 = v587;
    v114 = v564;
    sub_10079A264();
    v115 = v571;
    v116 = v563;
    v117 = v570;
    (*(v571 + 16))(v563, v114, v570);
    v118 = (*(v115 + 88))(v116, v117);
    if (v118 == enum case for CollectionSource.appleMediaDiscovery(_:))
    {
      v119 = 0xD000000000000013;
      v120 = 0x80000001008BF780;
LABEL_43:
      (*(v115 + 8))(v114, v117);
      v590 = &type metadata for String;
      v589[0] = v119;
      v589[1] = v120;
      sub_1000076D4(v589, &v588);
      v206 = swift_isUniquelyReferenced_nonNull_native();
      v587 = v113;
      sub_1002F4B78(&v588, 0x656372756F73, 0xE600000000000000, v206);
      v207 = v587;
      v208 = sub_1001F1160(&qword_100AD6710, &unk_10080B890);
      v209 = v575;
      v575[3] = v208;
      *v209 = v207;
      (*(v586 + 8))(v110, v585);
      return;
    }

    if (v118 == enum case for CollectionSource.mediaAPI(_:))
    {
      v119 = 1768972653;
LABEL_18:
      v120 = 0xE400000000000000;
      goto LABEL_43;
    }

    if (v118 == enum case for CollectionSource.bookHistory(_:))
    {
      v119 = 7365743;
      v120 = 0xE300000000000000;
      goto LABEL_43;
    }

    if (v118 == enum case for CollectionSource.bookHistoryThenAppleMediaDiscovery(_:))
    {
      v120 = 0x80000001008BF7B0;
      v119 = 0xD000000000000022;
      goto LABEL_43;
    }

    if (v118 == enum case for CollectionSource.tabi(_:))
    {
      v119 = 1768055156;
      goto LABEL_18;
    }

    goto LABEL_236;
  }

  if (v109 == enum case for CollectionRecommendation.books(_:))
  {
    v122 = v97;

    (*(v106 + 96))(v107, v108);
    v123 = v568;
    v124 = v566;
    v125 = v567;
    (*(v568 + 32))(v566, v107, v567);
    v126 = v561;
    sub_10079A264();
    sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
    v127 = swift_allocObject();
    *(v127 + 16) = xmmword_100815060;
    *(v127 + 32) = 1701869940;
    v569 = (v127 + 32);
    *(v127 + 40) = 0xE400000000000000;
    *(v127 + 48) = 0x736B6F6F62;
    *(v127 + 56) = 0xE500000000000000;
    *(v127 + 72) = &type metadata for String;
    *(v127 + 80) = 1684957547;
    *(v127 + 88) = 0xE400000000000000;
    *(v127 + 96) = v105;
    *(v127 + 104) = v574;
    *(v127 + 120) = &type metadata for String;
    *(v127 + 128) = 0x736B6F6F62;
    *(v127 + 136) = 0xE500000000000000;
    (*(v123 + 16))(v562, v124, v125);
    sub_100005920(&qword_100AEEB90, &qword_100AEEB80, &qword_100837370, &protocol conformance descriptor for NonEmpty<A>);
    v128 = sub_1007A2504();
    v129 = *(v128 + 16);
    if (v129)
    {
      v565 = v127;
      v577 = v122;
      v589[0] = _swiftEmptyArrayStorage;
      sub_1003BD7D8(0, v129, 0);
      v130 = v589[0];
      v574 = *(v586 + 16);
      v131 = (*(v586 + 80) + 32) & ~*(v586 + 80);
      v564 = v128;
      v132 = (v128 + v131);
      v573 = *(v586 + 72);
      v572 = (v559 + 8);
      v586 += 16;
      v133 = (v586 - 8);
      do
      {
        v134 = v580;
        v135 = v585;
        v574(v580, v132, v585);
        v136 = v581;
        sub_100799AE4();
        v137 = v583;
        sub_10079A784();
        (*v572)(v136, v582);
        v138 = sub_10079A724();
        v140 = v139;
        v578(v137, v579);
        v141 = sub_10063A938(v584, v138, v140);

        (*v133)(v134, v135);
        v589[0] = v130;
        v143 = v130[2];
        v142 = v130[3];
        if (v143 >= v142 >> 1)
        {
          sub_1003BD7D8((v142 > 1), v143 + 1, 1);
          v130 = v589[0];
        }

        v130[2] = v143 + 1;
        v130[v143 + 4] = v141;
        v132 += v573;
        --v129;
      }

      while (v129);

      v126 = v561;
      v127 = v565;
    }

    else
    {

      v130 = _swiftEmptyArrayStorage;
    }

    v199 = sub_1001F1160(&qword_100ADE598, &qword_100822EA0);
    *(v127 + 144) = v130;
    *(v127 + 168) = v199;
    *(v127 + 176) = 0x656372756F73;
    *(v127 + 184) = 0xE600000000000000;
    v200 = v571;
    v201 = v555;
    v202 = v570;
    (*(v571 + 16))(v555, v126, v570);
    v203 = (*(v200 + 88))(v201, v202);
    if (v203 == enum case for CollectionSource.appleMediaDiscovery(_:))
    {
      v204 = 0xD000000000000013;
      v205 = 0x80000001008BF780;
LABEL_70:
      *(v127 + 216) = &type metadata for String;
      *(v127 + 192) = v204;
      *(v127 + 200) = v205;
      v277 = sub_100019158(v127);
      swift_setDeallocating();
      sub_1001F1160(&unk_100ADD560, &unk_10080CDC0);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      (*(v200 + 8))(v126, v202);
      v278 = sub_1001F1160(&qword_100AD6710, &unk_10080B890);
      v279 = v575;
      v575[3] = v278;
      *v279 = v277;
      (*(v568 + 8))(v566, v567);
      return;
    }

    if (v203 == enum case for CollectionSource.mediaAPI(_:))
    {
      v204 = 1768972653;
LABEL_40:
      v205 = 0xE400000000000000;
      goto LABEL_70;
    }

    if (v203 == enum case for CollectionSource.bookHistory(_:))
    {
      v204 = 7365743;
      v205 = 0xE300000000000000;
      goto LABEL_70;
    }

    if (v203 == enum case for CollectionSource.bookHistoryThenAppleMediaDiscovery(_:))
    {
      v205 = 0x80000001008BF7B0;
      v204 = 0xD000000000000022;
      goto LABEL_70;
    }

    if (v203 == enum case for CollectionSource.tabi(_:))
    {
      v204 = 1768055156;
      goto LABEL_40;
    }

LABEL_236:
    v520 = 0;
    i = 790;
    goto LABEL_237;
  }

  v577 = v97;
  if (v109 != enum case for CollectionRecommendation.booksBasedOnSeed(_:))
  {
    if (v109 == enum case for CollectionRecommendation.booksByAuthor(_:))
    {

      (*(v106 + 96))(v107, v108);
      v170 = sub_1001F1160(&qword_100AEEB98, &qword_100837388);
      v171 = *&v107[*(v170 + 48)];
      v172 = *(v170 + 64);
      v173 = v105;
      v174 = v568;
      v175 = v107;
      v176 = v553;
      v177 = v567;
      (*(v568 + 32))(v553, v175, v567);
      v178 = v571;
      v179 = &v175[v172];
      v180 = v551;
      v181 = v570;
      (*(v571 + 32))(v551, v179, v570);
      sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
      v182 = swift_allocObject();
      *(v182 + 16) = xmmword_100815060;
      *(v182 + 32) = 1701869940;
      v566 = v182 + 32;
      *(v182 + 40) = 0xE400000000000000;
      *(v182 + 48) = 0x79622D736B6F6F62;
      *(v182 + 56) = 0xEF726F687475612DLL;
      *(v182 + 72) = &type metadata for String;
      *(v182 + 80) = 1684957547;
      *(v182 + 88) = 0xE400000000000000;
      *(v182 + 96) = v173;
      *(v182 + 104) = v574;
      *(v182 + 120) = &type metadata for String;
      *(v182 + 128) = 0x736B6F6F62;
      v569 = v182;
      *(v182 + 136) = 0xE500000000000000;
      (*(v174 + 16))(v562, v176, v177);
      sub_100005920(&qword_100AEEB90, &qword_100AEEB80, &qword_100837370, &protocol conformance descriptor for NonEmpty<A>);
      v183 = sub_1007A2504();
      v184 = *(v183 + 16);
      if (v184)
      {
        v565 = v171;
        v589[0] = _swiftEmptyArrayStorage;
        sub_1003BD7D8(0, v184, 0);
        v185 = v589[0];
        v574 = *(v586 + 16);
        v186 = (*(v586 + 80) + 32) & ~*(v586 + 80);
        v564 = v183;
        v187 = (v183 + v186);
        v573 = *(v586 + 72);
        v572 = (v559 + 8);
        v586 += 16;
        v188 = (v586 - 8);
        do
        {
          v189 = v580;
          v190 = v585;
          v574(v580, v187, v585);
          v191 = v581;
          sub_100799AE4();
          v192 = v583;
          sub_10079A784();
          (*v572)(v191, v582);
          v193 = sub_10079A724();
          v195 = v194;
          v578(v192, v579);
          v196 = sub_10063A938(v584, v193, v195);

          (*v188)(v189, v190);
          v589[0] = v185;
          v198 = v185[2];
          v197 = v185[3];
          if (v198 >= v197 >> 1)
          {
            sub_1003BD7D8((v197 > 1), v198 + 1, 1);
            v185 = v589[0];
          }

          v185[2] = v198 + 1;
          v185[v198 + 4] = v196;
          v187 += v573;
          --v184;
        }

        while (v184);

        v178 = v571;
        v181 = v570;
        v180 = v551;
        v171 = v565;
      }

      else
      {

        v185 = _swiftEmptyArrayStorage;
      }

      v280 = sub_1001F1160(&qword_100ADE598, &qword_100822EA0);
      v281 = v569;
      *(v569 + 18) = v185;
      *(v281 + 21) = v280;
      *(v281 + 22) = 0x656372756F73;
      *(v281 + 23) = 0xE600000000000000;
      v282 = v548;
      (*(v178 + 16))(v548, v180, v181);
      v283 = (*(v178 + 88))(v282, v181);
      if (v283 == enum case for CollectionSource.appleMediaDiscovery(_:))
      {
        v284 = 0xD000000000000013;
        v285 = 0x80000001008BF780;
      }

      else
      {
        if (v283 == enum case for CollectionSource.mediaAPI(_:))
        {
          v284 = 1768972653;
        }

        else
        {
          if (v283 == enum case for CollectionSource.bookHistory(_:))
          {
            v284 = 7365743;
            v285 = 0xE300000000000000;
            goto LABEL_117;
          }

          if (v283 == enum case for CollectionSource.bookHistoryThenAppleMediaDiscovery(_:))
          {
            v285 = 0x80000001008BF7B0;
            v284 = 0xD000000000000022;
            goto LABEL_117;
          }

          if (v283 != enum case for CollectionSource.tabi(_:))
          {
            goto LABEL_236;
          }

          v284 = 1768055156;
        }

        v285 = 0xE400000000000000;
      }

LABEL_117:
      *(v281 + 27) = &type metadata for String;
      *(v281 + 24) = v284;
      *(v281 + 25) = v285;
      v369 = sub_100019158(v281);
      swift_setDeallocating();
      sub_1001F1160(&unk_100ADD560, &unk_10080CDC0);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v589[0] = v171;
      v370 = sub_1007A3A74();
      v590 = &type metadata for String;
      v589[0] = v370;
      v589[1] = v371;
      sub_1000076D4(v589, &v588);
      v372 = swift_isUniquelyReferenced_nonNull_native();
      v587 = v369;
      sub_1002F4B78(&v588, 25705, 0xE200000000000000, v372);
      v373 = v587;
      v374 = sub_1001F1160(&qword_100AD6710, &unk_10080B890);
      v375 = v575;
      v575[3] = v374;
      *v375 = v373;
      (*(v178 + 8))(v180, v181);
      (*(v568 + 8))(v553, v567);
      return;
    }

    if (v109 == enum case for CollectionRecommendation.booksBySuggestedAuthors(_:))
    {
      v210 = 0xD000000000000013;

      (*(v106 + 96))(v107, v108);
      v211 = *(sub_1001F1160(&qword_100AEEB88, &unk_100837378) + 48);
      v212 = v105;
      v213 = v568;
      v214 = v549;
      v215 = v107;
      v216 = v107;
      v217 = v567;
      (*(v568 + 32))(v549, v215, v567);
      v218 = v571;
      v219 = &v216[v211];
      v220 = v570;
      (*(v571 + 32))(v550, v219, v570);
      sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
      v221 = swift_allocObject();
      *(v221 + 16) = xmmword_100815060;
      *(v221 + 32) = 1701869940;
      v566 = v221 + 32;
      *(v221 + 40) = 0xE400000000000000;
      *(v221 + 48) = 0xD00000000000001ALL;
      *(v221 + 56) = 0x80000001008BFCE0;
      *(v221 + 72) = &type metadata for String;
      *(v221 + 80) = 1684957547;
      *(v221 + 88) = 0xE400000000000000;
      *(v221 + 96) = v212;
      *(v221 + 104) = v574;
      *(v221 + 120) = &type metadata for String;
      *(v221 + 128) = 0x736B6F6F62;
      v569 = v221;
      *(v221 + 136) = 0xE500000000000000;
      (*(v213 + 16))(v562, v214, v217);
      sub_100005920(&qword_100AEEB90, &qword_100AEEB80, &qword_100837370, &protocol conformance descriptor for NonEmpty<A>);
      v222 = sub_1007A2504();
      v223 = *(v222 + 16);
      if (v223)
      {
        v589[0] = _swiftEmptyArrayStorage;
        sub_1003BD7D8(0, v223, 0);
        v224 = v589[0];
        v574 = *(v586 + 16);
        v225 = (*(v586 + 80) + 32) & ~*(v586 + 80);
        v565 = v222;
        v226 = (v222 + v225);
        v573 = *(v586 + 72);
        v572 = (v559 + 8);
        v586 += 16;
        v227 = (v586 - 8);
        do
        {
          v228 = v580;
          v229 = v585;
          v574(v580, v226, v585);
          v230 = v581;
          sub_100799AE4();
          v231 = v583;
          sub_10079A784();
          (*v572)(v230, v582);
          v232 = sub_10079A724();
          v234 = v233;
          v578(v231, v579);
          v235 = sub_10063A938(v584, v232, v234);

          (*v227)(v228, v229);
          v589[0] = v224;
          v237 = v224[2];
          v236 = v224[3];
          if (v237 >= v236 >> 1)
          {
            sub_1003BD7D8((v236 > 1), v237 + 1, 1);
            v224 = v589[0];
          }

          v224[2] = v237 + 1;
          v224[v237 + 4] = v235;
          v226 += v573;
          --v223;
        }

        while (v223);

        v218 = v571;
        v220 = v570;
        v210 = 0xD000000000000013;
      }

      else
      {

        v224 = _swiftEmptyArrayStorage;
      }

      v335 = sub_1001F1160(&qword_100ADE598, &qword_100822EA0);
      v336 = v569;
      *(v569 + 18) = v224;
      v337 = v336;
      *(v336 + 21) = v335;
      *(v336 + 22) = 0x656372756F73;
      *(v336 + 23) = 0xE600000000000000;
      v338 = v546;
      (*(v218 + 16))(v546, v550, v220);
      v339 = (*(v218 + 88))(v338, v220);
      if (v339 == enum case for CollectionSource.appleMediaDiscovery(_:))
      {
        v340 = 0x80000001008BF780;
LABEL_137:
        *(v337 + 27) = &type metadata for String;
        *(v337 + 24) = v210;
        *(v337 + 25) = v340;
        v410 = sub_100019158(v337);
        swift_setDeallocating();
        sub_1001F1160(&unk_100ADD560, &unk_10080CDC0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v411 = sub_1001F1160(&qword_100AD6710, &unk_10080B890);
        v412 = v575;
        v575[3] = v411;
        *v412 = v410;
        (*(v218 + 8))(v550, v220);
        (*(v568 + 8))(v549, v567);
        return;
      }

      if (v339 == enum case for CollectionSource.mediaAPI(_:))
      {
        v210 = 1768972653;
LABEL_105:
        v340 = 0xE400000000000000;
        goto LABEL_137;
      }

      if (v339 == enum case for CollectionSource.bookHistory(_:))
      {
        v210 = 7365743;
        v340 = 0xE300000000000000;
        goto LABEL_137;
      }

      if (v339 == enum case for CollectionSource.bookHistoryThenAppleMediaDiscovery(_:))
      {
        v340 = 0x80000001008BF7B0;
        v210 = 0xD000000000000022;
        goto LABEL_137;
      }

      if (v339 == enum case for CollectionSource.tabi(_:))
      {
        v210 = 1768055156;
        goto LABEL_105;
      }

      goto LABEL_239;
    }

    if (v109 == enum case for CollectionRecommendation.booksInGenre(_:))
    {

      (*(v106 + 96))(v107, v108);
      v248 = sub_1001F1160(&qword_100AEEB98, &qword_100837388);
      v249 = *&v107[*(v248 + 48)];
      v250 = *(v248 + 64);
      v251 = v105;
      v252 = v568;
      v253 = v107;
      v254 = v547;
      v255 = v567;
      (*(v568 + 32))(v547, v253, v567);
      v256 = v571;
      v257 = &v253[v250];
      v258 = v545;
      v259 = v570;
      (*(v571 + 32))(v545, v257, v570);
      sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
      v260 = swift_allocObject();
      *(v260 + 16) = xmmword_100815060;
      *(v260 + 32) = 1701869940;
      v566 = v260 + 32;
      *(v260 + 40) = 0xE400000000000000;
      strcpy((v260 + 48), "books-in-genre");
      *(v260 + 63) = -18;
      *(v260 + 72) = &type metadata for String;
      *(v260 + 80) = 1684957547;
      *(v260 + 88) = 0xE400000000000000;
      *(v260 + 96) = v251;
      *(v260 + 104) = v574;
      *(v260 + 120) = &type metadata for String;
      *(v260 + 128) = 0x736B6F6F62;
      v569 = v260;
      *(v260 + 136) = 0xE500000000000000;
      (*(v252 + 16))(v562, v254, v255);
      sub_100005920(&qword_100AEEB90, &qword_100AEEB80, &qword_100837370, &protocol conformance descriptor for NonEmpty<A>);
      v261 = sub_1007A2504();
      v262 = *(v261 + 16);
      if (v262)
      {
        v565 = v249;
        v589[0] = _swiftEmptyArrayStorage;
        sub_1003BD7D8(0, v262, 0);
        v263 = v589[0];
        v574 = *(v586 + 16);
        v264 = (*(v586 + 80) + 32) & ~*(v586 + 80);
        v564 = v261;
        v265 = (v261 + v264);
        v573 = *(v586 + 72);
        v572 = (v559 + 8);
        v586 += 16;
        v266 = (v586 - 8);
        do
        {
          v267 = v580;
          v268 = v585;
          v574(v580, v265, v585);
          v269 = v581;
          sub_100799AE4();
          v270 = v583;
          sub_10079A784();
          (*v572)(v269, v582);
          v271 = sub_10079A724();
          v273 = v272;
          v578(v270, v579);
          v274 = sub_10063A938(v584, v271, v273);

          (*v266)(v267, v268);
          v589[0] = v263;
          v276 = v263[2];
          v275 = v263[3];
          if (v276 >= v275 >> 1)
          {
            sub_1003BD7D8((v275 > 1), v276 + 1, 1);
            v263 = v589[0];
          }

          v263[2] = v276 + 1;
          v263[v276 + 4] = v274;
          v265 += v573;
          --v262;
        }

        while (v262);

        v256 = v571;
        v259 = v570;
        v258 = v545;
        v249 = v565;
      }

      else
      {

        v263 = _swiftEmptyArrayStorage;
      }

      v376 = sub_1001F1160(&qword_100ADE598, &qword_100822EA0);
      v377 = v569;
      *(v569 + 18) = v263;
      *(v377 + 21) = v376;
      *(v377 + 22) = 0x656372756F73;
      *(v377 + 23) = 0xE600000000000000;
      v378 = v542;
      (*(v256 + 16))(v542, v258, v259);
      v379 = (*(v256 + 88))(v378, v259);
      if (v379 == enum case for CollectionSource.appleMediaDiscovery(_:))
      {
        v380 = 0xD000000000000013;
        v381 = 0x80000001008BF780;
      }

      else
      {
        if (v379 == enum case for CollectionSource.mediaAPI(_:))
        {
          v380 = 1768972653;
        }

        else
        {
          if (v379 == enum case for CollectionSource.bookHistory(_:))
          {
            v380 = 7365743;
            v381 = 0xE300000000000000;
            goto LABEL_152;
          }

          if (v379 == enum case for CollectionSource.bookHistoryThenAppleMediaDiscovery(_:))
          {
            v381 = 0x80000001008BF7B0;
            v380 = 0xD000000000000022;
            goto LABEL_152;
          }

          if (v379 != enum case for CollectionSource.tabi(_:))
          {
            goto LABEL_236;
          }

          v380 = 1768055156;
        }

        v381 = 0xE400000000000000;
      }

LABEL_152:
      *(v377 + 27) = &type metadata for String;
      *(v377 + 24) = v380;
      *(v377 + 25) = v381;
      v426 = sub_100019158(v377);
      swift_setDeallocating();
      sub_1001F1160(&unk_100ADD560, &unk_10080CDC0);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v589[0] = v249;
      v427 = sub_1007A3A74();
      v590 = &type metadata for String;
      v589[0] = v427;
      v589[1] = v428;
      sub_1000076D4(v589, &v588);
      v429 = swift_isUniquelyReferenced_nonNull_native();
      v587 = v426;
      sub_1002F4B78(&v588, 25705, 0xE200000000000000, v429);
      v430 = v587;
      v431 = sub_1001F1160(&qword_100AD6710, &unk_10080B890);
      v432 = v575;
      v575[3] = v431;
      *v432 = v430;
      (*(v256 + 8))(v258, v259);
      (*(v568 + 8))(v547, v567);
      return;
    }

    if (v109 == enum case for CollectionRecommendation.booksYouMightLike(_:))
    {
      v286 = 0xD000000000000013;

      (*(v106 + 96))(v107, v108);
      v287 = *(sub_1001F1160(&qword_100AEEB88, &unk_100837378) + 48);
      v288 = v105;
      v289 = v568;
      v290 = v543;
      v291 = v107;
      v292 = v107;
      v293 = v567;
      (*(v568 + 32))(v543, v291, v567);
      v294 = v571;
      v295 = &v292[v287];
      v296 = v570;
      (*(v571 + 32))(v544, v295, v570);
      sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
      v297 = swift_allocObject();
      *(v297 + 16) = xmmword_100815060;
      *(v297 + 32) = 1701869940;
      v566 = v297 + 32;
      *(v297 + 40) = 0xE400000000000000;
      *(v297 + 48) = 0xD000000000000014;
      *(v297 + 56) = 0x80000001008BFD00;
      *(v297 + 72) = &type metadata for String;
      *(v297 + 80) = 1684957547;
      *(v297 + 88) = 0xE400000000000000;
      *(v297 + 96) = v288;
      *(v297 + 104) = v574;
      *(v297 + 120) = &type metadata for String;
      *(v297 + 128) = 0x736B6F6F62;
      v569 = v297;
      *(v297 + 136) = 0xE500000000000000;
      (*(v289 + 16))(v562, v290, v293);
      sub_100005920(&qword_100AEEB90, &qword_100AEEB80, &qword_100837370, &protocol conformance descriptor for NonEmpty<A>);
      v298 = sub_1007A2504();
      v299 = *(v298 + 16);
      if (v299)
      {
        v589[0] = _swiftEmptyArrayStorage;
        sub_1003BD7D8(0, v299, 0);
        v300 = v589[0];
        v574 = *(v586 + 16);
        v301 = (*(v586 + 80) + 32) & ~*(v586 + 80);
        v565 = v298;
        v302 = (v298 + v301);
        v573 = *(v586 + 72);
        v572 = (v559 + 8);
        v586 += 16;
        v303 = (v586 - 8);
        do
        {
          v304 = v580;
          v305 = v585;
          v574(v580, v302, v585);
          v306 = v581;
          sub_100799AE4();
          v307 = v583;
          sub_10079A784();
          (*v572)(v306, v582);
          v308 = sub_10079A724();
          v310 = v309;
          v578(v307, v579);
          v311 = sub_10063A938(v584, v308, v310);

          (*v303)(v304, v305);
          v589[0] = v300;
          v313 = v300[2];
          v312 = v300[3];
          if (v313 >= v312 >> 1)
          {
            sub_1003BD7D8((v312 > 1), v313 + 1, 1);
            v300 = v589[0];
          }

          v300[2] = v313 + 1;
          v300[v313 + 4] = v311;
          v302 += v573;
          --v299;
        }

        while (v299);

        v294 = v571;
        v296 = v570;
        v286 = 0xD000000000000013;
      }

      else
      {

        v300 = _swiftEmptyArrayStorage;
      }

      v413 = sub_1001F1160(&qword_100ADE598, &qword_100822EA0);
      v414 = v569;
      *(v569 + 18) = v300;
      v415 = v414;
      *(v414 + 21) = v413;
      *(v414 + 22) = 0x656372756F73;
      *(v414 + 23) = 0xE600000000000000;
      v416 = v539;
      (*(v294 + 16))(v539, v544, v296);
      v417 = (*(v294 + 88))(v416, v296);
      if (v417 == enum case for CollectionSource.appleMediaDiscovery(_:))
      {
        v418 = 0x80000001008BF780;
      }

      else
      {
        if (v417 == enum case for CollectionSource.mediaAPI(_:))
        {
          v286 = 1768972653;
        }

        else
        {
          if (v417 == enum case for CollectionSource.bookHistory(_:))
          {
            v286 = 7365743;
            v418 = 0xE300000000000000;
            goto LABEL_168;
          }

          if (v417 == enum case for CollectionSource.bookHistoryThenAppleMediaDiscovery(_:))
          {
            v418 = 0x80000001008BF7B0;
            v286 = 0xD000000000000022;
            goto LABEL_168;
          }

          if (v417 != enum case for CollectionSource.tabi(_:))
          {
LABEL_239:
            v520 = 0;
            i = 790;
            goto LABEL_237;
          }

          v286 = 1768055156;
        }

        v418 = 0xE400000000000000;
      }

LABEL_168:
      *(v415 + 27) = &type metadata for String;
      *(v415 + 24) = v286;
      *(v415 + 25) = v418;
      v450 = sub_100019158(v415);
      swift_setDeallocating();
      sub_1001F1160(&unk_100ADD560, &unk_10080CDC0);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v451 = sub_1001F1160(&qword_100AD6710, &unk_10080B890);
      v452 = v575;
      v575[3] = v451;
      *v452 = v450;
      (*(v294 + 8))(v544, v296);
      (*(v568 + 8))(v543, v567);
      return;
    }

    if (v109 == enum case for CollectionRecommendation.mangaYouMightLike(_:))
    {
      v341 = 0xD000000000000013;

      (*(v106 + 96))(v107, v108);
      v342 = *(sub_1001F1160(&qword_100AEEB88, &unk_100837378) + 48);
      v343 = v105;
      v344 = v568;
      v345 = v540;
      v346 = v107;
      v347 = v107;
      v348 = v567;
      (*(v568 + 32))(v540, v346, v567);
      v349 = v571;
      v350 = &v347[v342];
      v351 = v570;
      (*(v571 + 32))(v541, v350, v570);
      sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
      v352 = swift_allocObject();
      *(v352 + 16) = xmmword_100815060;
      *(v352 + 32) = 1701869940;
      v566 = v352 + 32;
      *(v352 + 40) = 0xE400000000000000;
      *(v352 + 48) = 0xD000000000000014;
      *(v352 + 56) = 0x80000001008BFD20;
      *(v352 + 72) = &type metadata for String;
      *(v352 + 80) = 1684957547;
      *(v352 + 88) = 0xE400000000000000;
      *(v352 + 96) = v343;
      *(v352 + 104) = v574;
      *(v352 + 120) = &type metadata for String;
      *(v352 + 128) = 0x736B6F6F62;
      v569 = v352;
      *(v352 + 136) = 0xE500000000000000;
      (*(v344 + 16))(v562, v345, v348);
      sub_100005920(&qword_100AEEB90, &qword_100AEEB80, &qword_100837370, &protocol conformance descriptor for NonEmpty<A>);
      v353 = sub_1007A2504();
      v354 = *(v353 + 16);
      if (v354)
      {
        v589[0] = _swiftEmptyArrayStorage;
        sub_1003BD7D8(0, v354, 0);
        v355 = v589[0];
        v574 = *(v586 + 16);
        v356 = (*(v586 + 80) + 32) & ~*(v586 + 80);
        v565 = v353;
        v357 = (v353 + v356);
        v573 = *(v586 + 72);
        v572 = (v559 + 8);
        v586 += 16;
        v358 = (v586 - 8);
        do
        {
          v359 = v580;
          v360 = v585;
          v574(v580, v357, v585);
          v361 = v581;
          sub_100799AE4();
          v362 = v583;
          sub_10079A784();
          (*v572)(v361, v582);
          v363 = sub_10079A724();
          v365 = v364;
          v578(v362, v579);
          v366 = sub_10063A938(v584, v363, v365);

          (*v358)(v359, v360);
          v589[0] = v355;
          v368 = v355[2];
          v367 = v355[3];
          if (v368 >= v367 >> 1)
          {
            sub_1003BD7D8((v367 > 1), v368 + 1, 1);
            v355 = v589[0];
          }

          v355[2] = v368 + 1;
          v355[v368 + 4] = v366;
          v357 += v573;
          --v354;
        }

        while (v354);

        v349 = v571;
        v351 = v570;
        v341 = 0xD000000000000013;
      }

      else
      {

        v355 = _swiftEmptyArrayStorage;
      }

      v433 = sub_1001F1160(&qword_100ADE598, &qword_100822EA0);
      v434 = v569;
      *(v569 + 18) = v355;
      v435 = v434;
      *(v434 + 21) = v433;
      *(v434 + 22) = 0x656372756F73;
      *(v434 + 23) = 0xE600000000000000;
      v436 = v536;
      (*(v349 + 16))(v536, v541, v351);
      v437 = (*(v349 + 88))(v436, v351);
      if (v437 == enum case for CollectionSource.appleMediaDiscovery(_:))
      {
        v438 = 0x80000001008BF780;
LABEL_183:
        *(v435 + 27) = &type metadata for String;
        *(v435 + 24) = v341;
        *(v435 + 25) = v438;
        v470 = sub_100019158(v435);
        swift_setDeallocating();
        sub_1001F1160(&unk_100ADD560, &unk_10080CDC0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v471 = sub_1001F1160(&qword_100AD6710, &unk_10080B890);
        v472 = v575;
        v575[3] = v471;
        *v472 = v470;
        (*(v349 + 8))(v541, v351);
        (*(v568 + 8))(v540, v567);
        return;
      }

      if (v437 == enum case for CollectionSource.mediaAPI(_:))
      {
        v341 = 1768972653;
LABEL_160:
        v438 = 0xE400000000000000;
        goto LABEL_183;
      }

      if (v437 == enum case for CollectionSource.bookHistory(_:))
      {
        v341 = 7365743;
        v438 = 0xE300000000000000;
        goto LABEL_183;
      }

      if (v437 == enum case for CollectionSource.bookHistoryThenAppleMediaDiscovery(_:))
      {
        v438 = 0x80000001008BF7B0;
        v341 = 0xD000000000000022;
        goto LABEL_183;
      }

      if (v437 == enum case for CollectionSource.tabi(_:))
      {
        v341 = 1768055156;
        goto LABEL_160;
      }

LABEL_240:
      v520 = 0;
      for (i = 790; ; i = 790)
      {
LABEL_237:
        sub_1007A38A4();
        __break(1u);
LABEL_238:
        v520 = 0;
      }
    }

    if (v109 == enum case for CollectionRecommendation.moreFromYourAuthors(_:))
    {
      v382 = 0xD000000000000013;

      (*(v106 + 96))(v107, v108);
      v383 = *(sub_1001F1160(&qword_100AEEB88, &unk_100837378) + 48);
      v384 = v105;
      v385 = v568;
      v386 = v537;
      v387 = v107;
      v388 = v107;
      v389 = v567;
      (*(v568 + 32))(v537, v387, v567);
      v390 = v571;
      v391 = &v388[v383];
      v392 = v570;
      (*(v571 + 32))(v538, v391, v570);
      sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
      v393 = swift_allocObject();
      *(v393 + 16) = xmmword_100815060;
      *(v393 + 32) = 1701869940;
      v566 = v393 + 32;
      *(v393 + 40) = 0xE400000000000000;
      *(v393 + 48) = 0xD000000000000016;
      *(v393 + 56) = 0x80000001008BFD40;
      *(v393 + 72) = &type metadata for String;
      *(v393 + 80) = 1684957547;
      *(v393 + 88) = 0xE400000000000000;
      *(v393 + 96) = v384;
      *(v393 + 104) = v574;
      *(v393 + 120) = &type metadata for String;
      *(v393 + 128) = 0x736B6F6F62;
      v569 = v393;
      *(v393 + 136) = 0xE500000000000000;
      (*(v385 + 16))(v562, v386, v389);
      sub_100005920(&qword_100AEEB90, &qword_100AEEB80, &qword_100837370, &protocol conformance descriptor for NonEmpty<A>);
      v394 = sub_1007A2504();
      v395 = *(v394 + 16);
      if (v395)
      {
        v589[0] = _swiftEmptyArrayStorage;
        sub_1003BD7D8(0, v395, 0);
        v396 = v589[0];
        v574 = *(v586 + 16);
        v397 = (*(v586 + 80) + 32) & ~*(v586 + 80);
        v565 = v394;
        v398 = (v394 + v397);
        v573 = *(v586 + 72);
        v572 = (v559 + 8);
        v586 += 16;
        v399 = (v586 - 8);
        do
        {
          v400 = v580;
          v401 = v585;
          v574(v580, v398, v585);
          v402 = v581;
          sub_100799AE4();
          v403 = v583;
          sub_10079A784();
          (*v572)(v402, v582);
          v404 = sub_10079A724();
          v406 = v405;
          v578(v403, v579);
          v407 = sub_10063A938(v584, v404, v406);

          (*v399)(v400, v401);
          v589[0] = v396;
          v409 = v396[2];
          v408 = v396[3];
          if (v409 >= v408 >> 1)
          {
            sub_1003BD7D8((v408 > 1), v409 + 1, 1);
            v396 = v589[0];
          }

          v396[2] = v409 + 1;
          v396[v409 + 4] = v407;
          v398 += v573;
          --v395;
        }

        while (v395);

        v390 = v571;
        v392 = v570;
        v382 = 0xD000000000000013;
      }

      else
      {

        v396 = _swiftEmptyArrayStorage;
      }

      v453 = sub_1001F1160(&qword_100ADE598, &qword_100822EA0);
      v454 = v569;
      *(v569 + 18) = v396;
      v455 = v454;
      *(v454 + 21) = v453;
      *(v454 + 22) = 0x656372756F73;
      *(v454 + 23) = 0xE600000000000000;
      v456 = v535;
      (*(v390 + 16))(v535, v538, v392);
      v457 = (*(v390 + 88))(v456, v392);
      if (v457 == enum case for CollectionSource.appleMediaDiscovery(_:))
      {
        v458 = 0x80000001008BF780;
      }

      else if (v457 == enum case for CollectionSource.mediaAPI(_:))
      {
        v382 = 1768972653;
        v458 = 0xE400000000000000;
      }

      else if (v457 == enum case for CollectionSource.bookHistory(_:))
      {
        v382 = 7365743;
        v458 = 0xE300000000000000;
      }

      else
      {
        if (v457 == enum case for CollectionSource.bookHistoryThenAppleMediaDiscovery(_:))
        {
          v458 = 0x80000001008BF7B0;
          v382 = 0xD000000000000022;
        }

        else
        {
          if (v457 != enum case for CollectionSource.tabi(_:))
          {
            goto LABEL_240;
          }

          v382 = 1768055156;
          v458 = 0xE400000000000000;
        }

        v390 = v571;
        v392 = v570;
        v455 = v569;
      }

      *(v455 + 27) = &type metadata for String;
      *(v455 + 24) = v382;
      *(v455 + 25) = v458;
      v496 = sub_100019158(v455);
      swift_setDeallocating();
      sub_1001F1160(&unk_100ADD560, &unk_10080CDC0);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v497 = sub_1001F1160(&qword_100AD6710, &unk_10080B890);
      v498 = v575;
      v575[3] = v497;
      *v498 = v496;
      (*(v390 + 8))(v538, v392);
      (*(v568 + 8))(v537, v567);
      return;
    }

    if (v109 == enum case for CollectionRecommendation.series(_:))
    {

      (*(v106 + 96))(v107, v108);
      v419 = v533;
      v420 = v107;
      v421 = v532;
      v422 = v534;
      (*(v533 + 32))(v532, v420, v534);
      v423 = sub_10063B1A8(v584);
      v424 = sub_1001F1160(&qword_100AD6710, &unk_10080B890);
      v425 = v575;
      v575[3] = v424;
      *v425 = v423;
      (*(v419 + 8))(v421, v422);
      return;
    }

    if (v109 == enum case for CollectionRecommendation.nextInSeries(_:))
    {

      (*(v106 + 96))(v107, v108);
      v439 = v530;
      (*(v586 + 32))(v530, v107, v585);
      v440 = sub_10063A938(v584, v522, v104);

      v590 = &type metadata for String;
      strcpy(v589, "next-in-series");
      HIBYTE(v589[1]) = -18;
      sub_1000076D4(v589, &v588);
      v441 = swift_isUniquelyReferenced_nonNull_native();
      v587 = v440;
      sub_1002F4B78(&v588, 1701869940, 0xE400000000000000, v441);
      v442 = v587;
      v443 = v531;
      sub_10079A264();
      v444 = v571;
      v445 = v527;
      v446 = v570;
      (*(v571 + 16))(v527, v443, v570);
      v447 = (*(v444 + 88))(v445, v446);
      if (v447 == enum case for CollectionSource.appleMediaDiscovery(_:))
      {
        v448 = 0xD000000000000013;
        v449 = 0x80000001008BF780;
LABEL_215:
        (*(v444 + 8))(v443, v446);
        v590 = &type metadata for String;
        v589[0] = v448;
        v589[1] = v449;
        sub_1000076D4(v589, &v588);
        v499 = swift_isUniquelyReferenced_nonNull_native();
        v587 = v442;
        sub_1002F4B78(&v588, 0x656372756F73, 0xE600000000000000, v499);
        v500 = v587;
        v501 = sub_1001F1160(&qword_100AD6710, &unk_10080B890);
        v502 = v575;
        v575[3] = v501;
        *v502 = v500;
        (*(v586 + 8))(v439, v585);
        return;
      }

      if (v447 == enum case for CollectionSource.mediaAPI(_:))
      {
        v448 = 1768972653;
      }

      else
      {
        if (v447 == enum case for CollectionSource.bookHistory(_:))
        {
          v448 = 7365743;
          v449 = 0xE300000000000000;
          goto LABEL_214;
        }

        if (v447 == enum case for CollectionSource.bookHistoryThenAppleMediaDiscovery(_:))
        {
          v449 = 0x80000001008BF7B0;
          v448 = 0xD000000000000022;
          goto LABEL_214;
        }

        if (v447 != enum case for CollectionSource.tabi(_:))
        {
          goto LABEL_236;
        }

        v448 = 1768055156;
      }

      v449 = 0xE400000000000000;
LABEL_214:
      v444 = v571;
      v446 = v570;
      v443 = v531;
      v439 = v530;
      goto LABEL_215;
    }

    if (v109 == enum case for CollectionRecommendation.moreInSeries(_:))
    {

      (*(v106 + 96))(v107, v108);
      (*(v586 + 32))(v528, v107, v585);
      v459 = sub_10063A938(v584, v522, v104);

      v590 = &type metadata for String;
      strcpy(v589, "more-in-series");
      HIBYTE(v589[1]) = -18;
      sub_1000076D4(v589, &v588);
      v460 = swift_isUniquelyReferenced_nonNull_native();
      v587 = v459;
      sub_1002F4B78(&v588, 1701869940, 0xE400000000000000, v460);
      v461 = v587;
      v462 = v529;
      sub_10079A264();
      v463 = v571;
      v464 = v524;
      v465 = v462;
      v466 = v570;
      (*(v571 + 16))(v524, v465, v570);
      v467 = (*(v463 + 88))(v464, v466);
      if (v467 == enum case for CollectionSource.appleMediaDiscovery(_:))
      {
        v468 = 0xD000000000000013;
        v469 = 0x80000001008BF780;
      }

      else
      {
        if (v467 == enum case for CollectionSource.mediaAPI(_:))
        {
          v468 = 1768972653;
        }

        else
        {
          if (v467 == enum case for CollectionSource.bookHistory(_:))
          {
            v468 = 7365743;
            v469 = 0xE300000000000000;
            goto LABEL_224;
          }

          if (v467 == enum case for CollectionSource.bookHistoryThenAppleMediaDiscovery(_:))
          {
            v469 = 0x80000001008BF7B0;
            v468 = 0xD000000000000022;
            goto LABEL_224;
          }

          if (v467 != enum case for CollectionSource.tabi(_:))
          {
            goto LABEL_236;
          }

          v468 = 1768055156;
        }

        v469 = 0xE400000000000000;
      }

LABEL_224:
      (*(v571 + 8))(v529, v570);
      v590 = &type metadata for String;
      v589[0] = v468;
      v589[1] = v469;
      sub_1000076D4(v589, &v588);
      v511 = swift_isUniquelyReferenced_nonNull_native();
      v587 = v461;
      sub_1002F4B78(&v588, 0x656372756F73, 0xE600000000000000, v511);
      v512 = v587;
      v513 = sub_1001F1160(&qword_100AD6710, &unk_10080B890);
      v514 = v575;
      v575[3] = v513;
      *v514 = v512;
      (*(v586 + 8))(v528, v585);
      return;
    }

    v473 = v105;
    v474 = v109;
    v475 = enum case for CollectionRecommendation.highlights(_:);

    if (v474 != v475)
    {

      v495 = v575;
      *v575 = 0u;
      *(v495 + 1) = 0u;
      (*(v106 + 8))(v107, v108);
      return;
    }

    (*(v106 + 96))(v107, v108);
    v476 = v568;
    v477 = v107;
    v478 = v525;
    v479 = v567;
    (*(v568 + 32))(v525, v477, v567);
    sub_10079A264();
    sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
    v480 = swift_allocObject();
    *(v480 + 16) = xmmword_100815060;
    *(v480 + 32) = 1701869940;
    v565 = (v480 + 32);
    *(v480 + 40) = 0xE400000000000000;
    *(v480 + 48) = 0x6867696C68676968;
    *(v480 + 56) = 0xEA00000000007374;
    *(v480 + 72) = &type metadata for String;
    *(v480 + 80) = 1684957547;
    *(v480 + 88) = 0xE400000000000000;
    *(v480 + 96) = v473;
    *(v480 + 104) = v574;
    *(v480 + 120) = &type metadata for String;
    *(v480 + 128) = 0x736B6F6F62;
    v569 = v480;
    *(v480 + 136) = 0xE500000000000000;
    (*(v476 + 16))(v562, v478, v479);
    sub_100005920(&qword_100AEEB90, &qword_100AEEB80, &qword_100837370, &protocol conformance descriptor for NonEmpty<A>);
    v566 = sub_1007A2504();
    v481 = *(v566 + 16);
    if (v481)
    {
      v589[0] = _swiftEmptyArrayStorage;
      sub_1003BD7D8(0, v481, 0);
      v482 = v589[0];
      v574 = *(v586 + 16);
      v483 = (v566 + ((*(v586 + 80) + 32) & ~*(v586 + 80)));
      v573 = *(v586 + 72);
      v572 = (v559 + 8);
      v586 += 16;
      v484 = (v586 - 8);
      do
      {
        v485 = v580;
        v486 = v585;
        v574(v580, v483, v585);
        v487 = v581;
        sub_100799AE4();
        v488 = v583;
        sub_10079A784();
        (*v572)(v487, v582);
        v489 = sub_10079A724();
        v491 = v490;
        v578(v488, v579);
        v492 = sub_10063A938(v584, v489, v491);

        (*v484)(v485, v486);
        v589[0] = v482;
        v494 = v482[2];
        v493 = v482[3];
        if (v494 >= v493 >> 1)
        {
          sub_1003BD7D8((v493 > 1), v494 + 1, 1);
          v482 = v589[0];
        }

        v482[2] = v494 + 1;
        v482[v494 + 4] = v492;
        v483 += v573;
        --v481;
      }

      while (v481);
    }

    else
    {

      v482 = _swiftEmptyArrayStorage;
    }

    v503 = sub_1001F1160(&qword_100ADE598, &qword_100822EA0);
    v504 = v569;
    *(v569 + 18) = v482;
    *(v504 + 21) = v503;
    *(v504 + 22) = 0x656372756F73;
    *(v504 + 23) = 0xE600000000000000;
    v505 = v571;
    v506 = v523;
    v507 = v570;
    (*(v571 + 16))(v523, v526, v570);
    v508 = (*(v505 + 88))(v506, v507);
    if (v508 == enum case for CollectionSource.appleMediaDiscovery(_:))
    {
      v509 = 0xD000000000000013;
      v510 = 0x80000001008BF780;
    }

    else
    {
      if (v508 == enum case for CollectionSource.mediaAPI(_:))
      {
        v509 = 1768972653;
      }

      else
      {
        if (v508 == enum case for CollectionSource.bookHistory(_:))
        {
          v509 = 7365743;
          v510 = 0xE300000000000000;
          goto LABEL_233;
        }

        if (v508 == enum case for CollectionSource.bookHistoryThenAppleMediaDiscovery(_:))
        {
          v510 = 0x80000001008BF7B0;
          v509 = 0xD000000000000022;
          goto LABEL_233;
        }

        if (v508 != enum case for CollectionSource.tabi(_:))
        {
          goto LABEL_236;
        }

        v509 = 1768055156;
      }

      v510 = 0xE400000000000000;
    }

LABEL_233:
    v515 = v569;
    *(v569 + 27) = &type metadata for String;
    *(v515 + 192) = v509;
    *(v515 + 200) = v510;
    v516 = sub_100019158(v515);
    swift_setDeallocating();
    sub_1001F1160(&unk_100ADD560, &unk_10080CDC0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v571 + 8))(v526, v570);
    v517 = sub_1001F1160(&qword_100AD6710, &unk_10080B890);
    v518 = v575;
    v575[3] = v517;
    *v518 = v516;
    (*(v568 + 8))(v525, v567);
    return;
  }

  (*(v106 + 96))(v107, v108);
  v144 = sub_1001F1160(&qword_100AEEBA0, &qword_100837390);
  v145 = *(v144 + 48);
  v566 = *&v107[*(v144 + 64)];
  v146 = v568;
  v147 = v556;
  v148 = v107;
  v149 = v107;
  v150 = v567;
  (*(v568 + 32))(v556, v148, v567);
  v151 = &v149[v145];
  v152 = v554;
  (*(v557 + 32))(v554, v151, v558);
  sub_10079A264();
  sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
  v153 = swift_allocObject();
  *(v153 + 16) = xmmword_100815060;
  *(v153 + 32) = 1701869940;
  v564 = (v153 + 32);
  *(v153 + 40) = 0xE400000000000000;
  *(v153 + 48) = 0xD000000000000013;
  *(v153 + 56) = 0x80000001008E2590;
  *(v153 + 72) = &type metadata for String;
  *(v153 + 80) = 1684957547;
  *(v153 + 88) = 0xE400000000000000;
  *(v153 + 96) = v105;
  *(v153 + 104) = v574;
  *(v153 + 120) = &type metadata for String;
  *(v153 + 128) = 0x736B6F6F62;
  v565 = v153;
  *(v153 + 136) = 0xE500000000000000;
  (*(v146 + 16))(v562, v147, v150);
  sub_100005920(&qword_100AEEB90, &qword_100AEEB80, &qword_100837370, &protocol conformance descriptor for NonEmpty<A>);
  v154 = sub_1007A2504();
  v155 = *(v154 + 16);
  v156 = v579;
  if (v155)
  {
    v589[0] = _swiftEmptyArrayStorage;
    sub_1003BD7D8(0, v155, 0);
    v157 = v589[0];
    v574 = *(v586 + 16);
    v158 = (*(v586 + 80) + 32) & ~*(v586 + 80);
    v563 = v154;
    v159 = (v154 + v158);
    v573 = *(v586 + 72);
    v572 = (v559 + 8);
    v586 += 16;
    v569 = (v586 - 8);
    do
    {
      v160 = v580;
      v161 = v585;
      v574(v580, v159, v585);
      v162 = v581;
      sub_100799AE4();
      v163 = v583;
      sub_10079A784();
      (*v572)(v162, v582);
      v164 = sub_10079A724();
      v166 = v165;
      v578(v163, v156);
      v167 = sub_10063A938(v584, v164, v166);

      (*v569)(v160, v161);
      v589[0] = v157;
      v169 = v157[2];
      v168 = v157[3];
      if (v169 >= v168 >> 1)
      {
        sub_1003BD7D8((v168 > 1), v169 + 1, 1);
        v157 = v589[0];
      }

      v157[2] = v169 + 1;
      v157[v169 + 4] = v167;
      v159 += v573;
      --v155;
      v156 = v579;
    }

    while (v155);

    v152 = v554;
  }

  else
  {

    v157 = _swiftEmptyArrayStorage;
  }

  v238 = sub_1001F1160(&qword_100ADE598, &qword_100822EA0);
  v239 = v565;
  *(v565 + 18) = v157;
  v240 = v239;
  *(v239 + 21) = v238;
  *(v239 + 22) = 0x656372756F73;
  *(v239 + 23) = 0xE600000000000000;
  v241 = v571;
  v242 = v552;
  v243 = v570;
  (*(v571 + 16))(v552, v560, v570);
  v244 = (*(v241 + 88))(v242, v243);
  v245 = v576;
  if (v244 == enum case for CollectionSource.appleMediaDiscovery(_:))
  {
    v246 = 0x80000001008BF780;
    v247 = 0xD000000000000013;
  }

  else
  {
    if (v244 == enum case for CollectionSource.mediaAPI(_:))
    {
      v247 = 1768972653;
    }

    else
    {
      if (v244 == enum case for CollectionSource.bookHistory(_:))
      {
        v247 = 7365743;
        v246 = 0xE300000000000000;
        goto LABEL_90;
      }

      if (v244 == enum case for CollectionSource.bookHistoryThenAppleMediaDiscovery(_:))
      {
        v246 = 0x80000001008BF7B0;
        v247 = 0xD000000000000022;
        goto LABEL_90;
      }

      if (v244 != enum case for CollectionSource.tabi(_:))
      {
        goto LABEL_238;
      }

      v247 = 1768055156;
    }

    v246 = 0xE400000000000000;
  }

LABEL_90:
  *(v240 + 27) = &type metadata for String;
  *(v240 + 24) = v247;
  *(v240 + 25) = v246;
  v314 = sub_100019158(v240);
  swift_setDeallocating();
  sub_1001F1160(&unk_100ADD560, &unk_10080CDC0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v315 = (*(v241 + 8))(v560, v243);
  __chkstk_darwin(v315);
  i = v152;
  v316 = v245;
  sub_100629488(_swiftEmptyDictionarySingleton, sub_10063B890, (&v521 - 4), v566);
  v318 = v317;

  sub_1001F1160(&qword_100AEEBA8, &qword_100837398);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  *(inited + 32) = 0xD000000000000016;
  v320 = inited + 32;
  *(inited + 40) = 0x80000001008E25B0;
  *(inited + 48) = v318;
  v321 = sub_1001EFC1C(inited);
  swift_setDeallocating();
  sub_100007840(v320, &qword_100AEEBB0, &qword_1008373A0);
  v589[0] = v321;
  sub_1001F1160(&qword_100AEEBB8, &qword_1008373A8);
  sub_10063B8AC();
  v322 = sub_100796474();
  if (v316)
  {
  }

  else
  {
    v326 = v322;
    v327 = v323;

    v328 = objc_opt_self();
    isa = sub_1007969C4().super.isa;
    v589[0] = 0;
    v330 = [v328 JSONObjectWithData:isa options:0 error:v589];

    if (v330)
    {
      v331 = v589[0];
      sub_1007A3504();
      swift_unknownObjectRelease();
      v332 = sub_1001F1160(&qword_100AD6710, &unk_10080B890);
      if (swift_dynamicCast())
      {
        v590 = v332;
        v589[0] = v588;
        sub_1000076D4(v589, &v588);
        v333 = swift_isUniquelyReferenced_nonNull_native();
        v587 = v314;
        sub_1002F4B78(&v588, 0x6C616E6F69746172, 0xE900000000000065, v333);
        sub_10000ADCC(v326, v327);
        v314 = v587;
      }

      else
      {
        sub_10000ADCC(v326, v327);
      }
    }

    else
    {
      v334 = v589[0];
      sub_1007967D4();

      swift_willThrow();
      sub_10000ADCC(v326, v327);
    }
  }

  v324 = sub_1001F1160(&qword_100AD6710, &unk_10080B890);
  v325 = v575;
  v575[3] = v324;
  *v325 = v314;
  (*(v568 + 8))(v556, v567);
  (*(v557 + 8))(v152, v558);
}